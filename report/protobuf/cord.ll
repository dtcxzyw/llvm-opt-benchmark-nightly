inline.NumInlined: 1703
inline.NumDeleted: 496
begin_hunk_0_@_ZN4absl12lts_202505124Cord12RemovePrefixEm:bb.a

bb.t:                                             ; preds = %bb.s
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !22
  %.not.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i, label %bb.u, label %_ZN4absl12lts_202505124Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit, !prof !59

bb.u:                                             ; preds = %bb.t
  %i.be = load i64, ptr %0, align 8, !tbaa !14
  %i.bf = add nsw i64 %i.be, -1                   ; 2 uses
  %.not.i.i = icmp eq i64 %i.bf, 0
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051213cord_internal9CordzInfo16MaybeUntrackCordEPS2_.exit.i, label %bb.v, !prof !27

bb.v:                                             ; preds = %bb.u
  %i.bg = inttoptr i64 %i.bf to ptr
  tail call void @_ZN4absl12lts_2025051213cord_internal9CordzInfo7UntrackEv(ptr noundef nonnull align 8 dereferenceable(1344) %i.bg)
  br label %_ZN4absl12lts_2025051213cord_internal9CordzInfo16MaybeUntrackCordEPS2_.exit.i

_ZN4absl12lts_2025051213cord_internal9CordzInfo16MaybeUntrackCordEPS2_.exit.i: ; preds = %bb.v, %bb.u
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bi = atomicrmw sub ptr %i.bh, i32 2 acq_rel, align 4
  %.not.i4.i = icmp eq i32 %i.bi, 2
  br i1 %.not.i4.i, label %bb.w, label %_ZN4absl12lts_202505124Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit.thread, !prof !59

bb.w:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal9CordzInfo16MaybeUntrackCordEPS2_.exit.i
  tail call void @_ZN4absl12lts_2025051213cord_internal7CordRep7DestroyEPS2_(ptr noundef nonnull %i.bb)
  br label %_ZN4absl12lts_202505124Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit.thread

_ZN4absl12lts_202505124Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit.thread: ; preds = %_ZN4absl12lts_2025051213cord_internal9CordzInfo16MaybeUntrackCordEPS2_.exit.i, %bb.w
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.x

_ZN4absl12lts_202505124Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit: ; preds = %bb.s, %bb.t
  %i.bj = trunc i8 %i.a to i1
  %i.bk = icmp ne ptr %i.bb, null
  %.not88 = select i1 %i.bj, i1 %i.bk, i1 false
  br i1 %.not88, label %bb.ad, label %bb.x

bb.x:                                             ; preds = %_ZN4absl12lts_202505124Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit.thread, %_ZN4absl12lts_202505124Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit
  %i.bl = phi i8 [ 0, %_ZN4absl12lts_202505124Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit.thread ], [ %i.a, %_ZN4absl12lts_202505124Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit ]
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 11 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %1 ; 4 uses
  %i.bo = sext i8 %i.bl to i64
  %i.bp = lshr i64 %i.bo, 1                       ; 5 uses
  %i.bq = sub i64 %i.bp, %1                       ; 6 uses
  %i.br = icmp ugt i64 %i.bq, 7
  br i1 %i.br, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %.0.copyload6.i.i = load i64, ptr %i.bn, align 1
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bp
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 -8
  %.0.copyload4.i.i = load i64, ptr %i.bt, align 1
  store i64 %.0.copyload6.i.i, ptr %i.bm, align 1
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bq
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 -8
  store i64 %.0.copyload4.i.i, ptr %i.bv, align 1
  br label %_ZN4absl12lts_202505124Cord9InlineRep13remove_prefixEm.exit

bb.z:                                             ; preds = %bb.x
  %i.bw = icmp samesign ugt i64 %i.bq, 3
  br i1 %i.bw, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %.0.copyload2.i.i = load i32, ptr %i.bn, align 1
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bp
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -4
  %.0.copyload.i.i = load i32, ptr %i.by, align 1
  store i32 %.0.copyload2.i.i, ptr %i.bm, align 1
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bq
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -4
  store i32 %.0.copyload.i.i, ptr %i.ca, align 1
  br label %_ZN4absl12lts_202505124Cord9InlineRep13remove_prefixEm.exit

bb.ab:                                            ; preds = %bb.z
  %.not.i.i60 = icmp eq i64 %i.bp, %1
  br i1 %.not.i.i60, label %_ZN4absl12lts_202505124Cord9InlineRep13remove_prefixEm.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cb = load i8, ptr %i.bn, align 1, !tbaa !14
  store i8 %i.cb, ptr %i.bm, align 1, !tbaa !14
  %i.cc = lshr i64 %i.bq, 1                       ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !14
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.cc
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !14
  %i.cg = getelementptr i8, ptr %i.bm, i64 %i.bp
  %i.ch = getelementptr i8, ptr %i.cg, i64 -1
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !14
  %i.cj = getelementptr i8, ptr %0, i64 %i.bq
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !14
  br label %_ZN4absl12lts_202505124Cord9InlineRep13remove_prefixEm.exit

_ZN4absl12lts_202505124Cord9InlineRep13remove_prefixEm.exit: ; preds = %bb.y, %bb.aa, %bb.ab, %bb.ac
  %i.ck = load i8, ptr %0, align 8, !tbaa !14
  %i.cl = sext i8 %i.ck to i64
  %i.cm = lshr i64 %i.cl, 1
  %i.cn = sub i64 %i.cm, %1                       ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.cn
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.co, i8 0, i64 %1, i1 false)
  %.tr.i.i.i.i.i = trunc i64 %i.cn to i8
  %i.cp = shl i8 %.tr.i.i.i.i.i, 1
  store i8 %i.cp, ptr %0, align 8, !tbaa !14
  br label %bb.bd

bb.ad:                                            ; preds = %_ZN4absl12lts_202505124Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.cq = load i64, ptr %0, align 8, !tbaa !14
  %i.cr = add nsw i64 %i.cq, -1                   ; 2 uses
  %i.cs = inttoptr i64 %i.cr to ptr               ; 2 uses
  store ptr %i.cs, ptr %9, align 8, !tbaa !35
  %.not.i61 = icmp eq i64 %i.cr, 0
  br i1 %.not.i61, label %_ZN4absl12lts_2025051213cord_internal16CordzUpdateScopeC2EPNS1_9CordzInfoENS1_18CordzUpdateTracker16MethodIdentifierE.exit, label %bb.ae, !prof !27

bb.ae:                                            ; preds = %bb.ad
  tail call void @_ZN4absl12lts_2025051213cord_internal9CordzInfo4LockENS1_18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(1344) %i.cs, i32 noundef 21)
  br label %_ZN4absl12lts_2025051213cord_internal16CordzUpdateScopeC2EPNS1_9CordzInfoENS1_18CordzUpdateTracker16MethodIdentifierE.exit

_ZN4absl12lts_2025051213cord_internal16CordzUpdateScopeC2EPNS1_9CordzInfoENS1_18CordzUpdateTracker16MethodIdentifierE.exit: ; preds = %bb.ad, %bb.ae
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  %i.cu = load i8, ptr %i.ct, align 4, !tbaa !23
  %i.cv = icmp eq i8 %i.cu, 2
  br i1 %i.cv, label %bb.af, label %_ZN4absl12lts_2025051213cord_internal13RemoveCrcNodeEPNS1_7CordRepE.exit, !prof !59

bb.af:                                            ; preds = %_ZN4absl12lts_2025051213cord_internal16CordzUpdateScopeC2EPNS1_9CordzInfoENS1_18CordzUpdateTracker16MethodIdentifierE.exit
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !55 ; 5 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  %i.cz = load atomic i32, ptr %i.cy acquire, align 8
  %i.da = icmp eq i32 %i.cz, 2
  br i1 %i.da, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.db = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  tail call void @_ZN4absl12lts_2025051212crc_internal12CrcCordStateD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.db) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef 32) #22
  br label %_ZN4absl12lts_2025051213cord_internal13RemoveCrcNodeEPNS1_7CordRepE.exit

bb.ah:                                            ; preds = %bb.af
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cx) ]
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.dd = atomicrmw add ptr %i.dc, i32 2 monotonic, align 4 ; 0 uses
  %i.de = atomicrmw sub ptr %i.cy, i32 2 acq_rel, align 4
  %.not.i.i64 = icmp eq i32 %i.de, 2
  br i1 %.not.i.i64, label %bb.ai, label %_ZN4absl12lts_2025051213cord_internal13RemoveCrcNodeEPNS1_7CordRepE.exit, !prof !59

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZN4absl12lts_2025051213cord_internal7CordRep7DestroyEPS2_(ptr noundef nonnull %i.bb)
          to label %_ZN4absl12lts_2025051213cord_internal13RemoveCrcNodeEPNS1_7CordRepE.exit unwind label %bb.al

_ZN4absl12lts_2025051213cord_internal13RemoveCrcNodeEPNS1_7CordRepE.exit: ; preds = %bb.ah, %bb.ag, %_ZN4absl12lts_2025051213cord_internal16CordzUpdateScopeC2EPNS1_9CordzInfoENS1_18CordzUpdateTracker16MethodIdentifierE.exit, %bb.ai
  %.0.i63 = phi ptr [ %i.cx, %bb.ag ], [ %i.bb, %_ZN4absl12lts_2025051213cord_internal16CordzUpdateScopeC2EPNS1_9CordzInfoENS1_18CordzUpdateTracker16MethodIdentifierE.exit ], [ %i.cx, %bb.ah ], [ %i.cx, %bb.ai ] ; 19 uses
  %i.df = load i64, ptr %.0.i63, align 8, !tbaa !22 ; 3 uses
  %.not41 = icmp ult i64 %1, %i.df
  br i1 %.not41, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %_ZN4absl12lts_2025051213cord_internal13RemoveCrcNodeEPNS1_7CordRepE.exit
  %i.dg = getelementptr inbounds nuw i8, ptr %.0.i63, i64 8
  %i.dh = atomicrmw sub ptr %i.dg, i32 2 acq_rel, align 4
  %.not.i65 = icmp eq i32 %i.dh, 2
  br i1 %.not.i65, label %bb.ak, label %.split6.i, !prof !59

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZN4absl12lts_2025051213cord_internal7CordRep7DestroyEPS2_(ptr noundef nonnull %.0.i63)
          to label %.split6.i unwind label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ai
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.am:                                            ; preds = %_ZN4absl12lts_2025051213cord_internal13RemoveCrcNodeEPNS1_7CordRepE.exit
  %i.dj = getelementptr inbounds nuw i8, ptr %.0.i63, i64 12 ; 2 uses
  %i.dk = load i8, ptr %i.dj, align 4, !tbaa !23
  switch i8 %i.dk, label %bb.at [
    i8 3, label %bb.an
    i8 1, label %bb.ar
  ]

bb.an:                                            ; preds = %bb.am
  %i.dl = sub i64 %i.df, %1
  %i.dm = invoke noundef ptr @_ZN4absl12lts_2025051213cord_internal12CordRepBtree7SubTreeEmm(ptr noundef nonnull align 8 dereferenceable(64) %.0.i63, i64 noundef %1, i64 noundef %i.dl)
          to label %bb.ao unwind label %bb.aq     ; 2 uses

bb.ao:                                            ; preds = %bb.an
  %i.dn = getelementptr inbounds nuw i8, ptr %.0.i63, i64 8
  %i.do = atomicrmw sub ptr %i.dn, i32 2 acq_rel, align 4
  %.not.i67 = icmp eq i32 %i.do, 2
  br i1 %.not.i67, label %bb.ap, label %_ZN4absl12lts_2025051213cord_internal7CordRep5UnrefEPS2_.exit, !prof !59

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZN4absl12lts_2025051213cord_internal7CordRep7DestroyEPS2_(ptr noundef nonnull %.0.i63)
          to label %_ZN4absl12lts_2025051213cord_internal7CordRep5UnrefEPS2_.exit unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.an
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.ar:                                            ; preds = %bb.am
  %i.dq = getelementptr inbounds nuw i8, ptr %.0.i63, i64 8
  %i.dr = load atomic i32, ptr %i.dq acquire, align 8
  %i.ds = icmp eq i32 %i.dr, 2
  %.pre = load i64, ptr %.0.i63, align 8, !tbaa !22 ; 2 uses
  br i1 %i.ds, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.dt = getelementptr inbounds nuw i8, ptr %.0.i63, i64 16 ; 2 uses
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !111
  %i.dv = add i64 %i.du, %1
  store i64 %i.dv, ptr %i.dt, align 8, !tbaa !111
  %i.dw = sub i64 %.pre, %1
  store i64 %i.dw, ptr %.0.i63, align 8, !tbaa !22
  br label %.split.i

bb.at:                                            ; preds = %bb.am, %bb.ar
  %i.dx = phi i64 [ %i.df, %bb.am ], [ %.pre, %bb.ar ]
  %i.dy = sub i64 %i.dx, %1
  %i.dz = icmp eq i64 %1, 0
  br i1 %i.dz, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.ea = getelementptr inbounds nuw i8, ptr %.0.i63, i64 8
  %i.eb = atomicrmw add ptr %i.ea, i32 2 monotonic, align 4 ; 0 uses
  br label %_ZN4absl12lts_2025051213cord_internal16CordRepSubstring9SubstringEPNS1_7CordRepEmm.exit

bb.av:                                            ; preds = %bb.at
  %i.ec = load i8, ptr %i.dj, align 4, !tbaa !23
  %i.ed = icmp eq i8 %i.ec, 1
  br i1 %i.ed, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.ee = getelementptr inbounds nuw i8, ptr %.0.i63, i64 16
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !111
  %i.eg = add i64 %i.ef, %1
  %i.eh = getelementptr inbounds nuw i8, ptr %.0.i63, i64 24
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !32
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.018.i = phi i64 [ %i.eg, %bb.aw ], [ %1, %bb.av ]
  %.017.i = phi ptr [ %i.ei, %bb.aw ], [ %.0.i63, %bb.av ] ; 3 uses
  %i.ej = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #21
          to label %.noexc71 unwind label %bb.az  ; 7 uses

.noexc71:                                         ; preds = %bb.ax
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.ej, i8 0, i64 16, i1 false)
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  store i32 2, ptr %i.ek, align 4, !tbaa !15
  store i64 %i.dy, ptr %i.ej, align 8, !tbaa !22
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 12
  store i8 1, ptr %i.el, align 4, !tbaa !23
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  store i64 %.018.i, ptr %i.em, align 8, !tbaa !111
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.017.i) ]
  %i.en = getelementptr inbounds nuw i8, ptr %.017.i, i64 8
  %i.eo = atomicrmw add ptr %i.en, i32 2 monotonic, align 4 ; 0 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  store ptr %.017.i, ptr %i.ep, align 8, !tbaa !32
  br label %_ZN4absl12lts_2025051213cord_internal16CordRepSubstring9SubstringEPNS1_7CordRepEmm.exit

_ZN4absl12lts_2025051213cord_internal16CordRepSubstring9SubstringEPNS1_7CordRepEmm.exit: ; preds = %.noexc71, %bb.au
  %.0.i70 = phi ptr [ %.0.i63, %bb.au ], [ %i.ej, %.noexc71 ] ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.0.i63, i64 8
  %i.er = atomicrmw sub ptr %i.eq, i32 2 acq_rel, align 4
  %.not.i72 = icmp eq i32 %i.er, 2
  br i1 %.not.i72, label %bb.ay, label %.split.i, !prof !59

bb.ay:                                            ; preds = %_ZN4absl12lts_2025051213cord_internal16CordRepSubstring9SubstringEPNS1_7CordRepEmm.exit
  invoke void @_ZN4absl12lts_2025051213cord_internal7CordRep7DestroyEPS2_(ptr noundef nonnull %.0.i63)
          to label %.split.i unwind label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

_ZN4absl12lts_2025051213cord_internal7CordRep5UnrefEPS2_.exit: ; preds = %bb.ao, %bb.ap
  %.not.i75 = icmp eq ptr %i.dm, null
  br i1 %.not.i75, label %.split6.i, label %.split.i

.split.i:                                         ; preds = %_ZN4absl12lts_2025051213cord_internal16CordRepSubstring9SubstringEPNS1_7CordRepEmm.exit, %bb.ay, %bb.as, %_ZN4absl12lts_2025051213cord_internal7CordRep5UnrefEPS2_.exit
  %.03881 = phi ptr [ %i.dm, %_ZN4absl12lts_2025051213cord_internal7CordRep5UnrefEPS2_.exit ], [ %.0.i70, %_ZN4absl12lts_2025051213cord_internal16CordRepSubstring9SubstringEPNS1_7CordRepEmm.exit ], [ %.0.i70, %bb.ay ], [ %.0.i63, %bb.as ] ; 2 uses
  store ptr %.03881, ptr %i.ba, align 8, !tbaa !14
  %i.et = load ptr, ptr %9, align 8, !tbaa !35    ; 2 uses
  %.not.i.i76 = icmp eq ptr %i.et, null
  br i1 %.not.i.i76, label %_ZN4absl12lts_2025051213cord_internal16CordzUpdateScopeD2Ev.exit, label %bb.ba, !prof !27

.split6.i:                                        ; preds = %bb.ak, %bb.aj, %_ZN4absl12lts_2025051213cord_internal7CordRep5UnrefEPS2_.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.eu = load ptr, ptr %9, align 8, !tbaa !35    ; 2 uses
  %.not.i7.i = icmp eq ptr %i.eu, null
  br i1 %.not.i7.i, label %_ZN4absl12lts_2025051213cord_internal16CordzUpdateScopeD2Ev.exit, label %bb.ba, !prof !27

bb.ba:                                            ; preds = %.split6.i, %.split.i
  %.pr = phi ptr [ %i.et, %.split.i ], [ %i.eu, %.split6.i ] ; 2 uses
  %.sink.i = phi ptr [ %.03881, %.split.i ], [ null, %.split6.i ]
  %i.ev = getelementptr inbounds nuw i8, ptr %.pr, i64 64
  store ptr %.sink.i, ptr %i.ev, align 8, !tbaa !38
  invoke void @_ZN4absl12lts_2025051213cord_internal9CordzInfo6UnlockEv(ptr noundef nonnull align 8 dereferenceable(1344) %.pr)
          to label %_ZN4absl12lts_2025051213cord_internal16CordzUpdateScopeD2Ev.exit unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ew = landingpad { ptr, i32 }
          catch ptr null
  %i.ex = extractvalue { ptr, i32 } %i.ew, 0
  tail call void @__clang_call_terminate(ptr %i.ex) #25
  unreachable

_ZN4absl12lts_2025051213cord_internal16CordzUpdateScopeD2Ev.exit: ; preds = %.split.i, %.split6.i, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.bd

bb.bc:                                            ; preds = %bb.az, %bb.aq, %bb.al
  %.pn = phi { ptr, i32 } [ %i.di, %bb.al ], [ %i.dp, %bb.aq ], [ %i.es, %bb.az ]
  call void @_ZN4absl12lts_2025051213cord_internal16CordzUpdateScopeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.be

bb.bd:                                            ; preds = %_ZN4absl12lts_2025051213cord_internal16CordzUpdateScopeD2Ev.exit, %_ZN4absl12lts_202505124Cord9InlineRep13remove_prefixEm.exit
  ret void

bb.be:                                            ; preds = %bb.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59
  %.pn48.pn.pn = phi { ptr, i32 } [ %.pn48.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59 ], [ %.pn, %bb.bc ]
  resume { ptr, i32 } %.pn48.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !124
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.38) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.d, ptr %i.a, align 8, !tbaa !125
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !13
  %i.g = load i64, ptr %i.a, align 8, !tbaa !125
  store i64 %i.g, ptr %i.b, align 8, !tbaa !14
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !14
  store i8 %i.i, ptr %i.h, align 1, !tbaa !14
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !125  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !7
  %i.l = load ptr, ptr %0, align 8, !tbaa !13
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

declare void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_S3_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0 align 2

declare noundef ptr @_ZN4absl12lts_2025051213cord_internal12CordRepBtree7SubTreeEmm(ptr noundef nonnull align 8 dereferenceable(64), i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_202505124Cord12RemoveSuffixEm(ptr noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %3 = alloca %"class.std::allocator", align 1    ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %6 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 7 uses
  %7 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %8 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 7 uses
  %9 = alloca %"class.absl::lts_20250512::cord_internal::CordzUpdateScope", align 8 ; 7 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !14      ; 4 uses
  %i.b = trunc i8 %i.a to i1                      ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_202505124Cord12RemoveSuffixEm:bb.a
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

bb.m:                                             ; preds = %bb.e
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.n:                                             ; preds = %_ZNK4absl12lts_202505124Cord4sizeEv.exit45, %bb.i
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

bb.o:                                             ; preds = %bb.j
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ap = load ptr, ptr %4, align 8, !tbaa !13    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %bb.o
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !14
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47, %bb.n
  %.pn36 = phi { ptr, i32 } [ %i.an, %bb.n ], [ %i.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47 ], [ %i.ao, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, %bb.m
  %.pn36.pn.pn = phi { ptr, i32 } [ %.pn36, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49 ], [ %i.am, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.r

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn41 = phi { ptr, i32 } [ %i.au, %bb.q ], [ %.pn36.pn.pn, %bb.p ] ; 2 uses
  %i.av = load ptr, ptr %2, align 8, !tbaa !13    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %bb.r
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !14
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50, %bb.l
  %.pn41.pn = phi { ptr, i32 } [ %i.al, %bb.l ], [ %.pn41, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50 ], [ %.pn41, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.aw

bb.s:                                             ; preds = %_ZNK4absl12lts_202505124Cord4sizeEv.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8            ; 12 uses
  %i.bc = icmp ne ptr %i.bb, null
  %.not6.i = select i1 %i.b, i1 %i.bc, i1 false
  br i1 %.not6.i, label %bb.t, label %_ZN4absl12lts_202505124Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit

bb.t:                                             ; preds = %bb.s
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !22
  %.not.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i, label %bb.u, label %_ZN4absl12lts_202505124Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit, !prof !59

bb.u:                                             ; preds = %bb.t
  %i.be = load i64, ptr %0, align 8, !tbaa !14
  %i.bf = add nsw i64 %i.be, -1                   ; 2 uses
  %.not.i.i = icmp eq i64 %i.bf, 0
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051213cord_internal9CordzInfo16MaybeUntrackCordEPS2_.exit.i, label %bb.v, !prof !27

bb.v:                                             ; preds = %bb.u
  %i.bg = inttoptr i64 %i.bf to ptr
  tail call void @_ZN4absl12lts_2025051213cord_internal9CordzInfo7UntrackEv(ptr noundef nonnull align 8 dereferenceable(1344) %i.bg)
  br label %_ZN4absl12lts_2025051213cord_internal9CordzInfo16MaybeUntrackCordEPS2_.exit.i

_ZN4absl12lts_2025051213cord_internal9CordzInfo16MaybeUntrackCordEPS2_.exit.i: ; preds = %bb.v, %bb.u
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bi = atomicrmw sub ptr %i.bh, i32 2 acq_rel, align 4
  %.not.i4.i = icmp eq i32 %i.bi, 2
  br i1 %.not.i4.i, label %bb.w, label %_ZN4absl12lts_202505124Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit.thread, !prof !59

bb.w:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal9CordzInfo16MaybeUntrackCordEPS2_.exit.i
  tail call void @_ZN4absl12lts_2025051213cord_internal7CordRep7DestroyEPS2_(ptr noundef nonnull %i.bb)
  br label %_ZN4absl12lts_202505124Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit.thread

_ZN4absl12lts_202505124Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit.thread: ; preds = %_ZN4absl12lts_2025051213cord_internal9CordzInfo16MaybeUntrackCordEPS2_.exit.i, %bb.w
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.x

_ZN4absl12lts_202505124Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit: ; preds = %bb.s, %bb.t
  %i.bj = trunc i8 %i.a to i1
  %i.bk = icmp ne ptr %i.bb, null
  %.not77 = select i1 %i.bj, i1 %i.bk, i1 false
  br i1 %.not77, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN4absl12lts_202505124Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit.thread, %_ZN4absl12lts_202505124Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit
  %i.bl = phi i8 [ 0, %_ZN4absl12lts_202505124Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit.thread ], [ %i.a, %_ZN4absl12lts_202505124Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit ]
  %i.bm = sext i8 %i.bl to i64
  %i.bn = lshr i64 %i.bm, 1
  %i.bo = sub i64 %i.bn, %1                       ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bo
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bq, i8 0, i64 %1, i1 false)
  %.tr.i.i.i.i = trunc i64 %i.bo to i8
  %i.br = shl i8 %.tr.i.i.i.i, 1
  store i8 %i.br, ptr %0, align 8, !tbaa !14
  br label %bb.av

bb.y:                                             ; preds = %_ZN4absl12lts_202505124Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.bs = load i64, ptr %0, align 8, !tbaa !14
  %i.bt = add nsw i64 %i.bs, -1                   ; 2 uses
  %i.bu = inttoptr i64 %i.bt to ptr               ; 2 uses
  store ptr %i.bu, ptr %9, align 8, !tbaa !35
  %.not.i53 = icmp eq i64 %i.bt, 0
  br i1 %.not.i53, label %_ZN4absl12lts_2025051213cord_internal16CordzUpdateScopeC2EPNS1_9CordzInfoENS1_18CordzUpdateTracker16MethodIdentifierE.exit, label %bb.z, !prof !27

bb.z:                                             ; preds = %bb.y
  tail call void @_ZN4absl12lts_2025051213cord_internal9CordzInfo4LockENS1_18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(1344) %i.bu, i32 noundef 22)
  br label %_ZN4absl12lts_2025051213cord_internal16CordzUpdateScopeC2EPNS1_9CordzInfoENS1_18CordzUpdateTracker16MethodIdentifierE.exit

_ZN4absl12lts_2025051213cord_internal16CordzUpdateScopeC2EPNS1_9CordzInfoENS1_18CordzUpdateTracker16MethodIdentifierE.exit: ; preds = %bb.y, %bb.z
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  %i.bw = load i8, ptr %i.bv, align 4, !tbaa !23
  %i.bx = icmp eq i8 %i.bw, 2
  br i1 %i.bx, label %bb.aa, label %_ZN4absl12lts_2025051213cord_internal13RemoveCrcNodeEPNS1_7CordRepE.exit, !prof !59

bb.aa:                                            ; preds = %_ZN4absl12lts_2025051213cord_internal16CordzUpdateScopeC2EPNS1_9CordzInfoENS1_18CordzUpdateTracker16MethodIdentifierE.exit
  %i.by = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !55 ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  %i.cb = load atomic i32, ptr %i.ca acquire, align 8
  %i.cc = icmp eq i32 %i.cb, 2
  br i1 %i.cc, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  tail call void @_ZN4absl12lts_2025051212crc_internal12CrcCordStateD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cd) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef 32) #22
  br label %_ZN4absl12lts_2025051213cord_internal13RemoveCrcNodeEPNS1_7CordRepE.exit

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bz) ]
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cf = atomicrmw add ptr %i.ce, i32 2 monotonic, align 4 ; 0 uses
  %i.cg = atomicrmw sub ptr %i.ca, i32 2 acq_rel, align 4
  %.not.i.i56 = icmp eq i32 %i.cg, 2
  br i1 %.not.i.i56, label %bb.ad, label %_ZN4absl12lts_2025051213cord_internal13RemoveCrcNodeEPNS1_7CordRepE.exit, !prof !59

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZN4absl12lts_2025051213cord_internal7CordRep7DestroyEPS2_(ptr noundef nonnull %i.bb)
          to label %_ZN4absl12lts_2025051213cord_internal13RemoveCrcNodeEPNS1_7CordRepE.exit unwind label %bb.ag

_ZN4absl12lts_2025051213cord_internal13RemoveCrcNodeEPNS1_7CordRepE.exit: ; preds = %bb.ac, %bb.ab, %_ZN4absl12lts_2025051213cord_internal16CordzUpdateScopeC2EPNS1_9CordzInfoENS1_18CordzUpdateTracker16MethodIdentifierE.exit, %bb.ad
  %.0.i55 = phi ptr [ %i.bz, %bb.ab ], [ %i.bb, %_ZN4absl12lts_2025051213cord_internal16CordzUpdateScopeC2EPNS1_9CordzInfoENS1_18CordzUpdateTracker16MethodIdentifierE.exit ], [ %i.bz, %bb.ac ], [ %i.bz, %bb.ad ] ; 16 uses
  %i.ch = load i64, ptr %.0.i55, align 8, !tbaa !22 ; 2 uses
  %.not34 = icmp ult i64 %1, %i.ch
  br i1 %.not34, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %_ZN4absl12lts_2025051213cord_internal13RemoveCrcNodeEPNS1_7CordRepE.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.i55, i64 8
  %i.cj = atomicrmw sub ptr %i.ci, i32 2 acq_rel, align 4
  %.not.i57 = icmp eq i32 %i.cj, 2
  br i1 %.not.i57, label %bb.af, label %.split6.i, !prof !59

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN4absl12lts_2025051213cord_internal7CordRep7DestroyEPS2_(ptr noundef nonnull %.0.i55)
          to label %.split6.i unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ad, %bb.ai
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.ah:                                            ; preds = %_ZN4absl12lts_2025051213cord_internal13RemoveCrcNodeEPNS1_7CordRepE.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.i55, i64 12 ; 2 uses
  %i.cm = load i8, ptr %i.cl, align 4, !tbaa !23
  switch i8 %i.cm, label %bb.aj [
    i8 3, label %bb.ai
    i8 5, label %bb.al
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.cn = invoke noundef ptr @_ZN4absl12lts_2025051213cord_internal12CordRepBtree12RemoveSuffixEPS2_m(ptr noundef nonnull %.0.i55, i64 noundef %1)
          to label %_ZN4absl12lts_2025051213cord_internal7CordRep5UnrefEPS2_.exit unwind label %bb.ag ; 2 uses

bb.aj:                                            ; preds = %bb.ah
  %i.co = getelementptr inbounds nuw i8, ptr %.0.i55, i64 8
  %i.cp = load atomic i32, ptr %i.co acquire, align 8
  %i.cq = icmp eq i32 %i.cp, 2
  %.pre = load i64, ptr %.0.i55, align 8, !tbaa !22 ; 2 uses
  br i1 %i.cq, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.cr = sub i64 %.pre, %1
  store i64 %i.cr, ptr %.0.i55, align 8, !tbaa !22
  br label %.split.i

bb.al:                                            ; preds = %bb.ah, %bb.aj
  %i.cs = phi i64 [ %i.ch, %bb.ah ], [ %.pre, %bb.aj ]
  %i.ct = sub i64 %i.cs, %1
  %i.cu = icmp eq i64 %1, 0
  br i1 %i.cu, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.i55, i64 8
  %i.cw = atomicrmw add ptr %i.cv, i32 2 monotonic, align 4 ; 0 uses
  br label %_ZN4absl12lts_2025051213cord_internal16CordRepSubstring9SubstringEPNS1_7CordRepEmm.exit

bb.an:                                            ; preds = %bb.al
  %i.cx = load i8, ptr %i.cl, align 4, !tbaa !23
  %i.cy = icmp eq i8 %i.cx, 1
  br i1 %i.cy, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.cz = getelementptr inbounds nuw i8, ptr %.0.i55, i64 16
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !111
  %i.db = getelementptr inbounds nuw i8, ptr %.0.i55, i64 24
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !32
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.018.i = phi i64 [ %i.da, %bb.ao ], [ 0, %bb.an ]
  %.017.i = phi ptr [ %i.dc, %bb.ao ], [ %.0.i55, %bb.an ] ; 3 uses
  %i.dd = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #21
          to label %.noexc60 unwind label %bb.ar  ; 7 uses

.noexc60:                                         ; preds = %bb.ap
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.dd, i8 0, i64 16, i1 false)
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store i32 2, ptr %i.de, align 4, !tbaa !15
  store i64 %i.ct, ptr %i.dd, align 8, !tbaa !22
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 12
  store i8 1, ptr %i.df, align 4, !tbaa !23
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store i64 %.018.i, ptr %i.dg, align 8, !tbaa !111
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.017.i) ]
  %i.dh = getelementptr inbounds nuw i8, ptr %.017.i, i64 8
  %i.di = atomicrmw add ptr %i.dh, i32 2 monotonic, align 4 ; 0 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  store ptr %.017.i, ptr %i.dj, align 8, !tbaa !32
  br label %_ZN4absl12lts_2025051213cord_internal16CordRepSubstring9SubstringEPNS1_7CordRepEmm.exit

_ZN4absl12lts_2025051213cord_internal16CordRepSubstring9SubstringEPNS1_7CordRepEmm.exit: ; preds = %.noexc60, %bb.am
  %.0.i59 = phi ptr [ %.0.i55, %bb.am ], [ %i.dd, %.noexc60 ] ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.0.i55, i64 8
  %i.dl = atomicrmw sub ptr %i.dk, i32 2 acq_rel, align 4
  %.not.i61 = icmp eq i32 %i.dl, 2
  br i1 %.not.i61, label %bb.aq, label %.split.i, !prof !59

bb.aq:                                            ; preds = %_ZN4absl12lts_2025051213cord_internal16CordRepSubstring9SubstringEPNS1_7CordRepEmm.exit
  invoke void @_ZN4absl12lts_2025051213cord_internal7CordRep7DestroyEPS2_(ptr noundef nonnull %.0.i55)
          to label %.split.i unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

_ZN4absl12lts_2025051213cord_internal7CordRep5UnrefEPS2_.exit: ; preds = %bb.ai
  %.not.i64 = icmp eq ptr %i.cn, null
  br i1 %.not.i64, label %.split6.i, label %.split.i

.split.i:                                         ; preds = %_ZN4absl12lts_2025051213cord_internal16CordRepSubstring9SubstringEPNS1_7CordRepEmm.exit, %bb.aq, %bb.ak, %_ZN4absl12lts_2025051213cord_internal7CordRep5UnrefEPS2_.exit
  %.03170 = phi ptr [ %i.cn, %_ZN4absl12lts_2025051213cord_internal7CordRep5UnrefEPS2_.exit ], [ %.0.i59, %_ZN4absl12lts_2025051213cord_internal16CordRepSubstring9SubstringEPNS1_7CordRepEmm.exit ], [ %.0.i59, %bb.aq ], [ %.0.i55, %bb.ak ] ; 2 uses
  store ptr %.03170, ptr %i.ba, align 8, !tbaa !14
  %i.dn = load ptr, ptr %9, align 8, !tbaa !35    ; 2 uses
  %.not.i.i65 = icmp eq ptr %i.dn, null
  br i1 %.not.i.i65, label %_ZN4absl12lts_2025051213cord_internal16CordzUpdateScopeD2Ev.exit, label %bb.as, !prof !27

.split6.i:                                        ; preds = %bb.ae, %bb.af, %_ZN4absl12lts_2025051213cord_internal7CordRep5UnrefEPS2_.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.do = load ptr, ptr %9, align 8, !tbaa !35    ; 2 uses
  %.not.i7.i = icmp eq ptr %i.do, null
  br i1 %.not.i7.i, label %_ZN4absl12lts_2025051213cord_internal16CordzUpdateScopeD2Ev.exit, label %bb.as, !prof !27

bb.as:                                            ; preds = %.split6.i, %.split.i
  %.pr = phi ptr [ %i.dn, %.split.i ], [ %i.do, %.split6.i ] ; 2 uses
  %.sink.i = phi ptr [ %.03170, %.split.i ], [ null, %.split6.i ]
  %i.dp = getelementptr inbounds nuw i8, ptr %.pr, i64 64
  store ptr %.sink.i, ptr %i.dp, align 8, !tbaa !38
  invoke void @_ZN4absl12lts_2025051213cord_internal9CordzInfo6UnlockEv(ptr noundef nonnull align 8 dereferenceable(1344) %.pr)
          to label %_ZN4absl12lts_2025051213cord_internal16CordzUpdateScopeD2Ev.exit unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dq = landingpad { ptr, i32 }
          catch ptr null
  %i.dr = extractvalue { ptr, i32 } %i.dq, 0
  tail call void @__clang_call_terminate(ptr %i.dr) #25
  unreachable

_ZN4absl12lts_2025051213cord_internal16CordzUpdateScopeD2Ev.exit: ; preds = %.split.i, %.split6.i, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.av

bb.au:                                            ; preds = %bb.ar, %bb.ag
  %.pn = phi { ptr, i32 } [ %i.ck, %bb.ag ], [ %i.dm, %bb.ar ]
  call void @_ZN4absl12lts_2025051213cord_internal16CordzUpdateScopeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.aw

bb.av:                                            ; preds = %_ZN4absl12lts_2025051213cord_internal16CordzUpdateScopeD2Ev.exit, %bb.x
  ret void

bb.aw:                                            ; preds = %bb.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  %.pn41.pn.pn = phi { ptr, i32 } [ %.pn41.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52 ], [ %.pn, %bb.au ]
  resume { ptr, i32 } %.pn41.pn.pn
}

declare noundef ptr @_ZN4absl12lts_2025051213cord_internal12CordRepBtree12RemoveSuffixEPS2_m(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZNK4absl12lts_202505124Cord7SubcordEmm(ptr dead_on_unwind noalias writable sret(%"class.absl::lts_20250512::Cord") align 8 initializes((0, 16)) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.absl::lts_20250512::Cord::ChunkIterator", align 8 ; 23 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.a = load i8, ptr %1, align 8, !tbaa !14      ; 2 uses
  %i.b = trunc i8 %i.a to i1                      ; 3 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14
  %i.e = load i64, ptr %i.d, align 8, !tbaa !22
  br label %_ZNK4absl12lts_202505124Cord4sizeEv.exit

bb.c:                                             ; preds = %bb.a
  %i.f = sext i8 %i.a to i64
  %i.g = lshr exact i64 %i.f, 1
  br label %_ZNK4absl12lts_202505124Cord4sizeEv.exit

_ZNK4absl12lts_202505124Cord4sizeEv.exit:         ; preds = %bb.c, %bb.b
  %i.h = phi i64 [ %i.e, %bb.b ], [ %i.g, %bb.c ] ; 2 uses
  %spec.select = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.h) ; 11 uses
  %i.i = sub i64 %i.h, %spec.select
  %.043 = tail call i64 @llvm.umin.i64(i64 %3, i64 %i.i) ; 20 uses
  %i.j = icmp eq i64 %.043, 0
  br i1 %i.j, label %_ZN4absl12lts_202505124Cord9InlineRep8set_dataEPKcm.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK4absl12lts_202505124Cord4sizeEv.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8              ; 8 uses
  %i.m = icmp ne ptr %i.l, null
  %.not77 = select i1 %i.b, i1 %i.m, i1 false
  br i1 %.not77, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 1
  %spec.select.i = select i1 %i.b, ptr null, ptr %i.n
  %i.o = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 %spec.select ; 7 uses
  %.tr.i.i = trunc i64 %.043 to i8
  %i.p = shl i8 %.tr.i.i, 1
  store i8 %i.p, ptr %0, align 8, !tbaa !14
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 7 uses
  %i.r = icmp ugt i64 %.043, 7
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.0.copyload6.i.i.i = load i64, ptr %i.o, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %.043
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -8
  %.0.copyload4.i.i.i = load i64, ptr %i.t, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.u, align 8
  store i64 %.0.copyload6.i.i.i, ptr %i.q, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %.043
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -8
  store i64 %.0.copyload4.i.i.i, ptr %i.w, align 1
  br label %_ZN4absl12lts_202505124Cord9InlineRep8set_dataEPKcm.exit

bb.g:                                             ; preds = %bb.e
  %i.x = icmp samesign ugt i64 %.043, 3
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.0.copyload2.i.i.i = load i32, ptr %i.o, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 %.043
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -4
  %.0.copyload.i.i.i = load i32, ptr %i.z, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i32 0, ptr %i.aa, align 1
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ab, align 8
  store i32 %.0.copyload2.i.i.i, ptr %i.q, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 %.043
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -4
  store i32 %.0.copyload.i.i.i, ptr %i.ad, align 1
  br label %_ZN4absl12lts_202505124Cord9InlineRep8set_dataEPKcm.exit

end_hunk_1
begin_hunk_2_@_ZN4absl12lts_202505124Cord13ChunkIterator19AdvanceAndReadBytesEm:bb.a
  br label %.thread102

.thread102:                                       ; preds = %.thread, %bb.bi, %bb.bh
  %i.mw = phi ptr [ %i.lx, %bb.bi ], [ %i.lx, %bb.bh ], [ %i.mg, %.thread ]
  %.018.i = phi i64 [ %i.mt, %bb.bi ], [ %i.mb, %bb.bh ], [ %i.mk, %.thread ]
  %.017.i = phi ptr [ %i.mv, %bb.bi ], [ %i.ls, %bb.bh ], [ %i.ls, %.thread ] ; 3 uses
  %i.mx = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #21
          to label %.noexc96 unwind label %bb.bk  ; 7 uses

.noexc96:                                         ; preds = %.thread102
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.mx, i8 0, i64 16, i1 false)
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 8
  store i32 2, ptr %i.my, align 4, !tbaa !15
  store i64 %2, ptr %i.mx, align 8, !tbaa !22
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mx, i64 12
  store i8 1, ptr %i.mz, align 4, !tbaa !23
  %i.na = getelementptr inbounds nuw i8, ptr %i.mx, i64 16
  store i64 %.018.i, ptr %i.na, align 8, !tbaa !111
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.017.i) ]
  %i.nb = getelementptr inbounds nuw i8, ptr %.017.i, i64 8
  %i.nc = atomicrmw add ptr %i.nb, i32 2 monotonic, align 4 ; 0 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mx, i64 24
  store ptr %.017.i, ptr %i.nd, align 8, !tbaa !32
  br label %_ZN4absl12lts_2025051213cord_internal16CordRepSubstring9SubstringEPNS1_7CordRepEmm.exit

_ZN4absl12lts_2025051213cord_internal16CordRepSubstring9SubstringEPNS1_7CordRepEmm.exit: ; preds = %.noexc96, %bb.bg
  %i.ne = phi ptr [ %i.mn, %bb.bg ], [ %i.mw, %.noexc96 ] ; 2 uses
  %.0.i = phi ptr [ %i.ls, %bb.bg ], [ %i.mx, %.noexc96 ]
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.i, ptr %i.nf, align 8, !tbaa !14
  store i64 1, ptr %0, align 8, !tbaa !14
  %i.ng = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4absl12lts_2025051213cord_internal17cordz_next_sampleE) ; 3 uses
  %i.nh = load i64, ptr %i.ng, align 8, !tbaa !25 ; 2 uses
  %i.ni = icmp sgt i64 %i.nh, 1
  br i1 %i.ni, label %_ZN4absl12lts_2025051213cord_internal20cordz_should_profileEv.exit.thread.i98, label %_ZN4absl12lts_2025051213cord_internal20cordz_should_profileEv.exit.i97, !prof !27

_ZN4absl12lts_2025051213cord_internal20cordz_should_profileEv.exit.thread.i98: ; preds = %_ZN4absl12lts_2025051213cord_internal16CordRepSubstring9SubstringEPNS1_7CordRepEmm.exit
  %i.nj = add nsw i64 %i.nh, -1
  store i64 %i.nj, ptr %i.ng, align 8, !tbaa !25
  br label %_ZN4absl12lts_202505124Cord9InlineRep11EmplaceTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE.exit101

_ZN4absl12lts_2025051213cord_internal20cordz_should_profileEv.exit.i97: ; preds = %_ZN4absl12lts_2025051213cord_internal16CordRepSubstring9SubstringEPNS1_7CordRepEmm.exit
  %i.nk = invoke noundef i64 @_ZN4absl12lts_2025051213cord_internal25cordz_should_profile_slowERNS1_13SamplingStateE(ptr noundef nonnull align 8 dereferenceable(16) %i.ng)
          to label %.noexc99 unwind label %bb.bk  ; 2 uses

.noexc99:                                         ; preds = %_ZN4absl12lts_2025051213cord_internal20cordz_should_profileEv.exit.i97
  %i.nl = icmp sgt i64 %i.nk, 0
  br i1 %i.nl, label %bb.bj, label %_ZN4absl12lts_202505124Cord9InlineRep11EmplaceTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE.exit101, !prof !28

bb.bj:                                            ; preds = %.noexc99
  invoke void @_ZN4absl12lts_2025051213cord_internal9CordzInfo9TrackCordERNS1_10InlineDataENS1_18CordzUpdateTracker16MethodIdentifierEl(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef 10, i64 noundef %i.nk)
          to label %_ZN4absl12lts_202505124Cord9InlineRep11EmplaceTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE.exit101 unwind label %bb.bk

_ZN4absl12lts_202505124Cord9InlineRep11EmplaceTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE.exit101: ; preds = %.noexc99, %_ZN4absl12lts_2025051213cord_internal20cordz_should_profileEv.exit.thread.i98, %bb.bj
  %i.nm = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.nn = load i64, ptr %i.nm, align 8, !tbaa !102
  %i.no = sub i64 %i.nn, %2
  store i64 %i.no, ptr %i.nm, align 8, !tbaa !102
  %i.np = load ptr, ptr %i.ne, align 8, !tbaa !122
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 %2
  store ptr %i.nq, ptr %i.ne, align 8, !tbaa !122
  %i.nr = load i64, ptr %1, align 8, !tbaa !121
  %i.ns = sub i64 %i.nr, %2
  store i64 %i.ns, ptr %1, align 8, !tbaa !121
  br label %_ZN4absl12lts_202505124Cord13ChunkIteratorppEv.exit86

bb.bk:                                            ; preds = %bb.bj, %_ZN4absl12lts_2025051213cord_internal20cordz_should_profileEv.exit.i97, %.thread102
  %i.nt = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.bl:                                            ; preds = %bb.ai, %bb.az, %bb.bk, %bb.bd
  %.pn52 = phi { ptr, i32 } [ %.pn, %bb.az ], [ %i.nt, %bb.bk ], [ %i.ln, %bb.bd ], [ %i.hn, %bb.ai ]
  call void @_ZN4absl12lts_202505124CordD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #24
  resume { ptr, i32 } %.pn52

_ZN4absl12lts_202505124Cord13ChunkIteratorppEv.exit86: ; preds = %.noexc93, %_ZN4absl12lts_2025051213cord_internal20cordz_should_profileEv.exit.thread.i92, %bb.bc, %_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.thread.i55, %_ZN4absl12lts_202505124Cord13ChunkIterator12AdvanceBtreeEv.exit.i68, %bb.o, %bb.ba, %_ZN4absl12lts_202505124Cord9InlineRep11EmplaceTreeEPNS0_13cord_internal7CordRepENS3_18CordzUpdateTracker16MethodIdentifierE.exit101, %bb.n, %bb.m
  ret void
}

declare { i64, ptr } @_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4ReadEmmRPNS1_7CordRepE(ptr noundef nonnull align 8 dereferenceable(120), i64 noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define noundef signext i8 @_ZNK4absl12lts_202505124CordixEm(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !14
  %i.b = trunc i8 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  %i.e = icmp ne ptr %i.d, null
  %.not21 = select i1 %i.b, i1 %i.e, i1 false
  br i1 %.not21, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !14
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.j = load i8, ptr %i.i, align 4, !tbaa !23    ; 2 uses
  %i.k = icmp eq i8 %i.j, 2
  br i1 %i.k, label %bb.d, label %_ZN4absl12lts_2025051213cord_internal11SkipCrcNodeEPKNS1_7CordRepE.exit, !prof !59

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !55   ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %.pre = load i8, ptr %.phi.trans.insert, align 4, !tbaa !23
  br label %_ZN4absl12lts_2025051213cord_internal11SkipCrcNodeEPKNS1_7CordRepE.exit

_ZN4absl12lts_2025051213cord_internal11SkipCrcNodeEPKNS1_7CordRepE.exit: ; preds = %bb.c, %bb.d
  %i.n = phi i8 [ %.pre, %bb.d ], [ %i.j, %bb.c ] ; 2 uses
  %.0.i20 = phi ptr [ %i.m, %bb.d ], [ %i.d, %bb.c ] ; 2 uses
  %i.o = icmp ugt i8 %i.n, 5
  br i1 %i.o, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.g, %_ZN4absl12lts_2025051213cord_internal11SkipCrcNodeEPKNS1_7CordRepE.exit
  %.017.lcssa = phi i64 [ %1, %_ZN4absl12lts_2025051213cord_internal11SkipCrcNodeEPKNS1_7CordRepE.exit ], [ %i.aa, %bb.g ]
  %.0.lcssa = phi ptr [ %.0.i20, %_ZN4absl12lts_2025051213cord_internal11SkipCrcNodeEPKNS1_7CordRepE.exit ], [ %i.ac, %bb.g ]
  %i.p = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 13
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %.017.lcssa
  %i.r = load i8, ptr %i.q, align 1, !tbaa !14
  br label %bb.h

.lr.ph:                                           ; preds = %_ZN4absl12lts_2025051213cord_internal11SkipCrcNodeEPKNS1_7CordRepE.exit, %bb.g
  %i.s = phi i8 [ %i.ae, %bb.g ], [ %i.n, %_ZN4absl12lts_2025051213cord_internal11SkipCrcNodeEPKNS1_7CordRepE.exit ]
  %.027 = phi ptr [ %i.ac, %bb.g ], [ %.0.i20, %_ZN4absl12lts_2025051213cord_internal11SkipCrcNodeEPKNS1_7CordRepE.exit ] ; 4 uses
  %.01726 = phi i64 [ %i.aa, %bb.g ], [ %1, %_ZN4absl12lts_2025051213cord_internal11SkipCrcNodeEPKNS1_7CordRepE.exit ] ; 3 uses
  switch i8 %i.s, label %bb.g [
    i8 3, label %bb.e
    i8 5, label %bb.f
  ]

bb.e:                                             ; preds = %.lr.ph
  %i.t = tail call noundef signext i8 @_ZNK4absl12lts_2025051213cord_internal12CordRepBtree12GetCharacterEm(ptr noundef nonnull align 8 dereferenceable(64) %.027, i64 noundef %.01726)
  br label %bb.h

bb.f:                                             ; preds = %.lr.ph
  %i.u = getelementptr inbounds nuw i8, ptr %.027, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !24
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %.01726
  %i.x = load i8, ptr %i.w, align 1, !tbaa !14
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %.027, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !111
  %i.aa = add i64 %i.z, %.01726                   ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.027, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !32 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  %i.ae = load i8, ptr %i.ad, align 4, !tbaa !23  ; 2 uses
  %i.af = icmp ugt i8 %i.ae, 5
  br i1 %i.af, label %._crit_edge, label %.lr.ph, !llvm.loop !162

bb.h:                                             ; preds = %bb.f, %bb.e, %._crit_edge, %bb.b
  %.018 = phi i8 [ %i.h, %bb.b ], [ %i.r, %._crit_edge ], [ %i.t, %bb.e ], [ %i.x, %bb.f ]
  ret i8 %.018
}

declare noundef signext i8 @_ZNK4absl12lts_2025051213cord_internal12CordRepBtree12GetCharacterEm(ptr noundef nonnull align 8 dereferenceable(64), i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZNK4absl12lts_202505124Cord8FindImplENS1_12CharIteratorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable writeonly sret(%"class.absl::lts_20250512::Cord::CharIterator") align 8 captures(none) %0, ptr nonnull readnone align 8 captures(none) %1, ptr noundef byval(%"class.absl::lts_20250512::Cord::CharIterator") align 8 %2, i64 %3, ptr readonly captures(none) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.absl::lts_20250512::Cord::CharIterator", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 9 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !163  ; 2 uses
  %.not27 = icmp ult i64 %i.b, %3
  br i1 %.not27, label %_ZN4absl12lts_202505124Cord7AdvanceEPNS1_12CharIteratorEm.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %i.h = load i64, ptr %2, align 8, !tbaa !125    ; 2 uses
  %i.i = icmp ne i64 %i.h, 0
  tail call void @llvm.assume(i1 %i.i)
  br label %.lr.ph.split

.lr.ph.splitthread-pre-split:                     ; preds = %_ZN4absl12lts_202505124Cord7AdvanceEPNS1_12CharIteratorEm.exit
  %.sroa.0.0.copyload.i.i.pr = load i64, ptr %2, align 8, !tbaa !125
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.splitthread-pre-split
  %.sroa.0.0.copyload.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.pr, %.lr.ph.splitthread-pre-split ], [ %i.h, %.lr.ph ] ; 5 uses
  %i.j = phi i64 [ %i.bj, %.lr.ph.splitthread-pre-split ], [ %i.b, %.lr.ph ]
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !130 ; 3 uses
  %.not26 = icmp eq i64 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not26, label %_ZN4absl12lts_202505124Cord7AdvanceEPNS1_12CharIteratorEm.exit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, !llvm.loop !165

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %.lr.ph.split
  %i.k = load i8, ptr %4, align 1, !tbaa !14
  %i.l = sext i8 %i.k to i32
  %i.m = call ptr @memchr(ptr noundef %.sroa.2.0.copyload.i.i, i32 noundef %i.l, i64 noundef %.sroa.0.0.copyload.i.i) #24
  %.fr = freeze ptr %i.m                          ; 2 uses
  %.not.i = icmp eq ptr %.fr, null
  %i.n = ptrtoint ptr %.fr to i64
  %i.o = ptrtoint ptr %.sroa.2.0.copyload.i.i to i64
  %i.p = sub i64 %i.n, %i.o                       ; 6 uses
  %i.q = icmp eq i64 %i.p, -1
  %or.cond = select i1 %.not.i, i1 true, i1 %i.q
  br i1 %or.cond, label %.thread, label %bb.c

.thread:                                          ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  %i.r = load i32, ptr %i.c, align 8, !tbaa !100  ; 2 uses
  %i.s = icmp sgt i32 %i.r, -1
  br i1 %i.s, label %_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.i.i, label %_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i

_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.i.i: ; preds = %.thread
  %i.t = zext nneg i32 %i.r to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !106
  %.not4.i.i = icmp eq ptr %i.v, null
  br i1 %.not4.i.i, label %_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i, label %bb.b

bb.b:                                             ; preds = %_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.i.i
  call void @_ZN4absl12lts_202505124Cord13ChunkIterator17AdvanceBytesBtreeEm(ptr noundef nonnull align 8 dereferenceable(152) %2, i64 noundef %.sroa.0.0.copyload.i.i)
  br label %_ZN4absl12lts_202505124Cord7AdvanceEPNS1_12CharIteratorEm.exit, !llvm.loop !165

_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i: ; preds = %_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.i.i, %.thread
  store i64 0, ptr %i.a, align 8, !tbaa !102
  br label %_ZN4absl12lts_202505124Cord7AdvanceEPNS1_12CharIteratorEm.exit, !llvm.loop !165

bb.c:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  %i.w = icmp ult i64 %i.p, %.sroa.0.0.copyload.i.i
  br i1 %i.w, label %bb.d, label %bb.e, !prof !27

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 %i.p
  store ptr %i.x, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !122
  %i.y = sub nuw i64 %.sroa.0.0.copyload.i.i, %i.p
  store i64 %i.y, ptr %2, align 8, !tbaa !121
  %i.z = sub i64 %i.j, %i.p                       ; 2 uses
  store i64 %i.z, ptr %i.a, align 8, !tbaa !102
  br label %_ZN4absl12lts_202505124Cord7AdvanceEPNS1_12CharIteratorEm.exit8

bb.e:                                             ; preds = %bb.c
  %i.aa = load i32, ptr %i.c, align 8, !tbaa !100 ; 2 uses
  %i.ab = icmp sgt i32 %i.aa, -1
  br i1 %i.ab, label %_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.i.i6, label %_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i5

_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.i.i6: ; preds = %bb.e
  %i.ac = zext nneg i32 %i.aa to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ac
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !106
  %.not4.i.i7 = icmp eq ptr %i.ae, null
  br i1 %.not4.i.i7, label %_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i5, label %bb.f

bb.f:                                             ; preds = %_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.i.i6
  call void @_ZN4absl12lts_202505124Cord13ChunkIterator17AdvanceBytesBtreeEm(ptr noundef nonnull align 8 dereferenceable(152) %2, i64 noundef %i.p)
  %.pre = load i64, ptr %i.a, align 8, !tbaa !163
  br label %_ZN4absl12lts_202505124Cord7AdvanceEPNS1_12CharIteratorEm.exit8

_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i5: ; preds = %_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.i.i6, %bb.e
  store i64 0, ptr %i.a, align 8, !tbaa !102
  br label %_ZN4absl12lts_202505124Cord7AdvanceEPNS1_12CharIteratorEm.exit8

_ZN4absl12lts_202505124Cord7AdvanceEPNS1_12CharIteratorEm.exit8: ; preds = %bb.d, %bb.f, %_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i5
  %i.af = phi i64 [ %i.z, %bb.d ], [ %.pre, %bb.f ], [ 0, %_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i5 ]
  %i.ag = icmp ult i64 %i.af, %3
  br i1 %i.ag, label %_ZN4absl12lts_202505124Cord7AdvanceEPNS1_12CharIteratorEm.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZN4absl12lts_202505124Cord7AdvanceEPNS1_12CharIteratorEm.exit8
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %5, ptr noundef nonnull align 8 dereferenceable(152) %2, i64 152, i1 false)
  %.sroa.0.0.pre32.i = load i64, ptr %5, align 8, !tbaa !125
  br label %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i.outer

_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i.outer: ; preds = %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i.outer.backedge, %bb.g
  %.ph = phi i64 [ %.sroa.0.0.pre32.i, %bb.g ], [ %.ph.be, %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i.outer.backedge ] ; 3 uses
  %.sroa.014.0.i.ph = phi i64 [ %3, %bb.g ], [ %i.ao, %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i.outer.backedge ]
  %.sroa.5.0.i.ph = phi ptr [ %4, %bb.g ], [ %i.an, %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i.outer.backedge ]
  %.sroa.6.0.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %i.ah = load i32, ptr %i.e, align 8             ; 2 uses
  %i.ai = icmp sgt i32 %i.ah, -1
  %i.aj = zext nneg i32 %i.ah to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.aj
  br label %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i

_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i: ; preds = %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i.backedge, %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i.outer
  %.sroa.014.0.i = phi i64 [ %.sroa.014.0.i.ph, %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i.outer ], [ %i.ao, %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i.backedge ] ; 3 uses
  %.sroa.5.0.i = phi ptr [ %.sroa.5.0.i.ph, %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i.outer ], [ %i.an, %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i.backedge ] ; 2 uses
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 %.sroa.014.0.i, i64 %.ph) ; 8 uses
  %i.al = icmp eq i64 %.sroa.speculated.i, 0      ; 2 uses
  br i1 %i.al, label %bb.h, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i.i

_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i.i: ; preds = %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i
  %bcmp.i.i.i.i = call i32 @bcmp(ptr %.sroa.5.0.i, ptr %.sroa.6.0.i, i64 %.sroa.speculated.i)
  %i.am = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.am, label %bb.h, label %bb.n

bb.h:                                             ; preds = %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i.i, %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i, i64 %.sroa.speculated.i ; 2 uses
  %i.ao = sub i64 %.sroa.014.0.i, %.sroa.speculated.i ; 3 uses
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %_ZN4absl12lts_202505124Cord7AdvanceEPNS1_12CharIteratorEm.exit.thread24, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = icmp ult i64 %.sroa.014.0.i, %.ph
  br i1 %i.aq, label %bb.j, label %bb.k, !prof !27

bb.j:                                             ; preds = %bb.i
  %i.ar = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !122
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.speculated.i
  store ptr %i.as, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !122
  %i.at = sub nuw i64 %.ph, %.sroa.speculated.i   ; 2 uses
  store i64 %i.at, ptr %5, align 8, !tbaa !121
  %i.au = load i64, ptr %i.g, align 8, !tbaa !102
  %i.av = sub i64 %i.au, %.sroa.speculated.i
  store i64 %i.av, ptr %i.g, align 8, !tbaa !102
  br label %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i.outer.backedge

bb.k:                                             ; preds = %bb.i
  br i1 %i.al, label %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i.backedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %i.ai, label %_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.i.i.i, label %_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i.i

_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.i.i.i: ; preds = %bb.l
  %i.aw = load ptr, ptr %i.ak, align 8, !tbaa !106
  %.not4.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not4.i.i.i, label %_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.i.i.i
  call void @_ZN4absl12lts_202505124Cord13ChunkIterator17AdvanceBytesBtreeEm(ptr noundef nonnull align 8 dereferenceable(152) %5, i64 noundef %.sroa.speculated.i)
  %.sroa.0.0.pre.i = load i64, ptr %5, align 8, !tbaa !125
  br label %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i.outer.backedge

_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i.outer.backedge: ; preds = %bb.m, %bb.j
  %.ph.be = phi i64 [ %i.at, %bb.j ], [ %.sroa.0.0.pre.i, %bb.m ]
  br label %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i.outer, !llvm.loop !166

_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i.i: ; preds = %_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.i.i.i, %bb.l
  store i64 0, ptr %i.g, align 8, !tbaa !102
  br label %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i.backedge

_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i.backedge: ; preds = %_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i.i, %bb.k
  br label %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i, !llvm.loop !166

_ZN4absl12lts_202505124Cord7AdvanceEPNS1_12CharIteratorEm.exit.thread24: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(152) %2, i64 152, i1 false), !tbaa.struct !167
  br label %bb.r

bb.n:                                             ; preds = %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ax = load i64, ptr %2, align 8, !tbaa !121   ; 2 uses
  %i.ay = icmp ugt i64 %i.ax, 1
  br i1 %i.ay, label %bb.o, label %bb.p, !prof !27

bb.o:                                             ; preds = %bb.n
  %i.az = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !122
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  store ptr %i.ba, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !122
  %i.bb = add i64 %i.ax, -1
  store i64 %i.bb, ptr %2, align 8, !tbaa !121
  %i.bc = load i64, ptr %i.a, align 8, !tbaa !102
  %i.bd = add i64 %i.bc, -1
  store i64 %i.bd, ptr %i.a, align 8, !tbaa !102
  br label %_ZN4absl12lts_202505124Cord7AdvanceEPNS1_12CharIteratorEm.exit

bb.p:                                             ; preds = %bb.n
  %i.be = load i32, ptr %i.c, align 8, !tbaa !100 ; 2 uses
  %i.bf = icmp sgt i32 %i.be, -1
  br i1 %i.bf, label %_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.i.i10, label %_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i9

_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.i.i10: ; preds = %bb.p
  %i.bg = zext nneg i32 %i.be to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.bg
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !106
  %.not4.i.i11 = icmp eq ptr %i.bi, null
  br i1 %.not4.i.i11, label %_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i9, label %bb.q

bb.q:                                             ; preds = %_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.i.i10
  call void @_ZN4absl12lts_202505124Cord13ChunkIterator17AdvanceBytesBtreeEm(ptr noundef nonnull align 8 dereferenceable(152) %2, i64 noundef 1)
  br label %_ZN4absl12lts_202505124Cord7AdvanceEPNS1_12CharIteratorEm.exit

_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i9: ; preds = %_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.i.i10, %bb.p
  store i64 0, ptr %i.a, align 8, !tbaa !102
  br label %_ZN4absl12lts_202505124Cord7AdvanceEPNS1_12CharIteratorEm.exit

_ZN4absl12lts_202505124Cord7AdvanceEPNS1_12CharIteratorEm.exit: ; preds = %.lr.ph.split, %_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i9, %bb.q, %bb.o, %_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i, %bb.b
  %i.bj = load i64, ptr %i.a, align 8, !tbaa !163 ; 2 uses
  %.not = icmp ult i64 %i.bj, %3
  br i1 %.not, label %_ZN4absl12lts_202505124Cord7AdvanceEPNS1_12CharIteratorEm.exit.thread, label %.lr.ph.splitthread-pre-split, !llvm.loop !168

_ZN4absl12lts_202505124Cord7AdvanceEPNS1_12CharIteratorEm.exit.thread: ; preds = %_ZN4absl12lts_202505124Cord7AdvanceEPNS1_12CharIteratorEm.exit, %_ZN4absl12lts_202505124Cord7AdvanceEPNS1_12CharIteratorEm.exit8, %bb.a
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %0, i8 0, i64 152, i1 false), !alias.scope !170
  store i32 -1, ptr %i.bk, align 8, !tbaa !100, !alias.scope !170
  br label %bb.r

bb.r:                                             ; preds = %_ZN4absl12lts_202505124Cord7AdvanceEPNS1_12CharIteratorEm.exit.thread24, %_ZN4absl12lts_202505124Cord7AdvanceEPNS1_12CharIteratorEm.exit.thread
  ret void
}

; Function Attrs: mustprogress uwtable
end_hunk_2
begin_hunk_3_@_ZN4absl12lts_202505124Cord13ChunkIterator17AdvanceBytesBtreeEm:bb.a
bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !tbaa !121
  %i.e = icmp eq i64 %1, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  br i1 %i.e, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %i.f, align 8, !tbaa !110  ; 4 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4NextEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !106  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 7 uses
  %i.l = load i8, ptr %i.k, align 4, !tbaa !14    ; 2 uses
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 15
  %i.o = load i8, ptr %i.n, align 1, !tbaa !14
  %i.p = zext i8 %i.o to i64
  %i.q = add nsw i64 %i.p, -1
  %i.r = icmp eq i64 %i.q, %i.m
  br i1 %i.r, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = load i32, ptr %i.s, align 8, !tbaa !100  ; 2 uses
  %smax.i.i.i = tail call i32 @llvm.smax.i32(i32 %i.t, i32 0)
  %wide.trip.count.i.i.i = zext nneg i32 %smax.i.i.i to i64
  %exitcond.not.i.i.i65 = icmp slt i32 %i.t, 1
  br i1 %exitcond.not.i.i.i65, label %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator4NextEv.exit.i, label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  %indvars.iv.next38.i.i.i = add nuw i32 %indvars.iv37.i.i.i66, 1
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator4NextEv.exit.i, label %.lr.ph, !llvm.loop !112

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %indvars.iv.i.i.i67 = phi i64 [ %indvars.iv.next.i.i.i, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %indvars.iv37.i.i.i66 = phi i32 [ %indvars.iv.next38.i.i.i, %bb.f ], [ 1, %bb.e ] ; 3 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i67, 1 ; 5 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next.i.i.i
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !106  ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv.next.i.i.i
  %i.x = load i8, ptr %i.w, align 1, !tbaa !14
  %i.y = zext i8 %i.x to i64
  %i.z = add nuw nsw i64 %i.y, 1                  ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 15
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !14
  %i.ac = zext i8 %i.ab to i64
  %i.ad = icmp eq i64 %i.z, %i.ac
  br i1 %i.ad, label %bb.f, label %bb.g, !llvm.loop !112

bb.g:                                             ; preds = %.lr.ph
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv.next.i.i.i
  %i.af = trunc i64 %i.z to i8
  store i8 %i.af, ptr %i.ae, align 1, !tbaa !14
  %i.ag = sext i32 %indvars.iv37.i.i.i66 to i64   ; 2 uses
  %i.ah = and i32 %indvars.iv37.i.i.i66, 1
  %lcmp.mod.not = icmp eq i32 %i.ah, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.z
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !29 ; 4 uses
  %indvars.iv.next41.i.i.i.prol = add nsw i64 %i.ag, -1 ; 3 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %i.i, i64 %indvars.iv.next41.i.i.i.prol
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !106
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 14
  %i.an = load i8, ptr %i.am, align 1, !tbaa !14  ; 2 uses
  %i.ao = zext i8 %i.an to i64                    ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %i.k, i64 %indvars.iv.next41.i.i.i.prol
  store i8 %i.an, ptr %i.ap, align 1, !tbaa !14
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %bb.g
  %indvars.iv40.i.i.i.unr = phi i64 [ %i.ag, %bb.g ], [ %indvars.iv.next41.i.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %.017.i.i.i.unr = phi ptr [ %i.v, %bb.g ], [ %i.ak, %.prol.loopexit.unr-lcssa ]
  %.016.i.i.i.unr = phi i64 [ %i.z, %bb.g ], [ %i.ao, %.prol.loopexit.unr-lcssa ]
  %.lcssa68.unr = phi ptr [ poison, %bb.g ], [ %i.ak, %.prol.loopexit.unr-lcssa ]
  %.lcssa.unr = phi i64 [ poison, %bb.g ], [ %i.ao, %.prol.loopexit.unr-lcssa ]
  %i.aq = icmp eq i64 %indvars.iv.i.i.i67, 0
  br i1 %i.aq, label %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %indvars.iv40.i.i.i = phi i64 [ %indvars.iv.next41.i.i.i.1, %.new ], [ %indvars.iv40.i.i.i.unr, %.prol.loopexit ] ; 3 uses
  %.017.i.i.i = phi ptr [ %i.bb, %.new ], [ %.017.i.i.i.unr, %.prol.loopexit ]
  %.016.i.i.i = phi i64 [ %i.bf, %.new ], [ %.016.i.i.i.unr, %.prol.loopexit ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.017.i.i.i, i64 16
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %.016.i.i.i
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !29 ; 3 uses
  %indvars.iv.next41.i.i.i = add nsw i64 %indvars.iv40.i.i.i, -1 ; 2 uses
  %i.au = getelementptr inbounds [8 x i8], ptr %i.i, i64 %indvars.iv.next41.i.i.i
  store ptr %i.at, ptr %i.au, align 8, !tbaa !106
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 14
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !14  ; 2 uses
  %i.ax = zext i8 %i.aw to i64
  %i.ay = getelementptr inbounds i8, ptr %i.k, i64 %indvars.iv.next41.i.i.i
  store i8 %i.aw, ptr %i.ay, align 1, !tbaa !14
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ax
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !29 ; 4 uses
  %indvars.iv.next41.i.i.i.1 = add nsw i64 %indvars.iv40.i.i.i, -2 ; 3 uses
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.i, i64 %indvars.iv.next41.i.i.i.1
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !106
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 14
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !14  ; 2 uses
  %i.bf = zext i8 %i.be to i64                    ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %i.k, i64 %indvars.iv.next41.i.i.i.1
  store i8 %i.be, ptr %i.bg, align 1, !tbaa !14
  %i.bh = icmp sgt i64 %indvars.iv40.i.i.i, 2
  br i1 %i.bh, label %.new, label %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i, !llvm.loop !113

bb.h:                                             ; preds = %bb.d
  %i.bi = add i8 %i.l, 1                          ; 2 uses
  store i8 %i.bi, ptr %i.k, align 4, !tbaa !14
  %i.bj = zext i8 %i.bi to i64
  br label %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i

_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i: ; preds = %.new, %.prol.loopexit
  %.lcssa68 = phi ptr [ %.lcssa68.unr, %.prol.loopexit ], [ %i.bb, %.new ]
  %.lcssa = phi i64 [ %.lcssa.unr, %.prol.loopexit ], [ %i.bf, %.new ]
  %.pre.pre.i = load i64, ptr %i.f, align 8, !tbaa !110
  br label %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i

_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i: ; preds = %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i, %bb.h
  %.pre.i = phi i64 [ %i.g, %bb.h ], [ %.pre.pre.i, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i ]
  %.lcssa12.sink.i.i = phi ptr [ %i.j, %bb.h ], [ %.lcssa68, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i ]
  %.lcssa.sink.i.i = phi i64 [ %i.bj, %bb.h ], [ %.lcssa, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.lcssa12.sink.i.i, i64 16
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %.lcssa.sink.i.i
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !29
  br label %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator4NextEv.exit.i

_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator4NextEv.exit.i: ; preds = %bb.f, %bb.e, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i
  %i.bn = phi i64 [ %.pre.i, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i ], [ %i.g, %bb.e ], [ %i.g, %bb.f ]
  %i.bo = phi ptr [ %i.bm, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i ], [ null, %bb.e ], [ null, %bb.f ] ; 5 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !22 ; 2 uses
  %i.bq = sub i64 %i.bn, %i.bp
  store i64 %i.bq, ptr %i.f, align 8, !tbaa !110
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  %i.bs = load i8, ptr %i.br, align 4, !tbaa !23  ; 2 uses
  %i.bt = icmp eq i8 %i.bs, 1
  br i1 %i.bt, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator4NextEv.exit.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !111
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !32 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 12
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 4, !tbaa !23
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator4NextEv.exit.i
  %i.by = phi i8 [ %.pre.i.i, %bb.i ], [ %i.bs, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator4NextEv.exit.i ]
  %.010.i.i = phi i64 [ %i.bv, %bb.i ], [ 0, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator4NextEv.exit.i ]
  %.0.i.i = phi ptr [ %i.bx, %bb.i ], [ %i.bo, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator4NextEv.exit.i ] ; 2 uses
  %i.bz = icmp ugt i8 %i.by, 5
  br i1 %i.bz, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 13
  br label %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i

bb.l:                                             ; preds = %bb.j
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !24
  br label %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i

_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i: ; preds = %bb.l, %bb.k
  %.pn.i.i = phi ptr [ %i.ca, %bb.k ], [ %i.cc, %bb.l ]
  %.sroa.3.0.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 %.010.i.i
  br label %_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4NextEv.exit

_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4NextEv.exit: ; preds = %bb.c, %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i
  %.sroa.0.0.i = phi i64 [ %i.bp, %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i ], [ 0, %bb.c ]
  %.sroa.3.0.i = phi ptr [ %.sroa.3.0.i.i, %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i ], [ null, %bb.c ]
  store i64 %.sroa.0.0.i, ptr %0, align 8, !tbaa !125
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.3.0.i, ptr %.sroa.42.0..sroa_idx, align 8, !tbaa !130
  br label %bb.v

bb.m:                                             ; preds = %bb.b
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !100 ; 3 uses
  %i.cf = icmp sgt i32 %i.ce, -1
  tail call void @llvm.assume(i1 %i.cf)
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.ch = zext nneg i32 %i.ce to i64              ; 3 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.ch
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !106 ; 5 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !22 ; 2 uses
  %i.cl = sub i64 %i.ck, %i.c                     ; 4 uses
  %.not.i.i.not = icmp ugt i64 %i.c, %i.ck
  br i1 %.not.i.i.not, label %_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4SeekEm.exit, label %bb.n, !prof !59

bb.n:                                             ; preds = %bb.m
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 14
  %i.cn = load i8, ptr %i.cm, align 2, !tbaa !14
  %i.co = zext i8 %i.cn to i64                    ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cj, i64 16 ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.co
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !29
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !22 ; 2 uses
  %.not8.i.i.i = icmp ult i64 %i.cl, %i.cs
  br i1 %.not8.i.i.i, label %_ZNK4absl12lts_2025051213cord_internal12CordRepBtree7IndexOfEm.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.n, %.lr.ph.i.i.i
  %i.ct = phi i64 [ %i.cy, %.lr.ph.i.i.i ], [ %i.cs, %bb.n ]
  %.010.i.i.i = phi i64 [ %i.cu, %.lr.ph.i.i.i ], [ %i.co, %bb.n ]
  %.069.i.i.i = phi i64 [ %i.cv, %.lr.ph.i.i.i ], [ %i.cl, %bb.n ]
  %i.cu = add i64 %.010.i.i.i, 1                  ; 3 uses
  %i.cv = sub nuw i64 %.069.i.i.i, %i.ct          ; 3 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.cu
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !29
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !22 ; 2 uses
  %.not.i.i.i = icmp ult i64 %i.cv, %i.cy
  br i1 %.not.i.i.i, label %_ZNK4absl12lts_2025051213cord_internal12CordRepBtree7IndexOfEm.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !197

_ZNK4absl12lts_2025051213cord_internal12CordRepBtree7IndexOfEm.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.n
  %.06.lcssa.i.i.i = phi i64 [ %i.cl, %bb.n ], [ %i.cv, %.lr.ph.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i = phi i64 [ %i.co, %bb.n ], [ %i.cu, %.lr.ph.i.i.i ] ; 3 uses
  %i.cz = trunc i64 %.0.lcssa.i.i.i to i8
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ch
  store i8 %i.cz, ptr %i.db, align 1, !tbaa !14
  %.not13 = icmp eq i32 %i.ce, 0
  br i1 %.not13, label %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator4SeekEm.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK4absl12lts_2025051213cord_internal12CordRepBtree7IndexOfEm.exit.i.i, %_ZNK4absl12lts_2025051213cord_internal12CordRepBtree7IndexOfEm.exit31.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %_ZNK4absl12lts_2025051213cord_internal12CordRepBtree7IndexOfEm.exit31.i.i ], [ %i.ch, %_ZNK4absl12lts_2025051213cord_internal12CordRepBtree7IndexOfEm.exit.i.i ] ; 2 uses
  %.sroa.01.039.i.i = phi i64 [ %.0.lcssa.i28.i.i, %_ZNK4absl12lts_2025051213cord_internal12CordRepBtree7IndexOfEm.exit31.i.i ], [ %.0.lcssa.i.i.i, %_ZNK4absl12lts_2025051213cord_internal12CordRepBtree7IndexOfEm.exit.i.i ]
  %.06.lcssa.i.pn38.i.i = phi i64 [ %.06.lcssa.i27.i.i, %_ZNK4absl12lts_2025051213cord_internal12CordRepBtree7IndexOfEm.exit31.i.i ], [ %.06.lcssa.i.i.i, %_ZNK4absl12lts_2025051213cord_internal12CordRepBtree7IndexOfEm.exit.i.i ] ; 3 uses
  %.037.i.i = phi ptr [ %i.de, %_ZNK4absl12lts_2025051213cord_internal12CordRepBtree7IndexOfEm.exit31.i.i ], [ %i.cj, %_ZNK4absl12lts_2025051213cord_internal12CordRepBtree7IndexOfEm.exit.i.i ]
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.037.i.i, i64 16
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %.sroa.01.039.i.i
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !29 ; 5 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv.next.i.i
  store ptr %i.de, ptr %i.df, align 8, !tbaa !106
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 14
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !14
  %i.di = zext i8 %i.dh to i64                    ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 16 ; 2 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.di
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !29
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !22 ; 2 uses
  %.not8.i22.i.i = icmp ult i64 %.06.lcssa.i.pn38.i.i, %i.dm
  br i1 %.not8.i22.i.i, label %_ZNK4absl12lts_2025051213cord_internal12CordRepBtree7IndexOfEm.exit31.i.i, label %.lr.ph.i23.i.i

.lr.ph.i23.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i23.i.i
  %i.dn = phi i64 [ %i.ds, %.lr.ph.i23.i.i ], [ %i.dm, %.lr.ph.i.i ]
  %.010.i24.i.i = phi i64 [ %i.do, %.lr.ph.i23.i.i ], [ %i.di, %.lr.ph.i.i ]
  %.069.i25.i.i = phi i64 [ %i.dp, %.lr.ph.i23.i.i ], [ %.06.lcssa.i.pn38.i.i, %.lr.ph.i.i ]
  %i.do = add i64 %.010.i24.i.i, 1                ; 3 uses
  %i.dp = sub nuw i64 %.069.i25.i.i, %i.dn        ; 3 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.do
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !29
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !22 ; 2 uses
  %.not.i26.i.i = icmp ult i64 %i.dp, %i.ds
  br i1 %.not.i26.i.i, label %_ZNK4absl12lts_2025051213cord_internal12CordRepBtree7IndexOfEm.exit31.i.i, label %.lr.ph.i23.i.i, !llvm.loop !197

_ZNK4absl12lts_2025051213cord_internal12CordRepBtree7IndexOfEm.exit31.i.i: ; preds = %.lr.ph.i23.i.i, %.lr.ph.i.i
  %.06.lcssa.i27.i.i = phi i64 [ %.06.lcssa.i.pn38.i.i, %.lr.ph.i.i ], [ %i.dp, %.lr.ph.i23.i.i ] ; 2 uses
  %.0.lcssa.i28.i.i = phi i64 [ %i.di, %.lr.ph.i.i ], [ %i.do, %.lr.ph.i23.i.i ] ; 3 uses
  %i.dt = trunc i64 %.0.lcssa.i28.i.i to i8
  %i.du = getelementptr inbounds nuw i8, ptr %i.da, i64 %indvars.iv.next.i.i
  store i8 %i.dt, ptr %i.du, align 1, !tbaa !14
  %i.dv = icmp samesign ugt i64 %indvars.iv.i.i, 1
  br i1 %i.dv, label %.lr.ph.i.i, label %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator4SeekEm.exit.i, !llvm.loop !198

_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator4SeekEm.exit.i: ; preds = %_ZNK4absl12lts_2025051213cord_internal12CordRepBtree7IndexOfEm.exit31.i.i, %_ZNK4absl12lts_2025051213cord_internal12CordRepBtree7IndexOfEm.exit.i.i
  %.0.lcssa.i.i = phi ptr [ %i.cj, %_ZNK4absl12lts_2025051213cord_internal12CordRepBtree7IndexOfEm.exit.i.i ], [ %i.de, %_ZNK4absl12lts_2025051213cord_internal12CordRepBtree7IndexOfEm.exit31.i.i ]
  %.06.lcssa.i.pn.lcssa.i.i = phi i64 [ %.06.lcssa.i.i.i, %_ZNK4absl12lts_2025051213cord_internal12CordRepBtree7IndexOfEm.exit.i.i ], [ %.06.lcssa.i27.i.i, %_ZNK4absl12lts_2025051213cord_internal12CordRepBtree7IndexOfEm.exit31.i.i ] ; 4 uses
  %.sroa.01.0.lcssa.i.i = phi i64 [ %.0.lcssa.i.i.i, %_ZNK4absl12lts_2025051213cord_internal12CordRepBtree7IndexOfEm.exit.i.i ], [ %.0.lcssa.i28.i.i, %_ZNK4absl12lts_2025051213cord_internal12CordRepBtree7IndexOfEm.exit31.i.i ]
  %i.dw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 16
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %.sroa.01.0.lcssa.i.i
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !29 ; 6 uses
  %i.dz = icmp eq ptr %i.dy, null
  br i1 %i.dz, label %_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4SeekEm.exit, label %bb.o, !prof !199

bb.o:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator4SeekEm.exit.i
  %i.ea = load i64, ptr %i.dy, align 8, !tbaa !22 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 12
  %i.ec = load i8, ptr %i.eb, align 4, !tbaa !23  ; 2 uses
  %i.ed = icmp eq i8 %i.ec, 1
  br i1 %i.ed, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !111
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !32 ; 2 uses
  %.phi.trans.insert.i.i11 = getelementptr inbounds nuw i8, ptr %i.eh, i64 12
  %.pre.i.i12 = load i8, ptr %.phi.trans.insert.i.i11, align 4, !tbaa !23
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ei = phi i8 [ %.pre.i.i12, %bb.p ], [ %i.ec, %bb.o ]
  %.010.i.i7 = phi i64 [ %i.ef, %bb.p ], [ 0, %bb.o ]
  %.0.i.i8 = phi ptr [ %i.eh, %bb.p ], [ %i.dy, %bb.o ] ; 2 uses
  %i.ej = icmp ugt i8 %i.ei, 5
  br i1 %i.ej, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ek = getelementptr inbounds nuw i8, ptr %.0.i.i8, i64 13
  br label %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i9

bb.s:                                             ; preds = %bb.q
  %i.el = getelementptr inbounds nuw i8, ptr %.0.i.i8, i64 16
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !24
  br label %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i9

_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i9: ; preds = %bb.s, %bb.r
  %.pn.i.i10 = phi ptr [ %i.ek, %bb.r ], [ %i.em, %bb.s ]
  %i.en = icmp ugt i64 %.06.lcssa.i.pn.lcssa.i.i, %i.ea
  br i1 %i.en, label %bb.t, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i

bb.t:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i9
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.35, i64 noundef %.06.lcssa.i.pn.lcssa.i.i, i64 noundef %i.ea) #26
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i: ; preds = %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i9
  %.sroa.3.0.i3.i = getelementptr inbounds nuw i8, ptr %.pn.i.i10, i64 %.010.i.i7
  %i.eo = sub nuw i64 %i.ea, %.06.lcssa.i.pn.lcssa.i.i ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.3.0.i3.i, i64 %.06.lcssa.i.pn.lcssa.i.i
  %i.eq = load i32, ptr %i.cd, align 8, !tbaa !100 ; 2 uses
  %i.er = icmp sgt i32 %i.eq, -1
  tail call void @llvm.assume(i1 %i.er)
  %i.es = zext nneg i32 %i.eq to i64
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.es
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !106
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !22
  %i.ew = add i64 %i.eo, %i.cl
  %i.ex = sub i64 %i.ev, %i.ew
  br label %_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4SeekEm.exit

_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4SeekEm.exit: ; preds = %bb.m, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator4SeekEm.exit.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i
  %storemerge.i = phi i64 [ %i.ex, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i ], [ 0, %bb.m ], [ 0, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator4SeekEm.exit.i ]
  %.sroa.49.0.i = phi ptr [ %i.ep, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i ], [ null, %bb.m ], [ null, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator4SeekEm.exit.i ]
  %.sroa.08.0.i = phi i64 [ %i.eo, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i ], [ 0, %bb.m ], [ 0, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator4SeekEm.exit.i ]
  store i64 %storemerge.i, ptr %i.f, align 8, !tbaa !110
  store i64 %.sroa.08.0.i, ptr %0, align 8, !tbaa !125
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.49.0.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !130
  br label %bb.v

bb.u:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.v

bb.v:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4NextEv.exit, %_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4SeekEm.exit, %bb.u
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcESaIS4_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt11_Deque_baseIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcESaIS4_EE15_M_allocate_mapEm.exit:
  %i.a = lshr i64 %1, 5                           ; 2 uses
  %i.b = add nuw nsw i64 %i.a, 1                  ; 2 uses
  %i.c = tail call i64 @llvm.umax.i64(i64 %i.a, i64 5)
  %.sroa.speculated = add nuw nsw i64 %i.c, 3     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %.sroa.speculated, ptr %i.d, align 8, !tbaa !149
  %i.e = shl nuw nsw i64 %.sroa.speculated, 3
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #21 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !144
  %i.g = sub nsw i64 %.sroa.speculated, %i.b
  %i.h = lshr i64 %i.g, 1
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h ; 6 uses
  %.idx = shl nuw nsw i64 %i.b, 3
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt11_Deque_baseIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcESaIS4_EE15_M_allocate_mapEm.exit, %_ZNSt11_Deque_baseIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcESaIS4_EE16_M_allocate_nodeEv.exit.i
  %.011.i = phi ptr [ %i.l, %_ZNSt11_Deque_baseIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcESaIS4_EE16_M_allocate_nodeEv.exit.i ], [ %i.i, %_ZNSt11_Deque_baseIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcESaIS4_EE15_M_allocate_mapEm.exit ] ; 4 uses
  %i.k = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #21
          to label %_ZNSt11_Deque_baseIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcESaIS4_EE16_M_allocate_nodeEv.exit.i unwind label %bb.a

_ZNSt11_Deque_baseIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcESaIS4_EE16_M_allocate_nodeEv.exit.i: ; preds = %.lr.ph.i
  store ptr %i.k, ptr %.011.i, align 8, !tbaa !147
  %i.l = getelementptr inbounds nuw i8, ptr %.011.i, i64 8 ; 2 uses
  %i.m = icmp ult ptr %i.l, %i.j
  br i1 %i.m, label %.lr.ph.i, label %_ZNSt11_Deque_baseIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcESaIS4_EE15_M_create_nodesEPPS4_S8_.exit, !llvm.loop !200

bb.a:                                             ; preds = %.lr.ph.i
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  %i.p = tail call ptr @__cxa_begin_catch(ptr %i.o) #24 ; 0 uses
  %i.q = icmp ult ptr %i.i, %.011.i
  br i1 %i.q, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.s, %.lr.ph.i.i ], [ %i.i, %bb.a ] ; 2 uses
  %i.r = load ptr, ptr %.06.i.i, align 8, !tbaa !147
  tail call void @_ZdlPvm(ptr noundef %i.r, i64 noundef 512) #22
  %i.s = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.t = icmp ult ptr %i.s, %.011.i
end_hunk_3
begin_hunk_4_@_ZN4absl12lts_202505124Cord12CharIteratorC2EPKS1_:bb.a
  %.not8.i = icmp ne ptr %i.h, null
  %.not.not.i = select i1 %i.f, i1 %.not8.i, i1 false
  br i1 %.not.not.i, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !tbaa !22   ; 2 uses
  store i64 %i.i, ptr %i.b, align 8, !tbaa !102
  %.not7.i = icmp eq i64 %i.i, 0
  br i1 %.not7.i, label %bb.o, label %bb.c, !prof !59

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.k = load i8, ptr %i.j, align 4, !tbaa !23    ; 2 uses
  %i.l = icmp eq i8 %i.k, 2
  br i1 %i.l, label %bb.d, label %_ZN4absl12lts_2025051213cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i, !prof !59

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !55   ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 4, !tbaa !23
  br label %_ZN4absl12lts_2025051213cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i

_ZN4absl12lts_2025051213cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i: ; preds = %bb.d, %bb.c
  %i.o = phi i8 [ %.pre.i.i, %bb.d ], [ %i.k, %bb.c ] ; 3 uses
  %.0.i.i.i = phi ptr [ %i.n, %bb.d ], [ %i.h, %bb.c ] ; 11 uses
  %i.p = icmp eq i8 %i.o, 3
  br i1 %i.p, label %bb.e, label %bb.j

bb.e:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 13
  %i.r = load i8, ptr %i.q, align 1, !tbaa !14    ; 4 uses
  %i.s = zext i8 %i.r to i32
  store i32 %i.s, ptr %i.d, align 8, !tbaa !100
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 14
  %i.u = load i8, ptr %i.t, align 1               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.w = zext i8 %i.r to i64                      ; 5 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.w
  store ptr %.0.i.i.i, ptr %i.x, align 8, !tbaa !106
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 %i.u, ptr %i.z, align 1, !tbaa !14
  %.018.i.i.i.i.i = zext i8 %i.u to i64           ; 3 uses
  %.not.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.e
  %xtraiter = and i64 %i.w, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader
  %indvars.iv.next.i.i.i.i.i.prol = add nsw i64 %i.w, -1 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.018.i.i.i.i.i
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !29 ; 3 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.next.i.i.i.i.i.prol
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !106
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 14
  %i.af = load i8, ptr %i.ae, align 1             ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv.next.i.i.i.i.i.prol
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !14
  %.0.i.i.i.i.i.prol = zext i8 %i.af to i64       ; 2 uses
  br label %.lr.ph.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %indvars.iv.i.i.i.i.i.unr = phi i64 [ %i.w, %.lr.ph.i.i.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.prol ]
  %.021.i.i.i.i.i.unr = phi i64 [ %.018.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.prol ]
  %.01619.i.i.i.i.i.unr = phi ptr [ %.0.i.i.i, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ac, %.lr.ph.i.i.i.i.i.prol ]
  %.0.i.i.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.prol ]
  %i.ah = icmp eq i8 %i.r, 1
  br i1 %i.ah, label %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i ], [ %indvars.iv.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.021.i.i.i.i.i = phi i64 [ %.0.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i ], [ %.021.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.01619.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i ], [ %.01619.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %indvars.iv.next.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i, -1 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.01619.i.i.i.i.i, i64 16
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.021.i.i.i.i.i
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !29 ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.next.i.i.i.i.i
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !106
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 14
  %i.an = load i8, ptr %i.am, align 1             ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv.next.i.i.i.i.i
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !14
  %.0.i.i.i.i.i = zext i8 %i.an to i64
  %indvars.iv.next.i.i.i.i.i.1 = add nsw i64 %indvars.iv.i.i.i.i.i, -2 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.0.i.i.i.i.i
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !29 ; 3 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.next.i.i.i.i.i.1
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !106
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 14
  %i.au = load i8, ptr %i.at, align 1             ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv.next.i.i.i.i.i.1
  store i8 %i.au, ptr %i.av, align 1, !tbaa !14
  %.0.i.i.i.i.i.1 = zext i8 %i.au to i64          ; 2 uses
  %i.aw = icmp sgt i64 %indvars.iv.i.i.i.i.i, 2
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i, label %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i, !llvm.loop !108

_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.018.i.i.i.i.i, %bb.e ], [ %.0.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %.0.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i ]
  %i.ax = load ptr, ptr %i.v, align 8, !tbaa !106
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.0.lcssa.i.i.i.i.i
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !29 ; 5 uses
  %i.bb = load i64, ptr %.0.i.i.i, align 8, !tbaa !22
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !22 ; 2 uses
  %i.bd = sub i64 %i.bb, %i.bc
  store i64 %i.bd, ptr %i.c, align 8, !tbaa !110
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %i.bf = load i8, ptr %i.be, align 4, !tbaa !23  ; 2 uses
  %i.bg = icmp eq i8 %i.bf, 1
  br i1 %i.bg, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !111
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !32 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  %.pre.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !23
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i
  %i.bl = phi i8 [ %.pre.i.i.i.i, %bb.f ], [ %i.bf, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i ]
  %.010.i.i.i.i = phi i64 [ %i.bi, %bb.f ], [ 0, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i ]
  %.0.i.i.i.i = phi ptr [ %i.bk, %bb.f ], [ %i.ba, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i ] ; 2 uses
  %i.bm = icmp ugt i8 %i.bl, 5
  br i1 %i.bm, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 13
  br label %_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !24
  br label %_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i

_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i: ; preds = %bb.i, %bb.h
  %.pn.i.i.i.i = phi ptr [ %i.bn, %bb.h ], [ %i.bp, %bb.i ]
  %.sroa.3.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i, i64 %.010.i.i.i.i
  br label %_ZN4absl12lts_202505124Cord13ChunkIterator8InitTreeEPNS0_13cord_internal7CordRepE.exit.i

bb.j:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !129
  %i.bq = load i64, ptr %.0.i.i.i, align 8, !tbaa !22
  %i.br = icmp eq i8 %i.o, 1
  br i1 %i.br, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !111
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !32 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !23
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bw = phi i8 [ %.pre.i.i.i, %bb.k ], [ %i.o, %bb.j ]
  %.010.i.i.i = phi i64 [ %i.bt, %bb.k ], [ 0, %bb.j ]
  %.0.i8.i.i = phi ptr [ %i.bv, %bb.k ], [ %.0.i.i.i, %bb.j ] ; 2 uses
  %i.bx = icmp ugt i8 %i.bw, 5
  br i1 %i.bx, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.by = getelementptr inbounds nuw i8, ptr %.0.i8.i.i, i64 13
  br label %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i

bb.n:                                             ; preds = %bb.l
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.i8.i.i, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !24
  br label %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i

_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i: ; preds = %bb.n, %bb.m
  %.pn.i.i.i = phi ptr [ %i.by, %bb.m ], [ %i.ca, %bb.n ]
  %.sroa.3.0.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 %.010.i.i.i
  br label %_ZN4absl12lts_202505124Cord13ChunkIterator8InitTreeEPNS0_13cord_internal7CordRepE.exit.i

_ZN4absl12lts_202505124Cord13ChunkIterator8InitTreeEPNS0_13cord_internal7CordRepE.exit.i: ; preds = %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i, %_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i
  %.sink.i.i = phi i64 [ %i.bq, %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i ], [ %i.bc, %_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i ]
  %.sroa.3.0.i.sink.i.i = phi ptr [ %.sroa.3.0.i.i.i, %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i ], [ %.sroa.3.0.i.i.i.i, %_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i ]
  store i64 %.sink.i.i, ptr %0, align 8, !tbaa !125
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.3.0.i.sink.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !130
  br label %_ZN4absl12lts_202505124Cord13ChunkIteratorC2EPKS1_.exit

bb.o:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %0, i8 0, i64 16, i1 false)
  br label %_ZN4absl12lts_202505124Cord13ChunkIteratorC2EPKS1_.exit

bb.p:                                             ; preds = %bb.a
  %i.cb = sext i8 %i.e to i64
  %i.cc = lshr i64 %i.cb, 1                       ; 2 uses
  store i64 %i.cc, ptr %i.b, align 8, !tbaa !102
  %i.cd = load i8, ptr %1, align 8, !tbaa !14
  %i.ce = trunc i8 %i.cd to i1
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 1
  %spec.select.i.i = select i1 %i.ce, ptr null, ptr %i.cf
  store i64 %i.cc, ptr %0, align 8, !tbaa !125
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %spec.select.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !130
  br label %_ZN4absl12lts_202505124Cord13ChunkIteratorC2EPKS1_.exit

_ZN4absl12lts_202505124Cord13ChunkIteratorC2EPKS1_.exit: ; preds = %_ZN4absl12lts_202505124Cord13ChunkIterator8InitTreeEPNS0_13cord_internal7CordRepE.exit.i, %bb.o, %bb.p
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #12

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt5dequeIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcESaIS4_EE16_M_push_back_auxIJS4_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !201  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !201
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = shl nsw i64 %i.l, 5
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !205
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !202
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 4
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !203
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !205
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 4
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 576460752303423487
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !149
  %i.ag = load ptr, ptr %0, align 8, !tbaa !144
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.g, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = sub i64 %i.af, %i.aj
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %bb.d, label %_ZNSt5dequeIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcESaIS4_EE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcESaIS4_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !146
  br label %_ZNSt5dequeIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcESaIS4_EE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeIN4absl12lts_2025051212crc_internal12CrcCordState9PrefixCrcESaIS4_EE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %i.am = phi ptr [ %i.d, %bb.c ], [ %.pre, %bb.d ]
  %i.an = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #21
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !147
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !134
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !141
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !146
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  store ptr %i.ar, ptr %i.c, align 8, !tbaa !201
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !147 ; 3 uses
  store ptr %i.as, ptr %i.o, align 8, !tbaa !202
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 512
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.at, ptr %i.au, align 8, !tbaa !203
  store ptr %i.as, ptr %i.a, align 8, !tbaa !134
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK4absl12lts_202505124Cord15CompareSlowPathESt17basic_string_viewIcSt11char_traitsIcEEmm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1, ptr %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %5 = alloca %"class.absl::lts_20250512::Cord::ChunkIterator", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !469)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %5, i8 0, i64 40, i1 false), !alias.scope !469
  store i32 -1, ptr %i.c, align 8, !tbaa !100, !alias.scope !469
  %i.d = load i8, ptr %0, align 8, !tbaa !14, !noalias !469 ; 2 uses
  %i.e = trunc i8 %i.d to i1                      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !noalias !469 ; 5 uses
  %.not8.i.i = icmp ne ptr %i.g, null
  %.not.not.i.i = select i1 %i.e, i1 %.not8.i.i, i1 false
  br i1 %.not.not.i.i, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.g, align 8, !tbaa !22, !noalias !469 ; 3 uses
  store i64 %i.h, ptr %i.a, align 8, !tbaa !102, !alias.scope !469
  %.not7.i.i = icmp eq i64 %i.h, 0
  br i1 %.not7.i.i, label %_ZNK4absl12lts_202505124Cord11chunk_beginEv.exit.thread, label %bb.c, !prof !59

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.j = load i8, ptr %i.i, align 4, !tbaa !23, !noalias !469 ; 2 uses
  %i.k = icmp eq i8 %i.j, 2
  br i1 %i.k, label %bb.d, label %_ZN4absl12lts_2025051213cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i, !prof !59

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !55, !noalias !469 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !23, !noalias !469
  br label %_ZN4absl12lts_2025051213cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i

_ZN4absl12lts_2025051213cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i: ; preds = %bb.d, %bb.c
  %i.n = phi i8 [ %.pre.i.i.i, %bb.d ], [ %i.j, %bb.c ] ; 3 uses
  %.0.i.i.i.i = phi ptr [ %i.m, %bb.d ], [ %i.g, %bb.c ] ; 10 uses
  %i.o = icmp eq i8 %i.n, 3
  br i1 %i.o, label %bb.e, label %bb.j

bb.e:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 13
  %i.q = load i8, ptr %i.p, align 1, !tbaa !14, !noalias !469 ; 4 uses
  %i.r = zext i8 %i.q to i32
  store i32 %i.r, ptr %i.c, align 8, !tbaa !100, !alias.scope !469
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 14
  %i.t = load i8, ptr %i.s, align 1, !noalias !469 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 5 uses
  %i.v = zext i8 %i.q to i64                      ; 5 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.v
  store ptr %.0.i.i.i.i, ptr %i.w, align 8, !tbaa !106, !alias.scope !469
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 44 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 %i.t, ptr %i.y, align 1, !tbaa !14, !alias.scope !469
  %.018.i.i.i.i.i.i = zext i8 %i.t to i64         ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.e
  %xtraiter = and i64 %i.v, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %indvars.iv.next.i.i.i.i.i.i.prol = add nsw i64 %i.v, -1 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.018.i.i.i.i.i.i
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !29, !noalias !469 ; 3 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next.i.i.i.i.i.i.prol
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !106, !alias.scope !469
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 14
  %i.ae = load i8, ptr %i.ad, align 1, !noalias !469 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 %indvars.iv.next.i.i.i.i.i.i.prol
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !14, !alias.scope !469
  %.0.i.i.i.i.i.i.prol = zext i8 %i.ae to i64     ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %indvars.iv.i.i.i.i.i.i.unr = phi i64 [ %i.v, %.lr.ph.i.i.i.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.prol ]
  %.021.i.i.i.i.i.i.unr = phi i64 [ %.018.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.prol ]
  %.01619.i.i.i.i.i.i.unr = phi ptr [ %.0.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ab, %.lr.ph.i.i.i.i.i.i.prol ]
  %.0.i.i.i.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.ag = icmp eq i8 %i.q, 1
  br i1 %i.ag, label %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i ], [ %indvars.iv.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.021.i.i.i.i.i.i = phi i64 [ %.0.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i ], [ %.021.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %.01619.i.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i ], [ %.01619.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %indvars.iv.next.i.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i.i, -1 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.01619.i.i.i.i.i.i, i64 16
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.021.i.i.i.i.i.i
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !29, !noalias !469 ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next.i.i.i.i.i.i
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !106, !alias.scope !469
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 14
  %i.am = load i8, ptr %i.al, align 1, !noalias !469 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 %indvars.iv.next.i.i.i.i.i.i
  store i8 %i.am, ptr %i.an, align 1, !tbaa !14, !alias.scope !469
  %.0.i.i.i.i.i.i = zext i8 %i.am to i64
  %indvars.iv.next.i.i.i.i.i.i.1 = add nsw i64 %indvars.iv.i.i.i.i.i.i, -2 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
end_hunk_4
