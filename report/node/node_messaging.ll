inline.NumInlined: 4628
inline.NumDeleted: 2061
begin_hunk_0_@_ZN4node6worker7Message11DeserializeEPNS_11EnvironmentEN2v85LocalINS4_7ContextEEEPNS5_INS4_5ValueEEE:bb.a
  %.not.i.i80 = icmp eq ptr %i.eb, %i.ec
  br i1 %.not.i.i80, label %_ZNSt6vectorISt10unique_ptrIN4node6worker12TransferDataESt14default_deleteIS3_EESaIS6_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.critedge66, %_ZSt8_DestroyISt10unique_ptrIN4node6worker12TransferDataESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.eh, %_ZSt8_DestroyISt10unique_ptrIN4node6worker12TransferDataESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i ], [ %i.ec, %.critedge66 ] ; 2 uses
  %i.ed = load ptr, ptr %.05.i.i.i.i, align 8     ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ed, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN4node6worker12TransferDataESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN4node6worker12TransferDataEEclEPS2_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4node6worker12TransferDataEEclEPS2_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ee = load ptr, ptr %i.ed, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8
  call void %i.eg(ptr noundef nonnull align 8 dereferenceable(8) %i.ed) #29, !inline_history !31
  br label %_ZSt8_DestroyISt10unique_ptrIN4node6worker12TransferDataESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN4node6worker12TransferDataESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4node6worker12TransferDataEEclEPS2_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.eh = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i81 = icmp eq ptr %i.eh, %i.eb
  br i1 %.not.i.i.i.i81, label %_ZSt8_DestroyIPSt10unique_ptrIN4node6worker12TransferDataESt14default_deleteIS3_EEEvT_S8_.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !32

_ZSt8_DestroyIPSt10unique_ptrIN4node6worker12TransferDataESt14default_deleteIS3_EEEvT_S8_.exit.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4node6worker12TransferDataESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i
  store ptr %i.ec, ptr %i.p, align 8
  br label %_ZNSt6vectorISt10unique_ptrIN4node6worker12TransferDataESt14default_deleteIS3_EESaIS6_EE5clearEv.exit

_ZNSt6vectorISt10unique_ptrIN4node6worker12TransferDataESt14default_deleteIS3_EESaIS6_EE5clearEv.exit: ; preds = %.critedge66, %_ZSt8_DestroyIPSt10unique_ptrIN4node6worker12TransferDataESt14default_deleteIS3_EEEvT_S8_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8
  %i.el = load ptr, ptr %i.ei, align 8            ; 2 uses
  %.not162 = icmp eq ptr %i.ek, %i.el
  br i1 %.not162, label %._crit_edge, label %.lr.ph154

.lr.ph154:                                        ; preds = %_ZNSt6vectorISt10unique_ptrIN4node6worker12TransferDataESt14default_deleteIS3_EESaIS6_EE5clearEv.exit
  %i.em = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  br label %bb.v

._crit_edge:                                      ; preds = %_ZN2v811LocalVectorINS_17SharedArrayBufferEE9push_backERKNS_5LocalIS1_EE.exit, %_ZNSt6vectorISt10unique_ptrIN4node6worker12TransferDataESt14default_deleteIS3_EESaIS6_EE5clearEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4node6worker12_GLOBAL__N_120DeserializerDelegateE, i64 16), ptr %11, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store ptr null, ptr %i.er, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %1, ptr %i.es, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %5, ptr %i.et, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %11, i64 32
  store ptr %9, ptr %i.eu, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %11, i64 40
  store ptr %i.ep, ptr %i.ev, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %11, i64 48
  store ptr %i.eq, ptr %i.ew, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  %i.ex = load ptr, ptr %i.m, align 8
  %i.ey = load ptr, ptr %i.a, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fa = load i64, ptr %i.ez, align 8
  call void @_ZN2v817ValueDeserializerC1EPNS_7IsolateEPKhmPNS0_8DelegateE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef %i.ex, ptr noundef %i.ey, i64 noundef %i.fa, ptr noundef nonnull %11) #29
  store ptr %12, ptr %i.er, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.fd = load ptr, ptr %i.fc, align 8
  %i.fe = load ptr, ptr %i.fb, align 8            ; 2 uses
  %.not163 = icmp eq ptr %i.fd, %i.fe
  br i1 %.not163, label %._crit_edge158, label %.lr.ph157

.lr.ph157:                                        ; preds = %._crit_edge
  %i.ff = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  br label %bb.aj

bb.v:                                             ; preds = %.lr.ph154, %_ZN2v811LocalVectorINS_17SharedArrayBufferEE9push_backERKNS_5LocalIS1_EE.exit
  %i.fg = phi ptr [ %i.el, %.lr.ph154 ], [ %i.hu, %_ZN2v811LocalVectorINS_17SharedArrayBufferEE9push_backERKNS_5LocalIS1_EE.exit ]
  %i.fh = phi i64 [ 0, %.lr.ph154 ], [ %i.hs, %_ZN2v811LocalVectorINS_17SharedArrayBufferEE9push_backERKNS_5LocalIS1_EE.exit ]
  %.055153 = phi i32 [ 0, %.lr.ph154 ], [ %i.hr, %_ZN2v811LocalVectorINS_17SharedArrayBufferEE9push_backERKNS_5LocalIS1_EE.exit ]
  %i.fi = load ptr, ptr %i.m, align 8
  %i.fj = getelementptr inbounds nuw [16 x i8], ptr %i.fg, i64 %i.fh ; 2 uses
  %i.fk = load ptr, ptr %i.fj, align 8
  store ptr %i.fk, ptr %10, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8            ; 3 uses
  store ptr %i.fm, ptr %i.em, align 8
  %.not.i.i.i = icmp eq ptr %i.fm, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN2v812BackingStoreEEC2ERKS2_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8 ; 3 uses
  %i.fo = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i82 = icmp eq i8 %i.fo, 0
  br i1 %.not.i.i.i.i82, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fp = load i32, ptr %i.fn, align 4
  %i.fq = add nsw i32 %i.fp, 1
  store i32 %i.fq, ptr %i.fn, align 4
  br label %_ZNSt10shared_ptrIN2v812BackingStoreEEC2ERKS2_.exit

bb.y:                                             ; preds = %bb.w
  %i.fr = atomicrmw volatile add ptr %i.fn, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN2v812BackingStoreEEC2ERKS2_.exit

_ZNSt10shared_ptrIN2v812BackingStoreEEC2ERKS2_.exit: ; preds = %bb.v, %bb.x, %bb.y
  %i.fs = call ptr @_ZN2v817SharedArrayBuffer3NewEPNS_7IsolateESt10shared_ptrINS_12BackingStoreEE(ptr noundef %i.fi, ptr noundef nonnull %10) #29
  %i.ft = load ptr, ptr %i.em, align 8            ; 8 uses
  %.not.i.i83 = icmp eq ptr %i.ft, null
  br i1 %.not.i.i83, label %_ZNSt12__shared_ptrIN2v812BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZNSt10shared_ptrIN2v812BackingStoreEEC2ERKS2_.exit
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8 ; 4 uses
  %i.fv = load atomic i64, ptr %i.fu acquire, align 8 ; 2 uses
  %i.fw = icmp eq i64 %i.fv, 4294967297
  %i.fx = trunc i64 %i.fv to i32                  ; 2 uses
  br i1 %i.fw, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.fu, align 8
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ft, i64 12
  store i32 0, ptr %i.fy, align 4
  %i.fz = load ptr, ptr %i.ft, align 8
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  %i.gb = load ptr, ptr %i.ga, align 8
  call void %i.gb(ptr noundef nonnull align 8 dereferenceable(16) %i.ft) #29, !inline_history !33
  %i.gc = load ptr, ptr %i.ft, align 8
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 24
  %i.ge = load ptr, ptr %i.gd, align 8
  call void %i.ge(ptr noundef nonnull align 8 dereferenceable(16) %i.ft) #29, !inline_history !33
  br label %_ZNSt12__shared_ptrIN2v812BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ab:                                            ; preds = %bb.z
  %i.gf = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i84 = icmp eq i8 %i.gf, 0
  br i1 %.not.i.i.i84, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gg = add nsw i32 %i.fx, -1
  store i32 %i.gg, ptr %i.fu, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.gh = atomicrmw volatile add ptr %i.fu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i85 = phi i32 [ %i.fx, %bb.ac ], [ %i.gh, %bb.ad ]
  %i.gi = icmp eq i32 %.0.i.i.i.i85, 1
  br i1 %i.gi, label %bb.ae, label %_ZNSt12__shared_ptrIN2v812BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !5

bb.ae:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ft) #29
  br label %_ZNSt12__shared_ptrIN2v812BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2v812BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN2v812BackingStoreEEC2ERKS2_.exit, %bb.aa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ae
  %i.gj = ptrtoint ptr %i.fs to i64               ; 2 uses
  %i.gk = load ptr, ptr %i.en, align 8            ; 5 uses
  %i.gl = load ptr, ptr %i.eo, align 8
  %.not.i.i.i86 = icmp eq ptr %i.gk, %i.gl
  br i1 %.not.i.i.i86, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_ZNSt12__shared_ptrIN2v812BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  store i64 %i.gj, ptr %i.gk, align 8
  %i.gm = load ptr, ptr %i.en, align 8
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  store ptr %i.gn, ptr %i.en, align 8
  br label %_ZN2v811LocalVectorINS_17SharedArrayBufferEE9push_backERKNS_5LocalIS1_EE.exit

bb.ag:                                            ; preds = %_ZNSt12__shared_ptrIN2v812BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.go = load ptr, ptr %9, align 8               ; 7 uses
  %i.gp = ptrtoint ptr %i.gk to i64               ; 2 uses
  %i.gq = ptrtoint ptr %i.go to i64               ; 3 uses
  %i.gr = sub i64 %i.gp, %i.gq                    ; 4 uses
  %i.gs = icmp eq i64 %i.gr, 9223372036854775800
  br i1 %i.gs, label %bb.ah, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_17SharedArrayBufferEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.ah:                                            ; preds = %bb.ag
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.78) #30
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_17SharedArrayBufferEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.ag
  %i.gt = ashr exact i64 %i.gr, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.gt, i64 1)
  %i.gu = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.gt ; 2 uses
  %i.gv = icmp ult i64 %i.gu, %i.gt
  %i.gw = call i64 @llvm.umin.i64(i64 %i.gu, i64 1152921504606846975)
  %i.gx = select i1 %i.gv, i64 1152921504606846975, i64 %i.gw ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.gx, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.gy = shl nuw nsw i64 %i.gx, 3
  %i.gz = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gy) #31 ; 8 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.gr
  store i64 %i.gj, ptr %i.ha, align 8
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.go, %i.gk
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_17SharedArrayBufferEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_17SharedArrayBufferEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.hb = ptrtoaddr ptr %i.gz to i64
  %14 = sub i64 %i.gp, %i.gq
  %15 = add i64 %14, -8                           ; 2 uses
  %i.hc = lshr i64 %15, 3
  %i.hd = add nuw nsw i64 %i.hc, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %15, 24
  %i.he = sub i64 %i.hb, %i.gq
  %diff.check = icmp ult i64 %i.he, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader235, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.hd, 4611686018427387900     ; 3 uses
  %i.hf = shl i64 %n.vec, 3                       ; 2 uses
  %i.hg = getelementptr i8, ptr %i.gz, i64 %i.hf  ; 2 uses
  %i.hh = getelementptr i8, ptr %i.go, i64 %i.hf
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.hi = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.gz, i64 %i.hi ; 2 uses
  %next.gep232 = getelementptr i8, ptr %i.go, i64 %i.hi ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34)
  call void @llvm.experimental.noalias.scope.decl(metadata !37)
  %i.hj = getelementptr i8, ptr %next.gep232, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep232, align 8, !alias.scope !37, !noalias !34
  %wide.load233 = load <2 x i64>, ptr %i.hj, align 8, !alias.scope !37, !noalias !34
  %i.hk = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !34, !noalias !37
  store <2 x i64> %wide.load233, ptr %i.hk, align 8, !alias.scope !34, !noalias !37
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hl = icmp eq i64 %index.next, %n.vec
  br i1 %i.hl, label %middle.block, label %vector.body, !llvm.loop !39

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hd, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_17SharedArrayBufferEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader235

.lr.ph.i.i.i.i.i.i.i.preheader235:                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.gz, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.hg, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.go, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.hh, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader235, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ho, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader235 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.hn, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader235 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34)
  call void @llvm.experimental.noalias.scope.decl(metadata !37)
  %i.hm = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !37, !noalias !34
  store i64 %i.hm, ptr %.012.i.i.i.i.i.i.i, align 8, !alias.scope !34, !noalias !37
  %i.hn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i87 = icmp eq ptr %i.hn, %i.gk
  br i1 %.not.i.i.i.i.i.i.i87, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_17SharedArrayBufferEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !42

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_17SharedArrayBufferEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_17SharedArrayBufferEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.gz, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_17SharedArrayBufferEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.hg, %middle.block ], [ %i.ho, %.lr.ph.i.i.i.i.i.i.i ]
  %i.hp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i = icmp eq ptr %i.go, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_17SharedArrayBufferEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_17SharedArrayBufferEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.go, i64 noundef %i.gr) #32
  br label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_17SharedArrayBufferEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_17SharedArrayBufferEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i: ; preds = %bb.ai, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_17SharedArrayBufferEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i
  store ptr %i.gz, ptr %9, align 8
  store ptr %i.hp, ptr %i.en, align 8
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %i.gx
  store ptr %i.hq, ptr %i.eo, align 8
  br label %_ZN2v811LocalVectorINS_17SharedArrayBufferEE9push_backERKNS_5LocalIS1_EE.exit

_ZN2v811LocalVectorINS_17SharedArrayBufferEE9push_backERKNS_5LocalIS1_EE.exit: ; preds = %bb.af, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_17SharedArrayBufferEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i
  %i.hr = add i32 %.055153, 1                     ; 2 uses
  %i.hs = zext i32 %i.hr to i64                   ; 2 uses
  %i.ht = load ptr, ptr %i.ej, align 8
  %i.hu = load ptr, ptr %i.ei, align 8            ; 2 uses
  %i.hv = ptrtoint ptr %i.ht to i64
  %i.hw = ptrtoint ptr %i.hu to i64
  %i.hx = sub i64 %i.hv, %i.hw
  %i.hy = ashr exact i64 %i.hx, 4
  %i.hz = icmp ugt i64 %i.hy, %i.hs
  br i1 %i.hz, label %bb.v, label %._crit_edge, !llvm.loop !43

._crit_edge158:                                   ; preds = %_ZNSt12__shared_ptrIN2v812BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit92, %._crit_edge
  %i.ia = call i16 @_ZN2v817ValueDeserializer10ReadHeaderENS_5LocalINS_7ContextEEE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr nonnull %2) #29
  %i.ib = trunc i16 %i.ia to i1
  br i1 %i.ib, label %bb.aq, label %_ZN2v820EscapableHandleScope6EscapeINS_5ValueEEENS_5LocalIT_EES5_.exit

bb.aj:                                            ; preds = %.lr.ph157, %_ZNSt12__shared_ptrIN2v812BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit92
  %i.ic = phi ptr [ %i.fe, %.lr.ph157 ], [ %i.jd, %_ZNSt12__shared_ptrIN2v812BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit92 ]
  %i.id = phi i64 [ 0, %.lr.ph157 ], [ %i.jb, %_ZNSt12__shared_ptrIN2v812BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit92 ]
  %.056155 = phi i32 [ 0, %.lr.ph157 ], [ %i.ja, %_ZNSt12__shared_ptrIN2v812BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit92 ] ; 2 uses
  %i.ie = load ptr, ptr %i.m, align 8
  %i.if = getelementptr inbounds nuw [16 x i8], ptr %i.ic, i64 %i.id ; 3 uses
  %i.ig = load ptr, ptr %i.if, align 8
  store ptr %i.ig, ptr %13, align 8
  store ptr null, ptr %i.ff, align 8
  %i.ih = getelementptr inbounds nuw i8, ptr %i.if, i64 8 ; 2 uses
  %i.ii = load ptr, ptr %i.ih, align 8
  store ptr null, ptr %i.ih, align 8
  store ptr %i.ii, ptr %i.ff, align 8
  store ptr null, ptr %i.if, align 8
  %i.ij = call ptr @_ZN2v811ArrayBuffer3NewEPNS_7IsolateESt10shared_ptrINS_12BackingStoreEE(ptr noundef %i.ie, ptr noundef nonnull %13) #29
  %i.ik = load ptr, ptr %i.ff, align 8            ; 8 uses
  %.not.i.i88 = icmp eq ptr %i.ik, null
  br i1 %.not.i.i88, label %_ZNSt12__shared_ptrIN2v812BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit92, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 8 ; 4 uses
  %i.im = load atomic i64, ptr %i.il acquire, align 8 ; 2 uses
  %i.in = icmp eq i64 %i.im, 4294967297
  %i.io = trunc i64 %i.im to i32                  ; 2 uses
  br i1 %i.in, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i32 0, ptr %i.il, align 8
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ik, i64 12
  store i32 0, ptr %i.ip, align 4
  %i.iq = load ptr, ptr %i.ik, align 8
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  %i.is = load ptr, ptr %i.ir, align 8
  call void %i.is(ptr noundef nonnull align 8 dereferenceable(16) %i.ik) #29, !inline_history !33
  %i.it = load ptr, ptr %i.ik, align 8
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 24
  %i.iv = load ptr, ptr %i.iu, align 8
  call void %i.iv(ptr noundef nonnull align 8 dereferenceable(16) %i.ik) #29, !inline_history !33
  br label %_ZNSt12__shared_ptrIN2v812BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit92

bb.am:                                            ; preds = %bb.ak
  %i.iw = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i89 = icmp eq i8 %i.iw, 0
  br i1 %.not.i.i.i89, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ix = add nsw i32 %i.io, -1
  store i32 %i.ix, ptr %i.il, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i90

bb.ao:                                            ; preds = %bb.am
  %i.iy = atomicrmw volatile add ptr %i.il, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i90

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i90: ; preds = %bb.ao, %bb.an
  %.0.i.i.i.i91 = phi i32 [ %i.io, %bb.an ], [ %i.iy, %bb.ao ]
  %i.iz = icmp eq i32 %.0.i.i.i.i91, 1
  br i1 %i.iz, label %bb.ap, label %_ZNSt12__shared_ptrIN2v812BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit92, !prof !5

bb.ap:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i90
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ik) #29
  br label %_ZNSt12__shared_ptrIN2v812BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit92

_ZNSt12__shared_ptrIN2v812BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit92: ; preds = %bb.aj, %bb.al, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i90, %bb.ap
  call void @_ZN2v817ValueDeserializer19TransferArrayBufferEjNS_5LocalINS_11ArrayBufferEEE(ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef %.056155, ptr %i.ij) #29
  %i.ja = add i32 %.056155, 1                     ; 2 uses
  %i.jb = zext i32 %i.ja to i64                   ; 2 uses
  %i.jc = load ptr, ptr %i.fc, align 8
  %i.jd = load ptr, ptr %i.fb, align 8            ; 2 uses
  %i.je = ptrtoint ptr %i.jc to i64
  %i.jf = ptrtoint ptr %i.jd to i64
  %i.jg = sub i64 %i.je, %i.jf
  %i.jh = ashr exact i64 %i.jg, 4
  %i.ji = icmp ugt i64 %i.jh, %i.jb
  br i1 %i.ji, label %bb.aj, label %._crit_edge158, !llvm.loop !44

bb.aq:                                            ; preds = %._crit_edge158
  %i.jj = call ptr @_ZN2v817ValueDeserializer9ReadValueENS_5LocalINS_7ContextEEE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr nonnull %2) #29 ; 2 uses
  %.not146 = icmp eq ptr %i.jj, null
  br i1 %.not146, label %_ZN2v820EscapableHandleScope6EscapeINS_5ValueEEENS_5LocalIT_EES5_.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.jk = load ptr, ptr %5, align 8               ; 2 uses
  %i.jl = load ptr, ptr %i.ea, align 8            ; 2 uses
  %i.jm = icmp eq ptr %i.jk, %i.jl
  br i1 %i.jm, label %_ZNSt6vectorIN4node17BaseObjectPtrImplINS0_10BaseObjectELb0EEESaIS3_EE5clearEv.exit, label %.lr.ph161

.lr.ph161:                                        ; preds = %bb.ar, %_ZN4node17BaseObjectPtrImplINS_10BaseObjectELb0EED2Ev.exit97
  %.sroa.0112.0159 = phi ptr [ %i.jv, %_ZN4node17BaseObjectPtrImplINS_10BaseObjectELb0EED2Ev.exit97 ], [ %i.jk, %bb.ar ] ; 2 uses
  %i.jn = load ptr, ptr %.sroa.0112.0159, align 8 ; 6 uses
  %i.jo = icmp eq ptr %i.jn, null
  br i1 %i.jo, label %_ZN4node17BaseObjectPtrImplINS_10BaseObjectELb0EEC2ERKS2_.exit, label %_ZNK4node17BaseObjectPtrImplINS_10BaseObjectELb0EE12pointer_dataEv.exit.i.i

_ZNK4node17BaseObjectPtrImplINS_10BaseObjectELb0EE12pointer_dataEv.exit.i.i: ; preds = %.lr.ph161
  %i.jp = call noundef ptr @_ZN4node10BaseObject12pointer_dataEv(ptr noundef nonnull align 8 dereferenceable(48) %i.jn) #29
  %.not.i.i93 = icmp eq ptr %i.jp, null
  br i1 %.not.i.i93, label %bb.as, label %bb.at, !prof !5

bb.as:                                            ; preds = %_ZNK4node17BaseObjectPtrImplINS_10BaseObjectELb0EE12pointer_dataEv.exit.i.i
  call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node17BaseObjectPtrImplINS_10BaseObjectELb0EEC1EPS1_E20error_and_abort_args_0) #29
  call void @abort() #30
  unreachable

bb.at:                                            ; preds = %_ZNK4node17BaseObjectPtrImplINS_10BaseObjectELb0EE12pointer_dataEv.exit.i.i
  call void @_ZN4node10BaseObject17increase_refcountEv(ptr noundef nonnull align 8 dereferenceable(48) %i.jn) #29
  br label %_ZN4node17BaseObjectPtrImplINS_10BaseObjectELb0EEC2ERKS2_.exit

_ZN4node17BaseObjectPtrImplINS_10BaseObjectELb0EEC2ERKS2_.exit: ; preds = %.lr.ph161, %bb.at
  %i.jq = load ptr, ptr %i.jn, align 8
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 112
  %i.js = load ptr, ptr %i.jr, align 8
  %i.jt = call i8 %i.js(ptr noundef nonnull align 8 dereferenceable(48) %i.jn, ptr nonnull %2, ptr noundef nonnull %12) #29
  %i.ju = trunc nuw i8 %i.jt to i1
end_hunk_0
begin_hunk_1_@_ZN4node6worker7Message9SerializeEPNS_11EnvironmentEN2v85LocalINS4_7ContextEEENS5_INS4_5ValueEEERKNS_16MaybeStackBufferIS9_Lm8EEENS5_INS4_6ObjectEEE:bb.a
  %i.az = trunc i16 %i.ay to i1
  br i1 %i.az, label %bb.i, label %_ZNK2v85MaybeIbE2ToEPb.exit.thread255.thread, !prof !29

bb.i:                                             ; preds = %bb.h
  %i.ba = and i16 %i.ay, 256
  %.not287 = icmp eq i16 %i.ba, 0
  br i1 %.not287, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bb = load ptr, ptr %i.z, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 2696
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = call noundef ptr @_ZN2v87Isolate10GetCurrentEv() #29 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #29
  %i.bf = ptrtoint ptr %i.bd to i64
  store i64 %i.bf, ptr %18, align 16
  %i.bg = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.bh = call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.be, ptr noundef nonnull @.str.100, i32 noundef 1, i32 noundef 14) #29 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %bb.k, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm15EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit.i81, !prof !5

bb.k:                                             ; preds = %bb.j
  call void @_ZN2v812api_internal12ToLocalEmptyEv() #29
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm15EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit.i81

_ZN4node21FIXED_ONE_BYTE_STRINGILm15EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit.i81: ; preds = %bb.k, %bb.j
  %i.bj = ptrtoint ptr %i.bh to i64
  store i64 %i.bj, ptr %i.bg, align 8
  %i.bk = call fastcc ptr @_ZN4node6worker12_GLOBAL__N_115GetDOMExceptionEN2v85LocalINS2_7ContextEEE(ptr nonnull %2) ; 2 uses
  %.not.i82 = icmp eq ptr %i.bk, null
  br i1 %.not.i82, label %_ZN4node6worker12_GLOBAL__N_123ThrowDataCloneExceptionEN2v85LocalINS2_7ContextEEENS3_INS2_6StringEEE.exit84, label %bb.l

bb.l:                                             ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm15EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit.i81
  %i.bl = call ptr @_ZNK2v88Function11NewInstanceENS_5LocalINS_7ContextEEEiPNS1_INS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.bk, ptr nonnull %2, i32 noundef 2, ptr noundef nonnull %18) #29 ; 2 uses
  %.not16.i83 = icmp eq ptr %i.bl, null
  br i1 %.not16.i83, label %_ZN4node6worker12_GLOBAL__N_123ThrowDataCloneExceptionEN2v85LocalINS2_7ContextEEENS3_INS2_6StringEEE.exit84, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bm = call ptr @_ZN2v87Isolate14ThrowExceptionENS_5LocalINS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.be, ptr nonnull %i.bl) #29 ; 0 uses
  br label %_ZN4node6worker12_GLOBAL__N_123ThrowDataCloneExceptionEN2v85LocalINS2_7ContextEEENS3_INS2_6StringEEE.exit84

_ZN4node6worker12_GLOBAL__N_123ThrowDataCloneExceptionEN2v85LocalINS2_7ContextEEENS3_INS2_6StringEEE.exit84: ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm15EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit.i81, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  br label %_ZNK2v85MaybeIbE2ToEPb.exit.thread255.thread

bb.n:                                             ; preds = %bb.i
  %i.bn = call noundef zeroext i1 @_ZNK2v85Value13IsArrayBufferEv(ptr noundef nonnull align 1 dereferenceable(1) %i.ai) #29
  br i1 %i.bn, label %bb.o, label %bb.ae

bb.o:                                             ; preds = %bb.n
  %i.bo = call noundef zeroext i1 @_ZNK2v811ArrayBuffer12IsDetachableEv(ptr noundef nonnull align 1 dereferenceable(1) %i.ai) #29
  br i1 %i.bo, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bp = call noundef zeroext i1 @_ZNK2v811ArrayBuffer11WasDetachedEv(ptr noundef nonnull align 1 dereferenceable(1) %i.ai) #29
  br i1 %i.bp, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bq = load ptr, ptr %i.z, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 2696
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = call noundef ptr @_ZN2v87Isolate10GetCurrentEv() #29 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #29
  %i.bu = ptrtoint ptr %i.bs to i64
  store i64 %i.bu, ptr %17, align 16
  %i.bv = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.bw = call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.bt, ptr noundef nonnull @.str.100, i32 noundef 1, i32 noundef 14) #29 ; 2 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %bb.r, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm15EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit.i85, !prof !5

bb.r:                                             ; preds = %bb.q
  call void @_ZN2v812api_internal12ToLocalEmptyEv() #29
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm15EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit.i85

_ZN4node21FIXED_ONE_BYTE_STRINGILm15EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit.i85: ; preds = %bb.r, %bb.q
  %i.by = ptrtoint ptr %i.bw to i64
  store i64 %i.by, ptr %i.bv, align 8
  %i.bz = call fastcc ptr @_ZN4node6worker12_GLOBAL__N_115GetDOMExceptionEN2v85LocalINS2_7ContextEEE(ptr nonnull %2) ; 2 uses
  %.not.i86 = icmp eq ptr %i.bz, null
  br i1 %.not.i86, label %_ZN4node6worker12_GLOBAL__N_123ThrowDataCloneExceptionEN2v85LocalINS2_7ContextEEENS3_INS2_6StringEEE.exit88, label %bb.s

bb.s:                                             ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm15EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit.i85
  %i.ca = call ptr @_ZNK2v88Function11NewInstanceENS_5LocalINS_7ContextEEEiPNS1_INS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.bz, ptr nonnull %2, i32 noundef 2, ptr noundef nonnull %17) #29 ; 2 uses
  %.not16.i87 = icmp eq ptr %i.ca, null
  br i1 %.not16.i87, label %_ZN4node6worker12_GLOBAL__N_123ThrowDataCloneExceptionEN2v85LocalINS2_7ContextEEENS3_INS2_6StringEEE.exit88, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cb = call ptr @_ZN2v87Isolate14ThrowExceptionENS_5LocalINS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.bt, ptr nonnull %i.ca) #29 ; 0 uses
  br label %_ZN4node6worker12_GLOBAL__N_123ThrowDataCloneExceptionEN2v85LocalINS2_7ContextEEENS3_INS2_6StringEEE.exit88

_ZN4node6worker12_GLOBAL__N_123ThrowDataCloneExceptionEN2v85LocalINS2_7ContextEEENS3_INS2_6StringEEE.exit88: ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm15EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit.i85, %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  br label %_ZNK2v85MaybeIbE2ToEPb.exit.thread255.thread

bb.u:                                             ; preds = %bb.p
  %i.cc = icmp eq ptr %.sroa.0204.0394, %.sroa.9.0393 ; 2 uses
  br i1 %i.cc, label %_ZNKSt6ranges9__find_fnclITkNS_11input_rangeERN2v811LocalVectorINS2_11ArrayBufferEEENS2_5LocalIS4_EESt8identityQ25indirect_binary_predicateINS_8equal_toENSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET1_E6__typeEPKT0_EEENSt13__conditionalIX14borrowed_rangeISD_EEE4typeISF_NS_8danglingEEEOSD_RSK_SG_.exit.thread, label %.lr.ph.split.split.i.i

.lr.ph.split.split.i.i:                           ; preds = %bb.u, %_ZN2v88internal12HandleHelper12EqualHandlesINS_5LocalINS_11ArrayBufferEEES5_EEbRKT_RKT0_.exit.thread.i.i
  %.sroa.01.05.i.i = phi ptr [ %i.ci, %_ZN2v88internal12HandleHelper12EqualHandlesINS_5LocalINS_11ArrayBufferEEES5_EEbRKT_RKT0_.exit.thread.i.i ], [ %.sroa.0204.0394, %bb.u ] ; 3 uses
  %i.cd = load ptr, ptr %.sroa.01.05.i.i, align 8 ; 2 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %_ZN2v88internal12HandleHelper12EqualHandlesINS_5LocalINS_11ArrayBufferEEES5_EEbRKT_RKT0_.exit.thread.i.i, label %_ZN2v88internal12HandleHelper12EqualHandlesINS_5LocalINS_11ArrayBufferEEES5_EEbRKT_RKT0_.exit.i.i

_ZN2v88internal12HandleHelper12EqualHandlesINS_5LocalINS_11ArrayBufferEEES5_EEbRKT_RKT0_.exit.i.i: ; preds = %.lr.ph.split.split.i.i
  %i.cf = load i64, ptr %i.cd, align 8
  %i.cg = load i64, ptr %i.ai, align 8
  %i.ch = icmp eq i64 %i.cf, %i.cg
  br i1 %i.ch, label %_ZNKSt6ranges9__find_fnclITkNS_11input_rangeERN2v811LocalVectorINS2_11ArrayBufferEEENS2_5LocalIS4_EESt8identityQ25indirect_binary_predicateINS_8equal_toENSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET1_E6__typeEPKT0_EEENSt13__conditionalIX14borrowed_rangeISD_EEE4typeISF_NS_8danglingEEEOSD_RSK_SG_.exit, label %_ZN2v88internal12HandleHelper12EqualHandlesINS_5LocalINS_11ArrayBufferEEES5_EEbRKT_RKT0_.exit.thread.i.i

_ZN2v88internal12HandleHelper12EqualHandlesINS_5LocalINS_11ArrayBufferEEES5_EEbRKT_RKT0_.exit.thread.i.i: ; preds = %_ZN2v88internal12HandleHelper12EqualHandlesINS_5LocalINS_11ArrayBufferEEES5_EEbRKT_RKT0_.exit.i.i, %.lr.ph.split.split.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 8 ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %.sroa.9.0393
  br i1 %i.cj, label %_ZNKSt6ranges9__find_fnclITkNS_11input_rangeERN2v811LocalVectorINS2_11ArrayBufferEEENS2_5LocalIS4_EESt8identityQ25indirect_binary_predicateINS_8equal_toENSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET1_E6__typeEPKT0_EEENSt13__conditionalIX14borrowed_rangeISD_EEE4typeISF_NS_8danglingEEEOSD_RSK_SG_.exit.thread, label %.lr.ph.split.split.i.i, !llvm.loop !47

_ZNKSt6ranges9__find_fnclITkNS_11input_rangeERN2v811LocalVectorINS2_11ArrayBufferEEENS2_5LocalIS4_EESt8identityQ25indirect_binary_predicateINS_8equal_toENSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET1_E6__typeEPKT0_EEENSt13__conditionalIX14borrowed_rangeISD_EEE4typeISF_NS_8danglingEEEOSD_RSK_SG_.exit: ; preds = %_ZN2v88internal12HandleHelper12EqualHandlesINS_5LocalINS_11ArrayBufferEEES5_EEbRKT_RKT0_.exit.i.i
  %i.ck = icmp eq ptr %.sroa.01.05.i.i, %.sroa.9.0393
  br i1 %i.ck, label %_ZNKSt6ranges9__find_fnclITkNS_11input_rangeERN2v811LocalVectorINS2_11ArrayBufferEEENS2_5LocalIS4_EESt8identityQ25indirect_binary_predicateINS_8equal_toENSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET1_E6__typeEPKT0_EEENSt13__conditionalIX14borrowed_rangeISD_EEE4typeISF_NS_8danglingEEEOSD_RSK_SG_.exit.thread, label %bb.v

bb.v:                                             ; preds = %_ZNKSt6ranges9__find_fnclITkNS_11input_rangeERN2v811LocalVectorINS2_11ArrayBufferEEENS2_5LocalIS4_EESt8identityQ25indirect_binary_predicateINS_8equal_toENSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET1_E6__typeEPKT0_EEENSt13__conditionalIX14borrowed_rangeISD_EEE4typeISF_NS_8danglingEEEOSD_RSK_SG_.exit
  %i.cl = load ptr, ptr %i.a, align 8
  %i.cm = call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.cl, ptr noundef nonnull @.str.16, i32 noundef 1, i32 noundef 44) #29 ; 2 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %bb.w, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm45EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit, !prof !5

bb.w:                                             ; preds = %bb.v
  call void @_ZN2v812api_internal12ToLocalEmptyEv() #29
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm45EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit

_ZN4node21FIXED_ONE_BYTE_STRINGILm45EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit: ; preds = %bb.v, %bb.w
  %i.co = call noundef ptr @_ZN2v87Isolate10GetCurrentEv() #29 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #29
  %i.cp = ptrtoint ptr %i.cm to i64
  store i64 %i.cp, ptr %16, align 16
  %i.cq = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.cr = call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.co, ptr noundef nonnull @.str.100, i32 noundef 1, i32 noundef 14) #29 ; 2 uses
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %bb.x, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm15EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit.i89, !prof !5

bb.x:                                             ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm45EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit
  call void @_ZN2v812api_internal12ToLocalEmptyEv() #29
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm15EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit.i89

_ZN4node21FIXED_ONE_BYTE_STRINGILm15EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit.i89: ; preds = %bb.x, %_ZN4node21FIXED_ONE_BYTE_STRINGILm45EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit
  %i.ct = ptrtoint ptr %i.cr to i64
  store i64 %i.ct, ptr %i.cq, align 8
  %i.cu = call fastcc ptr @_ZN4node6worker12_GLOBAL__N_115GetDOMExceptionEN2v85LocalINS2_7ContextEEE(ptr nonnull %2) ; 2 uses
  %.not.i90 = icmp eq ptr %i.cu, null
  br i1 %.not.i90, label %_ZN4node6worker12_GLOBAL__N_123ThrowDataCloneExceptionEN2v85LocalINS2_7ContextEEENS3_INS2_6StringEEE.exit92, label %bb.y

bb.y:                                             ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm15EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit.i89
  %i.cv = call ptr @_ZNK2v88Function11NewInstanceENS_5LocalINS_7ContextEEEiPNS1_INS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.cu, ptr nonnull %2, i32 noundef 2, ptr noundef nonnull %16) #29 ; 2 uses
  %.not16.i91 = icmp eq ptr %i.cv, null
  br i1 %.not16.i91, label %_ZN4node6worker12_GLOBAL__N_123ThrowDataCloneExceptionEN2v85LocalINS2_7ContextEEENS3_INS2_6StringEEE.exit92, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cw = call ptr @_ZN2v87Isolate14ThrowExceptionENS_5LocalINS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.co, ptr nonnull %i.cv) #29 ; 0 uses
  br label %_ZN4node6worker12_GLOBAL__N_123ThrowDataCloneExceptionEN2v85LocalINS2_7ContextEEENS3_INS2_6StringEEE.exit92

_ZN4node6worker12_GLOBAL__N_123ThrowDataCloneExceptionEN2v85LocalINS2_7ContextEEENS3_INS2_6StringEEE.exit92: ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm15EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit.i89, %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  br label %_ZNK2v85MaybeIbE2ToEPb.exit.thread255.thread

_ZNKSt6ranges9__find_fnclITkNS_11input_rangeERN2v811LocalVectorINS2_11ArrayBufferEEENS2_5LocalIS4_EESt8identityQ25indirect_binary_predicateINS_8equal_toENSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET1_E6__typeEPKT0_EEENSt13__conditionalIX14borrowed_rangeISD_EEE4typeISF_NS_8danglingEEEOSD_RSK_SG_.exit.thread: ; preds = %_ZN2v88internal12HandleHelper12EqualHandlesINS_5LocalINS_11ArrayBufferEEES5_EEbRKT_RKT0_.exit.thread.i.i, %bb.u, %_ZNKSt6ranges9__find_fnclITkNS_11input_rangeERN2v811LocalVectorINS2_11ArrayBufferEEENS2_5LocalIS4_EESt8identityQ25indirect_binary_predicateINS_8equal_toENSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET1_E6__typeEPKT0_EEENSt13__conditionalIX14borrowed_rangeISD_EEE4typeISF_NS_8danglingEEEOSD_RSK_SG_.exit
  %i.cx = ptrtoint ptr %.sroa.9.0393 to i64       ; 2 uses
  %i.cy = ptrtoint ptr %.sroa.0204.0394 to i64    ; 3 uses
  %i.cz = sub i64 %i.cx, %i.cy                    ; 4 uses
  %i.da = ashr exact i64 %i.cz, 3                 ; 4 uses
  %i.db = trunc i64 %i.da to i32
  %.not.i.i.i = icmp eq ptr %.sroa.9.0393, %.sroa.17.0392
  br i1 %.not.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZNKSt6ranges9__find_fnclITkNS_11input_rangeERN2v811LocalVectorINS2_11ArrayBufferEEENS2_5LocalIS4_EESt8identityQ25indirect_binary_predicateINS_8equal_toENSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET1_E6__typeEPKT0_EEENSt13__conditionalIX14borrowed_rangeISD_EEE4typeISF_NS_8danglingEEEOSD_RSK_SG_.exit.thread
  store i64 %i.ah, ptr %.sroa.9.0393, align 8
  br label %_ZNK2v85MaybeIbE2ToEPb.exit.thread262

bb.ab:                                            ; preds = %_ZNKSt6ranges9__find_fnclITkNS_11input_rangeERN2v811LocalVectorINS2_11ArrayBufferEEENS2_5LocalIS4_EESt8identityQ25indirect_binary_predicateINS_8equal_toENSt8__detail11__projectedIDTclsr6ranges13__cust_accessE7__beginclsr3stdE7declvalIRT_EEEET1_E6__typeEPKT0_EEENSt13__conditionalIX14borrowed_rangeISD_EEE4typeISF_NS_8danglingEEEOSD_RSK_SG_.exit.thread
  %i.dc = icmp eq i64 %i.cz, 9223372036854775800
  br i1 %i.dc, label %bb.ac, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_11ArrayBufferEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.ac:                                            ; preds = %bb.ab
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.78) #30
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_11ArrayBufferEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.ab
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.da, i64 1)
  %i.dd = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.da ; 2 uses
  %i.de = icmp ult i64 %i.dd, %i.da
  %i.df = call i64 @llvm.umin.i64(i64 %i.dd, i64 1152921504606846975)
  %i.dg = select i1 %i.de, i64 1152921504606846975, i64 %i.df ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.dg, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.dh = shl nuw nsw i64 %i.dg, 3
  %i.di = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dh) #31 ; 8 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.cz
  store i64 %i.ah, ptr %i.dj, align 8
  br i1 %i.cc, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_11ArrayBufferEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_11ArrayBufferEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.dk = ptrtoaddr ptr %i.di to i64
  %26 = sub i64 %i.cx, %i.cy
  %27 = add i64 %26, -8                           ; 2 uses
  %i.dl = lshr i64 %27, 3
  %i.dm = add nuw nsw i64 %i.dl, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %27, 24
  %i.dn = sub i64 %i.dk, %i.cy
  %diff.check = icmp ult i64 %i.dn, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader711, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.dm, 4611686018427387900     ; 3 uses
  %i.do = shl i64 %n.vec, 3                       ; 2 uses
  %i.dp = getelementptr i8, ptr %i.di, i64 %i.do  ; 2 uses
  %i.dq = getelementptr i8, ptr %.sroa.0204.0394, i64 %i.do
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dr = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.di, i64 %i.dr ; 2 uses
  %next.gep679 = getelementptr i8, ptr %.sroa.0204.0394, i64 %i.dr ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !48)
  call void @llvm.experimental.noalias.scope.decl(metadata !51)
  %i.ds = getelementptr i8, ptr %next.gep679, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep679, align 8, !alias.scope !51, !noalias !48
  %wide.load680 = load <2 x i64>, ptr %i.ds, align 8, !alias.scope !51, !noalias !48
  %i.dt = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !48, !noalias !51
  store <2 x i64> %wide.load680, ptr %i.dt, align 8, !alias.scope !48, !noalias !51
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.du = icmp eq i64 %index.next, %n.vec
  br i1 %i.du, label %middle.block, label %vector.body, !llvm.loop !53

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dm, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_11ArrayBufferEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader711

.lr.ph.i.i.i.i.i.i.i.preheader711:                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.di, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.dp, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %.sroa.0204.0394, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.dq, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader711, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.dx, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader711 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.dw, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader711 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !48)
  call void @llvm.experimental.noalias.scope.decl(metadata !51)
  %i.dv = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !51, !noalias !48
  store i64 %i.dv, ptr %.012.i.i.i.i.i.i.i, align 8, !alias.scope !48, !noalias !51
  %i.dw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.dw, %.sroa.9.0393
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_11ArrayBufferEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !54

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_11ArrayBufferEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_11ArrayBufferEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.di, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_11ArrayBufferEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.dp, %middle.block ], [ %i.dx, %.lr.ph.i.i.i.i.i.i.i ]
  %.not.i23.i.i.i.i = icmp eq ptr %.sroa.0204.0394, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_11ArrayBufferEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_11ArrayBufferEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0204.0394, i64 noundef %i.cz) #32
  br label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_11ArrayBufferEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_11ArrayBufferEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i: ; preds = %bb.ad, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_11ArrayBufferEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.dg
  br label %_ZNK2v85MaybeIbE2ToEPb.exit.thread262

_ZNK2v85MaybeIbE2ToEPb.exit.thread262:            ; preds = %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_11ArrayBufferEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i, %bb.aa
  %.sroa.17.5 = phi ptr [ %i.dy, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_11ArrayBufferEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i ], [ %.sroa.17.0392, %bb.aa ]
  %.0.lcssa.i.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_11ArrayBufferEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i ], [ %.sroa.9.0393, %bb.aa ]
  %.sroa.0204.5 = phi ptr [ %i.di, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_11ArrayBufferEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i ], [ %.sroa.0204.0394, %bb.aa ]
  %.sroa.9.5 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.pn, i64 8
  call void @_ZN2v815ValueSerializer19TransferArrayBufferEjNS_5LocalINS_11ArrayBufferEEE(ptr noundef nonnull align 8 dereferenceable(8) %22, i32 noundef %i.db, ptr nonnull %i.ai) #29
  br label %bb.bw

bb.ae:                                            ; preds = %bb.n
  br i1 %i.aa, label %bb.ak, label %_ZN2v88internal12HandleHelper12EqualHandlesINS_5LocalINS_6ObjectEEES5_EEbRKT_RKT0_.exit

_ZN2v88internal12HandleHelper12EqualHandlesINS_5LocalINS_6ObjectEEES5_EEbRKT_RKT0_.exit: ; preds = %bb.ae
  %i.dz = load i64, ptr %i.ai, align 8
  %i.ea = load i64, ptr %5, align 8
  %i.eb = icmp eq i64 %i.dz, %i.ea
  br i1 %i.eb, label %bb.af, label %bb.ak

bb.af:                                            ; preds = %_ZN2v88internal12HandleHelper12EqualHandlesINS_5LocalINS_6ObjectEEES5_EEbRKT_RKT0_.exit
  %i.ec = load ptr, ptr %i.a, align 8
  %i.ed = call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.ec, ptr noundef nonnull @.str.17, i32 noundef 1, i32 noundef 34) #29 ; 2 uses
  %i.ee = icmp eq ptr %i.ed, null
  br i1 %i.ee, label %bb.ag, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm35EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit, !prof !5

bb.ag:                                            ; preds = %bb.af
  call void @_ZN2v812api_internal12ToLocalEmptyEv() #29
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm35EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit

_ZN4node21FIXED_ONE_BYTE_STRINGILm35EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit: ; preds = %bb.af, %bb.ag
  %i.ef = call noundef ptr @_ZN2v87Isolate10GetCurrentEv() #29 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #29
  %i.eg = ptrtoint ptr %i.ed to i64
  store i64 %i.eg, ptr %15, align 16
  %i.eh = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ei = call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %i.ef, ptr noundef nonnull @.str.100, i32 noundef 1, i32 noundef 14) #29 ; 2 uses
  %i.ej = icmp eq ptr %i.ei, null
  br i1 %i.ej, label %bb.ah, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm15EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit.i93, !prof !5

bb.ah:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm35EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit
  call void @_ZN2v812api_internal12ToLocalEmptyEv() #29
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm15EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit.i93

_ZN4node21FIXED_ONE_BYTE_STRINGILm15EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit.i93: ; preds = %bb.ah, %_ZN4node21FIXED_ONE_BYTE_STRINGILm35EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit
  %i.ek = ptrtoint ptr %i.ei to i64
  store i64 %i.ek, ptr %i.eh, align 8
  %i.el = call fastcc ptr @_ZN4node6worker12_GLOBAL__N_115GetDOMExceptionEN2v85LocalINS2_7ContextEEE(ptr nonnull %2) ; 2 uses
  %.not.i94 = icmp eq ptr %i.el, null
  br i1 %.not.i94, label %_ZN4node6worker12_GLOBAL__N_123ThrowDataCloneExceptionEN2v85LocalINS2_7ContextEEENS3_INS2_6StringEEE.exit96, label %bb.ai

bb.ai:                                            ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm15EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit.i93
  %i.em = call ptr @_ZNK2v88Function11NewInstanceENS_5LocalINS_7ContextEEEiPNS1_INS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.el, ptr nonnull %2, i32 noundef 2, ptr noundef nonnull %15) #29 ; 2 uses
  %.not16.i95 = icmp eq ptr %i.em, null
  br i1 %.not16.i95, label %_ZN4node6worker12_GLOBAL__N_123ThrowDataCloneExceptionEN2v85LocalINS2_7ContextEEENS3_INS2_6StringEEE.exit96, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.en = call ptr @_ZN2v87Isolate14ThrowExceptionENS_5LocalINS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.ef, ptr nonnull %i.em) #29 ; 0 uses
  br label %_ZN4node6worker12_GLOBAL__N_123ThrowDataCloneExceptionEN2v85LocalINS2_7ContextEEENS3_INS2_6StringEEE.exit96

_ZN4node6worker12_GLOBAL__N_123ThrowDataCloneExceptionEN2v85LocalINS2_7ContextEEENS3_INS2_6StringEEE.exit96: ; preds = %_ZN4node21FIXED_ONE_BYTE_STRINGILm15EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit.i93, %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  br label %_ZNK2v85MaybeIbE2ToEPb.exit.thread255.thread

bb.ak:                                            ; preds = %_ZN2v88internal12HandleHelper12EqualHandlesINS_5LocalINS_6ObjectEEES5_EEbRKT_RKT0_.exit, %bb.ae
  %i.eo = load ptr, ptr %i.z, align 8
  %i.ep = call noundef i32 @_ZNK2v86Object18InternalFieldCountEv(ptr noundef nonnull align 1 dereferenceable(1) %i.ai) #29
  %i.eq = icmp slt i32 %i.ep, 2
  br i1 %i.eq, label %_ZN4node10BaseObject12IsBaseObjectEPNS_11IsolateDataEN2v85LocalINS3_6ObjectEEE.exit.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.er = load i64, ptr %i.ai, align 8            ; 2 uses
  %i.es = add i64 %i.er, -1
  %i.et = inttoptr i64 %i.es to ptr
  %i.eu = load i64, ptr %i.et, align 8
  %i.ev = add i64 %i.eu, 11
  %i.ew = inttoptr i64 %i.ev to ptr
  %i.ex = load i16, ptr %i.ew, align 2            ; 2 uses
  %i.ey = icmp eq i16 %i.ex, 1040
  %i.ez = add i16 %i.ex, -1057
  %i.fa = icmp ult i16 %i.ez, 1002
  %i.fb = or i1 %i.ey, %i.fa
  br i1 %i.fb, label %bb.am, label %bb.an, !prof !29

bb.am:                                            ; preds = %bb.al
  %i.fc = add i64 %i.er, 31
  %i.fd = inttoptr i64 %i.fc to ptr
  %i.fe = load i64, ptr %i.fd, align 8
  %i.ff = inttoptr i64 %i.fe to ptr
  br label %_ZN4node10BaseObject12IsBaseObjectEPNS_11IsolateDataEN2v85LocalINS3_6ObjectEEE.exit

bb.an:                                            ; preds = %bb.al
  %i.fg = call noundef ptr @_ZN2v86Object38SlowGetAlignedPointerFromInternalFieldEi(ptr noundef nonnull align 1 dereferenceable(1) %i.ai, i32 noundef 0) #29
  br label %_ZN4node10BaseObject12IsBaseObjectEPNS_11IsolateDataEN2v85LocalINS3_6ObjectEEE.exit

_ZN4node10BaseObject12IsBaseObjectEPNS_11IsolateDataEN2v85LocalINS3_6ObjectEEE.exit: ; preds = %bb.am, %bb.an
  %.0.i.i = phi ptr [ %i.ff, %bb.am ], [ %i.fg, %bb.an ]
  %i.fh = getelementptr inbounds nuw i8, ptr %i.eo, i64 4768
  %i.fi = load ptr, ptr %i.fh, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 2
  %i.fk = icmp eq ptr %.0.i.i, %i.fj
  br i1 %i.fk, label %bb.ao, label %_ZN4node10BaseObject12IsBaseObjectEPNS_11IsolateDataEN2v85LocalINS3_6ObjectEEE.exit.thread

bb.ao:                                            ; preds = %_ZN4node10BaseObject12IsBaseObjectEPNS_11IsolateDataEN2v85LocalINS3_6ObjectEEE.exit
  %i.fl = load i64, ptr %i.ai, align 8            ; 2 uses
  %i.fm = add i64 %i.fl, -1
  %i.fn = inttoptr i64 %i.fm to ptr
  %i.fo = load i64, ptr %i.fn, align 8
  %i.fp = add i64 %i.fo, 11
  %i.fq = inttoptr i64 %i.fp to ptr
  %i.fr = load i16, ptr %i.fq, align 2            ; 2 uses
  %i.fs = icmp eq i16 %i.fr, 1040
  %i.ft = add i16 %i.fr, -1057
  %i.fu = icmp ult i16 %i.ft, 1002
  %i.fv = or i1 %i.fs, %i.fu
  br i1 %i.fv, label %bb.ap, label %bb.aq, !prof !29

bb.ap:                                            ; preds = %bb.ao
  %i.fw = add i64 %i.fl, 39
  %i.fx = inttoptr i64 %i.fw to ptr
  %i.fy = load i64, ptr %i.fx, align 8
  %i.fz = inttoptr i64 %i.fy to ptr
  br label %_ZN4node10BaseObject6UnwrapIS0_EEPT_N2v85LocalINS4_5ValueEEE.exit

bb.aq:                                            ; preds = %bb.ao
  %i.ga = call noundef ptr @_ZN2v86Object38SlowGetAlignedPointerFromInternalFieldEi(ptr noundef nonnull align 1 dereferenceable(1) %i.ai, i32 noundef 1) #29
  br label %_ZN4node10BaseObject6UnwrapIS0_EEPT_N2v85LocalINS4_5ValueEEE.exit

_ZN4node10BaseObject6UnwrapIS0_EEPT_N2v85LocalINS4_5ValueEEE.exit: ; preds = %bb.ap, %bb.aq
  %.0.i.i.i.i = phi ptr [ %i.fz, %bb.ap ], [ %i.ga, %bb.aq ] ; 4 uses
  %i.gb = icmp eq ptr %.0.i.i.i.i, null
  br i1 %i.gb, label %_ZN4node17BaseObjectPtrImplINS_10BaseObjectELb0EED2Ev.exit, label %_ZNK4node17BaseObjectPtrImplINS_10BaseObjectELb0EE12pointer_dataEv.exit.i

_ZNK4node17BaseObjectPtrImplINS_10BaseObjectELb0EE12pointer_dataEv.exit.i: ; preds = %_ZN4node10BaseObject6UnwrapIS0_EEPT_N2v85LocalINS4_5ValueEEE.exit
  %i.gc = call noundef ptr @_ZN4node10BaseObject12pointer_dataEv(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i.i.i) #29
  %.not.i98 = icmp eq ptr %i.gc, null
  br i1 %.not.i98, label %bb.ar, label %bb.as, !prof !5

bb.ar:                                            ; preds = %_ZNK4node17BaseObjectPtrImplINS_10BaseObjectELb0EE12pointer_dataEv.exit.i
  call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node17BaseObjectPtrImplINS_10BaseObjectELb0EEC1EPS1_E20error_and_abort_args_0) #29
  call void @abort() #30
  unreachable

end_hunk_1
begin_hunk_2_@_ZN4node6worker7Message9SerializeEPNS_11EnvironmentEN2v85LocalINS4_7ContextEEENS5_INS4_5ValueEEERKNS_16MaybeStackBufferIS9_Lm8EEENS5_INS4_6ObjectEEE:bb.a

.lr.ph:                                           ; preds = %.preheader
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.mo = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 3 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.cn

bb.cm:                                            ; preds = %_ZNSt12__shared_ptrIN2v812BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.mq = getelementptr inbounds nuw i8, ptr %.sroa.0165.0398, i64 8 ; 2 uses
  %i.mr = icmp eq ptr %i.mq, %.sroa.9.0.lcssa
  br i1 %i.mr, label %._crit_edge, label %bb.cn

bb.cn:                                            ; preds = %.lr.ph, %bb.cm
  %.sroa.0165.0398 = phi ptr [ %.sroa.0204.0.lcssa, %.lr.ph ], [ %i.mq, %bb.cm ] ; 2 uses
  %i.ms = load i64, ptr %.sroa.0165.0398, align 8
  %i.mt = inttoptr i64 %i.ms to ptr               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #29
  call void @_ZN2v811ArrayBuffer15GetBackingStoreEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.416") align 8 %25, ptr noundef nonnull align 1 dereferenceable(1) %i.mt) #29
  %i.mu = call i16 @_ZN2v811ArrayBuffer6DetachENS_5LocalINS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.mt, ptr null) #29
  %i.mv = trunc i16 %i.mu to i1                   ; 2 uses
  br i1 %i.mv, label %bb.co, label %_ZNSt6vectorISt10shared_ptrIN2v812BackingStoreEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit

bb.co:                                            ; preds = %bb.cn
  %i.mw = load ptr, ptr %i.mm, align 8            ; 4 uses
  %i.mx = load ptr, ptr %i.mn, align 8
  %.not.i136 = icmp eq ptr %i.mw, %i.mx
  br i1 %.not.i136, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.my = load ptr, ptr %25, align 8
  store ptr %i.my, ptr %i.mw, align 8
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mw, i64 8 ; 2 uses
  store ptr null, ptr %i.mz, align 8
  %i.na = load ptr, ptr %i.mo, align 8
  store ptr null, ptr %i.mo, align 8
  store ptr %i.na, ptr %i.mz, align 8
  store ptr null, ptr %25, align 8
  %i.nb = load ptr, ptr %i.mm, align 8
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 16
  store ptr %i.nc, ptr %i.mm, align 8
  br label %_ZNSt6vectorISt10shared_ptrIN2v812BackingStoreEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit

bb.cq:                                            ; preds = %bb.co
  call void @_ZNSt6vectorISt10shared_ptrIN2v812BackingStoreEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.mp, ptr %i.mw, ptr noundef nonnull align 8 dereferenceable(16) %25)
  br label %_ZNSt6vectorISt10shared_ptrIN2v812BackingStoreEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit

_ZNSt6vectorISt10shared_ptrIN2v812BackingStoreEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit: ; preds = %bb.cq, %bb.cp, %bb.cn
  %i.nd = load ptr, ptr %i.mo, align 8            ; 8 uses
  %.not.i.i138 = icmp eq ptr %i.nd, null
  br i1 %.not.i.i138, label %_ZNSt12__shared_ptrIN2v812BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.cr

bb.cr:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN2v812BackingStoreEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 8 ; 4 uses
  %i.nf = load atomic i64, ptr %i.ne acquire, align 8 ; 2 uses
  %i.ng = icmp eq i64 %i.nf, 4294967297
  %i.nh = trunc i64 %i.nf to i32                  ; 2 uses
  br i1 %i.ng, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  store i32 0, ptr %i.ne, align 8
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nd, i64 12
  store i32 0, ptr %i.ni, align 4
  %i.nj = load ptr, ptr %i.nd, align 8
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 16
  %i.nl = load ptr, ptr %i.nk, align 8
  call void %i.nl(ptr noundef nonnull align 8 dereferenceable(16) %i.nd) #29, !inline_history !33
  %i.nm = load ptr, ptr %i.nd, align 8
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 24
  %i.no = load ptr, ptr %i.nn, align 8
  call void %i.no(ptr noundef nonnull align 8 dereferenceable(16) %i.nd) #29, !inline_history !33
  br label %_ZNSt12__shared_ptrIN2v812BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ct:                                            ; preds = %bb.cr
  %i.np = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i139 = icmp eq i8 %i.np, 0
  br i1 %.not.i.i.i139, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.nq = add nsw i32 %i.nh, -1
  store i32 %i.nq, ptr %i.ne, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.cv:                                            ; preds = %bb.ct
  %i.nr = atomicrmw volatile add ptr %i.ne, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.cv, %bb.cu
  %.0.i.i.i.i140 = phi i32 [ %i.nh, %bb.cu ], [ %i.nr, %bb.cv ]
  %i.ns = icmp eq i32 %.0.i.i.i.i140, 1
  br i1 %i.ns, label %bb.cw, label %_ZNSt12__shared_ptrIN2v812BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !5

bb.cw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.nd) #29
  br label %_ZNSt12__shared_ptrIN2v812BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2v812BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN2v812BackingStoreEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit, %bb.cs, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #29
  br i1 %i.mv, label %bb.cm, label %_ZNK2v85MaybeIbE2ToEPb.exit.thread255.thread

._crit_edge:                                      ; preds = %bb.cm, %.preheader
  %i.nt = load ptr, ptr %i.ju, align 8
  %i.nu = load ptr, ptr %i.jt, align 8            ; 2 uses
  %.not52.i = icmp eq ptr %i.nt, %i.nu
  br i1 %.not52.i, label %.loopexit291, label %.lr.ph.i141

.lr.ph.i141:                                      ; preds = %._crit_edge, %bb.de
  %i.nv = phi ptr [ %i.qo, %bb.de ], [ %i.nu, %._crit_edge ]
  %i.nw = phi i64 [ %i.qm, %bb.de ], [ 0, %._crit_edge ] ; 2 uses
  %.0851.i = phi i32 [ %i.ql, %bb.de ], [ 0, %._crit_edge ]
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %i.nv, i64 %i.nw ; 2 uses
  %i.ny = load i64, ptr %i.nx, align 8
  %i.nz = inttoptr i64 %i.ny to ptr               ; 6 uses
  store ptr null, ptr %i.nx, align 8
  %i.oa = load i64, ptr %i.v, align 8
  %i.ob = icmp ugt i64 %i.oa, %i.nw
  br i1 %i.ob, label %_ZNSt10unique_ptrIN4node6worker12TransferDataESt14default_deleteIS2_EEaSEOS5_.exit.i, label %_ZNSt10unique_ptrIN4node6worker12TransferDataESt14default_deleteIS2_EEaSEOS5_.exit12.i

_ZNSt10unique_ptrIN4node6worker12TransferDataESt14default_deleteIS2_EEaSEOS5_.exit.i: ; preds = %.lr.ph.i141
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.oc = load ptr, ptr %i.nz, align 8
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 88
  %i.oe = load ptr, ptr %i.od, align 8
  call void %i.oe(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.393") align 8 %6, ptr noundef nonnull align 8 dereferenceable(48) %i.nz) #29, !inline_history !59
  %i.of = load ptr, ptr %6, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %bb.cx

_ZNSt10unique_ptrIN4node6worker12TransferDataESt14default_deleteIS2_EEaSEOS5_.exit12.i: ; preds = %.lr.ph.i141
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  %i.og = load ptr, ptr %i.nz, align 8
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 96
  %i.oi = load ptr, ptr %i.oh, align 8
  call void %i.oi(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.393") align 8 %7, ptr noundef nonnull align 8 dereferenceable(48) %i.nz) #29, !inline_history !59
  %i.oj = load ptr, ptr %7, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.cx

bb.cx:                                            ; preds = %_ZNSt10unique_ptrIN4node6worker12TransferDataESt14default_deleteIS2_EEaSEOS5_.exit12.i, %_ZNSt10unique_ptrIN4node6worker12TransferDataESt14default_deleteIS2_EEaSEOS5_.exit.i
  %.sroa.022.0.i = phi ptr [ %i.of, %_ZNSt10unique_ptrIN4node6worker12TransferDataESt14default_deleteIS2_EEaSEOS5_.exit.i ], [ %i.oj, %_ZNSt10unique_ptrIN4node6worker12TransferDataESt14default_deleteIS2_EEaSEOS5_.exit12.i ] ; 7 uses
  %.not.i142 = icmp eq ptr %.sroa.022.0.i, null
  br i1 %.not.i142, label %.loopexit, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.ok = load ptr, ptr %i.q, align 8
  %i.ol = load ptr, ptr %.sroa.022.0.i, align 8
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 80
  %i.on = load ptr, ptr %i.om, align 8
  %i.oo = call i16 %i.on(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.022.0.i, ptr nonnull %2, ptr noundef %i.ok) #29, !inline_history !59
  %i.op = trunc i16 %i.oo to i1
  br i1 %i.op, label %bb.cz, label %_ZN4node17BaseObjectPtrImplINS_10BaseObjectELb0EED2Ev.exit.thread.i

bb.cz:                                            ; preds = %bb.cy
  %i.oq = load ptr, ptr %i.t, align 8             ; 3 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 80 ; 4 uses
  %i.os = load ptr, ptr %i.or, align 8            ; 5 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.oq, i64 88 ; 3 uses
  %i.ou = load ptr, ptr %i.ot, align 8
  %.not.i.i.i143 = icmp eq ptr %i.os, %i.ou
  br i1 %.not.i.i.i143, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.ov = ptrtoint ptr %.sroa.022.0.i to i64
  store i64 %i.ov, ptr %i.os, align 8
  %i.ow = load ptr, ptr %i.or, align 8
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 8
  store ptr %i.ox, ptr %i.or, align 8
  br label %bb.de

bb.db:                                            ; preds = %bb.cz
  %i.oy = getelementptr inbounds nuw i8, ptr %i.oq, i64 72 ; 2 uses
  %i.oz = load ptr, ptr %i.oy, align 8            ; 10 uses
  %i.pa = ptrtoint ptr %i.os to i64               ; 3 uses
  %i.pb = ptrtoint ptr %i.oz to i64               ; 4 uses
  %i.pc = sub i64 %i.pa, %i.pb                    ; 3 uses
  %i.pd = icmp eq i64 %i.pc, 9223372036854775800
  br i1 %i.pd, label %bb.dc, label %_ZNKSt6vectorISt10unique_ptrIN4node6worker12TransferDataESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i

bb.dc:                                            ; preds = %bb.db
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.78) #30
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4node6worker12TransferDataESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.db
  %i.pe = ashr exact i64 %i.pc, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.pe, i64 1)
  %i.pf = add nsw i64 %.sroa.speculated.i.i.i, %i.pe ; 2 uses
  %i.pg = icmp ult i64 %i.pf, %i.pe
  %i.ph = call i64 @llvm.umin.i64(i64 %i.pf, i64 1152921504606846975)
  %i.pi = select i1 %i.pg, i64 1152921504606846975, i64 %i.ph ; 3 uses
  %.not.i.i20.i = icmp ne i64 %i.pi, 0
  call void @llvm.assume(i1 %.not.i.i20.i)
  %i.pj = shl nuw nsw i64 %i.pi, 3
  %i.pk = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pj) #31 ; 10 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 %i.pc
  %i.pm = ptrtoint ptr %.sroa.022.0.i to i64
  store i64 %i.pm, ptr %i.pl, align 8
  %.not10.i.i.i.i.i = icmp eq ptr %i.oz, %i.os
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4node6worker12TransferDataESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i144.preheader

.lr.ph.i.i.i.i.i144.preheader:                    ; preds = %_ZNKSt6vectorISt10unique_ptrIN4node6worker12TransferDataESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %28 = sub i64 %i.pa, %i.pb
  %29 = add i64 %28, -8                           ; 2 uses
  %i.pn = lshr i64 %29, 3
  %i.po = add nuw nsw i64 %i.pn, 1                ; 2 uses
  %min.iters.check687 = icmp ult i64 %29, 56
  br i1 %min.iters.check687, label %.lr.ph.i.i.i.i.i144.preheader702, label %vector.memcheck682

vector.memcheck682:                               ; preds = %.lr.ph.i.i.i.i.i144.preheader
  %scevgep = getelementptr i8, ptr %i.pk, i64 8
  %i.pp = add i64 %i.pa, -8
  %i.pq = sub i64 %i.pp, %i.pb
  %i.pr = and i64 %i.pq, -8                       ; 2 uses
  %scevgep683 = getelementptr i8, ptr %scevgep, i64 %i.pr
  %scevgep684 = getelementptr i8, ptr %i.oz, i64 8
  %scevgep685 = getelementptr i8, ptr %scevgep684, i64 %i.pr
  %bound0 = icmp ult ptr %i.pk, %scevgep685
  %bound1 = icmp ult ptr %i.oz, %scevgep683
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i144.preheader702, label %vector.ph688

vector.ph688:                                     ; preds = %vector.memcheck682
  %n.vec690 = and i64 %i.po, 4611686018427387900  ; 3 uses
  %i.ps = shl i64 %n.vec690, 3                    ; 2 uses
  %i.pt = getelementptr i8, ptr %i.pk, i64 %i.ps  ; 2 uses
  %i.pu = getelementptr i8, ptr %i.oz, i64 %i.ps
  br label %vector.body691

vector.body691:                                   ; preds = %vector.body691, %vector.ph688
  %index692 = phi i64 [ 0, %vector.ph688 ], [ %index.next697, %vector.body691 ] ; 2 uses
  %i.pv = shl i64 %index692, 3                    ; 2 uses
  %next.gep693 = getelementptr i8, ptr %i.pk, i64 %i.pv ; 2 uses
  %next.gep694 = getelementptr i8, ptr %i.oz, i64 %i.pv ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !60)
  call void @llvm.experimental.noalias.scope.decl(metadata !63)
  %i.pw = getelementptr i8, ptr %next.gep694, i64 16
  %wide.load695 = load <2 x i64>, ptr %next.gep694, align 8, !alias.scope !65, !noalias !60
  %wide.load696 = load <2 x i64>, ptr %i.pw, align 8, !alias.scope !65, !noalias !60
  %i.px = getelementptr i8, ptr %next.gep693, i64 16
  store <2 x i64> %wide.load695, ptr %next.gep693, align 8, !alias.scope !68, !noalias !65
  store <2 x i64> %wide.load696, ptr %i.px, align 8, !alias.scope !68, !noalias !65
  %i.py = getelementptr i8, ptr %next.gep694, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep694, align 8, !alias.scope !65, !noalias !60
  store <2 x ptr> splat (ptr null), ptr %i.py, align 8, !alias.scope !65, !noalias !60
  %index.next697 = add nuw i64 %index692, 4       ; 2 uses
  %i.pz = icmp eq i64 %index.next697, %n.vec690
  br i1 %i.pz, label %middle.block698, label %vector.body691, !llvm.loop !70

middle.block698:                                  ; preds = %vector.body691
  %cmp.n699 = icmp eq i64 %i.po, %n.vec690
  br i1 %cmp.n699, label %_ZNSt6vectorISt10unique_ptrIN4node6worker12TransferDataESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i144.preheader702

.lr.ph.i.i.i.i.i144.preheader702:                 ; preds = %vector.memcheck682, %.lr.ph.i.i.i.i.i144.preheader, %middle.block698
  %.012.i.i.i.i.i.ph = phi ptr [ %i.pk, %vector.memcheck682 ], [ %i.pk, %.lr.ph.i.i.i.i.i144.preheader ], [ %i.pt, %middle.block698 ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.oz, %vector.memcheck682 ], [ %i.oz, %.lr.ph.i.i.i.i.i144.preheader ], [ %i.pu, %middle.block698 ]
  br label %.lr.ph.i.i.i.i.i144

.lr.ph.i.i.i.i.i144:                              ; preds = %.lr.ph.i.i.i.i.i144.preheader702, %.lr.ph.i.i.i.i.i144
  %.012.i.i.i.i.i = phi ptr [ %i.qc, %.lr.ph.i.i.i.i.i144 ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i144.preheader702 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.qb, %.lr.ph.i.i.i.i.i144 ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i144.preheader702 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !60)
  call void @llvm.experimental.noalias.scope.decl(metadata !63)
  %i.qa = load i64, ptr %.0911.i.i.i.i.i, align 8, !alias.scope !63, !noalias !60
  store i64 %i.qa, ptr %.012.i.i.i.i.i, align 8, !alias.scope !60, !noalias !63
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !alias.scope !63, !noalias !60
  %i.qb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i21.i = icmp eq ptr %i.qb, %i.os
  br i1 %.not.i.i.i.i21.i, label %_ZNSt6vectorISt10unique_ptrIN4node6worker12TransferDataESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i144, !llvm.loop !71

_ZNSt6vectorISt10unique_ptrIN4node6worker12TransferDataESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i144, %middle.block698, %_ZNKSt6vectorISt10unique_ptrIN4node6worker12TransferDataESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.pk, %_ZNKSt6vectorISt10unique_ptrIN4node6worker12TransferDataESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.pt, %middle.block698 ], [ %i.qc, %.lr.ph.i.i.i.i.i144 ]
  %i.qd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.oz, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN4node6worker12TransferDataESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i, label %bb.dd

bb.dd:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN4node6worker12TransferDataESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i
  %i.qe = load ptr, ptr %i.ot, align 8
  %i.qf = ptrtoint ptr %i.qe to i64
  %i.qg = sub i64 %i.qf, %i.pb
  call void @_ZdlPvm(ptr noundef nonnull %i.oz, i64 noundef %i.qg) #32
  br label %_ZNSt6vectorISt10unique_ptrIN4node6worker12TransferDataESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN4node6worker12TransferDataESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i: ; preds = %bb.dd, %_ZNSt6vectorISt10unique_ptrIN4node6worker12TransferDataESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i
  store ptr %i.pk, ptr %i.oy, align 8
  store ptr %i.qd, ptr %i.or, align 8
  %i.qh = getelementptr inbounds nuw [8 x i8], ptr %i.pk, i64 %i.pi
  store ptr %i.qh, ptr %i.ot, align 8
  br label %bb.de

_ZN4node17BaseObjectPtrImplINS_10BaseObjectELb0EED2Ev.exit.thread.i: ; preds = %bb.cy
  %i.qi = load ptr, ptr %.sroa.022.0.i, align 8
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 8
  %i.qk = load ptr, ptr %i.qj, align 8
  call void %i.qk(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.022.0.i) #29, !inline_history !72
  br label %.loopexit

bb.de:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN4node6worker12TransferDataESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i, %bb.da
  call void @_ZN4node10BaseObject17decrease_refcountEv(ptr noundef nonnull align 8 dereferenceable(48) %i.nz) #29
  %i.ql = add i32 %.0851.i, 1                     ; 2 uses
  %i.qm = zext i32 %i.ql to i64                   ; 2 uses
  %i.qn = load ptr, ptr %i.ju, align 8
  %i.qo = load ptr, ptr %i.jt, align 8            ; 2 uses
  %i.qp = ptrtoint ptr %i.qn to i64
  %i.qq = ptrtoint ptr %i.qo to i64
  %i.qr = sub i64 %i.qp, %i.qq
  %i.qs = ashr exact i64 %i.qr, 3
  %i.qt = icmp ugt i64 %i.qs, %i.qm
  br i1 %i.qt, label %.lr.ph.i141, label %.loopexit291, !llvm.loop !73

.loopexit:                                        ; preds = %bb.cx, %_ZN4node17BaseObjectPtrImplINS_10BaseObjectELb0EED2Ev.exit.thread.i
  call void @_ZN4node10BaseObject17decrease_refcountEv(ptr noundef nonnull align 8 dereferenceable(48) %i.nz) #29
  br label %_ZNK2v85MaybeIbE2ToEPb.exit.thread255.thread

.loopexit291:                                     ; preds = %bb.de, %._crit_edge
  %i.qu = call { ptr, i64 } @_ZN2v815ValueSerializer7ReleaseEv(ptr noundef nonnull align 8 dereferenceable(8) %22) #29 ; 2 uses
  %i.qv = extractvalue { ptr, i64 } %i.qu, 0      ; 2 uses
  %.not78 = icmp eq ptr %i.qv, null
  br i1 %.not78, label %bb.df, label %bb.dg, !prof !5

bb.df:                                            ; preds = %.loopexit291
  call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node6worker7Message9SerializeEPNS_11EnvironmentEN2v85LocalINS4_7ContextEEENS5_INS4_5ValueEEERKNS_16MaybeStackBufferIS9_Lm8EEENS5_INS4_6ObjectEEEE20error_and_abort_args_0) #29
  call void @abort() #30
  unreachable

bb.dg:                                            ; preds = %.loopexit291
  %i.qw = extractvalue { ptr, i64 } %i.qu, 1
  %i.qx = load ptr, ptr %i.n, align 8
  call void @free(ptr noundef %i.qx) #29
  store ptr %i.qv, ptr %i.n, align 8
  %i.qy = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.qw, ptr %i.qy, align 8
  br label %_ZNK2v85MaybeIbE2ToEPb.exit.thread255.thread

_ZNK2v85MaybeIbE2ToEPb.exit.thread255.thread:     ; preds = %bb.h, %_ZNSt12__shared_ptrIN2v812BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNK2v85MaybeIbE2ToEPb.exit.thread272, %_ZN4node6worker12_GLOBAL__N_123ThrowDataCloneExceptionEN2v85LocalINS2_7ContextEEENS3_INS2_6StringEEE.exit92, %_ZN4node17BaseObjectPtrImplINS_10BaseObjectELb0EED2Ev.exit121, %_ZN4node6worker12_GLOBAL__N_123ThrowDataCloneExceptionEN2v85LocalINS2_7ContextEEENS3_INS2_6StringEEE.exit, %_ZN4node6worker12_GLOBAL__N_123ThrowDataCloneExceptionEN2v85LocalINS2_7ContextEEENS3_INS2_6StringEEE.exit96, %_ZN4node6worker12_GLOBAL__N_123ThrowDataCloneExceptionEN2v85LocalINS2_7ContextEEENS3_INS2_6StringEEE.exit84, %_ZN4node6worker12_GLOBAL__N_123ThrowDataCloneExceptionEN2v85LocalINS2_7ContextEEENS3_INS2_6StringEEE.exit88, %_ZN4node6worker12_GLOBAL__N_123ThrowDataCloneExceptionEN2v85LocalINS2_7ContextEEENS3_INS2_6StringEEE.exit103, %bb.ba, %.loopexit292, %bb.dg, %.loopexit, %bb.cl
  %.sroa.17.0358 = phi ptr [ %.sroa.17.0.lcssa, %bb.cl ], [ %.sroa.17.0392, %_ZN4node6worker12_GLOBAL__N_123ThrowDataCloneExceptionEN2v85LocalINS2_7ContextEEENS3_INS2_6StringEEE.exit ], [ %.sroa.17.0.lcssa, %.loopexit ], [ %.sroa.17.0.lcssa, %bb.dg ], [ %.sroa.17.0.lcssa, %.loopexit292 ], [ %.sroa.17.0392, %_ZNK2v85MaybeIbE2ToEPb.exit.thread272 ], [ %.sroa.17.0392, %bb.ba ], [ %.sroa.17.0392, %_ZN4node6worker12_GLOBAL__N_123ThrowDataCloneExceptionEN2v85LocalINS2_7ContextEEENS3_INS2_6StringEEE.exit103 ], [ %.sroa.17.0392, %_ZN4node6worker12_GLOBAL__N_123ThrowDataCloneExceptionEN2v85LocalINS2_7ContextEEENS3_INS2_6StringEEE.exit88 ], [ %.sroa.17.0.lcssa, %_ZNSt12__shared_ptrIN2v812BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %.sroa.17.0392, %_ZN4node6worker12_GLOBAL__N_123ThrowDataCloneExceptionEN2v85LocalINS2_7ContextEEENS3_INS2_6StringEEE.exit84 ], [ %.sroa.17.0392, %_ZN4node6worker12_GLOBAL__N_123ThrowDataCloneExceptionEN2v85LocalINS2_7ContextEEENS3_INS2_6StringEEE.exit96 ], [ %.sroa.17.0392, %_ZN4node17BaseObjectPtrImplINS_10BaseObjectELb0EED2Ev.exit121 ], [ %.sroa.17.0392, %_ZN4node6worker12_GLOBAL__N_123ThrowDataCloneExceptionEN2v85LocalINS2_7ContextEEENS3_INS2_6StringEEE.exit92 ], [ %.sroa.17.0392, %bb.h ]
  %.sroa.0204.0324 = phi ptr [ %.sroa.0204.0.lcssa, %bb.cl ], [ %.sroa.0204.0394, %_ZN4node6worker12_GLOBAL__N_123ThrowDataCloneExceptionEN2v85LocalINS2_7ContextEEENS3_INS2_6StringEEE.exit ], [ %.sroa.0204.0.lcssa, %.loopexit ], [ %.sroa.0204.0.lcssa, %bb.dg ], [ %.sroa.0204.0.lcssa, %.loopexit292 ], [ %.sroa.0204.0394, %_ZNK2v85MaybeIbE2ToEPb.exit.thread272 ], [ %.sroa.0204.0394, %bb.ba ], [ %.sroa.0204.0394, %_ZN4node6worker12_GLOBAL__N_123ThrowDataCloneExceptionEN2v85LocalINS2_7ContextEEENS3_INS2_6StringEEE.exit103 ], [ %.sroa.0204.0394, %_ZN4node6worker12_GLOBAL__N_123ThrowDataCloneExceptionEN2v85LocalINS2_7ContextEEENS3_INS2_6StringEEE.exit88 ], [ %.sroa.0204.0.lcssa, %_ZNSt12__shared_ptrIN2v812BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %.sroa.0204.0394, %_ZN4node6worker12_GLOBAL__N_123ThrowDataCloneExceptionEN2v85LocalINS2_7ContextEEENS3_INS2_6StringEEE.exit84 ], [ %.sroa.0204.0394, %_ZN4node6worker12_GLOBAL__N_123ThrowDataCloneExceptionEN2v85LocalINS2_7ContextEEENS3_INS2_6StringEEE.exit96 ], [ %.sroa.0204.0394, %_ZN4node17BaseObjectPtrImplINS_10BaseObjectELb0EED2Ev.exit121 ], [ %.sroa.0204.0394, %_ZN4node6worker12_GLOBAL__N_123ThrowDataCloneExceptionEN2v85LocalINS2_7ContextEEENS3_INS2_6StringEEE.exit92 ], [ %.sroa.0204.0394, %bb.h ] ; 3 uses
  %.sroa.074.9 = phi i16 [ 0, %bb.cl ], [ 0, %_ZN4node6worker12_GLOBAL__N_123ThrowDataCloneExceptionEN2v85LocalINS2_7ContextEEENS3_INS2_6StringEEE.exit ], [ 0, %.loopexit ], [ 257, %bb.dg ], [ 0, %.loopexit292 ], [ 0, %_ZNK2v85MaybeIbE2ToEPb.exit.thread272 ], [ 0, %bb.ba ], [ 0, %_ZN4node6worker12_GLOBAL__N_123ThrowDataCloneExceptionEN2v85LocalINS2_7ContextEEENS3_INS2_6StringEEE.exit103 ], [ 0, %_ZN4node6worker12_GLOBAL__N_123ThrowDataCloneExceptionEN2v85LocalINS2_7ContextEEENS3_INS2_6StringEEE.exit88 ], [ 0, %_ZNSt12__shared_ptrIN2v812BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ 0, %_ZN4node6worker12_GLOBAL__N_123ThrowDataCloneExceptionEN2v85LocalINS2_7ContextEEENS3_INS2_6StringEEE.exit84 ], [ 0, %_ZN4node6worker12_GLOBAL__N_123ThrowDataCloneExceptionEN2v85LocalINS2_7ContextEEENS3_INS2_6StringEEE.exit96 ], [ 0, %_ZN4node17BaseObjectPtrImplINS_10BaseObjectELb0EED2Ev.exit121 ], [ 0, %_ZN4node6worker12_GLOBAL__N_123ThrowDataCloneExceptionEN2v85LocalINS2_7ContextEEENS3_INS2_6StringEEE.exit92 ], [ 0, %bb.h ]
  %.not.i.i.i.i145 = icmp eq ptr %.sroa.0204.0324, null
  br i1 %.not.i.i.i.i145, label %_ZN2v811LocalVectorINS_11ArrayBufferEED2Ev.exit, label %bb.dh

bb.dh:                                            ; preds = %_ZNK2v85MaybeIbE2ToEPb.exit.thread255.thread
  %i.qz = ptrtoint ptr %.sroa.17.0358 to i64
  %i.ra = ptrtoint ptr %.sroa.0204.0324 to i64
  %i.rb = sub i64 %i.qz, %i.ra
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0204.0324, i64 noundef %i.rb) #32
  br label %_ZN2v811LocalVectorINS_11ArrayBufferEED2Ev.exit

_ZN2v811LocalVectorINS_11ArrayBufferEED2Ev.exit:  ; preds = %_ZNK2v85MaybeIbE2ToEPb.exit.thread255.thread, %bb.dh
  call void @_ZN2v815ValueSerializerD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %22) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #29
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4node6worker12_GLOBAL__N_118SerializerDelegateE, i64 16), ptr %21, align 8
  %i.rc = getelementptr inbounds nuw i8, ptr %21, i64 64 ; 2 uses
  %i.rd = load ptr, ptr %i.rc, align 8            ; 3 uses
  %i.re = getelementptr inbounds nuw i8, ptr %21, i64 72
  %i.rf = load ptr, ptr %i.re, align 8            ; 2 uses
  %.not4.i.i.i.i146 = icmp eq ptr %i.rd, %i.rf
  br i1 %.not4.i.i.i.i146, label %_ZSt8_DestroyIPN4node17BaseObjectPtrImplINS0_10BaseObjectELb0EEEEvT_S5_.exit.i.i154, label %.lr.ph.i.i.i.i147

.lr.ph.i.i.i.i147:                                ; preds = %_ZN2v811LocalVectorINS_11ArrayBufferEED2Ev.exit, %_ZSt8_DestroyIN4node17BaseObjectPtrImplINS0_10BaseObjectELb0EEEEvPT_.exit.i.i.i.i150
  %.05.i.i.i.i148 = phi ptr [ %i.rh, %_ZSt8_DestroyIN4node17BaseObjectPtrImplINS0_10BaseObjectELb0EEEEvPT_.exit.i.i.i.i150 ], [ %i.rd, %_ZN2v811LocalVectorINS_11ArrayBufferEED2Ev.exit ] ; 2 uses
  %i.rg = load ptr, ptr %.05.i.i.i.i148, align 8  ; 2 uses
  %.not.i.i.i.i.i.i.i149 = icmp eq ptr %i.rg, null
  br i1 %.not.i.i.i.i.i.i.i149, label %_ZSt8_DestroyIN4node17BaseObjectPtrImplINS0_10BaseObjectELb0EEEEvPT_.exit.i.i.i.i150, label %bb.di

bb.di:                                            ; preds = %.lr.ph.i.i.i.i147
  call void @_ZN4node10BaseObject17decrease_refcountEv(ptr noundef nonnull align 8 dereferenceable(48) %i.rg) #29, !inline_history !74
  br label %_ZSt8_DestroyIN4node17BaseObjectPtrImplINS0_10BaseObjectELb0EEEEvPT_.exit.i.i.i.i150

_ZSt8_DestroyIN4node17BaseObjectPtrImplINS0_10BaseObjectELb0EEEEvPT_.exit.i.i.i.i150: ; preds = %bb.di, %.lr.ph.i.i.i.i147
  %i.rh = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i148, i64 8 ; 2 uses
  %.not.i.i.i.i151 = icmp eq ptr %i.rh, %i.rf
  br i1 %.not.i.i.i.i151, label %_ZSt8_DestroyIPN4node17BaseObjectPtrImplINS0_10BaseObjectELb0EEEEvT_S5_.exitthread-pre-split.i.i152, label %.lr.ph.i.i.i.i147, !llvm.loop !45

_ZSt8_DestroyIPN4node17BaseObjectPtrImplINS0_10BaseObjectELb0EEEEvT_S5_.exitthread-pre-split.i.i152: ; preds = %_ZSt8_DestroyIN4node17BaseObjectPtrImplINS0_10BaseObjectELb0EEEEvPT_.exit.i.i.i.i150
  %.pr.i.i153 = load ptr, ptr %i.rc, align 8
  br label %_ZSt8_DestroyIPN4node17BaseObjectPtrImplINS0_10BaseObjectELb0EEEEvT_S5_.exit.i.i154

_ZSt8_DestroyIPN4node17BaseObjectPtrImplINS0_10BaseObjectELb0EEEEvT_S5_.exit.i.i154: ; preds = %_ZSt8_DestroyIPN4node17BaseObjectPtrImplINS0_10BaseObjectELb0EEEEvT_S5_.exitthread-pre-split.i.i152, %_ZN2v811LocalVectorINS_11ArrayBufferEED2Ev.exit
  %i.ri = phi ptr [ %.pr.i.i153, %_ZSt8_DestroyIPN4node17BaseObjectPtrImplINS0_10BaseObjectELb0EEEEvT_S5_.exitthread-pre-split.i.i152 ], [ %i.rd, %_ZN2v811LocalVectorINS_11ArrayBufferEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i.i155 = icmp eq ptr %i.ri, null
  br i1 %.not.i.i1.i.i155, label %_ZNSt6vectorIN4node17BaseObjectPtrImplINS0_10BaseObjectELb0EEESaIS3_EED2Ev.exit.i156, label %bb.dj

bb.dj:                                            ; preds = %_ZSt8_DestroyIPN4node17BaseObjectPtrImplINS0_10BaseObjectELb0EEEEvT_S5_.exit.i.i154
  %i.rj = getelementptr inbounds nuw i8, ptr %21, i64 80
  %i.rk = load ptr, ptr %i.rj, align 8
  %i.rl = ptrtoint ptr %i.rk to i64
  %i.rm = ptrtoint ptr %i.ri to i64
  %i.rn = sub i64 %i.rl, %i.rm
  call void @_ZdlPvm(ptr noundef nonnull %i.ri, i64 noundef %i.rn) #32, !inline_history !74
  br label %_ZNSt6vectorIN4node17BaseObjectPtrImplINS0_10BaseObjectELb0EEESaIS3_EED2Ev.exit.i156

_ZNSt6vectorIN4node17BaseObjectPtrImplINS0_10BaseObjectELb0EEESaIS3_EED2Ev.exit.i156: ; preds = %bb.dj, %_ZSt8_DestroyIPN4node17BaseObjectPtrImplINS0_10BaseObjectELb0EEEEvT_S5_.exit.i.i154
  %i.ro = load ptr, ptr %i.u, align 8             ; 3 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %21, i64 48
  %i.rq = load ptr, ptr %i.rp, align 8            ; 2 uses
  %.not4.i.i.i1.i = icmp eq ptr %i.ro, %i.rq
  br i1 %.not4.i.i.i1.i, label %_ZSt8_DestroyIPN2v86GlobalINS0_17SharedArrayBufferEEEEvT_S5_.exit.i.i, label %.lr.ph.i.i.i2.i

.lr.ph.i.i.i2.i:                                  ; preds = %_ZNSt6vectorIN4node17BaseObjectPtrImplINS0_10BaseObjectELb0EEESaIS3_EED2Ev.exit.i156, %_ZSt8_DestroyIN2v86GlobalINS0_17SharedArrayBufferEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i3.i = phi ptr [ %i.rt, %_ZSt8_DestroyIN2v86GlobalINS0_17SharedArrayBufferEEEEvPT_.exit.i.i.i.i ], [ %i.ro, %_ZNSt6vectorIN4node17BaseObjectPtrImplINS0_10BaseObjectELb0EEESaIS3_EED2Ev.exit.i156 ] ; 3 uses
  %i.rr = load ptr, ptr %.05.i.i.i3.i, align 8    ; 2 uses
  %i.rs = icmp eq ptr %i.rr, null
end_hunk_2
begin_hunk_3_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm:bb.a
  br i1 %or.cond, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %1 ; 2 uses
  %cond = icmp eq i64 %4, 1
  br i1 %cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.x = load i8, ptr %3, align 1
  store i8 %i.x, ptr %i.w, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26: ; preds = %bb.m, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %.not25 = icmp eq i64 %i.b, %i.c
  br i1 %.not25, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %1
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 %1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %2 ; 2 uses
  %cond29 = icmp eq i64 %i.d, 1
  br i1 %cond29, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ac = load i8, ptr %i.ab, align 1
  store i8 %i.ac, ptr %i.z, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %i.ab, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27: ; preds = %bb.p, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ad = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.ad)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ae = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.ae) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.s, ptr %0, align 8
  store i64 %.0, ptr %i.h, align 8
  ret void
}

declare void @_ZN2v812api_internal17FromJustIsNothingEv() local_unnamed_addr #8

declare void @_ZN2v88TryCatchC2EPNS_7IsolateE(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef) unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4node16MaybeStackBufferIN2v85LocalINS1_5ValueEEELm8EE25AllocateSufficientStorageEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node16MaybeStackBufferIN2v85LocalINS1_5ValueEEELm8EE25AllocateSufficientStorageEmE20error_and_abort_args) #29
  tail call void @abort() #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = icmp ugt i64 %1, %i.e
  br i1 %i.f, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.not8 = icmp eq ptr %i.b, %i.g                 ; 2 uses
  %i.h = select i1 %.not8, ptr null, ptr %i.b     ; 2 uses
  %mul.ov.i.i.i = icmp ugt i64 %1, 2305843009213693951
  br i1 %mul.ov.i.i.i, label %bb.e, label %bb.f, !prof !5

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node25MultiplyWithOverflowCheckImEET_S1_S1_E20error_and_abort_args) #29
  tail call void @abort() #30
  unreachable

bb.f:                                             ; preds = %bb.d
  %mul.val.i.i.i = shl nuw i64 %1, 3              ; 2 uses
  %i.i = tail call ptr @realloc(ptr noundef %i.h, i64 noundef %mul.val.i.i.i) #37 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN4node16UncheckedReallocIN2v85LocalINS1_5ValueEEEEEPT_S6_m.exit.i, label %_ZN4node7ReallocIN2v85LocalINS1_5ValueEEEEEPT_S6_m.exit, !prof !5

_ZN4node16UncheckedReallocIN2v85LocalINS1_5ValueEEEEEPT_S6_m.exit.i: ; preds = %bb.f
  tail call void @_ZN4node21LowMemoryNotificationEv() #29
  %i.k = tail call ptr @realloc(ptr noundef %i.h, i64 noundef %mul.val.i.i.i) #37 ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.g, label %_ZN4node7ReallocIN2v85LocalINS1_5ValueEEEEEPT_S6_m.exit, !prof !409

bb.g:                                             ; preds = %_ZN4node16UncheckedReallocIN2v85LocalINS1_5ValueEEEEEPT_S6_m.exit.i
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node7ReallocIN2v85LocalINS1_5ValueEEEEEPT_S6_mE20error_and_abort_args) #29
  tail call void @abort() #30
  unreachable

_ZN4node7ReallocIN2v85LocalINS1_5ValueEEEEEPT_S6_m.exit: ; preds = %bb.f, %_ZN4node16UncheckedReallocIN2v85LocalINS1_5ValueEEEEEPT_S6_m.exit.i
  %.09.i7.i = phi ptr [ %i.k, %_ZN4node16UncheckedReallocIN2v85LocalINS1_5ValueEEEEEPT_S6_m.exit.i ], [ %i.i, %bb.f ] ; 2 uses
  store ptr %.09.i7.i, ptr %i.a, align 8
  store i64 %1, ptr %i.d, align 8
  br i1 %.not8, label %bb.h, label %bb.j

bb.h:                                             ; preds = %_ZN4node7ReallocIN2v85LocalINS1_5ValueEEEEEPT_S6_m.exit
  %i.l = load i64, ptr %0, align 8                ; 2 uses
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = shl i64 %i.l, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.09.i7.i, ptr nonnull align 8 %i.g, i64 %i.m, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %_ZN4node7ReallocIN2v85LocalINS1_5ValueEEEEEPT_S6_m.exit, %bb.h, %bb.i, %bb.c
  store i64 %1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN4node16MaybeStackBufferIN2v85LocalINS1_5ValueEEELm8EEixEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = icmp ult i64 %1, %i.a
  br i1 %i.b, label %bb.c, label %bb.b, !prof !29

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node16MaybeStackBufferIN2v85LocalINS1_5ValueEEELm8EEixEmE20error_and_abort_args) #29
  tail call void @abort() #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %1
  ret ptr %i.e
}

declare ptr @_ZN2v86Symbol11GetIteratorEPNS_7IsolateE(ptr noundef) local_unnamed_addr #8

declare noundef zeroext i1 @_ZNK2v85Value12BooleanValueEPNS_7IsolateE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %.not.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %i.a, ptr %i.c, align 8
  %i.f = load ptr, ptr %i.b, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.g, ptr %i.b, align 8
  br label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE9push_backEOS4_.exit

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8                ; 7 uses
  %i.i = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.k = sub i64 %i.i, %i.j                       ; 4 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775800
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.78) #30
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.m = ashr exact i64 %i.k, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  %i.n = add nsw i64 %.sroa.speculated.i.i.i.i, %i.m ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.m
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 1152921504606846975)
  %i.q = select i1 %i.o, i64 1152921504606846975, i64 %i.p ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #31 ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.k
  store i64 %i.a, ptr %i.t, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.u = ptrtoaddr ptr %i.s to i64
  %2 = sub i64 %i.i, %i.j
  %3 = add i64 %2, -8                             ; 2 uses
  %i.v = lshr i64 %3, 3
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %3, 56
  %i.x = sub i64 %i.u, %i.j
  %diff.check = icmp ult i64 %i.x, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader8, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.w, 4611686018427387900      ; 3 uses
  %i.y = shl i64 %n.vec, 3                        ; 2 uses
  %i.z = getelementptr i8, ptr %i.s, i64 %i.y     ; 2 uses
  %i.aa = getelementptr i8, ptr %i.h, i64 %i.y
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ab = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.s, i64 %i.ab ; 2 uses
  %next.gep5 = getelementptr i8, ptr %i.h, i64 %i.ab ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !410)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !413)
  %i.ac = getelementptr i8, ptr %next.gep5, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep5, align 8, !alias.scope !413, !noalias !410
  %wide.load6 = load <2 x i64>, ptr %i.ac, align 8, !alias.scope !413, !noalias !410
  %i.ad = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !410, !noalias !413
  store <2 x i64> %wide.load6, ptr %i.ad, align 8, !alias.scope !410, !noalias !413
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !415

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader8

.lr.ph.i.i.i.i.i.i.preheader8:                    ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.z, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.h, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.aa, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader8, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader8 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader8 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !410)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !413)
  %i.af = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !alias.scope !413, !noalias !410
  store i64 %i.af, ptr %.012.i.i.i.i.i.i, align 8, !alias.scope !410, !noalias !413
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ag, %i.c
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !416

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.s, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.z, %middle.block ], [ %i.ah, %.lr.ph.i.i.i.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.k) #32
  br label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i
  store ptr %i.s, ptr %0, align 8
  store ptr %i.ai, ptr %i.b, align 8
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.q
  store ptr %i.aj, ptr %i.d, align 8
  br label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE9push_backEOS4_.exit

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE9push_backEOS4_.exit: ; preds = %bb.b, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #21

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #22

declare void @_ZN4node21LowMemoryNotificationEv() local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN2v818CompiledWasmModuleESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN2v818CompiledWasmModuleEEvT_S3_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN2v818CompiledWasmModuleEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.aa, %_ZSt8_DestroyIN2v818CompiledWasmModuleEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.h = load i64, ptr %i.f, align 8
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8              ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN2v818CompiledWasmModuleEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 4 uses
  %i.m = load atomic i64, ptr %i.l acquire, align 8 ; 2 uses
  %i.n = icmp eq i64 %i.m, 4294967297
  %i.o = trunc i64 %i.m to i32                    ; 2 uses
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.l, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i32 0, ptr %i.p, align 4
  %i.q = load ptr, ptr %i.k, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #29, !inline_history !392
  %i.t = load ptr, ptr %i.k, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #29, !inline_history !392
  br label %_ZSt8_DestroyIN2v818CompiledWasmModuleEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.w = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = add nsw i32 %i.o, -1
  store i32 %i.x, ptr %i.l, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.y = atomicrmw volatile add ptr %i.l, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.o, %bb.e ], [ %i.y, %bb.f ]
  %i.z = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.z, label %bb.g, label %_ZSt8_DestroyIN2v818CompiledWasmModuleEEvPT_.exit.i.i, !prof !5

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #29
  br label %_ZSt8_DestroyIN2v818CompiledWasmModuleEEvPT_.exit.i.i

_ZSt8_DestroyIN2v818CompiledWasmModuleEEvPT_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 48 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aa, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN2v818CompiledWasmModuleEEvT_S3_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !393

_ZSt8_DestroyIPN2v818CompiledWasmModuleEEvT_S3_.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN2v818CompiledWasmModuleEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8
  br label %_ZSt8_DestroyIPN2v818CompiledWasmModuleEEvT_S3_.exit

_ZSt8_DestroyIPN2v818CompiledWasmModuleEEvT_S3_.exit: ; preds = %_ZSt8_DestroyIPN2v818CompiledWasmModuleEEvT_S3_.exitthread-pre-split, %bb.a
  %i.ab = phi ptr [ %.pr, %_ZSt8_DestroyIPN2v818CompiledWasmModuleEEvT_S3_.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN2v818CompiledWasmModuleESaIS1_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN2v818CompiledWasmModuleEEvT_S3_.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = sub i64 %i.ae, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.ag) #32
  br label %_ZNSt12_Vector_baseIN2v818CompiledWasmModuleESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN2v818CompiledWasmModuleESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN2v818CompiledWasmModuleEEvT_S3_.exit, %bb.h
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local ptr @_ZN4node23ERR_CLOSED_MESSAGE_PORTIJEEEN2v85LocalINS1_6ObjectEEEPNS1_7IsolateESt17basic_string_viewIcSt11char_traitsIcEEDpOT_(ptr noundef %0, i64 %1, ptr %2) local_unnamed_addr #2 comdat {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.a, ptr %3, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8
  store i8 0, ptr %i.a, align 8
  %i.c = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef %2, i64 noundef %1) ; 0 uses
  %i.d = call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef %0, ptr noundef nonnull @.str.136, i32 noundef 1, i32 noundef 23) #29 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_ZN4node21FIXED_ONE_BYTE_STRINGILm24EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  call void @_ZN2v812api_internal12ToLocalEmptyEv() #29
  br label %_ZN4node21FIXED_ONE_BYTE_STRINGILm24EQgtT_Li0EEEN2v85LocalINS1_6StringEEEPNS1_7IsolateERAT__Kc.exit
end_hunk_3
