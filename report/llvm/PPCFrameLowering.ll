Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/PPCFrameLowering?download=true
inline.NumInlined: 2456
inline.NumDeleted: 913
begin_hunk_0_@_ZNK4llvm16PPCFrameLowering35processFunctionBeforeFrameFinalizedERNS_15MachineFunctionEPNS_12RegScavengerE:bb.a
bb.av:                                            ; preds = %bb.au
  %i.om = getelementptr inbounds nuw i8, ptr %.0157370, i64 4
  %i.on = load i32, ptr %i.om, align 4, !tbaa !28
  %i.oo = load i32, ptr %i.nd, align 8, !tbaa !570
  %i.op = add i32 %i.oo, %i.on
  %i.oq = zext i32 %i.op to i64
  %i.or = load ptr, ptr %i.nc, align 8, !tbaa !571
  %i.os = getelementptr inbounds nuw [40 x i8], ptr %i.or, i64 %i.oq ; 2 uses
  %i.ot = load i64, ptr %i.os, align 8, !tbaa !574
  %i.ou = add nsw i64 %i.ot, %.1173
  store i64 %i.ou, ptr %i.os, align 8, !tbaa !574
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.ov = getelementptr inbounds nuw i8, ptr %.0157370, i64 12 ; 2 uses
  %.not179 = icmp eq ptr %i.ov, %i.nb
  br i1 %.not179, label %._crit_edge373, label %bb.au

bb.ax:                                            ; preds = %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit220.thread, %._crit_edge373
  %.2174 = phi i64 [ %i.oi, %._crit_edge373 ], [ %.1173, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit220.thread ] ; 4 uses
  %.val = load ptr, ptr %i.dq, align 8, !tbaa !320
  %i.ow = getelementptr i8, ptr %.val, i64 33
  %.val.val = load i8, ptr %i.ow, align 1, !tbaa !639, !range !21, !noundef !22
  %i.ox = trunc nuw i8 %.val.val to i1
  br i1 %i.ox, label %bb.ay, label %bb.bb

bb.ay:                                            ; preds = %bb.ax
  %i.oy = load ptr, ptr %i.cy, align 8, !tbaa !49, !nonnull !22, !align !183 ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 52
  %i.pa = load i32, ptr %i.oz, align 4, !tbaa !41
  %i.pb = icmp eq i32 %i.pa, 19
  %i.pc = getelementptr inbounds nuw i8, ptr %i.oy, i64 538
  %i.pd = load i8, ptr %i.pc, align 2, !range !21
  %i.pe = trunc nuw i8 %i.pd to i1
  %.not327 = select i1 %i.pb, i1 true, i1 %i.pe
  br i1 %.not327, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.pf = load ptr, ptr %i.c, align 8, !tbaa !577 ; 2 uses
  %i.pg = load ptr, ptr %i.bt, align 8, !tbaa !577 ; 2 uses
  %.not328374 = icmp eq ptr %i.pf, %i.pg
  br i1 %.not328374, label %.loopexit335, label %.lr.ph377

.lr.ph377:                                        ; preds = %bb.az, %.critedge
  %.sroa.0228.0375 = phi ptr [ %i.pt, %.critedge ], [ %i.pf, %bb.az ] ; 3 uses
  %.sroa.0.0.copyload.i223 = load i32, ptr %.sroa.0228.0375, align 4, !tbaa !186
  %i.ph = icmp eq i32 %.sroa.0.0.copyload.i223, 22
  br i1 %i.ph, label %bb.ba, label %.critedge

bb.ba:                                            ; preds = %.lr.ph377
  %i.pi = getelementptr inbounds nuw i8, ptr %.sroa.0228.0375, i64 4
  %i.pj = load i32, ptr %i.pi, align 4, !tbaa !28
  %i.pk = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.pl = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.pm = load i32, ptr %i.pl, align 8, !tbaa !570
  %i.pn = add i32 %i.pm, %i.pj
  %i.po = zext i32 %i.pn to i64
  %i.pp = load ptr, ptr %i.pk, align 8, !tbaa !571
  %i.pq = getelementptr inbounds nuw [40 x i8], ptr %i.pp, i64 %i.po ; 2 uses
  %i.pr = load i64, ptr %i.pq, align 8, !tbaa !574
  %i.ps = add nsw i64 %i.pr, %.2174
  store i64 %i.ps, ptr %i.pq, align 8, !tbaa !574
  br label %.loopexit335

.critedge:                                        ; preds = %.lr.ph377
  %i.pt = getelementptr inbounds nuw i8, ptr %.sroa.0228.0375, i64 12 ; 2 uses
  %.not328 = icmp eq ptr %i.pt, %i.pg
  br i1 %.not328, label %.loopexit335, label %.lr.ph377

.loopexit335:                                     ; preds = %.critedge, %bb.az, %bb.ba
  %i.pu = add nsw i64 %.2174, -4
  br label %bb.bb

bb.bb:                                            ; preds = %.loopexit335, %bb.ay, %bb.ax
  %.3175 = phi i64 [ %i.pu, %.loopexit335 ], [ %.2174, %bb.ay ], [ %.2174, %bb.ax ]
  br i1 %.0169.lcssa, label %bb.bc, label %.loopexit

bb.bc:                                            ; preds = %bb.bb
  %i.pv = and i64 %.3175, -16
  %i.pw = load ptr, ptr %6, align 8, !tbaa !24    ; 2 uses
  %i.px = load i32, ptr %i.dk, align 8, !tbaa !370 ; 2 uses
  %i.py = zext i32 %i.px to i64
  %.idx384 = mul nuw nsw i64 %i.py, 12
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pw, i64 %.idx384
  %.not180378 = icmp eq i32 %i.px, 0
  br i1 %.not180378, label %.loopexit, label %.lr.ph381

.lr.ph381:                                        ; preds = %bb.bc
  %i.qa = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.qb = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.qc = load i32, ptr %i.qb, align 8, !tbaa !570
  %i.qd = load ptr, ptr %i.qa, align 8, !tbaa !571
  br label %bb.bd

bb.bd:                                            ; preds = %.lr.ph381, %bb.bd
  %.0379 = phi ptr [ %i.pw, %.lr.ph381 ], [ %i.ql, %bb.bd ] ; 2 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %.0379, i64 4
  %i.qf = load i32, ptr %i.qe, align 4, !tbaa !28
  %i.qg = add i32 %i.qc, %i.qf
  %i.qh = zext i32 %i.qg to i64
  %i.qi = getelementptr inbounds nuw [40 x i8], ptr %i.qd, i64 %i.qh ; 2 uses
  %i.qj = load i64, ptr %i.qi, align 8, !tbaa !574
  %i.qk = add nsw i64 %i.qj, %i.pv
  store i64 %i.qk, ptr %i.qi, align 8, !tbaa !574
  %i.ql = getelementptr inbounds nuw i8, ptr %.0379, i64 12 ; 2 uses
  %.not180 = icmp eq ptr %i.ql, %i.pz
  br i1 %.not180, label %.loopexit, label %bb.bd

.loopexit:                                        ; preds = %bb.bd, %bb.bc, %bb.bb
  call void @_ZNK4llvm16PPCFrameLowering22addScavengingSpillSlotERNS_15MachineFunctionEPNS_12RegScavengerE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1, ptr noundef %2)
  %i.qm = load ptr, ptr %6, align 8, !tbaa !24    ; 2 uses
  %i.qn = icmp eq ptr %i.qm, %i.dj
  br i1 %i.qn, label %_ZN4llvm11SmallVectorINS_15CalleeSavedInfoELj18EED2Ev.exit, label %bb.be

bb.be:                                            ; preds = %.loopexit
  call void @free(ptr noundef %i.qm) #19
  br label %_ZN4llvm11SmallVectorINS_15CalleeSavedInfoELj18EED2Ev.exit

_ZN4llvm11SmallVectorINS_15CalleeSavedInfoELj18EED2Ev.exit: ; preds = %.loopexit, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.qo = load ptr, ptr %5, align 8, !tbaa !24    ; 2 uses
  %i.qp = icmp eq ptr %i.qo, %i.dg
  br i1 %i.qp, label %_ZN4llvm11SmallVectorINS_15CalleeSavedInfoELj18EED2Ev.exit224, label %bb.bf

bb.bf:                                            ; preds = %_ZN4llvm11SmallVectorINS_15CalleeSavedInfoELj18EED2Ev.exit
  call void @free(ptr noundef %i.qo) #19
  br label %_ZN4llvm11SmallVectorINS_15CalleeSavedInfoELj18EED2Ev.exit224

_ZN4llvm11SmallVectorINS_15CalleeSavedInfoELj18EED2Ev.exit224: ; preds = %_ZN4llvm11SmallVectorINS_15CalleeSavedInfoELj18EED2Ev.exit, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.qq = load ptr, ptr %4, align 8, !tbaa !24    ; 2 uses
  %i.qr = icmp eq ptr %i.qq, %i.dd
  br i1 %i.qr, label %_ZN4llvm11SmallVectorINS_15CalleeSavedInfoELj18EED2Ev.exit225, label %bb.bg

bb.bg:                                            ; preds = %_ZN4llvm11SmallVectorINS_15CalleeSavedInfoELj18EED2Ev.exit224
  call void @free(ptr noundef %i.qq) #19
  br label %_ZN4llvm11SmallVectorINS_15CalleeSavedInfoELj18EED2Ev.exit225

_ZN4llvm11SmallVectorINS_15CalleeSavedInfoELj18EED2Ev.exit225: ; preds = %_ZN4llvm11SmallVectorINS_15CalleeSavedInfoELj18EED2Ev.exit224, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.qs = load ptr, ptr %3, align 8, !tbaa !24    ; 2 uses
  %i.qt = icmp eq ptr %i.qs, %i.da
  br i1 %i.qt, label %_ZN4llvm11SmallVectorINS_15CalleeSavedInfoELj18EED2Ev.exit226, label %bb.bh

bb.bh:                                            ; preds = %_ZN4llvm11SmallVectorINS_15CalleeSavedInfoELj18EED2Ev.exit225
  call void @free(ptr noundef %i.qs) #19
  br label %_ZN4llvm11SmallVectorINS_15CalleeSavedInfoELj18EED2Ev.exit226

_ZN4llvm11SmallVectorINS_15CalleeSavedInfoELj18EED2Ev.exit226: ; preds = %_ZN4llvm11SmallVectorINS_15CalleeSavedInfoELj18EED2Ev.exit225, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.bi

bb.bi:                                            ; preds = %_ZN4llvm11SmallVectorINS_15CalleeSavedInfoELj18EED2Ev.exit226, %_ZNK4llvm16PPCFrameLowering7needsFPERKNS_15MachineFunctionE.exit.thread296
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm16PPCFrameLowering22addScavengingSpillSlotERNS_15MachineFunctionEPNS_12RegScavengerE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1, ptr noundef %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = tail call noundef i64 @_ZNK4llvm16PPCFrameLowering20determineFrameLayoutERKNS_15MachineFunctionEbPj(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1, i1 noundef zeroext true, ptr noundef null)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !298  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !49, !nonnull !22, !align !183 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 520
  %i.g = load i8, ptr %i.f, align 8, !tbaa !640, !range !21, !noundef !22
  %i.h = trunc nuw i8 %i.g to i1
  %.in.in.v = select i1 %i.h, i64 4294967168, i64 4294934528
  %.in.in = and i64 %i.a, %.in.in.v
  %.in = icmp ne i64 %.in.in, 0
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 36 ; 2 uses
  %i.j = load i8, ptr %i.i, align 4, !tbaa !322, !range !21, !noundef !22
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val31 = load ptr, ptr %i.l, align 8, !tbaa !320 ; 3 uses
  %i.m = getelementptr i8, ptr %.val31, i64 33
  %.val31.val = load i8, ptr %i.m, align 1, !tbaa !639, !range !21, !noundef !22
  %i.n = trunc nuw i8 %.val31.val to i1
  br i1 %i.n, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr i8, ptr %.val31, i64 32
  %.val32.val = load i8, ptr %i.o, align 8, !tbaa !1445, !range !21, !noundef !22
  %i.p = trunc nuw i8 %.val32.val to i1
  br i1 %i.p, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr i8, ptr %.val31, i64 31
  %.val33.val = load i8, ptr %i.q, align 1, !tbaa !1446, !range !21, !noundef !22
  %i.r = trunc nuw i8 %.val33.val to i1
  %or.cond = and i1 %.in, %i.r
  br i1 %or.cond, label %bb.e, label %_ZN4llvm12RegScavenger23addScavengingFrameIndexEi.exit38

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 538
  %i.t = load i8, ptr %i.s, align 2, !tbaa !181, !range !21, !noundef !22
  %i.u = trunc nuw i8 %i.t to i1
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !16
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 200
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef ptr %i.x(ptr noundef nonnull align 8 dereferenceable(520296) %i.e) #19 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 296
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1447
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !1448
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 312
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !1449
  %i.af = mul i32 %i.ae, %i.ac
  %.val39 = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25PPCMCRegisterClassStorageE, i64 916), align 4
  %.val40 = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25PPCMCRegisterClassStorageE, i64 84), align 4
  %3 = select i1 %i.u, i16 %.val39, i16 %.val40
  %i.ag = zext i16 %3 to i32
  %i.ah = add i32 %i.af, %i.ag
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.ai ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !1451
  %i.am = lshr i32 %i.al, 3
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !1452
  %i.ap = lshr i32 %i.ao, 3
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aq, i1 false)
  %i.as = trunc nuw nsw i64 %i.ar to i8
  %i.at = sub nsw i8 63, %i.as                    ; 2 uses
  %i.au = zext nneg i32 %i.am to i64              ; 2 uses
  %i.av = tail call noundef i32 @_ZN4llvm16MachineFrameInfo22CreateSpillStackObjectEmNS_5AlignENS_13TargetStackID5ValueE(ptr noundef nonnull align 8 dereferenceable(728) %i.c, i64 noundef %i.au, i8 %i.at, i32 noundef 0) #19
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 4 uses
  %.sroa.0.0.insert.ext.i = zext i32 %i.av to i64 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 6 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !370 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 52 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !371
  %.not.i.i = icmp ult i32 %i.ay, %i.ba
  br i1 %.not.i.i, label %bb.g, label %bb.f, !prof !637

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_12RegScavenger13ScavengedInfoELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i64 %.sroa.0.0.insert.ext.i, ptr null)
  br label %_ZN4llvm12RegScavenger23addScavengingFrameIndexEi.exit

bb.g:                                             ; preds = %bb.e
  %i.bb = zext i32 %i.ay to i64
  %i.bc = load ptr, ptr %i.aw, align 8, !tbaa !24
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %i.bb ; 2 uses
  store i64 %.sroa.0.0.insert.ext.i, ptr %i.bd, align 1
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr null, ptr %.sroa.3.0..sroa_idx.i.i, align 1
  %i.be = load i32, ptr %i.ax, align 8, !tbaa !370
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr %i.ax, align 8, !tbaa !370
  br label %_ZN4llvm12RegScavenger23addScavengingFrameIndexEi.exit

_ZN4llvm12RegScavenger23addScavengingFrameIndexEi.exit: ; preds = %bb.f, %bb.g
  %i.bg = load i8, ptr %i.i, align 4, !tbaa !322, !range !21, !noundef !22
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4llvm12RegScavenger23addScavengingFrameIndexEi.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %.sroa.0.0.copyload.i = load i8, ptr %i.bi, align 8, !tbaa !28
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.0.0.copyload.i34 = load i8, ptr %i.bj, align 4, !tbaa !28
  %i.bk = icmp ugt i8 %.sroa.0.0.copyload.i, %.sroa.0.0.copyload.i34
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN4llvm12RegScavenger23addScavengingFrameIndexEi.exit
  %i.bl = phi i1 [ false, %_ZN4llvm12RegScavenger23addScavengingFrameIndexEi.exit ], [ %i.bk, %bb.h ]
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val = load ptr, ptr %i.bm, align 8, !tbaa !320
  %i.bn = getelementptr i8, ptr %.val, i64 33
  %.val.val = load i8, ptr %i.bn, align 1, !tbaa !639, !range !21, !noundef !22
  %i.bo = trunc nuw i8 %.val.val to i1
  %or.cond3 = or i1 %i.bl, %i.bo
  br i1 %or.cond3, label %bb.j, label %_ZN4llvm12RegScavenger23addScavengingFrameIndexEi.exit38

bb.j:                                             ; preds = %bb.i
  %i.bp = tail call noundef i32 @_ZN4llvm16MachineFrameInfo22CreateSpillStackObjectEmNS_5AlignENS_13TargetStackID5ValueE(ptr noundef nonnull align 8 dereferenceable(728) %i.c, i64 noundef %i.au, i8 %i.at, i32 noundef 0) #19
  %.sroa.0.0.insert.ext.i35 = zext i32 %i.bp to i64 ; 2 uses
  %i.bq = load i32, ptr %i.ax, align 8, !tbaa !370 ; 2 uses
  %i.br = load i32, ptr %i.az, align 4, !tbaa !371
  %.not.i.i36 = icmp ult i32 %i.bq, %i.br
  br i1 %.not.i.i36, label %bb.l, label %bb.k, !prof !637

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_12RegScavenger13ScavengedInfoELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i64 %.sroa.0.0.insert.ext.i35, ptr null)
  br label %_ZN4llvm12RegScavenger23addScavengingFrameIndexEi.exit38

bb.l:                                             ; preds = %bb.j
  %i.bs = zext i32 %i.bq to i64
  %i.bt = load ptr, ptr %i.aw, align 8, !tbaa !24
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %i.bt, i64 %i.bs ; 2 uses
  store i64 %.sroa.0.0.insert.ext.i35, ptr %i.bu, align 1
  %.sroa.3.0..sroa_idx.i.i37 = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store ptr null, ptr %.sroa.3.0..sroa_idx.i.i37, align 1
  %i.bv = load i32, ptr %i.ax, align 8, !tbaa !370
  %i.bw = add i32 %i.bv, 1
  store i32 %i.bw, ptr %i.ax, align 8, !tbaa !370
  br label %_ZN4llvm12RegScavenger23addScavengingFrameIndexEi.exit38

_ZN4llvm12RegScavenger23addScavengingFrameIndexEi.exit38: ; preds = %bb.l, %bb.k, %bb.i, %bb.d
  ret void
}

declare noundef i32 @_ZN4llvm16MachineFrameInfo22CreateSpillStackObjectEmNS_5AlignENS_13TargetStackID5ValueE(ptr noundef nonnull align 8 dereferenceable(728), i64 noundef, i8, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm16PPCFrameLowering27assignCalleeSavedSpillSlotsERNS_15MachineFunctionEPKNS_18TargetRegisterInfoERSt6vectorINS_15CalleeSavedInfoESaIS7_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1, ptr noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %"class.llvm::BitVector", align 8   ; 12 uses
  %5 = alloca %"class.llvm::BitVector", align 8   ; 11 uses
  %i.a = load ptr, ptr %3, align 8, !tbaa !577
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !577
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.am, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !49, !nonnull !22, !align !183 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 200
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef ptr %i.i(ptr noundef nonnull align 8 dereferenceable(520296) %i.f) #19 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef ptr %i.m(ptr noundef nonnull align 8 dereferenceable(352) %i.j, ptr noundef nonnull %1) #19 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !323  ; 2 uses
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !49, !nonnull !22, !align !183
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 520
  %i.s = load i8, ptr %i.r, align 8, !tbaa !640, !range !21, !noundef !22
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.u = load ptr, ptr %3, align 8, !tbaa !577    ; 2 uses
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !577  ; 2 uses
  %.not133146 = icmp eq ptr %i.u, %i.v
  br i1 %.not133146, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.f
  %.sroa.0120.0147 = phi ptr [ %i.z, %bb.f ], [ %i.u, %bb.c ] ; 6 uses
  %.sroa.0.0.copyload.i = load i32, ptr %.sroa.0120.0147, align 4, !tbaa !186 ; 2 uses
  %i.w = tail call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %i.j, i32 %.sroa.0.0.copyload.i, i32 noundef 1) #19 ; 2 uses
  %i.x = tail call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %i.j, i32 %.sroa.0.0.copyload.i, i32 noundef 2) #19
  %.not80 = icmp eq i32 %i.w, 0
  br i1 %.not80, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.y = tail call noundef zeroext i1 @_ZNK4llvm19MachineRegisterInfo17isPhysRegModifiedENS_10MCRegisterEb(ptr noundef nonnull align 8 dereferenceable(520) %i.p, i32 %i.x, i1 noundef zeroext false) #19
  br i1 %i.y, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %i.w, ptr %.sroa.0120.0147, align 4, !tbaa !186
  %.sroa.4113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0120.0147, i64 4
  store i32 0, ptr %.sroa.4113.0..sroa_idx, align 4, !tbaa !28
  %.sroa.5114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0120.0147, i64 8
  store i8 1, ptr %.sroa.5114.0..sroa_idx, align 4, !tbaa !562
  %.sroa.6115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0120.0147, i64 9
  store i8 0, ptr %.sroa.6115.0..sroa_idx, align 1, !tbaa !562
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %.lr.ph
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0120.0147, i64 12 ; 2 uses
  %.not133 = icmp eq ptr %i.z, %i.v
  br i1 %.not133, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.f, %bb.c, %bb.b
  %i.aa = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL20EnablePEVectorSpills, i64 120), align 8, !tbaa !646, !range !21, !noundef !22
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.g, label %bb.am

bb.g:                                             ; preds = %.loopexit
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !298
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 66
  %i.af = load i8, ptr %i.ae, align 2, !tbaa !1456, !range !21, !noundef !22
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.am, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = load ptr, ptr %i.e, align 8, !tbaa !49, !nonnull !22, !align !183
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 512
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !1457, !range !21, !noundef !22
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.i, label %bb.am

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @_ZNK4llvm18TargetRegisterInfo17getAllocatableSetERKNS_15MachineFunctionEPKNS_15MCRegisterClassE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::BitVector") align 8 %4, ptr noundef nonnull align 8 dereferenceable(316) %2, ptr noundef nonnull align 8 dereferenceable(1065) %1, ptr noundef null) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.am = load i32, ptr %i.al, align 8, !tbaa !647 ; 2 uses
  %i.an = add i32 %i.am, 63                       ; 2 uses
  %i.ao = lshr i32 %i.an, 6                       ; 3 uses
  %i.ap = zext nneg i32 %i.ao to i64              ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr %i.aq, ptr %5, align 8, !tbaa !24
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 6, ptr %i.as, align 4, !tbaa !371
  %i.at = icmp ugt i32 %i.an, 447
  br i1 %i.at, label %_ZN4llvm9BitVectorC2Ejb.exit.loopexit, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i

_ZN4llvm9BitVectorC2Ejb.exit.loopexit:            ; preds = %bb.i
  store i32 0, ptr %i.ar, align 8, !tbaa !370
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %5, ptr noundef nonnull %i.aq, i64 noundef %i.ap, i64 noundef 8) #19
  %i.au = load ptr, ptr %5, align 8, !tbaa !24
  br label %_ZN4llvm9BitVectorC2Ejb.exit.sink.split

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i:        ; preds = %bb.i
  %.not.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i, label %_ZN4llvm9BitVectorC2Ejb.exit, label %_ZN4llvm9BitVectorC2Ejb.exit.sink.split

_ZN4llvm9BitVectorC2Ejb.exit.sink.split:          ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i, %_ZN4llvm9BitVectorC2Ejb.exit.loopexit
  %.sink = phi ptr [ %i.au, %_ZN4llvm9BitVectorC2Ejb.exit.loopexit ], [ %i.aq, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i ] ; 2 uses
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ap, 3
  call void @llvm.memset.p0.i64(ptr align 8 %.sink, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !427
  br label %_ZN4llvm9BitVectorC2Ejb.exit

_ZN4llvm9BitVectorC2Ejb.exit:                     ; preds = %_ZN4llvm9BitVectorC2Ejb.exit.sink.split, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i
  %.pre189 = phi ptr [ %i.aq, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i ], [ %.sink, %_ZN4llvm9BitVectorC2Ejb.exit.sink.split ] ; 6 uses
  store i32 %i.ao, ptr %i.ar, align 8, !tbaa !370
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i32 %i.am, ptr %i.av, align 8, !tbaa !378
  %i.aw = load i16, ptr %i.n, align 2, !tbaa !426 ; 2 uses
  %.not148 = icmp eq i16 %i.aw, 0
  br i1 %.not148, label %._crit_edge, label %.lr.ph150

._crit_edge:                                      ; preds = %.lr.ph150, %_ZN4llvm9BitVectorC2Ejb.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !378, !noalias !1458 ; 2 uses
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %._crit_edge154, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.ba = add i32 %i.ay, -1                       ; 2 uses
  %i.bb = lshr i32 %i.ba, 6                       ; 3 uses
  %i.bc = load ptr, ptr %4, align 8, !tbaa !24, !noalias !1458 ; 2 uses
  %i.bd = and i32 %i.ba, 63
  %i.be = xor i32 %i.bd, 63
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = lshr i64 -1, %i.bf                      ; 2 uses
  %i.bh = zext nneg i32 %i.bb to i64
  %i.bi = add nuw nsw i32 %i.bb, 1
  %wide.trip.count.i.i.i.i.i = zext nneg i32 %i.bi to i64
  %i.bj = load i64, ptr %i.bc, align 8, !tbaa !427, !noalias !1458
  %i.bk = icmp eq i32 %i.bb, 0                    ; 2 uses
  %i.bl = select i1 %i.bk, i64 %i.bg, i64 -1
  %.230.peel.i.i.i.i.i = and i64 %i.bj, %i.bl     ; 2 uses
  %.not37.peel.i.i.i.i.i = icmp eq i64 %.230.peel.i.i.i.i.i, 0
  br i1 %.not37.peel.i.i.i.i.i, label %bb.k, label %_ZNK4llvm9BitVector8set_bitsEv.exit

bb.k:                                             ; preds = %bb.j
  br i1 %i.bk, label %._crit_edge154, label %.peel.next.i.i.i.i.i

.peel.next.i.i.i.i.i:                             ; preds = %bb.k, %bb.l
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i, %bb.l ], [ 1, %bb.k ] ; 4 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv.i.i.i.i.i
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !427, !noalias !1458
  %i.bo = icmp eq i64 %indvars.iv.i.i.i.i.i, %i.bh
  %i.bp = select i1 %i.bo, i64 %i.bg, i64 -1
  %.230.i.i.i.i.i = and i64 %i.bp, %i.bn          ; 2 uses
  %.not37.i.i.i.i.i = icmp eq i64 %.230.i.i.i.i.i, 0
  br i1 %.not37.i.i.i.i.i, label %bb.l, label %.loopexit48.i.i.i.i.i

.loopexit48.i.i.i.i.i:                            ; preds = %.peel.next.i.i.i.i.i
  %.pre.i.i.i.i.i = trunc nuw nsw i64 %indvars.iv.i.i.i.i.i to i32
  %i.bq = shl nuw i32 %.pre.i.i.i.i.i, 6
  br label %_ZNK4llvm9BitVector8set_bitsEv.exit

bb.l:                                             ; preds = %.peel.next.i.i.i.i.i
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i, %wide.trip.count.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %._crit_edge154, label %.peel.next.i.i.i.i.i, !llvm.loop !2

_ZNK4llvm9BitVector8set_bitsEv.exit:              ; preds = %bb.j, %.loopexit48.i.i.i.i.i
  %.pre-phi.i.i.i.i.i = phi i32 [ %i.bq, %.loopexit48.i.i.i.i.i ], [ 0, %bb.j ]
  %.230.lcssa.i.i.i.i.i = phi i64 [ %.230.i.i.i.i.i, %.loopexit48.i.i.i.i.i ], [ %.230.peel.i.i.i.i.i, %bb.j ]
  %i.br = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.230.lcssa.i.i.i.i.i, i1 true)
  %i.bs = trunc nuw nsw i64 %i.br to i32
  %i.bt = or disjoint i32 %.pre-phi.i.i.i.i.i, %i.bs ; 2 uses
  %.not134151 = icmp eq i32 %i.bt, -1
  br i1 %.not134151, label %._crit_edge154, label %.lr.ph153

.lr.ph150:                                        ; preds = %_ZN4llvm9BitVectorC2Ejb.exit, %.lr.ph150
  %i.bu = phi i16 [ %i.ch, %.lr.ph150 ], [ %i.aw, %_ZN4llvm9BitVectorC2Ejb.exit ]
  %.073149 = phi i32 [ %i.ce, %.lr.ph150 ], [ 0, %_ZN4llvm9BitVectorC2Ejb.exit ]
  %i.bv = zext i16 %i.bu to i32                   ; 2 uses
  %i.bw = and i32 %i.bv, 63
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = shl nuw i64 1, %i.bx
  %i.bz = lshr i32 %i.bv, 6
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %.pre189, i64 %i.ca ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !427
  %i.cd = or i64 %i.cc, %i.by
  store i64 %i.cd, ptr %i.cb, align 8, !tbaa !427
  %i.ce = add i32 %.073149, 1                     ; 2 uses
  %i.cf = zext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.cf
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !426 ; 2 uses
  %.not = icmp eq i16 %i.ch, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph150, !llvm.loop !1455

._crit_edge154:                                   ; preds = %bb.l, %bb.q, %bb.p, %bb.o, %_ZN4llvm28const_set_bits_iterator_implINS_9BitVectorEEppEv.exit, %bb.r, %bb.k, %._crit_edge, %_ZNK4llvm9BitVector8set_bitsEv.exit
  %i.ci = phi ptr [ %i.dp, %bb.r ], [ %.pre189, %_ZNK4llvm9BitVector8set_bitsEv.exit ], [ %i.dp, %bb.q ], [ %.pre189, %._crit_edge ], [ %.pre189, %bb.k ], [ %i.dp, %_ZN4llvm28const_set_bits_iterator_implINS_9BitVectorEEppEv.exit ], [ %i.dp, %bb.o ], [ %i.dp, %bb.p ], [ %.pre189, %bb.l ]
  %i.cj = load ptr, ptr %3, align 8, !tbaa !577   ; 2 uses
  %i.ck = load ptr, ptr %i.b, align 8, !tbaa !577 ; 2 uses
  %.not135163 = icmp eq ptr %i.cj, %i.ck
  br i1 %.not135163, label %_ZNK4llvm9BitVector4noneEv.exit.thread, label %.lr.ph169

.lr.ph169:                                        ; preds = %._crit_edge154
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.s

.lr.ph153:                                        ; preds = %_ZNK4llvm9BitVector8set_bitsEv.exit, %_ZN4llvm28const_set_bits_iterator_implINS_9BitVectorEEppEv.exit
  %i.cm = phi ptr [ %i.dp, %_ZN4llvm28const_set_bits_iterator_implINS_9BitVectorEEppEv.exit ], [ %.pre189, %_ZNK4llvm9BitVector8set_bitsEv.exit ] ; 4 uses
  %.sroa.4.0152 = phi i32 [ %i.ev, %_ZN4llvm28const_set_bits_iterator_implINS_9BitVectorEEppEv.exit ], [ %i.bt, %_ZNK4llvm9BitVector8set_bitsEv.exit ] ; 6 uses
  %i.cn = lshr i32 %.sroa.4.0152, 6
  %i.co = zext nneg i32 %i.cn to i64              ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.co
  %i.cq = and i32 %.sroa.4.0152, 63
  %i.cr = load i64, ptr %i.cp, align 8, !tbaa !427
  %i.cs = zext nneg i32 %i.cq to i64
  %i.ct = shl nuw i64 1, %i.cs                    ; 2 uses
  %i.cu = and i64 %i.cr, %i.ct
  %.not137 = icmp eq i64 %i.cu, 0
  br i1 %.not137, label %bb.m, label %.critedge

bb.m:                                             ; preds = %.lr.ph153
  %i.cv = lshr i32 %.sroa.4.0152, 3               ; 2 uses
  %i.cw = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25PPCMCRegisterClassStorageE, i64 1874), align 2, !tbaa !617
  %i.cx = zext i16 %i.cw to i32
  %.not.i = icmp samesign ult i32 %i.cv, %i.cx
  br i1 %.not.i, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit, label %.critedge

_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit: ; preds = %bb.m
  %i.cy = and i32 %.sroa.4.0152, 7
  %i.cz = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25PPCMCRegisterClassStorageE, i64 1860), align 4, !tbaa !618
  %i.da = zext i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25PPCMCRegisterClassStorageE, i64 1856), i64 %i.da
  %i.dc = zext nneg i32 %i.cv to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !28
  %i.df = zext i8 %i.de to i32
  %i.dg = shl nuw nsw i32 1, %i.cy
  %i.dh = and i32 %i.dg, %i.df
  %.not138 = icmp eq i32 %i.dh, 0
  br i1 %.not138, label %.critedge, label %bb.n

bb.n:                                             ; preds = %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit
  %i.di = call noundef zeroext i1 @_ZNK4llvm19MachineRegisterInfo13isPhysRegUsedENS_10MCRegisterEb(ptr noundef nonnull align 8 dereferenceable(520) %i.p, i32 %.sroa.4.0152, i1 noundef zeroext false) #19
  %.pre = load ptr, ptr %5, align 8, !tbaa !24    ; 2 uses
  br i1 %i.di, label %.critedge, label %bb.o

.critedge:                                        ; preds = %bb.m, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit, %.lr.ph153, %bb.n
  %i.dj = phi ptr [ %i.cm, %bb.m ], [ %i.cm, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit ], [ %i.cm, %.lr.ph153 ], [ %.pre, %bb.n ]
  %i.dk = xor i64 %i.ct, -1
  %i.dl = load ptr, ptr %4, align 8, !tbaa !24
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.co ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !427
  %i.do = and i64 %i.dn, %i.dk
  store i64 %i.do, ptr %i.dm, align 8, !tbaa !427
  br label %bb.o

bb.o:                                             ; preds = %.critedge, %bb.n
  %i.dp = phi ptr [ %i.dj, %.critedge ], [ %.pre, %bb.n ] ; 6 uses
  %i.dq = add nuw i32 %.sroa.4.0152, 1            ; 3 uses
  %i.dr = load i32, ptr %i.ax, align 8, !tbaa !378 ; 2 uses
  %i.ds = icmp eq i32 %i.dq, %i.dr
  br i1 %i.ds, label %._crit_edge154, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dt = lshr i32 %i.dq, 6                       ; 4 uses
  %i.du = add i32 %i.dr, -1                       ; 2 uses
  %i.dv = lshr i32 %i.du, 6                       ; 4 uses
  %.not42.i.i.i.i = icmp samesign ugt i32 %i.dt, %i.dv
  br i1 %.not42.i.i.i.i, label %._crit_edge154, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.p
  %i.dw = load ptr, ptr %4, align 8, !tbaa !24    ; 2 uses
  %i.dx = and i32 %i.dq, 63                       ; 2 uses
  %i.dy = sub nuw nsw i32 64, %i.dx
  %.not.i.i.i = icmp eq i32 %i.dx, 0
  %i.dz = zext nneg i32 %i.dy to i64
  %i.ea = lshr i64 -1, %i.dz
  %i.eb = xor i64 %i.ea, -1
  %i.ec = and i32 %i.du, 63
  %i.ed = xor i32 %i.ec, 63
  %i.ee = zext nneg i32 %i.ed to i64
  %i.ef = lshr i64 -1, %i.ee                      ; 2 uses
  %i.eg = zext nneg i32 %i.dt to i64              ; 2 uses
  %i.eh = zext nneg i32 %i.dv to i64
  %i.ei = add nuw nsw i32 %i.dv, 1
  %wide.trip.count.i.i.i.i = zext nneg i32 %i.ei to i64 ; 2 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.eg
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !427
  %i.el = select i1 %.not.i.i.i, i64 -1, i64 %i.eb
  %i.em = icmp eq i32 %i.dt, %i.dv
  %i.en = select i1 %i.em, i64 %i.ef, i64 -1
  %spec.select44.peel.i.i.i.i = and i64 %i.en, %i.el
  %.230.peel.i.i.i.i = and i64 %spec.select44.peel.i.i.i.i, %i.ek ; 2 uses
  %.not37.peel.i.i.i.i = icmp eq i64 %.230.peel.i.i.i.i, 0
  br i1 %.not37.peel.i.i.i.i, label %bb.q, label %_ZN4llvm28const_set_bits_iterator_implINS_9BitVectorEEppEv.exit

bb.q:                                             ; preds = %.lr.ph.i.i.i.i
  %indvars.iv.next.peel.i.i.i.i = add nuw nsw i64 %i.eg, 1 ; 2 uses
  %exitcond.peel.not.i.i.i.i = icmp eq i64 %indvars.iv.next.peel.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond.peel.not.i.i.i.i, label %._crit_edge154, label %.peel.next.i.i.i.i

.peel.next.i.i.i.i:                               ; preds = %bb.q, %bb.r
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %bb.r ], [ %indvars.iv.next.peel.i.i.i.i, %bb.q ] ; 4 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %indvars.iv.i.i.i.i
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !427
  %i.eq = icmp eq i64 %indvars.iv.i.i.i.i, %i.eh
  %i.er = select i1 %i.eq, i64 %i.ef, i64 -1
  %.230.i.i.i.i = and i64 %i.er, %i.ep            ; 2 uses
  %.not37.i.i.i.i = icmp eq i64 %.230.i.i.i.i, 0
  br i1 %.not37.i.i.i.i, label %bb.r, label %.loopexit48.i.i.i.i

.loopexit48.i.i.i.i:                              ; preds = %.peel.next.i.i.i.i
  %.pre.i.i.i.i = trunc nuw nsw i64 %indvars.iv.i.i.i.i to i32
  br label %_ZN4llvm28const_set_bits_iterator_implINS_9BitVectorEEppEv.exit

bb.r:                                             ; preds = %.peel.next.i.i.i.i
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge154, label %.peel.next.i.i.i.i, !llvm.loop !2

_ZN4llvm28const_set_bits_iterator_implINS_9BitVectorEEppEv.exit: ; preds = %.lr.ph.i.i.i.i, %.loopexit48.i.i.i.i
  %.pre-phi.i.i.i.i = phi i32 [ %.pre.i.i.i.i, %.loopexit48.i.i.i.i ], [ %i.dt, %.lr.ph.i.i.i.i ]
  %.230.lcssa.i.i.i.i = phi i64 [ %.230.i.i.i.i, %.loopexit48.i.i.i.i ], [ %.230.peel.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.es = shl nuw i32 %.pre-phi.i.i.i.i, 6
  %i.et = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.230.lcssa.i.i.i.i, i1 true)
  %i.eu = trunc nuw nsw i64 %i.et to i32
  %i.ev = or disjoint i32 %i.es, %i.eu            ; 2 uses
  %.not134 = icmp eq i32 %i.ev, -1
  br i1 %.not134, label %._crit_edge154, label %.lr.ph153

bb.s:                                             ; preds = %.lr.ph169, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit94.thread
  %.064166 = phi i32 [ 0, %.lr.ph169 ], [ %.367.ph, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit94.thread ] ; 6 uses
  %.068165 = phi i1 [ true, %.lr.ph169 ], [ %.371.ph, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit94.thread ] ; 2 uses
  %.sroa.098.0164 = phi ptr [ %i.cj, %.lr.ph169 ], [ %i.hs, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit94.thread ] ; 6 uses
  %i.ew = load ptr, ptr %4, align 8, !tbaa !24    ; 6 uses
  %i.ex = load i32, ptr %i.cl, align 8, !tbaa !370 ; 3 uses
  %i.ey = zext i32 %i.ex to i64                   ; 2 uses
  %.idx2.i.i.i = shl nuw nsw i64 %i.ey, 3         ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 %.idx2.i.i.i
  %i.fa = lshr i64 %i.ey, 2                       ; 2 uses
  %.not.i.i.i89 = icmp eq i64 %i.fa, 0
  br i1 %.not.i.i.i89, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i:                 ; preds = %bb.s
  %i.fb = and i64 %.idx2.i.i.i, 34359738336
  %scevgep.i.i.i.i.i.i.i.i = getelementptr i8, ptr %i.ew, i64 %i.fb
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.w, %.lr.ph.preheader.i.i.i.i.i.i.i.i
  %.047.i.i.i.i.i.i.i.i = phi i64 [ %i.fk, %bb.w ], [ %i.fa, %.lr.ph.preheader.i.i.i.i.i.i.i.i ] ; 2 uses
  %.02946.i.i.i.i.i.i.i.i = phi ptr [ %i.fj, %bb.w ], [ %i.ew, %.lr.ph.preheader.i.i.i.i.i.i.i.i ] ; 9 uses
  %i.fc = load i64, ptr %.02946.i.i.i.i.i.i.i.i, align 8, !tbaa !427
  %.not32.i.i.i.i.i.i.i.i = icmp eq i64 %i.fc, 0
  br i1 %.not32.i.i.i.i.i.i.i.i, label %bb.t, label %_ZNK4llvm9BitVector4noneEv.exit

bb.t:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.fd = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i.i, i64 8
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !427
  %.not33.i.i.i.i.i.i.i.i = icmp eq i64 %i.fe, 0
  br i1 %.not33.i.i.i.i.i.i.i.i, label %bb.u, label %_ZNK4llvm9BitVector4noneEv.exit.loopexit.split.loop.exit

bb.u:                                             ; preds = %bb.t
  %i.ff = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i.i, i64 16
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !427
  %.not34.i.i.i.i.i.i.i.i = icmp eq i64 %i.fg, 0
  br i1 %.not34.i.i.i.i.i.i.i.i, label %bb.v, label %_ZNK4llvm9BitVector4noneEv.exit.loopexit.split.loop.exit223

bb.v:                                             ; preds = %bb.u
  %i.fh = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i.i, i64 24
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !427
  %.not35.i.i.i.i.i.i.i.i = icmp eq i64 %i.fi, 0
  br i1 %.not35.i.i.i.i.i.i.i.i, label %bb.w, label %_ZNK4llvm9BitVector4noneEv.exit.loopexit.split.loop.exit225

bb.w:                                             ; preds = %bb.v
  %i.fj = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i.i, i64 32
  %i.fk = add nsw i64 %.047.i.i.i.i.i.i.i.i, -1
  %i.fl = icmp sgt i64 %.047.i.i.i.i.i.i.i.i, 1
  br i1 %i.fl, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i.i.i.i, !llvm.loop !5

._crit_edge.loopexit.i.i.i.i.i.i.i.i:             ; preds = %bb.w
  %i.fm = and i32 %i.ex, 3
  br label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %._crit_edge.loopexit.i.i.i.i.i.i.i.i, %bb.s
  %.pre-phi53.i.i.i.i.i.i.i.i = phi i32 [ %i.fm, %._crit_edge.loopexit.i.i.i.i.i.i.i.i ], [ %i.ex, %bb.s ]
  %.029.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i.i.i ], [ %i.ew, %bb.s ] ; 5 uses
  switch i32 %.pre-phi53.i.i.i.i.i.i.i.i, label %_ZNK4llvm9BitVector4noneEv.exit.thread.loopexit [
    i32 3, label %bb.x
    i32 2, label %bb.z
    i32 1, label %bb.ab
  ]

bb.x:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.fn = load i64, ptr %.029.lcssa.i.i.i.i.i.i.i.i, align 8, !tbaa !427
end_hunk_0
begin_hunk_1_@_ZNK4llvm16PPCFrameLowering25spillCalleeSavedRegistersERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEENS_8ArrayRefINS_15CalleeSavedInfoEEEPKNS_18TargetRegisterInfoE:bb.a
  store i32 6, ptr %i.w, align 4, !tbaa !371
  %i.x = icmp ugt i32 %i.r, 447
  br i1 %i.x, label %_ZN4llvm9BitVectorC2Ejb.exit.loopexit, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i

_ZN4llvm9BitVectorC2Ejb.exit.loopexit:            ; preds = %bb.a
  store i32 0, ptr %i.v, align 8, !tbaa !370
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %15, ptr noundef nonnull %i.u, i64 noundef %i.t, i64 noundef 8) #19
  %i.y = load ptr, ptr %15, align 8, !tbaa !24
  br label %_ZN4llvm9BitVectorC2Ejb.exit.sink.split

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i:        ; preds = %bb.a
  %.not.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i, label %_ZN4llvm9BitVectorC2Ejb.exit, label %_ZN4llvm9BitVectorC2Ejb.exit.sink.split

_ZN4llvm9BitVectorC2Ejb.exit.sink.split:          ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i, %_ZN4llvm9BitVectorC2Ejb.exit.loopexit
  %.sink = phi ptr [ %i.y, %_ZN4llvm9BitVectorC2Ejb.exit.loopexit ], [ %i.u, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i ]
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.t, 3
  call void @llvm.memset.p0.i64(ptr align 8 %.sink, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !427
  br label %_ZN4llvm9BitVectorC2Ejb.exit

_ZN4llvm9BitVectorC2Ejb.exit:                     ; preds = %_ZN4llvm9BitVectorC2Ejb.exit.sink.split, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i
  store i32 %i.s, ptr %i.v, align 8, !tbaa !370
  %i.z = getelementptr inbounds nuw i8, ptr %15, i64 64
  store i32 %i.q, ptr %i.z, align 8, !tbaa !378
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !648 ; 2 uses
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt4pairINS_8RegisterES3_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E5clearEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm9BitVectorC2Ejb.exit
  %i.ae = shl i32 %i.ac, 2
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !649 ; 3 uses
  %i.ah = icmp ult i32 %i.ae, %i.ag
  %i.ai = icmp ugt i32 %i.ag, 64
  %or.cond.i = and i1 %i.ah, %i.ai
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt4pairINS_8RegisterES3_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E16shrink_and_clearEv(ptr noundef nonnull align 1 dereferenceable(1) %i.aa)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt4pairINS_8RegisterES3_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E5clearEv.exit

bb.d:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !650
  %i.al = zext i32 %i.ag to i64
  %i.am = add nuw nsw i64 %i.al, 31
  %i.an = lshr i64 %i.am, 3
  %i.ao = and i64 %i.an, 1073741820
  call void @llvm.memset.p0.i64(ptr align 4 %i.ak, i8 0, i64 %i.ao, i1 false)
  store i32 0, ptr %i.ab, align 8, !tbaa !648
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt4pairINS_8RegisterES3_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E5clearEv.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt4pairINS_8RegisterES3_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E5clearEv.exit: ; preds = %_ZN4llvm9BitVectorC2Ejb.exit, %bb.c, %bb.d
  %.idx = mul nuw nsw i64 %4, 12
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 %.idx ; 2 uses
  %.not185 = icmp eq i64 %4, 0
  br i1 %.not185, label %._crit_edge, label %.lr.ph

.lr.ph192:                                        ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.bg = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.bj = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.bn = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.bo = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %14, i64 4
  %i.bt = getelementptr inbounds nuw i8, ptr %14, i64 16
  br label %bb.j

.lr.ph:                                           ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt4pairINS_8RegisterES3_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E5clearEv.exit, %bb.h
  %.0100186 = phi ptr [ %i.ce, %bb.h ], [ %3, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt4pairINS_8RegisterES3_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E5clearEv.exit ] ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.0100186, i64 9
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !620, !range !21, !noundef !22
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %bb.e, label %bb.h

bb.e:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.bx = getelementptr inbounds nuw i8, ptr %.0100186, i64 4
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !28
  store i32 %i.by, ptr %i.a, align 4, !tbaa !186
  %i.bz = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt4pairINS_8RegisterES3_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E24lookupOrInsertIntoBucketIjJEEES2_IPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.aa, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.bz, 0 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !429
  %i.cc = icmp eq i32 %i.cb, 0
  %.sroa.0.0.copyload.i = load i32, ptr %.0100186, align 4, !tbaa !186 ; 2 uses
  br i1 %i.cc, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 %.sroa.0.0.copyload.i, ptr %i.ca, align 4, !tbaa !186
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.cd = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8
  store i32 %.sroa.0.0.copyload.i, ptr %i.cd, align 4, !tbaa !186
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %.lr.ph
  %i.ce = getelementptr inbounds nuw i8, ptr %.0100186, i64 12 ; 2 uses
  %.not = icmp eq ptr %i.ce, %i.ap
  br i1 %.not, label %.lr.ph192, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4llvm15PPCFunctionInfo13addMustSaveCRENS_8RegisterE.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt4pairINS_8RegisterES3_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E5clearEv.exit
  %i.cf = load ptr, ptr %15, align 8, !tbaa !24   ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.u
  br i1 %i.cg, label %_ZN4llvm9BitVectorD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  call void @free(ptr noundef %i.cf) #19
  br label %_ZN4llvm9BitVectorD2Ev.exit

_ZN4llvm9BitVectorD2Ev.exit:                      ; preds = %._crit_edge, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  ret i1 true

bb.j:                                             ; preds = %.lr.ph192, %_ZN4llvm15PPCFunctionInfo13addMustSaveCRENS_8RegisterE.exit
  %.0191 = phi i1 [ false, %.lr.ph192 ], [ %.3, %_ZN4llvm15PPCFunctionInfo13addMustSaveCRENS_8RegisterE.exit ] ; 9 uses
  %.0101190 = phi ptr [ %3, %.lr.ph192 ], [ %i.hr, %_ZN4llvm15PPCFunctionInfo13addMustSaveCRENS_8RegisterE.exit ] ; 7 uses
  %.sroa.0170.0189 = phi ptr [ null, %.lr.ph192 ], [ %.sroa.0170.1, %_ZN4llvm15PPCFunctionInfo13addMustSaveCRENS_8RegisterE.exit ] ; 10 uses
  %.sroa.5171.0188 = phi ptr [ null, %.lr.ph192 ], [ %.sroa.5171.1, %_ZN4llvm15PPCFunctionInfo13addMustSaveCRENS_8RegisterE.exit ] ; 10 uses
  %.sroa.0.0.copyload.i106 = load i32, ptr %.0101190, align 4, !tbaa !186 ; 13 uses
  %i.ch = add i32 %.sroa.0.0.copyload.i106, -22
  %spec.select = icmp ult i32 %i.ch, 3            ; 2 uses
  %i.ci = load ptr, ptr %i.aq, align 8, !tbaa !323
  %i.cj = call noundef zeroext i1 @_ZNK4llvm19MachineRegisterInfo8isLiveInENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.ci, i32 %.sroa.0.0.copyload.i106) #19 ; 3 uses
  br i1 %i.cj, label %_ZN4llvm17MachineBasicBlock9addLiveInENS_10MCRegisterENS_11LaneBitmaskE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ck = load ptr, ptr %i.as, align 8, !tbaa !632 ; 7 uses
  %i.cl = load ptr, ptr %i.at, align 8, !tbaa !634
  %.not.i.i.i = icmp eq ptr %i.ck, %i.cl
  br i1 %.not.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 %.sroa.0.0.copyload.i106, ptr %i.ck, align 8, !tbaa !186
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store i64 -1, ptr %.sroa.57.0..sroa_idx.i, align 8, !tbaa !427
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store ptr %i.cm, ptr %i.as, align 8, !tbaa !632
  br label %_ZN4llvm17MachineBasicBlock9addLiveInENS_10MCRegisterENS_11LaneBitmaskE.exit

bb.m:                                             ; preds = %bb.k
  %i.cn = load ptr, ptr %i.ar, align 8, !tbaa !633 ; 5 uses
  %i.co = ptrtoint ptr %i.ck to i64
  %i.cp = ptrtoint ptr %i.cn to i64               ; 2 uses
  %i.cq = sub i64 %i.co, %i.cp                    ; 3 uses
  %i.cr = icmp eq i64 %i.cq, 9223372036854775792
  br i1 %i.cr, label %bb.n, label %_ZNKSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.n:                                             ; preds = %bb.m
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #21
  unreachable

_ZNKSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.m
  %i.cs = ashr exact i64 %i.cq, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.cs, i64 1)
  %i.ct = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.cs ; 2 uses
  %i.cu = icmp ult i64 %i.ct, %i.cs
  %i.cv = call i64 @llvm.umin.i64(i64 %i.ct, i64 576460752303423487)
  %i.cw = select i1 %i.cu, i64 576460752303423487, i64 %i.cv ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.cw, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.cx = shl nuw nsw i64 %i.cw, 4
  %i.cy = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cx) #22 ; 5 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cq ; 2 uses
  store i32 %.sroa.0.0.copyload.i106, ptr %i.cz, align 8, !tbaa !186
  %.sroa.57.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store i64 -1, ptr %.sroa.57.0..sroa_idx8.i, align 8, !tbaa !427
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.cn, %i.ck
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNKSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.db, %.lr.ph.i.i.i.i.i.i.i ], [ %i.cy, %_ZNKSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.da, %.lr.ph.i.i.i.i.i.i.i ], [ %i.cn, %_ZNKSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !1481, !alias.scope !1482
  %i.da = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.da, %i.ck
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1462

_ZNSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.cy, %_ZNKSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.db, %.lr.ph.i.i.i.i.i.i.i ]
  %i.dc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 16
  %.not.i23.i.i.i.i = icmp eq ptr %i.cn, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i
  %i.dd = load ptr, ptr %i.at, align 8, !tbaa !634
  %i.de = ptrtoint ptr %i.dd to i64
  %i.df = sub i64 %i.de, %i.cp
  call void @_ZdlPvm(ptr noundef nonnull %i.cn, i64 noundef %i.df) #20
  br label %_ZNSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i: ; preds = %bb.o, %_ZNSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i.i
  store ptr %i.cy, ptr %i.ar, align 8, !tbaa !633
  store ptr %i.dc, ptr %i.as, align 8, !tbaa !632
  %i.dg = getelementptr inbounds nuw [16 x i8], ptr %i.cy, i64 %i.cw
  store ptr %i.dg, ptr %i.at, align 8, !tbaa !634
  br label %_ZN4llvm17MachineBasicBlock9addLiveInENS_10MCRegisterENS_11LaneBitmaskE.exit

_ZN4llvm17MachineBasicBlock9addLiveInENS_10MCRegisterENS_11LaneBitmaskE.exit: ; preds = %_ZNSt6vectorIN4llvm17MachineBasicBlock16RegisterMaskPairESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i, %bb.l, %bb.j
  %or.cond = and i1 %.0191, %spec.select
  br i1 %or.cond, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN4llvm17MachineBasicBlock9addLiveInENS_10MCRegisterENS_11LaneBitmaskE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  store ptr null, ptr %i.br, align 8, !tbaa !592, !alias.scope !1483
  store i32 %.sroa.0.0.copyload.i106, ptr %i.bs, align 4, !tbaa !28, !alias.scope !1483
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, i8 0, i64 16, i1 false), !alias.scope !1483
  store i32 100663296, ptr %14, align 8, !alias.scope !1483
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5171.0188, ptr noundef nonnull align 8 dereferenceable(1065) %.sroa.0170.0189, ptr noundef nonnull align 8 dereferenceable(32) %14) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br label %_ZN4llvm15PPCFunctionInfo13addMustSaveCRENS_8RegisterE.exit

bb.q:                                             ; preds = %_ZN4llvm17MachineBasicBlock9addLiveInENS_10MCRegisterENS_11LaneBitmaskE.exit
  %i.dh = icmp eq i32 %.sroa.0.0.copyload.i106, 533
  br i1 %i.dh, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.di = icmp eq i32 %.sroa.0.0.copyload.i106, 253
  %or.cond4 = and i1 %i.di, %i.o
  br i1 %or.cond4, label %_ZN4llvm15PPCFunctionInfo13addMustSaveCRENS_8RegisterE.exit, label %bb.t

bb.s:                                             ; preds = %bb.q
  br i1 %i.o, label %_ZN4llvm15PPCFunctionInfo13addMustSaveCRENS_8RegisterE.exit, label %.thread

bb.t:                                             ; preds = %bb.r
  br i1 %spec.select, label %bb.u, label %.thread

bb.u:                                             ; preds = %bb.t
  %i.dj = load ptr, ptr %i.k, align 8, !tbaa !320 ; 4 uses
  %i.dk = load ptr, ptr %i.e, align 8, !tbaa !49, !nonnull !22, !align !183 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 52
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !41
  %i.dn = icmp eq i32 %i.dm, 19
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 538
  %i.dp = load i8, ptr %i.do, align 2, !range !21
  %i.dq = trunc nuw i8 %i.dp to i1
  %.not183 = select i1 %i.dn, i1 true, i1 %i.dq
  br i1 %.not183, label %bb.v, label %_ZN4llvm7BuildMIERNS_15MachineFunctionERKNS_10MIMetadataERKNS_11MCInstrDescE.exit

bb.v:                                             ; preds = %bb.u
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dj, i64 232 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dj, i64 240 ; 3 uses
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !370 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dj, i64 244
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !371
  %.not.i.i107 = icmp ult i32 %i.dt, %i.dv
  br i1 %.not.i.i107, label %bb.x, label %bb.w, !prof !637

bb.w:                                             ; preds = %bb.v
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %i.dr, i32 %.sroa.0.0.copyload.i106)
  br label %_ZN4llvm15PPCFunctionInfo13addMustSaveCRENS_8RegisterE.exit

bb.x:                                             ; preds = %bb.v
  %i.dw = zext i32 %i.dt to i64
  %i.dx = load ptr, ptr %i.dr, align 8, !tbaa !24
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.dw
  store i32 %.sroa.0.0.copyload.i106, ptr %i.dy, align 1
  %i.dz = load i32, ptr %i.ds, align 8, !tbaa !370
  %i.ea = add i32 %i.dz, 1
  store i32 %i.ea, ptr %i.ds, align 8, !tbaa !370
  br label %_ZN4llvm15PPCFunctionInfo13addMustSaveCRENS_8RegisterE.exit

_ZN4llvm7BuildMIERNS_15MachineFunctionERKNS_10MIMetadataERKNS_11MCInstrDescE.exit: ; preds = %bb.u
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dj, i64 33
  store i8 1, ptr %i.eb, align 1, !tbaa !639
  %i.ec = load ptr, ptr %i.au, align 8, !tbaa !568
  %i.ed = getelementptr inbounds i8, ptr %i.ec, i64 -48096
  %i.ee = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.ed, ptr null, i1 noundef zeroext false) #19 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  store ptr null, ptr %i.be, align 8, !tbaa !592, !alias.scope !1484
  store i32 263, ptr %i.bf, align 4, !tbaa !28, !alias.scope !1484
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i8 0, i64 16, i1 false), !alias.scope !1484
  store i32 16777216, ptr %13, align 8, !alias.scope !1484
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ee, ptr noundef nonnull align 8 dereferenceable(1065) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %13) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  store ptr null, ptr %i.bh, align 8, !tbaa !592, !alias.scope !1485
  store i32 %.sroa.0.0.copyload.i106, ptr %i.bi, align 4, !tbaa !28, !alias.scope !1485
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i8 0, i64 16, i1 false), !alias.scope !1485
  store i32 100663296, ptr %12, align 8, !alias.scope !1485
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ee, ptr noundef nonnull align 8 dereferenceable(1065) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull %i.ee) #19
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %2, align 8
  %i.ef = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.eg = inttoptr i64 %i.ef to ptr
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store ptr %2, ptr %i.eh, align 8, !tbaa !356
  %.0.copyload.i.i.i.i9.i.i.i.i.i = load i64, ptr %i.ee, align 8
  %i.ei = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i, 7
  %i.ej = or disjoint i64 %i.ei, %i.ef
  store i64 %i.ej, ptr %i.ee, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  store ptr %i.ee, ptr %i.ek, align 8, !tbaa !356
  %.0.copyload.i.i.i.i10.i.i.i.i.i = load i64, ptr %2, align 8
  %i.el = ptrtoint ptr %i.ee to i64
  %i.em = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i, 7
  %i.en = or disjoint i64 %i.em, %i.el
  store i64 %i.en, ptr %2, align 8
  %i.eo = load ptr, ptr %i.au, align 8, !tbaa !568
  %i.ep = getelementptr inbounds i8, ptr %i.eo, i64 -65856
  %i.eq = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.ep, ptr null, i1 noundef zeroext false) #19 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  store ptr null, ptr %i.bl, align 8, !tbaa !592, !alias.scope !1486
  store i32 263, ptr %i.bm, align 4, !tbaa !28, !alias.scope !1486
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, i8 0, i64 16, i1 false), !alias.scope !1486
  store i32 67108864, ptr %11, align 8, !alias.scope !1486
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.eq, ptr noundef nonnull align 8 dereferenceable(1065) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %11) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  %i.er = getelementptr inbounds nuw i8, ptr %.0101190, i64 4
  %i.es = load i32, ptr %i.er, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  store i32 1, ptr %10, align 8, !alias.scope !1487
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, i8 0, i64 16, i1 false)
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.eq, ptr noundef nonnull align 8 dereferenceable(1065) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  store i32 5, ptr %9, align 8, !alias.scope !1488
  store ptr null, ptr %i.bp, align 8, !tbaa !592, !alias.scope !1488
  store i32 %i.es, ptr %i.bq, align 8, !tbaa !28, !alias.scope !1488
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.eq, ptr noundef nonnull align 8 dereferenceable(1065) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull %i.eq) #19
  %.0.copyload.i.i.i.i.i.i.i.i.i115 = load i64, ptr %2, align 8
  %i.et = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i115, -8 ; 2 uses
  %i.eu = inttoptr i64 %i.et to ptr
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  store ptr %2, ptr %i.ev, align 8, !tbaa !356
  %.0.copyload.i.i.i.i9.i.i.i.i.i116 = load i64, ptr %i.eq, align 8
  %i.ew = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i116, 7
  %i.ex = or disjoint i64 %i.ew, %i.et
  store i64 %i.ex, ptr %i.eq, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  store ptr %i.eq, ptr %i.ey, align 8, !tbaa !356
  %.0.copyload.i.i.i.i10.i.i.i.i.i117 = load i64, ptr %2, align 8
  %i.ez = ptrtoint ptr %i.eq to i64
  %i.fa = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i117, 7
  %i.fb = or disjoint i64 %i.fa, %i.ez
  store i64 %i.fb, ptr %2, align 8
  br label %_ZN4llvm15PPCFunctionInfo13addMustSaveCRENS_8RegisterE.exit

.thread:                                          ; preds = %bb.s, %bb.t
  %i.fc = getelementptr inbounds nuw i8, ptr %.0101190, i64 9
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !620, !range !21, !noundef !22
  %i.fe = trunc nuw i8 %i.fd to i1
  br i1 %i.fe, label %bb.y, label %bb.ad

bb.y:                                             ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.ff = getelementptr inbounds nuw i8, ptr %.0101190, i64 4
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !28 ; 3 uses
  store i32 %i.fg, ptr %i.b, align 4, !tbaa !186
  %i.fh = lshr i32 %i.fg, 6
  %i.fi = zext nneg i32 %i.fh to i64
  %i.fj = load ptr, ptr %15, align 8, !tbaa !24
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.fi
  %i.fl = and i32 %i.fg, 63
  %i.fm = load i64, ptr %i.fk, align 8, !tbaa !427
  %i.fn = zext nneg i32 %i.fl to i64
  %i.fo = shl nuw i64 1, %i.fn
  %i.fp = and i64 %i.fo, %i.fm
  %.not180 = icmp eq i64 %i.fp, 0
  br i1 %.not180, label %bb.z, label %.critedge

bb.z:                                             ; preds = %bb.y
  %i.fq = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt4pairINS_8RegisterES3_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E24lookupOrInsertIntoBucketIRKjJEEES2_IPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.aa, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %.fca.0.extract.i120 = extractvalue { ptr, i8 } %i.fq, 0 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i120, i64 4 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i120, i64 8 ; 2 uses
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !429
  %.not181 = icmp eq i32 %i.ft, 0
  br i1 %.not181, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %16, i8 0, i64 32, i1 false)
  %i.fu = load ptr, ptr %i.au, align 8, !tbaa !568
  %i.fv = getelementptr inbounds i8, ptr %i.fu, i64 -50656
  %i.fw = load i32, ptr %i.b, align 4, !tbaa !186
  %i.fx = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(32) %i.fv, i32 %i.fw) ; 2 uses
  %i.fy = extractvalue { ptr, ptr } %i.fx, 0      ; 2 uses
  %i.fz = extractvalue { ptr, ptr } %i.fx, 1      ; 2 uses
  %.sroa.014.0.copyload = load i32, ptr %i.fr, align 4, !tbaa !186
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  store ptr null, ptr %i.av, align 8, !tbaa !592, !alias.scope !1489
  store i32 %.sroa.014.0.copyload, ptr %i.aw, align 4, !tbaa !28, !alias.scope !1489
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false), !alias.scope !1489
  store i32 67108864, ptr %8, align 8, !alias.scope !1489
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.fz, ptr noundef nonnull align 8 dereferenceable(1065) %i.fy, ptr noundef nonnull align 8 dereferenceable(32) %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  %.sroa.013.0.copyload = load i32, ptr %i.fs, align 4, !tbaa !186
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  store ptr null, ptr %i.ay, align 8, !tbaa !592, !alias.scope !1490
  store i32 %.sroa.013.0.copyload, ptr %i.az, align 4, !tbaa !28, !alias.scope !1490
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i8 0, i64 16, i1 false), !alias.scope !1490
  store i32 67108864, ptr %7, align 8, !alias.scope !1490
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.fz, ptr noundef nonnull align 8 dereferenceable(1065) %i.fy, ptr noundef nonnull align 8 dereferenceable(32) %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %17, i8 0, i64 32, i1 false)
  %i.ga = load ptr, ptr %i.au, align 8, !tbaa !568
  %i.gb = getelementptr inbounds i8, ptr %i.ga, i64 -50624
  %i.gc = load i32, ptr %i.b, align 4, !tbaa !186
  %i.gd = call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %5, i32 %i.gc, i32 noundef 3) #19
  %i.ge = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %i.gb, i32 %i.gd) ; 2 uses
  %i.gf = extractvalue { ptr, ptr } %i.ge, 0
  %i.gg = extractvalue { ptr, ptr } %i.ge, 1
  %.sroa.09.0.copyload = load i32, ptr %i.fr, align 4, !tbaa !186
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  store ptr null, ptr %i.bb, align 8, !tbaa !592, !alias.scope !1491
  store i32 %.sroa.09.0.copyload, ptr %i.bc, align 4, !tbaa !28, !alias.scope !1491
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i8 0, i64 16, i1 false), !alias.scope !1491
  store i32 67108864, ptr %6, align 8, !alias.scope !1491
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.gg, ptr noundef nonnull align 8 dereferenceable(1065) %i.gf, ptr noundef nonnull align 8 dereferenceable(32) %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.gh = load i32, ptr %i.b, align 4, !tbaa !186 ; 2 uses
  %i.gi = and i32 %i.gh, 63
  %i.gj = zext nneg i32 %i.gi to i64
  %i.gk = shl nuw i64 1, %i.gj
  %i.gl = lshr i32 %i.gh, 6
  %i.gm = zext nneg i32 %i.gl to i64
  %i.gn = load ptr, ptr %15, align 8, !tbaa !24
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %i.gm ; 2 uses
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !427
  %i.gq = or i64 %i.gk, %i.gp
  store i64 %i.gq, ptr %i.go, align 8, !tbaa !427
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %_ZN4llvm15PPCFunctionInfo13addMustSaveCRENS_8RegisterE.exit

bb.ad:                                            ; preds = %.thread
  %i.gr = load ptr, ptr %5, align 8, !tbaa !16
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 32
  %i.gt = load ptr, ptr %i.gs, align 8
  %i.gu = call noundef ptr %i.gt(ptr noundef nonnull align 8 dereferenceable(316) %5, i32 %.sroa.0.0.copyload.i106) #19 ; 2 uses
  %i.gv = load ptr, ptr %i.e, align 8, !tbaa !49, !nonnull !22, !align !183 ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 524
  %i.gx = load i8, ptr %i.gw, align 4, !tbaa !651, !range !21, !noundef !22
  %i.gy = trunc nuw i8 %i.gx to i1
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gv, i64 556
  %i.ha = load i8, ptr %i.gz, align 4, !range !21
  %i.hb = trunc nuw i8 %i.ha to i1
  %or.cond.i121 = select i1 %i.gy, i1 %i.hb, i1 false
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gv, i64 512
  %i.hd = load i8, ptr %i.hc, align 8, !range !21
  %i.he = trunc nuw i8 %i.hd to i1
  %not.or.cond.i121 = xor i1 %or.cond.i121, true
  %i.hf = select i1 %not.or.cond.i121, i1 true, i1 %i.he
  br i1 %i.hf, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hg = load ptr, ptr %i.d, align 8, !tbaa !321, !nonnull !22, !align !183
  %i.hh = call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %i.hg, i32 noundef 45) #19
  br i1 %i.hh, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hi = xor i1 %i.cj, true
  %i.hj = getelementptr inbounds nuw i8, ptr %.0101190, i64 4
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !28
  call void @_ZNK4llvm12PPCInstrInfo24storeRegToStackSlotNoUpdERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEjbiPKNS_15MCRegisterClassE(ptr noundef nonnull align 8 dereferenceable(1080) %i.j, ptr noundef nonnull align 8 dereferenceable(360) %1, ptr %2, i32 noundef %.sroa.0.0.copyload.i106, i1 noundef zeroext %i.hi, i32 noundef %i.hk, ptr noundef %i.gu) #19
  br label %_ZN4llvm15PPCFunctionInfo13addMustSaveCRENS_8RegisterE.exit

bb.ag:                                            ; preds = %bb.ae, %bb.ad
  %i.hl = xor i1 %i.cj, true
  %i.hm = getelementptr inbounds nuw i8, ptr %.0101190, i64 4
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !28
  %i.ho = load ptr, ptr %i.j, align 8, !tbaa !16
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 504
  %i.hq = load ptr, ptr %i.hp, align 8
  call void %i.hq(ptr noundef nonnull align 8 dereferenceable(1080) %i.j, ptr noundef nonnull align 8 dereferenceable(360) %1, ptr %2, i32 %.sroa.0.0.copyload.i106, i1 noundef zeroext %i.hl, i32 noundef %i.hn, ptr noundef %i.gu, i32 0, i32 noundef 0) #19
  br label %_ZN4llvm15PPCFunctionInfo13addMustSaveCRENS_8RegisterE.exit

.critedge:                                        ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %_ZN4llvm15PPCFunctionInfo13addMustSaveCRENS_8RegisterE.exit

_ZN4llvm15PPCFunctionInfo13addMustSaveCRENS_8RegisterE.exit: ; preds = %bb.x, %bb.w, %bb.ac, %_ZN4llvm7BuildMIERNS_15MachineFunctionERKNS_10MIMetadataERKNS_11MCInstrDescE.exit, %bb.ag, %bb.af, %.critedge, %bb.s, %bb.r, %bb.p
  %.sroa.5171.1 = phi ptr [ %.sroa.5171.0188, %bb.p ], [ %.sroa.5171.0188, %bb.s ], [ %i.ee, %_ZN4llvm7BuildMIERNS_15MachineFunctionERKNS_10MIMetadataERKNS_11MCInstrDescE.exit ], [ %.sroa.5171.0188, %bb.r ], [ %.sroa.5171.0188, %.critedge ], [ %.sroa.5171.0188, %bb.ac ], [ %.sroa.5171.0188, %bb.ag ], [ %.sroa.5171.0188, %bb.af ], [ %.sroa.5171.0188, %bb.w ], [ %.sroa.5171.0188, %bb.x ]
  %.sroa.0170.1 = phi ptr [ %.sroa.0170.0189, %bb.p ], [ %.sroa.0170.0189, %bb.s ], [ %i.d, %_ZN4llvm7BuildMIERNS_15MachineFunctionERKNS_10MIMetadataERKNS_11MCInstrDescE.exit ], [ %.sroa.0170.0189, %bb.r ], [ %.sroa.0170.0189, %.critedge ], [ %.sroa.0170.0189, %bb.ac ], [ %.sroa.0170.0189, %bb.ag ], [ %.sroa.0170.0189, %bb.af ], [ %.sroa.0170.0189, %bb.w ], [ %.sroa.0170.0189, %bb.x ]
  %.3 = phi i1 [ true, %bb.p ], [ %.0191, %bb.s ], [ true, %_ZN4llvm7BuildMIERNS_15MachineFunctionERKNS_10MIMetadataERKNS_11MCInstrDescE.exit ], [ %.0191, %bb.r ], [ %.0191, %.critedge ], [ %.0191, %bb.ac ], [ %.0191, %bb.ag ], [ %.0191, %bb.af ], [ %.0191, %bb.w ], [ %.0191, %bb.x ]
  %i.hr = getelementptr inbounds nuw i8, ptr %.0101190, i64 12 ; 2 uses
  %.not104 = icmp eq ptr %i.hr, %i.ap
  br i1 %.not104, label %._crit_edge, label %bb.j
}

declare noundef zeroext i1 @_ZNK4llvm19MachineRegisterInfo8isLiveInENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520), i32) local_unnamed_addr #5

declare void @_ZNK4llvm12PPCInstrInfo24storeRegToStackSlotNoUpdERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEjbiPKNS_15MCRegisterClassE(ptr noundef nonnull align 8 dereferenceable(1080), ptr noundef nonnull align 8 dereferenceable(360), ptr, i32 noundef, i1 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZNK4llvm16PPCFrameLowering29eliminateCallFramePseudoInstrERNS_15MachineFunctionERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1065) %1, ptr noundef nonnull align 8 dereferenceable(360) %2, ptr %3) unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %5 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %6 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %7 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %8 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %9 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %10 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %11 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %12 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %13 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %14 = alloca %"class.llvm::MIMetadata", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49, !nonnull !22, !align !183 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(520296) %i.b) #19 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !346, !nonnull !22, !align !183
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1296
  %i.j = load i8, ptr %i.i, align 8
  %i.k = and i8 %i.j, 16
  %.not = icmp eq i8 %i.k, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.m = load i32, ptr %i.l, align 4, !tbaa !630
  %i.n = icmp eq i32 %i.m, 499
  br i1 %i.n, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !369
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.r = load i64, ptr %i.q, align 8, !tbaa !28
  %i.s = trunc i64 %i.r to i32                    ; 2 uses
  %.not48 = icmp eq i32 %i.s, 0
  br i1 %.not48, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !49, !nonnull !22, !align !183
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 538
  %i.v = load i8, ptr %i.u, align 2, !tbaa !181, !range !21, !noundef !22
  %i.w = trunc nuw i8 %i.v to i1                  ; 6 uses
  %i.x = sub nsw i32 0, %i.s                      ; 3 uses
  %i.y = select i1 %i.w, i32 532, i32 252         ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 4 uses
  %i.aa = sext i32 %i.x to i64                    ; 2 uses
  %i.ab = add nsw i64 %i.aa, 32768
  %i.ac = icmp ult i64 %i.ab, 65536
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  %.sroa.08.0.copyload = load ptr, ptr %i.z, align 8, !tbaa !589
  store ptr %.sroa.08.0.copyload, ptr %11, align 8, !tbaa !589
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i8 0, i64 24, i1 false)
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !568
  %.neg73 = select i1 %i.w, i64 -454, i64 -453
  %i.ag = getelementptr inbounds [32 x i8], ptr %i.af, i64 %.neg73
  %i.ah = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %2, ptr nonnull %3, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i32 %i.y) ; 2 uses
  %i.ai = extractvalue { ptr, ptr } %i.ah, 0      ; 2 uses
  %i.aj = extractvalue { ptr, ptr } %i.ah, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr null, ptr %i.ak, align 8, !tbaa !592, !alias.scope !1507
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 %i.y, ptr %i.al, align 4, !tbaa !28, !alias.scope !1507
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, i8 0, i64 16, i1 false), !alias.scope !1507
  store i32 67108864, ptr %10, align 8, !alias.scope !1507
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.aj, ptr noundef nonnull align 8 dereferenceable(1065) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  store i32 1, ptr %9, align 8, !alias.scope !1508
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr null, ptr %i.an, align 8, !tbaa !592, !alias.scope !1508
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 %i.aa, ptr %i.ao, align 8, !tbaa !28, !alias.scope !1508
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.aj, ptr noundef nonnull align 8 dereferenceable(1065) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ap = select i1 %i.w, i32 531, i32 251        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  %.sroa.05.0.copyload = load ptr, ptr %i.z, align 8, !tbaa !589
  store ptr %.sroa.05.0.copyload, ptr %12, align 8, !tbaa !589
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i8 0, i64 24, i1 false)
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !568
  %.neg = select i1 %i.w, i64 -1421, i64 -1420
  %i.at = getelementptr inbounds [32 x i8], ptr %i.as, i64 %.neg
  %i.au = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %2, ptr nonnull %3, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %i.at, i32 %i.ap) ; 2 uses
  %i.av = extractvalue { ptr, ptr } %i.au, 0
  %i.aw = extractvalue { ptr, ptr } %i.au, 1
  %i.ax = ashr i32 %i.x, 16
  %i.ay = sext i32 %i.ax to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  store i32 1, ptr %8, align 8, !alias.scope !1509
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr null, ptr %i.az, align 8, !tbaa !592, !alias.scope !1509
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %i.ay, ptr %i.ba, align 8, !tbaa !28, !alias.scope !1509
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.aw, ptr noundef nonnull align 8 dereferenceable(1065) %i.av, ptr noundef nonnull align 8 dereferenceable(32) %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  %.sroa.03.0.copyload = load ptr, ptr %i.z, align 8, !tbaa !589
  store ptr %.sroa.03.0.copyload, ptr %13, align 8, !tbaa !589
  %i.bb = getelementptr inbounds nuw i8, ptr %13, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i8 0, i64 24, i1 false)
  %i.bc = load ptr, ptr %i.ar, align 8, !tbaa !568
  %.neg71 = select i1 %i.w, i64 -1640, i64 -1639
  %i.bd = getelementptr inbounds [32 x i8], ptr %i.bc, i64 %.neg71
  %i.be = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %2, ptr nonnull %3, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %i.bd, i32 %i.ap) ; 2 uses
  %i.bf = extractvalue { ptr, ptr } %i.be, 0      ; 2 uses
  %i.bg = extractvalue { ptr, ptr } %i.be, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.bh, align 8, !tbaa !592, !alias.scope !1510
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %i.ap, ptr %i.bi, align 4, !tbaa !28, !alias.scope !1510
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i8 0, i64 16, i1 false), !alias.scope !1510
  store i32 67108864, ptr %7, align 8, !alias.scope !1510
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bg, ptr noundef nonnull align 8 dereferenceable(1065) %i.bf, ptr noundef nonnull align 8 dereferenceable(32) %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.bk = and i32 %i.x, 65535
  %i.bl = zext nneg i32 %i.bk to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  store i32 1, ptr %6, align 8, !alias.scope !1511
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr null, ptr %i.bm, align 8, !tbaa !592, !alias.scope !1511
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %i.bl, ptr %i.bn, align 8, !tbaa !28, !alias.scope !1511
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bg, ptr noundef nonnull align 8 dereferenceable(1065) %i.bf, ptr noundef nonnull align 8 dereferenceable(32) %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  %.sroa.01.0.copyload = load ptr, ptr %i.z, align 8, !tbaa !589
  store ptr %.sroa.01.0.copyload, ptr %14, align 8, !tbaa !589
  %i.bo = getelementptr inbounds nuw i8, ptr %14, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i8 0, i64 24, i1 false)
  %i.bp = load ptr, ptr %i.ar, align 8, !tbaa !568
  %.neg72 = select i1 %i.w, i64 -427, i64 -422
  %i.bq = getelementptr inbounds [32 x i8], ptr %i.bp, i64 %.neg72
  %i.br = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %2, ptr nonnull %3, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %i.bq, i32 %i.y) ; 2 uses
  %i.bs = extractvalue { ptr, ptr } %i.br, 0      ; 2 uses
  %i.bt = extractvalue { ptr, ptr } %i.br, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr null, ptr %i.bu, align 8, !tbaa !592, !alias.scope !1512
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %i.y, ptr %i.bv, align 4, !tbaa !28, !alias.scope !1512
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, i8 0, i64 16, i1 false), !alias.scope !1512
  store i32 67108864, ptr %5, align 8, !alias.scope !1512
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bt, ptr noundef nonnull align 8 dereferenceable(1065) %i.bs, ptr noundef nonnull align 8 dereferenceable(32) %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.bx, align 8, !tbaa !592, !alias.scope !1513
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.ap, ptr %i.by, align 4, !tbaa !28, !alias.scope !1513
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, i8 0, i64 16, i1 false), !alias.scope !1513
  store i32 0, ptr %4, align 8, !alias.scope !1513
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bt, ptr noundef nonnull align 8 dereferenceable(1065) %i.bs, ptr noundef nonnull align 8 dereferenceable(32) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f, %bb.e, %bb.b, %bb.a
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %3, align 8
  %i.ca = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i.i = icmp eq i64 %i.ca, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i: ; preds = %bb.g
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !368
  %i.cd = and i32 %i.cc, 8
  %.not34.i.i.i.i.i = icmp eq i32 %i.cd, 0
  br i1 %.not34.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i
  %.sroa.0.05.i.i.i.i.i = phi ptr [ %i.cf, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i ], [ %3, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i ]
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !356 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 44
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !368
  %i.ci = and i32 %i.ch, 8
  %.not3.i.i.i.i.i = icmp eq i32 %i.ci, 0
  br i1 %.not3.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i, !llvm.loop !4

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i, %bb.g
  %.sroa.0.1.i.i.i.i.i = phi ptr [ %3, %bb.g ], [ %3, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i ], [ %i.cf, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i ]
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !356 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %3, %i.ck
  br i1 %.not4.i.i.i, label %_ZN4llvm17MachineBasicBlock5eraseENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i, %.lr.ph.i.i.i
  %.sroa.03.05.i.i.i = phi ptr [ %i.cn, %.lr.ph.i.i.i ], [ %3, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i ] ; 6 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i, i64 8 ; 3 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !356 ; 2 uses
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE18removeNodeFromListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.cl, ptr noundef nonnull %.sroa.03.05.i.i.i) #19
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.03.05.i.i.i, align 8
  %i.co = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.cp = inttoptr i64 %i.co to ptr
  %i.cq = load ptr, ptr %i.cm, align 8, !tbaa !356 ; 3 uses
  %.0.copyload.i.i.i.i8.i.i.i.i.i.i.i.i = load i64, ptr %i.cq, align 8
  %i.cr = and i64 %.0.copyload.i.i.i.i8.i.i.i.i.i.i.i.i, 7
  %i.cs = or disjoint i64 %i.cr, %i.co
  store i64 %i.cs, ptr %i.cq, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store ptr %i.cq, ptr %i.ct, align 8, !tbaa !356
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.03.05.i.i.i, align 8
  %i.cu = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i.i, 7
  store i64 %i.cu, ptr %.sroa.03.05.i.i.i, align 8
  store ptr null, ptr %i.cm, align 8, !tbaa !356
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE10deleteNodeEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.cl, ptr noundef nonnull %.sroa.03.05.i.i.i) #19
  %.not.i.i.i = icmp eq ptr %i.cn, %i.ck
  br i1 %.not.i.i.i, label %_ZN4llvm17MachineBasicBlock5eraseENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE.exit, label %.lr.ph.i.i.i, !llvm.loop !1506

_ZN4llvm17MachineBasicBlock5eraseENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE.exit: ; preds = %.lr.ph.i.i.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i
  ret ptr %i.ck
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm16PPCFrameLowering27restoreCalleeSavedRegistersERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEENS_15MutableArrayRefINS_15CalleeSavedInfoEEEPKNS_18TargetRegisterInfoE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(360) %1, ptr %2, ptr nofree readonly captures(none) %3, i64 %4, ptr noundef %5) unnamed_addr #3 align 2 {
bb.a:
  %6 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %7 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %8 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %9 = alloca %"class.llvm::BitVector", align 8   ; 12 uses
  %i.a = alloca i32, align 4                      ; 9 uses
  %10 = alloca %"class.llvm::MIMetadata", align 8 ; 4 uses
  %11 = alloca %"class.llvm::MIMetadata", align 8 ; 4 uses
  %12 = alloca %"class.llvm::MIMetadata", align 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !425  ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !49, !nonnull !22, !align !183 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef ptr %i.h(ptr noundef nonnull align 8 dereferenceable(520296) %i.e) #19 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !320
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 29
  %i.m = load i8, ptr %i.l, align 1, !tbaa !344, !range !21, !noundef !22
  %i.n = trunc nuw i8 %i.m to i1                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.p = load i32, ptr %i.o, align 8, !tbaa !647  ; 2 uses
  %i.q = add i32 %i.p, 63                         ; 2 uses
  %i.r = lshr i32 %i.q, 6                         ; 3 uses
  %i.s = zext nneg i32 %i.r to i64                ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  store ptr %i.t, ptr %9, align 8, !tbaa !24
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 12
  store i32 6, ptr %i.v, align 4, !tbaa !371
  %i.w = icmp ugt i32 %i.q, 447
  br i1 %i.w, label %_ZN4llvm9BitVectorC2Ejb.exit.loopexit, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i

_ZN4llvm9BitVectorC2Ejb.exit.loopexit:            ; preds = %bb.a
  store i32 0, ptr %i.u, align 8, !tbaa !370
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(68) %9, ptr noundef nonnull %i.t, i64 noundef %i.s, i64 noundef 8) #19
  %i.x = load ptr, ptr %9, align 8, !tbaa !24
  br label %_ZN4llvm9BitVectorC2Ejb.exit.sink.split

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i:        ; preds = %bb.a
  %.not.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i, label %_ZN4llvm9BitVectorC2Ejb.exit, label %_ZN4llvm9BitVectorC2Ejb.exit.sink.split

_ZN4llvm9BitVectorC2Ejb.exit.sink.split:          ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i, %_ZN4llvm9BitVectorC2Ejb.exit.loopexit
  %.sink = phi ptr [ %i.x, %_ZN4llvm9BitVectorC2Ejb.exit.loopexit ], [ %i.t, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i ]
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.s, 3
  call void @llvm.memset.p0.i64(ptr align 8 %.sink, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !427
  br label %_ZN4llvm9BitVectorC2Ejb.exit

_ZN4llvm9BitVectorC2Ejb.exit:                     ; preds = %_ZN4llvm9BitVectorC2Ejb.exit.sink.split, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.i.i.i
  store i32 %i.r, ptr %i.u, align 8, !tbaa !370
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 64
  store i32 %i.p, ptr %i.y, align 8, !tbaa !378
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !356
  %i.ab = icmp eq ptr %2, %i.aa                   ; 2 uses
  br i1 %i.ab, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm9BitVectorC2Ejb.exit
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %2, align 8
  %i.ac = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, -8
  %i.ad = inttoptr i64 %i.ac to ptr               ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ad) ]
  %.0.copyload.i.i.i.i.i.i.i4.i.i = load i64, ptr %i.ad, align 8
  %i.ae = and i64 %.0.copyload.i.i.i.i.i.i.i4.i.i, 4
  %.not.i5.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i5.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i: ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 44
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !368
  %i.ah = and i32 %i.ag, 4
  %.not45.i.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not45.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i
  %.sroa.0.06.i.i.i = phi ptr [ %i.aj, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i ], [ %i.ad, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i ]
  %.0.copyload.i.i.i.i.i.i1.i.i.i = load i64, ptr %.sroa.0.06.i.i.i, align 8
  %i.ai = and i64 %.0.copyload.i.i.i.i.i.i1.i.i.i, -8
  %i.aj = inttoptr i64 %i.ai to ptr               ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 44
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !368
  %i.am = and i32 %i.al, 4
  %.not4.i.i.i = icmp eq i32 %i.am, 0
  br i1 %.not4.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i, !llvm.loop !0

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i, %bb.b, %_ZN4llvm9BitVectorC2Ejb.exit
  %.sroa.0140.0 = phi ptr [ %2, %_ZN4llvm9BitVectorC2Ejb.exit ], [ %i.ad, %bb.b ], [ %i.ad, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i ], [ %i.aj, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i ] ; 6 uses
  %i.an = and i64 %4, 4294967295
  %.not161 = icmp eq i64 %i.an, 0
  br i1 %.not161, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aq = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0140.0, i64 44
  %i.bb = and i64 %4, 4294967295
  br label %bb.c

._crit_edge.loopexit:                             ; preds = %bb.x
  %i.bc = trunc nuw i8 %.2 to i1
  %i.bd = trunc nuw i8 %.295 to i1
  %i.be = trunc nuw i8 %.298 to i1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit
  %.sroa.0141.0.lcssa = phi ptr [ %2, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit ], [ %.sroa.0141.1, %._crit_edge.loopexit ]
  %.099.lcssa = phi i32 [ 0, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit ], [ %.1100, %._crit_edge.loopexit ]
  %.096.lcssa = phi i1 [ false, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit ], [ %i.be, %._crit_edge.loopexit ] ; 2 uses
  %.093.lcssa = phi i1 [ false, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit ], [ %i.bd, %._crit_edge.loopexit ] ; 2 uses
  %.0.lcssa = phi i1 [ false, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit ], [ %i.bc, %._crit_edge.loopexit ] ; 2 uses
  %or.cond10 = select i1 %.0.lcssa, i1 true, i1 %.093.lcssa
  %or.cond13 = select i1 %or.cond10, i1 true, i1 %.096.lcssa
  br i1 %or.cond13, label %bb.y, label %bb.aa

bb.c:                                             ; preds = %.lr.ph, %bb.x
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.x ] ; 3 uses
  %.0168 = phi i8 [ 0, %.lr.ph ], [ %.2, %bb.x ]  ; 6 uses
  %.093167 = phi i8 [ 0, %.lr.ph ], [ %.295, %bb.x ] ; 6 uses
  %.096166 = phi i8 [ 0, %.lr.ph ], [ %.298, %bb.x ] ; 6 uses
  %.099165 = phi i32 [ 0, %.lr.ph ], [ %.1100, %bb.x ] ; 9 uses
  %.sroa.0141.0162 = phi ptr [ %2, %.lr.ph ], [ %.sroa.0141.1, %bb.x ] ; 13 uses
  %i.bf = getelementptr inbounds nuw [12 x i8], ptr %3, i64 %indvars.iv ; 5 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.bf, align 4, !tbaa !186 ; 7 uses
  %i.bg = icmp eq i32 %.sroa.0.0.copyload.i, 533
  br i1 %i.bg, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bh = icmp eq i32 %.sroa.0.0.copyload.i, 253
  %or.cond = and i1 %i.bh, %i.n
  br i1 %or.cond, label %bb.x, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.n, label %bb.x, label %.thread

bb.f:                                             ; preds = %bb.d
  %i.bi = add i32 %.sroa.0.0.copyload.i, -22
  %spec.select.i = icmp ult i32 %i.bi, 3
  br i1 %spec.select.i, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.bj = load ptr, ptr %i.d, align 8, !tbaa !49, !nonnull !22, !align !183 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 52
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !41
  %i.bm = icmp eq i32 %i.bl, 19
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 538
  %i.bo = load i8, ptr %i.bn, align 2, !range !21
  %i.bp = trunc nuw i8 %i.bo to i1
  %.not156 = select i1 %i.bm, i1 true, i1 %i.bp
  br i1 %.not156, label %bb.x, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bq = trunc nuw i64 %indvars.iv to i32
  switch i32 %.sroa.0.0.copyload.i, label %.thread154 [
    i32 22, label %bb.x
    i32 23, label %.fold.split
  ]

.thread154:                                       ; preds = %bb.h
  br label %bb.x

.thread:                                          ; preds = %bb.e, %bb.f
  %i.br = trunc nuw i8 %.0168 to i1               ; 2 uses
  %i.bs = trunc nuw i8 %.093167 to i1             ; 2 uses
  %or.cond4 = select i1 %i.br, i1 true, i1 %i.bs
  %i.bt = trunc nuw i8 %.096166 to i1             ; 2 uses
  %or.cond7 = select i1 %or.cond4, i1 true, i1 %i.bt
  br i1 %or.cond7, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.thread
  %i.bu = load ptr, ptr %i.c, align 8, !tbaa !321, !nonnull !22, !align !183
  %i.bv = call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %i.bu, i32 noundef 21) #19
  br i1 %i.bv, label %_ZNK4llvm16PPCFrameLowering7needsFPERKNS_15MachineFunctionE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bw = load ptr, ptr %i.ao, align 8, !tbaa !346, !nonnull !22, !align !183
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 1288
  %i.by = call noundef zeroext i1 @_ZNK4llvm13TargetOptions23DisableFramePointerElimERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(440) %i.bx, ptr noundef nonnull align 8 dereferenceable(1065) %i.c) #19 ; 0 uses
  br label %_ZNK4llvm16PPCFrameLowering7needsFPERKNS_15MachineFunctionE.exit

_ZNK4llvm16PPCFrameLowering7needsFPERKNS_15MachineFunctionE.exit: ; preds = %bb.j, %bb.i
  call fastcc void @_ZL10restoreCRsbbbbRN4llvm17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEENS_8ArrayRefINS_15CalleeSavedInfoEEEj(i1 noundef zeroext %i.br, i1 noundef zeroext %i.bs, i1 noundef zeroext %i.bt, ptr noundef nonnull align 8 dereferenceable(360) %1, ptr %.sroa.0141.0162, ptr nonnull %3, i32 noundef %.099165)
  br label %bb.k

bb.k:                                             ; preds = %.thread, %_ZNK4llvm16PPCFrameLowering7needsFPERKNS_15MachineFunctionE.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bf, i64 9
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !620, !range !21, !noundef !22
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !28 ; 3 uses
  store i32 %i.cd, ptr %i.a, align 4, !tbaa !186
  %i.ce = lshr i32 %i.cd, 6
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = load ptr, ptr %9, align 8, !tbaa !24
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.cf
  %i.ci = and i32 %i.cd, 63
  %i.cj = load i64, ptr %i.ch, align 8, !tbaa !427
  %i.ck = zext nneg i32 %i.ci to i64
  %i.cl = shl nuw i64 1, %i.ck
  %i.cm = and i64 %i.cl, %i.cj
  %.not157 = icmp eq i64 %i.cm, 0
  br i1 %.not157, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.cn = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt4pairINS_8RegisterES3_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E24lookupOrInsertIntoBucketIRKjJEEES2_IPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ap, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.cn, 0 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 4 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !429
  %.not158 = icmp eq i32 %i.cq, 0
  br i1 %.not158, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 0, i64 32, i1 false)
  %i.cr = load ptr, ptr %i.aq, align 8, !tbaa !568
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 -49120
  %.sroa.028.0.copyload = load i32, ptr %i.cp, align 4, !tbaa !186
  %i.ct = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %1, ptr %.sroa.0141.0162, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %i.cs, i32 %.sroa.028.0.copyload) ; 2 uses
  %i.cu = extractvalue { ptr, ptr } %i.ct, 0
  %i.cv = extractvalue { ptr, ptr } %i.ct, 1
  %i.cw = load i32, ptr %i.a, align 4, !tbaa !186
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  store ptr null, ptr %i.ar, align 8, !tbaa !592, !alias.scope !1521
  store i32 %i.cw, ptr %i.as, align 4, !tbaa !28, !alias.scope !1521
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, i8 0, i64 16, i1 false), !alias.scope !1521
  store i32 0, ptr %8, align 8, !alias.scope !1521
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.cv, ptr noundef nonnull align 8 dereferenceable(1065) %i.cu, ptr noundef nonnull align 8 dereferenceable(32) %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, i8 0, i64 32, i1 false)
  %i.cx = load ptr, ptr %i.aq, align 8, !tbaa !568
  %i.cy = getelementptr inbounds i8, ptr %i.cx, i64 -49088
  %.sroa.025.0.copyload = load i32, ptr %i.co, align 4, !tbaa !186
  %i.cz = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %1, ptr %.sroa.0141.0162, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.cy, i32 %.sroa.025.0.copyload) ; 2 uses
  %i.da = extractvalue { ptr, ptr } %i.cz, 0
  %i.db = extractvalue { ptr, ptr } %i.cz, 1
  %i.dc = load i32, ptr %i.a, align 4, !tbaa !186
  %i.dd = call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %5, i32 %i.dc, i32 noundef 3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  store ptr null, ptr %i.au, align 8, !tbaa !592, !alias.scope !1522
  store i32 %i.dd, ptr %i.av, align 4, !tbaa !28, !alias.scope !1522
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i8 0, i64 16, i1 false), !alias.scope !1522
  store i32 67108864, ptr %7, align 8, !alias.scope !1522
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.db, ptr noundef nonnull align 8 dereferenceable(1065) %i.da, ptr noundef nonnull align 8 dereferenceable(32) %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %12, i8 0, i64 32, i1 false)
  %i.de = load ptr, ptr %i.aq, align 8, !tbaa !568
  %i.df = getelementptr inbounds i8, ptr %i.de, i64 -49088
  %.sroa.021.0.copyload = load i32, ptr %i.co, align 4, !tbaa !186
  %i.dg = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %1, ptr %.sroa.0141.0162, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %i.df, i32 %.sroa.021.0.copyload) ; 2 uses
  %i.dh = extractvalue { ptr, ptr } %i.dg, 0
  %i.di = extractvalue { ptr, ptr } %i.dg, 1
  %i.dj = load i32, ptr %i.a, align 4, !tbaa !186
  %i.dk = call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %5, i32 %i.dj, i32 noundef 3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  store ptr null, ptr %i.ax, align 8, !tbaa !592, !alias.scope !1523
  store i32 %i.dk, ptr %i.ay, align 4, !tbaa !28, !alias.scope !1523
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, i8 0, i64 16, i1 false), !alias.scope !1523
  store i32 67108864, ptr %6, align 8, !alias.scope !1523
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.di, ptr noundef nonnull align 8 dereferenceable(1065) %i.dh, ptr noundef nonnull align 8 dereferenceable(32) %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.dl = load i32, ptr %i.a, align 4, !tbaa !186 ; 2 uses
  %i.dm = and i32 %i.dl, 63
  %i.dn = zext nneg i32 %i.dm to i64
  %i.do = shl nuw i64 1, %i.dn
  %i.dp = lshr i32 %i.dl, 6
  %i.dq = zext nneg i32 %i.dp to i64
  %i.dr = load ptr, ptr %9, align 8, !tbaa !24
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.dq ; 2 uses
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !427
  %i.du = or i64 %i.do, %i.dt
  store i64 %i.du, ptr %i.ds, align 8, !tbaa !427
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.u

bb.q:                                             ; preds = %bb.k
  %i.dv = load ptr, ptr %5, align 8, !tbaa !16
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  %i.dx = load ptr, ptr %i.dw, align 8
  %i.dy = call noundef ptr %i.dx(ptr noundef nonnull align 8 dereferenceable(316) %5, i32 %.sroa.0.0.copyload.i) #19 ; 2 uses
  %i.dz = load ptr, ptr %i.d, align 8, !tbaa !49, !nonnull !22, !align !183 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 524
  %i.eb = load i8, ptr %i.ea, align 4, !tbaa !651, !range !21, !noundef !22
  %i.ec = trunc nuw i8 %i.eb to i1
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 556
  %i.ee = load i8, ptr %i.ed, align 4, !range !21
  %i.ef = trunc nuw i8 %i.ee to i1
  %or.cond.i = select i1 %i.ec, i1 %i.ef, i1 false
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dz, i64 512
  %i.eh = load i8, ptr %i.eg, align 8, !range !21
  %i.ei = trunc nuw i8 %i.eh to i1
  %not.or.cond.i = xor i1 %or.cond.i, true
  %i.ej = select i1 %not.or.cond.i, i1 true, i1 %i.ei
  br i1 %i.ej, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ek = load ptr, ptr %i.c, align 8, !tbaa !321, !nonnull !22, !align !183
  %i.el = call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %i.ek, i32 noundef 45) #19
  br i1 %i.el, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.em = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.en = load i32, ptr %i.em, align 4, !tbaa !28
  call void @_ZNK4llvm12PPCInstrInfo25loadRegFromStackSlotNoUpdERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEjiPKNS_15MCRegisterClassE(ptr noundef nonnull align 8 dereferenceable(1080) %i.i, ptr noundef nonnull align 8 dereferenceable(360) %1, ptr %.sroa.0141.0162, i32 noundef %.sroa.0.0.copyload.i, i32 noundef %i.en, ptr noundef %i.dy) #19
  br label %bb.u

bb.t:                                             ; preds = %bb.r, %bb.q
  %i.eo = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !28
  %i.eq = load ptr, ptr %i.i, align 8, !tbaa !16
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 512
  %i.es = load ptr, ptr %i.er, align 8
  call void %i.es(ptr noundef nonnull align 8 dereferenceable(1080) %i.i, ptr noundef nonnull align 8 dereferenceable(360) %1, ptr %.sroa.0141.0162, i32 %.sroa.0.0.copyload.i, i32 noundef %i.ep, ptr noundef %i.dy, i32 0, i32 noundef 0, i32 noundef 0) #19
  br label %bb.u

bb.u:                                             ; preds = %bb.p, %bb.s, %bb.t
  br i1 %i.ab, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.et = load ptr, ptr %i.z, align 8, !tbaa !356
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0140.0) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i105 = load i64, ptr %.sroa.0140.0, align 8
  %i.eu = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i105, 4
  %.not.i.i.i = icmp eq i64 %i.eu, 0
  br i1 %.not.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i107, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i107: ; preds = %bb.w
  %i.ev = load i32, ptr %i.ba, align 4, !tbaa !368
  %i.ew = and i32 %i.ev, 8
  %.not34.i.i.i = icmp eq i32 %i.ew, 0
  br i1 %.not34.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i108

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i108: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i107, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i108
  %.sroa.0.05.i.i.i = phi ptr [ %i.ey, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i108 ], [ %.sroa.0140.0, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i107 ]
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !356 ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 44
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !368
  %i.fb = and i32 %i.fa, 8
  %.not3.i.i.i = icmp eq i32 %i.fb, 0
  br i1 %.not3.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i108, !llvm.loop !4

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i108, %bb.w, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i107
  %.sroa.0.1.i.i.i106 = phi ptr [ %.sroa.0140.0, %bb.w ], [ %.sroa.0140.0, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i107 ], [ %i.ey, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i108 ]
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i106, i64 8
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !356
  br label %bb.x

.critedge:                                        ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.x

.fold.split:                                      ; preds = %bb.h
  br label %bb.x

bb.x:                                             ; preds = %bb.h, %.fold.split, %.thread154, %bb.v, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit, %.critedge, %bb.g, %bb.e, %bb.d
  %.sroa.0141.1 = phi ptr [ %.sroa.0141.0162, %bb.e ], [ %.sroa.0141.0162, %bb.h ], [ %.sroa.0141.0162, %bb.g ], [ %.sroa.0141.0162, %.thread154 ], [ %.sroa.0141.0162, %.critedge ], [ %.sroa.0141.0162, %bb.d ], [ %i.et, %bb.v ], [ %i.fd, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit ], [ %.sroa.0141.0162, %.fold.split ] ; 2 uses
  %.1100 = phi i32 [ %.099165, %bb.e ], [ %i.bq, %bb.h ], [ %.099165, %bb.g ], [ %.099165, %.thread154 ], [ %.099165, %.critedge ], [ %.099165, %bb.d ], [ %.099165, %bb.v ], [ %.099165, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit ], [ %.099165, %.fold.split ] ; 2 uses
  %.298 = phi i8 [ %.096166, %bb.e ], [ %.096166, %bb.h ], [ %.096166, %bb.g ], [ 1, %.thread154 ], [ 0, %.critedge ], [ %.096166, %bb.d ], [ 0, %bb.v ], [ 0, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit ], [ %.096166, %.fold.split ] ; 2 uses
  %.295 = phi i8 [ %.093167, %bb.e ], [ %.093167, %bb.h ], [ %.093167, %bb.g ], [ %.093167, %.thread154 ], [ 0, %.critedge ], [ %.093167, %bb.d ], [ 0, %bb.v ], [ 0, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit ], [ 1, %.fold.split ] ; 2 uses
  %.2 = phi i8 [ %.0168, %bb.e ], [ 1, %bb.h ], [ %.0168, %bb.g ], [ %.0168, %.thread154 ], [ 0, %.critedge ], [ %.0168, %bb.d ], [ 0, %bb.v ], [ 0, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit ], [ %.0168, %.fold.split ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, %i.bb
  br i1 %.not, label %._crit_edge.loopexit, label %bb.c, !llvm.loop !1520

bb.y:                                             ; preds = %._crit_edge
  %i.fe = load ptr, ptr %i.c, align 8, !tbaa !321, !nonnull !22, !align !183
  %i.ff = call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %i.fe, i32 noundef 21) #19
  br i1 %i.ff, label %_ZNK4llvm16PPCFrameLowering7needsFPERKNS_15MachineFunctionE.exit111, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fg = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !346, !nonnull !22, !align !183
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 1288
  %i.fj = call noundef zeroext i1 @_ZNK4llvm13TargetOptions23DisableFramePointerElimERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(440) %i.fi, ptr noundef nonnull align 8 dereferenceable(1065) %i.c) #19 ; 0 uses
  br label %_ZNK4llvm16PPCFrameLowering7needsFPERKNS_15MachineFunctionE.exit111

_ZNK4llvm16PPCFrameLowering7needsFPERKNS_15MachineFunctionE.exit111: ; preds = %bb.z, %bb.y
  call fastcc void @_ZL10restoreCRsbbbbRN4llvm17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEENS_8ArrayRefINS_15CalleeSavedInfoEEEj(i1 noundef zeroext %.0.lcssa, i1 noundef zeroext %.093.lcssa, i1 noundef zeroext %.096.lcssa, ptr noundef nonnull align 8 dereferenceable(360) %1, ptr %.sroa.0141.0.lcssa, ptr %3, i32 noundef %.099.lcssa)
  br label %bb.aa

bb.aa:                                            ; preds = %._crit_edge, %_ZNK4llvm16PPCFrameLowering7needsFPERKNS_15MachineFunctionE.exit111
  %i.fk = load ptr, ptr %9, align 8, !tbaa !24    ; 2 uses
  %i.fl = icmp eq ptr %i.fk, %i.t
  br i1 %i.fl, label %_ZN4llvm9BitVectorD2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @free(ptr noundef %i.fk) #19
  br label %_ZN4llvm9BitVectorD2Ev.exit

_ZN4llvm9BitVectorD2Ev.exit:                      ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL10restoreCRsbbbbRN4llvm17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEENS_8ArrayRefINS_15CalleeSavedInfoEEEj(i1 noundef zeroext %0, i1 noundef zeroext %1, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(360) %3, ptr %4, ptr nofree readonly captures(none) %.0.val, i32 noundef %5) unnamed_addr #3 {
_ZN4llvm7BuildMIERNS_15MachineFunctionERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit:
  %6 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %7 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %8 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %9 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %10 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %11 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %12 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %13 = alloca %"class.llvm::MachineOperand", align 8 ; 5 uses
  %14 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !425  ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !652, !nonnull !22, !align !183 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef ptr %i.g(ptr noundef nonnull align 8 dereferenceable(520296) %i.d) #19
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !568
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -46400
  %i.l = tail call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr null, i1 noundef zeroext false) #19 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  %i.m = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr null, ptr %i.m, align 8, !tbaa !592, !alias.scope !1542
  %i.n = getelementptr inbounds nuw i8, ptr %14, i64 4
  store i32 263, ptr %i.n, align 4, !tbaa !28, !alias.scope !1542
  %i.o = getelementptr inbounds nuw i8, ptr %14, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false), !alias.scope !1542
  store i32 16777216, ptr %14, align 8, !alias.scope !1542
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.l, ptr noundef nonnull align 8 dereferenceable(1065) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %14) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  %i.p = zext i32 %5 to i64
  %i.q = getelementptr inbounds nuw [12 x i8], ptr %.0.val, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  store i32 1, ptr %13, align 8, !alias.scope !1543
  %i.t = getelementptr inbounds nuw i8, ptr %13, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.l, ptr noundef nonnull align 8 dereferenceable(1065) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %13) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  store i32 5, ptr %12, align 8, !alias.scope !1544
  %i.u = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr null, ptr %i.u, align 8, !tbaa !592, !alias.scope !1544
  %i.v = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i32 %i.s, ptr %i.v, align 8, !tbaa !28, !alias.scope !1544
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.l, ptr noundef nonnull align 8 dereferenceable(1065) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 4 uses
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull %i.l) #19
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %4, align 8
  %i.x = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %4, ptr %i.z, align 8, !tbaa !356
  %.0.copyload.i.i.i.i9.i.i.i.i.i = load i64, ptr %i.l, align 8
  %i.aa = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i, 7
  %i.ab = or disjoint i64 %i.aa, %i.x
  store i64 %i.ab, ptr %i.l, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.l, ptr %i.ac, align 8, !tbaa !356
  %.0.copyload.i.i.i.i10.i.i.i.i.i = load i64, ptr %4, align 8
  %i.ad = ptrtoint ptr %i.l to i64
  %i.ae = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i, 7
  %i.af = or disjoint i64 %i.ae, %i.ad
  store i64 %i.af, ptr %4, align 8
  br i1 %0, label %_ZN4llvm7BuildMIERNS_15MachineFunctionERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit45, label %bb.a

_ZN4llvm7BuildMIERNS_15MachineFunctionERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit45: ; preds = %_ZN4llvm7BuildMIERNS_15MachineFunctionERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit
  %i.ag = load ptr, ptr %i.i, align 8, !tbaa !568
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -50112
  %i.ai = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr null, i1 noundef zeroext false) #19 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  %i.aj = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr null, ptr %i.aj, align 8, !tbaa !592, !alias.scope !1545
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 4
  store i32 22, ptr %i.ak, align 4, !tbaa !28, !alias.scope !1545
  %i.al = getelementptr inbounds nuw i8, ptr %11, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i8 0, i64 16, i1 false), !alias.scope !1545
  store i32 16777216, ptr %11, align 8, !alias.scope !1545
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ai, ptr noundef nonnull align 8 dereferenceable(1065) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %11) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  %.demorgan = or i1 %1, %2
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr null, ptr %i.am, align 8, !tbaa !592, !alias.scope !1546
  %i.an = select i1 %.demorgan, i32 0, i32 67108864
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 263, ptr %i.ao, align 4, !tbaa !28, !alias.scope !1546
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false), !alias.scope !1546
  store i32 %i.an, ptr %10, align 8, !alias.scope !1546
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ai, ptr noundef nonnull align 8 dereferenceable(1065) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull %i.ai) #19
  %.0.copyload.i.i.i.i.i.i.i.i.i46 = load i64, ptr %4, align 8
  %i.aq = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i46, -8 ; 2 uses
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %4, ptr %i.as, align 8, !tbaa !356
  %.0.copyload.i.i.i.i9.i.i.i.i.i47 = load i64, ptr %i.ai, align 8
  %i.at = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i47, 7
  %i.au = or disjoint i64 %i.at, %i.aq
  store i64 %i.au, ptr %i.ai, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %i.ai, ptr %i.av, align 8, !tbaa !356
  %.0.copyload.i.i.i.i10.i.i.i.i.i48 = load i64, ptr %4, align 8
  %i.aw = ptrtoint ptr %i.ai to i64
  %i.ax = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i48, 7
  %i.ay = or disjoint i64 %i.ax, %i.aw
  store i64 %i.ay, ptr %4, align 8
  br label %bb.a

bb.a:                                             ; preds = %_ZN4llvm7BuildMIERNS_15MachineFunctionERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit45, %_ZN4llvm7BuildMIERNS_15MachineFunctionERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit
  br i1 %1, label %_ZN4llvm7BuildMIERNS_15MachineFunctionERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit55, label %bb.b

_ZN4llvm7BuildMIERNS_15MachineFunctionERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit55: ; preds = %bb.a
  %i.az = load ptr, ptr %i.i, align 8, !tbaa !568
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -50112
  %i.bb = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.ba, ptr null, i1 noundef zeroext false) #19 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.bc = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr null, ptr %i.bc, align 8, !tbaa !592, !alias.scope !1547
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i32 23, ptr %i.bd, align 4, !tbaa !28, !alias.scope !1547
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, i8 0, i64 16, i1 false), !alias.scope !1547
  store i32 16777216, ptr %9, align 8, !alias.scope !1547
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bb, ptr noundef nonnull align 8 dereferenceable(1065) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr null, ptr %i.bf, align 8, !tbaa !592, !alias.scope !1548
  %i.bg = select i1 %2, i32 0, i32 67108864
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 263, ptr %i.bh, align 4, !tbaa !28, !alias.scope !1548
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i8 0, i64 16, i1 false), !alias.scope !1548
  store i32 %i.bg, ptr %8, align 8, !alias.scope !1548
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bb, ptr noundef nonnull align 8 dereferenceable(1065) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull %i.bb) #19
  %.0.copyload.i.i.i.i.i.i.i.i.i56 = load i64, ptr %4, align 8
  %i.bj = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i56, -8 ; 2 uses
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %4, ptr %i.bl, align 8, !tbaa !356
  %.0.copyload.i.i.i.i9.i.i.i.i.i57 = load i64, ptr %i.bb, align 8
  %i.bm = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i57, 7
  %i.bn = or disjoint i64 %i.bm, %i.bj
  store i64 %i.bn, ptr %i.bb, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %i.bb, ptr %i.bo, align 8, !tbaa !356
  %.0.copyload.i.i.i.i10.i.i.i.i.i58 = load i64, ptr %4, align 8
  %i.bp = ptrtoint ptr %i.bb to i64
  %i.bq = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i58, 7
  %i.br = or disjoint i64 %i.bq, %i.bp
  store i64 %i.br, ptr %4, align 8
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm7BuildMIERNS_15MachineFunctionERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit55, %bb.a
  br i1 %2, label %_ZN4llvm7BuildMIERNS_15MachineFunctionERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit65, label %bb.c

_ZN4llvm7BuildMIERNS_15MachineFunctionERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit65: ; preds = %bb.b
  %i.bs = load ptr, ptr %i.i, align 8, !tbaa !568
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 -50112
  %i.bu = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.bt, ptr null, i1 noundef zeroext false) #19 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.bv, align 8, !tbaa !592, !alias.scope !1549
  %i.bw = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 24, ptr %i.bw, align 4, !tbaa !28, !alias.scope !1549
  %i.bx = getelementptr inbounds nuw i8, ptr %7, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bx, i8 0, i64 16, i1 false), !alias.scope !1549
  store i32 16777216, ptr %7, align 8, !alias.scope !1549
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bu, ptr noundef nonnull align 8 dereferenceable(1065) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr null, ptr %i.by, align 8, !tbaa !592, !alias.scope !1550
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 263, ptr %i.bz, align 4, !tbaa !28, !alias.scope !1550
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ca, i8 0, i64 16, i1 false), !alias.scope !1550
  store i32 67108864, ptr %6, align 8, !alias.scope !1550
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.bu, ptr noundef nonnull align 8 dereferenceable(1065) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull %i.bu) #19
  %.0.copyload.i.i.i.i.i.i.i.i.i66 = load i64, ptr %4, align 8
  %i.cb = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i66, -8 ; 2 uses
  %i.cc = inttoptr i64 %i.cb to ptr
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store ptr %4, ptr %i.cd, align 8, !tbaa !356
  %.0.copyload.i.i.i.i9.i.i.i.i.i67 = load i64, ptr %i.bu, align 8
  %i.ce = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i67, 7
  %i.cf = or disjoint i64 %i.ce, %i.cb
  store i64 %i.cf, ptr %i.bu, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store ptr %i.bu, ptr %i.cg, align 8, !tbaa !356
  %.0.copyload.i.i.i.i10.i.i.i.i.i68 = load i64, ptr %4, align 8
  %i.ch = ptrtoint ptr %i.bu to i64
  %i.ci = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i68, 7
  %i.cj = or disjoint i64 %i.ci, %i.ch
  store i64 %i.cj, ptr %4, align 8
  br label %bb.c

bb.c:                                             ; preds = %_ZN4llvm7BuildMIERNS_15MachineFunctionERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE.exit65, %bb.b
  ret void
}

declare void @_ZNK4llvm12PPCInstrInfo25loadRegFromStackSlotNoUpdERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEjiPKNS_15MCRegisterClassE(ptr noundef nonnull align 8 dereferenceable(1080), ptr noundef nonnull align 8 dereferenceable(360), ptr, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i64 @_ZNK4llvm16PPCFrameLowering16getTOCSaveOffsetEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !47
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm16PPCFrameLowering20enableShrinkWrappingERKNS_15MachineFunctionE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1065) %1) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !320
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 30
  %i.d = load i8, ptr %i.c, align 2, !tbaa !1551, !range !21, !noundef !22
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !652, !nonnull !22, !align !183 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 52
  %i.i = load i32, ptr %i.h, align 4, !tbaa !41
  %i.j = icmp eq i32 %i.i, 19
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 538
  %i.l = load i8, ptr %i.k, align 2, !range !21
  %i.m = trunc nuw i8 %i.l to i1
  %.not3 = select i1 %i.j, i1 true, i1 %i.m
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %.not3, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef range(i64 4294967295, -9223372036854775808) i64 @_ZNK4llvm16PPCFrameLowering17getStackThresholdEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49, !nonnull !22, !align !183
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 538
  %i.d = load i8, ptr %i.c, align 2, !tbaa !181, !range !21, !noundef !22
  %i.e = trunc nuw i8 %i.d to i1
  %spec.select = select i1 %i.e, i64 9223372036854775807, i64 4294967295
  ret i64 %spec.select
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm16PPCFrameLoweringD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 392) (i8, ptr @_ZTVN4llvm16PPCFrameLoweringE, i64 16), ptr %0, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.b = load i32, ptr %i.a, align 4, !tbaa !649  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8DenseMapIjSt4pairINS_8RegisterES2_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !653
  %i.f = zext i32 %i.b to i64                     ; 2 uses
  %i.g = mul nuw nsw i64 %i.f, 12
  %i.h = add nuw nsw i64 %i.f, 31
  %i.i = lshr i64 %i.h, 3
  %i.j = and i64 %i.i, 1073741820
  %i.k = add nuw nsw i64 %i.j, %i.g
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.e, i64 noundef %i.k, i64 noundef 4) #19
  br label %_ZN4llvm8DenseMapIjSt4pairINS_8RegisterES2_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEED2Ev.exit

_ZN4llvm8DenseMapIjSt4pairINS_8RegisterES2_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN4llvm19TargetFrameLoweringD2Ev(ptr noundef nonnull align 8 dead_on_return(21) dereferenceable(21) %0) #19
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm16PPCFrameLoweringD0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 392) (i8, ptr @_ZTVN4llvm16PPCFrameLoweringE, i64 16), ptr %0, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.b = load i32, ptr %i.a, align 4, !tbaa !649  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm16PPCFrameLoweringD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !653
  %i.f = zext i32 %i.b to i64                     ; 2 uses
  %i.g = mul nuw nsw i64 %i.f, 12
  %i.h = add nuw nsw i64 %i.f, 31
  %i.i = lshr i64 %i.h, 3
  %i.j = and i64 %i.i, 1073741820
  %i.k = add nuw nsw i64 %i.j, %i.g
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.e, i64 noundef %i.k, i64 noundef 4) #19, !inline_history !1552
  br label %_ZN4llvm16PPCFrameLoweringD2Ev.exit

_ZN4llvm16PPCFrameLoweringD2Ev.exit:              ; preds = %bb.a, %bb.b
  tail call void @_ZN4llvm19TargetFrameLoweringD2Ev(ptr noundef nonnull align 8 dead_on_return(21) dereferenceable(104) %0) #19, !inline_history !1552
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm19TargetFrameLowering25isStackIdSafeForLocalAreaEj(ptr noundef nonnull align 8 dereferenceable(21) %0, i32 noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 true
}

declare noundef zeroext i1 @_ZNK4llvm19TargetFrameLowering44allocateScavengingFrameIndexesNearIncomingSPERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(21), ptr noundef nonnull align 8 dereferenceable(1065)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm16PPCFrameLowering31targetHandlesStackFrameRoundingEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm19TargetFrameLowering25enableStackSlotScavengingERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(21) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 false
}

declare noundef zeroext i1 @_ZNK4llvm19TargetFrameLowering20enableCalleeSaveSkipERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(21), ptr noundef nonnull align 8 dereferenceable(1065)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm19TargetFrameLowering20emitZeroCallUsedRegsENS_9BitVectorERNS_17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(21) %0, ptr nofree noundef align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(360) %2) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm19TargetFrameLowering32emitCalleeSavedFrameMovesFullCFAERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE(ptr noundef nonnull align 8 dereferenceable(21) %0, ptr noundef nonnull align 8 dereferenceable(360) %1, ptr %2) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

declare noundef zeroext i1 @_ZNK4llvm19TargetFrameLowering14enableCFIFixupERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(21), ptr noundef nonnull align 8 dereferenceable(1065)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm19TargetFrameLowering18enableFullCFIFixupERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(21) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(21) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1) #19
  ret i1 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm19TargetFrameLowering22resetCFIToInitialStateERNS_17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(21) %0, ptr noundef nonnull align 8 dereferenceable(360) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm19TargetFrameLowering28stackProbeFunctionModifiesSPEv(ptr noundef nonnull align 8 dereferenceable(21) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm19TargetFrameLowering24adjustForSegmentedStacksERNS_15MachineFunctionERNS_17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(21) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1, ptr noundef nonnull align 8 dereferenceable(360) %2) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm19TargetFrameLowering21adjustForHiPEPrologueERNS_15MachineFunctionERNS_17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(21) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1, ptr noundef nonnull align 8 dereferenceable(360) %2) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm19TargetFrameLowering20hasReservedCallFrameERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(21) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !321, !nonnull !22, !align !183
  %i.b = tail call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %i.a, i32 noundef 21) #19
  br i1 %i.b, label %_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 384
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(21) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1) #19, !inline_history !3
  %i.g = xor i1 %i.f, true
  br label %_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit

_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i1 [ true, %bb.a ], [ %i.g, %bb.b ]
  ret i1 %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm19TargetFrameLowering27canSimplifyCallFramePseudosERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(21) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(21) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1) #19
  br i1 %i.d, label %_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !321, !nonnull !22, !align !183
  %i.f = tail call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %i.e, i32 noundef 21) #19
  br i1 %i.f, label %_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 384
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(21) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1) #19, !inline_history !3
  br label %_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit

_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit: ; preds = %bb.c, %bb.b, %bb.a
  %i.k = phi i1 [ true, %bb.a ], [ false, %bb.b ], [ %i.j, %bb.c ]
  ret i1 %i.k
}

declare noundef zeroext i1 @_ZNK4llvm19TargetFrameLowering25needsFrameIndexResolutionERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(21), ptr noundef nonnull align 8 dereferenceable(1065)) unnamed_addr #5

declare { i64, i64 } @_ZNK4llvm19TargetFrameLowering22getFrameIndexReferenceERKNS_15MachineFunctionEiRNS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(21), ptr noundef nonnull align 8 dereferenceable(1065), i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { i64, i64 } @_ZNK4llvm19TargetFrameLowering30getFrameIndexReferencePreferSPERKNS_15MachineFunctionEiRNS_8RegisterEb(ptr noundef nonnull align 8 dereferenceable(21) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3, i1 noundef zeroext %4) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call { i64, i64 } %i.c(ptr noundef nonnull align 8 dereferenceable(21) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) #19
  ret { i64, i64 } %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { i64, i64 } @_ZNK4llvm19TargetFrameLowering30getNonLocalFrameIndexReferenceERKNS_15MachineFunctionEi(ptr noundef nonnull align 8 dereferenceable(21) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1, i32 noundef %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %3 = alloca %"class.llvm::Register", align 4    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store i32 0, ptr %3, align 4, !tbaa !429
  %i.a = load ptr, ptr %0, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = call { i64, i64 } %i.c(ptr noundef nonnull align 8 dereferenceable(21) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret { i64, i64 } %i.d
}

declare { i64, i64 } @_ZNK4llvm19TargetFrameLowering28getFrameIndexReferenceFromSPERKNS_15MachineFunctionEi(ptr noundef nonnull align 8 dereferenceable(21), ptr noundef nonnull align 8 dereferenceable(1065), i32 noundef) unnamed_addr #5

declare void @_ZNK4llvm19TargetFrameLowering14getCalleeSavesERKNS_15MachineFunctionERNS_9BitVectorE(ptr noundef nonnull align 8 dereferenceable(21), ptr noundef nonnull align 8 dereferenceable(1065), ptr noundef nonnull align 8 dereferenceable(68)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm19TargetFrameLowering41processFunctionBeforeFrameIndicesReplacedERNS_15MachineFunctionEPNS_12RegScavengerE(ptr noundef nonnull align 8 dereferenceable(21) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1, ptr noundef %2) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK4llvm19TargetFrameLowering25getWinEHParentFrameOffsetERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(21) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZN4llvm21reportFatalUsageErrorEPKc(ptr noundef nonnull @.str.3) #21
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm19TargetFrameLowering17orderFrameObjectsERKNS_15MachineFunctionERNS_15SmallVectorImplIiEE(ptr noundef nonnull align 8 dereferenceable(21) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK4llvm19TargetFrameLowering28getStackIDForScalableVectorsEv(ptr noundef nonnull align 8 dereferenceable(21) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm19TargetFrameLowering18isSupportedStackIDENS_13TargetStackID5ValueE(ptr noundef nonnull align 8 dereferenceable(21) %0, i32 noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %switch.selectcmp.case1 = icmp eq i32 %1, 0
  %switch.selectcmp.case2 = icmp eq i32 %1, 255
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  ret i1 %switch.selectcmp
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm19TargetFrameLowering23isProfitableForNoCSROptERKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(21) %0, ptr noundef nonnull align 8 dereferenceable(140) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 true
}

declare noundef i32 @_ZNK4llvm19TargetFrameLowering19getInitialCFAOffsetERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(21), ptr noundef nonnull align 8 dereferenceable(1065)) unnamed_addr #5

declare i32 @_ZNK4llvm19TargetFrameLowering21getInitialCFARegisterERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(21), ptr noundef nonnull align 8 dereferenceable(1065)) unnamed_addr #5

declare { i32, i64 } @_ZNK4llvm19TargetFrameLowering17getDwarfFrameBaseERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(21), ptr noundef nonnull align 8 dereferenceable(1065)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm19TargetFrameLowering9spillFPBPERNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(21) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1) unnamed_addr #3 comdat align 2 {
end_hunk_1
begin_hunk_2_@_ZSt20__throw_length_errorPKc
; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 %1) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !370
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 4) #19
  %i.f = load ptr, ptr %0, align 8, !tbaa !24
  %i.g = load i32, ptr %i.a, align 8, !tbaa !370
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.h
  store i32 %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !370
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !370
  ret void
}

declare void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #5

declare void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE10deleteNodeEPS1_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #5

declare void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE18removeNodeFromListEPS1_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN4llvm19TargetFrameLoweringD2Ev(ptr noundef nonnull align 8 dead_on_return(21) dereferenceable(21)) unnamed_addr #16

declare void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZN4llvm21reportFatalUsageErrorEPKc(ptr noundef) local_unnamed_addr #14

declare void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120), i32 noundef, i32 noundef) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm2cl15OptionValueCopyIbE7compareERKNS0_18GenericOptionValueE(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.b = load i8, ptr %i.a, align 1, !tbaa !654, !range !21, !noundef !22
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.f = load i8, ptr %i.e, align 1, !tbaa !654, !range !21, !noundef !22
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i8, ptr %i.h, align 8, !range !21
  %i.j = load i8, ptr %i.d, align 8, !range !21
  %i.k = icmp eq i8 %i.i, %i.j
  %i.l = select i1 %i.g, i1 %i.k, i1 false
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.l, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

declare void @_ZN4llvm2cl18GenericOptionValue6anchorEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

declare void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(120), ptr, i64) local_unnamed_addr #5

declare void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #5

declare noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseINS_15CalleeSavedInfoELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1, i32 %2) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !370
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 12) #19
  %i.f = load ptr, ptr %0, align 8, !tbaa !24
  %i.g = load i32, ptr %i.a, align 8, !tbaa !370
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %i.h ; 2 uses
  store i64 %1, ptr %i.i, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 %2, ptr %.sroa.4.0..sroa_idx, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !370
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !370
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt4pairINS_8RegisterES3_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E16shrink_and_clearEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !648  ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZNK4llvm8DenseMapIjSt4pairINS_8RegisterES2_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEE18planShrinkAndClearEv.exit.thread, label %_ZNK4llvm8DenseMapIjSt4pairINS_8RegisterES2_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEE18planShrinkAndClearEv.exit

_ZNK4llvm8DenseMapIjSt4pairINS_8RegisterES2_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEE18planShrinkAndClearEv.exit: ; preds = %bb.a
  %i.c = add i32 %i.b, -1
  %i.d = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.c, i1 false)
  %i.e = sub nuw nsw i32 33, %i.d
  %i.f = shl nuw i32 1, %i.e
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.f, i32 64) ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !649  ; 3 uses
  %.not = icmp eq i32 %.sroa.speculated.i, %i.h
  br i1 %.not, label %bb.b, label %bb.c

_ZNK4llvm8DenseMapIjSt4pairINS_8RegisterES2_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEE18planShrinkAndClearEv.exit.thread: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !649  ; 2 uses
  %.not8 = icmp eq i32 %i.j, 0
  br i1 %.not8, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt4pairINS_8RegisterES3_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E9initEmptyEv.exit, label %.thread16

bb.b:                                             ; preds = %_ZNK4llvm8DenseMapIjSt4pairINS_8RegisterES2_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEE18planShrinkAndClearEv.exit
  store i32 0, ptr %i.a, align 8, !tbaa !648
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !650
  %i.m = zext i32 %.sroa.speculated.i to i64
  %i.n = add nuw nsw i64 %i.m, 31
  %i.o = lshr i64 %i.n, 3
  %i.p = and i64 %i.o, 1073741820
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.l, i8 0, i64 %i.p, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt4pairINS_8RegisterES3_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E9initEmptyEv.exit

bb.c:                                             ; preds = %_ZNK4llvm8DenseMapIjSt4pairINS_8RegisterES2_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEE18planShrinkAndClearEv.exit
  %.sroa.39.0.insert.ext.i = zext i32 %.sroa.speculated.i to i64 ; 2 uses
  %i.q = icmp eq i32 %i.h, 0
  br i1 %i.q, label %_ZN4llvm8DenseMapIjSt4pairINS_8RegisterES2_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEE17deallocateBucketsEv.exit, label %.thread16

.thread16:                                        ; preds = %_ZNK4llvm8DenseMapIjSt4pairINS_8RegisterES2_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEE18planShrinkAndClearEv.exit.thread, %bb.c
  %i.r = phi ptr [ %i.g, %bb.c ], [ %i.i, %_ZNK4llvm8DenseMapIjSt4pairINS_8RegisterES2_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEE18planShrinkAndClearEv.exit.thread ] ; 2 uses
  %i.s = phi i32 [ %i.h, %bb.c ], [ %i.j, %_ZNK4llvm8DenseMapIjSt4pairINS_8RegisterES2_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEE18planShrinkAndClearEv.exit.thread ]
  %spec.select10.i1221 = phi i32 [ %.sroa.speculated.i, %bb.c ], [ 0, %_ZNK4llvm8DenseMapIjSt4pairINS_8RegisterES2_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEE18planShrinkAndClearEv.exit.thread ]
  %.sroa.39.0.insert.ext.i1319 = phi i64 [ %.sroa.39.0.insert.ext.i, %bb.c ], [ 0, %_ZNK4llvm8DenseMapIjSt4pairINS_8RegisterES2_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEE18planShrinkAndClearEv.exit.thread ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !653
  %i.u = zext i32 %i.s to i64                     ; 2 uses
  %i.v = mul nuw nsw i64 %i.u, 12
  %i.w = add nuw nsw i64 %i.u, 31
  %i.x = lshr i64 %i.w, 3
  %i.y = and i64 %i.x, 1073741820
  %i.z = add nuw nsw i64 %i.y, %i.v
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.t, i64 noundef %i.z, i64 noundef 4) #19
  store i32 0, ptr %i.r, align 4, !tbaa !649
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIjSt4pairINS_8RegisterES2_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapIjSt4pairINS_8RegisterES2_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEE17deallocateBucketsEv.exit: ; preds = %bb.c, %.thread16
  %i.aa = phi ptr [ %i.g, %bb.c ], [ %i.r, %.thread16 ] ; 2 uses
  %spec.select10.i1222 = phi i32 [ %.sroa.speculated.i, %bb.c ], [ %spec.select10.i1221, %.thread16 ] ; 2 uses
  %.sroa.39.0.insert.ext.i1320 = phi i64 [ %.sroa.39.0.insert.ext.i, %bb.c ], [ %.sroa.39.0.insert.ext.i1319, %.thread16 ] ; 2 uses
  store i32 %spec.select10.i1222, ptr %i.aa, align 4, !tbaa !649
  %.not.i4 = icmp eq i32 %spec.select10.i1222, 0
  br i1 %.not.i4, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8DenseMapIjSt4pairINS_8RegisterES2_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEE17deallocateBucketsEv.exit
  %i.ab = mul nuw nsw i64 %.sroa.39.0.insert.ext.i1320, 12
  %i.ac = add nuw nsw i64 %.sroa.39.0.insert.ext.i1320, 31
  %i.ad = lshr i64 %i.ac, 3
  %i.ae = and i64 %i.ad, 1073741820
  %i.af = add nuw nsw i64 %i.ae, %i.ab
  %i.ag = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.af, i64 noundef 4) #19 ; 2 uses
  %i.ah = load i32, ptr %i.aa, align 4, !tbaa !649 ; 2 uses
  %i.ai = zext i32 %i.ah to i64                   ; 2 uses
  %i.aj = mul nuw nsw i64 %i.ai, 12
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.aj ; 2 uses
  store ptr %i.ag, ptr %0, align 8, !tbaa !653
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !650
  store i32 0, ptr %i.a, align 8, !tbaa !648
  %.not.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt4pairINS_8RegisterES3_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E9initEmptyEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.am = add nuw nsw i64 %i.ai, 31
  %i.an = lshr i64 %i.am, 3
  %i.ao = and i64 %i.an, 1073741820
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ak, i8 0, i64 %i.ao, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt4pairINS_8RegisterES3_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E9initEmptyEv.exit

bb.f:                                             ; preds = %_ZN4llvm8DenseMapIjSt4pairINS_8RegisterES2_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEE17deallocateBucketsEv.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt4pairINS_8RegisterES3_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E9initEmptyEv.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt4pairINS_8RegisterES3_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E9initEmptyEv.exit: ; preds = %_ZNK4llvm8DenseMapIjSt4pairINS_8RegisterES2_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEE18planShrinkAndClearEv.exit.thread, %bb.f, %bb.e, %bb.d, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt4pairINS_8RegisterES3_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E24lookupOrInsertIntoBucketIjJEEES2_IPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !653, !noalias !1557 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !650, !noalias !1557 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !649, !noalias !1557 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load i32, ptr %1, align 4, !tbaa !186    ; 2 uses
  %i.j = mul i32 %i.i, 37
  %.024.i = and i32 %i.j, %i.h                    ; 3 uses
  %i.k = zext i32 %.024.i to i64                  ; 2 uses
  %i.l = getelementptr inbounds nuw [12 x i8], ptr %i.b, i64 %i.k ; 2 uses
  %i.m = lshr i64 %i.k, 5
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !186
  %i.p = and i32 %.024.i, 31
  %i.q = lshr i32 %i.o, %i.p
  %i.r = trunc i32 %i.q to i1
  br i1 %i.r, label %.lr.ph.i, label %.loopexit, !prof !636

bb.c:                                             ; preds = %.lr.ph.i
  %i.s = add nuw i32 %.025.i, 1
  %.0.i = and i32 %i.s, %i.h                      ; 3 uses
  %i.t = zext i32 %.0.i to i64                    ; 2 uses
  %i.u = getelementptr inbounds nuw [12 x i8], ptr %i.b, i64 %i.t ; 2 uses
  %i.v = lshr i64 %i.t, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !186
  %i.y = and i32 %.0.i, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph.i, label %.loopexit, !prof !638, !llvm.loop !6

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.ab = phi ptr [ %i.u, %bb.c ], [ %i.l, %bb.b ] ; 2 uses
  %.025.i = phi i32 [ %.0.i, %bb.c ], [ %.024.i, %bb.b ]
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !186
  %i.ad = icmp eq i32 %i.i, %i.ac
  br i1 %i.ad, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt4pairINS_8RegisterES3_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E15LookupBucketForIjEEbRKT_RPS9_.exit, label %bb.c, !prof !637

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa30.sink.i.ph = phi ptr [ %i.l, %bb.b ], [ null, %bb.a ], [ %i.u, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa30.sink.i.ph, ptr %i.a, align 8, !tbaa !655
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !648
  %i.ag = shl i32 %i.af, 2
  %i.ah = add i32 %i.ag, 4
  %i.ai = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.ah, %i.ai
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt4pairINS_8RegisterES3_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E22findBucketForInsertionIjEEPS9_RKT_SD_.exit, label %bb.d, !prof !637

bb.d:                                             ; preds = %.loopexit
  %i.aj = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt4pairINS_8RegisterES3_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.aj)
  %i.ak = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt4pairINS_8RegisterES3_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E15LookupBucketForIjEEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !655
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !650
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !653
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt4pairINS_8RegisterES3_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E22findBucketForInsertionIjEEPS9_RKT_SD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt4pairINS_8RegisterES3_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E22findBucketForInsertionIjEEPS9_RKT_SD_.exit: ; preds = %.loopexit, %bb.d
  %i.al = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.am = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.an = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa30.sink.i.ph, %.loopexit ] ; 5 uses
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = sdiv exact i64 %i.aq, 12                ; 2 uses
  %i.as = trunc i64 %i.ar to i32
  %i.at = and i32 %i.as, 31
  %i.au = shl nuw i32 1, %i.at
  %i.av = lshr i64 %i.ar, 5
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.av ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !186
  %i.ay = or i32 %i.au, %i.ax
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !186
  %i.az = load i32, ptr %i.ae, align 8, !tbaa !648
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr %i.ae, align 8, !tbaa !648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bb = load i32, ptr %1, align 4, !tbaa !186
  store i32 %i.bb, ptr %i.an, align 4, !tbaa !186
  %i.bc = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  store i32 0, ptr %i.bc, align 4, !tbaa !429
  %i.bd = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i32 0, ptr %i.bd, align 4, !tbaa !429
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt4pairINS_8RegisterES3_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E15LookupBucketForIjEEbRKT_RPS9_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt4pairINS_8RegisterES3_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E15LookupBucketForIjEEbRKT_RPS9_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt4pairINS_8RegisterES3_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E22findBucketForInsertionIjEEPS9_RKT_SD_.exit
  %.sroa.0.0 = phi ptr [ %i.an, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt4pairINS_8RegisterES3_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E22findBucketForInsertionIjEEPS9_RKT_SD_.exit ], [ %i.ab, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt4pairINS_8RegisterES3_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E22findBucketForInsertionIjEEPS9_RKT_SD_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt4pairINS_8RegisterES3_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E15LookupBucketForIjEEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !653, !noalias !1562 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !650, !noalias !1562 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !649, !noalias !1562 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load i32, ptr %1, align 4, !tbaa !186    ; 2 uses
  %i.i = mul i32 %i.h, 37
  %.024 = and i32 %i.i, %i.g                      ; 3 uses
  %i.j = zext i32 %.024 to i64                    ; 2 uses
  %i.k = getelementptr inbounds nuw [12 x i8], ptr %i.a, i64 %i.j ; 2 uses
  %i.l = lshr i64 %i.j, 5
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !186
  %i.o = and i32 %.024, 31
  %i.p = lshr i32 %i.n, %i.o
  %i.q = trunc i32 %i.p to i1
  br i1 %i.q, label %.lr.ph, label %.thread, !prof !636

bb.c:                                             ; preds = %.lr.ph
  %i.r = add nuw i32 %.025, 1
  %.0 = and i32 %i.r, %i.g                        ; 3 uses
  %i.s = zext i32 %.0 to i64                      ; 2 uses
  %i.t = getelementptr inbounds nuw [12 x i8], ptr %i.a, i64 %i.s ; 2 uses
  %i.u = lshr i64 %i.s, 5
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !186
  %i.x = and i32 %.0, 31
  %i.y = lshr i32 %i.w, %i.x
  %i.z = trunc i32 %i.y to i1
  br i1 %i.z, label %.lr.ph, label %.thread, !prof !638, !llvm.loop !6

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.aa = phi ptr [ %i.t, %bb.c ], [ %i.k, %bb.b ] ; 2 uses
  %.025 = phi i32 [ %.0, %bb.c ], [ %.024, %bb.b ]
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !186
  %i.ac = icmp eq i32 %i.h, %i.ab                 ; 3 uses
  br i1 %i.ac, label %.thread, label %bb.c, !prof !637

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ], [ %i.t, %bb.c ], [ %i.aa, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !655
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt4pairINS_8RegisterES3_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap", align 16   ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !649
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 12                 ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 4) #19 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !653
  store ptr %i.y, ptr %i.q, align 8, !tbaa !650
  store i32 0, ptr %i.p, align 16, !tbaa !648
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt4pairINS_8RegisterES3_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !615
  %i.aa = load ptr, ptr %0, align 8, !tbaa !655
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !615
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !615
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !615
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !186 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !186
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !186
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !186
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !186
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIjSt4pairINS_8RegisterES2_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = mul nuw nsw i64 %i.ai, 12
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 4) #19
  br label %_ZN4llvm8DenseMapIjSt4pairINS_8RegisterES2_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEED2Ev.exit

_ZN4llvm8DenseMapIjSt4pairINS_8RegisterES2_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt4pairINS_8RegisterES3_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !653
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !650
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !649  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !650  ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !653
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !649
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i19 = icmp eq i64 %i.n, 0
  br i1 %.not.i19, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjSt4pairINS_8RegisterES6_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !186  ; 2 uses
  %.not11.i17 = icmp eq i32 %i.p, 0
  br i1 %.not11.i17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph22
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt4pairINS_8RegisterES3_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i18 = phi i32 [ %i.p, %.lr.ph ], [ %i.ao, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt4pairINS_8RegisterES3_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [12 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !186  ; 2 uses
  %i.w = mul i32 %i.v, 37
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.w, %bb.b ], [ %i.ae, %bb.c ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.x = zext i32 %.0.i7 to i64                   ; 2 uses
  %i.y = lshr i64 %i.x, 5                         ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !186
  %i.ab = and i32 %.0.i7, 31                      ; 2 uses
  %i.ac = lshr i32 %i.aa, %i.ab
  %i.ad = trunc i32 %i.ac to i1
  %i.ae = add i32 %.0.i7, 1
  br i1 %i.ad, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt4pairINS_8RegisterES3_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !1563

_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt4pairINS_8RegisterES3_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %bb.c
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y ; 2 uses
  %i.ag = getelementptr inbounds nuw [12 x i8], ptr %i.h, i64 %i.x ; 2 uses
  store i32 %i.v, ptr %i.ag, align 4, !tbaa !186
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.aj = load i64, ptr %i.ai, align 4
  store i64 %i.aj, ptr %i.ah, align 4
  %i.ak = shl nuw i32 1, %i.ab
  %i.al = load i32, ptr %i.af, align 4, !tbaa !186
  %i.am = or i32 %i.al, %i.ak
  store i32 %i.am, ptr %i.af, align 4, !tbaa !186
  %i.an = add i32 %.0.i18, -1
  %i.ao = and i32 %i.an, %.0.i18                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ao, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1564

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt4pairINS_8RegisterES3_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit, %.lr.ph22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjSt4pairINS_8RegisterES6_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph22, !llvm.loop !1565

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjSt4pairINS_8RegisterES6_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !649
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjSt4pairINS_8RegisterES6_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjSt4pairINS_8RegisterES6_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjSt4pairINS_8RegisterES6_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ap = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjSt4pairINS_8RegisterES6_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !648
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ar, ptr %i.as, align 8, !tbaa !648
  %i.at = icmp eq i32 %i.ap, 0
  br i1 %i.at, label %_ZN4llvm8DenseMapIjSt4pairINS_8RegisterES2_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjSt4pairINS_8RegisterES6_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.au = load ptr, ptr %1, align 8, !tbaa !653
  %i.av = zext i32 %i.ap to i64                   ; 2 uses
  %i.aw = mul nuw nsw i64 %i.av, 12
  %i.ax = add nuw nsw i64 %i.av, 31
  %i.ay = lshr i64 %i.ax, 3
  %i.az = and i64 %i.ay, 1073741820
  %i.ba = add nuw nsw i64 %i.az, %i.aw
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.au, i64 noundef %i.ba, i64 noundef 4) #19
  store i32 0, ptr %i.d, align 4, !tbaa !649
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIjSt4pairINS_8RegisterES2_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEE4killEv.exit

_ZN4llvm8DenseMapIjSt4pairINS_8RegisterES2_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjSt4pairINS_8RegisterES6_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.d
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt4pairINS_8RegisterES3_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E24lookupOrInsertIntoBucketIRKjJEEES2_IPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !653, !noalias !1570 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !650, !noalias !1570 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !649, !noalias !1570 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load i32, ptr %1, align 4, !tbaa !186    ; 2 uses
  %i.j = mul i32 %i.i, 37
  %.024.i = and i32 %i.j, %i.h                    ; 3 uses
  %i.k = zext i32 %.024.i to i64                  ; 2 uses
  %i.l = getelementptr inbounds nuw [12 x i8], ptr %i.b, i64 %i.k ; 2 uses
  %i.m = lshr i64 %i.k, 5
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !186
  %i.p = and i32 %.024.i, 31
  %i.q = lshr i32 %i.o, %i.p
  %i.r = trunc i32 %i.q to i1
  br i1 %i.r, label %.lr.ph.i, label %.loopexit, !prof !636

bb.c:                                             ; preds = %.lr.ph.i
  %i.s = add nuw i32 %.025.i, 1
  %.0.i = and i32 %i.s, %i.h                      ; 3 uses
  %i.t = zext i32 %.0.i to i64                    ; 2 uses
  %i.u = getelementptr inbounds nuw [12 x i8], ptr %i.b, i64 %i.t ; 2 uses
  %i.v = lshr i64 %i.t, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !186
  %i.y = and i32 %.0.i, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph.i, label %.loopexit, !prof !638, !llvm.loop !6

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.ab = phi ptr [ %i.u, %bb.c ], [ %i.l, %bb.b ] ; 2 uses
  %.025.i = phi i32 [ %.0.i, %bb.c ], [ %.024.i, %bb.b ]
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !186
  %i.ad = icmp eq i32 %i.i, %i.ac
  br i1 %i.ad, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt4pairINS_8RegisterES3_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E15LookupBucketForIjEEbRKT_RPS9_.exit, label %bb.c, !prof !637

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa30.sink.i.ph = phi ptr [ %i.l, %bb.b ], [ null, %bb.a ], [ %i.u, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa30.sink.i.ph, ptr %i.a, align 8, !tbaa !655
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !648
  %i.ag = shl i32 %i.af, 2
  %i.ah = add i32 %i.ag, 4
  %i.ai = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.ah, %i.ai
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt4pairINS_8RegisterES3_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E22findBucketForInsertionIjEEPS9_RKT_SD_.exit, label %bb.d, !prof !637

bb.d:                                             ; preds = %.loopexit
  %i.aj = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt4pairINS_8RegisterES3_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.aj)
  %i.ak = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt4pairINS_8RegisterES3_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E15LookupBucketForIjEEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !655
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !650
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !653
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt4pairINS_8RegisterES3_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E22findBucketForInsertionIjEEPS9_RKT_SD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt4pairINS_8RegisterES3_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E22findBucketForInsertionIjEEPS9_RKT_SD_.exit: ; preds = %.loopexit, %bb.d
  %i.al = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.am = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.an = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa30.sink.i.ph, %.loopexit ] ; 5 uses
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = sdiv exact i64 %i.aq, 12                ; 2 uses
  %i.as = trunc i64 %i.ar to i32
  %i.at = and i32 %i.as, 31
  %i.au = shl nuw i32 1, %i.at
  %i.av = lshr i64 %i.ar, 5
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.av ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !186
  %i.ay = or i32 %i.au, %i.ax
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !186
  %i.az = load i32, ptr %i.ae, align 8, !tbaa !648
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr %i.ae, align 8, !tbaa !648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bb = load i32, ptr %1, align 4, !tbaa !186
  store i32 %i.bb, ptr %i.an, align 4, !tbaa !186
  %i.bc = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  store i32 0, ptr %i.bc, align 4, !tbaa !429
  %i.bd = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i32 0, ptr %i.bd, align 4, !tbaa !429
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt4pairINS_8RegisterES3_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E15LookupBucketForIjEEbRKT_RPS9_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt4pairINS_8RegisterES3_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E15LookupBucketForIjEEbRKT_RPS9_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt4pairINS_8RegisterES3_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E22findBucketForInsertionIjEEPS9_RKT_SD_.exit
  %.sroa.0.0 = phi ptr [ %i.an, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt4pairINS_8RegisterES3_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E22findBucketForInsertionIjEEPS9_RKT_SD_.exit ], [ %i.ab, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt4pairINS_8RegisterES3_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E22findBucketForInsertionIjEEPS9_RKT_SD_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal void @_GLOBAL__sub_I_PPCFrameLowering.cpp() #17 section ".text.startup" {
bb.a:
  tail call void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120) @_ZL20EnablePEVectorSpills, i32 noundef 0, i32 noundef 0) #19
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL20EnablePEVectorSpills, i64 120), align 8, !tbaa !646
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL20EnablePEVectorSpills, i64 136), align 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm2cl11OptionValueIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL20EnablePEVectorSpills, i64 128), align 8, !tbaa !16
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr @_ZL20EnablePEVectorSpills, align 8, !tbaa !16
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm2cl6parserIbEE, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL20EnablePEVectorSpills, i64 144), align 8, !tbaa !16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZL20EnablePEVectorSpills, i64 152), i8 0, i64 32, i1 false)
  tail call void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(184) @_ZL20EnablePEVectorSpills, ptr nonnull align 1 dereferenceable(28) @.str, i64 27) #19
  store ptr @.str.1, ptr getelementptr inbounds nuw (i8, ptr @_ZL20EnablePEVectorSpills, i64 32), align 8, !tbaa !607
  store i64 46, ptr getelementptr inbounds nuw (i8, ptr @_ZL20EnablePEVectorSpills, i64 40), align 8, !tbaa !427
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL20EnablePEVectorSpills, i64 120), align 8, !tbaa !646
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL20EnablePEVectorSpills, i64 137), align 1, !tbaa !654
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL20EnablePEVectorSpills, i64 136), align 8, !tbaa !1571
  %i.a = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZL20EnablePEVectorSpills, i64 10), align 2
  %i.b = and i16 %i.a, -97
  %i.c = or disjoint i16 %i.b, 32
  store i16 %i.c, ptr getelementptr inbounds nuw (i8, ptr @_ZL20EnablePEVectorSpills, i64 10), align 2
  tail call void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(184) @_ZL20EnablePEVectorSpills) #19
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev, ptr nonnull @_ZL20EnablePEVectorSpills, ptr nonnull @__dso_handle) #19 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.ctpop.v2i64(<2 x i64>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v2i32(<2 x i32>) #11

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nounwind }
attributes #20 = { builtin nounwind }
attributes #21 = { noreturn nounwind }
attributes #22 = { builtin nounwind allocsize(0) }

!llvm.module.flags = !{!7, !8}
!llvm.ident = !{!9}
!llvm.errno.tbaa = !{!14}

!0 = distinct !{!0, !357}
!1 = distinct !{!1, !357}
!2 = distinct !{!2, !357, !428}
!3 = distinct !{null}
!4 = distinct !{!4, !357}
!5 = distinct !{!5, !357}
!6 = distinct !{!6, !357}
!7 = !{i32 8, !"PIC Level", i32 2}
!8 = !{i32 7, !"uwtable", i32 2}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!"omnipotent char", !10, i64 0}
!12 = !{!"int", !11, i64 0}
!13 = !{!"__libc_errno", !12, i64 0}
!14 = !{!13, !12, i64 0}
!15 = !{!"vtable pointer", !10, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"any pointer", !11, i64 0}
!18 = !{!"_ZTSSt14_Function_base", !11, i64 0, !17, i64 16}
!19 = !{!"any p2 pointer", !17, i64 0}
!20 = !{!"bool", !11, i64 0}
!21 = !{i8 0, i8 2}
!22 = !{}
!23 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !17, i64 0, !12, i64 8, !12, i64 12}
!24 = !{!23, !17, i64 0}
!25 = !{!"_ZTSN4llvm19TargetFrameLowering14StackDirectionE", !11, i64 0}
!26 = !{!"_ZTSN4llvm5AlignE", !11, i64 0}
!27 = !{!"_ZTSN4llvm19TargetFrameLoweringE", !25, i64 8, !26, i64 12, !26, i64 13, !12, i64 16, !20, i64 20}
!28 = !{!11, !11, i64 0}
!29 = !{!"p1 _ZTSN4llvm12PPCSubtargetE", !17, i64 0}
!30 = !{!"p1 omnipotent char", !17, i64 0}
!31 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !30, i64 0}
!32 = !{!"long", !11, i64 0}
!33 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !31, i64 0, !32, i64 8, !11, i64 16}
!34 = !{!"_ZTSN4llvm6Triple8ArchTypeE", !11, i64 0}
!35 = !{!"_ZTSN4llvm6Triple11SubArchTypeE", !11, i64 0}
!36 = !{!"_ZTSN4llvm6Triple10VendorTypeE", !11, i64 0}
!37 = !{!"_ZTSN4llvm6Triple6OSTypeE", !11, i64 0}
!38 = !{!"_ZTSN4llvm6Triple15EnvironmentTypeE", !11, i64 0}
!39 = !{!"_ZTSN4llvm6Triple16ObjectFormatTypeE", !11, i64 0}
!40 = !{!"_ZTSN4llvm6TripleE", !33, i64 0, !34, i64 32, !35, i64 36, !36, i64 40, !37, i64 44, !38, i64 48, !39, i64 52}
!41 = !{!40, !37, i64 44}
!42 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIjSt4pairINS_8RegisterES3_EEE", !17, i64 0}
!43 = !{!"p1 int", !17, i64 0}
!44 = !{!"_ZTSN4llvm8DenseMapIjSt4pairINS_8RegisterES2_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEE", !42, i64 0, !43, i64 8, !12, i64 16, !12, i64 20}
!45 = !{!"_ZTSN4llvm16PPCFrameLoweringE", !27, i64 0, !29, i64 24, !32, i64 32, !32, i64 40, !32, i64 48, !12, i64 56, !32, i64 64, !32, i64 72, !44, i64 80}
!46 = !{!45, !32, i64 32}
!47 = !{!45, !32, i64 40}
!48 = !{!45, !32, i64 48}
!49 = !{!45, !29, i64 24}
!50 = !{!"_ZTSN4llvm9StringRefE", !30, i64 0, !32, i64 8}
!51 = !{!"_ZTSN4llvm11StringTableE", !50, i64 0}
!52 = !{!"p1 _ZTSN4llvm18SubtargetFeatureKVE", !17, i64 0}
!53 = !{!"_ZTSN4llvm8ArrayRefINS_18SubtargetFeatureKVEEE", !52, i64 0, !32, i64 8}
!54 = !{!"p1 _ZTSN4llvm18SubtargetSubTypeKVE", !17, i64 0}
!55 = !{!"_ZTSN4llvm8ArrayRefINS_18SubtargetSubTypeKVEEE", !54, i64 0, !32, i64 8}
!56 = !{!"p1 _ZTSN4llvm12MCSchedModelE", !17, i64 0}
!57 = !{!"p1 _ZTSN4llvm19MCWriteProcResEntryE", !17, i64 0}
!58 = !{!"p1 _ZTSN4llvm19MCWriteLatencyEntryE", !17, i64 0}
!59 = !{!"p1 _ZTSN4llvm18MCReadAdvanceEntryE", !17, i64 0}
!60 = !{!"p1 _ZTSN4llvm10InstrStageE", !17, i64 0}
!61 = !{!"_ZTSSt5arrayImLm6EE", !11, i64 0}
!62 = !{!"_ZTSN4llvm13FeatureBitsetE", !61, i64 0}
!63 = !{!"_ZTSN4llvm15MCSubtargetInfoE", !40, i64 8, !33, i64 64, !33, i64 96, !51, i64 128, !53, i64 144, !55, i64 160, !56, i64 176, !57, i64 184, !58, i64 192, !59, i64 200, !56, i64 208, !60, i64 216, !43, i64 224, !43, i64 232, !62, i64 240, !33, i64 288}
!64 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIjbEE", !17, i64 0}
!65 = !{!"_ZTSN4llvm8DenseMapIjbNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjbEEEE", !64, i64 0, !43, i64 8, !12, i64 16, !12, i64 20}
!66 = !{!"_ZTSN4llvm19TargetSubtargetInfoE", !63, i64 0, !65, i64 320}
!67 = !{!"_ZTSN4llvm19PPCGenSubtargetInfoE", !66, i64 0}
!68 = !{!"p1 _ZTSN4llvm18MCProcResourceDescE", !17, i64 0}
!69 = !{!"p1 _ZTSN4llvm16MCSchedClassDescE", !17, i64 0}
!70 = !{!"p1 _ZTSN4llvm11StringTableE", !17, i64 0}
!71 = !{!"p1 _ZTSN4llvm14InstrItineraryE", !17, i64 0}
!72 = !{!"p1 _ZTSN4llvm20MCExtraProcessorInfoE", !17, i64 0}
!73 = !{!"_ZTSN4llvm12MCSchedModelE", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !20, i64 24, !20, i64 25, !20, i64 26, !12, i64 28, !68, i64 32, !69, i64 40, !12, i64 48, !12, i64 52, !70, i64 56, !71, i64 64, !72, i64 72}
!74 = !{!"_ZTSN4llvm18InstrItineraryDataE", !73, i64 0, !60, i64 80, !43, i64 88, !43, i64 96, !71, i64 104}
!75 = !{!"_ZTSN4llvm12PPCSubtarget11POPCNTDKindE", !11, i64 0}
!76 = !{!"p1 _ZTSN4llvm16PPCTargetMachineE", !17, i64 0}
!77 = !{!"p1 _ZTSN4llvm11MCInstrDescE", !17, i64 0}
!78 = !{!"p1 short", !17, i64 0}
!79 = !{!"short", !11, i64 0}
!80 = !{!"_ZTSN4llvm11MCInstrInfoE", !77, i64 0, !43, i64 8, !30, i64 16, !30, i64 24, !17, i64 32, !12, i64 40, !78, i64 48, !79, i64 56}
!81 = !{!"p1 _ZTSN4llvm18TargetRegisterInfoE", !17, i64 0}
!82 = !{!"p1 _ZTSN4llvm12MIRFormatterE", !17, i64 0}
!83 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm12MIRFormatterELb0EE", !82, i64 0}
!84 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvm12MIRFormatterESt14default_deleteIS1_EEE", !83, i64 0}
!85 = !{!"_ZTSSt5tupleIJPN4llvm12MIRFormatterESt14default_deleteIS1_EEE", !84, i64 0}
!86 = !{!"_ZTSSt15__uniq_ptr_implIN4llvm12MIRFormatterESt14default_deleteIS1_EE", !85, i64 0}
!87 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm12MIRFormatterESt14default_deleteIS1_ELb1ELb1EE", !86, i64 0}
!88 = !{!"_ZTSSt10unique_ptrIN4llvm12MIRFormatterESt14default_deleteIS1_EE", !87, i64 0}
!89 = !{!"_ZTSN4llvm15TargetInstrInfoE", !80, i64 8, !81, i64 72, !78, i64 80, !88, i64 88, !12, i64 96, !12, i64 100, !12, i64 104, !12, i64 108}
!90 = !{!"_ZTSN4llvm15PPCGenInstrInfoE", !89, i64 0}
!91 = !{!"p1 _ZTSN4llvm14MCRegisterDescE", !17, i64 0}
!92 = !{!"_ZTSN4llvm10MCRegisterE", !12, i64 0}
!93 = !{!"p1 _ZTSN4llvm15MCRegisterClassE", !17, i64 0}
!94 = !{!"p1 _ZTSN4llvm11LaneBitmaskE", !17, i64 0}
!95 = !{!"p1 _ZTSN4llvm14MCRegisterInfo16DwarfLLVMRegPairE", !17, i64 0}
!96 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairINS_10MCRegisterEiEE", !17, i64 0}
!97 = !{!"_ZTSN4llvm8DenseMapINS_10MCRegisterEiNS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_iEEEE", !96, i64 0, !43, i64 8, !12, i64 16, !12, i64 20}
!98 = !{!"p1 _ZTSSt6vectorItSaItEE", !17, i64 0}
!99 = !{!"_ZTSNSt12_Vector_baseISt6vectorItSaItEESaIS2_EE17_Vector_impl_dataE", !98, i64 0, !98, i64 8, !98, i64 16}
!100 = !{!"_ZTSNSt12_Vector_baseISt6vectorItSaItEESaIS2_EE12_Vector_implE", !99, i64 0}
!101 = !{!"_ZTSSt12_Vector_baseISt6vectorItSaItEESaIS2_EE", !100, i64 0}
!102 = !{!"_ZTSSt6vectorIS_ItSaItEESaIS1_EE", !101, i64 0}
!103 = !{!"_ZTSN4llvm14MCRegisterInfoE", !91, i64 8, !12, i64 16, !92, i64 20, !92, i64 24, !93, i64 32, !12, i64 40, !12, i64 44, !78, i64 48, !78, i64 56, !94, i64 64, !30, i64 72, !30, i64 80, !78, i64 88, !12, i64 96, !78, i64 104, !43, i64 112, !12, i64 120, !12, i64 124, !12, i64 128, !12, i64 132, !95, i64 136, !95, i64 144, !95, i64 152, !95, i64 160, !97, i64 168, !97, i64 192, !102, i64 216}
!104 = !{!"p1 _ZTSN4llvm22TargetRegisterInfoDescE", !17, i64 0}
!105 = !{!"_ZTSN4llvm8ArrayRefIjEE", !43, i64 0, !32, i64 8}
!106 = !{!"p1 _ZTSN4llvm18TargetRegisterInfo17SubRegCoveredBitsE", !17, i64 0}
!107 = !{!"_ZTSN4llvm11LaneBitmaskE", !32, i64 0}
!108 = !{!"p1 _ZTSN4llvm18TargetRegisterInfo12RegClassInfoE", !17, i64 0}
!109 = !{!"_ZTSN4llvm18TargetRegisterInfoE", !103, i64 0, !104, i64 240, !30, i64 248, !105, i64 256, !106, i64 272, !94, i64 280, !107, i64 288, !108, i64 296, !17, i64 304, !12, i64 312}
!110 = !{!"_ZTSN4llvm18PPCGenRegisterInfoE", !109, i64 0}
!111 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIjjEE", !17, i64 0}
!112 = !{!"_ZTSN4llvm8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEE", !111, i64 0, !43, i64 8, !12, i64 16, !12, i64 20}
!113 = !{!"_ZTSN4llvm15PPCRegisterInfoE", !110, i64 0, !112, i64 320, !76, i64 344}
!114 = !{!"_ZTSN4llvm12PPCInstrInfoE", !90, i64 0, !29, i64 112, !113, i64 120, !11, i64 472, !11, i64 776}
!115 = !{!"p1 _ZTSN4llvm13TargetMachineE", !17, i64 0}
!116 = !{!"_ZTSN4llvm18TargetLoweringBase14BooleanContentE", !11, i64 0}
!117 = !{!"_ZTSN4llvm5Sched10PreferenceE", !11, i64 0}
!118 = !{!"_ZTSN4llvm8RegisterE", !12, i64 0}
!119 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairISt5tupleIJjNS_3MVT15SimpleValueTypeES4_EENS_18TargetLoweringBase14LegalizeActionEEE", !17, i64 0}
!120 = !{!"_ZTSN4llvm8DenseMapISt5tupleIJjNS_3MVT15SimpleValueTypeES3_EENS_18TargetLoweringBase14LegalizeActionENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEE", !119, i64 0, !43, i64 8, !12, i64 16, !12, i64 20}
!121 = !{!"_ZTSN4llvm18TargetLoweringBase19ValueTypeActionImplE", !11, i64 0}
!122 = !{!"_ZTSSt4lessISt4pairIjN4llvm3MVT15SimpleValueTypeEEE"}
!123 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessISt4pairIjN4llvm3MVT15SimpleValueTypeEEEE", !122, i64 0}
!124 = !{!"_ZTSSt14_Rb_tree_color", !11, i64 0}
!125 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !17, i64 0}
!126 = !{!"_ZTSSt18_Rb_tree_node_base", !124, i64 0, !125, i64 8, !125, i64 16, !125, i64 24}
!127 = !{!"_ZTSSt15_Rb_tree_header", !126, i64 0, !32, i64 32}
!128 = !{!"_ZTSNSt8_Rb_treeISt4pairIjN4llvm3MVT15SimpleValueTypeEES0_IKS4_S3_ESt10_Select1stIS6_ESt4lessIS4_ESaIS6_EE13_Rb_tree_implISA_Lb1EEE", !123, i64 0, !127, i64 8}
!129 = !{!"_ZTSSt8_Rb_treeISt4pairIjN4llvm3MVT15SimpleValueTypeEES0_IKS4_S3_ESt10_Select1stIS6_ESt4lessIS4_ESaIS6_EE", !128, i64 0}
end_hunk_2
begin_hunk_3_@llvm.vector.reduce.add.v2i32
!1250 = !{!"_ZTSN4llvm9SparseSetIttNS_8identityEhEE", !1241, i64 0, !1247, i64 40, !12, i64 48, !1248, i64 52, !1249, i64 53}
!1251 = !{!"_ZTSN4llvm12LivePhysRegsE", !81, i64 0, !1250, i64 8}
!1252 = !{!1251, !81, i64 0}
!1253 = !{!486, !17, i64 0}
!1254 = !{!486, !32, i64 8}
!1255 = !{!486, !32, i64 16}
!1256 = !{!1242, !30, i64 0}
!1257 = !{!1250, !12, i64 48}
!1258 = !{!92, !12, i64 0}
!1259 = distinct !{!1259, i1 false, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb"}
!1260 = distinct !{!1260, !1259, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb: argument 0"}
!1261 = distinct !{!1261, i1 false, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb"}
!1262 = distinct !{!1262, !1261, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb: argument 0"}
!1263 = distinct !{!1263, i1 false, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb"}
!1264 = distinct !{!1264, !1263, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb: argument 0"}
!1265 = distinct !{!1265, i1 false, !"_ZN4llvm14MachineOperand9CreateImmEl"}
!1266 = distinct !{!1266, !1265, !"_ZN4llvm14MachineOperand9CreateImmEl: argument 0"}
!1267 = distinct !{!1267, i1 false, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb"}
!1268 = distinct !{!1268, !1267, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb: argument 0"}
!1269 = distinct !{!1269, i1 false, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb"}
!1270 = distinct !{!1270, !1269, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb: argument 0"}
!1271 = distinct !{!1271, i1 false, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb"}
!1272 = distinct !{!1272, !1271, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb: argument 0"}
!1273 = distinct !{!1273, i1 false, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb"}
!1274 = distinct !{!1274, !1273, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb: argument 0"}
!1275 = distinct !{!1275, i1 false, !"_ZN4llvm14MachineOperand9CreateImmEl"}
!1276 = distinct !{!1276, !1275, !"_ZN4llvm14MachineOperand9CreateImmEl: argument 0"}
!1277 = distinct !{!1277, i1 false, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb"}
!1278 = distinct !{!1278, !1277, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb: argument 0"}
!1279 = distinct !{!1279, i1 false, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb"}
!1280 = distinct !{!1280, !1279, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb: argument 0"}
!1281 = distinct !{!1281, i1 false, !"_ZN4llvm14MachineOperand9CreateImmEl"}
!1282 = distinct !{!1282, !1281, !"_ZN4llvm14MachineOperand9CreateImmEl: argument 0"}
!1283 = distinct !{!1283, i1 false, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb"}
!1284 = distinct !{!1284, !1283, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb: argument 0"}
!1285 = distinct !{!1285, i1 false, !"_ZN4llvm14MachineOperand9CreateImmEl"}
!1286 = distinct !{!1286, !1285, !"_ZN4llvm14MachineOperand9CreateImmEl: argument 0"}
!1287 = distinct !{!1287, i1 false, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb"}
!1288 = distinct !{!1288, !1287, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb: argument 0"}
!1289 = distinct !{!1289, i1 false, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb"}
!1290 = distinct !{!1290, !1289, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb: argument 0"}
!1291 = distinct !{!1291, !357}
!1292 = distinct !{!1292, i1 false, !"_ZN4llvm14MachineOperand9CreateImmEl"}
!1293 = distinct !{!1293, !1292, !"_ZN4llvm14MachineOperand9CreateImmEl: argument 0"}
!1294 = distinct !{!1294, i1 false, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb"}
!1295 = distinct !{!1295, !1294, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb: argument 0"}
!1296 = distinct !{!1296, i1 false, !"_ZN4llvm14MachineOperand9CreateImmEl"}
!1297 = distinct !{!1297, !1296, !"_ZN4llvm14MachineOperand9CreateImmEl: argument 0"}
!1298 = distinct !{!1298, i1 false, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb"}
!1299 = distinct !{!1299, !1298, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb: argument 0"}
!1300 = distinct !{!1300, i1 false, !"_ZN4llvm14MachineOperand9CreateImmEl"}
!1301 = distinct !{!1301, !1300, !"_ZN4llvm14MachineOperand9CreateImmEl: argument 0"}
!1302 = distinct !{!1302, i1 false, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb"}
!1303 = distinct !{!1303, !1302, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb: argument 0"}
!1304 = distinct !{!1304, i1 false, !"_ZN4llvm14MachineOperand9CreateImmEl"}
!1305 = distinct !{!1305, !1304, !"_ZN4llvm14MachineOperand9CreateImmEl: argument 0"}
!1306 = distinct !{!1306, i1 false, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb"}
!1307 = distinct !{!1307, !1306, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb: argument 0"}
!1308 = distinct !{!1308, i1 false, !"_ZN4llvm14MachineOperand9CreateImmEl"}
!1309 = distinct !{!1309, !1308, !"_ZN4llvm14MachineOperand9CreateImmEl: argument 0"}
!1310 = distinct !{!1310, i1 false, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb"}
!1311 = distinct !{!1311, !1310, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb: argument 0"}
!1312 = distinct !{!1312, i1 false, !"_ZN4llvm14MachineOperand9CreateImmEl"}
!1313 = distinct !{!1313, !1312, !"_ZN4llvm14MachineOperand9CreateImmEl: argument 0"}
!1314 = distinct !{!1314, i1 false, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb"}
!1315 = distinct !{!1315, !1314, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb: argument 0"}
!1316 = distinct !{!1316, i1 false, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb"}
!1317 = distinct !{!1317, !1316, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb: argument 0"}
!1318 = distinct !{!1318, i1 false, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb"}
!1319 = distinct !{!1319, !1318, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb: argument 0"}
!1320 = distinct !{!1320, i1 false, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb"}
!1321 = distinct !{!1321, !1320, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb: argument 0"}
!1322 = distinct !{!1322, i1 false, !"_ZN4llvm14MachineOperand9CreateImmEl"}
!1323 = distinct !{!1323, !1322, !"_ZN4llvm14MachineOperand9CreateImmEl: argument 0"}
!1324 = distinct !{!1324, i1 false, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb"}
!1325 = distinct !{!1325, !1324, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb: argument 0"}
!1326 = distinct !{!1326, i1 false, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb"}
!1327 = distinct !{!1327, !1326, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb: argument 0"}
!1328 = distinct !{!1328, i1 false, !"_ZN4llvm14MachineOperand9CreateImmEl"}
!1329 = distinct !{!1329, !1328, !"_ZN4llvm14MachineOperand9CreateImmEl: argument 0"}
!1330 = distinct !{!1330, i1 false, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb"}
!1331 = distinct !{!1331, !1330, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb: argument 0"}
!1332 = distinct !{!1332, i1 false, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb"}
!1333 = distinct !{!1333, !1332, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb: argument 0"}
!1334 = distinct !{!1334, !357}
!1335 = distinct !{!1335, i1 false, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb"}
!1336 = distinct !{!1336, !1335, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb: argument 0"}
!1337 = distinct !{!1337, i1 false, !"_ZN4llvm14MachineOperand9CreateImmEl"}
!1338 = distinct !{!1338, !1337, !"_ZN4llvm14MachineOperand9CreateImmEl: argument 0"}
!1339 = distinct !{!1339, i1 false, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb"}
!1340 = distinct !{!1340, !1339, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb: argument 0"}
!1341 = distinct !{!1341, i1 false, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb"}
!1342 = distinct !{!1342, !1341, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb: argument 0"}
!1343 = distinct !{!1343, i1 false, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb"}
!1344 = distinct !{!1344, !1343, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb: argument 0"}
!1345 = distinct !{!1345, i1 false, !"_ZN4llvm14MachineOperand9CreateImmEl"}
!1346 = distinct !{!1346, !1345, !"_ZN4llvm14MachineOperand9CreateImmEl: argument 0"}
!1347 = distinct !{!1347, i1 false, !"_ZN4llvm14MachineOperand9CreateImmEl"}
!1348 = distinct !{!1348, !1347, !"_ZN4llvm14MachineOperand9CreateImmEl: argument 0"}
!1349 = distinct !{!1349, i1 false, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb"}
!1350 = distinct !{!1350, !1349, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb: argument 0"}
!1351 = distinct !{!1351, i1 false, !"_ZN4llvm14MachineOperand9CreateImmEl"}
!1352 = distinct !{!1352, !1351, !"_ZN4llvm14MachineOperand9CreateImmEl: argument 0"}
!1353 = distinct !{!1353, i1 false, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb"}
!1354 = distinct !{!1354, !1353, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb: argument 0"}
!1355 = distinct !{!1355, i1 false, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb"}
!1356 = distinct !{!1356, !1355, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb: argument 0"}
!1357 = distinct !{!1357, i1 false, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb"}
!1358 = distinct !{!1358, !1357, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb: argument 0"}
!1359 = !{!1260}
!1360 = !{!1262}
!1361 = !{!1264}
!1362 = !{!1266}
!1363 = !{!1268}
!1364 = !{!1270}
!1365 = !{!1272}
!1366 = !{!1274}
!1367 = !{!1276}
!1368 = !{!1278}
!1369 = !{!1280}
!1370 = !{!1282}
!1371 = !{!1284}
!1372 = !{!1286}
!1373 = !{!1288}
!1374 = !{!1290}
!1375 = !{!1293}
!1376 = !{!1295}
!1377 = !{!1297}
!1378 = !{!1299}
!1379 = !{!1301}
!1380 = !{!1303}
!1381 = !{!1305}
!1382 = !{!1307}
!1383 = !{!1309}
!1384 = !{!1311}
!1385 = !{!1313}
!1386 = !{!1315}
!1387 = !{!1317}
!1388 = !{!1319}
!1389 = !{!1321}
!1390 = !{!1323}
!1391 = !{!1325}
!1392 = !{!1327}
!1393 = !{!1329}
!1394 = !{!1331}
!1395 = !{!1333}
!1396 = !{!1336}
!1397 = !{!1338}
!1398 = !{!1340}
!1399 = !{!1342}
!1400 = !{!"p1 _ZTSN4llvm4TypeE", !17, i64 0}
!1401 = !{!"p1 _ZTSN4llvm3UseE", !17, i64 0}
!1402 = !{!"_ZTSN4llvm5ValueE", !11, i64 0, !11, i64 1, !11, i64 1, !79, i64 2, !12, i64 4, !12, i64 7, !12, i64 7, !12, i64 7, !12, i64 7, !1400, i64 8, !1401, i64 16}
!1403 = !{!1402, !79, i64 2}
!1404 = !{!342, !12, i64 40}
!1405 = !{!1344}
!1406 = !{!1346}
!1407 = !{!1348}
!1408 = !{!1350}
!1409 = !{!1352}
!1410 = !{!1354}
!1411 = !{!1356}
!1412 = !{!1358}
!1413 = distinct !{!1413, i1 false, !"_ZN4llvm14MachineOperand8CreateGAEPKNS_11GlobalValueElj"}
!1414 = distinct !{!1414, !1413, !"_ZN4llvm14MachineOperand8CreateGAEPKNS_11GlobalValueElj: argument 0"}
!1415 = distinct !{!1415, i1 false, !"_ZN4llvm14MachineOperand8CreateESEPKcj"}
!1416 = distinct !{!1416, !1415, !"_ZN4llvm14MachineOperand8CreateESEPKcj: argument 0"}
!1417 = distinct !{!1417, i1 false, !"_ZN4llvm14MachineOperand9CreateImmEl"}
!1418 = distinct !{!1418, !1417, !"_ZN4llvm14MachineOperand9CreateImmEl: argument 0"}
!1419 = distinct !{!1419, i1 false, !"_ZN4llvm14MachineOperand8CreateGAEPKNS_11GlobalValueElj"}
!1420 = distinct !{!1420, !1419, !"_ZN4llvm14MachineOperand8CreateGAEPKNS_11GlobalValueElj: argument 0"}
!1421 = distinct !{!1421, i1 false, !"_ZN4llvm14MachineOperand8CreateESEPKcj"}
!1422 = distinct !{!1422, !1421, !"_ZN4llvm14MachineOperand8CreateESEPKcj: argument 0"}
!1423 = distinct !{!1423, i1 false, !"_ZN4llvm14MachineOperand9CreateImmEl"}
!1424 = distinct !{!1424, !1423, !"_ZN4llvm14MachineOperand9CreateImmEl: argument 0"}
!1425 = !{!1414}
!1426 = !{!1416}
!1427 = !{!1418}
!1428 = !{!1420}
!1429 = !{!1422}
!1430 = !{!1424}
!1431 = !{!342, !12, i64 224}
!1432 = distinct !{!1432, !357}
!1433 = distinct !{!1433, !357}
!1434 = distinct !{!1434, i1 false, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockESt6vectorINS_15CalleeSavedInfoESaIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E6getRepEv"}
!1435 = distinct !{!1435, !1434, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_17MachineBasicBlockESt6vectorINS_15CalleeSavedInfoESaIS5_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S7_EEEES3_S7_S9_SC_E6getRepEv: argument 0"}
!1436 = distinct !{!1436, i1 false, !"_ZNK4llvm8DenseMapIPNS_17MachineBasicBlockESt6vectorINS_15CalleeSavedInfoESaIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEE6getRepEv"}
!1437 = distinct !{!1437, !1436, !"_ZNK4llvm8DenseMapIPNS_17MachineBasicBlockESt6vectorINS_15CalleeSavedInfoESaIS4_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S6_EEE6getRepEv: argument 0"}
!1438 = !{!316, !12, i64 16}
!1439 = !{!317, !20, i64 670}
!1440 = !{!316, !315, i64 0}
!1441 = !{!1437, !1435}
!1442 = !{!316, !43, i64 8}
!1443 = !{!316, !12, i64 20}
!1444 = !{!103, !78, i64 104}
!1445 = !{!342, !20, i64 32}
!1446 = !{!342, !20, i64 31}
!1447 = !{!109, !108, i64 296}
!1448 = !{!103, !12, i64 40}
!1449 = !{!109, !12, i64 312}
!1450 = !{!"_ZTSN4llvm18TargetRegisterInfo12RegClassInfoE", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12}
!1451 = !{!1450, !12, i64 4}
!1452 = !{!1450, !12, i64 8}
!1453 = distinct !{!1453, i1 false, !"_ZNK4llvm9BitVector8set_bitsEv"}
!1454 = distinct !{!1454, !1453, !"_ZNK4llvm9BitVector8set_bitsEv: argument 0"}
!1455 = distinct !{!1455, !357}
!1456 = !{!317, !20, i64 66}
!1457 = !{!180, !20, i64 512}
!1458 = !{!1454}
!1459 = distinct !{!1459, i1 false, !"_ZSt19__relocate_object_aIN4llvm17MachineBasicBlock16RegisterMaskPairES2_SaIS2_EEvPT_PT0_RT1_"}
!1460 = distinct !{!1460, !1459, !"_ZSt19__relocate_object_aIN4llvm17MachineBasicBlock16RegisterMaskPairES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!1461 = distinct !{!1461, !1459, !"_ZSt19__relocate_object_aIN4llvm17MachineBasicBlock16RegisterMaskPairES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!1462 = distinct !{!1462, !357}
!1463 = distinct !{!1463, i1 false, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb"}
!1464 = distinct !{!1464, !1463, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb: argument 0"}
!1465 = distinct !{!1465, i1 false, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb"}
!1466 = distinct !{!1466, !1465, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb: argument 0"}
!1467 = distinct !{!1467, i1 false, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb"}
!1468 = distinct !{!1468, !1467, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb: argument 0"}
!1469 = distinct !{!1469, i1 false, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb"}
!1470 = distinct !{!1470, !1469, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb: argument 0"}
!1471 = distinct !{!1471, i1 false, !"_ZN4llvm14MachineOperand9CreateImmEl"}
!1472 = distinct !{!1472, !1471, !"_ZN4llvm14MachineOperand9CreateImmEl: argument 0"}
!1473 = distinct !{!1473, i1 false, !"_ZN4llvm14MachineOperand8CreateFIEi"}
!1474 = distinct !{!1474, !1473, !"_ZN4llvm14MachineOperand8CreateFIEi: argument 0"}
!1475 = distinct !{!1475, i1 false, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb"}
!1476 = distinct !{!1476, !1475, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb: argument 0"}
!1477 = distinct !{!1477, i1 false, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb"}
!1478 = distinct !{!1478, !1477, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb: argument 0"}
!1479 = distinct !{!1479, i1 false, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb"}
!1480 = distinct !{!1480, !1479, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb: argument 0"}
!1481 = !{i64 0, i64 4, !186, i64 8, i64 8, !427}
!1482 = !{!1461, !1460}
!1483 = !{!1464}
!1484 = !{!1466}
!1485 = !{!1468}
!1486 = !{!1470}
!1487 = !{!1472}
!1488 = !{!1474}
!1489 = !{!1476}
!1490 = !{!1478}
!1491 = !{!1480}
!1492 = distinct !{!1492, i1 false, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb"}
!1493 = distinct !{!1493, !1492, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb: argument 0"}
!1494 = distinct !{!1494, i1 false, !"_ZN4llvm14MachineOperand9CreateImmEl"}
!1495 = distinct !{!1495, !1494, !"_ZN4llvm14MachineOperand9CreateImmEl: argument 0"}
!1496 = distinct !{!1496, i1 false, !"_ZN4llvm14MachineOperand9CreateImmEl"}
!1497 = distinct !{!1497, !1496, !"_ZN4llvm14MachineOperand9CreateImmEl: argument 0"}
!1498 = distinct !{!1498, i1 false, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb"}
!1499 = distinct !{!1499, !1498, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb: argument 0"}
!1500 = distinct !{!1500, i1 false, !"_ZN4llvm14MachineOperand9CreateImmEl"}
!1501 = distinct !{!1501, !1500, !"_ZN4llvm14MachineOperand9CreateImmEl: argument 0"}
!1502 = distinct !{!1502, i1 false, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb"}
!1503 = distinct !{!1503, !1502, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb: argument 0"}
!1504 = distinct !{!1504, i1 false, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb"}
!1505 = distinct !{!1505, !1504, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb: argument 0"}
!1506 = distinct !{!1506, !357}
!1507 = !{!1493}
!1508 = !{!1495}
!1509 = !{!1497}
!1510 = !{!1499}
!1511 = !{!1501}
!1512 = !{!1503}
!1513 = !{!1505}
!1514 = distinct !{!1514, i1 false, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb"}
!1515 = distinct !{!1515, !1514, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb: argument 0"}
!1516 = distinct !{!1516, i1 false, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb"}
!1517 = distinct !{!1517, !1516, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb: argument 0"}
!1518 = distinct !{!1518, i1 false, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb"}
!1519 = distinct !{!1519, !1518, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb: argument 0"}
!1520 = distinct !{!1520, !357}
!1521 = !{!1515}
!1522 = !{!1517}
!1523 = !{!1519}
!1524 = distinct !{!1524, i1 false, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb"}
!1525 = distinct !{!1525, !1524, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb: argument 0"}
!1526 = distinct !{!1526, i1 false, !"_ZN4llvm14MachineOperand9CreateImmEl"}
!1527 = distinct !{!1527, !1526, !"_ZN4llvm14MachineOperand9CreateImmEl: argument 0"}
!1528 = distinct !{!1528, i1 false, !"_ZN4llvm14MachineOperand8CreateFIEi"}
!1529 = distinct !{!1529, !1528, !"_ZN4llvm14MachineOperand8CreateFIEi: argument 0"}
!1530 = distinct !{!1530, i1 false, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb"}
!1531 = distinct !{!1531, !1530, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb: argument 0"}
!1532 = distinct !{!1532, i1 false, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb"}
!1533 = distinct !{!1533, !1532, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb: argument 0"}
!1534 = distinct !{!1534, i1 false, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb"}
!1535 = distinct !{!1535, !1534, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb: argument 0"}
!1536 = distinct !{!1536, i1 false, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb"}
!1537 = distinct !{!1537, !1536, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb: argument 0"}
!1538 = distinct !{!1538, i1 false, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb"}
!1539 = distinct !{!1539, !1538, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb: argument 0"}
!1540 = distinct !{!1540, i1 false, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb"}
!1541 = distinct !{!1541, !1540, !"_ZN4llvm14MachineOperand9CreateRegENS_8RegisterEbbbbbbjbbb: argument 0"}
!1542 = !{!1525}
!1543 = !{!1527}
!1544 = !{!1529}
!1545 = !{!1531}
!1546 = !{!1533}
!1547 = !{!1535}
!1548 = !{!1537}
!1549 = !{!1539}
!1550 = !{!1541}
!1551 = !{!342, !20, i64 30}
!1552 = !{ptr @_ZN4llvm16PPCFrameLoweringD2Ev}
!1553 = distinct !{!1553, i1 false, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIjSt4pairINS_8RegisterES3_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E6getRepEv"}
!1554 = distinct !{!1554, !1553, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIjSt4pairINS_8RegisterES3_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E6getRepEv: argument 0"}
!1555 = distinct !{!1555, i1 false, !"_ZNK4llvm8DenseMapIjSt4pairINS_8RegisterES2_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEE6getRepEv"}
!1556 = distinct !{!1556, !1555, !"_ZNK4llvm8DenseMapIjSt4pairINS_8RegisterES2_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEE6getRepEv: argument 0"}
!1557 = !{!1556, !1554}
!1558 = distinct !{!1558, i1 false, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIjSt4pairINS_8RegisterES3_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E6getRepEv"}
!1559 = distinct !{!1559, !1558, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIjSt4pairINS_8RegisterES3_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E6getRepEv: argument 0"}
!1560 = distinct !{!1560, i1 false, !"_ZNK4llvm8DenseMapIjSt4pairINS_8RegisterES2_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEE6getRepEv"}
!1561 = distinct !{!1561, !1560, !"_ZNK4llvm8DenseMapIjSt4pairINS_8RegisterES2_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEE6getRepEv: argument 0"}
!1562 = !{!1561, !1559}
!1563 = distinct !{!1563, !357}
!1564 = distinct !{!1564, !357}
!1565 = distinct !{!1565, !357}
!1566 = distinct !{!1566, i1 false, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIjSt4pairINS_8RegisterES3_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E6getRepEv"}
!1567 = distinct !{!1567, !1566, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIjSt4pairINS_8RegisterES3_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E6getRepEv: argument 0"}
!1568 = distinct !{!1568, i1 false, !"_ZNK4llvm8DenseMapIjSt4pairINS_8RegisterES2_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEE6getRepEv"}
!1569 = distinct !{!1569, !1568, !"_ZNK4llvm8DenseMapIjSt4pairINS_8RegisterES2_ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEE6getRepEv: argument 0"}
!1570 = !{!1569, !1567}
!1571 = !{!642, !20, i64 8}
end_hunk_3
