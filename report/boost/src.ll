Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/src?download=true
inline.NumInlined: 7232
inline.NumDeleted: 1432
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 62
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN5boost4json12basic_parserINS0_6detail7handlerEE12parse_stringILb0ELb0EEEPKcS7_St17integral_constantIbXT_EES8_IbXT0_EEbb:bb.a
  %i.bi = icmp sgt i8 %.fr.i49, -1
  br i1 %i.bi, label %bb.m, label %bb.k, !llvm.loop !67

bb.k:                                             ; preds = %bb.j
  %i.bj = and i8 %.fr.i49, 127
  %i.bk = zext nneg i8 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr @_ZZN5boost4json6detail13classify_utf8EcE5first, i64 %i.bk
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !345 ; 2 uses
  %i.bn = ptrtoint ptr %.361.i to i64
  %i.bo = sub i64 %i.ao, %i.bn
  %.mask.i = and i16 %i.bm, 255
  %i.bp = zext nneg i16 %.mask.i to i64           ; 8 uses
  %i.bq = icmp slt i64 %i.bo, %i.bp
  br i1 %i.bq, label %_ZN5boost4json6detail11count_validILb1EEEPKcS4_S4_.exit, label %bb.l, !prof !252

bb.l:                                             ; preds = %bb.k
  %i.br = lshr i16 %i.bm, 8
  %trunc.i.i = trunc nuw i16 %i.br to i8
  switch i8 %trunc.i.i, label %_ZN5boost4json6detail11count_validILb1EEEPKcS4_S4_.exit [
    i8 1, label %_ZN5boost4json6detail13is_valid_utf8EPKct.exit.i
    i8 2, label %.split51.i
    i8 3, label %.split50.i
    i8 4, label %.split49.i
    i8 5, label %.split48.i
    i8 6, label %.split47.i
    i8 7, label %.split.i
  ]

.split51.i:                                       ; preds = %bb.l
  %.0.copyload.i.i.i = load i24, ptr %.361.i, align 1
  %i.bs = and i24 %.0.copyload.i.i.i, -4136960
  %i.bt = icmp eq i24 %i.bs, -8347648
  br i1 %i.bt, label %bb.m, label %_ZN5boost4json6detail11count_validILb1EEEPKcS4_S4_.exit, !prof !346

.split50.i:                                       ; preds = %bb.l
  %.0.copyload.i15.i.i = load i24, ptr %.361.i, align 1
  %i.bu = and i24 %.0.copyload.i15.i.i, -4145152
  %i.bv = icmp eq i24 %i.bu, -8355840
  br i1 %i.bv, label %bb.m, label %_ZN5boost4json6detail11count_validILb1EEEPKcS4_S4_.exit, !prof !346

.split49.i:                                       ; preds = %bb.l
  %.0.copyload.i17.i.i = load i24, ptr %.361.i, align 1
  %i.bw = and i24 %.0.copyload.i17.i.i, -4136960
  %i.bx = icmp eq i24 %i.bw, -8355840
  br i1 %i.bx, label %bb.m, label %_ZN5boost4json6detail11count_validILb1EEEPKcS4_S4_.exit, !prof !346

.split48.i:                                       ; preds = %bb.l
  %i.by = load i32, ptr %.361.i, align 1
  %i.bz = and i32 %i.by, -1061093632
  %i.ca = add i32 %i.bz, 2139058176
  %i.cb = icmp ult i32 %i.ca, 12033
  br i1 %i.cb, label %bb.m, label %_ZN5boost4json6detail11count_validILb1EEEPKcS4_S4_.exit, !prof !346

.split47.i:                                       ; preds = %bb.l
  %i.cc = load i32, ptr %.361.i, align 1
  %i.cd = and i32 %i.cc, -1061109760
  %i.ce = icmp eq i32 %i.cd, -2139062272
  br i1 %i.ce, label %bb.m, label %_ZN5boost4json6detail11count_validILb1EEEPKcS4_S4_.exit, !prof !346

.split.i:                                         ; preds = %bb.l
  %i.cf = load i32, ptr %.361.i, align 1
  %i.cg = and i32 %i.cf, -1061097472
  %i.ch = icmp eq i32 %i.cg, -2139062272
  br i1 %i.ch, label %bb.m, label %_ZN5boost4json6detail11count_validILb1EEEPKcS4_S4_.exit, !prof !346

_ZN5boost4json6detail13is_valid_utf8EPKct.exit.i: ; preds = %bb.l
  %i.ci = load i16, ptr %.361.i, align 1
  %i.cj = icmp slt i16 %i.ci, -16384
  br i1 %i.cj, label %bb.m, label %_ZN5boost4json6detail11count_validILb1EEEPKcS4_S4_.exit, !prof !346

bb.m:                                             ; preds = %_ZN5boost4json6detail13is_valid_utf8EPKct.exit.i, %.split.i, %.split47.i, %.split48.i, %.split49.i, %.split50.i, %.split51.i, %bb.j
  %.sink.i = phi i64 [ 1, %bb.j ], [ %i.bp, %.split51.i ], [ %i.bp, %.split50.i ], [ %i.bp, %.split49.i ], [ %i.bp, %.split48.i ], [ %i.bp, %.split47.i ], [ %i.bp, %.split.i ], [ %i.bp, %_ZN5boost4json6detail13is_valid_utf8EPKct.exit.i ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.361.i, i64 %.sink.i ; 3 uses
  %.not45.i = icmp eq ptr %i.ck, %i.c
  br i1 %.not45.i, label %_ZN5boost4json6detail11count_validILb1EEEPKcS4_S4_.exit, label %.lr.ph.i48

_ZN5boost4json6detail11count_validILb1EEEPKcS4_S4_.exit: ; preds = %bb.m, %_ZN5boost4json6detail13is_valid_utf8EPKct.exit.i, %.split.i, %.split47.i, %.split48.i, %.split49.i, %.split50.i, %.split51.i, %bb.l, %bb.k, %switch.early.test.i50, %switch.early.test.i50, %.lr.ph.i48, %bb.g, %switch.early.test.i, %switch.early.test.i, %.lr.ph.i, %.split.loop.exit54.i, %.thread.loopexit42.i, %.preheader.i
  %i.cl = phi ptr [ %.242.i, %.split.loop.exit54.i ], [ %i.an, %.thread.loopexit42.i ], [ %.035.i.lcssa, %.preheader.i ], [ %.23748.i, %.lr.ph.i ], [ %.23748.i, %switch.early.test.i ], [ %.23748.i, %switch.early.test.i ], [ %scevgep.i, %bb.g ], [ %.361.i, %bb.k ], [ %.361.i, %_ZN5boost4json6detail13is_valid_utf8EPKct.exit.i ], [ %.361.i, %.split.i ], [ %.361.i, %.split47.i ], [ %.361.i, %.split48.i ], [ %.361.i, %.split49.i ], [ %.361.i, %.split50.i ], [ %.361.i, %.split51.i ], [ %.361.i, %bb.l ], [ %i.ck, %bb.m ], [ %.361.i, %.lr.ph.i48 ], [ %.361.i, %switch.early.test.i50 ], [ %.361.i, %switch.early.test.i50 ] ; 14 uses
  %i.cm = ptrtoint ptr %i.cl to i64               ; 2 uses
  %i.cn = ptrtoint ptr %.1 to i64
  %i.co = sub i64 %i.cm, %i.cn                    ; 6 uses
  %i.cp = load i64, ptr %i.a, align 8, !tbaa !90  ; 2 uses
  %i.cq = sub i64 2147483646, %i.cp
  %i.cr = icmp ugt i64 %i.co, %i.cq
  br i1 %i.cr, label %bb.n, label %bb.o, !prof !252

bb.n:                                             ; preds = %_ZN5boost4json6detail11count_validILb1EEEPKcS4_S4_.exit
  %i.cs = call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE4failEPKcNS0_5errorEPKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef %i.cl, i32 noundef 13, ptr noundef nonnull @_ZZN5boost4json12basic_parserINS0_6detail7handlerEE12parse_stringILb0ELb0EEEPKcS7_St17integral_constantIbXT_EES8_IbXT0_EEbbE3loc_0) #46
  br label %.thread148

bb.o:                                             ; preds = %_ZN5boost4json6detail11count_validILb1EEEPKcS4_S4_.exit
  %i.ct = add i64 %i.co, %i.cp                    ; 3 uses
  store i64 %i.ct, ptr %i.a, align 8, !tbaa !90
  %i.cu = icmp ult ptr %i.cl, %i.c
  br i1 %i.cu, label %bb.s, label %bb.p, !prof !251

bb.p:                                             ; preds = %bb.o
  %.not47 = icmp eq ptr %i.cl, %.1
  br i1 %.not47, label %bb.r, label %bb.q, !prof !252

bb.q:                                             ; preds = %bb.p
  call void @_ZN5boost4json11value_stack10push_charsENS_4core17basic_string_viewIcEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr %.1, i64 %i.co)
  %.pre = load i64, ptr %i.a, align 8, !tbaa !90
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cv = phi i64 [ %.pre, %bb.q ], [ %i.ct, %bb.p ]
  %i.cw = call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE13maybe_suspendEPKcNS4_5stateEm(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef %i.cl, i8 noundef signext 7, i64 noundef %i.cv)
  br label %.thread148

bb.s:                                             ; preds = %bb.o
  %i.cx = load i8, ptr %i.cl, align 1, !tbaa !93  ; 4 uses
  %.not = icmp eq i8 %i.cx, 34
  br i1 %.not, label %bb.ae, label %bb.t, !prof !251

bb.t:                                             ; preds = %bb.s
  %i.cy = icmp sgt i8 %i.cx, -1
  %or.cond = or i1 %2, %i.cy
  br i1 %or.cond, label %bb.z, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.da = ptrtoint ptr %i.c to i64
  %i.db = sub i64 %i.da, %i.cm                    ; 2 uses
  %i.dc = and i8 %i.cx, 127
  %i.dd = zext nneg i8 %i.dc to i64
  %i.de = getelementptr inbounds nuw [2 x i8], ptr @_ZZN5boost4json6detail13classify_utf8EcE5first, i64 %i.dd
  %i.df = load i16, ptr %i.de, align 2, !tbaa !345 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 2 uses
  store i16 %i.df, ptr %i.dg, align 4, !tbaa !347
  %.mask.i52 = and i16 %i.df, 255
  %i.dh = zext nneg i16 %.mask.i52 to i64
  %.not.i53 = icmp ult i64 %i.db, %i.dh
  %i.di = trunc nuw i64 %i.db to i8
  %i.dj = trunc i16 %i.df to i8
  %.sink.i54 = select i1 %.not.i53, i8 %i.di, i8 %i.dj ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 166 ; 2 uses
  store i8 %.sink.i54, ptr %i.dk, align 2, !tbaa !348
  %i.dl = zext i8 %.sink.i54 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(7) %i.cz, ptr nonnull align 1 %i.cl, i64 %i.dl, i1 false)
  %i.dm = load i8, ptr %i.dk, align 2, !tbaa !348
  %i.dn = load i16, ptr %i.dg, align 4, !tbaa !347
  %i.do = trunc i16 %i.dn to i8
  %.not152 = icmp ult i8 %i.dm, %i.do
  br i1 %.not152, label %bb.w, label %bb.v, !prof !251

bb.v:                                             ; preds = %bb.u
  %i.dp = call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE4failEPKcNS0_5errorEPKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef nonnull %i.cl, i32 noundef 1, ptr noundef nonnull @_ZZN5boost4json12basic_parserINS0_6detail7handlerEE12parse_stringILb0ELb0EEEPKcS7_St17integral_constantIbXT_EES8_IbXT0_EEbbE3loc_1) #46
  br label %.thread148

bb.w:                                             ; preds = %bb.u
  %.not45 = icmp eq ptr %i.cl, %.1
  br i1 %.not45, label %bb.y, label %bb.x, !prof !252

bb.x:                                             ; preds = %bb.w
  call void @_ZN5boost4json11value_stack10push_charsENS_4core17basic_string_viewIcEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr %.1, i64 %i.co)
  %.pre163 = load i64, ptr %i.a, align 8, !tbaa !90
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.dq = phi i64 [ %.pre163, %bb.x ], [ %i.ct, %bb.w ]
  %i.dr = call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE13maybe_suspendEPKcNS4_5stateEm(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef nonnull %i.c, i8 noundef signext 14, i64 noundef %i.dq)
  br label %.thread148

bb.z:                                             ; preds = %bb.t
  %i.ds = icmp eq i8 %i.cx, 92
  br i1 %i.ds, label %bb.aa, label %bb.ad, !prof !251

bb.aa:                                            ; preds = %bb.z
  %.not46 = icmp eq ptr %i.cl, %.1
  br i1 %.not46, label %.thread135, label %bb.ab, !prof !252

bb.ab:                                            ; preds = %bb.aa
  call void @_ZN5boost4json11value_stack10push_charsENS_4core17basic_string_viewIcEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr %.1, i64 %i.co)
  br label %.thread135

.thread135:                                       ; preds = %bb.b, %bb.ab, %bb.aa
  %.2 = phi ptr [ %i.cl, %bb.aa ], [ %i.cl, %bb.ab ], [ %1, %bb.b ]
  %i.dt = call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE13parse_escapedILb0EEEPKcS7_RmSt17integral_constantIbXT_EEbb(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef %.2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i1 noundef zeroext false, i1 noundef zeroext %3) ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.dv = icmp eq ptr %i.dt, %i.du
  br i1 %i.dv, label %bb.ac, label %.thread, !prof !252

bb.ac:                                            ; preds = %.thread135
  %i.dw = load i64, ptr %i.a, align 8, !tbaa !90
  %i.dx = call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE15suspend_or_failENS4_5stateEm(ptr noundef nonnull align 8 dereferenceable(274) %0, i8 noundef signext 8, i64 noundef %i.dw)
  br label %.thread148

bb.ad:                                            ; preds = %bb.z
  %i.dy = call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE4failEPKcNS0_5errorEPKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef nonnull %i.cl, i32 noundef 1, ptr noundef nonnull @_ZZN5boost4json12basic_parserINS0_6detail7handlerEE12parse_stringILb0ELb0EEEPKcS7_St17integral_constantIbXT_EES8_IbXT0_EEbbE3loc_2) #46
  br label %.thread148

bb.ae:                                            ; preds = %bb.s
  call void @_ZN5boost4json11value_stack11push_stringENS_4core17basic_string_viewIcEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr %.1, i64 %i.co)
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cl, i64 1
  br label %.thread148

bb.af:                                            ; preds = %bb.b
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 10 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 2 uses
  %i.ec = load i16, ptr %i.eb, align 4            ; 2 uses
  %i.ed = trunc i16 %i.ec to i8                   ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 166 ; 4 uses
  %i.ef = load i8, ptr %i.ee, align 2, !tbaa !348 ; 4 uses
  %i.eg = sub i8 %i.ed, %i.ef                     ; 2 uses
  %i.eh = ptrtoint ptr %i.c to i64
  %i.ei = ptrtoint ptr %1 to i64
  %i.ej = sub i64 %i.eh, %i.ei                    ; 3 uses
  %i.ek = icmp eq i8 %i.ef, %i.ed
  br i1 %i.ek, label %_ZN5boost4json6detail13utf8_sequence6appendEPKcm.exit.thread, label %bb.ag, !prof !252

bb.ag:                                            ; preds = %bb.af
  %i.el = zext i8 %i.eg to i64                    ; 2 uses
  %.not.i55.not = icmp ult i64 %i.ej, %i.el
  br i1 %.not.i55.not, label %bb.ah, label %_ZN5boost4json6detail13utf8_sequence6appendEPKcm.exit.thread140, !prof !252

_ZN5boost4json6detail13utf8_sequence6appendEPKcm.exit.thread140: ; preds = %bb.ag
  %i.em = zext i8 %i.ef to i64
  %i.en = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.em
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.en, ptr align 1 %1, i64 %i.el, i1 false)
  %i.eo = load i16, ptr %i.eb, align 4            ; 2 uses
  %i.ep = trunc i16 %i.eo to i8
  store i8 %i.ep, ptr %i.ee, align 2, !tbaa !348
  br label %_ZN5boost4json6detail13utf8_sequence6appendEPKcm.exit.thread

bb.ah:                                            ; preds = %bb.ag
  %.not8.i = icmp eq ptr %i.c, %1
  br i1 %.not8.i, label %_ZN5boost4json6detail13utf8_sequence6appendEPKcm.exit.thread138, label %_ZN5boost4json6detail13utf8_sequence6appendEPKcm.exit, !prof !252

_ZN5boost4json6detail13utf8_sequence6appendEPKcm.exit: ; preds = %bb.ah
  %i.eq = zext i8 %i.ef to i64
  %i.er = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.eq
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.er, ptr align 1 %1, i64 %i.ej, i1 false)
  %i.es = trunc nuw i64 %i.ej to i8
  %i.et = load i8, ptr %i.ee, align 2, !tbaa !348
  %i.eu = add i8 %i.et, %i.es
  store i8 %i.eu, ptr %i.ee, align 2, !tbaa !348
  br label %_ZN5boost4json6detail13utf8_sequence6appendEPKcm.exit.thread138

_ZN5boost4json6detail13utf8_sequence6appendEPKcm.exit.thread138: ; preds = %bb.ah, %_ZN5boost4json6detail13utf8_sequence6appendEPKcm.exit
  %i.ev = tail call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE13maybe_suspendEPKcNS4_5stateEm(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef %i.c, i8 noundef signext 14, i64 noundef %i.o)
  br label %.thread148

_ZN5boost4json6detail13utf8_sequence6appendEPKcm.exit.thread: ; preds = %bb.af, %_ZN5boost4json6detail13utf8_sequence6appendEPKcm.exit.thread140
  %i.ew = phi i16 [ %i.ec, %bb.af ], [ %i.eo, %_ZN5boost4json6detail13utf8_sequence6appendEPKcm.exit.thread140 ] ; 2 uses
  %i.ex = lshr i16 %i.ew, 8
  %trunc.i.i57 = trunc nuw i16 %i.ex to i8
  switch i8 %trunc.i.i57, label %_ZNK5boost4json6detail13utf8_sequence5validEv.exit.thread [
    i8 1, label %_ZNK5boost4json6detail13utf8_sequence5validEv.exit
    i8 2, label %.split147
    i8 3, label %.split146
    i8 4, label %.split145
    i8 5, label %.split144
    i8 6, label %.split143
    i8 7, label %.split
  ]

.split147:                                        ; preds = %_ZN5boost4json6detail13utf8_sequence6appendEPKcm.exit.thread
  %.0.copyload.i.i.i61 = load i24, ptr %i.ea, align 8
  %i.ey = and i24 %.0.copyload.i.i.i61, -4136960
  %i.ez = icmp eq i24 %i.ey, -8347648
  br i1 %i.ez, label %bb.ai, label %_ZNK5boost4json6detail13utf8_sequence5validEv.exit.thread, !prof !346

.split146:                                        ; preds = %_ZN5boost4json6detail13utf8_sequence6appendEPKcm.exit.thread
  %.0.copyload.i15.i.i60 = load i24, ptr %i.ea, align 8
  %i.fa = and i24 %.0.copyload.i15.i.i60, -4145152
  %i.fb = icmp eq i24 %i.fa, -8355840
  br i1 %i.fb, label %bb.ai, label %_ZNK5boost4json6detail13utf8_sequence5validEv.exit.thread, !prof !346

.split145:                                        ; preds = %_ZN5boost4json6detail13utf8_sequence6appendEPKcm.exit.thread
  %.0.copyload.i17.i.i59 = load i24, ptr %i.ea, align 8
  %i.fc = and i24 %.0.copyload.i17.i.i59, -4136960
  %i.fd = icmp eq i24 %i.fc, -8355840
  br i1 %i.fd, label %bb.ai, label %_ZNK5boost4json6detail13utf8_sequence5validEv.exit.thread, !prof !346

.split144:                                        ; preds = %_ZN5boost4json6detail13utf8_sequence6appendEPKcm.exit.thread
  %i.fe = load i32, ptr %i.ea, align 8
  %i.ff = and i32 %i.fe, -1061093632
  %i.fg = add i32 %i.ff, 2139058176
  %i.fh = icmp ult i32 %i.fg, 12033
  br i1 %i.fh, label %bb.ai, label %_ZNK5boost4json6detail13utf8_sequence5validEv.exit.thread, !prof !346

.split143:                                        ; preds = %_ZN5boost4json6detail13utf8_sequence6appendEPKcm.exit.thread
  %i.fi = load i32, ptr %i.ea, align 8
  %i.fj = and i32 %i.fi, -1061109760
  %i.fk = icmp eq i32 %i.fj, -2139062272
  br i1 %i.fk, label %bb.ai, label %_ZNK5boost4json6detail13utf8_sequence5validEv.exit.thread, !prof !346

.split:                                           ; preds = %_ZN5boost4json6detail13utf8_sequence6appendEPKcm.exit.thread
  %i.fl = load i32, ptr %i.ea, align 8
  %i.fm = and i32 %i.fl, -1061097472
  %i.fn = icmp eq i32 %i.fm, -2139062272
  br i1 %i.fn, label %bb.ai, label %_ZNK5boost4json6detail13utf8_sequence5validEv.exit.thread, !prof !346

_ZNK5boost4json6detail13utf8_sequence5validEv.exit: ; preds = %_ZN5boost4json6detail13utf8_sequence6appendEPKcm.exit.thread
  %i.fo = load i16, ptr %i.ea, align 8
  %i.fp = icmp slt i16 %i.fo, -16384
  br i1 %i.fp, label %bb.ai, label %_ZNK5boost4json6detail13utf8_sequence5validEv.exit.thread, !prof !346

_ZNK5boost4json6detail13utf8_sequence5validEv.exit.thread: ; preds = %_ZN5boost4json6detail13utf8_sequence6appendEPKcm.exit.thread, %.split147, %.split146, %.split145, %.split144, %.split143, %.split, %_ZNK5boost4json6detail13utf8_sequence5validEv.exit
  %i.fq = tail call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE4failEPKcNS0_5errorEPKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef %1, i32 noundef 1, ptr noundef nonnull @_ZZN5boost4json12basic_parserINS0_6detail7handlerEE12parse_stringILb0ELb0EEEPKcS7_St17integral_constantIbXT_EES8_IbXT0_EEbbE3loc_3) #46
  br label %.thread148

bb.ai:                                            ; preds = %_ZNK5boost4json6detail13utf8_sequence5validEv.exit, %.split, %.split143, %.split144, %.split145, %.split146, %.split147
  %i.fr = and i16 %i.ew, 255
  %i.fs = zext nneg i16 %i.fr to i64
  tail call void @_ZN5boost4json11value_stack10push_charsENS_4core17basic_string_viewIcEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nonnull %i.ea, i64 %i.fs)
  %i.ft = zext i8 %i.eg to i64
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 %i.ft
  br label %.thread

.thread148:                                       ; preds = %_ZNK5boost4json6detail13utf8_sequence5validEv.exit.thread, %_ZN5boost4json6detail13utf8_sequence6appendEPKcm.exit.thread138, %bb.ae, %bb.ad, %bb.ac, %bb.y, %bb.v, %bb.r, %bb.n
  %.8 = phi ptr [ %i.cs, %bb.n ], [ %i.cw, %bb.r ], [ %i.dr, %bb.y ], [ %i.dx, %bb.ac ], [ %i.dz, %bb.ae ], [ %i.dy, %bb.ad ], [ %i.dp, %bb.v ], [ %i.fq, %_ZNK5boost4json6detail13utf8_sequence5validEv.exit.thread ], [ %i.ev, %_ZN5boost4json6detail13utf8_sequence6appendEPKcm.exit.thread138 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  ret ptr %.8
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE11parse_arrayILb0ELb0EEEPKcS7_St17integral_constantIbXT_EES8_IbXT0_EEbbb(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !250  ; 23 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !237  ; 5 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !253  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.d
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -1
  %i.j = load i8, ptr %i.i, align 1
  %i.k = add i64 %i.d, -1                         ; 2 uses
  store i64 %i.k, ptr %i.c, align 8, !tbaa !237
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.k
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -8
  %i.n = load i64, ptr %i.m, align 1              ; 8 uses
  %i.o = add i64 %i.d, -9                         ; 3 uses
  store i64 %i.o, ptr %i.c, align 8, !tbaa !237
  switch i8 %i.j, label %bb.c [
    i8 32, label %bb.g
    i8 33, label %.thread
    i8 34, label %.thread127
    i8 35, label %.critedge
    i8 36, label %.thread129
    i8 37, label %.thread131
  ]

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !221  ; 2 uses
  %.not = icmp eq i64 %i.q, 0
  br i1 %.not, label %bb.e, label %bb.f, !prof !252

bb.e:                                             ; preds = %bb.d
  %i.r = tail call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE4failEPKcNS0_5errorEPKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef %1, i32 noundef 5, ptr noundef nonnull @_ZZN5boost4json12basic_parserINS0_6detail7handlerEE11parse_arrayILb0ELb0EEEPKcS7_St17integral_constantIbXT_EES8_IbXT0_EEbbbE3loc) #46
  br label %bb.au

bb.f:                                             ; preds = %bb.d
  %i.s = add i64 %i.q, -1
  store i64 %i.s, ptr %i.p, align 8, !tbaa !221
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %_ZN5boost4json12basic_parserINS0_6detail7handlerEE13parse_commentILb0EEEPKcS7_St17integral_constantIbXT_EEb.exit, %bb.f
  %.0118 = phi ptr [ %i.t, %bb.f ], [ %.018.i, %_ZN5boost4json12basic_parserINS0_6detail7handlerEE13parse_commentILb0EEEPKcS7_St17integral_constantIbXT_EEb.exit ], [ %1, %bb.b ] ; 9 uses
  %.088 = phi i64 [ 0, %bb.f ], [ %i.n, %_ZN5boost4json12basic_parserINS0_6detail7handlerEE13parse_commentILb0EEEPKcS7_St17integral_constantIbXT_EEb.exit ], [ %i.n, %bb.b ] ; 3 uses
  %i.u = ptrtoaddr ptr %.0118 to i64
  %i.v = icmp eq ptr %.0118, %i.b
  br i1 %i.v, label %_ZN5boost4json6detail16count_whitespaceEPKcS3_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = load i8, ptr %.0118, align 1, !tbaa !93
  %i.x = icmp ugt i8 %i.w, 32
  br i1 %i.x, label %_ZN5boost4json6detail16count_whitespaceEPKcS3_.exit, label %.preheader45.i

.preheader45.i:                                   ; preds = %bb.h
  %i.y = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.z = ptrtoint ptr %.0118 to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = icmp sgt i64 %i.aa, 15
  br i1 %i.ab, label %.lr.ph, label %.preheader.i

bb.i:                                             ; preds = %.lr.ph
  %i.ac = getelementptr inbounds nuw i8, ptr %.032.i169, i64 16 ; 3 uses
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = sub i64 %i.y, %i.ad
  %i.af = icmp sgt i64 %i.ae, 15
  br i1 %i.af, label %.lr.ph, label %.preheader.i, !llvm.loop !58

.preheader.i:                                     ; preds = %bb.i, %.preheader45.i
  %.032.i.lcssa = phi ptr [ %.0118, %.preheader45.i ], [ %i.ac, %bb.i ] ; 3 uses
  %.not51.i = icmp eq ptr %.032.i.lcssa, %i.b
  br i1 %.not51.i, label %_ZN5boost4json6detail16count_whitespaceEPKcS3_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.ag = sub i64 %i.y, %i.u
  %scevgep.i = getelementptr i8, ptr %.0118, i64 %i.ag
  br label %.lr.ph.i

.lr.ph:                                           ; preds = %.preheader45.i, %bb.i
  %.032.i169 = phi ptr [ %i.ac, %bb.i ], [ %.0118, %.preheader45.i ] ; 3 uses
  %i.ah = load <16 x i8>, ptr %.032.i169, align 1, !tbaa !93 ; 3 uses
  %i.ai = icmp eq <16 x i8> %i.ah, splat (i8 32)
  %i.aj = icmp eq <16 x i8> %i.ah, splat (i8 10)
  %i.ak = or <16 x i1> %i.ai, %i.aj
  %i.al = and <16 x i8> %i.ah, splat (i8 -5)
  %i.am = icmp eq <16 x i8> %i.al, splat (i8 9)
  %i.an = or <16 x i1> %i.ak, %i.am
  %i.ao = bitcast <16 x i1> %i.an to i16          ; 2 uses
  %.not44.i = icmp eq i16 %i.ao, -1
  br i1 %.not44.i, label %bb.i, label %.loopexit46.i, !llvm.loop !58

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.preheader.i
  %.23452.i = phi ptr [ %i.aq, %bb.j ], [ %.032.i.lcssa, %.lr.ph.preheader.i ] ; 3 uses
  %i.ap = load i8, ptr %.23452.i, align 1, !tbaa !93
  switch i8 %i.ap, label %_ZN5boost4json6detail16count_whitespaceEPKcS3_.exit [
end_hunk_0
begin_hunk_1_@_ZN5boost4json12basic_parserINS0_6detail7handlerEE12parse_stringILb0ELb1EEEPKcS7_St17integral_constantIbXT_EES8_IbXT0_EEbb:bb.a

.split50.i:                                       ; preds = %bb.l
  %.0.copyload.i15.i.i = load i24, ptr %.361.i, align 1
  %i.bu = and i24 %.0.copyload.i15.i.i, -4145152
  %i.bv = icmp eq i24 %i.bu, -8355840
  br i1 %i.bv, label %bb.m, label %_ZN5boost4json6detail11count_validILb1EEEPKcS4_S4_.exit, !prof !346

.split49.i:                                       ; preds = %bb.l
  %.0.copyload.i17.i.i = load i24, ptr %.361.i, align 1
  %i.bw = and i24 %.0.copyload.i17.i.i, -4136960
  %i.bx = icmp eq i24 %i.bw, -8355840
  br i1 %i.bx, label %bb.m, label %_ZN5boost4json6detail11count_validILb1EEEPKcS4_S4_.exit, !prof !346

.split48.i:                                       ; preds = %bb.l
  %i.by = load i32, ptr %.361.i, align 1
  %i.bz = and i32 %i.by, -1061093632
  %i.ca = add i32 %i.bz, 2139058176
  %i.cb = icmp ult i32 %i.ca, 12033
  br i1 %i.cb, label %bb.m, label %_ZN5boost4json6detail11count_validILb1EEEPKcS4_S4_.exit, !prof !346

.split47.i:                                       ; preds = %bb.l
  %i.cc = load i32, ptr %.361.i, align 1
  %i.cd = and i32 %i.cc, -1061109760
  %i.ce = icmp eq i32 %i.cd, -2139062272
  br i1 %i.ce, label %bb.m, label %_ZN5boost4json6detail11count_validILb1EEEPKcS4_S4_.exit, !prof !346

.split.i:                                         ; preds = %bb.l
  %i.cf = load i32, ptr %.361.i, align 1
  %i.cg = and i32 %i.cf, -1061097472
  %i.ch = icmp eq i32 %i.cg, -2139062272
  br i1 %i.ch, label %bb.m, label %_ZN5boost4json6detail11count_validILb1EEEPKcS4_S4_.exit, !prof !346

_ZN5boost4json6detail13is_valid_utf8EPKct.exit.i: ; preds = %bb.l
  %i.ci = load i16, ptr %.361.i, align 1
  %i.cj = icmp slt i16 %i.ci, -16384
  br i1 %i.cj, label %bb.m, label %_ZN5boost4json6detail11count_validILb1EEEPKcS4_S4_.exit, !prof !346

bb.m:                                             ; preds = %_ZN5boost4json6detail13is_valid_utf8EPKct.exit.i, %.split.i, %.split47.i, %.split48.i, %.split49.i, %.split50.i, %.split51.i, %bb.j
  %.sink.i = phi i64 [ 1, %bb.j ], [ %i.bp, %.split51.i ], [ %i.bp, %.split50.i ], [ %i.bp, %.split49.i ], [ %i.bp, %.split48.i ], [ %i.bp, %.split47.i ], [ %i.bp, %.split.i ], [ %i.bp, %_ZN5boost4json6detail13is_valid_utf8EPKct.exit.i ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.361.i, i64 %.sink.i ; 3 uses
  %.not45.i = icmp eq ptr %i.ck, %i.c
  br i1 %.not45.i, label %_ZN5boost4json6detail11count_validILb1EEEPKcS4_S4_.exit, label %.lr.ph.i48

_ZN5boost4json6detail11count_validILb1EEEPKcS4_S4_.exit: ; preds = %bb.m, %_ZN5boost4json6detail13is_valid_utf8EPKct.exit.i, %.split.i, %.split47.i, %.split48.i, %.split49.i, %.split50.i, %.split51.i, %bb.l, %bb.k, %switch.early.test.i50, %switch.early.test.i50, %.lr.ph.i48, %bb.g, %switch.early.test.i, %switch.early.test.i, %.lr.ph.i, %.split.loop.exit54.i, %.thread.loopexit42.i, %.preheader.i
  %i.cl = phi ptr [ %.242.i, %.split.loop.exit54.i ], [ %i.an, %.thread.loopexit42.i ], [ %.035.i.lcssa, %.preheader.i ], [ %.23748.i, %.lr.ph.i ], [ %.23748.i, %switch.early.test.i ], [ %.23748.i, %switch.early.test.i ], [ %scevgep.i, %bb.g ], [ %.361.i, %bb.k ], [ %.361.i, %_ZN5boost4json6detail13is_valid_utf8EPKct.exit.i ], [ %.361.i, %.split.i ], [ %.361.i, %.split47.i ], [ %.361.i, %.split48.i ], [ %.361.i, %.split49.i ], [ %.361.i, %.split50.i ], [ %.361.i, %.split51.i ], [ %.361.i, %bb.l ], [ %i.ck, %bb.m ], [ %.361.i, %.lr.ph.i48 ], [ %.361.i, %switch.early.test.i50 ], [ %.361.i, %switch.early.test.i50 ] ; 14 uses
  %i.cm = ptrtoint ptr %i.cl to i64               ; 2 uses
  %i.cn = ptrtoint ptr %.1 to i64
  %i.co = sub i64 %i.cm, %i.cn                    ; 6 uses
  %i.cp = load i64, ptr %i.a, align 8, !tbaa !90  ; 2 uses
  %i.cq = sub i64 2147483646, %i.cp
  %i.cr = icmp ugt i64 %i.co, %i.cq
  br i1 %i.cr, label %bb.n, label %bb.o, !prof !252

bb.n:                                             ; preds = %_ZN5boost4json6detail11count_validILb1EEEPKcS4_S4_.exit
  %i.cs = call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE4failEPKcNS0_5errorEPKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef %i.cl, i32 noundef 12, ptr noundef nonnull @_ZZN5boost4json12basic_parserINS0_6detail7handlerEE12parse_stringILb0ELb1EEEPKcS7_St17integral_constantIbXT_EES8_IbXT0_EEbbE3loc) #46
  br label %.thread148

bb.o:                                             ; preds = %_ZN5boost4json6detail11count_validILb1EEEPKcS4_S4_.exit
  %i.ct = add i64 %i.co, %i.cp                    ; 3 uses
  store i64 %i.ct, ptr %i.a, align 8, !tbaa !90
  %i.cu = icmp ult ptr %i.cl, %i.c
  br i1 %i.cu, label %bb.s, label %bb.p, !prof !251

bb.p:                                             ; preds = %bb.o
  %.not47 = icmp eq ptr %i.cl, %.1
  br i1 %.not47, label %bb.r, label %bb.q, !prof !252

bb.q:                                             ; preds = %bb.p
  call void @_ZN5boost4json11value_stack10push_charsENS_4core17basic_string_viewIcEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr %.1, i64 %i.co)
  %.pre = load i64, ptr %i.a, align 8, !tbaa !90
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cv = phi i64 [ %.pre, %bb.q ], [ %i.ct, %bb.p ]
  %i.cw = call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE13maybe_suspendEPKcNS4_5stateEm(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef %i.cl, i8 noundef signext 7, i64 noundef %i.cv)
  br label %.thread148

bb.s:                                             ; preds = %bb.o
  %i.cx = load i8, ptr %i.cl, align 1, !tbaa !93  ; 4 uses
  %.not = icmp eq i8 %i.cx, 34
  br i1 %.not, label %bb.ae, label %bb.t, !prof !251

bb.t:                                             ; preds = %bb.s
  %i.cy = icmp sgt i8 %i.cx, -1
  %or.cond = or i1 %2, %i.cy
  br i1 %or.cond, label %bb.z, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.da = ptrtoint ptr %i.c to i64
  %i.db = sub i64 %i.da, %i.cm                    ; 2 uses
  %i.dc = and i8 %i.cx, 127
  %i.dd = zext nneg i8 %i.dc to i64
  %i.de = getelementptr inbounds nuw [2 x i8], ptr @_ZZN5boost4json6detail13classify_utf8EcE5first, i64 %i.dd
  %i.df = load i16, ptr %i.de, align 2, !tbaa !345 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 2 uses
  store i16 %i.df, ptr %i.dg, align 4, !tbaa !347
  %.mask.i52 = and i16 %i.df, 255
  %i.dh = zext nneg i16 %.mask.i52 to i64
  %.not.i53 = icmp ult i64 %i.db, %i.dh
  %i.di = trunc nuw i64 %i.db to i8
  %i.dj = trunc i16 %i.df to i8
  %.sink.i54 = select i1 %.not.i53, i8 %i.di, i8 %i.dj ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 166 ; 2 uses
  store i8 %.sink.i54, ptr %i.dk, align 2, !tbaa !348
  %i.dl = zext i8 %.sink.i54 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(7) %i.cz, ptr nonnull align 1 %i.cl, i64 %i.dl, i1 false)
  %i.dm = load i8, ptr %i.dk, align 2, !tbaa !348
  %i.dn = load i16, ptr %i.dg, align 4, !tbaa !347
  %i.do = trunc i16 %i.dn to i8
  %.not152 = icmp ult i8 %i.dm, %i.do
  br i1 %.not152, label %bb.w, label %bb.v, !prof !251

bb.v:                                             ; preds = %bb.u
  %i.dp = call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE4failEPKcNS0_5errorEPKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef nonnull %i.cl, i32 noundef 1, ptr noundef nonnull @_ZZN5boost4json12basic_parserINS0_6detail7handlerEE12parse_stringILb0ELb1EEEPKcS7_St17integral_constantIbXT_EES8_IbXT0_EEbbE3loc_1) #46
  br label %.thread148

bb.w:                                             ; preds = %bb.u
  %.not45 = icmp eq ptr %i.cl, %.1
  br i1 %.not45, label %bb.y, label %bb.x, !prof !252

bb.x:                                             ; preds = %bb.w
  call void @_ZN5boost4json11value_stack10push_charsENS_4core17basic_string_viewIcEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr %.1, i64 %i.co)
  %.pre163 = load i64, ptr %i.a, align 8, !tbaa !90
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.dq = phi i64 [ %.pre163, %bb.x ], [ %i.ct, %bb.w ]
  %i.dr = call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE13maybe_suspendEPKcNS4_5stateEm(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef nonnull %i.c, i8 noundef signext 14, i64 noundef %i.dq)
  br label %.thread148

bb.z:                                             ; preds = %bb.t
  %i.ds = icmp eq i8 %i.cx, 92
  br i1 %i.ds, label %bb.aa, label %bb.ad, !prof !251

bb.aa:                                            ; preds = %bb.z
  %.not46 = icmp eq ptr %i.cl, %.1
  br i1 %.not46, label %.thread135, label %bb.ab, !prof !252

bb.ab:                                            ; preds = %bb.aa
  call void @_ZN5boost4json11value_stack10push_charsENS_4core17basic_string_viewIcEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr %.1, i64 %i.co)
  br label %.thread135

.thread135:                                       ; preds = %bb.b, %bb.ab, %bb.aa
  %.2 = phi ptr [ %i.cl, %bb.aa ], [ %i.cl, %bb.ab ], [ %1, %bb.b ]
  %i.dt = call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE13parse_escapedILb0EEEPKcS7_RmSt17integral_constantIbXT_EEbb(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef %.2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i1 noundef zeroext true, i1 noundef zeroext %3) ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.dv = icmp eq ptr %i.dt, %i.du
  br i1 %i.dv, label %bb.ac, label %.thread, !prof !252

bb.ac:                                            ; preds = %.thread135
  %i.dw = load i64, ptr %i.a, align 8, !tbaa !90
  %i.dx = call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE15suspend_or_failENS4_5stateEm(ptr noundef nonnull align 8 dereferenceable(274) %0, i8 noundef signext 8, i64 noundef %i.dw)
  br label %.thread148

bb.ad:                                            ; preds = %bb.z
  %i.dy = call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE4failEPKcNS0_5errorEPKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef nonnull %i.cl, i32 noundef 1, ptr noundef nonnull @_ZZN5boost4json12basic_parserINS0_6detail7handlerEE12parse_stringILb0ELb1EEEPKcS7_St17integral_constantIbXT_EES8_IbXT0_EEbbE3loc_2) #46
  br label %.thread148

bb.ae:                                            ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %.1, ptr %4, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.co, ptr %i.dz, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !232 ; 2 uses
  %.not.i.i = icmp eq i64 %i.eb, 0
  br i1 %.not.i.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #46
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ed = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost4json11value_stack5stack4pushIJNS0_6detail5key_tERNS_4core17basic_string_viewIcEERNS0_11storage_ptrEEEERNS0_5valueEDpOT_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.ec) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #46
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #46
  store i64 0, ptr %i.ea, align 8, !tbaa !232
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !224
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  store ptr %i.eg, ptr %6, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.eb, ptr %i.eh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #46
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ej = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5boost4json11value_stack5stack4pushIJNS0_6detail5key_tERNS_4core17basic_string_viewIcEES9_RNS0_11storage_ptrEEEERNS0_5valueEDpOT_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.ei) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #46
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ek = getelementptr inbounds nuw i8, ptr %i.cl, i64 1
  br label %.thread148

bb.ai:                                            ; preds = %bb.b
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 10 uses
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 2 uses
  %i.en = load i16, ptr %i.em, align 4            ; 2 uses
  %i.eo = trunc i16 %i.en to i8                   ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 166 ; 4 uses
  %i.eq = load i8, ptr %i.ep, align 2, !tbaa !348 ; 4 uses
  %i.er = sub i8 %i.eo, %i.eq                     ; 2 uses
  %i.es = ptrtoint ptr %i.c to i64
  %i.et = ptrtoint ptr %1 to i64
  %i.eu = sub i64 %i.es, %i.et                    ; 3 uses
  %i.ev = icmp eq i8 %i.eq, %i.eo
  br i1 %i.ev, label %_ZN5boost4json6detail13utf8_sequence6appendEPKcm.exit.thread, label %bb.aj, !prof !252

bb.aj:                                            ; preds = %bb.ai
  %i.ew = zext i8 %i.er to i64                    ; 2 uses
  %.not.i55.not = icmp ult i64 %i.eu, %i.ew
  br i1 %.not.i55.not, label %bb.ak, label %_ZN5boost4json6detail13utf8_sequence6appendEPKcm.exit.thread140, !prof !252

_ZN5boost4json6detail13utf8_sequence6appendEPKcm.exit.thread140: ; preds = %bb.aj
  %i.ex = zext i8 %i.eq to i64
  %i.ey = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ex
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ey, ptr align 1 %1, i64 %i.ew, i1 false)
  %i.ez = load i16, ptr %i.em, align 4            ; 2 uses
  %i.fa = trunc i16 %i.ez to i8
  store i8 %i.fa, ptr %i.ep, align 2, !tbaa !348
  br label %_ZN5boost4json6detail13utf8_sequence6appendEPKcm.exit.thread

bb.ak:                                            ; preds = %bb.aj
  %.not8.i = icmp eq ptr %i.c, %1
  br i1 %.not8.i, label %_ZN5boost4json6detail13utf8_sequence6appendEPKcm.exit.thread138, label %_ZN5boost4json6detail13utf8_sequence6appendEPKcm.exit, !prof !252

_ZN5boost4json6detail13utf8_sequence6appendEPKcm.exit: ; preds = %bb.ak
  %i.fb = zext i8 %i.eq to i64
  %i.fc = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.fb
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fc, ptr align 1 %1, i64 %i.eu, i1 false)
  %i.fd = trunc nuw i64 %i.eu to i8
  %i.fe = load i8, ptr %i.ep, align 2, !tbaa !348
  %i.ff = add i8 %i.fe, %i.fd
  store i8 %i.ff, ptr %i.ep, align 2, !tbaa !348
  br label %_ZN5boost4json6detail13utf8_sequence6appendEPKcm.exit.thread138

_ZN5boost4json6detail13utf8_sequence6appendEPKcm.exit.thread138: ; preds = %bb.ak, %_ZN5boost4json6detail13utf8_sequence6appendEPKcm.exit
  %i.fg = tail call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE13maybe_suspendEPKcNS4_5stateEm(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef %i.c, i8 noundef signext 14, i64 noundef %i.o)
  br label %.thread148

_ZN5boost4json6detail13utf8_sequence6appendEPKcm.exit.thread: ; preds = %bb.ai, %_ZN5boost4json6detail13utf8_sequence6appendEPKcm.exit.thread140
  %i.fh = phi i16 [ %i.en, %bb.ai ], [ %i.ez, %_ZN5boost4json6detail13utf8_sequence6appendEPKcm.exit.thread140 ] ; 2 uses
  %i.fi = lshr i16 %i.fh, 8
  %trunc.i.i57 = trunc nuw i16 %i.fi to i8
  switch i8 %trunc.i.i57, label %_ZNK5boost4json6detail13utf8_sequence5validEv.exit.thread [
    i8 1, label %_ZNK5boost4json6detail13utf8_sequence5validEv.exit
    i8 2, label %.split147
    i8 3, label %.split146
    i8 4, label %.split145
    i8 5, label %.split144
    i8 6, label %.split143
    i8 7, label %.split
  ]

.split147:                                        ; preds = %_ZN5boost4json6detail13utf8_sequence6appendEPKcm.exit.thread
  %.0.copyload.i.i.i61 = load i24, ptr %i.el, align 8
  %i.fj = and i24 %.0.copyload.i.i.i61, -4136960
  %i.fk = icmp eq i24 %i.fj, -8347648
  br i1 %i.fk, label %bb.al, label %_ZNK5boost4json6detail13utf8_sequence5validEv.exit.thread, !prof !346

.split146:                                        ; preds = %_ZN5boost4json6detail13utf8_sequence6appendEPKcm.exit.thread
  %.0.copyload.i15.i.i60 = load i24, ptr %i.el, align 8
  %i.fl = and i24 %.0.copyload.i15.i.i60, -4145152
  %i.fm = icmp eq i24 %i.fl, -8355840
  br i1 %i.fm, label %bb.al, label %_ZNK5boost4json6detail13utf8_sequence5validEv.exit.thread, !prof !346

.split145:                                        ; preds = %_ZN5boost4json6detail13utf8_sequence6appendEPKcm.exit.thread
  %.0.copyload.i17.i.i59 = load i24, ptr %i.el, align 8
  %i.fn = and i24 %.0.copyload.i17.i.i59, -4136960
  %i.fo = icmp eq i24 %i.fn, -8355840
  br i1 %i.fo, label %bb.al, label %_ZNK5boost4json6detail13utf8_sequence5validEv.exit.thread, !prof !346

.split144:                                        ; preds = %_ZN5boost4json6detail13utf8_sequence6appendEPKcm.exit.thread
  %i.fp = load i32, ptr %i.el, align 8
  %i.fq = and i32 %i.fp, -1061093632
  %i.fr = add i32 %i.fq, 2139058176
  %i.fs = icmp ult i32 %i.fr, 12033
  br i1 %i.fs, label %bb.al, label %_ZNK5boost4json6detail13utf8_sequence5validEv.exit.thread, !prof !346

.split143:                                        ; preds = %_ZN5boost4json6detail13utf8_sequence6appendEPKcm.exit.thread
  %i.ft = load i32, ptr %i.el, align 8
  %i.fu = and i32 %i.ft, -1061109760
  %i.fv = icmp eq i32 %i.fu, -2139062272
  br i1 %i.fv, label %bb.al, label %_ZNK5boost4json6detail13utf8_sequence5validEv.exit.thread, !prof !346

.split:                                           ; preds = %_ZN5boost4json6detail13utf8_sequence6appendEPKcm.exit.thread
  %i.fw = load i32, ptr %i.el, align 8
  %i.fx = and i32 %i.fw, -1061097472
  %i.fy = icmp eq i32 %i.fx, -2139062272
  br i1 %i.fy, label %bb.al, label %_ZNK5boost4json6detail13utf8_sequence5validEv.exit.thread, !prof !346

_ZNK5boost4json6detail13utf8_sequence5validEv.exit: ; preds = %_ZN5boost4json6detail13utf8_sequence6appendEPKcm.exit.thread
  %i.fz = load i16, ptr %i.el, align 8
  %i.ga = icmp slt i16 %i.fz, -16384
  br i1 %i.ga, label %bb.al, label %_ZNK5boost4json6detail13utf8_sequence5validEv.exit.thread, !prof !346

_ZNK5boost4json6detail13utf8_sequence5validEv.exit.thread: ; preds = %_ZN5boost4json6detail13utf8_sequence6appendEPKcm.exit.thread, %.split147, %.split146, %.split145, %.split144, %.split143, %.split, %_ZNK5boost4json6detail13utf8_sequence5validEv.exit
  %i.gb = tail call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE4failEPKcNS0_5errorEPKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef %1, i32 noundef 1, ptr noundef nonnull @_ZZN5boost4json12basic_parserINS0_6detail7handlerEE12parse_stringILb0ELb1EEEPKcS7_St17integral_constantIbXT_EES8_IbXT0_EEbbE3loc_3) #46
  br label %.thread148

bb.al:                                            ; preds = %_ZNK5boost4json6detail13utf8_sequence5validEv.exit, %.split, %.split143, %.split144, %.split145, %.split146, %.split147
  %i.gc = and i16 %i.fh, 255
  %i.gd = zext nneg i16 %i.gc to i64
  tail call void @_ZN5boost4json11value_stack10push_charsENS_4core17basic_string_viewIcEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nonnull %i.el, i64 %i.gd)
  %i.ge = zext i8 %i.er to i64
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 %i.ge
  br label %.thread

.thread148:                                       ; preds = %_ZNK5boost4json6detail13utf8_sequence5validEv.exit.thread, %_ZN5boost4json6detail13utf8_sequence6appendEPKcm.exit.thread138, %bb.ah, %bb.ad, %bb.ac, %bb.y, %bb.v, %bb.r, %bb.n
  %.8 = phi ptr [ %i.cs, %bb.n ], [ %i.cw, %bb.r ], [ %i.dr, %bb.y ], [ %i.dx, %bb.ac ], [ %i.ek, %bb.ah ], [ %i.dy, %bb.ad ], [ %i.dp, %bb.v ], [ %i.gb, %_ZNK5boost4json6detail13utf8_sequence5validEv.exit.thread ], [ %i.fg, %_ZN5boost4json6detail13utf8_sequence6appendEPKcm.exit.thread138 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  ret ptr %.8
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE12parse_numberILb0ELc0ELNS0_16number_precisionE0EEEPKcS8_St17integral_constantIbXT_EES9_IcXT0_EES9_IS6_XT1_EE(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef %1) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.boost::json::basic_parser<boost::json::detail::handler>::number", align 8 ; 46 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !250  ; 19 uses
  %i.d = ptrtoaddr ptr %i.c to i64                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #46
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !237  ; 3 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 0, ptr %i.j, align 8, !tbaa !229
  %i.k = ptrtoint ptr %i.c to i64
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp ugt i64 %i.m, 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.i, i8 0, i64 10, i1 false)
  br i1 %i.n, label %bb.c, label %.thread492

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %2, align 8, !tbaa !351
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !93    ; 2 uses
  %.not = icmp eq i8 %i.p, 46
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = and i8 %i.p, -33
  %i.r = icmp eq i8 %i.q, 69
  br i1 %i.r, label %.thread489, label %bb.ck

.thread489:                                       ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 2
  br label %.thread508

bb.e:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 5 uses
  %i.u = load <16 x i8>, ptr %i.t, align 1, !tbaa !93
  %i.v = add <16 x i8> %i.u, splat (i8 70)
  %i.w = icmp slt <16 x i8> %i.v, splat (i8 118)
  %i.x = bitcast <16 x i1> %i.w to i16
  %i.y = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.x, i1 false) ; 4 uses
  %i.z = zext nneg i16 %i.y to i32
  %i.aa = icmp eq i16 %i.y, 0
  br i1 %i.aa, label %.thread473, label %bb.f

.thread473:                                       ; preds = %bb.e
  %i.ab = tail call noundef ptr @_ZN5boost4json12basic_parserINS0_6detail7handlerEE4failEPKcNS0_5errorEPKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(274) %0, ptr noundef nonnull %i.t, i32 noundef 1, ptr noundef nonnull @_ZZN5boost4json12basic_parserINS0_6detail7handlerEE12parse_numberILb0ELc0ELNS0_16number_precisionE0EEEPKcS8_St17integral_constantIbXT_EES9_IcXT0_EES9_IS6_XT1_EEE3loc_0) #46
  br label %.thread513

bb.f:                                             ; preds = %bb.e
  %i.ac = zext nneg i16 %i.y to i64               ; 3 uses
  %i.ad = icmp samesign ugt i16 %i.y, 3
  br i1 %i.ad, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %.028.i = phi i64 [ %i.bb, %.lr.ph.i ], [ %i.ac, %bb.f ]
  %.02427.i = phi ptr [ %i.ba, %.lr.ph.i ], [ %i.t, %bb.f ] ; 5 uses
  %.02526.i = phi i64 [ %i.az, %.lr.ph.i ], [ 0, %bb.f ]
  %i.ae = mul i64 %.02526.i, 10
  %i.af = load i8, ptr %.02427.i, align 1, !tbaa !93
  %i.ag = sext i8 %i.af to i64
  %i.ah = add i64 %i.ae, %i.ag
  %i.ai = mul i64 %i.ah, 10
  %i.aj = getelementptr inbounds nuw i8, ptr %.02427.i, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !93
  %i.al = sext i8 %i.ak to i64
  %i.am = add nsw i64 %i.al, -480
  %i.an = add i64 %i.am, %i.ai
  %i.ao = mul i64 %i.an, 10
  %i.ap = getelementptr inbounds nuw i8, ptr %.02427.i, i64 2
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !93
  %i.ar = sext i8 %i.aq to i64
  %i.as = add nsw i64 %i.ar, -480
  %i.at = add i64 %i.as, %i.ao
  %i.au = mul i64 %i.at, 10
  %i.av = getelementptr inbounds nuw i8, ptr %.02427.i, i64 3
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !93
  %i.ax = sext i8 %i.aw to i64
  %i.ay = add nsw i64 %i.ax, -528
  %i.az = add i64 %i.ay, %i.au                    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.02427.i, i64 4 ; 2 uses
  %i.bb = add i64 %.028.i, -4                     ; 3 uses
  %i.bc = icmp ugt i64 %i.bb, 3
  br i1 %i.bc, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !68

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.f
  %.025.lcssa.i = phi i64 [ 0, %bb.f ], [ %i.az, %.lr.ph.i ] ; 4 uses
  %.024.lcssa.i = phi ptr [ %i.t, %bb.f ], [ %i.ba, %.lr.ph.i ] ; 6 uses
  %.0.lcssa.i = phi i64 [ %i.ac, %bb.f ], [ %i.bb, %.lr.ph.i ]
  switch i64 %.0.lcssa.i, label %default.unreachable.i [
    i64 3, label %bb.i
    i64 1, label %bb.g
    i64 2, label %bb.h
    i64 0, label %_ZN5boost4json6detail14parse_unsignedEmPKcm.exit
  ]

end_hunk_1
