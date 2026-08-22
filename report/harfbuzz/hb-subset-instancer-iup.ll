Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-instancer-iup?download=true
inline.NumInlined: 278
inline.NumDeleted: 155
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_Z18iup_delta_optimizeRK22contour_point_vector_tRK11hb_vector_tIiLb0EES5_RS2_IbLb0EER13iup_scratch_td:bb.a
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
  %i.ky = sub nsw i32 %.084116.i.i, %i.kx         ; 6 uses
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
  %i.ls = sub nsw i32 %.sroa.speculated.i.i, %i.lk
  %i.lt = mul nsw i32 %i.ls, 12
  %i.lu = zext i32 %i.lt to i64
  %i.lv = load ptr, ptr %i.en, align 8, !tbaa !30
  %i.lw = getelementptr inbounds nuw [12 x i8], ptr %i.lv, i64 %i.ll
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lw, ptr nonnull readonly align 4 %i.fa, i64 range(i64 0, 51539607541) %i.lu, i1 false), !alias.scope !61
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
  %.015351.i = phi i32 [ %.084116.i.i, %bb.bz ], [ %i.mn, %bb.ca ] ; 3 uses
  %i.mc = and i32 %.015351.i, 63
  %i.md = zext nneg i32 %i.mc to i64
  %i.me = shl nuw i64 1, %i.md
  %i.mf = lshr i32 %.015351.i, 6
  %i.mg = and i32 %i.mf, 7
  %i.mh = zext nneg i32 %i.mg to i64
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %i.mh ; 2 uses
  %i.mj = load i64, ptr %i.mi, align 8, !tbaa !47
  %i.mk = or i64 %i.me, %i.mj
  store i64 %i.mk, ptr %i.mi, align 8, !tbaa !47
  %i.ml = sext i32 %.015351.i to i64
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
  %i.oc = getelementptr inbounds nuw i8, ptr %i.mx, i64 %indvars.iv.next79.i.2
  %i.od = load i8, ptr %i.oc, align 1, !tbaa !45, !range !35, !noundef !36
  %i.oe = getelementptr inbounds nuw i8, ptr %i.fk, i64 %indvars.iv.next79.i.2
  store i8 %i.od, ptr %i.oe, align 1, !tbaa !45
  %indvars.iv.next79.i.3 = add nuw nsw i64 %indvars.iv78.i, 4 ; 2 uses
  %exitcond83.not.i.3 = icmp eq i64 %indvars.iv.next79.i.3, %.sroa.3.8.insert.ext.i.i84
  br i1 %exitcond83.not.i.3, label %.critedge179.i, label %vec.epilog.scalar.ph, !llvm.loop !80

bb.cf:                                            ; preds = %bb.cc, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  br label %_ZL21_iup_contour_optimize10hb_array_tIK15contour_point_tES_IKiES4_S_IbEdR13iup_scratch_t.exit.thread116

bb.cg:                                            ; preds = %_ZNK13hb_bit_page_t8is_emptyEv.exit.thread.i, %_ZN11hb_vector_tIiLb0EE5resetEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #8
  %i.of = shl nuw nsw i32 %.sroa.speculated.i.i, 1 ; 6 uses
  br label %.preheader.i.i89

.preheader.i.i89:                                 ; preds = %.preheader.i.i89, %bb.cg
  %.043.i.i = phi i32 [ %i.oi, %.preheader.i.i89 ], [ 0, %bb.cg ] ; 2 uses
  %i.og = lshr i32 %.043.i.i, 1
  %i.oh = add i32 %.043.i.i, 8
  %i.oi = add i32 %i.oh, %i.og                    ; 8 uses
  %i.oj = icmp ugt i32 %i.of, %i.oi
  br i1 %i.oj, label %.preheader.i.i89, label %.thread.i.i, !llvm.loop !81

.thread.i.i:                                      ; preds = %.preheader.i.i89
  %i.ok = icmp ugt i32 %i.oi, 1073741823
  br i1 %i.ok, label %_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit209.thread.i, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i.i, !prof !12

_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i.i: ; preds = %.thread.i.i
  %i.ol = shl nuw i32 %i.oi, 2
  %i.om = zext i32 %i.ol to i64
  %i.on = call ptr @hb_realloc(ptr noundef null, i64 noundef %i.om) #8 ; 9 uses
  %.not22.i.i90 = icmp eq ptr %i.on, null
  br i1 %.not22.i.i90, label %_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit209.thread.i, label %bb.ch, !prof !82

bb.ch:                                            ; preds = %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i.i
  store ptr %i.on, ptr %i.du, align 8, !tbaa !40
  store i32 %i.oi, ptr %11, align 8, !tbaa !51
  store i32 %i.of, ptr %i.dv, align 4, !tbaa !42
  br label %.preheader.i224.i

.preheader.i224.i:                                ; preds = %.preheader.i224.i, %bb.ch
  %.043.i225.i = phi i32 [ %i.oq, %.preheader.i224.i ], [ 0, %bb.ch ] ; 2 uses
  %i.oo = lshr i32 %.043.i225.i, 1
  %i.op = add i32 %.043.i225.i, 8
  %i.oq = add i32 %i.op, %i.oo                    ; 5 uses
  %i.or = icmp ugt i32 %i.of, %i.oq
  br i1 %i.or, label %.preheader.i224.i, label %.thread.i226.i, !llvm.loop !81

.thread.i226.i:                                   ; preds = %.preheader.i224.i
  %i.os = icmp ugt i32 %i.oq, 1073741823
  br i1 %i.os, label %_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit209.thread.i, label %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i229.i, !prof !12

_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i229.i: ; preds = %.thread.i226.i
  %i.ot = shl nuw i32 %i.oq, 2
  %i.ou = zext i32 %i.ot to i64
  %i.ov = call ptr @hb_realloc(ptr noundef null, i64 noundef %i.ou) #8 ; 7 uses
  %.not22.i230.i = icmp eq ptr %i.ov, null
  br i1 %.not22.i230.i, label %_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit209.thread.i, label %bb.ci, !prof !82

bb.ci:                                            ; preds = %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i229.i
  store ptr %i.ov, ptr %i.dw, align 8, !tbaa !40
  store i32 %i.oq, ptr %12, align 8, !tbaa !51
  store i32 %i.of, ptr %i.dx, align 4, !tbaa !42
  br label %.preheader.i245.i

.preheader.i245.i:                                ; preds = %.preheader.i245.i, %bb.ci
  %.043.i246.i = phi i32 [ %i.oy, %.preheader.i245.i ], [ 0, %bb.ci ] ; 2 uses
  %i.ow = lshr i32 %.043.i246.i, 1
  %i.ox = add i32 %.043.i246.i, 8
  %i.oy = add i32 %i.ox, %i.ow                    ; 5 uses
  %i.oz = icmp ugt i32 %i.of, %i.oy
  br i1 %i.oz, label %.preheader.i245.i, label %.thread.i247.i, !llvm.loop !83

.thread.i247.i:                                   ; preds = %.preheader.i245.i
  %i.pa = icmp ugt i32 %i.oy, 357913941
  br i1 %i.pa, label %_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit209.i, label %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i.i, !prof !12

_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i.i: ; preds = %.thread.i247.i
  %i.pb = zext nneg i32 %i.oy to i64
  %i.pc = mul nuw nsw i64 %i.pb, 12
  %i.pd = call ptr @hb_realloc(ptr noundef null, i64 noundef %i.pc) #8 ; 6 uses
  %.not22.i250.i = icmp eq ptr %i.pd, null
  br i1 %.not22.i250.i, label %_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit209.i, label %_ZN11hb_vector_tI15contour_point_tLb0EE12resize_dirtyEi.exit.i, !prof !82

_ZN11hb_vector_tI15contour_point_tLb0EE12resize_dirtyEi.exit.i: ; preds = %_ZN11hb_vector_tI15contour_point_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.i.i
  store ptr %i.pd, ptr %i.dy, align 8, !tbaa !30
  store i32 %i.oy, ptr %13, align 8, !tbaa !55
  store i32 %i.of, ptr %i.dz, align 4, !tbaa !8
  %i.pe = shl nuw nsw i64 %.sroa.3.8.insert.ext.i.i, 2 ; 4 uses
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %i.on, i64 %.sroa.3.8.insert.ext.i.i
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.ov, i64 %.sroa.3.8.insert.ext.i.i
  %i.ph = mul nuw nsw i64 %.sroa.3.8.insert.ext.i.i, 12 ; 2 uses
  %i.pi = getelementptr inbounds nuw [12 x i8], ptr %i.pd, i64 %.sroa.3.8.insert.ext.i.i
  br label %_ZL9hb_memcpyPvPKvm.exit204.i

bb.cj:                                            ; preds = %_ZL9hb_memcpyPvPKvm.exit204.i
  %i.pj = call fastcc noundef zeroext i1 @_ZL24_iup_contour_optimize_dpRK22contour_point_vector_tRK11hb_vector_tIiLb0EES5_RK13hb_bit_page_tdjRS2_IjLb0EERS3_RS2_IdLb0EESD_(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(72) %6, double noundef %i.dh, i32 noundef %.sroa.speculated.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.dj, ptr noundef nonnull align 8 dereferenceable(16) %i.dl, ptr noundef nonnull align 8 dereferenceable(16) %i.ea, ptr noundef nonnull align 8 dereferenceable(16) %i.eb)
  br i1 %i.pj, label %bb.ck, label %_ZN11hb_vector_tIiLb0EED2Ev.exit219.i

_ZL9hb_memcpyPvPKvm.exit204.i:                    ; preds = %_ZL9hb_memcpyPvPKvm.exit204.i, %_ZN11hb_vector_tI15contour_point_tLb0EE12resize_dirtyEi.exit.i
  %.013940.i = phi i32 [ 0, %_ZN11hb_vector_tI15contour_point_tLb0EE12resize_dirtyEi.exit.i ], [ %i.pk, %_ZL9hb_memcpyPvPKvm.exit204.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.on, ptr nonnull readonly align 4 %i.fd, i64 range(i64 0, 51539607541) %i.pe, i1 false), !alias.scope !84
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.pf, ptr nonnull readonly align 4 %i.fd, i64 range(i64 0, 51539607541) %i.pe, i1 false), !alias.scope !88
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ov, ptr readonly align 1 %i.fg, i64 range(i64 0, 51539607541) %i.pe, i1 false), !alias.scope !92
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.pg, ptr readonly align 1 %i.fg, i64 range(i64 0, 51539607541) %i.pe, i1 false), !alias.scope !96
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.pd, ptr nonnull readonly align 4 %i.fa, i64 range(i64 0, 51539607541) %i.ph, i1 false), !alias.scope !100
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.pi, ptr nonnull readonly align 4 %i.fa, i64 range(i64 0, 51539607541) %i.ph, i1 false), !alias.scope !104
  %i.pk = add nuw nsw i32 %.013940.i, 1           ; 2 uses
  %exitcond68.not.i = icmp eq i32 %i.pk, %.sroa.speculated.i.i
  br i1 %exitcond68.not.i, label %bb.cj, label %_ZL9hb_memcpyPvPKvm.exit204.i, !llvm.loop !108

bb.ck:                                            ; preds = %bb.cj
  %i.pl = load i32, ptr %i.dk, align 4, !tbaa !28 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ec, i8 0, i64 64, i1 false), !tbaa !47
  %.not57.i = icmp slt i32 %i.pl, %.sroa.speculated.i.i
  br i1 %.not57.i, label %.preheader.i, label %.lr.ph49.i

.lr.ph49.i:                                       ; preds = %bb.ck
  %i.pm = add nuw nsw i32 %.sroa.speculated.i.i, 1
  %i.pn = load ptr, ptr %i.ee, align 8, !tbaa !40
  br label %.lr.ph44.i

.preheader.i:                                     ; preds = %bb.cq, %bb.ck
  %min.iters.check243 = icmp ult i32 %.sroa.speculated.i.i83, 4
  br i1 %min.iters.check243, label %scalar.ph.preheader, label %vector.ph244

vector.ph244:                                     ; preds = %.preheader.i
  %n.vec245 = and i64 %.sroa.3.8.insert.ext.i.i84, 4294967292 ; 3 uses
  br label %vector.body246

vector.body246:                                   ; preds = %pred.store.continue255, %vector.ph244
  %index247 = phi i64 [ 0, %vector.ph244 ], [ %index.next256, %pred.store.continue255 ] ; 7 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph244 ], [ %vec.ind.next, %pred.store.continue255 ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.po = lshr i64 %index247, 6
  %i.pp = lshr i64 %index247, 6
  %i.pq = and i64 %i.po, 7
  %i.pr = and i64 %i.pp, 7
  %i.ps = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.pq
  %i.pt = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.pr
  %i.pu = load i64, ptr %i.ps, align 8, !tbaa !47
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.pu, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.pv = load i64, ptr %i.pt, align 8, !tbaa !47
  %broadcast.splatinsert248 = insertelement <2 x i64> poison, i64 %i.pv, i64 0
  %broadcast.splat249 = shufflevector <2 x i64> %broadcast.splatinsert248, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.pw = and <2 x i64> %vec.ind, splat (i64 63)
  %i.px = and <2 x i64> %step.add, splat (i64 63)
  %i.py = shl nuw <2 x i64> splat (i64 1), %i.pw
  %i.pz = shl nuw <2 x i64> splat (i64 1), %i.px
  %i.qa = and <2 x i64> %i.py, %broadcast.splat
  %i.qb = and <2 x i64> %i.pz, %broadcast.splat249
  %i.qc = icmp ne <2 x i64> %i.qa, zeroinitializer ; 2 uses
  %i.qd = icmp ne <2 x i64> %i.qb, zeroinitializer ; 2 uses
  %i.qe = extractelement <2 x i1> %i.qc, i64 0
  br i1 %i.qe, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body246
  %i.qf = getelementptr inbounds nuw i8, ptr %i.fk, i64 %index247
  store i8 1, ptr %i.qf, align 1, !tbaa !45
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body246
  %i.qg = extractelement <2 x i1> %i.qc, i64 1
  br i1 %i.qg, label %pred.store.if250, label %pred.store.continue251

pred.store.if250:                                 ; preds = %pred.store.continue
  %i.qh = getelementptr inbounds nuw i8, ptr %i.fk, i64 %index247
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 1
  store i8 1, ptr %i.qi, align 1, !tbaa !45
  br label %pred.store.continue251

pred.store.continue251:                           ; preds = %pred.store.if250, %pred.store.continue
  %i.qj = extractelement <2 x i1> %i.qd, i64 0
  br i1 %i.qj, label %pred.store.if252, label %pred.store.continue253

pred.store.if252:                                 ; preds = %pred.store.continue251
  %i.qk = getelementptr inbounds nuw i8, ptr %i.fk, i64 %index247
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 2
  store i8 1, ptr %i.ql, align 1, !tbaa !45
  br label %pred.store.continue253

pred.store.continue253:                           ; preds = %pred.store.if252, %pred.store.continue251
  %i.qm = extractelement <2 x i1> %i.qd, i64 1
  br i1 %i.qm, label %pred.store.if254, label %pred.store.continue255

pred.store.if254:                                 ; preds = %pred.store.continue253
  %i.qn = getelementptr inbounds nuw i8, ptr %i.fk, i64 %index247
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 3
  store i8 1, ptr %i.qo, align 1, !tbaa !45
  br label %pred.store.continue255

pred.store.continue255:                           ; preds = %pred.store.if254, %pred.store.continue253
  %index.next256 = add nuw i64 %index247, 4       ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.qp = icmp eq i64 %index.next256, %n.vec245
  br i1 %i.qp, label %middle.block257, label %vector.body246, !llvm.loop !109

middle.block257:                                  ; preds = %pred.store.continue255
  %cmp.n258 = icmp eq i64 %n.vec245, %.sroa.3.8.insert.ext.i.i84
  br i1 %cmp.n258, label %_ZN11hb_vector_tIiLb0EED2Ev.exit207.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i, %middle.block257
  %indvars.iv73.i.ph = phi i64 [ 0, %.preheader.i ], [ %n.vec245, %middle.block257 ]
  br label %scalar.ph

.lr.ph44.i:                                       ; preds = %bb.cq, %.lr.ph49.i
  %indvars.iv69.i = phi i64 [ %i.gc, %.lr.ph49.i ], [ %indvars.iv.next70.i, %bb.cq ] ; 4 uses
  %.013846.i = phi i32 [ %i.pm, %.lr.ph49.i ], [ %.2.i, %bb.cq ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ed, i8 0, i64 64, i1 false), !tbaa !47
  %i.qq = sub nsw i64 %indvars.iv69.i, %.sroa.3.8.insert.ext.i.i84 ; 2 uses
  %i.qr = trunc nsw i64 %indvars.iv69.i to i32
  br label %bb.cl

bb.cl:                                            ; preds = %bb.cl, %.lr.ph44.i
  %.013643.i = phi i32 [ %i.qr, %.lr.ph44.i ], [ %i.rd, %bb.cl ] ; 2 uses
  %i.qs = urem i32 %.013643.i, %.sroa.speculated.i.i ; 2 uses
  %i.qt = and i32 %i.qs, 63
  %i.qu = zext nneg i32 %i.qt to i64
  %i.qv = shl nuw i64 1, %i.qu
  %i.qw = lshr i32 %i.qs, 6
  %i.qx = zext nneg i32 %i.qw to i64
  %i.qy = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.qx ; 2 uses
  %i.qz = load i64, ptr %i.qy, align 8, !tbaa !47
  %i.ra = or i64 %i.qv, %i.qz
  store i64 %i.ra, ptr %i.qy, align 8, !tbaa !47
  %i.rb = sext i32 %.013643.i to i64
  %i.rc = getelementptr inbounds [4 x i8], ptr %i.pn, i64 %i.rb
  %i.rd = load i32, ptr %i.rc, align 4, !tbaa !38 ; 5 uses
  %i.re = sext i32 %i.rd to i64
  %i.rf = icmp slt i64 %i.qq, %i.re
  br i1 %i.rf, label %bb.cl, label %._crit_edge.i, !llvm.loop !110

._crit_edge.i:                                    ; preds = %bb.cl
  store i32 -1, ptr %15, align 8
  %i.rg = trunc nsw i64 %i.qq to i32
  %i.rh = icmp eq i32 %i.rd, %i.rg
  br i1 %i.rh, label %bb.cm, label %bb.cq

bb.cm:                                            ; preds = %._crit_edge.i
  %i.ri = icmp slt i32 %i.rd, 0
  %.pre.i91 = load ptr, ptr %i.ef, align 8, !tbaa !37 ; 2 uses
  br i1 %i.ri, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.rj = zext nneg i32 %i.rd to i64
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %.pre.i91, i64 %i.rj
  %i.rl = load i32, ptr %i.rk, align 4, !tbaa !38
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %i.rm = phi i32 [ %i.rl, %bb.cn ], [ 0, %bb.cm ]
  %i.rn = getelementptr inbounds nuw [4 x i8], ptr %.pre.i91, i64 %indvars.iv69.i
  %i.ro = load i32, ptr %i.rn, align 4, !tbaa !38
  %i.rp = sub i32 %i.ro, %i.rm                    ; 2 uses
  %.not167.i = icmp ugt i32 %i.rp, %.013846.i
  br i1 %.not167.i, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %14, ptr noundef nonnull align 8 dereferenceable(72) %15, i64 72, i1 false), !tbaa.struct !111
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co, %._crit_edge.i
  %.2.i = phi i32 [ %.013846.i, %._crit_edge.i ], [ %i.rp, %bb.cp ], [ %.013846.i, %bb.co ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #8
  %indvars.iv.next70.i = add nuw nsw i64 %indvars.iv69.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next70.i to i32
  %exitcond72.not.i = icmp eq i32 %i.pl, %lftr.wideiv.i
  br i1 %exitcond72.not.i, label %.preheader.i, label %.lr.ph44.i, !llvm.loop !113

_ZN11hb_vector_tIiLb0EED2Ev.exit207.i:            ; preds = %bb.cs, %middle.block257
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #8
  call void @hb_free(ptr noundef nonnull %i.pd) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #8
  call void @hb_free(ptr noundef nonnull %i.ov) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #8
  call void @hb_free(ptr noundef nonnull %i.on) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #8
  br label %_ZL21_iup_contour_optimize10hb_array_tIK15contour_point_tES_IKiES4_S_IbEdR13iup_scratch_t.exit

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.cs
  %indvars.iv73.i = phi i64 [ %indvars.iv.next74.i, %bb.cs ], [ %indvars.iv73.i.ph, %scalar.ph.preheader ] ; 4 uses
  %i.rq = lshr i64 %indvars.iv73.i, 6
  %i.rr = and i64 %i.rq, 7
  %i.rs = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.rr
  %i.rt = load i64, ptr %i.rs, align 8, !tbaa !47
  %i.ru = and i64 %indvars.iv73.i, 63
  %i.rv = shl nuw i64 1, %i.ru
  %i.rw = and i64 %i.rv, %i.rt
  %.not27.i = icmp eq i64 %i.rw, 0
  br i1 %.not27.i, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %scalar.ph
  %i.rx = getelementptr inbounds nuw i8, ptr %i.fk, i64 %indvars.iv73.i
  store i8 1, ptr %i.rx, align 1, !tbaa !45
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %scalar.ph
  %indvars.iv.next74.i = add nuw nsw i64 %indvars.iv73.i, 1 ; 2 uses
  %exitcond77.not.i = icmp eq i64 %indvars.iv.next74.i, %.sroa.3.8.insert.ext.i.i84
  br i1 %exitcond77.not.i, label %_ZN11hb_vector_tIiLb0EED2Ev.exit207.i, label %scalar.ph, !llvm.loop !114

_ZN11hb_vector_tI15contour_point_tLb0EED2Ev.exit209.thread.i: ; preds = %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i229.i, %.thread.i226.i, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i.i, %.thread.i.i
  %.ph.i = phi ptr [ null, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i.i ], [ null, %.thread.i.i ], [ %i.on, %.thread.i226.i ], [ %i.on, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i229.i ]
  %.ph123.i = phi i32 [ -1, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i.i ], [ -1, %.thread.i.i ], [ %i.oi, %.thread.i226.i ], [ %i.oi, %_ZN11hb_vector_tIiLb0EE14realloc_vectorIiTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPij11hb_priorityILj0EE.exit.i229.i ]
end_hunk_0
