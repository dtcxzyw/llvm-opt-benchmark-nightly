inline.NumInlined: 5334
inline.NumDeleted: 1210
begin_hunk_0_@_ZN2PP11PowerParser13get_rb_satprbEPi:bb.a
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = sdiv exact i64 %i.r, 520
  %i.t = add nsw i64 %i.l, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 2408
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !416
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !411  ; 2 uses
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64                 ; 2 uses
  %i.z = sub i64 %i.x, %i.y
  %i.aa = sdiv exact i64 %i.z, 520
  %i.ab = add nsw i64 %i.t, %i.aa                 ; 2 uses
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 2400
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !415, !noalias !1401
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.y, %i.ag
  %i.ai = sdiv exact i64 %i.ah, 520
  %wide.trip.count = and i64 %i.ab, 2147483647
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt5dequeIN2PP12RestartblockESaIS1_EEixEm.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt5dequeIN2PP12RestartblockESaIS1_EEixEm.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt5dequeIN2PP12RestartblockESaIS1_EEixEm.exit ] ; 4 uses
  %i.aj = add nsw i64 %i.ai, %indvars.iv          ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.al = getelementptr inbounds nuw [520 x i8], ptr %i.w, i64 %indvars.iv
  br label %_ZNSt5dequeIN2PP12RestartblockESaIS1_EEixEm.exit

bb.d:                                             ; preds = %bb.b
  %i.am = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.aj
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !351, !noalias !1401
  br label %_ZNSt5dequeIN2PP12RestartblockESaIS1_EEixEm.exit

_ZNSt5dequeIN2PP12RestartblockESaIS1_EEixEm.exit: ; preds = %bb.c, %bb.d
  %storemerge.i.i.i.i = phi ptr [ %i.an, %bb.d ], [ %i.al, %bb.c ] ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i, i64 368
  %i.ap = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i, i64 336
  %i.aq = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i, i64 392
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !400 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i, i64 360
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !400
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 3
  %i.ay = icmp ne ptr %i.ar, null
  %.neg.i.i.i = sext i1 %i.ay to i64
  %i.az = add nsw i64 %i.ax, %.neg.i.i.i
  %i.ba = shl nsw i64 %i.az, 4
  %i.bb = load ptr, ptr %i.ao, align 8, !tbaa !394
  %i.bc = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i, i64 376
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !398
  %i.be = ptrtoint ptr %i.bb to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = lshr exact i64 %i.bg, 5
  %i.bi = add i64 %i.ba, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i, i64 352
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !399
  %i.bl = load ptr, ptr %i.ap, align 8, !tbaa !394
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = lshr exact i64 %i.bo, 5
  %i.bq = add i64 %i.bi, %i.bp
  %i.br = trunc i64 %i.bq to i32
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !1404
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN2PP11PowerParser13set_rb_satprbEPii(ptr noundef nonnull align 8 dereferenceable(2796) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2712
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2728
  %i.c = load <2 x ptr>, ptr %i.b, align 8, !tbaa !329, !noalias !1405
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2744
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2752
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !798, !noalias !1405 ; 2 uses
  %i.g = load <2 x ptr>, ptr %i.d, align 8, !tbaa !342, !noalias !1405
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2784
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !328  ; 2 uses
  %i.j = icmp ult ptr %i.f, %i.i
  br i1 %i.j, label %.lr.ph.i.i.i, label %_ZNSt5dequeIiSaIiEE5clearEv.exit

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.06.i.pn.i.i = phi ptr [ %.06.i.i.i, %.lr.ph.i.i.i ], [ %i.f, %bb.a ]
  %.06.i.i.i = getelementptr inbounds nuw i8, ptr %.06.i.pn.i.i, i64 8 ; 3 uses
  %i.k = load ptr, ptr %.06.i.i.i, align 8, !tbaa !329
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef 512) #32
  %i.l = icmp ult ptr %.06.i.i.i, %i.i
  br i1 %i.l, label %.lr.ph.i.i.i, label %_ZNSt5dequeIiSaIiEE5clearEv.exit, !llvm.loop !330

_ZNSt5dequeIiSaIiEE5clearEv.exit:                 ; preds = %.lr.ph.i.i.i, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2760 ; 3 uses
  store <2 x ptr> %i.c, ptr %i.m, align 8, !tbaa !329
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 2776 ; 2 uses
  store <2 x ptr> %i.g, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !342
  %i.n = icmp sgt i32 %2, 0
  br i1 %i.n, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNSt5dequeIiSaIiEE5clearEv.exit
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt5dequeIiSaIiEE9push_backERKi.exit, %_ZNSt5dequeIiSaIiEE5clearEv.exit
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt5dequeIiSaIiEE9push_backERKi.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZNSt5dequeIiSaIiEE9push_backERKi.exit ] ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !793  ; 3 uses
  %i.q = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !794
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -4
  %.not.i = icmp eq ptr %i.p, %i.r
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.s = load i32, ptr %i.o, align 4, !tbaa !4
  store i32 %i.s, ptr %i.p, align 4, !tbaa !4
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store ptr %i.t, ptr %i.m, align 8, !tbaa !793
  br label %_ZNSt5dequeIiSaIiEE9push_backERKi.exit

bb.c:                                             ; preds = %.lr.ph
  tail call void @_ZNSt5dequeIiSaIiEE16_M_push_back_auxIJRKiEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.o)
  br label %_ZNSt5dequeIiSaIiEE9push_backERKi.exit

_ZNSt5dequeIiSaIiEE9push_backERKi.exit:           ; preds = %bb.b, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1408
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN2PP11PowerParser10get_rb_satEPi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2796) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #21 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2424
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2392
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2448
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !417  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2416
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !417  ; 2 uses
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !411
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2432
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !415
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = sdiv exact i64 %i.r, 520
  %i.t = add nsw i64 %i.l, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 2408
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !416
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !411  ; 2 uses
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64                 ; 2 uses
  %i.z = sub i64 %i.x, %i.y
  %i.aa = sdiv exact i64 %i.z, 520
  %i.ab = add nsw i64 %i.t, %i.aa                 ; 2 uses
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 2400
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !415, !noalias !1409
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.y, %i.ag
  %i.ai = sdiv exact i64 %i.ah, 520
  %wide.trip.count = and i64 %i.ab, 2147483647
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.d
  %indvars.iv21 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next22, %bb.d ] ; 3 uses
  %.01114 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv, %bb.d ]
  %i.aj = add nsw i64 %i.ai, %indvars.iv21        ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 0                    ; 2 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.aj ; 2 uses
  %i.am = getelementptr inbounds nuw [520 x i8], ptr %i.w, i64 %indvars.iv21 ; 2 uses
  %sext = shl i64 %.01114, 32
  %2 = ashr exact i64 %sext, 32
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %.preheader, %_ZN2PP12Restartblock7get_satEi.exit
  %indvars.iv16 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next17, %_ZN2PP12Restartblock7get_satEi.exit ] ; 4 uses
  %indvars.iv = phi i64 [ %2, %.preheader ], [ %indvars.iv.next, %_ZN2PP12Restartblock7get_satEi.exit ] ; 3 uses
  br i1 %i.ak, label %_ZNSt5dequeIN2PP12RestartblockESaIS1_EEixEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !351, !noalias !1409
  br label %_ZNSt5dequeIN2PP12RestartblockESaIS1_EEixEm.exit

_ZNSt5dequeIN2PP12RestartblockESaIS1_EEixEm.exit: ; preds = %bb.b, %bb.c
  %storemerge.i.i.i.i = phi ptr [ %i.an, %bb.c ], [ %i.am, %bb.b ] ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i, i64 368
  %i.ap = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i, i64 336
  %i.aq = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i, i64 392
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !400 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i, i64 360
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !400
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 3
  %i.ay = icmp ne ptr %i.ar, null
  %.neg.i.i.i = sext i1 %i.ay to i64
  %i.az = add nsw i64 %i.ax, %.neg.i.i.i
  %i.ba = shl nsw i64 %i.az, 4
  %i.bb = load ptr, ptr %i.ao, align 8, !tbaa !394
  %i.bc = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i, i64 376
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !398
  %i.be = ptrtoint ptr %i.bb to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = lshr exact i64 %i.bg, 5
  %i.bi = add i64 %i.ba, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i, i64 352
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !399
  %i.bl = load ptr, ptr %i.ap, align 8, !tbaa !394
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = lshr exact i64 %i.bo, 5
  %i.bq = add i64 %i.bi, %i.bp
  %sext25 = shl i64 %i.bq, 32
  %i.br = ashr exact i64 %sext25, 32
  %i.bs = icmp slt i64 %indvars.iv16, %i.br
  br i1 %i.bs, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNSt5dequeIN2PP12RestartblockESaIS1_EEixEm.exit
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next22, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.preheader, !llvm.loop !1412

bb.e:                                             ; preds = %_ZNSt5dequeIN2PP12RestartblockESaIS1_EEixEm.exit
  br i1 %i.ak, label %_ZNSt5dequeIN2PP12RestartblockESaIS1_EEixEm.exit13, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bt = load ptr, ptr %i.al, align 8, !tbaa !351, !noalias !1413
  br label %_ZNSt5dequeIN2PP12RestartblockESaIS1_EEixEm.exit13

_ZNSt5dequeIN2PP12RestartblockESaIS1_EEixEm.exit13: ; preds = %bb.e, %bb.f
  %storemerge.i.i.i.i12 = phi ptr [ %i.bt, %bb.f ], [ %i.am, %bb.e ] ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i12, i64 336
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !394, !noalias !1416 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i12, i64 344
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !398, !noalias !1416
  %i.by = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i12, i64 360
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !400, !noalias !1416
  %i.ca = ptrtoint ptr %i.bv to i64
  %i.cb = ptrtoint ptr %i.bx to i64
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = ashr exact i64 %i.cc, 5
  %i.ce = add nsw i64 %i.cd, %indvars.iv16        ; 5 uses
  %i.cf = icmp sgt i64 %i.ce, -1
  br i1 %i.cf, label %bb.g, label %bb.j

bb.g:                                             ; preds = %_ZNSt5dequeIN2PP12RestartblockESaIS1_EEixEm.exit13
  %i.cg = icmp samesign ult i64 %i.ce, 16
  br i1 %i.cg, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ch = getelementptr inbounds nuw [32 x i8], ptr %i.bv, i64 %indvars.iv16
  br label %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm.exit.i

bb.i:                                             ; preds = %bb.g
  %i.ci = lshr i64 %i.ce, 4
  br label %bb.k

bb.j:                                             ; preds = %_ZNSt5dequeIN2PP12RestartblockESaIS1_EEixEm.exit13
  %i.cj = ashr i64 %i.ce, 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ck = phi i64 [ %i.ci, %bb.i ], [ %i.cj, %bb.j ] ; 2 uses
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.ck
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !338, !noalias !1416
  %i.cn = shl nsw i64 %i.ck, 4
  %i.co = sub nsw i64 %i.ce, %i.cn
  %i.cp = getelementptr inbounds [32 x i8], ptr %i.cm, i64 %i.co
  br label %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm.exit.i

_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm.exit.i: ; preds = %bb.k, %bb.h
  %storemerge.i.i.i.i.i = phi ptr [ %i.cp, %bb.k ], [ %i.ch, %bb.h ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i.i, i64 8
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !32
  %i.cs = icmp eq i64 %i.cr, 4
  br i1 %i.cs, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, label %_ZN2PP12Restartblock7get_satEi.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i: ; preds = %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm.exit.i
  %i.ct = load ptr, ptr %storemerge.i.i.i.i.i, align 8, !tbaa !27
  %i.cu = load i32, ptr %i.ct, align 1
  %i.cv = icmp ne i32 %i.cu, 1702195828
  %i.cw = zext i1 %i.cv to i32
  %bcmp.i.fr.i = freeze i32 %i.cw
  %i.cx = icmp eq i32 %bcmp.i.fr.i, 0
  %spec.select.i = zext i1 %i.cx to i32
  br label %_ZN2PP12Restartblock7get_satEi.exit

_ZN2PP12Restartblock7get_satEi.exit:              ; preds = %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm.exit.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i
  %i.cy = phi i32 [ 0, %_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEixEm.exit.i ], [ %spec.select.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i ]
  %i.cz = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv
  store i32 %i.cy, ptr %i.cz, align 4, !tbaa !4
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  br label %bb.b, !llvm.loop !1419
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN2PP11PowerParser10set_rb_satEPii(ptr noundef nonnull align 8 dereferenceable(2796) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2632
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2648
  %i.d = load <2 x ptr>, ptr %i.c, align 8, !tbaa !335, !noalias !1420
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2664
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2672
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1394, !noalias !1420 ; 2 uses
  %i.h = load <2 x ptr>, ptr %i.e, align 8, !tbaa !342, !noalias !1420
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2704
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !334  ; 2 uses
  %i.k = icmp ult ptr %i.g, %i.j
  br i1 %i.k, label %.lr.ph.i.i.i, label %_ZNSt5dequeIbSaIbEE5clearEv.exit

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.06.i.pn.i.i = phi ptr [ %.06.i.i.i, %.lr.ph.i.i.i ], [ %i.g, %bb.a ]
  %.06.i.i.i = getelementptr inbounds nuw i8, ptr %.06.i.pn.i.i, i64 8 ; 3 uses
  %i.l = load ptr, ptr %.06.i.i.i, align 8, !tbaa !335
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef 512) #32
  %i.m = icmp ult ptr %.06.i.i.i, %i.j
  br i1 %i.m, label %.lr.ph.i.i.i, label %_ZNSt5dequeIbSaIbEE5clearEv.exit, !llvm.loop !336

_ZNSt5dequeIbSaIbEE5clearEv.exit:                 ; preds = %.lr.ph.i.i.i, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2680
  store <2 x ptr> %i.d, ptr %i.n, align 8, !tbaa !335
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 2696
  store <2 x ptr> %i.h, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !342
  %i.o = icmp sgt i32 %2, 0
  br i1 %i.o, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNSt5dequeIbSaIbEE5clearEv.exit
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZNSt5dequeIbSaIbEE5clearEv.exit
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.q = load i32, ptr %i.p, align 4, !tbaa !4
  %i.r = icmp eq i32 %i.q, 1
  %spec.store.select = zext i1 %i.r to i8
  store i8 %spec.store.select, ptr %i.a, align 1
  call void @_ZNSt5dequeIbSaIbEE9push_backERKb(ptr noundef nonnull align 8 dereferenceable(80) %i.b, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1423
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIbSaIbEE9push_backERKb(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1424 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1425
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -1
  %.not = icmp eq ptr %i.b, %i.e
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %1, align 1, !tbaa !757, !range !767, !noundef !768
  store i8 %i.f, ptr %i.b, align 1, !tbaa !757
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1394 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1394
  %i.m = ptrtoint ptr %i.j to i64                 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN2PP11PowerParser15get_ssfout_lineERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
bb.h:                                             ; preds = %bb.g
  %i.al = icmp ult i64 %i.ah, 16
  call void @llvm.assume(i1 %i.al)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %bb.h, %bb.g
  %i.am = load i64, ptr %i.aa, align 8
  %i.an = select i1 %i.ak, i64 15, i64 %i.am
  %i.ao = icmp ugt i64 %i.ai, %i.an
  br i1 %i.ao, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.ah, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc4 unwind label %.loopexit

.noexc4:                                          ; preds = %bb.i
  %.pre.i.i.i = load ptr, ptr %1, align 8, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i: ; preds = %.noexc4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.ap = phi ptr [ %.pre.i.i.i, %.noexc4 ], [ %i.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ah
  store i8 %i.ae, ptr %i.aq, align 1, !tbaa !33
  store i64 %i.ai, ptr %i.u, align 8, !tbaa !32
  %i.ar = load ptr, ptr %1, align 8, !tbaa !27
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ai
  store i8 0, ptr %i.as, align 1, !tbaa !33
  %.pre = load ptr, ptr %2, align 8, !tbaa !27
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i, %bb.e
  %i.at = phi ptr [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit.i ], [ %i.ac, %bb.e ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %lftr.wideiv.i, %i.y
  br i1 %exitcond.not.i, label %.sink.split.i, label %bb.e, !llvm.loop !437

.sink.split.i:                                    ; preds = %bb.j, %bb.f
  %i.au = phi ptr [ %i.ac, %bb.f ], [ %i.at, %bb.j ]
  %.sink.i = phi i32 [ %i.ag, %bb.f ], [ %i.y, %bb.j ]
  store i32 %.sink.i, ptr %i.t, align 8, !tbaa !4
  br label %_ZN2PP11PowerParser20get_line_from_stringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_Ri.exit

.loopexit:                                        ; preds = %bb.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.loopexit.split-lp:                               ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.av = load ptr, ptr %2, align 8, !tbaa !27    ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.a
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.ax = load i64, ptr %i.a, align 8, !tbaa !33
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %common.resume

_ZN2PP11PowerParser20get_line_from_stringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_Ri.exit: ; preds = %.sink.split.i, %.noexc
  %i.az = phi ptr [ %i.au, %.sink.split.i ], [ %.pre13, %.noexc ] ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.a
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %_ZN2PP11PowerParser20get_line_from_stringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_Ri.exit
  %i.bb = load i64, ptr %i.a, align 8, !tbaa !33
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %_ZN2PP11PowerParser20get_line_from_stringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_Ri.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret i1 %.not.i
}

declare void @_ZN2PP4Comm9broadcastEPci(ptr noundef nonnull align 4 dereferenceable(16), ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN2PP11PowerParser13chars_to_vstrEPcRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEii(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(2796) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %i.c = sext i32 %4 to i64                       ; 3 uses
  %i.d = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.c) #31 ; 5 uses
  %i.e = icmp sgt i32 %3, 0
  br i1 %i.e, label %.lr.ph68, label %._crit_edge

.lr.ph68:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = zext i32 %4 to i64
  %wide.trip.count83 = zext nneg i32 %3 to i64
  %i.k = icmp sgt i32 %4, 0
  %i.l = icmp sgt i32 %4, 0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph68, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %indvars.iv80 = phi i64 [ 0, %.lr.ph68 ], [ %indvars.iv.next81, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  br i1 %i.k, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.m = trunc nuw nsw i64 %indvars.iv80 to i32   ; 2 uses
  %i.n = mul i32 %4, %i.m                         ; 3 uses
  %i.o = add i32 %4, %i.n
  %i.p = add i32 %i.n, 1
  %smax = call i32 @llvm.smax.i32(i32 %i.o, i32 %i.p)
  %i.q = mul i32 %4, %i.m
  %i.r = xor i32 %i.q, -1
  %i.s = add i32 %smax, %i.r
  %i.t = zext i32 %i.s to i64
  %i.u = add nuw nsw i64 %i.t, 1
  %i.v = sext i32 %i.n to i64
  %scevgep = getelementptr i8, ptr %1, i64 %i.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.d, ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i64 %i.u, i1 false), !tbaa !33
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph.preheader, %bb.b
  br i1 %i.l, label %.lr.ph, label %split

bb.c:                                             ; preds = %.lr.ph
  %i.w = trunc nuw i64 %i.z to i32                ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph, label %split, !llvm.loop !1578

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %i.y = phi i32 [ %i.w, %bb.c ], [ %4, %.preheader ]
  %indvars.iv73101 = phi i64 [ %i.z, %bb.c ], [ %i.j, %.preheader ] ; 2 uses
  %i.z = add nsw i64 %indvars.iv73101, -1         ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !33
  %.not = icmp eq i8 %i.ab, 32
  br i1 %.not, label %bb.c, label %._crit_edge85, !llvm.loop !1578

._crit_edge85:                                    ; preds = %.lr.ph
  br label %split, !llvm.loop !1578

split:                                            ; preds = %bb.c, %.preheader, %._crit_edge85
  %.pre-phi = phi i64 [ %indvars.iv73101, %._crit_edge85 ], [ %i.c, %.preheader ], [ %i.c, %bb.c ] ; 2 uses
  %.040 = phi i32 [ %i.y, %._crit_edge85 ], [ %4, %.preheader ], [ %4, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store ptr %i.f, ptr %5, align 8, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i64 %.pre-phi, ptr %i.b, align 8, !tbaa !124
  %i.ac = icmp ugt i32 %.040, 15
  br i1 %i.ac, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %split
  %i.ad = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.ad, ptr %5, align 8, !tbaa !27
  %i.ae = load i64, ptr %i.b, align 8, !tbaa !124
  store i64 %i.ae, ptr %i.f, align 8, !tbaa !33
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %split
  %i.af = phi ptr [ %i.ad, %.noexc.i ], [ %i.f, %split ] ; 2 uses
  switch i32 %.040, label %bb.e [
    i32 1, label %bb.d
    i32 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.ag = load i8, ptr %i.d, align 1, !tbaa !33
  store i8 %i.ag, ptr %i.af, align 1, !tbaa !33
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr nonnull align 1 %i.d, i64 %.pre-phi, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.ah = load i64, ptr %i.b, align 8, !tbaa !124 ; 2 uses
  store i64 %i.ah, ptr %i.g, align 8, !tbaa !32
  %i.ai = load ptr, ptr %5, align 8, !tbaa !27
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ah
  store i8 0, ptr %i.aj, align 1, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  %i.ak = load i64, ptr %i.g, align 8, !tbaa !32  ; 3 uses
  %i.al = trunc i64 %i.ak to i32
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %.lr.ph66, label %.thread

.lr.ph66:                                         ; preds = %bb.f
  %i.an = load ptr, ptr %5, align 8, !tbaa !27    ; 2 uses
  %wide.trip.count = and i64 %i.ak, 2147483647
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph66, %bb.h
  %indvars.iv77 = phi i64 [ 0, %.lr.ph66 ], [ %indvars.iv.next78, %bb.h ] ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %indvars.iv77
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !33
  %.not42 = icmp eq i8 %i.ap, 32
  br i1 %.not42, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next78, %wide.trip.count
  br i1 %exitcond.not, label %.thread, label %bb.g, !llvm.loop !1579

bb.i:                                             ; preds = %bb.g
  %.not43 = icmp eq i64 %indvars.iv77, 0
  br i1 %.not43, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %6 = and i64 %indvars.iv77, 4294967295          ; 2 uses
  %i.aq = icmp samesign eq i64 %i.ak, %6
  br i1 %i.aq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i64 0, ptr %i.g, align 8, !tbaa !32
  store i8 0, ptr %i.an, align 1, !tbaa !33
  br label %.thread

bb.l:                                             ; preds = %bb.j
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef %6)
          to label %.thread unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.thread:                                          ; preds = %bb.h, %bb.f, %bb.l, %bb.k, %bb.i
  %i.as = load ptr, ptr %i.h, align 8, !tbaa !323 ; 8 uses
  %i.at = load ptr, ptr %i.i, align 8, !tbaa !325
  %.not.i = icmp eq ptr %i.as, %i.at
  br i1 %.not.i, label %bb.q, label %bb.n

bb.n:                                             ; preds = %.thread
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 3 uses
  store ptr %i.au, ptr %i.as, align 8, !tbaa !123
  %i.av = load ptr, ptr %5, align 8, !tbaa !27    ; 2 uses
  %i.aw = load i64, ptr %i.g, align 8, !tbaa !32  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.aw, ptr %i.a, align 8, !tbaa !124
  %i.ax = icmp ugt i64 %i.aw, 15
  br i1 %i.ax, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.n
  %i.ay = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.as, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc47 unwind label %bb.r   ; 2 uses

.noexc47:                                         ; preds = %.noexc.i.i
  store ptr %i.ay, ptr %i.as, align 8, !tbaa !27
  %i.az = load i64, ptr %i.a, align 8, !tbaa !124
  store i64 %i.az, ptr %i.au, align 8, !tbaa !33
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc47, %bb.n
  %i.ba = phi ptr [ %i.ay, %.noexc47 ], [ %i.au, %bb.n ] ; 2 uses
  switch i64 %i.aw, label %bb.p [
    i64 1, label %bb.o
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.o:                                             ; preds = %._crit_edge.i.i.i
  %i.bb = load i8, ptr %i.av, align 1, !tbaa !33
  store i8 %i.bb, ptr %i.ba, align 1, !tbaa !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.p:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ba, ptr align 1 %i.av, i64 %i.aw, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.p, %bb.o, %._crit_edge.i.i.i
  %i.bc = load i64, ptr %i.a, align 8, !tbaa !124 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !32
  %i.be = load ptr, ptr %i.as, align 8, !tbaa !27
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bc
  store i8 0, ptr %i.bf, align 1, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.bg = load ptr, ptr %i.h, align 8, !tbaa !323
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  store ptr %i.bh, ptr %i.h, align 8, !tbaa !323
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.q:                                             ; preds = %.thread
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.as, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit unwind label %bb.r

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %bb.q
  %i.bi = load ptr, ptr %5, align 8, !tbaa !27    ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.f
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %i.bk = load i64, ptr %i.f, align 8, !tbaa !33
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1 ; 2 uses
  %exitcond84.not = icmp eq i64 %indvars.iv.next81, %wide.trip.count83
  br i1 %exitcond84.not, label %._crit_edge, label %bb.b, !llvm.loop !1580

bb.r:                                             ; preds = %bb.q, %.noexc.i.i
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bm, %bb.r ], [ %i.ar, %bb.m ]
  %i.bn = load ptr, ptr %5, align 8, !tbaa !27    ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.f
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %bb.s
  %i.bp = load i64, ptr %i.f, align 8, !tbaa !33
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.bq) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  resume { ptr, i32 } %.pn

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  call void @_ZdaPv(ptr noundef nonnull %i.d) #32
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN2PP11PowerParser13vstr_to_charsEPcRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEii(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(2796) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #21 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !323
  %i.c = load ptr, ptr %2, align 8, !tbaa !321    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 5
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph39, label %._crit_edge40

._crit_edge40:                                    ; preds = %._crit_edge, %bb.a
  ret void

.lr.ph39:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %._crit_edge ], [ 0, %bb.a ] ; 4 uses
  %indvars.iv = phi i32 [ %i.k, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.j = phi ptr [ %i.ap, %._crit_edge ], [ %i.c, %bb.a ]
  %i.k = add i32 %4, %indvars.iv                  ; 2 uses
  %i.l = add i32 %indvars.iv, 1
  %i.m = trunc nuw nsw i64 %indvars.iv47 to i32   ; 2 uses
  %i.n = mul i32 %4, %i.m
  %i.o = xor i32 %i.n, -1
  %i.p = mul i32 %4, %i.m                         ; 2 uses
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %i.j, i64 %indvars.iv47
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !32
  %i.t = trunc i64 %i.s to i32                    ; 2 uses
  %spec.select = tail call i32 @llvm.smin.i32(i32 %4, i32 %i.t) ; 4 uses
  %i.u = add i32 %spec.select, %i.p               ; 2 uses
  %i.v = icmp sgt i32 %spec.select, 0
  br i1 %i.v, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph39
  %i.w = sext i32 %indvars.iv to i64
  %i.x = sext i32 %i.p to i64
  %i.y = sext i32 %i.u to i64
  br label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %.lr.ph39
  %i.z = icmp sgt i32 %4, %i.t
  br i1 %i.z, label %.lr.ph36.preheader, label %._crit_edge

.lr.ph36.preheader:                               ; preds = %.preheader
  %i.aa = sext i32 %i.u to i64
  %scevgep = getelementptr i8, ptr %1, i64 %i.aa
  %i.ab = add i32 %spec.select, %i.l
  %smax = tail call i32 @llvm.smax.i32(i32 %i.k, i32 %i.ab)
  %i.ac = add i32 %smax, %i.o
  %i.ad = sub i32 %i.ac, %spec.select
  %i.ae = zext i32 %i.ad to i64
  %i.af = add nuw nsw i64 %i.ae, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i8 32, i64 %i.af, i1 false), !tbaa !33
  br label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv41 = phi i64 [ %i.w, %.lr.ph.preheader ], [ %indvars.iv.next42, %.lr.ph ] ; 3 uses
  %i.ag = load ptr, ptr %2, align 8, !tbaa !321
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.ag, i64 %indvars.iv47
  %i.ai = sub nsw i64 %indvars.iv41, %i.x
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !27
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ai
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !33
  %i.am = getelementptr inbounds i8, ptr %1, i64 %indvars.iv41
  store i8 %i.al, ptr %i.am, align 1, !tbaa !33
  %indvars.iv.next42 = add nsw i64 %indvars.iv41, 1 ; 2 uses
  %i.an = icmp slt i64 %indvars.iv.next42, %i.y
  br i1 %i.an, label %.lr.ph, label %.preheader, !llvm.loop !1581

._crit_edge:                                      ; preds = %.lr.ph36.preheader, %.preheader
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1 ; 2 uses
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !323
  %i.ap = load ptr, ptr %2, align 8, !tbaa !321   ; 2 uses
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %sext = shl i64 %i.as, 27
  %i.at = ashr i64 %sext, 32
  %i.au = icmp slt i64 %indvars.iv.next48, %i.at
  br i1 %i.au, label %.lr.ph39, label %._crit_edge40, !llvm.loop !1582
}

end_hunk_1
