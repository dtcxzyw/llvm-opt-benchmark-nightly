inline.NumInlined: 1199
inline.NumDeleted: 524
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK16DecodeAsDelegate12createEditorEP7QWidgetRK20QStyleOptionViewItemRK11QModelIndex:bb.a

.loopexit412:                                     ; preds = %bb.cy, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i288, %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  %.not165 = icmp eq ptr %i.fy, null
  br i1 %.not165, label %.loopexit412.thread, label %bb.dd

.loopexit412.thread:                              ; preds = %bb.db, %.thread393, %_ZN9QtPrivate17QForeachContainerI5QListI20_packet_proto_data_tEED2Ev.exit, %.loopexit412
  %i.jt = invoke noundef ptr @_ZNK19QStyledItemDelegate12createEditorEP7QWidgetRK20QStyleOptionViewItemRK11QModelIndex(ptr noundef align 8 dereferenceable_or_null(16) %0, ptr noundef %1, ptr noundef align 8 dereferenceable(208) %2, ptr noundef align 8 dereferenceable(24) %3)
          to label %bb.dd unwind label %bb.dc

bb.dc:                                            ; preds = %.loopexit412.thread
  %i.ju = landingpad { ptr, i32 }
          cleanup
  br label %_ZN9QtPrivate17QForeachContainerI5QListI20_packet_proto_data_tEED2Ev.exit256

bb.dd:                                            ; preds = %.loopexit412.thread, %.loopexit412
  %.0 = phi ptr [ %i.fy, %.loopexit412 ], [ %i.jt, %.loopexit412.thread ]
  %i.jv = load ptr, ptr %21, align 8              ; 2 uses
  %.not.i.i.i295 = icmp eq ptr %i.jv, null
  br i1 %.not.i.i.i295, label %_ZN5QListIhED2Ev.exit, label %_ZN17QArrayDataPointerIhE5derefEv.exit.i.i

_ZN17QArrayDataPointerIhE5derefEv.exit.i.i:       ; preds = %bb.dd
  %i.jw = atomicrmw sub ptr %i.jv, i32 1 acq_rel, align 4
  %.not.i.i296 = icmp eq i32 %i.jw, 1
  br i1 %.not.i.i296, label %bb.de, label %_ZN5QListIhED2Ev.exit

bb.de:                                            ; preds = %_ZN17QArrayDataPointerIhE5derefEv.exit.i.i
  %i.jx = load ptr, ptr %21, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.jx, i64 noundef 1, i64 noundef 8) #20
  br label %_ZN5QListIhED2Ev.exit

_ZN5QListIhED2Ev.exit:                            ; preds = %bb.dd, %_ZN17QArrayDataPointerIhE5derefEv.exit.i.i, %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  br label %bb.fe

_ZN9QtPrivate17QForeachContainerI5QListI20_packet_proto_data_tEED2Ev.exit256: ; preds = %.loopexit413, %.loopexit.split-lp414, %bb.bd, %_ZN17QArrayDataPointerI20_packet_proto_data_tE5derefEv.exit.i.i.i254, %bb.be, %bb.bu, %_ZN7QStringD2Ev.exit294, %bb.bx, %bb.dc
  %.pn173.pn = phi { ptr, i32 } [ %.pn163, %bb.bx ], [ %i.ju, %bb.dc ], [ %i.gk, %bb.bu ], [ %i.fl, %_ZN17QArrayDataPointerI20_packet_proto_data_tE5derefEv.exit.i.i.i254 ], [ %.pn166.pn.pn.pn, %_ZN7QStringD2Ev.exit294 ], [ %i.fl, %bb.be ], [ %i.fl, %bb.bd ], [ %lpad.loopexit415, %.loopexit413 ], [ %lpad.loopexit.split-lp416, %.loopexit.split-lp414 ]
  %i.jy = load ptr, ptr %21, align 8              ; 2 uses
  %.not.i.i.i297 = icmp eq ptr %i.jy, null
  br i1 %.not.i.i.i297, label %_ZN5QListIhED2Ev.exit300, label %_ZN17QArrayDataPointerIhE5derefEv.exit.i.i298

_ZN17QArrayDataPointerIhE5derefEv.exit.i.i298:    ; preds = %_ZN9QtPrivate17QForeachContainerI5QListI20_packet_proto_data_tEED2Ev.exit256
  %i.jz = atomicrmw sub ptr %i.jy, i32 1 acq_rel, align 4
  %.not.i.i299 = icmp eq i32 %i.jz, 1
  br i1 %.not.i.i299, label %bb.df, label %_ZN5QListIhED2Ev.exit300

bb.df:                                            ; preds = %_ZN17QArrayDataPointerIhE5derefEv.exit.i.i298
  %i.ka = load ptr, ptr %21, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ka, i64 noundef 1, i64 noundef 8) #20
  br label %_ZN5QListIhED2Ev.exit300

_ZN5QListIhED2Ev.exit300:                         ; preds = %_ZN9QtPrivate17QForeachContainerI5QListI20_packet_proto_data_tEED2Ev.exit256, %_ZN17QArrayDataPointerIhE5derefEv.exit.i.i298, %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  br label %bb.fg

bb.dg:                                            ; preds = %bb.a
  %i.kb = tail call noalias noundef dereferenceable_or_null(40) ptr @_Znwm(i64 noundef 40) #21 ; 13 uses
  invoke void @_ZN9QComboBoxC1EP7QWidget(ptr noundef align 8 dereferenceable_or_null(40) %i.kb, ptr noundef %1)
          to label %bb.dh unwind label %bb.dj

bb.dh:                                            ; preds = %bb.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %27, i8 0, i64 24, i1 false)
  %i.kc = getelementptr inbounds nuw i8, ptr %27, i64 24
  store ptr %i.d, ptr %i.kc, align 8
  invoke void @_ZN9QComboBox19setSizeAdjustPolicyENS_16SizeAdjustPolicyE(ptr noundef align 8 dereferenceable_or_null(40) %i.kb, i32 noundef 0)
          to label %.preheader unwind label %.loopexit.split-lp419.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader:                                       ; preds = %bb.dh
  %.0107454 = load ptr, ptr @decode_as_list, align 8 ; 2 uses
  %.not455 = icmp eq ptr %.0107454, null
  br i1 %.not455, label %.loopexit439, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.kd = getelementptr i8, ptr %i.d, i64 8
  br label %bb.dk

bb.di:                                            ; preds = %.critedge
  %i.ke = getelementptr i8, ptr %.0107456, i64 8
  %.0107 = load ptr, ptr %i.ke, align 8           ; 2 uses
  %.not = icmp eq ptr %.0107, null
  br i1 %.not, label %.loopexit439, label %bb.dk, !llvm.loop !42

bb.dj:                                            ; preds = %bb.dg
  %i.kf = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef %i.kb, i64 noundef 40) #23
  br label %bb.fg

.loopexit418:                                     ; preds = %.lr.ph.i.i15.i.i.i
  %lpad.loopexit420 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp419

.loopexit.split-lp419.loopexit:                   ; preds = %.lr.ph.i13.i.i.i
  %lpad.loopexit423 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp419

.loopexit.split-lp419.loopexit.split-lp.loopexit: ; preds = %.lr.ph.i.i.i.i.i
  %lpad.loopexit426 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp419

.loopexit.split-lp419.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.dr, %bb.dp
  %lpad.loopexit429 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp419

.loopexit.split-lp419.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph.i.i32.i.i.i
  %lpad.loopexit432 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp419

.loopexit.split-lp419.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.du, %.lr.ph.i22.i.i.i
  %lpad.loopexit435 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp419

.loopexit.split-lp419.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.do, %_ZNK17QArrayDataPointerIP17_dissector_info_tE11needsDetachEv.exit.thread.i.i.i305, %_ZNK17QArrayDataPointerIP17_dissector_info_tE11needsDetachEv.exit.thread.i.i.i, %bb.dz, %_ZN7QStringD2Ev.exit327, %bb.dh
  %lpad.loopexit.split-lp436 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp419

bb.dk:                                            ; preds = %.lr.ph, %bb.di
  %.0107456 = phi ptr [ %.0107454, %.lr.ph ], [ %.0107, %bb.di ] ; 2 uses
  %i.kg = load ptr, ptr %.0107456, align 8        ; 3 uses
  %i.kh = load ptr, ptr %i.kd, align 8
  %i.ki = getelementptr i8, ptr %i.kg, i64 8
  %i.kj = load ptr, ptr %i.ki, align 8
  %i.kk = invoke i32 @g_strcmp0(ptr noundef %i.kh, ptr noundef %i.kj)
          to label %.critedge unwind label %.loopexit440

.critedge:                                        ; preds = %bb.dk
  %.not150 = icmp eq i32 %i.kk, 0
  br i1 %.not150, label %bb.dl, label %bb.di

bb.dl:                                            ; preds = %.critedge
  %i.kl = getelementptr i8, ptr %i.kg, i64 8
  %i.km = getelementptr i8, ptr %i.kg, i64 48
  %i.kn = load ptr, ptr %i.km, align 8
  %i.ko = load ptr, ptr %i.kl, align 8
  invoke void %i.kn(ptr noundef %i.ko, ptr noundef nonnull @_ZN16DecodeAsDelegate17decodeAddProtocolEPKcS1_PvS2_, ptr noundef nonnull %27)
          to label %.loopexit439 unwind label %.loopexit.split-lp441

.loopexit440:                                     ; preds = %bb.dk
  %lpad.loopexit442 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp419

.loopexit.split-lp441:                            ; preds = %bb.dl
  %lpad.loopexit.split-lp443 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp419

.loopexit439:                                     ; preds = %bb.di, %.preheader, %bb.dl
  %i.kp = load ptr, ptr %27, align 8              ; 3 uses
  %.not.i.i.i.i301 = icmp eq ptr %i.kp, null
  br i1 %.not.i.i.i.i301, label %_ZNK17QArrayDataPointerIP17_dissector_info_tE11needsDetachEv.exit.thread.i.i.i, label %_ZNK17QArrayDataPointerIP17_dissector_info_tE11needsDetachEv.exit.i.i.i

_ZNK17QArrayDataPointerIP17_dissector_info_tE11needsDetachEv.exit.i.i.i: ; preds = %.loopexit439
  %i.kq = load atomic i32, ptr %i.kp monotonic, align 4
  %i.kr = icmp sgt i32 %i.kq, 1
  br i1 %i.kr, label %_ZNK17QArrayDataPointerIP17_dissector_info_tE11needsDetachEv.exit.thread.i.i.i, label %.thread574

.thread574:                                       ; preds = %_ZNK17QArrayDataPointerIP17_dissector_info_tE11needsDetachEv.exit.i.i.i
  %i.ks = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 2 uses
  %i.kt = load ptr, ptr %i.ks, align 8
  br label %_ZNK17QArrayDataPointerIP17_dissector_info_tE11needsDetachEv.exit.i.i.i304

_ZNK17QArrayDataPointerIP17_dissector_info_tE11needsDetachEv.exit.thread.i.i.i: ; preds = %_ZNK17QArrayDataPointerIP17_dissector_info_tE11needsDetachEv.exit.i.i.i, %.loopexit439
  invoke void @_ZN17QArrayDataPointerIP17_dissector_info_tE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS2_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %27, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %bb.dm unwind label %.loopexit.split-lp419.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dm:                                            ; preds = %_ZNK17QArrayDataPointerIP17_dissector_info_tE11needsDetachEv.exit.thread.i.i.i
  %.pre = load ptr, ptr %27, align 8              ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 3 uses
  %i.kv = load ptr, ptr %i.ku, align 8            ; 2 uses
  %.not.i.i.i.i303 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i.i303, label %_ZNK17QArrayDataPointerIP17_dissector_info_tE11needsDetachEv.exit.thread.i.i.i305, label %_ZNK17QArrayDataPointerIP17_dissector_info_tE11needsDetachEv.exit.i.i.i304

_ZNK17QArrayDataPointerIP17_dissector_info_tE11needsDetachEv.exit.i.i.i304: ; preds = %.thread574, %bb.dm
  %i.kw = phi ptr [ %i.kt, %.thread574 ], [ %i.kv, %bb.dm ] ; 3 uses
  %i.kx = phi ptr [ %i.ks, %.thread574 ], [ %i.ku, %bb.dm ] ; 2 uses
  %i.ky = phi ptr [ %i.kp, %.thread574 ], [ %.pre, %bb.dm ]
  %i.kz = load atomic i32, ptr %i.ky monotonic, align 4
  %i.la = icmp sgt i32 %i.kz, 1
  br i1 %i.la, label %_ZNK17QArrayDataPointerIP17_dissector_info_tE11needsDetachEv.exit.thread.i.i.i305, label %bb.dn

_ZNK17QArrayDataPointerIP17_dissector_info_tE11needsDetachEv.exit.thread.i.i.i305: ; preds = %_ZNK17QArrayDataPointerIP17_dissector_info_tE11needsDetachEv.exit.i.i.i304, %bb.dm
  %i.lb = phi ptr [ %i.kw, %_ZNK17QArrayDataPointerIP17_dissector_info_tE11needsDetachEv.exit.i.i.i304 ], [ %i.kv, %bb.dm ]
  %i.lc = phi ptr [ %i.kx, %_ZNK17QArrayDataPointerIP17_dissector_info_tE11needsDetachEv.exit.i.i.i304 ], [ %i.ku, %bb.dm ] ; 2 uses
  invoke void @_ZN17QArrayDataPointerIP17_dissector_info_tE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS2_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %27, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZNK17QArrayDataPointerIP17_dissector_info_tE11needsDetachEv.exit.thread.i.i.i305._crit_edge unwind label %.loopexit.split-lp419.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK17QArrayDataPointerIP17_dissector_info_tE11needsDetachEv.exit.thread.i.i.i305._crit_edge: ; preds = %_ZNK17QArrayDataPointerIP17_dissector_info_tE11needsDetachEv.exit.thread.i.i.i305
  %.pre499 = load ptr, ptr %i.lc, align 8
  br label %bb.dn

bb.dn:                                            ; preds = %_ZNK17QArrayDataPointerIP17_dissector_info_tE11needsDetachEv.exit.thread.i.i.i305._crit_edge, %_ZNK17QArrayDataPointerIP17_dissector_info_tE11needsDetachEv.exit.i.i.i304
  %i.ld = phi ptr [ %i.lb, %_ZNK17QArrayDataPointerIP17_dissector_info_tE11needsDetachEv.exit.thread.i.i.i305._crit_edge ], [ %i.kw, %_ZNK17QArrayDataPointerIP17_dissector_info_tE11needsDetachEv.exit.i.i.i304 ] ; 13 uses
  %i.le = phi ptr [ %i.lc, %_ZNK17QArrayDataPointerIP17_dissector_info_tE11needsDetachEv.exit.thread.i.i.i305._crit_edge ], [ %i.kx, %_ZNK17QArrayDataPointerIP17_dissector_info_tE11needsDetachEv.exit.i.i.i304 ] ; 3 uses
  %i.lf = phi ptr [ %.pre499, %_ZNK17QArrayDataPointerIP17_dissector_info_tE11needsDetachEv.exit.thread.i.i.i305._crit_edge ], [ %i.kw, %_ZNK17QArrayDataPointerIP17_dissector_info_tE11needsDetachEv.exit.i.i.i304 ]
  %i.lg = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.lh = load i64, ptr %i.lg, align 8
  %i.li = getelementptr [8 x i8], ptr %i.lf, i64 %i.lh ; 7 uses
  %.not.i.i307 = icmp eq ptr %i.ld, %i.li
  br i1 %.not.i.i307, label %"_ZSt4sortIN5QListIP17_dissector_info_tE8iteratorEZNK16DecodeAsDelegate12createEditorEP7QWidgetRK20QStyleOptionViewItemRK11QModelIndexE3$_0EvT_SF_T0_.exit", label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.lj = ptrtoint ptr %i.li to i64
  %i.lk = ptrtoint ptr %i.ld to i64               ; 3 uses
  %i.ll = sub i64 %i.lj, %i.lk                    ; 2 uses
  %i.lm = ashr exact i64 %i.ll, 3
  %i.ln = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.lm, i1 true)
  %i.lo = shl nuw nsw i64 %i.ln, 1
  %i.lp = xor i64 %i.lo, 126
  invoke fastcc void @"_ZSt16__introsort_loopIN5QListIP17_dissector_info_tE8iteratorExN9__gnu_cxx5__ops15_Iter_comp_iterIZNK16DecodeAsDelegate12createEditorEP7QWidgetRK20QStyleOptionViewItemRK11QModelIndexE3$_0EEEvT_SJ_T0_T1_"(ptr %i.ld, ptr %i.li, i64 noundef %i.lp)
          to label %.noexc310 unwind label %.loopexit.split-lp419.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc310:                                        ; preds = %bb.do
  %i.lq = icmp sgt i64 %i.ll, 128
  %.sroa.0.017.i.i.i.i = getelementptr i8, ptr %i.ld, i64 8 ; 3 uses
  br i1 %i.lq, label %.lr.ph.i.i.i.i308, label %bb.ds

.lr.ph.i.i.i.i308:                                ; preds = %.noexc310
  %i.lr = getelementptr i8, ptr %i.ld, i64 128    ; 3 uses
  br label %bb.dp

bb.dp:                                            ; preds = %_ZSt13move_backwardIN5QListIP17_dissector_info_tE8iteratorES4_ET0_T_S6_S5_.exit.i.i.i.i, %.lr.ph.i.i.i.i308
  %.sroa.0.020.i.i.i.i = phi ptr [ %.sroa.0.017.i.i.i.i, %.lr.ph.i.i.i.i308 ], [ %.sroa.0.0.i.i.i.i, %_ZSt13move_backwardIN5QListIP17_dissector_info_tE8iteratorES4_ET0_T_S6_S5_.exit.i.i.i.i ] ; 8 uses
  %.pn19.i.i.i.i = phi ptr [ %i.ld, %.lr.ph.i.i.i.i308 ], [ %.sroa.0.020.i.i.i.i, %_ZSt13move_backwardIN5QListIP17_dissector_info_tE8iteratorES4_ET0_T_S6_S5_.exit.i.i.i.i ] ; 3 uses
  %i.ls = load ptr, ptr %.sroa.0.020.i.i.i.i, align 8
  %i.lt = load ptr, ptr %i.ld, align 8
  %i.lu = invoke noundef i32 @_ZNK7QString18localeAwareCompareERKS_(ptr noundef align 8 dereferenceable_or_null(24) %i.ls, ptr noundef align 8 dereferenceable(24) %i.lt)
          to label %.noexc311 unwind label %.loopexit.split-lp419.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc311:                                        ; preds = %bb.dp
  %i.lv = icmp slt i32 %i.lu, 0
  %i.lw = load ptr, ptr %.sroa.0.020.i.i.i.i, align 8 ; 3 uses
  br i1 %i.lv, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %.noexc311
  %i.lx = ptrtoint ptr %.sroa.0.020.i.i.i.i to i64
  %i.ly = sub i64 %i.lx, %i.lk                    ; 2 uses
  %i.lz = ashr exact i64 %i.ly, 3                 ; 2 uses
  %i.ma = icmp sgt i64 %i.lz, 0
  br i1 %i.ma, label %.lr.ph.i.i.i.i.i.preheader.i.i.i.i, label %_ZSt13move_backwardIN5QListIP17_dissector_info_tE8iteratorES4_ET0_T_S6_S5_.exit.i.i.i.i

.lr.ph.i.i.i.i.i.preheader.i.i.i.i:               ; preds = %bb.dq
  %32 = getelementptr i8, ptr %.pn19.i.i.i.i, i64 16
  %i.mb = mul nsw i64 %i.lz, -8                   ; 2 uses
  %scevgep22.i.i.i.i.a = getelementptr i8, ptr %32, i64 %i.mb
  %scevgep23.i.i.i.i = getelementptr i8, ptr %.sroa.0.020.i.i.i.i, i64 %i.mb
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep22.i.i.i.i.a, ptr align 8 %scevgep23.i.i.i.i, i64 %i.ly, i1 false)
  br label %_ZSt13move_backwardIN5QListIP17_dissector_info_tE8iteratorES4_ET0_T_S6_S5_.exit.i.i.i.i

bb.dr:                                            ; preds = %.noexc311
  %i.mc = load ptr, ptr %.pn19.i.i.i.i, align 8
  %i.md = invoke noundef i32 @_ZNK7QString18localeAwareCompareERKS_(ptr noundef align 8 dereferenceable_or_null(24) %i.lw, ptr noundef align 8 dereferenceable(24) %i.mc)
          to label %.noexc312 unwind label %.loopexit.split-lp419.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc312:                                        ; preds = %bb.dr
  %i.me = icmp slt i32 %i.md, 0
  br i1 %i.me, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIN5QListIP17_dissector_info_tE8iteratorES4_ET0_T_S6_S5_.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc312, %.noexc313
  %.sroa.0.08.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i, %.noexc313 ], [ %.pn19.i.i.i.i, %.noexc312 ] ; 4 uses
  %.sroa.03.07.i.i.i.i.i = phi ptr [ %.sroa.0.08.i.i.i.i.i, %.noexc313 ], [ %.sroa.0.020.i.i.i.i, %.noexc312 ]
  %i.mf = load ptr, ptr %.sroa.0.08.i.i.i.i.i, align 8
  store ptr %i.mf, ptr %.sroa.03.07.i.i.i.i.i, align 8
  %.sroa.0.0.i.i.i.i.i = getelementptr i8, ptr %.sroa.0.08.i.i.i.i.i, i64 -8 ; 2 uses
  %i.mg = load ptr, ptr %.sroa.0.0.i.i.i.i.i, align 8
  %i.mh = invoke noundef i32 @_ZNK7QString18localeAwareCompareERKS_(ptr noundef align 8 dereferenceable_or_null(24) %i.lw, ptr noundef align 8 dereferenceable(24) %i.mg)
          to label %.noexc313 unwind label %.loopexit.split-lp419.loopexit.split-lp.loopexit

.noexc313:                                        ; preds = %.lr.ph.i.i.i.i.i
  %i.mi = icmp slt i32 %i.mh, 0
  br i1 %i.mi, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIN5QListIP17_dissector_info_tE8iteratorES4_ET0_T_S6_S5_.exit.i.i.i.i, !llvm.loop !43

_ZSt13move_backwardIN5QListIP17_dissector_info_tE8iteratorES4_ET0_T_S6_S5_.exit.i.i.i.i: ; preds = %.noexc313, %.noexc312, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i, %bb.dq
  %.sink.i.i.i.i = phi ptr [ %i.ld, %bb.dq ], [ %i.ld, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i ], [ %.sroa.0.020.i.i.i.i, %.noexc312 ], [ %.sroa.0.08.i.i.i.i.i, %.noexc313 ]
  store ptr %i.lw, ptr %.sink.i.i.i.i, align 8
  %.sroa.0.0.i.i.i.i = getelementptr i8, ptr %.sroa.0.020.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i309 = icmp eq ptr %.sroa.0.0.i.i.i.i, %i.lr
  br i1 %.not.i.i.i.i309, label %"_ZSt16__insertion_sortIN5QListIP17_dissector_info_tE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK16DecodeAsDelegate12createEditorEP7QWidgetRK20QStyleOptionViewItemRK11QModelIndexE3$_0EEEvT_SJ_T0_.exit.i.i.i", label %bb.dp, !llvm.loop !44

"_ZSt16__insertion_sortIN5QListIP17_dissector_info_tE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK16DecodeAsDelegate12createEditorEP7QWidgetRK20QStyleOptionViewItemRK11QModelIndexE3$_0EEEvT_SJ_T0_.exit.i.i.i": ; preds = %_ZSt13move_backwardIN5QListIP17_dissector_info_tE8iteratorES4_ET0_T_S6_S5_.exit.i.i.i.i
  %.not7.i.i.i.i = icmp eq ptr %i.lr, %i.li
  br i1 %.not7.i.i.i.i, label %"_ZSt4sortIN5QListIP17_dissector_info_tE8iteratorEZNK16DecodeAsDelegate12createEditorEP7QWidgetRK20QStyleOptionViewItemRK11QModelIndexE3$_0EvT_SF_T0_.exit", label %.lr.ph.i13.i.i.i

.lr.ph.i13.i.i.i:                                 ; preds = %"_ZSt16__insertion_sortIN5QListIP17_dissector_info_tE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK16DecodeAsDelegate12createEditorEP7QWidgetRK20QStyleOptionViewItemRK11QModelIndexE3$_0EEEvT_SJ_T0_.exit.i.i.i", %"_ZSt25__unguarded_linear_insertIN5QListIP17_dissector_info_tE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIZNK16DecodeAsDelegate12createEditorEP7QWidgetRK20QStyleOptionViewItemRK11QModelIndexE3$_0EEEvT_T0_.exit.i.i.i.i"
  %.sroa.0.08.i.i.i.i = phi ptr [ %i.mr, %"_ZSt25__unguarded_linear_insertIN5QListIP17_dissector_info_tE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIZNK16DecodeAsDelegate12createEditorEP7QWidgetRK20QStyleOptionViewItemRK11QModelIndexE3$_0EEEvT_T0_.exit.i.i.i.i" ], [ %i.lr, %"_ZSt16__insertion_sortIN5QListIP17_dissector_info_tE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK16DecodeAsDelegate12createEditorEP7QWidgetRK20QStyleOptionViewItemRK11QModelIndexE3$_0EEEvT_SJ_T0_.exit.i.i.i" ] ; 5 uses
  %i.mj = load ptr, ptr %.sroa.0.08.i.i.i.i, align 8 ; 3 uses
  %.sroa.0.06.i.i.i.i.i = getelementptr i8, ptr %.sroa.0.08.i.i.i.i, i64 -8 ; 2 uses
  %i.mk = load ptr, ptr %.sroa.0.06.i.i.i.i.i, align 8
  %i.ml = invoke noundef i32 @_ZNK7QString18localeAwareCompareERKS_(ptr noundef align 8 dereferenceable_or_null(24) %i.mj, ptr noundef align 8 dereferenceable(24) %i.mk)
          to label %.noexc314 unwind label %.loopexit.split-lp419.loopexit

.noexc314:                                        ; preds = %.lr.ph.i13.i.i.i
  %i.mm = icmp slt i32 %i.ml, 0
  br i1 %i.mm, label %.lr.ph.i.i15.i.i.i, label %"_ZSt25__unguarded_linear_insertIN5QListIP17_dissector_info_tE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIZNK16DecodeAsDelegate12createEditorEP7QWidgetRK20QStyleOptionViewItemRK11QModelIndexE3$_0EEEvT_T0_.exit.i.i.i.i"

.lr.ph.i.i15.i.i.i:                               ; preds = %.noexc314, %.noexc315
  %.sroa.0.08.i.i16.i.i.i = phi ptr [ %.sroa.0.0.i.i18.i.i.i, %.noexc315 ], [ %.sroa.0.06.i.i.i.i.i, %.noexc314 ] ; 4 uses
  %.sroa.03.07.i.i17.i.i.i = phi ptr [ %.sroa.0.08.i.i16.i.i.i, %.noexc315 ], [ %.sroa.0.08.i.i.i.i, %.noexc314 ]
  %i.mn = load ptr, ptr %.sroa.0.08.i.i16.i.i.i, align 8
  store ptr %i.mn, ptr %.sroa.03.07.i.i17.i.i.i, align 8
  %.sroa.0.0.i.i18.i.i.i = getelementptr i8, ptr %.sroa.0.08.i.i16.i.i.i, i64 -8 ; 2 uses
  %i.mo = load ptr, ptr %.sroa.0.0.i.i18.i.i.i, align 8
  %i.mp = invoke noundef i32 @_ZNK7QString18localeAwareCompareERKS_(ptr noundef align 8 dereferenceable_or_null(24) %i.mj, ptr noundef align 8 dereferenceable(24) %i.mo)
          to label %.noexc315 unwind label %.loopexit418

.noexc315:                                        ; preds = %.lr.ph.i.i15.i.i.i
  %i.mq = icmp slt i32 %i.mp, 0
  br i1 %i.mq, label %.lr.ph.i.i15.i.i.i, label %"_ZSt25__unguarded_linear_insertIN5QListIP17_dissector_info_tE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIZNK16DecodeAsDelegate12createEditorEP7QWidgetRK20QStyleOptionViewItemRK11QModelIndexE3$_0EEEvT_T0_.exit.i.i.i.i", !llvm.loop !43

"_ZSt25__unguarded_linear_insertIN5QListIP17_dissector_info_tE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIZNK16DecodeAsDelegate12createEditorEP7QWidgetRK20QStyleOptionViewItemRK11QModelIndexE3$_0EEEvT_T0_.exit.i.i.i.i": ; preds = %.noexc315, %.noexc314
  %.sroa.03.0.lcssa.i.i.i.i.i = phi ptr [ %.sroa.0.08.i.i.i.i, %.noexc314 ], [ %.sroa.0.08.i.i16.i.i.i, %.noexc315 ]
  store ptr %i.mj, ptr %.sroa.03.0.lcssa.i.i.i.i.i, align 8
  %i.mr = getelementptr i8, ptr %.sroa.0.08.i.i.i.i, i64 8 ; 2 uses
  %.not.i14.i.i.i = icmp eq ptr %i.mr, %i.li
  br i1 %.not.i14.i.i.i, label %"_ZSt4sortIN5QListIP17_dissector_info_tE8iteratorEZNK16DecodeAsDelegate12createEditorEP7QWidgetRK20QStyleOptionViewItemRK11QModelIndexE3$_0EvT_SF_T0_.exit", label %.lr.ph.i13.i.i.i, !llvm.loop !45

bb.ds:                                            ; preds = %.noexc310
  %.not18.i21.i.i.i = icmp eq ptr %.sroa.0.017.i.i.i.i, %i.li
  br i1 %.not18.i21.i.i.i, label %"_ZSt4sortIN5QListIP17_dissector_info_tE8iteratorEZNK16DecodeAsDelegate12createEditorEP7QWidgetRK20QStyleOptionViewItemRK11QModelIndexE3$_0EvT_SF_T0_.exit", label %.lr.ph.i22.i.i.i

.lr.ph.i22.i.i.i:                                 ; preds = %bb.ds, %_ZSt13move_backwardIN5QListIP17_dissector_info_tE8iteratorES4_ET0_T_S6_S5_.exit.i27.i.i.i
  %.sroa.0.020.i24.i.i.i = phi ptr [ %.sroa.0.0.i29.i.i.i, %_ZSt13move_backwardIN5QListIP17_dissector_info_tE8iteratorES4_ET0_T_S6_S5_.exit.i27.i.i.i ], [ %.sroa.0.017.i.i.i.i, %bb.ds ] ; 8 uses
  %.pn19.i25.i.i.i = phi ptr [ %.sroa.0.020.i24.i.i.i, %_ZSt13move_backwardIN5QListIP17_dissector_info_tE8iteratorES4_ET0_T_S6_S5_.exit.i27.i.i.i ], [ %i.ld, %bb.ds ] ; 3 uses
  %i.ms = load ptr, ptr %.sroa.0.020.i24.i.i.i, align 8
  %i.mt = load ptr, ptr %i.ld, align 8
  %i.mu = invoke noundef i32 @_ZNK7QString18localeAwareCompareERKS_(ptr noundef align 8 dereferenceable_or_null(24) %i.ms, ptr noundef align 8 dereferenceable(24) %i.mt)
          to label %.noexc316 unwind label %.loopexit.split-lp419.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc316:                                        ; preds = %.lr.ph.i22.i.i.i
  %i.mv = icmp slt i32 %i.mu, 0
  %i.mw = load ptr, ptr %.sroa.0.020.i24.i.i.i, align 8 ; 3 uses
  br i1 %i.mv, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %.noexc316
  %i.mx = ptrtoint ptr %.sroa.0.020.i24.i.i.i to i64
  %i.my = sub i64 %i.mx, %i.lk                    ; 2 uses
  %i.mz = ashr exact i64 %i.my, 3                 ; 2 uses
  %i.na = icmp sgt i64 %i.mz, 0
  br i1 %i.na, label %.lr.ph.i.i.i.i.i.preheader.i36.i.i.i, label %_ZSt13move_backwardIN5QListIP17_dissector_info_tE8iteratorES4_ET0_T_S6_S5_.exit.i27.i.i.i

.lr.ph.i.i.i.i.i.preheader.i36.i.i.i:             ; preds = %bb.dt
  %33 = getelementptr i8, ptr %.pn19.i25.i.i.i, i64 16
  %i.nb = mul nsw i64 %i.mz, -8                   ; 2 uses
  %scevgep22.i37.i.i.i = getelementptr i8, ptr %33, i64 %i.nb
  %scevgep23.i38.i.i.i = getelementptr i8, ptr %.sroa.0.020.i24.i.i.i, i64 %i.nb
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep22.i37.i.i.i, ptr align 8 %scevgep23.i38.i.i.i, i64 %i.my, i1 false)
  br label %_ZSt13move_backwardIN5QListIP17_dissector_info_tE8iteratorES4_ET0_T_S6_S5_.exit.i27.i.i.i

bb.du:                                            ; preds = %.noexc316
  %i.nc = load ptr, ptr %.pn19.i25.i.i.i, align 8
  %i.nd = invoke noundef i32 @_ZNK7QString18localeAwareCompareERKS_(ptr noundef align 8 dereferenceable_or_null(24) %i.mw, ptr noundef align 8 dereferenceable(24) %i.nc)
          to label %.noexc317 unwind label %.loopexit.split-lp419.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc317:                                        ; preds = %bb.du
  %i.ne = icmp slt i32 %i.nd, 0
  br i1 %i.ne, label %.lr.ph.i.i32.i.i.i, label %_ZSt13move_backwardIN5QListIP17_dissector_info_tE8iteratorES4_ET0_T_S6_S5_.exit.i27.i.i.i

.lr.ph.i.i32.i.i.i:                               ; preds = %.noexc317, %.noexc318
  %.sroa.0.08.i.i33.i.i.i = phi ptr [ %.sroa.0.0.i.i35.i.i.i, %.noexc318 ], [ %.pn19.i25.i.i.i, %.noexc317 ] ; 4 uses
  %.sroa.03.07.i.i34.i.i.i = phi ptr [ %.sroa.0.08.i.i33.i.i.i, %.noexc318 ], [ %.sroa.0.020.i24.i.i.i, %.noexc317 ]
  %i.nf = load ptr, ptr %.sroa.0.08.i.i33.i.i.i, align 8
  store ptr %i.nf, ptr %.sroa.03.07.i.i34.i.i.i, align 8
  %.sroa.0.0.i.i35.i.i.i = getelementptr i8, ptr %.sroa.0.08.i.i33.i.i.i, i64 -8 ; 2 uses
  %i.ng = load ptr, ptr %.sroa.0.0.i.i35.i.i.i, align 8
  %i.nh = invoke noundef i32 @_ZNK7QString18localeAwareCompareERKS_(ptr noundef align 8 dereferenceable_or_null(24) %i.mw, ptr noundef align 8 dereferenceable(24) %i.ng)
          to label %.noexc318 unwind label %.loopexit.split-lp419.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc318:                                        ; preds = %.lr.ph.i.i32.i.i.i
  %i.ni = icmp slt i32 %i.nh, 0
  br i1 %i.ni, label %.lr.ph.i.i32.i.i.i, label %_ZSt13move_backwardIN5QListIP17_dissector_info_tE8iteratorES4_ET0_T_S6_S5_.exit.i27.i.i.i, !llvm.loop !43

_ZSt13move_backwardIN5QListIP17_dissector_info_tE8iteratorES4_ET0_T_S6_S5_.exit.i27.i.i.i: ; preds = %.noexc318, %.noexc317, %.lr.ph.i.i.i.i.i.preheader.i36.i.i.i, %bb.dt
  %.sink.i28.i.i.i = phi ptr [ %i.ld, %bb.dt ], [ %i.ld, %.lr.ph.i.i.i.i.i.preheader.i36.i.i.i ], [ %.sroa.0.020.i24.i.i.i, %.noexc317 ], [ %.sroa.0.08.i.i33.i.i.i, %.noexc318 ]
  store ptr %i.mw, ptr %.sink.i28.i.i.i, align 8
  %.sroa.0.0.i29.i.i.i = getelementptr i8, ptr %.sroa.0.020.i24.i.i.i, i64 8 ; 2 uses
  %.not.i30.i.i.i = icmp eq ptr %.sroa.0.0.i29.i.i.i, %i.li
  br i1 %.not.i30.i.i.i, label %"_ZSt4sortIN5QListIP17_dissector_info_tE8iteratorEZNK16DecodeAsDelegate12createEditorEP7QWidgetRK20QStyleOptionViewItemRK11QModelIndexE3$_0EvT_SF_T0_.exit", label %.lr.ph.i22.i.i.i, !llvm.loop !44

"_ZSt4sortIN5QListIP17_dissector_info_tE8iteratorEZNK16DecodeAsDelegate12createEditorEP7QWidgetRK20QStyleOptionViewItemRK11QModelIndexE3$_0EvT_SF_T0_.exit": ; preds = %_ZSt13move_backwardIN5QListIP17_dissector_info_tE8iteratorES4_ET0_T_S6_S5_.exit.i27.i.i.i, %"_ZSt25__unguarded_linear_insertIN5QListIP17_dissector_info_tE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIZNK16DecodeAsDelegate12createEditorEP7QWidgetRK20QStyleOptionViewItemRK11QModelIndexE3$_0EEEvT_T0_.exit.i.i.i.i", %bb.ds, %"_ZSt16__insertion_sortIN5QListIP17_dissector_info_tE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIZNK16DecodeAsDelegate12createEditorEP7QWidgetRK20QStyleOptionViewItemRK11QModelIndexE3$_0EEEvT_SJ_T0_.exit.i.i.i", %bb.dn
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %7, i64 6, ptr nonnull @.str.1)
          to label %bb.dv unwind label %bb.ec

bb.dv:                                            ; preds = %"_ZSt4sortIN5QListIP17_dissector_info_tE8iteratorEZNK16DecodeAsDelegate12createEditorEP7QWidgetRK20QStyleOptionViewItemRK11QModelIndexE3$_0EvT_SF_T0_.exit"
  %i.nj = load <2 x ptr>, ptr %7, align 16
  store <2 x ptr> %i.nj, ptr %28, align 16
  %i.nk = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.nl = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.nm = load i64, ptr %i.nl, align 16
  store i64 %i.nm, ptr %i.nk, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %29, i8 0, i64 24, i1 false)
  %i.nn = getelementptr inbounds nuw i8, ptr %29, i64 24
  store i64 2, ptr %i.nn, align 8
  %i.no = invoke noundef i32 @_ZNK9QComboBox5countEv(ptr noundef align 8 dereferenceable_or_null(40) %i.kb)
          to label %.noexc320 unwind label %bb.ed

.noexc320:                                        ; preds = %bb.dv
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @_ZN5QIconC1Ev(ptr noundef nonnull align 8 dereferenceable_or_null(8) %6) #20
  invoke void @_ZN9QComboBox10insertItemEiRK5QIconRK7QStringRK8QVariant(ptr noundef align 8 dereferenceable_or_null(40) %i.kb, i32 noundef %i.no, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(24) %28, ptr noundef nonnull align 8 dereferenceable(32) %29)
          to label %bb.dx unwind label %bb.dw

bb.dw:                                            ; preds = %.noexc320
  %i.np = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5QIconD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %.body321

bb.dx:                                            ; preds = %.noexc320
  call void @_ZN5QIconD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %29) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #20
  %i.nq = load ptr, ptr %28, align 16             ; 2 uses
  %.not.i.i.i324 = icmp eq ptr %i.nq, null
  br i1 %.not.i.i.i324, label %_ZN7QStringD2Ev.exit327, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i325

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i325:   ; preds = %bb.dx
  %i.nr = atomicrmw sub ptr %i.nq, i32 1 acq_rel, align 4
  %.not.i.i326 = icmp eq i32 %i.nr, 1
  br i1 %.not.i.i326, label %bb.dy, label %_ZN7QStringD2Ev.exit327

bb.dy:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i325
  %i.ns = load ptr, ptr %28, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ns, i64 noundef 2, i64 noundef 8) #20
  br label %_ZN7QStringD2Ev.exit327

_ZN7QStringD2Ev.exit327:                          ; preds = %bb.dx, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i325, %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #20
  %i.nt = invoke noundef i32 @_ZNK9QComboBox5countEv(ptr noundef align 8 dereferenceable_or_null(40) %i.kb)
          to label %bb.dz unwind label %.loopexit.split-lp419.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dz:                                            ; preds = %_ZN7QStringD2Ev.exit327
  invoke void @_ZN9QComboBox15insertSeparatorEi(ptr noundef align 8 dereferenceable_or_null(40) %i.kb, i32 noundef %i.nt)
          to label %bb.ea unwind label %.loopexit.split-lp419.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ea:                                            ; preds = %bb.dz
  %i.nu = load ptr, ptr %27, align 8              ; 3 uses
  %.not.i.i.i.i328 = icmp eq ptr %i.nu, null
  br i1 %.not.i.i.i.i328, label %_ZNK17QArrayDataPointerIP17_dissector_info_tE11needsDetachEv.exit.thread.i.i.i330, label %_ZNK17QArrayDataPointerIP17_dissector_info_tE11needsDetachEv.exit.i.i.i329

_ZNK17QArrayDataPointerIP17_dissector_info_tE11needsDetachEv.exit.i.i.i329: ; preds = %bb.ea
  %i.nv = load atomic i32, ptr %i.nu monotonic, align 4
  %i.nw = icmp sgt i32 %i.nv, 1
  br i1 %i.nw, label %_ZNK17QArrayDataPointerIP17_dissector_info_tE11needsDetachEv.exit.thread.i.i.i330, label %.thread576

.thread576:                                       ; preds = %_ZNK17QArrayDataPointerIP17_dissector_info_tE11needsDetachEv.exit.i.i.i329
  %i.nx = load ptr, ptr %i.le, align 8
  br label %_ZNK17QArrayDataPointerIP17_dissector_info_tE11needsDetachEv.exit.i.i.i334

_ZNK17QArrayDataPointerIP17_dissector_info_tE11needsDetachEv.exit.thread.i.i.i330: ; preds = %_ZNK17QArrayDataPointerIP17_dissector_info_tE11needsDetachEv.exit.i.i.i329, %bb.ea
  invoke void @_ZN17QArrayDataPointerIP17_dissector_info_tE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS2_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %27, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %bb.eb unwind label %bb.ef

bb.eb:                                            ; preds = %_ZNK17QArrayDataPointerIP17_dissector_info_tE11needsDetachEv.exit.thread.i.i.i330
  %.pre500 = load ptr, ptr %27, align 8           ; 2 uses
  %i.ny = load ptr, ptr %i.le, align 8            ; 2 uses
  %.not.i.i.i.i333 = icmp eq ptr %.pre500, null
  br i1 %.not.i.i.i.i333, label %_ZNK17QArrayDataPointerIP17_dissector_info_tE11needsDetachEv.exit.thread.i.i.i335, label %_ZNK17QArrayDataPointerIP17_dissector_info_tE11needsDetachEv.exit.i.i.i334

_ZNK17QArrayDataPointerIP17_dissector_info_tE11needsDetachEv.exit.i.i.i334: ; preds = %.thread576, %bb.eb
  %i.nz = phi ptr [ %i.nx, %.thread576 ], [ %i.ny, %bb.eb ] ; 3 uses
  %i.oa = phi ptr [ %i.nu, %.thread576 ], [ %.pre500, %bb.eb ]
  %i.ob = load atomic i32, ptr %i.oa monotonic, align 4
  %i.oc = icmp sgt i32 %i.ob, 1
  br i1 %i.oc, label %_ZNK17QArrayDataPointerIP17_dissector_info_tE11needsDetachEv.exit.thread.i.i.i335, label %_ZN5QListIP17_dissector_info_tE3endEv.exit337

_ZNK17QArrayDataPointerIP17_dissector_info_tE11needsDetachEv.exit.thread.i.i.i335: ; preds = %_ZNK17QArrayDataPointerIP17_dissector_info_tE11needsDetachEv.exit.i.i.i334, %bb.eb
  %i.od = phi ptr [ %i.nz, %_ZNK17QArrayDataPointerIP17_dissector_info_tE11needsDetachEv.exit.i.i.i334 ], [ %i.ny, %bb.eb ]
  invoke void @_ZN17QArrayDataPointerIP17_dissector_info_tE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS2_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %27, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZNK17QArrayDataPointerIP17_dissector_info_tE11needsDetachEv.exit.thread.i.i.i335._ZN5QListIP17_dissector_info_tE3endEv.exit337_crit_edge unwind label %bb.eg

_ZNK17QArrayDataPointerIP17_dissector_info_tE11needsDetachEv.exit.thread.i.i.i335._ZN5QListIP17_dissector_info_tE3endEv.exit337_crit_edge: ; preds = %_ZNK17QArrayDataPointerIP17_dissector_info_tE11needsDetachEv.exit.thread.i.i.i335
  %.pre501 = load ptr, ptr %i.le, align 8
  br label %_ZN5QListIP17_dissector_info_tE3endEv.exit337

_ZN5QListIP17_dissector_info_tE3endEv.exit337:    ; preds = %_ZNK17QArrayDataPointerIP17_dissector_info_tE11needsDetachEv.exit.thread.i.i.i335._ZN5QListIP17_dissector_info_tE3endEv.exit337_crit_edge, %_ZNK17QArrayDataPointerIP17_dissector_info_tE11needsDetachEv.exit.i.i.i334
  %i.oe = phi ptr [ %i.od, %_ZNK17QArrayDataPointerIP17_dissector_info_tE11needsDetachEv.exit.thread.i.i.i335._ZN5QListIP17_dissector_info_tE3endEv.exit337_crit_edge ], [ %i.nz, %_ZNK17QArrayDataPointerIP17_dissector_info_tE11needsDetachEv.exit.i.i.i334 ] ; 2 uses
  %i.of = phi ptr [ %.pre501, %_ZNK17QArrayDataPointerIP17_dissector_info_tE11needsDetachEv.exit.thread.i.i.i335._ZN5QListIP17_dissector_info_tE3endEv.exit337_crit_edge ], [ %i.nz, %_ZNK17QArrayDataPointerIP17_dissector_info_tE11needsDetachEv.exit.i.i.i334 ]
  %i.og = load i64, ptr %i.lg, align 8
  %i.oh = getelementptr [8 x i8], ptr %i.of, i64 %i.og ; 2 uses
  %.not404457 = icmp eq ptr %i.oe, %i.oh
  br i1 %.not404457, label %._crit_edge, label %.lr.ph459

.lr.ph459:                                        ; preds = %_ZN5QListIP17_dissector_info_tE3endEv.exit337
  %i.oi = getelementptr i8, ptr %i.d, i64 88
  %i.oj = getelementptr i8, ptr %i.d, i64 96
  %i.ok = getelementptr i8, ptr %i.d, i64 104
  br label %bb.eh

._crit_edge:                                      ; preds = %bb.ex, %_ZN5QListIP17_dissector_info_tE3endEv.exit337
  %i.ol = getelementptr i8, ptr %0, i64 8
  %i.om = load ptr, ptr %i.ol, align 8
  %i.on = getelementptr i8, ptr %i.om, i64 16
  %i.oo = load ptr, ptr %i.on, align 8
  %i.op = load i32, ptr %i.e, align 4
  %i.oq = invoke noundef i32 @_ZNK9QTreeView11columnWidthEi(ptr noundef align 8 dereferenceable_or_null(40) %i.oo, i32 noundef %i.op)
          to label %bb.ey unwind label %bb.fa     ; 2 uses

bb.ec:                                            ; preds = %"_ZSt4sortIN5QListIP17_dissector_info_tE8iteratorEZNK16DecodeAsDelegate12createEditorEP7QWidgetRK20QStyleOptionViewItemRK11QModelIndexE3$_0EvT_SF_T0_.exit"
  %i.or = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit341

bb.ed:                                            ; preds = %bb.dv
  %i.os = landingpad { ptr, i32 }
          cleanup
  br label %.body321

.body321:                                         ; preds = %bb.dw, %bb.ed
  %eh.lpad-body322 = phi { ptr, i32 } [ %i.os, %bb.ed ], [ %i.np, %bb.dw ] ; 3 uses
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %29) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #20
  %i.ot = load ptr, ptr %28, align 16             ; 2 uses
  %.not.i.i.i338 = icmp eq ptr %i.ot, null
  br i1 %.not.i.i.i338, label %_ZN7QStringD2Ev.exit341, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i339

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i339:   ; preds = %.body321
  %i.ou = atomicrmw sub ptr %i.ot, i32 1 acq_rel, align 4
  %.not.i.i340 = icmp eq i32 %i.ou, 1
  br i1 %.not.i.i340, label %bb.ee, label %_ZN7QStringD2Ev.exit341

bb.ee:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i339
  %i.ov = load ptr, ptr %28, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ov, i64 noundef 2, i64 noundef 8) #20
  br label %_ZN7QStringD2Ev.exit341

_ZN7QStringD2Ev.exit341:                          ; preds = %bb.ee, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i339, %.body321, %bb.ec
  %.pn = phi { ptr, i32 } [ %i.or, %bb.ec ], [ %eh.lpad-body322, %.body321 ], [ %eh.lpad-body322, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i339 ], [ %eh.lpad-body322, %bb.ee ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #20
  br label %.loopexit.split-lp419

bb.ef:                                            ; preds = %_ZNK17QArrayDataPointerIP17_dissector_info_tE11needsDetachEv.exit.thread.i.i.i330
  %i.ow = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp419

bb.eg:                                            ; preds = %_ZNK17QArrayDataPointerIP17_dissector_info_tE11needsDetachEv.exit.thread.i.i.i335
  %i.ox = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp419

bb.eh:                                            ; preds = %.lr.ph459, %bb.ex
  %.sroa.0368.0458 = phi ptr [ %i.oe, %.lr.ph459 ], [ %i.ps, %bb.ex ] ; 2 uses
  %i.oy = load ptr, ptr %.sroa.0368.0458, align 8 ; 6 uses
  %i.oz = load ptr, ptr %i.oi, align 8, !noalias !46 ; 4 uses
  %i.pa = load ptr, ptr %i.oj, align 8, !noalias !46
  %i.pb = load i64, ptr %i.ok, align 8, !noalias !46 ; 3 uses
  %.not.i.i.i.i342 = icmp eq ptr %i.oz, null      ; 2 uses
  br i1 %.not.i.i.i.i342, label %_ZNK12DecodeAsItem16defaultDissectorEv.exit, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.pc = atomicrmw add ptr %i.oz, i32 1 acq_rel, align 4, !noalias !46 ; 0 uses
  br label %_ZNK12DecodeAsItem16defaultDissectorEv.exit

_ZNK12DecodeAsItem16defaultDissectorEv.exit:      ; preds = %bb.eh, %bb.ei
  %i.pd = getelementptr inbounds nuw i8, ptr %i.oy, i64 16
  %i.pe = load i64, ptr %i.pd, align 8
  %i.pf = icmp eq i64 %i.pe, %i.pb
  br i1 %i.pf, label %bb.ej, label %_ZeqRK7QStringS1_.exit

bb.ej:                                            ; preds = %_ZNK12DecodeAsItem16defaultDissectorEv.exit
  %i.pg = getelementptr inbounds nuw i8, ptr %i.oy, i64 8
  %i.ph = load ptr, ptr %i.pg, align 8
  %i.pi = call noundef i32 @_ZN9QtPrivate14compareStringsE11QStringViewS0_N2Qt15CaseSensitivityE(i64 %i.pb, ptr %i.ph, i64 %i.pb, ptr %i.pa, i32 noundef 1) #22
  %i.pj = icmp eq i32 %i.pi, 0
  br label %_ZeqRK7QStringS1_.exit

_ZeqRK7QStringS1_.exit:                           ; preds = %_ZNK12DecodeAsItem16defaultDissectorEv.exit, %bb.ej
  %i.pk = phi i1 [ false, %_ZNK12DecodeAsItem16defaultDissectorEv.exit ], [ %i.pj, %bb.ej ]
  br i1 %.not.i.i.i.i342, label %_ZN7QStringD2Ev.exit346, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i344

end_hunk_0
