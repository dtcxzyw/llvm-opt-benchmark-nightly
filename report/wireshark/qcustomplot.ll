Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/qcustomplot?download=true
inline.NumInlined: 26883
inline.NumDeleted: 6491
loop-unroll.NumRuntimeUnrolled: 106
loop-unroll.NumUnrolled: 106
begin_hunk_0_@_ZN16QCPDataContainerI21QCPStatisticalBoxDataE3addERK5QListIS0_Eb:bb.a
  %i.cp = getelementptr i8, ptr %.sroa.0.08.i.i.i.i.i45, i64 48 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.05.07.i.i.i.i.i46, i64 48 ; 2 uses
  %i.cr = load <2 x ptr>, ptr %i.cq, align 8
  %i.cs = load ptr, ptr %i.cq, align 8            ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.05.07.i.i.i.i.i46, i64 64
  %i.cu = load i64, ptr %i.ct, align 8
  %.not.i.i.i.i.i.i.i.i.i.i47 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i47, label %_ZN17QArrayDataPointerIdEC2ERKS0_.exit.i.i.i.i.i.i.i.i48, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i43
  %i.cv = atomicrmw add ptr %i.cs, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN17QArrayDataPointerIdEC2ERKS0_.exit.i.i.i.i.i.i.i.i48

_ZN17QArrayDataPointerIdEC2ERKS0_.exit.i.i.i.i.i.i.i.i48: ; preds = %bb.q, %.lr.ph.i.i.i.i.i43
  %i.cw = load ptr, ptr %i.cp, align 8            ; 3 uses
  store <2 x ptr> %i.cr, ptr %i.cp, align 8
  %i.cx = getelementptr i8, ptr %.sroa.0.08.i.i.i.i.i45, i64 64
  store i64 %i.cu, ptr %i.cx, align 8
  %.not.i.i2.i.i.i.i.i.i.i.i49 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i2.i.i.i.i.i.i.i.i49, label %_ZN21QCPStatisticalBoxDataaSERKS_.exit.i.i.i.i.i52, label %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i.i.i.i.i.i50

_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i.i.i.i.i.i50: ; preds = %_ZN17QArrayDataPointerIdEC2ERKS0_.exit.i.i.i.i.i.i.i.i48
  %i.cy = atomicrmw add ptr %i.cw, i32 -1 acq_rel, align 4
  %.not.i.i.i.i.i.i.i.i.i51 = icmp eq i32 %i.cy, 1
  br i1 %.not.i.i.i.i.i.i.i.i.i51, label %bb.r, label %_ZN21QCPStatisticalBoxDataaSERKS_.exit.i.i.i.i.i52

bb.r:                                             ; preds = %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i.i.i.i.i.i50
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.cw, i64 noundef 8, i64 noundef 8) #49
  br label %_ZN21QCPStatisticalBoxDataaSERKS_.exit.i.i.i.i.i52

_ZN21QCPStatisticalBoxDataaSERKS_.exit.i.i.i.i.i52: ; preds = %bb.r, %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i.i.i.i.i.i50, %_ZN17QArrayDataPointerIdEC2ERKS0_.exit.i.i.i.i.i.i.i.i48
  %i.cz = getelementptr i8, ptr %.sroa.05.07.i.i.i.i.i46, i64 72
  %i.da = getelementptr i8, ptr %.sroa.0.08.i.i.i.i.i45, i64 72
  %i.db = add nsw i64 %.09.i.i.i.i.i44, -1
  %i.dc = icmp sgt i64 %.09.i.i.i.i.i44, 1
  br i1 %i.dc, label %.lr.ph.i.i.i.i.i43, label %_ZSt4copyIN5QListI21QCPStatisticalBoxDataE14const_iteratorENS2_8iteratorEET0_T_S6_S5_.exit53, !llvm.loop !1236

_ZSt4copyIN5QListI21QCPStatisticalBoxDataE14const_iteratorENS2_8iteratorEET0_T_S6_S5_.exit53: ; preds = %_ZN21QCPStatisticalBoxDataaSERKS_.exit.i.i.i.i.i52, %_ZN16QCPDataContainerI21QCPStatisticalBoxDataE3endEv.exit
  br i1 %2, label %_ZSt4sortIN5QListI21QCPStatisticalBoxDataE8iteratorEPFbRKS1_S5_EEvT_S8_T0_.exit, label %bb.s

bb.s:                                             ; preds = %_ZSt4copyIN5QListI21QCPStatisticalBoxDataE14const_iteratorENS2_8iteratorEET0_T_S6_S5_.exit53
  %i.dd = load ptr, ptr %i.bq, align 8            ; 3 uses
  %.not.i.i.i.i.i54 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i.i.i54, label %_ZN16QCPDataContainerI21QCPStatisticalBoxDataE3endEv.exit57, label %_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE11needsDetachEv.exit.i.i.i.i55

_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE11needsDetachEv.exit.i.i.i.i55: ; preds = %bb.s
  %i.de = load atomic i32, ptr %i.dd monotonic, align 4
  %i.df = icmp sgt i32 %i.de, 1
  br i1 %i.df, label %_ZN16QCPDataContainerI21QCPStatisticalBoxDataE3endEv.exit57, label %_ZN16QCPDataContainerI21QCPStatisticalBoxDataE3endEv.exit57.thread

_ZN16QCPDataContainerI21QCPStatisticalBoxDataE3endEv.exit57.thread: ; preds = %_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE11needsDetachEv.exit.i.i.i.i55
  %i.dg = load ptr, ptr %i.ch, align 8            ; 2 uses
  %i.dh = load i64, ptr %i.d, align 8             ; 2 uses
  %i.di = getelementptr [72 x i8], ptr %i.dg, i64 %i.dh
  %i.dj = getelementptr [72 x i8], ptr %i.di, i64 %i.ci
  br label %_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE11needsDetachEv.exit.i.i.i.i59

_ZN16QCPDataContainerI21QCPStatisticalBoxDataE3endEv.exit57: ; preds = %bb.s, %_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE11needsDetachEv.exit.i.i.i.i55
  tail call void @_ZN17QArrayDataPointerI21QCPStatisticalBoxDataE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %i.bq, i32 noundef 0, i64 noundef 0, ptr noundef null)
  %.pre199 = load ptr, ptr %i.bq, align 8         ; 2 uses
  %i.dk = load ptr, ptr %i.ch, align 8            ; 2 uses
  %i.dl = load i64, ptr %i.d, align 8             ; 2 uses
  %i.dm = getelementptr [72 x i8], ptr %i.dk, i64 %i.dl
  %i.dn = getelementptr [72 x i8], ptr %i.dm, i64 %i.ci ; 2 uses
  %.not.i.i.i.i.i58 = icmp eq ptr %.pre199, null
  br i1 %.not.i.i.i.i.i58, label %_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE11needsDetachEv.exit.thread.i.i.i.i60, label %_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE11needsDetachEv.exit.i.i.i.i59

_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE11needsDetachEv.exit.i.i.i.i59: ; preds = %_ZN16QCPDataContainerI21QCPStatisticalBoxDataE3endEv.exit57.thread, %_ZN16QCPDataContainerI21QCPStatisticalBoxDataE3endEv.exit57
  %i.do = phi ptr [ %i.dj, %_ZN16QCPDataContainerI21QCPStatisticalBoxDataE3endEv.exit57.thread ], [ %i.dn, %_ZN16QCPDataContainerI21QCPStatisticalBoxDataE3endEv.exit57 ] ; 2 uses
  %i.dp = phi i64 [ %i.dh, %_ZN16QCPDataContainerI21QCPStatisticalBoxDataE3endEv.exit57.thread ], [ %i.dl, %_ZN16QCPDataContainerI21QCPStatisticalBoxDataE3endEv.exit57 ]
  %i.dq = phi ptr [ %i.dg, %_ZN16QCPDataContainerI21QCPStatisticalBoxDataE3endEv.exit57.thread ], [ %i.dk, %_ZN16QCPDataContainerI21QCPStatisticalBoxDataE3endEv.exit57 ]
  %i.dr = phi ptr [ %i.dd, %_ZN16QCPDataContainerI21QCPStatisticalBoxDataE3endEv.exit57.thread ], [ %.pre199, %_ZN16QCPDataContainerI21QCPStatisticalBoxDataE3endEv.exit57 ]
  %i.ds = load atomic i32, ptr %i.dr monotonic, align 4
  %i.dt = icmp sgt i32 %i.ds, 1
  br i1 %i.dt, label %_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE11needsDetachEv.exit.thread.i.i.i.i60, label %_ZN16QCPDataContainerI21QCPStatisticalBoxDataE3endEv.exit61

_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE11needsDetachEv.exit.thread.i.i.i.i60: ; preds = %_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE11needsDetachEv.exit.i.i.i.i59, %_ZN16QCPDataContainerI21QCPStatisticalBoxDataE3endEv.exit57
  %i.du = phi ptr [ %i.do, %_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE11needsDetachEv.exit.i.i.i.i59 ], [ %i.dn, %_ZN16QCPDataContainerI21QCPStatisticalBoxDataE3endEv.exit57 ]
  tail call void @_ZN17QArrayDataPointerI21QCPStatisticalBoxDataE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %i.bq, i32 noundef 0, i64 noundef 0, ptr noundef null)
  %.pre200 = load ptr, ptr %i.ch, align 8
  %.pre201 = load i64, ptr %i.d, align 8
  br label %_ZN16QCPDataContainerI21QCPStatisticalBoxDataE3endEv.exit61

_ZN16QCPDataContainerI21QCPStatisticalBoxDataE3endEv.exit61: ; preds = %_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE11needsDetachEv.exit.i.i.i.i59, %_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE11needsDetachEv.exit.thread.i.i.i.i60
  %i.dv = phi ptr [ %i.do, %_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE11needsDetachEv.exit.i.i.i.i59 ], [ %i.du, %_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE11needsDetachEv.exit.thread.i.i.i.i60 ] ; 16 uses
  %i.dw = phi i64 [ %i.dp, %_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE11needsDetachEv.exit.i.i.i.i59 ], [ %.pre201, %_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE11needsDetachEv.exit.thread.i.i.i.i60 ]
  %i.dx = phi ptr [ %i.dq, %_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE11needsDetachEv.exit.i.i.i.i59 ], [ %.pre200, %_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE11needsDetachEv.exit.thread.i.i.i.i60 ]
  %i.dy = getelementptr [72 x i8], ptr %i.dx, i64 %i.dw ; 7 uses
  %.not.i.i62 = icmp eq ptr %i.dv, %i.dy
  br i1 %.not.i.i62, label %_ZSt4sortIN5QListI21QCPStatisticalBoxDataE8iteratorEPFbRKS1_S5_EEvT_S8_T0_.exit, label %bb.t

bb.t:                                             ; preds = %_ZN16QCPDataContainerI21QCPStatisticalBoxDataE3endEv.exit61
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = ptrtoint ptr %i.dv to i64               ; 3 uses
  %i.eb = sub i64 %i.dz, %i.ea                    ; 2 uses
  %i.ec = sdiv exact i64 %i.eb, 72
  %i.ed = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ec, i1 true)
  %i.ee = shl nuw nsw i64 %i.ed, 1
  %i.ef = xor i64 %i.ee, 126
  tail call void @_ZSt16__introsort_loopIN5QListI21QCPStatisticalBoxDataE8iteratorExN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_T0_T1_(ptr %i.dv, ptr %i.dy, i64 noundef %i.ef, ptr @_Z18qcpLessThanSortKeyI21QCPStatisticalBoxDataEbRKT_S3_)
  %i.eg = icmp sgt i64 %i.eb, 1152
  br i1 %i.eg, label %bb.u, label %.preheader.i

bb.u:                                             ; preds = %bb.t
  %i.eh = getelementptr i8, ptr %i.dv, i64 1152   ; 3 uses
  %.sroa.021.029.i85 = getelementptr i8, ptr %i.dv, i64 72
  %i.ei = getelementptr i8, ptr %i.dv, i64 48     ; 2 uses
  %i.ej = getelementptr i8, ptr %i.dv, i64 64
  br label %bb.v

bb.v:                                             ; preds = %_ZN21QCPStatisticalBoxDataD2Ev.exit.i96, %bb.u
  %.sroa.021.032.i88 = phi ptr [ %.sroa.021.029.i85, %bb.u ], [ %.sroa.021.0.i90, %_ZN21QCPStatisticalBoxDataD2Ev.exit.i96 ] ; 12 uses
  %.pn31.i89 = phi ptr [ %i.dv, %bb.u ], [ %.sroa.021.032.i88, %_ZN21QCPStatisticalBoxDataD2Ev.exit.i96 ] ; 3 uses
  %i.ek = load double, ptr %.sroa.021.032.i88, align 8 ; 4 uses
  %i.el = load double, ptr %i.dv, align 8
  %i.em = fcmp olt double %i.ek, %i.el
  br i1 %i.em, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %.sroa.0.i83.sroa.0.0.copyload = load <6 x double>, ptr %.sroa.021.032.i88, align 8
  %i.en = getelementptr i8, ptr %.pn31.i89, i64 120 ; 2 uses
  %i.eo = load <2 x ptr>, ptr %i.en, align 8
  %i.ep = getelementptr i8, ptr %.pn31.i89, i64 136
  %i.eq = load i64, ptr %i.ep, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.en, i8 0, i64 24, i1 false)
  %i.er = ptrtoint ptr %.sroa.021.032.i88 to i64
  %i.es = sub i64 %i.er, %i.ea                    ; 2 uses
  %i.et = icmp sgt i64 %i.es, 0
  br i1 %i.et, label %.lr.ph.preheader.i.i.i.i.i.i97, label %_ZSt13move_backwardIN5QListI21QCPStatisticalBoxDataE8iteratorES3_ET0_T_S5_S4_.exit.i92

.lr.ph.preheader.i.i.i.i.i.i97:                   ; preds = %bb.w
  %i.eu = getelementptr i8, ptr %.pn31.i89, i64 144
  %i.ev = udiv exact i64 %i.es, 72
  br label %.lr.ph.i.i.i.i.i.i98

.lr.ph.i.i.i.i.i.i98:                             ; preds = %_ZN21QCPStatisticalBoxDataaSEOS_.exit.i.i.i.i.i.i105, %.lr.ph.preheader.i.i.i.i.i.i97
  %.010.i.i.i.i.i.i99 = phi i64 [ %i.fg, %_ZN21QCPStatisticalBoxDataaSEOS_.exit.i.i.i.i.i.i105 ], [ %i.ev, %.lr.ph.preheader.i.i.i.i.i.i97 ] ; 2 uses
  %.sroa.0.09.i.i.i.i.i.i100 = phi ptr [ %i.ex, %_ZN21QCPStatisticalBoxDataaSEOS_.exit.i.i.i.i.i.i105 ], [ %i.eu, %.lr.ph.preheader.i.i.i.i.i.i97 ] ; 3 uses
  %.sroa.05.08.i.i.i.i.i.i101 = phi ptr [ %i.ew, %_ZN21QCPStatisticalBoxDataaSEOS_.exit.i.i.i.i.i.i105 ], [ %.sroa.021.032.i88, %.lr.ph.preheader.i.i.i.i.i.i97 ] ; 3 uses
  %i.ew = getelementptr i8, ptr %.sroa.05.08.i.i.i.i.i.i101, i64 -72 ; 2 uses
  %i.ex = getelementptr i8, ptr %.sroa.0.09.i.i.i.i.i.i100, i64 -72 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(48) dereferenceable_or_null(72) %i.ex, ptr noundef align 8 dereferenceable(72) %i.ew, i64 48, i1 false)
  %i.ey = getelementptr i8, ptr %.sroa.0.09.i.i.i.i.i.i100, i64 -24 ; 2 uses
  %i.ez = getelementptr i8, ptr %.sroa.05.08.i.i.i.i.i.i101, i64 -24 ; 2 uses
  %i.fa = getelementptr i8, ptr %.sroa.05.08.i.i.i.i.i.i101, i64 -8
  %i.fb = load i64, ptr %i.fa, align 8
  %i.fc = load <2 x ptr>, ptr %i.ez, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ez, i8 0, i64 24, i1 false)
  %i.fd = load ptr, ptr %i.ey, align 8            ; 3 uses
  store <2 x ptr> %i.fc, ptr %i.ey, align 8
  %i.fe = getelementptr i8, ptr %.sroa.0.09.i.i.i.i.i.i100, i64 -8
  store i64 %i.fb, ptr %i.fe, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i102 = icmp eq ptr %i.fd, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i102, label %_ZN21QCPStatisticalBoxDataaSEOS_.exit.i.i.i.i.i.i105, label %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i.i.i.i.i.i.i103

_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i.i.i.i.i.i.i103: ; preds = %.lr.ph.i.i.i.i.i.i98
  %i.ff = atomicrmw add ptr %i.fd, i32 -1 acq_rel, align 4
  %.not.i.i.i.i.i.i.i.i.i.i104 = icmp eq i32 %i.ff, 1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i104, label %bb.x, label %_ZN21QCPStatisticalBoxDataaSEOS_.exit.i.i.i.i.i.i105

bb.x:                                             ; preds = %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i.i.i.i.i.i.i103
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.fd, i64 noundef 8, i64 noundef 8) #49
  br label %_ZN21QCPStatisticalBoxDataaSEOS_.exit.i.i.i.i.i.i105

_ZN21QCPStatisticalBoxDataaSEOS_.exit.i.i.i.i.i.i105: ; preds = %bb.x, %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i.i.i.i.i.i.i103, %.lr.ph.i.i.i.i.i.i98
  %i.fg = add nsw i64 %.010.i.i.i.i.i.i99, -1
  %i.fh = icmp sgt i64 %.010.i.i.i.i.i.i99, 1
  br i1 %i.fh, label %.lr.ph.i.i.i.i.i.i98, label %_ZSt13move_backwardIN5QListI21QCPStatisticalBoxDataE8iteratorES3_ET0_T_S5_S4_.exit.i92, !llvm.loop !76

_ZSt13move_backwardIN5QListI21QCPStatisticalBoxDataE8iteratorES3_ET0_T_S5_S4_.exit.i92: ; preds = %_ZN21QCPStatisticalBoxDataaSEOS_.exit.i.i.i.i.i.i105, %bb.w
  store <6 x double> %.sroa.0.i83.sroa.0.0.copyload, ptr %i.dv, align 8
  %i.fi = load ptr, ptr %i.ei, align 8            ; 3 uses
  store <2 x ptr> %i.eo, ptr %i.ei, align 8
  store i64 %i.eq, ptr %i.ej, align 8
  %.not.i.i.i.i.i.i93 = icmp eq ptr %i.fi, null
  br i1 %.not.i.i.i.i.i.i93, label %_ZN21QCPStatisticalBoxDataD2Ev.exit.i96, label %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i.i94

_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i.i94: ; preds = %_ZSt13move_backwardIN5QListI21QCPStatisticalBoxDataE8iteratorES3_ET0_T_S5_S4_.exit.i92
  %i.fj = atomicrmw add ptr %i.fi, i32 -1 acq_rel, align 4
  %.not.i.i.i.i.i95 = icmp eq i32 %i.fj, 1
  br i1 %.not.i.i.i.i.i95, label %bb.y, label %_ZN21QCPStatisticalBoxDataD2Ev.exit.i96

bb.y:                                             ; preds = %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i.i94
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.fi, i64 noundef 8, i64 noundef 8) #49
  br label %_ZN21QCPStatisticalBoxDataD2Ev.exit.i96

bb.z:                                             ; preds = %bb.v
  %.sroa.6174.0..sroa.021.032.i88.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.021.032.i88, i64 8
  %.sroa.6174.sroa.0.0.copyload = load <5 x double>, ptr %.sroa.6174.0..sroa.021.032.i88.sroa_idx, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.021.032.i88, i64 48 ; 2 uses
  %i.fl = load <2 x ptr>, ptr %i.fk, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.021.032.i88, i64 64
  %i.fn = load i64, ptr %i.fm, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fk, i8 0, i64 24, i1 false)
  %.sroa.0.0.i127188 = getelementptr i8, ptr %.sroa.021.032.i88, i64 -72 ; 2 uses
  %i.fo = load double, ptr %.sroa.0.0.i127188, align 8
  %i.fp = fcmp olt double %i.ek, %i.fo
  br i1 %i.fp, label %.lr.ph191, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRK21QCPStatisticalBoxDataS4_EEclIS2_N5QListIS2_E8iteratorEEEbRT_T0_.exit.i132._crit_edge

.lr.ph191:                                        ; preds = %bb.z, %_ZN21QCPStatisticalBoxDataaSEOS_.exit.i143
  %.sroa.0.0.i127190 = phi ptr [ %.sroa.0.0.i127, %_ZN21QCPStatisticalBoxDataaSEOS_.exit.i143 ], [ %.sroa.0.0.i127188, %bb.z ] ; 5 uses
  %.sroa.013.0.i126189 = phi ptr [ %.sroa.0.0.i127190, %_ZN21QCPStatisticalBoxDataaSEOS_.exit.i143 ], [ %.sroa.021.032.i88, %bb.z ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(48) dereferenceable_or_null(72) %.sroa.013.0.i126189, ptr noundef align 8 dereferenceable(72) %.sroa.0.0.i127190, i64 48, i1 false)
  %i.fq = getelementptr i8, ptr %.sroa.013.0.i126189, i64 48 ; 2 uses
  %i.fr = getelementptr i8, ptr %.sroa.013.0.i126189, i64 -24 ; 2 uses
  %i.fs = getelementptr i8, ptr %.sroa.013.0.i126189, i64 -8
  %i.ft = load i64, ptr %i.fs, align 8
  %i.fu = load <2 x ptr>, ptr %i.fr, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fr, i8 0, i64 24, i1 false)
  %i.fv = load ptr, ptr %i.fq, align 8            ; 3 uses
  store <2 x ptr> %i.fu, ptr %i.fq, align 8
  %i.fw = getelementptr i8, ptr %.sroa.013.0.i126189, i64 64
  store i64 %i.ft, ptr %i.fw, align 8
  %.not.i.i.i.i.i.i140 = icmp eq ptr %i.fv, null
  br i1 %.not.i.i.i.i.i.i140, label %_ZN21QCPStatisticalBoxDataaSEOS_.exit.i143, label %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i.i141

_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i.i141: ; preds = %.lr.ph191
  %i.fx = atomicrmw add ptr %i.fv, i32 -1 acq_rel, align 4
  %.not.i.i.i.i.i142 = icmp eq i32 %i.fx, 1
  br i1 %.not.i.i.i.i.i142, label %bb.aa, label %_ZN21QCPStatisticalBoxDataaSEOS_.exit.i143

bb.aa:                                            ; preds = %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i.i141
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.fv, i64 noundef 8, i64 noundef 8) #49
  br label %_ZN21QCPStatisticalBoxDataaSEOS_.exit.i143

_ZN21QCPStatisticalBoxDataaSEOS_.exit.i143:       ; preds = %bb.aa, %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i.i141, %.lr.ph191
  %.sroa.0.0.i127 = getelementptr i8, ptr %.sroa.0.0.i127190, i64 -72 ; 2 uses
  %i.fy = load double, ptr %.sroa.0.0.i127, align 8
  %i.fz = fcmp olt double %i.ek, %i.fy
  br i1 %i.fz, label %.lr.ph191, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRK21QCPStatisticalBoxDataS4_EEclIS2_N5QListIS2_E8iteratorEEEbRT_T0_.exit.i132._crit_edge.loopexit, !llvm.loop !77

_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRK21QCPStatisticalBoxDataS4_EEclIS2_N5QListIS2_E8iteratorEEEbRT_T0_.exit.i132._crit_edge.loopexit: ; preds = %_ZN21QCPStatisticalBoxDataaSEOS_.exit.i143
  %.phi.trans.insert203 = getelementptr i8, ptr %.sroa.0.0.i127190, i64 48
  %.pre204 = load ptr, ptr %.phi.trans.insert203, align 8
  br label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRK21QCPStatisticalBoxDataS4_EEclIS2_N5QListIS2_E8iteratorEEEbRT_T0_.exit.i132._crit_edge

_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRK21QCPStatisticalBoxDataS4_EEclIS2_N5QListIS2_E8iteratorEEEbRT_T0_.exit.i132._crit_edge: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRK21QCPStatisticalBoxDataS4_EEclIS2_N5QListIS2_E8iteratorEEEbRT_T0_.exit.i132._crit_edge.loopexit, %bb.z
  %3 = phi ptr [ null, %bb.z ], [ %.pre204, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRK21QCPStatisticalBoxDataS4_EEclIS2_N5QListIS2_E8iteratorEEEbRT_T0_.exit.i132._crit_edge.loopexit ] ; 3 uses
  %.sroa.013.0.i126.lcssa = phi ptr [ %.sroa.021.032.i88, %bb.z ], [ %.sroa.0.0.i127190, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRK21QCPStatisticalBoxDataS4_EEclIS2_N5QListIS2_E8iteratorEEEbRT_T0_.exit.i132._crit_edge.loopexit ] ; 4 uses
  store double %i.ek, ptr %.sroa.013.0.i126.lcssa, align 8
  %.sroa.6174.0..sroa.013.0.i126.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i126.lcssa, i64 8
  store <5 x double> %.sroa.6174.sroa.0.0.copyload, ptr %.sroa.6174.0..sroa.013.0.i126.sroa_idx, align 8
  %i.ga = getelementptr i8, ptr %.sroa.013.0.i126.lcssa, i64 48
  store <2 x ptr> %i.fl, ptr %i.ga, align 8
  %i.gb = getelementptr i8, ptr %.sroa.013.0.i126.lcssa, i64 64
  store i64 %i.fn, ptr %i.gb, align 8
  %.not.i.i.i.i.i2.i133 = icmp eq ptr %3, null
  br i1 %.not.i.i.i.i.i2.i133, label %_ZN21QCPStatisticalBoxDataD2Ev.exit.i96, label %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i3.i134

_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i3.i134: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRK21QCPStatisticalBoxDataS4_EEclIS2_N5QListIS2_E8iteratorEEEbRT_T0_.exit.i132._crit_edge
  %i.gc = atomicrmw add ptr %3, i32 -1 acq_rel, align 4
  %.not.i.i.i.i4.i135 = icmp eq i32 %i.gc, 1
  br i1 %.not.i.i.i.i4.i135, label %bb.ab, label %_ZN21QCPStatisticalBoxDataD2Ev.exit.i96

bb.ab:                                            ; preds = %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i3.i134
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %3, i64 noundef 8, i64 noundef 8) #49
  br label %_ZN21QCPStatisticalBoxDataD2Ev.exit.i96

_ZN21QCPStatisticalBoxDataD2Ev.exit.i96:          ; preds = %bb.ab, %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i3.i134, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRK21QCPStatisticalBoxDataS4_EEclIS2_N5QListIS2_E8iteratorEEEbRT_T0_.exit.i132._crit_edge, %_ZSt13move_backwardIN5QListI21QCPStatisticalBoxDataE8iteratorES3_ET0_T_S5_S4_.exit.i92, %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i.i94, %bb.y
  %.sroa.021.0.i90 = getelementptr i8, ptr %.sroa.021.032.i88, i64 72 ; 2 uses
  %.not.i91 = icmp eq ptr %.sroa.021.0.i90, %i.eh
  br i1 %.not.i91, label %_ZSt16__insertion_sortIN5QListI21QCPStatisticalBoxDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_T0_.exit106, label %bb.v, !llvm.loop !78

_ZSt16__insertion_sortIN5QListI21QCPStatisticalBoxDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_T0_.exit106: ; preds = %_ZN21QCPStatisticalBoxDataD2Ev.exit.i96
  %.not8.i.i.i.i = icmp eq ptr %i.eh, %i.dy
  br i1 %.not8.i.i.i.i, label %_ZSt4sortIN5QListI21QCPStatisticalBoxDataE8iteratorEPFbRKS1_S5_EEvT_S8_T0_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt16__insertion_sortIN5QListI21QCPStatisticalBoxDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_T0_.exit106, %_ZSt25__unguarded_linear_insertIN5QListI21QCPStatisticalBoxDataE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S8_EEEEvT_T0_.exit
  %.sroa.0.09.i.i.i.i = phi ptr [ %i.gw, %_ZSt25__unguarded_linear_insertIN5QListI21QCPStatisticalBoxDataE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S8_EEEEvT_T0_.exit ], [ %i.eh, %_ZSt16__insertion_sortIN5QListI21QCPStatisticalBoxDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_T0_.exit106 ] ; 8 uses
  %.sroa.0155.0.copyload = load double, ptr %.sroa.0.09.i.i.i.i, align 8 ; 3 uses
  %.sroa.6.0..sroa.0.09.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i.i.i, i64 8
  %.sroa.6.sroa.0.0.copyload = load <5 x double>, ptr %.sroa.6.0..sroa.0.09.i.i.i.i.sroa_idx, align 8
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i.i.i, i64 48 ; 2 uses
  %i.ge = load <2 x ptr>, ptr %i.gd, align 8
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i.i.i, i64 64
  %i.gg = load i64, ptr %i.gf, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gd, i8 0, i64 24, i1 false)
  %.sroa.0.0.i193 = getelementptr i8, ptr %.sroa.0.09.i.i.i.i, i64 -72 ; 2 uses
  %i.gh = load double, ptr %.sroa.0.0.i193, align 8
  %i.gi = fcmp olt double %.sroa.0155.0.copyload, %i.gh
  br i1 %i.gi, label %.lr.ph196, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRK21QCPStatisticalBoxDataS4_EEclIS2_N5QListIS2_E8iteratorEEEbRT_T0_.exit.i._crit_edge

.lr.ph196:                                        ; preds = %.lr.ph.i.i.i.i, %_ZN21QCPStatisticalBoxDataaSEOS_.exit.i
  %.sroa.0.0.i195 = phi ptr [ %.sroa.0.0.i, %_ZN21QCPStatisticalBoxDataaSEOS_.exit.i ], [ %.sroa.0.0.i193, %.lr.ph.i.i.i.i ] ; 5 uses
  %.sroa.013.0.i194 = phi ptr [ %.sroa.0.0.i195, %_ZN21QCPStatisticalBoxDataaSEOS_.exit.i ], [ %.sroa.0.09.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(48) dereferenceable_or_null(72) %.sroa.013.0.i194, ptr noundef align 8 dereferenceable(72) %.sroa.0.0.i195, i64 48, i1 false)
  %i.gj = getelementptr i8, ptr %.sroa.013.0.i194, i64 48 ; 2 uses
  %i.gk = getelementptr i8, ptr %.sroa.013.0.i194, i64 -24 ; 2 uses
  %i.gl = getelementptr i8, ptr %.sroa.013.0.i194, i64 -8
  %i.gm = load i64, ptr %i.gl, align 8
  %i.gn = load <2 x ptr>, ptr %i.gk, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gk, i8 0, i64 24, i1 false)
  %i.go = load ptr, ptr %i.gj, align 8            ; 3 uses
  store <2 x ptr> %i.gn, ptr %i.gj, align 8
  %i.gp = getelementptr i8, ptr %.sroa.013.0.i194, i64 64
  store i64 %i.gm, ptr %i.gp, align 8
  %.not.i.i.i.i.i.i80 = icmp eq ptr %i.go, null
  br i1 %.not.i.i.i.i.i.i80, label %_ZN21QCPStatisticalBoxDataaSEOS_.exit.i, label %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i.i81

_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i.i81: ; preds = %.lr.ph196
  %i.gq = atomicrmw add ptr %i.go, i32 -1 acq_rel, align 4
  %.not.i.i.i.i.i82 = icmp eq i32 %i.gq, 1
  br i1 %.not.i.i.i.i.i82, label %bb.ac, label %_ZN21QCPStatisticalBoxDataaSEOS_.exit.i

bb.ac:                                            ; preds = %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i.i81
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.go, i64 noundef 8, i64 noundef 8) #49
  br label %_ZN21QCPStatisticalBoxDataaSEOS_.exit.i

_ZN21QCPStatisticalBoxDataaSEOS_.exit.i:          ; preds = %bb.ac, %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i.i81, %.lr.ph196
  %.sroa.0.0.i = getelementptr i8, ptr %.sroa.0.0.i195, i64 -72 ; 2 uses
  %i.gr = load double, ptr %.sroa.0.0.i, align 8
  %i.gs = fcmp olt double %.sroa.0155.0.copyload, %i.gr
  br i1 %i.gs, label %.lr.ph196, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRK21QCPStatisticalBoxDataS4_EEclIS2_N5QListIS2_E8iteratorEEEbRT_T0_.exit.i._crit_edge.loopexit, !llvm.loop !77

_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRK21QCPStatisticalBoxDataS4_EEclIS2_N5QListIS2_E8iteratorEEEbRT_T0_.exit.i._crit_edge.loopexit: ; preds = %_ZN21QCPStatisticalBoxDataaSEOS_.exit.i
  %.phi.trans.insert205 = getelementptr i8, ptr %.sroa.0.0.i195, i64 48
  %.pre206 = load ptr, ptr %.phi.trans.insert205, align 8
  br label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRK21QCPStatisticalBoxDataS4_EEclIS2_N5QListIS2_E8iteratorEEEbRT_T0_.exit.i._crit_edge

_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRK21QCPStatisticalBoxDataS4_EEclIS2_N5QListIS2_E8iteratorEEEbRT_T0_.exit.i._crit_edge: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRK21QCPStatisticalBoxDataS4_EEclIS2_N5QListIS2_E8iteratorEEEbRT_T0_.exit.i._crit_edge.loopexit, %.lr.ph.i.i.i.i
  %4 = phi ptr [ null, %.lr.ph.i.i.i.i ], [ %.pre206, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRK21QCPStatisticalBoxDataS4_EEclIS2_N5QListIS2_E8iteratorEEEbRT_T0_.exit.i._crit_edge.loopexit ] ; 3 uses
  %.sroa.013.0.i.lcssa = phi ptr [ %.sroa.0.09.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.sroa.0.0.i195, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRK21QCPStatisticalBoxDataS4_EEclIS2_N5QListIS2_E8iteratorEEEbRT_T0_.exit.i._crit_edge.loopexit ] ; 4 uses
  store double %.sroa.0155.0.copyload, ptr %.sroa.013.0.i.lcssa, align 8
  %.sroa.6.0..sroa.013.0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.lcssa, i64 8
  store <5 x double> %.sroa.6.sroa.0.0.copyload, ptr %.sroa.6.0..sroa.013.0.i.sroa_idx, align 8
  %i.gt = getelementptr i8, ptr %.sroa.013.0.i.lcssa, i64 48
  store <2 x ptr> %i.ge, ptr %i.gt, align 8
  %i.gu = getelementptr i8, ptr %.sroa.013.0.i.lcssa, i64 64
  store i64 %i.gg, ptr %i.gu, align 8
  %.not.i.i.i.i.i2.i = icmp eq ptr %4, null
  br i1 %.not.i.i.i.i.i2.i, label %_ZSt25__unguarded_linear_insertIN5QListI21QCPStatisticalBoxDataE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S8_EEEEvT_T0_.exit, label %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i3.i

_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i3.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRK21QCPStatisticalBoxDataS4_EEclIS2_N5QListIS2_E8iteratorEEEbRT_T0_.exit.i._crit_edge
  %i.gv = atomicrmw add ptr %4, i32 -1 acq_rel, align 4
  %.not.i.i.i.i4.i = icmp eq i32 %i.gv, 1
  br i1 %.not.i.i.i.i4.i, label %bb.ad, label %_ZSt25__unguarded_linear_insertIN5QListI21QCPStatisticalBoxDataE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S8_EEEEvT_T0_.exit

bb.ad:                                            ; preds = %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i3.i
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %4, i64 noundef 8, i64 noundef 8) #49
  br label %_ZSt25__unguarded_linear_insertIN5QListI21QCPStatisticalBoxDataE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S8_EEEEvT_T0_.exit

_ZSt25__unguarded_linear_insertIN5QListI21QCPStatisticalBoxDataE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S8_EEEEvT_T0_.exit: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRK21QCPStatisticalBoxDataS4_EEclIS2_N5QListIS2_E8iteratorEEEbRT_T0_.exit.i._crit_edge, %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i3.i, %bb.ad
  %i.gw = getelementptr i8, ptr %.sroa.0.09.i.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i.i63 = icmp eq ptr %i.gw, %i.dy
  br i1 %.not.i.i.i.i63, label %_ZSt4sortIN5QListI21QCPStatisticalBoxDataE8iteratorEPFbRKS1_S5_EEvT_S8_T0_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !79

.preheader.i:                                     ; preds = %bb.t
  %.sroa.021.029.i = getelementptr i8, ptr %i.dv, i64 72 ; 2 uses
  %.not30.i = icmp eq ptr %.sroa.021.029.i, %i.dy
  br i1 %.not30.i, label %_ZSt4sortIN5QListI21QCPStatisticalBoxDataE8iteratorEPFbRKS1_S5_EEvT_S8_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.gx = getelementptr i8, ptr %i.dv, i64 48     ; 2 uses
  %i.gy = getelementptr i8, ptr %i.dv, i64 64
  br label %bb.ae

bb.ae:                                            ; preds = %_ZN21QCPStatisticalBoxDataD2Ev.exit.i, %.lr.ph.i
  %.sroa.021.032.i = phi ptr [ %.sroa.021.029.i, %.lr.ph.i ], [ %.sroa.021.0.i, %_ZN21QCPStatisticalBoxDataD2Ev.exit.i ] ; 12 uses
  %.pn31.i = phi ptr [ %i.dv, %.lr.ph.i ], [ %.sroa.021.032.i, %_ZN21QCPStatisticalBoxDataD2Ev.exit.i ] ; 3 uses
  %i.gz = load double, ptr %.sroa.021.032.i, align 8 ; 4 uses
  %i.ha = load double, ptr %i.dv, align 8
  %i.hb = fcmp olt double %i.gz, %i.ha
  br i1 %i.hb, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %.sroa.0.i.sroa.0.0.copyload = load <6 x double>, ptr %.sroa.021.032.i, align 8
  %i.hc = getelementptr i8, ptr %.pn31.i, i64 120 ; 2 uses
  %i.hd = load <2 x ptr>, ptr %i.hc, align 8
  %i.he = getelementptr i8, ptr %.pn31.i, i64 136
  %i.hf = load i64, ptr %i.he, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hc, i8 0, i64 24, i1 false)
  %i.hg = ptrtoint ptr %.sroa.021.032.i to i64
  %i.hh = sub i64 %i.hg, %i.ea                    ; 2 uses
  %i.hi = icmp sgt i64 %i.hh, 0
  br i1 %i.hi, label %.lr.ph.preheader.i.i.i.i.i.i, label %_ZSt13move_backwardIN5QListI21QCPStatisticalBoxDataE8iteratorES3_ET0_T_S5_S4_.exit.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.af
  %i.hj = getelementptr i8, ptr %.pn31.i, i64 144
  %i.hk = udiv exact i64 %i.hh, 72
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZN21QCPStatisticalBoxDataaSEOS_.exit.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i
  %.010.i.i.i.i.i.i = phi i64 [ %i.hv, %_ZN21QCPStatisticalBoxDataaSEOS_.exit.i.i.i.i.i.i ], [ %i.hk, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.09.i.i.i.i.i.i = phi ptr [ %i.hm, %_ZN21QCPStatisticalBoxDataaSEOS_.exit.i.i.i.i.i.i ], [ %i.hj, %.lr.ph.preheader.i.i.i.i.i.i ] ; 3 uses
  %.sroa.05.08.i.i.i.i.i.i = phi ptr [ %i.hl, %_ZN21QCPStatisticalBoxDataaSEOS_.exit.i.i.i.i.i.i ], [ %.sroa.021.032.i, %.lr.ph.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.hl = getelementptr i8, ptr %.sroa.05.08.i.i.i.i.i.i, i64 -72 ; 2 uses
  %i.hm = getelementptr i8, ptr %.sroa.0.09.i.i.i.i.i.i, i64 -72 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(48) dereferenceable_or_null(72) %i.hm, ptr noundef align 8 dereferenceable(72) %i.hl, i64 48, i1 false)
  %i.hn = getelementptr i8, ptr %.sroa.0.09.i.i.i.i.i.i, i64 -24 ; 2 uses
  %i.ho = getelementptr i8, ptr %.sroa.05.08.i.i.i.i.i.i, i64 -24 ; 2 uses
  %i.hp = getelementptr i8, ptr %.sroa.05.08.i.i.i.i.i.i, i64 -8
  %i.hq = load i64, ptr %i.hp, align 8
  %i.hr = load <2 x ptr>, ptr %i.ho, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ho, i8 0, i64 24, i1 false)
  %i.hs = load ptr, ptr %i.hn, align 8            ; 3 uses
  store <2 x ptr> %i.hr, ptr %i.hn, align 8
  %i.ht = getelementptr i8, ptr %.sroa.0.09.i.i.i.i.i.i, i64 -8
  store i64 %i.hq, ptr %i.ht, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.hs, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN21QCPStatisticalBoxDataaSEOS_.exit.i.i.i.i.i.i, label %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i.i.i.i.i.i.i

_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.hu = atomicrmw add ptr %i.hs, i32 -1 acq_rel, align 4
  %.not.i.i.i.i.i.i.i.i.i.i77 = icmp eq i32 %i.hu, 1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i77, label %bb.ag, label %_ZN21QCPStatisticalBoxDataaSEOS_.exit.i.i.i.i.i.i

bb.ag:                                            ; preds = %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.hs, i64 noundef 8, i64 noundef 8) #49
  br label %_ZN21QCPStatisticalBoxDataaSEOS_.exit.i.i.i.i.i.i

_ZN21QCPStatisticalBoxDataaSEOS_.exit.i.i.i.i.i.i: ; preds = %bb.ag, %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.hv = add nsw i64 %.010.i.i.i.i.i.i, -1
  %i.hw = icmp sgt i64 %.010.i.i.i.i.i.i, 1
  br i1 %i.hw, label %.lr.ph.i.i.i.i.i.i, label %_ZSt13move_backwardIN5QListI21QCPStatisticalBoxDataE8iteratorES3_ET0_T_S5_S4_.exit.i, !llvm.loop !76

_ZSt13move_backwardIN5QListI21QCPStatisticalBoxDataE8iteratorES3_ET0_T_S5_S4_.exit.i: ; preds = %_ZN21QCPStatisticalBoxDataaSEOS_.exit.i.i.i.i.i.i, %bb.af
  store <6 x double> %.sroa.0.i.sroa.0.0.copyload, ptr %i.dv, align 8
  %i.hx = load ptr, ptr %i.gx, align 8            ; 3 uses
  store <2 x ptr> %i.hd, ptr %i.gx, align 8
  store i64 %i.hf, ptr %i.gy, align 8
  %.not.i.i.i.i.i.i = icmp eq ptr %i.hx, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN21QCPStatisticalBoxDataD2Ev.exit.i, label %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i.i

_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i.i: ; preds = %_ZSt13move_backwardIN5QListI21QCPStatisticalBoxDataE8iteratorES3_ET0_T_S5_S4_.exit.i
  %i.hy = atomicrmw add ptr %i.hx, i32 -1 acq_rel, align 4
  %.not.i.i.i.i.i76 = icmp eq i32 %i.hy, 1
  br i1 %.not.i.i.i.i.i76, label %bb.ah, label %_ZN21QCPStatisticalBoxDataD2Ev.exit.i

bb.ah:                                            ; preds = %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i.i
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.hx, i64 noundef 8, i64 noundef 8) #49
  br label %_ZN21QCPStatisticalBoxDataD2Ev.exit.i

bb.ai:                                            ; preds = %bb.ae
  %.sroa.6164.0..sroa.021.032.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.021.032.i, i64 8
  %.sroa.6164.sroa.0.0.copyload = load <5 x double>, ptr %.sroa.6164.0..sroa.021.032.i.sroa_idx, align 8
  %i.hz = getelementptr inbounds nuw i8, ptr %.sroa.021.032.i, i64 48 ; 2 uses
  %i.ia = load <2 x ptr>, ptr %i.hz, align 8
  %i.ib = getelementptr inbounds nuw i8, ptr %.sroa.021.032.i, i64 64
  %i.ic = load i64, ptr %i.ib, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hz, i8 0, i64 24, i1 false)
  %.sroa.0.0.i108185 = getelementptr i8, ptr %.sroa.021.032.i, i64 -72 ; 2 uses
  %i.id = load double, ptr %.sroa.0.0.i108185, align 8
  %i.ie = fcmp olt double %i.gz, %i.id
  br i1 %i.ie, label %.lr.ph, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRK21QCPStatisticalBoxDataS4_EEclIS2_N5QListIS2_E8iteratorEEEbRT_T0_.exit.i113._crit_edge

.lr.ph:                                           ; preds = %bb.ai, %_ZN21QCPStatisticalBoxDataaSEOS_.exit.i124
  %.sroa.0.0.i108187 = phi ptr [ %.sroa.0.0.i108, %_ZN21QCPStatisticalBoxDataaSEOS_.exit.i124 ], [ %.sroa.0.0.i108185, %bb.ai ] ; 5 uses
  %.sroa.013.0.i107186 = phi ptr [ %.sroa.0.0.i108187, %_ZN21QCPStatisticalBoxDataaSEOS_.exit.i124 ], [ %.sroa.021.032.i, %bb.ai ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(48) dereferenceable_or_null(72) %.sroa.013.0.i107186, ptr noundef align 8 dereferenceable(72) %.sroa.0.0.i108187, i64 48, i1 false)
  %i.if = getelementptr i8, ptr %.sroa.013.0.i107186, i64 48 ; 2 uses
  %i.ig = getelementptr i8, ptr %.sroa.013.0.i107186, i64 -24 ; 2 uses
  %i.ih = getelementptr i8, ptr %.sroa.013.0.i107186, i64 -8
  %i.ii = load i64, ptr %i.ih, align 8
  %i.ij = load <2 x ptr>, ptr %i.ig, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ig, i8 0, i64 24, i1 false)
  %i.ik = load ptr, ptr %i.if, align 8            ; 3 uses
  store <2 x ptr> %i.ij, ptr %i.if, align 8
  %i.il = getelementptr i8, ptr %.sroa.013.0.i107186, i64 64
  store i64 %i.ii, ptr %i.il, align 8
  %.not.i.i.i.i.i.i121 = icmp eq ptr %i.ik, null
  br i1 %.not.i.i.i.i.i.i121, label %_ZN21QCPStatisticalBoxDataaSEOS_.exit.i124, label %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i.i122

_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i.i122: ; preds = %.lr.ph
  %i.im = atomicrmw add ptr %i.ik, i32 -1 acq_rel, align 4
  %.not.i.i.i.i.i123 = icmp eq i32 %i.im, 1
  br i1 %.not.i.i.i.i.i123, label %bb.aj, label %_ZN21QCPStatisticalBoxDataaSEOS_.exit.i124

bb.aj:                                            ; preds = %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i.i122
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.ik, i64 noundef 8, i64 noundef 8) #49
  br label %_ZN21QCPStatisticalBoxDataaSEOS_.exit.i124

_ZN21QCPStatisticalBoxDataaSEOS_.exit.i124:       ; preds = %bb.aj, %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i.i122, %.lr.ph
  %.sroa.0.0.i108 = getelementptr i8, ptr %.sroa.0.0.i108187, i64 -72 ; 2 uses
  %i.in = load double, ptr %.sroa.0.0.i108, align 8
  %i.io = fcmp olt double %i.gz, %i.in
  br i1 %i.io, label %.lr.ph, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRK21QCPStatisticalBoxDataS4_EEclIS2_N5QListIS2_E8iteratorEEEbRT_T0_.exit.i113._crit_edge.loopexit, !llvm.loop !77

_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRK21QCPStatisticalBoxDataS4_EEclIS2_N5QListIS2_E8iteratorEEEbRT_T0_.exit.i113._crit_edge.loopexit: ; preds = %_ZN21QCPStatisticalBoxDataaSEOS_.exit.i124
  %.phi.trans.insert = getelementptr i8, ptr %.sroa.0.0.i108187, i64 48
  %.pre202 = load ptr, ptr %.phi.trans.insert, align 8
  br label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRK21QCPStatisticalBoxDataS4_EEclIS2_N5QListIS2_E8iteratorEEEbRT_T0_.exit.i113._crit_edge

_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRK21QCPStatisticalBoxDataS4_EEclIS2_N5QListIS2_E8iteratorEEEbRT_T0_.exit.i113._crit_edge: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRK21QCPStatisticalBoxDataS4_EEclIS2_N5QListIS2_E8iteratorEEEbRT_T0_.exit.i113._crit_edge.loopexit, %bb.ai
  %5 = phi ptr [ null, %bb.ai ], [ %.pre202, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRK21QCPStatisticalBoxDataS4_EEclIS2_N5QListIS2_E8iteratorEEEbRT_T0_.exit.i113._crit_edge.loopexit ] ; 3 uses
  %.sroa.013.0.i107.lcssa = phi ptr [ %.sroa.021.032.i, %bb.ai ], [ %.sroa.0.0.i108187, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRK21QCPStatisticalBoxDataS4_EEclIS2_N5QListIS2_E8iteratorEEEbRT_T0_.exit.i113._crit_edge.loopexit ] ; 4 uses
  store double %i.gz, ptr %.sroa.013.0.i107.lcssa, align 8
  %.sroa.6164.0..sroa.013.0.i107.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i107.lcssa, i64 8
  store <5 x double> %.sroa.6164.sroa.0.0.copyload, ptr %.sroa.6164.0..sroa.013.0.i107.sroa_idx, align 8
  %i.ip = getelementptr i8, ptr %.sroa.013.0.i107.lcssa, i64 48
  store <2 x ptr> %i.ia, ptr %i.ip, align 8
  %i.iq = getelementptr i8, ptr %.sroa.013.0.i107.lcssa, i64 64
  store i64 %i.ic, ptr %i.iq, align 8
  %.not.i.i.i.i.i2.i114 = icmp eq ptr %5, null
  br i1 %.not.i.i.i.i.i2.i114, label %_ZN21QCPStatisticalBoxDataD2Ev.exit.i, label %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i3.i115

_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i3.i115: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRK21QCPStatisticalBoxDataS4_EEclIS2_N5QListIS2_E8iteratorEEEbRT_T0_.exit.i113._crit_edge
  %i.ir = atomicrmw add ptr %5, i32 -1 acq_rel, align 4
  %.not.i.i.i.i4.i116 = icmp eq i32 %i.ir, 1
  br i1 %.not.i.i.i.i4.i116, label %bb.ak, label %_ZN21QCPStatisticalBoxDataD2Ev.exit.i

bb.ak:                                            ; preds = %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i3.i115
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %5, i64 noundef 8, i64 noundef 8) #49
  br label %_ZN21QCPStatisticalBoxDataD2Ev.exit.i

_ZN21QCPStatisticalBoxDataD2Ev.exit.i:            ; preds = %bb.ak, %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i3.i115, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRK21QCPStatisticalBoxDataS4_EEclIS2_N5QListIS2_E8iteratorEEEbRT_T0_.exit.i113._crit_edge, %_ZSt13move_backwardIN5QListI21QCPStatisticalBoxDataE8iteratorES3_ET0_T_S5_S4_.exit.i, %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i.i, %bb.ah
  %.sroa.021.0.i = getelementptr i8, ptr %.sroa.021.032.i, i64 72 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.021.0.i, %i.dy
  br i1 %.not.i, label %_ZSt4sortIN5QListI21QCPStatisticalBoxDataE8iteratorEPFbRKS1_S5_EEvT_S8_T0_.exit, label %bb.ae, !llvm.loop !78

_ZSt4sortIN5QListI21QCPStatisticalBoxDataE8iteratorEPFbRKS1_S5_EEvT_S8_T0_.exit: ; preds = %_ZN21QCPStatisticalBoxDataD2Ev.exit.i, %_ZSt25__unguarded_linear_insertIN5QListI21QCPStatisticalBoxDataE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S8_EEEEvT_T0_.exit, %_ZSt16__insertion_sortIN5QListI21QCPStatisticalBoxDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_T0_.exit106, %_ZN16QCPDataContainerI21QCPStatisticalBoxDataE3endEv.exit61, %.preheader.i, %_ZSt4copyIN5QListI21QCPStatisticalBoxDataE14const_iteratorENS2_8iteratorEET0_T_S6_S5_.exit53
  br i1 %i.ab, label %bb.al, label %_ZN16QCPDataContainerI21QCPStatisticalBoxDataE3setERK5QListIS0_Eb.exit

bb.al:                                            ; preds = %_ZSt4sortIN5QListI21QCPStatisticalBoxDataE8iteratorEPFbRKS1_S5_EEvT_S8_T0_.exit
  %i.is = load ptr, ptr %i.ch, align 8            ; 3 uses
  %i.it = load i64, ptr %i.d, align 8
  %i.iu = getelementptr [72 x i8], ptr %i.is, i64 %i.it
  %i.iv = getelementptr [72 x i8], ptr %i.iu, i64 %i.ci ; 2 uses
  %i.iw = getelementptr i8, ptr %i.iv, i64 -72
  %i.ix = load double, ptr %i.iw, align 8
  %i.iy = load double, ptr %i.iv, align 8
  %i.iz = fcmp olt double %i.ix, %i.iy
  br i1 %i.iz, label %_ZN16QCPDataContainerI21QCPStatisticalBoxDataE3setERK5QListIS0_Eb.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ja = load ptr, ptr %i.bq, align 8            ; 3 uses
  %.not.i.i.i.i.i64 = icmp eq ptr %i.ja, null
  br i1 %.not.i.i.i.i.i64, label %_ZN16QCPDataContainerI21QCPStatisticalBoxDataE5beginEv.exit67, label %_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE11needsDetachEv.exit.i.i.i.i65

_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE11needsDetachEv.exit.i.i.i.i65: ; preds = %bb.am
  %i.jb = load atomic i32, ptr %i.ja monotonic, align 4
  %i.jc = icmp sgt i32 %i.jb, 1
  br i1 %i.jc, label %_ZN16QCPDataContainerI21QCPStatisticalBoxDataE5beginEv.exit67, label %_ZN16QCPDataContainerI21QCPStatisticalBoxDataE5beginEv.exit67.thread

_ZN16QCPDataContainerI21QCPStatisticalBoxDataE5beginEv.exit67.thread: ; preds = %_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE11needsDetachEv.exit.i.i.i.i65
  %i.jd = load i32, ptr %i.f, align 8
  %i.je = sext i32 %i.jd to i64
  %i.jf = getelementptr [72 x i8], ptr %i.is, i64 %i.je
  br label %_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE11needsDetachEv.exit.i.i.i.i69

_ZN16QCPDataContainerI21QCPStatisticalBoxDataE5beginEv.exit67: ; preds = %bb.am, %_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE11needsDetachEv.exit.i.i.i.i65
  tail call void @_ZN17QArrayDataPointerI21QCPStatisticalBoxDataE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %i.bq, i32 noundef 0, i64 noundef 0, ptr noundef null)
  %.pre207.a = load ptr, ptr %i.ch, align 8       ; 2 uses
  %.pre208 = load ptr, ptr %i.bq, align 8         ; 2 uses
  %i.jg = load i32, ptr %i.f, align 8
  %i.jh = sext i32 %i.jg to i64
  %i.ji = getelementptr [72 x i8], ptr %.pre207.a, i64 %i.jh ; 2 uses
  %.not.i.i.i.i.i68 = icmp eq ptr %.pre208, null
  br i1 %.not.i.i.i.i.i68, label %_ZN16QCPDataContainerI21QCPStatisticalBoxDataE3endEv.exit71, label %_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE11needsDetachEv.exit.i.i.i.i69

_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE11needsDetachEv.exit.i.i.i.i69: ; preds = %_ZN16QCPDataContainerI21QCPStatisticalBoxDataE5beginEv.exit67.thread, %_ZN16QCPDataContainerI21QCPStatisticalBoxDataE5beginEv.exit67
  %i.jj = phi ptr [ %i.jf, %_ZN16QCPDataContainerI21QCPStatisticalBoxDataE5beginEv.exit67.thread ], [ %i.ji, %_ZN16QCPDataContainerI21QCPStatisticalBoxDataE5beginEv.exit67 ] ; 2 uses
  %i.jk = phi ptr [ %i.is, %_ZN16QCPDataContainerI21QCPStatisticalBoxDataE5beginEv.exit67.thread ], [ %.pre207.a, %_ZN16QCPDataContainerI21QCPStatisticalBoxDataE5beginEv.exit67 ] ; 2 uses
  %i.jl = phi ptr [ %i.ja, %_ZN16QCPDataContainerI21QCPStatisticalBoxDataE5beginEv.exit67.thread ], [ %.pre208, %_ZN16QCPDataContainerI21QCPStatisticalBoxDataE5beginEv.exit67 ] ; 2 uses
  %i.jm = load atomic i32, ptr %i.jl monotonic, align 4
  %i.jn = icmp sgt i32 %i.jm, 1
  br i1 %i.jn, label %_ZN16QCPDataContainerI21QCPStatisticalBoxDataE3endEv.exit71, label %_ZN16QCPDataContainerI21QCPStatisticalBoxDataE3endEv.exit71.thread

_ZN16QCPDataContainerI21QCPStatisticalBoxDataE3endEv.exit71.thread: ; preds = %_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE11needsDetachEv.exit.i.i.i.i69
  %i.jo = load i64, ptr %i.d, align 8             ; 2 uses
  %i.jp = getelementptr [72 x i8], ptr %i.jk, i64 %i.jo
  %i.jq = getelementptr [72 x i8], ptr %i.jp, i64 %i.ci
  br label %_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE11needsDetachEv.exit.i.i.i.i73

_ZN16QCPDataContainerI21QCPStatisticalBoxDataE3endEv.exit71: ; preds = %_ZN16QCPDataContainerI21QCPStatisticalBoxDataE5beginEv.exit67, %_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE11needsDetachEv.exit.i.i.i.i69
  %i.jr = phi ptr [ %i.jj, %_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE11needsDetachEv.exit.i.i.i.i69 ], [ %i.ji, %_ZN16QCPDataContainerI21QCPStatisticalBoxDataE5beginEv.exit67 ] ; 2 uses
  tail call void @_ZN17QArrayDataPointerI21QCPStatisticalBoxDataE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %i.bq, i32 noundef 0, i64 noundef 0, ptr noundef null)
  %.pre209 = load ptr, ptr %i.ch, align 8         ; 2 uses
  %.pre210 = load ptr, ptr %i.bq, align 8         ; 2 uses
  %i.js = load i64, ptr %i.d, align 8             ; 2 uses
  %i.jt = getelementptr [72 x i8], ptr %.pre209, i64 %i.js
  %i.ju = getelementptr [72 x i8], ptr %i.jt, i64 %i.ci ; 2 uses
  %.not.i.i.i.i.i72 = icmp eq ptr %.pre210, null
  br i1 %.not.i.i.i.i.i72, label %_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE11needsDetachEv.exit.thread.i.i.i.i74, label %_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE11needsDetachEv.exit.i.i.i.i73

_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE11needsDetachEv.exit.i.i.i.i73: ; preds = %_ZN16QCPDataContainerI21QCPStatisticalBoxDataE3endEv.exit71.thread, %_ZN16QCPDataContainerI21QCPStatisticalBoxDataE3endEv.exit71
  %i.jv = phi ptr [ %i.jq, %_ZN16QCPDataContainerI21QCPStatisticalBoxDataE3endEv.exit71.thread ], [ %i.ju, %_ZN16QCPDataContainerI21QCPStatisticalBoxDataE3endEv.exit71 ] ; 2 uses
  %i.jw = phi i64 [ %i.jo, %_ZN16QCPDataContainerI21QCPStatisticalBoxDataE3endEv.exit71.thread ], [ %i.js, %_ZN16QCPDataContainerI21QCPStatisticalBoxDataE3endEv.exit71 ]
  %i.jx = phi ptr [ %i.jk, %_ZN16QCPDataContainerI21QCPStatisticalBoxDataE3endEv.exit71.thread ], [ %.pre209, %_ZN16QCPDataContainerI21QCPStatisticalBoxDataE3endEv.exit71 ]
  %i.jy = phi ptr [ %i.jl, %_ZN16QCPDataContainerI21QCPStatisticalBoxDataE3endEv.exit71.thread ], [ %.pre210, %_ZN16QCPDataContainerI21QCPStatisticalBoxDataE3endEv.exit71 ]
  %i.jz = phi ptr [ %i.jj, %_ZN16QCPDataContainerI21QCPStatisticalBoxDataE3endEv.exit71.thread ], [ %i.jr, %_ZN16QCPDataContainerI21QCPStatisticalBoxDataE3endEv.exit71 ] ; 2 uses
  %i.ka = load atomic i32, ptr %i.jy monotonic, align 4
  %i.kb = icmp sgt i32 %i.ka, 1
  br i1 %i.kb, label %_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE11needsDetachEv.exit.thread.i.i.i.i74, label %_ZN16QCPDataContainerI21QCPStatisticalBoxDataE3endEv.exit75

_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE11needsDetachEv.exit.thread.i.i.i.i74: ; preds = %_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE11needsDetachEv.exit.i.i.i.i73, %_ZN16QCPDataContainerI21QCPStatisticalBoxDataE3endEv.exit71
  %i.kc = phi ptr [ %i.jv, %_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE11needsDetachEv.exit.i.i.i.i73 ], [ %i.ju, %_ZN16QCPDataContainerI21QCPStatisticalBoxDataE3endEv.exit71 ]
  %i.kd = phi ptr [ %i.jz, %_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE11needsDetachEv.exit.i.i.i.i73 ], [ %i.jr, %_ZN16QCPDataContainerI21QCPStatisticalBoxDataE3endEv.exit71 ]
  tail call void @_ZN17QArrayDataPointerI21QCPStatisticalBoxDataE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %i.bq, i32 noundef 0, i64 noundef 0, ptr noundef null)
  %.pre211 = load ptr, ptr %i.ch, align 8
  %.pre212 = load i64, ptr %i.d, align 8
  br label %_ZN16QCPDataContainerI21QCPStatisticalBoxDataE3endEv.exit75

_ZN16QCPDataContainerI21QCPStatisticalBoxDataE3endEv.exit75: ; preds = %_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE11needsDetachEv.exit.i.i.i.i73, %_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE11needsDetachEv.exit.thread.i.i.i.i74
  %i.ke = phi ptr [ %i.jv, %_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE11needsDetachEv.exit.i.i.i.i73 ], [ %i.kc, %_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE11needsDetachEv.exit.thread.i.i.i.i74 ]
  %i.kf = phi ptr [ %i.jz, %_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE11needsDetachEv.exit.i.i.i.i73 ], [ %i.kd, %_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE11needsDetachEv.exit.thread.i.i.i.i74 ]
  %i.kg = phi i64 [ %i.jw, %_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE11needsDetachEv.exit.i.i.i.i73 ], [ %.pre212, %_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE11needsDetachEv.exit.thread.i.i.i.i74 ]
  %i.kh = phi ptr [ %i.jx, %_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE11needsDetachEv.exit.i.i.i.i73 ], [ %.pre211, %_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE11needsDetachEv.exit.thread.i.i.i.i74 ]
  %i.ki = getelementptr [72 x i8], ptr %i.kh, i64 %i.kg
  tail call void @_ZSt15__inplace_mergeIN5QListI21QCPStatisticalBoxDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_SC_T0_(ptr %i.kf, ptr %i.ke, ptr %i.ki, ptr @_Z18qcpLessThanSortKeyI21QCPStatisticalBoxDataEbRKT_S3_)
  br label %_ZN16QCPDataContainerI21QCPStatisticalBoxDataE3setERK5QListIS0_Eb.exit

_ZN16QCPDataContainerI21QCPStatisticalBoxDataE3setERK5QListIS0_Eb.exit: ; preds = %_ZN21QCPStatisticalBoxDataaSERKS_.exit.i.i.i.i.i, %_ZSt4sortIN5QListI21QCPStatisticalBoxDataE8iteratorEPFbRKS1_S5_EEvT_S8_T0_.exit, %_ZN16QCPDataContainerI21QCPStatisticalBoxDataE5beginEv.exit, %bb.g, %_ZN5QListI21QCPStatisticalBoxDataEaSERKS1_.exit.i, %_ZN16QCPDataContainerI21QCPStatisticalBoxDataE3endEv.exit75, %bb.al, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN5QListI21QCPStatisticalBoxDataED2Ev(ptr noundef align 8 dead_on_return(24) dereferenceable_or_null(24) %0) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZN17QArrayDataPointerI21QCPStatisticalBoxDataED2Ev.exit, label %_ZN17QArrayDataPointerI21QCPStatisticalBoxDataE5derefEv.exit.i

_ZN17QArrayDataPointerI21QCPStatisticalBoxDataE5derefEv.exit.i: ; preds = %bb.a
  %i.b = atomicrmw add ptr %i.a, i32 -1 acq_rel, align 4
  %.not.i = icmp eq i32 %i.b, 1
  br i1 %.not.i, label %bb.b, label %_ZN17QArrayDataPointerI21QCPStatisticalBoxDataED2Ev.exit

bb.b:                                             ; preds = %_ZN17QArrayDataPointerI21QCPStatisticalBoxDataE5derefEv.exit.i
  %i.c = getelementptr i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8
  %.idx.i.i = mul i64 %i.f, 72                    ; 2 uses
  %i.g = getelementptr i8, ptr %i.d, i64 %.idx.i.i
  %.not4.i.i.i.i.i = icmp eq i64 %.idx.i.i, 0
  br i1 %.not4.i.i.i.i.i, label %_ZN9QtPrivate16QGenericArrayOpsI21QCPStatisticalBoxDataE10destroyAllEv.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %_ZSt8_DestroyI21QCPStatisticalBoxDataEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.l, %_ZSt8_DestroyI21QCPStatisticalBoxDataEvPT_.exit.i.i.i.i.i ], [ %i.d, %bb.b ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 48 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyI21QCPStatisticalBoxDataEvPT_.exit.i.i.i.i.i, label %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i.i.i.i.i.i

_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.j = atomicrmw add ptr %i.i, i32 -1 acq_rel, align 4
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.j, 1
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.c, label %_ZSt8_DestroyI21QCPStatisticalBoxDataEvPT_.exit.i.i.i.i.i

bb.c:                                             ; preds = %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i.i.i.i.i.i
  %i.k = load ptr, ptr %i.h, align 8
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.k, i64 noundef 8, i64 noundef 8) #49
  br label %_ZSt8_DestroyI21QCPStatisticalBoxDataEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyI21QCPStatisticalBoxDataEvPT_.exit.i.i.i.i.i: ; preds = %bb.c, %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.l = getelementptr i8, ptr %.05.i.i.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.l, %i.g
  br i1 %.not.i.i.i.i.i, label %_ZN9QtPrivate16QGenericArrayOpsI21QCPStatisticalBoxDataE10destroyAllEv.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !75

_ZN9QtPrivate16QGenericArrayOpsI21QCPStatisticalBoxDataE10destroyAllEv.exit.i: ; preds = %_ZSt8_DestroyI21QCPStatisticalBoxDataEvPT_.exit.i.i.i.i.i, %bb.b
  %i.m = load ptr, ptr %0, align 8
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.m, i64 noundef 72, i64 noundef 8) #49
  br label %_ZN17QArrayDataPointerI21QCPStatisticalBoxDataED2Ev.exit

_ZN17QArrayDataPointerI21QCPStatisticalBoxDataED2Ev.exit: ; preds = %bb.a, %_ZN17QArrayDataPointerI21QCPStatisticalBoxDataE5derefEv.exit.i, %_ZN9QtPrivate16QGenericArrayOpsI21QCPStatisticalBoxDataE10destroyAllEv.exit.i
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN17QCPStatisticalBox7addDataEddddddRK5QListIdE(ptr nofree noundef readonly align 8 captures(none) dereferenceable_or_null(328) %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6, ptr noundef align 8 dereferenceable(24) %7) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %class.QCPStatisticalBoxData, align 8 ; 7 uses
  %i.a = getelementptr i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #49
  call void @_ZN21QCPStatisticalBoxDataC1EddddddRK5QListIdE(ptr noundef nonnull align 8 dereferenceable_or_null(72) %8, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6, ptr noundef align 8 dereferenceable(24) %7)
  invoke void @_ZN16QCPDataContainerI21QCPStatisticalBoxDataE3addERKS0_(ptr noundef align 8 dereferenceable_or_null(40) %i.b, ptr noundef nonnull align 8 dereferenceable(72) %8)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZN21QCPStatisticalBoxDataD2Ev.exit, label %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i

_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i:     ; preds = %bb.b
  %i.e = atomicrmw add ptr %i.d, i32 -1 acq_rel, align 4
  %.not.i.i.i = icmp eq i32 %i.e, 1
  br i1 %.not.i.i.i, label %bb.c, label %_ZN21QCPStatisticalBoxDataD2Ev.exit

bb.c:                                             ; preds = %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i
  %i.f = load ptr, ptr %i.c, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.f, i64 noundef 8, i64 noundef 8) #49
  br label %_ZN21QCPStatisticalBoxDataD2Ev.exit

_ZN21QCPStatisticalBoxDataD2Ev.exit:              ; preds = %bb.b, %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #49
  ret void

end_hunk_0
begin_hunk_1_@_ZN16QCPDataContainerI21QCPStatisticalBoxDataE15preallocateGrowEi:bb.a
  br label %_ZN17QArrayDataPointerIdEC2ERKS0_.exit.i.i.i.i.i.i.i.i

_ZN17QArrayDataPointerIdEC2ERKS0_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i
  %i.cf = load ptr, ptr %i.by, align 8            ; 3 uses
  store <2 x ptr> %i.ca, ptr %i.by, align 8
  %i.cg = getelementptr i8, ptr %.sroa.0.09.i.i.i.i.i, i64 -8
  store i64 %i.cd, ptr %i.cg, align 8
  %.not.i.i2.i.i.i.i.i.i.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i2.i.i.i.i.i.i.i.i, label %_ZN21QCPStatisticalBoxDataaSERKS_.exit.i.i.i.i.i, label %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i.i.i.i.i.i

_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZN17QArrayDataPointerIdEC2ERKS0_.exit.i.i.i.i.i.i.i.i
  %i.ch = atomicrmw add ptr %i.cf, i32 -1 acq_rel, align 4
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ch, 1
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.f, label %_ZN21QCPStatisticalBoxDataaSERKS_.exit.i.i.i.i.i

bb.f:                                             ; preds = %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i.i.i.i.i.i
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.cf, i64 noundef 8, i64 noundef 8) #49
  br label %_ZN21QCPStatisticalBoxDataaSERKS_.exit.i.i.i.i.i

_ZN21QCPStatisticalBoxDataaSERKS_.exit.i.i.i.i.i: ; preds = %bb.f, %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i.i.i.i.i.i, %_ZN17QArrayDataPointerIdEC2ERKS0_.exit.i.i.i.i.i.i.i.i
  %i.ci = add nsw i64 %.010.i.i.i.i.i, -1
  %i.cj = icmp sgt i64 %.010.i.i.i.i.i, 1
  br i1 %i.cj, label %.lr.ph.i.i.i.i.i, label %_ZSt13copy_backwardIN5QListI21QCPStatisticalBoxDataE8iteratorES3_ET0_T_S5_S4_.exit, !llvm.loop !2003

_ZSt13copy_backwardIN5QListI21QCPStatisticalBoxDataE8iteratorES3_ET0_T_S5_S4_.exit: ; preds = %_ZN21QCPStatisticalBoxDataaSERKS_.exit.i.i.i.i.i, %_ZN5QListI21QCPStatisticalBoxDataE3endEv.exit16
  store i32 %i.j, ptr %i.a, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZSt13copy_backwardIN5QListI21QCPStatisticalBoxDataE8iteratorES3_ET0_T_S5_S4_.exit
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN16QCPDataContainerI21QCPStatisticalBoxDataE4sortEv(ptr noundef align 8 dereferenceable_or_null(40) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZN16QCPDataContainerI21QCPStatisticalBoxDataE5beginEv.exit, label %_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE11needsDetachEv.exit.i.i.i.i

_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE11needsDetachEv.exit.i.i.i.i: ; preds = %bb.a
  %i.c = load atomic i32, ptr %i.b monotonic, align 4
  %i.d = icmp sgt i32 %i.c, 1
  br i1 %i.d, label %_ZN16QCPDataContainerI21QCPStatisticalBoxDataE5beginEv.exit, label %_ZN16QCPDataContainerI21QCPStatisticalBoxDataE5beginEv.exit.thread

_ZN16QCPDataContainerI21QCPStatisticalBoxDataE5beginEv.exit.thread: ; preds = %_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE11needsDetachEv.exit.i.i.i.i
  %i.e = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 32
  %i.h = load i32, ptr %i.g, align 8
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr [72 x i8], ptr %i.f, i64 %i.i
  br label %_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE11needsDetachEv.exit.i.i.i.i3

_ZN16QCPDataContainerI21QCPStatisticalBoxDataE5beginEv.exit: ; preds = %bb.a, %_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE11needsDetachEv.exit.i.i.i.i
  tail call void @_ZN17QArrayDataPointerI21QCPStatisticalBoxDataE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %i.a, i32 noundef 0, i64 noundef 0, ptr noundef null)
  %.pre = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.k = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr i8, ptr %0, i64 32
  %i.n = load i32, ptr %i.m, align 8
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr [72 x i8], ptr %i.l, i64 %i.o ; 2 uses
  %.not.i.i.i.i.i2 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i.i.i2, label %_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE11needsDetachEv.exit.thread.i.i.i.i4, label %_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE11needsDetachEv.exit.i.i.i.i3

_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE11needsDetachEv.exit.i.i.i.i3: ; preds = %_ZN16QCPDataContainerI21QCPStatisticalBoxDataE5beginEv.exit.thread, %_ZN16QCPDataContainerI21QCPStatisticalBoxDataE5beginEv.exit
  %i.q = phi ptr [ %i.j, %_ZN16QCPDataContainerI21QCPStatisticalBoxDataE5beginEv.exit.thread ], [ %i.p, %_ZN16QCPDataContainerI21QCPStatisticalBoxDataE5beginEv.exit ] ; 2 uses
  %i.r = phi ptr [ %i.f, %_ZN16QCPDataContainerI21QCPStatisticalBoxDataE5beginEv.exit.thread ], [ %i.l, %_ZN16QCPDataContainerI21QCPStatisticalBoxDataE5beginEv.exit ]
  %i.s = phi ptr [ %i.e, %_ZN16QCPDataContainerI21QCPStatisticalBoxDataE5beginEv.exit.thread ], [ %i.k, %_ZN16QCPDataContainerI21QCPStatisticalBoxDataE5beginEv.exit ]
  %i.t = phi ptr [ %i.b, %_ZN16QCPDataContainerI21QCPStatisticalBoxDataE5beginEv.exit.thread ], [ %.pre, %_ZN16QCPDataContainerI21QCPStatisticalBoxDataE5beginEv.exit ]
  %i.u = load atomic i32, ptr %i.t monotonic, align 4
  %i.v = icmp sgt i32 %i.u, 1
  br i1 %i.v, label %_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE11needsDetachEv.exit.thread.i.i.i.i4, label %_ZN16QCPDataContainerI21QCPStatisticalBoxDataE3endEv.exit

_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE11needsDetachEv.exit.thread.i.i.i.i4: ; preds = %_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE11needsDetachEv.exit.i.i.i.i3, %_ZN16QCPDataContainerI21QCPStatisticalBoxDataE5beginEv.exit
  %i.w = phi ptr [ %i.q, %_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE11needsDetachEv.exit.i.i.i.i3 ], [ %i.p, %_ZN16QCPDataContainerI21QCPStatisticalBoxDataE5beginEv.exit ]
  %i.x = phi ptr [ %i.s, %_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE11needsDetachEv.exit.i.i.i.i3 ], [ %i.k, %_ZN16QCPDataContainerI21QCPStatisticalBoxDataE5beginEv.exit ]
  tail call void @_ZN17QArrayDataPointerI21QCPStatisticalBoxDataE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %i.a, i32 noundef 0, i64 noundef 0, ptr noundef null)
  %.pre114 = load ptr, ptr %i.x, align 8
  br label %_ZN16QCPDataContainerI21QCPStatisticalBoxDataE3endEv.exit

_ZN16QCPDataContainerI21QCPStatisticalBoxDataE3endEv.exit: ; preds = %_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE11needsDetachEv.exit.i.i.i.i3, %_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE11needsDetachEv.exit.thread.i.i.i.i4
  %i.y = phi ptr [ %i.q, %_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE11needsDetachEv.exit.i.i.i.i3 ], [ %i.w, %_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE11needsDetachEv.exit.thread.i.i.i.i4 ] ; 16 uses
  %i.z = phi ptr [ %i.r, %_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE11needsDetachEv.exit.i.i.i.i3 ], [ %.pre114, %_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE11needsDetachEv.exit.thread.i.i.i.i4 ]
  %i.aa = getelementptr i8, ptr %0, i64 24
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = getelementptr [72 x i8], ptr %i.z, i64 %i.ab ; 7 uses
  %.not.i.i = icmp eq ptr %i.y, %i.ac
  br i1 %.not.i.i, label %_ZSt4sortIN5QListI21QCPStatisticalBoxDataE8iteratorEPFbRKS1_S5_EEvT_S8_T0_.exit, label %bb.b

bb.b:                                             ; preds = %_ZN16QCPDataContainerI21QCPStatisticalBoxDataE3endEv.exit
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.y to i64                ; 3 uses
  %i.af = sub i64 %i.ad, %i.ae                    ; 2 uses
  %i.ag = sdiv exact i64 %i.af, 72
  %i.ah = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ag, i1 true)
  %i.ai = shl nuw nsw i64 %i.ah, 1
  %i.aj = xor i64 %i.ai, 126
  tail call void @_ZSt16__introsort_loopIN5QListI21QCPStatisticalBoxDataE8iteratorExN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_T0_T1_(ptr %i.y, ptr %i.ac, i64 noundef %i.aj, ptr @_Z18qcpLessThanSortKeyI21QCPStatisticalBoxDataEbRKT_S3_)
  %i.ak = icmp sgt i64 %i.af, 1152
  br i1 %i.ak, label %bb.c, label %.preheader.i

bb.c:                                             ; preds = %bb.b
  %i.al = getelementptr i8, ptr %i.y, i64 1152    ; 3 uses
  %.sroa.021.029.i13 = getelementptr i8, ptr %i.y, i64 72
  %i.am = getelementptr i8, ptr %i.y, i64 48      ; 2 uses
  %i.an = getelementptr i8, ptr %i.y, i64 64
  br label %bb.d

bb.d:                                             ; preds = %_ZN21QCPStatisticalBoxDataD2Ev.exit.i24, %bb.c
  %.sroa.021.032.i16 = phi ptr [ %.sroa.021.029.i13, %bb.c ], [ %.sroa.021.0.i18, %_ZN21QCPStatisticalBoxDataD2Ev.exit.i24 ] ; 12 uses
  %.pn31.i17 = phi ptr [ %i.y, %bb.c ], [ %.sroa.021.032.i16, %_ZN21QCPStatisticalBoxDataD2Ev.exit.i24 ] ; 3 uses
  %i.ao = load double, ptr %.sroa.021.032.i16, align 8 ; 4 uses
  %i.ap = load double, ptr %i.y, align 8
  %i.aq = fcmp olt double %i.ao, %i.ap
  br i1 %i.aq, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %.sroa.0.i11.sroa.0.0.copyload = load <6 x double>, ptr %.sroa.021.032.i16, align 8
  %i.ar = getelementptr i8, ptr %.pn31.i17, i64 120 ; 2 uses
  %i.as = load <2 x ptr>, ptr %i.ar, align 8
  %i.at = getelementptr i8, ptr %.pn31.i17, i64 136
  %i.au = load i64, ptr %i.at, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i8 0, i64 24, i1 false)
  %i.av = ptrtoint ptr %.sroa.021.032.i16 to i64
  %i.aw = sub i64 %i.av, %i.ae                    ; 2 uses
  %i.ax = icmp sgt i64 %i.aw, 0
  br i1 %i.ax, label %.lr.ph.preheader.i.i.i.i.i.i25, label %_ZSt13move_backwardIN5QListI21QCPStatisticalBoxDataE8iteratorES3_ET0_T_S5_S4_.exit.i20

.lr.ph.preheader.i.i.i.i.i.i25:                   ; preds = %bb.e
  %i.ay = getelementptr i8, ptr %.pn31.i17, i64 144
  %i.az = udiv exact i64 %i.aw, 72
  br label %.lr.ph.i.i.i.i.i.i26

.lr.ph.i.i.i.i.i.i26:                             ; preds = %_ZN21QCPStatisticalBoxDataaSEOS_.exit.i.i.i.i.i.i33, %.lr.ph.preheader.i.i.i.i.i.i25
  %.010.i.i.i.i.i.i27 = phi i64 [ %i.bk, %_ZN21QCPStatisticalBoxDataaSEOS_.exit.i.i.i.i.i.i33 ], [ %i.az, %.lr.ph.preheader.i.i.i.i.i.i25 ] ; 2 uses
  %.sroa.0.09.i.i.i.i.i.i28 = phi ptr [ %i.bb, %_ZN21QCPStatisticalBoxDataaSEOS_.exit.i.i.i.i.i.i33 ], [ %i.ay, %.lr.ph.preheader.i.i.i.i.i.i25 ] ; 3 uses
  %.sroa.05.08.i.i.i.i.i.i29 = phi ptr [ %i.ba, %_ZN21QCPStatisticalBoxDataaSEOS_.exit.i.i.i.i.i.i33 ], [ %.sroa.021.032.i16, %.lr.ph.preheader.i.i.i.i.i.i25 ] ; 3 uses
  %i.ba = getelementptr i8, ptr %.sroa.05.08.i.i.i.i.i.i29, i64 -72 ; 2 uses
  %i.bb = getelementptr i8, ptr %.sroa.0.09.i.i.i.i.i.i28, i64 -72 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(48) dereferenceable_or_null(72) %i.bb, ptr noundef align 8 dereferenceable(72) %i.ba, i64 48, i1 false)
  %i.bc = getelementptr i8, ptr %.sroa.0.09.i.i.i.i.i.i28, i64 -24 ; 2 uses
  %i.bd = getelementptr i8, ptr %.sroa.05.08.i.i.i.i.i.i29, i64 -24 ; 2 uses
  %i.be = getelementptr i8, ptr %.sroa.05.08.i.i.i.i.i.i29, i64 -8
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = load <2 x ptr>, ptr %i.bd, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i8 0, i64 24, i1 false)
  %i.bh = load ptr, ptr %i.bc, align 8            ; 3 uses
  store <2 x ptr> %i.bg, ptr %i.bc, align 8
  %i.bi = getelementptr i8, ptr %.sroa.0.09.i.i.i.i.i.i28, i64 -8
  store i64 %i.bf, ptr %i.bi, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i30 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i30, label %_ZN21QCPStatisticalBoxDataaSEOS_.exit.i.i.i.i.i.i33, label %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i.i.i.i.i.i.i31

_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i.i.i.i.i.i.i31: ; preds = %.lr.ph.i.i.i.i.i.i26
  %i.bj = atomicrmw add ptr %i.bh, i32 -1 acq_rel, align 4
  %.not.i.i.i.i.i.i.i.i.i.i32 = icmp eq i32 %i.bj, 1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i32, label %bb.f, label %_ZN21QCPStatisticalBoxDataaSEOS_.exit.i.i.i.i.i.i33

bb.f:                                             ; preds = %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i.i.i.i.i.i.i31
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.bh, i64 noundef 8, i64 noundef 8) #49
  br label %_ZN21QCPStatisticalBoxDataaSEOS_.exit.i.i.i.i.i.i33

_ZN21QCPStatisticalBoxDataaSEOS_.exit.i.i.i.i.i.i33: ; preds = %bb.f, %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i.i.i.i.i.i.i31, %.lr.ph.i.i.i.i.i.i26
  %i.bk = add nsw i64 %.010.i.i.i.i.i.i27, -1
  %i.bl = icmp sgt i64 %.010.i.i.i.i.i.i27, 1
  br i1 %i.bl, label %.lr.ph.i.i.i.i.i.i26, label %_ZSt13move_backwardIN5QListI21QCPStatisticalBoxDataE8iteratorES3_ET0_T_S5_S4_.exit.i20, !llvm.loop !76

_ZSt13move_backwardIN5QListI21QCPStatisticalBoxDataE8iteratorES3_ET0_T_S5_S4_.exit.i20: ; preds = %_ZN21QCPStatisticalBoxDataaSEOS_.exit.i.i.i.i.i.i33, %bb.e
  store <6 x double> %.sroa.0.i11.sroa.0.0.copyload, ptr %i.y, align 8
  %i.bm = load ptr, ptr %i.am, align 8            ; 3 uses
  store <2 x ptr> %i.as, ptr %i.am, align 8
  store i64 %i.au, ptr %i.an, align 8
  %.not.i.i.i.i.i.i21 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i.i.i21, label %_ZN21QCPStatisticalBoxDataD2Ev.exit.i24, label %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i.i22

_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i.i22: ; preds = %_ZSt13move_backwardIN5QListI21QCPStatisticalBoxDataE8iteratorES3_ET0_T_S5_S4_.exit.i20
  %i.bn = atomicrmw add ptr %i.bm, i32 -1 acq_rel, align 4
  %.not.i.i.i.i.i23 = icmp eq i32 %i.bn, 1
  br i1 %.not.i.i.i.i.i23, label %bb.g, label %_ZN21QCPStatisticalBoxDataD2Ev.exit.i24

bb.g:                                             ; preds = %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i.i22
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.bm, i64 noundef 8, i64 noundef 8) #49
  br label %_ZN21QCPStatisticalBoxDataD2Ev.exit.i24

bb.h:                                             ; preds = %bb.d
  %.sroa.691.0..sroa.021.032.i16.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.021.032.i16, i64 8
  %.sroa.691.sroa.0.0.copyload = load <5 x double>, ptr %.sroa.691.0..sroa.021.032.i16.sroa_idx, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.021.032.i16, i64 48 ; 2 uses
  %i.bp = load <2 x ptr>, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.021.032.i16, i64 64
  %i.br = load i64, ptr %i.bq, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i8 0, i64 24, i1 false)
  %.sroa.0.0.i55103 = getelementptr i8, ptr %.sroa.021.032.i16, i64 -72 ; 2 uses
  %i.bs = load double, ptr %.sroa.0.0.i55103, align 8
  %i.bt = fcmp olt double %i.ao, %i.bs
  br i1 %i.bt, label %.lr.ph106, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRK21QCPStatisticalBoxDataS4_EEclIS2_N5QListIS2_E8iteratorEEEbRT_T0_.exit.i60._crit_edge

.lr.ph106:                                        ; preds = %bb.h, %_ZN21QCPStatisticalBoxDataaSEOS_.exit.i71
  %.sroa.0.0.i55105 = phi ptr [ %.sroa.0.0.i55, %_ZN21QCPStatisticalBoxDataaSEOS_.exit.i71 ], [ %.sroa.0.0.i55103, %bb.h ] ; 5 uses
  %.sroa.013.0.i54104 = phi ptr [ %.sroa.0.0.i55105, %_ZN21QCPStatisticalBoxDataaSEOS_.exit.i71 ], [ %.sroa.021.032.i16, %bb.h ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(48) dereferenceable_or_null(72) %.sroa.013.0.i54104, ptr noundef align 8 dereferenceable(72) %.sroa.0.0.i55105, i64 48, i1 false)
  %i.bu = getelementptr i8, ptr %.sroa.013.0.i54104, i64 48 ; 2 uses
  %i.bv = getelementptr i8, ptr %.sroa.013.0.i54104, i64 -24 ; 2 uses
  %i.bw = getelementptr i8, ptr %.sroa.013.0.i54104, i64 -8
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = load <2 x ptr>, ptr %i.bv, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, i8 0, i64 24, i1 false)
  %i.bz = load ptr, ptr %i.bu, align 8            ; 3 uses
  store <2 x ptr> %i.by, ptr %i.bu, align 8
  %i.ca = getelementptr i8, ptr %.sroa.013.0.i54104, i64 64
  store i64 %i.bx, ptr %i.ca, align 8
  %.not.i.i.i.i.i.i68 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i.i.i.i68, label %_ZN21QCPStatisticalBoxDataaSEOS_.exit.i71, label %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i.i69

_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i.i69: ; preds = %.lr.ph106
  %i.cb = atomicrmw add ptr %i.bz, i32 -1 acq_rel, align 4
  %.not.i.i.i.i.i70 = icmp eq i32 %i.cb, 1
  br i1 %.not.i.i.i.i.i70, label %bb.i, label %_ZN21QCPStatisticalBoxDataaSEOS_.exit.i71

bb.i:                                             ; preds = %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i.i69
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.bz, i64 noundef 8, i64 noundef 8) #49
  br label %_ZN21QCPStatisticalBoxDataaSEOS_.exit.i71

_ZN21QCPStatisticalBoxDataaSEOS_.exit.i71:        ; preds = %bb.i, %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i.i69, %.lr.ph106
  %.sroa.0.0.i55 = getelementptr i8, ptr %.sroa.0.0.i55105, i64 -72 ; 2 uses
  %i.cc = load double, ptr %.sroa.0.0.i55, align 8
  %i.cd = fcmp olt double %i.ao, %i.cc
  br i1 %i.cd, label %.lr.ph106, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRK21QCPStatisticalBoxDataS4_EEclIS2_N5QListIS2_E8iteratorEEEbRT_T0_.exit.i60._crit_edge.loopexit, !llvm.loop !77

_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRK21QCPStatisticalBoxDataS4_EEclIS2_N5QListIS2_E8iteratorEEEbRT_T0_.exit.i60._crit_edge.loopexit: ; preds = %_ZN21QCPStatisticalBoxDataaSEOS_.exit.i71
  %.phi.trans.insert116 = getelementptr i8, ptr %.sroa.0.0.i55105, i64 48
  %.pre117 = load ptr, ptr %.phi.trans.insert116, align 8
  br label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRK21QCPStatisticalBoxDataS4_EEclIS2_N5QListIS2_E8iteratorEEEbRT_T0_.exit.i60._crit_edge

_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRK21QCPStatisticalBoxDataS4_EEclIS2_N5QListIS2_E8iteratorEEEbRT_T0_.exit.i60._crit_edge: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRK21QCPStatisticalBoxDataS4_EEclIS2_N5QListIS2_E8iteratorEEEbRT_T0_.exit.i60._crit_edge.loopexit, %bb.h
  %1 = phi ptr [ null, %bb.h ], [ %.pre117, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRK21QCPStatisticalBoxDataS4_EEclIS2_N5QListIS2_E8iteratorEEEbRT_T0_.exit.i60._crit_edge.loopexit ] ; 3 uses
  %.sroa.013.0.i54.lcssa = phi ptr [ %.sroa.021.032.i16, %bb.h ], [ %.sroa.0.0.i55105, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRK21QCPStatisticalBoxDataS4_EEclIS2_N5QListIS2_E8iteratorEEEbRT_T0_.exit.i60._crit_edge.loopexit ] ; 4 uses
  store double %i.ao, ptr %.sroa.013.0.i54.lcssa, align 8
  %.sroa.691.0..sroa.013.0.i54.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i54.lcssa, i64 8
  store <5 x double> %.sroa.691.sroa.0.0.copyload, ptr %.sroa.691.0..sroa.013.0.i54.sroa_idx, align 8
  %i.ce = getelementptr i8, ptr %.sroa.013.0.i54.lcssa, i64 48
  store <2 x ptr> %i.bp, ptr %i.ce, align 8
  %i.cf = getelementptr i8, ptr %.sroa.013.0.i54.lcssa, i64 64
  store i64 %i.br, ptr %i.cf, align 8
  %.not.i.i.i.i.i2.i61 = icmp eq ptr %1, null
  br i1 %.not.i.i.i.i.i2.i61, label %_ZN21QCPStatisticalBoxDataD2Ev.exit.i24, label %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i3.i62

_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i3.i62: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRK21QCPStatisticalBoxDataS4_EEclIS2_N5QListIS2_E8iteratorEEEbRT_T0_.exit.i60._crit_edge
  %i.cg = atomicrmw add ptr %1, i32 -1 acq_rel, align 4
  %.not.i.i.i.i4.i63 = icmp eq i32 %i.cg, 1
  br i1 %.not.i.i.i.i4.i63, label %bb.j, label %_ZN21QCPStatisticalBoxDataD2Ev.exit.i24

bb.j:                                             ; preds = %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i3.i62
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %1, i64 noundef 8, i64 noundef 8) #49
  br label %_ZN21QCPStatisticalBoxDataD2Ev.exit.i24

_ZN21QCPStatisticalBoxDataD2Ev.exit.i24:          ; preds = %bb.j, %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i3.i62, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRK21QCPStatisticalBoxDataS4_EEclIS2_N5QListIS2_E8iteratorEEEbRT_T0_.exit.i60._crit_edge, %_ZSt13move_backwardIN5QListI21QCPStatisticalBoxDataE8iteratorES3_ET0_T_S5_S4_.exit.i20, %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i.i22, %bb.g
  %.sroa.021.0.i18 = getelementptr i8, ptr %.sroa.021.032.i16, i64 72 ; 2 uses
  %.not.i19 = icmp eq ptr %.sroa.021.0.i18, %i.al
  br i1 %.not.i19, label %_ZSt16__insertion_sortIN5QListI21QCPStatisticalBoxDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_T0_.exit34, label %bb.d, !llvm.loop !78

_ZSt16__insertion_sortIN5QListI21QCPStatisticalBoxDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_T0_.exit34: ; preds = %_ZN21QCPStatisticalBoxDataD2Ev.exit.i24
  %.not8.i.i.i.i = icmp eq ptr %i.al, %i.ac
  br i1 %.not8.i.i.i.i, label %_ZSt4sortIN5QListI21QCPStatisticalBoxDataE8iteratorEPFbRKS1_S5_EEvT_S8_T0_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt16__insertion_sortIN5QListI21QCPStatisticalBoxDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_T0_.exit34, %_ZSt25__unguarded_linear_insertIN5QListI21QCPStatisticalBoxDataE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S8_EEEEvT_T0_.exit
  %.sroa.0.09.i.i.i.i = phi ptr [ %i.da, %_ZSt25__unguarded_linear_insertIN5QListI21QCPStatisticalBoxDataE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S8_EEEEvT_T0_.exit ], [ %i.al, %_ZSt16__insertion_sortIN5QListI21QCPStatisticalBoxDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_T0_.exit34 ] ; 8 uses
  %.sroa.0.0.copyload = load double, ptr %.sroa.0.09.i.i.i.i, align 8 ; 3 uses
  %.sroa.6.0..sroa.0.09.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i.i.i, i64 8
  %.sroa.6.sroa.0.0.copyload = load <5 x double>, ptr %.sroa.6.0..sroa.0.09.i.i.i.i.sroa_idx, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i.i.i, i64 48 ; 2 uses
  %i.ci = load <2 x ptr>, ptr %i.ch, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i.i.i, i64 64
  %i.ck = load i64, ptr %i.cj, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, i8 0, i64 24, i1 false)
  %.sroa.0.0.i108 = getelementptr i8, ptr %.sroa.0.09.i.i.i.i, i64 -72 ; 2 uses
  %i.cl = load double, ptr %.sroa.0.0.i108, align 8
  %i.cm = fcmp olt double %.sroa.0.0.copyload, %i.cl
  br i1 %i.cm, label %.lr.ph111, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRK21QCPStatisticalBoxDataS4_EEclIS2_N5QListIS2_E8iteratorEEEbRT_T0_.exit.i._crit_edge

.lr.ph111:                                        ; preds = %.lr.ph.i.i.i.i, %_ZN21QCPStatisticalBoxDataaSEOS_.exit.i
  %.sroa.0.0.i110 = phi ptr [ %.sroa.0.0.i, %_ZN21QCPStatisticalBoxDataaSEOS_.exit.i ], [ %.sroa.0.0.i108, %.lr.ph.i.i.i.i ] ; 5 uses
  %.sroa.013.0.i109 = phi ptr [ %.sroa.0.0.i110, %_ZN21QCPStatisticalBoxDataaSEOS_.exit.i ], [ %.sroa.0.09.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(48) dereferenceable_or_null(72) %.sroa.013.0.i109, ptr noundef align 8 dereferenceable(72) %.sroa.0.0.i110, i64 48, i1 false)
  %i.cn = getelementptr i8, ptr %.sroa.013.0.i109, i64 48 ; 2 uses
  %i.co = getelementptr i8, ptr %.sroa.013.0.i109, i64 -24 ; 2 uses
  %i.cp = getelementptr i8, ptr %.sroa.013.0.i109, i64 -8
  %i.cq = load i64, ptr %i.cp, align 8
  %i.cr = load <2 x ptr>, ptr %i.co, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.co, i8 0, i64 24, i1 false)
  %i.cs = load ptr, ptr %i.cn, align 8            ; 3 uses
  store <2 x ptr> %i.cr, ptr %i.cn, align 8
  %i.ct = getelementptr i8, ptr %.sroa.013.0.i109, i64 64
  store i64 %i.cq, ptr %i.ct, align 8
  %.not.i.i.i.i.i.i8 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i.i.i.i8, label %_ZN21QCPStatisticalBoxDataaSEOS_.exit.i, label %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i.i9

_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i.i9: ; preds = %.lr.ph111
  %i.cu = atomicrmw add ptr %i.cs, i32 -1 acq_rel, align 4
  %.not.i.i.i.i.i10 = icmp eq i32 %i.cu, 1
  br i1 %.not.i.i.i.i.i10, label %bb.k, label %_ZN21QCPStatisticalBoxDataaSEOS_.exit.i

bb.k:                                             ; preds = %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i.i9
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.cs, i64 noundef 8, i64 noundef 8) #49
  br label %_ZN21QCPStatisticalBoxDataaSEOS_.exit.i

_ZN21QCPStatisticalBoxDataaSEOS_.exit.i:          ; preds = %bb.k, %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i.i9, %.lr.ph111
  %.sroa.0.0.i = getelementptr i8, ptr %.sroa.0.0.i110, i64 -72 ; 2 uses
  %i.cv = load double, ptr %.sroa.0.0.i, align 8
  %i.cw = fcmp olt double %.sroa.0.0.copyload, %i.cv
  br i1 %i.cw, label %.lr.ph111, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRK21QCPStatisticalBoxDataS4_EEclIS2_N5QListIS2_E8iteratorEEEbRT_T0_.exit.i._crit_edge.loopexit, !llvm.loop !77

_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRK21QCPStatisticalBoxDataS4_EEclIS2_N5QListIS2_E8iteratorEEEbRT_T0_.exit.i._crit_edge.loopexit: ; preds = %_ZN21QCPStatisticalBoxDataaSEOS_.exit.i
  %.phi.trans.insert118 = getelementptr i8, ptr %.sroa.0.0.i110, i64 48
  %.pre119 = load ptr, ptr %.phi.trans.insert118, align 8
  br label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRK21QCPStatisticalBoxDataS4_EEclIS2_N5QListIS2_E8iteratorEEEbRT_T0_.exit.i._crit_edge

_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRK21QCPStatisticalBoxDataS4_EEclIS2_N5QListIS2_E8iteratorEEEbRT_T0_.exit.i._crit_edge: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRK21QCPStatisticalBoxDataS4_EEclIS2_N5QListIS2_E8iteratorEEEbRT_T0_.exit.i._crit_edge.loopexit, %.lr.ph.i.i.i.i
  %2 = phi ptr [ null, %.lr.ph.i.i.i.i ], [ %.pre119, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRK21QCPStatisticalBoxDataS4_EEclIS2_N5QListIS2_E8iteratorEEEbRT_T0_.exit.i._crit_edge.loopexit ] ; 3 uses
  %.sroa.013.0.i.lcssa = phi ptr [ %.sroa.0.09.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.sroa.0.0.i110, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRK21QCPStatisticalBoxDataS4_EEclIS2_N5QListIS2_E8iteratorEEEbRT_T0_.exit.i._crit_edge.loopexit ] ; 4 uses
  store double %.sroa.0.0.copyload, ptr %.sroa.013.0.i.lcssa, align 8
  %.sroa.6.0..sroa.013.0.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.lcssa, i64 8
  store <5 x double> %.sroa.6.sroa.0.0.copyload, ptr %.sroa.6.0..sroa.013.0.i.sroa_idx, align 8
  %i.cx = getelementptr i8, ptr %.sroa.013.0.i.lcssa, i64 48
  store <2 x ptr> %i.ci, ptr %i.cx, align 8
  %i.cy = getelementptr i8, ptr %.sroa.013.0.i.lcssa, i64 64
  store i64 %i.ck, ptr %i.cy, align 8
  %.not.i.i.i.i.i2.i = icmp eq ptr %2, null
  br i1 %.not.i.i.i.i.i2.i, label %_ZSt25__unguarded_linear_insertIN5QListI21QCPStatisticalBoxDataE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S8_EEEEvT_T0_.exit, label %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i3.i

_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i3.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRK21QCPStatisticalBoxDataS4_EEclIS2_N5QListIS2_E8iteratorEEEbRT_T0_.exit.i._crit_edge
  %i.cz = atomicrmw add ptr %2, i32 -1 acq_rel, align 4
  %.not.i.i.i.i4.i = icmp eq i32 %i.cz, 1
  br i1 %.not.i.i.i.i4.i, label %bb.l, label %_ZSt25__unguarded_linear_insertIN5QListI21QCPStatisticalBoxDataE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S8_EEEEvT_T0_.exit

bb.l:                                             ; preds = %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i3.i
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %2, i64 noundef 8, i64 noundef 8) #49
  br label %_ZSt25__unguarded_linear_insertIN5QListI21QCPStatisticalBoxDataE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S8_EEEEvT_T0_.exit

_ZSt25__unguarded_linear_insertIN5QListI21QCPStatisticalBoxDataE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S8_EEEEvT_T0_.exit: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRK21QCPStatisticalBoxDataS4_EEclIS2_N5QListIS2_E8iteratorEEEbRT_T0_.exit.i._crit_edge, %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i3.i, %bb.l
  %i.da = getelementptr i8, ptr %.sroa.0.09.i.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.da, %i.ac
  br i1 %.not.i.i.i.i, label %_ZSt4sortIN5QListI21QCPStatisticalBoxDataE8iteratorEPFbRKS1_S5_EEvT_S8_T0_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !79

.preheader.i:                                     ; preds = %bb.b
  %.sroa.021.029.i = getelementptr i8, ptr %i.y, i64 72 ; 2 uses
  %.not30.i = icmp eq ptr %.sroa.021.029.i, %i.ac
  br i1 %.not30.i, label %_ZSt4sortIN5QListI21QCPStatisticalBoxDataE8iteratorEPFbRKS1_S5_EEvT_S8_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.db = getelementptr i8, ptr %i.y, i64 48      ; 2 uses
  %i.dc = getelementptr i8, ptr %i.y, i64 64
  br label %bb.m

bb.m:                                             ; preds = %_ZN21QCPStatisticalBoxDataD2Ev.exit.i, %.lr.ph.i
  %.sroa.021.032.i = phi ptr [ %.sroa.021.029.i, %.lr.ph.i ], [ %.sroa.021.0.i, %_ZN21QCPStatisticalBoxDataD2Ev.exit.i ] ; 12 uses
  %.pn31.i = phi ptr [ %i.y, %.lr.ph.i ], [ %.sroa.021.032.i, %_ZN21QCPStatisticalBoxDataD2Ev.exit.i ] ; 3 uses
  %i.dd = load double, ptr %.sroa.021.032.i, align 8 ; 4 uses
  %i.de = load double, ptr %i.y, align 8
  %i.df = fcmp olt double %i.dd, %i.de
  br i1 %i.df, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %.sroa.0.i.sroa.0.0.copyload = load <6 x double>, ptr %.sroa.021.032.i, align 8
  %i.dg = getelementptr i8, ptr %.pn31.i, i64 120 ; 2 uses
  %i.dh = load <2 x ptr>, ptr %i.dg, align 8
  %i.di = getelementptr i8, ptr %.pn31.i, i64 136
  %i.dj = load i64, ptr %i.di, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dg, i8 0, i64 24, i1 false)
  %i.dk = ptrtoint ptr %.sroa.021.032.i to i64
  %i.dl = sub i64 %i.dk, %i.ae                    ; 2 uses
  %i.dm = icmp sgt i64 %i.dl, 0
  br i1 %i.dm, label %.lr.ph.preheader.i.i.i.i.i.i, label %_ZSt13move_backwardIN5QListI21QCPStatisticalBoxDataE8iteratorES3_ET0_T_S5_S4_.exit.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.n
  %i.dn = getelementptr i8, ptr %.pn31.i, i64 144
  %i.do = udiv exact i64 %i.dl, 72
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZN21QCPStatisticalBoxDataaSEOS_.exit.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i
  %.010.i.i.i.i.i.i = phi i64 [ %i.dz, %_ZN21QCPStatisticalBoxDataaSEOS_.exit.i.i.i.i.i.i ], [ %i.do, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.09.i.i.i.i.i.i = phi ptr [ %i.dq, %_ZN21QCPStatisticalBoxDataaSEOS_.exit.i.i.i.i.i.i ], [ %i.dn, %.lr.ph.preheader.i.i.i.i.i.i ] ; 3 uses
  %.sroa.05.08.i.i.i.i.i.i = phi ptr [ %i.dp, %_ZN21QCPStatisticalBoxDataaSEOS_.exit.i.i.i.i.i.i ], [ %.sroa.021.032.i, %.lr.ph.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.dp = getelementptr i8, ptr %.sroa.05.08.i.i.i.i.i.i, i64 -72 ; 2 uses
  %i.dq = getelementptr i8, ptr %.sroa.0.09.i.i.i.i.i.i, i64 -72 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(48) dereferenceable_or_null(72) %i.dq, ptr noundef align 8 dereferenceable(72) %i.dp, i64 48, i1 false)
  %i.dr = getelementptr i8, ptr %.sroa.0.09.i.i.i.i.i.i, i64 -24 ; 2 uses
  %i.ds = getelementptr i8, ptr %.sroa.05.08.i.i.i.i.i.i, i64 -24 ; 2 uses
  %i.dt = getelementptr i8, ptr %.sroa.05.08.i.i.i.i.i.i, i64 -8
  %i.du = load i64, ptr %i.dt, align 8
  %i.dv = load <2 x ptr>, ptr %i.ds, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ds, i8 0, i64 24, i1 false)
  %i.dw = load ptr, ptr %i.dr, align 8            ; 3 uses
  store <2 x ptr> %i.dv, ptr %i.dr, align 8
  %i.dx = getelementptr i8, ptr %.sroa.0.09.i.i.i.i.i.i, i64 -8
  store i64 %i.du, ptr %i.dx, align 8
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dw, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN21QCPStatisticalBoxDataaSEOS_.exit.i.i.i.i.i.i, label %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i.i.i.i.i.i.i

_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.dy = atomicrmw add ptr %i.dw, i32 -1 acq_rel, align 4
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.dy, 1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.o, label %_ZN21QCPStatisticalBoxDataaSEOS_.exit.i.i.i.i.i.i

bb.o:                                             ; preds = %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.dw, i64 noundef 8, i64 noundef 8) #49
  br label %_ZN21QCPStatisticalBoxDataaSEOS_.exit.i.i.i.i.i.i

_ZN21QCPStatisticalBoxDataaSEOS_.exit.i.i.i.i.i.i: ; preds = %bb.o, %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.dz = add nsw i64 %.010.i.i.i.i.i.i, -1
  %i.ea = icmp sgt i64 %.010.i.i.i.i.i.i, 1
  br i1 %i.ea, label %.lr.ph.i.i.i.i.i.i, label %_ZSt13move_backwardIN5QListI21QCPStatisticalBoxDataE8iteratorES3_ET0_T_S5_S4_.exit.i, !llvm.loop !76

_ZSt13move_backwardIN5QListI21QCPStatisticalBoxDataE8iteratorES3_ET0_T_S5_S4_.exit.i: ; preds = %_ZN21QCPStatisticalBoxDataaSEOS_.exit.i.i.i.i.i.i, %bb.n
  store <6 x double> %.sroa.0.i.sroa.0.0.copyload, ptr %i.y, align 8
  %i.eb = load ptr, ptr %i.db, align 8            ; 3 uses
  store <2 x ptr> %i.dh, ptr %i.db, align 8
  store i64 %i.dj, ptr %i.dc, align 8
  %.not.i.i.i.i.i.i = icmp eq ptr %i.eb, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN21QCPStatisticalBoxDataD2Ev.exit.i, label %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i.i

_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i.i: ; preds = %_ZSt13move_backwardIN5QListI21QCPStatisticalBoxDataE8iteratorES3_ET0_T_S5_S4_.exit.i
  %i.ec = atomicrmw add ptr %i.eb, i32 -1 acq_rel, align 4
  %.not.i.i.i.i.i5 = icmp eq i32 %i.ec, 1
  br i1 %.not.i.i.i.i.i5, label %bb.p, label %_ZN21QCPStatisticalBoxDataD2Ev.exit.i

bb.p:                                             ; preds = %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i.i
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.eb, i64 noundef 8, i64 noundef 8) #49
  br label %_ZN21QCPStatisticalBoxDataD2Ev.exit.i

bb.q:                                             ; preds = %bb.m
  %.sroa.681.0..sroa.021.032.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.021.032.i, i64 8
  %.sroa.681.sroa.0.0.copyload = load <5 x double>, ptr %.sroa.681.0..sroa.021.032.i.sroa_idx, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.021.032.i, i64 48 ; 2 uses
  %i.ee = load <2 x ptr>, ptr %i.ed, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.021.032.i, i64 64
  %i.eg = load i64, ptr %i.ef, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ed, i8 0, i64 24, i1 false)
  %.sroa.0.0.i36100 = getelementptr i8, ptr %.sroa.021.032.i, i64 -72 ; 2 uses
  %i.eh = load double, ptr %.sroa.0.0.i36100, align 8
  %i.ei = fcmp olt double %i.dd, %i.eh
  br i1 %i.ei, label %.lr.ph, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRK21QCPStatisticalBoxDataS4_EEclIS2_N5QListIS2_E8iteratorEEEbRT_T0_.exit.i41._crit_edge

.lr.ph:                                           ; preds = %bb.q, %_ZN21QCPStatisticalBoxDataaSEOS_.exit.i52
  %.sroa.0.0.i36102 = phi ptr [ %.sroa.0.0.i36, %_ZN21QCPStatisticalBoxDataaSEOS_.exit.i52 ], [ %.sroa.0.0.i36100, %bb.q ] ; 5 uses
  %.sroa.013.0.i35101 = phi ptr [ %.sroa.0.0.i36102, %_ZN21QCPStatisticalBoxDataaSEOS_.exit.i52 ], [ %.sroa.021.032.i, %bb.q ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(48) dereferenceable_or_null(72) %.sroa.013.0.i35101, ptr noundef align 8 dereferenceable(72) %.sroa.0.0.i36102, i64 48, i1 false)
  %i.ej = getelementptr i8, ptr %.sroa.013.0.i35101, i64 48 ; 2 uses
  %i.ek = getelementptr i8, ptr %.sroa.013.0.i35101, i64 -24 ; 2 uses
  %i.el = getelementptr i8, ptr %.sroa.013.0.i35101, i64 -8
  %i.em = load i64, ptr %i.el, align 8
  %i.en = load <2 x ptr>, ptr %i.ek, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ek, i8 0, i64 24, i1 false)
  %i.eo = load ptr, ptr %i.ej, align 8            ; 3 uses
  store <2 x ptr> %i.en, ptr %i.ej, align 8
  %i.ep = getelementptr i8, ptr %.sroa.013.0.i35101, i64 64
  store i64 %i.em, ptr %i.ep, align 8
  %.not.i.i.i.i.i.i49 = icmp eq ptr %i.eo, null
  br i1 %.not.i.i.i.i.i.i49, label %_ZN21QCPStatisticalBoxDataaSEOS_.exit.i52, label %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i.i50

_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i.i50: ; preds = %.lr.ph
  %i.eq = atomicrmw add ptr %i.eo, i32 -1 acq_rel, align 4
  %.not.i.i.i.i.i51 = icmp eq i32 %i.eq, 1
  br i1 %.not.i.i.i.i.i51, label %bb.r, label %_ZN21QCPStatisticalBoxDataaSEOS_.exit.i52

bb.r:                                             ; preds = %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i.i50
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.eo, i64 noundef 8, i64 noundef 8) #49
  br label %_ZN21QCPStatisticalBoxDataaSEOS_.exit.i52

_ZN21QCPStatisticalBoxDataaSEOS_.exit.i52:        ; preds = %bb.r, %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i.i50, %.lr.ph
  %.sroa.0.0.i36 = getelementptr i8, ptr %.sroa.0.0.i36102, i64 -72 ; 2 uses
  %i.er = load double, ptr %.sroa.0.0.i36, align 8
  %i.es = fcmp olt double %i.dd, %i.er
  br i1 %i.es, label %.lr.ph, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRK21QCPStatisticalBoxDataS4_EEclIS2_N5QListIS2_E8iteratorEEEbRT_T0_.exit.i41._crit_edge.loopexit, !llvm.loop !77

_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRK21QCPStatisticalBoxDataS4_EEclIS2_N5QListIS2_E8iteratorEEEbRT_T0_.exit.i41._crit_edge.loopexit: ; preds = %_ZN21QCPStatisticalBoxDataaSEOS_.exit.i52
  %.phi.trans.insert = getelementptr i8, ptr %.sroa.0.0.i36102, i64 48
  %.pre115 = load ptr, ptr %.phi.trans.insert, align 8
  br label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRK21QCPStatisticalBoxDataS4_EEclIS2_N5QListIS2_E8iteratorEEEbRT_T0_.exit.i41._crit_edge

_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRK21QCPStatisticalBoxDataS4_EEclIS2_N5QListIS2_E8iteratorEEEbRT_T0_.exit.i41._crit_edge: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRK21QCPStatisticalBoxDataS4_EEclIS2_N5QListIS2_E8iteratorEEEbRT_T0_.exit.i41._crit_edge.loopexit, %bb.q
  %3 = phi ptr [ null, %bb.q ], [ %.pre115, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRK21QCPStatisticalBoxDataS4_EEclIS2_N5QListIS2_E8iteratorEEEbRT_T0_.exit.i41._crit_edge.loopexit ] ; 3 uses
  %.sroa.013.0.i35.lcssa = phi ptr [ %.sroa.021.032.i, %bb.q ], [ %.sroa.0.0.i36102, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRK21QCPStatisticalBoxDataS4_EEclIS2_N5QListIS2_E8iteratorEEEbRT_T0_.exit.i41._crit_edge.loopexit ] ; 4 uses
  store double %i.dd, ptr %.sroa.013.0.i35.lcssa, align 8
  %.sroa.681.0..sroa.013.0.i35.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i35.lcssa, i64 8
  store <5 x double> %.sroa.681.sroa.0.0.copyload, ptr %.sroa.681.0..sroa.013.0.i35.sroa_idx, align 8
  %i.et = getelementptr i8, ptr %.sroa.013.0.i35.lcssa, i64 48
  store <2 x ptr> %i.ee, ptr %i.et, align 8
  %i.eu = getelementptr i8, ptr %.sroa.013.0.i35.lcssa, i64 64
  store i64 %i.eg, ptr %i.eu, align 8
  %.not.i.i.i.i.i2.i42 = icmp eq ptr %3, null
  br i1 %.not.i.i.i.i.i2.i42, label %_ZN21QCPStatisticalBoxDataD2Ev.exit.i, label %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i3.i43

_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i3.i43: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRK21QCPStatisticalBoxDataS4_EEclIS2_N5QListIS2_E8iteratorEEEbRT_T0_.exit.i41._crit_edge
  %i.ev = atomicrmw add ptr %3, i32 -1 acq_rel, align 4
  %.not.i.i.i.i4.i44 = icmp eq i32 %i.ev, 1
  br i1 %.not.i.i.i.i4.i44, label %bb.s, label %_ZN21QCPStatisticalBoxDataD2Ev.exit.i

bb.s:                                             ; preds = %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i3.i43
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %3, i64 noundef 8, i64 noundef 8) #49
  br label %_ZN21QCPStatisticalBoxDataD2Ev.exit.i

_ZN21QCPStatisticalBoxDataD2Ev.exit.i:            ; preds = %bb.s, %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i3.i43, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFbRK21QCPStatisticalBoxDataS4_EEclIS2_N5QListIS2_E8iteratorEEEbRT_T0_.exit.i41._crit_edge, %_ZSt13move_backwardIN5QListI21QCPStatisticalBoxDataE8iteratorES3_ET0_T_S5_S4_.exit.i, %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i.i, %bb.p
  %.sroa.021.0.i = getelementptr i8, ptr %.sroa.021.032.i, i64 72 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.021.0.i, %i.ac
  br i1 %.not.i, label %_ZSt4sortIN5QListI21QCPStatisticalBoxDataE8iteratorEPFbRKS1_S5_EEvT_S8_T0_.exit, label %bb.m, !llvm.loop !78

_ZSt4sortIN5QListI21QCPStatisticalBoxDataE8iteratorEPFbRKS1_S5_EEvT_S8_T0_.exit: ; preds = %_ZN21QCPStatisticalBoxDataD2Ev.exit.i, %_ZSt25__unguarded_linear_insertIN5QListI21QCPStatisticalBoxDataE8iteratorEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS1_S8_EEEEvT_T0_.exit, %.preheader.i, %_ZN16QCPDataContainerI21QCPStatisticalBoxDataE3endEv.exit, %_ZSt16__insertion_sortIN5QListI21QCPStatisticalBoxDataE8iteratorEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS1_S8_EEEEvT_SC_T0_.exit34
  ret void
}

; Function Attrs: inlinehint mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN5QListI21QCPStatisticalBoxDataE15resize_internalEx(ptr noundef align 8 dereferenceable_or_null(24) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 7 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE11needsDetachEv.exit

_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE11needsDetachEv.exit: ; preds = %bb.a
  %i.b = load atomic i32, ptr %i.a monotonic, align 4
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE11needsDetachEv.exit.i, label %_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE16freeSpaceAtBeginEv.exit

_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE16freeSpaceAtBeginEv.exit: ; preds = %_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE11needsDetachEv.exit
  %i.d = getelementptr i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8              ; 3 uses
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = add i64 %i.h, 23
  %i.j = and i64 %i.i, -8
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.k, %i.j
  %.neg = sdiv exact i64 %i.l, -72
  %i.m = add i64 %.neg, %i.e
  %i.n = icmp sgt i64 %1, %i.m
  br i1 %i.n, label %_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE11needsDetachEv.exit.i, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr i8, ptr %0, i64 16
  %i.p = load i64, ptr %i.o, align 8
  %i.q = sub i64 %1, %i.p
  br label %.critedge.i

_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE11needsDetachEv.exit.i: ; preds = %_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE16freeSpaceAtBeginEv.exit, %_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE11needsDetachEv.exit
  %i.r = getelementptr i8, ptr %0, i64 16
  %i.s = load i64, ptr %i.r, align 8              ; 5 uses
  %i.t = sub i64 %1, %i.s                         ; 6 uses
  %i.u = load atomic i32, ptr %i.a monotonic, align 4
  %i.v = icmp sgt i32 %i.u, 1
  br i1 %i.v, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE11needsDetachEv.exit.i
  %.not.i5 = icmp eq i64 %i.t, 0
  br i1 %.not.i5, label %_ZN17QArrayDataPointerI21QCPStatisticalBoxDataE13detachAndGrowEN10QArrayData14GrowthPositionExPPKS0_PS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr i8, ptr %i.a, i64 8
  %i.x = load i64, ptr %i.w, align 8              ; 2 uses
  %i.y = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8              ; 4 uses
  %i.aa = ptrtoint ptr %i.a to i64
  %i.ab = add i64 %i.aa, 23
  %i.ac = and i64 %i.ab, -8                       ; 2 uses
  %i.ad = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.ae = sub i64 %i.ad, %i.ac                    ; 3 uses
  %.neg4.i.i = sdiv exact i64 %i.ae, -72
  %.neg3.i.i = sub i64 %i.x, %i.s
  %i.af = add i64 %.neg3.i.i, %.neg4.i.i
  %.not17.i = icmp slt i64 %i.af, %i.t
  br i1 %.not17.i, label %_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE14freeSpaceAtEndEv.exit.i.i, label %_ZN17QArrayDataPointerI21QCPStatisticalBoxDataE13detachAndGrowEN10QArrayData14GrowthPositionExPPKS0_PS1_.exit

_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE14freeSpaceAtEndEv.exit.i.i: ; preds = %bb.d
  %i.ag = sdiv exact i64 %i.ae, 72
  %.not.i19.i = icmp slt i64 %i.ag, %i.t
  br i1 %.not.i19.i, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE14freeSpaceAtEndEv.exit.i.i
  %i.ah = mul i64 %i.s, 3
  %i.ai = shl i64 %i.x, 1
  %i.aj = icmp slt i64 %i.ah, %i.ai
  br i1 %i.aj, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %.idx.i.i.i = sub i64 0, %i.ae
  %i.ak = getelementptr i8, ptr %i.z, i64 %.idx.i.i.i ; 3 uses
  %i.al = icmp eq i64 %i.s, 0
  br i1 %i.al, label %_ZN9QtPrivate20q_relocate_overlap_nI21QCPStatisticalBoxDataxEEvPT_T0_S3_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = icmp eq i64 %i.ac, %i.ad
  %i.an = icmp eq ptr %i.z, null
  %or.cond.i.i.i.i = or i1 %i.an, %i.am
  %i.ao = icmp eq ptr %i.ak, null
  %or.cond3.i.i.i.i = or i1 %or.cond.i.i.i.i, %i.ao
  br i1 %or.cond3.i.i.i.i, label %_ZN9QtPrivate20q_relocate_overlap_nI21QCPStatisticalBoxDataxEEvPT_T0_S3_.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = mul i64 %i.s, 72
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.ak, ptr noundef nonnull align 1 %i.z, i64 noundef %i.ap, i1 noundef false) #49
  br label %_ZN9QtPrivate20q_relocate_overlap_nI21QCPStatisticalBoxDataxEEvPT_T0_S3_.exit.i.i.i

_ZN9QtPrivate20q_relocate_overlap_nI21QCPStatisticalBoxDataxEEvPT_T0_S3_.exit.i.i.i: ; preds = %bb.h, %bb.g, %bb.f
  store ptr %i.ak, ptr %i.y, align 8
  br label %_ZN17QArrayDataPointerI21QCPStatisticalBoxDataE13detachAndGrowEN10QArrayData14GrowthPositionExPPKS0_PS1_.exit

.critedge.i:                                      ; preds = %bb.b, %bb.e, %_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE14freeSpaceAtEndEv.exit.i.i, %_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE11needsDetachEv.exit.i
  %i.aq = phi i64 [ %i.t, %bb.e ], [ %i.t, %_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE14freeSpaceAtEndEv.exit.i.i ], [ %i.t, %_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE11needsDetachEv.exit.i ], [ %i.q, %bb.b ]
  tail call void @_ZN17QArrayDataPointerI21QCPStatisticalBoxDataE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %0, i32 noundef 0, i64 noundef %i.aq, ptr noundef null)
  br label %_ZN17QArrayDataPointerI21QCPStatisticalBoxDataE13detachAndGrowEN10QArrayData14GrowthPositionExPPKS0_PS1_.exit

bb.i:                                             ; preds = %_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE16freeSpaceAtBeginEv.exit
  %i.ar = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8            ; 2 uses
  %i.at = icmp slt i64 %1, %i.as
  br i1 %i.at, label %bb.j, label %_ZN17QArrayDataPointerI21QCPStatisticalBoxDataE13detachAndGrowEN10QArrayData14GrowthPositionExPPKS0_PS1_.exit

bb.j:                                             ; preds = %bb.i
  %.idx.i = mul i64 %1, 72                        ; 2 uses
  %.idx2.i = mul i64 %i.as, 72                    ; 2 uses
  %i.au = getelementptr i8, ptr %i.g, i64 %.idx2.i
  %.not4.i.i.i.i = icmp eq i64 %.idx.i, %.idx2.i
  br i1 %.not4.i.i.i.i, label %_ZN9QtPrivate16QGenericArrayOpsI21QCPStatisticalBoxDataE8truncateEm.exit, label %.lr.ph.i.i.i.preheader.i

.lr.ph.i.i.i.preheader.i:                         ; preds = %bb.j
  %i.av = getelementptr i8, ptr %i.g, i64 %.idx.i
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt8_DestroyI21QCPStatisticalBoxDataEvPT_.exit.i.i.i.i, %.lr.ph.i.i.i.preheader.i
  %.05.i.i.i.i = phi ptr [ %i.ba, %_ZSt8_DestroyI21QCPStatisticalBoxDataEvPT_.exit.i.i.i.i ], [ %i.av, %.lr.ph.i.i.i.preheader.i ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyI21QCPStatisticalBoxDataEvPT_.exit.i.i.i.i, label %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i.i.i.i.i

_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ay = atomicrmw add ptr %i.ax, i32 -1 acq_rel, align 4
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.ay, 1
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.k, label %_ZSt8_DestroyI21QCPStatisticalBoxDataEvPT_.exit.i.i.i.i

bb.k:                                             ; preds = %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i.i.i.i.i
  %i.az = load ptr, ptr %i.aw, align 8
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.az, i64 noundef 8, i64 noundef 8) #49
  br label %_ZSt8_DestroyI21QCPStatisticalBoxDataEvPT_.exit.i.i.i.i

_ZSt8_DestroyI21QCPStatisticalBoxDataEvPT_.exit.i.i.i.i: ; preds = %bb.k, %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.ba = getelementptr i8, ptr %.05.i.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ba, %i.au
  br i1 %.not.i.i.i.i, label %_ZN9QtPrivate16QGenericArrayOpsI21QCPStatisticalBoxDataE8truncateEm.exit, label %.lr.ph.i.i.i.i, !llvm.loop !75

_ZN9QtPrivate16QGenericArrayOpsI21QCPStatisticalBoxDataE8truncateEm.exit: ; preds = %_ZSt8_DestroyI21QCPStatisticalBoxDataEvPT_.exit.i.i.i.i, %bb.j
  store i64 %1, ptr %i.ar, align 8
  br label %_ZN17QArrayDataPointerI21QCPStatisticalBoxDataE13detachAndGrowEN10QArrayData14GrowthPositionExPPKS0_PS1_.exit

_ZN17QArrayDataPointerI21QCPStatisticalBoxDataE13detachAndGrowEN10QArrayData14GrowthPositionExPPKS0_PS1_.exit: ; preds = %.critedge.i, %_ZN9QtPrivate20q_relocate_overlap_nI21QCPStatisticalBoxDataxEEvPT_T0_S3_.exit.i.i.i, %bb.d, %bb.c, %bb.i, %_ZN9QtPrivate16QGenericArrayOpsI21QCPStatisticalBoxDataE8truncateEm.exit
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN17QArrayDataPointerI21QCPStatisticalBoxDataE13detachAndGrowEN10QArrayData14GrowthPositionExPPKS0_PS1_(ptr noundef align 8 dereferenceable_or_null(24) %0, i32 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 5 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %.critedge, label %_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE11needsDetachEv.exit

_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE11needsDetachEv.exit: ; preds = %bb.a
  %i.b = load atomic i32, ptr %i.a monotonic, align 4
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %.critedge, label %bb.b

bb.b:                                             ; preds = %_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE11needsDetachEv.exit
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  switch i32 %1, label %_ZN17QArrayDataPointerI21QCPStatisticalBoxDataE20tryReadjustFreeSpaceEN10QArrayData14GrowthPositionExPPKS0_.exit [
    i32 1, label %_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE16freeSpaceAtBeginEv.exit
    i32 0, label %_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE14freeSpaceAtEndEv.exit
  ]

_ZNK17QArrayDataPointerI21QCPStatisticalBoxDataE16freeSpaceAtBeginEv.exit: ; preds = %bb.c
  %i.d = getelementptr i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = add i64 %i.f, 23
  %i.h = and i64 %i.g, -8
  %i.i = ptrtoint ptr %i.e to i64
end_hunk_1
