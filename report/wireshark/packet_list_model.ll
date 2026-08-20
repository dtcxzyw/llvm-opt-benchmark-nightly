inline.NumInlined: 1406
inline.NumDeleted: 548
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN15PacketListModel4sortEiN2Qt9SortOrderE:bb.a
_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i133:   ; preds = %bb.aj
  %i.dj = atomicrmw sub ptr %i.di, i32 1 acq_rel, align 4
  %.not.i.i134 = icmp eq i32 %i.dj, 1
  br i1 %.not.i.i134, label %bb.ak, label %_ZN7QStringD2Ev.exit135

bb.ak:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i133
  %i.dk = load ptr, ptr %12, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.dk, i64 noundef 2, i64 noundef 8) #33
  br label %_ZN7QStringD2Ev.exit135

_ZN7QStringD2Ev.exit135:                          ; preds = %bb.ak, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i133, %bb.aj, %bb.ai
  %.pn = phi { ptr, i32 } [ %i.dg, %bb.ai ], [ %i.dh, %bb.aj ], [ %i.dh, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i133 ], [ %i.dh, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  br label %bb.cw

bb.al:                                            ; preds = %_ZN16PacketListRecord10textColumnEi.exit121
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #33
  invoke void @_ZNK11QMetaObject2trEPKcS1_i(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %13, ptr noundef nonnull align 8 dereferenceable_or_null(56) @_ZN15PacketListModel16staticMetaObjectE, ptr noundef nonnull @.str.5, ptr noundef null, i32 noundef -1)
          to label %_ZN15PacketListModel2trEPKcS1_i.exit137 unwind label %bb.an

_ZN15PacketListModel2trEPKcS1_i.exit137:          ; preds = %bb.al
  %i.dl = load <2 x ptr>, ptr %13, align 16
  %i.dm = load <2 x ptr>, ptr %10, align 16
  %i.dn = load ptr, ptr %10, align 16             ; 2 uses
  store <2 x ptr> %i.dl, ptr %10, align 16
  store <2 x ptr> %i.dm, ptr %13, align 16
  %i.do = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.dq = load i64, ptr %i.do, align 16
  %i.dr = load i64, ptr %i.dp, align 16
  store i64 %i.dr, ptr %i.do, align 16
  store i64 %i.dq, ptr %i.dp, align 16
  %.not.i.i.i138 = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i138, label %_ZN7QStringD2Ev.exit141, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i139

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i139:   ; preds = %_ZN15PacketListModel2trEPKcS1_i.exit137
  %i.ds = atomicrmw sub ptr %i.dn, i32 1 acq_rel, align 4
  %.not.i.i140 = icmp eq i32 %i.ds, 1
  br i1 %.not.i.i140, label %bb.am, label %_ZN7QStringD2Ev.exit141

bb.am:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i139
  %i.dt = load ptr, ptr %13, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.dt, i64 noundef 2, i64 noundef 8) #33
  br label %_ZN7QStringD2Ev.exit141

_ZN7QStringD2Ev.exit141:                          ; preds = %_ZN15PacketListModel2trEPKcS1_i.exit137, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i139, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #33
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.du = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #33
  br label %bb.cw

bb.ao:                                            ; preds = %_ZN7QStringD2Ev.exit141, %_ZN7QStringD2Ev.exit131
  store i8 0, ptr @_ZN15PacketListModel10stop_flag_E, align 1
  store double 0.000000e+00, ptr @_ZN15PacketListModel6comps_E, align 8
  %i.dv = load i64, ptr %i.h, align 8
  %i.dw = sitofp i64 %i.dv to double              ; 2 uses
  %i.dx = call double @log2(double noundef %i.dw) #33
  %i.dy = fmul double %i.dx, %i.dw
  store double %i.dy, ptr @_ZN15PacketListModel10exp_comps_E, align 8
  store ptr null, ptr @_ZN15PacketListModel15progress_frame_E, align 8
  %i.dz = load ptr, ptr @mainApp, align 8
  %i.ea = invoke noundef ptr @_ZN15MainApplication10mainWindowEv(ptr noundef align 8 dereferenceable_or_null(168) %i.dz)
          to label %bb.ap unwind label %bb.av     ; 2 uses

bb.ap:                                            ; preds = %bb.ao
  %.not45 = icmp eq ptr %i.ea, null
  br i1 %.not45, label %bb.ay, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %14, i8 0, i64 24, i1 false)
  %i.eb = invoke noundef ptr @_Z20qt_qFindChild_helperPK7QObjectRK7QStringRK11QMetaObject6QFlagsIN2Qt15FindChildOptionEE(ptr noundef nonnull align 8 dereferenceable_or_null(16) %i.ea, ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(56) @_ZN13ProgressFrame16staticMetaObjectE, i32 1)
          to label %_ZNK7QObject9findChildIP13ProgressFrameEET_RK7QString6QFlagsIN2Qt15FindChildOptionEE.exit unwind label %bb.aw ; 2 uses

_ZNK7QObject9findChildIP13ProgressFrameEET_RK7QString6QFlagsIN2Qt15FindChildOptionEE.exit: ; preds = %bb.aq
  store ptr %i.eb, ptr @_ZN15PacketListModel15progress_frame_E, align 8
  %i.ec = load ptr, ptr %14, align 8              ; 2 uses
  %.not.i.i.i143 = icmp eq ptr %i.ec, null
  br i1 %.not.i.i.i143, label %_ZN7QStringD2Ev.exit146, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i144

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i144:   ; preds = %_ZNK7QObject9findChildIP13ProgressFrameEET_RK7QString6QFlagsIN2Qt15FindChildOptionEE.exit
  %i.ed = atomicrmw sub ptr %i.ec, i32 1 acq_rel, align 4
  %.not.i.i145 = icmp eq i32 %i.ed, 1
  br i1 %.not.i.i145, label %bb.ar, label %_ZN7QStringD2Ev.exit146thread-pre-split

bb.ar:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i144
  %i.ee = load ptr, ptr %14, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ee, i64 noundef 2, i64 noundef 8) #33
  br label %_ZN7QStringD2Ev.exit146thread-pre-split

_ZN7QStringD2Ev.exit146thread-pre-split:          ; preds = %bb.ar, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i144
  %.pr = load ptr, ptr @_ZN15PacketListModel15progress_frame_E, align 8
  br label %_ZN7QStringD2Ev.exit146

_ZN7QStringD2Ev.exit146:                          ; preds = %_ZN7QStringD2Ev.exit146thread-pre-split, %_ZNK7QObject9findChildIP13ProgressFrameEET_RK7QString6QFlagsIN2Qt15FindChildOptionEE.exit
  %i.ef = phi ptr [ %.pr, %_ZN7QStringD2Ev.exit146thread-pre-split ], [ %i.eb, %_ZNK7QObject9findChildIP13ProgressFrameEET_RK7QString6QFlagsIN2Qt15FindChildOptionEE.exit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #33
  %.not46 = icmp eq ptr %i.ef, null
  br i1 %.not46, label %bb.ay, label %bb.as

bb.as:                                            ; preds = %_ZN7QStringD2Ev.exit146
  %i.eg = invoke noundef ptr @_ZN13ProgressFrame12showProgressERK7QStringbbPbi(ptr noundef nonnull align 8 dereferenceable_or_null(152) %i.ef, ptr noundef nonnull align 8 dereferenceable(24) %10, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @_ZN15PacketListModel10stop_flag_E, i32 noundef 0)
          to label %bb.at unwind label %bb.av     ; 0 uses

bb.at:                                            ; preds = %bb.as
  %i.eh = load ptr, ptr @_ZN15PacketListModel15progress_frame_E, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 ptrtoint (ptr @_ZN13ProgressFrame11stopLoadingEv to i64), ptr %i.c, align 8, !noalias !90
  %.fca.1.gep14.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %.fca.1.gep14.i, align 8, !noalias !90
  store i64 ptrtoint (ptr @_ZN15PacketListModel11stopSortingEv to i64), ptr %i.d, align 8, !noalias !90
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 0, ptr %.fca.1.gep.i, align 8, !noalias !90
  %i.ei = invoke noalias noundef dereferenceable_or_null(32) ptr @_Znwm(i64 noundef 32) #31
          to label %.noexc147 unwind label %bb.av ; 5 uses

.noexc147:                                        ; preds = %bb.at
  store i32 1, ptr %i.ei, align 4, !noalias !90
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store ptr @_ZN9QtPrivate11QSlotObjectIM15PacketListModelFvvENS_4ListIJEEEvE4implEiPNS_15QSlotObjectBaseEP7QObjectPPvPb, ptr %i.ej, align 8, !noalias !90
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  store i64 ptrtoint (ptr @_ZN15PacketListModel11stopSortingEv to i64), ptr %i.ek, align 8, !noalias !90
  %.repack7.i.i = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  store i64 0, ptr %.repack7.i.i, align 8, !noalias !90
  invoke void @_ZN7QObject11connectImplEPKS_PPvS1_S3_PN9QtPrivate15QSlotObjectBaseEN2Qt14ConnectionTypeEPKiPK11QMetaObject(ptr dead_on_unwind nonnull writable sret(%"class.QMetaObject::Connection") align 8 %15, ptr noundef %i.eh, ptr noundef nonnull %i.c, ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef %i.ei, i32 noundef 0, ptr noundef null, ptr noundef nonnull @_ZN13ProgressFrame16staticMetaObjectE)
          to label %bb.au unwind label %bb.av

bb.au:                                            ; preds = %.noexc147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @_ZN11QMetaObject10ConnectionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %15) #33
  br label %bb.ay

bb.av:                                            ; preds = %.noexc147, %bb.at, %bb.as, %bb.ao
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.aw:                                            ; preds = %bb.aq
  %i.em = landingpad { ptr, i32 }
          cleanup
  %i.en = load ptr, ptr %14, align 8              ; 2 uses
  %.not.i.i.i149 = icmp eq ptr %i.en, null
  br i1 %.not.i.i.i149, label %_ZN7QStringD2Ev.exit152, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i150

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i150:   ; preds = %bb.aw
  %i.eo = atomicrmw sub ptr %i.en, i32 1 acq_rel, align 4
  %.not.i.i151 = icmp eq i32 %i.eo, 1
  br i1 %.not.i.i151, label %bb.ax, label %_ZN7QStringD2Ev.exit152

bb.ax:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i150
  %i.ep = load ptr, ptr %14, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ep, i64 noundef 2, i64 noundef 8) #33
  br label %_ZN7QStringD2Ev.exit152

_ZN7QStringD2Ev.exit152:                          ; preds = %bb.aw, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i150, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #33
  br label %bb.cw

bb.ay:                                            ; preds = %_ZN7QStringD2Ev.exit146, %bb.au, %bb.ap
  call void @_ZN13QElapsedTimer5startEv(ptr noundef nonnull align 8 dereferenceable_or_null(16) @_ZL11busy_timer_) #33
  %i.eq = load i32, ptr @_ZN15PacketListModel12sort_column_E, align 4
  %i.er = invoke noundef zeroext i1 @_ZN15PacketListModel15isNumericColumnEi(ptr align 8 poison, i32 noundef %i.eq)
          to label %bb.az unwind label %bb.ah

bb.az:                                            ; preds = %bb.ay
  %i.es = zext i1 %i.er to i32
  store i32 %i.es, ptr @_ZN15PacketListModel23sort_column_is_numeric_E, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #33
  %i.et = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 5 uses
  %i.eu = getelementptr i8, ptr %0, i64 144
  %i.ev = load <2 x ptr>, ptr %i.g, align 8
  %i.ew = load ptr, ptr %i.g, align 8             ; 2 uses
  store <2 x ptr> %i.ev, ptr %16, align 16
  %i.ex = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
  %i.ey = load i64, ptr %i.h, align 8
  store i64 %i.ey, ptr %i.ex, align 16
  %.not.i.i.i153 = icmp eq ptr %i.ew, null
  br i1 %.not.i.i.i153, label %_ZN5QListIP16PacketListRecordEC2ERKS2_.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ez = atomicrmw add ptr %i.ew, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5QListIP16PacketListRecordEC2ERKS2_.exit

_ZN5QListIP16PacketListRecordEC2ERKS2_.exit:      ; preds = %bb.az, %bb.ba
  %i.fa = load i8, ptr getelementptr inbounds nuw (i8, ptr @recent, i64 10), align 2, !range !6, !noundef !7
  %i.fb = trunc nuw i8 %i.fa to i1
  %i.fc = load i32, ptr getelementptr inbounds nuw (i8, ptr @prefs, i64 256), align 8
  %i.fd = icmp sgt i32 %i.fc, 0
  %or.cond = select i1 %i.fb, i1 %i.fd, i1 false
  br i1 %or.cond, label %bb.bb, label %.loopexit

bb.bb:                                            ; preds = %_ZN5QListIP16PacketListRecordEC2ERKS2_.exit
  %i.fe = getelementptr i8, ptr %0, i64 208
  %i.ff = load ptr, ptr %i.fe, align 8            ; 5 uses
  %.not.i154 = icmp eq ptr %i.ff, null
  br i1 %.not.i154, label %_ZNK5QHashI7QStringiE10constBeginEv.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fg = getelementptr i8, ptr %i.ff, i64 32
  %i.fh = load ptr, ptr %i.fg, align 8            ; 2 uses
  %i.fi = load i8, ptr %i.fh, align 1
  %.not.i.i.i155 = icmp eq i8 %i.fi, -1
  br i1 %.not.i.i.i155, label %bb.bd, label %_ZNK5QHashI7QStringiE14const_iteratorneERKS2_.exit.thread.lr.ph

bb.bd:                                            ; preds = %bb.bc
  %i.fj = getelementptr i8, ptr %i.ff, i64 16
  %i.fk = load i64, ptr %i.fj, align 8            ; 2 uses
  %i.fl = icmp eq i64 %i.fk, 1
  br i1 %i.fl, label %_ZNK5QHashI7QStringiE10constBeginEv.exit, label %.lr.ph317

bb.be:                                            ; preds = %.lr.ph317
  %i.fm = add i64 %i.fo, 1                        ; 2 uses
  %i.fn = icmp eq i64 %i.fm, %i.fk
  br i1 %i.fn, label %_ZNK5QHashI7QStringiE10constBeginEv.exit, label %.lr.ph317, !llvm.loop !93

.lr.ph317:                                        ; preds = %bb.bd, %bb.be
  %i.fo = phi i64 [ %i.fm, %bb.be ], [ 1, %bb.bd ] ; 4 uses
  %i.fp = lshr i64 %i.fo, 7
  %i.fq = getelementptr [144 x i8], ptr %i.fh, i64 %i.fp
  %i.fr = and i64 %i.fo, 127
  %i.fs = getelementptr i8, ptr %i.fq, i64 %i.fr
  %i.ft = load i8, ptr %i.fs, align 1
  %.not.i.i.i.i = icmp eq i8 %i.ft, -1
  br i1 %.not.i.i.i.i, label %bb.be, label %._ZNK5QHashI7QStringiE10constBeginEv.exit.loopexit_crit_edge, !llvm.loop !93

._ZNK5QHashI7QStringiE10constBeginEv.exit.loopexit_crit_edge: ; preds = %.lr.ph317
  br label %_ZNK5QHashI7QStringiE10constBeginEv.exit, !llvm.loop !93

_ZNK5QHashI7QStringiE10constBeginEv.exit:         ; preds = %bb.be, %bb.bd, %._ZNK5QHashI7QStringiE10constBeginEv.exit.loopexit_crit_edge, %bb.bb
  %.sroa.0.0.i = phi ptr [ null, %bb.bb ], [ null, %bb.bd ], [ %i.ff, %._ZNK5QHashI7QStringiE10constBeginEv.exit.loopexit_crit_edge ], [ null, %bb.be ] ; 2 uses
  %.sroa.4.0.i = phi i64 [ 0, %bb.bb ], [ 0, %bb.bd ], [ %i.fo, %._ZNK5QHashI7QStringiE10constBeginEv.exit.loopexit_crit_edge ], [ 0, %bb.be ] ; 2 uses
  %20 = icmp ne ptr %.sroa.0.0.i, null
  %21 = icmp ne i64 %.sroa.4.0.i, 0
  %or.cond254256 = or i1 %20, %21
  br i1 %or.cond254256, label %_ZNK5QHashI7QStringiE14const_iteratorneERKS2_.exit.thread.lr.ph, label %.loopexit

_ZNK5QHashI7QStringiE14const_iteratorneERKS2_.exit.thread.lr.ph: ; preds = %bb.bc, %_ZNK5QHashI7QStringiE10constBeginEv.exit
  %.sroa.4.0.i314 = phi i64 [ %.sroa.4.0.i, %_ZNK5QHashI7QStringiE10constBeginEv.exit ], [ 0, %bb.bc ]
  %.sroa.0.0.i313 = phi ptr [ %.sroa.0.0.i, %_ZNK5QHashI7QStringiE10constBeginEv.exit ], [ %i.ff, %bb.bc ]
  %i.fu = getelementptr inbounds nuw i8, ptr %17, i64 8
  br label %_ZNK5QHashI7QStringiE14const_iteratorneERKS2_.exit.thread

_ZNK5QHashI7QStringiE14const_iteratorneERKS2_.exit.thread: ; preds = %_ZNK5QHashI7QStringiE14const_iteratorneERKS2_.exit.thread.lr.ph, %_ZN5QHashI7QStringiE14const_iteratorppEv.exit
  %.sroa.9240.0258 = phi i64 [ %.sroa.4.0.i314, %_ZNK5QHashI7QStringiE14const_iteratorneERKS2_.exit.thread.lr.ph ], [ %.sroa.9240.1, %_ZN5QHashI7QStringiE14const_iteratorppEv.exit ] ; 3 uses
  %.sroa.0236.0257 = phi ptr [ %.sroa.0.0.i313, %_ZNK5QHashI7QStringiE14const_iteratorneERKS2_.exit.thread.lr.ph ], [ %.sroa.0236.1, %_ZN5QHashI7QStringiE14const_iteratorppEv.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #33
  %i.fv = getelementptr i8, ptr %.sroa.0236.0257, i64 32 ; 3 uses
  %i.fw = load ptr, ptr %i.fv, align 8
  %i.fx = lshr i64 %.sroa.9240.0258, 7            ; 2 uses
  %i.fy = getelementptr [144 x i8], ptr %i.fw, i64 %i.fx ; 2 uses
  %i.fz = and i64 %.sroa.9240.0258, 127           ; 2 uses
  %i.ga = getelementptr i8, ptr %i.fy, i64 128
  %i.gb = load ptr, ptr %i.ga, align 8
  %i.gc = getelementptr i8, ptr %i.fy, i64 %i.fz
  %i.gd = load i8, ptr %i.gc, align 1
  %i.ge = zext i8 %i.gd to i64
  %i.gf = getelementptr [32 x i8], ptr %i.gb, i64 %i.ge
  invoke void @_ZN7QString13toUtf8_helperERKS_(ptr dead_on_unwind nonnull writable sret(%class.QByteArray) align 8 %17, ptr noundef align 8 dereferenceable(24) dereferenceable_or_null(24) %i.gf)
          to label %bb.bf unwind label %bb.bj

bb.bf:                                            ; preds = %_ZNK5QHashI7QStringiE14const_iteratorneERKS2_.exit.thread
  %i.gg = load ptr, ptr %i.fu, align 8            ; 2 uses
  %.not.i.i157 = icmp eq ptr %i.gg, null
  %spec.select.i.i158 = select i1 %.not.i.i157, ptr @_ZN10QByteArray6_emptyE, ptr %i.gg
  %i.gh = invoke noalias ptr @g_strdup(ptr noundef nonnull %spec.select.i.i158)
          to label %_ZL15g_strdup_inlinePKc.exit unwind label %bb.bk

_ZL15g_strdup_inlinePKc.exit:                     ; preds = %bb.bf
  %i.gi = load ptr, ptr %i.fv, align 8
  %i.gj = getelementptr [144 x i8], ptr %i.gi, i64 %i.fx ; 2 uses
  %i.gk = getelementptr i8, ptr %i.gj, i64 128
  %i.gl = load ptr, ptr %i.gk, align 8
  %i.gm = getelementptr i8, ptr %i.gj, i64 %i.fz
  %i.gn = load i8, ptr %i.gm, align 1
  %i.go = zext i8 %i.gn to i64
  %i.gp = getelementptr [32 x i8], ptr %i.gl, i64 %i.go
  %i.gq = getelementptr i8, ptr %i.gp, i64 24
  %i.gr = load i32, ptr %i.gq, align 4
  %i.gs = sext i32 %i.gr to i64
  %i.gt = load ptr, ptr %16, align 16             ; 3 uses
  %.not.i.i.i.i159 = icmp eq ptr %i.gt, null
  br i1 %.not.i.i.i.i159, label %_ZN5QListIP16PacketListRecordE6detachEv.exit.i, label %_ZNK17QArrayDataPointerIP16PacketListRecordE11needsDetachEv.exit.i.i.i

_ZNK17QArrayDataPointerIP16PacketListRecordE11needsDetachEv.exit.i.i.i: ; preds = %_ZL15g_strdup_inlinePKc.exit
  %i.gu = load atomic i32, ptr %i.gt monotonic, align 4
  %i.gv = icmp sgt i32 %i.gu, 1
  br i1 %i.gv, label %_ZN5QListIP16PacketListRecordE6detachEv.exit.i, label %_ZNK17QArrayDataPointerIP16PacketListRecordE11needsDetachEv.exit.i.i.i.i

_ZN5QListIP16PacketListRecordE6detachEv.exit.i:   ; preds = %_ZNK17QArrayDataPointerIP16PacketListRecordE11needsDetachEv.exit.i.i.i, %_ZL15g_strdup_inlinePKc.exit
  invoke void @_ZN17QArrayDataPointerIP16PacketListRecordE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS2_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %16, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %.noexc161 unwind label %bb.bk

.noexc161:                                        ; preds = %_ZN5QListIP16PacketListRecordE6detachEv.exit.i
  %.pre.i = load ptr, ptr %16, align 16           ; 2 uses
  %.not.i.i.i.i.i160 = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i.i.i.i160, label %_ZNK17QArrayDataPointerIP16PacketListRecordE11needsDetachEv.exit.thread.i.i.i.i, label %_ZNK17QArrayDataPointerIP16PacketListRecordE11needsDetachEv.exit.i.i.i.i

_ZNK17QArrayDataPointerIP16PacketListRecordE11needsDetachEv.exit.i.i.i.i: ; preds = %.noexc161, %_ZNK17QArrayDataPointerIP16PacketListRecordE11needsDetachEv.exit.i.i.i
  %i.gw = phi ptr [ %.pre.i, %.noexc161 ], [ %i.gt, %_ZNK17QArrayDataPointerIP16PacketListRecordE11needsDetachEv.exit.i.i.i ]
  %i.gx = load atomic i32, ptr %i.gw monotonic, align 4
  %i.gy = icmp sgt i32 %i.gx, 1
  br i1 %i.gy, label %_ZNK17QArrayDataPointerIP16PacketListRecordE11needsDetachEv.exit.thread.i.i.i.i, label %bb.bg

_ZNK17QArrayDataPointerIP16PacketListRecordE11needsDetachEv.exit.thread.i.i.i.i: ; preds = %_ZNK17QArrayDataPointerIP16PacketListRecordE11needsDetachEv.exit.i.i.i.i, %.noexc161
  invoke void @_ZN17QArrayDataPointerIP16PacketListRecordE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS2_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %16, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %bb.bg unwind label %bb.bk

bb.bg:                                            ; preds = %_ZNK17QArrayDataPointerIP16PacketListRecordE11needsDetachEv.exit.i.i.i.i, %_ZNK17QArrayDataPointerIP16PacketListRecordE11needsDetachEv.exit.thread.i.i.i.i
  %i.gz = load ptr, ptr %i.et, align 8
  %i.ha = getelementptr [8 x i8], ptr %i.gz, i64 %i.gs
  %i.hb = load ptr, ptr %i.ha, align 8
  %i.hc = getelementptr i8, ptr %i.hb, i64 8
  %i.hd = load ptr, ptr %i.hc, align 8
  %i.he = getelementptr i8, ptr %i.hd, i64 96
  store ptr %i.gh, ptr %i.he, align 8
  %i.hf = load ptr, ptr %17, align 8              ; 2 uses
  %.not.i.i.i163 = icmp eq ptr %i.hf, null
  br i1 %.not.i.i.i163, label %_ZN10QByteArrayD2Ev.exit, label %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i

_ZN17QArrayDataPointerIcE5derefEv.exit.i.i:       ; preds = %bb.bg
  %i.hg = atomicrmw sub ptr %i.hf, i32 1 acq_rel, align 4
  %.not.i.i164 = icmp eq i32 %i.hg, 1
  br i1 %.not.i.i164, label %bb.bh, label %_ZN10QByteArrayD2Ev.exit

bb.bh:                                            ; preds = %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i
  %i.hh = load ptr, ptr %17, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.hh, i64 noundef 1, i64 noundef 8) #33
  br label %_ZN10QByteArrayD2Ev.exit

_ZN10QByteArrayD2Ev.exit:                         ; preds = %bb.bg, %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #33
  %i.hi = getelementptr i8, ptr %.sroa.0236.0257, i64 16
  %i.hj = load i64, ptr %i.hi, align 8            ; 2 uses
  %i.hk = add i64 %.sroa.9240.0258, 1             ; 2 uses
  %i.hl = icmp eq i64 %i.hk, %i.hj
  br i1 %i.hl, label %_ZN5QHashI7QStringiE14const_iteratorppEv.exit, label %.lr.ph322.preheader

.lr.ph322.preheader:                              ; preds = %_ZN10QByteArrayD2Ev.exit
  %i.hm = load ptr, ptr %i.fv, align 8
  br label %.lr.ph322

bb.bi:                                            ; preds = %.lr.ph322
  %i.hn = add i64 %i.hp, 1                        ; 2 uses
  %i.ho = icmp eq i64 %i.hn, %i.hj
  br i1 %i.ho, label %_ZN5QHashI7QStringiE14const_iteratorppEv.exit, label %.lr.ph322, !llvm.loop !93

.lr.ph322:                                        ; preds = %.lr.ph322.preheader, %bb.bi
  %i.hp = phi i64 [ %i.hn, %bb.bi ], [ %i.hk, %.lr.ph322.preheader ] ; 4 uses
  %i.hq = lshr i64 %i.hp, 7
  %i.hr = getelementptr [144 x i8], ptr %i.hm, i64 %i.hq
  %i.hs = and i64 %i.hp, 127
  %i.ht = getelementptr i8, ptr %i.hr, i64 %i.hs
  %i.hu = load i8, ptr %i.ht, align 1
  %.not.i.i.i165 = icmp eq i8 %i.hu, -1
  br i1 %.not.i.i.i165, label %bb.bi, label %._ZN5QHashI7QStringiE14const_iteratorppEv.exit_crit_edge325, !llvm.loop !93

._ZN5QHashI7QStringiE14const_iteratorppEv.exit_crit_edge325: ; preds = %.lr.ph322
  br label %_ZN5QHashI7QStringiE14const_iteratorppEv.exit, !llvm.loop !93

_ZN5QHashI7QStringiE14const_iteratorppEv.exit:    ; preds = %bb.bi, %._ZN5QHashI7QStringiE14const_iteratorppEv.exit_crit_edge325, %_ZN10QByteArrayD2Ev.exit
  %.sroa.0236.1 = phi ptr [ %.sroa.0236.0257, %._ZN5QHashI7QStringiE14const_iteratorppEv.exit_crit_edge325 ], [ null, %_ZN10QByteArrayD2Ev.exit ], [ null, %bb.bi ] ; 2 uses
  %.sroa.9240.1 = phi i64 [ %i.hp, %._ZN5QHashI7QStringiE14const_iteratorppEv.exit_crit_edge325 ], [ 0, %_ZN10QByteArrayD2Ev.exit ], [ 0, %bb.bi ] ; 2 uses
  %i.hv = icmp ne ptr %.sroa.0236.1, null
  %i.hw = icmp ne i64 %.sroa.9240.1, 0
  %or.cond254 = or i1 %i.hv, %i.hw
  br i1 %or.cond254, label %_ZNK5QHashI7QStringiE14const_iteratorneERKS2_.exit.thread, label %.loopexit, !llvm.loop !94

bb.bj:                                            ; preds = %_ZNK5QHashI7QStringiE14const_iteratorneERKS2_.exit.thread
  %i.hx = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI9SortAbort
  br label %_ZN10QByteArrayD2Ev.exit169

bb.bk:                                            ; preds = %_ZNK17QArrayDataPointerIP16PacketListRecordE11needsDetachEv.exit.thread.i.i.i.i, %_ZN5QListIP16PacketListRecordE6detachEv.exit.i, %bb.bf
  %i.hy = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI9SortAbort               ; 3 uses
  %i.hz = load ptr, ptr %17, align 8              ; 2 uses
  %.not.i.i.i166 = icmp eq ptr %i.hz, null
  br i1 %.not.i.i.i166, label %_ZN10QByteArrayD2Ev.exit169, label %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i167

_ZN17QArrayDataPointerIcE5derefEv.exit.i.i167:    ; preds = %bb.bk
  %i.ia = atomicrmw sub ptr %i.hz, i32 1 acq_rel, align 4
  %.not.i.i168 = icmp eq i32 %i.ia, 1
  br i1 %.not.i.i168, label %bb.bl, label %_ZN10QByteArrayD2Ev.exit169

bb.bl:                                            ; preds = %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i167
  %i.ib = load ptr, ptr %17, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ib, i64 noundef 1, i64 noundef 8) #33
  br label %_ZN10QByteArrayD2Ev.exit169

_ZN10QByteArrayD2Ev.exit169:                      ; preds = %bb.bl, %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i167, %bb.bk, %bb.bj
  %.pn51 = phi { ptr, i32 } [ %i.hx, %bb.bj ], [ %i.hy, %bb.bk ], [ %i.hy, %_ZN17QArrayDataPointerIcE5derefEv.exit.i.i167 ], [ %i.hy, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #33
  br label %_ZN9QtPrivate17QForeachContainerI5QListIP16PacketListRecordEED2Ev.exit189

.loopexit:                                        ; preds = %_ZN5QHashI7QStringiE14const_iteratorppEv.exit, %_ZNK5QHashI7QStringiE10constBeginEv.exit, %_ZN5QListIP16PacketListRecordEC2ERKS2_.exit
  %i.ic = load ptr, ptr %16, align 16             ; 3 uses
  %.not.i.i.i.i170 = icmp eq ptr %i.ic, null
  br i1 %.not.i.i.i.i170, label %_ZNK17QArrayDataPointerIP16PacketListRecordE11needsDetachEv.exit.thread.i.i.i, label %_ZNK17QArrayDataPointerIP16PacketListRecordE11needsDetachEv.exit.i.i.i171

_ZNK17QArrayDataPointerIP16PacketListRecordE11needsDetachEv.exit.i.i.i171: ; preds = %.loopexit
  %i.id = load atomic i32, ptr %i.ic monotonic, align 4
  %i.ie = icmp sgt i32 %i.id, 1
  br i1 %i.ie, label %_ZNK17QArrayDataPointerIP16PacketListRecordE11needsDetachEv.exit.thread.i.i.i, label %.thread

.thread:                                          ; preds = %_ZNK17QArrayDataPointerIP16PacketListRecordE11needsDetachEv.exit.i.i.i171
  %i.if = load ptr, ptr %i.et, align 8
  br label %_ZNK17QArrayDataPointerIP16PacketListRecordE11needsDetachEv.exit.i.i.i175

_ZNK17QArrayDataPointerIP16PacketListRecordE11needsDetachEv.exit.thread.i.i.i: ; preds = %_ZNK17QArrayDataPointerIP16PacketListRecordE11needsDetachEv.exit.i.i.i171, %.loopexit
  invoke void @_ZN17QArrayDataPointerIP16PacketListRecordE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS2_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %16, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %bb.bm unwind label %bb.bu

bb.bm:                                            ; preds = %_ZNK17QArrayDataPointerIP16PacketListRecordE11needsDetachEv.exit.thread.i.i.i
  %.pre = load ptr, ptr %16, align 16             ; 2 uses
  %i.ig = load ptr, ptr %i.et, align 8            ; 2 uses
  %.not.i.i.i.i174 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i.i174, label %_ZNK17QArrayDataPointerIP16PacketListRecordE11needsDetachEv.exit.thread.i.i.i177, label %_ZNK17QArrayDataPointerIP16PacketListRecordE11needsDetachEv.exit.i.i.i175

_ZNK17QArrayDataPointerIP16PacketListRecordE11needsDetachEv.exit.i.i.i175: ; preds = %.thread, %bb.bm
  %i.ih = phi ptr [ %i.if, %.thread ], [ %i.ig, %bb.bm ] ; 3 uses
  %i.ii = phi ptr [ %i.ic, %.thread ], [ %.pre, %bb.bm ]
  %i.ij = load atomic i32, ptr %i.ii monotonic, align 4
  %i.ik = icmp sgt i32 %i.ij, 1
  br i1 %i.ik, label %_ZNK17QArrayDataPointerIP16PacketListRecordE11needsDetachEv.exit.thread.i.i.i177, label %bb.bn

_ZNK17QArrayDataPointerIP16PacketListRecordE11needsDetachEv.exit.thread.i.i.i177: ; preds = %_ZNK17QArrayDataPointerIP16PacketListRecordE11needsDetachEv.exit.i.i.i175, %bb.bm
  %i.il = phi ptr [ %i.ih, %_ZNK17QArrayDataPointerIP16PacketListRecordE11needsDetachEv.exit.i.i.i175 ], [ %i.ig, %bb.bm ]
  invoke void @_ZN17QArrayDataPointerIP16PacketListRecordE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS2_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %16, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZNK17QArrayDataPointerIP16PacketListRecordE11needsDetachEv.exit.thread.i.i.i177._crit_edge unwind label %bb.bu

_ZNK17QArrayDataPointerIP16PacketListRecordE11needsDetachEv.exit.thread.i.i.i177._crit_edge: ; preds = %_ZNK17QArrayDataPointerIP16PacketListRecordE11needsDetachEv.exit.thread.i.i.i177
  %.pre261 = load ptr, ptr %i.et, align 8
  br label %bb.bn

bb.bn:                                            ; preds = %_ZNK17QArrayDataPointerIP16PacketListRecordE11needsDetachEv.exit.thread.i.i.i177._crit_edge, %_ZNK17QArrayDataPointerIP16PacketListRecordE11needsDetachEv.exit.i.i.i175
  %i.im = phi ptr [ %i.il, %_ZNK17QArrayDataPointerIP16PacketListRecordE11needsDetachEv.exit.thread.i.i.i177._crit_edge ], [ %i.ih, %_ZNK17QArrayDataPointerIP16PacketListRecordE11needsDetachEv.exit.i.i.i175 ] ; 4 uses
  %i.in = phi ptr [ %.pre261, %_ZNK17QArrayDataPointerIP16PacketListRecordE11needsDetachEv.exit.thread.i.i.i177._crit_edge ], [ %i.ih, %_ZNK17QArrayDataPointerIP16PacketListRecordE11needsDetachEv.exit.i.i.i175 ]
  %i.io = load i64, ptr %i.ex, align 16
  %i.ip = getelementptr [8 x i8], ptr %i.in, i64 %i.io ; 4 uses
  %.not.i.i179 = icmp eq ptr %i.im, %i.ip
  br i1 %.not.i.i179, label %_ZSt4sortIN5QListIP16PacketListRecordE8iteratorEPFbS2_S2_EEvT_S7_T0_.exit, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.iq = ptrtoint ptr %i.ip to i64
  %i.ir = ptrtoint ptr %i.im to i64
  %i.is = sub i64 %i.iq, %i.ir
  %i.it = ashr exact i64 %i.is, 3
  %i.iu = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.it, i1 true)
  %i.iv = shl nuw nsw i64 %i.iu, 1
  %i.iw = xor i64 %i.iv, 126
  invoke void @_ZSt16__introsort_loopIN5QListIP16PacketListRecordE8iteratorExN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SB_T0_T1_(ptr %i.im, ptr %i.ip, i64 noundef %i.iw, ptr nonnull @_ZN15PacketListModel14recordLessThanEP16PacketListRecordS1_)
          to label %.noexc180 unwind label %bb.bu

.noexc180:                                        ; preds = %bb.bo
  invoke void @_ZSt22__final_insertion_sortIN5QListIP16PacketListRecordE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS2_S2_EEEEvT_SB_T0_(ptr %i.im, ptr %i.ip, ptr nonnull @_ZN15PacketListModel14recordLessThanEP16PacketListRecordS1_)
          to label %_ZSt4sortIN5QListIP16PacketListRecordE8iteratorEPFbS2_S2_EEvT_S7_T0_.exit unwind label %bb.bu

_ZSt4sortIN5QListIP16PacketListRecordE8iteratorEPFbS2_S2_EEvT_S7_T0_.exit: ; preds = %bb.bn, %.noexc180
  invoke void @_ZN18QAbstractItemModel15beginResetModelEv(ptr noundef align 8 dereferenceable_or_null(16) %0)
          to label %bb.bp unwind label %bb.bu

bb.bp:                                            ; preds = %_ZSt4sortIN5QListIP16PacketListRecordE8iteratorEPFbS2_S2_EEvT_S7_T0_.exit
  invoke void @_ZN5QListIP16PacketListRecordE15resize_internalEx(ptr noundef align 8 dereferenceable_or_null(24) %i.g, i64 noundef 0)
          to label %.noexc182 unwind label %bb.bu

.noexc182:                                        ; preds = %bb.bp
  %i.ix = load i64, ptr %i.h, align 8             ; 2 uses
  %i.iy = icmp slt i64 %i.ix, 0
  br i1 %i.iy, label %bb.bq, label %_ZN5QListIP16PacketListRecordE6resizeEx.exit

bb.bq:                                            ; preds = %.noexc182
  %i.iz = load ptr, ptr %i.eu, align 8
  %.idx.i.i = shl i64 %i.ix, 3                    ; 3 uses
  store i64 0, ptr %i.h, align 8
  %.not4.i.i = icmp eq i64 %.idx.i.i, 0
  br i1 %.not4.i.i, label %_ZN5QListIP16PacketListRecordE6resizeEx.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.bq
  %i.ja = getelementptr i8, ptr %i.iz, i64 %.idx.i.i
  %i.jb = sub i64 0, %.idx.i.i
  call void @llvm.memset.p0.i64(ptr align 8 %i.ja, i8 0, i64 %i.jb, i1 false)
  br label %_ZN5QListIP16PacketListRecordE6resizeEx.exit

_ZN5QListIP16PacketListRecordE6resizeEx.exit:     ; preds = %.lr.ph.preheader.i.i, %bb.bq, %.noexc182
  %i.jc = getelementptr i8, ptr %0, i64 184
  %i.jd = invoke noundef align 8 dereferenceable(24) ptr @_ZN5QListIiE4fillEix(ptr noundef align 8 dereferenceable_or_null(24) %i.jc, i32 noundef 0, i64 noundef -1)
          to label %bb.br unwind label %bb.bu     ; 0 uses

bb.br:                                            ; preds = %_ZN5QListIP16PacketListRecordE6resizeEx.exit
  %i.je = getelementptr i8, ptr %0, i64 208
  call void @_ZN5QHashI7QStringiE5clearEv(ptr noundef align 8 dereferenceable_or_null(8) %i.je) #33
  %i.jf = load ptr, ptr %16, align 16, !noalias !95 ; 6 uses
  %i.jg = load ptr, ptr %i.et, align 8, !noalias !95 ; 2 uses
  %i.jh = load i64, ptr %i.ex, align 16, !noalias !95
  %.not.i.i.i.i.i183 = icmp eq ptr %i.jf, null    ; 3 uses
  br i1 %.not.i.i.i.i.i183, label %_ZN9QtPrivate21qMakeForeachContainerIR5QListIP16PacketListRecordEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS8_.exit, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ji = atomicrmw add ptr %i.jf, i32 1 acq_rel, align 4, !noalias !95 ; 0 uses
  br label %_ZN9QtPrivate21qMakeForeachContainerIR5QListIP16PacketListRecordEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS8_.exit

_ZN9QtPrivate21qMakeForeachContainerIR5QListIP16PacketListRecordEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS8_.exit: ; preds = %bb.br, %bb.bs
  %.idx = shl i64 %i.jh, 3                        ; 2 uses
  %i.jj = getelementptr i8, ptr %i.jg, i64 %.idx
  %.not255259 = icmp eq i64 %.idx, 0
  br i1 %.not255259, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.bv, %_ZN9QtPrivate21qMakeForeachContainerIR5QListIP16PacketListRecordEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS8_.exit
  br i1 %.not.i.i.i.i.i183, label %_ZN9QtPrivate17QForeachContainerI5QListIP16PacketListRecordEED2Ev.exit, label %_ZN17QArrayDataPointerIP16PacketListRecordE5derefEv.exit.i.i.i

_ZN17QArrayDataPointerIP16PacketListRecordE5derefEv.exit.i.i.i: ; preds = %._crit_edge
  %i.jk = atomicrmw sub ptr %i.jf, i32 1 acq_rel, align 4
  %.not.i.i.i185 = icmp eq i32 %i.jk, 1
  br i1 %.not.i.i.i185, label %bb.bt, label %_ZN9QtPrivate17QForeachContainerI5QListIP16PacketListRecordEED2Ev.exit

bb.bt:                                            ; preds = %_ZN17QArrayDataPointerIP16PacketListRecordE5derefEv.exit.i.i.i
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.jf, i64 noundef 8, i64 noundef 8) #33
  br label %_ZN9QtPrivate17QForeachContainerI5QListIP16PacketListRecordEED2Ev.exit

_ZN9QtPrivate17QForeachContainerI5QListIP16PacketListRecordEED2Ev.exit: ; preds = %._crit_edge, %_ZN17QArrayDataPointerIP16PacketListRecordE5derefEv.exit.i.i.i, %bb.bt
  invoke void @_ZN18QAbstractItemModel13endResetModelEv(ptr noundef align 8 dereferenceable_or_null(16) %0)
          to label %bb.cd unwind label %bb.bu

bb.bu:                                            ; preds = %bb.bp, %.noexc180, %bb.bo, %_ZNK17QArrayDataPointerIP16PacketListRecordE11needsDetachEv.exit.thread.i.i.i177, %_ZNK17QArrayDataPointerIP16PacketListRecordE11needsDetachEv.exit.thread.i.i.i, %_ZN9QtPrivate17QForeachContainerI5QListIP16PacketListRecordEED2Ev.exit, %_ZN5QListIP16PacketListRecordE6resizeEx.exit, %_ZSt4sortIN5QListIP16PacketListRecordE8iteratorEPFbS2_S2_EEvT_S7_T0_.exit
  %i.jl = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI9SortAbort
  br label %_ZN9QtPrivate17QForeachContainerI5QListIP16PacketListRecordEED2Ev.exit189

.lr.ph:                                           ; preds = %_ZN9QtPrivate21qMakeForeachContainerIR5QListIP16PacketListRecordEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS8_.exit, %bb.bv
  %.sroa.10.0260 = phi ptr [ %i.jn, %bb.bv ], [ %i.jg, %_ZN9QtPrivate21qMakeForeachContainerIR5QListIP16PacketListRecordEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS8_.exit ] ; 2 uses
  %i.jm = load ptr, ptr %.sroa.10.0260, align 8
  invoke void @_ZN15PacketListModel17updateVisibleRowsEP16PacketListRecord(ptr noundef align 8 dereferenceable_or_null(236) %0, ptr noundef %i.jm)
          to label %bb.bv unwind label %bb.bw

bb.bv:                                            ; preds = %.lr.ph
  %i.jn = getelementptr i8, ptr %.sroa.10.0260, i64 8 ; 2 uses
  %.not255 = icmp eq ptr %i.jn, %i.jj
  br i1 %.not255, label %._crit_edge, label %.lr.ph, !llvm.loop !98

bb.bw:                                            ; preds = %.lr.ph
  %i.jo = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTI9SortAbort               ; 3 uses
  br i1 %.not.i.i.i.i.i183, label %_ZN9QtPrivate17QForeachContainerI5QListIP16PacketListRecordEED2Ev.exit189, label %_ZN17QArrayDataPointerIP16PacketListRecordE5derefEv.exit.i.i.i187

_ZN17QArrayDataPointerIP16PacketListRecordE5derefEv.exit.i.i.i187: ; preds = %bb.bw
  %i.jp = atomicrmw sub ptr %i.jf, i32 1 acq_rel, align 4
  %.not.i.i.i188 = icmp eq i32 %i.jp, 1
  br i1 %.not.i.i.i188, label %bb.bx, label %_ZN9QtPrivate17QForeachContainerI5QListIP16PacketListRecordEED2Ev.exit189

bb.bx:                                            ; preds = %_ZN17QArrayDataPointerIP16PacketListRecordE5derefEv.exit.i.i.i187
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.jf, i64 noundef 8, i64 noundef 8) #33
  br label %_ZN9QtPrivate17QForeachContainerI5QListIP16PacketListRecordEED2Ev.exit189

_ZN9QtPrivate17QForeachContainerI5QListIP16PacketListRecordEED2Ev.exit189: ; preds = %bb.bw, %_ZN17QArrayDataPointerIP16PacketListRecordE5derefEv.exit.i.i.i187, %bb.bx, %bb.bu, %_ZN10QByteArrayD2Ev.exit169
  %.pn51.pn = phi { ptr, i32 } [ %.pn51, %_ZN10QByteArrayD2Ev.exit169 ], [ %i.jl, %bb.bu ], [ %i.jo, %bb.bx ], [ %i.jo, %bb.bw ], [ %i.jo, %_ZN17QArrayDataPointerIP16PacketListRecordE5derefEv.exit.i.i.i187 ] ; 3 uses
  %.733 = extractvalue { ptr, i32 } %.pn51.pn, 1
  %i.jq = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTI9SortAbort) #33
  %i.jr = icmp eq i32 %.733, %i.jq
  br i1 %i.jr, label %bb.by, label %bb.cu

bb.by:                                            ; preds = %_ZN9QtPrivate17QForeachContainerI5QListIP16PacketListRecordEED2Ev.exit189
  %.7 = extractvalue { ptr, i32 } %.pn51.pn, 0
  %i.js = call ptr @__cxa_begin_catch(ptr %.7) #33 ; 2 uses
  %i.jt = load ptr, ptr @mainApp, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #33
  %i.ju = load ptr, ptr %i.js, align 8
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 16
  %i.jw = load ptr, ptr %i.jv, align 8
  %i.jx = call noundef ptr %i.jw(ptr noundef align 8 dereferenceable_or_null(16) %i.js) #33
  invoke void @_ZN7QStringC2EPKc(ptr noundef nonnull align 8 dereferenceable_or_null(24) %18, ptr noundef %i.jx)
          to label %bb.bz unwind label %bb.cg

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %19, i8 0, i64 24, i1 false)
  invoke void @_ZN15MainApplication10pushStatusENS_10StatusInfoERK7QStringS3_(ptr noundef align 8 dereferenceable_or_null(168) %i.jt, i32 noundef 5, ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(24) %19)
          to label %bb.ca unwind label %bb.ch

bb.ca:                                            ; preds = %bb.bz
  %i.jy = load ptr, ptr %19, align 8              ; 2 uses
  %.not.i.i.i190 = icmp eq ptr %i.jy, null
  br i1 %.not.i.i.i190, label %_ZN7QStringD2Ev.exit193, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i191

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i191:   ; preds = %bb.ca
  %i.jz = atomicrmw sub ptr %i.jy, i32 1 acq_rel, align 4
  %.not.i.i192 = icmp eq i32 %i.jz, 1
  br i1 %.not.i.i192, label %bb.cb, label %_ZN7QStringD2Ev.exit193

bb.cb:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i191
  %i.ka = load ptr, ptr %19, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ka, i64 noundef 2, i64 noundef 8) #33
  br label %_ZN7QStringD2Ev.exit193

end_hunk_0
