Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AppleObjCRuntimeV1?download=true
inline.NumInlined: 583
inline.NumDeleted: 380
begin_hunk_0_@_ZN12lldb_private18AppleObjCRuntimeV132UpdateISAToDescriptorMapIfNeededEv:bb.a
  %i.cn = and i32 %i.ci, %i.cm                    ; 3 uses
  %i.co = zext i32 %i.cn to i64                   ; 2 uses
  %i.cp = lshr i64 %i.co, 5
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !29, !noalias !240
  %i.cs = and i32 %i.cn, 31
  %i.ct = lshr i32 %i.cr, %i.cs
  %i.cu = trunc i32 %i.ct to i1
  br i1 %i.cu, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i, !prof !158

.lr.ph.i.i.i.i:                                   ; preds = %bb.o, %bb.p
  %i.cv = phi i64 [ %i.db, %bb.p ], [ %i.co, %bb.o ]
  %.017.i.i.i.i = phi i32 [ %i.da, %bb.p ], [ %i.cn, %bb.o ]
  %i.cw = getelementptr inbounds nuw [24 x i8], ptr %i.ce, i64 %i.cv ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !51, !noalias !240
  %i.cy = icmp eq i64 %i.cx, %i.cd
  br i1 %i.cy, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapImSt10shared_ptrIN12lldb_private19ObjCLanguageRuntime15ClassDescriptorEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS6_EEEEmS6_S8_SB_E4findERKm.exit.loopexit.i, label %bb.p, !prof !159

bb.p:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cz = add nuw i32 %.017.i.i.i.i, 1
  %i.da = and i32 %i.cz, %i.ci                    ; 3 uses
  %i.db = zext i32 %i.da to i64                   ; 2 uses
  %i.dc = lshr i64 %i.db, 5
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.dc
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !29, !noalias !240
  %i.df = and i32 %i.da, 31
  %i.dg = lshr i32 %i.de, %i.df
  %i.dh = trunc i32 %i.dg to i1
  br i1 %i.dh, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i, !prof !160

.loopexit.i.i.i:                                  ; preds = %bb.p, %bb.o, %bb.n
  %i.di = zext i32 %i.cg to i64                   ; 2 uses
  %i.dj = getelementptr inbounds nuw [24 x i8], ptr %i.ce, i64 %i.di
  br label %_ZNK12lldb_private19ObjCLanguageRuntime11ISAIsCachedEm.exit

_ZNK4llvm12DenseMapBaseINS_8DenseMapImSt10shared_ptrIN12lldb_private19ObjCLanguageRuntime15ClassDescriptorEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS6_EEEEmS6_S8_SB_E4findERKm.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i
  %.pre.i = zext i32 %i.cg to i64
  br label %_ZNK12lldb_private19ObjCLanguageRuntime11ISAIsCachedEm.exit

_ZNK12lldb_private19ObjCLanguageRuntime11ISAIsCachedEm.exit: ; preds = %.loopexit.i.i.i, %_ZNK4llvm12DenseMapBaseINS_8DenseMapImSt10shared_ptrIN12lldb_private19ObjCLanguageRuntime15ClassDescriptorEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS6_EEEEmS6_S8_SB_E4findERKm.exit.loopexit.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZNK4llvm12DenseMapBaseINS_8DenseMapImSt10shared_ptrIN12lldb_private19ObjCLanguageRuntime15ClassDescriptorEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS6_EEEEmS6_S8_SB_E4findERKm.exit.loopexit.i ], [ %i.di, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.cw, %_ZNK4llvm12DenseMapBaseINS_8DenseMapImSt10shared_ptrIN12lldb_private19ObjCLanguageRuntime15ClassDescriptorEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS6_EEEEmS6_S8_SB_E4findERKm.exit.loopexit.i ], [ %i.dj, %.loopexit.i.i.i ]
  %i.dk = getelementptr inbounds nuw [24 x i8], ptr %i.ce, i64 %.pre-phi.i
  %.not131 = icmp eq ptr %.lcssa.sink.i.i.i, %i.dk
  br i1 %.not131, label %bb.q, label %.loopexit

bb.q:                                             ; preds = %_ZNK12lldb_private19ObjCLanguageRuntime11ISAIsCachedEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.dl = call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #24 ; 3 uses
  store ptr %i.w, ptr %8, align 8, !tbaa !66
  store ptr %i.o, ptr %i.bx, align 8, !tbaa !31
  %i.dm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i.i = icmp eq i8 %i.dm, 0
  br i1 %.not.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dn = load i32, ptr %i.q, align 8, !tbaa !29
  %i.do = add nsw i32 %i.dn, 1
  store i32 %i.do, ptr %i.q, align 8, !tbaa !29
  br label %_ZNSt10shared_ptrIN12lldb_private7ProcessEEC2ERKS2_.exit

bb.s:                                             ; preds = %bb.q
  %i.dp = atomicrmw volatile add ptr %i.q, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN12lldb_private7ProcessEEC2ERKS2_.exit

_ZNSt10shared_ptrIN12lldb_private7ProcessEEC2ERKS2_.exit: ; preds = %bb.r, %bb.s
  call void @_ZN12lldb_private18AppleObjCRuntimeV117ClassDescriptorV1C1EmSt10shared_ptrINS_7ProcessEE(ptr noundef nonnull align 8 dereferenceable(88) %i.dl, i64 noundef %i.cd, ptr nofree noundef nonnull align 8 dereferenceable(16) %8) #23
  store ptr %i.dl, ptr %7, align 8, !tbaa !25
  store ptr null, ptr %i.by, align 8, !tbaa !31
  %i.dq = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24 ; 5 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  store i32 1, ptr %i.dr, align 8, !tbaa !33
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 12
  store i32 1, ptr %i.ds, align 4, !tbaa !34
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN12lldb_private18AppleObjCRuntimeV117ClassDescriptorV1ELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.dq, align 8, !tbaa !17
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  store ptr %i.dl, ptr %i.dt, align 8, !tbaa !79
  store ptr %i.dq, ptr %i.by, align 8, !tbaa !31
  %i.du = load ptr, ptr %i.bx, align 8, !tbaa !31 ; 8 uses
  %.not.i.i69 = icmp eq ptr %i.du, null
  br i1 %.not.i.i69, label %_ZNSt12__shared_ptrIN12lldb_private7ProcessELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZNSt10shared_ptrIN12lldb_private7ProcessEEC2ERKS2_.exit
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8 ; 4 uses
  %i.dw = load atomic i64, ptr %i.dv acquire, align 8 ; 2 uses
  %i.dx = icmp eq i64 %i.dw, 4294967297
  %i.dy = trunc i64 %i.dw to i32                  ; 2 uses
  br i1 %i.dx, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.dv, align 8, !tbaa !33
  %i.dz = getelementptr inbounds nuw i8, ptr %i.du, i64 12
  store i32 0, ptr %i.dz, align 4, !tbaa !34
  %i.ea = load ptr, ptr %i.du, align 8, !tbaa !17
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8
  call void %i.ec(ptr noundef nonnull align 8 dereferenceable(16) %i.du) #23, !inline_history !3
  %i.ed = load ptr, ptr %i.du, align 8, !tbaa !17
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  %i.ef = load ptr, ptr %i.ee, align 8
  call void %i.ef(ptr noundef nonnull align 8 dereferenceable(16) %i.du) #23, !inline_history !3
  br label %_ZNSt12__shared_ptrIN12lldb_private7ProcessELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.v:                                             ; preds = %bb.t
  %i.eg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i70 = icmp eq i8 %i.eg, 0
  br i1 %.not.i.i.i70, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eh = add nsw i32 %i.dy, -1
  store i32 %i.eh, ptr %i.dv, align 8, !tbaa !29
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.ei = atomicrmw volatile add ptr %i.dv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i = phi i32 [ %i.dy, %bb.w ], [ %i.ei, %bb.x ]
  %i.ej = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ej, label %bb.y, label %_ZNSt12__shared_ptrIN12lldb_private7ProcessELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !35

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.du) #23
  br label %_ZNSt12__shared_ptrIN12lldb_private7ProcessELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12lldb_private7ProcessELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN12lldb_private7ProcessEEC2ERKS2_.exit, %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.y
  br i1 %.not68, label %_ZN12lldb_private19ObjCLanguageRuntime8AddClassEmRKSt10shared_ptrINS0_15ClassDescriptorEE.exit, label %bb.z

bb.z:                                             ; preds = %_ZNSt12__shared_ptrIN12lldb_private7ProcessELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ek = call noundef zeroext i1 @_ZNK12lldb_private3Log10GetVerboseEv(ptr noundef nonnull align 8 dereferenceable(104) %.0.i.i) #23
  br i1 %i.ek, label %bb.aa, label %_ZN12lldb_private19ObjCLanguageRuntime8AddClassEmRKSt10shared_ptrINS0_15ClassDescriptorEE.exit

bb.aa:                                            ; preds = %bb.z
  call void (ptr, ptr, i64, ptr, i64, ptr, ...) @_ZN12lldb_private3Log7FormatfEN4llvm9StringRefES2_PKcz(ptr noundef nonnull align 8 dereferenceable(104) %.0.i.i, ptr nonnull @.str.3, i64 114, ptr nonnull @__func__._ZN12lldb_private18AppleObjCRuntimeV132UpdateISAToDescriptorMapIfNeededEv, i64 32, ptr noundef nonnull @.str.4, i64 noundef %i.cd) #23
  br label %_ZN12lldb_private19ObjCLanguageRuntime8AddClassEmRKSt10shared_ptrINS0_15ClassDescriptorEE.exit

_ZN12lldb_private19ObjCLanguageRuntime8AddClassEmRKSt10shared_ptrINS0_15ClassDescriptorEE.exit: ; preds = %bb.aa, %bb.z, %_ZNSt12__shared_ptrIN12lldb_private7ProcessELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.cd, ptr %i.b, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapImSt10shared_ptrIN12lldb_private19ObjCLanguageRuntime15ClassDescriptorEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS6_EEEEmS6_S8_SB_E16insert_or_assignIRKS6_EESt4pairINS_16DenseMapIteratorImS6_S8_SB_Lb0EEEbERKmOT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.662") align 8 %2, ptr noundef nonnull align 1 dereferenceable(1) %i.bu, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.el = load ptr, ptr %i.by, align 8, !tbaa !31 ; 8 uses
  %.not.i.i72 = icmp eq ptr %i.el, null
  br i1 %.not.i.i72, label %_ZNSt12__shared_ptrIN12lldb_private19ObjCLanguageRuntime15ClassDescriptorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZN12lldb_private19ObjCLanguageRuntime8AddClassEmRKSt10shared_ptrINS0_15ClassDescriptorEE.exit
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8 ; 4 uses
  %i.en = load atomic i64, ptr %i.em acquire, align 8 ; 2 uses
  %i.eo = icmp eq i64 %i.en, 4294967297
  %i.ep = trunc i64 %i.en to i32                  ; 2 uses
  br i1 %i.eo, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 0, ptr %i.em, align 8, !tbaa !33
  %i.eq = getelementptr inbounds nuw i8, ptr %i.el, i64 12
  store i32 0, ptr %i.eq, align 4, !tbaa !34
  %i.er = load ptr, ptr %i.el, align 8, !tbaa !17
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.et = load ptr, ptr %i.es, align 8
  call void %i.et(ptr noundef nonnull align 8 dereferenceable(16) %i.el) #23, !inline_history !0
  %i.eu = load ptr, ptr %i.el, align 8, !tbaa !17
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8
  call void %i.ew(ptr noundef nonnull align 8 dereferenceable(16) %i.el) #23, !inline_history !0
  br label %_ZNSt12__shared_ptrIN12lldb_private19ObjCLanguageRuntime15ClassDescriptorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ad:                                            ; preds = %bb.ab
  %i.ex = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i73 = icmp eq i8 %i.ex, 0
  br i1 %.not.i.i.i73, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ey = add nsw i32 %i.ep, -1
  store i32 %i.ey, ptr %i.em, align 8, !tbaa !29
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i74

bb.af:                                            ; preds = %bb.ad
  %i.ez = atomicrmw volatile add ptr %i.em, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i74

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i74: ; preds = %bb.af, %bb.ae
  %.0.i.i.i.i75 = phi i32 [ %i.ep, %bb.ae ], [ %i.ez, %bb.af ]
  %i.fa = icmp eq i32 %.0.i.i.i.i75, 1
  br i1 %i.fa, label %bb.ag, label %_ZNSt12__shared_ptrIN12lldb_private19ObjCLanguageRuntime15ClassDescriptorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !35

bb.ag:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i74
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.el) #23
  br label %_ZNSt12__shared_ptrIN12lldb_private19ObjCLanguageRuntime15ClassDescriptorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12lldb_private19ObjCLanguageRuntime15ClassDescriptorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN12lldb_private19ObjCLanguageRuntime8AddClassEmRKSt10shared_ptrINS0_15ClassDescriptorEE.exit, %bb.ac, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i74, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %.loopexit

.lr.ph:                                           ; preds = %bb.l, %bb.bb
  %.0138 = phi i32 [ %i.ib, %bb.bb ], [ 0, %bb.l ]
  %.056137 = phi i64 [ %i.ic, %bb.bb ], [ %i.cd, %bb.l ] ; 2 uses
  %i.fb = load ptr, ptr %i.d, align 8, !tbaa !44
  %i.fc = call noundef i64 @_ZN12lldb_private7Process21ReadPointerFromMemoryEmRNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(3224) %i.fb, i64 noundef %.056137, ptr noundef nonnull align 8 dereferenceable(40) %4) #23 ; 7 uses
  %i.fd = add i64 %i.fc, -1
  %or.cond = icmp ult i64 %i.fd, -2
  br i1 %or.cond, label %bb.ah, label %bb.bb

bb.ah:                                            ; preds = %.lr.ph
  %i.fe = load ptr, ptr %i.bu, align 8, !tbaa !155, !noalias !241 ; 3 uses
  %i.ff = load ptr, ptr %i.bv, align 8, !tbaa !156, !noalias !241 ; 2 uses
  %i.fg = load i32, ptr %i.bw, align 4, !tbaa !157, !noalias !241 ; 4 uses
  %i.fh = icmp eq i32 %i.fg, 0
  br i1 %i.fh, label %.loopexit.i.i.i76, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fi = add i32 %i.fg, -1                       ; 2 uses
  %i.fj = mul i64 %i.fc, -4658895280553007687     ; 2 uses
  %i.fk = lshr i64 %i.fj, 31
  %i.fl = xor i64 %i.fk, %i.fj
  %i.fm = trunc i64 %i.fl to i32
  %i.fn = and i32 %i.fi, %i.fm                    ; 3 uses
  %i.fo = zext i32 %i.fn to i64                   ; 2 uses
  %i.fp = lshr i64 %i.fo, 5
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.fp
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !29, !noalias !242
  %i.fs = and i32 %i.fn, 31
  %i.ft = lshr i32 %i.fr, %i.fs
  %i.fu = trunc i32 %i.ft to i1
  br i1 %i.fu, label %.lr.ph.i.i.i.i79, label %.loopexit.i.i.i76, !prof !158

.lr.ph.i.i.i.i79:                                 ; preds = %bb.ai, %bb.aj
  %i.fv = phi i64 [ %i.gb, %bb.aj ], [ %i.fo, %bb.ai ]
  %.017.i.i.i.i80 = phi i32 [ %i.ga, %bb.aj ], [ %i.fn, %bb.ai ]
  %i.fw = getelementptr inbounds nuw [24 x i8], ptr %i.fe, i64 %i.fv ; 2 uses
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !51, !noalias !242
  %i.fy = icmp eq i64 %i.fc, %i.fx
  br i1 %i.fy, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapImSt10shared_ptrIN12lldb_private19ObjCLanguageRuntime15ClassDescriptorEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS6_EEEEmS6_S8_SB_E4findERKm.exit.loopexit.i81, label %bb.aj, !prof !159

bb.aj:                                            ; preds = %.lr.ph.i.i.i.i79
  %i.fz = add nuw i32 %.017.i.i.i.i80, 1
  %i.ga = and i32 %i.fz, %i.fi                    ; 3 uses
  %i.gb = zext i32 %i.ga to i64                   ; 2 uses
  %i.gc = lshr i64 %i.gb, 5
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.gc
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !29, !noalias !242
  %i.gf = and i32 %i.ga, 31
  %i.gg = lshr i32 %i.ge, %i.gf
  %i.gh = trunc i32 %i.gg to i1
  br i1 %i.gh, label %.lr.ph.i.i.i.i79, label %.loopexit.i.i.i76, !prof !160

.loopexit.i.i.i76:                                ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.gi = zext i32 %i.fg to i64                   ; 2 uses
  %i.gj = getelementptr inbounds nuw [24 x i8], ptr %i.fe, i64 %i.gi
  br label %_ZNK12lldb_private19ObjCLanguageRuntime11ISAIsCachedEm.exit83

_ZNK4llvm12DenseMapBaseINS_8DenseMapImSt10shared_ptrIN12lldb_private19ObjCLanguageRuntime15ClassDescriptorEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS6_EEEEmS6_S8_SB_E4findERKm.exit.loopexit.i81: ; preds = %.lr.ph.i.i.i.i79
  %.pre.i82 = zext i32 %i.fg to i64
  br label %_ZNK12lldb_private19ObjCLanguageRuntime11ISAIsCachedEm.exit83

_ZNK12lldb_private19ObjCLanguageRuntime11ISAIsCachedEm.exit83: ; preds = %.loopexit.i.i.i76, %_ZNK4llvm12DenseMapBaseINS_8DenseMapImSt10shared_ptrIN12lldb_private19ObjCLanguageRuntime15ClassDescriptorEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS6_EEEEmS6_S8_SB_E4findERKm.exit.loopexit.i81
  %.pre-phi.i77 = phi i64 [ %.pre.i82, %_ZNK4llvm12DenseMapBaseINS_8DenseMapImSt10shared_ptrIN12lldb_private19ObjCLanguageRuntime15ClassDescriptorEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS6_EEEEmS6_S8_SB_E4findERKm.exit.loopexit.i81 ], [ %i.gi, %.loopexit.i.i.i76 ]
  %.lcssa.sink.i.i.i78 = phi ptr [ %i.fw, %_ZNK4llvm12DenseMapBaseINS_8DenseMapImSt10shared_ptrIN12lldb_private19ObjCLanguageRuntime15ClassDescriptorEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS6_EEEEmS6_S8_SB_E4findERKm.exit.loopexit.i81 ], [ %i.gj, %.loopexit.i.i.i76 ]
  %i.gk = getelementptr inbounds nuw [24 x i8], ptr %i.fe, i64 %.pre-phi.i77
  %.not132 = icmp eq ptr %.lcssa.sink.i.i.i78, %i.gk
  br i1 %.not132, label %bb.ak, label %bb.bb

bb.ak:                                            ; preds = %_ZNK12lldb_private19ObjCLanguageRuntime11ISAIsCachedEm.exit83
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.gl = call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #24 ; 3 uses
  store ptr %i.w, ptr %10, align 8, !tbaa !66
  store ptr %i.o, ptr %i.bz, align 8, !tbaa !31
  %i.gm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i.i85 = icmp eq i8 %i.gm, 0
  br i1 %.not.i.i.i.i85, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gn = load i32, ptr %i.q, align 8, !tbaa !29
  %i.go = add nsw i32 %i.gn, 1
  store i32 %i.go, ptr %i.q, align 8, !tbaa !29
  br label %_ZNSt10shared_ptrIN12lldb_private7ProcessEEC2ERKS2_.exit86

bb.am:                                            ; preds = %bb.ak
  %i.gp = atomicrmw volatile add ptr %i.q, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN12lldb_private7ProcessEEC2ERKS2_.exit86

_ZNSt10shared_ptrIN12lldb_private7ProcessEEC2ERKS2_.exit86: ; preds = %bb.al, %bb.am
  call void @_ZN12lldb_private18AppleObjCRuntimeV117ClassDescriptorV1C1EmSt10shared_ptrINS_7ProcessEE(ptr noundef nonnull align 8 dereferenceable(88) %i.gl, i64 noundef %i.fc, ptr nofree noundef nonnull align 8 dereferenceable(16) %10) #23
  store ptr %i.gl, ptr %9, align 8, !tbaa !25
  store ptr null, ptr %i.ca, align 8, !tbaa !31
  %i.gq = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24 ; 5 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  store i32 1, ptr %i.gr, align 8, !tbaa !33
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 12
  store i32 1, ptr %i.gs, align 4, !tbaa !34
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN12lldb_private18AppleObjCRuntimeV117ClassDescriptorV1ELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.gq, align 8, !tbaa !17
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  store ptr %i.gl, ptr %i.gt, align 8, !tbaa !79
  store ptr %i.gq, ptr %i.ca, align 8, !tbaa !31
  %i.gu = load ptr, ptr %i.bz, align 8, !tbaa !31 ; 8 uses
  %.not.i.i87 = icmp eq ptr %i.gu, null
  br i1 %.not.i.i87, label %_ZNSt12__shared_ptrIN12lldb_private7ProcessELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit91, label %bb.an

bb.an:                                            ; preds = %_ZNSt10shared_ptrIN12lldb_private7ProcessEEC2ERKS2_.exit86
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8 ; 4 uses
  %i.gw = load atomic i64, ptr %i.gv acquire, align 8 ; 2 uses
  %i.gx = icmp eq i64 %i.gw, 4294967297
  %i.gy = trunc i64 %i.gw to i32                  ; 2 uses
  br i1 %i.gx, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store i32 0, ptr %i.gv, align 8, !tbaa !33
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gu, i64 12
  store i32 0, ptr %i.gz, align 4, !tbaa !34
  %i.ha = load ptr, ptr %i.gu, align 8, !tbaa !17
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %i.hc = load ptr, ptr %i.hb, align 8
  call void %i.hc(ptr noundef nonnull align 8 dereferenceable(16) %i.gu) #23, !inline_history !3
  %i.hd = load ptr, ptr %i.gu, align 8, !tbaa !17
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 24
  %i.hf = load ptr, ptr %i.he, align 8
  call void %i.hf(ptr noundef nonnull align 8 dereferenceable(16) %i.gu) #23, !inline_history !3
  br label %_ZNSt12__shared_ptrIN12lldb_private7ProcessELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit91

bb.ap:                                            ; preds = %bb.an
  %i.hg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i88 = icmp eq i8 %i.hg, 0
  br i1 %.not.i.i.i88, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hh = add nsw i32 %i.gy, -1
  store i32 %i.hh, ptr %i.gv, align 8, !tbaa !29
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i89

bb.ar:                                            ; preds = %bb.ap
  %i.hi = atomicrmw volatile add ptr %i.gv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i89

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i89: ; preds = %bb.ar, %bb.aq
  %.0.i.i.i.i90 = phi i32 [ %i.gy, %bb.aq ], [ %i.hi, %bb.ar ]
  %i.hj = icmp eq i32 %.0.i.i.i.i90, 1
  br i1 %i.hj, label %bb.as, label %_ZNSt12__shared_ptrIN12lldb_private7ProcessELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit91, !prof !35

bb.as:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i89
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gu) #23
  br label %_ZNSt12__shared_ptrIN12lldb_private7ProcessELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit91

_ZNSt12__shared_ptrIN12lldb_private7ProcessELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit91: ; preds = %_ZNSt10shared_ptrIN12lldb_private7ProcessEEC2ERKS2_.exit86, %bb.ao, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i89, %bb.as
  br i1 %.not68, label %11, label %bb.at

bb.at:                                            ; preds = %_ZNSt12__shared_ptrIN12lldb_private7ProcessELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit91
  %i.hk = call noundef zeroext i1 @_ZNK12lldb_private3Log10GetVerboseEv(ptr noundef nonnull align 8 dereferenceable(104) %.0.i.i) #23
  br i1 %i.hk, label %bb.au, label %11

bb.au:                                            ; preds = %bb.at
  call void (ptr, ptr, i64, ptr, i64, ptr, ...) @_ZN12lldb_private3Log7FormatfEN4llvm9StringRefES2_PKcz(ptr noundef nonnull align 8 dereferenceable(104) %.0.i.i, ptr nonnull @.str.3, i64 114, ptr nonnull @__func__._ZN12lldb_private18AppleObjCRuntimeV132UpdateISAToDescriptorMapIfNeededEv, i64 32, ptr noundef nonnull @.str.4, i64 noundef %i.fc) #23
  br label %11

11:                                               ; preds = %bb.au, %bb.at, %_ZNSt12__shared_ptrIN12lldb_private7ProcessELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit91
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.fc, ptr %i.a, align 8, !tbaa !51
  %.not.i92.not = icmp eq i64 %i.fc, 0
  br i1 %.not.i92.not, label %_ZN12lldb_private19ObjCLanguageRuntime8AddClassEmRKSt10shared_ptrINS0_15ClassDescriptorEE.exit93, label %12

12:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapImSt10shared_ptrIN12lldb_private19ObjCLanguageRuntime15ClassDescriptorEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS6_EEEEmS6_S8_SB_E16insert_or_assignIRKS6_EESt4pairINS_16DenseMapIteratorImS6_S8_SB_Lb0EEEbERKmOT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.662") align 8 %1, ptr noundef nonnull align 1 dereferenceable(1) %i.bu, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %_ZN12lldb_private19ObjCLanguageRuntime8AddClassEmRKSt10shared_ptrINS0_15ClassDescriptorEE.exit93

_ZN12lldb_private19ObjCLanguageRuntime8AddClassEmRKSt10shared_ptrINS0_15ClassDescriptorEE.exit93: ; preds = %11, %12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.hl = load ptr, ptr %i.ca, align 8, !tbaa !31 ; 8 uses
  %.not.i.i94 = icmp eq ptr %i.hl, null
  br i1 %.not.i.i94, label %_ZNSt12__shared_ptrIN12lldb_private19ObjCLanguageRuntime15ClassDescriptorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit98, label %bb.av

bb.av:                                            ; preds = %_ZN12lldb_private19ObjCLanguageRuntime8AddClassEmRKSt10shared_ptrINS0_15ClassDescriptorEE.exit93
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 8 ; 4 uses
  %i.hn = load atomic i64, ptr %i.hm acquire, align 8 ; 2 uses
  %i.ho = icmp eq i64 %i.hn, 4294967297
  %i.hp = trunc i64 %i.hn to i32                  ; 2 uses
  br i1 %i.ho, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  store i32 0, ptr %i.hm, align 8, !tbaa !33
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hl, i64 12
  store i32 0, ptr %i.hq, align 4, !tbaa !34
  %i.hr = load ptr, ptr %i.hl, align 8, !tbaa !17
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  %i.ht = load ptr, ptr %i.hs, align 8
  call void %i.ht(ptr noundef nonnull align 8 dereferenceable(16) %i.hl) #23, !inline_history !0
  %i.hu = load ptr, ptr %i.hl, align 8, !tbaa !17
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 24
  %i.hw = load ptr, ptr %i.hv, align 8
  call void %i.hw(ptr noundef nonnull align 8 dereferenceable(16) %i.hl) #23, !inline_history !0
  br label %_ZNSt12__shared_ptrIN12lldb_private19ObjCLanguageRuntime15ClassDescriptorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit98

bb.ax:                                            ; preds = %bb.av
  %i.hx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i95 = icmp eq i8 %i.hx, 0
  br i1 %.not.i.i.i95, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.hy = add nsw i32 %i.hp, -1
  store i32 %i.hy, ptr %i.hm, align 8, !tbaa !29
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i96

bb.az:                                            ; preds = %bb.ax
  %i.hz = atomicrmw volatile add ptr %i.hm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i96

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i96: ; preds = %bb.az, %bb.ay
  %.0.i.i.i.i97 = phi i32 [ %i.hp, %bb.ay ], [ %i.hz, %bb.az ]
  %i.ia = icmp eq i32 %.0.i.i.i.i97, 1
  br i1 %i.ia, label %bb.ba, label %_ZNSt12__shared_ptrIN12lldb_private19ObjCLanguageRuntime15ClassDescriptorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit98, !prof !35

bb.ba:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i96
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hl) #23
  br label %_ZNSt12__shared_ptrIN12lldb_private19ObjCLanguageRuntime15ClassDescriptorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit98

_ZNSt12__shared_ptrIN12lldb_private19ObjCLanguageRuntime15ClassDescriptorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit98: ; preds = %_ZN12lldb_private19ObjCLanguageRuntime8AddClassEmRKSt10shared_ptrINS0_15ClassDescriptorEE.exit93, %bb.aw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i96, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.bb

bb.bb:                                            ; preds = %.lr.ph, %_ZNSt12__shared_ptrIN12lldb_private19ObjCLanguageRuntime15ClassDescriptorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit98, %_ZNK12lldb_private19ObjCLanguageRuntime11ISAIsCachedEm.exit83
  %i.ib = add nuw i32 %.0138, 1                   ; 2 uses
  %i.ic = add i64 %.056137, %i.ar
  %exitcond.not = icmp eq i32 %i.ib, %i.cb
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !227

.loopexit:                                        ; preds = %bb.bb, %_ZNK12lldb_private19ObjCLanguageRuntime11ISAIsCachedEm.exit, %_ZNSt12__shared_ptrIN12lldb_private19ObjCLanguageRuntime15ClassDescriptorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.m, %bb.l
  %i.id = add nuw i32 %.057139, 1                 ; 2 uses
  %exitcond146.not = icmp eq i32 %i.id, %i.at
  br i1 %exitcond146.not, label %.loopexit133, label %bb.l, !llvm.loop !228

.loopexit133:                                     ; preds = %.loopexit, %bb.k, %_ZN12lldb_private18AppleObjCRuntimeV118HashTableSignature11NeedsUpdateEjjm.exit.thread, %_ZN12lldb_private18AppleObjCRuntimeV118HashTableSignature11NeedsUpdateEjjm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @_ZN12lldb_private13DataExtractorD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.bc

bb.bc:                                            ; preds = %.loopexit133, %bb.i
  call void @_ZN12lldb_private14DataBufferHeapD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN12lldb_private6StatusD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.bd

bb.bd:                                            ; preds = %bb.h, %bb.bc
  %i.ie = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !31 ; 8 uses
  %.not.i.i99 = icmp eq ptr %i.if, null
  br i1 %.not.i.i99, label %bb.bk, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 8 ; 4 uses
  %i.ih = load atomic i64, ptr %i.ig acquire, align 8 ; 2 uses
  %i.ii = icmp eq i64 %i.ih, 4294967297
  %i.ij = trunc i64 %i.ih to i32                  ; 2 uses
  br i1 %i.ii, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  store i32 0, ptr %i.ig, align 8, !tbaa !33
  %i.ik = getelementptr inbounds nuw i8, ptr %i.if, i64 12
  store i32 0, ptr %i.ik, align 4, !tbaa !34
  %i.il = load ptr, ptr %i.if, align 8, !tbaa !17
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 16
  %i.in = load ptr, ptr %i.im, align 8
  call void %i.in(ptr noundef nonnull align 8 dereferenceable(16) %i.if) #23, !inline_history !1
  %i.io = load ptr, ptr %i.if, align 8, !tbaa !17
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 24
  %i.iq = load ptr, ptr %i.ip, align 8
  call void %i.iq(ptr noundef nonnull align 8 dereferenceable(16) %i.if) #23, !inline_history !1
  br label %bb.bk

bb.bg:                                            ; preds = %bb.be
  %i.ir = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i100 = icmp eq i8 %i.ir, 0
  br i1 %.not.i.i.i100, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.is = add nsw i32 %i.ij, -1
  store i32 %i.is, ptr %i.ig, align 8, !tbaa !29
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i101

bb.bi:                                            ; preds = %bb.bg
  %i.it = atomicrmw volatile add ptr %i.ig, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i101

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i101: ; preds = %bb.bi, %bb.bh
  %.0.i.i.i.i102 = phi i32 [ %i.ij, %bb.bh ], [ %i.it, %bb.bi ]
  %i.iu = icmp eq i32 %.0.i.i.i.i102, 1
  br i1 %i.iu, label %bb.bj, label %bb.bk, !prof !35

bb.bj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i101
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.if) #23
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i101, %bb.bf, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.iv = load atomic i64, ptr %i.q acquire, align 8 ; 2 uses
  %i.iw = icmp eq i64 %i.iv, 4294967297
  %i.ix = trunc i64 %i.iv to i32                  ; 2 uses
  br i1 %i.iw, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  store i32 0, ptr %i.q, align 8, !tbaa !33
  %i.iy = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 0, ptr %i.iy, align 4, !tbaa !34
  %i.iz = load ptr, ptr %i.o, align 8, !tbaa !17
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  %i.jb = load ptr, ptr %i.ja, align 8
  call void %i.jb(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #23, !inline_history !3
  %i.jc = load ptr, ptr %i.o, align 8, !tbaa !17
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 24
  %i.je = load ptr, ptr %i.jd, align 8
  call void %i.je(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #23, !inline_history !3
  br label %_ZNSt12__shared_ptrIN12lldb_private7ProcessELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit107

bb.bm:                                            ; preds = %bb.bk
  %i.jf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !26
  %.not.i.i.i104 = icmp eq i8 %i.jf, 0
  br i1 %.not.i.i.i104, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.jg = add nsw i32 %i.ix, -1
  store i32 %i.jg, ptr %i.q, align 8, !tbaa !29
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i105

bb.bo:                                            ; preds = %bb.bm
  %i.jh = atomicrmw volatile add ptr %i.q, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i105

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i105: ; preds = %bb.bo, %bb.bn
  %.0.i.i.i.i106 = phi i32 [ %i.ix, %bb.bn ], [ %i.jh, %bb.bo ]
  %i.ji = icmp eq i32 %.0.i.i.i.i106, 1
  br i1 %i.ji, label %bb.bp, label %_ZNSt12__shared_ptrIN12lldb_private7ProcessELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit107, !prof !35

bb.bp:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i105
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #23
  br label %_ZNSt12__shared_ptrIN12lldb_private7ProcessELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit107

bb.bq:                                            ; preds = %bb.a
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i32 -1, ptr %i.jj, align 8, !tbaa !234
  br label %_ZNSt12__shared_ptrIN12lldb_private7ProcessELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit107

.critedge:                                        ; preds = %_ZNSt23enable_shared_from_thisIN12lldb_private7ProcessEE16shared_from_thisEv.exit
  %i.jk = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !31 ; 8 uses
  %.not.i.i108 = icmp eq ptr %i.jl, null
  br i1 %.not.i.i108, label %bb.bx, label %bb.br

bb.br:                                            ; preds = %.critedge
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 8 ; 4 uses
  %i.jn = load atomic i64, ptr %i.jm acquire, align 8 ; 2 uses
  %i.jo = icmp eq i64 %i.jn, 4294967297
  %i.jp = trunc i64 %i.jn to i32                  ; 2 uses
  br i1 %i.jo, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  store i32 0, ptr %i.jm, align 8, !tbaa !33
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jl, i64 12
  store i32 0, ptr %i.jq, align 4, !tbaa !34
  %i.jr = load ptr, ptr %i.jl, align 8, !tbaa !17
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 16
  %i.jt = load ptr, ptr %i.js, align 8
  call void %i.jt(ptr noundef nonnull align 8 dereferenceable(16) %i.jl) #23, !inline_history !1
  %i.ju = load ptr, ptr %i.jl, align 8, !tbaa !17
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 24
  %i.jw = load ptr, ptr %i.jv, align 8
end_hunk_0
