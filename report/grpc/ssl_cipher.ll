inline.NumInlined: 251
inline.NumDeleted: 164
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN4bsslL26ssl_cipher_process_rulestrEPKcPPNS_15cipher_order_stES4_b:bb.a
_ZN4bsslL11rule_equalsEPKcS1_m.exit141:           ; preds = %.preheader
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 %.0109
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !51
  %i.be = icmp eq i8 %i.bd, 0
  br i1 %i.be, label %bb.w, label %_ZN4bsslL11rule_equalsEPKcS1_m.exit141.thread

bb.w:                                             ; preds = %_ZN4bsslL11rule_equalsEPKcS1_m.exit141
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bg = load <4 x i32>, ptr %i.bf, align 8, !tbaa !68
  %i.bh = and <4 x i32> %i.z, %i.bg               ; 3 uses
  store <4 x i32> %i.bh, ptr %i.c, align 8, !tbaa !68
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ay, i64 26
  %i.bj = load i8, ptr %i.bi, align 2, !tbaa !63, !range !35, !noundef !36
  %i.bk = or i8 %i.bj, %i.x                       ; 3 uses
  store i8 %i.bk, ptr %i.e, align 2, !tbaa !63
  %.not130 = icmp eq i16 %i.y, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %.pre = load i16, ptr %.phi.trans.insert, align 8, !tbaa !62 ; 2 uses
  br i1 %.not130, label %._crit_edge234, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.not131 = icmp eq i16 %i.y, %.pre
  br i1 %.not131, label %._crit_edge234, label %.thread159

._crit_edge234:                                   ; preds = %bb.w, %bb.x
  %i.bl = phi i16 [ %i.y, %bb.x ], [ %.pre, %bb.w ] ; 2 uses
  store i16 %i.bl, ptr %i.d, align 8, !tbaa !62
  br label %.thread159

_ZN4bsslL11rule_equalsEPKcS1_m.exit141.thread:    ; preds = %.preheader, %_ZN4bsslL11rule_equalsEPKcS1_m.exit141
  %i.bm = add nuw nsw i64 %.1111199, 1            ; 2 uses
  %exitcond232.not = icmp eq i64 %i.bm, 29
  br i1 %exitcond232.not, label %bb.y, label %.preheader, !llvm.loop !69

bb.y:                                             ; preds = %_ZN4bsslL11rule_equalsEPKcS1_m.exit141.thread
  br i1 %3, label %.loopexit252.sink.split, label %.thread159

.thread159:                                       ; preds = %._crit_edge234, %bb.x, %bb.y, %.loopexit
  %i.bn = phi i8 [ %i.x, %.loopexit ], [ %i.x, %bb.y ], [ %i.bk, %bb.x ], [ %i.bk, %._crit_edge234 ]
  %i.bo = phi i16 [ %i.y, %.loopexit ], [ %i.y, %bb.y ], [ %i.y, %bb.x ], [ %i.bl, %._crit_edge234 ]
  %.2 = phi i1 [ %.0, %.loopexit ], [ true, %bb.y ], [ true, %bb.x ], [ %.0, %._crit_edge234 ] ; 2 uses
  %i.bp = phi <4 x i32> [ %i.z, %.loopexit ], [ %i.z, %bb.y ], [ %i.bh, %bb.x ], [ %i.bh, %._crit_edge234 ]
  br i1 %i.af, label %bb.ao, label %bb.z

bb.z:                                             ; preds = %.thread159
  %i.bq = getelementptr inbounds nuw i8, ptr %.3119, i64 1
  br label %_ZN4bsslL24is_cipher_list_separatorEcb.exit.thread151.split, !llvm.loop !70

bb.aa:                                            ; preds = %bb.r
  %i.br = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.1117148, ptr noundef nonnull dereferenceable(9) @.str.71, i64 noundef 8) #23
  %.not133 = icmp eq i32 %i.br, 0
  br i1 %.not133, label %bb.ab, label %.loopexit252.sink.split.loopexit276

bb.ab:                                            ; preds = %bb.aa
  %.02454.i = load ptr, ptr %1, align 8, !tbaa !48 ; 2 uses
  %.not55.i = icmp eq ptr %.02454.i, null
  br i1 %.not55.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ab, %SSL_CIPHER_get_bits.exit34.i
  %.02457.i = phi ptr [ %.024.i, %SSL_CIPHER_get_bits.exit34.i ], [ %.02454.i, %bb.ab ] ; 3 uses
  %.02556.i = phi i32 [ %.126.i, %SSL_CIPHER_get_bits.exit34.i ], [ 0, %bb.ab ] ; 6 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.02457.i, i64 8
  %i.bt = load i8, ptr %i.bs, align 8, !tbaa !46, !range !35, !noundef !36
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.ac, label %SSL_CIPHER_get_bits.exit34.i

bb.ac:                                            ; preds = %.lr.ph.i
  %i.bv = load ptr, ptr %.02457.i, align 8, !tbaa !50 ; 2 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %SSL_CIPHER_get_bits.exit34.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 28
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !19 ; 2 uses
  %i.bz = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.by)
  %i.ca = icmp eq i32 %i.bz, 1
  br i1 %i.ca, label %.split.i.i, label %SSL_CIPHER_get_bits.exit34.i

.split.i.i:                                       ; preds = %bb.ad
  %i.cb = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.by, i1 true) ; 3 uses
  %i.cc = icmp samesign ult i32 %i.cb, 6
  br i1 %i.cc, label %switch.lookup, label %SSL_CIPHER_get_bits.exit34.i

switch.lookup:                                    ; preds = %.split.i.i
  %i.cd = zext nneg i32 %i.cb to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZN4bsslL21ssl_cipher_apply_ruleEjPKNS_15cipher_alias_stEiibPPNS_15cipher_order_stES5_, i64 %i.cd
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i32
  %i.ce = icmp slt i32 %.02556.i, %switch.ext
  br i1 %i.ce, label %switch.lookup266, label %SSL_CIPHER_get_bits.exit34.i

switch.lookup266:                                 ; preds = %switch.lookup
  %i.cf = zext nneg i32 %i.cb to i64
  %switch.gep267 = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZN4bsslL21ssl_cipher_apply_ruleEjPKNS_15cipher_alias_stEiibPPNS_15cipher_order_stES5_, i64 %i.cf
  %switch.load268 = load i16, ptr %switch.gep267, align 2
  %switch.ext269 = zext i16 %switch.load268 to i32
  br label %SSL_CIPHER_get_bits.exit34.i

SSL_CIPHER_get_bits.exit34.i:                     ; preds = %switch.lookup266, %.split.i.i, %switch.lookup, %bb.ad, %bb.ac, %.lr.ph.i
  %.126.i = phi i32 [ %.02556.i, %bb.ad ], [ %.02556.i, %switch.lookup ], [ %.02556.i, %.lr.ph.i ], [ %switch.ext269, %switch.lookup266 ], [ %.02556.i, %.split.i.i ], [ %.02556.i, %bb.ac ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.02457.i, i64 16
  %.024.i = load ptr, ptr %i.cg, align 8, !tbaa !48 ; 2 uses
  %.not.i = icmp eq ptr %.024.i, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !71

._crit_edge.i:                                    ; preds = %SSL_CIPHER_get_bits.exit34.i, %bb.ab
  %.025.lcssa.i = phi i32 [ 0, %bb.ab ], [ %.126.i, %SSL_CIPHER_get_bits.exit34.i ] ; 4 uses
  %i.ch = add nuw nsw i32 %.025.lcssa.i, 1
  %i.ci = zext nneg i32 %i.ch to i64              ; 2 uses
  invoke void @OPENSSL_free(ptr noundef null)
          to label %.noexc.i unwind label %bb.af

.noexc.i:                                         ; preds = %._crit_edge.i
  %i.cj = shl nuw nsw i64 %i.ci, 2
  %i.ck = invoke ptr @OPENSSL_malloc(i64 noundef %i.cj)
          to label %.noexc35.i unwind label %bb.af ; 6 uses

.noexc35.i:                                       ; preds = %.noexc.i
  %.not176 = icmp eq ptr %i.ck, null              ; 2 uses
  br i1 %.not176, label %_ZN4bssl5ArrayIiE4InitEm.exit.thread.i, label %bb.ae

bb.ae:                                            ; preds = %.noexc35.i
  store i32 0, ptr %i.ck, align 4, !tbaa !68
  %i.cl = icmp eq i32 %.025.lcssa.i, 0
  br i1 %i.cl, label %_ZN4bssl5ArrayIiE4InitEm.exit.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %bb.ae
  %i.cm = zext nneg i32 %.025.lcssa.i to i64
  %i.cn = getelementptr i8, ptr %i.ck, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.cm, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.cn, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !68
  br label %_ZN4bssl5ArrayIiE4InitEm.exit.i

_ZN4bssl5ArrayIiE4InitEm.exit.i:                  ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %bb.ae
  %.sroa.11.0.i = phi i64 [ %i.ci, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ 1, %bb.ae ]
  %.158.i = load ptr, ptr %1, align 8, !tbaa !48  ; 2 uses
  %.not2859.i = icmp eq ptr %.158.i, null
  br i1 %.not2859.i, label %.preheader.i, label %.lr.ph61.i

bb.af:                                            ; preds = %.noexc.i, %._crit_edge.i
  %i.co = landingpad { ptr, i32 }
          cleanup
  invoke void @OPENSSL_free(ptr noundef null)
          to label %_ZN4bssl5ArrayIiED2Ev.exit42.i unwind label %bb.an

.preheader.i:                                     ; preds = %bb.aj, %_ZN4bssl5ArrayIiE4InitEm.exit.i
  %i.cp = zext nneg i32 %.025.lcssa.i to i64
  br label %_ZN4bssl5ArrayIiEixEm.exit41.i

.lr.ph61.i:                                       ; preds = %_ZN4bssl5ArrayIiE4InitEm.exit.i, %bb.aj
  %.160.i = phi ptr [ %.1.i, %bb.aj ], [ %.158.i, %_ZN4bssl5ArrayIiE4InitEm.exit.i ] ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.160.i, i64 8
  %i.cr = load i8, ptr %i.cq, align 8, !tbaa !46, !range !35, !noundef !36
  %i.cs = trunc nuw i8 %i.cr to i1
  br i1 %i.cs, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %.lr.ph61.i
  %i.ct = load ptr, ptr %.160.i, align 8, !tbaa !50 ; 2 uses
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %_ZN4bssl5ArrayIiEixEm.exit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 28
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !19 ; 2 uses
  %i.cx = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.cw)
  %i.cy = icmp eq i32 %i.cx, 1
  br i1 %i.cy, label %.split.i39.i, label %_ZN4bssl5ArrayIiEixEm.exit.i

.split.i39.i:                                     ; preds = %bb.ah
  %i.cz = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.cw, i1 true) ; 2 uses
  %i.da = icmp samesign ult i32 %i.cz, 6
  br i1 %i.da, label %switch.lookup270, label %_ZN4bssl5ArrayIiEixEm.exit.i

switch.lookup270:                                 ; preds = %.split.i39.i
  %i.db = zext nneg i32 %i.cz to i64
  %switch.gep271 = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZN4bsslL21ssl_cipher_apply_ruleEjPKNS_15cipher_alias_stEiibPPNS_15cipher_order_stES5_, i64 %i.db
  %switch.load272 = load i16, ptr %switch.gep271, align 2
  %switch.ext273 = zext i16 %switch.load272 to i64 ; 2 uses
  %i.dc = icmp samesign ugt i64 %.sroa.11.0.i, %switch.ext273
  br i1 %i.dc, label %_ZN4bssl5ArrayIiEixEm.exit.i, label %bb.ai

bb.ai:                                            ; preds = %switch.lookup270
  tail call void @abort() #21
  unreachable

_ZN4bssl5ArrayIiEixEm.exit.i:                     ; preds = %.split.i39.i, %switch.lookup270, %bb.ah, %bb.ag
  %.07.i3867.i = phi i64 [ %switch.ext273, %switch.lookup270 ], [ 0, %bb.ag ], [ 0, %.split.i39.i ], [ 0, %bb.ah ]
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %.07.i3867.i ; 2 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !68
  %i.df = add nsw i32 %i.de, 1
  store i32 %i.df, ptr %i.dd, align 4, !tbaa !68
  br label %bb.aj

bb.aj:                                            ; preds = %_ZN4bssl5ArrayIiEixEm.exit.i, %.lr.ph61.i
  %i.dg = getelementptr inbounds nuw i8, ptr %.160.i, i64 16
  %.1.i = load ptr, ptr %i.dg, align 8, !tbaa !48 ; 2 uses
  %.not28.i = icmp eq ptr %.1.i, null
  br i1 %.not28.i, label %.preheader.i, label %.lr.ph61.i, !llvm.loop !72

_ZN4bssl5ArrayIiEixEm.exit41.i:                   ; preds = %bb.al, %.preheader.i
  %indvars.iv = phi i64 [ %i.cp, %.preheader.i ], [ %indvars.iv.next, %bb.al ] ; 4 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !68
  %i.dj = icmp sgt i32 %i.di, 0
  br i1 %i.dj, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %_ZN4bssl5ArrayIiEixEm.exit41.i
  %i.dk = trunc nuw nsw i64 %indvars.iv to i32
  tail call fastcc void @_ZN4bsslL21ssl_cipher_apply_ruleEjPKNS_15cipher_alias_stEiibPPNS_15cipher_order_stES5_(i32 noundef 0, ptr noundef null, i32 noundef 4, i32 noundef %i.dk, i1 noundef zeroext false, ptr noundef nonnull %1, ptr noundef nonnull %2)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %_ZN4bssl5ArrayIiEixEm.exit41.i
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.dl = icmp sgt i64 %indvars.iv, 0
  br i1 %i.dl, label %_ZN4bssl5ArrayIiEixEm.exit41.i, label %_ZN4bssl5ArrayIiE4InitEm.exit.thread.i, !llvm.loop !73

_ZN4bssl5ArrayIiE4InitEm.exit.thread.i:           ; preds = %bb.al, %.noexc35.i
  invoke void @OPENSSL_free(ptr noundef %i.ck)
          to label %_ZN4bsslL24ssl_cipher_strength_sortEPPNS_15cipher_order_stES2_.exit unwind label %bb.am

bb.am:                                            ; preds = %_ZN4bssl5ArrayIiE4InitEm.exit.thread.i
  %i.dm = landingpad { ptr, i32 }
          catch ptr null
  %i.dn = extractvalue { ptr, i32 } %i.dm, 0
  tail call void @__clang_call_terminate(ptr %i.dn) #21
  unreachable

bb.an:                                            ; preds = %bb.af
  %i.do = landingpad { ptr, i32 }
          catch ptr null
  %i.dp = extractvalue { ptr, i32 } %i.do, 0
  tail call void @__clang_call_terminate(ptr %i.dp) #21
  unreachable

_ZN4bssl5ArrayIiED2Ev.exit42.i:                   ; preds = %bb.af
  resume { ptr, i32 } %i.co

_ZN4bsslL24ssl_cipher_strength_sortEPPNS_15cipher_order_stES2_.exit: ; preds = %_ZN4bssl5ArrayIiE4InitEm.exit.thread.i
  br i1 %.not176, label %.loopexit252, label %.preheader178

.preheader178:                                    ; preds = %_ZN4bsslL24ssl_cipher_strength_sortEPPNS_15cipher_order_stES2_.exit
  %i.dq = load i8, ptr %.3119.us, align 1, !tbaa !51 ; 3 uses
  %.not134206 = icmp eq i8 %i.dq, 0
  br i1 %.not134206, label %.critedge12.jt3, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader178
  br i1 %3, label %_ZN4bsslL24is_cipher_list_separatorEcb.exit144.us, label %.lr.ph.split

_ZN4bsslL24is_cipher_list_separatorEcb.exit144.us: ; preds = %.lr.ph, %_ZN4bsslL24is_cipher_list_separatorEcb.exit144.thread166.us
  %i.dr = phi i8 [ %i.du, %_ZN4bsslL24is_cipher_list_separatorEcb.exit144.thread166.us ], [ %i.dq, %.lr.ph ]
  %.4120207.us = phi ptr [ %i.dt, %_ZN4bsslL24is_cipher_list_separatorEcb.exit144.thread166.us ], [ %.3119.us, %.lr.ph ] ; 2 uses
  %i.ds = icmp eq i8 %i.dr, 58
  br i1 %i.ds, label %.critedge12.jt3, label %_ZN4bsslL24is_cipher_list_separatorEcb.exit144.thread166.us

_ZN4bsslL24is_cipher_list_separatorEcb.exit144.thread166.us: ; preds = %_ZN4bsslL24is_cipher_list_separatorEcb.exit144.us
  %i.dt = getelementptr inbounds nuw i8, ptr %.4120207.us, i64 1 ; 3 uses
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !51  ; 2 uses
  %.not134.us = icmp eq i8 %i.du, 0
  br i1 %.not134.us, label %.critedge12.jt3, label %_ZN4bsslL24is_cipher_list_separatorEcb.exit144.us, !llvm.loop !74

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZN4bsslL24is_cipher_list_separatorEcb.exit144.thread166
  %i.dv = phi i8 [ %i.dx, %_ZN4bsslL24is_cipher_list_separatorEcb.exit144.thread166 ], [ %i.dq, %.lr.ph ]
  %.4120207 = phi ptr [ %i.dw, %_ZN4bsslL24is_cipher_list_separatorEcb.exit144.thread166 ], [ %.3119.us, %.lr.ph ] ; 5 uses
  switch i8 %i.dv, label %_ZN4bsslL24is_cipher_list_separatorEcb.exit144.thread166 [
    i8 58, label %.critedge12.jt3
    i8 59, label %.critedge12.jt3
    i8 32, label %.critedge12.jt3
    i8 44, label %.critedge12.jt3
  ]

_ZN4bsslL24is_cipher_list_separatorEcb.exit144.thread166: ; preds = %.lr.ph.split
  %i.dw = getelementptr inbounds nuw i8, ptr %.4120207, i64 1 ; 3 uses
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !51  ; 2 uses
  %.not134 = icmp eq i8 %i.dx, 0
  br i1 %.not134, label %.critedge12.jt3, label %.lr.ph.split, !llvm.loop !74

bb.ao:                                            ; preds = %.thread159
  br i1 %.2, label %.critedge12.jt3, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call fastcc void @_ZN4bsslL21ssl_cipher_apply_ruleEjPKNS_15cipher_alias_stEiibPPNS_15cipher_order_stES5_(i32 noundef %.3102, ptr noundef nonnull %4, i32 noundef %.0107149, i32 noundef -1, i1 noundef zeroext %i.h, ptr noundef %1, ptr noundef %2)
  br label %.critedge12.jt3

.critedge12.jt3:                                  ; preds = %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %.lr.ph.split, %_ZN4bsslL24is_cipher_list_separatorEcb.exit144.thread166, %_ZN4bsslL24is_cipher_list_separatorEcb.exit144.us, %_ZN4bsslL24is_cipher_list_separatorEcb.exit144.thread166.us, %.preheader178, %bb.ap, %bb.ao
  %.6.jt3 = phi ptr [ %.4120207.us, %_ZN4bsslL24is_cipher_list_separatorEcb.exit144.us ], [ %.3119, %bb.ao ], [ %.3119.us, %.preheader178 ], [ %.3119, %bb.ap ], [ %i.dt, %_ZN4bsslL24is_cipher_list_separatorEcb.exit144.thread166.us ], [ %.4120207, %.lr.ph.split ], [ %.4120207, %.lr.ph.split ], [ %.4120207, %.lr.ph.split ], [ %.4120207, %.lr.ph.split ], [ %i.dw, %_ZN4bsslL24is_cipher_list_separatorEcb.exit144.thread166 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %.backedge

.loopexit252.sink.split.loopexit276:              ; preds = %bb.r, %bb.aa
  br label %.loopexit252.sink.split

.loopexit252.sink.split:                          ; preds = %bb.y, %bb.t, %bb.r, %.loopexit252.sink.split.loopexit276
  %.sink = phi i32 [ 908, %bb.r ], [ 974, %.loopexit252.sink.split.loopexit276 ], [ 908, %bb.t ], [ 957, %bb.y ]
  tail call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 158, ptr noundef nonnull @.str, i32 noundef %.sink)
  br label %.loopexit252

.loopexit252:                                     ; preds = %_ZN4bsslL24ssl_cipher_strength_sortEPPNS_15cipher_order_stES2_.exit, %.loopexit252.sink.split
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %.thread169

.backedge:                                        ; preds = %bb.f, %bb.g, %bb.n, %_ZN4bsslL24is_cipher_list_separatorEcb.exit.thread, %.critedge12.jt3
  %.7.jt3 = phi ptr [ %i.k, %bb.f ], [ %i.l, %bb.g ], [ %i.n, %bb.n ], [ %i.s, %_ZN4bsslL24is_cipher_list_separatorEcb.exit.thread ], [ %.6.jt3, %.critedge12.jt3 ] ; 2 uses
  %.1115.jt3 = phi i8 [ 0, %bb.f ], [ 1, %bb.g ], [ 1, %bb.n ], [ %.0114218, %_ZN4bsslL24is_cipher_list_separatorEcb.exit.thread ], [ %.0114218, %.critedge12.jt3 ] ; 2 uses
  %.1113.jt3 = phi i1 [ %.0112219, %bb.f ], [ %.0112219, %bb.g ], [ true, %bb.n ], [ %.0112219, %_ZN4bsslL24is_cipher_list_separatorEcb.exit.thread ], [ %.0112219, %.critedge12.jt3 ]
  %i.dy = load i8, ptr %.7.jt3, align 1, !tbaa !51 ; 2 uses
  %i.dz = icmp eq i8 %i.dy, 0
  br i1 %i.dz, label %._crit_edge, label %bb.b, !llvm.loop !58

._crit_edge:                                      ; preds = %.backedge
  %i.ea = trunc nuw i8 %.1115.jt3 to i1
  br i1 %i.ea, label %bb.aq, label %.thread169

bb.aq:                                            ; preds = %._crit_edge
  tail call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 158, ptr noundef nonnull @.str, i32 noundef 993)
  br label %.thread169

.thread169:                                       ; preds = %bb.a, %.loopexit252, %bb.i, %bb.p, %._crit_edge, %bb.aq
  %.3124 = phi i1 [ false, %bb.aq ], [ false, %bb.i ], [ true, %._crit_edge ], [ false, %bb.p ], [ true, %bb.a ], [ false, %.loopexit252 ]
  ret i1 %.3124
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10unique_ptrIN4bssl23SSLCipherPreferenceListENS0_8internal7DeleterEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !56     ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZN4bssl8internal7DeleterclINS_23SSLCipherPreferenceListEEEvPT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21
  invoke void @OPENSSL_free(ptr noundef %i.c)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i, label %_ZN4bssl23SSLCipherPreferenceListD2Ev.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @OPENSSL_sk_free(ptr noundef nonnull %i.d)
          to label %_ZN4bssl23SSLCipherPreferenceListD2Ev.exit.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #21
  unreachable

bb.f:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #21
  unreachable

_ZN4bssl23SSLCipherPreferenceListD2Ev.exit.i.i.i: ; preds = %bb.d, %bb.c
  invoke void @OPENSSL_free(ptr noundef nonnull %i.a)
          to label %_ZN4bssl8internal7DeleterclINS_23SSLCipherPreferenceListEEEvPT_.exit unwind label %bb.g

_ZN4bssl8internal7DeleterclINS_23SSLCipherPreferenceListEEEvPT_.exit: ; preds = %_ZN4bssl23SSLCipherPreferenceListD2Ev.exit.i.i.i, %bb.a
  ret void

bb.g:                                             ; preds = %_ZN4bssl23SSLCipherPreferenceListD2Ev.exit.i.i.i
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #21
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 0, 5) i32 @_ZN4bssl28ssl_cipher_auth_mask_for_keyEPK11evp_pkey_stb(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @EVP_PKEY_id(ptr noundef %0)
  switch i32 %i.a, label %bb.d [
    i32 6, label %bb.b
    i32 408, label %bb.c
    i32 949, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = select i1 %1, i32 3, i32 2
  br label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.a
  %i.c = select i1 %1, i32 4, i32 0
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.0 = phi i32 [ %i.c, %bb.c ], [ %i.b, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare i32 @EVP_PKEY_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZN4bssl32ssl_cipher_uses_certificate_authEPK13ssl_cipher_st(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
end_hunk_0
