Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RegisterPressure?download=true
inline.NumInlined: 1515
inline.NumDeleted: 679
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4llvm18RegPressureTracker11closeBottomEv:bb.a
bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @_ZNK4llvm18RegPressureTracker11getCurrSlotEv(ptr noundef nonnull align 8 dereferenceable(352) %0)
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !250, !nonnull !239, !align !240
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 320
  store i64 %i.e, ptr %i.g, align 8, !tbaa !260
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !250, !nonnull !239, !align !240
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 320
  %i.k = load i64, ptr %i.h, align 8
  store i64 %i.k, ptr %i.j, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !250, !nonnull !239, !align !240 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !254  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 180
  %i.r = load i32, ptr %i.q, align 4, !tbaa !417
  %i.s = icmp ugt i32 %i.p, %i.r
  br i1 %i.s, label %bb.e, label %_ZN4llvm15SmallVectorImplINS_14VRegMaskOrUnitEE7reserveEm.exit

bb.e:                                             ; preds = %bb.d
  %i.t = zext i32 %i.p to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 168
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 184
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull %i.v, i64 noundef %i.t, i64 noundef 16) #19
  %.pre = load ptr, ptr %i.l, align 8, !tbaa !250
  %.pre1 = load i32, ptr %i.o, align 8, !tbaa !254
  br label %_ZN4llvm15SmallVectorImplINS_14VRegMaskOrUnitEE7reserveEm.exit

_ZN4llvm15SmallVectorImplINS_14VRegMaskOrUnitEE7reserveEm.exit: ; preds = %bb.d, %bb.e
  %i.w = phi i32 [ %i.p, %bb.d ], [ %.pre1, %bb.e ] ; 2 uses
  %i.x = phi ptr [ %i.m, %bb.d ], [ %.pre, %bb.e ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 168 ; 2 uses
  %i.z = load ptr, ptr %i.n, align 8, !tbaa !244  ; 2 uses
  %i.aa = zext i32 %i.w to i64
  %.idx.i = shl nuw nsw i64 %i.aa, 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %.idx.i
  %.not13.i = icmp eq i32 %i.w, 0
  br i1 %.not13.i, label %_ZNK4llvm10LiveRegSet8appendToERNS_15SmallVectorImplINS_14VRegMaskOrUnitEEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4llvm15SmallVectorImplINS_14VRegMaskOrUnitEE7reserveEm.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 176 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 180
  br label %bb.f

bb.f:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_14VRegMaskOrUnitEE12emplace_backIJRNS_13VirtRegOrUnitERKNS_11LaneBitmaskEEEERS1_DpOT_.exit.i, %.lr.ph.i
  %.014.i = phi ptr [ %i.z, %.lr.ph.i ], [ %i.au, %_ZN4llvm15SmallVectorImplINS_14VRegMaskOrUnitEE12emplace_backIJRNS_13VirtRegOrUnitERKNS_11LaneBitmaskEEEERS1_DpOT_.exit.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %i.af = load i32, ptr %.014.i, align 8, !tbaa !418 ; 3 uses
  %i.ag = load i32, ptr %i.ac, align 8, !tbaa !281 ; 2 uses
  %.not.i.i = icmp ult i32 %i.af, %i.ag
  %i.ah = sub nuw i32 %i.af, %i.ag
  %i.ai = or i32 %i.ah, -2147483648
  %.sroa.0.0.i.i = select i1 %.not.i.i, i32 %i.af, i32 %i.ai ; 2 uses
  store i32 %.sroa.0.0.i.i, ptr %1, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %.014.i, i64 8 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !421 ; 2 uses
  %.not12.i = icmp eq i64 %i.ak, 0
  br i1 %.not12.i, label %_ZN4llvm15SmallVectorImplINS_14VRegMaskOrUnitEE12emplace_backIJRNS_13VirtRegOrUnitERKNS_11LaneBitmaskEEEERS1_DpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = load i32, ptr %i.ad, align 8, !tbaa !254 ; 2 uses
  %i.am = load i32, ptr %i.ae, align 4, !tbaa !417
  %.not.i11.i = icmp ult i32 %i.al, %i.am
  br i1 %.not.i11.i, label %bb.i, label %bb.h, !prof !295

bb.h:                                             ; preds = %bb.g
  %i.an = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseINS_14VRegMaskOrUnitELb1EE18growAndEmplaceBackIJRNS_13VirtRegOrUnitERKNS_11LaneBitmaskEEEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.aj) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplINS_14VRegMaskOrUnitEE12emplace_backIJRNS_13VirtRegOrUnitERKNS_11LaneBitmaskEEEERS1_DpOT_.exit.i

bb.i:                                             ; preds = %bb.g
  %i.ao = zext i32 %i.al to i64
  %i.ap = load ptr, ptr %i.y, align 8, !tbaa !244
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %i.ao ; 2 uses
  store i32 %.sroa.0.0.i.i, ptr %i.aq, align 8, !tbaa !248
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i64 %i.ak, ptr %i.ar, align 8, !tbaa !422
  %i.as = load i32, ptr %i.ad, align 8, !tbaa !254
  %i.at = add i32 %i.as, 1
  store i32 %i.at, ptr %i.ad, align 8, !tbaa !254
  br label %_ZN4llvm15SmallVectorImplINS_14VRegMaskOrUnitEE12emplace_backIJRNS_13VirtRegOrUnitERKNS_11LaneBitmaskEEEERS1_DpOT_.exit.i

_ZN4llvm15SmallVectorImplINS_14VRegMaskOrUnitEE12emplace_backIJRNS_13VirtRegOrUnitERKNS_11LaneBitmaskEEEERS1_DpOT_.exit.i: ; preds = %bb.i, %bb.h, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  %i.au = getelementptr inbounds nuw i8, ptr %.014.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.au, %i.ab
  br i1 %.not.i, label %_ZNK4llvm10LiveRegSet8appendToERNS_15SmallVectorImplINS_14VRegMaskOrUnitEEE.exit, label %bb.f

_ZNK4llvm10LiveRegSet8appendToERNS_15SmallVectorImplINS_14VRegMaskOrUnitEEE.exit: ; preds = %_ZN4llvm15SmallVectorImplINS_14VRegMaskOrUnitEE12emplace_backIJRNS_13VirtRegOrUnitERKNS_11LaneBitmaskEEEERS1_DpOT_.exit.i, %_ZN4llvm15SmallVectorImplINS_14VRegMaskOrUnitEE7reserveEm.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm18RegPressureTracker11closeRegionEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(352) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i8, ptr %i.a, align 8, !tbaa !289, !range !290, !noundef !239
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !250, !nonnull !239, !align !240 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 312 ; 2 uses
  %.phi.trans.insert14 = getelementptr inbounds nuw i8, ptr %i.e, i64 320 ; 2 uses
  br i1 %i.c, label %.split, label %_ZNK4llvm18RegPressureTracker11isTopClosedEv.exit

.split:                                           ; preds = %bb.a
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.f, align 8
  %i.g = icmp ugt i64 %.0.copyload.i.i.i.i.i, 7
  %.0.copyload.i.i.i.i.i4.pre = load i64, ptr %.phi.trans.insert14, align 8
  %i.h = icmp ugt i64 %.0.copyload.i.i.i.i.i4.pre, 7 ; 2 uses
  br i1 %i.g, label %.split11, label %.split9

_ZNK4llvm18RegPressureTracker11isTopClosedEv.exit: ; preds = %bb.a
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !261
  %i.j = icmp eq ptr %i.i, null
  %.pre = load ptr, ptr %.phi.trans.insert14, align 8, !tbaa !261
  %i.k = icmp eq ptr %.pre, null                  ; 2 uses
  br i1 %i.j, label %_ZNK4llvm18RegPressureTracker14isBottomClosedEv.exit5, label %_ZNK4llvm18RegPressureTracker14isBottomClosedEv.exit

.split9:                                          ; preds = %.split
  br i1 %i.h, label %.split13, label %.split13.thread

_ZNK4llvm18RegPressureTracker14isBottomClosedEv.exit: ; preds = %_ZNK4llvm18RegPressureTracker11isTopClosedEv.exit
  br i1 %i.k, label %.split13, label %.split13.thread

.split11:                                         ; preds = %.split
  br i1 %i.h, label %.split13.thread, label %bb.b

_ZNK4llvm18RegPressureTracker14isBottomClosedEv.exit5: ; preds = %_ZNK4llvm18RegPressureTracker11isTopClosedEv.exit
  br i1 %i.k, label %.split13.thread, label %bb.b

bb.b:                                             ; preds = %.split11, %_ZNK4llvm18RegPressureTracker14isBottomClosedEv.exit5
  tail call void @_ZN4llvm18RegPressureTracker11closeBottomEv(ptr noundef nonnull align 8 dereferenceable(352) %0)
  br label %.split13.thread

.split13:                                         ; preds = %_ZNK4llvm18RegPressureTracker14isBottomClosedEv.exit, %.split9
  tail call void @_ZN4llvm18RegPressureTracker8closeTopEv(ptr noundef nonnull align 8 dereferenceable(352) %0)
  br label %.split13.thread

.split13.thread:                                  ; preds = %_ZNK4llvm18RegPressureTracker14isBottomClosedEv.exit5, %.split11, %.split9, %.split13, %_ZNK4llvm18RegPressureTracker14isBottomClosedEv.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm18RegPressureTracker12initLiveThruERKS0_(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(352) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !283  ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !241
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 376
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef i32 %i.g(ptr noundef nonnull align 8 dereferenceable(316) %i.d) #19
  %i.i = zext i32 %i.h to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.a, align 4, !tbaa !248
  call void @_ZNSt6vectorIjSaIjEE14_M_fill_assignEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !250, !nonnull !239, !align !240 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 168
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !244  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 176
  %i.o = load i32, ptr %i.n, align 8, !tbaa !254  ; 2 uses
  %i.p = zext i32 %i.o to i64
  %.idx = shl nuw nsw i64 %i.p, 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx
  %.not18 = icmp eq i32 %i.o, 0
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

._crit_edge:                                      ; preds = %_ZL19increaseSetPressureRSt6vectorIjSaIjEERKN4llvm19MachineRegisterInfoENS3_13VirtRegOrUnitENS3_11LaneBitmaskES8_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZL19increaseSetPressureRSt6vectorIjSaIjEERKN4llvm19MachineRegisterInfoENS3_13VirtRegOrUnitENS3_11LaneBitmaskES8_.exit
  %.019 = phi ptr [ %i.m, %.lr.ph ], [ %i.br, %_ZL19increaseSetPressureRSt6vectorIjSaIjEERKN4llvm19MachineRegisterInfoENS3_13VirtRegOrUnitENS3_11LaneBitmaskES8_.exit ] ; 3 uses
  %i.v = load i32, ptr %.019, align 8, !tbaa !248 ; 2 uses
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %bb.c, label %_ZL19increaseSetPressureRSt6vectorIjSaIjEERKN4llvm19MachineRegisterInfoENS3_13VirtRegOrUnitENS3_11LaneBitmaskES8_.exit

bb.c:                                             ; preds = %bb.b
  %i.x = and i32 %i.v, 2147483647                 ; 2 uses
  %i.y = zext nneg i32 %i.x to i64                ; 2 uses
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !280
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.y
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !260
  %i.ac = zext i8 %i.ab to i32                    ; 2 uses
  %i.ad = load i32, ptr %i.t, align 8, !tbaa !254 ; 3 uses
  %.not1521.i.i.i.i.i = icmp ugt i32 %i.ad, %i.ac
  %.pre.i.i.i.i.i = load ptr, ptr %i.r, align 8, !tbaa !244
  br i1 %.not1521.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %_ZNK4llvm18RegPressureTracker12hasUntiedDefENS_8RegisterE.exit.thread

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ae = add i32 %.01222.i.i.i.i.i, 256          ; 2 uses
  %.not15.i.i.i.i.i = icmp ult i32 %i.ae, %i.ad
  br i1 %.not15.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %_ZNK4llvm18RegPressureTracker12hasUntiedDefENS_8RegisterE.exit.thread, !llvm.loop !423

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %bb.d
  %.01222.i.i.i.i.i = phi i32 [ %i.ae, %bb.d ], [ %i.ac, %bb.c ] ; 3 uses
  %i.af = zext i32 %.01222.i.i.i.i.i to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i.i.i, i64 %i.af
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i32, ptr %i.ag, align 4, !tbaa !248
  %i.ah = and i32 %.sroa.0.0.copyload.i.i.i.i.i.i, 2147483647
  %.not.i.i.i.i.i = icmp eq i32 %i.x, %i.ah
  br i1 %.not.i.i.i.i.i, label %_ZNK4llvm18RegPressureTracker12hasUntiedDefENS_8RegisterE.exit, label %bb.d

_ZNK4llvm18RegPressureTracker12hasUntiedDefENS_8RegisterE.exit: ; preds = %.lr.ph.i.i.i.i.i
  %.not16 = icmp eq i32 %.01222.i.i.i.i.i, %i.ad
  br i1 %.not16, label %_ZNK4llvm18RegPressureTracker12hasUntiedDefENS_8RegisterE.exit.thread, label %_ZL19increaseSetPressureRSt6vectorIjSaIjEERKN4llvm19MachineRegisterInfoENS3_13VirtRegOrUnitENS3_11LaneBitmaskES8_.exit

_ZNK4llvm18RegPressureTracker12hasUntiedDefENS_8RegisterE.exit.thread: ; preds = %bb.d, %bb.c, %_ZNK4llvm18RegPressureTracker12hasUntiedDefENS_8RegisterE.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %.019, i64 8
  %.sroa.0.0.copyload = load i64, ptr %i.ai, align 8, !tbaa !422
  %i.aj = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.aj, label %_ZL19increaseSetPressureRSt6vectorIjSaIjEERKN4llvm19MachineRegisterInfoENS3_13VirtRegOrUnitENS3_11LaneBitmaskES8_.exit, label %_ZNK4llvm19MachineRegisterInfo15getPressureSetsENS_13VirtRegOrUnitE.exit.i

_ZNK4llvm19MachineRegisterInfo15getPressureSetsENS_13VirtRegOrUnitE.exit.i: ; preds = %_ZNK4llvm18RegPressureTracker12hasUntiedDefENS_8RegisterE.exit.thread
  %i.ak = load ptr, ptr %i.u, align 8, !tbaa !8   ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !57
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !130, !nonnull !239, !align !240 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !241
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 200
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = call noundef ptr %i.aq(ptr noundef nonnull align 8 dereferenceable(344) %i.an) #19, !inline_history !424 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !244
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %i.y
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.au, align 8
  %i.av = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, -5
  %i.aw = inttoptr i64 %i.av to ptr               ; 2 uses
  %i.ax = load ptr, ptr %i.ar, align 8, !tbaa !241
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 400
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = call noundef ptr %i.az(ptr noundef nonnull align 8 dereferenceable(316) %i.ar, ptr noundef %i.aw) #19, !inline_history !425 ; 2 uses
  %i.bb = load ptr, ptr %i.ar, align 8, !tbaa !241
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 360
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = call noundef nonnull align 4 dereferenceable(8) ptr %i.bd(ptr noundef nonnull align 8 dereferenceable(316) %i.ar, ptr noundef %i.aw) #19, !inline_history !425
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !246
  %i.bg = load i32, ptr %i.ba, align 4, !tbaa !248 ; 2 uses
  %i.bh = icmp eq i32 %i.bg, -1
  br i1 %i.bh, label %_ZL19increaseSetPressureRSt6vectorIjSaIjEERKN4llvm19MachineRegisterInfoENS3_13VirtRegOrUnitENS3_11LaneBitmaskES8_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK4llvm19MachineRegisterInfo15getPressureSetsENS_13VirtRegOrUnitE.exit.i
  %i.bi = load ptr, ptr %i.b, align 8, !tbaa !249
  br label %select.unfold.i

select.unfold.i:                                  ; preds = %select.unfold.i, %.lr.ph.i
  %i.bj = phi i32 [ %i.bg, %.lr.ph.i ], [ %i.bp, %select.unfold.i ]
  %.sroa.0.08.i = phi ptr [ %i.ba, %.lr.ph.i ], [ %i.bo, %select.unfold.i ]
  %i.bk = zext i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.bk ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !248
  %i.bn = add i32 %i.bm, %i.bf
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !248
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 4 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !248 ; 2 uses
  %i.bq = icmp eq i32 %i.bp, -1
  br i1 %i.bq, label %_ZL19increaseSetPressureRSt6vectorIjSaIjEERKN4llvm19MachineRegisterInfoENS3_13VirtRegOrUnitENS3_11LaneBitmaskES8_.exit, label %select.unfold.i

_ZL19increaseSetPressureRSt6vectorIjSaIjEERKN4llvm19MachineRegisterInfoENS3_13VirtRegOrUnitENS3_11LaneBitmaskES8_.exit: ; preds = %select.unfold.i, %_ZNK4llvm19MachineRegisterInfo15getPressureSetsENS_13VirtRegOrUnitE.exit.i, %_ZNK4llvm18RegPressureTracker12hasUntiedDefENS_8RegisterE.exit.thread, %_ZNK4llvm18RegPressureTracker12hasUntiedDefENS_8RegisterE.exit, %bb.b
  %i.br = getelementptr inbounds nuw i8, ptr %.019, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.br, %i.q
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm16RegisterOperands7collectERKNS_12MachineInstrERKNS_18TargetRegisterInfoERKNS_19MachineRegisterInfoEbb(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(316) %2, ptr noundef nonnull align 8 dereferenceable(520) %3, i1 noundef zeroext %4, i1 noundef zeroext %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.(anonymous namespace)::RegisterOperandsCollector", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.a = zext i1 %5 to i8
  store ptr %0, ptr %6, align 8, !tbaa !426
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %2, ptr %i.b, align 8, !tbaa !428
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %3, ptr %i.c, align 8, !tbaa !429
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i8 %i.a, ptr %i.d, align 8, !tbaa !430
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.f = load i32, ptr %i.e, align 4, !tbaa !311
  %i.g = and i32 %i.f, 4
  %.not2.i.i.i.i = icmp eq i32 %i.g, 0            ; 2 uses
  br i1 %4, label %bb.b, label %bb.y

bb.b:                                             ; preds = %bb.a
  br i1 %.not2.i.i.i.i, label %_ZN4llvm14getBundleStartENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEE.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.sroa.0.03.i.i.i.i = phi ptr [ %i.i, %.lr.ph.i.i.i.i ], [ %1, %bb.b ]
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.0.03.i.i.i.i, align 8
  %i.h = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, -8
  %i.i = inttoptr i64 %i.h to ptr                 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 44
  %i.k = load i32, ptr %i.j, align 4, !tbaa !311
  %i.l = and i32 %i.k, 4
  %.not.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm14getBundleStartENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEE.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !432

_ZN4llvm14getBundleStartENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEE.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.b
  %.sroa.0.0.lcssa.i.i.i.i = phi ptr [ %1, %bb.b ], [ %i.i, %.lr.ph.i.i.i.i ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !433
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48 ; 12 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i.i.i, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !434  ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i.i.i, i64 40
  %i.s = load i24, ptr %i.r, align 8              ; 2 uses
  %i.t = zext i24 %i.s to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.t, 5
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx.i.i.i ; 3 uses
  %i.v = icmp eq i24 %i.s, 0
  br i1 %i.v, label %.lr.ph.i5.i.i.preheader.i, label %_ZN4llvm21ConstMIBundleOperandsC2ERKNS_12MachineInstrE.exit.i

.lr.ph.i5.i.i.preheader.i:                        ; preds = %_ZN4llvm14getBundleStartENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEE.exit.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i.i.i, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !312  ; 3 uses
  %i.y = icmp eq ptr %i.x, %i.o
  br i1 %i.y, label %_ZN4llvm21ConstMIBundleOperandsC2ERKNS_12MachineInstrE.exit.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i5.i.i.preheader.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 44
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !311
  %i.ab = and i32 %i.aa, 4
  %.not.i6.i.i.i108 = icmp eq i32 %i.ab, 0
  br i1 %.not.i6.i.i.i108, label %_ZN4llvm21ConstMIBundleOperandsC2ERKNS_12MachineInstrE.exit.i, label %.lr.ph109

.lr.ph.i5.i.i.i:                                  ; preds = %.lr.ph109
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !312 ; 3 uses
  %i.ae = icmp eq ptr %i.ad, %i.o
  br i1 %i.ae, label %.lr.ph.i5.i.i.i._ZN4llvm21ConstMIBundleOperandsC2ERKNS_12MachineInstrE.exit.i.loopexit_crit_edge, label %.lr.ph.i, !llvm.loop !435

.lr.ph.i:                                         ; preds = %.lr.ph.i5.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 44
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !311
  %i.ah = and i32 %i.ag, 4
  %.not.i6.i.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i6.i.i.i, label %_ZN4llvm21ConstMIBundleOperandsC2ERKNS_12MachineInstrE.exit.i.sink.split, label %.lr.ph109, !llvm.loop !435

.lr.ph109:                                        ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.ai = phi ptr [ %i.ad, %.lr.ph.i ], [ %i.x, %.lr.ph.i.preheader ] ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %i.ak = load i24, ptr %i.aj, align 8            ; 2 uses
  %i.al = icmp eq i24 %i.ak, 0
  br i1 %i.al, label %.lr.ph.i5.i.i.i, label %._ZN4llvm21ConstMIBundleOperandsC2ERKNS_12MachineInstrE.exit.loopexit_crit_edge.i, !llvm.loop !435

._ZN4llvm21ConstMIBundleOperandsC2ERKNS_12MachineInstrE.exit.loopexit_crit_edge.i: ; preds = %.lr.ph109
  br label %_ZN4llvm21ConstMIBundleOperandsC2ERKNS_12MachineInstrE.exit.i.sink.split, !llvm.loop !435

.lr.ph.i5.i.i.i._ZN4llvm21ConstMIBundleOperandsC2ERKNS_12MachineInstrE.exit.i.loopexit_crit_edge: ; preds = %.lr.ph.i5.i.i.i
  br label %_ZN4llvm21ConstMIBundleOperandsC2ERKNS_12MachineInstrE.exit.i.sink.split, !llvm.loop !435

_ZN4llvm21ConstMIBundleOperandsC2ERKNS_12MachineInstrE.exit.i.sink.split: ; preds = %.lr.ph.i, %._ZN4llvm21ConstMIBundleOperandsC2ERKNS_12MachineInstrE.exit.loopexit_crit_edge.i, %.lr.ph.i5.i.i.i._ZN4llvm21ConstMIBundleOperandsC2ERKNS_12MachineInstrE.exit.i.loopexit_crit_edge
  %.sroa.0.1.i.ph = phi ptr [ %i.ai, %._ZN4llvm21ConstMIBundleOperandsC2ERKNS_12MachineInstrE.exit.loopexit_crit_edge.i ], [ %i.o, %.lr.ph.i5.i.i.i._ZN4llvm21ConstMIBundleOperandsC2ERKNS_12MachineInstrE.exit.i.loopexit_crit_edge ], [ %i.o, %.lr.ph.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !434 ; 2 uses
  %i.ao = zext i24 %i.ak to i64
  %.idx.i.i.i.i.le305 = shl nuw nsw i64 %i.ao, 5
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 %.idx.i.i.i.i.le305
  br label %_ZN4llvm21ConstMIBundleOperandsC2ERKNS_12MachineInstrE.exit.i

_ZN4llvm21ConstMIBundleOperandsC2ERKNS_12MachineInstrE.exit.i: ; preds = %_ZN4llvm21ConstMIBundleOperandsC2ERKNS_12MachineInstrE.exit.i.sink.split, %.lr.ph.i.preheader, %.lr.ph.i5.i.i.preheader.i, %_ZN4llvm14getBundleStartENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEE.exit.i.i.i
  %.sroa.0.1.i = phi ptr [ %.sroa.0.0.lcssa.i.i.i.i, %_ZN4llvm14getBundleStartENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEE.exit.i.i.i ], [ %i.o, %.lr.ph.i.preheader ], [ %i.o, %.lr.ph.i5.i.i.preheader.i ], [ %.sroa.0.1.i.ph, %_ZN4llvm21ConstMIBundleOperandsC2ERKNS_12MachineInstrE.exit.i.sink.split ]
  %.sroa.18.2.i = phi ptr [ %i.u, %_ZN4llvm14getBundleStartENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEE.exit.i.i.i ], [ %i.u, %.lr.ph.i.preheader ], [ %i.u, %.lr.ph.i5.i.i.preheader.i ], [ %i.ap, %_ZN4llvm21ConstMIBundleOperandsC2ERKNS_12MachineInstrE.exit.i.sink.split ] ; 2 uses
  %.sroa.11.2.i = phi ptr [ %i.q, %_ZN4llvm14getBundleStartENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEE.exit.i.i.i ], [ %i.q, %.lr.ph.i.preheader ], [ %i.q, %.lr.ph.i5.i.i.preheader.i ], [ %i.an, %_ZN4llvm21ConstMIBundleOperandsC2ERKNS_12MachineInstrE.exit.i.sink.split ] ; 2 uses
  %.not1742.i = icmp eq ptr %.sroa.11.2.i, %.sroa.18.2.i
  br i1 %.not1742.i, label %._crit_edge.i, label %.lr.ph46.i.preheader

.lr.ph46.i.preheader:                             ; preds = %_ZN4llvm21ConstMIBundleOperandsC2ERKNS_12MachineInstrE.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 288
  br label %.lr.ph46.i

._crit_edge.i:                                    ; preds = %_ZN4llvm27MIBundleOperandIteratorBaseIKNS_14MachineOperandEEppEv.exit.i, %_ZN4llvm21ConstMIBundleOperandsC2ERKNS_12MachineInstrE.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !244 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.av = load i32, ptr %i.au, align 8, !tbaa !254 ; 2 uses
  %i.aw = zext i32 %i.av to i64
  %.idx.i = shl nuw nsw i64 %i.aw, 4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 %.idx.i
  %.not55.i = icmp eq i32 %i.av, 0
  br i1 %.not55.i, label %_ZNK12_GLOBAL__N_125RegisterOperandsCollector17collectInstrLanesERKN4llvm12MachineInstrE.exit, label %.lr.ph58.i.preheader

.lr.ph58.i.preheader:                             ; preds = %._crit_edge.i
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  %.val9.i.i.pre = load i32, ptr %i.az, align 8, !tbaa !254
  br label %.lr.ph58.i

.lr.ph46.i:                                       ; preds = %.lr.ph46.i.preheader, %_ZN4llvm27MIBundleOperandIteratorBaseIKNS_14MachineOperandEEppEv.exit.i
  %.sroa.11.045.i = phi ptr [ %.sroa.11.4.i, %_ZN4llvm27MIBundleOperandIteratorBaseIKNS_14MachineOperandEEppEv.exit.i ], [ %.sroa.11.2.i, %.lr.ph46.i.preheader ] ; 3 uses
  %.sroa.18.044.i = phi ptr [ %.sroa.18.4.i, %_ZN4llvm27MIBundleOperandIteratorBaseIKNS_14MachineOperandEEppEv.exit.i ], [ %.sroa.18.2.i, %.lr.ph46.i.preheader ] ; 4 uses
  %.sroa.0.043.i = phi ptr [ %.sroa.0.2.i, %_ZN4llvm27MIBundleOperandIteratorBaseIKNS_14MachineOperandEEppEv.exit.i ], [ %.sroa.0.1.i, %.lr.ph46.i.preheader ] ; 2 uses
  %.val.i = load i32, ptr %.sroa.11.045.i, align 8 ; 6 uses
  %i.ba = getelementptr i8, ptr %.sroa.11.045.i, i64 4
  %.val10.i = load i32, ptr %i.ba, align 4        ; 4 uses
  %i.bb = and i32 %.val.i, 255
  %i.bc = icmp ne i32 %i.bb, 0
  %.not.i.i = icmp eq i32 %.val10.i, 0
  %or.cond.i.i = select i1 %i.bc, i1 true, i1 %.not.i.i
  br i1 %or.cond.i.i, label %_ZNK12_GLOBAL__N_125RegisterOperandsCollector19collectOperandLanesERKN4llvm14MachineOperandE.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph46.i
  %i.bd = lshr exact i32 %.val.i, 8
  %i.be = and i32 %i.bd, 4095                     ; 2 uses
  %i.bf = and i32 %.val.i, 16777216
  %.not.i.i.i = icmp eq i32 %i.bf, 0
  br i1 %.not.i.i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.bg = and i32 %.val.i, 805306368
  %or.cond2.not.i.i = icmp eq i32 %i.bg, 0
  br i1 %or.cond2.not.i.i, label %bb.e, label %_ZNK12_GLOBAL__N_125RegisterOperandsCollector19collectOperandLanesERKN4llvm14MachineOperandE.exit.i

bb.e:                                             ; preds = %bb.d
  call fastcc void @_ZNK12_GLOBAL__N_125RegisterOperandsCollector12pushRegLanesEN4llvm8RegisterEjRNS1_15SmallVectorImplINS1_14VRegMaskOrUnitEEE(ptr noundef nonnull readonly align 8 dereferenceable(25) %6, i32 %.val10.i, i32 noundef %i.be, ptr noundef nonnull align 8 dereferenceable(16) %0)
  br label %_ZNK12_GLOBAL__N_125RegisterOperandsCollector19collectOperandLanesERKN4llvm14MachineOperandE.exit.i

bb.f:                                             ; preds = %bb.c
  %i.bh = and i32 %.val.i, 268435456
  %.not3.i.i = icmp eq i32 %i.bh, 0
  %spec.select.i.i = select i1 %.not3.i.i, i32 %i.be, i32 0 ; 2 uses
  %i.bi = and i32 %.val.i, 83886080
  %i.bj = icmp eq i32 %i.bi, 83886080
  br i1 %i.bj, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  br i1 %5, label %_ZNK12_GLOBAL__N_125RegisterOperandsCollector19collectOperandLanesERKN4llvm14MachineOperandE.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call fastcc void @_ZNK12_GLOBAL__N_125RegisterOperandsCollector12pushRegLanesEN4llvm8RegisterEjRNS1_15SmallVectorImplINS1_14VRegMaskOrUnitEEE(ptr noundef nonnull readonly align 8 dereferenceable(25) %6, i32 %.val10.i, i32 noundef %spec.select.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ar)
  br label %_ZNK12_GLOBAL__N_125RegisterOperandsCollector19collectOperandLanesERKN4llvm14MachineOperandE.exit.i

bb.i:                                             ; preds = %bb.f
  call fastcc void @_ZNK12_GLOBAL__N_125RegisterOperandsCollector12pushRegLanesEN4llvm8RegisterEjRNS1_15SmallVectorImplINS1_14VRegMaskOrUnitEEE(ptr noundef nonnull readonly align 8 dereferenceable(25) %6, i32 %.val10.i, i32 noundef %spec.select.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.aq)
  br label %_ZNK12_GLOBAL__N_125RegisterOperandsCollector19collectOperandLanesERKN4llvm14MachineOperandE.exit.i

_ZNK12_GLOBAL__N_125RegisterOperandsCollector19collectOperandLanesERKN4llvm14MachineOperandE.exit.i: ; preds = %bb.i, %bb.h, %bb.g, %bb.e, %bb.d, %.lr.ph46.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.11.045.i, i64 32 ; 4 uses
  %i.bl = icmp eq ptr %i.bk, %.sroa.18.044.i
  br i1 %i.bl, label %.lr.ph.i.i.preheader.i, label %_ZN4llvm27MIBundleOperandIteratorBaseIKNS_14MachineOperandEEppEv.exit.i

.lr.ph.i.i.preheader.i:                           ; preds = %_ZNK12_GLOBAL__N_125RegisterOperandsCollector19collectOperandLanesERKN4llvm14MachineOperandE.exit.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.043.i, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !312 ; 3 uses
  %i.bo = icmp eq ptr %i.bn, %i.o
  br i1 %i.bo, label %_ZN4llvm27MIBundleOperandIteratorBaseIKNS_14MachineOperandEEppEv.exit.i, label %.lr.ph31.i.preheader

.lr.ph31.i.preheader:                             ; preds = %.lr.ph.i.i.preheader.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 44
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !311
  %i.br = and i32 %i.bq, 4
  %.not.i.i11.i114 = icmp eq i32 %i.br, 0
  br i1 %.not.i.i11.i114, label %_ZN4llvm27MIBundleOperandIteratorBaseIKNS_14MachineOperandEEppEv.exit.i, label %.lr.ph115

.lr.ph.i.i.i:                                     ; preds = %.lr.ph115
  %i.bs = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !312 ; 3 uses
  %i.bu = icmp eq ptr %i.bt, %i.o
end_hunk_0
begin_hunk_1_@_ZN4llvm18RegPressureTracker6recedeERKNS_16RegisterOperandsEPNS_15SmallVectorImplINS_14VRegMaskOrUnitEEE:bb.a
  br i1 %i.mg, label %bb.bo, label %_ZN4llvm15SmallVectorImplINS_14VRegMaskOrUnitEE5eraseEPKS1_.exit.i

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.028.i.i.i.i.i130, ptr noundef nonnull align 8 dereferenceable(16) %i.mb, i64 16, i1 false), !tbaa.struct !438
  br label %_ZN4llvm15SmallVectorImplINS_14VRegMaskOrUnitEE5eraseEPKS1_.exit.i

_ZN4llvm15SmallVectorImplINS_14VRegMaskOrUnitEE5eraseEPKS1_.exit.i: ; preds = %bb.bo, %bb.bn, %bb.bm
  %i.mh = load i32, ptr %i.ir, align 8, !tbaa !254
  %i.mi = add i32 %i.mh, -1
  store i32 %i.mi, ptr %i.ir, align 8, !tbaa !254
  br label %_ZL14removeRegLanesRN4llvm15SmallVectorImplINS_14VRegMaskOrUnitEEES1_.exit

bb.bp:                                            ; preds = %"_ZN4llvm7find_ifIRNS_15SmallVectorImplINS_14VRegMaskOrUnitEEEZNS_18RegPressureTracker6recedeERKNS_16RegisterOperandsEPS3_E3$_0EEDaOT_T0_.exit"
  call fastcc void @_ZL11addRegLanesRN4llvm15SmallVectorImplINS_14VRegMaskOrUnitEEES1_(ptr noundef nonnull align 8 dereferenceable(16) %2, i32 %.sroa.030.0.copyload, i64 %i.jz)
  br label %_ZL14removeRegLanesRN4llvm15SmallVectorImplINS_14VRegMaskOrUnitEEES1_.exit

_ZL14removeRegLanesRN4llvm15SmallVectorImplINS_14VRegMaskOrUnitEEES1_.exit: ; preds = %_ZN4llvm15SmallVectorImplINS_14VRegMaskOrUnitEE5eraseEPKS1_.exit.i, %bb.bk, %"_ZN4llvm7find_ifIRNS_15SmallVectorImplINS_14VRegMaskOrUnitEEEZL14removeRegLanesS4_S2_E3$_0EEDaOT_T0_.exit.i", %bb.bp, %bb.an, %bb.al
  %i.mj = load i8, ptr %i.w, align 8, !tbaa !289, !range !290, !noundef !239
  %i.mk = trunc nuw i8 %i.mj to i1
  br i1 %i.mk, label %bb.bq, label %bb.bs

bb.bq:                                            ; preds = %_ZL14removeRegLanesRN4llvm15SmallVectorImplINS_14VRegMaskOrUnitEEES1_.exit
  %i.ml = call i64 @_ZNK4llvm18RegPressureTracker16getLiveThroughAtENS_13VirtRegOrUnitENS_9SlotIndexE(ptr noundef nonnull align 8 dereferenceable(352) %0, i32 %.sroa.030.0.copyload, i64 %.sroa.0180.0) ; 2 uses
  %.not199 = icmp eq i64 %i.ml, 0
  br i1 %.not199, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.mm = load ptr, ptr %i.is, align 8, !tbaa !250, !nonnull !239, !align !240
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 168
  call void @_ZN4llvm18RegPressureTracker19discoverLiveInOrOutENS_14VRegMaskOrUnitERNS_15SmallVectorImplIS1_EE(ptr noundef nonnull readonly align 8 dereferenceable(352) %0, i32 %.sroa.030.0.copyload, i64 %i.ml, ptr noundef nonnull align 8 dereferenceable(16) %i.mn)
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bq, %bb.br, %_ZL14removeRegLanesRN4llvm15SmallVectorImplINS_14VRegMaskOrUnitEEES1_.exit
  %i.mo = load ptr, ptr %i.it, align 8, !tbaa !8  ; 2 uses
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !57
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 16
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !130, !nonnull !239, !align !240 ; 2 uses
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !241
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 200
  %i.mu = load ptr, ptr %i.mt, align 8
  %i.mv = call noundef ptr %i.mu(ptr noundef nonnull align 8 dereferenceable(344) %i.mr) #19, !inline_history !529 ; 8 uses
  br i1 %i.iy, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mo, i64 48
  %i.mx = zext nneg i32 %i.iz to i64
  %i.my = load ptr, ptr %i.mw, align 8, !tbaa !244
  %i.mz = getelementptr inbounds nuw [16 x i8], ptr %i.my, i64 %i.mx
  %.0.copyload.i.i.i.i.i.i.i.i.i140 = load i64, ptr %i.mz, align 8
  %i.na = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i140, -5
  %i.nb = inttoptr i64 %i.na to ptr               ; 2 uses
  %i.nc = load ptr, ptr %i.mv, align 8, !tbaa !241
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 400
  %i.ne = load ptr, ptr %i.nd, align 8
  %i.nf = call noundef ptr %i.ne(ptr noundef nonnull align 8 dereferenceable(316) %i.mv, ptr noundef %i.nb) #19, !inline_history !530
  %i.ng = load ptr, ptr %i.mv, align 8, !tbaa !241
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 360
  %i.ni = load ptr, ptr %i.nh, align 8
  %i.nj = call noundef nonnull align 4 dereferenceable(8) ptr %i.ni(ptr noundef nonnull align 8 dereferenceable(316) %i.mv, ptr noundef %i.nb) #19, !inline_history !530
  %i.nk = load i32, ptr %i.nj, align 4, !tbaa !246
  br label %_ZNK4llvm19MachineRegisterInfo15getPressureSetsENS_13VirtRegOrUnitE.exit.i135

bb.bu:                                            ; preds = %bb.bs
  %i.nl = load ptr, ptr %i.mv, align 8, !tbaa !241
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 408
  %i.nn = load ptr, ptr %i.nm, align 8
  %i.no = call noundef ptr %i.nn(ptr noundef nonnull align 8 dereferenceable(316) %i.mv, i32 noundef %.sroa.030.0.copyload) #19, !inline_history !530
  %i.np = load ptr, ptr %i.mv, align 8, !tbaa !241
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 368
  %i.nr = load ptr, ptr %i.nq, align 8
  %i.ns = call noundef i32 %i.nr(ptr noundef nonnull align 8 dereferenceable(316) %i.mv, i32 noundef %.sroa.030.0.copyload) #19, !inline_history !530
  br label %_ZNK4llvm19MachineRegisterInfo15getPressureSetsENS_13VirtRegOrUnitE.exit.i135

_ZNK4llvm19MachineRegisterInfo15getPressureSetsENS_13VirtRegOrUnitE.exit.i135: ; preds = %bb.bu, %bb.bt
  %.sroa.0.0.i.i136 = phi ptr [ %i.nf, %bb.bt ], [ %i.no, %bb.bu ] ; 2 uses
  %storemerge.i.i.i137 = phi i32 [ %i.nk, %bb.bt ], [ %i.ns, %bb.bu ]
  %i.nt = load i32, ptr %.sroa.0.0.i.i136, align 4, !tbaa !248 ; 2 uses
  %i.nu = icmp eq i32 %i.nt, -1
  br i1 %i.nu, label %_ZN4llvm18RegPressureTracker19increaseRegPressureENS_13VirtRegOrUnitENS_11LaneBitmaskES2_.exit, label %.lr.ph.i138

.lr.ph.i138:                                      ; preds = %_ZNK4llvm19MachineRegisterInfo15getPressureSetsENS_13VirtRegOrUnitE.exit.i135
  %i.nv = load ptr, ptr %i.iu, align 8, !tbaa !249 ; 2 uses
  %i.nw = load ptr, ptr %i.is, align 8, !tbaa !250, !nonnull !239, !align !240
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !249
  br label %select.unfold.i139

select.unfold.i139:                               ; preds = %select.unfold.i139, %.lr.ph.i138
  %i.ny = phi i32 [ %i.nt, %.lr.ph.i138 ], [ %i.ol, %select.unfold.i139 ]
  %.sroa.0.011.i = phi ptr [ %.sroa.0.0.i.i136, %.lr.ph.i138 ], [ %i.ok, %select.unfold.i139 ] ; 2 uses
  %i.nz = zext i32 %i.ny to i64
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.nv, i64 %i.nz ; 2 uses
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !248
  %i.oc = add i32 %i.ob, %storemerge.i.i.i137
  store i32 %i.oc, ptr %i.oa, align 4, !tbaa !248
  %i.od = load i32, ptr %.sroa.0.011.i, align 4, !tbaa !248
  %i.oe = zext i32 %i.od to i64                   ; 2 uses
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %i.nx, i64 %i.oe ; 2 uses
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %i.nv, i64 %i.oe
  %i.oh = load i32, ptr %i.of, align 4, !tbaa !248
  %i.oi = load i32, ptr %i.og, align 4, !tbaa !248
  %i.oj = call i32 @llvm.umax.i32(i32 %i.oh, i32 %i.oi)
  store i32 %i.oj, ptr %i.of, align 4, !tbaa !248
  %i.ok = getelementptr inbounds nuw i8, ptr %.sroa.0.011.i, i64 4 ; 2 uses
  %i.ol = load i32, ptr %i.ok, align 4, !tbaa !248 ; 2 uses
  %i.om = icmp eq i32 %i.ol, -1
  br i1 %i.om, label %_ZN4llvm18RegPressureTracker19increaseRegPressureENS_13VirtRegOrUnitENS_11LaneBitmaskES2_.exit, label %select.unfold.i139

_ZN4llvm18RegPressureTracker19increaseRegPressureENS_13VirtRegOrUnitENS_11LaneBitmaskES2_.exit: ; preds = %select.unfold.i139, %_ZNK4llvm19MachineRegisterInfo15getPressureSetsENS_13VirtRegOrUnitE.exit.i135, %_ZN4llvm10LiveRegSet6insertENS_14VRegMaskOrUnitE.exit
  %i.on = getelementptr inbounds nuw i8, ptr %.090238, i64 16 ; 2 uses
  %.not93 = icmp eq ptr %i.on, %i.ik
  br i1 %.not93, label %._crit_edge241, label %bb.af

bb.bv:                                            ; preds = %._crit_edge241
  %i.oo = load ptr, ptr %i.f, align 8, !tbaa !244 ; 2 uses
  %i.op = load i32, ptr %i.h, align 8, !tbaa !254 ; 2 uses
  %i.oq = zext i32 %i.op to i64
  %.idx247 = shl nuw nsw i64 %i.oq, 4
  %i.or = getelementptr inbounds nuw i8, ptr %i.oo, i64 %.idx247
  %.not94242 = icmp eq i32 %i.op, 0
  br i1 %.not94242, label %.loopexit, label %.lr.ph245

.lr.ph245:                                        ; preds = %bb.bv
  %i.os = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ot = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ou = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ov = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ow = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.oy = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 4 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %0, i64 276
  br label %bb.bw

bb.bw:                                            ; preds = %.lr.ph245, %.critedge
  %.089243 = phi ptr [ %i.oo, %.lr.ph245 ], [ %i.qp, %.critedge ] ; 3 uses
  %i.pa = load i32, ptr %.089243, align 8, !tbaa !248 ; 4 uses
  %i.pb = icmp slt i32 %i.pa, 0
  br i1 %i.pb, label %bb.bx, label %.critedge

bb.bx:                                            ; preds = %bb.bw
  %i.pc = and i32 %i.pa, 2147483647               ; 3 uses
  %i.pd = load i32, ptr %i.ot, align 8
  %i.pe = add i32 %i.pd, %i.pc                    ; 2 uses
  %i.pf = zext i32 %i.pe to i64
  %i.pg = load ptr, ptr %i.ou, align 8, !tbaa !280
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 %i.pf
  %i.pi = load i8, ptr %i.ph, align 1, !tbaa !260
  %i.pj = zext i8 %i.pi to i32                    ; 2 uses
  %i.pk = load i32, ptr %i.ov, align 8, !tbaa !254 ; 4 uses
  %.not1519.i.i.i142 = icmp ugt i32 %i.pk, %i.pj
  %.pre.i.i.i143 = load ptr, ptr %i.os, align 8, !tbaa !244 ; 3 uses
  br i1 %.not1519.i.i.i142, label %.lr.ph.i.i.i147, label %._crit_edge.i.i.i144

bb.by:                                            ; preds = %.lr.ph.i.i.i147
  %i.pl = add i32 %.01220.i.i.i148, 256           ; 2 uses
  %.not15.i.i.i150 = icmp ult i32 %i.pl, %i.pk
  br i1 %.not15.i.i.i150, label %.lr.ph.i.i.i147, label %._crit_edge.i.i.i144, !llvm.loop !528

.lr.ph.i.i.i147:                                  ; preds = %bb.bx, %bb.by
  %.01220.i.i.i148 = phi i32 [ %i.pl, %bb.by ], [ %i.pj, %bb.bx ] ; 2 uses
  %i.pm = zext i32 %.01220.i.i.i148 to i64
  %i.pn = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i.i143, i64 %i.pm ; 2 uses
  %i.po = load i32, ptr %i.pn, align 8, !tbaa !418
  %.not.i.i.i149 = icmp eq i32 %i.pe, %i.po
  br i1 %.not.i.i.i149, label %_ZNK4llvm9SparseSetINS_10LiveRegSet13IndexMaskPairEjNS_8identityEhE4findERKj.exit.loopexit.i, label %bb.by

._crit_edge.i.i.i144:                             ; preds = %bb.by, %bb.bx
  %i.pp = zext i32 %i.pk to i64                   ; 2 uses
  %i.pq = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i.i143, i64 %i.pp
  br label %_ZNK4llvm9SparseSetINS_10LiveRegSet13IndexMaskPairEjNS_8identityEhE4findERKj.exit.i

_ZNK4llvm9SparseSetINS_10LiveRegSet13IndexMaskPairEjNS_8identityEhE4findERKj.exit.loopexit.i: ; preds = %.lr.ph.i.i.i147
  %.pre.i151 = zext i32 %i.pk to i64
  br label %_ZNK4llvm9SparseSetINS_10LiveRegSet13IndexMaskPairEjNS_8identityEhE4findERKj.exit.i

_ZNK4llvm9SparseSetINS_10LiveRegSet13IndexMaskPairEjNS_8identityEhE4findERKj.exit.i: ; preds = %_ZNK4llvm9SparseSetINS_10LiveRegSet13IndexMaskPairEjNS_8identityEhE4findERKj.exit.loopexit.i, %._crit_edge.i.i.i144
  %.pre-phi.i145 = phi i64 [ %.pre.i151, %_ZNK4llvm9SparseSetINS_10LiveRegSet13IndexMaskPairEjNS_8identityEhE4findERKj.exit.loopexit.i ], [ %i.pp, %._crit_edge.i.i.i144 ]
  %.3.i.i.i146 = phi ptr [ %i.pn, %_ZNK4llvm9SparseSetINS_10LiveRegSet13IndexMaskPairEjNS_8identityEhE4findERKj.exit.loopexit.i ], [ %i.pq, %._crit_edge.i.i.i144 ] ; 2 uses
  %i.pr = getelementptr inbounds nuw [16 x i8], ptr %.pre.i.i.i143, i64 %.pre-phi.i145
  %i.ps = icmp eq ptr %.3.i.i.i146, %i.pr
  br i1 %i.ps, label %_ZNK4llvm10LiveRegSet8containsENS_13VirtRegOrUnitE.exit, label %bb.bz

bb.bz:                                            ; preds = %_ZNK4llvm9SparseSetINS_10LiveRegSet13IndexMaskPairEjNS_8identityEhE4findERKj.exit.i
  %i.pt = getelementptr inbounds nuw i8, ptr %.3.i.i.i146, i64 8
  %.sroa.04.0.copyload.i = load i64, ptr %i.pt, align 8, !tbaa !422
  br label %_ZNK4llvm10LiveRegSet8containsENS_13VirtRegOrUnitE.exit

_ZNK4llvm10LiveRegSet8containsENS_13VirtRegOrUnitE.exit: ; preds = %_ZNK4llvm9SparseSetINS_10LiveRegSet13IndexMaskPairEjNS_8identityEhE4findERKj.exit.i, %bb.bz
  %.sroa.04.0.i = phi i64 [ %.sroa.04.0.copyload.i, %bb.bz ], [ 0, %_ZNK4llvm9SparseSetINS_10LiveRegSet13IndexMaskPairEjNS_8identityEhE4findERKj.exit.i ]
  %i.pu = getelementptr inbounds nuw i8, ptr %.089243, i64 8
  %.sroa.02.0.copyload = load i64, ptr %i.pu, align 8, !tbaa !422
  %i.pv = and i64 %.sroa.02.0.copyload, %.sroa.04.0.i
  %i.pw = icmp eq i64 %i.pv, 0
  br i1 %i.pw, label %bb.ca, label %.critedge

bb.ca:                                            ; preds = %_ZNK4llvm10LiveRegSet8containsENS_13VirtRegOrUnitE.exit
  %i.px = zext nneg i32 %i.pc to i64
  %i.py = load ptr, ptr %i.ox, align 8, !tbaa !280
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 %i.px ; 2 uses
  %i.qa = load i8, ptr %i.pz, align 1, !tbaa !260
  %i.qb = zext i8 %i.qa to i32                    ; 2 uses
  %i.qc = load i32, ptr %i.oy, align 8, !tbaa !254 ; 4 uses
  %.not1521.i.i = icmp ugt i32 %i.qc, %i.qb
  %.pre.i.i = load ptr, ptr %i.ow, align 8, !tbaa !244
  br i1 %.not1521.i.i, label %.lr.ph.i.i153, label %_ZN4llvm9SparseSetINS_8RegisterES1_NS_20VirtReg2IndexFunctorEhE9findIndexEj.exit.thread.i

bb.cb:                                            ; preds = %.lr.ph.i.i153
  %i.qd = add i32 %.01222.i.i, 256                ; 2 uses
  %.not15.i.i = icmp ult i32 %i.qd, %i.qc
  br i1 %.not15.i.i, label %.lr.ph.i.i153, label %_ZN4llvm9SparseSetINS_8RegisterES1_NS_20VirtReg2IndexFunctorEhE9findIndexEj.exit.thread.i, !llvm.loop !423

.lr.ph.i.i153:                                    ; preds = %bb.ca, %bb.cb
  %.01222.i.i = phi i32 [ %i.qd, %bb.cb ], [ %i.qb, %bb.ca ] ; 3 uses
  %i.qe = zext i32 %.01222.i.i to i64
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %i.qe
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.qf, align 4, !tbaa !248
  %i.qg = and i32 %.sroa.0.0.copyload.i.i.i, 2147483647
  %.not.i.i154 = icmp eq i32 %i.pc, %i.qg
  br i1 %.not.i.i154, label %_ZN4llvm9SparseSetINS_8RegisterES1_NS_20VirtReg2IndexFunctorEhE9findIndexEj.exit.i, label %bb.cb

_ZN4llvm9SparseSetINS_8RegisterES1_NS_20VirtReg2IndexFunctorEhE9findIndexEj.exit.i: ; preds = %.lr.ph.i.i153
  %5 = icmp eq i32 %.01222.i.i, %i.qc
  br i1 %5, label %_ZN4llvm9SparseSetINS_8RegisterES1_NS_20VirtReg2IndexFunctorEhE9findIndexEj.exit.thread.i, label %.critedge

_ZN4llvm9SparseSetINS_8RegisterES1_NS_20VirtReg2IndexFunctorEhE9findIndexEj.exit.thread.i: ; preds = %bb.cb, %_ZN4llvm9SparseSetINS_8RegisterES1_NS_20VirtReg2IndexFunctorEhE9findIndexEj.exit.i, %bb.ca
  %i.qh = trunc i32 %i.qc to i8
  store i8 %i.qh, ptr %i.pz, align 1, !tbaa !260
  %i.qi = load i32, ptr %i.oy, align 8, !tbaa !254 ; 2 uses
  %i.qj = load i32, ptr %i.oz, align 4, !tbaa !417
  %.not.i4.i = icmp ult i32 %i.qi, %i.qj
  br i1 %.not.i4.i, label %bb.cd, label %bb.cc, !prof !295

bb.cc:                                            ; preds = %_ZN4llvm9SparseSetINS_8RegisterES1_NS_20VirtReg2IndexFunctorEhE9findIndexEj.exit.thread.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(62) %i.ow, i32 %i.pa)
  br label %.critedge

bb.cd:                                            ; preds = %_ZN4llvm9SparseSetINS_8RegisterES1_NS_20VirtReg2IndexFunctorEhE9findIndexEj.exit.thread.i
  %i.qk = zext i32 %i.qi to i64
  %i.ql = load ptr, ptr %i.ow, align 8, !tbaa !244
  %i.qm = getelementptr inbounds nuw [4 x i8], ptr %i.ql, i64 %i.qk
  store i32 %i.pa, ptr %i.qm, align 1
  %i.qn = load i32, ptr %i.oy, align 8, !tbaa !254
  %i.qo = add i32 %i.qn, 1
  store i32 %i.qo, ptr %i.oy, align 8, !tbaa !254
  br label %.critedge

.critedge:                                        ; preds = %_ZN4llvm9SparseSetINS_8RegisterES1_NS_20VirtReg2IndexFunctorEhE9findIndexEj.exit.i, %bb.cd, %bb.cc, %bb.bw, %_ZNK4llvm10LiveRegSet8containsENS_13VirtRegOrUnitE.exit
  %i.qp = getelementptr inbounds nuw i8, ptr %.089243, i64 16 ; 2 uses
  %.not94 = icmp eq ptr %i.qp, %i.or
  br i1 %.not94, label %.loopexit, label %bb.bw

.loopexit:                                        ; preds = %.critedge, %bb.bv, %._crit_edge241
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL11addRegLanesRN4llvm15SmallVectorImplINS_14VRegMaskOrUnitEEES1_(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 %1, i64 %2) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !244   ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val12 = load i32, ptr %i.a, align 8, !tbaa !254 ; 4 uses
  %i.b = zext i32 %.val12 to i64                  ; 3 uses
  %.idx1.i = shl nuw nsw i64 %i.b, 4              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx1.i
  %i.d = lshr i64 %i.b, 2                         ; 2 uses
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %._crit_edge.i.i.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.a
  %i.e = and i64 %.idx1.i, 68719476672
  %scevgep.i.i.i.i = getelementptr i8, ptr %.val, i64 %i.e
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %.lr.ph.preheader.i.i.i.i
  %.064.i.i.i.i = phi i64 [ %i.n, %bb.e ], [ %i.d, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %.02963.i.i.i.i = phi ptr [ %i.m, %bb.e ], [ %.val, %.lr.ph.preheader.i.i.i.i ] ; 9 uses
  %.029.val45.i.i.i.i = load i32, ptr %.02963.i.i.i.i, align 8, !tbaa !248
  %i.f = icmp eq i32 %.029.val45.i.i.i.i, %1
  br i1 %i.f, label %"_ZN4llvm7find_ifIRNS_15SmallVectorImplINS_14VRegMaskOrUnitEEEZL11addRegLanesS4_S2_E3$_0EEDaOT_T0_.exit", label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.02963.i.i.i.i, i64 16
  %.val42.i.i.i.i = load i32, ptr %i.g, align 8, !tbaa !248
  %i.h = icmp eq i32 %.val42.i.i.i.i, %1
  br i1 %i.h, label %"_ZN4llvm7find_ifIRNS_15SmallVectorImplINS_14VRegMaskOrUnitEEEZL11addRegLanesS4_S2_E3$_0EEDaOT_T0_.exit.loopexit.split.loop.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.02963.i.i.i.i, i64 32
  %.val39.i.i.i.i = load i32, ptr %i.i, align 8, !tbaa !248
  %i.j = icmp eq i32 %.val39.i.i.i.i, %1
  br i1 %i.j, label %"_ZN4llvm7find_ifIRNS_15SmallVectorImplINS_14VRegMaskOrUnitEEEZL11addRegLanesS4_S2_E3$_0EEDaOT_T0_.exit.loopexit.split.loop.exit27", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.02963.i.i.i.i, i64 48
  %.val36.i.i.i.i = load i32, ptr %i.k, align 8, !tbaa !248
  %i.l = icmp eq i32 %.val36.i.i.i.i, %1
  br i1 %i.l, label %"_ZN4llvm7find_ifIRNS_15SmallVectorImplINS_14VRegMaskOrUnitEEEZL11addRegLanesS4_S2_E3$_0EEDaOT_T0_.exit.loopexit.split.loop.exit29", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %.02963.i.i.i.i, i64 64
  %i.n = add nsw i64 %.064.i.i.i.i, -1
  %i.o = icmp sgt i64 %.064.i.i.i.i, 1
  br i1 %i.o, label %.lr.ph.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !548

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.e
  %i.p = and i32 %.val12, 3
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.a
  %.pre-phi70.i.i.i.i = phi i32 [ %i.p, %._crit_edge.loopexit.i.i.i.i ], [ %.val12, %bb.a ]
  %.029.lcssa.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %.val, %bb.a ] ; 5 uses
  switch i32 %.pre-phi70.i.i.i.i, label %bb.k [
    i32 3, label %bb.f
    i32 2, label %bb.h
    i32 1, label %bb.j
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %.029.val.i.i.i.i = load i32, ptr %.029.lcssa.i.i.i.i, align 8, !tbaa !248
  %i.q = icmp eq i32 %.029.val.i.i.i.i, %1
  br i1 %i.q, label %"_ZN4llvm7find_ifIRNS_15SmallVectorImplINS_14VRegMaskOrUnitEEEZL11addRegLanesS4_S2_E3$_0EEDaOT_T0_.exit", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i, i64 16
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi ptr [ %i.r, %bb.g ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %.1.val.i.i.i.i = load i32, ptr %.1.i.i.i.i, align 8, !tbaa !248
  %i.s = icmp eq i32 %.1.val.i.i.i.i, %1
  br i1 %i.s, label %"_ZN4llvm7find_ifIRNS_15SmallVectorImplINS_14VRegMaskOrUnitEEEZL11addRegLanesS4_S2_E3$_0EEDaOT_T0_.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 16
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i.i
  %.2.i.i.i.i = phi ptr [ %i.t, %bb.i ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %.2.val.i.i.i.i = load i32, ptr %.2.i.i.i.i, align 8, !tbaa !248
  %i.u = icmp eq i32 %.2.val.i.i.i.i, %1
  br i1 %i.u, label %"_ZN4llvm7find_ifIRNS_15SmallVectorImplINS_14VRegMaskOrUnitEEEZL11addRegLanesS4_S2_E3$_0EEDaOT_T0_.exit", label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i.i.i
  br label %"_ZN4llvm7find_ifIRNS_15SmallVectorImplINS_14VRegMaskOrUnitEEEZL11addRegLanesS4_S2_E3$_0EEDaOT_T0_.exit"

"_ZN4llvm7find_ifIRNS_15SmallVectorImplINS_14VRegMaskOrUnitEEEZL11addRegLanesS4_S2_E3$_0EEDaOT_T0_.exit.loopexit.split.loop.exit": ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %.02963.i.i.i.i, i64 16
  br label %"_ZN4llvm7find_ifIRNS_15SmallVectorImplINS_14VRegMaskOrUnitEEEZL11addRegLanesS4_S2_E3$_0EEDaOT_T0_.exit"

"_ZN4llvm7find_ifIRNS_15SmallVectorImplINS_14VRegMaskOrUnitEEEZL11addRegLanesS4_S2_E3$_0EEDaOT_T0_.exit.loopexit.split.loop.exit27": ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %.02963.i.i.i.i, i64 32
  br label %"_ZN4llvm7find_ifIRNS_15SmallVectorImplINS_14VRegMaskOrUnitEEEZL11addRegLanesS4_S2_E3$_0EEDaOT_T0_.exit"

"_ZN4llvm7find_ifIRNS_15SmallVectorImplINS_14VRegMaskOrUnitEEEZL11addRegLanesS4_S2_E3$_0EEDaOT_T0_.exit.loopexit.split.loop.exit29": ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %.02963.i.i.i.i, i64 48
  br label %"_ZN4llvm7find_ifIRNS_15SmallVectorImplINS_14VRegMaskOrUnitEEEZL11addRegLanesS4_S2_E3$_0EEDaOT_T0_.exit"

"_ZN4llvm7find_ifIRNS_15SmallVectorImplINS_14VRegMaskOrUnitEEEZL11addRegLanesS4_S2_E3$_0EEDaOT_T0_.exit": ; preds = %.lr.ph.i.i.i.i, %"_ZN4llvm7find_ifIRNS_15SmallVectorImplINS_14VRegMaskOrUnitEEEZL11addRegLanesS4_S2_E3$_0EEDaOT_T0_.exit.loopexit.split.loop.exit", %"_ZN4llvm7find_ifIRNS_15SmallVectorImplINS_14VRegMaskOrUnitEEEZL11addRegLanesS4_S2_E3$_0EEDaOT_T0_.exit.loopexit.split.loop.exit27", %"_ZN4llvm7find_ifIRNS_15SmallVectorImplINS_14VRegMaskOrUnitEEEZL11addRegLanesS4_S2_E3$_0EEDaOT_T0_.exit.loopexit.split.loop.exit29", %bb.f, %bb.h, %bb.j, %bb.k
  %.028.i.i.i.i = phi ptr [ %.1.i.i.i.i, %bb.h ], [ %i.c, %bb.k ], [ %.2.i.i.i.i, %bb.j ], [ %.029.lcssa.i.i.i.i, %bb.f ], [ %i.x, %"_ZN4llvm7find_ifIRNS_15SmallVectorImplINS_14VRegMaskOrUnitEEEZL11addRegLanesS4_S2_E3$_0EEDaOT_T0_.exit.loopexit.split.loop.exit29" ], [ %i.v, %"_ZN4llvm7find_ifIRNS_15SmallVectorImplINS_14VRegMaskOrUnitEEEZL11addRegLanesS4_S2_E3$_0EEDaOT_T0_.exit.loopexit.split.loop.exit" ], [ %i.w, %"_ZN4llvm7find_ifIRNS_15SmallVectorImplINS_14VRegMaskOrUnitEEEZL11addRegLanesS4_S2_E3$_0EEDaOT_T0_.exit.loopexit.split.loop.exit27" ], [ %.02963.i.i.i.i, %.lr.ph.i.i.i.i ] ; 4 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %i.b
  %i.z = icmp eq ptr %.028.i.i.i.i, %i.y
  br i1 %i.z, label %bb.l, label %bb.o

bb.l:                                             ; preds = %"_ZN4llvm7find_ifIRNS_15SmallVectorImplINS_14VRegMaskOrUnitEEEZL11addRegLanesS4_S2_E3$_0EEDaOT_T0_.exit"
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !417
  %.not.i13 = icmp ult i32 %.val12, %i.ab
  br i1 %.not.i13, label %bb.n, label %bb.m, !prof !295

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_14VRegMaskOrUnitELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 %1, i64 %2)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_14VRegMaskOrUnitELb1EE9push_backES1_.exit

bb.n:                                             ; preds = %bb.l
  store i32 %1, ptr %.028.i.i.i.i, align 1
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.028.i.i.i.i, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx.i, align 1
  %i.ac = load i32, ptr %i.a, align 8, !tbaa !254
  %i.ad = add i32 %i.ac, 1
  store i32 %i.ad, ptr %i.a, align 8, !tbaa !254
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_14VRegMaskOrUnitELb1EE9push_backES1_.exit

bb.o:                                             ; preds = %"_ZN4llvm7find_ifIRNS_15SmallVectorImplINS_14VRegMaskOrUnitEEEZL11addRegLanesS4_S2_E3$_0EEDaOT_T0_.exit"
  %i.ae = getelementptr inbounds nuw i8, ptr %.028.i.i.i.i, i64 8 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !421
  %i.ag = or i64 %i.af, %2
  store i64 %i.ag, ptr %i.ae, align 8, !tbaa !421
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_14VRegMaskOrUnitELb1EE9push_backES1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_14VRegMaskOrUnitELb1EE9push_backES1_.exit: ; preds = %bb.n, %bb.m, %bb.o
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i64 @_ZNK4llvm18RegPressureTracker16getLiveThroughAtENS_13VirtRegOrUnitENS_9SlotIndexE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(352) %0, i32 %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !291  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 58
  %i.f = load i8, ptr %i.e, align 2, !tbaa !288, !range !290, !noundef !239
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = icmp slt i32 %1, 0
  br i1 %i.h, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.i = and i32 %1, 2147483647                   ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 3 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !254  ; 3 uses
  %i.l = icmp ugt i32 %i.k, %i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 136 ; 3 uses
  br i1 %i.l, label %_ZNK4llvm13LiveIntervals11hasIntervalENS_8RegisterE.exit.i.i.i, label %bb.c

_ZNK4llvm13LiveIntervals11hasIntervalENS_8RegisterE.exit.i.i.i: ; preds = %bb.b
  %i.n = zext nneg i32 %i.i to i64                ; 2 uses
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !244  ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.n
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !479  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZN4llvm13LiveIntervals31createAndComputeVirtRegIntervalENS_8RegisterE.exit.i.i.i, label %_ZNK4llvm13LiveIntervals11getIntervalENS_8RegisterE.exit.i

bb.c:                                             ; preds = %bb.b
  %i.r = add nuw i32 %i.i, 1
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = zext nneg i32 %i.k to i64                ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !480  ; 2 uses
  %i.w = sub nuw nsw i64 %i.s, %i.t               ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  %i.y = load i32, ptr %i.x, align 4, !tbaa !417
  %.not.i.i.i.i.i.not.i.i.i.i.i.i = icmp ult i32 %i.i, %i.y
  br i1 %.not.i.i.i.i.i.not.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12LiveIntervalELb1EE28reserveForParamAndGetAddressERS2_m.exit.i.i.i.i.i.i.i.i.i, label %bb.d, !prof !295

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(25) %i.m, ptr noundef nonnull %i.u, i64 noundef %i.s, i64 noundef 8) #19
  %.pre.i.i.i.i.i.i.i.i.i = load i32, ptr %i.j, align 8, !tbaa !254 ; 2 uses
  %.pre.i.i.i.i.i.i.i.i = zext i32 %.pre.i.i.i.i.i.i.i.i.i to i64
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12LiveIntervalELb1EE28reserveForParamAndGetAddressERS2_m.exit.i.i.i.i.i.i.i.i.i

_ZN4llvm23SmallVectorTemplateBaseIPNS_12LiveIntervalELb1EE28reserveForParamAndGetAddressERS2_m.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %.pre-phi.i.i.i.i.i.i.i.i = phi i64 [ %i.t, %bb.c ], [ %.pre.i.i.i.i.i.i.i.i, %bb.d ]
  %i.z = phi i32 [ %i.k, %bb.c ], [ %.pre.i.i.i.i.i.i.i.i.i, %bb.d ]
  %i.aa = load ptr, ptr %i.m, align 8, !tbaa !244 ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.pre-phi.i.i.i.i.i.i.i.i ; 4 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.w, 3
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i
end_hunk_1
