Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/wlan_statistics_dialog?download=true
inline.NumInlined: 1010
inline.NumDeleted: 396
begin_hunk_0_@_ZN25WlanNetworkTreeWidgetItem7isMatchEPK9_wlan_hdr:bb.a
  %i.a = getelementptr i8, ptr %0, i64 96         ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = load i32, ptr %1, align 8
  %i.d = icmp eq i32 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZL15addresses_equalPK8_addressS1_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 100
  %i.f = load i32, ptr %i.e, align 4              ; 3 uses
  %i.g = getelementptr i8, ptr %1, i64 4
  %i.h = load i32, ptr %i.g, align 4
  %i.i = icmp eq i32 %i.f, %i.h
  br i1 %i.i, label %bb.c, label %_ZL15addresses_equalPK8_addressS1_.exit

bb.c:                                             ; preds = %bb.b
  %i.j = icmp eq i32 %i.f, 0
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %0, i64 104
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = sext i32 %i.f to i64
  %bcmp.i = tail call i32 @bcmp(ptr %i.l, ptr %i.n, i64 %i.o)
  %i.p = icmp eq i32 %bcmp.i, 0
  br i1 %i.p, label %bb.e, label %_ZL15addresses_equalPK8_addressS1_.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  br label %_ZL15addresses_equalPK8_addressS1_.exit

_ZL15addresses_equalPK8_addressS1_.exit:          ; preds = %bb.d, %bb.b, %bb.a, %bb.e
  %i.q = phi i8 [ 1, %bb.e ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.d ] ; 11 uses
  %i.r = getelementptr i8, ptr %1, i64 75         ; 6 uses
  %i.s = load i8, ptr %i.r, align 1               ; 2 uses
  %.not = icmp eq i8 %i.s, 0
  br i1 %.not, label %_ZN10QByteArrayD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZL15addresses_equalPK8_addressS1_.exit
  %i.t = getelementptr i8, ptr %1, i64 76         ; 2 uses
  %i.u = load i8, ptr %i.t, align 4
  %.not43 = icmp eq i8 %i.u, 0
  br i1 %.not43, label %_ZN10QByteArrayD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = zext i8 %i.s to i64                      ; 3 uses
  %i.w = getelementptr i8, ptr %0, i64 224
  %i.x = load i64, ptr %i.w, align 8
  %i.y = icmp eq i64 %i.x, %i.v
  br i1 %i.y, label %bb.h, label %_ZN10QByteArrayD2Ev.exit

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr i8, ptr %0, i64 216
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = invoke noundef i32 @_ZN9QtPrivate13compareMemoryE14QByteArrayViewS0_(i64 %i.v, ptr %i.aa, i64 %i.v, ptr %i.t)
          to label %_ZeqRK10QByteArrayS1_.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #28
  unreachable

_ZeqRK10QByteArrayS1_.exit:                       ; preds = %bb.h
  %i.ae = icmp eq i32 %i.ab, 0
  %spec.select = zext i1 %i.ae to i8
  br label %_ZN10QByteArrayD2Ev.exit

_ZN10QByteArrayD2Ev.exit:                         ; preds = %_ZeqRK10QByteArrayS1_.exit, %bb.g, %bb.f, %_ZL15addresses_equalPK8_addressS1_.exit
  %.141 = phi i8 [ 0, %_ZL15addresses_equalPK8_addressS1_.exit ], [ 0, %bb.f ], [ 0, %bb.g ], [ %spec.select, %_ZeqRK10QByteArrayS1_.exit ] ; 2 uses
  %i.af = trunc nuw i8 %i.q to i1
  %i.ag = trunc nuw i8 %.141 to i1                ; 2 uses
  %i.ah = and i8 %.141, %i.q
  %or.cond.not = icmp eq i8 %i.ah, 0
  br i1 %or.cond.not, label %bb.j, label %bb.ap

bb.j:                                             ; preds = %_ZN10QByteArrayD2Ev.exit
  %i.ai = getelementptr i8, ptr %1, i64 72
  %i.aj = load i16, ptr %i.ai, align 8
  %i.ak = icmp eq i16 %i.aj, 4
  br i1 %i.ak, label %bb.k, label %bb.w

bb.k:                                             ; preds = %bb.j
  br i1 %i.ag, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr i8, ptr %0, i64 200
  %i.am = load i8, ptr %i.al, align 8, !range !12, !noundef !13
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.m, label %.thread92

bb.m:                                             ; preds = %bb.l
  %i.ao = getelementptr i8, ptr %0, i64 176
  %i.ap = load i32, ptr %i.ao, align 8
  %i.aq = load i32, ptr %1, align 8
  %i.ar = icmp eq i32 %i.ap, %i.aq
  br i1 %i.ar, label %bb.n, label %.split97.thread

bb.n:                                             ; preds = %bb.m
  %i.as = getelementptr i8, ptr %0, i64 180
  %i.at = load i32, ptr %i.as, align 4            ; 3 uses
  %i.au = getelementptr i8, ptr %1, i64 4
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = icmp eq i32 %i.at, %i.av
  br i1 %i.aw, label %bb.o, label %.split97.thread

bb.o:                                             ; preds = %bb.n
  %i.ax = icmp eq i32 %i.at, 0
  br i1 %i.ax, label %.thread92, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ay = getelementptr i8, ptr %0, i64 184
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = getelementptr i8, ptr %1, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = sext i32 %i.at to i64
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.az, ptr %i.bb, i64 %i.bc)
  %i.bd = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.bd, label %.thread92, label %.split97.thread

bb.q:                                             ; preds = %bb.k
  %i.be = load i8, ptr %i.r, align 1              ; 2 uses
  %i.bf = icmp eq i8 %i.be, 1
  br i1 %i.bf, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.bg = getelementptr i8, ptr %1, i64 76
  %i.bh = load i8, ptr %i.bg, align 4
  %i.bi = icmp eq i8 %i.bh, 0
  br i1 %i.bi, label %bb.s, label %.thread92

bb.s:                                             ; preds = %bb.r
  %i.bj = getelementptr i8, ptr %0, i64 200
  %i.bk = load i8, ptr %i.bj, align 8, !range !12, !noundef !13
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %.thread92, label %_ZN23WlanStatsTreeWidgetItem16isBroadcastBSSIDEPK8_address.exit.thread77

bb.t:                                             ; preds = %bb.q
  %i.bm = getelementptr i8, ptr %0, i64 224
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = icmp eq i64 %i.bn, 0
  %i.bp = icmp eq i8 %i.be, 0
  %or.cond = and i1 %i.bp, %i.bo
  br i1 %or.cond, label %bb.u, label %.thread92

bb.u:                                             ; preds = %bb.t
  %i.bq = getelementptr i8, ptr %0, i64 200
  %i.br = load i8, ptr %i.bq, align 8, !range !12, !noundef !13
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.v, label %.thread92

bb.v:                                             ; preds = %bb.u
  %i.bt = tail call noundef zeroext i1 @_ZN23WlanStatsTreeWidgetItem16isBroadcastBSSIDEPK8_address(ptr noundef align 8 dereferenceable_or_null(200) %0, ptr noundef %1)
  br i1 %i.bt, label %bb.ap, label %.thread92

bb.w:                                             ; preds = %bb.j
  br i1 %i.ag, label %bb.x, label %bb.ad

bb.x:                                             ; preds = %bb.w
  %i.bu = getelementptr i8, ptr %0, i64 200
  %i.bv = load i8, ptr %i.bu, align 8, !range !12, !noundef !13
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %bb.y, label %_ZN23WlanStatsTreeWidgetItem16isBroadcastBSSIDEPK8_address.exit55

bb.y:                                             ; preds = %bb.x
  %i.bx = getelementptr i8, ptr %0, i64 176
  %i.by = load i32, ptr %i.bx, align 8
  %i.bz = load i32, ptr %1, align 8
  %i.ca = icmp eq i32 %i.by, %i.bz
  br i1 %i.ca, label %bb.z, label %_ZN23WlanStatsTreeWidgetItem16isBroadcastBSSIDEPK8_address.exit55

bb.z:                                             ; preds = %bb.y
  %i.cb = getelementptr i8, ptr %0, i64 180
  %i.cc = load i32, ptr %i.cb, align 4            ; 3 uses
  %i.cd = getelementptr i8, ptr %1, i64 4
  %i.ce = load i32, ptr %i.cd, align 4
  %i.cf = icmp eq i32 %i.cc, %i.ce
  br i1 %i.cf, label %bb.aa, label %_ZN23WlanStatsTreeWidgetItem16isBroadcastBSSIDEPK8_address.exit55

bb.aa:                                            ; preds = %bb.z
  %i.cg = icmp eq i32 %i.cc, 0
  br i1 %i.cg, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ch = getelementptr i8, ptr %0, i64 184
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = getelementptr i8, ptr %1, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = sext i32 %i.cc to i64
  %bcmp.i.i54 = tail call i32 @bcmp(ptr %i.ci, ptr %i.ck, i64 %i.cl)
  %i.cm = icmp eq i32 %bcmp.i.i54, 0
  br i1 %i.cm, label %bb.ac, label %_ZN23WlanStatsTreeWidgetItem16isBroadcastBSSIDEPK8_address.exit55

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  br label %_ZN23WlanStatsTreeWidgetItem16isBroadcastBSSIDEPK8_address.exit55

bb.ad:                                            ; preds = %bb.w
  %i.cn = load i8, ptr %i.r, align 1
  %i.co = icmp eq i8 %i.cn, 0
  br label %_ZN23WlanStatsTreeWidgetItem16isBroadcastBSSIDEPK8_address.exit55

_ZN23WlanStatsTreeWidgetItem16isBroadcastBSSIDEPK8_address.exit55: ; preds = %bb.ac, %bb.y, %bb.z, %bb.ab, %bb.ad, %bb.x
  %.242 = phi i1 [ true, %bb.x ], [ %i.co, %bb.ad ], [ true, %bb.ab ], [ true, %bb.z ], [ true, %bb.y ], [ true, %bb.ac ] ; 4 uses
  %.038 = phi i1 [ false, %bb.x ], [ false, %bb.ad ], [ true, %bb.ab ], [ true, %bb.z ], [ true, %bb.y ], [ false, %bb.ac ] ; 2 uses
  br i1 %i.af, label %bb.ae, label %_ZN23WlanStatsTreeWidgetItem16isBroadcastBSSIDEPK8_address.exit

bb.ae:                                            ; preds = %_ZN23WlanStatsTreeWidgetItem16isBroadcastBSSIDEPK8_address.exit55
  %i.cp = getelementptr i8, ptr %0, i64 208       ; 2 uses
  %i.cq = getelementptr i8, ptr %0, i64 224
  %i.cr = load i64, ptr %i.cq, align 8            ; 2 uses
  %i.cs = icmp eq i64 %i.cr, 0
  br i1 %i.cs, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ct = load ptr, ptr %i.cp, align 8            ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i.i, label %_ZNK17QArrayDataPointerIcE11needsDetachEv.exit.thread.i.i.i, label %_ZNK17QArrayDataPointerIcE11needsDetachEv.exit.i.i.i

_ZNK17QArrayDataPointerIcE11needsDetachEv.exit.i.i.i: ; preds = %bb.af
  %i.cu = load atomic i32, ptr %i.ct monotonic, align 4
  %i.cv = icmp sgt i32 %i.cu, 1
  br i1 %i.cv, label %_ZNK17QArrayDataPointerIcE11needsDetachEv.exit.thread.i.i.i, label %_ZN10QByteArrayixEx.exit

_ZNK17QArrayDataPointerIcE11needsDetachEv.exit.thread.i.i.i: ; preds = %_ZNK17QArrayDataPointerIcE11needsDetachEv.exit.i.i.i, %bb.af
  tail call void @_ZN10QByteArray11reallocDataExN10QArrayData16AllocationOptionE(ptr noundef align 8 dereferenceable_or_null(24) %i.cp, i64 noundef %i.cr, i32 noundef 1)
  br label %_ZN10QByteArrayixEx.exit

_ZN10QByteArrayixEx.exit:                         ; preds = %_ZNK17QArrayDataPointerIcE11needsDetachEv.exit.i.i.i, %_ZNK17QArrayDataPointerIcE11needsDetachEv.exit.thread.i.i.i
  %i.cw = getelementptr i8, ptr %0, i64 216
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = load i8, ptr %i.cx, align 1
  %i.cz = icmp eq i8 %i.cy, 0
  br i1 %i.cz, label %bb.ag, label %_ZN23WlanStatsTreeWidgetItem16isBroadcastBSSIDEPK8_address.exit

bb.ag:                                            ; preds = %_ZN10QByteArrayixEx.exit, %bb.ae
  %i.da = load i8, ptr %i.r, align 1              ; 2 uses
  %.not44 = icmp eq i8 %i.da, 0
  br i1 %.not44, label %_ZN23WlanStatsTreeWidgetItem16isBroadcastBSSIDEPK8_address.exit, label %.split

.split:                                           ; preds = %bb.ag
  %i.db = getelementptr i8, ptr %1, i64 76
  %i.dc = load i8, ptr %i.db, align 4
  %.not45.not = icmp eq i8 %i.dc, 0               ; 2 uses
  br i1 %.038, label %.split97, label %bb.ah

_ZN23WlanStatsTreeWidgetItem16isBroadcastBSSIDEPK8_address.exit.thread77: ; preds = %bb.s
  %i.dd = tail call fastcc noundef zeroext i1 @_ZL15addresses_equalPK8_addressS1_(ptr noundef %i.a, ptr noundef %1)
  br i1 %i.dd, label %bb.ai, label %.thread92

_ZN23WlanStatsTreeWidgetItem16isBroadcastBSSIDEPK8_address.exit: ; preds = %_ZN23WlanStatsTreeWidgetItem16isBroadcastBSSIDEPK8_address.exit55, %bb.ag, %_ZN10QByteArrayixEx.exit
  %.1 = phi i8 [ 1, %bb.ag ], [ 0, %_ZN23WlanStatsTreeWidgetItem16isBroadcastBSSIDEPK8_address.exit55 ], [ 1, %_ZN10QByteArrayixEx.exit ]
  br i1 %.038, label %.split97.thread, label %.thread92

.split97.thread:                                  ; preds = %_ZN23WlanStatsTreeWidgetItem16isBroadcastBSSIDEPK8_address.exit, %bb.n, %bb.p, %bb.m
  %.390.ph = phi i1 [ true, %bb.m ], [ true, %bb.p ], [ true, %bb.n ], [ %.242, %_ZN23WlanStatsTreeWidgetItem16isBroadcastBSSIDEPK8_address.exit ]
  tail call void @_ZN25WlanNetworkTreeWidgetItem11updateBssidEPK9_wlan_hdr(ptr noundef align 8 dereferenceable_or_null(256) %0, ptr noundef %1)
  br label %.thread92

.split97:                                         ; preds = %.split
  tail call void @_ZN25WlanNetworkTreeWidgetItem11updateBssidEPK9_wlan_hdr(ptr noundef align 8 dereferenceable_or_null(256) %0, ptr noundef %1)
  br i1 %.not45.not, label %.thread92, label %.split97._crit_edge

.split97._crit_edge:                              ; preds = %.split97
  %.pre = load i8, ptr %i.r, align 1
  br label %bb.ai

bb.ah:                                            ; preds = %.split
  br i1 %.not45.not, label %.thread92, label %bb.ai

bb.ai:                                            ; preds = %.split97._crit_edge, %_ZN23WlanStatsTreeWidgetItem16isBroadcastBSSIDEPK8_address.exit.thread77, %bb.ah
  %i.de = phi i8 [ %.pre, %.split97._crit_edge ], [ 1, %_ZN23WlanStatsTreeWidgetItem16isBroadcastBSSIDEPK8_address.exit.thread77 ], [ %i.da, %bb.ah ]
  %i.df = getelementptr i8, ptr %1, i64 76        ; 2 uses
  %i.dg = zext i8 %i.de to i64
  %i.dh = getelementptr i8, ptr %0, i64 208       ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8            ; 3 uses
  store ptr null, ptr %i.dh, align 8
  %i.dj = getelementptr i8, ptr %0, i64 216
  store ptr %i.df, ptr %i.dj, align 8
  %i.dk = getelementptr i8, ptr %0, i64 224
  store i64 %i.dg, ptr %i.dk, align 8
  %.not.i.i.i56 = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i56, label %_ZN10QByteArrayD2Ev.exit59, label %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i57

_ZN17QArrayDataPointerIcE5derefEv.exit.i.i57:     ; preds = %bb.ai
  %i.dl = atomicrmw sub ptr %i.di, i32 1 acq_rel, align 4
  %.not.i.i58 = icmp eq i32 %i.dl, 1
  br i1 %.not.i.i58, label %bb.aj, label %_ZN10QByteArrayD2Ev.exit59

bb.aj:                                            ; preds = %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i57
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.di, i64 noundef 1, i64 noundef 8) #25
  br label %_ZN10QByteArrayD2Ev.exit59

_ZN10QByteArrayD2Ev.exit59:                       ; preds = %bb.ai, %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i57, %bb.aj
  %i.dm = load i8, ptr %i.r, align 1
  %i.dn = zext i8 %i.dm to i64
  %i.do = tail call ptr @format_text(ptr noundef null, ptr noundef %i.df, i64 noundef %i.dn) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %.not.i.i60 = icmp eq ptr %i.do, null
  br i1 %.not.i.i60, label %_ZN7QStringC2EPKc.exit, label %.split.i.i

.split.i.i:                                       ; preds = %_ZN10QByteArrayD2Ev.exit59
  %i.dp = tail call noundef i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.do) #25
  br label %_ZN7QStringC2EPKc.exit

_ZN7QStringC2EPKc.exit:                           ; preds = %_ZN10QByteArrayD2Ev.exit59, %.split.i.i
  %.sink5.i.i = phi i64 [ %i.dp, %.split.i.i ], [ 0, %_ZN10QByteArrayD2Ev.exit59 ]
  call void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %3, i64 %.sink5.i.i, ptr %i.do)
  %i.dq = load <2 x ptr>, ptr %3, align 16
  store <2 x ptr> %i.dq, ptr %4, align 16
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dt = load i64, ptr %i.ds, align 16
  store i64 %i.dt, ptr %i.dr, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  invoke void @_ZN8QVariantC1ERK7QString(ptr noundef nonnull align 8 dereferenceable_or_null(32) %2, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %.noexc unwind label %bb.an

.noexc:                                           ; preds = %_ZN7QStringC2EPKc.exit
  %i.du = load ptr, ptr %0, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 32
  %i.dw = load ptr, ptr %i.dv, align 8
  invoke void %i.dw(ptr noundef align 8 dereferenceable_or_null(92) %0, i32 noundef 2, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.al unwind label %bb.ak

bb.ak:                                            ; preds = %.noexc
  %i.dx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %.body

bb.al:                                            ; preds = %.noexc
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.dy = load ptr, ptr %4, align 16              ; 2 uses
  %.not.i.i.i61 = icmp eq ptr %i.dy, null
  br i1 %.not.i.i.i61, label %_ZN7QStringD2Ev.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i:      ; preds = %bb.al
  %i.dz = atomicrmw sub ptr %i.dy, i32 1 acq_rel, align 4
  %.not.i.i62 = icmp eq i32 %i.dz, 1
  br i1 %.not.i.i62, label %bb.am, label %_ZN7QStringD2Ev.exit

bb.am:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i
  %i.ea = load ptr, ptr %4, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ea, i64 noundef 2, i64 noundef 8) #25
  br label %_ZN7QStringD2Ev.exit

_ZN7QStringD2Ev.exit:                             ; preds = %bb.al, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @wmem_free(ptr noundef null, ptr noundef %i.do)
  br label %.thread92

bb.an:                                            ; preds = %_ZN7QStringC2EPKc.exit
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.ak, %bb.an
  %eh.lpad-body = phi { ptr, i32 } [ %i.eb, %bb.an ], [ %i.dx, %bb.ak ]
  %i.ec = load ptr, ptr %4, align 16              ; 2 uses
  %.not.i.i.i63 = icmp eq ptr %i.ec, null
  br i1 %.not.i.i.i63, label %_ZN7QStringD2Ev.exit66, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i64

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i64:    ; preds = %.body
  %i.ed = atomicrmw sub ptr %i.ec, i32 1 acq_rel, align 4
  %.not.i.i65 = icmp eq i32 %i.ed, 1
  br i1 %.not.i.i65, label %bb.ao, label %_ZN7QStringD2Ev.exit66

bb.ao:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i64
  %i.ee = load ptr, ptr %4, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ee, i64 noundef 2, i64 noundef 8) #25
  br label %_ZN7QStringD2Ev.exit66

_ZN7QStringD2Ev.exit66:                           ; preds = %.body, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i64, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  resume { ptr, i32 } %eh.lpad-body

.thread92:                                        ; preds = %bb.r, %bb.p, %bb.s, %bb.v, %bb.u, %bb.t, %bb.l, %bb.o, %.split97.thread, %_ZN23WlanStatsTreeWidgetItem16isBroadcastBSSIDEPK8_address.exit, %_ZN23WlanStatsTreeWidgetItem16isBroadcastBSSIDEPK8_address.exit.thread77, %.split97, %_ZN7QStringD2Ev.exit, %bb.ah
  %.296 = phi i8 [ 1, %_ZN7QStringD2Ev.exit ], [ 1, %bb.ah ], [ 1, %.split97.thread ], [ 1, %.split97 ], [ %i.q, %_ZN23WlanStatsTreeWidgetItem16isBroadcastBSSIDEPK8_address.exit.thread77 ], [ %.1, %_ZN23WlanStatsTreeWidgetItem16isBroadcastBSSIDEPK8_address.exit ], [ %i.q, %bb.o ], [ %i.q, %bb.p ], [ %i.q, %bb.s ], [ %i.q, %bb.l ], [ %i.q, %bb.t ], [ %i.q, %bb.r ], [ %i.q, %bb.u ], [ %i.q, %bb.v ]
  %.4 = phi i1 [ true, %_ZN7QStringD2Ev.exit ], [ %.242, %bb.ah ], [ %.390.ph, %.split97.thread ], [ %.242, %.split97 ], [ false, %_ZN23WlanStatsTreeWidgetItem16isBroadcastBSSIDEPK8_address.exit.thread77 ], [ %.242, %_ZN23WlanStatsTreeWidgetItem16isBroadcastBSSIDEPK8_address.exit ], [ true, %bb.o ], [ true, %bb.p ], [ false, %bb.s ], [ true, %bb.l ], [ false, %bb.t ], [ false, %bb.r ], [ false, %bb.u ], [ false, %bb.v ]
  %5 = trunc nuw i8 %.296 to i1
  %6 = and i1 %.4, %5
  br label %bb.ap

bb.ap:                                            ; preds = %bb.v, %_ZN10QByteArrayD2Ev.exit, %.thread92
  %.0 = phi i1 [ true, %_ZN10QByteArrayD2Ev.exit ], [ %6, %.thread92 ], [ true, %bb.v ]
  ret i1 %.0
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN25WlanNetworkTreeWidgetItemC2EP11QTreeWidgetPK9_wlan_hdr(ptr noundef align 8 dereferenceable_or_null(256) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.QVariant, align 8            ; 7 uses
  %4 = alloca %class.QString, align 16            ; 7 uses
  %5 = alloca %class.QString, align 16            ; 21 uses
  %6 = alloca %class.QString, align 16            ; 8 uses
  %7 = alloca %class.QString, align 16            ; 8 uses
  tail call void @_ZN15QTreeWidgetItemC2EP11QTreeWidgeti(ptr noundef align 8 dereferenceable_or_null(200) %0, ptr noundef %1, i32 noundef 1000)
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV23WlanStatsTreeWidgetItem, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.a, i8 0, i64 44, i1 false)
  %i.c = getelementptr i8, ptr %0, i64 96         ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %i.b, i8 -1, i64 6, i1 false)
  %i.d = load i32, ptr %2, align 8
  %i.e = getelementptr i8, ptr %2, i64 4
  %i.f = load i32, ptr %i.e, align 4              ; 3 uses
  %i.g = getelementptr i8, ptr %2, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  store i32 %i.d, ptr %i.c, align 8
  %i.i = icmp eq i32 %i.f, 0
  br i1 %i.i, label %_ZL12copy_addressP8_addressPKS_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = sext i32 %i.f to i64
  %i.k = invoke ptr @wmem_memdup(ptr noundef null, ptr noundef %i.h, i64 noundef %i.j) #29
          to label %.noexc.i unwind label %bb.c   ; 2 uses

.noexc.i:                                         ; preds = %bb.b
  %i.l = getelementptr i8, ptr %0, i64 112
  store ptr %i.k, ptr %i.l, align 8
  %i.m = getelementptr i8, ptr %0, i64 104
  store ptr %i.k, ptr %i.m, align 8
  %i.n = getelementptr i8, ptr %0, i64 100
  store i32 %i.f, ptr %i.n, align 4
  br label %_ZL12copy_addressP8_addressPKS_.exit.i

_ZL12copy_addressP8_addressPKS_.exit.i:           ; preds = %.noexc.i, %bb.a
  %i.o = invoke i32 @address_type_get_by_name(ptr noundef nonnull @.str.44)
          to label %_ZN23WlanStatsTreeWidgetItemC2EP11QTreeWidgetPK8_addressi.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %_ZL12copy_addressP8_addressPKS_.exit.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

common.resume:                                    ; preds = %bb.aa, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.e ], [ %.pn.pn, %bb.aa ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.q, %bb.d ], [ %i.p, %bb.c ]
  tail call void @_ZN15QTreeWidgetItemD2Ev(ptr noundef align 8 dead_on_return(92) dereferenceable_or_null(200) %0) #25
  br label %common.resume

_ZN23WlanStatsTreeWidgetItemC2EP11QTreeWidgetPK8_addressi.exit: ; preds = %_ZL12copy_addressP8_addressPKS_.exit.i
  %i.r = getelementptr i8, ptr %0, i64 176
  store i32 %i.o, ptr %i.r, align 8
  %i.s = getelementptr i8, ptr %0, i64 180
  store i32 6, ptr %i.s, align 4
  %i.t = getelementptr i8, ptr %0, i64 184
  store ptr %i.b, ptr %i.t, align 8
  %i.u = getelementptr i8, ptr %0, i64 192
  store ptr null, ptr %i.u, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV25WlanNetworkTreeWidgetItem, i64 16), ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.v, i8 0, i64 48, i1 false)
  invoke void @_ZN25WlanNetworkTreeWidgetItem11updateBssidEPK9_wlan_hdr(ptr noundef align 8 dereferenceable_or_null(256) %0, ptr noundef %2)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %_ZN23WlanStatsTreeWidgetItemC2EP11QTreeWidgetPK8_addressi.exit
  %i.x = getelementptr i8, ptr %2, i64 74
  %i.y = load i8, ptr %i.x, align 2
  %i.z = zext i8 %i.y to i32
  %i.aa = getelementptr i8, ptr %0, i64 204
  store i32 %i.z, ptr %i.aa, align 4
  %i.ab = getelementptr i8, ptr %2, i64 76        ; 3 uses
  %i.ac = getelementptr i8, ptr %2, i64 75        ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = zext i8 %i.ad to i64
  %i.af = load ptr, ptr %i.v, align 8             ; 3 uses
  store ptr null, ptr %i.v, align 8
  %i.ag = getelementptr i8, ptr %0, i64 216
  store ptr %i.ab, ptr %i.ag, align 8
  %i.ah = getelementptr i8, ptr %0, i64 224
  store i64 %i.ae, ptr %i.ah, align 8
  %.not.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i, label %_ZN10QByteArrayD2Ev.exit, label %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i

_ZN17QArrayDataPointerIcE5derefEv.exit.i.i:       ; preds = %bb.f
  %i.ai = atomicrmw sub ptr %i.af, i32 1 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.ai, 1
  br i1 %.not.i.i, label %bb.g, label %_ZN10QByteArrayD2Ev.exit

bb.g:                                             ; preds = %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.af, i64 noundef 1, i64 noundef 8) #25
  br label %_ZN10QByteArrayD2Ev.exit

_ZN10QByteArrayD2Ev.exit:                         ; preds = %bb.f, %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) dereferenceable_or_null(24) %5, i8 0, i64 24, i1 false)
  %i.aj = load i8, ptr %i.ac, align 1             ; 2 uses
  switch i8 %i.aj, label %bb.p [
    i8 0, label %bb.h
    i8 1, label %bb.l
  ]

bb.h:                                             ; preds = %_ZN10QByteArrayD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNK11QMetaObject2trEPKcS1_i(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %6, ptr noundef nonnull align 8 dereferenceable_or_null(56) @_ZN7QObject16staticMetaObjectE, ptr noundef nonnull @.str.42, ptr noundef null, i32 noundef -1)
          to label %_ZN7QObject2trEPKcS1_i.exit unwind label %bb.k

_ZN7QObject2trEPKcS1_i.exit:                      ; preds = %bb.h
  %i.ak = load <2 x ptr>, ptr %6, align 16
  %i.al = load <2 x ptr>, ptr %5, align 16
  %i.am = load ptr, ptr %5, align 16              ; 2 uses
  store <2 x ptr> %i.ak, ptr %5, align 16
  store <2 x ptr> %i.al, ptr %6, align 16
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ap = load i64, ptr %i.an, align 16
  %i.aq = load i64, ptr %i.ao, align 16
  store i64 %i.aq, ptr %i.an, align 16
  store i64 %i.ap, ptr %i.ao, align 16
  %.not.i.i.i20 = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i20, label %_ZN7QStringD2Ev.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i:      ; preds = %_ZN7QObject2trEPKcS1_i.exit
  %i.ar = atomicrmw sub ptr %i.am, i32 1 acq_rel, align 4
  %.not.i.i21 = icmp eq i32 %i.ar, 1
  br i1 %.not.i.i21, label %bb.i, label %_ZN7QStringD2Ev.exit

bb.i:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i
  %i.as = load ptr, ptr %6, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.as, i64 noundef 2, i64 noundef 8) #25
  br label %_ZN7QStringD2Ev.exit

_ZN7QStringD2Ev.exit:                             ; preds = %_ZN7QObject2trEPKcS1_i.exit, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.u

bb.j:                                             ; preds = %_ZN23WlanStatsTreeWidgetItemC2EP11QTreeWidgetPK8_addressi.exit
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.k:                                             ; preds = %bb.h
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %.body

bb.l:                                             ; preds = %_ZN10QByteArrayD2Ev.exit
  %i.av = load i8, ptr %i.ab, align 4
  %i.aw = icmp eq i8 %i.av, 0
  br i1 %i.aw, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  invoke void @_ZNK11QMetaObject2trEPKcS1_i(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %7, ptr noundef nonnull align 8 dereferenceable_or_null(56) @_ZN7QObject16staticMetaObjectE, ptr noundef nonnull @.str.43, ptr noundef null, i32 noundef -1)
          to label %_ZN7QObject2trEPKcS1_i.exit22 unwind label %bb.o

_ZN7QObject2trEPKcS1_i.exit22:                    ; preds = %bb.m
  %i.ax = load <2 x ptr>, ptr %7, align 16
  %i.ay = load <2 x ptr>, ptr %5, align 16
  %i.az = load ptr, ptr %5, align 16              ; 2 uses
  store <2 x ptr> %i.ax, ptr %5, align 16
  store <2 x ptr> %i.ay, ptr %7, align 16
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bc = load i64, ptr %i.ba, align 16
  %i.bd = load i64, ptr %i.bb, align 16
  store i64 %i.bd, ptr %i.ba, align 16
  store i64 %i.bc, ptr %i.bb, align 16
  %.not.i.i.i23 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i23, label %_ZN7QStringD2Ev.exit26, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i24

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i24:    ; preds = %_ZN7QObject2trEPKcS1_i.exit22
  %i.be = atomicrmw sub ptr %i.az, i32 1 acq_rel, align 4
  %.not.i.i25 = icmp eq i32 %i.be, 1
  br i1 %.not.i.i25, label %bb.n, label %_ZN7QStringD2Ev.exit26

bb.n:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i24
  %i.bf = load ptr, ptr %7, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bf, i64 noundef 2, i64 noundef 8) #25
end_hunk_0
