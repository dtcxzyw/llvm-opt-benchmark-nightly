inline.NumInlined: 2801
inline.NumDeleted: 1489
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZN2v88internal6maglev31MaglevPhiRepresentationSelector18PreparePhiTaggingsEPNS1_10BasicBlockEPKS3_:bb.a
  %.sroa.15.0.i = phi i64 [ 0, %bb.m ], [ %i.de, %bb.o ] ; 2 uses
  %.sroa.7.0.i = and i64 %.pn.i, %i.bg            ; 5 uses
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %.sroa.7.0.i
  tail call void @llvm.prefetch.p0(ptr %i.ci, i32 0, i32 3, i32 1), !noalias !33
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.7.0.i
  %i.ck = load <16 x i8>, ptr %i.cj, align 1, !noalias !33 ; 2 uses
  %i.cl = icmp eq <16 x i8> %i.ch, %i.ck
  %i.cm = bitcast <16 x i1> %i.cl to i16          ; 2 uses
  %.not64.i = icmp eq i16 %i.cm, 0
  br i1 %.not64.i, label %.critedge19.i, label %.lr.ph.i13

.lr.ph.i13:                                       ; preds = %bb.n, %.critedge.i
  %.sroa.035.065.i = phi i16 [ %i.cv, %.critedge.i ], [ %i.cm, %bb.n ] ; 3 uses
  %i.cn = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.065.i, i1 true)
  %i.co = zext nneg i16 %i.cn to i64
  %i.cp = add i64 %.sroa.7.0.i, %i.co
  %i.cq = and i64 %i.cp, %i.bg
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !noalias !33
  %i.ct = icmp eq i32 %i.cs, %i.m
  br i1 %i.ct, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal8compiler10turboshaft13SnapshotTableIPNS4_6maglev9ValueNodeENS6_9NoKeyDataEE8SnapshotEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjSD_EEE7emplaceIJjSD_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESK_INSO_8iteratorEbEDpOSR_.exit, label %.critedge.i, !prof !36

.critedge.i:                                      ; preds = %.lr.ph.i13
  %i.cu = add i16 %.sroa.035.065.i, -1
  %i.cv = and i16 %i.cu, %.sroa.035.065.i         ; 2 uses
  %.not.i14 = icmp eq i16 %i.cv, 0
  br i1 %.not.i14, label %.critedge19.i, label %.lr.ph.i13

.critedge19.i:                                    ; preds = %.critedge.i, %bb.n
  %i.cw = icmp eq <16 x i8> %i.ck, splat (i8 -128)
  %i.cx = bitcast <16 x i1> %i.cw to i16          ; 2 uses
  %.not57.i = icmp eq i16 %i.cx, 0
  br i1 %.not57.i, label %bb.o, label %.thread.i, !prof !5

.thread.i:                                        ; preds = %.critedge19.i
  %i.cy = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cx, i1 true)
  %i.cz = zext nneg i16 %i.cy to i64
  %i.da = add i64 %.sroa.7.0.i, %i.cz
  %i.db = and i64 %i.da, %i.bg
  %i.dc = tail call noundef i64 @_ZN4absl18container_internal18PrepareInsertLargeERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmNS0_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal8compiler10turboshaft13SnapshotTableIPNS4_6maglev9ValueNodeENS6_9NoKeyDataEE8SnapshotEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjSD_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.cc, i64 %i.db, i64 %.sroa.15.0.i) #18, !noalias !33
  %.sroa.0.0.copyload.i.i.i2.i26.i = load ptr, ptr %i.cf, align 8, !noalias !33
  %i.dd = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i26.i, i64 %i.dc
  br label %bb.p

bb.o:                                             ; preds = %.critedge19.i
  %i.de = add i64 %.sroa.15.0.i, 16               ; 2 uses
  %i.df = add i64 %i.de, %.sroa.7.0.i
  br label %bb.n

bb.p:                                             ; preds = %bb.l, %bb.j, %.thread.i
  %i.dg = phi i32 [ %i.m, %.thread.i ], [ %i.m, %bb.j ], [ %.pre, %bb.l ]
  %.sroa.418.0.ph = phi ptr [ %i.dd, %.thread.i ], [ %i.bk, %bb.j ], [ %i.br, %bb.l ] ; 2 uses
  store i32 %i.dg, ptr %.sroa.418.0.ph, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.418.0.ph, i64 8
  %i.di = ptrtoint ptr %.sroa.0.0.i to i64
  store i64 %i.di, ptr %i.dh, align 8
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal8compiler10turboshaft13SnapshotTableIPNS4_6maglev9ValueNodeENS6_9NoKeyDataEE8SnapshotEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjSD_EEE7emplaceIJjSD_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESK_INSO_8iteratorEbEDpOSR_.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal8compiler10turboshaft13SnapshotTableIPNS4_6maglev9ValueNodeENS6_9NoKeyDataEE8SnapshotEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjSD_EEE7emplaceIJjSD_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESK_INSO_8iteratorEbEDpOSR_.exit: ; preds = %.lr.ph.i13, %bb.k, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 4 uses
  %i.dl = load ptr, ptr %i.dk, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 8 uses
  store ptr %i.dl, ptr %i.dm, align 8
  %i.dn = load i8, ptr %2, align 8
  %i.do = icmp eq i8 %i.dn, 0
  br i1 %i.do, label %bb.s, label %bb.q

bb.q:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal8compiler10turboshaft13SnapshotTableIPNS4_6maglev9ValueNodeENS6_9NoKeyDataEE8SnapshotEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjSD_EEE7emplaceIJjSD_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESK_INSO_8iteratorEbEDpOSR_.exit
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.dq = load ptr, ptr %i.dp, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  %i.ds = load i32, ptr %i.dr, align 4
  store i32 %i.ds, ptr %i.c, align 4
  %i.dt = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIjN2v88internal8compiler10turboshaft13SnapshotTableIPNS4_6maglev9ValueNodeENS6_9NoKeyDataEE8SnapshotEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjSD_EEE2atIjSE_EEDTclsrT0_5valueclL_ZSt9addressofISM_EPT_RSS_EclL_ZSt7declvalIRSM_EDTcl9__declvalISS_ELi0EEEvEEEEERSL_(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  %i.du = load ptr, ptr %i.dm, align 8            ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.dw = load ptr, ptr %i.dv, align 8            ; 2 uses
  %i.dx = icmp ult ptr %i.du, %i.dw
  br i1 %i.dx, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableIPNS0_6maglev9ValueNodeENS3_9NoKeyDataEE8SnapshotEE9push_backERKSA_.exit, label %bb.r, !prof !36

bb.r:                                             ; preds = %bb.q
  %i.dy = load ptr, ptr %i.dk, align 8
  %i.dz = ptrtoint ptr %i.dw to i64
  %i.ea = ptrtoint ptr %i.dy to i64
  %i.eb = sub i64 %i.dz, %i.ea
  %i.ec = ashr exact i64 %i.eb, 3
  %i.ed = add nsw i64 %i.ec, 1
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableIPNS0_6maglev9ValueNodeENS3_9NoKeyDataEE8SnapshotEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.dj, i64 noundef %i.ed)
  %.pre.i8 = load ptr, ptr %i.dm, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableIPNS0_6maglev9ValueNodeENS3_9NoKeyDataEE8SnapshotEE9push_backERKSA_.exit

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableIPNS0_6maglev9ValueNodeENS3_9NoKeyDataEE8SnapshotEE9push_backERKSA_.exit: ; preds = %bb.q, %bb.r
  %i.ee = phi ptr [ %i.du, %bb.q ], [ %.pre.i8, %bb.r ] ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store ptr %i.ef, ptr %i.dm, align 8
  %i.eg = load i64, ptr %i.dt, align 8
  store i64 %i.eg, ptr %i.ee, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br label %.loopexit

bb.s:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal8compiler10turboshaft13SnapshotTableIPNS4_6maglev9ValueNodeENS6_9NoKeyDataEE8SnapshotEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjSD_EEE7emplaceIJjSD_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESK_INSO_8iteratorEbEDpOSR_.exit
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8            ; 4 uses
  %.not29 = icmp eq ptr %i.ei, null
  br i1 %.not29, label %_ZNK2v88internal6maglev10BasicBlock7is_loopEv.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 12
  %i.ek = load i32, ptr %i.ej, align 4
  %i.el = and i32 %i.ek, 3
  %i.em = icmp eq i32 %i.el, 1
  %i.en = sext i1 %i.em to i32
  br label %_ZNK2v88internal6maglev10BasicBlock7is_loopEv.exit

_ZNK2v88internal6maglev10BasicBlock7is_loopEv.exit: ; preds = %bb.s, %bb.t
  %.neg = phi i32 [ 0, %bb.s ], [ %i.en, %bb.t ]  ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  %i.ep = load i32, ptr %i.eo, align 4
  %i.eq = add i32 %i.ep, %.neg
  %i.er = icmp sgt i32 %i.eq, 0
  br i1 %i.er, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZNK2v88internal6maglev10BasicBlock7is_loopEv.exit
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 528
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableIPNS0_6maglev9ValueNodeENS3_9NoKeyDataEE8SnapshotEE9push_backERKSA_.exit10
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableIPNS0_6maglev9ValueNodeENS3_9NoKeyDataEE8SnapshotEE9push_backERKSA_.exit10 ] ; 2 uses
  %i.et = phi ptr [ %i.ei, %.lr.ph ], [ %i.fn, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableIPNS0_6maglev9ValueNodeENS3_9NoKeyDataEE8SnapshotEE9push_backERKSA_.exit10 ]
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %indvars.iv
  %i.ex = load ptr, ptr %i.ew, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  %i.ez = load i32, ptr %i.ey, align 4
  store i32 %i.ez, ptr %i.d, align 4
  %i.fa = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIjN2v88internal8compiler10turboshaft13SnapshotTableIPNS4_6maglev9ValueNodeENS6_9NoKeyDataEE8SnapshotEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjSD_EEE2atIjSE_EEDTclsrT0_5valueclL_ZSt9addressofISM_EPT_RSS_EclL_ZSt7declvalIRSM_EDTcl9__declvalISS_ELi0EEEvEEEEERSL_(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
  %i.fb = load ptr, ptr %i.dm, align 8            ; 2 uses
  %i.fc = load ptr, ptr %i.es, align 8            ; 2 uses
  %i.fd = icmp ult ptr %i.fb, %i.fc
  br i1 %i.fd, label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableIPNS0_6maglev9ValueNodeENS3_9NoKeyDataEE8SnapshotEE9push_backERKSA_.exit10, label %bb.v, !prof !36

bb.v:                                             ; preds = %bb.u
  %i.fe = load ptr, ptr %i.dk, align 8
  %i.ff = ptrtoint ptr %i.fc to i64
  %i.fg = ptrtoint ptr %i.fe to i64
  %i.fh = sub i64 %i.ff, %i.fg
  %i.fi = ashr exact i64 %i.fh, 3
  %i.fj = add nsw i64 %i.fi, 1
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableIPNS0_6maglev9ValueNodeENS3_9NoKeyDataEE8SnapshotEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.dj, i64 noundef %i.fj)
  %.pre.i9 = load ptr, ptr %i.dm, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableIPNS0_6maglev9ValueNodeENS3_9NoKeyDataEE8SnapshotEE9push_backERKSA_.exit10

_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableIPNS0_6maglev9ValueNodeENS3_9NoKeyDataEE8SnapshotEE9push_backERKSA_.exit10: ; preds = %bb.u, %bb.v
  %i.fk = phi ptr [ %i.fb, %bb.u ], [ %.pre.i9, %bb.v ] ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  store ptr %i.fl, ptr %i.dm, align 8
  %i.fm = load i64, ptr %i.fa, align 8
  store i64 %i.fm, ptr %i.fk, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fn = load ptr, ptr %i.eh, align 8            ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 4
  %i.fp = load i32, ptr %i.fo, align 4
  %i.fq = add i32 %i.fp, %.neg
  %i.fr = sext i32 %i.fq to i64
  %i.fs = icmp slt i64 %indvars.iv.next, %i.fr
  br i1 %i.fs, label %bb.u, label %.loopexit, !llvm.loop !37

.loopexit:                                        ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableIPNS0_6maglev9ValueNodeENS3_9NoKeyDataEE8SnapshotEE9push_backERKSA_.exit10, %_ZNK2v88internal6maglev10BasicBlock7is_loopEv.exit, %_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableIPNS0_6maglev9ValueNodeENS3_9NoKeyDataEE8SnapshotEE9push_backERKSA_.exit
  %i.ft = load ptr, ptr %i.dk, align 8            ; 4 uses
  %i.fu = load ptr, ptr %i.dm, align 8            ; 2 uses
  %i.fv = ptrtoint ptr %i.fu to i64               ; 2 uses
  %i.fw = ptrtoint ptr %i.ft to i64               ; 2 uses
  %i.fx = sub i64 %i.fv, %i.fw                    ; 7 uses
  %i.fy = ashr exact i64 %i.fx, 3                 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.fz = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN2v88internal8compiler10turboshaft13SnapshotTableIPNS0_6maglev9ValueNodeENS2_9NoKeyDataEE17MoveToNewSnapshotINS2_16NoChangeCallbackEEERNS8_12SnapshotDataENS_4base6VectorIKNS8_8SnapshotEEERKT_(ptr noundef nonnull align 8 dereferenceable(344) %i.e, ptr %i.ft, i64 %i.fy, ptr noundef nonnull align 1 dereferenceable(1) %6) ; 0 uses
  %i.ga = icmp ult i64 %i.fy, 4294967296
  br i1 %i.ga, label %bb.x, label %bb.w, !prof !36

bb.w:                                             ; preds = %.loopexit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.70) #19
  unreachable

bb.x:                                             ; preds = %.loopexit
  %i.gb = icmp eq ptr %i.fu, %i.ft
  br i1 %i.gb, label %"_ZN2v88internal8compiler10turboshaft13SnapshotTableIPNS0_6maglev9ValueNodeENS2_9NoKeyDataEE16StartNewSnapshotIZNS4_31MaglevPhiRepresentationSelector18PreparePhiTaggingsEPNS4_10BasicBlockEPKSB_E3$_0NS2_16NoChangeCallbackEEEvNS_4base6VectorIKNS8_8SnapshotEEERKT_RKT0_Qaasr3stdE14is_invocable_vITL0__NS2_16SnapshotTableKeyISM_SP_EENSI_ISN_EEEsr3stdE14is_invocable_vITL0_0_SU_SM_SM_E.exit", label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gc = load ptr, ptr %i.f, align 8
  %i.gd = load ptr, ptr %i.gc, align 8            ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  br label %bb.aa

bb.z:                                             ; preds = %._crit_edge.i.i
  %i.gi = load ptr, ptr %i.v, align 8             ; 2 uses
  %i.gj = load ptr, ptr %i.x, align 8             ; 2 uses
  %.not25.i.i = icmp eq ptr %i.gi, %i.gj
  br i1 %.not25.i.i, label %"_ZN2v88internal8compiler10turboshaft13SnapshotTableIPNS0_6maglev9ValueNodeENS2_9NoKeyDataEE16StartNewSnapshotIZNS4_31MaglevPhiRepresentationSelector18PreparePhiTaggingsEPNS4_10BasicBlockEPKSB_E3$_0NS2_16NoChangeCallbackEEEvNS_4base6VectorIKNS8_8SnapshotEEERKT_RKT0_Qaasr3stdE14is_invocable_vITL0__NS2_16SnapshotTableKeyISM_SP_EENSI_ISN_EEEsr3stdE14is_invocable_vITL0_0_SU_SM_SM_E.exit", label %.lr.ph28.i.i

.lr.ph28.i.i:                                     ; preds = %bb.z
  %i.gk = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gl = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.gm = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.gt = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.gu = icmp eq i64 %i.fx, 8
  %unroll_iter = and i64 %i.fy, 4294967294
  %i.gv = and i64 %i.fx, 8
  %lcmp.mod.not = icmp eq i64 %i.gv, 0
  %lcmp.mod77 = trunc i64 %i.fy to i1
  br label %bb.ao

bb.aa:                                            ; preds = %._crit_edge.i.i, %bb.y
  %indvars.iv.i.i = phi i64 [ 0, %bb.y ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 4 uses
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %indvars.iv.i.i
  %.03320.i.i = load ptr, ptr %i.gw, align 8      ; 2 uses
  %.not3621.i.i = icmp eq ptr %.03320.i.i, %i.gd
  br i1 %.not3621.i.i, label %._crit_edge.i.i, label %.lr.ph23.preheader.i.i

.lr.ph23.preheader.i.i:                           ; preds = %bb.aa
  %i.gx = trunc nuw i64 %indvars.iv.i.i to i32    ; 2 uses
  br label %.lr.ph23.i.i

.loopexit18.i.i:                                  ; preds = %_ZN2v88internal8compiler10turboshaft13SnapshotTableIPNS0_6maglev9ValueNodeENS2_9NoKeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS6_S7_EERKS6_jj.exit.i.i, %.lr.ph23.i.i
  %.033.i.i = load ptr, ptr %.03322.i.i, align 8  ; 2 uses
  %.not36.i.i = icmp eq ptr %.033.i.i, %i.gd
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %.lr.ph23.i.i, !llvm.loop !38

._crit_edge.i.i:                                  ; preds = %.loopexit18.i.i, %bb.aa
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.fy
  br i1 %exitcond.not.i.i, label %bb.z, label %bb.aa, !llvm.loop !39

.lr.ph23.i.i:                                     ; preds = %.loopexit18.i.i, %.lr.ph23.preheader.i.i
  %.03322.i.i = phi ptr [ %.033.i.i, %.loopexit18.i.i ], [ %.03320.i.i, %.lr.ph23.preheader.i.i ] ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.03322.i.i, i64 16
  %i.gz = load i64, ptr %i.gy, align 8            ; 2 uses
  %i.ha = load ptr, ptr %i.p, align 8             ; 2 uses
  %i.hb = getelementptr inbounds nuw [24 x i8], ptr %i.ha, i64 %i.gz
  %i.hc = getelementptr inbounds nuw i8, ptr %.03322.i.i, i64 24
  %i.hd = load i64, ptr %i.hc, align 8            ; 2 uses
  %i.he = icmp samesign eq i64 %i.hd, %i.gz
  br i1 %i.he, label %.loopexit18.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.lr.ph23.i.i
  %i.hf = getelementptr inbounds nuw [24 x i8], ptr %i.ha, i64 %i.hd
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN2v88internal8compiler10turboshaft13SnapshotTableIPNS0_6maglev9ValueNodeENS2_9NoKeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS6_S7_EERKS6_jj.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.02.019.i.i = phi ptr [ %i.hg, %_ZN2v88internal8compiler10turboshaft13SnapshotTableIPNS0_6maglev9ValueNodeENS2_9NoKeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS6_S7_EERKS6_jj.exit.i.i ], [ %i.hf, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.hg = getelementptr inbounds i8, ptr %.sroa.02.019.i.i, i64 -24 ; 3 uses
  %i.hh = load ptr, ptr %i.hg, align 8, !nonnull !40, !align !41 ; 4 uses
  %i.hi = getelementptr inbounds i8, ptr %.sroa.02.019.i.i, i64 -8
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 12 ; 2 uses
  %i.hk = load i32, ptr %i.hj, align 4
  %i.hl = zext i32 %i.hk to i64
  %i.hm = icmp eq i64 %indvars.iv.i.i, %i.hl
  br i1 %i.hm, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableIPNS0_6maglev9ValueNodeENS2_9NoKeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS6_S7_EERKS6_jj.exit.i.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.i
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hh, i64 8 ; 3 uses
  %i.ho = load i32, ptr %i.hn, align 8            ; 2 uses
  %i.hp = icmp eq i32 %i.ho, -1
  br i1 %i.hp, label %bb.ac, label %bb.an

bb.ac:                                            ; preds = %bb.ab
  %i.hq = load ptr, ptr %i.ac, align 8
  %i.hr = load ptr, ptr %i.aa, align 8
  %i.hs = ptrtoint ptr %i.hq to i64
  %i.ht = ptrtoint ptr %i.hr to i64
  %i.hu = sub i64 %i.hs, %i.ht
  %i.hv = ashr exact i64 %i.hu, 3                 ; 2 uses
  %i.hw = add nsw i64 %i.hv, %i.fy
  %i.hx = icmp ult i64 %i.hw, 4294967296
  br i1 %i.hx, label %bb.ae, label %bb.ad, !prof !36

bb.ad:                                            ; preds = %bb.ac
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.71) #19
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.hy = trunc i64 %i.hv to i32
  store i32 %i.hy, ptr %i.hn, align 8
  %i.hz = load ptr, ptr %i.x, align 8             ; 2 uses
  %i.ia = load ptr, ptr %i.gf, align 8            ; 2 uses
  %i.ib = icmp ult ptr %i.hz, %i.ia
  br i1 %i.ib, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryIPNS0_6maglev9ValueNodeENS3_9NoKeyDataEEEE9push_backEOSA_.exit.i.i.i, label %bb.af, !prof !36

bb.af:                                            ; preds = %bb.ae
  %i.ic = load ptr, ptr %i.v, align 8
  %i.id = ptrtoint ptr %i.ia to i64
  %i.ie = ptrtoint ptr %i.ic to i64
  %i.if = sub i64 %i.id, %i.ie
  %i.ig = ashr exact i64 %i.if, 3
  %i.ih = add nsw i64 %i.ig, 1
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryIPNS0_6maglev9ValueNodeENS3_9NoKeyDataEEEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.gg, i64 noundef %i.ih)
  %.pre.i.i.i.i.i = load ptr, ptr %i.x, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryIPNS0_6maglev9ValueNodeENS3_9NoKeyDataEEEE9push_backEOSA_.exit.i.i.i

_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryIPNS0_6maglev9ValueNodeENS3_9NoKeyDataEEEE9push_backEOSA_.exit.i.i.i: ; preds = %bb.af, %bb.ae
  %i.ii = phi ptr [ %i.hz, %bb.ae ], [ %.pre.i.i.i.i.i, %bb.af ] ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  store ptr %i.ij, ptr %i.x, align 8
  store ptr %i.hh, ptr %i.ii, align 8
  %i.ik = load ptr, ptr %i.ac, align 8            ; 3 uses
  %i.il = load ptr, ptr %i.aa, align 8            ; 5 uses
  %i.im = ptrtoint ptr %i.ik to i64               ; 3 uses
  %i.in = ptrtoint ptr %i.il to i64               ; 5 uses
  %i.io = sub i64 %i.im, %i.in                    ; 4 uses
  %i.ip = ashr exact i64 %i.io, 3                 ; 2 uses
  %i.iq = xor i64 %i.ip, -1
  %.not.i38.i.i = icmp ugt i64 %i.fy, %i.iq
  br i1 %.not.i38.i.i, label %bb.ag, label %bb.ah, !prof !5

bb.ag:                                            ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryIPNS0_6maglev9ValueNodeENS3_9NoKeyDataEEEE9push_backEOSA_.exit.i.i.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.72) #19
  unreachable

bb.ah:                                            ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryIPNS0_6maglev9ValueNodeENS3_9NoKeyDataEEEE9push_backEOSA_.exit.i.i.i
  %i.ir = load ptr, ptr %i.gh, align 8            ; 2 uses
  %i.is = ptrtoint ptr %i.ir to i64
  %i.it = sub i64 %i.is, %i.in                    ; 2 uses
  %i.iu = ashr exact i64 %i.it, 3
  %i.iv = add nsw i64 %i.ip, %i.fy                ; 2 uses
  %i.iw = icmp ult i64 %i.iu, %i.iv
  br i1 %i.iw, label %bb.ai, label %_ZN2v88internal10ZoneVectorIPNS0_6maglev9ValueNodeEE19PrepareForInsertionEPKS4_mPm.exit.i.i

bb.ai:                                            ; preds = %bb.ah
  %i.ix = icmp eq ptr %i.il, %i.ir
  %i.iy = ashr exact i64 %i.it, 2
  %i.iz = select i1 %i.ix, i64 2, i64 %i.iy
  %i.ja = call noundef i64 @llvm.umax.i64(i64 %i.iz, i64 %i.iv) ; 3 uses
  %i.jb = load ptr, ptr %i.ge, align 8            ; 3 uses
  %i.jc = icmp ult i64 %i.ja, 2305843009213693951
  br i1 %i.jc, label %bb.ak, label %bb.aj, !prof !36

bb.aj:                                            ; preds = %bb.ai
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.33) #19
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.jd = shl nuw i64 %i.ja, 3                    ; 3 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jb, i64 24
  %i.jf = load i64, ptr %i.je, align 8
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jb, i64 16 ; 3 uses
  %i.jh = load i64, ptr %i.jg, align 8            ; 2 uses
  %i.ji = sub i64 %i.jf, %i.jh
  %i.jj = icmp ugt i64 %i.jd, %i.ji
  br i1 %i.jj, label %bb.al, label %_ZN2v88internal4Zone13AllocateArrayIPNS0_6maglev9ValueNodeEA_S5_EEPT_m.exit.i.i.i, !prof !5

bb.al:                                            ; preds = %bb.ak
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.jb, i64 noundef %i.jd) #18
  %.pre.i.i.i40.i.i = load i64, ptr %i.jg, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIPNS0_6maglev9ValueNodeEA_S5_EEPT_m.exit.i.i.i

_ZN2v88internal4Zone13AllocateArrayIPNS0_6maglev9ValueNodeEA_S5_EEPT_m.exit.i.i.i: ; preds = %bb.al, %bb.ak
  %i.jk = phi i64 [ %.pre.i.i.i40.i.i, %bb.al ], [ %i.jh, %bb.ak ] ; 2 uses
  %i.jl = inttoptr i64 %i.jk to ptr               ; 4 uses
  %i.jm = add i64 %i.jk, %i.jd
  store i64 %i.jm, ptr %i.jg, align 8
  store ptr %i.jl, ptr %i.aa, align 8
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jl, i64 %i.io
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 %i.fx
  store ptr %i.jo, ptr %i.ac, align 8
  %.not26.i.i.i = icmp eq ptr %i.il, null
  br i1 %.not26.i.i.i, label %_ZN2v88internal10ZoneVectorIPNS0_6maglev9ValueNodeEE19PrepareForInsertionEPKS4_mPm.exit.thread.i.i, label %bb.am

bb.am:                                            ; preds = %_ZN2v88internal4Zone13AllocateArrayIPNS0_6maglev9ValueNodeEA_S5_EEPT_m.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.jl, ptr nonnull align 8 %i.il, i64 %i.io, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ik) ]
  %.pre.i39.i.i = load ptr, ptr %i.aa, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_6maglev9ValueNodeEE19PrepareForInsertionEPKS4_mPm.exit.thread.i.i

_ZN2v88internal10ZoneVectorIPNS0_6maglev9ValueNodeEE19PrepareForInsertionEPKS4_mPm.exit.thread.i.i: ; preds = %bb.am, %_ZN2v88internal4Zone13AllocateArrayIPNS0_6maglev9ValueNodeEA_S5_EEPT_m.exit.i.i.i
  %i.jp = phi ptr [ %.pre.i39.i.i, %bb.am ], [ %i.jl, %_ZN2v88internal4Zone13AllocateArrayIPNS0_6maglev9ValueNodeEA_S5_EEPT_m.exit.i.i.i ] ; 2 uses
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %i.ja
  store ptr %i.jq, ptr %i.gh, align 8
  br label %._crit_edge.i.i.i.i

_ZN2v88internal10ZoneVectorIPNS0_6maglev9ValueNodeEE19PrepareForInsertionEPKS4_mPm.exit.i.i: ; preds = %bb.ah
  %i.jr = getelementptr inbounds nuw i8, ptr %i.ik, i64 %i.fx
  store ptr %i.jr, ptr %i.ac, align 8
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZN2v88internal10ZoneVectorIPNS0_6maglev9ValueNodeEE19PrepareForInsertionEPKS4_mPm.exit.i.i, %_ZN2v88internal10ZoneVectorIPNS0_6maglev9ValueNodeEE19PrepareForInsertionEPKS4_mPm.exit.thread.i.i
  %.pn.i.i = phi ptr [ %i.il, %_ZN2v88internal10ZoneVectorIPNS0_6maglev9ValueNodeEE19PrepareForInsertionEPKS4_mPm.exit.i.i ], [ %i.jp, %_ZN2v88internal10ZoneVectorIPNS0_6maglev9ValueNodeEE19PrepareForInsertionEPKS4_mPm.exit.thread.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 %i.io ; 4 uses
  %i.js = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 %i.fx
  %.pre20.i.i.i.i = load ptr, ptr %i.hh, align 8  ; 2 uses
  %7 = ptrtoint ptr %.pn.i.i to i64               ; 2 uses
  %i.jt = add i64 %7, %i.im                       ; 2 uses
  %i.ju = add i64 %i.jt, %i.fv
  %i.jv = add i64 %i.in, %i.fw
  %i.jw = sub i64 %i.ju, %i.jv
  %8 = sub i64 %i.jt, %i.in
  %i.jx = add i64 %8, 8
  %9 = call i64 @llvm.umax.i64(i64 %i.jw, i64 %i.jx)
  %10 = add i64 %9, %i.in
  %i.jy = add i64 %7, %i.im
  %11 = xor i64 %i.jy, -1
  %12 = add i64 %10, %11                          ; 2 uses
  %i.jz = lshr i64 %12, 3
  %i.ka = add nuw nsw i64 %i.jz, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %12, 24
  br i1 %min.iters.check, label %.lr.ph18.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %._crit_edge.i.i.i.i
  %n.vec = and i64 %i.ka, 4611686018427387900     ; 3 uses
  %i.kb = shl i64 %n.vec, 3
  %i.kc = getelementptr i8, ptr %.0.lcssa.i.i.i.i, i64 %i.kb
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %.pre20.i.i.i.i, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.kd = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %.0.lcssa.i.i.i.i, i64 %i.kd ; 2 uses
  %i.ke = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %broadcast.splat, ptr %next.gep, align 8
  store <2 x ptr> %broadcast.splat, ptr %i.ke, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.kf = icmp eq i64 %index.next, %n.vec
  br i1 %i.kf, label %middle.block, label %vector.body, !llvm.loop !42

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ka, %n.vec
  br i1 %cmp.n, label %_ZN2v88internal10ZoneVectorIPNS0_6maglev9ValueNodeEE6insertEPKS4_mRS6_.exit.i.i.i, label %.lr.ph18.i.i.i.i.preheader

.lr.ph18.i.i.i.i.preheader:                       ; preds = %._crit_edge.i.i.i.i, %middle.block
  %.116.i.i.i.i.ph = phi ptr [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.kc, %middle.block ]
  br label %.lr.ph18.i.i.i.i

.lr.ph18.i.i.i.i:                                 ; preds = %.lr.ph18.i.i.i.i.preheader, %.lr.ph18.i.i.i.i
  %.116.i.i.i.i = phi ptr [ %i.kg, %.lr.ph18.i.i.i.i ], [ %.116.i.i.i.i.ph, %.lr.ph18.i.i.i.i.preheader ] ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.116.i.i.i.i, i64 8 ; 2 uses
  store ptr %.pre20.i.i.i.i, ptr %.116.i.i.i.i, align 8
  %i.kh = icmp ult ptr %i.kg, %i.js
  br i1 %i.kh, label %.lr.ph18.i.i.i.i, label %_ZN2v88internal10ZoneVectorIPNS0_6maglev9ValueNodeEE6insertEPKS4_mRS6_.exit.i.i.i, !llvm.loop !45

_ZN2v88internal10ZoneVectorIPNS0_6maglev9ValueNodeEE6insertEPKS4_mRS6_.exit.i.i.i: ; preds = %.lr.ph18.i.i.i.i, %middle.block
  %.pre.i.i.i = load i32, ptr %i.hn, align 8
  br label %bb.an

bb.an:                                            ; preds = %_ZN2v88internal10ZoneVectorIPNS0_6maglev9ValueNodeEE6insertEPKS4_mRS6_.exit.i.i.i, %bb.ab
  %i.ki = phi i32 [ %.pre.i.i.i, %_ZN2v88internal10ZoneVectorIPNS0_6maglev9ValueNodeEE6insertEPKS4_mRS6_.exit.i.i.i ], [ %i.ho, %bb.ab ]
  %i.kj = load ptr, ptr %i.hi, align 8
  %i.kk = add i32 %i.ki, %i.gx
  %i.kl = zext i32 %i.kk to i64
  %i.km = load ptr, ptr %i.aa, align 8
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.km, i64 %i.kl
  store ptr %i.kj, ptr %i.kn, align 8
  store i32 %i.gx, ptr %i.hj, align 4
  br label %_ZN2v88internal8compiler10turboshaft13SnapshotTableIPNS0_6maglev9ValueNodeENS2_9NoKeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS6_S7_EERKS6_jj.exit.i.i

_ZN2v88internal8compiler10turboshaft13SnapshotTableIPNS0_6maglev9ValueNodeENS2_9NoKeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS6_S7_EERKS6_jj.exit.i.i: ; preds = %bb.an, %.lr.ph.i.i
  %i.ko = icmp eq ptr %i.hg, %i.hb
  br i1 %i.ko, label %.loopexit18.i.i, label %.lr.ph.i.i

bb.ao:                                            ; preds = %_ZN2v88internal8compiler10turboshaft13SnapshotTableIPNS0_6maglev9ValueNodeENS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIS6_S7_EES6_.exit.i.i, %.lr.ph28.i.i
  %.03426.i.i = phi ptr [ %i.gi, %.lr.ph28.i.i ], [ %i.oe, %_ZN2v88internal8compiler10turboshaft13SnapshotTableIPNS0_6maglev9ValueNodeENS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIS6_S7_EES6_.exit.i.i ] ; 2 uses
  %i.kp = load ptr, ptr %.03426.i.i, align 8      ; 4 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  %i.kr = load i32, ptr %i.kq, align 8
  %i.ks = zext i32 %i.kr to i64
  %i.kt = load ptr, ptr %i.aa, align 8
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.kt, i64 %i.ks ; 5 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 %i.fx
  br label %.lr.ph.i.i.i

bb.ap:                                            ; preds = %.lr.ph.i.i.i
  %i.kw = getelementptr inbounds nuw i8, ptr %.0249.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.kw, %i.kv
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ap, %bb.ao
  %.0249.i.i.i = phi ptr [ %i.kw, %bb.ap ], [ %i.ku, %bb.ao ] ; 2 uses
  %i.kx = load ptr, ptr %.0249.i.i.i, align 8
  %.not28.i.i.i = icmp eq ptr %i.kx, null
  br i1 %.not28.i.i.i, label %"_ZZN2v88internal6maglev31MaglevPhiRepresentationSelector18PreparePhiTaggingsEPNS1_10BasicBlockEPKS3_ENK3$_0clENS0_8compiler10turboshaft16SnapshotTableKeyIPNS1_9ValueNodeENS9_9NoKeyDataEEENS_4base6VectorIKSC_EE.exit.i.i", label %bb.ap

._crit_edge.i.i.i:                                ; preds = %bb.ap
  %i.ky = load ptr, ptr %i.gt, align 8            ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 4
  %i.la = load i32, ptr %i.kz, align 4            ; 2 uses
  %i.lb = load ptr, ptr %0, align 8
  %i.lc = load ptr, ptr %i.lb, align 8            ; 3 uses
  %i.ld = sext i32 %i.la to i64                   ; 3 uses
  %i.le = shl nsw i64 %i.ld, 3                    ; 2 uses
  %i.lf = add nsw i64 %i.le, 56                   ; 3 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lc, i64 24
  %i.lh = load i64, ptr %i.lg, align 8
  %i.li = getelementptr inbounds nuw i8, ptr %i.lc, i64 16 ; 3 uses
  %i.lj = load i64, ptr %i.li, align 8            ; 2 uses
  %i.lk = sub i64 %i.lh, %i.lj
  %i.ll = icmp ugt i64 %i.lf, %i.lk
  br i1 %i.ll, label %bb.aq, label %_ZN2v88internal6maglev8NodeBase3NewINS1_3PhiEJPNS1_31MergePointInterpreterFrameStateENS0_11interpreter8RegisterEEEEPT_PNS0_4ZoneEmDpOT0_.exit.i.i.i, !prof !5

bb.aq:                                            ; preds = %._crit_edge.i.i.i
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.lc, i64 noundef %i.lf) #18
  %.pre.i.i.i.i.i.i12 = load i64, ptr %i.li, align 8
  br label %_ZN2v88internal6maglev8NodeBase3NewINS1_3PhiEJPNS1_31MergePointInterpreterFrameStateENS0_11interpreter8RegisterEEEEPT_PNS0_4ZoneEmDpOT0_.exit.i.i.i

_ZN2v88internal6maglev8NodeBase3NewINS1_3PhiEJPNS1_31MergePointInterpreterFrameStateENS0_11interpreter8RegisterEEEEPT_PNS0_4ZoneEmDpOT0_.exit.i.i.i: ; preds = %bb.aq, %._crit_edge.i.i.i
  %i.lm = phi i64 [ %.pre.i.i.i.i.i.i12, %bb.aq ], [ %i.lj, %._crit_edge.i.i.i ] ; 2 uses
  %i.ln = add i64 %i.lm, %i.lf
  store i64 %i.ln, ptr %i.li, align 8
  %i.lo = add i64 %i.lm, %i.le
  %i.lp = inttoptr i64 %i.lo to ptr               ; 15 uses
  %i.lq = shl nsw i64 %i.ld, 16
  %i.lr = or disjoint i64 %i.lq, 142
  store ptr null, ptr %i.lp, align 8
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lp, i64 8
  store i64 %i.lr, ptr %i.ls, align 8
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lp, i64 16 ; 3 uses
  store i32 0, ptr %i.lt, align 8
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lp, i64 20
  store i32 2147483647, ptr %i.lu, align 4
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lp, i64 24
  store i8 0, ptr %i.lv, align 8
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lp, i64 25
  store i8 0, ptr %i.lw, align 1
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lp, i64 32 ; 2 uses
  store ptr null, ptr %i.lx, align 8
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lp, i64 40
  store ptr %i.ky, ptr %i.ly, align 8
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lp, i64 48
  store i32 262143, ptr %i.lz, align 8
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lp, i64 52
  store i32 262143, ptr %i.ma, align 4
  %i.mb = getelementptr inbounds i8, ptr %i.lp, i64 -8 ; 4 uses
  br i1 %i.gu, label %.epil.preheader, label %_ZN2v88internal6maglev8NodeBase3NewINS1_3PhiEJPNS1_31MergePointInterpreterFrameStateENS0_11interpreter8RegisterEEEEPT_PNS0_4ZoneEmDpOT0_.exit.i.i.i.new

._crit_edge12.i.i.i.unr-lcssa:                    ; preds = %_ZN2v88internal6maglev8NodeBase3NewINS1_3PhiEJPNS1_31MergePointInterpreterFrameStateENS0_11interpreter8RegisterEEEEPT_PNS0_4ZoneEmDpOT0_.exit.i.i.i.new
  br i1 %lcmp.mod.not, label %._crit_edge12.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge12.i.i.i.unr-lcssa, %_ZN2v88internal6maglev8NodeBase3NewINS1_3PhiEJPNS1_31MergePointInterpreterFrameStateENS0_11interpreter8RegisterEEEEPT_PNS0_4ZoneEmDpOT0_.exit.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %_ZN2v88internal6maglev8NodeBase3NewINS1_3PhiEJPNS1_31MergePointInterpreterFrameStateENS0_11interpreter8RegisterEEEEPT_PNS0_4ZoneEmDpOT0_.exit.i.i.i ], [ %indvars.iv.next.i.i.i.1, %._crit_edge12.i.i.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod77)
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %indvars.iv.i.i.i.epil.init
  %i.md = load ptr, ptr %i.mc, align 8            ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 16 ; 2 uses
  %i.mf = load i32, ptr %i.me, align 8
  %i.mg = add nsw i32 %i.mf, 1
  store i32 %i.mg, ptr %i.me, align 8
  %i.mh = sub nsw i64 0, %indvars.iv.i.i.i.epil.init
  %i.mi = getelementptr inbounds [8 x i8], ptr %i.mb, i64 %i.mh
  store ptr %i.md, ptr %i.mi, align 8
  br label %._crit_edge12.i.i.i

._crit_edge12.i.i.i:                              ; preds = %._crit_edge12.i.i.i.unr-lcssa, %.epil.preheader
  %.not29.i.i.i = icmp eq i64 %i.fy, %i.ld
  br i1 %.not29.i.i.i, label %bb.as, label %bb.ar

_ZN2v88internal6maglev8NodeBase3NewINS1_3PhiEJPNS1_31MergePointInterpreterFrameStateENS0_11interpreter8RegisterEEEEPT_PNS0_4ZoneEmDpOT0_.exit.i.i.i.new: ; preds = %_ZN2v88internal6maglev8NodeBase3NewINS1_3PhiEJPNS1_31MergePointInterpreterFrameStateENS0_11interpreter8RegisterEEEEPT_PNS0_4ZoneEmDpOT0_.exit.i.i.i, %_ZN2v88internal6maglev8NodeBase3NewINS1_3PhiEJPNS1_31MergePointInterpreterFrameStateENS0_11interpreter8RegisterEEEEPT_PNS0_4ZoneEmDpOT0_.exit.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.1, %_ZN2v88internal6maglev8NodeBase3NewINS1_3PhiEJPNS1_31MergePointInterpreterFrameStateENS0_11interpreter8RegisterEEEEPT_PNS0_4ZoneEmDpOT0_.exit.i.i.i.new ], [ 0, %_ZN2v88internal6maglev8NodeBase3NewINS1_3PhiEJPNS1_31MergePointInterpreterFrameStateENS0_11interpreter8RegisterEEEEPT_PNS0_4ZoneEmDpOT0_.exit.i.i.i ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %_ZN2v88internal6maglev8NodeBase3NewINS1_3PhiEJPNS1_31MergePointInterpreterFrameStateENS0_11interpreter8RegisterEEEEPT_PNS0_4ZoneEmDpOT0_.exit.i.i.i.new ], [ 0, %_ZN2v88internal6maglev8NodeBase3NewINS1_3PhiEJPNS1_31MergePointInterpreterFrameStateENS0_11interpreter8RegisterEEEEPT_PNS0_4ZoneEmDpOT0_.exit.i.i.i ]
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %indvars.iv.i.i.i
  %i.mk = load ptr, ptr %i.mj, align 8            ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 16 ; 2 uses
  %i.mm = load i32, ptr %i.ml, align 8
  %i.mn = add nsw i32 %i.mm, 1
  store i32 %i.mn, ptr %i.ml, align 8
  %i.mo = sub nsw i64 0, %indvars.iv.i.i.i
  %i.mp = getelementptr inbounds [8 x i8], ptr %i.mb, i64 %i.mo
  store ptr %i.mk, ptr %i.mp, align 8
  %i.mq = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %indvars.iv.i.i.i
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 8
  %i.ms = load ptr, ptr %i.mr, align 8            ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 16 ; 2 uses
  %i.mu = load i32, ptr %i.mt, align 8
  %i.mv = add nsw i32 %i.mu, 1
  store i32 %i.mv, ptr %i.mt, align 8
  %i.mw = xor i64 %indvars.iv.i.i.i, -1
  %i.mx = getelementptr inbounds [8 x i8], ptr %i.mb, i64 %i.mw
  store ptr %i.ms, ptr %i.mx, align 8
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge12.i.i.i.unr-lcssa, label %_ZN2v88internal6maglev8NodeBase3NewINS1_3PhiEJPNS1_31MergePointInterpreterFrameStateENS0_11interpreter8RegisterEEEEPT_PNS0_4ZoneEmDpOT0_.exit.i.i.i.new, !llvm.loop !46

bb.ar:                                            ; preds = %._crit_edge12.i.i.i
  %i.my = add nsw i32 %i.la, -1
  %i.mz = load i32, ptr %i.lt, align 8
  %i.na = add nsw i32 %i.mz, 1
  store i32 %i.na, ptr %i.lt, align 8
  %i.nb = sext i32 %i.my to i64
  %i.nc = sub nsw i64 0, %i.nb
  %i.nd = getelementptr inbounds [8 x i8], ptr %i.mb, i64 %i.nc
  store ptr %i.lp, ptr %i.nd, align 8
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %._crit_edge12.i.i.i
  %i.ne = load ptr, ptr %i.gp, align 8
  %i.nf = load ptr, ptr %i.ne, align 8
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 104
  %i.nh = load ptr, ptr %i.ng, align 8            ; 3 uses
  %.not7.i.i.i = icmp eq ptr %i.nh, null
  br i1 %.not7.i.i.i, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ni = load ptr, ptr %i.gq, align 8
  %.sroa.01.0.copyload.i.i.i.i.i = load i32, ptr %i.gr, align 8
  %.sroa.0.0.copyload.i.i30.i.i.i = load i64, ptr %i.gs, align 8
end_hunk_0
