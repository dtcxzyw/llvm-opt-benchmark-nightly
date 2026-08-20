inline.NumInlined: 978
inline.NumDeleted: 433
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN4ncnn3Net10load_paramERKNS_10DataReaderE:bb.a

bb.ar:                                            ; preds = %._crit_edge.i.i775
  %i.ff = load i8, ptr %i.i, align 16, !tbaa !69
  store i8 %i.ff, ptr %i.fe, align 1, !tbaa !69
  br label %bb.at

bb.as:                                            ; preds = %._crit_edge.i.i775
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fe, ptr nonnull align 16 %i.i, i64 %i.fa, i1 false)
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %._crit_edge.i.i775
  %i.fg = load i64, ptr %i.c, align 8, !tbaa !183 ; 2 uses
  store i64 %i.fg, ptr %i.br, align 8, !tbaa !184
  %i.fh = load ptr, ptr %4, align 8, !tbaa !68
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.fg
  store i8 0, ptr %i.fi, align 1, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  %i.fj = getelementptr inbounds nuw i8, ptr %.12741054, i64 80 ; 6 uses
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !68 ; 6 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.12741054, i64 96 ; 2 uses
  %i.fm = icmp eq ptr %i.fk, %i.fl
  %i.fn = load ptr, ptr %4, align 8, !tbaa !68    ; 6 uses
  %i.fo = icmp eq ptr %i.fn, %i.bq                ; 2 uses
  br i1 %i.fm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i785, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i779

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i785: ; preds = %bb.at
  br i1 %i.fo, label %bb.au, label %.thread.i786

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i779: ; preds = %bb.at
  br i1 %i.fo, label %bb.au, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i780

bb.au:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i779, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i785
  %i.fp = load i64, ptr %i.br, align 8, !tbaa !184 ; 3 uses
  %i.fq = icmp ult i64 %i.fp, 16
  call void @llvm.assume(i1 %i.fq)
  %.not21.i782 = icmp eq ptr %4, %i.fj
  br i1 %.not21.i782, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit787, label %bb.av, !prof !185

bb.av:                                            ; preds = %bb.au
  switch i64 %i.fp, label %bb.ax [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i783
    i64 1, label %bb.aw
  ]

bb.aw:                                            ; preds = %bb.av
  %i.fr = load i8, ptr %i.fn, align 1, !tbaa !69
  store i8 %i.fr, ptr %i.fk, align 1, !tbaa !69
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i783

bb.ax:                                            ; preds = %bb.av
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fk, ptr align 1 %i.fn, i64 %i.fp, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i783

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i783: ; preds = %bb.ax, %bb.aw, %bb.av
  %i.fs = load i64, ptr %i.br, align 8, !tbaa !184 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.12741054, i64 88
  store i64 %i.fs, ptr %i.ft, align 8, !tbaa !184
  %i.fu = load ptr, ptr %i.fj, align 8, !tbaa !68
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.fs
  store i8 0, ptr %i.fv, align 1, !tbaa !69
  %.pre.i784 = load ptr, ptr %4, align 8, !tbaa !68
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit787

.thread.i786:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i785
  %i.fw = getelementptr inbounds nuw i8, ptr %.12741054, i64 88
  store ptr %i.fn, ptr %i.fj, align 8, !tbaa !68
  %i.fx = load <2 x i64>, ptr %i.br, align 8, !tbaa !69
  store <2 x i64> %i.fx, ptr %i.fw, align 8, !tbaa !69
  br label %bb.az

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i780: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i779
  %i.fy = load i64, ptr %i.fl, align 8, !tbaa !69
  store ptr %i.fn, ptr %i.fj, align 8, !tbaa !68
  %i.fz = getelementptr inbounds nuw i8, ptr %.12741054, i64 88
  %i.ga = load <2 x i64>, ptr %i.br, align 8, !tbaa !69
  store <2 x i64> %i.ga, ptr %i.fz, align 8, !tbaa !69
  %.not.i781 = icmp eq ptr %i.fk, null
  br i1 %.not.i781, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i780
  store ptr %i.fk, ptr %4, align 8, !tbaa !68
  store i64 %i.fy, ptr %i.bq, align 8, !tbaa !69
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit787

bb.az:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i780, %.thread.i786
  store ptr %i.bq, ptr %4, align 8, !tbaa !68
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit787

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit787: ; preds = %bb.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i783, %bb.ay, %bb.az
  %i.gb = phi ptr [ %.pre.i784, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i783 ], [ %i.fk, %bb.ay ], [ %i.bq, %bb.az ], [ %i.fn, %bb.au ]
  store i64 0, ptr %i.br, align 8, !tbaa !184
  store i8 0, ptr %i.gb, align 1, !tbaa !69
  %i.gc = load ptr, ptr %4, align 8, !tbaa !68    ; 2 uses
  %i.gd = icmp eq ptr %i.gc, %i.bq
  br i1 %i.gd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit790, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i788

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i788: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit787
  %i.ge = load i64, ptr %i.bq, align 8, !tbaa !69
  %i.gf = add i64 %i.ge, 1
  call void @_ZdlPvm(ptr noundef %i.gc, i64 noundef %i.gf) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit790

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit790: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit787, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i788
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.gg = getelementptr inbounds nuw i8, ptr %.12741054, i64 112 ; 4 uses
  %i.gh = load i32, ptr %i.j, align 4, !tbaa !80  ; 4 uses
  %i.gi = sext i32 %i.gh to i64                   ; 4 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.12741054, i64 120 ; 2 uses
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !78 ; 2 uses
  %i.gl = load ptr, ptr %i.gg, align 8, !tbaa !79 ; 2 uses
  %i.gm = ptrtoint ptr %i.gk to i64
  %i.gn = ptrtoint ptr %i.gl to i64
  %i.go = sub i64 %i.gm, %i.gn
  %i.gp = ashr exact i64 %i.go, 2                 ; 3 uses
  %i.gq = icmp ult i64 %i.gp, %i.gi
  br i1 %i.gq, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit790
  %i.gr = sub nuw nsw i64 %i.gi, %i.gp
  invoke void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.gg, i64 noundef %i.gr)
          to label %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge unwind label %.loopexit

._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge:    ; preds = %bb.ba
  %.pre1732 = load i32, ptr %i.j, align 4, !tbaa !80
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.bb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit790
  %i.gs = icmp ugt i64 %i.gp, %i.gi
  br i1 %i.gs, label %bb.bc, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.bc:                                            ; preds = %bb.bb
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %i.gi ; 2 uses
  %.not.i.i791 = icmp eq ptr %i.gk, %i.gt
  br i1 %.not.i.i791, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.bc
  store ptr %i.gt, ptr %i.gj, align 8, !tbaa !78
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge, %bb.bb, %bb.bc, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.gu = phi i32 [ %.pre1732, %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge ], [ %i.gh, %bb.bb ], [ %i.gh, %bb.bc ], [ %i.gh, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ]
  %.not3581600 = icmp sgt i32 %i.gu, 0
  br i1 %.not3581600, label %.lr.ph.preheader, label %.thread1061

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.gv = trunc nuw nsw i64 %indvars.iv1728 to i32
  br label %.lr.ph

bb.bd:                                            ; preds = %.noexc.i
  %i.gw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.ht

bb.be:                                            ; preds = %.noexc.i776
  %i.gx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.ht

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.bt
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.bt ] ; 2 uses
  %.13191601 = phi i32 [ %.03181620, %.lr.ph.preheader ], [ %.2320, %bb.bt ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #28
  %i.gy = load ptr, ptr %1, align 8, !tbaa !9
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %i.ha = load ptr, ptr %i.gz, align 8
  %i.hb = invoke noundef i32 %i.ha(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.16, ptr noundef nonnull %i.l)
          to label %bb.bf unwind label %bb.bg

bb.bf:                                            ; preds = %.lr.ph
  %.not354 = icmp eq i32 %i.hb, 1
  br i1 %.not354, label %bb.bh, label %.thread1058

.thread1058:                                      ; preds = %bb.bf
  %i.hc = load ptr, ptr @stderr, align 8, !tbaa !162
  %i.hd = call i64 @fwrite(ptr nonnull @.str.22, i64 24, i64 1, ptr %i.hc) #34 ; 0 uses
  %i.he = load ptr, ptr @stderr, align 8, !tbaa !162
  %fputc357 = call i32 @fputc(i32 10, ptr %i.he)  ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #28
  br label %.thread1097

bb.bg:                                            ; preds = %.lr.ph
  %i.hf = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.bh:                                            ; preds = %bb.bf
  %i.hg = load ptr, ptr %i.at, align 8, !tbaa !12 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !61 ; 2 uses
  %i.hk = load ptr, ptr %i.hh, align 8, !tbaa !58 ; 6 uses
  %.not.i793 = icmp eq ptr %i.hj, %i.hk
  br i1 %.not.i793, label %_ZNK4ncnn3Net23find_blob_index_by_nameEPKc.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.bh
  %i.hl = ptrtoint ptr %i.hj to i64
  %i.hm = ptrtoint ptr %i.hk to i64
  %i.hn = sub i64 %i.hl, %i.hm
  %i.ho = sdiv i64 %i.hn, 112
  %i.hp = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.l) #28 ; 3 uses
  %umax.i = call i64 @llvm.umax.i64(i64 %i.ho, i64 1) ; 2 uses
  %i.hq = icmp eq i64 %i.hp, 0
  br i1 %i.hq, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread13.i.us
  %.01020.i.us = phi i64 [ %i.hv, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread13.i.us ], [ 0, %.lr.ph.i ] ; 3 uses
  %i.hr = getelementptr inbounds nuw [112 x i8], ptr %i.hk, i64 %.01020.i.us
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !184
  %i.hu = icmp eq i64 %i.ht, 0
  br i1 %i.hu, label %_ZNK4ncnn3Net23find_blob_index_by_nameEPKc.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread13.i.us

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread13.i.us: ; preds = %.lr.ph.i.split.us
  %i.hv = add nuw i64 %.01020.i.us, 1             ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.hv, %umax.i
  br i1 %exitcond.not.i.us, label %_ZNK4ncnn3Net23find_blob_index_by_nameEPKc.exit.thread, label %.lr.ph.i.split.us, !llvm.loop !186

.lr.ph.i.split:                                   ; preds = %.lr.ph.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread13.i
  %.01020.i = phi i64 [ %i.ic, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread13.i ], [ 0, %.lr.ph.i ] ; 3 uses
  %i.hw = getelementptr inbounds nuw [112 x i8], ptr %i.hk, i64 %.01020.i ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !184
  %i.hz = icmp eq i64 %i.hy, %i.hp
  br i1 %i.hz, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread13.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i: ; preds = %.lr.ph.i.split
  %i.ia = load ptr, ptr %i.hw, align 8, !tbaa !68
  %bcmp.i.i = call i32 @bcmp(ptr %i.ia, ptr nonnull %i.l, i64 %i.hp)
  %i.ib = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.ib, label %_ZNK4ncnn3Net23find_blob_index_by_nameEPKc.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread13.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread13.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, %.lr.ph.i.split
  %i.ic = add nuw i64 %.01020.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ic, %umax.i
  br i1 %exitcond.not.i, label %_ZNK4ncnn3Net23find_blob_index_by_nameEPKc.exit.thread, label %.lr.ph.i.split, !llvm.loop !186

_ZNK4ncnn3Net23find_blob_index_by_nameEPKc.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread13.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread13.i.us, %bb.bh
  %i.id = load ptr, ptr @stderr, align 8, !tbaa !162
  %i.ie = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.id, ptr noundef nonnull @.str.47, ptr noundef nonnull %i.l) #35 ; 0 uses
  %i.if = load ptr, ptr @stderr, align 8, !tbaa !162
  %fputc.i = call i32 @fputc(i32 10, ptr %i.if)   ; 0 uses
  %.pre1733 = load ptr, ptr %i.at, align 8, !tbaa !12
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre1733, i64 8
  %.pre1734 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !58
  br label %bb.bi

_ZNK4ncnn3Net23find_blob_index_by_nameEPKc.exit:  ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, %.lr.ph.i.split.us
  %.us-phi = phi i64 [ %.01020.i.us, %.lr.ph.i.split.us ], [ %.01020.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i ] ; 2 uses
  %.3.i = trunc i64 %.us-phi to i32               ; 2 uses
  %i.ig = icmp eq i32 %.3.i, -1
  br i1 %i.ig, label %bb.bi, label %_ZNK4ncnn3Net23find_blob_index_by_nameEPKc.exit._crit_edge

_ZNK4ncnn3Net23find_blob_index_by_nameEPKc.exit._crit_edge: ; preds = %_ZNK4ncnn3Net23find_blob_index_by_nameEPKc.exit
  %sext = shl i64 %.us-phi, 32
  %.pre1766 = ashr exact i64 %sext, 32
  br label %bb.bt

bb.bi:                                            ; preds = %_ZNK4ncnn3Net23find_blob_index_by_nameEPKc.exit.thread, %_ZNK4ncnn3Net23find_blob_index_by_nameEPKc.exit
  %i.ih = phi ptr [ %.pre1734, %_ZNK4ncnn3Net23find_blob_index_by_nameEPKc.exit.thread ], [ %i.hk, %_ZNK4ncnn3Net23find_blob_index_by_nameEPKc.exit ]
  %i.ii = sext i32 %.13191601 to i64              ; 2 uses
  %i.ij = getelementptr inbounds nuw [112 x i8], ptr %i.ih, i64 %i.ii ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store ptr %i.bs, ptr %5, align 8, !tbaa !182
  %i.ik = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.l) #28 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i64 %i.ik, ptr %i.b, align 8, !tbaa !183
  %i.il = icmp ugt i64 %i.ik, 15
  br i1 %i.il, label %.noexc.i795, label %._crit_edge.i.i794

.noexc.i795:                                      ; preds = %bb.bi
  %i.im = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc796 unwind label %bb.bs ; 2 uses

.noexc796:                                        ; preds = %.noexc.i795
  store ptr %i.im, ptr %5, align 8, !tbaa !68
  %i.in = load i64, ptr %i.b, align 8, !tbaa !183
  store i64 %i.in, ptr %i.bs, align 8, !tbaa !69
  br label %._crit_edge.i.i794

._crit_edge.i.i794:                               ; preds = %.noexc796, %bb.bi
  %i.io = phi ptr [ %i.im, %.noexc796 ], [ %i.bs, %bb.bi ] ; 2 uses
  switch i64 %i.ik, label %bb.bk [
    i64 1, label %bb.bj
    i64 0, label %bb.bl
  ]

bb.bj:                                            ; preds = %._crit_edge.i.i794
  %i.ip = load i8, ptr %i.l, align 16, !tbaa !69
  store i8 %i.ip, ptr %i.io, align 1, !tbaa !69
  br label %bb.bl

bb.bk:                                            ; preds = %._crit_edge.i.i794
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.io, ptr nonnull align 16 %i.l, i64 %i.ik, i1 false)
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj, %._crit_edge.i.i794
  %i.iq = load i64, ptr %i.b, align 8, !tbaa !183 ; 2 uses
  store i64 %i.iq, ptr %i.bt, align 8, !tbaa !184
  %i.ir = load ptr, ptr %5, align 8, !tbaa !68
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 %i.iq
  store i8 0, ptr %i.is, align 1, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.it = load ptr, ptr %i.ij, align 8, !tbaa !68 ; 6 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ij, i64 16 ; 4 uses
  %i.iv = icmp eq ptr %i.it, %i.iu
  %i.iw = load ptr, ptr %5, align 8, !tbaa !68    ; 6 uses
  %i.ix = icmp eq ptr %i.iw, %i.bs                ; 2 uses
  br i1 %i.iv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i804, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i798

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i804: ; preds = %bb.bl
  br i1 %i.ix, label %bb.bm, label %.thread.i805

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i798: ; preds = %bb.bl
  br i1 %i.ix, label %bb.bm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i799

bb.bm:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i798, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i804
  %i.iy = load i64, ptr %i.bt, align 8, !tbaa !184 ; 3 uses
  %i.iz = icmp ult i64 %i.iy, 16
  call void @llvm.assume(i1 %i.iz)
  %.not21.i801 = icmp eq ptr %5, %i.ij
  br i1 %.not21.i801, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit806, label %bb.bn, !prof !185

bb.bn:                                            ; preds = %bb.bm
  switch i64 %i.iy, label %bb.bp [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i802
    i64 1, label %bb.bo
  ]

bb.bo:                                            ; preds = %bb.bn
  %i.ja = load i8, ptr %i.iw, align 1, !tbaa !69
  store i8 %i.ja, ptr %i.it, align 1, !tbaa !69
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i802

bb.bp:                                            ; preds = %bb.bn
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.it, ptr align 1 %i.iw, i64 %i.iy, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i802

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i802: ; preds = %bb.bp, %bb.bo, %bb.bn
  %i.jb = load i64, ptr %i.bt, align 8, !tbaa !184 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  store i64 %i.jb, ptr %i.jc, align 8, !tbaa !184
  %i.jd = load ptr, ptr %i.ij, align 8, !tbaa !68
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 %i.jb
  store i8 0, ptr %i.je, align 1, !tbaa !69
  %.pre.i803 = load ptr, ptr %5, align 8, !tbaa !68
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit806

.thread.i805:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i804
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  store ptr %i.iw, ptr %i.ij, align 8, !tbaa !68
  %i.jg = load i64, ptr %i.bt, align 8, !tbaa !184
  store i64 %i.jg, ptr %i.jf, align 8, !tbaa !184
  %i.jh = load i64, ptr %i.bs, align 8, !tbaa !69
  store i64 %i.jh, ptr %i.iu, align 8, !tbaa !69
  br label %bb.br

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i799: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i798
  %i.ji = load i64, ptr %i.iu, align 8, !tbaa !69
  store ptr %i.iw, ptr %i.ij, align 8, !tbaa !68
  %i.jj = load i64, ptr %i.bt, align 8, !tbaa !184
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  store i64 %i.jj, ptr %i.jk, align 8, !tbaa !184
  %i.jl = load i64, ptr %i.bs, align 8, !tbaa !69
  store i64 %i.jl, ptr %i.iu, align 8, !tbaa !69
  %.not.i800 = icmp eq ptr %i.it, null
  br i1 %.not.i800, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i799
  store ptr %i.it, ptr %5, align 8, !tbaa !68
  store i64 %i.ji, ptr %i.bs, align 8, !tbaa !69
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit806

bb.br:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i799, %.thread.i805
  store ptr %i.bs, ptr %5, align 8, !tbaa !68
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit806

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit806: ; preds = %bb.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i802, %bb.bq, %bb.br
  %i.jm = phi ptr [ %.pre.i803, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i802 ], [ %i.it, %bb.bq ], [ %i.bs, %bb.br ], [ %i.iw, %bb.bm ]
  store i64 0, ptr %i.bt, align 8, !tbaa !184
  store i8 0, ptr %i.jm, align 1, !tbaa !69
  %i.jn = load ptr, ptr %5, align 8, !tbaa !68    ; 2 uses
  %i.jo = icmp eq ptr %i.jn, %i.bs
  br i1 %i.jo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit809, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i807

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i807: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit806
  %i.jp = load i64, ptr %i.bs, align 8, !tbaa !69
  %i.jq = add i64 %i.jp, 1
  call void @_ZdlPvm(ptr noundef %i.jn, i64 noundef %i.jq) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit809

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit809: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit806, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i807
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.jr = add nsw i32 %.13191601, 1
  %.pre1735 = load ptr, ptr %i.at, align 8, !tbaa !12
  %.phi.trans.insert1736 = getelementptr inbounds nuw i8, ptr %.pre1735, i64 8
  %.pre1737 = load ptr, ptr %.phi.trans.insert1736, align 8, !tbaa !58
  br label %bb.bt

bb.bs:                                            ; preds = %.noexc.i795
  %i.js = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.bu

bb.bt:                                            ; preds = %_ZNK4ncnn3Net23find_blob_index_by_nameEPKc.exit._crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit809
  %.pre-phi = phi i64 [ %.pre1766, %_ZNK4ncnn3Net23find_blob_index_by_nameEPKc.exit._crit_edge ], [ %i.ii, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit809 ]
  %i.jt = phi ptr [ %i.hk, %_ZNK4ncnn3Net23find_blob_index_by_nameEPKc.exit._crit_edge ], [ %.pre1737, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit809 ]
  %.2320 = phi i32 [ %.13191601, %_ZNK4ncnn3Net23find_blob_index_by_nameEPKc.exit._crit_edge ], [ %i.jr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit809 ] ; 2 uses
  %.0271 = phi i32 [ %.3.i, %_ZNK4ncnn3Net23find_blob_index_by_nameEPKc.exit._crit_edge ], [ %.13191601, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit809 ]
  %i.ju = getelementptr inbounds nuw [112 x i8], ptr %i.jt, i64 %.pre-phi
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 36
  store i32 %i.gv, ptr %i.jv, align 4, !tbaa !131
  %i.jw = load ptr, ptr %i.gg, align 8, !tbaa !79
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %indvars.iv
  store i32 %.0271, ptr %i.jx, align 4, !tbaa !80
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.jy = load i32, ptr %i.j, align 4, !tbaa !80
  %i.jz = sext i32 %i.jy to i64
  %.not358 = icmp slt i64 %indvars.iv.next, %i.jz
  br i1 %.not358, label %.lr.ph, label %.thread1061, !llvm.loop !187

bb.bu:                                            ; preds = %bb.bs, %bb.bg
  %.pn.pn = phi { ptr, i32 } [ %i.hf, %bb.bg ], [ %i.js, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #28
  br label %bb.ht

.thread1061:                                      ; preds = %bb.bt, %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %.1319.lcssa = phi i32 [ %.03181620, %_ZNSt6vectorIiSaIiEE6resizeEm.exit ], [ %.2320, %bb.bt ] ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %.12741054, i64 136 ; 5 uses
  %i.kb = load i32, ptr %i.k, align 4, !tbaa !80  ; 4 uses
  %i.kc = sext i32 %i.kb to i64                   ; 4 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %.12741054, i64 144 ; 2 uses
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !78 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4ncnn3Net10load_paramERKNS_10DataReaderE:bb.a
  %.not3.i572 = icmp eq ptr %i.ajl, null
  %i.ajm = load ptr, ptr %7, align 8, !tbaa !65   ; 3 uses
  br i1 %.not3.i572, label %bb.hq, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  %i.ajn = load ptr, ptr %i.ajl, align 8, !tbaa !9
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.ajn, i64 24
  %i.ajp = load ptr, ptr %i.ajo, align 8
  invoke void %i.ajp(ptr noundef nonnull align 8 dereferenceable(8) %i.ajl, ptr noundef %i.ajm)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.hs, !inline_history !66

bb.hq:                                            ; preds = %bb.ho
  %.not.i575 = icmp eq ptr %i.ajm, null
  br i1 %.not.i575, label %_ZN4ncnn3MatD2Ev.exit, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  call void @free(ptr noundef nonnull %i.ajm) #28
  br label %_ZN4ncnn3MatD2Ev.exit

bb.hs:                                            ; preds = %bb.hp
  %i.ajq = landingpad { ptr, i32 }
          catch ptr null
  %i.ajr = extractvalue { ptr, i32 } %i.ajq, 0
  call void @__clang_call_terminate(ptr %i.ajr) #30
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.hr, %bb.hq, %bb.hp, %bb.hm, %bb.hn, %_ZN4ncnn3MatD2Ev.exit441
  %.pn390.pn.pn = phi { ptr, i32 } [ %i.oa, %_ZN4ncnn3MatD2Ev.exit441 ], [ %.pn390.pn, %bb.hn ], [ %.pn390.pn, %bb.hm ], [ %.pn390.pn, %bb.hp ], [ %.pn390.pn, %bb.hq ], [ %.pn390.pn, %bb.hr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.ht

bb.ht:                                            ; preds = %.loopexit1106, %.loopexit.split-lp1107, %.loopexit, %.loopexit.split-lp, %bb.bd, %bb.be, %bb.bu, %bb.cl, %_ZN4ncnn3MatD2Ev.exit, %bb.r
  %.pn395.pn.pn = phi { ptr, i32 } [ %i.cm, %bb.r ], [ %i.gw, %bb.bd ], [ %.pn360, %bb.cl ], [ %.pn390.pn.pn, %_ZN4ncnn3MatD2Ev.exit ], [ %.pn.pn, %bb.bu ], [ %i.gx, %bb.be ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit1108, %.loopexit1106 ], [ %lpad.loopexit.split-lp1109, %.loopexit.split-lp1107 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #28
  br label %bb.hw

._crit_edge1623:                                  ; preds = %bb.hl, %_ZNSt6vectorIPN4ncnn5LayerESaIS2_EE6resizeEm.exit
  %i.ajs = load ptr, ptr %i.at, align 8, !tbaa !12
  invoke void @_ZN4ncnn10NetPrivate27update_input_output_indexesEv(ptr noundef nonnull align 8 dereferenceable(240) %i.ajs)
          to label %bb.hu unwind label %bb.hv

bb.hu:                                            ; preds = %._crit_edge1623
  %i.ajt = load ptr, ptr %i.at, align 8, !tbaa !12
  invoke void @_ZN4ncnn10NetPrivate25update_input_output_namesEv(ptr noundef nonnull align 8 dereferenceable(240) %i.ajt)
          to label %.thread1102 unwind label %bb.hv

bb.hv:                                            ; preds = %bb.hu, %._crit_edge1623
  %i.aju = landingpad { ptr, i32 }
          cleanup
  br label %bb.hw

.thread1102:                                      ; preds = %bb.hk, %.thread1097, %bb.hu
  %.16 = phi i32 [ 0, %bb.hu ], [ -1, %.thread1097 ], [ -1, %bb.hk ]
  call void @_ZN4ncnn9ParamDictD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.hx

bb.hw:                                            ; preds = %bb.hv, %bb.ht
  %.pn403 = phi { ptr, i32 } [ %i.aju, %bb.hv ], [ %.pn395.pn.pn, %bb.ht ]
  call void @_ZN4ncnn9ParamDictD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  resume { ptr, i32 } %.pn403

bb.hx:                                            ; preds = %.thread1102, %bb.j, %bb.h, %bb.f
  %.17 = phi i32 [ -1, %bb.f ], [ -1, %bb.h ], [ -1, %bb.j ], [ %.16, %.thread1102 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #28
  br label %bb.hy

bb.hy:                                            ; preds = %bb.hx, %bb.d, %bb.b
  %.18 = phi i32 [ -1, %bb.b ], [ -1, %bb.d ], [ %.17, %bb.hx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  ret i32 %.18
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN4ncnn4BlobESaIS1_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !58     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 112                 ; 3 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g
  tail call void @_ZNSt6vectorIN4ncnn4BlobESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.i)
  br label %_ZNSt6vectorIN4ncnn4BlobESaIS1_EE15_M_erase_at_endEPS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.j = icmp ult i64 %1, %i.g
  br i1 %i.j, label %bb.d, label %_ZNSt6vectorIN4ncnn4BlobESaIS1_EE15_M_erase_at_endEPS1_.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw [112 x i8], ptr %i.c, i64 %1 ; 3 uses
  %.not.i = icmp eq ptr %i.b, %i.k
  br i1 %.not.i, label %_ZNSt6vectorIN4ncnn4BlobESaIS1_EE15_M_erase_at_endEPS1_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %_ZSt8_DestroyIN4ncnn4BlobEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.af, %_ZSt8_DestroyIN4ncnn4BlobEEvPT_.exit.i.i.i ], [ %i.k, %bb.d ] ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !62   ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4ncnn3MatD2Ev.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.o = atomicrmw add ptr %i.n, i32 -1 acq_rel, align 4
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %bb.f, label %_ZN4ncnn3MatD2Ev.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 72
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !64   ; 3 uses
  %.not3.i.i.i.i.i.i = icmp eq ptr %i.r, null
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !65   ; 3 uses
  br i1 %.not3.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !9
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  invoke void %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef %i.s)
          to label %_ZN4ncnn3MatD2Ev.exit.i.i.i.i.i unwind label %bb.j, !inline_history !66

bb.h:                                             ; preds = %bb.f
  %.not.i1.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i1.i.i.i.i.i, label %_ZN4ncnn3MatD2Ev.exit.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @free(ptr noundef nonnull %i.s) #28
  br label %_ZN4ncnn3MatD2Ev.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.g
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #30
  unreachable

_ZN4ncnn3MatD2Ev.exit.i.i.i.i.i:                  ; preds = %bb.i, %bb.h, %bb.g, %bb.e, %.lr.ph.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 80
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 104
  store i64 0, ptr %i.z, align 8, !tbaa !67
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.l, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.y, i8 0, i64 20, i1 false)
  %i.aa = load ptr, ptr %.05.i.i.i, align 8, !tbaa !68 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZSt8_DestroyIN4ncnn4BlobEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZN4ncnn3MatD2Ev.exit.i.i.i.i.i
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !69
  %i.ae = add i64 %i.ad, 1
  tail call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #29
  br label %_ZSt8_DestroyIN4ncnn4BlobEEvPT_.exit.i.i.i

_ZSt8_DestroyIN4ncnn4BlobEEvPT_.exit.i.i.i:       ; preds = %_ZN4ncnn3MatD2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 112 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.af, %i.b
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4ncnn4BlobES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !70

_ZSt8_DestroyIPN4ncnn4BlobES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIN4ncnn4BlobEEvPT_.exit.i.i.i
  store ptr %i.k, ptr %i.a, align 8, !tbaa !61
  br label %_ZNSt6vectorIN4ncnn4BlobESaIS1_EE15_M_erase_at_endEPS1_.exit

_ZNSt6vectorIN4ncnn4BlobESaIS1_EE15_M_erase_at_endEPS1_.exit: ; preds = %_ZSt8_DestroyIPN4ncnn4BlobES1_EvT_S3_RSaIT0_E.exit.i, %bb.d, %bb.c, %bb.b
  ret void
}

declare void @_ZN4ncnn9ParamDictC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #10

declare noundef ptr @_ZN4ncnn16create_layer_cpuEPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind uwtable
define hidden noundef i32 @_ZNK4ncnn3Net23find_blob_index_by_nameEPKc(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !61   ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !58   ; 3 uses
  %.not = icmp eq ptr %i.e, %i.f
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv i64 %i.i, 112
  %i.k = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #28 ; 3 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.j, i64 1)
  %i.l = icmp eq i64 %i.k, 0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread13
  %.01020 = phi i64 [ 0, %.lr.ph ], [ %i.t, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread13 ] ; 4 uses
  %i.m = getelementptr inbounds nuw [112 x i8], ptr %i.f, i64 %.01020 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !184
  %i.p = icmp eq i64 %i.o, %i.k
  br i1 %i.p, label %bb.c, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread13

bb.c:                                             ; preds = %bb.b
  br i1 %i.l, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %bb.c
  %i.q = trunc i64 %.01020 to i32
  br label %bb.d

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.c
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !68
  %bcmp.i = tail call i32 @bcmp(ptr %i.r, ptr nonnull %1, i64 %i.k)
  %i.s = icmp eq i32 %bcmp.i, 0
  br i1 %i.s, label %.loopexit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread13

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread13: ; preds = %bb.b, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.t = add nuw i64 %.01020, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.t, %umax
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !186

._crit_edge:                                      ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread13, %bb.a
  %i.u = load ptr, ptr @stderr, align 8, !tbaa !162
  %i.v = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.u, ptr noundef nonnull @.str.47, ptr noundef %1) #35 ; 0 uses
  %i.w = load ptr, ptr @stderr, align 8, !tbaa !162
  %fputc = tail call i32 @fputc(i32 10, ptr %i.w) ; 0 uses
  br label %bb.d

.loopexit:                                        ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.x = trunc i64 %.01020 to i32
  br label %bb.d

bb.d:                                             ; preds = %.loopexit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %._crit_edge
  %.3 = phi i32 [ -1, %._crit_edge ], [ %i.q, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %i.x, %.loopexit ]
  ret i32 %.3
}

declare noundef i32 @_ZN4ncnn9ParamDict10load_paramERKNS_10DataReaderE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #10

declare void @_ZNK4ncnn9ParamDict3getEiRKNS_3MatE(ptr dead_on_unwind writable sret(%"class.ncnn::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #10

declare noundef i32 @_ZNK4ncnn9ParamDict3getEii(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !78
  %i.c = load ptr, ptr %1, align 8, !tbaa !79     ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !128
  %i.i = load ptr, ptr %0, align 8, !tbaa !79     ; 7 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i, !prof !185

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #32
  unreachable

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #33 ; 4 uses
  %i.p = icmp samesign ugt i64 %i.f, 4
  br i1 %i.p, label %bb.e, label %bb.f, !prof !177

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.o, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %i.q = icmp eq i64 %i.f, 4
  br i1 %i.q, label %bb.g, label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit

bb.g:                                             ; preds = %bb.f
  %i.r = load i32, ptr %i.c, align 4, !tbaa !80
  store i32 %i.r, ptr %i.o, align 4, !tbaa !80
  br label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit

_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #29
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit: ; preds = %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit, %bb.h
  store ptr %i.o, ptr %0, align 8, !tbaa !79
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.s, ptr %i.g, align 8, !tbaa !128
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.i:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !78   ; 3 uses
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.k                       ; 5 uses
  %.not24 = icmp ult i64 %i.w, %i.f
  br i1 %.not24, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = icmp sgt i64 %i.f, 4
  br i1 %i.x, label %bb.k, label %bb.l, !prof !177

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.l:                                             ; preds = %bb.j
  %i.y = icmp eq i64 %i.f, 4
  br i1 %i.y, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.m:                                             ; preds = %bb.l
  %i.z = load i32, ptr %i.c, align 4, !tbaa !80
  store i32 %i.z, ptr %i.i, align 4, !tbaa !80
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.n:                                             ; preds = %bb.i
  %i.aa = icmp sgt i64 %i.w, 4
  br i1 %i.aa, label %bb.o, label %bb.p, !prof !177

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.w, i1 false)
  %.pre = load ptr, ptr %1, align 8, !tbaa !79
  %.pre25 = load ptr, ptr %i.t, align 8, !tbaa !78 ; 2 uses
  %.pre26 = load ptr, ptr %0, align 8, !tbaa !79
  %.pre27 = load ptr, ptr %i.a, align 8, !tbaa !78
  %.pre28 = ptrtoint ptr %.pre25 to i64
  %.pre29 = ptrtoint ptr %.pre26 to i64
  %.pre31 = sub i64 %.pre28, %.pre29
  %.pre33 = ptrtoint ptr %.pre27 to i64
  br label %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit

bb.p:                                             ; preds = %bb.n
  %i.ab = icmp eq i64 %i.w, 4
  br i1 %i.ab, label %bb.q, label %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit

bb.q:                                             ; preds = %bb.p
  %i.ac = load i32, ptr %i.c, align 4, !tbaa !80
  store i32 %i.ac, ptr %i.i, align 4, !tbaa !80
  br label %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit

_ZSt4copyIPiS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.o, %bb.p, %bb.q
  %.pre-phi34 = phi i64 [ %.pre33, %bb.o ], [ %i.d, %bb.p ], [ %i.d, %bb.q ]
  %.pre-phi32 = phi i64 [ %.pre31, %bb.o ], [ %i.w, %bb.p ], [ 4, %bb.q ]
  %i.ad = phi ptr [ %.pre25, %bb.o ], [ %i.u, %bb.p ], [ %i.u, %bb.q ] ; 2 uses
  %i.ae = phi ptr [ %.pre, %bb.o ], [ %i.c, %bb.p ], [ %i.c, %bb.q ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.pre-phi32 ; 3 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %.pre-phi34, %i.ag              ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, 4
  br i1 %i.ai, label %bb.r, label %bb.s, !prof !177

bb.r:                                             ; preds = %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ad, ptr align 4 %i.af, i64 %i.ah, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.s:                                             ; preds = %_ZSt4copyIPiS0_ET0_T_S2_S1_.exit
  %i.aj = icmp eq i64 %i.ah, 4
  br i1 %i.aj, label %bb.t, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.t:                                             ; preds = %bb.s
  %i.ak = load i32, ptr %i.af, align 4, !tbaa !80
  store i32 %i.ak, ptr %i.ad, align 4, !tbaa !80
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit: ; preds = %bb.t, %bb.s, %bb.r, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit
  %i.al = load ptr, ptr %0, align 8, !tbaa !79
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.f
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.am, ptr %i.an, align 8, !tbaa !78
  br label %bb.u

bb.u:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN4ncnn3MatESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !113  ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !81     ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !109
  %i.i = load ptr, ptr %0, align 8, !tbaa !81     ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 3 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.n = sdiv exact i64 %i.f, 72
  %i.o = icmp ugt i64 %i.n, 128102389400760775
  br i1 %i.o, label %bb.d, label %_ZNSt12_Vector_baseIN4ncnn3MatESaIS1_EE11_M_allocateEm.exit.i, !prof !185

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #32
end_hunk_1
begin_hunk_2_@_ZN4ncnn9ExtractorD2Ev:bb.a
bb.n:                                             ; preds = %_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !109
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.av) #29
  br label %_ZN4ncnn16ExtractorPrivateD2Ev.exit

_ZN4ncnn16ExtractorPrivateD2Ev.exit:              ; preds = %_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef 96) #29
  br label %bb.o

bb.o:                                             ; preds = %_ZN4ncnn16ExtractorPrivateD2Ev.exit, %_ZN4ncnn9Extractor5clearEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4ncnn9Extractor5clearEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !231  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !81   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !113  ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, %i.d
  br i1 %.not.i.i, label %_ZNSt6vectorIN4ncnn3MatESaIS1_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i.i ], [ %i.d, %bb.a ] ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !62   ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.i = atomicrmw add ptr %i.h, i32 -1 acq_rel, align 4
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %bb.c, label %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !64   ; 3 uses
  %.not3.i.i.i.i.i.i = icmp eq ptr %i.l, null
  %i.m = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !65 ; 3 uses
  br i1 %.not3.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !9
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  invoke void %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef %i.m)
          to label %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i.i unwind label %bb.g, !inline_history !66

bb.e:                                             ; preds = %bb.c
  %.not.i1.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i1.i.i.i.i.i, label %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.m) #28
  br label %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i.i

bb.g:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #30
  unreachable

_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i.i:      ; preds = %bb.f, %bb.e, %bb.d, %bb.b, %.lr.ph.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64
  store i64 0, ptr %i.t, align 8, !tbaa !67
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.05.i.i.i.i, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.s, i8 0, i64 20, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, %i.f
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !118

_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIN4ncnn3MatEEvPT_.exit.i.i.i.i
  store ptr %i.d, ptr %i.e, align 8, !tbaa !113
  br label %_ZNSt6vectorIN4ncnn3MatESaIS1_EE5clearEv.exit

_ZNSt6vectorIN4ncnn3MatESaIS1_EE5clearEv.exit:    ; preds = %bb.a, %_ZSt8_DestroyIPN4ncnn3MatES1_EvT_S3_RSaIT0_E.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn9ExtractorC2ERKS0_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4ncnn9ExtractorE, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #33 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  invoke void @_ZN4ncnn6OptionC1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %_ZN4ncnn16ExtractorPrivateC2EPKNS_3NetE.exit unwind label %.body

.body:                                            ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorIN4ncnn3MatESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #28
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 96) #29
  resume { ptr, i32 } %i.d

_ZN4ncnn16ExtractorPrivateC2EPKNS_3NetE.exit:     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.a, ptr %i.e, align 8, !tbaa !231
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !231  ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !228
  store ptr %i.h, ptr %i.a, align 8, !tbaa !228
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN4ncnn3MatESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.i) ; 0 uses
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !231
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !231
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.n, ptr noundef nonnull align 8 dereferenceable(64) %i.l, i64 64, i1 false), !tbaa.struct !87
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZN4ncnn9ExtractoraSERKS0_(ptr nofree noundef nonnull readonly returned align 8 captures(address, ret: address, provenance) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !231  ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !228
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !231  ; 2 uses
  store ptr %i.d, ptr %i.f, align 8, !tbaa !228
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN4ncnn3MatESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.g) ; 0 uses
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !231
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !231
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.m, ptr noundef nonnull align 8 dereferenceable(64) %i.k, i64 64, i1 false), !tbaa.struct !87
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4ncnn9Extractor14set_light_modeEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i1 noundef zeroext %1) local_unnamed_addr #21 align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !231
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i8 %i.a, ptr %i.d, align 8, !tbaa !235
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4ncnn9Extractor18set_blob_allocatorEPNS_9AllocatorE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #21 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !231
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %1, ptr %i.c, align 8, !tbaa !236
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4ncnn9Extractor23set_workspace_allocatorEPNS_9AllocatorE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #21 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !231
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %1, ptr %i.c, align 8, !tbaa !237
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -1, 1) i32 @_ZN4ncnn9Extractor5inputEPKcRKNS_3MatE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(72) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !231
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !228
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !12   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !61   ; 2 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !58   ; 4 uses
  %.not.i = icmp eq ptr %i.h, %i.i
  br i1 %.not.i, label %_ZNK4ncnn3Net23find_blob_index_by_nameEPKc.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = sdiv i64 %i.l, 112
  %i.n = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #28 ; 3 uses
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1) ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread13.i.us
  %.01020.i.us = phi i64 [ %i.t, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread13.i.us ], [ 0, %.lr.ph.i ] ; 3 uses
  %i.p = getelementptr inbounds nuw [112 x i8], ptr %i.i, i64 %.01020.i.us
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !184
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %_ZNK4ncnn3Net23find_blob_index_by_nameEPKc.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread13.i.us

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread13.i.us: ; preds = %.lr.ph.i.split.us
  %i.t = add nuw i64 %.01020.i.us, 1              ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.t, %umax.i
  br i1 %exitcond.not.i.us, label %_ZNK4ncnn3Net23find_blob_index_by_nameEPKc.exit.thread, label %.lr.ph.i.split.us, !llvm.loop !186

.lr.ph.i.split:                                   ; preds = %.lr.ph.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread13.i
  %.01020.i = phi i64 [ %i.aa, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread13.i ], [ 0, %.lr.ph.i ] ; 3 uses
  %i.u = getelementptr inbounds nuw [112 x i8], ptr %i.i, i64 %.01020.i ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !184
  %i.x = icmp eq i64 %i.w, %i.n
  br i1 %i.x, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread13.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i: ; preds = %.lr.ph.i.split
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !68
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.y, ptr nonnull %1, i64 %i.n)
  %i.z = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.z, label %_ZNK4ncnn3Net23find_blob_index_by_nameEPKc.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread13.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread13.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, %.lr.ph.i.split
  %i.aa = add nuw i64 %.01020.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.aa, %umax.i
  br i1 %exitcond.not.i, label %_ZNK4ncnn3Net23find_blob_index_by_nameEPKc.exit.thread, label %.lr.ph.i.split, !llvm.loop !186

_ZNK4ncnn3Net23find_blob_index_by_nameEPKc.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread13.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread13.i.us, %bb.a
  %i.ab = load ptr, ptr @stderr, align 8, !tbaa !162
  %i.ac = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ab, ptr noundef nonnull @.str.47, ptr noundef %1) #35 ; 0 uses
  %i.ad = load ptr, ptr @stderr, align 8, !tbaa !162
  %fputc.i = tail call i32 @fputc(i32 10, ptr %i.ad) ; 0 uses
  br label %bb.b

_ZNK4ncnn3Net23find_blob_index_by_nameEPKc.exit:  ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, %.lr.ph.i.split.us
  %.us-phi = phi i64 [ %.01020.i.us, %.lr.ph.i.split.us ], [ %.01020.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i ]
  %.3.i = trunc i64 %.us-phi to i32               ; 2 uses
  %i.ae = icmp eq i32 %.3.i, -1
  br i1 %i.ae, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNK4ncnn3Net23find_blob_index_by_nameEPKc.exit.thread, %_ZNK4ncnn3Net23find_blob_index_by_nameEPKc.exit
  %i.af = load ptr, ptr @stderr, align 8, !tbaa !162
  %i.ag = tail call i64 @fwrite(ptr nonnull @.str.49, i64 3, i64 1, ptr %i.af) #34 ; 0 uses
  %i.ah = load ptr, ptr @stderr, align 8, !tbaa !162
  %fputc = tail call i32 @fputc(i32 10, ptr %i.ah) ; 0 uses
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !231
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !228
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 72
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !12 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 104 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 112 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !136
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !133 ; 2 uses
  %.not = icmp eq ptr %i.ao, %i.ap
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %i.aq = phi ptr [ %i.az, %.lr.ph ], [ %i.ap, %bb.b ]
  %.017 = phi i64 [ %i.ax, %.lr.ph ], [ 0, %bb.b ] ; 3 uses
  %i.ar = load ptr, ptr @stderr, align 8, !tbaa !162
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %.017
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !138
  %i.au = trunc i64 %.017 to i32
  %i.av = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ar, ptr noundef nonnull @.str.50, ptr noundef %i.at, i32 noundef %i.au) #35 ; 0 uses
  %i.aw = load ptr, ptr @stderr, align 8, !tbaa !162
  %fputc13 = tail call i32 @fputc(i32 10, ptr %i.aw) ; 0 uses
  %i.ax = add nuw i64 %.017, 1                    ; 2 uses
  %i.ay = load ptr, ptr %i.an, align 8, !tbaa !136
  %i.az = load ptr, ptr %i.am, align 8, !tbaa !133 ; 2 uses
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = ashr exact i64 %i.bc, 3
  %i.be = icmp ult i64 %i.ax, %i.bd
  br i1 %i.be, label %.lr.ph, label %.loopexit, !llvm.loop !238

bb.c:                                             ; preds = %_ZNK4ncnn3Net23find_blob_index_by_nameEPKc.exit
  %i.bf = tail call noundef i32 @_ZN4ncnn9Extractor5inputEiRKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %.3.i, ptr noundef nonnull align 8 dereferenceable(72) %2)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %bb.c
  %.011 = phi i32 [ %i.bf, %bb.c ], [ -1, %bb.b ], [ -1, %.lr.ph ]
  ret i32 %.011
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -1, 1) i32 @_ZN4ncnn9Extractor5inputEiRKNS_3MatE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(72) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %_ZN4ncnn3MataSERKS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !231  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !113
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !81   ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 72
  %i.l = trunc i64 %i.k to i32
  %.not = icmp slt i32 %1, %i.l
  br i1 %.not, label %bb.c, label %_ZN4ncnn3MataSERKS0_.exit

bb.c:                                             ; preds = %bb.b
  %i.m = zext nneg i32 %1 to i64
  %i.n = getelementptr inbounds nuw [72 x i8], ptr %i.g, i64 %i.m ; 12 uses
  %i.o = icmp eq ptr %i.n, %2
  br i1 %i.o, label %_ZN4ncnn3MataSERKS0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !62   ; 2 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = atomicrmw add ptr %i.q, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !62   ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %_ZN4ncnn3Mat7releaseEv.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = atomicrmw add ptr %i.t, i32 -1 acq_rel, align 4
  %i.v = icmp eq i32 %i.u, 1
  br i1 %i.v, label %bb.h, label %_ZN4ncnn3Mat7releaseEv.exit.i

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !64   ; 3 uses
  %.not3.i.i = icmp eq ptr %i.x, null
  %i.y = load ptr, ptr %i.n, align 8, !tbaa !65   ; 3 uses
  br i1 %.not3.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !9
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef %i.y), !inline_history !204
  br label %_ZN4ncnn3Mat7releaseEv.exit.i

bb.j:                                             ; preds = %bb.h
  %.not.i18.i = icmp eq ptr %i.y, null
  br i1 %.not.i18.i, label %_ZN4ncnn3Mat7releaseEv.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @free(ptr noundef nonnull %i.y) #28
  br label %_ZN4ncnn3Mat7releaseEv.exit.i

_ZN4ncnn3Mat7releaseEv.exit.i:                    ; preds = %bb.j, %bb.k, %bb.i, %bb.g, %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 40 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.ag = getelementptr inbounds nuw i8, ptr %i.n, i64 64 ; 2 uses
  store i64 0, ptr %i.ag, align 8, !tbaa !67
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.n, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ae, i8 0, i64 20, i1 false)
  %i.ah = load <2 x ptr>, ptr %2, align 8, !tbaa !105
  store <2 x ptr> %i.ah, ptr %i.n, align 8, !tbaa !105
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !106
  store i64 %i.aj, ptr %i.ac, align 8, !tbaa !106
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !107
  store i32 %i.al, ptr %i.ad, align 8, !tbaa !107
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !64
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.aq = load <4 x i32>, ptr %i.ap, align 8, !tbaa !80
  store <4 x i32> %i.aq, ptr %i.ae, align 8, !tbaa !80
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !108
  store i32 %i.as, ptr %i.af, align 8, !tbaa !108
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.au = load i64, ptr %i.at, align 8, !tbaa !67
  store i64 %i.au, ptr %i.ag, align 8, !tbaa !67
  br label %_ZN4ncnn3MataSERKS0_.exit

_ZN4ncnn3MataSERKS0_.exit:                        ; preds = %_ZN4ncnn3Mat7releaseEv.exit.i, %bb.c, %bb.a, %bb.b
  %.0 = phi i32 [ -1, %bb.a ], [ -1, %bb.b ], [ 0, %bb.c ], [ 0, %_ZN4ncnn3Mat7releaseEv.exit.i ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN4ncnn9Extractor7extractEPKcRNS_3MatEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !231
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !228
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !12   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !61   ; 2 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !58   ; 4 uses
  %.not.i = icmp eq ptr %i.h, %i.i
  br i1 %.not.i, label %_ZNK4ncnn3Net23find_blob_index_by_nameEPKc.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = sdiv i64 %i.l, 112
  %i.n = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #28 ; 3 uses
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1) ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread13.i.us
  %.01020.i.us = phi i64 [ %i.t, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread13.i.us ], [ 0, %.lr.ph.i ] ; 3 uses
  %i.p = getelementptr inbounds nuw [112 x i8], ptr %i.i, i64 %.01020.i.us
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !184
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %_ZNK4ncnn3Net23find_blob_index_by_nameEPKc.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread13.i.us

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread13.i.us: ; preds = %.lr.ph.i.split.us
  %i.t = add nuw i64 %.01020.i.us, 1              ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.t, %umax.i
  br i1 %exitcond.not.i.us, label %_ZNK4ncnn3Net23find_blob_index_by_nameEPKc.exit.thread, label %.lr.ph.i.split.us, !llvm.loop !186

.lr.ph.i.split:                                   ; preds = %.lr.ph.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread13.i
  %.01020.i = phi i64 [ %i.aa, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread13.i ], [ 0, %.lr.ph.i ] ; 3 uses
  %i.u = getelementptr inbounds nuw [112 x i8], ptr %i.i, i64 %.01020.i ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !184
  %i.x = icmp eq i64 %i.w, %i.n
  br i1 %i.x, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread13.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i: ; preds = %.lr.ph.i.split
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !68
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.y, ptr nonnull %1, i64 %i.n)
  %i.z = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.z, label %_ZNK4ncnn3Net23find_blob_index_by_nameEPKc.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread13.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread13.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, %.lr.ph.i.split
  %i.aa = add nuw i64 %.01020.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.aa, %umax.i
  br i1 %exitcond.not.i, label %_ZNK4ncnn3Net23find_blob_index_by_nameEPKc.exit.thread, label %.lr.ph.i.split, !llvm.loop !186

_ZNK4ncnn3Net23find_blob_index_by_nameEPKc.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread13.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread13.i.us, %bb.a
  %i.ab = load ptr, ptr @stderr, align 8, !tbaa !162
  %i.ac = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ab, ptr noundef nonnull @.str.47, ptr noundef %1) #35 ; 0 uses
  %i.ad = load ptr, ptr @stderr, align 8, !tbaa !162
  %fputc.i = tail call i32 @fputc(i32 10, ptr %i.ad) ; 0 uses
  br label %bb.b

_ZNK4ncnn3Net23find_blob_index_by_nameEPKc.exit:  ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, %.lr.ph.i.split.us
  %.us-phi = phi i64 [ %.01020.i.us, %.lr.ph.i.split.us ], [ %.01020.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i ]
  %.3.i = trunc i64 %.us-phi to i32               ; 2 uses
  %i.ae = icmp eq i32 %.3.i, -1
  br i1 %i.ae, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNK4ncnn3Net23find_blob_index_by_nameEPKc.exit.thread, %_ZNK4ncnn3Net23find_blob_index_by_nameEPKc.exit
  %i.af = load ptr, ptr @stderr, align 8, !tbaa !162
  %i.ag = tail call i64 @fwrite(ptr nonnull @.str.49, i64 3, i64 1, ptr %i.af) #34 ; 0 uses
  %i.ah = load ptr, ptr @stderr, align 8, !tbaa !162
  %fputc = tail call i32 @fputc(i32 10, ptr %i.ah) ; 0 uses
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !231
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !228
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 72
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !12 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 128 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 136 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !136
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !133 ; 2 uses
  %.not = icmp eq ptr %i.ao, %i.ap
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %i.aq = phi ptr [ %i.az, %.lr.ph ], [ %i.ap, %bb.b ]
  %.018 = phi i64 [ %i.ax, %.lr.ph ], [ 0, %bb.b ] ; 3 uses
  %i.ar = load ptr, ptr @stderr, align 8, !tbaa !162
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %.018
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !138
  %i.au = trunc i64 %.018 to i32
  %i.av = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ar, ptr noundef nonnull @.str.51, ptr noundef %i.at, i32 noundef %i.au) #35 ; 0 uses
  %i.aw = load ptr, ptr @stderr, align 8, !tbaa !162
  %fputc14 = tail call i32 @fputc(i32 10, ptr %i.aw) ; 0 uses
  %i.ax = add nuw i64 %.018, 1                    ; 2 uses
  %i.ay = load ptr, ptr %i.an, align 8, !tbaa !136
  %i.az = load ptr, ptr %i.am, align 8, !tbaa !133 ; 2 uses
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = ashr exact i64 %i.bc, 3
  %i.be = icmp ult i64 %i.ax, %i.bd
  br i1 %i.be, label %.lr.ph, label %.loopexit, !llvm.loop !239

bb.c:                                             ; preds = %_ZNK4ncnn3Net23find_blob_index_by_nameEPKc.exit
  %i.bf = tail call noundef i32 @_ZN4ncnn9Extractor7extractEiRNS_3MatEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %.3.i, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %bb.c
  %.012 = phi i32 [ %i.bf, %bb.c ], [ -1, %bb.b ], [ -1, %.lr.ph ]
  ret i32 %.012
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN4ncnn9Extractor7extractEiRNS_3MatEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.ncnn::Mat", align 8         ; 15 uses
  %5 = alloca %"class.ncnn::Mat", align 16        ; 15 uses
  %6 = alloca %"class.ncnn::Mat", align 16        ; 15 uses
  %7 = alloca %"class.ncnn::Mat", align 16        ; 15 uses
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %_ZNK4ncnn3Mat5emptyEv.exit97.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !231  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !113
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !81
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 72
  %i.l = trunc i64 %i.k to i32
  %.not = icmp slt i32 %1, %i.l
  br i1 %.not, label %bb.c, label %_ZNK4ncnn3Mat5emptyEv.exit97.thread

bb.c:                                             ; preds = %bb.b
  %i.m = tail call noundef i32 @_ZN4ncnn17get_kmp_blocktimeEv()
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !231
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.p = load i32, ptr %i.o, align 8, !tbaa !240
  tail call void @_ZN4ncnn17set_kmp_blocktimeEi(i32 noundef %i.p)
  %i.q = tail call noundef i32 @_ZN4ncnn19get_flush_denormalsEv()
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !231
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 80
  %i.t = load i8, ptr %i.s, align 8, !tbaa !241
  %i.u = zext i8 %i.t to i32
  %i.v = tail call noundef i32 @_ZN4ncnn19set_flush_denormalsEi(i32 noundef %i.u) ; 0 uses
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !231  ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.y = zext nneg i32 %1 to i64                  ; 3 uses
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !81   ; 2 uses
  %i.aa = getelementptr inbounds nuw [72 x i8], ptr %i.z, i64 %i.y
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !82
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.ae = load ptr, ptr %i.w, align 8, !tbaa !228
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !12 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !58
  %i.aj = getelementptr inbounds nuw [112 x i8], ptr %i.ai, i64 %i.y
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !83
  %i.am = getelementptr inbounds nuw i8, ptr %i.w, i64 84
  %i.an = load i8, ptr %i.am, align 4, !tbaa !242, !range !94, !noundef !95
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %i.w, i64 40 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !236
  %.not43 = icmp eq ptr %i.aq, null
  br i1 %.not43, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ag, i64 200
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !141
  store ptr %i.as, ptr %i.ap, align 8, !tbaa !236
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %i.w, i64 48 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !237
  %.not44 = icmp eq ptr %i.au, null
  br i1 %.not44, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 208
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !168
  store ptr %i.aw, ptr %i.at, align 8, !tbaa !237
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.ay = tail call noundef i32 @_ZNK4ncnn10NetPrivate13forward_layerEiRSt6vectorINS_3MatESaIS2_EERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(240) %i.ag, i32 noundef %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(64) %i.ax)
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !231
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre134 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !81
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.c
  %i.az = phi ptr [ %.pre134, %bb.i ], [ %i.z, %bb.c ]
  %.040 = phi i32 [ %i.ay, %bb.i ], [ 0, %bb.c ]
  %i.ba = getelementptr inbounds nuw [72 x i8], ptr %i.az, i64 %i.y ; 10 uses
  %i.bb = icmp eq ptr %2, %i.ba
  br i1 %i.bb, label %._ZN4ncnn3MataSERKS0_.exit132_crit_edge, label %bb.k

._ZN4ncnn3MataSERKS0_.exit132_crit_edge:          ; preds = %bb.j
  %.pre135 = load ptr, ptr %2, align 8, !tbaa !65
  br label %_ZN4ncnn3MataSERKS0_.exit132

bb.k:                                             ; preds = %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !62 ; 2 uses
  %.not.i127 = icmp eq ptr %i.bd, null
  br i1 %.not.i127, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = atomicrmw add ptr %i.bd, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !62 ; 2 uses
  %.not.i.i128 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i128, label %_ZN4ncnn3Mat7releaseEv.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bh = atomicrmw add ptr %i.bg, i32 -1 acq_rel, align 4
  %i.bi = icmp eq i32 %i.bh, 1
  br i1 %i.bi, label %bb.o, label %_ZN4ncnn3Mat7releaseEv.exit.i

bb.o:                                             ; preds = %bb.n
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !64 ; 3 uses
  %.not3.i.i129 = icmp eq ptr %i.bk, null
  %i.bl = load ptr, ptr %2, align 8, !tbaa !65    ; 3 uses
  br i1 %.not3.i.i129, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bm = load ptr, ptr %i.bk, align 8, !tbaa !9
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  tail call void %i.bo(ptr noundef nonnull align 8 dereferenceable(8) %i.bk, ptr noundef %i.bl), !inline_history !204
  br label %_ZN4ncnn3Mat7releaseEv.exit.i

bb.q:                                             ; preds = %bb.o
end_hunk_2
