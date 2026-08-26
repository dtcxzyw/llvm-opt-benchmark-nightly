Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/JSObject?download=true
inline.NumInlined: 2965
inline.NumDeleted: 1136
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6hermes2vm8JSObject18getOwnPropertyKeysENS0_6HandleIS1_EERNS0_7RuntimeENS0_12OwnKeysFlagsE:bb.a
  %i.jc = add i64 %i.jb, %i.ja
  %i.jd = or i64 %i.jc, -281474976710656
  %i.je = select i1 %.not.i.i.i.i.i143, i64 -281474976710656, i64 %i.jd ; 3 uses
  %i.jf = icmp ult ptr %i.iv, %i.iu
  br i1 %i.jf, label %bb.aw, label %bb.ax, !prof !42

bb.aw:                                            ; preds = %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit
  %i.jg = getelementptr inbounds nuw i8, ptr %i.iw, i64 192
  %i.jh = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  store ptr %i.jh, ptr %i.jg, align 8, !tbaa !46
  store i64 %i.je, ptr %i.iv, align 8, !tbaa !40
  br label %_ZN6hermes2vm7Runtime10makeHandleINS0_11HiddenClassEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit145

bb.ax:                                            ; preds = %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit
  %i.ji = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.iw, i64 %i.je) #17 ; 2 uses
  %.sroa.0.0.copyload.i.i.i146.pre = load i64, ptr %i.ji, align 8, !tbaa !40
  br label %_ZN6hermes2vm7Runtime10makeHandleINS0_11HiddenClassEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit145

_ZN6hermes2vm7Runtime10makeHandleINS0_11HiddenClassEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit145: ; preds = %bb.aw, %bb.ax
  %.sroa.0.0.copyload.i.i.i146 = phi i64 [ %i.je, %bb.aw ], [ %.sroa.0.0.copyload.i.i.i146.pre, %bb.ax ]
  %.0.i.i.i.i.i.i144 = phi ptr [ %i.iv, %bb.aw ], [ %i.ji, %bb.ax ] ; 2 uses
  %i.jj = and i64 %.sroa.0.0.copyload.i.i.i146, 281474976710655
  %i.jk = inttoptr i64 %i.jj to ptr
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 16
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !315 ; 2 uses
  %.not.i147 = icmp eq i32 %i.jm, 0
  br i1 %.not.i147, label %bb.ay, label %bb.az, !prof !39

bb.ay:                                            ; preds = %_ZN6hermes2vm7Runtime10makeHandleINS0_11HiddenClassEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit145
  call void @_ZN6hermes2vm11HiddenClass28initializeMissingPropertyMapENS0_6HandleIS1_EERNS0_7RuntimeE(ptr nonnull %.0.i.i.i.i.i.i144, ptr noundef nonnull align 8 dereferenceable(9816) %1) #17
  %.sroa.0.0.copyload.i.i5.pre.i167 = load i64, ptr %.0.i.i.i.i.i.i144, align 8, !tbaa !40
  %.pre11.i = and i64 %.sroa.0.0.copyload.i.i5.pre.i167, 281474976710655
  %.pre12.i168 = inttoptr i64 %.pre11.i to ptr
  %.phi.trans.insert330 = getelementptr inbounds nuw i8, ptr %.pre12.i168, i64 16
  %.sroa.0.0.copyload.i.i.i.i148.pre = load i32, ptr %.phi.trans.insert330, align 4, !tbaa !3
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %_ZN6hermes2vm7Runtime10makeHandleINS0_11HiddenClassEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit145
  %.sroa.0.0.copyload.i.i.i.i148 = phi i32 [ %.sroa.0.0.copyload.i.i.i.i148.pre, %bb.ay ], [ %i.jm, %_ZN6hermes2vm7Runtime10makeHandleINS0_11HiddenClassEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit145 ] ; 2 uses
  %.not.i.i.i.i.i.i149 = icmp eq i32 %.sroa.0.0.copyload.i.i.i.i148, 0
  %i.jn = zext i32 %.sroa.0.0.copyload.i.i.i.i148 to i64
  %i.jo = add i64 %i.jn, %i.ja
  %i.jp = or i64 %i.jo, -281474976710656
  %i.jq = select i1 %.not.i.i.i.i.i.i149, i64 -281474976710656, i64 %i.jp ; 3 uses
  %i.jr = load ptr, ptr %i.ba, align 8, !tbaa !43 ; 4 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 192 ; 2 uses
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !46 ; 4 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jr, i64 200
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !56
  %i.jw = icmp ult ptr %i.jt, %i.jv
  br i1 %i.jw, label %bb.ba, label %bb.bb, !prof !42

bb.ba:                                            ; preds = %bb.az
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jt, i64 8 ; 2 uses
  store ptr %i.jx, ptr %i.js, align 8, !tbaa !46
  store i64 %i.jq, ptr %i.jt, align 8, !tbaa !40
  br label %_ZN6hermes2vm7Runtime10makeHandleINS0_15DictPropertyMapEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit.i153

bb.bb:                                            ; preds = %bb.az
  %i.jy = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.jr, i64 %i.jq) #17 ; 2 uses
  %.pre.i150 = load ptr, ptr %i.ba, align 8, !tbaa !43 ; 2 uses
  %.phi.trans.insert.i151 = getelementptr inbounds nuw i8, ptr %.pre.i150, i64 192
  %.pre9.i = load ptr, ptr %.phi.trans.insert.i151, align 8, !tbaa !46
  %.sroa.0.0.copyload.i.i.i6.pre.i152 = load i64, ptr %i.jy, align 8, !tbaa !40
  br label %_ZN6hermes2vm7Runtime10makeHandleINS0_15DictPropertyMapEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit.i153

_ZN6hermes2vm7Runtime10makeHandleINS0_15DictPropertyMapEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit.i153: ; preds = %bb.bb, %bb.ba
  %.sroa.0.0.copyload.i.i.i6.i154 = phi i64 [ %i.jq, %bb.ba ], [ %.sroa.0.0.copyload.i.i.i6.pre.i152, %bb.bb ]
  %i.jz = phi ptr [ %i.jx, %bb.ba ], [ %.pre9.i, %bb.bb ] ; 2 uses
  %i.ka = phi ptr [ %i.jr, %bb.ba ], [ %.pre.i150, %bb.bb ] ; 6 uses
  %.0.i.i.i.i.i.i.i155 = phi ptr [ %i.jt, %bb.ba ], [ %i.jy, %bb.bb ]
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 192 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ka, i64 208 ; 3 uses
  %i.kd = load i32, ptr %i.kc, align 8, !tbaa !349 ; 4 uses
  %i.ke = and i64 %.sroa.0.0.copyload.i.i.i6.i154, 281474976710655
  %i.kf = inttoptr i64 %i.ke to ptr
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 12
  %i.kh = load atomic i32, ptr %i.kg monotonic, align 4 ; 2 uses
  %.not18.i.i = icmp eq i32 %i.kh, 0
  br i1 %.not18.i.i, label %.._crit_edge_crit_edge.i.i165, label %.lr.ph.i.i156

.._crit_edge_crit_edge.i.i165:                    ; preds = %_ZN6hermes2vm7Runtime10makeHandleINS0_15DictPropertyMapEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit.i153
  %.pre.i.i166 = zext i32 %i.kd to i64
  br label %"_ZN6hermes2vm11HiddenClass15forEachPropertyIZNS0_8JSObject18getOwnPropertyKeysENS0_6HandleIS3_EERNS0_7RuntimeENS0_12OwnKeysFlagsEE3$_1EEvNS4_IS1_EES7_RKT_.exit"

.lr.ph.i.i156:                                    ; preds = %_ZN6hermes2vm7Runtime10makeHandleINS0_15DictPropertyMapEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit.i153
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ka, i64 144
  %i.kj = zext i32 %i.kd to i64                   ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ka, i64 200
  %i.kl = zext i32 %i.kh to i64
  %i.km = and i32 %2, 4
  %.not7.i.i.i = icmp eq i32 %i.km, 0
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bg, %.lr.ph.i.i156
  %.13 = phi i32 [ %.6, %.lr.ph.i.i156 ], [ %.14, %bb.bg ] ; 5 uses
  %indvars.iv.i.i157 = phi i64 [ 0, %.lr.ph.i.i156 ], [ %indvars.iv.next.i.i159, %bb.bg ] ; 2 uses
  %.sroa.0.0.copyload.i.i11.i.i158 = load i64, ptr %.0.i.i.i.i.i.i.i155, align 8, !tbaa !40
  %i.kn = and i64 %.sroa.0.0.copyload.i.i11.i.i158, 281474976710655
  %i.ko = inttoptr i64 %i.kn to ptr
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 28
  %i.kq = getelementptr inbounds nuw [12 x i8], ptr %i.kp, i64 %indvars.iv.i.i157 ; 2 uses
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !350 ; 4 uses
  %i.ks = icmp ult i32 %i.kr, 536870910
  br i1 %i.ks, label %bb.bd, label %bb.bg

bb.bd:                                            ; preds = %bb.bc
  %i.kt = icmp samesign ugt i32 %i.kr, 268435455
  %i.ku = and i32 %i.kr, 268435454
  %i.kv = icmp samesign ugt i32 %i.ku, 13
  %i.kw = select i1 %i.kt, i1 %i.kv, i1 false
  br i1 %i.kw, label %bb.be, label %"_ZZN6hermes2vm8JSObject18getOwnPropertyKeysENS0_6HandleIS1_EERNS0_7RuntimeENS0_12OwnKeysFlagsEENK3$_1clENS0_8SymbolIDENS0_23NamedPropertyDescriptorE.exit.i.i"

bb.be:                                            ; preds = %bb.bd
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kq, i64 4
  %.sroa.0.0.copyload.i.i162 = load i64, ptr %i.kx, align 4
  %i.ky = and i64 %.sroa.0.0.copyload.i.i162, 2
  %.not.i.i.i163 = icmp eq i64 %i.ky, 0
  %or.cond.i.i.i164 = select i1 %.not7.i.i.i, i1 %.not.i.i.i163, i1 false
  br i1 %or.cond.i.i.i164, label %"_ZZN6hermes2vm8JSObject18getOwnPropertyKeysENS0_6HandleIS1_EERNS0_7RuntimeENS0_12OwnKeysFlagsEENK3$_1clENS0_8SymbolIDENS0_23NamedPropertyDescriptorE.exit.i.i", label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.kz = zext nneg i32 %i.kr to i64
  %i.la = or disjoint i64 %i.kz, -1266637395197952
  store i64 %i.la, ptr %.0.i.i.i.i.i.i140, align 8, !tbaa !326
  %i.lb = add i32 %.13, 1
  %i.lc = call i32 @_ZN6hermes2vm9ArrayImpl18_setOwnIndexedImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeEjNS2_INS0_11HermesValueEEE(ptr %i.ar, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %.13, ptr nonnull %.0.i.i.i.i.i.i140) #17 ; 0 uses
  br label %"_ZZN6hermes2vm8JSObject18getOwnPropertyKeysENS0_6HandleIS1_EERNS0_7RuntimeENS0_12OwnKeysFlagsEENK3$_1clENS0_8SymbolIDENS0_23NamedPropertyDescriptorE.exit.i.i"

"_ZZN6hermes2vm8JSObject18getOwnPropertyKeysENS0_6HandleIS1_EERNS0_7RuntimeENS0_12OwnKeysFlagsEENK3$_1clENS0_8SymbolIDENS0_23NamedPropertyDescriptorE.exit.i.i": ; preds = %bb.bf, %bb.be, %bb.bd
  %.15 = phi i32 [ %.13, %bb.be ], [ %i.lb, %bb.bf ], [ %.13, %bb.bd ]
  %i.ld = load ptr, ptr %i.ki, align 8, !tbaa !329
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.ld, i64 %i.kj
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !351
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 128
  store i32 %i.kd, ptr %i.kc, align 8, !tbaa !349
  store ptr %i.lg, ptr %i.kk, align 8, !tbaa !56
  store ptr %i.jz, ptr %i.kb, align 8, !tbaa !46
  br label %bb.bg

bb.bg:                                            ; preds = %"_ZZN6hermes2vm8JSObject18getOwnPropertyKeysENS0_6HandleIS1_EERNS0_7RuntimeENS0_12OwnKeysFlagsEENK3$_1clENS0_8SymbolIDENS0_23NamedPropertyDescriptorE.exit.i.i", %bb.bc
  %.14 = phi i32 [ %.15, %"_ZZN6hermes2vm8JSObject18getOwnPropertyKeysENS0_6HandleIS1_EERNS0_7RuntimeENS0_12OwnKeysFlagsEENK3$_1clENS0_8SymbolIDENS0_23NamedPropertyDescriptorE.exit.i.i" ], [ %.13, %bb.bc ] ; 2 uses
  %indvars.iv.next.i.i159 = add nuw nsw i64 %indvars.iv.i.i157, 1 ; 2 uses
  %.not.i.i160 = icmp eq i64 %indvars.iv.next.i.i159, %i.kl
  br i1 %.not.i.i160, label %"_ZN6hermes2vm11HiddenClass15forEachPropertyIZNS0_8JSObject18getOwnPropertyKeysENS0_6HandleIS3_EERNS0_7RuntimeENS0_12OwnKeysFlagsEE3$_1EEvNS4_IS1_EES7_RKT_.exit", label %bb.bc, !llvm.loop !358

"_ZN6hermes2vm11HiddenClass15forEachPropertyIZNS0_8JSObject18getOwnPropertyKeysENS0_6HandleIS3_EERNS0_7RuntimeENS0_12OwnKeysFlagsEE3$_1EEvNS4_IS1_EES7_RKT_.exit": ; preds = %bb.bg, %.._crit_edge_crit_edge.i.i165
  %.16 = phi i32 [ %.6, %.._crit_edge_crit_edge.i.i165 ], [ %.14, %bb.bg ]
  %.pre-phi.i.i161 = phi i64 [ %.pre.i.i166, %.._crit_edge_crit_edge.i.i165 ], [ %i.kj, %bb.bg ]
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ka, i64 144
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !329
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.li, i64 %.pre-phi.i.i161
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !351
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 128
  store i32 %i.kd, ptr %i.kc, align 8, !tbaa !349
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ka, i64 200
  store ptr %i.ll, ptr %i.lm, align 8, !tbaa !56
  store ptr %i.jz, ptr %i.kb, align 8, !tbaa !46
  br label %bb.bh

bb.bh:                                            ; preds = %"_ZN6hermes2vm11HiddenClass15forEachPropertyIZNS0_8JSObject18getOwnPropertyKeysENS0_6HandleIS3_EERNS0_7RuntimeENS0_12OwnKeysFlagsEE3$_1EEvNS4_IS1_EES7_RKT_.exit", %bb.as
  %.7 = phi i32 [ %.16, %"_ZN6hermes2vm11HiddenClass15forEachPropertyIZNS0_8JSObject18getOwnPropertyKeysENS0_6HandleIS3_EERNS0_7RuntimeENS0_12OwnKeysFlagsEE3$_1EEvNS4_IS1_EES7_RKT_.exit" ], [ %.6, %bb.as ] ; 4 uses
  %i.ln = load i32, ptr %i.bk, align 8, !tbaa !330
  %i.lo = add i32 %i.ln, %.7
  %i.lp = call i32 @_ZN6hermes2vm7JSArray9setLengthENS0_6HandleIS1_EERNS0_7RuntimeEjNS0_11PropOpFlagsE(ptr %i.ar, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %i.lo, i32 0) #17 ; 0 uses
  %i.lq = load i32, ptr %i.bk, align 8, !tbaa !330 ; 2 uses
  %.not.i169 = icmp eq i32 %i.lq, 0
  br i1 %.not.i169, label %.loopexit, label %bb.bi, !prof !42

bb.bi:                                            ; preds = %bb.bh
  %i.lr = load ptr, ptr %5, align 8, !tbaa !329   ; 2 uses
  %i.ls = zext i32 %i.lq to i64
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.lr, i64 %i.ls
  call void @_ZSt4sortIPjEvT_S1_(ptr noundef %i.lr, ptr noundef nonnull %i.lt)
  %i.lu = load i32, ptr %i.bk, align 8, !tbaa !330
  %i.lv = add i32 %i.lu, %.7
  %i.lw = call noundef i32 @_ZN6hermes2vm9ArrayImpl18setStorageEndIndexENS0_6HandleIS1_EERNS0_7RuntimeEj(ptr %i.ar, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %i.lv) #17 ; 0 uses
  %.not111306 = icmp eq i32 %.7, %.099
  br i1 %.not111306, label %._crit_edge311, label %.lr.ph310

.lr.ph310:                                        ; preds = %bb.bi
  %.sroa.0.0.copyload.i.i170 = load i64, ptr %i.ar, align 8, !tbaa !40
  %i.lx = and i64 %.sroa.0.0.copyload.i.i170, 281474976710655
  %i.ly = inttoptr i64 %i.lx to ptr
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 24
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !342
  %i.mb = ptrtoint ptr %1 to i64                  ; 2 uses
  br label %bb.bj

._crit_edge311:                                   ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit180, %bb.bi
  %i.mc = load i32, ptr %i.bk, align 8, !tbaa !330 ; 2 uses
  %i.md = add i32 %i.mc, %.099                    ; 2 uses
  %.not112312 = icmp eq i32 %i.md, 0
  br i1 %.not112312, label %.loopexit, label %.lr.ph317

.lr.ph317:                                        ; preds = %._crit_edge311
  %i.me = ptrtoint ptr %1 to i64                  ; 3 uses
  br label %bb.bm

bb.bj:                                            ; preds = %.lr.ph310, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit180
  %.0103308 = phi i32 [ %i.ma, %.lr.ph310 ], [ %i.mg, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit180 ]
  %.0104307 = phi i32 [ %.7, %.lr.ph310 ], [ %i.mf, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit180 ]
  %i.mf = add i32 %.0104307, -1                   ; 5 uses
  %i.mg = add i32 %.0103308, -1                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %.sroa.0.0.copyload.i.i171 = load i64, ptr %i.ar, align 8, !tbaa !40
  %i.mh = and i64 %.sroa.0.0.copyload.i.i171, 281474976710655
  %i.mi = inttoptr i64 %i.mh to ptr               ; 3 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 20
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !356 ; 2 uses
  %.not.i172 = icmp uge i32 %i.mf, %i.mk
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mi, i64 24
  %i.mm = load i32, ptr %i.ml, align 4
  %i.mn = icmp ult i32 %i.mf, %i.mm
  %or.cond.i173 = select i1 %.not.i172, i1 %i.mn, i1 false
  br i1 %or.cond.i173, label %bb.bk, label %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit180

bb.bk:                                            ; preds = %bb.bj
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mi, i64 28
  %.sroa.0.0.copyload.i.i.i.i175 = load i32, ptr %i.mo, align 4, !tbaa !3
  %i.mp = zext i32 %.sroa.0.0.copyload.i.i.i.i175 to i64
  %i.mq = add i64 %i.mp, %i.mb
  %i.mr = inttoptr i64 %i.mq to ptr               ; 2 uses
  %i.ms = sub nuw i32 %i.mf, %i.mk                ; 4 uses
  %i.mt = icmp ult i32 %i.ms, 4096
  br i1 %i.mt, label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE2atILNS3_6InlineE0EEES2_RNS0_11PointerBaseEj.exit.i176, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.mu = add i32 %i.ms, -4096
  %i.mv = lshr i32 %i.mu, 10
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mr, i64 16392
  %i.mx = zext nneg i32 %i.mv to i64
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.mw, i64 %i.mx
  %i.mz = load i32, ptr %i.my, align 4, !tbaa !313
  %i.na = zext i32 %i.mz to i64
  %i.nb = add i64 %i.na, %i.mb
  %i.nc = inttoptr i64 %i.nb to ptr
  %i.nd = and i32 %i.ms, 1023
  br label %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE2atILNS3_6InlineE0EEES2_RNS0_11PointerBaseEj.exit.i176

_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE2atILNS3_6InlineE0EEES2_RNS0_11PointerBaseEj.exit.i176: ; preds = %bb.bl, %bb.bk
  %.sink8.i.i177 = phi ptr [ %i.nc, %bb.bl ], [ %i.mr, %bb.bk ]
  %.sink7.i.i178 = phi i32 [ %i.nd, %bb.bl ], [ %i.ms, %bb.bk ]
  %i.ne = getelementptr inbounds nuw i8, ptr %.sink8.i.i177, i64 8
  %i.nf = zext nneg i32 %.sink7.i.i178 to i64
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %i.ne, i64 %i.nf
  %.sroa.0.0.i.i179 = load i32, ptr %i.ng, align 4, !tbaa !3
  br label %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit180

_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit180: ; preds = %bb.bj, %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE2atILNS3_6InlineE0EEES2_RNS0_11PointerBaseEj.exit.i176
  %.sroa.0.0.i174 = phi i32 [ %.sroa.0.0.i.i179, %_ZNK6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE2atILNS3_6InlineE0EEES2_RNS0_11PointerBaseEj.exit.i176 ], [ 7, %bb.bj ]
  store i32 %.sroa.0.0.i174, ptr %7, align 4
  %i.nh = call i64 @_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE(ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 1 dereferenceable(1) %1)
  store i64 %i.nh, ptr %.0.i.i.i.i.i.i121, align 8, !tbaa !326
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %i.ni = call i32 @_ZN6hermes2vm9ArrayImpl18_setOwnIndexedImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeEjNS2_INS0_11HermesValueEEE(ptr nonnull %i.ar, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %i.mg, ptr nonnull %.0.i.i.i.i.i.i121) #17 ; 0 uses
  %.not111 = icmp eq i32 %i.mf, %.099
  br i1 %.not111, label %._crit_edge311, label %bb.bj, !llvm.loop !359

bb.bm:                                            ; preds = %.lr.ph317, %bb.bu
  %.096315 = phi i32 [ %i.mc, %.lr.ph317 ], [ %.2, %bb.bu ] ; 4 uses
  %.098314 = phi i32 [ %i.md, %.lr.ph317 ], [ %i.ph, %bb.bu ]
  %.1100313 = phi i32 [ %.099, %.lr.ph317 ], [ %.3.a, %bb.bu ] ; 3 uses
  %.not113 = icmp eq i32 %.1100313, 0
  br i1 %.not113, label %bb.bt, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %.sroa.0.0.copyload.i.i181 = load i64, ptr %i.ar, align 8, !tbaa !40
  %i.nj = and i64 %.sroa.0.0.copyload.i.i181, 281474976710655
  %i.nk = inttoptr i64 %i.nj to ptr               ; 3 uses
  %i.nl = add i32 %.1100313, -1                   ; 4 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nk, i64 20
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !356 ; 2 uses
  %.not.i182 = icmp uge i32 %i.nl, %i.nn
  %i.no = getelementptr inbounds nuw i8, ptr %i.nk, i64 24
  %i.np = load i32, ptr %i.no, align 4
  %i.nq = icmp ult i32 %i.nl, %i.np
  %or.cond.i183 = select i1 %.not.i182, i1 %i.nq, i1 false
  br i1 %or.cond.i183, label %bb.bo, label %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit190.thread

bb.bo:                                            ; preds = %bb.bn
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nk, i64 28
  %.sroa.0.0.copyload.i.i.i.i185 = load i32, ptr %i.nr, align 4, !tbaa !3
  %i.ns = zext i32 %.sroa.0.0.copyload.i.i.i.i185 to i64
  %i.nt = add i64 %i.ns, %i.me
  %i.nu = inttoptr i64 %i.nt to ptr               ; 2 uses
  %i.nv = sub nuw i32 %i.nl, %i.nn                ; 4 uses
  %i.nw = icmp ult i32 %i.nv, 4096
  br i1 %i.nw, label %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit190, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.nx = add i32 %i.nv, -4096
  %i.ny = lshr i32 %i.nx, 10
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nu, i64 16392
  %i.oa = zext nneg i32 %i.ny to i64
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %i.nz, i64 %i.oa
  %i.oc = load i32, ptr %i.ob, align 4, !tbaa !313
  %i.od = zext i32 %i.oc to i64
  %i.oe = add i64 %i.od, %i.me
  %i.of = inttoptr i64 %i.oe to ptr
  %i.og = and i32 %i.nv, 1023
  br label %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit190

_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit190: ; preds = %bb.bo, %bb.bp
  %.sink8.i.i187 = phi ptr [ %i.of, %bb.bp ], [ %i.nu, %bb.bo ]
  %.sink7.i.i188 = phi i32 [ %i.og, %bb.bp ], [ %i.nv, %bb.bo ]
  %i.oh = getelementptr inbounds nuw i8, ptr %.sink8.i.i187, i64 8
  %i.oi = zext nneg i32 %.sink7.i.i188 to i64
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %i.oh, i64 %i.oi
  %.sroa.0.0.i.i189 = load i32, ptr %i.oj, align 4, !tbaa !3 ; 3 uses
  %i.ok = and i32 %.sroa.0.0.i.i189, 7
  %i.ol = icmp eq i32 %i.ok, 4
  br i1 %i.ol, label %bb.bq, label %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit190.thread, !prof !360

bb.bq:                                            ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit190
  %i.om = ashr i32 %.sroa.0.0.i.i189, 3
  %i.on = sitofp i32 %i.om to double
  br label %_ZNK6hermes2vm13HermesValue329getNumberERNS0_11PointerBaseE.exit

_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit190.thread: ; preds = %bb.bn, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit190
  %.sroa.0.0.i184290 = phi i32 [ %.sroa.0.0.i.i189, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit190 ], [ 7, %bb.bn ]
  %i.oo = and i32 %.sroa.0.0.i184290, -8
  %i.op = zext i32 %i.oo to i64
  %i.oq = add i64 %i.op, %i.me
  %i.or = inttoptr i64 %i.oq to ptr
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 8
  %i.ot = load double, ptr %i.os, align 8, !tbaa !311
  br label %_ZNK6hermes2vm13HermesValue329getNumberERNS0_11PointerBaseE.exit

_ZNK6hermes2vm13HermesValue329getNumberERNS0_11PointerBaseE.exit: ; preds = %bb.bq, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit190.thread
  %.0.i = phi double [ %i.on, %bb.bq ], [ %i.ot, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit190.thread ]
  %i.ou = fptoui double %.0.i to i32              ; 2 uses
  %.not114 = icmp eq i32 %.096315, 0
  br i1 %.not114, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %_ZNK6hermes2vm13HermesValue329getNumberERNS0_11PointerBaseE.exit
  %i.ov = add i32 %.096315, -1                    ; 2 uses
  %i.ow = zext i32 %i.ov to i64
  %i.ox = load ptr, ptr %5, align 8, !tbaa !329
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.ox, i64 %i.ow
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !3  ; 2 uses
  %i.pa = icmp ugt i32 %i.oz, %i.ou
  br i1 %i.pa, label %bb.bu, label %bb.bs

bb.bs:                                            ; preds = %bb.br, %_ZNK6hermes2vm13HermesValue329getNumberERNS0_11PointerBaseE.exit
  br label %bb.bu

bb.bt:                                            ; preds = %bb.bm
  %i.pb = add i32 %.096315, -1                    ; 2 uses
  %i.pc = zext i32 %i.pb to i64
  %i.pd = load ptr, ptr %5, align 8, !tbaa !329
  %i.pe = getelementptr inbounds nuw [4 x i8], ptr %i.pd, i64 %i.pc
  %i.pf = load i32, ptr %i.pe, align 4, !tbaa !3
  br label %bb.bu

bb.bu:                                            ; preds = %bb.br, %bb.bs, %bb.bt
  %.sink374 = phi i32 [ %i.pf, %bb.bt ], [ %i.ou, %bb.bs ], [ %i.oz, %bb.br ]
  %.3.a = phi i32 [ 0, %bb.bt ], [ %i.nl, %bb.bs ], [ %.1100313, %bb.br ]
  %.2 = phi i32 [ %i.pb, %bb.bt ], [ %.096315, %bb.bs ], [ %i.ov, %bb.br ]
  %i.pg = uitofp i32 %.sink374 to double
  store double %i.pg, ptr %.0.i.i.i.i.i.i121, align 8, !tbaa !326
  %i.ph = add i32 %.098314, -1                    ; 3 uses
  %i.pi = call i32 @_ZN6hermes2vm9ArrayImpl18_setOwnIndexedImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeEjNS2_INS0_11HermesValueEEE(ptr nonnull %i.ar, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %i.ph, ptr nonnull %.0.i.i.i.i.i.i121) #17 ; 0 uses
  %.not112 = icmp eq i32 %i.ph, 0
  br i1 %.not112, label %.loopexit, label %bb.bm, !llvm.loop !361

.loopexit:                                        ; preds = %bb.bu, %._crit_edge311, %bb.bh, %bb.n
  %.sroa.0271.2 = phi ptr [ inttoptr (i64 -1 to ptr), %bb.n ], [ %i.ar, %bb.bh ], [ %i.ar, %._crit_edge311 ], [ %i.ar, %bb.bu ]
  %i.pj = load ptr, ptr %5, align 8, !tbaa !329   ; 2 uses
  %i.pk = icmp eq ptr %i.pj, %i.bj
  br i1 %i.pk, label %_ZN4llvh11SmallVectorIjLj8EED2Ev.exit, label %bb.bv

bb.bv:                                            ; preds = %.loopexit
  call void @free(ptr noundef %i.pj) #17
  br label %_ZN4llvh11SmallVectorIjLj8EED2Ev.exit

_ZN4llvh11SmallVectorIjLj8EED2Ev.exit:            ; preds = %.loopexit, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.pl = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.pm = load ptr, ptr %i.aw, align 8, !tbaa !333
  call void @_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE8_M_eraseEPSt13_Rb_tree_nodeIjE(ptr noundef nonnull align 8 dereferenceable(48) %i.pl, ptr noundef %i.pm)
  %i.pn = load ptr, ptr %4, align 8, !tbaa !329   ; 2 uses
  %i.po = icmp eq ptr %i.pn, %i.as
  br i1 %i.po, label %_ZN4llvh8SmallSetIjLj16ESt4lessIjEED2Ev.exit, label %bb.bw

bb.bw:                                            ; preds = %_ZN4llvh11SmallVectorIjLj8EED2Ev.exit
  call void @free(ptr noundef %i.pn) #17
  br label %_ZN4llvh8SmallSetIjLj16ESt4lessIjEED2Ev.exit

_ZN4llvh8SmallSetIjLj16ESt4lessIjEED2Ev.exit:     ; preds = %_ZN4llvh11SmallVectorIjLj8EED2Ev.exit, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_7JSArrayEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_7JSArrayEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit: ; preds = %_ZN4llvh8SmallSetIjLj16ESt4lessIjEED2Ev.exit, %bb.i, %bb.b, %bb.d, %bb.e
  %.sroa.0271.4 = phi ptr [ %i.u, %bb.e ], [ inttoptr (i64 -1 to ptr), %bb.b ], [ %i.p, %bb.d ], [ %.sroa.0271.2, %_ZN4llvh8SmallSetIjLj16ESt4lessIjEED2Ev.exit ], [ inttoptr (i64 -1 to ptr), %bb.i ]
  ret ptr %.sroa.0271.4
}

declare ptr @_ZN6hermes2vm7JSProxy15ownPropertyKeysENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS0_12OwnKeysFlagsE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32) local_unnamed_addr #3

declare ptr @_ZN6hermes2vm7JSArray6createERNS0_7RuntimeEjj(ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNK4llvh8SmallSetIjLj16ESt4lessIjEE5countERKj(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load i64, ptr %i.a, align 8, !tbaa !336
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !329    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !330  ; 2 uses
  %i.g = zext i32 %i.f to i64                     ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.g, 2
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i ; 3 uses
  %.not11.i = icmp eq i32 %i.f, 0
  br i1 %.not11.i, label %_ZNK4llvh8SmallSetIjLj16ESt4lessIjEE5vfindERKj.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.i = load i32, ptr %1, align 4, !tbaa !3
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %.0812.i = phi ptr [ %i.d, %.lr.ph.i ], [ %i.l, %bb.d ] ; 3 uses
  %i.j = load i32, ptr %.0812.i, align 4, !tbaa !3
  %i.k = icmp eq i32 %i.j, %i.i
  br i1 %i.k, label %_ZNK4llvh8SmallSetIjLj16ESt4lessIjEE5vfindERKj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.0812.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.l, %i.h
  br i1 %.not.i, label %_ZNK4llvh8SmallSetIjLj16ESt4lessIjEE5vfindERKj.exit, label %bb.c, !llvm.loop !362

_ZNK4llvh8SmallSetIjLj16ESt4lessIjEE5vfindERKj.exit: ; preds = %bb.c, %bb.d, %bb.b
  %.1.i = phi ptr [ %i.h, %bb.b ], [ %.0812.i, %bb.c ], [ %i.h, %bb.d ]
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.g
  %i.n = icmp ne ptr %.1.i, %i.m
  br label %_ZNKSt3setIjSt4lessIjESaIjEE5countERKj.exit

bb.e:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !333  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not10.i.i.i, label %_ZNKSt3setIjSt4lessIjESaIjEE5countERKj.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e
  %i.r = load i32, ptr %1, align 4, !tbaa !3      ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.f ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.f ]
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.t = load i32, ptr %i.s, align 4, !tbaa !3
  %i.u = icmp ult i32 %i.t, %i.r                  ; 2 uses
  %.19.i.i.i = select i1 %i.u, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 3 uses
  %.1.in.v.i.i.i = select i1 %i.u, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !363 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE14_M_lower_boundEPKSt13_Rb_tree_nodeIjEPKSt18_Rb_tree_node_baseRKj.exit.i.i, label %bb.f, !llvm.loop !364

_ZNKSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE14_M_lower_boundEPKSt13_Rb_tree_nodeIjEPKSt18_Rb_tree_node_baseRKj.exit.i.i: ; preds = %bb.f
  %i.v = icmp eq ptr %.19.i.i.i, %i.q
  br i1 %i.v, label %_ZNKSt3setIjSt4lessIjESaIjEE5countERKj.exit, label %bb.g

bb.g:                                             ; preds = %_ZNKSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE14_M_lower_boundEPKSt13_Rb_tree_nodeIjEPKSt18_Rb_tree_node_baseRKj.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.x = load i32, ptr %i.w, align 4, !tbaa !3
  %i.y = icmp uge i32 %i.r, %i.x
  br label %_ZNKSt3setIjSt4lessIjESaIjEE5countERKj.exit

_ZNKSt3setIjSt4lessIjESaIjEE5countERKj.exit:      ; preds = %bb.g, %_ZNKSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE14_M_lower_boundEPKSt13_Rb_tree_nodeIjEPKSt18_Rb_tree_node_baseRKj.exit.i.i, %bb.e, %_ZNK4llvh8SmallSetIjLj16ESt4lessIjEE5vfindERKj.exit
  %.0.shrunk = phi i1 [ %i.n, %_ZNK4llvh8SmallSetIjLj16ESt4lessIjEE5vfindERKj.exit ], [ false, %bb.e ], [ false, %_ZNKSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE14_M_lower_boundEPKSt13_Rb_tree_nodeIjEPKSt18_Rb_tree_node_baseRKj.exit.i.i ], [ %i.y, %bb.g ]
  %.0 = zext i1 %.0.shrunk to i64
  ret i64 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN4llvh8SmallSetIjLj16ESt4lessIjEE6insertERKj(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 7 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !336
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %.02022.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !363 ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.02022.i.i.i, null
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.f = load i32, ptr %1, align 4, !tbaa !3      ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %.02024.i.i.i = phi ptr [ %.02022.i.i.i, %.lr.ph.i.i.i ], [ %.020.i.i.i, %bb.c ] ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.h = load i32, ptr %i.g, align 4, !tbaa !3    ; 2 uses
  %i.i = icmp ult i32 %i.f, %i.h                  ; 2 uses
  %.in.v.i.i.i = select i1 %i.i, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !363 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %bb.c, !llvm.loop !365

._crit_edge.i.i.i:                                ; preds = %bb.c
  br i1 %i.i, label %._crit_edge.thread.i.i.i, label %bb.e

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %bb.b
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.e, %bb.b ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !334
  %i.l = icmp eq ptr %.019.lcssa29.i.i.i, %i.k
  br i1 %i.l, label %select.unfold.i.i, label %bb.d

bb.d:                                             ; preds = %._crit_edge.thread.i.i.i
  %i.m = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #19
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !3
  %.pre18.i.i = load i32, ptr %1, align 4, !tbaa !3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i
  %i.n = phi i32 [ %.pre18.i.i, %bb.d ], [ %i.f, %._crit_edge.i.i.i ]
  %i.o = phi i32 [ %.pre.i.i, %bb.d ], [ %i.h, %._crit_edge.i.i.i ]
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.d ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.p = icmp ult i32 %i.o, %i.n
  br i1 %i.p, label %select.unfold.i.i, label %_ZNSt3setIjSt4lessIjESaIjEE6insertERKj.exit

select.unfold.i.i:                                ; preds = %bb.e, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.e ] ; 3 uses
  %i.q = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.e
  br i1 %i.q, label %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE10_M_insert_IRKjNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIjEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %select.unfold.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.s = load i32, ptr %1, align 4, !tbaa !3
  %i.t = load i32, ptr %i.r, align 4, !tbaa !3
  %i.u = icmp ult i32 %i.s, %i.t
  br label %_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE10_M_insert_IRKjNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIjEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE10_M_insert_IRKjNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIjEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i: ; preds = %bb.f, %select.unfold.i.i
  %i.v = phi i1 [ %i.u, %bb.f ], [ true, %select.unfold.i.i ]
  %i.w = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #20 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = load i32, ptr %1, align 4, !tbaa !3
  store i32 %i.y, ptr %i.x, align 4, !tbaa !3
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.v, ptr noundef nonnull %i.w, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.e) #17
  %i.z = load i64, ptr %i.a, align 8, !tbaa !336
  %i.aa = add i64 %i.z, 1
  store i64 %i.aa, ptr %i.a, align 8, !tbaa !336
  br label %_ZNSt3setIjSt4lessIjESaIjEE6insertERKj.exit

bb.g:                                             ; preds = %bb.a
  %i.ab = load ptr, ptr %0, align 8, !tbaa !329   ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
end_hunk_0
begin_hunk_1_@_ZN6hermes2vm8JSObject24getNamedDescriptorUnsafeENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_13PropertyFlagsERNS0_23NamedPropertyDescriptorE:bb.a
  %i.k = inttoptr i64 %i.j to ptr                 ; 3 uses
  br i1 %.not102, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4              ; 3 uses
  %i.n = and i32 %i.m, 32
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.d, label %bb.c, !prof !42

bb.c:                                             ; preds = %bb.b
  %i.o = load i16, ptr %4, align 4
  %i.p = or i16 %i.o, 260
  store i16 %i.p, ptr %4, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %2, ptr %i.q, align 4, !tbaa !367
  br label %.thread.sink.split

bb.d:                                             ; preds = %bb.b
  %i.r = and i32 %i.m, 64
  %.not35 = icmp eq i32 %i.r, 0
  br i1 %.not35, label %._crit_edge, label %bb.e, !prof !42

bb.e:                                             ; preds = %bb.d
  %i.s = and i32 %i.m, -97
  store i32 %i.s, ptr %i.l, align 4
  tail call void @_ZN6hermes2vm8Callable20defineLazyPropertiesENS0_6HandleIS1_EERNS0_7RuntimeE(ptr nonnull %0, ptr noundef nonnull align 8 dereferenceable(9816) %1) #17
  %.sroa.0.0.copyload.i.i.i46 = load i64, ptr %0, align 8, !tbaa !40
  %i.t = and i64 %.sroa.0.0.copyload.i.i.i46, 281474976710655
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %.sroa.0.0.copyload.i.i8.i47 = load i32, ptr %i.v, align 4, !tbaa !3
  %i.w = zext i32 %.sroa.0.0.copyload.i.i8.i47 to i64
  %i.x = add i64 %i.w, %i.d
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = tail call i64 @_ZN6hermes2vm11HiddenClass12findPropertyENS0_12PseudoHandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_13PropertyFlagsERNS0_23NamedPropertyDescriptorE(ptr %i.y, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %2, i16 %3, ptr noundef nonnull align 4 dereferenceable(8) %4) #17
  %i.aa = and i64 %i.z, 4294967296
  %.not104 = icmp eq i64 %i.aa, 0
  %.sroa.0.0.copyload.i.i50.pre = load i64, ptr %0, align 8, !tbaa !40
  %.pre119 = and i64 %.sroa.0.0.copyload.i.i50.pre, 281474976710655
  %.pre121 = inttoptr i64 %.pre119 to ptr         ; 2 uses
  br i1 %.not104, label %._crit_edge, label %.thread

._crit_edge:                                      ; preds = %bb.e, %bb.d
  %.pre-phi122 = phi ptr [ %i.k, %bb.d ], [ %.pre121, %bb.e ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.pre-phi122, i64 4
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = and i32 %i.ac, 128
  %.not36 = icmp eq i32 %i.ad, 0
  br i1 %.not36, label %bb.g, label %bb.f, !prof !42

bb.f:                                             ; preds = %._crit_edge
  %i.ae = load i16, ptr %4, align 4
  %i.af = or i16 %i.ae, 1024
  store i16 %i.af, ptr %4, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %2, ptr %i.ag, align 4, !tbaa !367
  br label %.thread.sink.split

bb.g:                                             ; preds = %._crit_edge
  %i.ah = getelementptr inbounds nuw i8, ptr %.pre-phi122, i64 8
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !315 ; 2 uses
  %.not105 = icmp eq i32 %i.ai, 0
  br i1 %.not105, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = zext i32 %i.ai to i64
  %i.ak = add i64 %i.aj, %i.d
  %i.al = or i64 %i.ak, -281474976710656          ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !43 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 192 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !46 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 200
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !56
  %i.as = icmp ult ptr %i.ap, %i.ar
  br i1 %i.as, label %bb.i, label %bb.j, !prof !42

bb.i:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.at, ptr %i.ao, align 8, !tbaa !46
  store i64 %i.al, ptr %i.ap, align 8, !tbaa !40
  br label %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit

bb.j:                                             ; preds = %bb.h
  %i.au = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.an, i64 %i.al) #17 ; 2 uses
  %.sroa.0.0.copyload.i.i55.pre.pre = load i64, ptr %i.au, align 8, !tbaa !40
  br label %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit

_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit: ; preds = %bb.i, %bb.j
  %.sroa.0.0.copyload.i.i55.pre = phi i64 [ %i.al, %bb.i ], [ %.sroa.0.0.copyload.i.i55.pre.pre, %bb.j ]
  %.0.i.i.i.i.i.i = phi ptr [ %i.ap, %bb.i ], [ %i.au, %bb.j ] ; 6 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.q, %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit
  %.sroa.0.0.copyload.i.i55 = phi i64 [ %i.bt, %bb.q ], [ %.sroa.0.0.copyload.i.i55.pre, %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit ]
  %i.av = and i64 %.sroa.0.0.copyload.i.i55, 281474976710655
  %i.aw = inttoptr i64 %i.av to ptr               ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4            ; 4 uses
  %i.az = and i32 %i.ay, 64
  %.not37 = icmp eq i32 %i.az, 0
  br i1 %.not37, label %bb.l, label %.critedge, !prof !42

bb.l:                                             ; preds = %bb.k
  %i.ba = and i32 %i.ay, 160
  %or.cond = icmp eq i32 %i.ba, 0
  br i1 %or.cond, label %bb.m, label %bb.n, !prof !318

bb.m:                                             ; preds = %bb.l, %.critedge
  %.pre-phi118 = phi ptr [ %i.aw, %bb.l ], [ %.pre117, %.critedge ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.pre-phi118, i64 12
  %.sroa.0.0.copyload.i.i8.i59 = load i32, ptr %i.bb, align 4, !tbaa !3
  %i.bc = zext i32 %.sroa.0.0.copyload.i.i8.i59 to i64
  %i.bd = add i64 %i.bc, %i.d
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = tail call i64 @_ZN6hermes2vm11HiddenClass12findPropertyENS0_12PseudoHandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_13PropertyFlagsERNS0_23NamedPropertyDescriptorE(ptr %i.be, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %2, i16 1, ptr noundef nonnull align 4 dereferenceable(8) %4) #17
  %i.bg = and i64 %i.bf, 4294967296
  %.not107 = icmp eq i64 %i.bg, 0
  %.sroa.0.0.copyload.i.i67 = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !40
  %i.bh = and i64 %.sroa.0.0.copyload.i.i67, 281474976710655
  %i.bi = inttoptr i64 %i.bh to ptr               ; 2 uses
  br i1 %.not107, label %bb.q, label %.thread

.critedge:                                        ; preds = %bb.k
  %i.bj = and i32 %i.ay, -65
  store i32 %i.bj, ptr %i.ax, align 4
  tail call void @_ZN6hermes2vm8Callable20defineLazyPropertiesENS0_6HandleIS1_EERNS0_7RuntimeE(ptr nonnull %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1) #17
  %.sroa.0.0.copyload.i.i.i58.pre = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !40
  %.pre = and i64 %.sroa.0.0.copyload.i.i.i58.pre, 281474976710655
  %.pre117 = inttoptr i64 %.pre to ptr
  br label %bb.m

bb.n:                                             ; preds = %bb.l
  %i.bk = and i32 %i.ay, 32
  %.not41 = icmp eq i32 %i.bk, 0
  %i.bl = load i16, ptr %4, align 4               ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  br i1 %.not41, label %bb.p, label %bb.o, !prof !42

bb.o:                                             ; preds = %bb.n
  %i.bn = or i16 %i.bl, 260
  store i16 %i.bn, ptr %4, align 4
  store i32 %2, ptr %i.bm, align 4, !tbaa !367
  br label %.thread.sink.split

bb.p:                                             ; preds = %bb.n
  %i.bo = or i16 %i.bl, 1024
  store i16 %i.bo, ptr %4, align 4
  store i32 %2, ptr %i.bm, align 4, !tbaa !367
  br label %.thread.sink.split

bb.q:                                             ; preds = %bb.m
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.sroa.0.0.copyload.i.i68 = load i32, ptr %i.bp, align 4, !tbaa !3 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %.sroa.0.0.copyload.i.i68, 0
  %i.bq = zext i32 %.sroa.0.0.copyload.i.i68 to i64
  %i.br = add i64 %i.bq, %i.d
  %i.bs = or i64 %i.br, -281474976710656
  %i.bt = select i1 %.not.i.i.i.i, i64 -281474976710656, i64 %i.bs ; 3 uses
  store i64 %i.bt, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !326
  %i.bu = and i64 %i.bt, 281474976710655
  %.not108 = icmp eq i64 %i.bu, 0
  br i1 %.not108, label %.thread, label %bb.k, !llvm.loop !370

.thread.sink.split:                               ; preds = %bb.c, %bb.f, %bb.p, %bb.o
  %.0.i.i.i.i.i.i.sink = phi ptr [ %.0.i.i.i.i.i.i, %bb.o ], [ %.0.i.i.i.i.i.i, %bb.p ], [ %0, %bb.f ], [ %0, %bb.c ]
  %.sroa.0.0.copyload.i.i.i65 = load i64, ptr %.0.i.i.i.i.i.i.sink, align 8, !tbaa !40
  %i.bv = and i64 %.sroa.0.0.copyload.i.i.i65, 281474976710655
  %i.bw = inttoptr i64 %i.bv to ptr
  br label %.thread

.thread:                                          ; preds = %bb.q, %bb.m, %.thread.sink.split, %bb.e, %bb.a, %bb.g
  %.1 = phi ptr [ null, %bb.g ], [ %.pre121, %bb.e ], [ %i.k, %bb.a ], [ %i.bw, %.thread.sink.split ], [ %i.bi, %bb.m ], [ null, %bb.q ]
  ret ptr %.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, 2) i32 @_ZN6hermes2vm8JSObject30getComputedPrimitiveDescriptorENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEERNS0_13MutableHandleIS1_EERNS8_INS0_8SymbolIDEEERNS0_26ComputedPropertyDescriptorE(ptr nofree readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %5) local_unnamed_addr #1 align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8, !tbaa !40
  %i.a = or i64 %.sroa.0.0.copyload.i.i, -281474976710656
  %i.b = load ptr, ptr %3, align 8, !tbaa !351
  store i64 %i.a, ptr %i.b, align 8, !tbaa !326
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !43   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 192 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !46   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 208 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !349  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 4 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 144 ; 2 uses
  %i.l = zext i32 %i.h to i64                     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 200 ; 2 uses
  %.sroa.04.0.copyload.pre = load ptr, ptr %3, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.v, %bb.a
  %.sroa.04.0.copyload = phi ptr [ %.sroa.04.0.copyload.pre, %bb.a ], [ %i.dn, %bb.v ] ; 7 uses
  %.sroa.060.0 = phi i32 [ 536870911, %bb.a ], [ %.sroa.060.3170179, %bb.v ] ; 4 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %2, align 8, !tbaa !40 ; 2 uses
  %i.n = icmp ult i64 %.sroa.0.0.copyload.i.i.i, -1970324836974592
  br i1 %i.n, label %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit, label %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit.thread

_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit: ; preds = %bb.b
  %i.o = bitcast i64 %.sroa.0.0.copyload.i.i.i to double ; 2 uses
  %i.p = fptoui double %i.o to i32                ; 3 uses
  %i.q = uitofp i32 %i.p to double
  %i.r = fcmp oeq double %i.o, %i.q
  %i.s = icmp ne i32 %i.p, -1
  %or.cond.i.i = and i1 %i.s, %i.r
  %i.t = zext i32 %i.p to i64
  %i.u = or disjoint i64 %i.t, 4294967296
  %i.v = trunc nuw nsw i64 %i.u to i40
  %i.w = select i1 %or.cond.i.i, i40 %i.v, i40 0  ; 2 uses
  %.not136 = icmp samesign ult i40 %i.w, 4294967296
  br i1 %.not136, label %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit
  %.sroa.0.0.copyload.i.i.i28 = load i64, ptr %.sroa.04.0.copyload, align 8, !tbaa !40
  %i.x = and i64 %.sroa.0.0.copyload.i.i.i28, 281474976710655
  %i.y = inttoptr i64 %i.x to ptr                 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.aa = load i32, ptr %i.z, align 4             ; 2 uses
  %i.ab = and i32 %i.aa, 16
  %.not.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.084.0.extract.trunc = trunc i40 %i.w to i32 ; 2 uses
  %i.ac = load i32, ptr %i.y, align 4
  %i.ad = lshr i32 %i.ac, 24
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr @_ZN6hermes2vm6VTable11vtableArrayE, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !319
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !353
  %i.aj = tail call i32 %i.ai(ptr noundef nonnull %i.y, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %.sroa.084.0.extract.trunc) #17, !inline_history !354 ; 3 uses
  %i.ak = and i32 %i.aj, 65536
  %.not138 = icmp eq i32 %i.ak, 0
  br i1 %.not138, label %_ZN6hermes2vm12_GLOBAL__N_137getOwnComputedPrimitiveDescriptorImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEENS3_11IgnoreProxyERNS0_8SymbolIDERNS0_13MutableHandleISA_EERNS0_26ComputedPropertyDescriptorE.exit.thread.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.080.0.insert.ext = and i32 %i.aj, 65535
  store i32 %.sroa.080.0.insert.ext, ptr %5, align 4
  %i.al = trunc i32 %i.aj to i16
  %i.am = or i16 %i.al, 32
  store i16 %i.am, ptr %5, align 4
  store i32 %.sroa.084.0.extract.trunc, ptr %i.i, align 4, !tbaa !367
  br label %.thread126

bb.f:                                             ; preds = %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %.sroa.0.0.copyload.i.i.i32 = load i32, ptr %i.an, align 4, !tbaa !3
  %i.ao = zext i32 %.sroa.0.0.copyload.i.i.i32 to i64
  %i.ap = add i64 %i.ao, %i.j
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 10
  %i.as = load i8, ptr %i.ar, align 2
  %i.at = and i8 %i.as, 4
  %i.au = icmp ne i8 %i.at, 0
  %i.av = and i32 %i.aa, 224
  %i.aw = icmp ne i32 %i.av, 0
  %or.cond133 = or i1 %i.aw, %i.au
  br i1 %or.cond133, label %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit.thread, label %_ZN6hermes2vm12_GLOBAL__N_137getOwnComputedPrimitiveDescriptorImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEENS3_11IgnoreProxyERNS0_8SymbolIDERNS0_13MutableHandleISA_EERNS0_26ComputedPropertyDescriptorE.exit.thread.thread

_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit.thread: ; preds = %bb.b, %bb.f, %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit
  %i.ax = icmp ugt i32 %.sroa.060.0, 536870909
  br i1 %i.ax, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit.thread
  %i.ay = tail call ptr @_ZN6hermes2vm15valueToSymbolIDERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %2) #17 ; 2 uses
  %.not139 = icmp eq ptr %i.ay, inttoptr (i64 -1 to ptr)
  br i1 %.not139, label %.thread126, label %.thread119, !prof !39

.thread119:                                       ; preds = %bb.g
  %.sroa.0.0.copyload.i.i.i36 = load i64, ptr %i.ay, align 8, !tbaa !40
  %i.az = trunc i64 %.sroa.0.0.copyload.i.i.i36 to i32
  br label %bb.h

bb.h:                                             ; preds = %.thread119, %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit.thread
  %.sroa.060.1 = phi i32 [ %i.az, %.thread119 ], [ %.sroa.060.0, %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit.thread ] ; 7 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.04.0.copyload, align 8, !tbaa !40
  %i.ba = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 281474976710655
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  %.sroa.0.0.copyload.i.i8.i.i.i = load i32, ptr %i.bc, align 4, !tbaa !3
  %i.bd = zext i32 %.sroa.0.0.copyload.i.i8.i.i.i to i64
  %i.be = add i64 %i.bd, %i.j
  %i.bf = inttoptr i64 %i.be to ptr
  %i.bg = tail call i64 @_ZN6hermes2vm11HiddenClass12findPropertyENS0_12PseudoHandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_13PropertyFlagsERNS0_23NamedPropertyDescriptorE(ptr %i.bf, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %.sroa.060.1, i16 1, ptr noundef nonnull align 4 dereferenceable(8) %5) #17
  %i.bh = and i64 %i.bg, 4294967296
  %.not140 = icmp eq i64 %i.bh, 0
  br i1 %.not140, label %bb.i, label %.thread126

bb.i:                                             ; preds = %bb.h
  %.sroa.0.0.copyload.i.i.i37 = load i64, ptr %.sroa.04.0.copyload, align 8, !tbaa !40
  %i.bi = and i64 %.sroa.0.0.copyload.i.i.i37, 281474976710655
  %i.bj = inttoptr i64 %i.bi to ptr
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %i.bl = load i32, ptr %i.bk, align 4
  %i.bm = and i32 %i.bl, 200
  %or.cond = icmp eq i32 %i.bm, 0
  br i1 %or.cond, label %_ZN6hermes2vm12_GLOBAL__N_137getOwnComputedPrimitiveDescriptorImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEENS3_11IgnoreProxyERNS0_8SymbolIDERNS0_13MutableHandleISA_EERNS0_26ComputedPropertyDescriptorE.exit.thread.thread, label %.critedge.i, !prof !369

.critedge.i:                                      ; preds = %bb.i
  %i.bn = load ptr, ptr %i.c, align 8, !tbaa !43  ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 192 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !46 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 200
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !56
  %i.bs = icmp ult ptr %i.bp, %i.br
  br i1 %i.bs, label %bb.j, label %bb.k, !prof !42

bb.j:                                             ; preds = %.critedge.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr %i.bt, ptr %i.bo, align 8, !tbaa !46
  store i64 -844424930131968, ptr %i.bp, align 8, !tbaa !40
  br label %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit

bb.k:                                             ; preds = %.critedge.i
  %i.bu = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.bn, i64 -844424930131968) #17
  br label %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit

_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit: ; preds = %bb.j, %bb.k
  %.0.i.i.i.i.i.i = phi ptr [ %i.bp, %bb.j ], [ %i.bu, %bb.k ] ; 3 uses
  %.sroa.0.0.copyload.i.i.i40 = load i64, ptr %.sroa.04.0.copyload, align 8, !tbaa !40
  %i.bv = and i64 %.sroa.0.0.copyload.i.i.i40, 281474976710655
  %i.bw = inttoptr i64 %i.bv to ptr
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 4 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4            ; 3 uses
  %i.bz = and i32 %i.by, 8
  %.not46.i = icmp eq i32 %i.bz, 0
  br i1 %.not46.i, label %bb.r, label %bb.l

bb.l:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit
  %.sroa.0.0.copyload.i.i.i41 = load i64, ptr %2, align 8, !tbaa !40 ; 3 uses
  %i.ca = icmp ult i64 %.sroa.0.0.copyload.i.i.i41, -1970324836974592
  br i1 %i.ca, label %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit44, label %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit44.thread

_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit44: ; preds = %bb.l
  %i.cb = bitcast i64 %.sroa.0.0.copyload.i.i.i41 to double ; 2 uses
  %i.cc = fptoui double %i.cb to i32              ; 3 uses
  %i.cd = uitofp i32 %i.cc to double
  %i.ce = fcmp oeq double %i.cb, %i.cd
  %i.cf = icmp ne i32 %i.cc, -1
  %or.cond.i.i43 = and i1 %i.cf, %i.ce
  %i.cg = zext i32 %i.cc to i64
  %i.ch = or disjoint i64 %i.cg, 4294967296
  %i.ci = trunc nuw nsw i64 %i.ch to i40
  %i.cj = select i1 %or.cond.i.i43, i40 %i.ci, i40 0 ; 3 uses
  %.not142 = icmp samesign ult i40 %i.cj, 4294967296
  %extract.t = trunc i40 %i.cj to i32             ; 2 uses
  %extract.t145 = icmp samesign ugt i40 %i.cj, 4294967295 ; 2 uses
  br i1 %.not142, label %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit44.thread, label %bb.o

_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit44.thread: ; preds = %bb.l, %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit44
  %.off0 = phi i32 [ %extract.t, %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit44 ], [ 0, %bb.l ]
  %.off32 = phi i1 [ %extract.t145, %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit44 ], [ false, %bb.l ]
  %.mask.i = and i64 %.sroa.0.0.copyload.i.i.i41, -140737488355328
  %i.ck = icmp eq i64 %.mask.i, -1266637395197952
  br i1 %i.ck, label %bb.o, label %bb.m

bb.m:                                             ; preds = %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit44.thread
  %i.cl = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !326 ; 2 uses
  %i.cm = icmp ugt i64 %i.cl, -844424930131969
  %i.cn = and i64 %i.cl, 281474976710655
  %i.co = icmp ne i64 %i.cn, 0
  %i.cp = and i1 %i.cm, %i.co
  br i1 %i.cp, label %.split, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cq = tail call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %2) #17
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = or i64 %i.cr, -844424930131968
  store i64 %i.cs, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !326
  br label %.split

.split:                                           ; preds = %bb.n, %bb.m
  %i.ct = tail call i64 @_ZN6hermes2vm12toArrayIndexERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.0.i.i.i.i.i.i) #17 ; 2 uses
  %extract.t144 = trunc i64 %i.ct to i32
  %i.cu = and i64 %i.ct, 4294967296
  %extract.t149.not = icmp eq i64 %i.cu, 0
  br i1 %extract.t149.not, label %_ZN6hermes2vm12_GLOBAL__N_137getOwnComputedPrimitiveDescriptorImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEENS3_11IgnoreProxyERNS0_8SymbolIDERNS0_13MutableHandleISA_EERNS0_26ComputedPropertyDescriptorE.exit.thread.thread, label %bb.p

bb.o:                                             ; preds = %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit44.thread, %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit44
  %.sroa.070.0.off0 = phi i32 [ %extract.t, %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit44 ], [ %.off0, %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit44.thread ]
  %.sroa.070.0.off32 = phi i1 [ %extract.t145, %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit44 ], [ %.off32, %_ZN6hermes2vm20toArrayIndexFastPathENS0_11HermesValueE.exit44.thread ]
  br i1 %.sroa.070.0.off32, label %bb.p, label %_ZN6hermes2vm12_GLOBAL__N_137getOwnComputedPrimitiveDescriptorImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEENS3_11IgnoreProxyERNS0_8SymbolIDERNS0_13MutableHandleISA_EERNS0_26ComputedPropertyDescriptorE.exit.thread.thread

bb.p:                                             ; preds = %.split, %bb.o
  %.sroa.070.0.off0166 = phi i32 [ %extract.t144, %.split ], [ %.sroa.070.0.off0, %bb.o ] ; 2 uses
  %.sroa.0.0.copyload.i.i45 = load i64, ptr %.sroa.04.0.copyload, align 8, !tbaa !40
  %i.cv = and i64 %.sroa.0.0.copyload.i.i45, 281474976710655
  %i.cw = inttoptr i64 %i.cv to ptr               ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4
  %i.cy = lshr i32 %i.cx, 24
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw [8 x i8], ptr @_ZN6hermes2vm6VTable11vtableArrayE, i64 %i.cz
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !319
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 56
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !353
  %i.de = tail call i32 %i.dd(ptr noundef nonnull %i.cw, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %.sroa.070.0.off0166) #17, !inline_history !354 ; 3 uses
  %i.df = and i32 %i.de, 65536
  %.not155 = icmp eq i32 %i.df, 0
  br i1 %.not155, label %_ZN6hermes2vm12_GLOBAL__N_137getOwnComputedPrimitiveDescriptorImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEENS3_11IgnoreProxyERNS0_8SymbolIDERNS0_13MutableHandleISA_EERNS0_26ComputedPropertyDescriptorE.exit.thread.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.sroa.067.0.insert.ext = and i32 %i.de, 65535
  store i32 %.sroa.067.0.insert.ext, ptr %5, align 4
  %i.dg = trunc i32 %i.de to i16
  %i.dh = or i16 %i.dg, 32
  store i16 %i.dh, ptr %5, align 4
  store i32 %.sroa.070.0.off0166, ptr %i.i, align 4, !tbaa !367
  br label %.thread126

bb.r:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit
  %i.di = and i32 %i.by, 64
  %.not156 = icmp eq i32 %i.di, 0
  br i1 %.not156, label %_ZN6hermes2vm12_GLOBAL__N_137getOwnComputedPrimitiveDescriptorImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEENS3_11IgnoreProxyERNS0_8SymbolIDERNS0_13MutableHandleISA_EERNS0_26ComputedPropertyDescriptorE.exit.thread.thread, label %_ZN6hermes2vm12_GLOBAL__N_137getOwnComputedPrimitiveDescriptorImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEENS3_11IgnoreProxyERNS0_8SymbolIDERNS0_13MutableHandleISA_EERNS0_26ComputedPropertyDescriptorE.exit.a

_ZN6hermes2vm12_GLOBAL__N_137getOwnComputedPrimitiveDescriptorImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEENS3_11IgnoreProxyERNS0_8SymbolIDERNS0_13MutableHandleISA_EERNS0_26ComputedPropertyDescriptorE.exit.a: ; preds = %bb.r
  %i.dj = and i32 %i.by, -73
  store i32 %i.dj, ptr %i.bx, align 4
  tail call void @_ZN6hermes2vm8Callable20defineLazyPropertiesENS0_6HandleIS1_EERNS0_7RuntimeE(ptr nonnull %.sroa.04.0.copyload, ptr noundef nonnull align 8 dereferenceable(9816) %1) #17
  %i.dk = tail call i32 @_ZN6hermes2vm8JSObject33getOwnComputedPrimitiveDescriptorENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEENS1_11IgnoreProxyERNS0_13MutableHandleINS0_8SymbolIDEEERNS0_26ComputedPropertyDescriptorE(ptr nonnull %.sroa.04.0.copyload, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %2, i32 noundef 1, ptr nonnull align 8 poison, ptr noundef nonnull align 4 dereferenceable(8) %5)
  %i.dl = trunc nuw i32 %i.dk to i16              ; 2 uses
  %.mask = and i16 %i.dl, 255
  %6 = icmp eq i16 %.mask, 0
  br i1 %6, label %.thread126, label %_ZN6hermes2vm12_GLOBAL__N_137getOwnComputedPrimitiveDescriptorImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEENS3_11IgnoreProxyERNS0_8SymbolIDERNS0_13MutableHandleISA_EERNS0_26ComputedPropertyDescriptorE.exit.thread, !prof !360

_ZN6hermes2vm12_GLOBAL__N_137getOwnComputedPrimitiveDescriptorImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEENS3_11IgnoreProxyERNS0_8SymbolIDERNS0_13MutableHandleISA_EERNS0_26ComputedPropertyDescriptorE.exit.thread: ; preds = %_ZN6hermes2vm12_GLOBAL__N_137getOwnComputedPrimitiveDescriptorImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEENS3_11IgnoreProxyERNS0_8SymbolIDERNS0_13MutableHandleISA_EERNS0_26ComputedPropertyDescriptorE.exit.a
  %i.dm = and i16 %i.dl, 256
  %.not157 = icmp eq i16 %i.dm, 0
  br i1 %.not157, label %_ZN6hermes2vm12_GLOBAL__N_137getOwnComputedPrimitiveDescriptorImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEENS3_11IgnoreProxyERNS0_8SymbolIDERNS0_13MutableHandleISA_EERNS0_26ComputedPropertyDescriptorE.exit.thread.thread, label %.thread126

_ZN6hermes2vm12_GLOBAL__N_137getOwnComputedPrimitiveDescriptorImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEENS3_11IgnoreProxyERNS0_8SymbolIDERNS0_13MutableHandleISA_EERNS0_26ComputedPropertyDescriptorE.exit.thread.thread: ; preds = %bb.f, %bb.d, %bb.i, %bb.o, %bb.p, %bb.r, %.split, %_ZN6hermes2vm12_GLOBAL__N_137getOwnComputedPrimitiveDescriptorImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEENS3_11IgnoreProxyERNS0_8SymbolIDERNS0_13MutableHandleISA_EERNS0_26ComputedPropertyDescriptorE.exit.thread
  %.sroa.060.3170179 = phi i32 [ %.sroa.060.1, %_ZN6hermes2vm12_GLOBAL__N_137getOwnComputedPrimitiveDescriptorImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEENS3_11IgnoreProxyERNS0_8SymbolIDERNS0_13MutableHandleISA_EERNS0_26ComputedPropertyDescriptorE.exit.thread ], [ %.sroa.060.0, %bb.f ], [ %.sroa.060.0, %bb.d ], [ %.sroa.060.1, %bb.i ], [ %.sroa.060.1, %bb.o ], [ %.sroa.060.1, %bb.p ], [ %.sroa.060.1, %bb.r ], [ %.sroa.060.1, %.split ] ; 5 uses
  %i.dn = load ptr, ptr %3, align 8, !tbaa !316   ; 3 uses
  %.sroa.0.0.copyload.i.i49 = load i64, ptr %i.dn, align 8, !tbaa !40
  %i.do = and i64 %.sroa.0.0.copyload.i.i49, 281474976710655
  %i.dp = inttoptr i64 %i.do to ptr               ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  %i.dr = load i32, ptr %i.dq, align 4            ; 2 uses
  %i.ds = and i32 %i.dr, 32
  %.not = icmp eq i32 %i.ds, 0
  br i1 %.not, label %bb.t, label %bb.s, !prof !42

bb.s:                                             ; preds = %_ZN6hermes2vm12_GLOBAL__N_137getOwnComputedPrimitiveDescriptorImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEENS3_11IgnoreProxyERNS0_8SymbolIDERNS0_13MutableHandleISA_EERNS0_26ComputedPropertyDescriptorE.exit.thread.thread
  %i.dt = load i16, ptr %5, align 4
  %i.du = or i16 %i.dt, 260
  store i16 %i.du, ptr %5, align 4
  store i32 %.sroa.060.3170179, ptr %i.i, align 4, !tbaa !367
  %i.dv = zext i32 %.sroa.060.3170179 to i64
  %i.dw = or disjoint i64 %i.dv, -1266637395197952
  %i.dx = load ptr, ptr %4, align 8, !tbaa !351
  store i64 %i.dw, ptr %i.dx, align 8, !tbaa !326
  br label %.thread126

bb.t:                                             ; preds = %_ZN6hermes2vm12_GLOBAL__N_137getOwnComputedPrimitiveDescriptorImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEENS3_11IgnoreProxyERNS0_8SymbolIDERNS0_13MutableHandleISA_EERNS0_26ComputedPropertyDescriptorE.exit.thread.thread
  %i.dy = and i32 %i.dr, 128
  %.not26 = icmp eq i32 %i.dy, 0
  br i1 %.not26, label %bb.v, label %bb.u, !prof !42

bb.u:                                             ; preds = %bb.t
  %i.dz = load i16, ptr %5, align 4
  %i.ea = or i16 %i.dz, 1024
  store i16 %i.ea, ptr %5, align 4
  store i32 %.sroa.060.3170179, ptr %i.i, align 4, !tbaa !367
  %i.eb = zext i32 %.sroa.060.3170179 to i64
  %i.ec = or disjoint i64 %i.eb, -1266637395197952
  %i.ed = load ptr, ptr %4, align 8, !tbaa !351
  store i64 %i.ec, ptr %i.ed, align 8, !tbaa !326
  br label %.thread126

bb.v:                                             ; preds = %bb.t
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %.sroa.0.0.copyload.i.i.i52 = load i32, ptr %i.ee, align 4, !tbaa !3 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.0.0.copyload.i.i.i52, 0
  %i.ef = zext i32 %.sroa.0.0.copyload.i.i.i52 to i64
  %i.eg = add i64 %i.ef, %i.j
  %i.eh = or i64 %i.eg, -281474976710656
  %i.ei = select i1 %.not.i.i.i.i.i, i64 -281474976710656, i64 %i.eh ; 2 uses
  store i64 %i.ei, ptr %i.dn, align 8, !tbaa !326
  %i.ej = load ptr, ptr %i.k, align 8, !tbaa !329
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.l
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !351
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 128
  store i32 %i.h, ptr %i.g, align 8, !tbaa !349
  store ptr %i.em, ptr %i.m, align 8, !tbaa !56
  store ptr %i.f, ptr %i.e, align 8, !tbaa !46
  %i.en = and i64 %i.ei, 281474976710655
  %.not165 = icmp eq i64 %i.en, 0
  br i1 %.not165, label %.thread126, label %bb.b, !llvm.loop !371

.thread126:                                       ; preds = %bb.h, %bb.g, %_ZN6hermes2vm12_GLOBAL__N_137getOwnComputedPrimitiveDescriptorImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEENS3_11IgnoreProxyERNS0_8SymbolIDERNS0_13MutableHandleISA_EERNS0_26ComputedPropertyDescriptorE.exit.thread, %_ZN6hermes2vm12_GLOBAL__N_137getOwnComputedPrimitiveDescriptorImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEENS3_11IgnoreProxyERNS0_8SymbolIDERNS0_13MutableHandleISA_EERNS0_26ComputedPropertyDescriptorE.exit.a, %bb.v, %bb.q, %bb.e, %bb.u, %bb.s
  %.2 = phi i32 [ 1, %bb.u ], [ 1, %bb.s ], [ 1, %bb.q ], [ 1, %bb.e ], [ 1, %bb.h ], [ 0, %bb.g ], [ 0, %_ZN6hermes2vm12_GLOBAL__N_137getOwnComputedPrimitiveDescriptorImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEENS3_11IgnoreProxyERNS0_8SymbolIDERNS0_13MutableHandleISA_EERNS0_26ComputedPropertyDescriptorE.exit.a ], [ 1, %_ZN6hermes2vm12_GLOBAL__N_137getOwnComputedPrimitiveDescriptorImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEENS3_11IgnoreProxyERNS0_8SymbolIDERNS0_13MutableHandleISA_EERNS0_26ComputedPropertyDescriptorE.exit.thread ], [ 1, %bb.v ]
  %i.eo = load ptr, ptr %i.k, align 8, !tbaa !329
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %i.l
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !351
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 128
  store i32 %i.h, ptr %i.g, align 8, !tbaa !349
  store ptr %i.er, ptr %i.m, align 8, !tbaa !56
  store ptr %i.f, ptr %i.e, align 8, !tbaa !46
  ret i32 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, 2) i32 @_ZN6hermes2vm8JSObject21getComputedDescriptorENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEERNS0_13MutableHandleIS1_EERNS8_INS0_8SymbolIDEEERNS0_26ComputedPropertyDescriptorE(ptr nofree readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %5) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8, !tbaa !326
  %i.b = icmp ugt i64 %i.a, -281474976710657
  br i1 %i.b, label %bb.b, label %_ZN6hermes2vm21toPropertyKeyIfObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit, !prof !39

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @_ZN6hermes2vm13toPropertyKeyERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %2)
  br label %_ZN6hermes2vm21toPropertyKeyIfObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit

_ZN6hermes2vm21toPropertyKeyIfObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit: ; preds = %bb.a, %bb.b
  %.sroa.02.0.i = phi ptr [ %i.c, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.not = icmp eq ptr %.sroa.02.0.i, inttoptr (i64 -1 to ptr)
  br i1 %.not, label %bb.d, label %bb.c, !prof !39

bb.c:                                             ; preds = %_ZN6hermes2vm21toPropertyKeyIfObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit
  %i.d = tail call noundef i32 @_ZN6hermes2vm8JSObject30getComputedPrimitiveDescriptorENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEERNS0_13MutableHandleIS1_EERNS8_INS0_8SymbolIDEEERNS0_26ComputedPropertyDescriptorE(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.sroa.02.0.i, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %5)
  br label %bb.d

bb.d:                                             ; preds = %_ZN6hermes2vm21toPropertyKeyIfObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit, %bb.c
  %.0 = phi i32 [ %i.d, %bb.c ], [ 0, %_ZN6hermes2vm21toPropertyKeyIfObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %2, ptr %3, i32 %4, ptr nofree noundef writeonly captures(address_is_null) %5) local_unnamed_addr #1 align 2 {
bb.a:
  %6 = alloca %"struct.hermes::vm::NamedPropertyDescriptor", align 8 ; 8 uses
  %7 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 4 uses
  %8 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 4 uses
  %9 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %10 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 4 uses
  %11 = alloca %"class.hermes::vm::StringView", align 8 ; 5 uses
  %12 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  store i32 0, ptr %6, align 8, !tbaa !41
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  store i32 -1, ptr %i.a, align 4, !tbaa !367
  %i.b = call noundef ptr @_ZN6hermes2vm8JSObject24getNamedDescriptorUnsafeENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_13PropertyFlagsERNS0_23NamedPropertyDescriptorE(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %2, i16 1, ptr noundef nonnull align 4 dereferenceable(8) %6) ; 8 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %4, 2
  %.not76 = icmp eq i32 %i.c, 0
  br i1 %.not76, label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit, !prof !42

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i32 1, ptr %i.d, align 8, !tbaa !305
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i64 10, ptr %i.e, align 8, !tbaa !308
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i64 0, ptr %i.f, align 8, !tbaa !309
  store ptr @.str.11, ptr %9, align 8, !tbaa !41
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 3, ptr %i.g, align 8, !tbaa !310
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 9240
  %i.i = call { ptr, i64 } @_ZNK6hermes2vm15IdentifierTable19getStringViewForDevERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.h, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %2) #17 ; 2 uses
  %i.j = extractvalue { ptr, i64 } %i.i, 0
  store ptr %i.j, ptr %11, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.l = extractvalue { ptr, i64 } %i.i, 1
  store i64 %i.l, ptr %i.k, align 8
  call void @_ZNK6hermes2vm10StringViewcvNS0_11TwineChar16EEv(ptr dead_on_unwind nonnull writable sret(%"class.hermes::vm::TwineChar16") align 8 %10, ptr noundef nonnull align 8 dereferenceable(16) %11)
  call void @_ZN6hermes2vmplERKNS0_11TwineChar16ES3_(ptr dead_on_unwind nonnull writable sret(%"class.hermes::vm::TwineChar16") align 8 %8, ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull align 8 dereferenceable(48) %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  %i.m = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i32 1, ptr %i.m, align 8, !tbaa !305
  %i.n = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i64 15, ptr %i.n, align 8, !tbaa !308
  %i.o = getelementptr inbounds nuw i8, ptr %12, i64 40
  store i64 0, ptr %i.o, align 8, !tbaa !309
  store ptr @.str.12, ptr %12, align 8, !tbaa !41
  %i.p = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 3, ptr %i.p, align 8, !tbaa !310
  call void @_ZN6hermes2vmplERKNS0_11TwineChar16ES3_(ptr dead_on_unwind nonnull writable sret(%"class.hermes::vm::TwineChar16") align 8 %7, ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(48) %12)
  %i.q = call noundef i32 @_ZN6hermes2vm7Runtime19raiseReferenceErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

bb.c:                                             ; preds = %bb.a
  %i.r = load i16, ptr %6, align 8                ; 3 uses
  %i.s = and i16 %i.r, 256
  %.not48 = icmp eq i16 %i.s, 0
  %i.t = and i16 %i.r, 1296
  %or.cond53 = icmp eq i16 %i.t, 0
  br i1 %or.cond53, label %bb.d, label %.critedge, !prof !369

bb.d:                                             ; preds = %bb.c
  %.not52 = icmp eq ptr %5, null
  br i1 %.not52, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.u, align 4, !tbaa !3 ; 2 uses
  %i.v = ptrtoint ptr %1 to i64
  %i.w = zext i32 %.sroa.0.0.copyload.i.i.i to i64
  %i.x = add i64 %i.w, %i.v
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 10
  %i.aa = load i8, ptr %i.z, align 2
  %i.ab = and i8 %i.aa, 2
  %.not75 = icmp eq i8 %i.ab, 0
  br i1 %.not75, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 %.sroa.0.0.copyload.i.i.i, ptr %5, align 4, !tbaa !3
  %i.ac = load i32, ptr %i.a, align 4, !tbaa !367
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !372
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.sroa.010.0.copyload = load i64, ptr %6, align 8 ; 2 uses
  %.sroa.1.0.extract.shift.i = lshr i64 %.sroa.010.0.copyload, 32 ; 2 uses
  %i.ae = icmp ult i64 %.sroa.010.0.copyload, 21474836480
  br i1 %i.ae, label %bb.h, label %bb.i, !prof !42

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  br label %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit

bb.i:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.ag, align 4, !tbaa !3
  %i.ah = ptrtoint ptr %1 to i64
  %i.ai = zext i32 %.sroa.0.0.copyload.i.i.i.i to i64
  %i.aj = add i64 %i.ai, %i.ah
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = add nuw nsw i64 %.sroa.1.0.extract.shift.i, 4294967291
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.an = and i64 %i.al, 4294967295
  br label %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit

_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit: ; preds = %bb.h, %bb.i
  %.sink6.i.i = phi i64 [ %i.an, %bb.i ], [ %.sroa.1.0.extract.shift.i, %bb.h ]
  %.sink.i.i56 = phi ptr [ %i.am, %bb.i ], [ %i.af, %bb.h ]
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.sink.i.i56, i64 %.sink6.i.i
  %.sroa.0.0.i.i = load i32, ptr %i.ao, align 4, !tbaa !3 ; 9 uses
  %i.ap = trunc i32 %.sroa.0.0.i.i to i8
  %i.aq = and i8 %i.ap, 15
  switch i8 %i.aq, label %default.unreachable [
    i8 0, label %bb.j
    i8 8, label %bb.j
    i8 1, label %bb.k
    i8 9, label %bb.k
    i8 2, label %bb.l
    i8 10, label %bb.l
    i8 3, label %bb.m
    i8 11, label %bb.m
    i8 4, label %bb.n
    i8 12, label %bb.n
    i8 5, label %bb.o
    i8 13, label %bb.o
    i8 6, label %bb.p
    i8 14, label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit
    i8 7, label %bb.q
    i8 15, label %bb.r
  ]

bb.j:                                             ; preds = %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit, %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.0.0.i.i, 0
  %i.ar = ptrtoint ptr %1 to i64
  %i.as = zext i32 %.sroa.0.0.i.i to i64
  %i.at = add i64 %i.as, %i.ar
  %i.au = or i64 %i.at, -281474976710656
  %i.av = select i1 %.not.i.i.i.i.i, i64 -281474976710656, i64 %i.au
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

bb.k:                                             ; preds = %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit, %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit
  %i.aw = and i32 %.sroa.0.0.i.i, -8
  %i.ax = ptrtoint ptr %1 to i64
  %i.ay = zext i32 %i.aw to i64
  %i.az = add i64 %i.ay, %i.ax
  %i.ba = or i64 %i.az, -562949953421312
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

bb.l:                                             ; preds = %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit, %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit
end_hunk_1
begin_hunk_2_@_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE:bb.a
bb.m:                                             ; preds = %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit, %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit
  %i.bg = and i32 %.sroa.0.0.i.i, -8
  %i.bh = ptrtoint ptr %1 to i64
  %i.bi = zext i32 %i.bg to i64
  %i.bj = add i64 %i.bi, %i.bh
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !311 ; 2 uses
  %i.bn = fcmp uno double %i.bm, 0.000000e+00
  %i.bo = bitcast double %i.bm to i64
  %.sroa.0.0.i.i57 = select i1 %i.bn, i64 9221120237041090560, i64 %i.bo, !prof !39
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

bb.n:                                             ; preds = %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit, %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit
  %i.bp = ashr i32 %.sroa.0.0.i.i, 3
  %i.bq = sitofp i32 %i.bp to double
  %i.br = bitcast double %i.bq to i64
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

bb.o:                                             ; preds = %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit, %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit
  %i.bs = lshr i32 %.sroa.0.0.i.i, 3
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = or disjoint i64 %i.bt, -1266637395197952
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

bb.p:                                             ; preds = %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit
  %i.bv = icmp ugt i32 %.sroa.0.0.i.i, 15
  %i.bw = zext i1 %i.bv to i64
  %i.bx = or disjoint i64 %i.bw, -1407374883553280
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

bb.q:                                             ; preds = %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

bb.r:                                             ; preds = %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

default.unreachable:                              ; preds = %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit
  unreachable

.critedge:                                        ; preds = %bb.c
  %i.by = and i16 %i.r, 16
  %.not47 = icmp eq i16 %i.by, 0
  br i1 %.not47, label %bb.w, label %bb.s

bb.s:                                             ; preds = %.critedge
  %.sroa.08.0.copyload = load i64, ptr %6, align 8 ; 2 uses
  %.sroa.1.0.extract.shift.i58 = lshr i64 %.sroa.08.0.copyload, 32 ; 2 uses
  %i.bz = icmp ult i64 %.sroa.08.0.copyload, 21474836480
  br i1 %i.bz, label %bb.t, label %bb.u, !prof !42

bb.t:                                             ; preds = %bb.s
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %.pre = ptrtoint ptr %1 to i64
  br label %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit63

bb.u:                                             ; preds = %bb.s
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.0.0.copyload.i.i.i.i59 = load i32, ptr %i.cb, align 4, !tbaa !3
  %i.cc = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.cd = zext i32 %.sroa.0.0.copyload.i.i.i.i59 to i64
  %i.ce = add i64 %i.cd, %i.cc
  %i.cf = inttoptr i64 %i.ce to ptr
  %i.cg = add nuw nsw i64 %.sroa.1.0.extract.shift.i58, 4294967291
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ci = and i64 %i.cg, 4294967295
  br label %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit63

_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit63: ; preds = %bb.t, %bb.u
  %.pre-phi = phi i64 [ %.pre, %bb.t ], [ %i.cc, %bb.u ]
  %.sink6.i.i60 = phi i64 [ %.sroa.1.0.extract.shift.i58, %bb.t ], [ %i.ci, %bb.u ]
  %.sink.i.i61 = phi ptr [ %i.ca, %bb.t ], [ %i.ch, %bb.u ]
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %.sink.i.i61, i64 %.sink6.i.i60
  %.sroa.0.0.i.i62 = load i32, ptr %i.cj, align 4, !tbaa !3
  %i.ck = and i32 %.sroa.0.0.i.i62, -8
  %i.cl = zext i32 %i.ck to i64
  %i.cm = add i64 %.pre-phi, %i.cl
  %i.cn = inttoptr i64 %i.cm to ptr
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 4 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !315
  %.not74 = icmp eq i32 %i.cp, 0
  br i1 %.not74, label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit, label %bb.v

bb.v:                                             ; preds = %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit63
  %i.cq = call ptr @_ZN6hermes2vm7Runtime10makeHandleINS0_8CallableEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.co)
  %i.cr = call { i32, i64 } @_ZN6hermes2vm8Callable12executeCall0ENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEEb(ptr %i.cq, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %3, i1 noundef zeroext false) #17 ; 2 uses
  %i.cs = extractvalue { i32, i64 } %i.cr, 0
  %i.ct = extractvalue { i32, i64 } %i.cr, 1
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

bb.w:                                             ; preds = %.critedge
  br i1 %.not48, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !337 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !339
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = call { i32, i64 } %i.cy(ptr noundef nonnull align 8 dereferenceable(8) %i.cv, i32 %2) #17, !inline_history !376 ; 2 uses
  %i.da = extractvalue { i32, i64 } %i.cz, 0
  %i.db = extractvalue { i32, i64 } %i.cz, 1
  %i.dc = icmp ne i32 %i.da, 0                    ; 2 uses
  %spec.select = zext i1 %i.dc to i32
  %spec.select73 = select i1 %i.dc, i64 %i.db, i64 -1688849860263936, !prof !42
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

bb.y:                                             ; preds = %bb.w
  %i.dd = ptrtoint ptr %i.b to i64
  %i.de = or i64 %i.dd, -281474976710656          ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !43 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 192 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !46 ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 200
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !56
  %i.dl = icmp ult ptr %i.di, %i.dk
  br i1 %i.dl, label %bb.z, label %bb.aa, !prof !42

bb.z:                                             ; preds = %bb.y
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store ptr %i.dm, ptr %i.dh, align 8, !tbaa !46
  store i64 %i.de, ptr %i.di, align 8, !tbaa !40
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit

bb.aa:                                            ; preds = %bb.y
  %i.dn = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.dg, i64 %i.de) #17
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit: ; preds = %bb.z, %bb.aa
  %.0.i.i.i.i.i.i = phi ptr [ %i.di, %bb.z ], [ %i.dn, %bb.aa ]
  %i.do = call { i32, i64 } @_ZN6hermes2vm7JSProxy8getNamedENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEE(ptr %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %2, ptr %3) #17 ; 2 uses
  %i.dp = extractvalue { i32, i64 } %i.do, 0
  %i.dq = extractvalue { i32, i64 } %i.do, 1
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit: ; preds = %bb.x, %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit63, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit, %bb.b, %bb.v, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.072.1 = phi i32 [ %i.q, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ 1, %bb.r ], [ 1, %bb.b ], [ %i.dp, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit ], [ 1, %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit63 ], [ %i.cs, %bb.v ], [ 1, %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit ], [ 1, %bb.j ], [ 1, %bb.k ], [ 1, %bb.l ], [ 1, %bb.m ], [ 1, %bb.n ], [ 1, %bb.o ], [ 1, %bb.p ], [ 1, %bb.q ], [ %spec.select, %bb.x ]
  %.sroa.9.1 = phi i64 [ -1688849860263936, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ -1548112371908608, %bb.r ], [ -1688849860263936, %bb.b ], [ %i.dq, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit ], [ -1688849860263936, %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit63 ], [ %i.ct, %bb.v ], [ -1688849860263936, %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit ], [ %i.av, %bb.j ], [ %i.ba, %bb.k ], [ %i.bf, %bb.l ], [ %.sroa.0.0.i.i57, %bb.m ], [ %i.br, %bb.n ], [ %i.bu, %bb.o ], [ %i.bx, %bb.p ], [ -1970324836974592, %bb.q ], [ %spec.select73, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.072.1, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.9.1, 1
  ret { i32, i64 } %.fca.1.insert
}

declare noundef i32 @_ZN6hermes2vm7Runtime19raiseReferenceErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes2vmplERKNS0_11TwineChar16ES3_(ptr dead_on_unwind noalias writable sret(%"class.hermes::vm::TwineChar16") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %2) local_unnamed_addr #5 comdat {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !377)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !310, !noalias !377 ; 3 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !310, !noalias !377 ; 3 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.g, align 8, !tbaa !310, !alias.scope !380
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 1, ptr %i.h, align 8, !tbaa !305, !alias.scope !380
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false), !alias.scope !380
  br label %_ZNK6hermes2vm11TwineChar166concatERKS1_.exit

bb.d:                                             ; preds = %bb.b
  %i.j = icmp eq i32 %i.b, 1
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false), !tbaa.struct !383
  br label %_ZNK6hermes2vm11TwineChar166concatERKS1_.exit

bb.f:                                             ; preds = %bb.d
  %i.k = icmp eq i32 %i.e, 1
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false), !tbaa.struct !383
  br label %_ZNK6hermes2vm11TwineChar166concatERKS1_.exit

bb.h:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load i32, ptr %i.n, align 8, !noalias !377
  %i.p = icmp eq i32 %i.o, 1                      ; 2 uses
  %.sroa.06.0.copyload.i = load ptr, ptr %1, align 8, !noalias !377
  %spec.select.i = select i1 %i.p, i32 %i.b, i32 2
  %spec.select17.i = select i1 %i.p, ptr %.sroa.06.0.copyload.i, ptr %1
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.r = load i32, ptr %i.q, align 8, !noalias !377
  %i.s = icmp eq i32 %i.r, 1                      ; 2 uses
  %.sroa.03.0.copyload.i = load ptr, ptr %2, align 8, !noalias !377
  %.sroa.03.0.i = select i1 %i.s, ptr %.sroa.03.0.copyload.i, ptr %2
  %.015.i = select i1 %i.s, i32 %i.e, i32 2
  store ptr %spec.select17.i, ptr %0, align 8, !tbaa !41, !alias.scope !377
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %spec.select.i, ptr %i.t, align 8, !tbaa !310, !alias.scope !377
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.03.0.i, ptr %i.u, align 8, !tbaa !41, !alias.scope !377
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.015.i, ptr %i.v, align 8, !tbaa !305, !alias.scope !377
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = load <2 x i64>, ptr %i.l, align 8, !tbaa !40, !noalias !377 ; 2 uses
  %i.y = load <2 x i64>, ptr %i.m, align 8, !tbaa !40, !noalias !377 ; 2 uses
  %i.z = shufflevector <2 x i64> %i.x, <2 x i64> %i.y, <2 x i32> <i32 1, i32 3>
  %i.aa = shufflevector <2 x i64> %i.x, <2 x i64> %i.y, <2 x i32> <i32 0, i32 2>
  %i.ab = add <2 x i64> %i.z, %i.aa
  store <2 x i64> %i.ab, ptr %i.w, align 8, !tbaa !40, !alias.scope !377
  br label %_ZNK6hermes2vm11TwineChar166concatERKS1_.exit

_ZNK6hermes2vm11TwineChar166concatERKS1_.exit:    ; preds = %bb.c, %bb.e, %bb.g, %bb.h
  ret void
}

declare { ptr, i64 } @_ZNK6hermes2vm15IdentifierTable19getStringViewForDevERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84), ptr noundef nonnull align 8 dereferenceable(9816), i32) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK6hermes2vm10StringViewcvNS0_11TwineChar16EEv(ptr dead_on_unwind noalias writable sret(%"class.hermes::vm::TwineChar16") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !385)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !noalias !385 ; 5 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 1073741824
  %.not.i.i = icmp eq i32 %i.d, 0
  %i.e = load ptr, ptr %1, align 8, !tbaa !41, !noalias !385 ; 2 uses
  br i1 %.not.i.i, label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.e, align 8, !tbaa !40, !noalias !385
  %i.f = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 281474976710655
  %i.g = inttoptr i64 %i.f to ptr                 ; 5 uses
  %i.h = load i32, ptr %i.g, align 4, !noalias !385 ; 2 uses
  %i.i = icmp ugt i32 %i.h, 150994943
  br i1 %i.i, label %bb.d, label %bb.e, !prof !39

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !388, !noalias !385
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i

bb.e:                                             ; preds = %bb.c
  %.mask.i.i.i.i.i.i.i.i.i.i = and i32 %i.h, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i.i, label %bb.h [
    i32 134217728, label %bb.f
    i32 67108864, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i

bb.g:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i

bb.h:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.0.0.copyload.i.i.i2.i.i = load i64, ptr %i.n, align 8, !tbaa !40, !noalias !385
  %i.o = and i64 %.sroa.0.0.copyload.i.i.i2.i.i, 281474976710655
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !388, !noalias !385
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i

_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i: ; preds = %bb.h, %bb.g, %bb.f, %bb.d, %bb.b
  %.0.i.sink.i.i = phi ptr [ %i.e, %bb.b ], [ %i.k, %bb.d ], [ %i.l, %bb.f ], [ %i.m, %bb.g ], [ %i.r, %bb.h ]
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.t = load i32, ptr %i.s, align 4, !tbaa !389, !noalias !385 ; 2 uses
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 1, ptr %i.v, align 8, !tbaa !305, !alias.scope !385
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.u, ptr %i.w, align 8, !tbaa !308, !alias.scope !385
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.x, align 8, !tbaa !309, !alias.scope !385
  %i.y = icmp eq i32 %i.t, 0
  br i1 %i.y, label %_ZN6hermes2vm11TwineChar16C2EN4llvh9StringRefE.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i
  %i.z = and i32 %i.b, 1073741823
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i.sink.i.i, i64 %i.aa
  store ptr %i.ab, ptr %0, align 8, !tbaa !41, !alias.scope !385
  br label %_ZN6hermes2vm11TwineChar16C2EN4llvh9StringRefE.exit.i

_ZN6hermes2vm11TwineChar16C2EN4llvh9StringRefE.exit.i: ; preds = %bb.i, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i
  %.sink.i.i = phi i32 [ 3, %bb.i ], [ 1, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sink.i.i, ptr %i.ac, align 8, !tbaa !310, !alias.scope !385
  br label %_ZNK6hermes2vm10StringView7toTwineEv.exit

bb.j:                                             ; preds = %bb.a
  %.not.i1.i = icmp samesign ult i32 %i.b, 1073741824
  %i.ad = load ptr, ptr %1, align 8, !tbaa !41, !noalias !385 ; 2 uses
  br i1 %.not.i1.i, label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.0.0.copyload.i.i.i.i2.i = load i64, ptr %i.ad, align 8, !tbaa !40, !noalias !385
  %i.ae = and i64 %.sroa.0.0.copyload.i.i.i.i2.i, 281474976710655
  %i.af = inttoptr i64 %i.ae to ptr               ; 5 uses
  %i.ag = load i32, ptr %i.af, align 4, !noalias !385 ; 2 uses
  %i.ah = icmp ugt i32 %i.ag, 150994943
  br i1 %i.ah, label %bb.l, label %bb.m, !prof !39

bb.l:                                             ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !391, !noalias !385
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i

bb.m:                                             ; preds = %bb.k
  %.mask.i.i.i.i.i.i.i.i.i3.i = and i32 %i.ag, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i3.i, label %bb.p [
    i32 117440512, label %bb.n
    i32 50331648, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i

bb.o:                                             ; preds = %bb.m
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i

bb.p:                                             ; preds = %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.0.0.copyload.i.i.i2.i5.i = load i64, ptr %i.am, align 8, !tbaa !40, !noalias !385
  %i.an = and i64 %.sroa.0.0.copyload.i.i.i2.i5.i, 281474976710655
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !391, !noalias !385
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i

_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i: ; preds = %bb.p, %bb.o, %bb.n, %bb.l, %bb.j
  %.0.i.sink.i4.i = phi ptr [ %i.ad, %bb.j ], [ %i.aj, %bb.l ], [ %i.ak, %bb.n ], [ %i.al, %bb.o ], [ %i.aq, %bb.p ]
  %i.ar = and i32 %i.b, 1073741823
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %.0.i.sink.i4.i, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.av = load i32, ptr %i.au, align 4, !tbaa !389, !noalias !385
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 4, ptr %i.ax, align 8, !tbaa !310, !alias.scope !385
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 1, ptr %i.ay, align 8, !tbaa !305, !alias.scope !385
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.aw, ptr %i.az, align 8, !tbaa !308, !alias.scope !385
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.ba, align 8, !tbaa !309, !alias.scope !385
  store ptr %i.at, ptr %0, align 8, !tbaa !41, !alias.scope !385
  br label %_ZNK6hermes2vm10StringView7toTwineEv.exit

_ZNK6hermes2vm10StringView7toTwineEv.exit:        ; preds = %_ZN6hermes2vm11TwineChar16C2EN4llvh9StringRefE.exit.i, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i
  ret void
}

declare { i32, i64 } @_ZN6hermes2vm7JSProxy8getNamedENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm8JSObject17getNamedOrIndexedENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_11PropOpFlagsE(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %2, i32 %3) local_unnamed_addr #1 align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8, !tbaa !40
  %i.a = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = and i32 %i.d, 8
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %.thread, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 9240
  %i.g = tail call { ptr, i64 } @_ZNK6hermes2vm15IdentifierTable13getStringViewERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.f, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %2) #17 ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0
  %i.i = extractvalue { ptr, i64 } %i.g, 1
  %i.j = tail call i64 @_ZN6hermes2vm12toArrayIndexENS0_10StringViewE(ptr %i.h, i64 %i.i) #17 ; 2 uses
  %i.k = and i64 %i.j, 4294967296
  %.not22 = icmp eq i64 %i.k, 0
  br i1 %.not22, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.extract.trunc = trunc i64 %i.j to i32
  %i.l = uitofp i32 %.sroa.0.0.extract.trunc to double ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !43   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 192 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !46   ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 200
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !56
  %i.s = icmp ult ptr %i.p, %i.r
end_hunk_2
begin_hunk_3_@_ZN6hermes2vm8JSObject24putNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEES8_NS0_11PropOpFlagsE:bb.a
  store i32 3, ptr %i.ls, align 8, !tbaa !310
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #17
  %i.lt = getelementptr inbounds nuw i8, ptr %1, i64 9240
  %i.lu = call { ptr, i64 } @_ZNK6hermes2vm15IdentifierTable19getStringViewForDevERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.lt, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %2) #17 ; 2 uses
  %i.lv = extractvalue { ptr, i64 } %i.lu, 0
  store ptr %i.lv, ptr %30, align 8
  %i.lw = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.lx = extractvalue { ptr, i64 } %i.lu, 1
  store i64 %i.lx, ptr %i.lw, align 8
  call void @_ZNK6hermes2vm10StringViewcvNS0_11TwineChar16EEv(ptr dead_on_unwind nonnull writable sret(%"class.hermes::vm::TwineChar16") align 8 %29, ptr noundef nonnull align 8 dereferenceable(16) %30)
  call void @_ZN6hermes2vmplERKNS0_11TwineChar16ES3_(ptr dead_on_unwind nonnull writable sret(%"class.hermes::vm::TwineChar16") align 8 %27, ptr noundef nonnull align 8 dereferenceable(48) %28, ptr noundef nonnull align 8 dereferenceable(48) %29)
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #17
  %i.ly = getelementptr inbounds nuw i8, ptr %31, i64 24
  store i32 1, ptr %i.ly, align 8, !tbaa !305
  %i.lz = getelementptr inbounds nuw i8, ptr %31, i64 32
  store i64 15, ptr %i.lz, align 8, !tbaa !308
  %i.ma = getelementptr inbounds nuw i8, ptr %31, i64 40
  store i64 0, ptr %i.ma, align 8, !tbaa !309
  store ptr @.str.12, ptr %31, align 8, !tbaa !41
  %i.mb = getelementptr inbounds nuw i8, ptr %31, i64 8
  store i32 3, ptr %i.mb, align 8, !tbaa !310
  call void @_ZN6hermes2vmplERKNS0_11TwineChar16ES3_(ptr dead_on_unwind nonnull writable sret(%"class.hermes::vm::TwineChar16") align 8 %26, ptr noundef nonnull align 8 dereferenceable(48) %27, ptr noundef nonnull align 8 dereferenceable(48) %31)
  %i.mc = call noundef i32 @_ZN6hermes2vm7Runtime19raiseReferenceErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %26) #17
  %i.md = and i32 %i.mc, 255
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #17
  br label %_ZN6hermes2vm8JSObject23setNamedSlotValueUnsafeEPS1_RNS0_7RuntimeENS0_23NamedPropertyDescriptorENS0_13HermesValue32E.exit

bb.by:                                            ; preds = %bb.bx
  %i.me = call i32 @_ZN6hermes2vm8JSObject14addOwnPropertyENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_19DefinePropertyFlagsENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr nonnull %.0.i.i.i.i.i.i135, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %2, i32 319, ptr %3, i32 %5)
  br label %_ZN6hermes2vm8JSObject23setNamedSlotValueUnsafeEPS1_RNS0_7RuntimeENS0_23NamedPropertyDescriptorENS0_13HermesValue32E.exit

_ZN6hermes2vm8JSObject23setNamedSlotValueUnsafeEPS1_RNS0_7RuntimeENS0_23NamedPropertyDescriptorENS0_13HermesValue32E.exit: ; preds = %bb.bo, %bb.bw, %_ZN6hermes2vm11TwineChar16C2EPKc.exit162, %bb.by, %.critedge.thread, %bb.au, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i.i151, %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE3setILNS3_6InlineE0EEEvjS2_RNS0_7HadesGCE.exit.i.i150, %bb.ad, %bb.y, %bb.aj, %_ZN6hermes2vm11TwineChar16C2EPKc.exit124, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit, %bb.x, %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE3setILNS3_6InlineE0EEEvjS2_RNS0_7HadesGCE.exit.i.i, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i.i, %_ZN6hermes2vm11TwineChar16C2EPKc.exit, %bb.al, %_ZN6hermes2vm11TwineChar16C2EPKc.exit129, %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_8SymbolIDE.exit
  %.sroa.0236.3 = phi i32 [ %i.du, %bb.ad ], [ 257, %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE3setILNS3_6InlineE0EEEvjS2_RNS0_7HadesGCE.exit.i.i ], [ %i.fs, %_ZN6hermes2vm11TwineChar16C2EPKc.exit129 ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit ], [ %i.fc, %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_8SymbolIDE.exit ], [ %i.fv, %bb.al ], [ %spec.select, %bb.y ], [ 1, %bb.x ], [ 1, %bb.aj ], [ %i.dd, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ 257, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i.i ], [ %i.en, %_ZN6hermes2vm11TwineChar16C2EPKc.exit124 ], [ 1, %.critedge.thread ], [ 1, %bb.au ], [ %i.kl, %bb.bo ], [ %.sroa.0236.1, %bb.bw ], [ %i.md, %_ZN6hermes2vm11TwineChar16C2EPKc.exit162 ], [ %i.me, %bb.by ], [ 257, %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i.i151 ], [ 257, %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE3setILNS3_6InlineE0EEEvjS2_RNS0_7HadesGCE.exit.i.i150 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %.sroa.0236.0.insert.ext = and i32 %.sroa.0236.3, 65535
  ret i32 %.sroa.0236.0.insert.ext
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes2vm8JSObject23setNamedSlotValueUnsafeEPS1_RNS0_7RuntimeENS0_23NamedPropertyDescriptorENS0_13HermesValue32E(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i64 %2, i32 %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %.sroa.1.0.extract.shift = lshr i64 %2, 32      ; 2 uses
  %i.a = icmp ult i64 %2, 21474836480
  br i1 %i.a, label %bb.b, label %bb.d, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.sroa.1.0.extract.shift ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !73
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = and i64 %i.f, -4194304
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = icmp eq ptr %i.e, %i.h
  br i1 %i.i, label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i, label %bb.c, !prof !42

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 856
  tail call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEES3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.j, ptr noundef nonnull align 4 dereferenceable(4) %i.c, i32 %3) #17
  br label %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i

_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i: ; preds = %bb.c, %bb.b
  store i32 %3, ptr %i.c, align 4, !tbaa !313
  br label %_ZN6hermes2vm8JSObject23setNamedSlotValueUnsafeILNS0_16ArrayStorageBaseINS0_13HermesValue32EE6InlineE0EEEvPS1_RNS0_7RuntimeEjS4_.exit

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.k, align 4, !tbaa !3
  %i.l = ptrtoint ptr %1 to i64
  %i.m = zext i32 %.sroa.0.0.copyload.i.i.i to i64
  %i.n = add i64 %i.m, %i.l
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = add nuw nsw i64 %.sroa.1.0.extract.shift, 4294967291
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = and i64 %i.p, 4294967295
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.r ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !73
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = and i64 %i.v, -4194304
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = icmp eq ptr %i.u, %i.x
  br i1 %i.y, label %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE3setILNS3_6InlineE0EEEvjS2_RNS0_7HadesGCE.exit.i, label %bb.e, !prof !42

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 856
  tail call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEES3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.z, ptr noundef nonnull align 4 dereferenceable(4) %i.s, i32 %3) #17
  br label %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE3setILNS3_6InlineE0EEEvjS2_RNS0_7HadesGCE.exit.i

_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE3setILNS3_6InlineE0EEEvjS2_RNS0_7HadesGCE.exit.i: ; preds = %bb.e, %bb.d
  store i32 %3, ptr %i.s, align 4, !tbaa !313
  br label %_ZN6hermes2vm8JSObject23setNamedSlotValueUnsafeILNS0_16ArrayStorageBaseINS0_13HermesValue32EE6InlineE0EEEvPS1_RNS0_7RuntimeEjS4_.exit

_ZN6hermes2vm8JSObject23setNamedSlotValueUnsafeILNS0_16ArrayStorageBaseINS0_13HermesValue32EE6InlineE0EEEvPS1_RNS0_7RuntimeEjS4_.exit: ; preds = %_ZN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EE3setISt17integral_constantIbLb1EEEEvS2_RNS0_7HadesGCE.exit.i, %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE3setILNS3_6InlineE0EEEvjS2_RNS0_7HadesGCE.exit.i
  ret void
}

declare { i32, i64 } @_ZN6hermes2vm8Callable12executeCall1ENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES6_b(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr, i64, i1 noundef zeroext) local_unnamed_addr #3

declare i32 @_ZN6hermes2vm7JSProxy8setNamedENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEES9_(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32, ptr, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i32 @_ZN6hermes2vmL36raiseErrorForOverridingStaticBuiltinENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS1_INS0_8SymbolIDEEE(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree readonly captures(none) %2) unnamed_addr #1 {
bb.a:
  %3 = alloca %"struct.hermes::vm::NamedPropertyDescriptor", align 8 ; 7 uses
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 17 uses
  %5 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 22 uses
  %6 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 9 uses
  %7 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 17 uses
  %8 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 22 uses
  %9 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 9 uses
  %10 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 17 uses
  %11 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 19 uses
  %12 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 18 uses
  %13 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 22 uses
  %14 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 9 uses
  %15 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 10 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %2, align 8, !tbaa !40
  %i.a = trunc i64 %.sroa.0.0.copyload.i.i to i32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 9240
  %i.c = tail call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.b, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %i.a) #17
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = or i64 %i.d, -844424930131968            ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !43   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 192 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !46   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 200
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !56
  %i.l = icmp ult ptr %i.i, %i.k
  br i1 %i.l, label %bb.b, label %bb.c, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.m, ptr %i.h, align 8, !tbaa !46
  store i64 %i.e, ptr %i.i, align 8, !tbaa !40
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEPS5_.exit

bb.c:                                             ; preds = %bb.a
  %i.n = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.g, i64 %i.e) #17
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEPS5_.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEPS5_.exit: ; preds = %bb.b, %bb.c
  %.0.i.i.i.i.i.i = phi ptr [ %i.i, %bb.b ], [ %i.n, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store i32 0, ptr %3, align 8, !tbaa !41
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 -1, ptr %i.o, align 4, !tbaa !367
  %i.p = call noundef ptr @_ZN6hermes2vm8JSObject24getNamedDescriptorUnsafeENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_13PropertyFlagsERNS0_23NamedPropertyDescriptorE(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 139, i16 1, ptr noundef nonnull align 4 dereferenceable(8) %3) ; 2 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEPS5_.exit
  %i.q = load i16, ptr %3, align 8
  %i.r = and i16 %i.q, 16
  %.not14 = icmp eq i16 %i.r, 0
  br i1 %.not14, label %bb.i, label %bb.e

bb.e:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEPS5_.exit, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %.sroa.0.0.copyload.i.i15 = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !40
  %i.s = and i64 %.sroa.0.0.copyload.i.i15, 281474976710655
  %i.t = inttoptr i64 %i.s to ptr
  call void @_ZN6hermes2vm11TwineChar16C1EPKNS0_15StringPrimitiveE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef %i.t) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !401)
  call void @llvm.experimental.noalias.scope.decl(metadata !404)
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !310, !noalias !407 ; 2 uses
  switch i32 %i.v, label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit.thread [
    i32 0, label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit.thread123
    i32 1, label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit
  ]

_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit.thread123: ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.w, align 8, !tbaa !310, !alias.scope !408
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 1, ptr %i.x, align 8, !tbaa !305, !alias.scope !408
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false), !alias.scope !408
  br label %bb.f

_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit.thread: ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !308, !noalias !407
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !309, !noalias !407
  %i.ad = add i64 %i.ac, %i.aa
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.af = load i32, ptr %i.ae, align 8, !noalias !407
  %i.ag = icmp eq i32 %i.af, 1                    ; 2 uses
  %.sroa.03.0.copyload.i.i = load ptr, ptr %6, align 8, !noalias !407
  %.sroa.03.0.i.i = select i1 %i.ag, ptr %.sroa.03.0.copyload.i.i, ptr %6
  %.015.i.i = select i1 %i.ag, i32 %i.v, i32 2
  store ptr @.str.35, ptr %5, align 8, !tbaa !41, !alias.scope !407
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 3, ptr %i.ah, align 8, !tbaa !310, !alias.scope !407
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %.sroa.03.0.i.i, ptr %i.ai, align 8, !tbaa !41, !alias.scope !407
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 %.015.i.i, ptr %i.aj, align 8, !tbaa !305, !alias.scope !407
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 49, ptr %i.ak, align 8, !tbaa !308, !alias.scope !407
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 %i.ad, ptr %i.al, align 8, !tbaa !309, !alias.scope !407
  br label %bb.h

_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit:     ; preds = %bb.e
  store ptr @.str.35, ptr %5, align 8, !tbaa !41
  %.sroa.4138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 3, ptr %.sroa.4138.0..sroa_idx, align 8, !tbaa !384
  %.sroa.5140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 1, ptr %.sroa.5140.0..sroa_idx, align 8, !tbaa !384
  %.sroa.6142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 49, ptr %.sroa.6142.0..sroa_idx, align 8, !tbaa !40
  %.sroa.7143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %.sroa.7143.0..sroa_idx, align 8, !tbaa !40
  %.phi.trans.insert114 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.pre115 = load i32, ptr %.phi.trans.insert114, align 8, !tbaa !310, !noalias !411 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !416)
  call void @llvm.experimental.noalias.scope.decl(metadata !417)
  switch i32 %.pre115, label %bb.h [
    i32 0, label %bb.f
    i32 1, label %bb.g
  ]

bb.f:                                             ; preds = %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit.thread123, %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 0, ptr %i.am, align 8, !tbaa !310, !alias.scope !418
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.an, align 8, !tbaa !305, !alias.scope !418
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i8 0, i64 16, i1 false), !alias.scope !418
  br label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit24

bb.g:                                             ; preds = %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit
  store ptr @.str.16, ptr %4, align 8, !tbaa !41
  %.sroa.5105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %.sroa.5105.0..sroa_idx, align 8, !tbaa !384
  %.sroa.6107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %.sroa.6107.0..sroa_idx, align 8, !tbaa !384
  %.sroa.7109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 1, ptr %.sroa.7109.0..sroa_idx, align 8, !tbaa !40
  %.sroa.8110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %.sroa.8110.0..sroa_idx, align 8, !tbaa !40
  br label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit24

bb.h:                                             ; preds = %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit.thread, %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit
  %i.ap = phi i32 [ 3, %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit.thread ], [ %.pre115, %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit ]
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !308, !noalias !411
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.at = load i64, ptr %i.as, align 8, !tbaa !309, !noalias !411
  %i.au = add i64 %i.at, %i.ar
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.aw = load i32, ptr %i.av, align 8, !noalias !411
  %i.ax = icmp eq i32 %i.aw, 1                    ; 2 uses
  %.sroa.06.0.copyload.i.i18 = load ptr, ptr %5, align 8, !noalias !411
  %spec.select.i.i19 = select i1 %i.ax, i32 %i.ap, i32 2
  %spec.select17.i.i20 = select i1 %i.ax, ptr %.sroa.06.0.copyload.i.i18, ptr %5
  store ptr %spec.select17.i.i20, ptr %4, align 8, !tbaa !41, !alias.scope !411
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %spec.select.i.i19, ptr %i.ay, align 8, !tbaa !310, !alias.scope !411
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr @.str.16, ptr %i.az, align 8, !tbaa !41, !alias.scope !411
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 3, ptr %i.ba, align 8, !tbaa !305, !alias.scope !411
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 %i.au, ptr %i.bb, align 8, !tbaa !308, !alias.scope !411
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 1, ptr %i.bc, align 8, !tbaa !309, !alias.scope !411
  br label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit24

_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit24:   ; preds = %bb.f, %bb.g, %bb.h
  %i.bd = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.ad

bb.i:                                             ; preds = %bb.d
  %.sroa.0.0.copyload = load i64, ptr %3, align 8
  %i.be = call { i32, i64 } @_ZN6hermes2vm8JSObject17getNamedSlotValueENS0_12PseudoHandleIS1_EERNS0_7RuntimeENS0_23NamedPropertyDescriptorE(ptr nonnull %i.p, ptr noundef nonnull align 8 dereferenceable(9816) %1, i64 %.sroa.0.0.copyload) ; 2 uses
  %i.bf = extractvalue { i32, i64 } %i.be, 0
  %i.bg = extractvalue { i32, i64 } %i.be, 1      ; 2 uses
  %i.bh = icmp eq i32 %i.bf, 0
  br i1 %i.bh, label %bb.ad, label %bb.j, !prof !39

bb.j:                                             ; preds = %bb.i
  %i.bi = icmp ugt i64 %i.bg, -844424930131969
  br i1 %i.bi, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bj = and i64 %i.bg, 281474976710655
  %i.bk = inttoptr i64 %i.bj to ptr               ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4
  %i.bm = add i32 %i.bl, -50331648
  %i.bn = icmp ult i32 %i.bm, 134217728
  br i1 %i.bn, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %.sroa.0.0.copyload.i.i28 = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !40
  %i.bo = and i64 %.sroa.0.0.copyload.i.i28, 281474976710655
  %i.bp = inttoptr i64 %i.bo to ptr
  call void @_ZN6hermes2vm11TwineChar16C1EPKNS0_15StringPrimitiveE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef %i.bp) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !421)
  call void @llvm.experimental.noalias.scope.decl(metadata !424)
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !310, !noalias !427 ; 2 uses
  switch i32 %i.br, label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit35.thread [
    i32 0, label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit35.thread124
    i32 1, label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit35
  ]

_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit35.thread124: ; preds = %bb.l
  %i.bs = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 0, ptr %i.bs, align 8, !tbaa !310, !alias.scope !428
  %i.bt = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i32 1, ptr %i.bt, align 8, !tbaa !305, !alias.scope !428
  %i.bu = getelementptr inbounds nuw i8, ptr %8, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, i8 0, i64 16, i1 false), !alias.scope !428
  br label %bb.m

_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit35.thread: ; preds = %bb.l
  %i.bv = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !308, !noalias !427
  %i.bx = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !309, !noalias !427
  %i.bz = add i64 %i.by, %i.bw
  %i.ca = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.cb = load i32, ptr %i.ca, align 8, !noalias !427
  %i.cc = icmp eq i32 %i.cb, 1                    ; 2 uses
  %.sroa.03.0.copyload.i.i32 = load ptr, ptr %9, align 8, !noalias !427
  %.sroa.03.0.i.i33 = select i1 %i.cc, ptr %.sroa.03.0.copyload.i.i32, ptr %9
  %.015.i.i34 = select i1 %i.cc, i32 %i.br, i32 2
  store ptr @.str.35, ptr %8, align 8, !tbaa !41, !alias.scope !427
  %i.cd = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 3, ptr %i.cd, align 8, !tbaa !310, !alias.scope !427
  %i.ce = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %.sroa.03.0.i.i33, ptr %i.ce, align 8, !tbaa !41, !alias.scope !427
  %i.cf = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i32 %.015.i.i34, ptr %i.cf, align 8, !tbaa !305, !alias.scope !427
  %i.cg = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 49, ptr %i.cg, align 8, !tbaa !308, !alias.scope !427
  %i.ch = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i64 %i.bz, ptr %i.ch, align 8, !tbaa !309, !alias.scope !427
  br label %bb.o

_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit35:   ; preds = %bb.l
  store ptr @.str.35, ptr %8, align 8, !tbaa !41
  %.sroa.4131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 3, ptr %.sroa.4131.0..sroa_idx, align 8, !tbaa !384
  %.sroa.5133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i32 1, ptr %.sroa.5133.0..sroa_idx, align 8, !tbaa !384
  %.sroa.6135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 49, ptr %.sroa.6135.0..sroa_idx, align 8, !tbaa !40
  %.sroa.7136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i64 0, ptr %.sroa.7136.0..sroa_idx, align 8, !tbaa !40
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !310, !noalias !431 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !436)
  call void @llvm.experimental.noalias.scope.decl(metadata !437)
  switch i32 %.pre, label %bb.o [
    i32 0, label %bb.m
    i32 1, label %bb.n
  ]

bb.m:                                             ; preds = %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit35.thread124, %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit35
  %i.ci = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 0, ptr %i.ci, align 8, !tbaa !310, !alias.scope !438
  %i.cj = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 1, ptr %i.cj, align 8, !tbaa !305, !alias.scope !438
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ck, i8 0, i64 16, i1 false), !alias.scope !438
  br label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit44

bb.n:                                             ; preds = %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit35
  store ptr @.str.16, ptr %7, align 8, !tbaa !41
  %.sroa.598.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 3, ptr %.sroa.598.0..sroa_idx, align 8, !tbaa !384
  %.sroa.6100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 1, ptr %.sroa.6100.0..sroa_idx, align 8, !tbaa !384
  %.sroa.7102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 1, ptr %.sroa.7102.0..sroa_idx, align 8, !tbaa !40
  %.sroa.8103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 0, ptr %.sroa.8103.0..sroa_idx, align 8, !tbaa !40
  br label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit44

bb.o:                                             ; preds = %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit35.thread, %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit35
  %i.cl = phi i32 [ 3, %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit35.thread ], [ %.pre, %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit35 ]
  %i.cm = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !308, !noalias !431
  %i.co = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !309, !noalias !431
  %i.cq = add i64 %i.cp, %i.cn
  %i.cr = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.cs = load i32, ptr %i.cr, align 8, !noalias !431
  %i.ct = icmp eq i32 %i.cs, 1                    ; 2 uses
  %.sroa.06.0.copyload.i.i38 = load ptr, ptr %8, align 8, !noalias !431
  %spec.select.i.i39 = select i1 %i.ct, i32 %i.cl, i32 2
  %spec.select17.i.i40 = select i1 %i.ct, ptr %.sroa.06.0.copyload.i.i38, ptr %8
  store ptr %spec.select17.i.i40, ptr %7, align 8, !tbaa !41, !alias.scope !431
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %spec.select.i.i39, ptr %i.cu, align 8, !tbaa !310, !alias.scope !431
  %i.cv = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr @.str.16, ptr %i.cv, align 8, !tbaa !41, !alias.scope !431
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 3, ptr %i.cw, align 8, !tbaa !305, !alias.scope !431
  %i.cx = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 %i.cq, ptr %i.cx, align 8, !tbaa !308, !alias.scope !431
  %i.cy = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 1, ptr %i.cy, align 8, !tbaa !309, !alias.scope !431
  br label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit44

_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit44:   ; preds = %bb.m, %bb.n, %bb.o
  %i.cz = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.ad

bb.p:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  call void @_ZN6hermes2vm11TwineChar16C1EPKNS0_15StringPrimitiveE(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef nonnull %i.bk) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !441)
  call void @llvm.experimental.noalias.scope.decl(metadata !444)
  %i.da = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.db = load i32, ptr %i.da, align 8, !tbaa !310, !noalias !447 ; 2 uses
  switch i32 %i.db, label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit53.thread [
    i32 0, label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit53.thread125
    i32 1, label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit53
  ]

_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit53.thread125: ; preds = %bb.p
  %i.dc = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 0, ptr %i.dc, align 8, !tbaa !310, !alias.scope !448
  %i.dd = getelementptr inbounds nuw i8, ptr %13, i64 24
  store i32 1, ptr %i.dd, align 8, !tbaa !305, !alias.scope !448
  %i.de = getelementptr inbounds nuw i8, ptr %13, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.de, i8 0, i64 16, i1 false), !alias.scope !448
  br label %bb.q

_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit53.thread: ; preds = %bb.p
  %i.df = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !308, !noalias !447
  %i.dh = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !309, !noalias !447
  %i.dj = add i64 %i.di, %i.dg
  %i.dk = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.dl = load i32, ptr %i.dk, align 8, !noalias !447
  %i.dm = icmp eq i32 %i.dl, 1                    ; 2 uses
  %.sroa.03.0.copyload.i.i50 = load ptr, ptr %14, align 8, !noalias !447
  %.sroa.03.0.i.i51 = select i1 %i.dm, ptr %.sroa.03.0.copyload.i.i50, ptr %14
  %.015.i.i52 = select i1 %i.dm, i32 %i.db, i32 2
  store ptr @.str.35, ptr %13, align 8, !tbaa !41, !alias.scope !447
  %i.dn = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 3, ptr %i.dn, align 8, !tbaa !310, !alias.scope !447
  %i.do = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %.sroa.03.0.i.i51, ptr %i.do, align 8, !tbaa !41, !alias.scope !447
  %i.dp = getelementptr inbounds nuw i8, ptr %13, i64 24
  store i32 %.015.i.i52, ptr %i.dp, align 8, !tbaa !305, !alias.scope !447
  %i.dq = getelementptr inbounds nuw i8, ptr %13, i64 32
  store i64 49, ptr %i.dq, align 8, !tbaa !308, !alias.scope !447
  %i.dr = getelementptr inbounds nuw i8, ptr %13, i64 40
  store i64 %i.dj, ptr %i.dr, align 8, !tbaa !309, !alias.scope !447
  br label %bb.s

_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit53:   ; preds = %bb.p
  store ptr @.str.35, ptr %13, align 8, !tbaa !41
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 3, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !384
  %.sroa.5128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 24
  store i32 1, ptr %.sroa.5128.0..sroa_idx, align 8, !tbaa !384
  %.sroa.6129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 32
  store i64 49, ptr %.sroa.6129.0..sroa_idx, align 8, !tbaa !40
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 40
  store i64 0, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !40
  %.phi.trans.insert111 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %.pre112 = load i32, ptr %.phi.trans.insert111, align 8, !tbaa !310, !noalias !451 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !456)
  call void @llvm.experimental.noalias.scope.decl(metadata !457)
  switch i32 %.pre112, label %bb.s [
    i32 0, label %bb.q
    i32 1, label %bb.r
  ]

bb.q:                                             ; preds = %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit53.thread125, %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit53
  %i.ds = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 0, ptr %i.ds, align 8, !tbaa !310, !alias.scope !458
  %i.dt = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i32 1, ptr %i.dt, align 8, !tbaa !305, !alias.scope !458
  %i.du = getelementptr inbounds nuw i8, ptr %12, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.du, i8 0, i64 16, i1 false), !alias.scope !458
  br label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit62

bb.r:                                             ; preds = %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit53
  store ptr @.str.36, ptr %12, align 8, !tbaa !41
  %.sroa.591.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 3, ptr %.sroa.591.0..sroa_idx, align 8, !tbaa !384
  %.sroa.693.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i32 1, ptr %.sroa.693.0..sroa_idx, align 8, !tbaa !384
  %.sroa.795.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i64 1, ptr %.sroa.795.0..sroa_idx, align 8, !tbaa !40
  %.sroa.896.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 40
  store i64 0, ptr %.sroa.896.0..sroa_idx, align 8, !tbaa !40
  br label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit62

bb.s:                                             ; preds = %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit53.thread, %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit53
  %i.dv = phi i32 [ 3, %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit53.thread ], [ %.pre112, %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit53 ]
  %i.dw = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !308, !noalias !451
  %i.dy = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !309, !noalias !451
  %i.ea = add i64 %i.dz, %i.dx                    ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.ec = load i32, ptr %i.eb, align 8, !noalias !451
  %i.ed = icmp eq i32 %i.ec, 1                    ; 2 uses
  %.sroa.06.0.copyload.i.i56 = load ptr, ptr %13, align 8, !noalias !451
  %spec.select.i.i57 = select i1 %i.ed, i32 %i.dv, i32 2 ; 2 uses
  %spec.select17.i.i58 = select i1 %i.ed, ptr %.sroa.06.0.copyload.i.i56, ptr %13 ; 2 uses
  store ptr %spec.select17.i.i58, ptr %12, align 8, !tbaa !41, !alias.scope !451
  %i.ee = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 %spec.select.i.i57, ptr %i.ee, align 8, !tbaa !310, !alias.scope !451
  %i.ef = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr @.str.36, ptr %i.ef, align 8, !tbaa !41, !alias.scope !451
  %i.eg = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i32 3, ptr %i.eg, align 8, !tbaa !305, !alias.scope !451
  %i.eh = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i64 %i.ea, ptr %i.eh, align 8, !tbaa !308, !alias.scope !451
  %i.ei = getelementptr inbounds nuw i8, ptr %12, i64 40
  store i64 1, ptr %i.ei, align 8, !tbaa !309, !alias.scope !451
  br label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit62

_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit62:   ; preds = %bb.q, %bb.r, %bb.s
  %.sroa.06.0.copyload.i.i64 = phi ptr [ undef, %bb.q ], [ @.str.36, %bb.r ], [ %spec.select17.i.i58, %bb.s ]
  %i.ej = phi i1 [ true, %bb.q ], [ true, %bb.r ], [ false, %bb.s ] ; 2 uses
  %i.ek = phi i64 [ 0, %bb.q ], [ 0, %bb.r ], [ 1, %bb.s ]
  %i.el = phi i64 [ 0, %bb.q ], [ 1, %bb.r ], [ %i.ea, %bb.s ]
  %i.em = phi i32 [ 0, %bb.q ], [ 3, %bb.r ], [ %spec.select.i.i57, %bb.s ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  %.sroa.0.0.copyload.i.i63 = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !40
  %i.en = and i64 %.sroa.0.0.copyload.i.i63, 281474976710655
  %i.eo = inttoptr i64 %i.en to ptr
  call void @_ZN6hermes2vm11TwineChar16C1EPKNS0_15StringPrimitiveE(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef %i.eo) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !461)
  call void @llvm.experimental.noalias.scope.decl(metadata !464)
  %i.ep = icmp eq i32 %i.em, 0
  br i1 %i.ep, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit62
  %i.eq = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !310, !noalias !467 ; 3 uses
  %i.es = icmp eq i32 %i.er, 0
  br i1 %i.es, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t, %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit62
  %i.et = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 0, ptr %i.et, align 8, !tbaa !310, !alias.scope !468
  %i.eu = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i32 1, ptr %i.eu, align 8, !tbaa !305, !alias.scope !468
  %i.ev = getelementptr inbounds nuw i8, ptr %11, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ev, i8 0, i64 16, i1 false), !alias.scope !468
  br label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit70

bb.v:                                             ; preds = %bb.t
  %i.ew = icmp eq i32 %i.em, 1
  br i1 %i.ew, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull align 8 dereferenceable(48) %15, i64 48, i1 false), !tbaa.struct !383
  br label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit70

bb.x:                                             ; preds = %bb.v
  %i.ex = icmp eq i32 %i.er, 1
  br i1 %i.ex, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull align 8 dereferenceable(48) %12, i64 48, i1 false), !tbaa.struct !383
  br label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit70

bb.z:                                             ; preds = %bb.x
  %i.ey = add i64 %i.ek, %i.el
  %i.ez = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !308, !noalias !467
  %i.fb = getelementptr inbounds nuw i8, ptr %15, i64 40
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !309, !noalias !467
  %i.fd = add i64 %i.fc, %i.fa
  %spec.select.i.i65 = select i1 %i.ej, i32 %i.em, i32 2
  %spec.select17.i.i66 = select i1 %i.ej, ptr %.sroa.06.0.copyload.i.i64, ptr %12
  %i.fe = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.ff = load i32, ptr %i.fe, align 8, !noalias !467
  %i.fg = icmp eq i32 %i.ff, 1                    ; 2 uses
  %.sroa.03.0.copyload.i.i67 = load ptr, ptr %15, align 8, !noalias !467
  %.sroa.03.0.i.i68 = select i1 %i.fg, ptr %.sroa.03.0.copyload.i.i67, ptr %15
  %.015.i.i69 = select i1 %i.fg, i32 %i.er, i32 2
  store ptr %spec.select17.i.i66, ptr %11, align 8, !tbaa !41, !alias.scope !467
  %i.fh = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 %spec.select.i.i65, ptr %i.fh, align 8, !tbaa !310, !alias.scope !467
  %i.fi = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %.sroa.03.0.i.i68, ptr %i.fi, align 8, !tbaa !41, !alias.scope !467
  %i.fj = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i32 %.015.i.i69, ptr %i.fj, align 8, !tbaa !305, !alias.scope !467
  %i.fk = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i64 %i.ey, ptr %i.fk, align 8, !tbaa !308, !alias.scope !467
  %i.fl = getelementptr inbounds nuw i8, ptr %11, i64 40
  store i64 %i.fd, ptr %i.fl, align 8, !tbaa !309, !alias.scope !467
  br label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit70

_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit70:   ; preds = %bb.u, %bb.w, %bb.y, %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !471)
  call void @llvm.experimental.noalias.scope.decl(metadata !474)
  %i.fm = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.fn = load i32, ptr %i.fm, align 8, !tbaa !310, !noalias !477 ; 2 uses
  switch i32 %i.fn, label %bb.ac [
    i32 0, label %bb.aa
    i32 1, label %bb.ab
  ]

bb.aa:                                            ; preds = %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit70
  %i.fo = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 0, ptr %i.fo, align 8, !tbaa !310, !alias.scope !478
  %i.fp = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i32 1, ptr %i.fp, align 8, !tbaa !305, !alias.scope !478
  %i.fq = getelementptr inbounds nuw i8, ptr %10, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fq, i8 0, i64 16, i1 false), !alias.scope !478
  br label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit79

bb.ab:                                            ; preds = %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit70
  store ptr @.str.16, ptr %10, align 8, !tbaa !41
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 3, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !384
  %.sroa.688.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i32 1, ptr %.sroa.688.0..sroa_idx, align 8, !tbaa !384
  %.sroa.789.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i64 1, ptr %.sroa.789.0..sroa_idx, align 8, !tbaa !40
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i64 0, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !40
  br label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit79

bb.ac:                                            ; preds = %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit70
  %i.fr = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !308, !noalias !477
  %i.ft = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !309, !noalias !477
  %i.fv = add i64 %i.fu, %i.fs
  %i.fw = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.fx = load i32, ptr %i.fw, align 8, !noalias !477
  %i.fy = icmp eq i32 %i.fx, 1                    ; 2 uses
  %.sroa.06.0.copyload.i.i73 = load ptr, ptr %11, align 8, !noalias !477
  %spec.select.i.i74 = select i1 %i.fy, i32 %i.fn, i32 2
  %spec.select17.i.i75 = select i1 %i.fy, ptr %.sroa.06.0.copyload.i.i73, ptr %11
  store ptr %spec.select17.i.i75, ptr %10, align 8, !tbaa !41, !alias.scope !477
  %i.fz = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 %spec.select.i.i74, ptr %i.fz, align 8, !tbaa !310, !alias.scope !477
  %i.ga = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr @.str.16, ptr %i.ga, align 8, !tbaa !41, !alias.scope !477
  %i.gb = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i32 3, ptr %i.gb, align 8, !tbaa !305, !alias.scope !477
  %i.gc = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i64 %i.fv, ptr %i.gc, align 8, !tbaa !308, !alias.scope !477
  %i.gd = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i64 1, ptr %i.gd, align 8, !tbaa !309, !alias.scope !477
  br label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit79

_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit79:   ; preds = %bb.aa, %bb.ab, %bb.ac
  %i.ge = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %10) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br label %bb.ad

bb.ad:                                            ; preds = %bb.i, %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit79, %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit44, %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit24
  %.2 = phi i32 [ %i.bd, %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit24 ], [ 0, %bb.i ], [ %i.ge, %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit79 ], [ %i.cz, %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit44 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret i32 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 65536) i32 @_ZN6hermes2vm8JSObject14internalSetterENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_23NamedPropertyDescriptorENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %2, i64 %3, ptr %4, i32 %5) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call i32 @_ZN6hermes2vm7JSArray9setLengthENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr nonnull %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %4, i32 %5) #17
  %.sroa.07.0.insert.ext = and i32 %i.a, 65535
  ret i32 %.sroa.07.0.insert.ext
}

declare i32 @_ZN6hermes2vm7JSProxy17defineOwnPropertyENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEENS0_19DefinePropertyFlagsES8_NS0_11PropOpFlagsE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr, i32, ptr, i32) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 258) i32 @_ZN6hermes2vm8JSObject14addOwnPropertyENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_19DefinePropertyFlagsENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr nofree readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %2, i32 %3, ptr nofree readonly captures(none) %4, i32 %5) local_unnamed_addr #1 align 2 {
bb.a:
  %6 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 17 uses
  %7 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 19 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8, !tbaa !40
  %i.a = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = and i32 %i.d, 1
  %.not.i = icmp eq i32 %i.e, 0
  %i.f = and i32 %5, 4
  %i.g = icmp ne i32 %i.f, 0
  %or.cond = select i1 %.not.i, i1 true, i1 %i.g
  br i1 %or.cond, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = trunc i32 %5 to i1
  br i1 %i.h, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit, label %bb.v

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 9240
  %i.j = tail call { ptr, i64 } @_ZNK6hermes2vm15IdentifierTable19getStringViewForDevERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %2) #17 ; 2 uses
  %i.k = extractvalue { ptr, i64 } %i.j, 0        ; 4 uses
  %i.l = extractvalue { ptr, i64 } %i.j, 1        ; 5 uses
  %.sroa.5.8.extract.trunc = trunc i64 %i.l to i32 ; 3 uses
  %i.m = icmp slt i32 %.sroa.5.8.extract.trunc, 0
  br i1 %i.m, label %bb.c, label %bb.k

bb.c:                                             ; preds = %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %i.n = and i32 %.sroa.5.8.extract.trunc, 1073741824
  %.not.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i, label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.k, align 8, !tbaa !40, !noalias !481
  %i.o = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 281474976710655
  %i.p = inttoptr i64 %i.o to ptr                 ; 5 uses
  %i.q = load i32, ptr %i.p, align 4, !noalias !481 ; 2 uses
  %i.r = icmp ugt i32 %i.q, 150994943
  br i1 %i.r, label %bb.e, label %bb.f, !prof !39

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !388, !noalias !481
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i.i

bb.f:                                             ; preds = %bb.d
  %.mask.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.q, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i.i.i, label %bb.i [
    i32 134217728, label %bb.g
    i32 67108864, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i.i

bb.h:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i.i

bb.i:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.0.0.copyload.i.i.i2.i.i.i = load i64, ptr %i.w, align 8, !tbaa !40, !noalias !481
  %i.x = and i64 %.sroa.0.0.copyload.i.i.i2.i.i.i, 281474976710655
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !388, !noalias !481
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i.i

_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i.i: ; preds = %bb.i, %bb.h, %bb.g, %bb.e, %bb.c
  %.0.i.sink.i.i.i = phi ptr [ %i.k, %bb.c ], [ %i.t, %bb.e ], [ %i.u, %bb.g ], [ %i.v, %bb.h ], [ %i.aa, %bb.i ]
  %.sroa.5.12.extract.shift29 = lshr i64 %i.l, 32 ; 2 uses
  %i.ab = icmp eq i64 %.sroa.5.12.extract.shift29, 0
  br i1 %i.ab, label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit, label %bb.j

bb.j:                                             ; preds = %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i.i
  %i.ac = and i64 %i.l, 1073741823
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i.sink.i.i.i, i64 %i.ac
  br label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit.thread

bb.k:                                             ; preds = %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.not.i1.i.i = icmp samesign ult i32 %.sroa.5.8.extract.trunc, 1073741824
  br i1 %.not.i1.i.i, label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.sroa.0.0.copyload.i.i.i.i2.i.i = load i64, ptr %i.k, align 8, !tbaa !40, !noalias !481
  %i.ae = and i64 %.sroa.0.0.copyload.i.i.i.i2.i.i, 281474976710655
  %i.af = inttoptr i64 %i.ae to ptr               ; 5 uses
  %i.ag = load i32, ptr %i.af, align 4, !noalias !481 ; 2 uses
  %i.ah = icmp ugt i32 %i.ag, 150994943
  br i1 %i.ah, label %bb.m, label %bb.n, !prof !39

bb.m:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !391, !noalias !481
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i.i

bb.n:                                             ; preds = %bb.l
  %.mask.i.i.i.i.i.i.i.i.i3.i.i = and i32 %i.ag, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i3.i.i, label %bb.q [
    i32 117440512, label %bb.o
    i32 50331648, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i.i
end_hunk_3
