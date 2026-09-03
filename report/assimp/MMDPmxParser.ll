Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/MMDPmxParser?download=true
inline.NumInlined: 1415
inline.NumDeleted: 972
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN3pmx8PmxModel4ReadEPSi:bb.a
  %.idx.i.i.i.i.i171 = mul i64 %i.rk, 80          ; 2 uses
  %i.rl = icmp eq i64 %i.rk, 0
  br i1 %i.rl, label %_ZNKSt14default_deleteIA_N3pmx8PmxFrameEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i, label %.preheader.preheader.i.i.i.i.i172

.preheader.preheader.i.i.i.i.i172:                ; preds = %bb.bd
  %i.rm = getelementptr inbounds i8, ptr %i.ri, i64 %.idx.i.i.i.i.i171
  br label %.preheader.i.i.i.i.i173

.preheader.i.i.i.i.i173:                          ; preds = %_ZN3pmx8PmxFrameD2Ev.exit.i.i.i.i.i, %.preheader.preheader.i.i.i.i.i172
  %i.rn = phi ptr [ %i.ro, %_ZN3pmx8PmxFrameD2Ev.exit.i.i.i.i.i ], [ %i.rm, %.preheader.preheader.i.i.i.i.i172 ] ; 5 uses
  %i.ro = getelementptr inbounds i8, ptr %i.rn, i64 -80 ; 3 uses
  %i.rp = getelementptr inbounds i8, ptr %i.rn, i64 -8
  %i.rq = load ptr, ptr %i.rp, align 8            ; 2 uses
  %.not.i.i.i.i.i.i.i174 = icmp eq ptr %i.rq, null
  br i1 %.not.i.i.i.i.i.i.i174, label %_ZNSt10unique_ptrIA_N3pmx15PmxFrameElementESt14default_deleteIS2_EED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt14default_deleteIA_N3pmx15PmxFrameElementEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIA_N3pmx15PmxFrameElementEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i.i.i.i: ; preds = %.preheader.i.i.i.i.i173
  call void @_ZdaPv(ptr noundef nonnull %i.rq) #20
  br label %_ZNSt10unique_ptrIA_N3pmx15PmxFrameElementESt14default_deleteIS2_EED2Ev.exit.i.i.i.i.i.i

_ZNSt10unique_ptrIA_N3pmx15PmxFrameElementESt14default_deleteIS2_EED2Ev.exit.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIA_N3pmx15PmxFrameElementEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i173
  %i.rr = getelementptr inbounds i8, ptr %i.rn, i64 -48
  %i.rs = load ptr, ptr %i.rr, align 8            ; 2 uses
  %i.rt = getelementptr inbounds i8, ptr %i.rn, i64 -32 ; 2 uses
  %i.ru = icmp eq ptr %i.rs, %i.rt
  br i1 %i.ru, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i176, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i175

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i175: ; preds = %_ZNSt10unique_ptrIA_N3pmx15PmxFrameElementESt14default_deleteIS2_EED2Ev.exit.i.i.i.i.i.i
  %i.rv = load i64, ptr %i.rt, align 8
  %i.rw = add i64 %i.rv, 1
  call void @_ZdlPvm(ptr noundef %i.rs, i64 noundef %i.rw) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i176

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i176: ; preds = %_ZNSt10unique_ptrIA_N3pmx15PmxFrameElementESt14default_deleteIS2_EED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i175
  %i.rx = load ptr, ptr %i.ro, align 8            ; 2 uses
  %i.ry = getelementptr inbounds i8, ptr %i.rn, i64 -64 ; 2 uses
  %i.rz = icmp eq ptr %i.rx, %i.ry
  br i1 %i.rz, label %_ZN3pmx8PmxFrameD2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i177

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i177: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i176
  %i.sa = load i64, ptr %i.ry, align 8
  %i.sb = add i64 %i.sa, 1
  call void @_ZdlPvm(ptr noundef %i.rx, i64 noundef %i.sb) #20
  br label %_ZN3pmx8PmxFrameD2Ev.exit.i.i.i.i.i

_ZN3pmx8PmxFrameD2Ev.exit.i.i.i.i.i:              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i176, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i177
  %i.sc = icmp eq ptr %i.ro, %i.ri
  br i1 %i.sc, label %_ZNKSt14default_deleteIA_N3pmx8PmxFrameEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i, label %.preheader.i.i.i.i.i173

_ZNKSt14default_deleteIA_N3pmx8PmxFrameEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i: ; preds = %_ZN3pmx8PmxFrameD2Ev.exit.i.i.i.i.i, %bb.bd
  %i.sd = or disjoint i64 %.idx.i.i.i.i.i171, 8
  call void @_ZdaPvm(ptr noundef nonnull %i.rj, i64 noundef %i.sd) #20
  br label %_ZNSt10unique_ptrIA_N3pmx8PmxFrameESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIA_N3pmx8PmxFrameESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIA_N3pmx8PmxFrameEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i, %_ZN3mmd11make_uniqueIA_N3pmx8PmxFrameEEENS_10_Unique_ifIT_E14_Unknown_boundEm.exit
  %i.se = load i32, ptr %i.qj, align 8
  %i.sf = icmp sgt i32 %i.se, 0
  br i1 %i.sf, label %.lr.ph263, label %._crit_edge264

.lr.ph260:                                        ; preds = %_ZNSt10unique_ptrIA_N3pmx8PmxMorphESt14default_deleteIS2_EED2Ev.exit, %.lr.ph260
  %indvars.iv284 = phi i64 [ %indvars.iv.next285, %.lr.ph260 ], [ 0, %_ZNSt10unique_ptrIA_N3pmx8PmxMorphESt14default_deleteIS2_EED2Ev.exit ] ; 2 uses
  %i.sg = load ptr, ptr %i.ps, align 8
  %i.sh = getelementptr inbounds nuw [128 x i8], ptr %i.sg, i64 %indvars.iv284
  call void @_ZN3pmx8PmxMorph4ReadEPSiPNS_10PmxSettingE(ptr noundef nonnull align 8 dereferenceable(128) %i.sh, ptr noundef nonnull %1, ptr noundef nonnull %i.v)
  %indvars.iv.next285 = add nuw nsw i64 %indvars.iv284, 1 ; 2 uses
  %i.si = load i32, ptr %i.oh, align 8
  %i.sj = sext i32 %i.si to i64
  %i.sk = icmp slt i64 %indvars.iv.next285, %i.sj
  br i1 %i.sk, label %.lr.ph260, label %._crit_edge261, !llvm.loop !78

._crit_edge264:                                   ; preds = %.lr.ph263, %_ZNSt10unique_ptrIA_N3pmx8PmxFrameESt14default_deleteIS2_EED2Ev.exit
  %i.sl = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 4 uses
  %i.sm = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.sl, i64 noundef 4) ; 0 uses
  %i.sn = load i32, ptr %i.sl, align 8            ; 2 uses
  %i.so = sext i32 %i.sn to i64                   ; 3 uses
  %i.sp = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.so, i64 136) ; 2 uses
  %i.sq = extractvalue { i64, i1 } %i.sp, 1
  %i.sr = extractvalue { i64, i1 } %i.sp, 0
  %i.ss = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.sr, i64 8) ; 2 uses
  %i.st = extractvalue { i64, i1 } %i.ss, 1
  %i.su = or i1 %i.sq, %i.st
  %i.sv = extractvalue { i64, i1 } %i.ss, 0
  %i.sw = select i1 %i.su, i64 -1, i64 %i.sv
  %i.sx = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.sw) #19, !noalias !94 ; 2 uses
  store i64 %i.so, ptr %i.sx, align 16, !noalias !94
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 8 ; 3 uses
  %i.sz = icmp eq i32 %i.sn, 0
  br i1 %i.sz, label %_ZN3mmd11make_uniqueIA_N3pmx12PmxRigidBodyEEENS_10_Unique_ifIT_E14_Unknown_boundEm.exit, label %bb.be

bb.be:                                            ; preds = %._crit_edge264
  %i.ta = getelementptr inbounds [136 x i8], ptr %i.sy, i64 %i.so
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bf, %bb.be
  %i.tb = phi ptr [ %i.sy, %bb.be ], [ %i.tm, %bb.bf ] ; 12 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 16 ; 2 uses
  store ptr %i.tc, ptr %i.tb, align 8, !noalias !94
  %i.td = getelementptr inbounds nuw i8, ptr %i.tb, i64 8
  store i64 0, ptr %i.td, align 8, !noalias !94
  store i8 0, ptr %i.tc, align 8, !noalias !94
  %i.te = getelementptr inbounds nuw i8, ptr %i.tb, i64 32
  %i.tf = getelementptr inbounds nuw i8, ptr %i.tb, i64 48 ; 2 uses
  store ptr %i.tf, ptr %i.te, align 8, !noalias !94
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tb, i64 40
  store i64 0, ptr %i.tg, align 8, !noalias !94
  store i8 0, ptr %i.tf, align 8, !noalias !94
  %i.th = getelementptr inbounds nuw i8, ptr %i.tb, i64 64
  store i32 0, ptr %i.th, align 8, !noalias !94
  %i.ti = getelementptr inbounds nuw i8, ptr %i.tb, i64 68
  store i8 0, ptr %i.ti, align 4, !noalias !94
  %i.tj = getelementptr inbounds nuw i8, ptr %i.tb, i64 70
  store i16 0, ptr %i.tj, align 2, !noalias !94
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tb, i64 72
  store i8 0, ptr %i.tk, align 8, !noalias !94
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tb, i64 76
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(57) %i.tl, i8 0, i64 57, i1 false), !noalias !94
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tb, i64 136 ; 2 uses
  %i.tn = icmp eq ptr %i.tm, %i.ta
  br i1 %i.tn, label %_ZN3mmd11make_uniqueIA_N3pmx12PmxRigidBodyEEENS_10_Unique_ifIT_E14_Unknown_boundEm.exit, label %bb.bf

_ZN3mmd11make_uniqueIA_N3pmx12PmxRigidBodyEEENS_10_Unique_ifIT_E14_Unknown_boundEm.exit: ; preds = %bb.bf, %._crit_edge264
  %i.to = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  %i.tp = load ptr, ptr %i.to, align 8            ; 4 uses
  store ptr %i.sy, ptr %i.to, align 8
  %.not.i.i.i.i190 = icmp eq ptr %i.tp, null
  br i1 %.not.i.i.i.i190, label %_ZNSt10unique_ptrIA_N3pmx12PmxRigidBodyESt14default_deleteIS2_EED2Ev.exit, label %bb.bg

bb.bg:                                            ; preds = %_ZN3mmd11make_uniqueIA_N3pmx12PmxRigidBodyEEENS_10_Unique_ifIT_E14_Unknown_boundEm.exit
  %i.tq = getelementptr inbounds i8, ptr %i.tp, i64 -8 ; 2 uses
  %i.tr = load i64, ptr %i.tq, align 8            ; 2 uses
  %.idx.i.i.i.i.i191 = mul i64 %i.tr, 136         ; 2 uses
  %i.ts = icmp eq i64 %i.tr, 0
  br i1 %i.ts, label %_ZNKSt14default_deleteIA_N3pmx12PmxRigidBodyEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i, label %.preheader.preheader.i.i.i.i.i192

.preheader.preheader.i.i.i.i.i192:                ; preds = %bb.bg
  %i.tt = getelementptr inbounds i8, ptr %i.tp, i64 %.idx.i.i.i.i.i191
  br label %.preheader.i.i.i.i.i193

.preheader.i.i.i.i.i193:                          ; preds = %_ZN3pmx12PmxRigidBodyD2Ev.exit.i.i.i.i.i, %.preheader.preheader.i.i.i.i.i192
  %i.tu = phi ptr [ %i.tv, %_ZN3pmx12PmxRigidBodyD2Ev.exit.i.i.i.i.i ], [ %i.tt, %.preheader.preheader.i.i.i.i.i192 ] ; 4 uses
  %i.tv = getelementptr inbounds i8, ptr %i.tu, i64 -136 ; 3 uses
  %i.tw = getelementptr inbounds i8, ptr %i.tu, i64 -104
  %i.tx = load ptr, ptr %i.tw, align 8            ; 2 uses
  %i.ty = getelementptr inbounds i8, ptr %i.tu, i64 -88 ; 2 uses
  %i.tz = icmp eq ptr %i.tx, %i.ty
  br i1 %i.tz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i195, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i194

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i194: ; preds = %.preheader.i.i.i.i.i193
  %i.ua = load i64, ptr %i.ty, align 8
  %i.ub = add i64 %i.ua, 1
  call void @_ZdlPvm(ptr noundef %i.tx, i64 noundef %i.ub) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i195

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i195: ; preds = %.preheader.i.i.i.i.i193, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i194
  %i.uc = load ptr, ptr %i.tv, align 8            ; 2 uses
  %i.ud = getelementptr inbounds i8, ptr %i.tu, i64 -120 ; 2 uses
  %i.ue = icmp eq ptr %i.uc, %i.ud
  br i1 %i.ue, label %_ZN3pmx12PmxRigidBodyD2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i196

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i196: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i195
  %i.uf = load i64, ptr %i.ud, align 8
  %i.ug = add i64 %i.uf, 1
  call void @_ZdlPvm(ptr noundef %i.uc, i64 noundef %i.ug) #20
  br label %_ZN3pmx12PmxRigidBodyD2Ev.exit.i.i.i.i.i

_ZN3pmx12PmxRigidBodyD2Ev.exit.i.i.i.i.i:         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i195, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i196
  %i.uh = icmp eq ptr %i.tv, %i.tp
  br i1 %i.uh, label %_ZNKSt14default_deleteIA_N3pmx12PmxRigidBodyEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i, label %.preheader.i.i.i.i.i193

_ZNKSt14default_deleteIA_N3pmx12PmxRigidBodyEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i: ; preds = %_ZN3pmx12PmxRigidBodyD2Ev.exit.i.i.i.i.i, %bb.bg
  %i.ui = add i64 %.idx.i.i.i.i.i191, 8
  call void @_ZdaPvm(ptr noundef nonnull %i.tq, i64 noundef %i.ui) #20
  br label %_ZNSt10unique_ptrIA_N3pmx12PmxRigidBodyESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIA_N3pmx12PmxRigidBodyESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIA_N3pmx12PmxRigidBodyEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i, %_ZN3mmd11make_uniqueIA_N3pmx12PmxRigidBodyEEENS_10_Unique_ifIT_E14_Unknown_boundEm.exit
  %i.uj = load i32, ptr %i.sl, align 8
  %i.uk = icmp sgt i32 %i.uj, 0
  br i1 %i.uk, label %.lr.ph266, label %._crit_edge267

.lr.ph263:                                        ; preds = %_ZNSt10unique_ptrIA_N3pmx8PmxFrameESt14default_deleteIS2_EED2Ev.exit, %.lr.ph263
  %indvars.iv287 = phi i64 [ %indvars.iv.next288, %.lr.ph263 ], [ 0, %_ZNSt10unique_ptrIA_N3pmx8PmxFrameESt14default_deleteIS2_EED2Ev.exit ] ; 2 uses
  %i.ul = load ptr, ptr %i.rh, align 8
  %i.um = getelementptr inbounds nuw [80 x i8], ptr %i.ul, i64 %indvars.iv287
  call void @_ZN3pmx8PmxFrame4ReadEPSiPNS_10PmxSettingE(ptr noundef nonnull align 8 dereferenceable(80) %i.um, ptr noundef nonnull %1, ptr noundef nonnull %i.v)
  %indvars.iv.next288 = add nuw nsw i64 %indvars.iv287, 1 ; 2 uses
  %i.un = load i32, ptr %i.qj, align 8
  %i.uo = sext i32 %i.un to i64
  %i.up = icmp slt i64 %indvars.iv.next288, %i.uo
  br i1 %i.up, label %.lr.ph263, label %._crit_edge264, !llvm.loop !81

._crit_edge267:                                   ; preds = %.lr.ph266, %_ZNSt10unique_ptrIA_N3pmx12PmxRigidBodyESt14default_deleteIS2_EED2Ev.exit
  %i.uq = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 4 uses
  %i.ur = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.uq, i64 noundef 4) ; 0 uses
  %i.us = load i32, ptr %i.uq, align 8            ; 2 uses
  %i.ut = sext i32 %i.us to i64                   ; 2 uses
  %i.uu = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ut, i64 176) ; 2 uses
  %i.uv = extractvalue { i64, i1 } %i.uu, 1
  %i.uw = extractvalue { i64, i1 } %i.uu, 0       ; 2 uses
  %i.ux = or disjoint i64 %i.uw, 8
  %i.uy = select i1 %i.uv, i64 -1, i64 %i.ux
  %i.uz = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.uy) #19, !noalias !95 ; 3 uses
  store i64 %i.ut, ptr %i.uz, align 16, !noalias !95
  %i.va = icmp eq i32 %i.us, 0
  br i1 %i.va, label %_ZN3mmd11make_uniqueIA_N3pmx8PmxJointEEENS_10_Unique_ifIT_E14_Unknown_boundEm.exit, label %.preheader

.preheader:                                       ; preds = %._crit_edge267, %.preheader
  %niter = phi i64 [ %.add.i.1, %.preheader ], [ 8, %._crit_edge267 ] ; 3 uses
  %.ptr.ptr.i.1 = getelementptr inbounds nuw i8, ptr %i.uz, i64 %niter ; 6 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i.1, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.vb, i8 0, i64 160, i1 false), !noalias !95
  store ptr %i.vb, ptr %.ptr.ptr.i.1, align 8, !noalias !95
  %i.vc = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i.1, i64 8
  store i64 0, ptr %i.vc, align 8, !noalias !95
  %i.vd = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i.1, i64 32
  %i.ve = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i.1, i64 48
  store ptr %i.ve, ptr %i.vd, align 8, !noalias !95
  %i.vf = getelementptr inbounds nuw i8, ptr %.ptr.ptr.i.1, i64 68
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(104) %i.vf, i8 0, i64 104, i1 false), !noalias !95
  %.add.i.1 = add nuw nsw i64 %niter, 176
  %niter.next.1 = add nuw nsw i64 %niter, 168
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %i.uw
  br i1 %niter.ncmp.1, label %_ZN3mmd11make_uniqueIA_N3pmx8PmxJointEEENS_10_Unique_ifIT_E14_Unknown_boundEm.exit, label %.preheader

_ZN3mmd11make_uniqueIA_N3pmx8PmxJointEEENS_10_Unique_ifIT_E14_Unknown_boundEm.exit: ; preds = %.preheader, %._crit_edge267
  %.ptr5.i = getelementptr inbounds nuw i8, ptr %i.uz, i64 8
  %i.vg = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  %i.vh = load ptr, ptr %i.vg, align 8            ; 4 uses
  store ptr %.ptr5.i, ptr %i.vg, align 8
  %.not.i.i.i.i208 = icmp eq ptr %i.vh, null
  br i1 %.not.i.i.i.i208, label %_ZNSt10unique_ptrIA_N3pmx8PmxJointESt14default_deleteIS2_EED2Ev.exit, label %bb.bh

bb.bh:                                            ; preds = %_ZN3mmd11make_uniqueIA_N3pmx8PmxJointEEENS_10_Unique_ifIT_E14_Unknown_boundEm.exit
  %i.vi = getelementptr inbounds i8, ptr %i.vh, i64 -8 ; 2 uses
  %i.vj = load i64, ptr %i.vi, align 8            ; 2 uses
  %.idx.i.i.i.i.i209 = mul i64 %i.vj, 176         ; 2 uses
  %i.vk = icmp eq i64 %i.vj, 0
  br i1 %i.vk, label %_ZNKSt14default_deleteIA_N3pmx8PmxJointEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i, label %.preheader.preheader.i.i.i.i.i210

.preheader.preheader.i.i.i.i.i210:                ; preds = %bb.bh
  %i.vl = getelementptr inbounds i8, ptr %i.vh, i64 %.idx.i.i.i.i.i209
  br label %.preheader.i.i.i.i.i211

.preheader.i.i.i.i.i211:                          ; preds = %_ZN3pmx8PmxJointD2Ev.exit.i.i.i.i.i, %.preheader.preheader.i.i.i.i.i210
  %i.vm = phi ptr [ %i.vn, %_ZN3pmx8PmxJointD2Ev.exit.i.i.i.i.i ], [ %i.vl, %.preheader.preheader.i.i.i.i.i210 ] ; 4 uses
  %i.vn = getelementptr inbounds i8, ptr %i.vm, i64 -176 ; 3 uses
  %i.vo = getelementptr inbounds i8, ptr %i.vm, i64 -144
  %i.vp = load ptr, ptr %i.vo, align 8            ; 2 uses
  %i.vq = getelementptr inbounds i8, ptr %i.vm, i64 -128 ; 2 uses
  %i.vr = icmp eq ptr %i.vp, %i.vq
  br i1 %i.vr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i213, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i212

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i212: ; preds = %.preheader.i.i.i.i.i211
  %i.vs = load i64, ptr %i.vq, align 8
  %i.vt = add i64 %i.vs, 1
  call void @_ZdlPvm(ptr noundef %i.vp, i64 noundef %i.vt) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i213

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i213: ; preds = %.preheader.i.i.i.i.i211, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i212
  %i.vu = load ptr, ptr %i.vn, align 8            ; 2 uses
  %i.vv = getelementptr inbounds i8, ptr %i.vm, i64 -160 ; 2 uses
  %i.vw = icmp eq ptr %i.vu, %i.vv
  br i1 %i.vw, label %_ZN3pmx8PmxJointD2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i214

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i214: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i213
  %i.vx = load i64, ptr %i.vv, align 8
  %i.vy = add i64 %i.vx, 1
  call void @_ZdlPvm(ptr noundef %i.vu, i64 noundef %i.vy) #20
  br label %_ZN3pmx8PmxJointD2Ev.exit.i.i.i.i.i

_ZN3pmx8PmxJointD2Ev.exit.i.i.i.i.i:              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i213, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i214
  %i.vz = icmp eq ptr %i.vn, %i.vh
  br i1 %i.vz, label %_ZNKSt14default_deleteIA_N3pmx8PmxJointEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i, label %.preheader.i.i.i.i.i211

_ZNKSt14default_deleteIA_N3pmx8PmxJointEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i: ; preds = %_ZN3pmx8PmxJointD2Ev.exit.i.i.i.i.i, %bb.bh
  %i.wa = or disjoint i64 %.idx.i.i.i.i.i209, 8
  call void @_ZdaPvm(ptr noundef nonnull %i.vi, i64 noundef %i.wa) #20
  br label %_ZNSt10unique_ptrIA_N3pmx8PmxJointESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIA_N3pmx8PmxJointESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIA_N3pmx8PmxJointEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit.i.i.i.i, %_ZN3mmd11make_uniqueIA_N3pmx8PmxJointEEENS_10_Unique_ifIT_E14_Unknown_boundEm.exit
  %i.wb = load i32, ptr %i.uq, align 8
  %i.wc = icmp sgt i32 %i.wb, 0
  br i1 %i.wc, label %.lr.ph269, label %._crit_edge270

.lr.ph266:                                        ; preds = %_ZNSt10unique_ptrIA_N3pmx12PmxRigidBodyESt14default_deleteIS2_EED2Ev.exit, %.lr.ph266
  %indvars.iv290 = phi i64 [ %indvars.iv.next291, %.lr.ph266 ], [ 0, %_ZNSt10unique_ptrIA_N3pmx12PmxRigidBodyESt14default_deleteIS2_EED2Ev.exit ] ; 2 uses
  %i.wd = load ptr, ptr %i.to, align 8
  %i.we = getelementptr inbounds nuw [136 x i8], ptr %i.wd, i64 %indvars.iv290
  call void @_ZN3pmx12PmxRigidBody4ReadEPSiPNS_10PmxSettingE(ptr noundef nonnull align 8 dereferenceable(133) %i.we, ptr noundef nonnull %1, ptr noundef nonnull %i.v)
  %indvars.iv.next291 = add nuw nsw i64 %indvars.iv290, 1 ; 2 uses
  %i.wf = load i32, ptr %i.sl, align 8
  %i.wg = sext i32 %i.wf to i64
  %i.wh = icmp slt i64 %indvars.iv.next291, %i.wg
  br i1 %i.wh, label %.lr.ph266, label %._crit_edge267, !llvm.loop !84

._crit_edge270:                                   ; preds = %.lr.ph269, %_ZNSt10unique_ptrIA_N3pmx8PmxJointESt14default_deleteIS2_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  ret void

.lr.ph269:                                        ; preds = %_ZNSt10unique_ptrIA_N3pmx8PmxJointESt14default_deleteIS2_EED2Ev.exit, %.lr.ph269
  %indvars.iv293 = phi i64 [ %indvars.iv.next294, %.lr.ph269 ], [ 0, %_ZNSt10unique_ptrIA_N3pmx8PmxJointESt14default_deleteIS2_EED2Ev.exit ] ; 2 uses
  %i.wi = load ptr, ptr %i.vg, align 8
  %i.wj = getelementptr inbounds nuw [176 x i8], ptr %i.wi, i64 %indvars.iv293
  call void @_ZN3pmx8PmxJoint4ReadEPSiPNS_10PmxSettingE(ptr noundef nonnull align 8 dereferenceable(172) %i.wj, ptr noundef nonnull %1, ptr noundef nonnull %i.v)
  %indvars.iv.next294 = add nuw nsw i64 %indvars.iv293, 1 ; 2 uses
  %i.wk = load i32, ptr %i.uq, align 8
  %i.wl = sext i32 %i.wk to i64
  %i.wm = icmp slt i64 %indvars.iv.next294, %i.wl
  br i1 %i.wm, label %.lr.ph269, label %._crit_edge270, !llvm.loop !85

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.d
  %.sink = phi ptr [ %i.g, %bb.d ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %.pn81.ph = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @__cxa_free_exception(ptr %.sink) #17
  br label %bb.bi

bb.bi:                                            ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn81 = phi { ptr, i32 } [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.pn81.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  resume { ptr, i32 } %.pn81

bb.bj:                                            ; preds = %bb.h
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_Z12ai_to_stringIfENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, float noundef %1) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %i.a = fpext float %1 to double
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %2, double noundef %i.a)
          to label %_ZNSolsEf.exit unwind label %bb.e ; 0 uses

_ZNSolsEf.exit:                                   ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !100)
  call void @llvm.experimental.noalias.scope.decl(metadata !101)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.c, ptr %0, align 8, !alias.scope !102
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8, !alias.scope !102
  store i8 0, ptr %i.c, align 8, !alias.scope !102
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !noalias !102 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !noalias !102 ; 2 uses
  %i.i = icmp ugt ptr %i.f, %i.h
  %.08.i.i.i = select i1 %i.i, ptr %i.f, ptr %i.h ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZNSolsEf.exit
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !noalias !102 ; 2 uses
  %i.l = ptrtoint ptr %.08.i.i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.k, i64 noundef %i.n)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %0, align 8, !alias.scope !102 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.c, align 8, !alias.scope !102
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #20
  br label %.body

bb.d:                                             ; preds = %_ZNSolsEf.exit
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.v = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.v, ptr %2, align 8
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.x = getelementptr i8, ptr %i.v, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %2, i64 %i.y
  store ptr %i.w, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.af = load i64, ptr %i.ad, align 8
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #20
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aa, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ah) #17
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ai) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void

bb.e:                                             ; preds = %bb.a
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.aj, %bb.e ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.p, %bb.c ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
end_hunk_0
