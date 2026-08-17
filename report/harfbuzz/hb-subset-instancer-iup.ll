inline.NumInlined: 278
inline.NumDeleted: 155
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_Z18iup_delta_optimizeRK22contour_point_vector_tRK11hb_vector_tIiLb0EES5_RS2_IbLb0EER13iup_scratch_td:bb.a
bb.az:                                            ; preds = %bb.aw
  br i1 %i.jc, label %bb.ba, label %.loopexit.i.i

bb.ba:                                            ; preds = %bb.az
  %i.jm = sub nsw i32 %.078.1.i.i, %.076..077.1.i.i
  %i.jn = call i32 @llvm.abs.i32(i32 %i.jm, i1 true)
  %i.jo = uitofp nneg i32 %i.jn to double
  %i.jp = fcmp olt double %5, %i.jo
  br i1 %i.jp, label %bb.bb, label %.loopexit.i.i

bb.bb:                                            ; preds = %bb.ba
  %i.jq = sitofp i32 %.078.1.i.i to double
  %i.jr = fsub double %i.jq, %5
  %i.js = sitofp i32 %.076..077.1.i.i to double
  %i.jt = fcmp olt double %i.jr, %i.js
  %i.ju = icmp slt i32 %.076..077.1.i.i, %.077..076.1.i.i
  %not..not92.1.i.i = xor i1 %i.ju, %i.jt
  br i1 %not..not92.1.i.i, label %.critedge96.i.i, label %.loopexit.i.i

bb.bc:                                            ; preds = %.critedge.i.i
  %i.jv = sub nsw i32 %.076..077.1.i.i, %.077..076.1.i.i
  %i.jw = call i32 @llvm.abs.i32(i32 %i.jv, i1 true)
  %i.jx = uitofp nneg i32 %i.jw to double
  %i.jy = fcmp olt double %5, %i.jx
  br i1 %i.jy, label %bb.bd, label %.loopexit.i.i

bb.bd:                                            ; preds = %bb.bc
  %i.jz = call i32 @llvm.abs.i32(i32 %.078.1.i.i, i1 true)
  %i.ka = uitofp nneg i32 %i.jz to double
  %i.kb = fcmp olt double %5, %i.ka
  br i1 %i.kb, label %.critedge96.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %.split.1.i.i, %bb.ay, %bb.ax, %bb.av, %bb.au, %.critedge96.i.i
  %i.kc = phi i32 [ %i.gd, %bb.bd ], [ %i.gd, %bb.bc ], [ %i.gd, %bb.bb ], [ %i.gd, %bb.ba ], [ %i.gd, %bb.az ], [ %i.gd, %.split.1.i.i ], [ %i.gd, %bb.ay ], [ %i.gd, %bb.ax ], [ %i.gd, %bb.av ], [ %i.gd, %bb.au ], [ -1, %.critedge96.i.i ] ; 3 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1
  %i.kd = icmp sgt i64 %indvars.iv.i.i, 0
  br i1 %i.kd, label %bb.af, label %_ZL29_iup_contour_bound_forced_set10hb_array_tIK15contour_point_tES_IKiES4_R13hb_bit_page_td.exit.i, !llvm.loop !50

_ZL29_iup_contour_bound_forced_set10hb_array_tIK15contour_point_tES_IKiES4_R13hb_bit_page_td.exit.i: ; preds = %.loopexit.i.i
  store i32 %i.kc, ptr %6, align 8
  %i.ke = load i32, ptr %i.dj, align 8, !tbaa !25 ; 2 uses
  %i.kf = icmp slt i32 %i.ke, 0
  br i1 %i.kf, label %bb.be, label %_ZN11hb_vector_tIjLb0EE5resetEv.exit.i, !prof !12

bb.be:                                            ; preds = %_ZL29_iup_contour_bound_forced_set10hb_array_tIK15contour_point_tES_IKiES4_R13hb_bit_page_td.exit.i
  %i.kg = xor i32 %i.ke, -1
  store i32 %i.kg, ptr %i.dj, align 8, !tbaa !25
  br label %_ZN11hb_vector_tIjLb0EE5resetEv.exit.i

_ZN11hb_vector_tIjLb0EE5resetEv.exit.i:           ; preds = %bb.be, %_ZL29_iup_contour_bound_forced_set10hb_array_tIK15contour_point_tES_IKiES4_R13hb_bit_page_td.exit.i
  store i32 0, ptr %i.dk, align 4, !tbaa !28
  %i.kh = load i32, ptr %i.dl, align 8, !tbaa !51 ; 2 uses
  %i.ki = icmp slt i32 %i.kh, 0
  br i1 %i.ki, label %bb.bf, label %_ZN11hb_vector_tIiLb0EE5resetEv.exit.i, !prof !12

bb.bf:                                            ; preds = %_ZN11hb_vector_tIjLb0EE5resetEv.exit.i
  %i.kj = xor i32 %i.kh, -1
  store i32 %i.kj, ptr %i.dl, align 8, !tbaa !51
  br label %_ZN11hb_vector_tIiLb0EE5resetEv.exit.i

_ZN11hb_vector_tIiLb0EE5resetEv.exit.i:           ; preds = %bb.bf, %_ZN11hb_vector_tIjLb0EE5resetEv.exit.i
  store i32 0, ptr %i.dm, align 4, !tbaa !42
  %i.kk = icmp eq i32 %i.kc, -1
  br i1 %i.kk, label %bb.bg, label %bb.cg

bb.bg:                                            ; preds = %_ZN11hb_vector_tIiLb0EE5resetEv.exit.i
  %i.kl = load i64, ptr %i.di, align 8, !tbaa !47 ; 3 uses
  %.not.not.i.i.i = icmp ne i64 %i.kl, 0
  %i.km = load i64, ptr %i.dn, align 8            ; 3 uses
  %.not.1.not.i.i.i = icmp ne i64 %i.km, 0
  %or.cond.not27.i.i.i = select i1 %.not.not.i.i.i, i1 true, i1 %.not.1.not.i.i.i
  %i.kn = load i64, ptr %i.do, align 8            ; 3 uses
  %.not.2.not.i.i.i = icmp ne i64 %i.kn, 0
  %or.cond12.not26.i.i.i = select i1 %or.cond.not27.i.i.i, i1 true, i1 %.not.2.not.i.i.i
  %i.ko = load i64, ptr %i.dp, align 8            ; 3 uses
  %.not.3.not.i.i.i = icmp ne i64 %i.ko, 0
  %or.cond14.not25.i.i.i = select i1 %or.cond12.not26.i.i.i, i1 true, i1 %.not.3.not.i.i.i
  %i.kp = load i64, ptr %i.dq, align 8            ; 3 uses
  %.not.4.not.i.i.i = icmp ne i64 %i.kp, 0
  %or.cond16.not24.i.i.i = select i1 %or.cond14.not25.i.i.i, i1 true, i1 %.not.4.not.i.i.i
  %i.kq = load i64, ptr %i.dr, align 8            ; 3 uses
  %.not.5.not.i.i.i = icmp ne i64 %i.kq, 0
  %or.cond18.not23.i.i.i = select i1 %or.cond16.not24.i.i.i, i1 true, i1 %.not.5.not.i.i.i
  %i.kr = load i64, ptr %i.ds, align 8            ; 3 uses
  %.not.6.not.i.i.i = icmp ne i64 %i.kr, 0
  %or.cond20.not.i.i.i = select i1 %or.cond18.not23.i.i.i, i1 true, i1 %.not.6.not.i.i.i
  %i.ks = load i64, ptr %i.dt, align 8            ; 3 uses
  %.not.7.not.i.i.i = icmp ne i64 %i.ks, 0
  %or.cond22.i.i.i = select i1 %or.cond20.not.i.i.i, i1 true, i1 %.not.7.not.i.i.i
  br i1 %or.cond22.i.i.i, label %_ZNK13hb_bit_page_t8is_emptyEv.exit.thread15.i, label %_ZNK13hb_bit_page_t8is_emptyEv.exit.thread.i

_ZNK13hb_bit_page_t8is_emptyEv.exit.thread.i:     ; preds = %bb.bg
  store i32 0, ptr %6, align 8, !tbaa !52
  br label %bb.cg

_ZNK13hb_bit_page_t8is_emptyEv.exit.thread15.i:   ; preds = %bb.bg
  %.not.i186.i = icmp eq i64 %i.ks, 0
  br i1 %.not.i186.i, label %bb.bh, label %bb.bo

bb.bh:                                            ; preds = %_ZNK13hb_bit_page_t8is_emptyEv.exit.thread15.i
  %.not.1.i188.i = icmp eq i64 %i.kr, 0
  br i1 %.not.1.i188.i, label %bb.bi, label %bb.bo

bb.bi:                                            ; preds = %bb.bh
  %.not.2.i.i = icmp eq i64 %i.kq, 0
  br i1 %.not.2.i.i, label %bb.bj, label %bb.bo

bb.bj:                                            ; preds = %bb.bi
  %.not.3.i.i = icmp eq i64 %i.kp, 0
  br i1 %.not.3.i.i, label %bb.bk, label %bb.bo

bb.bk:                                            ; preds = %bb.bj
  %.not.4.i.i = icmp eq i64 %i.ko, 0
  br i1 %.not.4.i.i, label %bb.bl, label %bb.bo

bb.bl:                                            ; preds = %bb.bk
  %.not.5.i.i = icmp eq i64 %i.kn, 0
  br i1 %.not.5.i.i, label %bb.bm, label %bb.bo

bb.bm:                                            ; preds = %bb.bl
  %.not.6.i.i = icmp eq i64 %i.km, 0
  br i1 %.not.6.i.i, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %.not.7.i.i = icmp eq i64 %i.kl, 0
  br i1 %.not.7.i.i, label %_ZNK13hb_bit_page_t7get_maxEv.exit.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %_ZNK13hb_bit_page_t8is_emptyEv.exit.thread15.i
  %.lcssa.i.i = phi i64 [ %i.ks, %_ZNK13hb_bit_page_t8is_emptyEv.exit.thread15.i ], [ %i.kr, %bb.bh ], [ %i.kq, %bb.bi ], [ %i.kp, %bb.bj ], [ %i.ko, %bb.bk ], [ %i.kn, %bb.bl ], [ %i.km, %bb.bm ], [ %i.kl, %bb.bn ]
  %.07.lcssa12.wide.i.i = phi i32 [ 448, %_ZNK13hb_bit_page_t8is_emptyEv.exit.thread15.i ], [ 384, %bb.bh ], [ 320, %bb.bi ], [ 256, %bb.bj ], [ 192, %bb.bk ], [ 128, %bb.bl ], [ 64, %bb.bm ], [ 0, %bb.bn ]
  %i.kt = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.lcssa.i.i, i1 true)
  %i.ku = trunc nuw nsw i64 %i.kt to i32
  %i.kv = or disjoint i32 %.07.lcssa12.wide.i.i, %i.ku
  %i.kw = xor i32 %i.kv, 63
  br label %_ZNK13hb_bit_page_t7get_maxEv.exit.i

_ZNK13hb_bit_page_t7get_maxEv.exit.i:             ; preds = %bb.bo, %bb.bn
  %i.kx = phi i32 [ %i.kw, %bb.bo ], [ 0, %bb.bn ]
  %i.ky = sub nsw i32 %.085116.i.i, %i.kx         ; 6 uses
  %i.kz = icmp slt i32 %i.ky, 0
  br i1 %i.kz, label %_ZL21_iup_contour_optimize10hb_array_tIK15contour_point_tES_IKiES4_S_IbEdR13iup_scratch_t.exit.thread116, label %bb.bp

bb.bp:                                            ; preds = %_ZNK13hb_bit_page_t7get_maxEv.exit.i
  %i.la = load i32, ptr %i.eg, align 8, !tbaa !51 ; 2 uses
  %i.lb = icmp slt i32 %i.la, 0
  br i1 %i.lb, label %bb.bq, label %_ZN11hb_vector_tIiLb0EE5resetEv.exit189.i, !prof !12

bb.bq:                                            ; preds = %bb.bp
  %i.lc = xor i32 %i.la, -1
  store i32 %i.lc, ptr %i.eg, align 8, !tbaa !51
  br label %_ZN11hb_vector_tIiLb0EE5resetEv.exit189.i

_ZN11hb_vector_tIiLb0EE5resetEv.exit189.i:        ; preds = %bb.bq, %bb.bp
  store i32 0, ptr %i.eh, align 4, !tbaa !42
  %i.ld = load i32, ptr %i.ei, align 8, !tbaa !51 ; 2 uses
  %i.le = icmp slt i32 %i.ld, 0
  br i1 %i.le, label %bb.br, label %_ZN11hb_vector_tIiLb0EE5resetEv.exit190.i, !prof !12

bb.br:                                            ; preds = %_ZN11hb_vector_tIiLb0EE5resetEv.exit189.i
  %i.lf = xor i32 %i.ld, -1
  store i32 %i.lf, ptr %i.ei, align 8, !tbaa !51
  br label %_ZN11hb_vector_tIiLb0EE5resetEv.exit190.i

_ZN11hb_vector_tIiLb0EE5resetEv.exit190.i:        ; preds = %bb.br, %_ZN11hb_vector_tIiLb0EE5resetEv.exit189.i
  store i32 0, ptr %i.ej, align 4, !tbaa !42
  %i.lg = load i32, ptr %i.ek, align 8, !tbaa !55 ; 2 uses
  %i.lh = icmp slt i32 %i.lg, 0
  br i1 %i.lh, label %bb.bs, label %bb.bt, !prof !12

bb.bs:                                            ; preds = %_ZN11hb_vector_tIiLb0EE5resetEv.exit190.i
  %i.li = xor i32 %i.lg, -1
  store i32 %i.li, ptr %i.ek, align 8, !tbaa !55
  br label %bb.bt

bb.bt:                                            ; preds = %_ZN11hb_vector_tIiLb0EE5resetEv.exit190.i, %bb.bs
  store i32 0, ptr %i.el, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.em, i8 0, i64 64, i1 false), !tbaa !47
  store i32 0, ptr %7, align 8, !tbaa !52
  %i.lj = call noundef zeroext i1 @_ZN11hb_vector_tI15contour_point_tLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.ek, i32 noundef %.sroa.speculated.i.i, i1 noundef zeroext false)
  br i1 %i.lj, label %bb.bu, label %.critedge170.critedge.i, !prof !56

bb.bu:                                            ; preds = %bb.bt
  store i32 %.sroa.speculated.i.i, ptr %i.el, align 4, !tbaa !8
  %i.lk = urem i32 %i.ky, %.sroa.speculated.i.i   ; 4 uses
  %i.ll = zext nneg i32 %i.lk to i64              ; 2 uses
  %.not.i.i96 = icmp eq i32 %i.lk, 0
  br i1 %.not.i.i96, label %_ZL9hb_memcpyPvPKvm.exit.i, label %bb.bv, !prof !12

bb.bv:                                            ; preds = %bb.bu
  %i.lm = mul nuw nsw i32 %i.lk, 12
  %i.ln = zext nneg i32 %i.lm to i64
  %i.lo = getelementptr inbounds nuw [12 x i8], ptr %i.fa, i64 %.sroa.3.8.insert.ext.i.i84
  %i.lp = sub nsw i64 0, %i.ll
  %i.lq = getelementptr inbounds [12 x i8], ptr %i.lo, i64 %i.lp
  %i.lr = load ptr, ptr %i.en, align 8, !tbaa !30
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lr, ptr nonnull readonly align 1 %i.lq, i64 range(i64 0, 51539607541) %i.ln, i1 false), !alias.scope !57
  br label %_ZL9hb_memcpyPvPKvm.exit.i

_ZL9hb_memcpyPvPKvm.exit.i:                       ; preds = %bb.bu, %bb.bv
  %i.ls = sub nuw nsw i32 %.sroa.speculated.i.i, %i.lk
  %i.lt = mul nuw nsw i32 %i.ls, 12
  %i.lu = zext nneg i32 %i.lt to i64
  %i.lv = load ptr, ptr %i.en, align 8, !tbaa !30
  %i.lw = getelementptr inbounds nuw [12 x i8], ptr %i.lv, i64 %i.ll
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lw, ptr nonnull readonly align 1 %i.fa, i64 range(i64 0, 51539607541) %i.lu, i1 false), !alias.scope !61
  %i.lx = call fastcc noundef zeroext i1 @_ZL12rotate_arrayIiTnPN12hb_enable_ifIXsr3std21is_trivially_copyableIT_EE5valueEvE4typeELPv0EEbRK10hb_array_tIKS1_EiR11hb_vector_tIS1_Lb0EE(ptr nonnull readonly %i.fd, i32 %.sroa.speculated.i.i, i32 noundef %i.ky, ptr noundef nonnull align 8 dereferenceable(16) %i.eg)
  br i1 %i.lx, label %bb.bw, label %.critedge170.critedge.i

bb.bw:                                            ; preds = %_ZL9hb_memcpyPvPKvm.exit.i
  %i.ly = call fastcc noundef zeroext i1 @_ZL12rotate_arrayIiTnPN12hb_enable_ifIXsr3std21is_trivially_copyableIT_EE5valueEvE4typeELPv0EEbRK10hb_array_tIKS1_EiR11hb_vector_tIS1_Lb0EE(ptr readonly %i.fg, i32 %.sroa.speculated.i.i, i32 noundef %i.ky, ptr noundef nonnull align 8 dereferenceable(16) %i.ei)
  br i1 %i.ly, label %bb.bx, label %.critedge170.critedge.i

bb.bx:                                            ; preds = %bb.bw
  %i.lz = call fastcc noundef zeroext i1 @_ZL10rotate_setRK13hb_bit_page_tijRS_(ptr noundef nonnull align 8 dereferenceable(72) %6, i32 noundef %i.ky, i32 noundef %.sroa.speculated.i.i, ptr noundef nonnull align 8 dereferenceable(72) %7)
  br i1 %i.lz, label %bb.by, label %.critedge170.critedge.i

bb.by:                                            ; preds = %bb.bx
  %i.ma = call fastcc noundef zeroext i1 @_ZL24_iup_contour_optimize_dpRK22contour_point_vector_tRK11hb_vector_tIiLb0EES5_RK13hb_bit_page_tdjRS2_IjLb0EERS3_RS2_IdLb0EESD_(ptr noundef nonnull align 8 dereferenceable(16) %i.ek, ptr noundef nonnull align 8 dereferenceable(16) %i.eg, ptr noundef nonnull align 8 dereferenceable(16) %i.ei, ptr noundef nonnull align 8 dereferenceable(72) %7, double noundef %i.dh, i32 noundef %.sroa.speculated.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.dj, ptr noundef nonnull align 8 dereferenceable(16) %i.dl, ptr noundef nonnull align 8 dereferenceable(16) %i.ea, ptr noundef nonnull align 8 dereferenceable(16) %i.eb)
  br i1 %i.ma, label %bb.bz, label %.critedge170.critedge.i

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.eo, i8 0, i64 64, i1 false), !tbaa !47
  store i32 -1, ptr %8, align 8, !tbaa !52
  %i.mb = load ptr, ptr %i.ee, align 8, !tbaa !40
  br label %bb.ca

bb.ca:                                            ; preds = %bb.ca, %bb.bz
  %.015651.i = phi i32 [ %.085116.i.i, %bb.bz ], [ %i.mn, %bb.ca ] ; 3 uses
  %i.mc = and i32 %.015651.i, 63
  %i.md = zext nneg i32 %i.mc to i64
  %i.me = shl nuw i64 1, %i.md
  %i.mf = lshr i32 %.015651.i, 6
  %i.mg = and i32 %i.mf, 7
  %i.mh = zext nneg i32 %i.mg to i64
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %i.mh ; 2 uses
  %i.mj = load i64, ptr %i.mi, align 8, !tbaa !47
  %i.mk = or i64 %i.me, %i.mj
  store i64 %i.mk, ptr %i.mi, align 8, !tbaa !47
  %i.ml = sext i32 %.015651.i to i64
  %i.mm = getelementptr inbounds [4 x i8], ptr %i.mb, i64 %i.ml
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !38 ; 2 uses
  %.not166.i = icmp eq i32 %i.mn, -1
  br i1 %.not166.i, label %bb.cb, label %bb.ca, !llvm.loop !65

bb.cb:                                            ; preds = %bb.ca
  %i.mo = call noundef zeroext i1 @_ZNK13hb_bit_page_t8is_emptyEv(ptr noundef nonnull align 8 dereferenceable(72) %8)
  br i1 %i.mo, label %bb.cf, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.mp = call noundef i32 @_ZNK13hb_bit_page_t14get_populationEv(ptr noundef nonnull align 8 dereferenceable(72) %6)
  %i.mq = call noundef i32 @_ZNK13hb_bit_page_t14get_populationEv(ptr noundef nonnull align 8 dereferenceable(72) %8)
  %i.mr = icmp ugt i32 %i.mp, %i.mq
  br i1 %i.mr, label %bb.cf, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #8
  %i.ms = call fastcc { ptr, i32 } @_ZL5beginIR13hb_bit_page_tTnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E5beginEEOS3_(ptr noundef nonnull align 8 dereferenceable(72) %8) ; 2 uses
  %.fca.0.extract34.i = extractvalue { ptr, i32 } %i.ms, 0
  %.fca.1.extract35.i = extractvalue { ptr, i32 } %i.ms, 1 ; 3 uses
  store ptr %.fca.0.extract34.i, ptr %9, align 8
  store i32 %.fca.1.extract35.i, ptr %.sroa.237.0..sroa_idx.i, align 8
  %.not2852.i = icmp eq i32 %.fca.1.extract35.i, -1
  br i1 %.not2852.i, label %._crit_edge55.i, label %.lr.ph54.i

._crit_edge55.i:                                  ; preds = %.lr.ph54.i, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  %i.mt = load i32, ptr %i.ep, align 8, !tbaa !13 ; 2 uses
  %i.mu = icmp slt i32 %i.mt, 0
  br i1 %i.mu, label %bb.ce, label %iter.check, !prof !12

bb.ce:                                            ; preds = %._crit_edge55.i
  %i.mv = xor i32 %i.mt, -1
  store i32 %i.mv, ptr %i.ep, align 8, !tbaa !13
  br label %iter.check

iter.check:                                       ; preds = %bb.ce, %._crit_edge55.i
  store i32 0, ptr %i.eq, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #8
  store ptr %i.fk, ptr %10, align 8, !tbaa !66
  store i32 %.sroa.speculated.i.i, ptr %i.er, align 8, !tbaa !68
  store i32 0, ptr %i.es, align 4, !tbaa !69
  %i.mw = sub nsw i32 0, %i.ky
  call fastcc void @_ZL12rotate_arrayIbTnPN12hb_enable_ifIXsr3std21is_trivially_copyableIT_EE5valueEvE4typeELPv0EEbRK10hb_array_tIKS1_EiR11hb_vector_tIS1_Lb0EE(ptr noundef nonnull align 8 dereferenceable(16) %10, i32 noundef %i.mw, ptr noundef nonnull align 8 dereferenceable(16) %i.ep)
  %i.mx = load ptr, ptr %i.et, align 8, !tbaa !18 ; 8 uses
  %min.iters.check = icmp ult i32 %.sroa.speculated.i.i83, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.my = ptrtoaddr ptr %i.mx to i64
  %i.mz = add i64 %i.fi, %i.ez
  %i.na = sub i64 %i.my, %i.mz
  %diff.check = icmp ugt i64 %i.na, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check236 = icmp ult i32 %.sroa.speculated.i.i83, 32
  br i1 %min.iters.check236, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.nb = and i64 %.sroa.3.8.insert.ext.i.i84, 28
  %n.vec = and i64 %.sroa.3.8.insert.ext.i.i84, 4294967264 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mx, i64 %index ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 16
  %wide.load = load <16 x i8>, ptr %i.nc, align 1, !tbaa !45
  %wide.load237 = load <16 x i8>, ptr %i.nd, align 1, !tbaa !45
  %i.ne = getelementptr inbounds nuw i8, ptr %i.fk, i64 %index ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 16
  store <16 x i8> %wide.load, ptr %i.ne, align 1, !tbaa !45
  store <16 x i8> %wide.load237, ptr %i.nf, align 1, !tbaa !45
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ng = icmp eq i64 %index.next, %n.vec
  br i1 %i.ng, label %middle.block, label %vector.body, !llvm.loop !70

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %.sroa.3.8.insert.ext.i.i84
  br i1 %cmp.n, label %.critedge179.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.nb, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !73

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec238 = and i64 %.sroa.3.8.insert.ext.i.i84, 4294967292 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index239 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next241, %vec.epilog.vector.body ] ; 3 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.mx, i64 %index239
  %wide.load240 = load <4 x i8>, ptr %i.nh, align 1, !tbaa !45
  %i.ni = getelementptr inbounds nuw i8, ptr %i.fk, i64 %index239
  store <4 x i8> %wide.load240, ptr %i.ni, align 1, !tbaa !45
  %index.next241 = add nuw i64 %index239, 4       ; 2 uses
  %i.nj = icmp eq i64 %index.next241, %n.vec238
  br i1 %i.nj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !74

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n242 = icmp eq i64 %n.vec238, %.sroa.3.8.insert.ext.i.i84
  br i1 %cmp.n242, label %.critedge179.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv78.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec238, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.sroa.3.8.insert.ext.i.i84, 3 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv78.i.prol = phi i64 [ %indvars.iv.next79.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv78.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.nk = getelementptr inbounds nuw i8, ptr %i.mx, i64 %indvars.iv78.i.prol
  %i.nl = load i8, ptr %i.nk, align 1, !tbaa !45, !range !35, !noundef !36
  %i.nm = getelementptr inbounds nuw i8, ptr %i.fk, i64 %indvars.iv78.i.prol
  store i8 %i.nl, ptr %i.nm, align 1, !tbaa !45
  %indvars.iv.next79.i.prol = add nuw nsw i64 %indvars.iv78.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !75

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv78.i.unr = phi i64 [ %indvars.iv78.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next79.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.nn = sub nsw i64 %indvars.iv78.i.ph, %.sroa.3.8.insert.ext.i.i84
  %i.no = icmp ugt i64 %i.nn, -4
  br i1 %i.no, label %.critedge179.i, label %vec.epilog.scalar.ph

.lr.ph54.i:                                       ; preds = %bb.cd, %.lr.ph54.i
  %i.np = phi i32 [ %.pr.i, %.lr.ph54.i ], [ %.fca.1.extract35.i, %bb.cd ]
  %i.nq = zext i32 %i.np to i64
  %i.nr = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.nq
  store i8 1, ptr %i.nr, align 1, !tbaa !45
  %i.ns = call noundef nonnull align 8 dereferenceable(12) ptr @_ZNR9hb_iter_tIN13hb_bit_page_t6iter_tEjEppEv(ptr noundef nonnull align 1 dereferenceable(1) %9) ; 0 uses
  %.pr.i = load i32, ptr %.sroa.237.0..sroa_idx.i, align 8, !tbaa !77 ; 2 uses
  %.not28.i = icmp eq i32 %.pr.i, -1
  br i1 %.not28.i, label %._crit_edge55.i, label %.lr.ph54.i

.critedge179.i:                                   ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  br label %_ZL21_iup_contour_optimize10hb_array_tIK15contour_point_tES_IKiES4_S_IbEdR13iup_scratch_t.exit

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv78.i = phi i64 [ %indvars.iv.next79.i.3, %vec.epilog.scalar.ph ], [ %indvars.iv78.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.mx, i64 %indvars.iv78.i
  %i.nu = load i8, ptr %i.nt, align 1, !tbaa !45, !range !35, !noundef !36
  %i.nv = getelementptr inbounds nuw i8, ptr %i.fk, i64 %indvars.iv78.i
  store i8 %i.nu, ptr %i.nv, align 1, !tbaa !45
  %indvars.iv.next79.i = add nuw nsw i64 %indvars.iv78.i, 1 ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.mx, i64 %indvars.iv.next79.i
  %i.nx = load i8, ptr %i.nw, align 1, !tbaa !45, !range !35, !noundef !36
  %i.ny = getelementptr inbounds nuw i8, ptr %i.fk, i64 %indvars.iv.next79.i
  store i8 %i.nx, ptr %i.ny, align 1, !tbaa !45
  %indvars.iv.next79.i.1 = add nuw nsw i64 %indvars.iv78.i, 2 ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.mx, i64 %indvars.iv.next79.i.1
  %i.oa = load i8, ptr %i.nz, align 1, !tbaa !45, !range !35, !noundef !36
  %i.ob = getelementptr inbounds nuw i8, ptr %i.fk, i64 %indvars.iv.next79.i.1
  store i8 %i.oa, ptr %i.ob, align 1, !tbaa !45
  %indvars.iv.next79.i.2 = add nuw nsw i64 %indvars.iv78.i, 3 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN11hb_vector_tIjLb0EE5allocEjb:bb.a
  %.not20 = icmp ult i32 %.sroa.speculated, %i.e
  %or.cond = or i1 %.not19, %.not20
  br i1 %or.cond, label %.thread, label %bb.n

bb.d:                                             ; preds = %bb.b
  %.not = icmp ugt i32 %1, %i.a
  br i1 %.not, label %.preheader, label %bb.n, !prof !12

.preheader:                                       ; preds = %bb.d, %.preheader
  %.01442 = phi i32 [ %i.h, %.preheader ], [ %i.a, %bb.d ] ; 2 uses
  %i.f = lshr i32 %.01442, 1
  %i.g = add i32 %.01442, 8
  %i.h = add i32 %i.g, %i.f                       ; 3 uses
  %i.i = icmp ugt i32 %1, %i.h
  br i1 %i.i, label %.preheader, label %.thread, !llvm.loop !115

.thread:                                          ; preds = %.preheader, %bb.c
  %.11537 = phi i32 [ %.sroa.speculated, %bb.c ], [ %i.h, %.preheader ] ; 6 uses
  %i.j = icmp ugt i32 %.11537, 1073741823
  br i1 %i.j, label %.critedge, label %bb.e, !prof !12

.critedge:                                        ; preds = %.thread
  %i.k = xor i32 %i.a, -1
  br label %.sink.split

bb.e:                                             ; preds = %.thread
  %.not.i.i = icmp eq i32 %.11537, 0
  %.not48 = icmp eq i32 %i.a, 0                   ; 2 uses
  br i1 %.not.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %.not48, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !37
  tail call void @hb_free(ptr noundef %i.m) #8
  br label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread

bb.h:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !37   ; 2 uses
  br i1 %.not48, label %bb.i, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i.i = icmp eq ptr %i.o, null
  br i1 %.not9.i.i, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = shl nuw i32 %.11537, 2
  %i.q = zext i32 %i.p to i64
  %i.r = tail call ptr @hb_malloc(i64 noundef %i.q) #8 ; 4 uses
  %.not10.i.i = icmp eq ptr %i.r, null
  br i1 %.not10.i.i, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread52, label %bb.k, !prof !12

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !28   ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread, label %bb.l, !prof !12

bb.l:                                             ; preds = %bb.k
  %i.u = zext i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 2
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !37
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr readonly align 1 %i.w, i64 range(i64 0, 51539607541) %i.v, i1 false), !alias.scope !116
  br label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit: ; preds = %bb.h, %bb.i
  %i.x = phi ptr [ null, %bb.i ], [ %i.o, %bb.h ]
  %i.y = shl nuw i32 %.11537, 2
  %i.z = zext i32 %i.y to i64
  %i.aa = tail call ptr @hb_realloc(ptr noundef %i.x, i64 noundef %i.z) #8 ; 2 uses
  %.not22 = icmp eq ptr %i.aa, null
  br i1 %.not22, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread52, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread, !prof !82

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread52: ; preds = %bb.j, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit
  %i.ab = load i32, ptr %0, align 8, !tbaa !25    ; 2 uses
  %.not23 = icmp ugt i32 %.11537, %i.ab
  br i1 %.not23, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread52
  %i.ac = xor i32 %i.ab, -1
  br label %.sink.split

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread: ; preds = %bb.l, %bb.k, %bb.g, %bb.f, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit
  %.1.i.i41 = phi ptr [ %i.aa, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit ], [ null, %bb.f ], [ null, %bb.g ], [ %i.r, %bb.k ], [ %i.r, %bb.l ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.1.i.i41, ptr %i.ad, align 8, !tbaa !37
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread, %bb.m
  %.sink = phi i32 [ %i.ac, %bb.m ], [ %.11537, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread ], [ %i.k, %.critedge ]
  %.3.ph = phi i1 [ false, %bb.m ], [ true, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread ], [ false, %.critedge ]
  store i32 %.sink, ptr %0, align 8, !tbaa !25
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.c, %bb.d, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread52, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ true, %bb.d ], [ true, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread52 ], [ %.3.ph, %.sink.split ]
  ret i1 %.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK13hb_bit_page_t8is_emptyEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !52     ; 2 uses
  %.not3 = icmp eq i32 %i.a, -1
  br i1 %.not3, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %i.a, 0
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !47
  %.not.not.i = icmp ne i64 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8
  %.not.1.not.i = icmp ne i64 %i.e, 0
  %or.cond.not27.i = select i1 %.not.not.i, i1 true, i1 %.not.1.not.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8
  %.not.2.not.i = icmp ne i64 %i.g, 0
  %or.cond12.not26.i = select i1 %or.cond.not27.i, i1 true, i1 %.not.2.not.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i64, ptr %i.h, align 8
  %.not.3.not.i = icmp ne i64 %i.i, 0
  %or.cond14.not25.i = select i1 %or.cond12.not26.i, i1 true, i1 %.not.3.not.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load i64, ptr %i.j, align 8
  %.not.4.not.i = icmp ne i64 %i.k, 0
  %or.cond16.not24.i = select i1 %or.cond14.not25.i, i1 true, i1 %.not.4.not.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load i64, ptr %i.l, align 8
  %.not.5.not.i = icmp ne i64 %i.m, 0
  %or.cond18.not23.i = select i1 %or.cond16.not24.i, i1 true, i1 %.not.5.not.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load i64, ptr %i.n, align 8
  %.not.6.not.i = icmp ne i64 %i.o, 0
  %or.cond20.not.i = select i1 %or.cond18.not23.i, i1 true, i1 %.not.6.not.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = load i64, ptr %i.p, align 8
  %.not.7.not.i = icmp ne i64 %i.q, 0
  %or.cond22.i = select i1 %or.cond20.not.i, i1 true, i1 %.not.7.not.i
  br i1 %or.cond22.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %0, align 8, !tbaa !52
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i1 [ %.not, %bb.b ], [ true, %bb.d ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL12rotate_arrayIiTnPN12hb_enable_ifIXsr3std21is_trivially_copyableIT_EE5valueEvE4typeELPv0EEbRK10hb_array_tIKS1_EiR11hb_vector_tIS1_Lb0EE(ptr nofree readonly captures(none) %.0.val, i32 %.8.val, i32 noundef range(i32 0, -2147483648) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %.8.val, 0
  br i1 %.not, label %_ZL9hb_memcpyPvPKvm.exit26, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp slt i32 %.8.val, 0
  br i1 %i.a, label %_ZL9hb_memcpyPvPKvm.exit26, label %bb.c, !prof !12

bb.c:                                             ; preds = %bb.b
  %i.b = tail call noundef zeroext i1 @_ZN11hb_vector_tIiLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %.8.val, i1 noundef zeroext false)
  br i1 %i.b, label %bb.d, label %_ZL9hb_memcpyPvPKvm.exit26, !prof !56

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %.8.val, ptr %i.c, align 4, !tbaa !42
  %i.d = urem i32 %0, %.8.val                     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = zext nneg i32 %i.d to i64                ; 2 uses
  %i.g = shl i32 %i.d, 2                          ; 2 uses
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %_ZL9hb_memcpyPvPKvm.exit, label %bb.e, !prof !12

bb.e:                                             ; preds = %bb.d
  %i.h = zext i32 %i.g to i64
  %i.i = zext nneg i32 %.8.val to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %.0.val, i64 %i.i
  %i.k = sub nsw i64 0, %i.f
  %i.l = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.k
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !40
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr nonnull readonly align 1 %i.l, i64 range(i64 0, 51539607541) %i.h, i1 false), !alias.scope !120
  br label %_ZL9hb_memcpyPvPKvm.exit

_ZL9hb_memcpyPvPKvm.exit:                         ; preds = %bb.d, %bb.e
  %i.n = sub nuw nsw i32 %.8.val, %i.d
  %i.o = shl i32 %i.n, 2                          ; 2 uses
  %.not.i25 = icmp eq i32 %i.o, 0
  br i1 %.not.i25, label %_ZL9hb_memcpyPvPKvm.exit26, label %bb.f, !prof !12

bb.f:                                             ; preds = %_ZL9hb_memcpyPvPKvm.exit
  %i.p = zext i32 %i.o to i64
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !40
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr readonly align 1 %.0.val, i64 range(i64 0, 51539607541) %i.p, i1 false), !alias.scope !124
  br label %_ZL9hb_memcpyPvPKvm.exit26

_ZL9hb_memcpyPvPKvm.exit26:                       ; preds = %bb.c, %bb.b, %bb.f, %_ZL9hb_memcpyPvPKvm.exit, %bb.a
  %.0 = phi i1 [ true, %bb.a ], [ true, %bb.f ], [ true, %_ZL9hb_memcpyPvPKvm.exit ], [ false, %bb.b ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZL10rotate_setRK13hb_bit_page_tijRS_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, i32 noundef range(i32 0, -2147483648) %1, i32 noundef range(i32 0, 513) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(72) %3) unnamed_addr #3 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %.not = icmp ne i32 %2, 0                       ; 2 uses
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.b = urem i32 %1, %2                          ; 3 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(72) %0, i64 72, i1 false), !tbaa.struct !111
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !47   ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i.i.i.i, label %bb.e, label %_ZL5beginIRK13hb_bit_page_tTnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E5beginEEOS4_.exit

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !47   ; 2 uses
  %.not.1.i.i.i.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.1.i.i.i.i.i, label %bb.f, label %_ZL5beginIRK13hb_bit_page_tTnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E5beginEEOS4_.exit

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !47   ; 2 uses
  %.not.2.i.i.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.2.i.i.i.i.i, label %bb.g, label %_ZL5beginIRK13hb_bit_page_tTnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E5beginEEOS4_.exit

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load i64, ptr %i.j, align 8, !tbaa !47   ; 2 uses
  %.not.3.i.i.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.3.i.i.i.i.i, label %bb.h, label %_ZL5beginIRK13hb_bit_page_tTnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E5beginEEOS4_.exit

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load i64, ptr %i.l, align 8, !tbaa !47   ; 2 uses
  %.not.4.i.i.i.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.4.i.i.i.i.i, label %bb.i, label %_ZL5beginIRK13hb_bit_page_tTnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E5beginEEOS4_.exit

bb.i:                                             ; preds = %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load i64, ptr %i.n, align 8, !tbaa !47   ; 2 uses
  %.not.5.i.i.i.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.5.i.i.i.i.i, label %bb.j, label %_ZL5beginIRK13hb_bit_page_tTnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E5beginEEOS4_.exit

bb.j:                                             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load i64, ptr %i.p, align 8, !tbaa !47   ; 2 uses
  %.not.6.i.i.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.6.i.i.i.i.i, label %bb.k, label %_ZL5beginIRK13hb_bit_page_tTnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E5beginEEOS4_.exit

bb.k:                                             ; preds = %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !47   ; 2 uses
  %.not.7.i.i.i.i.i = icmp eq i64 %i.s, 0
  br i1 %.not.7.i.i.i.i.i, label %.loopexit, label %_ZL5beginIRK13hb_bit_page_tTnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E5beginEEOS4_.exit

_ZL5beginIRK13hb_bit_page_tTnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E5beginEEOS4_.exit: ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k
  %.0712.lcssa.wide.i.i.i.i.i = phi i32 [ 0, %bb.d ], [ 64, %bb.e ], [ 128, %bb.f ], [ 192, %bb.g ], [ 256, %bb.h ], [ 320, %bb.i ], [ 384, %bb.j ], [ 448, %bb.k ]
  %.lcssa.i.i.i.i.i = phi i64 [ %i.e, %bb.d ], [ %i.g, %bb.e ], [ %i.i, %bb.f ], [ %i.k, %bb.g ], [ %i.m, %bb.h ], [ %i.o, %bb.i ], [ %i.q, %bb.j ], [ %i.s, %bb.k ]
  %i.t = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.lcssa.i.i.i.i.i, i1 true)
  %i.u = trunc nuw nsw i64 %i.t to i32
  %i.v = or disjoint i32 %.0712.lcssa.wide.i.i.i.i.i, %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 -1, ptr %3, align 8, !tbaa !52
  %i.x = add nuw nsw i32 %i.v, %i.b
  %i.y = urem i32 %i.x, %2                        ; 2 uses
  %i.z = and i32 %i.y, 63
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = shl nuw i64 1, %i.aa
  %i.ac = lshr i32 %i.y, 6
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.ad ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !47
  %i.ag = or i64 %i.ab, %i.af
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !47
  %i.ah = add nuw nsw i32 %i.v, 1                 ; 2 uses
  %i.ai = and i32 %i.ah, 511                      ; 2 uses
  %.not.i.i.i56 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i56, label %.loopexit, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZL5beginIRK13hb_bit_page_tTnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E5beginEEOS4_.exit, %_ZNR9hb_iter_tIN13hb_bit_page_t6iter_tEjEppEv.exit
  %i.aj = phi i32 [ %i.bp, %_ZNR9hb_iter_tIN13hb_bit_page_t6iter_tEjEppEv.exit ], [ %i.ai, %_ZL5beginIRK13hb_bit_page_tTnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E5beginEEOS4_.exit ]
  %i.ak = phi i32 [ %i.bo, %_ZNR9hb_iter_tIN13hb_bit_page_t6iter_tEjEppEv.exit ], [ %i.ah, %_ZL5beginIRK13hb_bit_page_tTnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E5beginEEOS4_.exit ] ; 2 uses
  %i.al = lshr i32 %i.aj, 6                       ; 2 uses
  %i.am = and i32 %i.ak, 63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.an = zext nneg i32 %i.al to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.an
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !47
  %i.aq = zext nneg i32 %i.am to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.aq
  %i.ar = and i64 %i.ap, %notmask.i.i.i
  store i64 %i.ar, ptr %i.a, align 8, !tbaa !47
  %i.as = lshr i32 %i.ak, 6
  %i.at = and i32 %i.as, 7                        ; 2 uses
  %i.au = zext nneg i32 %i.at to i64
  %i.av = or disjoint i32 %i.at, 8
  %i.aw = sub nuw nsw i32 %i.av, %i.al
  %wide.trip.count.i.i.i = zext nneg i32 %i.aw to i64
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.l, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.au, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.l ] ; 2 uses
  %.027.i.i.i = phi ptr [ %i.a, %.lr.ph.preheader.i.i.i ], [ %i.ay, %bb.l ]
  %i.ax = load i64, ptr %.027.i.i.i, align 8, !tbaa !47 ; 2 uses
  %.not20.not.i.not.i.i = icmp eq i64 %i.ax, 0
  br i1 %.not20.not.i.not.i.i, label %bb.l, label %_ZNR9hb_iter_tIN13hb_bit_page_t6iter_tEjEppEv.exit

bb.l:                                             ; preds = %.lr.ph.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 3 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next.i.i.i
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %_ZNR9hb_iter_tIN13hb_bit_page_t6iter_tEjEppEv.exit.thread49, label %.lr.ph.i.i.i, !llvm.loop !128

_ZNR9hb_iter_tIN13hb_bit_page_t6iter_tEjEppEv.exit.thread49: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

_ZNR9hb_iter_tIN13hb_bit_page_t6iter_tEjEppEv.exit: ; preds = %.lr.ph.i.i.i
  %i.az = trunc nuw nsw i64 %indvars.iv.i.i.i to i32
  %i.ba = shl nuw nsw i32 %i.az, 6
  %i.bb = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ax, i1 true)
  %i.bc = trunc nuw nsw i64 %i.bb to i32
  %i.bd = or disjoint i32 %i.ba, %i.bc            ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.be = add nuw i32 %i.bd, %i.b
  %i.bf = urem i32 %i.be, %2                      ; 2 uses
  %i.bg = and i32 %i.bf, 63
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = shl nuw i64 1, %i.bh
  %i.bj = lshr i32 %i.bf, 6
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bk ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !47
  %i.bn = or i64 %i.bi, %i.bm
  store i64 %i.bn, ptr %i.bl, align 8, !tbaa !47
  %i.bo = add nuw i32 %i.bd, 1                    ; 2 uses
  %i.bp = and i32 %i.bo, 511                      ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.bp, 0
  br i1 %.not.i.i.i, label %.loopexit, label %.lr.ph.preheader.i.i.i

.loopexit:                                        ; preds = %_ZNR9hb_iter_tIN13hb_bit_page_t6iter_tEjEppEv.exit, %_ZL5beginIRK13hb_bit_page_tTnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E5beginEEOS4_.exit, %bb.k, %_ZNR9hb_iter_tIN13hb_bit_page_t6iter_tEjEppEv.exit.thread49, %bb.c, %bb.a
  ret i1 %.not
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL24_iup_contour_optimize_dpRK22contour_point_vector_tRK11hb_vector_tIiLb0EES5_RK13hb_bit_page_tdjRS2_IjLb0EERS3_RS2_IdLb0EESD_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, double noundef %4, i32 noundef range(i32 0, 513) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %8, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %9) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !8    ; 8 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %.thread, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN11hb_vector_tIjLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %6, i32 noundef %i.b, i1 noundef zeroext false)
  br i1 %i.d, label %bb.c, label %.thread, !prof !56

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %i.b, ptr %i.e, align 4, !tbaa !28
  %i.f = tail call noundef zeroext i1 @_ZN11hb_vector_tIiLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %7, i32 noundef %i.b, i1 noundef zeroext false)
  br i1 %i.f, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %i.b, ptr %i.g, align 4, !tbaa !42
  %.sroa.speculated133 = tail call i32 @llvm.umin.i32(i32 %5, i32 8)
  %.not172 = icmp eq i32 %i.b, 0
  br i1 %.not172, label %.thread, label %.lr.ph171

.lr.ph171:                                        ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.k = add nsw i32 %i.b, -1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_1
begin_hunk_2_@_ZL5beginIR13hb_bit_page_tTnPN12hb_enable_ifIXsr14hb_is_iterableIT_EE5valueEvE4typeELPv0EEDTcldtclL_ZL7hb_iterEfp_E5beginEEOS3_:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !47   ; 2 uses
  %.not.3.i.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.3.i.i.i.i, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i64, ptr %i.i, align 8, !tbaa !47   ; 2 uses
  %.not.4.i.i.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.4.i.i.i.i, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load i64, ptr %i.k, align 8, !tbaa !47   ; 2 uses
  %.not.5.i.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.5.i.i.i.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load i64, ptr %i.m, align 8, !tbaa !47   ; 2 uses
  %.not.6.i.i.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.6.i.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.p = load i64, ptr %i.o, align 8, !tbaa !47   ; 2 uses
  %.not.7.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.7.i.i.i.i, label %"_ZNK3$_8clIR13hb_bit_page_tEEDTcldtclL_ZL8hb_derefEcl10hb_declvalIT_EEE4iterEEOS3_.exit", label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0712.lcssa.wide.i.i.i.i = phi i32 [ 0, %bb.a ], [ 64, %bb.b ], [ 128, %bb.c ], [ 192, %bb.d ], [ 256, %bb.e ], [ 320, %bb.f ], [ 384, %bb.g ], [ 448, %bb.h ]
  %.lcssa.i.i.i.i = phi i64 [ %i.b, %bb.a ], [ %i.d, %bb.b ], [ %i.f, %bb.c ], [ %i.h, %bb.d ], [ %i.j, %bb.e ], [ %i.l, %bb.f ], [ %i.n, %bb.g ], [ %i.p, %bb.h ]
  %i.q = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.lcssa.i.i.i.i, i1 true)
  %i.r = trunc nuw nsw i64 %i.q to i32
  %i.s = or disjoint i32 %.0712.lcssa.wide.i.i.i.i, %i.r
  br label %"_ZNK3$_8clIR13hb_bit_page_tEEDTcldtclL_ZL8hb_derefEcl10hb_declvalIT_EEE4iterEEOS3_.exit"

"_ZNK3$_8clIR13hb_bit_page_tEEDTcldtclL_ZL8hb_derefEcl10hb_declvalIT_EEE4iterEEOS3_.exit": ; preds = %bb.h, %bb.i
  %i.t = phi i32 [ %i.s, %bb.i ], [ -1, %bb.h ]
  %.fca.0.insert.i.i = insertvalue { ptr, i32 } poison, ptr %0, 0
  %.fca.1.insert.i.i = insertvalue { ptr, i32 } %.fca.0.insert.i.i, i32 %i.t, 1
  ret { ptr, i32 } %.fca.1.insert.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(12) ptr @_ZNR9hb_iter_tIN13hb_bit_page_t6iter_tEjEppEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !38
  %i.d = add i32 %i.c, 1                          ; 3 uses
  %i.e = and i32 %i.d, 511                        ; 2 uses
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %bb.b, label %.lr.ph.preheader.i.i

bb.b:                                             ; preds = %bb.a
  store i32 -1, ptr %i.b, align 4, !tbaa !38
  br label %_ZN13hb_bit_page_t6iter_t8__next__Ev.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !154
  %i.g = lshr i32 %i.e, 6                         ; 2 uses
  %i.h = and i32 %i.d, 63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.j = zext nneg i32 %i.g to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.j
  %i.l = load i64, ptr %i.k, align 8, !tbaa !47
  %i.m = zext nneg i32 %i.h to i64
  %notmask.i.i = shl nsw i64 -1, %i.m
  %i.n = and i64 %i.l, %notmask.i.i
  store i64 %i.n, ptr %i.a, align 8, !tbaa !47
  %i.o = lshr i32 %i.d, 6
  %i.p = and i32 %i.o, 7                          ; 2 uses
  %i.q = zext nneg i32 %i.p to i64
  %i.r = or disjoint i32 %i.p, 8
  %i.s = sub nuw nsw i32 %i.r, %i.g
  %wide.trip.count.i.i = zext nneg i32 %i.s to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %i.q, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.d ] ; 2 uses
  %.027.i.i = phi ptr [ %i.a, %.lr.ph.preheader.i.i ], [ %i.z, %bb.d ]
  %i.t = load i64, ptr %.027.i.i, align 8, !tbaa !47 ; 2 uses
  %.not20.not.i.not.i = icmp eq i64 %i.t, 0
  br i1 %.not20.not.i.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.u = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.v = shl nuw nsw i32 %i.u, 6
  %i.w = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.t, i1 true)
  %i.x = trunc nuw nsw i64 %i.w to i32
  %i.y = or disjoint i32 %i.v, %i.x
  br label %.critedge.i.i

bb.d:                                             ; preds = %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next.i.i
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.critedge.i.i, label %.lr.ph.i.i, !llvm.loop !128

.critedge.i.i:                                    ; preds = %bb.d, %bb.c
  %storemerge.i.i = phi i32 [ %i.y, %bb.c ], [ -1, %bb.d ]
  store i32 %storemerge.i.i, ptr %i.b, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN13hb_bit_page_t6iter_t8__next__Ev.exit

_ZN13hb_bit_page_t6iter_t8__next__Ev.exit:        ; preds = %bb.b, %.critedge.i.i
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL12rotate_arrayIbTnPN12hb_enable_ifIXsr3std21is_trivially_copyableIT_EE5valueEvE4typeELPv0EEbRK10hb_array_tIKS1_EiR11hb_vector_tIS1_Lb0EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef range(i32 -2147483647, 1) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !68   ; 8 uses
  %or.cond = icmp slt i32 %i.b, 1
  br i1 %or.cond, label %_ZL9hb_memcpyPvPKvm.exit26, label %bb.b, !prof !43

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %2, align 8, !tbaa !13     ; 4 uses
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %_ZL9hb_memcpyPvPKvm.exit26, label %bb.c, !prof !12

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp samesign ugt i32 %i.b, %i.c
  br i1 %.not.i.i, label %.preheader.i.i, label %bb.h, !prof !12

.preheader.i.i:                                   ; preds = %bb.c, %.preheader.i.i
  %.01452.i.i = phi i32 [ %i.g, %.preheader.i.i ], [ %i.c, %bb.c ] ; 2 uses
  %i.e = lshr i32 %.01452.i.i, 1
  %i.f = add nuw i32 %.01452.i.i, 8
  %i.g = add nuw i32 %i.f, %i.e                   ; 6 uses
  %i.h = icmp ugt i32 %i.b, %i.g
  br i1 %i.h, label %.preheader.i.i, label %.thread38.i.i, !llvm.loop !16

.thread38.i.i:                                    ; preds = %.preheader.i.i
  %.not8.i.i.i.i = icmp eq i32 %i.c, 0
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !18   ; 2 uses
  br i1 %.not8.i.i.i.i, label %bb.d, label %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.i.i

bb.d:                                             ; preds = %.thread38.i.i
  %.not9.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not9.i.i.i.i, label %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = zext i32 %i.g to i64
  %i.l = tail call ptr @hb_malloc(i64 noundef %i.k) #8 ; 4 uses
  %.not10.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not10.i.i.i.i, label %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.thread62.i.i, label %bb.f, !prof !12

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !19   ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %_ZN11hb_vector_tIbLb0EE5allocEjb.exit.thread4.i, label %bb.g, !prof !12

bb.g:                                             ; preds = %bb.f
  %i.o = zext i32 %i.n to i64
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !18
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr readonly align 1 %i.p, i64 range(i64 0, 51539607541) %i.o, i1 false), !alias.scope !155
  br label %_ZN11hb_vector_tIbLb0EE5allocEjb.exit.thread4.i

_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.i.i: ; preds = %bb.d, %.thread38.i.i
  %i.q = phi ptr [ null, %bb.d ], [ %i.j, %.thread38.i.i ]
  %i.r = zext i32 %i.g to i64
  %i.s = tail call ptr @hb_realloc(ptr noundef %i.q, i64 noundef %i.r) #8 ; 2 uses
  %.not22.i.i = icmp eq ptr %i.s, null
  br i1 %.not22.i.i, label %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.thread62.i.i, label %_ZN11hb_vector_tIbLb0EE5allocEjb.exit.thread4.i, !prof !24

_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.thread62.i.i: ; preds = %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.i.i, %bb.e
  %i.t = load i32, ptr %2, align 8, !tbaa !13     ; 2 uses
  %.not23.i.i = icmp ugt i32 %i.g, %i.t
  br i1 %.not23.i.i, label %_ZN11hb_vector_tIbLb0EE5allocEjb.exit.i, label %bb.h, !prof !159

_ZN11hb_vector_tIbLb0EE5allocEjb.exit.thread4.i:  ; preds = %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.i.i, %bb.g, %bb.f
  %.1.i.i51.i.i = phi ptr [ %i.s, %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.i.i ], [ %i.l, %bb.f ], [ %i.l, %bb.g ]
  store ptr %.1.i.i51.i.i, ptr %i.i, align 8, !tbaa !18
  store i32 %i.g, ptr %2, align 8, !tbaa !13
  br label %bb.h

_ZN11hb_vector_tIbLb0EE5allocEjb.exit.i:          ; preds = %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.thread62.i.i
  %i.u = xor i32 %i.t, -1
  store i32 %i.u, ptr %2, align 8, !tbaa !13
  br label %_ZL9hb_memcpyPvPKvm.exit26

bb.h:                                             ; preds = %_ZN11hb_vector_tIbLb0EE5allocEjb.exit.thread4.i, %_ZN11hb_vector_tIbLb0EE14realloc_vectorIbTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPbj11hb_priorityILj0EE.exit.thread62.i.i, %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.b, ptr %i.v, align 4, !tbaa !19
  %i.w = icmp slt i32 %1, 0
  br i1 %i.w, label %_ZL9hb_memcpyPvPKvm.exit, label %_ZL9hb_memcpyPvPKvm.exit.thread

_ZL9hb_memcpyPvPKvm.exit.thread:                  ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.i

_ZL9hb_memcpyPvPKvm.exit:                         ; preds = %bb.h
  %i.y = sub nsw i32 0, %1
  %i.z = urem i32 %i.y, %i.b                      ; 2 uses
  %i.aa = sub nuw nsw i32 %i.b, %i.z              ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ac = zext nneg i32 %i.aa to i64              ; 3 uses
  %i.ad = load ptr, ptr %0, align 8, !tbaa !66
  %i.ae = zext nneg i32 %i.b to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ae
  %i.ag = sub nsw i64 0, %i.ac
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 %i.ag
  %i.ai = load ptr, ptr %i.ab, align 8, !tbaa !18
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ai, ptr nonnull readonly align 1 %i.ah, i64 range(i64 0, 51539607541) %i.ac, i1 false), !alias.scope !160
  %.not.i25 = icmp eq i32 %i.z, 0
  br i1 %.not.i25, label %_ZL9hb_memcpyPvPKvm.exit26, label %bb.i, !prof !164

bb.i:                                             ; preds = %_ZL9hb_memcpyPvPKvm.exit.thread, %_ZL9hb_memcpyPvPKvm.exit
  %.0223041 = phi i32 [ 0, %_ZL9hb_memcpyPvPKvm.exit.thread ], [ %i.aa, %_ZL9hb_memcpyPvPKvm.exit ]
  %i.aj = phi ptr [ %i.x, %_ZL9hb_memcpyPvPKvm.exit.thread ], [ %i.ab, %_ZL9hb_memcpyPvPKvm.exit ]
  %i.ak = phi i64 [ 0, %_ZL9hb_memcpyPvPKvm.exit.thread ], [ %i.ac, %_ZL9hb_memcpyPvPKvm.exit ]
  %i.al = sub nsw i32 %i.b, %.0223041
  %i.am = zext i32 %i.al to i64
  %i.an = load ptr, ptr %0, align 8, !tbaa !66
  %i.ao = load ptr, ptr %i.aj, align 8, !tbaa !18
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ak
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ap, ptr readonly align 1 %i.an, i64 range(i64 0, 51539607541) %i.am, i1 false), !alias.scope !165
  br label %_ZL9hb_memcpyPvPKvm.exit26

_ZL9hb_memcpyPvPKvm.exit26:                       ; preds = %bb.b, %_ZN11hb_vector_tIbLb0EE5allocEjb.exit.i, %bb.i, %_ZL9hb_memcpyPvPKvm.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare void @hb_free(ptr noundef) local_unnamed_addr #7

declare ptr @hb_malloc(i64 noundef) local_unnamed_addr #7

declare ptr @hb_realloc(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tIiLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !51     ; 7 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.n, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !38
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %1, i32 %i.d) ; 3 uses
  %.not19 = icmp ugt i32 %.sroa.speculated, %i.a
  %i.e = lshr i32 %i.a, 2
  %.not20 = icmp ult i32 %.sroa.speculated, %i.e
  %or.cond = or i1 %.not19, %.not20
  br i1 %or.cond, label %.thread, label %bb.n

bb.d:                                             ; preds = %bb.b
  %.not = icmp ugt i32 %1, %i.a
  br i1 %.not, label %.preheader, label %bb.n, !prof !12

.preheader:                                       ; preds = %bb.d, %.preheader
  %.01442 = phi i32 [ %i.h, %.preheader ], [ %i.a, %bb.d ] ; 2 uses
  %i.f = lshr i32 %.01442, 1
  %i.g = add i32 %.01442, 8
  %i.h = add i32 %i.g, %i.f                       ; 3 uses
  %i.i = icmp ugt i32 %1, %i.h
  br i1 %i.i, label %.preheader, label %.thread, !llvm.loop !81

.thread:                                          ; preds = %.preheader, %bb.c
  %.11537 = phi i32 [ %.sroa.speculated, %bb.c ], [ %i.h, %.preheader ] ; 6 uses
  %i.j = icmp ugt i32 %.11537, 1073741823
  br i1 %i.j, label %.critedge, label %bb.e, !prof !12

.critedge:                                        ; preds = %.thread
  %i.k = xor i32 %i.a, -1
  br label %.sink.split

bb.e:                                             ; preds = %.thread
  %.not.i.i = icmp eq i32 %.11537, 0
  %.not48 = icmp eq i32 %i.a, 0                   ; 2 uses
  br i1 %.not.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %.not48, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !40
  tail call void @hb_free(ptr noundef %i.m) #8
  br label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread

bb.h:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !40   ; 2 uses
  br i1 %.not48, label %bb.i, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i.i = icmp eq ptr %i.o, null
  br i1 %.not9.i.i, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = shl nuw i32 %.11537, 2
  %i.q = zext i32 %i.p to i64
  %i.r = tail call ptr @hb_malloc(i64 noundef %i.q) #8 ; 4 uses
  %.not10.i.i = icmp eq ptr %i.r, null
  br i1 %.not10.i.i, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread52, label %bb.k, !prof !12

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !42   ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread, label %bb.l, !prof !12

bb.l:                                             ; preds = %bb.k
  %i.u = zext i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 2
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !40
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr readonly align 1 %i.w, i64 range(i64 0, 51539607541) %i.v, i1 false), !alias.scope !169
  br label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread

_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit: ; preds = %bb.h, %bb.i
  %i.x = phi ptr [ null, %bb.i ], [ %i.o, %bb.h ]
  %i.y = shl nuw i32 %.11537, 2
  %i.z = zext i32 %i.y to i64
  %i.aa = tail call ptr @hb_realloc(ptr noundef %i.x, i64 noundef %i.z) #8 ; 2 uses
  %.not22 = icmp eq ptr %i.aa, null
  br i1 %.not22, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread52, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread, !prof !82

_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread52: ; preds = %bb.j, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit
  %i.ab = load i32, ptr %0, align 8, !tbaa !51    ; 2 uses
  %.not23 = icmp ugt i32 %.11537, %i.ab
  br i1 %.not23, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread52
  %i.ac = xor i32 %i.ab, -1
  br label %.sink.split

_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread: ; preds = %bb.l, %bb.k, %bb.g, %bb.f, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit
  %.1.i.i41 = phi ptr [ %i.aa, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit ], [ null, %bb.f ], [ null, %bb.g ], [ %i.r, %bb.k ], [ %i.r, %bb.l ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.1.i.i41, ptr %i.ad, align 8, !tbaa !40
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread, %bb.m
  %.sink = phi i32 [ %i.ac, %bb.m ], [ %.11537, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread ], [ %i.k, %.critedge ]
  %.3.ph = phi i1 [ false, %bb.m ], [ true, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread ], [ false, %.critedge ]
  store i32 %.sink, ptr %0, align 8, !tbaa !51
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.c, %bb.d, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread52, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ true, %bb.d ], [ true, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.thread52 ], [ %.3.ph, %.sink.split ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tI15contour_point_tLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !55     ; 7 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.n, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !38
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %1, i32 %i.d) ; 3 uses
  %.not19 = icmp ugt i32 %.sroa.speculated, %i.a
  %i.e = lshr i32 %i.a, 2
  %.not20 = icmp ult i32 %.sroa.speculated, %i.e
  %or.cond = or i1 %.not19, %.not20
  br i1 %or.cond, label %.thread, label %bb.n

bb.d:                                             ; preds = %bb.b
  %.not = icmp ugt i32 %1, %i.a
  br i1 %.not, label %.preheader, label %bb.n, !prof !12

.preheader:                                       ; preds = %bb.d, %.preheader
  %.01442 = phi i32 [ %i.h, %.preheader ], [ %i.a, %bb.d ] ; 2 uses
  %i.f = lshr i32 %.01442, 1
  %i.g = add i32 %.01442, 8
  %i.h = add i32 %i.g, %i.f                       ; 3 uses
  %i.i = icmp ugt i32 %1, %i.h
  br i1 %i.i, label %.preheader, label %.thread, !llvm.loop !83

.thread:                                          ; preds = %.preheader, %bb.c
  %.11537 = phi i32 [ %.sroa.speculated, %bb.c ], [ %i.h, %.preheader ] ; 6 uses
  %i.j = icmp ugt i32 %.11537, 357913941
  br i1 %i.j, label %.critedge, label %bb.e, !prof !12

.critedge:                                        ; preds = %.thread
  %i.k = xor i32 %i.a, -1
  br label %.sink.split

bb.e:                                             ; preds = %.thread
  %.not.i.i = icmp eq i32 %.11537, 0
  %.not48 = icmp eq i32 %i.a, 0                   ; 2 uses
  br i1 %.not.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %.not48, label %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !30
  tail call void @hb_free(ptr noundef %i.m) #8
  br label %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread

bb.h:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
end_hunk_2
