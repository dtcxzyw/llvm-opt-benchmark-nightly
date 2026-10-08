Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ThreadPlanStepOut?download=true
inline.NumInlined: 557
inline.NumDeleted: 317
begin_hunk_0_@_ZN12lldb_private17ThreadPlanStepOut10ShouldStopEPNS_5EventE:bb.a
  store ptr null, ptr %i.ap, align 8, !tbaa !103
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !82 ; 8 uses
  store ptr null, ptr %i.av, align 8, !tbaa !82
  %.not.i.i.i9 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i9, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 4 uses
  %i.ay = load atomic i64, ptr %i.ax acquire, align 8 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 4294967297
  %i.ba = trunc i64 %i.ay to i32                  ; 2 uses
  br i1 %i.az, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.ax, align 8, !tbaa !84
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  store i32 0, ptr %i.bb, align 4, !tbaa !85
  %i.bc = load ptr, ptr %i.aw, align 8, !tbaa !18
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load ptr, ptr %i.bd, align 8
  tail call void %i.be(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #17, !inline_history !299
  %i.bf = load ptr, ptr %i.aw, align 8, !tbaa !18
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8
  tail call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #17, !inline_history !299
  br label %.thread

bb.u:                                             ; preds = %bb.s
  %i.bi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i10 = icmp eq i8 %i.bi, 0
  br i1 %.not.i.i.i.i10, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bj = add nsw i32 %i.ba, -1
  store i32 %i.bj, ptr %i.ax, align 8, !tbaa !87
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i11

bb.w:                                             ; preds = %bb.u
  %i.bk = atomicrmw volatile add ptr %i.ax, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i11

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i11: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i12 = phi i32 [ %i.ba, %bb.v ], [ %i.bk, %bb.w ]
  %i.bl = icmp eq i32 %.0.i.i.i.i.i12, 1
  br i1 %i.bl, label %bb.x, label %.thread, !prof !88

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i11
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #17
  br label %.thread

bb.y:                                             ; preds = %bb.q
  %i.bm = load ptr, ptr %i.ap, align 8, !tbaa !104 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !18
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = tail call noundef zeroext i1 %i.bp(ptr noundef nonnull align 8 dereferenceable(224) %i.bm, ptr noundef %1) #17
  br label %bb.bd

_ZNSt12__shared_ptrIN12lldb_private10ThreadPlanELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit13: ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.br = tail call noundef nonnull align 8 dereferenceable(576) ptr @_ZN12lldb_private10ThreadPlan9GetThreadEv(ptr noundef nonnull align 8 dereferenceable(224) %0) #17, !noalias !303 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !18, !noalias !303
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 528
  %i.bu = load ptr, ptr %i.bt, align 8, !noalias !303
  call void %i.bu(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.23") align 8 %2, ptr noundef nonnull align 8 dereferenceable(576) %i.br, i1 noundef zeroext true) #17, !inline_history !7
  %i.bv = load ptr, ptr %2, align 8, !tbaa !130   ; 3 uses
  %.not29 = icmp eq ptr %i.bv, null
  br i1 %.not29, label %bb.ah, label %bb.z

bb.z:                                             ; preds = %_ZNSt12__shared_ptrIN12lldb_private10ThreadPlanELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit13
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !18
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = call noundef i32 %i.by(ptr noundef nonnull align 8 dereferenceable(112) %i.bv) #17
  %i.ca = icmp eq i32 %i.bz, 3
  br i1 %i.ca, label %bb.aa, label %bb.ah

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.cb = call noundef nonnull align 8 dereferenceable(576) ptr @_ZN12lldb_private10ThreadPlan9GetThreadEv(ptr noundef nonnull align 8 dereferenceable(224) %0) #17 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !18
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 232
  %i.ce = load ptr, ptr %i.cd, align 8
  call void %i.ce(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.57") align 8 %4, ptr noundef nonnull align 8 dereferenceable(576) %i.cb, i32 noundef 0) #17
  %i.cf = load ptr, ptr %4, align 8, !tbaa !91    ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !18
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 64
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = call noundef nonnull align 8 dereferenceable(32) ptr %i.ci(ptr noundef nonnull align 8 dereferenceable(608) %i.cf) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.cj, i64 32, i1 false), !tbaa.struct !98
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !82 ; 8 uses
  %.not.i.i = icmp eq ptr %i.cl, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN12lldb_private10StackFrameELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 4 uses
  %i.cn = load atomic i64, ptr %i.cm acquire, align 8 ; 2 uses
  %i.co = icmp eq i64 %i.cn, 4294967297
  %i.cp = trunc i64 %i.cn to i32                  ; 2 uses
  br i1 %i.co, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 0, ptr %i.cm, align 8, !tbaa !84
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 12
  store i32 0, ptr %i.cq, align 4, !tbaa !85
  %i.cr = load ptr, ptr %i.cl, align 8, !tbaa !18
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8
  call void %i.ct(ptr noundef nonnull align 8 dereferenceable(16) %i.cl) #17, !inline_history !1
  %i.cu = load ptr, ptr %i.cl, align 8, !tbaa !18
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8
  call void %i.cw(ptr noundef nonnull align 8 dereferenceable(16) %i.cl) #17, !inline_history !1
  br label %_ZNSt12__shared_ptrIN12lldb_private10StackFrameELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ad:                                            ; preds = %bb.ab
  %i.cx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i14 = icmp eq i8 %i.cx, 0
  br i1 %.not.i.i.i14, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cy = add nsw i32 %i.cp, -1
  store i32 %i.cy, ptr %i.cm, align 8, !tbaa !87
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.af:                                            ; preds = %bb.ad
  %i.cz = atomicrmw volatile add ptr %i.cm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.af, %bb.ae
  %.0.i.i.i.i = phi i32 [ %i.cp, %bb.ae ], [ %i.cz, %bb.af ]
  %i.da = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.da, label %bb.ag, label %_ZNSt12__shared_ptrIN12lldb_private10StackFrameELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !88

bb.ag:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cl) #17
  br label %_ZNSt12__shared_ptrIN12lldb_private10StackFrameELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12lldb_private10StackFrameELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.aa, %bb.ac, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.dc = call noundef zeroext i1 @_ZN12lldb_privateltERKNS_7StackIDES2_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.db) #17
  %i.dd = xor i1 %i.dc, true
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.ah

bb.ah:                                            ; preds = %_ZNSt12__shared_ptrIN12lldb_private10StackFrameELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.z, %_ZNSt12__shared_ptrIN12lldb_private10ThreadPlanELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit13
  %.1 = phi i1 [ %i.dd, %_ZNSt12__shared_ptrIN12lldb_private10StackFrameELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ false, %bb.z ], [ false, %_ZNSt12__shared_ptrIN12lldb_private10ThreadPlanELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit13 ]
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !82 ; 8 uses
  %.not.i.i15 = icmp eq ptr %i.df, null
  br i1 %.not.i.i15, label %bb.ao, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8 ; 4 uses
  %i.dh = load atomic i64, ptr %i.dg acquire, align 8 ; 2 uses
  %i.di = icmp eq i64 %i.dh, 4294967297
  %i.dj = trunc i64 %i.dh to i32                  ; 2 uses
  br i1 %i.di, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store i32 0, ptr %i.dg, align 8, !tbaa !84
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 12
  store i32 0, ptr %i.dk, align 4, !tbaa !85
  %i.dl = load ptr, ptr %i.df, align 8, !tbaa !18
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr noundef nonnull align 8 dereferenceable(16) %i.df) #17, !inline_history !8
  %i.do = load ptr, ptr %i.df, align 8, !tbaa !18
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8
  call void %i.dq(ptr noundef nonnull align 8 dereferenceable(16) %i.df) #17, !inline_history !8
  br label %bb.ao

bb.ak:                                            ; preds = %bb.ai
  %i.dr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i16 = icmp eq i8 %i.dr, 0
  br i1 %.not.i.i.i16, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ds = add nsw i32 %i.dj, -1
  store i32 %i.ds, ptr %i.dg, align 8, !tbaa !87
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i17

bb.am:                                            ; preds = %bb.ak
  %i.dt = atomicrmw volatile add ptr %i.dg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i17

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i17: ; preds = %bb.am, %bb.al
  %.0.i.i.i.i18 = phi i32 [ %i.dj, %bb.al ], [ %i.dt, %bb.am ]
  %i.du = icmp eq i32 %.0.i.i.i.i18, 1
  br i1 %i.du, label %bb.an, label %bb.ao, !prof !88

bb.an:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i17
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.df) #17
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i17, %bb.aj, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br i1 %.1, label %.thread, label %bb.bd

.thread:                                          ; preds = %bb.d, %bb.n, %bb.r, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i11, %bb.x, %bb.ao
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.dx = call noundef zeroext i1 @_ZN12lldb_private24ThreadPlanShouldStopHere28InvokeShouldStopHereCallbackEN4lldb15FrameComparisonERNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(44) %i.dv, i32 noundef 5, ptr noundef nonnull align 8 dereferenceable(40) %i.dw) #17
  br i1 %i.dx, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.thread
  call void @_ZN12lldb_private17ThreadPlanStepOut20CalculateReturnValueEv(ptr noundef nonnull align 8 dereferenceable(592) %0)
  call void @_ZN12lldb_private10ThreadPlan15SetPlanCompleteEb(ptr noundef nonnull align 8 dereferenceable(224) %0, i1 noundef zeroext true) #17
  br label %bb.bd

bb.aq:                                            ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.dz = load ptr, ptr %i.dv, align 8, !tbaa !18
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8
  call void %i.eb(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.0") align 8 %5, ptr noundef nonnull align 8 dereferenceable(44) %i.dv, ptr noundef nonnull align 4 dereferenceable(4) %i.dy, i32 noundef 5, ptr noundef nonnull align 8 dereferenceable(40) %i.dw) #17
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.ed = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.ef = load <2 x ptr>, ptr %5, align 16, !tbaa !94
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.eg = load ptr, ptr %i.ee, align 8, !tbaa !82 ; 8 uses
  store <2 x ptr> %i.ef, ptr %i.ec, align 8, !tbaa !94
  %.not.i.i.i.i19 = icmp eq ptr %i.eg, null
  br i1 %.not.i.i.i.i19, label %_ZNSt10shared_ptrIN12lldb_private10ThreadPlanEEaSEOS2_.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8 ; 4 uses
  %i.ei = load atomic i64, ptr %i.eh acquire, align 8 ; 2 uses
  %i.ej = icmp eq i64 %i.ei, 4294967297
  %i.ek = trunc i64 %i.ei to i32                  ; 2 uses
  br i1 %i.ej, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  store i32 0, ptr %i.eh, align 8, !tbaa !84
  %i.el = getelementptr inbounds nuw i8, ptr %i.eg, i64 12
  store i32 0, ptr %i.el, align 4, !tbaa !85
  %i.em = load ptr, ptr %i.eg, align 8, !tbaa !18
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.eo = load ptr, ptr %i.en, align 8
  call void %i.eo(ptr noundef nonnull align 8 dereferenceable(16) %i.eg) #17, !inline_history !302
  %i.ep = load ptr, ptr %i.eg, align 8, !tbaa !18
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 24
  %i.er = load ptr, ptr %i.eq, align 8
  call void %i.er(ptr noundef nonnull align 8 dereferenceable(16) %i.eg) #17, !inline_history !302
  br label %_ZNSt10shared_ptrIN12lldb_private10ThreadPlanEEaSEOS2_.exit

bb.at:                                            ; preds = %bb.ar
  %i.es = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i = icmp eq i8 %i.es, 0
  br i1 %.not.i.i.i.i.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.et = add nsw i32 %i.ek, -1
  store i32 %i.et, ptr %i.eh, align 8, !tbaa !87
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.av:                                            ; preds = %bb.at
  %i.eu = atomicrmw volatile add ptr %i.eh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.av, %bb.au
  %.0.i.i.i.i.i.i = phi i32 [ %i.ek, %bb.au ], [ %i.eu, %bb.av ]
  %i.ev = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ev, label %bb.aw, label %_ZNSt10shared_ptrIN12lldb_private10ThreadPlanEEaSEOS2_.exit, !prof !88

bb.aw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.eg) #17
  br label %_ZNSt10shared_ptrIN12lldb_private10ThreadPlanEEaSEOS2_.exit

_ZNSt10shared_ptrIN12lldb_private10ThreadPlanEEaSEOS2_.exit: ; preds = %bb.aq, %bb.as, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.aw
  %i.ew = load ptr, ptr %i.ed, align 8, !tbaa !82 ; 8 uses
  %.not.i.i20 = icmp eq ptr %i.ew, null
  br i1 %.not.i.i20, label %_ZNSt12__shared_ptrIN12lldb_private10ThreadPlanELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt10shared_ptrIN12lldb_private10ThreadPlanEEaSEOS2_.exit
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8 ; 4 uses
  %i.ey = load atomic i64, ptr %i.ex acquire, align 8 ; 2 uses
  %i.ez = icmp eq i64 %i.ey, 4294967297
  %i.fa = trunc i64 %i.ey to i32                  ; 2 uses
  br i1 %i.ez, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  store i32 0, ptr %i.ex, align 8, !tbaa !84
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ew, i64 12
  store i32 0, ptr %i.fb, align 4, !tbaa !85
  %i.fc = load ptr, ptr %i.ew, align 8, !tbaa !18
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %i.fe = load ptr, ptr %i.fd, align 8
  call void %i.fe(ptr noundef nonnull align 8 dereferenceable(16) %i.ew) #17, !inline_history !6
  %i.ff = load ptr, ptr %i.ew, align 8, !tbaa !18
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 24
  %i.fh = load ptr, ptr %i.fg, align 8
  call void %i.fh(ptr noundef nonnull align 8 dereferenceable(16) %i.ew) #17, !inline_history !6
  br label %_ZNSt12__shared_ptrIN12lldb_private10ThreadPlanELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.az:                                            ; preds = %bb.ax
  %i.fi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i21 = icmp eq i8 %i.fi, 0
  br i1 %.not.i.i.i21, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fj = add nsw i32 %i.fa, -1
  store i32 %i.fj, ptr %i.ex, align 8, !tbaa !87
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i22

bb.bb:                                            ; preds = %bb.az
  %i.fk = atomicrmw volatile add ptr %i.ex, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i22

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i22: ; preds = %bb.bb, %bb.ba
  %.0.i.i.i.i23 = phi i32 [ %i.fa, %bb.ba ], [ %i.fk, %bb.bb ]
  %i.fl = icmp eq i32 %.0.i.i.i.i23, 1
  br i1 %i.fl, label %bb.bc, label %_ZNSt12__shared_ptrIN12lldb_private10ThreadPlanELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !88

bb.bc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i22
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ew) #17
  br label %_ZNSt12__shared_ptrIN12lldb_private10ThreadPlanELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12lldb_private10ThreadPlanELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN12lldb_private10ThreadPlanEEaSEOS2_.exit, %bb.ay, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i22, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.bd

bb.bd:                                            ; preds = %bb.ao, %_ZNSt12__shared_ptrIN12lldb_private10ThreadPlanELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.ap, %_ZNSt12__shared_ptrIN12lldb_private10ThreadPlanELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit, %bb.l, %bb.o, %bb.y, %bb.a
  %.18 = phi i1 [ true, %bb.a ], [ true, %_ZNSt12__shared_ptrIN12lldb_private10ThreadPlanELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit ], [ %i.bq, %bb.y ], [ %i.ad, %bb.l ], [ %i.ao, %bb.o ], [ true, %bb.ap ], [ false, %_ZNSt12__shared_ptrIN12lldb_private10ThreadPlanELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ false, %bb.ao ]
  ret i1 %.18
}

declare noundef zeroext i1 @_ZN12lldb_private10ThreadPlan14IsPlanCompleteEv(ptr noundef nonnull align 8 dereferenceable(224)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN12lldb_private17ThreadPlanStepOut10StopOthersEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(592) %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.b = load i8, ptr %i.a, align 8, !tbaa !75, !range !99, !noundef !100
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN12lldb_private17ThreadPlanStepOut15GetPlanRunStateEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #7 align 2 {
bb.a:
  ret i32 6
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN12lldb_private17ThreadPlanStepOut12DoWillResumeEN4lldb9StateTypeEb(ptr noundef nonnull align 8 dereferenceable(592) %0, i32 %1, i1 noundef zeroext %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.std::shared_ptr.356", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !104
  %i.c = icmp ne ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = icmp ne ptr %i.e, null
  %or.cond = select i1 %i.c, i1 true, i1 %i.f
  br i1 %or.cond, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !73
  %i.i = icmp ne i32 %i.h, 0                      ; 2 uses
  %brmerge.not = and i1 %2, %i.i
  br i1 %brmerge.not, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.j = tail call noundef nonnull align 8 dereferenceable(2200) ptr @_ZN12lldb_private10ThreadPlan9GetTargetEv(ptr noundef nonnull align 8 dereferenceable(224) %0) #17
  %i.k = load i32, ptr %i.g, align 8, !tbaa !73
  call void @_ZN12lldb_private6Target17GetBreakpointByIDEi(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.356") align 8 %3, ptr noundef nonnull align 8 dereferenceable(2200) %i.j, i32 noundef %i.k) #17
  %i.l = load ptr, ptr %3, align 8, !tbaa !119    ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !82   ; 8 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN12lldb_private10BreakpointELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  %i.p = load atomic i64, ptr %i.o acquire, align 8 ; 2 uses
  %i.q = icmp eq i64 %i.p, 4294967297
  %i.r = trunc i64 %i.p to i32                    ; 2 uses
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.o, align 8, !tbaa !84
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store i32 0, ptr %i.s, align 4, !tbaa !85
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #17, !inline_history !4
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #17, !inline_history !4
  br label %_ZNSt12__shared_ptrIN12lldb_private10BreakpointELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i = icmp eq i8 %i.z, 0
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = add nsw i32 %i.r, -1
  store i32 %i.aa, ptr %i.o, align 8, !tbaa !87
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ab = atomicrmw volatile add ptr %i.o, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i = phi i32 [ %i.r, %bb.g ], [ %i.ab, %bb.h ]
  %i.ac = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ac, label %bb.i, label %_ZNSt12__shared_ptrIN12lldb_private10BreakpointELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !88

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #17
  br label %_ZNSt12__shared_ptrIN12lldb_private10BreakpointELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12lldb_private10BreakpointELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.c, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNSt12__shared_ptrIN12lldb_private10BreakpointELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ad = load ptr, ptr %i.l, align 8, !tbaa !18
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(568) %i.l, i1 noundef zeroext true) #17
  br label %bb.k

bb.k:                                             ; preds = %bb.b, %bb.j, %_ZNSt12__shared_ptrIN12lldb_private10BreakpointELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.a
  %.0 = phi i1 [ %i.i, %bb.b ], [ true, %bb.a ], [ true, %bb.j ], [ true, %_ZNSt12__shared_ptrIN12lldb_private10BreakpointELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  ret i1 %.0
}

declare void @_ZN12lldb_private6Target17GetBreakpointByIDEi(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.356") align 8, ptr noundef nonnull align 8 dereferenceable(2200), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN12lldb_private17ThreadPlanStepOut8WillStopEv(ptr noundef nonnull align 8 dereferenceable(592) %0) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.std::shared_ptr.356", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !73
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.c = tail call noundef nonnull align 8 dereferenceable(2200) ptr @_ZN12lldb_private10ThreadPlan9GetTargetEv(ptr noundef nonnull align 8 dereferenceable(224) %0) #17
  %i.d = load i32, ptr %i.a, align 8, !tbaa !73
  call void @_ZN12lldb_private6Target17GetBreakpointByIDEi(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.356") align 8 %1, ptr noundef nonnull align 8 dereferenceable(2200) %i.c, i32 noundef %i.d) #17
  %i.e = load ptr, ptr %1, align 8, !tbaa !119    ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !82   ; 8 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN12lldb_private10BreakpointELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.i = load atomic i64, ptr %i.h acquire, align 8 ; 2 uses
  %i.j = icmp eq i64 %i.i, 4294967297
  %i.k = trunc i64 %i.i to i32                    ; 2 uses
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.h, align 8, !tbaa !84
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 0, ptr %i.l, align 4, !tbaa !85
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #17, !inline_history !4
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #17, !inline_history !4
  br label %_ZNSt12__shared_ptrIN12lldb_private10BreakpointELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = add nsw i32 %i.k, -1
  store i32 %i.t, ptr %i.h, align 8, !tbaa !87
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.u = atomicrmw volatile add ptr %i.h, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i = phi i32 [ %i.k, %bb.f ], [ %i.u, %bb.g ]
  %i.v = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.v, label %bb.h, label %_ZNSt12__shared_ptrIN12lldb_private10BreakpointELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !88

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #17
  br label %_ZNSt12__shared_ptrIN12lldb_private10BreakpointELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12lldb_private10BreakpointELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  %.not3 = icmp eq ptr %i.e, null
  br i1 %.not3, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNSt12__shared_ptrIN12lldb_private10BreakpointELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.w = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(568) %i.e, i1 noundef zeroext false) #17
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt12__shared_ptrIN12lldb_private10BreakpointELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.i, %bb.a
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN12lldb_private17ThreadPlanStepOut15MischiefManagedEv(ptr noundef nonnull align 8 dereferenceable(592) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN12lldb_private10ThreadPlan14IsPlanCompleteEv(ptr noundef nonnull align 8 dereferenceable(224) %0) #17 ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.f
end_hunk_0
