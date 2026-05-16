inline.NumInlined: 4892
inline.NumDeleted: 1491
begin_hunk_0_@_ZNK6google8protobuf8compiler3php9Generator8GenerateEPKNS0_14FileDescriptorERKNS2_7OptionsEPNS1_16GeneratorContextEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.sz = load i64, ptr %i.ei, align 8, !tbaa !184 ; 3 uses
  %i.ta = trunc i64 %i.sz to i1
  br i1 %i.ta, label %bb.cl, label %bb.cm, !prof !118

bb.cl:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i115.i.i.i.i
  %i.tb = add nsw i64 %i.sz, -1
  %i.tc = inttoptr i64 %i.tb to ptr
  %i.td = load ptr, ptr %i.tc, align 8, !tbaa !186
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i.i.i

bb.cm:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i115.i.i.i.i
  %i.te = inttoptr i64 %i.sz to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i.i.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i.i.i: ; preds = %bb.cm, %bb.cl
  %.0.i.i7.i.i.i.i.i = phi ptr [ %i.td, %bb.cl ], [ %i.te, %bb.cm ]
  %i.tf = icmp eq ptr %.0.i.i.i116.i.i.i.i, %.0.i.i7.i.i.i.i.i
  br i1 %i.tf, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i.i.i
  invoke void @_ZN6google8protobuf19FileDescriptorProto12InternalSwapEPS1_(ptr noundef nonnull align 8 dereferenceable(200) %i.sn, ptr noundef nonnull align 8 dereferenceable(200) %23)
          to label %bb.cq unwind label %bb.cp

bb.co:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i.i.i
  invoke void @_ZN6google8protobuf19FileDescriptorProto8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(200) %i.sn, ptr noundef nonnull align 8 dereferenceable(200) %23)
          to label %bb.cq unwind label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %i.tg = landingpad { ptr, i32 }
          catch ptr null
  %i.th = extractvalue { ptr, i32 } %i.tg, 0
  call void @__clang_call_terminate(ptr %i.th) #29
  unreachable

bb.cq:                                            ; preds = %bb.co, %bb.cn, %bb.ch
  call void @_ZN6google8protobuf19FileDescriptorProtoD1Ev(ptr noundef nonnull align 8 dereferenceable(200) %23) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  %i.ti = getelementptr inbounds nuw i8, ptr %i.sn, i64 16 ; 4 uses
  %i.tj = load i32, ptr %i.ti, align 4, !tbaa !3
  %i.tk = or i32 %i.tj, 1
  store i32 %i.tk, ptr %i.ti, align 4, !tbaa !3
  %i.tl = getelementptr inbounds nuw i8, ptr %i.sn, i64 24 ; 4 uses
  %i.tm = load ptr, ptr %i.tl, align 8, !tbaa !189
  %i.tn = ptrtoint ptr %i.tm to i64               ; 2 uses
  %i.to = and i64 %i.tn, 1
  %i.tp = icmp eq i64 %i.to, 0
  %i.tq = add i64 %i.tn, -1
  %i.tr = inttoptr i64 %i.tq to ptr
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 8
  %i.tt = select i1 %i.tp, ptr %i.tl, ptr %i.ts   ; 4 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %i.sn, i64 32
  %i.tv = load i32, ptr %i.tu, align 8, !tbaa !192 ; 2 uses
  %i.tw = sext i32 %i.tv to i64
  %.idx.i.i.i.i = shl nsw i64 %i.tw, 3
  %i.tx = getelementptr inbounds i8, ptr %i.tt, i64 %.idx.i.i.i.i
  %.not275317.i.i.i.i = icmp eq i32 %i.tv, 0
  br i1 %.not275317.i.i.i.i, label %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5eraseENS0_8internal19RepeatedPtrIteratorIKS7_EE.exit.i.i.i.i, label %.lr.ph320.i.i.i.i

bb.cr:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i.i.i
  %i.ty = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

bb.cs:                                            ; preds = %bb.cg
  %i.tz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  br label %bb.dm

bb.ct:                                            ; preds = %bb.db
  %i.ua = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

bb.cu:                                            ; preds = %._crit_edge.thread.i.i.i.i.i.i.i
  %i.ub = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

.lr.ph320.i.i.i.i:                                ; preds = %bb.cq, %_ZStneIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit.i.i.i.i
  %.sroa.0217.0318.i.i.i.i = phi ptr [ %i.vx, %_ZStneIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit.i.i.i.i ], [ %i.tt, %bb.cq ] ; 4 uses
  %i.uc = load ptr, ptr %.sroa.0217.0318.i.i.i.i, align 8, !tbaa !193 ; 2 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 8
  %i.ue = load i64, ptr %i.ud, align 8, !tbaa !40
  %i.uf = icmp eq i64 %i.ue, 32
  br i1 %i.uf, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %.lr.ph320.i.i.i.i
  %i.ug = load ptr, ptr %i.uc, align 8, !tbaa !44 ; 2 uses
  %i.uh = load i128, ptr %i.ug, align 1
  %i.ui = xor i128 %i.uh, 63005710922238749866870542373108019047
  %i.uj = getelementptr i8, ptr %i.ug, i64 16
  %i.uk = load i128, ptr %i.uj, align 1
  %i.ul = xor i128 %i.uk, 148148874381910705952234547080544347492
  %i.um = or i128 %i.ui, %i.ul
  %i.un = icmp ne i128 %i.um, 0
  %i.uo = zext i1 %i.un to i32
  %i.up = icmp eq i32 %i.uo, 0
  br i1 %i.up, label %_ZStneIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit.i.i.i.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %.lr.ph320.i.i.i.i
  %i.uq = getelementptr inbounds nuw i8, ptr %.sroa.0217.0318.i.i.i.i, i64 8
  %i.ur = ptrtoint ptr %.sroa.0217.0318.i.i.i.i to i64
  %i.us = ptrtoint ptr %i.tt to i64               ; 2 uses
  %i.ut = sub i64 %i.ur, %i.us                    ; 2 uses
  %i.uu = lshr exact i64 %i.ut, 3
  %i.uv = trunc i64 %i.uu to i32                  ; 2 uses
  %i.uw = ptrtoint ptr %i.uq to i64
  %i.ux = sub i64 %i.uw, %i.us
  %i.uy = lshr exact i64 %i.ux, 3
  %i.uz = trunc i64 %i.uy to i32
  %i.va = sub nsw i32 %i.uz, %i.uv                ; 3 uses
  %sext12.i.i.i.i.i.i = shl i64 %i.ut, 29
  %i.vb = ashr i64 %sext12.i.i.i.i.i.i, 32
  %i.vc = getelementptr inbounds [8 x i8], ptr %i.tt, i64 %i.vb
  %i.vd = getelementptr inbounds nuw i8, ptr %i.sn, i64 36
  %i.ve = load i32, ptr %i.vd, align 4, !tbaa !194 ; 2 uses
  %i.vf = icmp eq i32 %i.ve, 0
  br i1 %i.vf, label %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8GetArenaEv.exit.i.i.i.i.i.i.i, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.vg = sext i32 %i.ve to i64
  %i.vh = getelementptr inbounds i8, ptr %i.tl, i64 %i.vg
  %i.vi = load i64, ptr %i.vh, align 8, !tbaa !184 ; 3 uses
  %i.vj = trunc i64 %i.vi to i1
  br i1 %i.vj, label %bb.cy, label %bb.cz, !prof !118

bb.cy:                                            ; preds = %bb.cx
  %i.vk = add nsw i64 %i.vi, -1
  %i.vl = inttoptr i64 %i.vk to ptr
  %i.vm = load ptr, ptr %i.vl, align 8, !tbaa !186
  br label %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8GetArenaEv.exit.i.i.i.i.i.i.i

bb.cz:                                            ; preds = %bb.cx
  %i.vn = inttoptr i64 %i.vi to ptr
  br label %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8GetArenaEv.exit.i.i.i.i.i.i.i

_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8GetArenaEv.exit.i.i.i.i.i.i.i: ; preds = %bb.cz, %bb.cy, %bb.cw
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ null, %bb.cw ], [ %i.vm, %bb.cy ], [ %i.vn, %bb.cz ]
  %i.vo = icmp sgt i32 %i.va, 0
  br i1 %i.vo, label %.lr.ph.i.i.i119.i.i.i.i, label %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5eraseENS0_8internal19RepeatedPtrIteratorIKS7_EE.exit.i.i.i.i

.lr.ph.i.i.i119.i.i.i.i:                          ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8GetArenaEv.exit.i.i.i.i.i.i.i
  %.0.i.i.i.i.fr.i.i.i.i.i.i.i = freeze ptr %.0.i.i.i.i.i.i.i.i.i.i.i
  %.not.i.i.i120.i.i.i.i = icmp eq ptr %.0.i.i.i.i.fr.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i120.i.i.i.i, label %.lr.ph.split.preheader.i.i.i.i.i.i.i, label %._crit_edge.thread.i.i.i.i.i.i.i

.lr.ph.split.preheader.i.i.i.i.i.i.i:             ; preds = %.lr.ph.i.i.i119.i.i.i.i
  %wide.trip.count.i.i.i.i.i.i.i = zext nneg i32 %i.va to i64
  br label %.lr.ph.split.i.i.i.i.i.i.i

._crit_edge.thread.i.i.i.i.i.i.i:                 ; preds = %_ZN6google8protobuf8internal18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6DeleteEPS8_PNS0_5ArenaE.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i119.i.i.i.i
  invoke void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase8CloseGapEii(ptr noundef nonnull align 8 dereferenceable(16) %i.tl, i32 noundef %i.uv, i32 noundef %i.va)
          to label %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5eraseENS0_8internal19RepeatedPtrIteratorIKS7_EE.exit.i.i.i.i unwind label %bb.cu

.lr.ph.split.i.i.i.i.i.i.i:                       ; preds = %_ZN6google8protobuf8internal18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6DeleteEPS8_PNS0_5ArenaE.exit.i.i.i.i.i.i.i, %.lr.ph.split.preheader.i.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.split.preheader.i.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i.i, %_ZN6google8protobuf8internal18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6DeleteEPS8_PNS0_5ArenaE.exit.i.i.i.i.i.i.i ] ; 2 uses
  %i.vp = getelementptr inbounds nuw [8 x i8], ptr %i.vc, i64 %indvars.iv.i.i.i.i.i.i.i
  %i.vq = load ptr, ptr %i.vp, align 8, !tbaa !193 ; 4 uses
  %i.vr = icmp eq ptr %i.vq, null
  br i1 %i.vr, label %_ZN6google8protobuf8internal18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6DeleteEPS8_PNS0_5ArenaE.exit.i.i.i.i.i.i.i, label %bb.da

bb.da:                                            ; preds = %.lr.ph.split.i.i.i.i.i.i.i
  %i.vs = load ptr, ptr %i.vq, align 8, !tbaa !44 ; 2 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vq, i64 16 ; 2 uses
  %i.vu = icmp eq ptr %i.vs, %i.vt
  br i1 %i.vu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.da
  %i.vv = load i64, ptr %i.vt, align 8, !tbaa !52
  %i.vw = add i64 %i.vv, 1
  call void @_ZdlPvm(ptr noundef %i.vs, i64 noundef %i.vw) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i: ; preds = %bb.da, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.vq, i64 noundef 32) #27
  br label %_ZN6google8protobuf8internal18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6DeleteEPS8_PNS0_5ArenaE.exit.i.i.i.i.i.i.i

_ZN6google8protobuf8internal18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6DeleteEPS8_PNS0_5ArenaE.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i.i.i
  %indvars.iv.next.i.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i.i, %wide.trip.count.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %._crit_edge.thread.i.i.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i.i, !llvm.loop !195

_ZStneIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit.i.i.i.i: ; preds = %bb.cv
  %i.vx = getelementptr inbounds nuw i8, ptr %.sroa.0217.0318.i.i.i.i, i64 8 ; 2 uses
  %.not275.i.i.i.i = icmp eq ptr %i.vx, %i.tx
  br i1 %.not275.i.i.i.i, label %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5eraseENS0_8internal19RepeatedPtrIteratorIKS7_EE.exit.i.i.i.i, label %.lr.ph320.i.i.i.i, !llvm.loop !196

_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5eraseENS0_8internal19RepeatedPtrIteratorIKS7_EE.exit.i.i.i.i: ; preds = %_ZStneIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit.i.i.i.i, %._crit_edge.thread.i.i.i.i.i.i.i, %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8GetArenaEv.exit.i.i.i.i.i.i.i, %bb.cq
  %i.vy = getelementptr inbounds nuw i8, ptr %i.sn, i64 96
  %i.vz = load i32, ptr %i.vy, align 8, !tbaa !192
  %i.wa = icmp sgt i32 %i.vz, 0
  br i1 %i.wa, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5eraseENS0_8internal19RepeatedPtrIteratorIKS7_EE.exit.i.i.i.i
  %i.wb = getelementptr inbounds nuw i8, ptr %i.sn, i64 88
  invoke void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase13ClearNonEmptyINS1_18GenericTypeHandlerINS0_11MessageLiteEEEEEvv(ptr noundef nonnull align 8 dereferenceable(16) %i.wb)
          to label %bb.dc unwind label %bb.ct

bb.dc:                                            ; preds = %bb.db, %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5eraseENS0_8internal19RepeatedPtrIteratorIKS7_EE.exit.i.i.i.i
  %i.wc = load i32, ptr %i.ti, align 4, !tbaa !3
  %i.wd = and i32 %i.wc, -19
  %i.we = or disjoint i32 %i.wd, 2
  store i32 %i.we, ptr %i.ti, align 4, !tbaa !3
  %i.wf = getelementptr inbounds nuw i8, ptr %i.sn, i64 40 ; 4 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %i.sn, i64 48 ; 2 uses
  %i.wh = load i32, ptr %i.wg, align 8, !tbaa !192
  %.not276321.i.i.i.i = icmp eq i32 %i.wh, 0
  br i1 %.not276321.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph324.preheader.i.i.i.i

.lr.ph324.preheader.i.i.i.i:                      ; preds = %bb.dc
  %i.wi = load ptr, ptr %i.wf, align 8, !tbaa !189 ; 2 uses
  %i.wj = ptrtoint ptr %i.wi to i64               ; 2 uses
  %i.wk = and i64 %i.wj, 1
  %i.wl = icmp eq i64 %i.wk, 0
  %i.wm = add i64 %i.wj, -1
  %i.wn = inttoptr i64 %i.wm to ptr
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 8
  %i.wp = select i1 %i.wl, ptr %i.wf, ptr %i.wo
  br label %.lr.ph324.i.i.i.i

bb.dd:                                            ; preds = %bb.de
  %i.wq = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

.lr.ph324.i.i.i.i:                                ; preds = %bb.df, %.lr.ph324.preheader.i.i.i.i
  %i.wr = phi ptr [ %i.wx, %bb.df ], [ %i.wi, %.lr.ph324.preheader.i.i.i.i ]
  %.sroa.0212.0322.i.i.i.i = phi ptr [ %i.xb, %bb.df ], [ %i.wp, %.lr.ph324.preheader.i.i.i.i ] ; 2 uses
  %i.ws = load ptr, ptr %.sroa.0212.0322.i.i.i.i, align 8, !tbaa !193 ; 3 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ws, i64 96
  %i.wu = load i32, ptr %i.wt, align 8, !tbaa !192
  %i.wv = icmp sgt i32 %i.wu, 0
  br i1 %i.wv, label %bb.de, label %bb.df

bb.de:                                            ; preds = %.lr.ph324.i.i.i.i
  %i.ww = getelementptr inbounds nuw i8, ptr %i.ws, i64 88
  invoke void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase13ClearNonEmptyINS1_18GenericTypeHandlerINS0_11MessageLiteEEEEEvv(ptr noundef nonnull align 8 dereferenceable(16) %i.ww)
          to label %._crit_edge360.i.i.i.i unwind label %bb.dd

._crit_edge360.i.i.i.i:                           ; preds = %bb.de
  %.pre.i.i.i.i = load ptr, ptr %i.wf, align 8, !tbaa !189
  br label %bb.df

bb.df:                                            ; preds = %._crit_edge360.i.i.i.i, %.lr.ph324.i.i.i.i
  %i.wx = phi ptr [ %.pre.i.i.i.i, %._crit_edge360.i.i.i.i ], [ %i.wr, %.lr.ph324.i.i.i.i ] ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %i.ws, i64 16 ; 2 uses
  %i.wz = load i32, ptr %i.wy, align 4, !tbaa !3
  %i.xa = and i32 %i.wz, -17
  store i32 %i.xa, ptr %i.wy, align 4, !tbaa !3
  %i.xb = getelementptr inbounds nuw i8, ptr %.sroa.0212.0322.i.i.i.i, i64 8 ; 2 uses
  %i.xc = ptrtoint ptr %i.wx to i64               ; 2 uses
  %i.xd = and i64 %i.xc, 1
  %i.xe = icmp eq i64 %i.xd, 0
  %i.xf = add i64 %i.xc, -1
  %i.xg = inttoptr i64 %i.xf to ptr
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xg, i64 8
  %i.xi = select i1 %i.xe, ptr %i.wf, ptr %i.xh
  %i.xj = load i32, ptr %i.wg, align 8, !tbaa !192
  %i.xk = sext i32 %i.xj to i64
  %i.xl = getelementptr inbounds [8 x i8], ptr %i.xi, i64 %i.xk
  %.not276.i.i.i.i = icmp eq ptr %i.xb, %i.xl
  br i1 %.not276.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph324.i.i.i.i, !llvm.loop !197

_ZN6google8protobuf8compiler3php12_GLOBAL__N_115NeedsUnwrappingEPKNS0_14FileDescriptorERKNS2_7OptionsE.exit.i.i.i.i: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashSetPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_10StringHashENS1_8StringEqESaIS9_EE8iterator21skip_empty_or_deletedEv.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26, !noalias !198
  store i8 0, ptr %i.dz, align 1, !tbaa !95, !noalias !198
  store i8 0, ptr %i.ea, align 2, !tbaa !201, !noalias !198
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.eb, i8 0, i64 16, i1 false), !noalias !198
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i.i124.i.i.i.i, align 8, !noalias !198
  store i8 0, ptr %16, align 8, !tbaa !7, !noalias !198
  invoke fastcc void @_ZN6google8protobuf8compiler3php12_GLOBAL__N_125GeneratedMetadataFileNameB5cxx11EPKNS0_14FileDescriptorERKNS2_7OptionsE(ptr dead_on_unwind noalias nonnull writable align 8 %24, ptr noundef %i.gg, ptr noundef nonnull align 8 dereferenceable(40) %16)
          to label %bb.dh unwind label %bb.dg

bb.dg:                                            ; preds = %_ZN6google8protobuf8compiler3php12_GLOBAL__N_115NeedsUnwrappingEPKNS0_14FileDescriptorERKNS2_7OptionsE.exit.i.i.i.i
  %i.xm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google8protobuf8compiler3php7OptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26, !noalias !198
  br label %.body.i.i.i.i

bb.dh:                                            ; preds = %_ZN6google8protobuf8compiler3php12_GLOBAL__N_115NeedsUnwrappingEPKNS0_14FileDescriptorERKNS2_7OptionsE.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26, !noalias !198
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #26
  %i.xn = load ptr, ptr %24, align 8, !tbaa !44
  %i.xo = load i64, ptr %i.ec, align 8, !tbaa !40
  invoke fastcc void @_ZN6google8protobuf8compiler3php12_GLOBAL__N_119FilenameToClassnameB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable align 8 %25, i64 %i.xo, ptr %i.xn)
          to label %bb.di unwind label %bb.dk

bb.di:                                            ; preds = %bb.dh
  invoke void @_ZN6google8protobuf2io7Printer5PrintIJA5_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvSt17basic_string_viewIcS8_EDpRKT_(ptr noundef nonnull align 16 dereferenceable(296) %39, i64 21, ptr nonnull @.str.35, ptr noundef nonnull align 1 dereferenceable(5) @.str.8, ptr noundef nonnull align 8 dereferenceable(32) %25)
          to label %bb.dj unwind label %bb.dl

bb.dj:                                            ; preds = %bb.di
  %i.xp = load ptr, ptr %25, align 8, !tbaa !44   ; 2 uses
  %i.xq = icmp eq ptr %i.xp, %i.ed
  br i1 %i.xq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.dj
  %i.xr = load i64, ptr %i.ed, align 8, !tbaa !52
  %i.xs = add i64 %i.xr, 1
  call void @_ZdlPvm(ptr noundef %i.xp, i64 noundef %i.xs) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %bb.dj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #26
  %i.xt = load ptr, ptr %24, align 8, !tbaa !44   ; 2 uses
  %i.xu = icmp eq ptr %i.xt, %i.ee
  br i1 %i.xu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.xv = load i64, ptr %i.ee, align 8, !tbaa !52
  %i.xw = add i64 %i.xv, 1
  call void @_ZdlPvm(ptr noundef %i.xt, i64 noundef %i.xw) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26
  br label %.loopexit.i.i.i.i

bb.dk:                                            ; preds = %bb.dh
  %i.xx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.i.i.i.i

bb.dl:                                            ; preds = %bb.di
  %i.xy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.xz = load ptr, ptr %25, align 8, !tbaa !44   ; 2 uses
  %i.ya = icmp eq ptr %i.xz, %i.ed
  br i1 %i.ya, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130.i.i.i.i: ; preds = %bb.dl
  %i.yb = load i64, ptr %i.ed, align 8, !tbaa !52
  %i.yc = add i64 %i.yb, 1
  call void @_ZdlPvm(ptr noundef %i.xz, i64 noundef %i.yc) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.i.i.i.i: ; preds = %bb.dl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130.i.i.i.i, %bb.dk
  %.pn56.i.i.i.i = phi { ptr, i32 } [ %i.xx, %bb.dk ], [ %i.xy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130.i.i.i.i ], [ %i.xy, %bb.dl ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #26
  %i.yd = load ptr, ptr %24, align 8, !tbaa !44   ; 2 uses
  %i.ye = icmp eq ptr %i.yd, %i.ee
  br i1 %i.ye, label %.body.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.i.i.i.i
  %i.yf = load i64, ptr %i.ee, align 8, !tbaa !52
  %i.yg = add i64 %i.yf, 1
  call void @_ZdlPvm(ptr noundef %i.yd, i64 noundef %i.yg) #27
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133.i.i.i.i, %bb.dg
  %.pn56.pn.i.i.i.i = phi { ptr, i32 } [ %i.xm, %bb.dg ], [ %.pn56.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133.i.i.i.i ], [ %.pn56.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26
  br label %bb.dm

.loopexit.i.i.i.i:                                ; preds = %bb.df, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129.i.i.i.i, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.yh = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !94
  %.not.i.i.i.i.i = icmp ult i64 %i.yh, 131072
  br i1 %.not.i.i.i.i.i, label %._crit_edge327.i.i.i.i, label %bb.am, !llvm.loop !202

bb.dm:                                            ; preds = %.body.i.i.i.i, %bb.dd, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.bv, %bb.bu, %bb.az, %bb.ay
  %.pn69.pn.pn.pn.i.i.i.i = phi { ptr, i32 } [ %i.ub, %bb.cu ], [ %i.ih, %bb.az ], [ %i.ig, %bb.ay ], [ %i.wq, %bb.dd ], [ %i.pa, %bb.bv ], [ %.pn56.pn.i.i.i.i, %.body.i.i.i.i ], [ %i.ty, %bb.cr ], [ %i.tz, %bb.cs ], [ %i.oz, %bb.bu ], [ %i.ua, %bb.ct ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.es

._crit_edge327.i.i.i.i:                           ; preds = %.loopexit.i.i.i.i, %.preheader.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #26
  %i.yi = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 6 uses
  store ptr %i.yi, ptr %26, align 8, !tbaa !50
  %i.yj = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i64 0, ptr %i.yj, align 8, !tbaa !40
  store i8 0, ptr %i.yi, align 8, !tbaa !52
  %i.yk = invoke noundef zeroext i1 @_ZNK6google8protobuf11MessageLite17SerializeToStringEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %22, ptr noundef nonnull %26)
          to label %bb.dn unwind label %bb.dq

bb.dn:                                            ; preds = %._crit_edge327.i.i.i.i
  br i1 %i.yk, label %.critedge.i.i.i.i, label %bb.do, !prof !137

bb.do:                                            ; preds = %bb.dn
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #26
  invoke void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %27, ptr noundef nonnull @.str.2, i32 noundef 1194, ptr noundef nonnull @.str.44) #30
          to label %bb.dp unwind label %bb.dr

bb.dp:                                            ; preds = %bb.do
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %27)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i.i.i.i unwind label %bb.ds

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i.i.i.i: ; preds = %bb.dp
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %27) #29
  unreachable

bb.dq:                                            ; preds = %.noexc144.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143.i.i.i.i, %._crit_edge327.i.i.i.i
  %i.yl = landingpad { ptr, i32 }
          cleanup
  br label %.body138.i.i.i.i

bb.dr:                                            ; preds = %bb.do
  %i.ym = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #26
  br label %.body138.i.i.i.i

bb.ds:                                            ; preds = %bb.dp
  %i.yn = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %27) #29
  unreachable

.critedge.i.i.i.i:                                ; preds = %bb.dn
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %15, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i.i137.i.i.i.i = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i.i137.i.i.i.i, align 8
  invoke void @_ZN6google8protobuf2io7Printer5PrintIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEvRKT_SA_(ptr noundef nonnull align 16 dereferenceable(296) %39, ptr noundef nonnull align 8 dereferenceable(32) %15, i64 33, ptr nonnull @.str.37)
          to label %bb.du unwind label %bb.dt

bb.dt:                                            ; preds = %.critedge.i.i.i.i
  %i.yo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  br label %.body138.i.i.i.i

bb.du:                                            ; preds = %.critedge.i.i.i.i
  %i.yp = load i64, ptr %15, align 8, !tbaa !93   ; 2 uses
  %i.yq = icmp eq i64 %i.yp, 0
  br i1 %i.yq, label %bb.dx, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.yr = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i137.i.i.i.i, align 8, !tbaa !52
  %i.ys = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.yt = load i64, ptr %i.ys, align 8, !tbaa !94
  %i.yu = and i64 %i.yt, 65536
  %i.yv = icmp ne i64 %i.yu, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %15, i64 noundef %i.yp, ptr noundef %i.yr, i64 noundef 32, i64 noundef 8, i1 noundef zeroext %i.yv)
          to label %bb.dx unwind label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.yw = landingpad { ptr, i32 }
          catch ptr null
  %i.yx = extractvalue { ptr, i32 } %i.yw, 0
  call void @__clang_call_terminate(ptr %i.yx) #29
  unreachable

bb.dx:                                            ; preds = %bb.dv, %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  %i.yy = load i64, ptr %i.ck, align 8, !tbaa !56
end_hunk_0
begin_hunk_1_@_ZNK6google8protobuf8compiler3php9Generator8GenerateEPKNS0_14FileDescriptorERKNS2_7OptionsEPNS1_16GeneratorContextEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.afw = load i64, ptr %i.afv, align 8, !tbaa !184 ; 3 uses
  %i.afx = trunc i64 %i.afw to i1
  br i1 %i.afx, label %bb.ft, label %bb.fu, !prof !118

bb.ft:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i105.i.i.i
  %i.afy = add nsw i64 %i.afw, -1
  %i.afz = inttoptr i64 %i.afy to ptr
  %i.aga = load ptr, ptr %i.afz, align 8, !tbaa !186
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i.i

bb.fu:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i105.i.i.i
  %i.agb = inttoptr i64 %i.afw to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i.i: ; preds = %bb.fu, %bb.ft
  %.0.i.i7.i.i.i.i = phi ptr [ %i.aga, %bb.ft ], [ %i.agb, %bb.fu ]
  %i.agc = icmp eq ptr %.0.i.i.i106.i.i.i, %.0.i.i7.i.i.i.i
  br i1 %i.agc, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i.i
  invoke void @_ZN6google8protobuf19FileDescriptorProto12InternalSwapEPS1_(ptr noundef nonnull align 8 dereferenceable(200) %i.adv, ptr noundef nonnull align 8 dereferenceable(200) %33)
          to label %bb.fy unwind label %bb.fx

bb.fw:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit8.i.i.i.i
  invoke void @_ZN6google8protobuf19FileDescriptorProto8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(200) %i.adv, ptr noundef nonnull align 8 dereferenceable(200) %33)
          to label %bb.fy unwind label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %bb.fv
  %i.agd = landingpad { ptr, i32 }
          catch ptr null
  %i.age = extractvalue { ptr, i32 } %i.agd, 0
  call void @__clang_call_terminate(ptr %i.age) #29
  unreachable

bb.fy:                                            ; preds = %bb.fw, %bb.fv, %bb.fp
  call void @_ZN6google8protobuf19FileDescriptorProtoD1Ev(ptr noundef nonnull align 8 dereferenceable(200) %33) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #26
  %i.agf = getelementptr inbounds nuw i8, ptr %i.adv, i64 16 ; 4 uses
  %i.agg = load i32, ptr %i.agf, align 4, !tbaa !3
  %i.agh = or i32 %i.agg, 1
  store i32 %i.agh, ptr %i.agf, align 4, !tbaa !3
  %i.agi = getelementptr inbounds nuw i8, ptr %i.adv, i64 24 ; 4 uses
  %i.agj = load ptr, ptr %i.agi, align 8, !tbaa !189
  %i.agk = ptrtoint ptr %i.agj to i64             ; 2 uses
  %i.agl = and i64 %i.agk, 1
  %i.agm = icmp eq i64 %i.agl, 0
  %i.agn = add i64 %i.agk, -1
  %i.ago = inttoptr i64 %i.agn to ptr
  %i.agp = getelementptr inbounds nuw i8, ptr %i.ago, i64 8
  %i.agq = select i1 %i.agm, ptr %i.agi, ptr %i.agp ; 4 uses
  %i.agr = getelementptr inbounds nuw i8, ptr %i.adv, i64 32
  %i.ags = load i32, ptr %i.agr, align 8, !tbaa !192 ; 2 uses
  %i.agt = sext i32 %i.ags to i64
  %.idx.i.i.i = shl nsw i64 %i.agt, 3
  %i.agu = getelementptr inbounds i8, ptr %i.agq, i64 %.idx.i.i.i
  %.not206.i.i.i = icmp eq i32 %i.ags, 0
  br i1 %.not206.i.i.i, label %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5eraseENS0_8internal19RepeatedPtrIteratorIKS7_EE.exit.i.i.i, label %.lr.ph209.i.i.i

bb.fz:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i.i.i
  %i.agv = landingpad { ptr, i32 }
          cleanup
  br label %bb.hi

bb.ga:                                            ; preds = %bb.fo
  %i.agw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #26
  br label %bb.hi

bb.gb:                                            ; preds = %bb.gj
  %i.agx = landingpad { ptr, i32 }
          cleanup
  br label %bb.hi

bb.gc:                                            ; preds = %._crit_edge.thread.i.i.i.i.i.i
  %i.agy = landingpad { ptr, i32 }
          cleanup
  br label %bb.hi

.lr.ph209.i.i.i:                                  ; preds = %bb.fy, %_ZStneIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit.i.i.i
  %.sroa.0153.0207.i.i.i = phi ptr [ %i.aiu, %_ZStneIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit.i.i.i ], [ %i.agq, %bb.fy ] ; 4 uses
  %i.agz = load ptr, ptr %.sroa.0153.0207.i.i.i, align 8, !tbaa !193 ; 2 uses
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agz, i64 8
  %i.ahb = load i64, ptr %i.aha, align 8, !tbaa !40
  %i.ahc = icmp eq i64 %i.ahb, 32
  br i1 %i.ahc, label %bb.gd, label %bb.ge

bb.gd:                                            ; preds = %.lr.ph209.i.i.i
  %i.ahd = load ptr, ptr %i.agz, align 8, !tbaa !44 ; 2 uses
  %i.ahe = load i128, ptr %i.ahd, align 1
  %i.ahf = xor i128 %i.ahe, 63005710922238749866870542373108019047
  %i.ahg = getelementptr i8, ptr %i.ahd, i64 16
  %i.ahh = load i128, ptr %i.ahg, align 1
  %i.ahi = xor i128 %i.ahh, 148148874381910705952234547080544347492
  %i.ahj = or i128 %i.ahf, %i.ahi
  %i.ahk = icmp ne i128 %i.ahj, 0
  %i.ahl = zext i1 %i.ahk to i32
  %i.ahm = icmp eq i32 %i.ahl, 0
  br i1 %i.ahm, label %_ZStneIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit.i.i.i, label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %.lr.ph209.i.i.i
  %i.ahn = getelementptr inbounds nuw i8, ptr %.sroa.0153.0207.i.i.i, i64 8
  %i.aho = ptrtoint ptr %.sroa.0153.0207.i.i.i to i64
  %i.ahp = ptrtoint ptr %i.agq to i64             ; 2 uses
  %i.ahq = sub i64 %i.aho, %i.ahp                 ; 2 uses
  %i.ahr = lshr exact i64 %i.ahq, 3
  %i.ahs = trunc i64 %i.ahr to i32                ; 2 uses
  %i.aht = ptrtoint ptr %i.ahn to i64
  %i.ahu = sub i64 %i.aht, %i.ahp
  %i.ahv = lshr exact i64 %i.ahu, 3
  %i.ahw = trunc i64 %i.ahv to i32
  %i.ahx = sub nsw i32 %i.ahw, %i.ahs             ; 3 uses
  %sext12.i.i.i.i.i = shl i64 %i.ahq, 29
  %i.ahy = ashr i64 %sext12.i.i.i.i.i, 32
  %i.ahz = getelementptr inbounds [8 x i8], ptr %i.agq, i64 %i.ahy
  %i.aia = getelementptr inbounds nuw i8, ptr %i.adv, i64 36
  %i.aib = load i32, ptr %i.aia, align 4, !tbaa !194 ; 2 uses
  %i.aic = icmp eq i32 %i.aib, 0
  br i1 %i.aic, label %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8GetArenaEv.exit.i.i.i.i.i.i, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.aid = sext i32 %i.aib to i64
  %i.aie = getelementptr inbounds i8, ptr %i.agi, i64 %i.aid
  %i.aif = load i64, ptr %i.aie, align 8, !tbaa !184 ; 3 uses
  %i.aig = trunc i64 %i.aif to i1
  br i1 %i.aig, label %bb.gg, label %bb.gh, !prof !118

bb.gg:                                            ; preds = %bb.gf
  %i.aih = add nsw i64 %i.aif, -1
  %i.aii = inttoptr i64 %i.aih to ptr
  %i.aij = load ptr, ptr %i.aii, align 8, !tbaa !186
  br label %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8GetArenaEv.exit.i.i.i.i.i.i

bb.gh:                                            ; preds = %bb.gf
  %i.aik = inttoptr i64 %i.aif to ptr
  br label %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8GetArenaEv.exit.i.i.i.i.i.i

_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8GetArenaEv.exit.i.i.i.i.i.i: ; preds = %bb.gh, %bb.gg, %bb.ge
  %.0.i.i.i.i.i.i.i.i.i.i = phi ptr [ null, %bb.ge ], [ %i.aij, %bb.gg ], [ %i.aik, %bb.gh ]
  %i.ail = icmp sgt i32 %i.ahx, 0
  br i1 %i.ail, label %.lr.ph.i.i.i109.i.i.i, label %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5eraseENS0_8internal19RepeatedPtrIteratorIKS7_EE.exit.i.i.i

.lr.ph.i.i.i109.i.i.i:                            ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8GetArenaEv.exit.i.i.i.i.i.i
  %.0.i.i.i.i.fr.i.i.i.i.i.i = freeze ptr %.0.i.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i = icmp eq ptr %.0.i.i.i.i.fr.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.split.preheader.i.i.i.i.i.i, label %._crit_edge.thread.i.i.i.i.i.i

.lr.ph.split.preheader.i.i.i.i.i.i:               ; preds = %.lr.ph.i.i.i109.i.i.i
  %wide.trip.count.i.i.i.i.i.i = zext nneg i32 %i.ahx to i64
  br label %.lr.ph.split.i.i.i.i.i.i

._crit_edge.thread.i.i.i.i.i.i:                   ; preds = %_ZN6google8protobuf8internal18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6DeleteEPS8_PNS0_5ArenaE.exit.i.i.i.i.i.i, %.lr.ph.i.i.i109.i.i.i
  invoke void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase8CloseGapEii(ptr noundef nonnull align 8 dereferenceable(16) %i.agi, i32 noundef %i.ahs, i32 noundef %i.ahx)
          to label %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5eraseENS0_8internal19RepeatedPtrIteratorIKS7_EE.exit.i.i.i unwind label %bb.gc

.lr.ph.split.i.i.i.i.i.i:                         ; preds = %_ZN6google8protobuf8internal18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6DeleteEPS8_PNS0_5ArenaE.exit.i.i.i.i.i.i, %.lr.ph.split.preheader.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.split.preheader.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i, %_ZN6google8protobuf8internal18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6DeleteEPS8_PNS0_5ArenaE.exit.i.i.i.i.i.i ] ; 2 uses
  %i.aim = getelementptr inbounds nuw [8 x i8], ptr %i.ahz, i64 %indvars.iv.i.i.i.i.i.i
  %i.ain = load ptr, ptr %i.aim, align 8, !tbaa !193 ; 4 uses
  %i.aio = icmp eq ptr %i.ain, null
  br i1 %i.aio, label %_ZN6google8protobuf8internal18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6DeleteEPS8_PNS0_5ArenaE.exit.i.i.i.i.i.i, label %bb.gi

bb.gi:                                            ; preds = %.lr.ph.split.i.i.i.i.i.i
  %i.aip = load ptr, ptr %i.ain, align 8, !tbaa !44 ; 2 uses
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.ain, i64 16 ; 2 uses
  %i.air = icmp eq ptr %i.aip, %i.aiq
  br i1 %i.air, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.gi
  %i.ais = load i64, ptr %i.aiq, align 8, !tbaa !52
  %i.ait = add i64 %i.ais, 1
  call void @_ZdlPvm(ptr noundef %i.aip, i64 noundef %i.ait) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i: ; preds = %bb.gi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ain, i64 noundef 32) #27
  br label %_ZN6google8protobuf8internal18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6DeleteEPS8_PNS0_5ArenaE.exit.i.i.i.i.i.i

_ZN6google8protobuf8internal18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6DeleteEPS8_PNS0_5ArenaE.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i.i
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i, %wide.trip.count.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i, label %._crit_edge.thread.i.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i, !llvm.loop !195

_ZStneIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit.i.i.i: ; preds = %bb.gd
  %i.aiu = getelementptr inbounds nuw i8, ptr %.sroa.0153.0207.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aiu, %i.agu
  br i1 %.not.i.i.i, label %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5eraseENS0_8internal19RepeatedPtrIteratorIKS7_EE.exit.i.i.i, label %.lr.ph209.i.i.i, !llvm.loop !214

_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5eraseENS0_8internal19RepeatedPtrIteratorIKS7_EE.exit.i.i.i: ; preds = %_ZStneIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit.i.i.i, %._crit_edge.thread.i.i.i.i.i.i, %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8GetArenaEv.exit.i.i.i.i.i.i, %bb.fy
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.adv, i64 96
  %i.aiw = load i32, ptr %i.aiv, align 8, !tbaa !192
  %i.aix = icmp sgt i32 %i.aiw, 0
  br i1 %i.aix, label %bb.gj, label %bb.gk

bb.gj:                                            ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5eraseENS0_8internal19RepeatedPtrIteratorIKS7_EE.exit.i.i.i
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.adv, i64 88
  invoke void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase13ClearNonEmptyINS1_18GenericTypeHandlerINS0_11MessageLiteEEEEEvv(ptr noundef nonnull align 8 dereferenceable(16) %i.aiy)
          to label %bb.gk unwind label %bb.gb

bb.gk:                                            ; preds = %bb.gj, %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5eraseENS0_8internal19RepeatedPtrIteratorIKS7_EE.exit.i.i.i
  %i.aiz = load i32, ptr %i.agf, align 4, !tbaa !3
  %i.aja = and i32 %i.aiz, -19
  %i.ajb = or disjoint i32 %i.aja, 2
  store i32 %i.ajb, ptr %i.agf, align 4, !tbaa !3
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.adv, i64 40 ; 4 uses
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.adv, i64 48 ; 2 uses
  %i.aje = load i32, ptr %i.ajd, align 8, !tbaa !192
  %.not167210.i.i.i = icmp eq i32 %i.aje, 0
  br i1 %.not167210.i.i.i, label %._crit_edge214.i.i.i, label %.lr.ph213.preheader.i.i.i

.lr.ph213.preheader.i.i.i:                        ; preds = %bb.gk
  %i.ajf = load ptr, ptr %i.ajc, align 8, !tbaa !189 ; 2 uses
  %i.ajg = ptrtoint ptr %i.ajf to i64             ; 2 uses
  %i.ajh = and i64 %i.ajg, 1
  %i.aji = icmp eq i64 %i.ajh, 0
  %i.ajj = add i64 %i.ajg, -1
  %i.ajk = inttoptr i64 %i.ajj to ptr
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.ajk, i64 8
  %i.ajm = select i1 %i.aji, ptr %i.ajc, ptr %i.ajl
  br label %.lr.ph213.i.i.i

._crit_edge214.i.i.i:                             ; preds = %bb.gn, %bb.gk
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #26
  %i.ajn = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 6 uses
  store ptr %i.ajn, ptr %34, align 8, !tbaa !50
  %i.ajo = getelementptr inbounds nuw i8, ptr %34, i64 8
  store i64 0, ptr %i.ajo, align 8, !tbaa !40
  store i8 0, ptr %i.ajn, align 8, !tbaa !52
  %i.ajp = invoke noundef zeroext i1 @_ZNK6google8protobuf11MessageLite17SerializeToStringEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %32, ptr noundef nonnull %34)
          to label %bb.go unwind label %bb.gr

bb.gl:                                            ; preds = %bb.gm
  %i.ajq = landingpad { ptr, i32 }
          cleanup
  br label %bb.hi

.lr.ph213.i.i.i:                                  ; preds = %bb.gn, %.lr.ph213.preheader.i.i.i
  %i.ajr = phi ptr [ %i.ajx, %bb.gn ], [ %i.ajf, %.lr.ph213.preheader.i.i.i ]
  %.sroa.0148.0211.i.i.i = phi ptr [ %i.akb, %bb.gn ], [ %i.ajm, %.lr.ph213.preheader.i.i.i ] ; 2 uses
  %i.ajs = load ptr, ptr %.sroa.0148.0211.i.i.i, align 8, !tbaa !193 ; 3 uses
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.ajs, i64 96
  %i.aju = load i32, ptr %i.ajt, align 8, !tbaa !192
  %i.ajv = icmp sgt i32 %i.aju, 0
  br i1 %i.ajv, label %bb.gm, label %bb.gn

bb.gm:                                            ; preds = %.lr.ph213.i.i.i
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.ajs, i64 88
  invoke void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase13ClearNonEmptyINS1_18GenericTypeHandlerINS0_11MessageLiteEEEEEvv(ptr noundef nonnull align 8 dereferenceable(16) %i.ajw)
          to label %._crit_edge257.i.i.i unwind label %bb.gl

._crit_edge257.i.i.i:                             ; preds = %bb.gm
  %.pre.i.i.i = load ptr, ptr %i.ajc, align 8, !tbaa !189
  br label %bb.gn

bb.gn:                                            ; preds = %._crit_edge257.i.i.i, %.lr.ph213.i.i.i
  %i.ajx = phi ptr [ %.pre.i.i.i, %._crit_edge257.i.i.i ], [ %i.ajr, %.lr.ph213.i.i.i ] ; 2 uses
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.ajs, i64 16 ; 2 uses
  %i.ajz = load i32, ptr %i.ajy, align 4, !tbaa !3
  %i.aka = and i32 %i.ajz, -17
  store i32 %i.aka, ptr %i.ajy, align 4, !tbaa !3
  %i.akb = getelementptr inbounds nuw i8, ptr %.sroa.0148.0211.i.i.i, i64 8 ; 2 uses
  %i.akc = ptrtoint ptr %i.ajx to i64             ; 2 uses
  %i.akd = and i64 %i.akc, 1
  %i.ake = icmp eq i64 %i.akd, 0
  %i.akf = add i64 %i.akc, -1
  %i.akg = inttoptr i64 %i.akf to ptr
  %i.akh = getelementptr inbounds nuw i8, ptr %i.akg, i64 8
  %i.aki = select i1 %i.ake, ptr %i.ajc, ptr %i.akh
  %i.akj = load i32, ptr %i.ajd, align 8, !tbaa !192
  %i.akk = sext i32 %i.akj to i64
  %i.akl = getelementptr inbounds [8 x i8], ptr %i.aki, i64 %i.akk
  %.not167.i.i.i = icmp eq ptr %i.akb, %i.akl
  br i1 %.not167.i.i.i, label %._crit_edge214.i.i.i, label %.lr.ph213.i.i.i, !llvm.loop !215

bb.go:                                            ; preds = %._crit_edge214.i.i.i
  br i1 %i.ajp, label %.critedge.i.i.i, label %bb.gp, !prof !137

bb.gp:                                            ; preds = %bb.go
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #26
  invoke void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %35, ptr noundef nonnull @.str.2, i32 noundef 1061, ptr noundef nonnull @.str.36) #30
          to label %bb.gq unwind label %bb.gs

bb.gq:                                            ; preds = %bb.gp
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %35)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i.i.i unwind label %bb.gt

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i.i.i: ; preds = %bb.gq
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %35) #29
  unreachable

bb.gr:                                            ; preds = %.noexc119.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.i.i.i, %._crit_edge214.i.i.i
  %i.akm = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.gs:                                            ; preds = %bb.gp
  %i.akn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #26
  br label %.body.i.i.i

bb.gt:                                            ; preds = %bb.gq
  %i.ako = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %35) #29
  unreachable

.critedge.i.i.i:                                  ; preds = %bb.go
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i.i113.i.i.i = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i.i113.i.i.i, align 8
  invoke void @_ZN6google8protobuf2io7Printer5PrintIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEvRKT_SA_(ptr noundef nonnull align 16 dereferenceable(296) %39, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 33, ptr nonnull @.str.37)
          to label %bb.gv unwind label %bb.gu

bb.gu:                                            ; preds = %.critedge.i.i.i
  %i.akp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %.body.i.i.i

bb.gv:                                            ; preds = %.critedge.i.i.i
  %i.akq = load i64, ptr %9, align 8, !tbaa !93   ; 2 uses
  %i.akr = icmp eq i64 %i.akq, 0
  br i1 %i.akr, label %bb.gy, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.aks = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i113.i.i.i, align 8, !tbaa !52
  %i.akt = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.aku = load i64, ptr %i.akt, align 8, !tbaa !94
  %i.akv = and i64 %i.aku, 65536
  %i.akw = icmp ne i64 %i.akv, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef %i.akq, ptr noundef %i.aks, i64 noundef 32, i64 noundef 8, i1 noundef zeroext %i.akw)
          to label %bb.gy unwind label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.akx = landingpad { ptr, i32 }
          catch ptr null
  %i.aky = extractvalue { ptr, i32 } %i.akx, 0
  call void @__clang_call_terminate(ptr %i.aky) #29
  unreachable

bb.gy:                                            ; preds = %bb.gw, %bb.gv
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.akz = load i64, ptr %i.ck, align 8, !tbaa !56
  %i.ala = load i64, ptr %i.cm, align 8, !tbaa !92
  %reass.add.i115.i.i.i = shl i64 %i.akz, 1
  %i.alb = add i64 %i.ala, %reass.add.i115.i.i.i
  store i64 %i.alb, ptr %i.cm, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #26
  invoke fastcc void @_ZN6google8protobuf8compiler3php12_GLOBAL__N_117BinaryToPhpStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %36, ptr noundef nonnull align 8 dereferenceable(32) %34)
          to label %bb.gz unwind label %bb.hg

bb.gz:                                            ; preds = %bb.gy
  invoke void @_ZN6google8protobuf2io7Printer5PrintIJA5_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvSt17basic_string_viewIcS8_EDpRKT_(ptr noundef nonnull align 16 dereferenceable(296) %39, i64 9, ptr nonnull @.str.38, ptr noundef nonnull align 1 dereferenceable(5) @.str.39, ptr noundef nonnull align 8 dereferenceable(32) %36)
          to label %bb.ha unwind label %bb.hh

bb.ha:                                            ; preds = %bb.gz
  %i.alc = load ptr, ptr %36, align 8, !tbaa !44  ; 2 uses
  %i.ald = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 2 uses
  %i.ale = icmp eq ptr %i.alc, %i.ald
  br i1 %i.ale, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116.i.i.i: ; preds = %bb.ha
  %i.alf = load i64, ptr %i.ald, align 8, !tbaa !52
  %i.alg = add i64 %i.alf, 1
  call void @_ZdlPvm(ptr noundef %i.alc, i64 noundef %i.alg) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.i.i.i: ; preds = %bb.ha, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i116.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #26
  invoke void @_ZN6google8protobuf2io7Printer7OutdentENS2_14SourceLocationE(ptr noundef nonnull align 16 dereferenceable(296) %39)
          to label %.noexc119.i.i.i unwind label %bb.gr

.noexc119.i.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118.i.i.i
  invoke void @_ZN6google8protobuf2io7Printer7OutdentENS2_14SourceLocationE(ptr noundef nonnull align 16 dereferenceable(296) %39)
          to label %_ZN6google8protobuf8compiler3php12_GLOBAL__N_17OutdentEPNS0_2io7PrinterE.exit.i.i.i unwind label %bb.gr

_ZN6google8protobuf8compiler3php12_GLOBAL__N_17OutdentEPNS0_2io7PrinterE.exit.i.i.i: ; preds = %.noexc119.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i.i121.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i.i121.i.i.i, align 8
  invoke void @_ZN6google8protobuf2io7Printer5PrintIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEvRKT_SA_(ptr noundef nonnull align 16 dereferenceable(296) %39, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 10, ptr nonnull @.str.40)
          to label %bb.hc unwind label %bb.hb

bb.hb:                                            ; preds = %_ZN6google8protobuf8compiler3php12_GLOBAL__N_17OutdentEPNS0_2io7PrinterE.exit.i.i.i
  %i.alh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %.body.i.i.i

bb.hc:                                            ; preds = %_ZN6google8protobuf8compiler3php12_GLOBAL__N_17OutdentEPNS0_2io7PrinterE.exit.i.i.i
  %i.ali = load i64, ptr %8, align 8, !tbaa !93   ; 2 uses
  %i.alj = icmp eq i64 %i.ali, 0
  br i1 %i.alj, label %bb.hf, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.alk = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i121.i.i.i, align 8, !tbaa !52
  %i.all = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.alm = load i64, ptr %i.all, align 8, !tbaa !94
  %i.aln = and i64 %i.alm, 65536
  %i.alo = icmp ne i64 %i.aln, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.ali, ptr noundef %i.alk, i64 noundef 32, i64 noundef 8, i1 noundef zeroext %i.alo)
          to label %bb.hf unwind label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.alp = landingpad { ptr, i32 }
          catch ptr null
  %i.alq = extractvalue { ptr, i32 } %i.alp, 0
  call void @__clang_call_terminate(ptr %i.alq) #29
  unreachable

bb.hf:                                            ; preds = %bb.hd, %bb.hc
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.alr = load ptr, ptr %34, align 8, !tbaa !44  ; 2 uses
  %i.als = icmp eq ptr %i.alr, %i.ajn
  br i1 %i.als, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125.i.i.i: ; preds = %bb.hf
  %i.alt = load i64, ptr %i.ajn, align 8, !tbaa !52
  %i.alu = add i64 %i.alt, 1
  call void @_ZdlPvm(ptr noundef %i.alr, i64 noundef %i.alu) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127.i.i.i: ; preds = %bb.hf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #26
  call void @_ZN6google8protobuf17FileDescriptorSetD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %32) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #26
  br label %bb.hj

bb.hg:                                            ; preds = %bb.gy
  %i.alv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130.i.i.i

bb.hh:                                            ; preds = %bb.gz
  %i.alw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.alx = load ptr, ptr %36, align 8, !tbaa !44  ; 2 uses
  %i.aly = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 2 uses
  %i.alz = icmp eq ptr %i.alx, %i.aly
  br i1 %i.alz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128.i.i.i: ; preds = %bb.hh
  %i.ama = load i64, ptr %i.aly, align 8, !tbaa !52
  %i.amb = add i64 %i.ama, 1
  call void @_ZdlPvm(ptr noundef %i.alx, i64 noundef %i.amb) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130.i.i.i: ; preds = %bb.hh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128.i.i.i, %bb.hg
  %.pn79.i.i.i = phi { ptr, i32 } [ %i.alv, %bb.hg ], [ %i.alw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128.i.i.i ], [ %i.alw, %bb.hh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #26
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130.i.i.i, %bb.hb, %bb.gu, %bb.gs, %bb.gr
  %.pn81.i.i.i = phi { ptr, i32 } [ %i.akn, %bb.gs ], [ %.pn79.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130.i.i.i ], [ %i.akp, %bb.gu ], [ %i.akm, %bb.gr ], [ %i.alh, %bb.hb ]
  %i.amc = load ptr, ptr %34, align 8, !tbaa !44  ; 2 uses
end_hunk_1
