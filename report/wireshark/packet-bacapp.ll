inline.NumInlined: 1061
inline.NumDeleted: 159
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@fAbstractSyntaxNType:bb.a
  %i.ke = call fastcc i32 @fTagHeaderTree(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %.0834, ptr noundef nonnull %i.hp, ptr noundef nonnull %i.hq, ptr noundef nonnull %i.hr)
  %i.kf = add i32 %i.ke, %.0834
  br label %fDestination.exit.thread

bb.ao:                                            ; preds = %bb.am
  %i.kg = call fastcc i32 @fContextTaggedValue(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %.0834)
  br label %fDestination.exit.thread

bb.ap:                                            ; preds = %bb.aj
  %i.kh = call fastcc i32 @fApplicationTypesEnumeratedSplit(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %.0834, ptr noundef nonnull %i.hs, ptr noundef null, i32 noundef 0)
  br label %fDestination.exit.thread

bb.aq:                                            ; preds = %bb.g
  %i.ki = call fastcc i32 @fEventType(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %.0834)
  br label %fDestination.exit.thread

bb.ar:                                            ; preds = %bb.g
  %i.kj = load i32, ptr @object_type, align 4
  switch i32 %i.kj, label %bb.aw [
    i32 21, label %bb.as
    i32 22, label %bb.as
    i32 30, label %bb.at
    i32 31, label %bb.au
    i32 36, label %bb.av
  ]

bb.as:                                            ; preds = %bb.ar, %bb.ar
  %i.kk = call fastcc i32 @fApplicationTypesEnumeratedSplit(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %.0834, ptr noundef nonnull %i.hs, ptr noundef nonnull @BACnetLifeSafetyState, i32 noundef 0)
  br label %fDestination.exit.thread

bb.at:                                            ; preds = %bb.ar
  %i.kl = call fastcc i32 @fApplicationTypesEnumeratedSplit(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %.0834, ptr noundef nonnull %i.hs, ptr noundef nonnull @BACnetDoorAlarmState, i32 noundef 0)
  br label %fDestination.exit.thread

bb.au:                                            ; preds = %bb.ar
  %i.km = call fastcc i32 @fApplicationTypesEnumeratedSplit(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %.0834, ptr noundef nonnull %i.hs, ptr noundef nonnull @BACnetTimerState, i32 noundef 0)
  br label %fDestination.exit.thread

bb.av:                                            ; preds = %bb.ar
  %i.kn = call fastcc i32 @fApplicationTypesEnumeratedSplit(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %.0834, ptr noundef nonnull %i.hs, ptr noundef nonnull @BACnetAccessZoneOccupancyState, i32 noundef 0)
  br label %fDestination.exit.thread

bb.aw:                                            ; preds = %bb.ar
  %.not = icmp eq i8 %i.if, 0
  br i1 %.not, label %bb.bc, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ko = icmp eq i8 %i.ig, 6
  br i1 %i.ko, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.kp = add i32 %.0833, 1
  %i.kq = call fastcc i32 @fTagHeaderTree(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %.0834, ptr noundef nonnull %i.hp, ptr noundef nonnull %i.hq, ptr noundef nonnull %i.hr)
  %i.kr = add i32 %i.kq, %.0834
  br label %fDestination.exit.thread

bb.az:                                            ; preds = %bb.ax
  br i1 %i.ih, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.ks = add i32 %.0833, -1
  %i.kt = call fastcc i32 @fTagHeaderTree(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %.0834, ptr noundef nonnull %i.hp, ptr noundef nonnull %i.hq, ptr noundef nonnull %i.hr)
  %i.ku = add i32 %i.kt, %.0834
  br label %fDestination.exit.thread

bb.bb:                                            ; preds = %bb.az
  %i.kv = call fastcc i32 @fContextTaggedValue(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %.0834)
  br label %fDestination.exit.thread

bb.bc:                                            ; preds = %bb.aw
  %i.kw = call fastcc i32 @fApplicationTypesEnumeratedSplit(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %.0834, ptr noundef nonnull %i.hs, ptr noundef null, i32 noundef 0)
  br label %fDestination.exit.thread

bb.bd:                                            ; preds = %bb.g, %bb.g
  %i.kx = load i32, ptr @hf_bacapp_device_identifier, align 4
  %i.ky = call fastcc i32 @fObjectIdentifier(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %.0834, i32 noundef %i.kx)
  %i.kz = call fastcc i32 @fAddress(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %i.ky)
  br label %fDestination.exit.thread

bb.be:                                            ; preds = %bb.g
  %i.la = call fastcc i32 @fApplicationTypesEnumeratedSplit(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %.0834, ptr noundef nonnull %i.hs, ptr noundef nonnull @BACnetLimitEnable, i32 noundef 0)
  br label %fDestination.exit.thread

bb.bf:                                            ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hj) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hk) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hl) #6
  %i.lb = load ptr, ptr %i.ic, align 8
  call void @col_set_writable(ptr noundef %i.lb, i32 noundef 25, i1 noundef zeroext false)
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bi, %bb.bf
  %.0.i853 = phi i32 [ %.0834, %bb.bf ], [ %i.lh, %bb.bi ] ; 6 uses
  %i.lc = call i32 @tvb_reported_length_remaining(ptr noundef nonnull %0, i32 noundef %.0.i853)
  %.not.i854 = icmp eq i32 %i.lc, 0
  br i1 %.not.i854, label %fLOPR.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ld = call fastcc range(i32 1, 8) i32 @fTagHeaderTree(ptr noundef nonnull %0, ptr noundef %1, ptr noundef null, i32 noundef %.0.i853, ptr noundef nonnull %i.hj, ptr noundef nonnull %i.hk, ptr noundef nonnull %i.hl) ; 0 uses
  %i.le = load i8, ptr %i.hk, align 1
  %i.lf = and i8 %i.le, 7
  %i.lg = icmp eq i8 %i.lf, 7
  br i1 %i.lg, label %fLOPR.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.lh = call fastcc i32 @fDeviceObjectPropertyReference(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %.0.i853) ; 3 uses
  %.not15.i = icmp ugt i32 %i.lh, %.0.i853
  br i1 %.not15.i, label %bb.bg, label %fLOPR.exit, !llvm.loop !51

fLOPR.exit:                                       ; preds = %bb.bg, %bb.bh, %bb.bi
  %.1.i855 = phi i32 [ %.0.i853, %bb.bh ], [ %i.lh, %bb.bi ], [ %.0.i853, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hl) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hk) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hj) #6
  br label %fDestination.exit.thread

bb.bj:                                            ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hh) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hi) #6
  %i.li = call fastcc range(i32 1, 8) i32 @fTagHeaderTree(ptr noundef nonnull %0, ptr noundef %1, ptr noundef null, i32 noundef %.0834, ptr noundef nonnull %i.hh, ptr noundef nonnull %i.hi, ptr noundef nonnull %i.hg)
  %i.lj = add i32 %i.li, %.0834                   ; 4 uses
  %i.lk = load i32, ptr %i.hg, align 4            ; 4 uses
  %.not.i.i = icmp eq i32 %i.lk, 0
  br i1 %.not.i.i, label %fSessionKey.exit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ll = load ptr, ptr %i.ib, align 8
  %i.lm = call ptr @tvb_bytes_to_str(ptr noundef %i.ll, ptr noundef nonnull %0, i32 noundef %i.lj, i32 noundef %i.lk)
  %i.ln = load i32, ptr @ett_bacapp_tag, align 4
  %i.lo = call ptr (ptr, ptr, i32, i32, i32, ptr, ptr, ...) @proto_tree_add_subtree_format(ptr noundef %2, ptr noundef nonnull %0, i32 noundef %i.lj, i32 noundef %i.lk, i32 noundef %i.ln, ptr noundef null, ptr noundef nonnull @.str.312, ptr noundef nonnull @.str.1444, ptr noundef %i.lm)
  %i.lp = add i32 %i.lk, %i.lj
  br label %fSessionKey.exit

fSessionKey.exit:                                 ; preds = %bb.bj, %bb.bk
  %.019.i.i = phi i32 [ %i.lp, %bb.bk ], [ %i.lj, %bb.bj ]
  %.0.i.i = phi ptr [ %i.lo, %bb.bk ], [ %2, %bb.bj ]
  %i.lq = call fastcc i32 @fTagHeaderTree(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %.0.i.i, i32 noundef %.0834, ptr noundef nonnull %i.hh, ptr noundef nonnull %i.hi, ptr noundef nonnull %i.hg) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hi) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hh) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hg)
  %i.lr = call fastcc i32 @fAddress(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %.019.i.i)
  br label %fDestination.exit.thread

bb.bl:                                            ; preds = %bb.g
  %i.ls = call fastcc i32 @fCharacterStringBase(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %.0834, ptr noundef nonnull @.str.22, i1 noundef zeroext false, i1 noundef zeroext true)
  br label %fDestination.exit.thread

bb.bm:                                            ; preds = %bb.g, %bb.g
  %i.lt = call fastcc i32 @fApplicationTypesEnumeratedSplit(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %.0834, ptr noundef nonnull %i.hs, ptr noundef nonnull @BACnetObjectType, i32 noundef 128)
  br label %fDestination.exit.thread

bb.bn:                                            ; preds = %bb.g
  %i.lu = call fastcc i32 @fApplicationTypesEnumeratedSplit(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %.0834, ptr noundef nonnull %i.hs, ptr noundef nonnull @BACnetServicesSupported, i32 noundef 0)
  br label %fDestination.exit.thread

bb.bo:                                            ; preds = %bb.g
  %i.lv = call i32 @tvb_reported_length_remaining(ptr noundef nonnull %0, i32 noundef %.0834)
  %.not.i856 = icmp eq i32 %i.lv, 0
  br i1 %.not.i856, label %fDestination.exit.thread.thread, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.lw = call fastcc i32 @fApplicationTypesEnumeratedSplit(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %.0834, ptr noundef nonnull @.str.1455, ptr noundef nonnull @BACnetDaysOfWeek, i32 noundef 0)
  %i.lx = call fastcc i32 @fTime(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %i.lw, ptr noundef nonnull @.str.1456)
  %i.ly = call fastcc i32 @fTime(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %i.lx, ptr noundef nonnull @.str.1457)
  %i.lz = call fastcc i32 @fRecipient(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %i.ly)
  %i.ma = call fastcc i32 @fProcessId(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %i.lz)
  %i.mb = call fastcc i32 @fApplicationTypesEnumeratedSplit(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %i.ma, ptr noundef nonnull @.str.1458, ptr noundef null, i32 noundef 0)
  %i.mc = call fastcc i32 @fBitStringTagVSBase(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %i.mb, ptr noundef nonnull @.str.1459, ptr noundef nonnull @BACnetEventTransitionBits, i1 noundef zeroext false)
  br label %fDestination.exit.thread

bb.bq:                                            ; preds = %bb.g
  %i.md = call fastcc i32 @fApplicationTypesEnumeratedSplit(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %.0834, ptr noundef nonnull %i.hs, ptr noundef nonnull @BACnetSegmentation, i32 noundef 0)
  br label %fDestination.exit.thread

bb.br:                                            ; preds = %bb.g
  %i.me = call fastcc i32 @fApplicationTypesEnumeratedSplit(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %.0834, ptr noundef nonnull %i.hs, ptr noundef nonnull @BACnetStatusFlags, i32 noundef 0)
  br label %fDestination.exit.thread

bb.bs:                                            ; preds = %bb.g
  %i.mf = call fastcc i32 @fApplicationTypesEnumeratedSplit(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %.0834, ptr noundef nonnull %i.hs, ptr noundef nonnull @BACnetDeviceStatus, i32 noundef 0)
  br label %fDestination.exit.thread

bb.bt:                                            ; preds = %bb.g, %bb.g
  %i.mg = call fastcc i32 @fApplicationTypesEnumeratedSplit(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %.0834, ptr noundef nonnull %i.hs, ptr noundef nonnull @BACnetEngineeringUnits, i32 noundef 0)
  br label %fDestination.exit.thread

bb.bu:                                            ; preds = %bb.g
  %i.mh = load i32, ptr @propertyArrayIndex, align 4 ; 3 uses
  %i.mi = icmp eq i32 %i.mh, 0
  br i1 %i.mi, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.mj = call fastcc i32 @fApplicationTypesEnumeratedSplit(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %.0834, ptr noundef nonnull %i.hs, ptr noundef null, i32 noundef 0)
  br label %fDestination.exit.thread

bb.bw:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hd) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.he) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hf) #6
  %4 = icmp sgt i32 %i.mh, 0
  %5 = trunc i32 %i.mh to i8
  %spec.select.i = select i1 %4, i8 %5, i8 1
  br label %bb.bx

bb.bx:                                            ; preds = %bb.ch, %bb.bw
  %.076.i.a = phi i32 [ %.0834, %bb.bw ], [ %.177.i, %bb.ch ] ; 12 uses
  %.1.i858 = phi i8 [ %spec.select.i, %bb.bw ], [ %6, %bb.ch ] ; 2 uses
  %i.mk = call i32 @tvb_reported_length_remaining(ptr noundef nonnull %0, i32 noundef %.076.i.a), !inline_history !52
  %.not.i859 = icmp eq i32 %i.mk, 0
  br i1 %.not.i859, label %fPriorityArray.exit, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ml = load ptr, ptr %i.ib, align 8            ; 2 uses
  %i.mm = call ptr @val_to_str(ptr noundef %i.ml, i32 noundef 87, ptr noundef nonnull @BACnetPropertyIdentifier, ptr noundef nonnull @ASHRAE_Reserved_Fmt)
  %6 = add i8 %.1.i858, 1                         ; 2 uses
  %7 = sext i8 %.1.i858 to i32
  %i.mn = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef %i.ml, ptr noundef nonnull @.str.1744, ptr noundef %i.mm, i32 noundef %7), !inline_history !52 ; 2 uses
  %i.mo = call fastcc range(i32 1, 8) i32 @fTagHeaderTree(ptr noundef nonnull %0, ptr noundef %1, ptr noundef null, i32 noundef %.076.i.a, ptr noundef nonnull %i.hd, ptr noundef nonnull %i.he, ptr noundef nonnull %i.hf) ; 0 uses
  %i.mp = load i8, ptr %i.he, align 1             ; 2 uses
  %i.mq = and i8 %i.mp, 8
  %.not1098 = icmp eq i8 %i.mq, 0
  br i1 %.not1098, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.mr = call fastcc i32 @fApplicationTypesEnumeratedSplit(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %.076.i.a, ptr noundef %i.mn, ptr noundef null, i32 noundef 0)
  br label %bb.ch

bb.ca:                                            ; preds = %bb.by
  %i.ms = and i8 %i.mp, 7
  %i.mt = icmp eq i8 %i.ms, 6                     ; 3 uses
  %i.mu = load i8, ptr %i.hd, align 1             ; 3 uses
  %i.mv = icmp eq i8 %i.mu, 0
  %or.cond.i = select i1 %i.mt, i1 %i.mv, i1 false
  br i1 %or.cond.i, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.mw = call fastcc i32 @fTagHeaderTree(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %.076.i.a, ptr noundef nonnull %i.hd, ptr noundef nonnull %i.he, ptr noundef nonnull %i.hf), !inline_history !52
  %i.mx = add i32 %i.mw, %.076.i.a
  %i.my = call fastcc i32 @fAbstractSyntaxNType(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %i.mx), !inline_history !52 ; 2 uses
  %i.mz = call fastcc i32 @fTagHeaderTree(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %i.my, ptr noundef nonnull %i.hd, ptr noundef nonnull %i.he, ptr noundef nonnull %i.hf), !inline_history !52
  %i.na = add i32 %i.mz, %i.my
  br label %bb.ch

bb.cc:                                            ; preds = %bb.ca
  %i.nb = icmp eq i8 %i.mu, 1
  %or.cond5.i = select i1 %i.mt, i1 %i.nb, i1 false
  br i1 %or.cond5.i, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.nc = call fastcc i32 @fTagHeaderTree(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %.076.i.a, ptr noundef nonnull %i.hd, ptr noundef nonnull %i.he, ptr noundef nonnull %i.hf), !inline_history !52
  %i.nd = add i32 %i.nc, %.076.i.a
  %i.ne = call fastcc i32 @fDate(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %i.nd, ptr noundef nonnull @.str.173), !inline_history !52
  %i.nf = call fastcc i32 @fTime(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %i.ne, ptr noundef nonnull @.str.174), !inline_history !52 ; 2 uses
  %i.ng = call fastcc i32 @fTagHeaderTree(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %i.nf, ptr noundef nonnull %i.hd, ptr noundef nonnull %i.he, ptr noundef nonnull %i.hf), !inline_history !52
  %i.nh = add i32 %i.ng, %i.nf
  br label %bb.ch

bb.ce:                                            ; preds = %bb.cc
  %i.ni = icmp eq i8 %i.mu, 2
  %or.cond8.i = select i1 %i.mt, i1 %i.ni, i1 false
  br i1 %or.cond8.i, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.nj = call fastcc i32 @fTagHeaderTree(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %.076.i.a, ptr noundef nonnull %i.hd, ptr noundef nonnull %i.he, ptr noundef nonnull %i.hf), !inline_history !52
  %i.nk = add i32 %i.nj, %.076.i.a
  %i.nl = call fastcc i32 @fXyColor(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %i.nk, ptr noundef nonnull @.str.1745), !inline_history !52 ; 2 uses
  %i.nm = call fastcc i32 @fTagHeaderTree(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %i.nl, ptr noundef nonnull %i.hd, ptr noundef nonnull %i.he, ptr noundef nonnull %i.hf), !inline_history !52
  %i.nn = add i32 %i.nm, %i.nl
  br label %bb.ch

bb.cg:                                            ; preds = %bb.ce
  %i.no = call fastcc i32 @fApplicationTypesEnumeratedSplit(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %.076.i.a, ptr noundef %i.mn, ptr noundef null, i32 noundef 0)
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf, %bb.cd, %bb.cb, %bb.bz
  %.177.i = phi i32 [ %i.na, %bb.cb ], [ %i.nh, %bb.cd ], [ %i.nn, %bb.cf ], [ %i.no, %bb.cg ], [ %i.mr, %bb.bz ] ; 3 uses
  %i.np = icmp slt i8 %6, 17
  %.not79.i = icmp ugt i32 %.177.i, %.076.i.a
  %or.cond80.i = select i1 %i.np, i1 %.not79.i, i1 false
  br i1 %or.cond80.i, label %bb.bx, label %fPriorityArray.exit, !llvm.loop !53

fPriorityArray.exit:                              ; preds = %bb.bx, %bb.ch
  %.2.i860 = phi i32 [ %.177.i, %bb.ch ], [ %.076.i.a, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hf) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.he) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hd) #6
  br label %fDestination.exit.thread

bb.ci:                                            ; preds = %bb.g
  %i.nq = load i32, ptr @object_type, align 4
  %i.nr = icmp ult i32 %i.nq, 128
  br i1 %i.nr, label %bb.cj, label %fDestination.exit.thread.thread

bb.cj:                                            ; preds = %bb.ci
  %i.ns = load i32, ptr @propertyArrayIndex, align 4
  %i.nt = icmp eq i32 %i.ns, 0
  br i1 %i.nt, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.nu = call fastcc i32 @fApplicationTypesEnumeratedSplit(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %.0834, ptr noundef nonnull %i.hs, ptr noundef null, i32 noundef 0)
  br label %fDestination.exit.thread

bb.cl:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #6
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cz, %bb.cl
  %.0.i = phi i32 [ %.0834, %bb.cl ], [ %.1.i1527, %bb.cz ] ; 14 uses
  %i.nv = call i32 @tvb_reported_length_remaining(ptr noundef nonnull %0, i32 noundef %.0.i)
  %.not.i1526 = icmp eq i32 %i.nv, 0
  br i1 %.not.i1526, label %fSpecialEvent.exit, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.nw = call fastcc range(i32 1, 8) i32 @fTagHeaderTree(ptr noundef nonnull %0, ptr noundef %1, ptr noundef null, i32 noundef %.0.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l) ; 0 uses
  %i.nx = load i8, ptr %i.k, align 1
  %i.ny = and i8 %i.nx, 7                         ; 3 uses
  %i.nz = icmp eq i8 %i.ny, 7
  br i1 %i.nz, label %fSpecialEvent.exit, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.oa = load i8, ptr %i.j, align 1
  switch i8 %i.oa, label %fSpecialEvent.exit [
    i8 0, label %bb.cp
    i8 1, label %bb.cr
    i8 2, label %bb.cs
    i8 3, label %bb.cy
  ]

bb.cp:                                            ; preds = %bb.co
  %i.ob = icmp eq i8 %i.ny, 6
  br i1 %i.ob, label %bb.cq, label %fSpecialEvent.exit

bb.cq:                                            ; preds = %bb.cp
  %i.oc = call fastcc i32 @fTagHeaderTree(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %.0.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l)
  %i.od = add i32 %i.oc, %.0.i
  %i.oe = call fastcc i32 @fCalendarEntry(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %i.od) ; 2 uses
  %i.of = call fastcc i32 @fTagHeaderTree(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %i.oe, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l)
  %i.og = add i32 %i.of, %i.oe
  br label %bb.cz

bb.cr:                                            ; preds = %bb.co
  %i.oh = load i32, ptr @hf_bacapp_object_identifier, align 4
  %i.oi = call fastcc i32 @fObjectIdentifier(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %.0.i, i32 noundef %i.oh)
  br label %bb.cz

bb.cs:                                            ; preds = %bb.co
  %i.oj = icmp eq i8 %i.ny, 6
  br i1 %i.oj, label %bb.ct, label %bb.cx

bb.ct:                                            ; preds = %bb.cs
  %i.ok = call fastcc i32 @fTagHeaderTree(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %.0.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l)
  %i.ol = add i32 %i.ok, %.0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #6
  br label %bb.cu

bb.cu:                                            ; preds = %bb.cw, %bb.ct
  %.0.i.i1528 = phi i32 [ %i.ol, %bb.ct ], [ %i.os, %bb.cw ] ; 6 uses
  %i.om = call i32 @tvb_reported_length_remaining(ptr noundef nonnull %0, i32 noundef %.0.i.i1528)
  %.not.i.i1529 = icmp eq i32 %i.om, 0
  br i1 %.not.i.i1529, label %fTimeValue.exit.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.on = call fastcc range(i32 1, 8) i32 @fTagHeaderTree(ptr noundef nonnull %0, ptr noundef %1, ptr noundef null, i32 noundef %.0.i.i1528, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i) ; 0 uses
  %i.oo = load i8, ptr %i.h, align 1
  %i.op = and i8 %i.oo, 7
  %i.oq = icmp eq i8 %i.op, 7
  br i1 %i.oq, label %fTimeValue.exit.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.or = call fastcc i32 @fTime(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %.0.i.i1528, ptr noundef nonnull @.str.174)
  %i.os = call fastcc i32 @fApplicationTypesEnumeratedSplit(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %i.or, ptr noundef nonnull @.str.1747, ptr noundef null, i32 noundef 0) ; 3 uses
  %.not21.i.i = icmp ugt i32 %i.os, %.0.i.i1528
  br i1 %.not21.i.i, label %bb.cu, label %fTimeValue.exit.i, !llvm.loop !54

fTimeValue.exit.i:                                ; preds = %bb.cw, %bb.cv, %bb.cu
  %.018.i.i1530 = phi i32 [ %.0.i.i1528, %bb.cv ], [ %i.os, %bb.cw ], [ %.0.i.i1528, %bb.cu ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #6
  %i.ot = call fastcc i32 @fTagHeaderTree(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %.018.i.i1530, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l)
  %i.ou = add i32 %i.ot, %.018.i.i1530
  br label %bb.cz

bb.cx:                                            ; preds = %bb.cs
  %i.ov = call ptr @expert_add_info(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @ei_bacapp_bad_tag) ; 0 uses
  br label %fSpecialEvent.exit

bb.cy:                                            ; preds = %bb.co
  %i.ow = call fastcc i32 @fUnsignedTag(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %.0.i, ptr noundef nonnull @.str.1746)
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %fTimeValue.exit.i, %bb.cr, %bb.cq
  %.1.i1527 = phi i32 [ %i.og, %bb.cq ], [ %i.ow, %bb.cy ], [ %i.oi, %bb.cr ], [ %i.ou, %fTimeValue.exit.i ] ; 3 uses
  %.not49.i = icmp ugt i32 %.1.i1527, %.0.i
  br i1 %.not49.i, label %bb.cm, label %fSpecialEvent.exit, !llvm.loop !55

fSpecialEvent.exit:                               ; preds = %bb.cm, %bb.cn, %bb.co, %bb.cp, %bb.cz, %bb.cx
  %.048.i = phi i32 [ %.0.i, %bb.cx ], [ %.0.i, %bb.co ], [ %.0.i, %bb.cn ], [ %.1.i1527, %bb.cz ], [ %.0.i, %bb.cm ], [ %.0.i, %bb.cp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #6
  br label %fDestination.exit.thread

bb.da:                                            ; preds = %bb.g, %bb.g, %bb.g, %bb.g, %bb.g
  %i.ox = call fastcc i32 @fDeviceObjectPropertyReference(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %.0834)
  br label %fDestination.exit.thread

bb.db:                                            ; preds = %bb.g
  %i.oy = call fastcc i32 @fDeviceObjectPropertyReference(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %.0834)
  br label %fDestination.exit.thread

bb.dc:                                            ; preds = %bb.g
  %i.oz = call fastcc i32 @fTagHeaderTree(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %.0834, ptr noundef nonnull %i.hp, ptr noundef nonnull %i.hq, ptr noundef nonnull %i.hr)
  %i.pa = add i32 %i.oz, %.0834
  %i.pb = call fastcc i32 @fBACnetObjectPropertyReference(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %i.pa) ; 2 uses
  %i.pc = call fastcc i32 @fTagHeaderTree(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %i.pb, ptr noundef nonnull %i.hp, ptr noundef nonnull %i.hq, ptr noundef nonnull %i.hr)
  %i.pd = add i32 %i.pc, %i.pb
  br label %fDestination.exit.thread

bb.dd:                                            ; preds = %bb.g
  %i.pe = load i32, ptr @object_type, align 4
  %i.pf = icmp ult i32 %i.pe, 128
  br i1 %i.pf, label %bb.de, label %fDestination.exit.thread.thread

bb.de:                                            ; preds = %bb.dd
  %i.pg = load i32, ptr @propertyArrayIndex, align 4 ; 2 uses
  %i.ph = icmp eq i32 %i.pg, 0
  br i1 %i.ph, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.pi = call fastcc i32 @fApplicationTypesEnumeratedSplit(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %.0834, ptr noundef nonnull %i.hs, ptr noundef null, i32 noundef 0)
  br label %fDestination.exit.thread

bb.dg:                                            ; preds = %bb.de
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  %spec.select.i1531 = call i32 @llvm.smax.i32(i32 %i.pg, i32 1)
  br label %bb.dh

bb.dh:                                            ; preds = %fDailySchedule.exit.i, %bb.dg
  %.020.i = phi i32 [ %.0834, %bb.dg ], [ %.036.i.i, %fDailySchedule.exit.i ] ; 11 uses
  %.1.i1532 = phi i32 [ %spec.select.i1531, %bb.dg ], [ %i.pq, %fDailySchedule.exit.i ] ; 2 uses
  %i.pj = call i32 @tvb_reported_length_remaining(ptr noundef nonnull %0, i32 noundef %.020.i)
  %.not.i1533 = icmp eq i32 %i.pj, 0
  br i1 %.not.i1533, label %fWeeklySchedule.exit, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.pk = call fastcc range(i32 1, 8) i32 @fTagHeaderTree(ptr noundef nonnull %0, ptr noundef %1, ptr noundef null, i32 noundef %.020.i, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) ; 0 uses
  %i.pl = load i8, ptr %i.e, align 1
  %i.pm = and i8 %i.pl, 7
  %i.pn = icmp eq i8 %i.pm, 7
  br i1 %i.pn, label %fWeeklySchedule.exit, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.po = load i32, ptr @ett_bacapp_value, align 4
  %i.pp = load ptr, ptr %i.ib, align 8
  %i.pq = add i32 %.1.i1532, 1
  %i.pr = call ptr @val_to_str(ptr noundef %i.pp, i32 noundef %.1.i1532, ptr noundef nonnull @day_of_week, ptr noundef nonnull @.str.1749)
  %i.ps = call ptr @proto_tree_add_subtree(ptr noundef %2, ptr noundef nonnull %0, i32 noundef %.020.i, i32 noundef 0, i32 noundef %i.po, ptr noundef null, ptr noundef %i.pr) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.pt = call fastcc range(i32 1, 8) i32 @fTagHeaderTree(ptr noundef nonnull %0, ptr noundef %1, ptr noundef null, i32 noundef %.020.i, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) ; 0 uses
  %i.pu = load i8, ptr %i.b, align 1
  %i.pv = and i8 %i.pu, 7
  %i.pw = icmp eq i8 %i.pv, 6
  %i.px = load i8, ptr %i.a, align 1
  %i.py = icmp eq i8 %i.px, 0                     ; 2 uses
  %or.cond.i.i = select i1 %i.pw, i1 %i.py, i1 false
  br i1 %or.cond.i.i, label %bb.dk, label %bb.dx

bb.dk:                                            ; preds = %bb.dj
  %i.pz = call fastcc i32 @fTagHeaderTree(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %i.ps, i32 noundef %.020.i, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c)
  %i.qa = add i32 %i.pz, %.020.i
  br label %bb.dl

bb.dl:                                            ; preds = %fTimeValue.exit.i.i, %bb.dk
  %.0.i.i1535 = phi i32 [ %i.qa, %bb.dk ], [ %.018.i.i.i, %fTimeValue.exit.i.i ] ; 6 uses
end_hunk_0
