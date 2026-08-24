Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/cord?download=true
inline.NumInlined: 2123
inline.NumDeleted: 685
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4absl4Cord9InlineRep11AppendArrayESt17basic_string_viewIcSt11char_traitsIcEENS_13cord_internal18CordzUpdateTracker16MethodIdentifierE:bb.a
  br i1 %i.ac, label %_ZN4absl13cord_internal7CordRep3crcEv.exit12.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @__assert_fail(ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.81, i32 noundef 90, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal7CordRep3crcEv) #20
  unreachable

_ZN4absl13cord_internal7CordRep3crcEv.exit12.i:   ; preds = %bb.l
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  tail call void @_ZN4absl12crc_internal12CrcCordStateD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ad) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 32) #23
  br label %_ZN4absl13cord_internal13RemoveCrcNodeEPNS0_7CordRepE.exit

bb.n:                                             ; preds = %_ZN4absl13cord_internal7CordRep3crcEv.exit.i37
  %.not.i.i38 = icmp eq ptr %i.x, null
  br i1 %.not.i.i38, label %bb.o, label %_ZN4absl13cord_internal7CordRep3RefEPS1_.exit.i

bb.o:                                             ; preds = %bb.n
  tail call void @__assert_fail(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.68, i32 noundef 911, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal7CordRep3RefEPS1_) #20
  unreachable

_ZN4absl13cord_internal7CordRep3RefEPS1_.exit.i:  ; preds = %bb.n
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.af = atomicrmw add ptr %i.ae, i32 2 monotonic, align 4 ; 0 uses
  tail call void @_ZN4absl13cord_internal7CordRep5UnrefEPS1_(ptr noundef nonnull %i.e)
  br label %_ZN4absl13cord_internal13RemoveCrcNodeEPNS0_7CordRepE.exit

_ZN4absl13cord_internal13RemoveCrcNodeEPNS0_7CordRepE.exit: ; preds = %_ZN4absl13cord_internal16CordzUpdateScopeC2EPNS0_9CordzInfoENS0_18CordzUpdateTracker16MethodIdentifierE.exit, %_ZN4absl13cord_internal7CordRep3crcEv.exit12.i, %_ZN4absl13cord_internal7CordRep3RefEPS1_.exit.i
  %.0.i36 = phi ptr [ %i.x, %_ZN4absl13cord_internal7CordRep3RefEPS1_.exit.i ], [ %i.e, %_ZN4absl13cord_internal16CordzUpdateScopeC2EPNS0_9CordzInfoENS0_18CordzUpdateTracker16MethodIdentifierE.exit ], [ %i.x, %_ZN4absl13cord_internal7CordRep3crcEv.exit12.i ] ; 10 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i36, i64 12 ; 4 uses
  %i.ah = load i8, ptr %i.ag, align 4             ; 2 uses
  %i.ai = icmp eq i8 %i.ah, 3
  br i1 %i.ai, label %bb.p, label %bb.t

bb.p:                                             ; preds = %_ZN4absl13cord_internal13RemoveCrcNodeEPNS0_7CordRepE.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i36, i64 8
  %i.ak = load atomic i32, ptr %i.aj acquire, align 4
  %i.al = icmp eq i32 %i.ak, 2
  br i1 %i.al, label %bb.q, label %thread-pre-split.i

bb.q:                                             ; preds = %bb.p
  %i.am = load i8, ptr %i.ag, align 4
  %i.an = icmp eq i8 %i.am, 3
  br i1 %i.an, label %_ZN4absl13cord_internal7CordRep5btreeEv.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @__assert_fail(ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.83, i32 noundef 599, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal7CordRep5btreeEv) #20
  unreachable

_ZN4absl13cord_internal7CordRep5btreeEv.exit.i:   ; preds = %bb.q
  %i.ao = tail call { ptr, i64 } @_ZN4absl13cord_internal12CordRepBtree15GetAppendBufferEm(ptr noundef nonnull align 8 dereferenceable(64) %.0.i36, i64 noundef %1) ; 2 uses
  %i.ap = extractvalue { ptr, i64 } %i.ao, 1      ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %thread-pre-split.i, label %bb.s

bb.s:                                             ; preds = %_ZN4absl13cord_internal7CordRep5btreeEv.exit.i
  %i.ar = extractvalue { ptr, i64 } %i.ao, 0
  br label %_ZN4abslL19PrepareAppendRegionEPNS_13cord_internal7CordRepEPPcPmm.exit

thread-pre-split.i:                               ; preds = %_ZN4absl13cord_internal7CordRep5btreeEv.exit.i, %bb.p
  %.pr.i = load i8, ptr %i.ag, align 4
  br label %bb.t

bb.t:                                             ; preds = %thread-pre-split.i, %_ZN4absl13cord_internal13RemoveCrcNodeEPNS0_7CordRepE.exit
  %i.as = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.ah, %_ZN4absl13cord_internal13RemoveCrcNodeEPNS0_7CordRepE.exit ]
  %i.at = icmp ugt i8 %i.as, 5
  br i1 %i.at, label %bb.u, label %_ZN4abslL19PrepareAppendRegionEPNS_13cord_internal7CordRepEPPcPmm.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.au = getelementptr inbounds nuw i8, ptr %.0.i36, i64 8
  %i.av = load atomic i32, ptr %i.au acquire, align 4
  %i.aw = icmp eq i32 %i.av, 2
  br i1 %i.aw, label %bb.v, label %_ZN4abslL19PrepareAppendRegionEPNS_13cord_internal7CordRepEPPcPmm.exit.thread

bb.v:                                             ; preds = %bb.u
  %i.ax = load i64, ptr %.0.i36, align 8          ; 4 uses
  %i.ay = load i8, ptr %i.ag, align 4             ; 4 uses
  %.off.i.i = add i8 %i.ay, -6
  %switch.i.i = icmp ult i8 %.off.i.i, -13
  br i1 %switch.i.i, label %_ZN4absl13cord_internal7CordRep4flatEv.exit.i, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.v
  tail call void @__assert_fail(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.78, i32 noundef 182, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal7CordRep4flatEv) #20
  unreachable

_ZN4absl13cord_internal7CordRep4flatEv.exit.i:    ; preds = %bb.v
  %i.az = zext i8 %i.ay to i32
  %i.ba = icmp ult i8 %i.ay, 67                   ; 2 uses
  %i.bb = icmp ult i8 %i.ay, -69                  ; 2 uses
  %..i.i.i.i = select i1 %i.bb, i32 6, i32 12
  %.sink6.i.i.i.i = select i1 %i.ba, i32 3, i32 %..i.i.i.i
  %i.bc = shl nuw nsw i32 %i.az, %.sink6.i.i.i.i
  %i.bd = select i1 %i.bb, i32 -3725, i32 -753677
  %i.be = select i1 %i.ba, i32 -29, i32 %i.bd
  %narrow.i.i.i = add nsw i32 %i.bc, %i.be
  %i.bf = sext i32 %narrow.i.i.i to i64           ; 2 uses
  %.not.i39 = icmp eq i64 %i.ax, %i.bf
  br i1 %.not.i39, label %_ZN4abslL19PrepareAppendRegionEPNS_13cord_internal7CordRepEPPcPmm.exit.thread, label %_ZN4absl13cord_internal7CordRep4flatEv.exit34.i

_ZN4absl13cord_internal7CordRep4flatEv.exit34.i:  ; preds = %_ZN4absl13cord_internal7CordRep4flatEv.exit.i
  %i.bg = sub i64 %i.bf, %i.ax
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %i.bg) ; 2 uses
  %i.bh = add i64 %.sroa.speculated.i, %i.ax
  store i64 %i.bh, ptr %.0.i36, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i36, i64 13
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.ax
  br label %_ZN4abslL19PrepareAppendRegionEPNS_13cord_internal7CordRepEPPcPmm.exit

_ZN4abslL19PrepareAppendRegionEPNS_13cord_internal7CordRepEPPcPmm.exit: ; preds = %_ZN4absl13cord_internal7CordRep4flatEv.exit34.i, %bb.s
  %storemerge41.i = phi ptr [ %i.ar, %bb.s ], [ %i.bj, %_ZN4absl13cord_internal7CordRep4flatEv.exit34.i ]
  %storemerge.i = phi i64 [ %i.ap, %bb.s ], [ %.sroa.speculated.i, %_ZN4absl13cord_internal7CordRep4flatEv.exit34.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %storemerge41.i, ptr align 1 %2, i64 %storemerge.i, i1 false)
  br label %_ZN4abslL19PrepareAppendRegionEPNS_13cord_internal7CordRepEPPcPmm.exit.thread

.critedge:                                        ; preds = %_ZN4absl4Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit
  br i1 %i.o, label %bb.w, label %_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit, !prof !17

bb.w:                                             ; preds = %.critedge
  tail call void @__assert_fail(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.68, i32 noundef 758, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZNK4absl13cord_internal10InlineData3Rep11inline_sizeEvENKUlvE_clEv) #20
  unreachable

_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit:     ; preds = %.critedge.thread, %.critedge
  %i.bk = phi i8 [ 0, %.critedge.thread ], [ %i.b, %.critedge ]
  %i.bl = sext i8 %i.bk to i64
  %i.bm = lshr exact i64 %i.bl, 1                 ; 7 uses
  %i.bn = sub nsw i64 15, %i.bm
  %.not32 = icmp ugt i64 %1, %i.bn
  %i.bo = add i64 %i.bm, %1                       ; 4 uses
  br i1 %.not32, label %bb.z, label %bb.x

bb.x:                                             ; preds = %_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit
  %i.bp = icmp ult i64 %i.bo, 16
  br i1 %i.bp, label %bb.aa, label %bb.y, !prof !5

bb.y:                                             ; preds = %bb.x
  tail call void @__assert_fail(ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.68, i32 noundef 763, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZN4absl13cord_internal10InlineData3Rep15set_inline_sizeEmENKUlvE_clEv) #20
  unreachable

bb.z:                                             ; preds = %_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit
  %i.bq = icmp ult i64 %i.bo, 20
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.bo, i64 4083)
  %i.br = add nuw nsw i64 %spec.store.select.i.i, 13
  %.0.i.i = select i1 %i.bq, i64 32, i64 %i.br    ; 2 uses
  %i.bs = icmp samesign ult i64 %.0.i.i, 513      ; 2 uses
  %.neg.i.i = select i1 %i.bs, i64 -8, i64 -64
  %i.bt = select i1 %i.bs, i64 8, i64 64
  %i.bu = add nsw i64 %.0.i.i, -1
  %i.bv = add nuw nsw i64 %i.bu, %i.bt
  %i.bw = and i64 %i.bv, %.neg.i.i                ; 3 uses
  %i.bx = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bw) #24 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bx, i8 0, i64 16, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store i32 2, ptr %i.by, align 8
  %i.bz = icmp samesign ult i64 %i.bw, 513        ; 2 uses
  %.sink6.i.i.i.i40 = select i1 %i.bz, i64 3, i64 6
  %.sink5.i.i.i.i = select i1 %i.bz, i64 2, i64 58
  %i.ca = lshr i64 %i.bw, %.sink6.i.i.i.i40
  %i.cb = add nuw nsw i64 %i.ca, %.sink5.i.i.i.i  ; 3 uses
  %i.cc = trunc nuw nsw i64 %i.cb to i8           ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 12
  store i8 %i.cc, ptr %i.cd, align 4
  %.off.i = add nsw i8 %i.cc, -6
  %switch.i = icmp ult i8 %.off.i, -13
  br i1 %switch.i, label %.thread96, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z
  tail call void @__assert_fail(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.78, i32 noundef 182, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal7CordRep4flatEv) #20
  unreachable

bb.aa:                                            ; preds = %bb.x
  %.tr.i.i.i = trunc nuw nsw i64 %i.bo to i8
  %i.ce = shl nuw nsw i8 %.tr.i.i.i, 1
  store i8 %i.ce, ptr %0, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.bm
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cg, ptr align 1 %2, i64 %1, i1 false)
  br label %_ZN4absl13cord_internal16CordzUpdateScopeD2Ev.exit

_ZN4abslL19PrepareAppendRegionEPNS_13cord_internal7CordRepEPPcPmm.exit.thread: ; preds = %_ZN4absl13cord_internal7CordRep4flatEv.exit.i, %bb.u, %bb.t, %_ZN4abslL19PrepareAppendRegionEPNS_13cord_internal7CordRepEPPcPmm.exit
  %.189 = phi i64 [ %storemerge.i, %_ZN4abslL19PrepareAppendRegionEPNS_13cord_internal7CordRepEPPcPmm.exit ], [ 0, %bb.t ], [ 0, %bb.u ], [ 0, %_ZN4absl13cord_internal7CordRep4flatEv.exit.i ] ; 2 uses
  %i.ch = sub i64 %1, %.189                       ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %bb.ab, label %bb.ae

.thread96:                                        ; preds = %bb.z
  %i.cj = trunc nuw nsw i64 %i.cb to i32
  %i.ck = icmp samesign ult i64 %i.cb, 67         ; 2 uses
  %.sink6.i.i.i = select i1 %i.ck, i32 3, i32 6
  %i.cl = shl nuw nsw i32 %i.cj, %.sink6.i.i.i
  %i.cm = select i1 %i.ck, i32 -29, i32 -3725
  %narrow.i.i = add nsw i32 %i.cl, %i.cm
  %i.cn = sext i32 %narrow.i.i to i64
  %i.co = sub i64 %i.cn, %i.bm
  %.sroa.speculated62 = tail call i64 @llvm.umin.i64(i64 %i.co, i64 %1) ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bx, i64 13 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cp, ptr nonnull align 1 %i.cq, i64 %i.bm, i1 false)
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.bm
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cr, ptr align 1 %2, i64 %.sroa.speculated62, i1 false)
  %i.cs = add i64 %.sroa.speculated62, %i.bm
  store i64 %i.cs, ptr %i.bx, align 8
  %i.ct = sub nuw i64 %1, %.sroa.speculated62     ; 2 uses
  %i.cu = icmp eq i64 %i.ct, 0
  br i1 %i.cu, label %.thread112, label %bb.ae

bb.ab:                                            ; preds = %_ZN4abslL19PrepareAppendRegionEPNS_13cord_internal7CordRepEPPcPmm.exit.thread
  %i.cv = load i8, ptr %0, align 8
  %i.cw = trunc i8 %i.cv to i1
  br i1 %i.cw, label %_ZN4absl13cord_internal10InlineData8set_treeEPNS0_7CordRepE.exit.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @__assert_fail(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.31, i32 noundef 1275, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl4Cord9InlineRep7SetTreeEPNS_13cord_internal7CordRepERKNS2_16CordzUpdateScopeE) #20
  unreachable

_ZN4absl13cord_internal10InlineData8set_treeEPNS0_7CordRepE.exit.i.i: ; preds = %bb.ab
  store ptr %.0.i36, ptr %i.d, align 8
  br i1 %.not.i34, label %_ZN4absl13cord_internal16CordzUpdateScopeD2Ev.exit, label %_ZN4absl4Cord9InlineRep10CommitTreeEPKNS_13cord_internal7CordRepEPS3_RKNS2_16CordzUpdateScopeENS2_18CordzUpdateTracker16MethodIdentifierE.exit.thread121.sink.split, !prof !5

.thread112:                                       ; preds = %.thread96
  store ptr %i.bx, ptr %i.d, align 8
  store i64 1, ptr %0, align 8
  %i.cx = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4absl13cord_internal17cordz_next_sampleE) ; 3 uses
  %i.cy = load i64, ptr %i.cx, align 8            ; 2 uses
  %i.cz = icmp sgt i64 %i.cy, 1
  br i1 %i.cz, label %_ZN4absl13cord_internal20cordz_should_profileEv.exit.thread.i.i, label %_ZN4absl13cord_internal20cordz_should_profileEv.exit.i.i, !prof !5

_ZN4absl13cord_internal20cordz_should_profileEv.exit.thread.i.i: ; preds = %.thread112
  %i.da = add nsw i64 %i.cy, -1
  store i64 %i.da, ptr %i.cx, align 8
  br label %_ZN4absl13cord_internal16CordzUpdateScopeD2Ev.exit

_ZN4absl13cord_internal20cordz_should_profileEv.exit.i.i: ; preds = %.thread112
  %i.db = tail call noundef i64 @_ZN4absl13cord_internal25cordz_should_profile_slowERNS0_13SamplingStateE(ptr noundef nonnull align 8 dereferenceable(16) %i.cx) #21 ; 2 uses
  %i.dc = icmp sgt i64 %i.db, 0
  br i1 %i.dc, label %bb.ad, label %_ZN4absl13cord_internal16CordzUpdateScopeD2Ev.exit, !prof !6

bb.ad:                                            ; preds = %_ZN4absl13cord_internal20cordz_should_profileEv.exit.i.i
  tail call void @_ZN4absl13cord_internal9CordzInfo9TrackCordERNS0_10InlineDataENS0_18CordzUpdateTracker16MethodIdentifierEl(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %3, i64 noundef %i.db) #21
  br label %_ZN4absl13cord_internal16CordzUpdateScopeD2Ev.exit

bb.ae:                                            ; preds = %.thread96, %_ZN4abslL19PrepareAppendRegionEPNS_13cord_internal7CordRepEPPcPmm.exit.thread
  %.not.not144 = phi i1 [ false, %.thread96 ], [ true, %_ZN4abslL19PrepareAppendRegionEPNS_13cord_internal7CordRepEPPcPmm.exit.thread ]
  %i.dd = phi i64 [ %i.ct, %.thread96 ], [ %i.ch, %_ZN4abslL19PrepareAppendRegionEPNS_13cord_internal7CordRepEPPcPmm.exit.thread ] ; 2 uses
  %.sroa.speculated62.pn = phi i64 [ %.sroa.speculated62, %.thread96 ], [ %.189, %_ZN4abslL19PrepareAppendRegionEPNS_13cord_internal7CordRepEPPcPmm.exit.thread ]
  %.1102 = phi ptr [ %i.bx, %.thread96 ], [ %.0.i36, %_ZN4abslL19PrepareAppendRegionEPNS_13cord_internal7CordRepEPPcPmm.exit.thread ]
  %.sroa.0.0101 = phi ptr [ null, %.thread96 ], [ %i.s, %_ZN4abslL19PrepareAppendRegionEPNS_13cord_internal7CordRepEPPcPmm.exit.thread ] ; 4 uses
  %i.de = tail call fastcc noundef ptr @_ZN4abslL10ForceBtreeEPNS_13cord_internal7CordRepE(ptr noundef nonnull %.1102) ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 12
  %i.dg = load i8, ptr %i.df, align 4
  %i.dh = icmp eq i8 %i.dg, 3
  br i1 %i.dh, label %_ZN4absl13cord_internal7CordRep5btreeEv.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void @__assert_fail(ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.83, i32 noundef 599, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal7CordRep5btreeEv) #20
  unreachable

_ZN4absl13cord_internal7CordRep5btreeEv.exit:     ; preds = %bb.ae
  %i.di = load i64, ptr %i.de, align 8
  %i.dj = udiv i64 %i.di, 10
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.speculated62.pn
  %i.dl = tail call i64 @llvm.usub.sat.i64(i64 %i.dj, i64 %i.dd)
  %i.dm = tail call noundef ptr @_ZN4absl13cord_internal12CordRepBtree6AppendEPS1_St17basic_string_viewIcSt11char_traitsIcEEm(ptr noundef nonnull %i.de, i64 %i.dd, ptr %i.dk, i64 noundef %i.dl) #21 ; 4 uses
  %.not.i5.i52 = icmp eq ptr %i.dm, null          ; 2 uses
  br i1 %.not.not144, label %bb.ag, label %bb.ak

bb.ag:                                            ; preds = %_ZN4absl13cord_internal7CordRep5btreeEv.exit
  br i1 %.not.i5.i52, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  tail call void @__assert_fail(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 1274, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl4Cord9InlineRep7SetTreeEPNS_13cord_internal7CordRepERKNS2_16CordzUpdateScopeE) #20
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.dn = load i8, ptr %0, align 8
  %i.do = trunc i8 %i.dn to i1
  br i1 %i.do, label %_ZN4absl13cord_internal10InlineData8set_treeEPNS0_7CordRepE.exit.i.i53, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void @__assert_fail(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.31, i32 noundef 1275, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl4Cord9InlineRep7SetTreeEPNS_13cord_internal7CordRepERKNS2_16CordzUpdateScopeE) #20
  unreachable

_ZN4absl13cord_internal10InlineData8set_treeEPNS0_7CordRepE.exit.i.i53: ; preds = %bb.ai
  store ptr %i.dm, ptr %i.d, align 8
  %.not.i.i.i54 = icmp eq ptr %.sroa.0.0101, null
  br i1 %.not.i.i.i54, label %_ZN4absl13cord_internal16CordzUpdateScopeD2Ev.exit, label %_ZN4absl4Cord9InlineRep10CommitTreeEPKNS_13cord_internal7CordRepEPS3_RKNS2_16CordzUpdateScopeENS2_18CordzUpdateTracker16MethodIdentifierE.exit.thread121.sink.split, !prof !5

bb.ak:                                            ; preds = %_ZN4absl13cord_internal7CordRep5btreeEv.exit
  br i1 %.not.i5.i52, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  tail call void @__assert_fail(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 1260, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl4Cord9InlineRep11EmplaceTreeEPNS_13cord_internal7CordRepENS2_18CordzUpdateTracker16MethodIdentifierE) #20
  unreachable

bb.am:                                            ; preds = %bb.ak
  store ptr %i.dm, ptr %i.d, align 8
  store i64 1, ptr %0, align 8
  %i.dp = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4absl13cord_internal17cordz_next_sampleE) ; 3 uses
  %i.dq = load i64, ptr %i.dp, align 8            ; 2 uses
  %i.dr = icmp sgt i64 %i.dq, 1
  br i1 %i.dr, label %_ZN4absl13cord_internal20cordz_should_profileEv.exit.thread.i.i56, label %_ZN4absl13cord_internal20cordz_should_profileEv.exit.i.i55, !prof !5

_ZN4absl13cord_internal20cordz_should_profileEv.exit.thread.i.i56: ; preds = %bb.am
  %i.ds = add nsw i64 %i.dq, -1
  store i64 %i.ds, ptr %i.dp, align 8
  br label %_ZN4absl4Cord9InlineRep10CommitTreeEPKNS_13cord_internal7CordRepEPS3_RKNS2_16CordzUpdateScopeENS2_18CordzUpdateTracker16MethodIdentifierE.exit

_ZN4absl13cord_internal20cordz_should_profileEv.exit.i.i55: ; preds = %bb.am
  %i.dt = tail call noundef i64 @_ZN4absl13cord_internal25cordz_should_profile_slowERNS0_13SamplingStateE(ptr noundef nonnull align 8 dereferenceable(16) %i.dp) #21 ; 2 uses
  %i.du = icmp sgt i64 %i.dt, 0
  br i1 %i.du, label %bb.an, label %_ZN4absl4Cord9InlineRep10CommitTreeEPKNS_13cord_internal7CordRepEPS3_RKNS2_16CordzUpdateScopeENS2_18CordzUpdateTracker16MethodIdentifierE.exit, !prof !6

bb.an:                                            ; preds = %_ZN4absl13cord_internal20cordz_should_profileEv.exit.i.i55
  tail call void @_ZN4absl13cord_internal9CordzInfo9TrackCordERNS0_10InlineDataENS0_18CordzUpdateTracker16MethodIdentifierEl(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %3, i64 noundef %i.dt) #21
  br label %_ZN4absl4Cord9InlineRep10CommitTreeEPKNS_13cord_internal7CordRepEPS3_RKNS2_16CordzUpdateScopeENS2_18CordzUpdateTracker16MethodIdentifierE.exit

_ZN4absl4Cord9InlineRep10CommitTreeEPKNS_13cord_internal7CordRepEPS3_RKNS2_16CordzUpdateScopeENS2_18CordzUpdateTracker16MethodIdentifierE.exit: ; preds = %bb.an, %_ZN4absl13cord_internal20cordz_should_profileEv.exit.i.i55, %_ZN4absl13cord_internal20cordz_should_profileEv.exit.thread.i.i56
  %.not.i58 = icmp eq ptr %.sroa.0.0101, null
  br i1 %.not.i58, label %_ZN4absl13cord_internal16CordzUpdateScopeD2Ev.exit, label %_ZN4absl4Cord9InlineRep10CommitTreeEPKNS_13cord_internal7CordRepEPS3_RKNS2_16CordzUpdateScopeENS2_18CordzUpdateTracker16MethodIdentifierE.exit.thread121, !prof !18

_ZN4absl4Cord9InlineRep10CommitTreeEPKNS_13cord_internal7CordRepEPS3_RKNS2_16CordzUpdateScopeENS2_18CordzUpdateTracker16MethodIdentifierE.exit.thread121.sink.split: ; preds = %_ZN4absl13cord_internal10InlineData8set_treeEPNS0_7CordRepE.exit.i.i53, %_ZN4absl13cord_internal10InlineData8set_treeEPNS0_7CordRepE.exit.i.i
  %.sroa.0.0101.sink152 = phi ptr [ %i.s, %_ZN4absl13cord_internal10InlineData8set_treeEPNS0_7CordRepE.exit.i.i ], [ %.sroa.0.0101, %_ZN4absl13cord_internal10InlineData8set_treeEPNS0_7CordRepE.exit.i.i53 ] ; 3 uses
  %.sink = phi ptr [ %.0.i36, %_ZN4absl13cord_internal10InlineData8set_treeEPNS0_7CordRepE.exit.i.i ], [ %i.dm, %_ZN4absl13cord_internal10InlineData8set_treeEPNS0_7CordRepE.exit.i.i53 ]
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.0.0101.sink152, i64 56
  tail call void @_ZNK4absl5Mutex10AssertHeldEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dv) #21
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.0.0101.sink152, i64 64
  store ptr %.sink, ptr %i.dw, align 8
  br label %_ZN4absl4Cord9InlineRep10CommitTreeEPKNS_13cord_internal7CordRepEPS3_RKNS2_16CordzUpdateScopeENS2_18CordzUpdateTracker16MethodIdentifierE.exit.thread121

_ZN4absl4Cord9InlineRep10CommitTreeEPKNS_13cord_internal7CordRepEPS3_RKNS2_16CordzUpdateScopeENS2_18CordzUpdateTracker16MethodIdentifierE.exit.thread121: ; preds = %_ZN4absl4Cord9InlineRep10CommitTreeEPKNS_13cord_internal7CordRepEPS3_RKNS2_16CordzUpdateScopeENS2_18CordzUpdateTracker16MethodIdentifierE.exit.thread121.sink.split, %_ZN4absl4Cord9InlineRep10CommitTreeEPKNS_13cord_internal7CordRepEPS3_RKNS2_16CordzUpdateScopeENS2_18CordzUpdateTracker16MethodIdentifierE.exit
  %.sroa.0.1124 = phi ptr [ %.sroa.0.0101, %_ZN4absl4Cord9InlineRep10CommitTreeEPKNS_13cord_internal7CordRepEPS3_RKNS2_16CordzUpdateScopeENS2_18CordzUpdateTracker16MethodIdentifierE.exit ], [ %.sroa.0.0101.sink152, %_ZN4absl4Cord9InlineRep10CommitTreeEPKNS_13cord_internal7CordRepEPS3_RKNS2_16CordzUpdateScopeENS2_18CordzUpdateTracker16MethodIdentifierE.exit.thread121.sink.split ]
  tail call void @_ZN4absl13cord_internal9CordzInfo6UnlockEv(ptr noundef nonnull align 8 dereferenceable(1344) %.sroa.0.1124) #21
  br label %_ZN4absl13cord_internal16CordzUpdateScopeD2Ev.exit

_ZN4absl13cord_internal16CordzUpdateScopeD2Ev.exit: ; preds = %_ZN4absl13cord_internal20cordz_should_profileEv.exit.i.i, %_ZN4absl13cord_internal20cordz_should_profileEv.exit.thread.i.i, %bb.ad, %_ZN4absl13cord_internal10InlineData8set_treeEPNS0_7CordRepE.exit.i.i53, %_ZN4absl13cord_internal10InlineData8set_treeEPNS0_7CordRepE.exit.i.i, %bb.aa, %_ZN4absl4Cord9InlineRep10CommitTreeEPKNS_13cord_internal7CordRepEPS3_RKNS2_16CordzUpdateScopeENS2_18CordzUpdateTracker16MethodIdentifierE.exit.thread121, %_ZN4absl4Cord9InlineRep10CommitTreeEPKNS_13cord_internal7CordRepEPS3_RKNS2_16CordzUpdateScopeENS2_18CordzUpdateTracker16MethodIdentifierE.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noundef ptr @_ZN4absl13cord_internal12CordRepBtree6AppendEPS1_St17basic_string_viewIcSt11char_traitsIcEEm(ptr noundef, i64, ptr, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4absl4Cord23GetAppendBufferSlowPathEmmm(ptr dead_on_unwind noalias writable sret(%"class.absl::CordBuffer") align 8 %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i8, ptr %1, align 8                 ; 7 uses
  %i.b = trunc i8 %i.a to i1                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 7 uses
  %.not23 = icmp ne ptr %i.d, null
  %.not.not = select i1 %i.b, i1 %.not23, i1 false
  br i1 %.not.not, label %bb.b, label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %1, align 8                ; 2 uses
  %i.f = and i64 %i.e, 1
  %.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i, label %bb.c, label %_ZNK4absl4Cord9InlineRep10cordz_infoEv.exit

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.68, i32 noundef 579, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4absl13cord_internal10InlineData10cordz_infoEv) #20
  unreachable

_ZNK4absl4Cord9InlineRep10cordz_infoEv.exit:      ; preds = %bb.b
  %i.g = add nsw i64 %i.e, -1                     ; 2 uses
  %i.h = inttoptr i64 %i.g to ptr                 ; 4 uses
  %.not.i = icmp eq i64 %i.g, 0                   ; 4 uses
  br i1 %.not.i, label %_ZN4absl13cord_internal16CordzUpdateScopeC2EPNS0_9CordzInfoENS0_18CordzUpdateTracker16MethodIdentifierE.exit, label %bb.d, !prof !5

bb.d:                                             ; preds = %_ZNK4absl4Cord9InlineRep10cordz_infoEv.exit
  tail call void @_ZN4absl13cord_internal9CordzInfo4LockENS0_18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(1344) %i.h, i32 noundef 12) #21
  br label %_ZN4absl13cord_internal16CordzUpdateScopeC2EPNS0_9CordzInfoENS0_18CordzUpdateTracker16MethodIdentifierE.exit

_ZN4absl13cord_internal16CordzUpdateScopeC2EPNS0_9CordzInfoENS0_18CordzUpdateTracker16MethodIdentifierE.exit: ; preds = %_ZNK4absl4Cord9InlineRep10cordz_infoEv.exit, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 2 uses
  %i.j = load i8, ptr %i.i, align 4               ; 2 uses
  %cond.i = icmp eq i8 %i.j, 3
  br i1 %cond.i, label %_ZN4absl13cord_internal7CordRep5btreeEv.exit.i, label %bb.e

_ZN4absl13cord_internal7CordRep5btreeEv.exit.i:   ; preds = %_ZN4absl13cord_internal16CordzUpdateScopeC2EPNS0_9CordzInfoENS0_18CordzUpdateTracker16MethodIdentifierE.exit
  %i.k = tail call { ptr, ptr } @_ZN4absl13cord_internal12CordRepBtree19ExtractAppendBufferEPS1_m(ptr noundef nonnull %i.d, i64 noundef %4) #21
  br label %_ZN4abslL19ExtractAppendBufferEPNS_13cord_internal7CordRepEm.exit

bb.e:                                             ; preds = %_ZN4absl13cord_internal16CordzUpdateScopeC2EPNS0_9CordzInfoENS0_18CordzUpdateTracker16MethodIdentifierE.exit
  %i.l = icmp ugt i8 %i.j, 5
  br i1 %i.l, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.n = load atomic i32, ptr %i.m acquire, align 4
  %i.o = icmp eq i32 %i.n, 2
  br i1 %i.o, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.p = load i8, ptr %i.i, align 4               ; 4 uses
  %.off.i.i = add i8 %i.p, -6
  %switch.i.i = icmp ult i8 %.off.i.i, -13
  br i1 %switch.i.i, label %_ZN4absl13cord_internal7CordRep4flatEv.exit.i, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.g
  tail call void @__assert_fail(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.78, i32 noundef 182, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal7CordRep4flatEv) #20
  unreachable
end_hunk_0
begin_hunk_1_@_ZN4absl4Cord12RemovePrefixEm:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store i64 22, ptr %5, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.14, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @_ZN4absl8AlphaNumC2Em(ptr noundef nonnull align 8 dereferenceable(48) %6, i64 noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  store i64 21, ptr %7, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @.str.15, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.k = load i8, ptr %0, align 8                 ; 2 uses
  %i.l = trunc i8 %i.k to i1
  br i1 %i.l, label %_ZNK4absl4Cord9InlineRep7as_treeEv.exit.i.i32, label %_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i31

_ZNK4absl4Cord9InlineRep7as_treeEv.exit.i.i32:    ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = load i64, ptr %i.n, align 8
  br label %_ZNK4absl4Cord4sizeEv.exit33

_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i31: ; preds = %bb.b
  %i.p = sext i8 %i.k to i64
  %i.q = lshr exact i64 %i.p, 1
  br label %_ZNK4absl4Cord4sizeEv.exit33

_ZNK4absl4Cord4sizeEv.exit33:                     ; preds = %_ZNK4absl4Cord9InlineRep7as_treeEv.exit.i.i32, %_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i31
  %i.r = phi i64 [ %i.o, %_ZNK4absl4Cord9InlineRep7as_treeEv.exit.i.i32 ], [ %i.q, %_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i31 ]
  call void @_ZN4absl8AlphaNumC2Em(ptr noundef nonnull align 8 dereferenceable(48) %8, i64 noundef %i.r)
  call void @_ZN4absl6StrCatB5cxx11ERKNS_8AlphaNumES2_S2_S2_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(48) %8) #21
  %i.s = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %4) ; 0 uses
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.t = load atomic ptr, ptr @_ZN4absl16raw_log_internal21internal_log_functionB5cxx11E acquire, align 8
  call void %i.t(i32 noundef 3, ptr noundef nonnull @.str.1, i32 noundef 672, ptr noundef nonnull align 8 dereferenceable(32) %2) #21, !inline_history !44
  call void @__assert_fail(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 672, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl4Cord12RemovePrefixEm) #20
  unreachable

bb.c:                                             ; preds = %_ZNK4absl4Cord4sizeEv.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8              ; 13 uses
  %i.w = icmp ne ptr %i.v, null
  %.not7.i = select i1 %i.b, i1 %i.w, i1 false
  br i1 %.not7.i, label %bb.d, label %_ZN4absl4Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit

bb.d:                                             ; preds = %bb.c
  %i.x = load i64, ptr %i.v, align 8
  %.not.i = icmp eq i64 %i.x, 0
  br i1 %.not.i, label %bb.e, label %_ZN4absl4Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit, !prof !7

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.z = load i8, ptr %i.y, align 4
  %i.aa = icmp eq i8 %i.z, 2
  br i1 %i.aa, label %_ZN4absl13cord_internal7CordRep3crcEv.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @__assert_fail(ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.31, i32 noundef 1323, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl4Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv) #20
  unreachable

_ZN4absl13cord_internal7CordRep3crcEv.exit.i:     ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN4absl13cord_internal7CordRep3crcEv.exit.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.31, i32 noundef 1324, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl4Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv) #20
  unreachable

bb.h:                                             ; preds = %_ZN4absl13cord_internal7CordRep3crcEv.exit.i
  %i.ae = tail call noundef ptr @_ZNK4absl4Cord9InlineRep10cordz_infoEv(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 2 uses
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %_ZN4absl4Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit.thread, label %bb.i, !prof !5

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN4absl13cord_internal9CordzInfo7UntrackEv(ptr noundef nonnull align 8 dereferenceable(1344) %i.ae) #21
  br label %_ZN4absl4Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit.thread

_ZN4absl4Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit.thread: ; preds = %bb.h, %bb.i
  tail call void @_ZN4absl13cord_internal7CordRep5UnrefEPS1_(ptr noundef nonnull %i.v)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.j

_ZN4absl4Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit: ; preds = %bb.c, %bb.d
  %i.af = trunc i8 %i.a to i1
  %i.ag = icmp ne ptr %i.v, null
  %.not59 = select i1 %i.af, i1 %i.ag, i1 false
  br i1 %.not59, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN4absl4Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit.thread, %_ZN4absl4Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit
  tail call void @_ZN4absl4Cord9InlineRep13remove_prefixEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1)
  br label %_ZN4absl13cord_internal16CordzUpdateScopeD2Ev.exit

bb.k:                                             ; preds = %_ZN4absl4Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit
  %i.ah = load i64, ptr %0, align 8               ; 2 uses
  %i.ai = and i64 %i.ah, 1
  %.not.i.i34 = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i34, label %bb.l, label %_ZNK4absl4Cord9InlineRep10cordz_infoEv.exit

bb.l:                                             ; preds = %bb.k
  tail call void @__assert_fail(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.68, i32 noundef 579, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4absl13cord_internal10InlineData10cordz_infoEv) #20
  unreachable

_ZNK4absl4Cord9InlineRep10cordz_infoEv.exit:      ; preds = %bb.k
  %i.aj = add nsw i64 %i.ah, -1                   ; 2 uses
  %i.ak = inttoptr i64 %i.aj to ptr               ; 4 uses
  %.not.i35 = icmp eq i64 %i.aj, 0                ; 3 uses
  br i1 %.not.i35, label %_ZN4absl13cord_internal16CordzUpdateScopeC2EPNS0_9CordzInfoENS0_18CordzUpdateTracker16MethodIdentifierE.exit, label %bb.m, !prof !5

bb.m:                                             ; preds = %_ZNK4absl4Cord9InlineRep10cordz_infoEv.exit
  tail call void @_ZN4absl13cord_internal9CordzInfo4LockENS0_18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(1344) %i.ak, i32 noundef 21) #21
  br label %_ZN4absl13cord_internal16CordzUpdateScopeC2EPNS0_9CordzInfoENS0_18CordzUpdateTracker16MethodIdentifierE.exit

_ZN4absl13cord_internal16CordzUpdateScopeC2EPNS0_9CordzInfoENS0_18CordzUpdateTracker16MethodIdentifierE.exit: ; preds = %bb.m, %_ZNK4absl4Cord9InlineRep10cordz_infoEv.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 12 ; 2 uses
  %i.am = load i8, ptr %i.al, align 4
  %i.an = icmp eq i8 %i.am, 2
  br i1 %i.an, label %_ZN4absl13cord_internal7CordRep3crcEv.exit.i38, label %_ZN4absl13cord_internal13RemoveCrcNodeEPNS0_7CordRepE.exit, !prof !7

_ZN4absl13cord_internal7CordRep3crcEv.exit.i38:   ; preds = %_ZN4absl13cord_internal16CordzUpdateScopeC2EPNS0_9CordzInfoENS0_18CordzUpdateTracker16MethodIdentifierE.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8            ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ar = load atomic i32, ptr %i.aq acquire, align 8
  %i.as = icmp eq i32 %i.ar, 2
  br i1 %i.as, label %bb.n, label %bb.p

bb.n:                                             ; preds = %_ZN4absl13cord_internal7CordRep3crcEv.exit.i38
  %i.at = load i8, ptr %i.al, align 4
  %i.au = icmp eq i8 %i.at, 2
  br i1 %i.au, label %_ZN4absl13cord_internal7CordRep3crcEv.exit12.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @__assert_fail(ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.81, i32 noundef 90, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal7CordRep3crcEv) #20
  unreachable

_ZN4absl13cord_internal7CordRep3crcEv.exit12.i:   ; preds = %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  tail call void @_ZN4absl12crc_internal12CrcCordStateD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.av) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef 32) #23
  br label %_ZN4absl13cord_internal13RemoveCrcNodeEPNS0_7CordRepE.exit

bb.p:                                             ; preds = %_ZN4absl13cord_internal7CordRep3crcEv.exit.i38
  %.not.i.i39 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i39, label %bb.q, label %_ZN4absl13cord_internal7CordRep3RefEPS1_.exit.i

bb.q:                                             ; preds = %bb.p
  tail call void @__assert_fail(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.68, i32 noundef 911, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal7CordRep3RefEPS1_) #20
  unreachable

_ZN4absl13cord_internal7CordRep3RefEPS1_.exit.i:  ; preds = %bb.p
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ax = atomicrmw add ptr %i.aw, i32 2 monotonic, align 4 ; 0 uses
  tail call void @_ZN4absl13cord_internal7CordRep5UnrefEPS1_(ptr noundef nonnull %i.v)
  br label %_ZN4absl13cord_internal13RemoveCrcNodeEPNS0_7CordRepE.exit

_ZN4absl13cord_internal13RemoveCrcNodeEPNS0_7CordRepE.exit: ; preds = %_ZN4absl13cord_internal16CordzUpdateScopeC2EPNS0_9CordzInfoENS0_18CordzUpdateTracker16MethodIdentifierE.exit, %_ZN4absl13cord_internal7CordRep3crcEv.exit12.i, %_ZN4absl13cord_internal7CordRep3RefEPS1_.exit.i
  %.0.i37 = phi ptr [ %i.ap, %_ZN4absl13cord_internal7CordRep3RefEPS1_.exit.i ], [ %i.v, %_ZN4absl13cord_internal16CordzUpdateScopeC2EPNS0_9CordzInfoENS0_18CordzUpdateTracker16MethodIdentifierE.exit ], [ %i.ap, %_ZN4absl13cord_internal7CordRep3crcEv.exit12.i ] ; 20 uses
  %i.ay = load i64, ptr %.0.i37, align 8          ; 3 uses
  %.not30 = icmp ult i64 %1, %i.ay
  br i1 %.not30, label %bb.u, label %bb.r

bb.r:                                             ; preds = %_ZN4absl13cord_internal13RemoveCrcNodeEPNS0_7CordRepE.exit
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i37, i64 8
  %i.ba = atomicrmw sub ptr %i.az, i32 2 acq_rel, align 4 ; 3 uses
  %i.bb = icmp sgt i32 %i.ba, 0
  %i.bc = trunc i32 %i.ba to i1
  %i.bd = or i1 %i.bb, %i.bc
  br i1 %i.bd, label %_ZN4absl13cord_internal16RefcountAndFlags27DecrementExpectHighRefcountEv.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @__assert_fail(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.68, i32 noundef 171, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal16RefcountAndFlags27DecrementExpectHighRefcountEv) #20
  unreachable

_ZN4absl13cord_internal16RefcountAndFlags27DecrementExpectHighRefcountEv.exit.i: ; preds = %bb.r
  %.not3.i = icmp eq i32 %i.ba, 2
  br i1 %.not3.i, label %bb.t, label %_ZN4absl13cord_internal7CordRep5UnrefEPS1_.exit, !prof !7

bb.t:                                             ; preds = %_ZN4absl13cord_internal16RefcountAndFlags27DecrementExpectHighRefcountEv.exit.i
  tail call void @_ZN4absl13cord_internal7CordRep7DestroyEPS1_(ptr noundef nonnull %.0.i37) #21
  br label %_ZN4absl13cord_internal7CordRep5UnrefEPS1_.exit

bb.u:                                             ; preds = %_ZN4absl13cord_internal13RemoveCrcNodeEPNS0_7CordRepE.exit
  %i.be = getelementptr inbounds nuw i8, ptr %.0.i37, i64 12 ; 3 uses
  %i.bf = load i8, ptr %i.be, align 4
  switch i8 %i.bf, label %bb.ab [
    i8 3, label %bb.v
    i8 1, label %bb.y
  ]

bb.v:                                             ; preds = %bb.u
  %i.bg = sub nuw i64 %i.ay, %1
  %i.bh = tail call noundef ptr @_ZN4absl13cord_internal12CordRepBtree7SubTreeEmm(ptr noundef nonnull align 8 dereferenceable(64) %.0.i37, i64 noundef %1, i64 noundef %i.bg) #21 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i37, i64 8
  %i.bj = atomicrmw sub ptr %i.bi, i32 2 acq_rel, align 4 ; 3 uses
  %i.bk = icmp sgt i32 %i.bj, 0
  %i.bl = trunc i32 %i.bj to i1
  %i.bm = or i1 %i.bk, %i.bl
  br i1 %i.bm, label %_ZN4absl13cord_internal16RefcountAndFlags27DecrementExpectHighRefcountEv.exit.i42, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @__assert_fail(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.68, i32 noundef 171, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal16RefcountAndFlags27DecrementExpectHighRefcountEv) #20
  unreachable

_ZN4absl13cord_internal16RefcountAndFlags27DecrementExpectHighRefcountEv.exit.i42: ; preds = %bb.v
  %.not3.i43 = icmp eq i32 %i.bj, 2
  br i1 %.not3.i43, label %bb.x, label %_ZN4absl13cord_internal7CordRep5UnrefEPS1_.exit, !prof !7

bb.x:                                             ; preds = %_ZN4absl13cord_internal16RefcountAndFlags27DecrementExpectHighRefcountEv.exit.i42
  tail call void @_ZN4absl13cord_internal7CordRep7DestroyEPS1_(ptr noundef nonnull %.0.i37) #21
  br label %_ZN4absl13cord_internal7CordRep5UnrefEPS1_.exit

bb.y:                                             ; preds = %bb.u
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.i37, i64 8
  %i.bo = load atomic i32, ptr %i.bn acquire, align 8
  %i.bp = icmp eq i32 %i.bo, 2
  br i1 %i.bp, label %bb.z, label %._crit_edge

._crit_edge:                                      ; preds = %bb.y
  %.pre = load i64, ptr %.0.i37, align 8
  br label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.bq = load i8, ptr %i.be, align 4
  %i.br = icmp eq i8 %i.bq, 1
  br i1 %i.br, label %_ZN4absl13cord_internal7CordRep9substringEv.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @__assert_fail(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.68, i32 noundef 889, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal7CordRep9substringEv) #20
  unreachable

_ZN4absl13cord_internal7CordRep9substringEv.exit: ; preds = %bb.z
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.i37, i64 16 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = add i64 %i.bt, %1
  store i64 %i.bu, ptr %i.bs, align 8
  %i.bv = load i64, ptr %.0.i37, align 8
  %i.bw = sub i64 %i.bv, %1
  store i64 %i.bw, ptr %.0.i37, align 8
  br label %_ZN4absl13cord_internal7CordRep5UnrefEPS1_.exit

bb.ab:                                            ; preds = %._crit_edge, %bb.u
  %i.bx = phi i64 [ %.pre, %._crit_edge ], [ %i.ay, %bb.u ] ; 3 uses
  %i.by = sub i64 %i.bx, %1
  %.not28.i = icmp eq i64 %i.bx, %1
  br i1 %.not28.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  tail call void @__assert_fail(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.68, i32 noundef 418, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal16CordRepSubstring9SubstringEPNS0_7CordRepEmm) #20
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.bz = icmp ult i64 %1, %i.bx
  br i1 %i.bz, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @__assert_fail(ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.68, i32 noundef 419, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal16CordRepSubstring9SubstringEPNS0_7CordRepEmm) #20
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.ca = icmp eq i64 %1, 0
  br i1 %i.ca, label %_ZN4absl13cord_internal7CordRep3RefEPS1_.exit.i47, label %bb.ag

_ZN4absl13cord_internal7CordRep3RefEPS1_.exit.i47: ; preds = %bb.af
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.i37, i64 8
  %i.cc = atomicrmw add ptr %i.cb, i32 2 monotonic, align 4 ; 0 uses
  br label %_ZN4absl13cord_internal16CordRepSubstring9SubstringEPNS0_7CordRepEmm.exit

bb.ag:                                            ; preds = %bb.af
  %i.cd = load i8, ptr %i.be, align 4
  %i.ce = icmp eq i8 %i.cd, 1
  br i1 %i.ce, label %_ZN4absl13cord_internal7CordRep9substringEv.exit30.i, label %bb.ah

_ZN4absl13cord_internal7CordRep9substringEv.exit30.i: ; preds = %bb.ag
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.i37, i64 16
  %i.cg = load i64, ptr %i.cf, align 8
  %i.ch = add i64 %i.cg, %1
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.i37, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8
  br label %bb.ah

bb.ah:                                            ; preds = %_ZN4absl13cord_internal7CordRep9substringEv.exit30.i, %bb.ag
  %.023.i = phi i64 [ %i.ch, %_ZN4absl13cord_internal7CordRep9substringEv.exit30.i ], [ %1, %bb.ag ]
  %.022.i = phi ptr [ %i.cj, %_ZN4absl13cord_internal7CordRep9substringEv.exit30.i ], [ %.0.i37, %bb.ag ] ; 3 uses
  %i.ck = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #22 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.ck, i8 0, i64 16, i1 false)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store i32 2, ptr %i.cl, align 8
  store i64 %i.by, ptr %i.ck, align 16
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 12
  store i8 1, ptr %i.cm, align 4
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store i64 %.023.i, ptr %i.cn, align 16
  %.not.i31.i = icmp eq ptr %.022.i, null
  br i1 %.not.i31.i, label %bb.ai, label %_ZN4absl13cord_internal7CordRep3RefEPS1_.exit32.i

bb.ai:                                            ; preds = %bb.ah
  tail call void @__assert_fail(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.68, i32 noundef 911, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal7CordRep3RefEPS1_) #20
  unreachable

_ZN4absl13cord_internal7CordRep3RefEPS1_.exit32.i: ; preds = %bb.ah
  %i.co = getelementptr inbounds nuw i8, ptr %.022.i, i64 8
  %i.cp = atomicrmw add ptr %i.co, i32 2 monotonic, align 4 ; 0 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  store ptr %.022.i, ptr %i.cq, align 8
  br label %_ZN4absl13cord_internal16CordRepSubstring9SubstringEPNS0_7CordRepEmm.exit

_ZN4absl13cord_internal16CordRepSubstring9SubstringEPNS0_7CordRepEmm.exit: ; preds = %_ZN4absl13cord_internal7CordRep3RefEPS1_.exit32.i, %_ZN4absl13cord_internal7CordRep3RefEPS1_.exit.i47
  %.0.i46 = phi ptr [ %.0.i37, %_ZN4absl13cord_internal7CordRep3RefEPS1_.exit.i47 ], [ %i.ck, %_ZN4absl13cord_internal7CordRep3RefEPS1_.exit32.i ] ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.i37, i64 8
  %i.cs = atomicrmw sub ptr %i.cr, i32 2 acq_rel, align 4 ; 3 uses
  %i.ct = icmp sgt i32 %i.cs, 0
  %i.cu = trunc i32 %i.cs to i1
  %i.cv = or i1 %i.ct, %i.cu
  br i1 %i.cv, label %_ZN4absl13cord_internal16RefcountAndFlags27DecrementExpectHighRefcountEv.exit.i49, label %bb.aj

bb.aj:                                            ; preds = %_ZN4absl13cord_internal16CordRepSubstring9SubstringEPNS0_7CordRepEmm.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.68, i32 noundef 171, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal16RefcountAndFlags27DecrementExpectHighRefcountEv) #20
  unreachable

_ZN4absl13cord_internal16RefcountAndFlags27DecrementExpectHighRefcountEv.exit.i49: ; preds = %_ZN4absl13cord_internal16CordRepSubstring9SubstringEPNS0_7CordRepEmm.exit
  %.not3.i50 = icmp eq i32 %i.cs, 2
  br i1 %.not3.i50, label %bb.ak, label %_ZN4absl13cord_internal7CordRep5UnrefEPS1_.exit, !prof !7

bb.ak:                                            ; preds = %_ZN4absl13cord_internal16RefcountAndFlags27DecrementExpectHighRefcountEv.exit.i49
  tail call void @_ZN4absl13cord_internal7CordRep7DestroyEPS1_(ptr noundef nonnull %.0.i37) #21
  br label %_ZN4absl13cord_internal7CordRep5UnrefEPS1_.exit

_ZN4absl13cord_internal7CordRep5UnrefEPS1_.exit:  ; preds = %bb.ak, %_ZN4absl13cord_internal16RefcountAndFlags27DecrementExpectHighRefcountEv.exit.i49, %bb.x, %_ZN4absl13cord_internal16RefcountAndFlags27DecrementExpectHighRefcountEv.exit.i42, %bb.t, %_ZN4absl13cord_internal16RefcountAndFlags27DecrementExpectHighRefcountEv.exit.i, %_ZN4absl13cord_internal7CordRep9substringEv.exit
  %.0 = phi ptr [ %i.bh, %bb.x ], [ null, %bb.t ], [ %.0.i37, %_ZN4absl13cord_internal7CordRep9substringEv.exit ], [ null, %_ZN4absl13cord_internal16RefcountAndFlags27DecrementExpectHighRefcountEv.exit.i ], [ %i.bh, %_ZN4absl13cord_internal16RefcountAndFlags27DecrementExpectHighRefcountEv.exit.i42 ], [ %.0.i46, %_ZN4absl13cord_internal16RefcountAndFlags27DecrementExpectHighRefcountEv.exit.i49 ], [ %.0.i46, %bb.ak ] ; 3 uses
  %i.cw = load i8, ptr %0, align 8
  %i.cx = trunc i8 %i.cw to i1
  br i1 %i.cx, label %bb.am, label %bb.al

bb.al:                                            ; preds = %_ZN4absl13cord_internal7CordRep5UnrefEPS1_.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.31, i32 noundef 1282, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl4Cord9InlineRep14SetTreeOrEmptyEPNS_13cord_internal7CordRepERKNS2_16CordzUpdateScopeE) #20
  unreachable

bb.am:                                            ; preds = %_ZN4absl13cord_internal7CordRep5UnrefEPS1_.exit
  %.not.i52 = icmp eq ptr %.0, null
  br i1 %.not.i52, label %.split6.i, label %_ZN4absl13cord_internal10InlineData8set_treeEPNS0_7CordRepE.exit.i

_ZN4absl13cord_internal10InlineData8set_treeEPNS0_7CordRepE.exit.i: ; preds = %bb.am
  store ptr %.0, ptr %i.u, align 8
  br i1 %.not.i35, label %_ZN4absl13cord_internal16CordzUpdateScopeD2Ev.exit, label %bb.an, !prof !5

.split6.i:                                        ; preds = %bb.am
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br i1 %.not.i35, label %_ZN4absl13cord_internal16CordzUpdateScopeD2Ev.exit, label %bb.an, !prof !5

bb.an:                                            ; preds = %.split6.i, %_ZN4absl13cord_internal10InlineData8set_treeEPNS0_7CordRepE.exit.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  tail call void @_ZNK4absl5Mutex10AssertHeldEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cy) #21
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  store ptr %.0, ptr %i.cz, align 8
  tail call void @_ZN4absl13cord_internal9CordzInfo6UnlockEv(ptr noundef nonnull align 8 dereferenceable(1344) %i.ak) #21
  br label %_ZN4absl13cord_internal16CordzUpdateScopeD2Ev.exit

_ZN4absl13cord_internal16CordzUpdateScopeD2Ev.exit: ; preds = %.split6.i, %_ZN4absl13cord_internal10InlineData8set_treeEPNS0_7CordRepE.exit.i, %bb.an, %bb.j
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.93) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #21 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 15
  br i1 %i.d, label %bb.d, label %._crit_edge.i

bb.d:                                             ; preds = %bb.c
  %i.e = icmp slt i64 %i.c, 0
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.64) #20
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.f = add nuw i64 %i.c, 1                      ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !7

end_hunk_1
begin_hunk_2_@_ZN4absl4Cord12RemoveSuffixEm:bb.a
_ZN4absl13cord_internal16RefcountAndFlags27DecrementExpectHighRefcountEv.exit.i: ; preds = %bb.v
  %.not3.i = icmp eq i32 %i.bi, 2
  br i1 %.not3.i, label %bb.x, label %_ZN4absl13cord_internal7CordRep5UnrefEPS1_.exit, !prof !7

bb.x:                                             ; preds = %_ZN4absl13cord_internal16RefcountAndFlags27DecrementExpectHighRefcountEv.exit.i
  tail call void @_ZN4absl13cord_internal7CordRep7DestroyEPS1_(ptr noundef nonnull %.0.i33) #21
  br label %_ZN4absl13cord_internal7CordRep5UnrefEPS1_.exit

bb.y:                                             ; preds = %_ZN4absl13cord_internal13RemoveCrcNodeEPNS0_7CordRepE.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.i33, i64 12 ; 3 uses
  %i.bn = load i8, ptr %i.bm, align 4
  switch i8 %i.bn, label %bb.z [
    i8 3, label %_ZN4absl13cord_internal7CordRep5btreeEv.exit
    i8 5, label %bb.ac
  ]

_ZN4absl13cord_internal7CordRep5btreeEv.exit:     ; preds = %bb.y
  %i.bo = tail call noundef ptr @_ZN4absl13cord_internal12CordRepBtree12RemoveSuffixEPS1_m(ptr noundef nonnull %.0.i33, i64 noundef %1) #21
  br label %_ZN4absl13cord_internal7CordRep5UnrefEPS1_.exit

bb.z:                                             ; preds = %bb.y
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.i33, i64 8
  %i.bq = load atomic i32, ptr %i.bp acquire, align 8
  %i.br = icmp eq i32 %i.bq, 2
  br i1 %i.br, label %bb.aa, label %._crit_edge

._crit_edge:                                      ; preds = %bb.z
  %.pre = load i64, ptr %.0.i33, align 8
  br label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.bs = load i8, ptr %i.bm, align 4             ; 2 uses
  %i.bt = icmp ugt i8 %i.bs, 5
  %i.bu = icmp eq i8 %i.bs, 1
  %or.cond = or i1 %i.bt, %i.bu
  br i1 %or.cond, label %.critedge, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @__assert_fail(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 718, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl4Cord12RemoveSuffixEm) #20
  unreachable

.critedge:                                        ; preds = %bb.aa
  %i.bv = load i64, ptr %.0.i33, align 8
  %i.bw = sub i64 %i.bv, %1
  store i64 %i.bw, ptr %.0.i33, align 8
  br label %_ZN4absl13cord_internal7CordRep5UnrefEPS1_.exit

bb.ac:                                            ; preds = %._crit_edge, %bb.y
  %i.bx = phi i64 [ %.pre, %._crit_edge ], [ %i.bg, %bb.y ] ; 4 uses
  %i.by = sub i64 %i.bx, %1
  %.not28.i = icmp eq i64 %i.bx, %1
  br i1 %.not28.i, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  tail call void @__assert_fail(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.68, i32 noundef 418, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal16CordRepSubstring9SubstringEPNS0_7CordRepEmm) #20
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %.not52 = icmp eq i64 %i.bx, 0
  br i1 %.not52, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  tail call void @__assert_fail(ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.68, i32 noundef 419, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal16CordRepSubstring9SubstringEPNS0_7CordRepEmm) #20
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %.not29.i = icmp ugt i64 %1, %i.bx
  br i1 %.not29.i, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  tail call void @__assert_fail(ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.68, i32 noundef 420, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal16CordRepSubstring9SubstringEPNS0_7CordRepEmm) #20
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.bz = icmp eq i64 %1, 0
  br i1 %i.bz, label %_ZN4absl13cord_internal7CordRep3RefEPS1_.exit.i39, label %bb.aj

_ZN4absl13cord_internal7CordRep3RefEPS1_.exit.i39: ; preds = %bb.ai
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.i33, i64 8
  %i.cb = atomicrmw add ptr %i.ca, i32 2 monotonic, align 4 ; 0 uses
  br label %_ZN4absl13cord_internal16CordRepSubstring9SubstringEPNS0_7CordRepEmm.exit

bb.aj:                                            ; preds = %bb.ai
  %i.cc = load i8, ptr %i.bm, align 4
  %i.cd = icmp eq i8 %i.cc, 1
  br i1 %i.cd, label %_ZN4absl13cord_internal7CordRep9substringEv.exit30.i, label %bb.ak

_ZN4absl13cord_internal7CordRep9substringEv.exit30.i: ; preds = %bb.aj
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.i33, i64 16
  %i.cf = load i64, ptr %i.ce, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.i33, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8
  br label %bb.ak

bb.ak:                                            ; preds = %_ZN4absl13cord_internal7CordRep9substringEv.exit30.i, %bb.aj
  %.023.i = phi i64 [ %i.cf, %_ZN4absl13cord_internal7CordRep9substringEv.exit30.i ], [ 0, %bb.aj ]
  %.022.i = phi ptr [ %i.ch, %_ZN4absl13cord_internal7CordRep9substringEv.exit30.i ], [ %.0.i33, %bb.aj ] ; 3 uses
  %i.ci = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #22 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.ci, i8 0, i64 16, i1 false)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store i32 2, ptr %i.cj, align 8
  store i64 %i.by, ptr %i.ci, align 16
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 12
  store i8 1, ptr %i.ck, align 4
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store i64 %.023.i, ptr %i.cl, align 16
  %.not.i31.i = icmp eq ptr %.022.i, null
  br i1 %.not.i31.i, label %bb.al, label %_ZN4absl13cord_internal7CordRep3RefEPS1_.exit32.i

bb.al:                                            ; preds = %bb.ak
  tail call void @__assert_fail(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.68, i32 noundef 911, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal7CordRep3RefEPS1_) #20
  unreachable

_ZN4absl13cord_internal7CordRep3RefEPS1_.exit32.i: ; preds = %bb.ak
  %i.cm = getelementptr inbounds nuw i8, ptr %.022.i, i64 8
  %i.cn = atomicrmw add ptr %i.cm, i32 2 monotonic, align 4 ; 0 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  store ptr %.022.i, ptr %i.co, align 8
  br label %_ZN4absl13cord_internal16CordRepSubstring9SubstringEPNS0_7CordRepEmm.exit

_ZN4absl13cord_internal16CordRepSubstring9SubstringEPNS0_7CordRepEmm.exit: ; preds = %_ZN4absl13cord_internal7CordRep3RefEPS1_.exit32.i, %_ZN4absl13cord_internal7CordRep3RefEPS1_.exit.i39
  %.0.i38 = phi ptr [ %.0.i33, %_ZN4absl13cord_internal7CordRep3RefEPS1_.exit.i39 ], [ %i.ci, %_ZN4absl13cord_internal7CordRep3RefEPS1_.exit32.i ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.i33, i64 8
  %i.cq = atomicrmw sub ptr %i.cp, i32 2 acq_rel, align 4 ; 3 uses
  %i.cr = icmp sgt i32 %i.cq, 0
  %i.cs = trunc i32 %i.cq to i1
  %i.ct = or i1 %i.cr, %i.cs
  br i1 %i.ct, label %_ZN4absl13cord_internal16RefcountAndFlags27DecrementExpectHighRefcountEv.exit.i41, label %bb.am

bb.am:                                            ; preds = %_ZN4absl13cord_internal16CordRepSubstring9SubstringEPNS0_7CordRepEmm.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.68, i32 noundef 171, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal16RefcountAndFlags27DecrementExpectHighRefcountEv) #20
  unreachable

_ZN4absl13cord_internal16RefcountAndFlags27DecrementExpectHighRefcountEv.exit.i41: ; preds = %_ZN4absl13cord_internal16CordRepSubstring9SubstringEPNS0_7CordRepEmm.exit
  %.not3.i42 = icmp eq i32 %i.cq, 2
  br i1 %.not3.i42, label %bb.an, label %_ZN4absl13cord_internal7CordRep5UnrefEPS1_.exit, !prof !7

bb.an:                                            ; preds = %_ZN4absl13cord_internal16RefcountAndFlags27DecrementExpectHighRefcountEv.exit.i41
  tail call void @_ZN4absl13cord_internal7CordRep7DestroyEPS1_(ptr noundef nonnull %.0.i33) #21
  br label %_ZN4absl13cord_internal7CordRep5UnrefEPS1_.exit

_ZN4absl13cord_internal7CordRep5UnrefEPS1_.exit:  ; preds = %bb.an, %_ZN4absl13cord_internal16RefcountAndFlags27DecrementExpectHighRefcountEv.exit.i41, %bb.x, %_ZN4absl13cord_internal16RefcountAndFlags27DecrementExpectHighRefcountEv.exit.i, %_ZN4absl13cord_internal7CordRep5btreeEv.exit, %.critedge
  %.0 = phi ptr [ %.0.i33, %.critedge ], [ %i.bo, %_ZN4absl13cord_internal7CordRep5btreeEv.exit ], [ null, %bb.x ], [ null, %_ZN4absl13cord_internal16RefcountAndFlags27DecrementExpectHighRefcountEv.exit.i ], [ %.0.i38, %_ZN4absl13cord_internal16RefcountAndFlags27DecrementExpectHighRefcountEv.exit.i41 ], [ %.0.i38, %bb.an ] ; 3 uses
  %i.cu = load i8, ptr %0, align 8
  %i.cv = trunc i8 %i.cu to i1
  br i1 %i.cv, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_ZN4absl13cord_internal7CordRep5UnrefEPS1_.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.31, i32 noundef 1282, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl4Cord9InlineRep14SetTreeOrEmptyEPNS_13cord_internal7CordRepERKNS2_16CordzUpdateScopeE) #20
  unreachable

bb.ap:                                            ; preds = %_ZN4absl13cord_internal7CordRep5UnrefEPS1_.exit
  %.not.i44 = icmp eq ptr %.0, null
  br i1 %.not.i44, label %.split6.i, label %_ZN4absl13cord_internal10InlineData8set_treeEPNS0_7CordRepE.exit.i

_ZN4absl13cord_internal10InlineData8set_treeEPNS0_7CordRepE.exit.i: ; preds = %bb.ap
  store ptr %.0, ptr %i.u, align 8
  br i1 %.not.i31, label %_ZN4absl13cord_internal16CordzUpdateScopeD2Ev.exit, label %bb.aq, !prof !5

.split6.i:                                        ; preds = %bb.ap
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br i1 %.not.i31, label %_ZN4absl13cord_internal16CordzUpdateScopeD2Ev.exit, label %bb.aq, !prof !5

bb.aq:                                            ; preds = %.split6.i, %_ZN4absl13cord_internal10InlineData8set_treeEPNS0_7CordRepE.exit.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  tail call void @_ZNK4absl5Mutex10AssertHeldEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cw) #21
  %i.cx = getelementptr inbounds nuw i8, ptr %i.as, i64 64
  store ptr %.0, ptr %i.cx, align 8
  tail call void @_ZN4absl13cord_internal9CordzInfo6UnlockEv(ptr noundef nonnull align 8 dereferenceable(1344) %i.as) #21
  br label %_ZN4absl13cord_internal16CordzUpdateScopeD2Ev.exit

_ZN4absl13cord_internal16CordzUpdateScopeD2Ev.exit: ; preds = %.split6.i, %_ZN4absl13cord_internal10InlineData8set_treeEPNS0_7CordRepE.exit.i, %bb.aq, %_ZN4absl4Cord9InlineRep11reduce_sizeEm.exit
  ret void
}

declare noundef ptr @_ZN4absl13cord_internal12CordRepBtree12RemoveSuffixEPS1_m(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4absl4Cord7SubcordEmm(ptr dead_on_unwind noalias writable sret(%"class.absl::Cord") align 8 initializes((0, 16)) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.absl::Cord::ChunkIterator", align 8 ; 18 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.a = load i8, ptr %1, align 8                 ; 2 uses
  %i.b = trunc i8 %i.a to i1                      ; 3 uses
  br i1 %i.b, label %_ZNK4absl4Cord9InlineRep7as_treeEv.exit.i.i, label %_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i

_ZNK4absl4Cord9InlineRep7as_treeEv.exit.i.i:      ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load i64, ptr %i.d, align 8
  br label %_ZNK4absl4Cord4sizeEv.exit

_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i: ; preds = %bb.a
  %i.f = sext i8 %i.a to i64
  %i.g = lshr exact i64 %i.f, 1
  br label %_ZNK4absl4Cord4sizeEv.exit

_ZNK4absl4Cord4sizeEv.exit:                       ; preds = %_ZNK4absl4Cord9InlineRep7as_treeEv.exit.i.i, %_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i
  %i.h = phi i64 [ %i.e, %_ZNK4absl4Cord9InlineRep7as_treeEv.exit.i.i ], [ %i.g, %_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i ] ; 2 uses
  %spec.select = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.h) ; 14 uses
  %i.i = sub nuw i64 %i.h, %spec.select
  %.035 = tail call i64 @llvm.umin.i64(i64 %3, i64 %i.i) ; 20 uses
  %i.j = icmp eq i64 %.035, 0
  br i1 %i.j, label %_ZN4absl4Cord9InlineRep8set_dataEPKcm.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK4absl4Cord4sizeEv.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8              ; 6 uses
  %i.m = icmp ne ptr %i.l, null
  %.not70 = select i1 %i.b, i1 %i.m, i1 false
  br i1 %.not70, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 1
  %spec.select.i = select i1 %i.b, ptr null, ptr %i.n
  %i.o = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 %spec.select ; 7 uses
  %i.p = icmp ult i64 %.035, 16
  br i1 %i.p, label %bb.e, label %bb.d, !prof !5

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i32 noundef 631, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZN4absl13cord_internal10InlineData15set_inline_dataEPKcmENKUlvE_clEv) #20
  unreachable

bb.e:                                             ; preds = %bb.c
  %.tr.i.i = trunc nuw nsw i64 %.035 to i8
  %i.q = shl nuw nsw i8 %.tr.i.i, 1
  store i8 %i.q, ptr %0, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 7 uses
  %i.s = icmp samesign ugt i64 %.035, 7
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.0.copyload6.i.i.i = load i64, ptr %i.o, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 %.035
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -8
  %.0.copyload4.i.i.i = load i64, ptr %i.u, align 1
  store i64 %.0.copyload6.i.i.i, ptr %i.r, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %.035
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -8
  store i64 %.0.copyload4.i.i.i, ptr %i.w, align 1
  br label %_ZN4absl4Cord9InlineRep8set_dataEPKcm.exit

bb.g:                                             ; preds = %bb.e
  %i.x = icmp samesign ugt i64 %.035, 3
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.0.copyload2.i.i.i = load i32, ptr %i.o, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 %.035
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -4
  %.0.copyload.i.i.i = load i32, ptr %i.z, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.aa, align 8
  store i32 %.0.copyload2.i.i.i, ptr %i.r, align 1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 %.035
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -4
  store i32 %.0.copyload.i.i.i, ptr %i.ac, align 1
  br label %_ZN4absl4Cord9InlineRep8set_dataEPKcm.exit

bb.i:                                             ; preds = %bb.g
  %i.ad = load i8, ptr %i.o, align 1
  store i8 %i.ad, ptr %i.r, align 1
  %i.ae = lshr i64 %.035, 1                       ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ae
  store i8 %i.ag, ptr %i.ah, align 1
  %i.ai = getelementptr i8, ptr %i.o, i64 %.035
  %i.aj = getelementptr i8, ptr %i.ai, i64 -1
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = getelementptr i8, ptr %0, i64 %.035
  store i8 %i.ak, ptr %i.al, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.r, i64 %.035
  store i64 0, ptr %i.an, align 1
  br label %_ZN4absl4Cord9InlineRep8set_dataEPKcm.exit

bb.j:                                             ; preds = %bb.b
  %i.ao = icmp ult i64 %.035, 16
  br i1 %i.ao, label %bb.k, label %bb.aj

bb.k:                                             ; preds = %bb.j
  %.tr.i.i.i = trunc nuw nsw i64 %.035 to i8
  %i.ap = shl nuw nsw i8 %.tr.i.i.i, 1
  store i8 %i.ap, ptr %0, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45)
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 7 uses
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %4, i8 0, i64 40, i1 false), !alias.scope !45
  store i32 -1, ptr %i.as, align 8, !alias.scope !45
  %i.at = load i64, ptr %i.l, align 8, !noalias !45 ; 2 uses
  store i64 %i.at, ptr %i.ar, align 8, !alias.scope !45
  %.not7.i.i = icmp eq i64 %i.at, 0
  br i1 %.not7.i.i, label %bb.m, label %bb.l, !prof !7

bb.l:                                             ; preds = %bb.k
  call void @_ZN4absl4Cord13ChunkIterator8InitTreeEPNS_13cord_internal7CordRepE(ptr noundef nonnull align 8 dereferenceable(152) %4, ptr noundef nonnull %i.l)
  %.pre90 = load i64, ptr %i.ar, align 8
  br label %_ZNK4absl4Cord11chunk_beginEv.exit

bb.m:                                             ; preds = %bb.k
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %4, i8 0, i64 16, i1 false), !alias.scope !45
  br label %_ZNK4absl4Cord11chunk_beginEv.exit

_ZNK4absl4Cord11chunk_beginEv.exit:               ; preds = %bb.l, %bb.m
  %i.au = phi i64 [ %.pre90, %bb.l ], [ 0, %bb.m ] ; 3 uses
  %.not.i = icmp ult i64 %i.au, %spec.select
  br i1 %.not.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNK4absl4Cord11chunk_beginEv.exit
  call void @__assert_fail(ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.31, i32 noundef 1601, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl4Cord13ChunkIterator12AdvanceBytesEm) #20
  unreachable

bb.o:                                             ; preds = %_ZNK4absl4Cord11chunk_beginEv.exit
  %i.av = load i64, ptr %4, align 8               ; 2 uses
  %i.aw = icmp ult i64 %spec.select, %i.av
  br i1 %i.aw, label %_ZN4absl4Cord13ChunkIterator17RemoveChunkPrefixEm.exit.i, label %bb.p, !prof !5

_ZN4absl4Cord13ChunkIterator17RemoveChunkPrefixEm.exit.i: ; preds = %bb.o
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %spec.select
  store ptr %i.az, ptr %i.ax, align 8
  %i.ba = sub nuw i64 %i.av, %spec.select
  store i64 %i.ba, ptr %4, align 8
  %i.bb = sub nuw i64 %i.au, %spec.select         ; 2 uses
  store i64 %i.bb, ptr %i.ar, align 8
  br label %_ZN4absl4Cord13ChunkIterator12AdvanceBytesEm.exit

bb.p:                                             ; preds = %bb.o
  %.not5.i = icmp eq i64 %spec.select, 0
  br i1 %.not5.i, label %_ZN4absl4Cord13ChunkIterator12AdvanceBytesEm.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bc = load i32, ptr %i.as, align 8            ; 2 uses
  %i.bd = icmp sgt i32 %i.bc, -1
  br i1 %i.bd, label %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.i, label %_ZN4absl4Cord13ChunkIterator12AdvanceBytesEm.exit.thread

_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.i: ; preds = %bb.q
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.bf = zext nneg i32 %i.bc to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bf
  %i.bh = load ptr, ptr %i.bg, align 8
  %.not6.i = icmp eq ptr %i.bh, null
  br i1 %.not6.i, label %_ZN4absl4Cord13ChunkIterator12AdvanceBytesEm.exit.thread, label %bb.r

bb.r:                                             ; preds = %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.i
  call void @_ZN4absl4Cord13ChunkIterator17AdvanceBytesBtreeEm(ptr noundef nonnull align 8 dereferenceable(152) %4, i64 noundef %spec.select)
  %.pre91 = load i64, ptr %i.ar, align 8
  br label %_ZN4absl4Cord13ChunkIterator12AdvanceBytesEm.exit

_ZN4absl4Cord13ChunkIterator12AdvanceBytesEm.exit.thread: ; preds = %bb.q, %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.i
  store i64 0, ptr %i.ar, align 8
  br label %._crit_edge

_ZN4absl4Cord13ChunkIterator12AdvanceBytesEm.exit: ; preds = %_ZN4absl4Cord13ChunkIterator17RemoveChunkPrefixEm.exit.i, %bb.p, %bb.r
  %i.bi = phi i64 [ %i.bb, %_ZN4absl4Cord13ChunkIterator17RemoveChunkPrefixEm.exit.i ], [ %i.au, %bb.p ], [ %.pre91, %bb.r ] ; 2 uses
  %.not.i4379 = icmp eq i64 %i.bi, 0
  br i1 %.not.i4379, label %._crit_edge, label %_ZNK4absl4Cord13ChunkIteratorptEv.exit.lr.ph, !prof !48

_ZNK4absl4Cord13ChunkIteratorptEv.exit.lr.ph:     ; preds = %_ZN4absl4Cord13ChunkIterator12AdvanceBytesEm.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 56
  %.pre92 = load i64, ptr %4, align 8
  br label %_ZNK4absl4Cord13ChunkIteratorptEv.exit

._crit_edge:                                      ; preds = %bb.z, %_ZN4absl4Cord13ChunkIteratorppEv.exit, %_ZN4absl4Cord13ChunkIterator12AdvanceBytesEm.exit.thread, %_ZN4absl4Cord13ChunkIterator12AdvanceBytesEm.exit
  call void @__assert_fail(ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.31, i32 noundef 1590, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZNK4absl4Cord13ChunkIteratorptEvENKUlvE_clEv) #20
  unreachable

_ZNK4absl4Cord13ChunkIteratorptEv.exit:           ; preds = %_ZNK4absl4Cord13ChunkIteratorptEv.exit.lr.ph, %_ZN4absl4Cord13ChunkIteratorppEv.exit
  %i.bm = phi i64 [ %.pre92, %_ZNK4absl4Cord13ChunkIteratorptEv.exit.lr.ph ], [ %i.cw, %_ZN4absl4Cord13ChunkIteratorppEv.exit ] ; 16 uses
  %i.bn = phi i64 [ %i.bi, %_ZNK4absl4Cord13ChunkIteratorptEv.exit.lr.ph ], [ %i.cv, %_ZN4absl4Cord13ChunkIteratorppEv.exit ] ; 3 uses
  %.081 = phi i64 [ %.035, %_ZNK4absl4Cord13ChunkIteratorptEv.exit.lr.ph ], [ %i.cj, %_ZN4absl4Cord13ChunkIteratorppEv.exit ] ; 11 uses
  %.03280 = phi ptr [ %i.aq, %_ZNK4absl4Cord13ChunkIteratorptEv.exit.lr.ph ], [ %i.ck, %_ZN4absl4Cord13ChunkIteratorppEv.exit ] ; 15 uses
  %i.bo = icmp ugt i64 %.081, %i.bm
  %i.bp = load ptr, ptr %i.bj, align 8            ; 14 uses
  br i1 %i.bo, label %_ZNK4absl4Cord13ChunkIteratorptEv.exit47, label %_ZNK4absl4Cord13ChunkIteratorptEv.exit58

_ZNK4absl4Cord13ChunkIteratorptEv.exit47:         ; preds = %_ZNK4absl4Cord13ChunkIteratorptEv.exit
  %i.bq = icmp ugt i64 %i.bm, 7
  br i1 %i.bq, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZNK4absl4Cord13ChunkIteratorptEv.exit47
  %.0.copyload6.i = load i64, ptr %i.bp, align 1
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bm
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -8
  %.0.copyload4.i = load i64, ptr %i.bs, align 1
  store i64 %.0.copyload6.i, ptr %.03280, align 1
  %i.bt = getelementptr inbounds nuw i8, ptr %.03280, i64 %i.bm
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 -8
  store i64 %.0.copyload4.i, ptr %i.bu, align 1
  br label %bb.x

bb.t:                                             ; preds = %_ZNK4absl4Cord13ChunkIteratorptEv.exit47
  %i.bv = icmp samesign ugt i64 %i.bm, 3
  br i1 %i.bv, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %.0.copyload2.i = load i32, ptr %i.bp, align 1
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bm
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 -4
  %.0.copyload.i = load i32, ptr %i.bx, align 1
  store i32 %.0.copyload2.i, ptr %.03280, align 1
  %i.by = getelementptr inbounds nuw i8, ptr %.03280, i64 %i.bm
  %i.bz = getelementptr inbounds i8, ptr %i.by, i64 -4
  store i32 %.0.copyload.i, ptr %i.bz, align 1
  br label %bb.x

bb.v:                                             ; preds = %bb.t
  %.not.i48 = icmp eq i64 %i.bm, 0
  br i1 %.not.i48, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ca = load i8, ptr %i.bp, align 1
  store i8 %i.ca, ptr %.03280, align 1
  %i.cb = lshr i64 %i.bm, 1                       ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = getelementptr inbounds nuw i8, ptr %.03280, i64 %i.cb
  store i8 %i.cd, ptr %i.ce, align 1
  %i.cf = add nsw i64 %i.bm, -1                   ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1
  %i.ci = getelementptr inbounds nuw i8, ptr %.03280, i64 %i.cf
  store i8 %i.ch, ptr %i.ci, align 1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u, %bb.s
  %i.cj = sub nuw nsw i64 %.081, %i.bm
  %i.ck = getelementptr inbounds nuw i8, ptr %.03280, i64 %i.bm
  %.not2.i = icmp ult i64 %i.bn, %i.bm
  br i1 %.not2.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @__assert_fail(ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.31, i32 noundef 1557, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl4Cord13ChunkIteratorppEv) #20
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.cl = sub nuw i64 %i.bn, %i.bm                ; 2 uses
  store i64 %i.cl, ptr %i.ar, align 8
  %.not3.i = icmp eq i64 %i.bn, %i.bm
  br i1 %.not3.i, label %._crit_edge, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cm = load i32, ptr %i.as, align 8            ; 2 uses
  %i.cn = icmp sgt i32 %i.cm, -1
  br i1 %i.cn, label %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.i55, label %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.thread.i54

_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.i55: ; preds = %bb.aa
  %i.co = zext nneg i32 %i.cm to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.co
  %i.cq = load ptr, ptr %i.cp, align 8
  %.not4.i = icmp eq ptr %i.cq, null
  br i1 %.not4.i, label %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.thread.i54, label %bb.ab

bb.ab:                                            ; preds = %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.i55
  %i.cr = call { i64, ptr } @_ZN4absl13cord_internal18CordRepBtreeReader4NextEv(ptr noundef nonnull align 8 dereferenceable(120) %i.bk) ; 2 uses
  %i.cs = extractvalue { i64, ptr } %i.cr, 0      ; 2 uses
  %i.ct = extractvalue { i64, ptr } %i.cr, 1
  store i64 %i.cs, ptr %4, align 8
  store ptr %i.ct, ptr %i.bj, align 8
  %.pre93 = load i64, ptr %i.ar, align 8
  br label %_ZN4absl4Cord13ChunkIteratorppEv.exit

_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.thread.i54: ; preds = %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.i55, %bb.aa
  %i.cu = icmp eq i64 %i.bm, 0
  br i1 %i.cu, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.thread.i54
  call void @__assert_fail(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.31, i32 noundef 1563, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl4Cord13ChunkIteratorppEv) #20
  unreachable

bb.ad:                                            ; preds = %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.thread.i54
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %4, i8 0, i64 16, i1 false)
  br label %_ZN4absl4Cord13ChunkIteratorppEv.exit

_ZN4absl4Cord13ChunkIteratorppEv.exit:            ; preds = %bb.ab, %bb.ad
  %i.cv = phi i64 [ %i.cl, %bb.ad ], [ %.pre93, %bb.ab ] ; 2 uses
  %i.cw = phi i64 [ 0, %bb.ad ], [ %i.cs, %bb.ab ]
  %.not.i43 = icmp eq i64 %i.cv, 0
  br i1 %.not.i43, label %._crit_edge, label %_ZNK4absl4Cord13ChunkIteratorptEv.exit, !prof !49, !llvm.loop !50

_ZNK4absl4Cord13ChunkIteratorptEv.exit58:         ; preds = %_ZNK4absl4Cord13ChunkIteratorptEv.exit
  %i.cx = icmp ugt i64 %.081, 7
  br i1 %i.cx, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZNK4absl4Cord13ChunkIteratorptEv.exit58
  %.0.copyload6.i62 = load i64, ptr %i.bp, align 1
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.081
  %i.cz = getelementptr inbounds i8, ptr %i.cy, i64 -8
  %.0.copyload4.i63 = load i64, ptr %i.cz, align 1
  store i64 %.0.copyload6.i62, ptr %.03280, align 1
  %i.da = getelementptr inbounds nuw i8, ptr %.03280, i64 %.081
  %i.db = getelementptr inbounds i8, ptr %i.da, i64 -8
  store i64 %.0.copyload4.i63, ptr %i.db, align 1
  br label %_ZN4absl13cord_internal12SmallMemmoveILb0EEEvPcPKcm.exit64

bb.af:                                            ; preds = %_ZNK4absl4Cord13ChunkIteratorptEv.exit58
  %i.dc = icmp samesign ugt i64 %.081, 3
  br i1 %i.dc, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %.0.copyload2.i60 = load i32, ptr %i.bp, align 1
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.081
  %i.de = getelementptr inbounds i8, ptr %i.dd, i64 -4
  %.0.copyload.i61 = load i32, ptr %i.de, align 1
  store i32 %.0.copyload2.i60, ptr %.03280, align 1
  %i.df = getelementptr inbounds nuw i8, ptr %.03280, i64 %.081
  %i.dg = getelementptr inbounds i8, ptr %i.df, i64 -4
  store i32 %.0.copyload.i61, ptr %i.dg, align 1
  br label %_ZN4absl13cord_internal12SmallMemmoveILb0EEEvPcPKcm.exit64

bb.ah:                                            ; preds = %bb.af
  %.not.i59 = icmp eq i64 %.081, 0
  br i1 %.not.i59, label %_ZN4absl13cord_internal12SmallMemmoveILb0EEEvPcPKcm.exit64, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dh = load i8, ptr %i.bp, align 1
  store i8 %i.dh, ptr %.03280, align 1
  %i.di = lshr i64 %.081, 1                       ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1
  %i.dl = getelementptr inbounds nuw i8, ptr %.03280, i64 %i.di
  store i8 %i.dk, ptr %i.dl, align 1
  %i.dm = add nsw i64 %.081, -1                   ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1
  %i.dp = getelementptr inbounds nuw i8, ptr %.03280, i64 %i.dm
  store i8 %i.do, ptr %i.dp, align 1
  br label %_ZN4absl13cord_internal12SmallMemmoveILb0EEEvPcPKcm.exit64

_ZN4absl13cord_internal12SmallMemmoveILb0EEEvPcPKcm.exit64: ; preds = %bb.ae, %bb.ag, %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %_ZN4absl4Cord9InlineRep8set_dataEPKcm.exit

bb.aj:                                            ; preds = %bb.j
  %i.dq = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.dr = load i8, ptr %i.dq, align 4             ; 2 uses
  %i.ds = icmp eq i8 %i.dr, 2
  br i1 %i.ds, label %_ZN4absl13cord_internal7CordRep3crcEv.exit.i, label %_ZN4absl13cord_internal11SkipCrcNodeEPNS0_7CordRepE.exit, !prof !7

_ZN4absl13cord_internal7CordRep3crcEv.exit.i:     ; preds = %bb.aj
  %i.dt = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.du = load ptr, ptr %i.dt, align 8            ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.du, i64 12
  %.pre = load i8, ptr %.phi.trans.insert, align 4
  br label %_ZN4absl13cord_internal11SkipCrcNodeEPNS0_7CordRepE.exit

_ZN4absl13cord_internal11SkipCrcNodeEPNS0_7CordRepE.exit: ; preds = %bb.aj, %_ZN4absl13cord_internal7CordRep3crcEv.exit.i
  %i.dv = phi i8 [ %.pre, %_ZN4absl13cord_internal7CordRep3crcEv.exit.i ], [ %i.dr, %bb.aj ] ; 2 uses
  %.0.i66 = phi ptr [ %i.du, %_ZN4absl13cord_internal7CordRep3crcEv.exit.i ], [ %i.l, %bb.aj ] ; 7 uses
  %i.dw = icmp eq i8 %i.dv, 3
  br i1 %i.dw, label %_ZN4absl13cord_internal7CordRep5btreeEv.exit, label %bb.ak

_ZN4absl13cord_internal7CordRep5btreeEv.exit:     ; preds = %_ZN4absl13cord_internal11SkipCrcNodeEPNS0_7CordRepE.exit
  %i.dx = tail call noundef ptr @_ZN4absl13cord_internal12CordRepBtree7SubTreeEmm(ptr noundef nonnull align 8 dereferenceable(64) %.0.i66, i64 noundef %spec.select, i64 noundef %.035) #21
  br label %_ZN4absl13cord_internal16CordRepSubstring9SubstringEPNS0_7CordRepEmm.exit

bb.ak:                                            ; preds = %_ZN4absl13cord_internal11SkipCrcNodeEPNS0_7CordRepE.exit
  %i.dy = load i64, ptr %.0.i66, align 8          ; 3 uses
  %i.dz = icmp ult i64 %spec.select, %i.dy
  br i1 %i.dz, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  tail call void @__assert_fail(ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.68, i32 noundef 419, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal16CordRepSubstring9SubstringEPNS0_7CordRepEmm) #20
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.ea = sub nuw i64 %i.dy, %spec.select
  %.not29.i = icmp ugt i64 %.035, %i.ea
  br i1 %.not29.i, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  tail call void @__assert_fail(ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.68, i32 noundef 420, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal16CordRepSubstring9SubstringEPNS0_7CordRepEmm) #20
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.eb = icmp eq i64 %.035, %i.dy
  br i1 %i.eb, label %_ZN4absl13cord_internal7CordRep3RefEPS1_.exit.i, label %bb.ap

_ZN4absl13cord_internal7CordRep3RefEPS1_.exit.i:  ; preds = %bb.ao
  %i.ec = getelementptr inbounds nuw i8, ptr %.0.i66, i64 8
  %i.ed = atomicrmw add ptr %i.ec, i32 2 monotonic, align 4 ; 0 uses
  br label %_ZN4absl13cord_internal16CordRepSubstring9SubstringEPNS0_7CordRepEmm.exit

bb.ap:                                            ; preds = %bb.ao
  %i.ee = icmp eq i8 %i.dv, 1
  br i1 %i.ee, label %_ZN4absl13cord_internal7CordRep9substringEv.exit30.i, label %bb.aq

_ZN4absl13cord_internal7CordRep9substringEv.exit30.i: ; preds = %bb.ap
  %i.ef = getelementptr inbounds nuw i8, ptr %.0.i66, i64 16
  %i.eg = load i64, ptr %i.ef, align 8
  %i.eh = add i64 %i.eg, %spec.select
  %i.ei = getelementptr inbounds nuw i8, ptr %.0.i66, i64 24
  %i.ej = load ptr, ptr %i.ei, align 8
  br label %bb.aq

bb.aq:                                            ; preds = %_ZN4absl13cord_internal7CordRep9substringEv.exit30.i, %bb.ap
  %.023.i = phi i64 [ %i.eh, %_ZN4absl13cord_internal7CordRep9substringEv.exit30.i ], [ %spec.select, %bb.ap ]
  %.022.i = phi ptr [ %i.ej, %_ZN4absl13cord_internal7CordRep9substringEv.exit30.i ], [ %.0.i66, %bb.ap ] ; 3 uses
  %i.ek = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #22 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.ek, i8 0, i64 16, i1 false)
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  store i32 2, ptr %i.el, align 8
  store i64 %.035, ptr %i.ek, align 16
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 12
  store i8 1, ptr %i.em, align 4
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  store i64 %.023.i, ptr %i.en, align 16
  %.not.i31.i = icmp eq ptr %.022.i, null
  br i1 %.not.i31.i, label %bb.ar, label %_ZN4absl13cord_internal7CordRep3RefEPS1_.exit32.i

bb.ar:                                            ; preds = %bb.aq
  tail call void @__assert_fail(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.68, i32 noundef 911, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal7CordRep3RefEPS1_) #20
  unreachable

_ZN4absl13cord_internal7CordRep3RefEPS1_.exit32.i: ; preds = %bb.aq
  %i.eo = getelementptr inbounds nuw i8, ptr %.022.i, i64 8
  %i.ep = atomicrmw add ptr %i.eo, i32 2 monotonic, align 4 ; 0 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  store ptr %.022.i, ptr %i.eq, align 8
  br label %_ZN4absl13cord_internal16CordRepSubstring9SubstringEPNS0_7CordRepEmm.exit

_ZN4absl13cord_internal16CordRepSubstring9SubstringEPNS0_7CordRepEmm.exit: ; preds = %_ZN4absl13cord_internal7CordRep3RefEPS1_.exit32.i, %_ZN4absl13cord_internal7CordRep3RefEPS1_.exit.i, %_ZN4absl13cord_internal7CordRep5btreeEv.exit
  %.033 = phi ptr [ %i.dx, %_ZN4absl13cord_internal7CordRep5btreeEv.exit ], [ %.0.i66, %_ZN4absl13cord_internal7CordRep3RefEPS1_.exit.i ], [ %i.ek, %_ZN4absl13cord_internal7CordRep3RefEPS1_.exit32.i ]
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.033, ptr %i.er, align 8
  store i64 1, ptr %0, align 8
  %i.es = load i8, ptr %1, align 8
  %i.et = trunc i8 %i.es to i1
  br i1 %i.et, label %_ZN4absl13cord_internal10InlineData18is_either_profiledERKS1_S3_.exit.i, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %_ZN4absl13cord_internal16CordRepSubstring9SubstringEPNS0_7CordRepEmm.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.68, i32 noundef 567, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal10InlineData18is_either_profiledERKS1_S3_) #20
  unreachable

_ZN4absl13cord_internal10InlineData18is_either_profiledERKS1_S3_.exit.i: ; preds = %_ZN4absl13cord_internal16CordRepSubstring9SubstringEPNS0_7CordRepEmm.exit
  %i.eu = load i64, ptr %1, align 8
  %.not.i69 = icmp ult i64 %i.eu, 2
  br i1 %.not.i69, label %_ZN4absl4Cord9InlineRep8set_dataEPKcm.exit, label %bb.as, !prof !5

bb.as:                                            ; preds = %_ZN4absl13cord_internal10InlineData18is_either_profiledERKS1_S3_.exit.i
  tail call void @_ZN4absl13cord_internal9CordzInfo18MaybeTrackCordImplERNS0_10InlineDataERKS2_NS0_18CordzUpdateTracker16MethodIdentifierE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 24) #21
  br label %_ZN4absl4Cord9InlineRep8set_dataEPKcm.exit

_ZN4absl4Cord9InlineRep8set_dataEPKcm.exit:       ; preds = %bb.as, %_ZN4absl13cord_internal10InlineData18is_either_profiledERKS1_S3_.exit.i, %bb.i, %bb.h, %bb.f, %_ZNK4absl4Cord4sizeEv.exit, %_ZN4absl13cord_internal12SmallMemmoveILb0EEEvPcPKcm.exit64
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4absl4Cord15SetCrcCordStateENS_12crc_internal12CrcCordStateE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef align 8 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.absl::crc_internal::CrcCordState", align 8 ; 3 uses
  %3 = alloca %"class.absl::crc_internal::CrcCordState", align 8 ; 3 uses
  %4 = alloca %"class.absl::crc_internal::CrcCordState", align 8 ; 3 uses
  %i.a = load i8, ptr %0, align 8                 ; 4 uses
  %i.b = trunc i8 %i.a to i1
  br i1 %i.b, label %_ZNK4absl4Cord5emptyEv.exit, label %_ZNK4absl4Cord5emptyEv.exit.thread

_ZNK4absl4Cord5emptyEv.exit:                      ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.n

_ZNK4absl4Cord5emptyEv.exit.thread:               ; preds = %bb.a
  %i.g = icmp eq i8 %i.a, 0
  br i1 %i.g, label %.thread16, label %_ZNK4absl13cord_internal10InlineData11inline_sizeEv.exit.i

.thread16:                                        ; preds = %_ZNK4absl4Cord5emptyEv.exit.thread
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_ZN4absl4Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv.exit

bb.b:                                             ; preds = %_ZNK4absl4Cord5emptyEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.j = load i8, ptr %i.i, align 4
  %i.k = icmp eq i8 %i.j, 2
  br i1 %i.k, label %_ZN4absl13cord_internal7CordRep3crcEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.31, i32 noundef 1323, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl4Cord9InlineRep23MaybeRemoveEmptyCrcNodeEv) #20
  unreachable

_ZN4absl13cord_internal7CordRep3crcEv.exit.i:     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.m = load ptr, ptr %i.l, align 8
end_hunk_2
begin_hunk_3_@_ZNK4absl4CordixEm:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %1
  %i.o = load i8, ptr %i.n, align 1
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.q = load i8, ptr %i.p, align 4
  %i.r = icmp eq i8 %i.q, 2
  br i1 %i.r, label %_ZN4absl13cord_internal11SkipCrcNodeEPKNS0_7CordRepE.exit, label %.lr.ph.preheader, !prof !7

_ZN4absl13cord_internal11SkipCrcNodeEPKNS0_7CordRepE.exit: ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %.not42 = icmp eq ptr %i.t, null
  br i1 %.not42, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e, %_ZN4absl13cord_internal11SkipCrcNodeEPKNS0_7CordRepE.exit
  %.044.ph = phi ptr [ %i.k, %bb.e ], [ %i.t, %_ZN4absl13cord_internal11SkipCrcNodeEPKNS0_7CordRepE.exit ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNK4absl13cord_internal7CordRep9substringEv.exit26, %_ZN4absl13cord_internal11SkipCrcNodeEPKNS0_7CordRepE.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1, i32 noundef 1161, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4absl4CordixEm) #20
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNK4absl13cord_internal7CordRep9substringEv.exit26
  %.044 = phi ptr [ %i.am, %_ZNK4absl13cord_internal7CordRep9substringEv.exit26 ], [ %.044.ph, %.lr.ph.preheader ] ; 7 uses
  %.02243 = phi i64 [ %i.ak, %_ZNK4absl13cord_internal7CordRep9substringEv.exit26 ], [ %1, %.lr.ph.preheader ] ; 5 uses
  %i.u = load i64, ptr %.044, align 8
  %i.v = icmp ult i64 %.02243, %i.u
  br i1 %i.v, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  tail call void @__assert_fail(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.1, i32 noundef 1162, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4absl4CordixEm) #20
  unreachable

bb.g:                                             ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %.044, i64 12
  %i.x = load i8, ptr %i.w, align 4               ; 3 uses
  %i.y = icmp ugt i8 %i.x, 5
  br i1 %i.y, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.z = icmp ult i8 %i.x, -7
  br i1 %i.z, label %_ZNK4absl13cord_internal7CordRep4flatEv.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.h
  tail call void @__assert_fail(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.78, i32 noundef 187, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4absl13cord_internal7CordRep4flatEv) #20
  unreachable

_ZNK4absl13cord_internal7CordRep4flatEv.exit:     ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %.044, i64 13
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.02243
  %i.ac = load i8, ptr %i.ab, align 1
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  switch i8 %i.x, label %bb.j [
    i8 3, label %_ZNK4absl13cord_internal7CordRep5btreeEv.exit
    i8 5, label %_ZNK4absl13cord_internal7CordRep8externalEv.exit
    i8 1, label %_ZNK4absl13cord_internal7CordRep9substringEv.exit26
  ]

_ZNK4absl13cord_internal7CordRep5btreeEv.exit:    ; preds = %bb.i
  %i.ad = tail call noundef signext i8 @_ZNK4absl13cord_internal12CordRepBtree12GetCharacterEm(ptr noundef nonnull align 8 dereferenceable(64) %.044, i64 noundef %.02243) #21
  br label %bb.k

_ZNK4absl13cord_internal7CordRep8externalEv.exit: ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.044, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %.02243
  %i.ah = load i8, ptr %i.ag, align 1
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.1, i32 noundef 1173, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4absl4CordixEm) #20
  unreachable

_ZNK4absl13cord_internal7CordRep9substringEv.exit26: ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.044, i64 16
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = add i64 %i.aj, %.02243
  %i.al = getelementptr inbounds nuw i8, ptr %.044, i64 24
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  %.not = icmp eq ptr %i.am, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !60

bb.k:                                             ; preds = %_ZNK4absl13cord_internal7CordRep8externalEv.exit, %_ZNK4absl13cord_internal7CordRep5btreeEv.exit, %_ZNK4absl13cord_internal7CordRep4flatEv.exit, %bb.d
  %.023 = phi i8 [ %i.o, %bb.d ], [ %i.ac, %_ZNK4absl13cord_internal7CordRep4flatEv.exit ], [ %i.ad, %_ZNK4absl13cord_internal7CordRep5btreeEv.exit ], [ %i.ah, %_ZNK4absl13cord_internal7CordRep8externalEv.exit ]
  ret i8 %.023
}

declare noundef signext i8 @_ZNK4absl13cord_internal12CordRepBtree12GetCharacterEm(ptr noundef nonnull align 8 dereferenceable(64), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4absl4Cord8FindImplENS0_12CharIteratorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.absl::Cord::CharIterator") align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef byval(%"class.absl::Cord::CharIterator") align 8 %2, i64 %3, ptr nofree readonly captures(none) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.absl::Cord::CharIterator", align 8 ; 14 uses
  %i.a = icmp eq i64 %3, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 1229, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4absl4Cord8FindImplENS0_12CharIteratorESt17basic_string_viewIcSt11char_traitsIcEE) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 9 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %.not = icmp ult i64 %i.c, %3
  br i1 %.not, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.c
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  br label %_ZN4absl4Cord14ChunkRemainingERKNS0_12CharIteratorE.exit

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.1, i32 noundef 1231, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4absl4Cord8FindImplENS0_12CharIteratorESt17basic_string_viewIcSt11char_traitsIcEE) #20
  unreachable

thread-pre-split:                                 ; preds = %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i, %bb.h, %_ZN4absl4Cord13ChunkIterator17RemoveChunkPrefixEm.exit.i.i20, %bb.ae, %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i17
  %.pr = load i64, ptr %i.b, align 8              ; 2 uses
  %.not4 = icmp ult i64 %.pr, %3
  br i1 %.not4, label %_ZN4absl4Cord7AdvanceEPNS0_12CharIteratorEm.exit.thread36, label %_ZN4absl4Cord14ChunkRemainingERKNS0_12CharIteratorE.exit

_ZN4absl4Cord14ChunkRemainingERKNS0_12CharIteratorE.exit: ; preds = %.preheader, %thread-pre-split
  %i.j = phi i64 [ %i.c, %.preheader ], [ %.pr, %thread-pre-split ] ; 3 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %2, align 8 ; 6 uses
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8 ; 3 uses
  %i.k = icmp eq i64 %.sroa.0.0.copyload.i.i, 0
  br i1 %i.k, label %bb.e, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i

bb.e:                                             ; preds = %_ZN4absl4Cord14ChunkRemainingERKNS0_12CharIteratorE.exit
  call void @__assert_fail(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.1, i32 noundef 1240, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4absl4Cord8FindImplENS0_12CharIteratorESt17basic_string_viewIcSt11char_traitsIcEE) #20
  unreachable

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i:       ; preds = %_ZN4absl4Cord14ChunkRemainingERKNS0_12CharIteratorE.exit
  %i.l = load i8, ptr %4, align 1
  %i.m = sext i8 %i.l to i32
  %i.n = call ptr @memchr(ptr noundef %.sroa.2.0.copyload.i.i, i32 noundef %i.m, i64 noundef %.sroa.0.0.copyload.i.i) #21 ; 2 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %.sroa.2.0.copyload.i.i to i64
  %i.q = sub i64 %i.o, %i.p                       ; 7 uses
  %i.r = icmp eq i64 %i.q, -1
  br i1 %i.r, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread, label %bb.i

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit
  %.not.i.i6 = icmp ult i64 %i.j, %.sroa.0.0.copyload.i.i
  br i1 %.not.i.i6, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread
  call void @__assert_fail(ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.31, i32 noundef 1601, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl4Cord13ChunkIterator12AdvanceBytesEm) #20
  unreachable

bb.g:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit.thread
  %i.s = load i32, ptr %i.d, align 8              ; 2 uses
  %i.t = icmp sgt i32 %i.s, -1
  br i1 %i.t, label %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.i.i, label %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i

_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.i.i: ; preds = %bb.g
  %i.u = zext nneg i32 %i.s to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8
  %.not6.i.i = icmp eq ptr %i.w, null
  br i1 %.not6.i.i, label %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.i.i
  call void @_ZN4absl4Cord13ChunkIterator17AdvanceBytesBtreeEm(ptr noundef nonnull align 8 dereferenceable(152) %2, i64 noundef %.sroa.0.0.copyload.i.i)
  br label %thread-pre-split, !llvm.loop !61

_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i: ; preds = %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.i.i, %bb.g
  store i64 0, ptr %i.b, align 8
  br label %thread-pre-split, !llvm.loop !61

bb.i:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEcm.exit
  %.not.i.i8 = icmp ult i64 %i.j, %i.q
  br i1 %.not.i.i8, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @__assert_fail(ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.31, i32 noundef 1601, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl4Cord13ChunkIterator12AdvanceBytesEm) #20
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.x = icmp ult i64 %i.q, %.sroa.0.0.copyload.i.i
  br i1 %i.x, label %_ZN4absl4Cord13ChunkIterator17RemoveChunkPrefixEm.exit.i.i13, label %bb.l, !prof !5

_ZN4absl4Cord13ChunkIterator17RemoveChunkPrefixEm.exit.i.i13: ; preds = %bb.k
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 %i.q
  store ptr %i.y, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.z = sub nuw i64 %.sroa.0.0.copyload.i.i, %i.q
  store i64 %i.z, ptr %2, align 8
  %i.aa = sub nuw i64 %i.j, %i.q                  ; 2 uses
  store i64 %i.aa, ptr %i.b, align 8
  br label %_ZN4absl4Cord7AdvanceEPNS0_12CharIteratorEm.exit14

bb.l:                                             ; preds = %bb.k
  %i.ab = load i32, ptr %i.d, align 8             ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, -1
  br i1 %i.ac, label %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.i.i11, label %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i10

_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.i.i11: ; preds = %bb.l
  %i.ad = zext nneg i32 %i.ab to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8
  %.not6.i.i12 = icmp eq ptr %i.af, null
  br i1 %.not6.i.i12, label %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i10, label %bb.m

bb.m:                                             ; preds = %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.i.i11
  call void @_ZN4absl4Cord13ChunkIterator17AdvanceBytesBtreeEm(ptr noundef nonnull align 8 dereferenceable(152) %2, i64 noundef %i.q)
  %.pre = load i64, ptr %i.b, align 8
  br label %_ZN4absl4Cord7AdvanceEPNS0_12CharIteratorEm.exit14

_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i10: ; preds = %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.i.i11, %bb.l
  store i64 0, ptr %i.b, align 8
  br label %_ZN4absl4Cord7AdvanceEPNS0_12CharIteratorEm.exit14

_ZN4absl4Cord7AdvanceEPNS0_12CharIteratorEm.exit14: ; preds = %_ZN4absl4Cord13ChunkIterator17RemoveChunkPrefixEm.exit.i.i13, %bb.m, %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i10
  %i.ag = phi i64 [ %i.aa, %_ZN4absl4Cord13ChunkIterator17RemoveChunkPrefixEm.exit.i.i13 ], [ %.pre, %bb.m ], [ 0, %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i10 ]
  %i.ah = icmp ult i64 %i.ag, %3
  br i1 %i.ah, label %_ZN4absl4Cord7AdvanceEPNS0_12CharIteratorEm.exit.thread36, label %bb.n

bb.n:                                             ; preds = %_ZN4absl4Cord7AdvanceEPNS0_12CharIteratorEm.exit14
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %5, ptr noundef nonnull align 8 dereferenceable(152) %2, i64 152, i1 false)
  %i.ai = load i64, ptr %i.f, align 8             ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i.i, label %bb.o, label %_ZN4absl4Cord14ChunkRemainingERKNS0_12CharIteratorE.exit.i, !prof !7

bb.o:                                             ; preds = %bb.n
  call void @__assert_fail(ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.31, i32 noundef 1585, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZNK4absl4Cord13ChunkIteratordeEvENKUlvE_clEv) #20
  unreachable

_ZN4absl4Cord14ChunkRemainingERKNS0_12CharIteratorE.exit.i: ; preds = %bb.n
  %.sroa.0.0.pre34.i = load i64, ptr %5, align 8
  %.sroa.7.0.i.pre = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  br label %bb.p

bb.p:                                             ; preds = %_ZN4absl4Cord7AdvanceEPNS0_12CharIteratorEm.exit.i, %_ZN4absl4Cord14ChunkRemainingERKNS0_12CharIteratorE.exit.i
  %.sroa.7.0.i = phi ptr [ %.sroa.7.0.i.pre, %_ZN4absl4Cord14ChunkRemainingERKNS0_12CharIteratorE.exit.i ], [ %.sroa.7.0.i46, %_ZN4absl4Cord7AdvanceEPNS0_12CharIteratorEm.exit.i ] ; 2 uses
  %i.aj = phi i64 [ %i.ai, %_ZN4absl4Cord14ChunkRemainingERKNS0_12CharIteratorE.exit.i ], [ %.pr39.i, %_ZN4absl4Cord7AdvanceEPNS0_12CharIteratorEm.exit.i ] ; 4 uses
  %i.ak = phi i64 [ %.sroa.0.0.pre34.i, %_ZN4absl4Cord14ChunkRemainingERKNS0_12CharIteratorE.exit.i ], [ %i.bi, %_ZN4absl4Cord7AdvanceEPNS0_12CharIteratorEm.exit.i ] ; 5 uses
  %.sroa.018.0.i = phi i64 [ %3, %_ZN4absl4Cord14ChunkRemainingERKNS0_12CharIteratorE.exit.i ], [ %i.ao, %_ZN4absl4Cord7AdvanceEPNS0_12CharIteratorEm.exit.i ] ; 4 uses
  %.sroa.5.0.i = phi ptr [ %4, %_ZN4absl4Cord14ChunkRemainingERKNS0_12CharIteratorE.exit.i ], [ %i.an, %_ZN4absl4Cord7AdvanceEPNS0_12CharIteratorEm.exit.i ] ; 2 uses
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.q, label %_ZN4absl10StartsWithESt17basic_string_viewIcSt11char_traitsIcEES3_.exit.i.i

bb.q:                                             ; preds = %bb.p
  call void @__assert_fail(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.1, i32 noundef 1193, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl12_GLOBAL__N_119IsSubstringInCordAtENS_4Cord12CharIteratorESt17basic_string_viewIcSt11char_traitsIcEE) #20
  unreachable

_ZN4absl10StartsWithESt17basic_string_viewIcSt11char_traitsIcEES3_.exit.i.i: ; preds = %bb.p
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 %.sroa.018.0.i, i64 %i.ak) ; 9 uses
  %bcmp.i.i.i.i = call i32 @bcmp(ptr %.sroa.5.0.i, ptr %.sroa.7.0.i, i64 %.sroa.speculated.i)
  %i.am = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.am, label %bb.r, label %bb.aa

bb.r:                                             ; preds = %_ZN4absl10StartsWithESt17basic_string_viewIcSt11char_traitsIcEES3_.exit.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i, i64 %.sroa.speculated.i
  %i.ao = sub nuw i64 %.sroa.018.0.i, %.sroa.speculated.i ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %_ZN4absl4Cord7AdvanceEPNS0_12CharIteratorEm.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.not.i.i5.i = icmp ult i64 %i.aj, %.sroa.speculated.i
  br i1 %.not.i.i5.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @__assert_fail(ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.31, i32 noundef 1601, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl4Cord13ChunkIterator12AdvanceBytesEm) #20
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.aq = icmp ult i64 %.sroa.018.0.i, %i.ak
  br i1 %i.aq, label %_ZN4absl4Cord13ChunkIterator17RemoveChunkPrefixEm.exit.i.i.i, label %bb.v, !prof !5

_ZN4absl4Cord13ChunkIterator17RemoveChunkPrefixEm.exit.i.i.i: ; preds = %bb.u
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.7.0.i, i64 %.sroa.speculated.i ; 2 uses
  store ptr %i.ar, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %i.as = sub nuw i64 %i.ak, %.sroa.speculated.i  ; 2 uses
  store i64 %i.as, ptr %5, align 8
  %i.at = sub nuw i64 %i.aj, %.sroa.speculated.i  ; 2 uses
  store i64 %i.at, ptr %i.f, align 8
  br label %_ZN4absl4Cord7AdvanceEPNS0_12CharIteratorEm.exit.i

bb.v:                                             ; preds = %bb.u
  %i.au = load i32, ptr %i.g, align 8             ; 2 uses
  %i.av = icmp sgt i32 %i.au, -1
  br i1 %i.av, label %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.i.i.i, label %_ZN4absl4Cord7AdvanceEPNS0_12CharIteratorEm.exit.thread.i

_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.i.i.i: ; preds = %bb.v
  %i.aw = zext nneg i32 %i.au to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.aw
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  %.not6.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not6.i.i.i, label %_ZN4absl4Cord7AdvanceEPNS0_12CharIteratorEm.exit.thread.i, label %bb.w

_ZN4absl4Cord7AdvanceEPNS0_12CharIteratorEm.exit.thread.i: ; preds = %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.i.i.i, %bb.v
  store i64 0, ptr %i.f, align 8
  br label %.loopexit.i

bb.w:                                             ; preds = %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.i.i.i
  %i.az = sub i64 %i.aj, %.sroa.speculated.i      ; 2 uses
  store i64 %i.az, ptr %i.f, align 8
  %.not6.i = icmp eq i64 %i.aj, %.sroa.speculated.i
  br i1 %.not6.i, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.not64 = icmp ugt i64 %i.ak, %.sroa.018.0.i
  br i1 %.not64, label %_ZNK4absl13cord_internal18CordRepBtreeReader6lengthEv.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ba = call { i64, ptr } @_ZN4absl13cord_internal18CordRepBtreeReader4NextEv(ptr noundef nonnull align 8 dereferenceable(120) %i.i) ; 2 uses
  %i.bb = extractvalue { i64, ptr } %i.ba, 0      ; 2 uses
  %i.bc = extractvalue { i64, ptr } %i.ba, 1      ; 2 uses
  store i64 %i.bb, ptr %5, align 8
  store ptr %i.bc, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  br label %_ZN4absl4Cord13ChunkIterator17AdvanceBytesBtreeEm.exit

_ZNK4absl13cord_internal18CordRepBtreeReader6lengthEv.exit.i: ; preds = %bb.x
  %i.bd = load i64, ptr %i.ay, align 8
  %i.be = sub i64 %i.bd, %i.az
  %i.bf = call { i64, ptr } @_ZN4absl13cord_internal18CordRepBtreeReader4SeekEm(ptr noundef nonnull align 8 dereferenceable(120) %i.i, i64 noundef %i.be) ; 2 uses
  %i.bg = extractvalue { i64, ptr } %i.bf, 0      ; 2 uses
  %i.bh = extractvalue { i64, ptr } %i.bf, 1      ; 2 uses
  store i64 %i.bg, ptr %5, align 8
  store ptr %i.bh, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  br label %_ZN4absl4Cord13ChunkIterator17AdvanceBytesBtreeEm.exit

bb.z:                                             ; preds = %bb.w
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %5, i8 0, i64 16, i1 false)
  br label %_ZN4absl4Cord13ChunkIterator17AdvanceBytesBtreeEm.exit

_ZN4absl4Cord13ChunkIterator17AdvanceBytesBtreeEm.exit: ; preds = %bb.y, %_ZNK4absl13cord_internal18CordRepBtreeReader6lengthEv.exit.i, %bb.z
  %.sroa.0.0.pre.i = phi i64 [ %i.bb, %bb.y ], [ %i.bg, %_ZNK4absl13cord_internal18CordRepBtreeReader6lengthEv.exit.i ], [ 0, %bb.z ]
  %.sroa.7.0.i47 = phi ptr [ %i.bc, %bb.y ], [ %i.bh, %_ZNK4absl13cord_internal18CordRepBtreeReader6lengthEv.exit.i ], [ null, %bb.z ]
  %.pr.pre.i = load i64, ptr %i.f, align 8
  br label %_ZN4absl4Cord7AdvanceEPNS0_12CharIteratorEm.exit.i

_ZN4absl4Cord7AdvanceEPNS0_12CharIteratorEm.exit.i: ; preds = %_ZN4absl4Cord13ChunkIterator17AdvanceBytesBtreeEm.exit, %_ZN4absl4Cord13ChunkIterator17RemoveChunkPrefixEm.exit.i.i.i
  %.sroa.7.0.i46 = phi ptr [ %.sroa.7.0.i47, %_ZN4absl4Cord13ChunkIterator17AdvanceBytesBtreeEm.exit ], [ %i.ar, %_ZN4absl4Cord13ChunkIterator17RemoveChunkPrefixEm.exit.i.i.i ]
  %.pr39.i = phi i64 [ %.pr.pre.i, %_ZN4absl4Cord13ChunkIterator17AdvanceBytesBtreeEm.exit ], [ %i.at, %_ZN4absl4Cord13ChunkIterator17RemoveChunkPrefixEm.exit.i.i.i ] ; 2 uses
  %i.bi = phi i64 [ %.sroa.0.0.pre.i, %_ZN4absl4Cord13ChunkIterator17AdvanceBytesBtreeEm.exit ], [ %i.as, %_ZN4absl4Cord13ChunkIterator17RemoveChunkPrefixEm.exit.i.i.i ]
  %.not.i.i6.i = icmp eq i64 %.pr39.i, 0
  br i1 %.not.i.i6.i, label %.loopexit.i, label %bb.p, !prof !62, !llvm.loop !63

.loopexit.i:                                      ; preds = %_ZN4absl4Cord7AdvanceEPNS0_12CharIteratorEm.exit.i, %_ZN4absl4Cord7AdvanceEPNS0_12CharIteratorEm.exit.thread.i
  call void @__assert_fail(ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.31, i32 noundef 1585, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZNK4absl4Cord13ChunkIteratordeEvENKUlvE_clEv) #20
  unreachable

bb.aa:                                            ; preds = %_ZN4absl10StartsWithESt17basic_string_viewIcSt11char_traitsIcEES3_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.bj = load i64, ptr %i.b, align 8             ; 2 uses
  %.not.i.i16 = icmp eq i64 %i.bj, 0
  br i1 %.not.i.i16, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void @__assert_fail(ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.31, i32 noundef 1601, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl4Cord13ChunkIterator12AdvanceBytesEm) #20
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.bk = load i64, ptr %2, align 8               ; 2 uses
  %i.bl = icmp ugt i64 %i.bk, 1
  br i1 %i.bl, label %_ZN4absl4Cord13ChunkIterator17RemoveChunkPrefixEm.exit.i.i20, label %bb.ad, !prof !5

_ZN4absl4Cord13ChunkIterator17RemoveChunkPrefixEm.exit.i.i20: ; preds = %bb.ac
  %i.bm = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  store ptr %i.bn, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.bo = add i64 %i.bk, -1
  store i64 %i.bo, ptr %2, align 8
  %i.bp = add i64 %i.bj, -1
  store i64 %i.bp, ptr %i.b, align 8
  br label %thread-pre-split

bb.ad:                                            ; preds = %bb.ac
  %i.bq = load i32, ptr %i.d, align 8             ; 2 uses
  %i.br = icmp sgt i32 %i.bq, -1
  br i1 %i.br, label %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.i.i18, label %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i17

_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.i.i18: ; preds = %bb.ad
  %i.bs = zext nneg i32 %i.bq to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.bs
  %i.bu = load ptr, ptr %i.bt, align 8
  %.not6.i.i19 = icmp eq ptr %i.bu, null
  br i1 %.not6.i.i19, label %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i17, label %bb.ae

bb.ae:                                            ; preds = %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.i.i18
  call void @_ZN4absl4Cord13ChunkIterator17AdvanceBytesBtreeEm(ptr noundef nonnull align 8 dereferenceable(152) %2, i64 noundef 1)
  br label %thread-pre-split

_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i17: ; preds = %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.i.i18, %bb.ad
  store i64 0, ptr %i.b, align 8
  br label %thread-pre-split

_ZN4absl4Cord7AdvanceEPNS0_12CharIteratorEm.exit: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(152) %2, i64 152, i1 false)
  br label %bb.af

_ZN4absl4Cord7AdvanceEPNS0_12CharIteratorEm.exit.thread36: ; preds = %_ZN4absl4Cord7AdvanceEPNS0_12CharIteratorEm.exit14, %thread-pre-split
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %0, i8 0, i64 152, i1 false), !alias.scope !64
  store i32 -1, ptr %i.bv, align 8, !alias.scope !64
  br label %bb.af

bb.af:                                            ; preds = %_ZN4absl4Cord7AdvanceEPNS0_12CharIteratorEm.exit, %_ZN4absl4Cord7AdvanceEPNS0_12CharIteratorEm.exit.thread36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4absl4Cord4FindESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable sret(%"class.absl::Cord::CharIterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 %2, ptr %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.absl::Cord::CharIterator", align 8 ; 10 uses
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %0, i8 0, i64 40, i1 false), !alias.scope !67
  store i32 -1, ptr %i.c, align 8, !alias.scope !67
  %i.d = load i8, ptr %1, align 8, !noalias !67   ; 2 uses
  %i.e = trunc i8 %i.d to i1                      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !noalias !67 ; 3 uses
  %.not8.i.i.i = icmp ne ptr %i.g, null
  %.not.not.i.i.i = select i1 %i.e, i1 %.not8.i.i.i, i1 false
  br i1 %.not.not.i.i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = load i64, ptr %i.g, align 8, !noalias !67 ; 2 uses
  store i64 %i.h, ptr %i.b, align 8, !alias.scope !67
  %.not7.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not7.i.i.i, label %bb.e, label %bb.d, !prof !7

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4absl4Cord13ChunkIterator8InitTreeEPNS_13cord_internal7CordRepE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull %i.g)
  br label %_ZNK4absl4Cord10char_beginEv.exit

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %0, i8 0, i64 16, i1 false), !alias.scope !67
  br label %_ZNK4absl4Cord10char_beginEv.exit

bb.f:                                             ; preds = %bb.b
  br i1 %i.e, label %bb.g, label %_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i.i, !prof !7

bb.g:                                             ; preds = %bb.f
  tail call void @__assert_fail(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.68, i32 noundef 758, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZNK4absl13cord_internal10InlineData3Rep11inline_sizeEvENKUlvE_clEv) #20, !noalias !67
  unreachable

_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i.i: ; preds = %bb.f
  %i.i = sext i8 %i.d to i64
  %i.j = lshr exact i64 %i.i, 1                   ; 2 uses
  store i64 %i.j, ptr %i.b, align 8, !alias.scope !67
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i64 %i.j, ptr %0, align 8, !alias.scope !67
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !67
  br label %_ZNK4absl4Cord10char_beginEv.exit

bb.h:                                             ; preds = %bb.a
  %i.l = load i8, ptr %1, align 8                 ; 2 uses
  %i.m = trunc i8 %i.l to i1
  br i1 %i.m, label %_ZNK4absl4Cord4sizeEv.exit, label %_ZNK4absl4Cord4sizeEv.exit.thread

_ZNK4absl4Cord4sizeEv.exit:                       ; preds = %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = load i64, ptr %i.o, align 8              ; 3 uses
  %i.q = icmp ugt i64 %2, %i.p
  br i1 %i.q, label %bb.i, label %_ZNK4absl4Cord4sizeEv.exit5

_ZNK4absl4Cord4sizeEv.exit.thread:                ; preds = %bb.h
  %i.r = sext i8 %i.l to i64
  %i.s = lshr exact i64 %i.r, 1                   ; 4 uses
  %i.t = icmp ugt i64 %2, %i.s
  br i1 %i.t, label %bb.i, label %_ZNK4absl4Cord4sizeEv.exit5.thread

bb.i:                                             ; preds = %_ZNK4absl4Cord4sizeEv.exit.thread, %_ZNK4absl4Cord4sizeEv.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
end_hunk_3
begin_hunk_4_@_ZNK4absl4Cord4FindERKS0_:bb.a
  %.sroa.4.0..sroa_idx.i.i.i27 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bh, ptr %.sroa.4.0..sroa_idx.i.i.i27, align 8, !alias.scope !90
  br label %_ZNK4absl4Cord10char_beginEv.exit

_ZN4absleqERKNS_4CordES2_.exit.thread75:          ; preds = %_ZNK4absl4Cord4sizeEv.exit11.i, %_ZN4absleqERKNS_4CordES2_.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %0, i8 0, i64 152, i1 false), !alias.scope !93
  store i32 -1, ptr %i.bi, align 8, !alias.scope !93
  br label %_ZNK4absl4Cord10char_beginEv.exit

bb.p:                                             ; preds = %_ZNK4absl4Cord4sizeEv.exit21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96)
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %5, i8 0, i64 40, i1 false), !alias.scope !96
  store i32 -1, ptr %i.bk, align 8, !alias.scope !96
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !noalias !96 ; 3 uses
  %.not8.i.i.i30 = icmp ne ptr %i.bm, null
  %.not.not.i.i.i31 = select i1 %i.b, i1 %.not8.i.i.i30, i1 false
  br i1 %.not.not.i.i.i31, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.bn = load i64, ptr %i.bm, align 8, !noalias !96 ; 2 uses
  store i64 %i.bn, ptr %i.bj, align 8, !alias.scope !96
  %.not7.i.i.i34 = icmp eq i64 %i.bn, 0
  br i1 %.not7.i.i.i34, label %_ZNK4absl4Cord10char_beginEv.exit35.thread, label %bb.r, !prof !7

bb.r:                                             ; preds = %bb.q
  call void @_ZN4absl4Cord13ChunkIterator8InitTreeEPNS_13cord_internal7CordRepE(ptr noundef nonnull align 8 dereferenceable(152) %5, ptr noundef nonnull %i.bm)
  %.pr = load i64, ptr %i.bj, align 8
  br label %_ZNK4absl4Cord10char_beginEv.exit35

_ZNK4absl4Cord10char_beginEv.exit35.thread:       ; preds = %bb.q
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %5, i8 0, i64 16, i1 false), !alias.scope !96
  br label %bb.u

bb.s:                                             ; preds = %bb.p
  br i1 %i.b, label %bb.t, label %_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i.i32, !prof !7

bb.t:                                             ; preds = %bb.s
  tail call void @__assert_fail(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.68, i32 noundef 758, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZNK4absl13cord_internal10InlineData3Rep11inline_sizeEvENKUlvE_clEv) #20, !noalias !96
  unreachable

_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i.i32: ; preds = %bb.s
  %i.bo = sext i8 %i.a to i64
  %i.bp = lshr exact i64 %i.bo, 1                 ; 3 uses
  store i64 %i.bp, ptr %i.bj, align 8, !alias.scope !96
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i64 %i.bp, ptr %5, align 8, !alias.scope !96
  %.sroa.4.0..sroa_idx.i.i.i33 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.bq, ptr %.sroa.4.0..sroa_idx.i.i.i33, align 8, !alias.scope !96
  br label %_ZNK4absl4Cord10char_beginEv.exit35

_ZNK4absl4Cord10char_beginEv.exit35:              ; preds = %bb.r, %_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i.i32
  %i.br = phi i64 [ %.pr, %bb.r ], [ %i.bp, %_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i.i32 ]
  %.not.i.i = icmp eq i64 %i.br, 0
  br i1 %.not.i.i, label %bb.u, label %_ZN4absl4Cord14ChunkRemainingERKNS0_12CharIteratorE.exit, !prof !99

bb.u:                                             ; preds = %_ZNK4absl4Cord10char_beginEv.exit35.thread, %_ZNK4absl4Cord10char_beginEv.exit35
  call void @__assert_fail(ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.31, i32 noundef 1585, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZNK4absl4Cord13ChunkIteratordeEvENKUlvE_clEv) #20
  unreachable

_ZN4absl4Cord14ChunkRemainingERKNS0_12CharIteratorE.exit: ; preds = %_ZNK4absl4Cord10char_beginEv.exit35
  %.sroa.0.0.copyload.i.i = load i64, ptr %5, align 8 ; 15 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !100)
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 8 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %6, i8 0, i64 40, i1 false), !alias.scope !100
  store i32 -1, ptr %i.bt, align 8, !alias.scope !100
  %i.bu = load i8, ptr %1, align 8, !noalias !100 ; 2 uses
  %i.bv = trunc i8 %i.bu to i1                    ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !noalias !100 ; 3 uses
  %.not8.i.i.i36 = icmp ne ptr %i.bx, null
  %.not.not.i.i.i37 = select i1 %i.bv, i1 %.not8.i.i.i36, i1 false
  br i1 %.not.not.i.i.i37, label %bb.v, label %bb.y

bb.v:                                             ; preds = %_ZN4absl4Cord14ChunkRemainingERKNS0_12CharIteratorE.exit
  %i.by = load i64, ptr %i.bx, align 8, !noalias !100 ; 2 uses
  store i64 %i.by, ptr %i.bs, align 8, !alias.scope !100
  %.not7.i.i.i40 = icmp eq i64 %i.by, 0
  br i1 %.not7.i.i.i40, label %bb.x, label %bb.w, !prof !7

bb.w:                                             ; preds = %bb.v
  call void @_ZN4absl4Cord13ChunkIterator8InitTreeEPNS_13cord_internal7CordRepE(ptr noundef nonnull align 8 dereferenceable(152) %6, ptr noundef nonnull %i.bx)
  br label %_ZNK4absl4Cord10char_beginEv.exit41

bb.x:                                             ; preds = %bb.v
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %6, i8 0, i64 16, i1 false), !alias.scope !100
  br label %_ZNK4absl4Cord10char_beginEv.exit41

bb.y:                                             ; preds = %_ZN4absl4Cord14ChunkRemainingERKNS0_12CharIteratorE.exit
  br i1 %i.bv, label %bb.z, label %_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i.i38, !prof !7

bb.z:                                             ; preds = %bb.y
  call void @__assert_fail(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.68, i32 noundef 758, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZNK4absl13cord_internal10InlineData3Rep11inline_sizeEvENKUlvE_clEv) #20, !noalias !100
  unreachable

_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i.i38: ; preds = %bb.y
  %i.bz = sext i8 %i.bu to i64
  %i.ca = lshr exact i64 %i.bz, 1                 ; 2 uses
  store i64 %i.ca, ptr %i.bs, align 8, !alias.scope !100
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i64 %i.ca, ptr %6, align 8, !alias.scope !100
  %.sroa.4.0..sroa_idx.i.i.i39 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.cb, ptr %.sroa.4.0..sroa_idx.i.i.i39, align 8, !alias.scope !100
  br label %_ZNK4absl4Cord10char_beginEv.exit41

_ZNK4absl4Cord10char_beginEv.exit41:              ; preds = %bb.w, %bb.x, %_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i.i38
  %i.cc = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 5 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i45 = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 3 uses
  %.not5.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, 0 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.ch = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.ci = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.ck = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @_ZNK4absl4Cord8FindImplENS0_12CharIteratorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.absl::Cord::CharIterator") align 8 %7, ptr nonnull align 8 poison, ptr noundef nonnull byval(%"class.absl::Cord::CharIterator") align 8 %6, i64 %.sroa.0.0.copyload.i.i, ptr %.sroa.2.0.copyload.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %6, ptr noundef nonnull align 8 dereferenceable(152) %7, i64 152, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.cm = load i64, ptr %i.bs, align 8            ; 2 uses
  %i.cn = icmp eq i64 %i.cm, 0
  %i.co = icmp ult i64 %i.cm, %i.t
  %i.cp = select i1 %i.cn, i1 true, i1 %i.co
  br i1 %i.cp, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4absl4Cord10char_beginEv.exit41, %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %8, ptr noundef nonnull align 8 dereferenceable(152) %6, i64 152, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !103)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %9, i8 0, i64 40, i1 false), !alias.scope !103
  store i32 -1, ptr %i.cd, align 8, !alias.scope !103
  %i.cq = load i8, ptr %2, align 8, !noalias !103 ; 2 uses
  %i.cr = trunc i8 %i.cq to i1                    ; 2 uses
  %i.cs = load ptr, ptr %i.bl, align 8, !noalias !103 ; 3 uses
  %.not8.i.i.i42 = icmp ne ptr %i.cs, null
  %.not.not.i.i.i43 = select i1 %i.cr, i1 %.not8.i.i.i42, i1 false
  br i1 %.not.not.i.i.i43, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %.lr.ph
  %i.ct = load i64, ptr %i.cs, align 8, !noalias !103 ; 2 uses
  store i64 %i.ct, ptr %i.cc, align 8, !alias.scope !103
  %.not7.i.i.i46 = icmp eq i64 %i.ct, 0
  br i1 %.not7.i.i.i46, label %bb.ac, label %bb.ab, !prof !7

bb.ab:                                            ; preds = %bb.aa
  call void @_ZN4absl4Cord13ChunkIterator8InitTreeEPNS_13cord_internal7CordRepE(ptr noundef nonnull align 8 dereferenceable(152) %9, ptr noundef nonnull %i.cs)
  br label %_ZNK4absl4Cord10char_beginEv.exit47

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %9, i8 0, i64 16, i1 false), !alias.scope !103
  br label %_ZNK4absl4Cord10char_beginEv.exit47

bb.ad:                                            ; preds = %.lr.ph
  br i1 %i.cr, label %bb.ae, label %_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i.i44, !prof !7

bb.ae:                                            ; preds = %bb.ad
  call void @__assert_fail(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.68, i32 noundef 758, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZNK4absl13cord_internal10InlineData3Rep11inline_sizeEvENKUlvE_clEv) #20, !noalias !103
  unreachable

_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i.i44: ; preds = %bb.ad
  %i.cu = sext i8 %i.cq to i64
  %i.cv = lshr exact i64 %i.cu, 1                 ; 2 uses
  store i64 %i.cv, ptr %i.cc, align 8, !alias.scope !103
  store i64 %i.cv, ptr %9, align 8, !alias.scope !103
  store ptr %i.ce, ptr %.sroa.4.0..sroa_idx.i.i.i45, align 8, !alias.scope !103
  br label %_ZNK4absl4Cord10char_beginEv.exit47

_ZNK4absl4Cord10char_beginEv.exit47:              ; preds = %bb.ab, %bb.ac, %_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i.i44
  %i.cw = load i64, ptr %i.cf, align 8            ; 2 uses
  %.not.i.i49 = icmp ult i64 %i.cw, %.sroa.0.0.copyload.i.i
  br i1 %.not.i.i49, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %_ZNK4absl4Cord10char_beginEv.exit47
  call void @__assert_fail(ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.31, i32 noundef 1601, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl4Cord13ChunkIterator12AdvanceBytesEm) #20
  unreachable

bb.ag:                                            ; preds = %_ZNK4absl4Cord10char_beginEv.exit47
  %i.cx = load i64, ptr %8, align 8               ; 2 uses
  %i.cy = icmp ult i64 %.sroa.0.0.copyload.i.i, %i.cx
  br i1 %i.cy, label %_ZN4absl4Cord13ChunkIterator17RemoveChunkPrefixEm.exit.i.i, label %bb.ah, !prof !5

_ZN4absl4Cord13ChunkIterator17RemoveChunkPrefixEm.exit.i.i: ; preds = %bb.ag
  %i.cz = load ptr, ptr %i.ci, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %.sroa.0.0.copyload.i.i
  store ptr %i.da, ptr %i.ci, align 8
  %i.db = sub nuw i64 %i.cx, %.sroa.0.0.copyload.i.i
  store i64 %i.db, ptr %8, align 8
  %i.dc = sub nuw i64 %i.cw, %.sroa.0.0.copyload.i.i
  store i64 %i.dc, ptr %i.cf, align 8
  br label %_ZN4absl4Cord7AdvanceEPNS0_12CharIteratorEm.exit

bb.ah:                                            ; preds = %bb.ag
  br i1 %.not5.i.i, label %_ZN4absl4Cord7AdvanceEPNS0_12CharIteratorEm.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dd = load i32, ptr %i.cg, align 8            ; 2 uses
  %i.de = icmp sgt i32 %i.dd, -1
  br i1 %i.de, label %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.i.i, label %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i

_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.i.i: ; preds = %bb.ai
  %i.df = zext nneg i32 %i.dd to i64
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.df
  %i.dh = load ptr, ptr %i.dg, align 8
  %.not6.i.i = icmp eq ptr %i.dh, null
  br i1 %.not6.i.i, label %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i, label %bb.aj

bb.aj:                                            ; preds = %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.i.i
  call void @_ZN4absl4Cord13ChunkIterator17AdvanceBytesBtreeEm(ptr noundef nonnull align 8 dereferenceable(152) %8, i64 noundef %.sroa.0.0.copyload.i.i)
  br label %_ZN4absl4Cord7AdvanceEPNS0_12CharIteratorEm.exit

_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i: ; preds = %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.i.i, %bb.ai
  store i64 0, ptr %i.cf, align 8
  br label %_ZN4absl4Cord7AdvanceEPNS0_12CharIteratorEm.exit

_ZN4absl4Cord7AdvanceEPNS0_12CharIteratorEm.exit: ; preds = %_ZN4absl4Cord13ChunkIterator17RemoveChunkPrefixEm.exit.i.i, %bb.ah, %bb.aj, %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i
  %i.di = load i64, ptr %i.cc, align 8            ; 2 uses
  %.not.i.i51 = icmp ult i64 %i.di, %.sroa.0.0.copyload.i.i
  br i1 %.not.i.i51, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %_ZN4absl4Cord7AdvanceEPNS0_12CharIteratorEm.exit
  call void @__assert_fail(ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.31, i32 noundef 1601, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl4Cord13ChunkIterator12AdvanceBytesEm) #20
  unreachable

bb.al:                                            ; preds = %_ZN4absl4Cord7AdvanceEPNS0_12CharIteratorEm.exit
  %i.dj = load i64, ptr %9, align 8               ; 2 uses
  %i.dk = icmp ult i64 %.sroa.0.0.copyload.i.i, %i.dj
  br i1 %i.dk, label %_ZN4absl4Cord13ChunkIterator17RemoveChunkPrefixEm.exit.i.i56, label %bb.am, !prof !5

_ZN4absl4Cord13ChunkIterator17RemoveChunkPrefixEm.exit.i.i56: ; preds = %bb.al
  %i.dl = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i45, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %.sroa.0.0.copyload.i.i
  store ptr %i.dm, ptr %.sroa.4.0..sroa_idx.i.i.i45, align 8
  %i.dn = sub nuw i64 %i.dj, %.sroa.0.0.copyload.i.i
  store i64 %i.dn, ptr %9, align 8
  %i.do = sub nuw i64 %i.di, %.sroa.0.0.copyload.i.i
  store i64 %i.do, ptr %i.cc, align 8
  br label %_ZN4absl4Cord7AdvanceEPNS0_12CharIteratorEm.exit57

bb.am:                                            ; preds = %bb.al
  br i1 %.not5.i.i, label %_ZN4absl4Cord7AdvanceEPNS0_12CharIteratorEm.exit57, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dp = load i32, ptr %i.cd, align 8            ; 2 uses
  %i.dq = icmp sgt i32 %i.dp, -1
  br i1 %i.dq, label %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.i.i54, label %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i53

_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.i.i54: ; preds = %bb.an
  %i.dr = zext nneg i32 %i.dp to i64
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.dr
  %i.dt = load ptr, ptr %i.ds, align 8
  %.not6.i.i55 = icmp eq ptr %i.dt, null
  br i1 %.not6.i.i55, label %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i53, label %bb.ao

bb.ao:                                            ; preds = %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.i.i54
  call void @_ZN4absl4Cord13ChunkIterator17AdvanceBytesBtreeEm(ptr noundef nonnull align 8 dereferenceable(152) %9, i64 noundef %.sroa.0.0.copyload.i.i)
  br label %_ZN4absl4Cord7AdvanceEPNS0_12CharIteratorEm.exit57

_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i53: ; preds = %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.i.i54, %bb.an
  store i64 0, ptr %i.cc, align 8
  br label %_ZN4absl4Cord7AdvanceEPNS0_12CharIteratorEm.exit57

_ZN4absl4Cord7AdvanceEPNS0_12CharIteratorEm.exit57: ; preds = %_ZN4absl4Cord13ChunkIterator17RemoveChunkPrefixEm.exit.i.i56, %bb.am, %bb.ao, %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i53
  %i.du = call fastcc noundef zeroext i1 @_ZN4absl12_GLOBAL__N_117IsSubcordInCordAtENS_4Cord12CharIteratorES2_S2_(ptr noundef nonnull byval(%"class.absl::Cord::CharIterator") align 8 %8, ptr noundef nonnull byval(%"class.absl::Cord::CharIterator") align 8 %9, i64 0)
  br i1 %i.du, label %.thread78, label %bb.ap

bb.ap:                                            ; preds = %_ZN4absl4Cord7AdvanceEPNS0_12CharIteratorEm.exit57
  %i.dv = load i64, ptr %i.bs, align 8            ; 2 uses
  %.not.i.i59 = icmp eq i64 %i.dv, 0
  br i1 %.not.i.i59, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  call void @__assert_fail(ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.31, i32 noundef 1601, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl4Cord13ChunkIterator12AdvanceBytesEm) #20
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %i.dw = load i64, ptr %6, align 8               ; 2 uses
  %i.dx = icmp ugt i64 %i.dw, 1
  br i1 %i.dx, label %_ZN4absl4Cord13ChunkIterator17RemoveChunkPrefixEm.exit.i.i63, label %bb.as, !prof !5

_ZN4absl4Cord13ChunkIterator17RemoveChunkPrefixEm.exit.i.i63: ; preds = %bb.ar
  %i.dy = load ptr, ptr %i.cl, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 1
  store ptr %i.dz, ptr %i.cl, align 8
  %i.ea = add i64 %i.dw, -1
  store i64 %i.ea, ptr %6, align 8
  %i.eb = add i64 %i.dv, -1                       ; 2 uses
  store i64 %i.eb, ptr %i.bs, align 8
  br label %_ZN4absl4Cord7AdvanceEPNS0_12CharIteratorEm.exit64

bb.as:                                            ; preds = %bb.ar
  %i.ec = load i32, ptr %i.bt, align 8            ; 2 uses
  %i.ed = icmp sgt i32 %i.ec, -1
  br i1 %i.ed, label %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.i.i61, label %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i60

_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.i.i61: ; preds = %bb.as
  %i.ee = zext nneg i32 %i.ec to i64
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.ee
  %i.eg = load ptr, ptr %i.ef, align 8
  %.not6.i.i62 = icmp eq ptr %i.eg, null
  br i1 %.not6.i.i62, label %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i60, label %bb.at

bb.at:                                            ; preds = %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.i.i61
  call void @_ZN4absl4Cord13ChunkIterator17AdvanceBytesBtreeEm(ptr noundef nonnull align 8 dereferenceable(152) %6, i64 noundef 1)
  %.pre = load i64, ptr %i.bs, align 8
  br label %_ZN4absl4Cord7AdvanceEPNS0_12CharIteratorEm.exit64

_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i60: ; preds = %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.i.i61, %bb.as
  store i64 0, ptr %i.bs, align 8
  br label %_ZN4absl4Cord7AdvanceEPNS0_12CharIteratorEm.exit64

_ZN4absl4Cord7AdvanceEPNS0_12CharIteratorEm.exit64: ; preds = %_ZN4absl4Cord13ChunkIterator17RemoveChunkPrefixEm.exit.i.i63, %bb.at, %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i60
  %i.eh = phi i64 [ %i.eb, %_ZN4absl4Cord13ChunkIterator17RemoveChunkPrefixEm.exit.i.i63 ], [ %.pre, %bb.at ], [ 0, %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i60 ] ; 2 uses
  %i.ei = icmp ult i64 %i.eh, %i.t
  br i1 %i.ei, label %.thread81, label %bb.au

bb.au:                                            ; preds = %_ZN4absl4Cord7AdvanceEPNS0_12CharIteratorEm.exit64
  %i.ej = icmp eq i64 %i.eh, %i.t
  br i1 %i.ej, label %bb.av, label %bb.bb

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %4, ptr noundef nonnull align 8 dereferenceable(152) %6, i64 152, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.experimental.noalias.scope.decl(metadata !106)
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %3, i8 0, i64 40, i1 false), !alias.scope !106
  store i32 -1, ptr %i.el, align 8, !alias.scope !106
  %i.em = load i8, ptr %2, align 8, !noalias !106 ; 2 uses
  %i.en = trunc i8 %i.em to i1                    ; 2 uses
  %i.eo = load ptr, ptr %i.bl, align 8, !noalias !106 ; 3 uses
  %.not8.i.i.i.i = icmp ne ptr %i.eo, null
  %.not.not.i.i.i.i = select i1 %i.en, i1 %.not8.i.i.i.i, i1 false
  br i1 %.not.not.i.i.i.i, label %bb.aw, label %bb.az

bb.aw:                                            ; preds = %bb.av
  %i.ep = load i64, ptr %i.eo, align 8, !noalias !106 ; 2 uses
  store i64 %i.ep, ptr %i.ek, align 8, !alias.scope !106
  %.not7.i.i.i.i = icmp eq i64 %i.ep, 0
  br i1 %.not7.i.i.i.i, label %bb.ay, label %bb.ax, !prof !7

bb.ax:                                            ; preds = %bb.aw
  call void @_ZN4absl4Cord13ChunkIterator8InitTreeEPNS_13cord_internal7CordRepE(ptr noundef nonnull align 8 dereferenceable(152) %3, ptr noundef nonnull %i.eo)
  br label %_ZN4absl12_GLOBAL__N_117IsSubcordInCordAtENS_4Cord12CharIteratorERKS1_.exit

bb.ay:                                            ; preds = %bb.aw
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %3, i8 0, i64 16, i1 false), !alias.scope !106
  br label %_ZN4absl12_GLOBAL__N_117IsSubcordInCordAtENS_4Cord12CharIteratorERKS1_.exit

bb.az:                                            ; preds = %bb.av
  br i1 %i.en, label %bb.ba, label %_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i.i.i, !prof !7

bb.ba:                                            ; preds = %bb.az
  call void @__assert_fail(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.68, i32 noundef 758, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZNK4absl13cord_internal10InlineData3Rep11inline_sizeEvENKUlvE_clEv) #20, !noalias !106
  unreachable

_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i.i.i: ; preds = %bb.az
  %i.eq = sext i8 %i.em to i64
  %i.er = lshr exact i64 %i.eq, 1                 ; 2 uses
  store i64 %i.er, ptr %i.ek, align 8, !alias.scope !106
  store i64 %i.er, ptr %3, align 8, !alias.scope !106
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ce, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !106
  br label %_ZN4absl12_GLOBAL__N_117IsSubcordInCordAtENS_4Cord12CharIteratorERKS1_.exit

_ZN4absl12_GLOBAL__N_117IsSubcordInCordAtENS_4Cord12CharIteratorERKS1_.exit: ; preds = %bb.ax, %bb.ay, %_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i.i.i
  %i.es = call fastcc noundef zeroext i1 @_ZN4absl12_GLOBAL__N_117IsSubcordInCordAtENS_4Cord12CharIteratorES2_S2_(ptr noundef nonnull byval(%"class.absl::Cord::CharIterator") align 8 %4, ptr noundef nonnull byval(%"class.absl::Cord::CharIterator") align 8 %3, i64 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br i1 %i.es, label %.thread78, label %.thread81

.thread78:                                        ; preds = %_ZN4absl4Cord7AdvanceEPNS0_12CharIteratorEm.exit57, %_ZN4absl12_GLOBAL__N_117IsSubcordInCordAtENS_4Cord12CharIteratorERKS1_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(152) %6, i64 152, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.bc

.thread81:                                        ; preds = %_ZN4absl4Cord7AdvanceEPNS0_12CharIteratorEm.exit64, %_ZN4absl12_GLOBAL__N_117IsSubcordInCordAtENS_4Cord12CharIteratorERKS1_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %.loopexit

bb.bb:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @_ZNK4absl4Cord8FindImplENS0_12CharIteratorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.absl::Cord::CharIterator") align 8 %7, ptr nonnull align 8 poison, ptr noundef nonnull byval(%"class.absl::Cord::CharIterator") align 8 %6, i64 %.sroa.0.0.copyload.i.i, ptr %.sroa.2.0.copyload.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %6, ptr noundef nonnull align 8 dereferenceable(152) %7, i64 152, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.et = load i64, ptr %i.bs, align 8            ; 2 uses
  %i.eu = icmp eq i64 %i.et, 0
  %i.ev = icmp ult i64 %i.et, %i.t
  %i.ew = select i1 %i.eu, i1 true, i1 %i.ev
  br i1 %i.ew, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.bb, %_ZNK4absl4Cord10char_beginEv.exit41, %.thread81
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %0, i8 0, i64 152, i1 false), !alias.scope !109
  store i32 -1, ptr %i.ex, align 8, !alias.scope !109
  br label %bb.bc

bb.bc:                                            ; preds = %.thread78, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %_ZNK4absl4Cord10char_beginEv.exit

_ZNK4absl4Cord10char_beginEv.exit:                ; preds = %_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i.i26, %bb.m, %bb.l, %_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i.i15, %bb.e, %bb.d, %bb.h, %bb.bc, %_ZN4absleqERKNS_4CordES2_.exit.thread75
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl12_GLOBAL__N_117IsSubcordInCordAtENS_4Cord12CharIteratorES2_S2_(ptr noundef byval(%"class.absl::Cord::CharIterator") align 8 %0, ptr noundef byval(%"class.absl::Cord::CharIterator") align 8 %1, i64 %.24.val) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %.not14 = icmp eq i64 %i.b, %.24.val
  br i1 %.not14, label %_ZN4absl4Cord7AdvanceEPNS0_12CharIteratorEm.exit25.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i10 = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4absl4Cord7AdvanceEPNS0_12CharIteratorEm.exit25
  %i.h = phi i64 [ %i.b, %.lr.ph ], [ %i.ah, %_ZN4absl4Cord7AdvanceEPNS0_12CharIteratorEm.exit25 ] ; 3 uses
  %i.i = load i64, ptr %i.c, align 8              ; 3 uses
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN4absl4Cord14ChunkRemainingERKNS0_12CharIteratorE.exit, !prof !7

bb.c:                                             ; preds = %bb.b
  call void @__assert_fail(ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.31, i32 noundef 1585, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZNK4absl4Cord13ChunkIteratordeEvENKUlvE_clEv) #20
  unreachable

_ZN4absl4Cord14ChunkRemainingERKNS0_12CharIteratorE.exit: ; preds = %bb.b
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 8 ; 5 uses
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8 ; 2 uses
  %i.j = icmp eq i64 %.sroa.0.0.copyload.i.i, 0
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4absl4Cord14ChunkRemainingERKNS0_12CharIteratorE.exit
  call void @__assert_fail(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.1, i32 noundef 1291, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl12_GLOBAL__N_117IsSubcordInCordAtENS_4Cord12CharIteratorES2_S2_) #20
  unreachable

bb.e:                                             ; preds = %_ZN4absl4Cord14ChunkRemainingERKNS0_12CharIteratorE.exit
  %.not.i.i8 = icmp eq i64 %i.h, 0
  br i1 %.not.i.i8, label %bb.f, label %_ZN4absl4Cord14ChunkRemainingERKNS0_12CharIteratorE.exit14, !prof !7

bb.f:                                             ; preds = %bb.e
  call void @__assert_fail(ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.31, i32 noundef 1585, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZNK4absl4Cord13ChunkIteratordeEvENKUlvE_clEv) #20
  unreachable

_ZN4absl4Cord14ChunkRemainingERKNS0_12CharIteratorE.exit14: ; preds = %bb.e
  %.sroa.0.0.copyload.i.i9 = load i64, ptr %1, align 8 ; 6 uses
  %i.k = icmp ult i64 %.sroa.0.0.copyload.i.i9, %.sroa.0.0.copyload.i.i
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %.sroa.0.0.copyload.i.i9, i64 %.sroa.0.0.copyload.i.i) ; 8 uses
  %i.l = icmp eq i64 %.sroa.0.0.copyload.i.i9, 0  ; 2 uses
  br i1 %i.l, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %_ZN4absl4Cord14ChunkRemainingERKNS0_12CharIteratorE.exit14
  %.sroa.2.0.copyload.i.i11 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i10, align 8
  %bcmp.i = call i32 @bcmp(ptr %.sroa.2.0.copyload.i.i, ptr %.sroa.2.0.copyload.i.i11, i64 %.sroa.speculated)
  %i.m = icmp eq i32 %bcmp.i, 0
  br i1 %i.m, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit, label %_ZN4absl4Cord7AdvanceEPNS0_12CharIteratorEm.exit25.thread

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %_ZN4absl4Cord14ChunkRemainingERKNS0_12CharIteratorE.exit14
  %.not.i.i18 = icmp ult i64 %i.i, %.sroa.speculated
  br i1 %.not.i.i18, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit
  call void @__assert_fail(ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.31, i32 noundef 1601, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl4Cord13ChunkIterator12AdvanceBytesEm) #20
  unreachable

bb.h:                                             ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit
  br i1 %i.k, label %_ZN4absl4Cord13ChunkIterator17RemoveChunkPrefixEm.exit.i.i, label %bb.i, !prof !5

_ZN4absl4Cord13ChunkIterator17RemoveChunkPrefixEm.exit.i.i: ; preds = %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 %.sroa.0.0.copyload.i.i9
  store ptr %i.n, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.o = sub nuw i64 %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i.i9
  store i64 %i.o, ptr %0, align 8
  %i.p = sub nuw i64 %i.i, %.sroa.0.0.copyload.i.i9
  store i64 %i.p, ptr %i.c, align 8
  br label %_ZN4absl4Cord7AdvanceEPNS0_12CharIteratorEm.exit

bb.i:                                             ; preds = %bb.h
  %i.q = load i32, ptr %i.d, align 8              ; 2 uses
  %i.r = icmp sgt i32 %i.q, -1
  br i1 %i.r, label %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.i.i, label %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i

_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.i.i: ; preds = %bb.i
  %i.s = zext nneg i32 %i.q to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8
  %.not6.i.i = icmp eq ptr %i.u, null
  br i1 %.not6.i.i, label %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.i.i
  call void @_ZN4absl4Cord13ChunkIterator17AdvanceBytesBtreeEm(ptr noundef nonnull align 8 dereferenceable(152) %0, i64 noundef %.sroa.0.0.copyload.i.i)
  %.pre = load i64, ptr %i.a, align 8
  br label %_ZN4absl4Cord7AdvanceEPNS0_12CharIteratorEm.exit

_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i: ; preds = %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.i.i, %bb.i
  store i64 0, ptr %i.c, align 8
  br label %_ZN4absl4Cord7AdvanceEPNS0_12CharIteratorEm.exit

_ZN4absl4Cord7AdvanceEPNS0_12CharIteratorEm.exit: ; preds = %_ZN4absl4Cord13ChunkIterator17RemoveChunkPrefixEm.exit.i.i, %bb.j, %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i
  %i.v = phi i64 [ %i.h, %_ZN4absl4Cord13ChunkIterator17RemoveChunkPrefixEm.exit.i.i ], [ %.pre, %bb.j ], [ %i.h, %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i ] ; 3 uses
  %.not.i.i19 = icmp ult i64 %i.v, %.sroa.speculated
  br i1 %.not.i.i19, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN4absl4Cord7AdvanceEPNS0_12CharIteratorEm.exit
  call void @__assert_fail(ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.31, i32 noundef 1601, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl4Cord13ChunkIterator12AdvanceBytesEm) #20
  unreachable

bb.l:                                             ; preds = %_ZN4absl4Cord7AdvanceEPNS0_12CharIteratorEm.exit
  %i.w = load i64, ptr %1, align 8                ; 2 uses
  %i.x = icmp ult i64 %.sroa.speculated, %i.w
  br i1 %i.x, label %_ZN4absl4Cord13ChunkIterator17RemoveChunkPrefixEm.exit.i.i24, label %bb.m, !prof !5

_ZN4absl4Cord13ChunkIterator17RemoveChunkPrefixEm.exit.i.i24: ; preds = %bb.l
  %i.y = load ptr, ptr %.sroa.2.0..sroa_idx.i.i10, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %.sroa.speculated
  store ptr %i.z, ptr %.sroa.2.0..sroa_idx.i.i10, align 8
  %i.aa = sub nuw i64 %i.w, %.sroa.speculated
  store i64 %i.aa, ptr %1, align 8
  %i.ab = sub nuw i64 %i.v, %.sroa.speculated     ; 2 uses
  store i64 %i.ab, ptr %i.a, align 8
  br label %_ZN4absl4Cord7AdvanceEPNS0_12CharIteratorEm.exit25

bb.m:                                             ; preds = %bb.l
  br i1 %i.l, label %_ZN4absl4Cord7AdvanceEPNS0_12CharIteratorEm.exit25, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ac = load i32, ptr %i.f, align 8             ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, -1
  br i1 %i.ad, label %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.i.i22, label %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i21

_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.i.i22: ; preds = %bb.n
  %i.ae = zext nneg i32 %i.ac to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8
  %.not6.i.i23 = icmp eq ptr %i.ag, null
  br i1 %.not6.i.i23, label %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i21, label %bb.o

bb.o:                                             ; preds = %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.i.i22
  call void @_ZN4absl4Cord13ChunkIterator17AdvanceBytesBtreeEm(ptr noundef nonnull align 8 dereferenceable(152) %1, i64 noundef %.sroa.speculated)
  %.pre17 = load i64, ptr %i.a, align 8
  br label %_ZN4absl4Cord7AdvanceEPNS0_12CharIteratorEm.exit25

_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i21: ; preds = %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.i.i22, %bb.n
  store i64 0, ptr %i.a, align 8
  br label %_ZN4absl4Cord7AdvanceEPNS0_12CharIteratorEm.exit25

_ZN4absl4Cord7AdvanceEPNS0_12CharIteratorEm.exit25: ; preds = %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i21, %bb.o, %bb.m, %_ZN4absl4Cord13ChunkIterator17RemoveChunkPrefixEm.exit.i.i24
  %i.ah = phi i64 [ 0, %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i21 ], [ %.pre17, %bb.o ], [ %i.v, %bb.m ], [ %i.ab, %_ZN4absl4Cord13ChunkIterator17RemoveChunkPrefixEm.exit.i.i24 ] ; 2 uses
  %.not = icmp eq i64 %i.ah, %.24.val
  br i1 %.not, label %_ZN4absl4Cord7AdvanceEPNS0_12CharIteratorEm.exit25.thread, label %bb.b

_ZN4absl4Cord7AdvanceEPNS0_12CharIteratorEm.exit25.thread: ; preds = %_ZN4absl4Cord7AdvanceEPNS0_12CharIteratorEm.exit25, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %bb.a
  %.not.lcssa = phi i1 [ true, %bb.a ], [ false, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ], [ true, %_ZN4absl4Cord7AdvanceEPNS0_12CharIteratorEm.exit25 ]
  ret i1 %.not.lcssa
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4absl4Cord8ContainsESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1, ptr %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.absl::Cord::CharIterator", align 8 ; 4 uses
  %i.a = icmp eq i64 %1, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZNK4absl4Cord4FindESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.absl::Cord::CharIterator") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1, ptr %2)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = icmp ne i64 %i.c, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = phi i1 [ true, %bb.a ], [ %i.d, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret i1 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4absl4Cord8ContainsERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.absl::Cord::CharIterator", align 8 ; 4 uses
  %i.a = load i8, ptr %1, align 8                 ; 2 uses
  %i.b = trunc i8 %i.a to i1
  br i1 %i.b, label %_ZNK4absl4Cord9InlineRep7as_treeEv.exit.i.i.i, label %_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i.i

_ZNK4absl4Cord9InlineRep7as_treeEv.exit.i.i.i:    ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load i64, ptr %i.d, align 8
  br label %_ZNK4absl4Cord5emptyEv.exit

_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i.i: ; preds = %bb.a
  %i.f = sext i8 %i.a to i64
  %i.g = lshr exact i64 %i.f, 1
  br label %_ZNK4absl4Cord5emptyEv.exit

_ZNK4absl4Cord5emptyEv.exit:                      ; preds = %_ZNK4absl4Cord9InlineRep7as_treeEv.exit.i.i.i, %_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i.i
  %i.h = phi i64 [ %i.e, %_ZNK4absl4Cord9InlineRep7as_treeEv.exit.i.i.i ], [ %i.g, %_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i.i ]
  %i.i = icmp eq i64 %i.h, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK4absl4Cord5emptyEv.exit
  call void @_ZNK4absl4Cord4FindERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.absl::Cord::CharIterator") align 8 %2, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = icmp ne i64 %i.k, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNK4absl4Cord5emptyEv.exit
  %i.m = phi i1 [ true, %_ZNK4absl4Cord5emptyEv.exit ], [ %i.l, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret i1 %i.m
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { i64, ptr } @_ZN4absl4Cord15FlattenSlowPathEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8
  %i.b = trunc i8 %i.a to i1
  br i1 %i.b, label %_ZNK4absl4Cord4sizeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 1369, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl4Cord15FlattenSlowPathEv) #20
  unreachable

_ZNK4absl4Cord4sizeEv.exit:                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load i64, ptr %i.d, align 8              ; 8 uses
  %i.f = icmp ult i64 %i.e, 4084
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK4absl4Cord4sizeEv.exit
  %i.g = tail call i64 @llvm.umax.i64(i64 %i.e, i64 19)
  %i.h = icmp samesign ult i64 %i.e, 500          ; 2 uses
  %.neg.i.i = select i1 %i.h, i64 -8, i64 -64
  %i.i = select i1 %i.h, i64 8, i64 64
  %i.j = add nuw nsw i64 %i.g, 12
  %i.k = add nuw nsw i64 %i.j, %i.i
  %i.l = and i64 %i.k, %.neg.i.i                  ; 3 uses
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #24 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 0, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 2, ptr %i.o, align 8
  %i.p = icmp samesign ult i64 %i.l, 513          ; 2 uses
  %.sink6.i.i.i.i = select i1 %i.p, i64 3, i64 6
  %.sink5.i.i.i.i = select i1 %i.p, i64 2, i64 58
  %i.q = lshr i64 %i.l, %.sink6.i.i.i.i
  %i.r = add nuw nsw i64 %i.q, %.sink5.i.i.i.i
  %i.s = trunc nuw nsw i64 %i.r to i8             ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  store i8 %i.s, ptr %i.t, align 4
  store i64 %i.e, ptr %i.m, align 8
  %.off.i = add nsw i8 %i.s, -6
  %switch.i = icmp ult i8 %.off.i, -13
  br i1 %switch.i, label %_ZN4absl13cord_internal7CordRep4flatEv.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.78, i32 noundef 182, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal7CordRep4flatEv) #20
  unreachable

_ZN4absl13cord_internal7CordRep4flatEv.exit:      ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 13 ; 2 uses
  tail call void @_ZNK4absl4Cord19CopyToArraySlowPathEPc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.u)
  br label %bb.f

bb.d:                                             ; preds = %_ZNK4absl4Cord4sizeEv.exit
  %i.v = icmp slt i64 %i.e, 0
  br i1 %i.v, label %bb.e, label %"_ZN4absl13cord_internal14NewExternalRepIZNS_4Cord15FlattenSlowPathEvE3$_0EEPNS0_7CordRepESt17basic_string_viewIcSt11char_traitsIcEEOT_.exit", !prof !7

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #20
  unreachable

"_ZN4absl13cord_internal14NewExternalRepIZNS_4Cord15FlattenSlowPathEvE3$_0EEPNS0_7CordRepESt17basic_string_viewIcSt11char_traitsIcEEOT_.exit": ; preds = %bb.d
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #22 ; 3 uses
  tail call void @_ZNK4absl4Cord19CopyToArraySlowPathEPc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.w)
  %i.x = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #22 ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i32 2, ptr %i.y, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store ptr @"_ZN4absl13cord_internal19CordRepExternalImplIZNS_4Cord15FlattenSlowPathEvE3$_0E7ReleaseEPNS0_15CordRepExternalE", ptr %i.z, align 8
  store i64 %i.e, ptr %i.x, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i8 5, ptr %i.aa, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr %i.w, ptr %i.ab, align 8
  %i.ac = tail call fastcc noundef ptr @_ZN4abslL10VerifyTreeEPNS_13cord_internal7CordRepE(ptr noundef nonnull %i.x) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %"_ZN4absl13cord_internal14NewExternalRepIZNS_4Cord15FlattenSlowPathEvE3$_0EEPNS0_7CordRepESt17basic_string_viewIcSt11char_traitsIcEEOT_.exit", %_ZN4absl13cord_internal7CordRep4flatEv.exit
  %.013 = phi ptr [ %i.m, %_ZN4absl13cord_internal7CordRep4flatEv.exit ], [ %i.x, %"_ZN4absl13cord_internal14NewExternalRepIZNS_4Cord15FlattenSlowPathEvE3$_0EEPNS0_7CordRepESt17basic_string_viewIcSt11char_traitsIcEEOT_.exit" ] ; 2 uses
  %.0 = phi ptr [ %i.u, %_ZN4absl13cord_internal7CordRep4flatEv.exit ], [ %i.w, %"_ZN4absl13cord_internal14NewExternalRepIZNS_4Cord15FlattenSlowPathEvE3$_0EEPNS0_7CordRepESt17basic_string_viewIcSt11char_traitsIcEEOT_.exit" ]
  %i.ad = load i8, ptr %0, align 8
  %i.ae = trunc i8 %i.ad to i1
  br i1 %i.ae, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.68, i32 noundef 576, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4absl13cord_internal10InlineData10cordz_infoEv) #20
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.af = load i64, ptr %0, align 8               ; 2 uses
  %i.ag = and i64 %i.af, 1
  %.not.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i, label %bb.i, label %_ZNK4absl4Cord9InlineRep10cordz_infoEv.exit

bb.i:                                             ; preds = %bb.h
  tail call void @__assert_fail(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.68, i32 noundef 579, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4absl13cord_internal10InlineData10cordz_infoEv) #20
  unreachable

_ZNK4absl4Cord9InlineRep10cordz_infoEv.exit:      ; preds = %bb.h
  %i.ah = add nsw i64 %i.af, -1                   ; 2 uses
  %i.ai = inttoptr i64 %i.ah to ptr               ; 4 uses
  %.not.i = icmp eq i64 %i.ah, 0                  ; 2 uses
  br i1 %.not.i, label %_ZNK4absl4Cord9InlineRep7as_treeEv.exit, label %_ZN4absl13cord_internal16CordzUpdateScopeC2EPNS0_9CordzInfoENS0_18CordzUpdateTracker16MethodIdentifierE.exit, !prof !5

end_hunk_4
begin_hunk_5_@_ZNSt5dequeIN4absl12crc_internal12CrcCordState9PrefixCrcESaIS3_EE13_M_insert_auxISt15_Deque_iteratorIS3_RKS3_PS8_EEEvS7_IS3_RS3_PS3_ET_SF_m:bb.a
bb.o:                                             ; preds = %_ZStplRKSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_El.exit
  %i.cm = load ptr, ptr %i.a, align 8, !noalias !229 ; 4 uses
  %i.cn = load ptr, ptr %i.aw, align 8, !noalias !229 ; 2 uses
  %i.co = load ptr, ptr %i.u, align 8, !noalias !229 ; 2 uses
  %i.cp = load ptr, ptr %i.d, align 8, !noalias !229 ; 3 uses
  %i.cq = ptrtoint ptr %i.cm to i64
  %i.cr = ptrtoint ptr %i.cn to i64
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = ashr exact i64 %i.cs, 4
  %i.cu = add nsw i64 %i.ct, %4                   ; 5 uses
  %i.cv = icmp sgt i64 %i.cu, -1
  br i1 %i.cv, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.cw = icmp samesign ult i64 %i.cu, 32
  br i1 %i.cw, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cx = getelementptr inbounds [16 x i8], ptr %i.cm, i64 %4
  br label %_ZStplRKSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_El.exit22

bb.r:                                             ; preds = %bb.p
  %i.cy = lshr i64 %i.cu, 5
  br label %bb.t

bb.s:                                             ; preds = %bb.o
  %i.cz = ashr i64 %i.cu, 5
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.da = phi i64 [ %i.cy, %bb.r ], [ %i.cz, %bb.s ] ; 2 uses
  %i.db = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.da ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !noalias !229 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 512
  %i.de = shl nsw i64 %i.da, 5
  %i.df = sub nsw i64 %i.cu, %i.de
  %i.dg = getelementptr inbounds [16 x i8], ptr %i.dc, i64 %i.df
  br label %_ZStplRKSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_El.exit22

_ZStplRKSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_El.exit22: ; preds = %bb.q, %bb.t
  %.sroa.5313.0 = phi ptr [ %i.cn, %bb.q ], [ %i.dc, %bb.t ]
  %.sroa.9315.0 = phi ptr [ %i.co, %bb.q ], [ %i.dd, %bb.t ]
  %.sroa.13317.0 = phi ptr [ %i.cp, %bb.q ], [ %i.db, %bb.t ]
  %storemerge.i.i21 = phi ptr [ %i.cx, %bb.q ], [ %i.dg, %bb.t ] ; 3 uses
  %i.dh = icmp eq ptr %i.cm, %storemerge.i.i21
  br i1 %i.dh, label %_ZSt22__uninitialized_move_aISt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS4_PS4_ES7_SaIS4_EET0_T_SA_S9_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZStplRKSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_El.exit22, %_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_EppEv.exit.i.i.i.i.i
  %.sroa.04.0.i.i.i.i = phi ptr [ %.sroa.04.1.i.i.i.i, %_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_EppEv.exit.i.i.i.i.i ], [ %i.cm, %_ZStplRKSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_El.exit22 ] ; 2 uses
  %.sroa.7.0.i.i.i.i = phi ptr [ %.sroa.7.1.i.i.i.i, %_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_EppEv.exit.i.i.i.i.i ], [ %i.co, %_ZStplRKSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_El.exit22 ] ; 2 uses
  %.sroa.10.0.i.i.i.i = phi ptr [ %.sroa.10.1.i.i.i.i, %_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_EppEv.exit.i.i.i.i.i ], [ %i.cp, %_ZStplRKSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_El.exit22 ] ; 2 uses
  %i.di = phi ptr [ %i.dx, %_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_EppEv.exit.i.i.i.i.i ], [ %storemerge.i.i.i.i, %_ZStplRKSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_El.exit22 ] ; 2 uses
  %i.dj = phi ptr [ %i.dw, %_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_EppEv.exit.i.i.i.i.i ], [ %.sroa.11337.0, %_ZStplRKSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_El.exit22 ] ; 2 uses
  %i.dk = phi ptr [ %i.dv, %_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_EppEv.exit.i.i.i.i.i ], [ %.sroa.15.0, %_ZStplRKSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_El.exit22 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.di, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.0.i.i.i.i, i64 16, i1 false), !noalias !232
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i.i.i, i64 16 ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %.sroa.7.0.i.i.i.i
  br i1 %i.dm, label %bb.u, label %_ZNSt13move_iteratorISt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS4_PS4_EEppEv.exit.i.i.i.i.i

bb.u:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i, i64 8 ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8, !noalias !232 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 512
  br label %_ZNSt13move_iteratorISt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS4_PS4_EEppEv.exit.i.i.i.i.i

_ZNSt13move_iteratorISt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS4_PS4_EEppEv.exit.i.i.i.i.i: ; preds = %bb.u, %.lr.ph.i.i.i.i.i
  %.sroa.04.1.i.i.i.i = phi ptr [ %i.do, %bb.u ], [ %i.dl, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.sroa.7.1.i.i.i.i = phi ptr [ %i.dp, %bb.u ], [ %.sroa.7.0.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %.sroa.10.1.i.i.i.i = phi ptr [ %i.dn, %bb.u ], [ %.sroa.10.0.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %i.dq = getelementptr inbounds nuw i8, ptr %i.di, i64 16 ; 2 uses
  %i.dr = icmp eq ptr %i.dq, %i.dj
  br i1 %i.dr, label %bb.v, label %_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_EppEv.exit.i.i.i.i.i

bb.v:                                             ; preds = %_ZNSt13move_iteratorISt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS4_PS4_EEppEv.exit.i.i.i.i.i
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !noalias !232 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 512
  br label %_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_EppEv.exit.i.i.i.i.i

_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_EppEv.exit.i.i.i.i.i: ; preds = %bb.v, %_ZNSt13move_iteratorISt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS4_PS4_EEppEv.exit.i.i.i.i.i
  %i.dv = phi ptr [ %i.dk, %_ZNSt13move_iteratorISt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS4_PS4_EEppEv.exit.i.i.i.i.i ], [ %i.ds, %bb.v ]
  %i.dw = phi ptr [ %i.dj, %_ZNSt13move_iteratorISt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS4_PS4_EEppEv.exit.i.i.i.i.i ], [ %i.du, %bb.v ]
  %i.dx = phi ptr [ %i.dq, %_ZNSt13move_iteratorISt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS4_PS4_EEppEv.exit.i.i.i.i.i ], [ %i.dt, %bb.v ]
  %i.dy = icmp eq ptr %.sroa.04.1.i.i.i.i, %storemerge.i.i21
  br i1 %i.dy, label %_ZSt22__uninitialized_move_aISt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS4_PS4_ES7_SaIS4_EET0_T_SA_S9_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !243

_ZSt22__uninitialized_move_aISt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS4_PS4_ES7_SaIS4_EET0_T_SA_S9_RT1_.exit: ; preds = %_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_EppEv.exit.i.i.i.i.i, %_ZStplRKSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_El.exit22
  store ptr %storemerge.i.i.i.i, ptr %i.a, align 8
  store ptr %.sroa.7333.0, ptr %i.aw, align 8
  store ptr %.sroa.11337.0, ptr %i.u, align 8
  store ptr %.sroa.15.0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %28), !noalias !244
  call void @llvm.lifetime.start.p0(ptr nonnull %25), !noalias !247
  call void @llvm.lifetime.start.p0(ptr nonnull %26), !noalias !247
  call void @llvm.lifetime.start.p0(ptr nonnull %27), !noalias !247
  store ptr %storemerge.i.i21, ptr %25, align 8, !noalias !250
  %i.dz = getelementptr inbounds nuw i8, ptr %25, i64 8
  store ptr %.sroa.5313.0, ptr %i.dz, align 8, !noalias !250
  %i.ea = getelementptr inbounds nuw i8, ptr %25, i64 16
  store ptr %.sroa.9315.0, ptr %i.ea, align 8, !noalias !250
  %i.eb = getelementptr inbounds nuw i8, ptr %25, i64 24
  store ptr %.sroa.13317.0, ptr %i.eb, align 8, !noalias !250
  %i.ec = load <2 x ptr>, ptr %1, align 8
  store <2 x ptr> %i.ec, ptr %26, align 16, !noalias !250
  %i.ed = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.ee = load <2 x ptr>, ptr %.sroa.6321.0..sroa_idx, align 8
  store <2 x ptr> %i.ee, ptr %i.ed, align 16, !noalias !250
  store ptr %i.bg, ptr %27, align 8, !noalias !250
  %i.ef = getelementptr inbounds nuw i8, ptr %27, i64 8
  store ptr %i.bf, ptr %i.ef, align 8, !noalias !250
  %i.eg = getelementptr inbounds nuw i8, ptr %27, i64 16
  store ptr %i.be, ptr %i.eg, align 8, !noalias !250
  %i.eh = getelementptr inbounds nuw i8, ptr %27, i64 24
  store ptr %i.bd, ptr %i.eh, align 8, !noalias !250
  call void @_ZSt15__copy_move_ditILb1EN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_St15_Deque_iteratorIS3_S4_S5_EET3_S6_IT0_T1_T2_ESC_S8_(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %28, ptr noundef nonnull align 8 dead_on_return %25, ptr noundef nonnull align 8 dead_on_return %26, ptr noundef nonnull align 8 dead_on_return %27), !noalias !247
  call void @llvm.lifetime.end.p0(ptr nonnull %25), !noalias !247
  call void @llvm.lifetime.end.p0(ptr nonnull %26), !noalias !247
  call void @llvm.lifetime.end.p0(ptr nonnull %27), !noalias !247
  call void @llvm.lifetime.end.p0(ptr nonnull %28), !noalias !244
  %i.ei = load <2 x ptr>, ptr %2, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ek = load <2 x ptr>, ptr %i.ej, align 8
  %i.el = load <2 x ptr>, ptr %3, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.en = load <2 x ptr>, ptr %i.em, align 8
  %i.eo = load ptr, ptr %1, align 8, !noalias !253 ; 2 uses
  %i.ep = load ptr, ptr %i.n, align 8, !noalias !253 ; 2 uses
  %i.eq = load ptr, ptr %.sroa.6321.0..sroa_idx, align 8, !noalias !253
  %i.er = load ptr, ptr %i.b, align 8, !noalias !253 ; 2 uses
  %i.es = ptrtoint ptr %i.eo to i64
  %i.et = ptrtoint ptr %i.ep to i64
  %i.eu = sub i64 %i.es, %i.et
  %i.ev = ashr exact i64 %i.eu, 4
  %i.ew = sub nsw i64 %i.ev, %4                   ; 5 uses
  %i.ex = icmp sgt i64 %i.ew, -1
  br i1 %i.ex, label %bb.w, label %bb.z

bb.w:                                             ; preds = %_ZSt22__uninitialized_move_aISt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS4_PS4_ES7_SaIS4_EET0_T_SA_S9_RT1_.exit
  %i.ey = icmp samesign ult i64 %i.ew, 32
  br i1 %i.ey, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ez = getelementptr inbounds [16 x i8], ptr %i.eo, i64 %i.bh
  br label %_ZStmiRKSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_El.exit

bb.y:                                             ; preds = %bb.w
  %i.fa = lshr i64 %i.ew, 5
  br label %bb.aa

bb.z:                                             ; preds = %_ZSt22__uninitialized_move_aISt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS4_PS4_ES7_SaIS4_EET0_T_SA_S9_RT1_.exit
  %i.fb = ashr i64 %i.ew, 5
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.fc = phi i64 [ %i.fa, %bb.y ], [ %i.fb, %bb.z ] ; 2 uses
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.er, i64 %i.fc ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !noalias !253 ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 512
  %i.fg = shl nsw i64 %i.fc, 5
  %i.fh = sub nsw i64 %i.ew, %i.fg
  %i.fi = getelementptr inbounds [16 x i8], ptr %i.fe, i64 %i.fh
  br label %_ZStmiRKSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_El.exit

_ZStmiRKSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_El.exit: ; preds = %bb.x, %bb.aa
  %.sroa.2268.0 = phi ptr [ %i.ep, %bb.x ], [ %i.fe, %bb.aa ]
  %.sroa.5269.0 = phi ptr [ %i.eq, %bb.x ], [ %i.ff, %bb.aa ]
  %.sroa.8270.0 = phi ptr [ %i.er, %bb.x ], [ %i.fd, %bb.aa ]
  %storemerge.i.i.i = phi ptr [ %i.ez, %bb.x ], [ %i.fi, %bb.aa ]
  call void @llvm.lifetime.start.p0(ptr nonnull %24), !noalias !256
  call void @llvm.lifetime.start.p0(ptr nonnull %21), !noalias !259
  call void @llvm.lifetime.start.p0(ptr nonnull %22), !noalias !259
  call void @llvm.lifetime.start.p0(ptr nonnull %23), !noalias !259
  store <2 x ptr> %i.ei, ptr %21, align 16, !noalias !262
  %i.fj = getelementptr inbounds nuw i8, ptr %21, i64 16
  store <2 x ptr> %i.ek, ptr %i.fj, align 16, !noalias !262
  store <2 x ptr> %i.el, ptr %22, align 16, !noalias !262
  %i.fk = getelementptr inbounds nuw i8, ptr %22, i64 16
  store <2 x ptr> %i.en, ptr %i.fk, align 16, !noalias !262
  store ptr %storemerge.i.i.i, ptr %23, align 8, !noalias !262
  %i.fl = getelementptr inbounds nuw i8, ptr %23, i64 8
  store ptr %.sroa.2268.0, ptr %i.fl, align 8, !noalias !262
  %i.fm = getelementptr inbounds nuw i8, ptr %23, i64 16
  store ptr %.sroa.5269.0, ptr %i.fm, align 8, !noalias !262
  %i.fn = getelementptr inbounds nuw i8, ptr %23, i64 24
  store ptr %.sroa.8270.0, ptr %i.fn, align 8, !noalias !262
  call void @_ZSt15__copy_move_ditILb0EN4absl12crc_internal12CrcCordState9PrefixCrcERKS3_PS4_St15_Deque_iteratorIS3_RS3_PS3_EET3_S7_IT0_T1_T2_ESF_SB_(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %24, ptr noundef nonnull align 8 dead_on_return %21, ptr noundef nonnull align 8 dead_on_return %22, ptr noundef nonnull align 8 dead_on_return %23), !noalias !259
  call void @llvm.lifetime.end.p0(ptr nonnull %21), !noalias !259
  call void @llvm.lifetime.end.p0(ptr nonnull %22), !noalias !259
  call void @llvm.lifetime.end.p0(ptr nonnull %23), !noalias !259
  call void @llvm.lifetime.end.p0(ptr nonnull %24), !noalias !256
  br label %bb.bq

bb.ab:                                            ; preds = %_ZStplRKSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_El.exit
  %i.fo = load ptr, ptr %2, align 8               ; 4 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8            ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fs = load ptr, ptr %i.fr, align 8            ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fu = load ptr, ptr %i.ft, align 8            ; 3 uses
  %i.fv = sub nuw nsw i64 %4, %i.ab               ; 2 uses
  %i.fw = ptrtoint ptr %i.fo to i64
  %i.fx = ptrtoint ptr %i.fq to i64
  %i.fy = sub i64 %i.fw, %i.fx
  %i.fz = ashr exact i64 %i.fy, 4
  %i.ga = add nsw i64 %i.fz, %i.fv                ; 5 uses
  %i.gb = icmp sgt i64 %i.ga, -1
  br i1 %i.gb, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %i.gc = icmp samesign ult i64 %i.ga, 32
  br i1 %i.gc, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.gd = getelementptr inbounds nuw [16 x i8], ptr %i.fo, i64 %i.fv
  br label %_ZSt9__advanceISt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERKS4_PS5_ElEvRT_T0_St26random_access_iterator_tag.exit

bb.ae:                                            ; preds = %bb.ac
  %i.ge = lshr i64 %i.ga, 5
  br label %bb.ag

bb.af:                                            ; preds = %bb.ab
  %i.gf = ashr i64 %i.ga, 5
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.gg = phi i64 [ %i.ge, %bb.ae ], [ %i.gf, %bb.af ] ; 2 uses
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.fu, i64 %i.gg ; 2 uses
  %i.gi = load ptr, ptr %i.gh, align 8            ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 512
  %i.gk = shl nsw i64 %i.gg, 5
  %i.gl = sub nsw i64 %i.ga, %i.gk
  %i.gm = getelementptr inbounds [16 x i8], ptr %i.gi, i64 %i.gl
  br label %_ZSt9__advanceISt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERKS4_PS5_ElEvRT_T0_St26random_access_iterator_tag.exit

_ZSt9__advanceISt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERKS4_PS5_ElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.ad, %bb.ag
  %.sroa.0248.0 = phi ptr [ %i.gm, %bb.ag ], [ %i.gd, %bb.ad ] ; 3 uses
  %.sroa.9252.2 = phi ptr [ %i.gi, %bb.ag ], [ %i.fq, %bb.ad ]
  %.sroa.16255.2 = phi ptr [ %i.gj, %bb.ag ], [ %i.fs, %bb.ad ]
  %.sroa.23258.2 = phi ptr [ %i.gh, %bb.ag ], [ %i.fu, %bb.ad ]
  %i.gn = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.go = icmp eq ptr %i.gn, %storemerge.i.i
  br i1 %i.go, label %_ZSt22__uninitialized_move_aISt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS4_PS4_ES7_SaIS4_EET0_T_SA_S9_RT1_.exit.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZSt9__advanceISt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERKS4_PS5_ElEvRT_T0_St26random_access_iterator_tag.exit
  %i.gp = load ptr, ptr %i.d, align 8
  %i.gq = load ptr, ptr %i.u, align 8
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_EppEv.exit.i.i.i.i.i.i
  %.sroa.04.0.i.i.i.i.i = phi ptr [ %.sroa.04.1.i.i.i.i.i, %_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_EppEv.exit.i.i.i.i.i.i ], [ %i.gn, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.7.0.i.i.i.i.i = phi ptr [ %.sroa.7.1.i.i.i.i.i, %_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_EppEv.exit.i.i.i.i.i.i ], [ %i.gq, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.10.0.i.i.i.i.i = phi ptr [ %.sroa.10.1.i.i.i.i.i, %_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_EppEv.exit.i.i.i.i.i.i ], [ %i.gp, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.gr = phi ptr [ %i.hg, %_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_EppEv.exit.i.i.i.i.i.i ], [ %storemerge.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.gs = phi ptr [ %i.hf, %_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_EppEv.exit.i.i.i.i.i.i ], [ %.sroa.11337.0, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.gt = phi ptr [ %i.he, %_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_EppEv.exit.i.i.i.i.i.i ], [ %.sroa.15.0, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gr, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.0.i.i.i.i.i, i64 16, i1 false), !noalias !265
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i.i.i.i, i64 16 ; 2 uses
  %i.gv = icmp eq ptr %i.gu, %.sroa.7.0.i.i.i.i.i
  br i1 %i.gv, label %bb.ah, label %_ZNSt13move_iteratorISt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS4_PS4_EEppEv.exit.i.i.i.i.i.i

bb.ah:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i, i64 8 ; 2 uses
  %i.gx = load ptr, ptr %i.gw, align 8, !noalias !265 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 512
  br label %_ZNSt13move_iteratorISt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS4_PS4_EEppEv.exit.i.i.i.i.i.i

_ZNSt13move_iteratorISt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS4_PS4_EEppEv.exit.i.i.i.i.i.i: ; preds = %bb.ah, %.lr.ph.i.i.i.i.i.i
  %.sroa.04.1.i.i.i.i.i = phi ptr [ %i.gx, %bb.ah ], [ %i.gu, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %.sroa.7.1.i.i.i.i.i = phi ptr [ %i.gy, %bb.ah ], [ %.sroa.7.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  %.sroa.10.1.i.i.i.i.i = phi ptr [ %i.gw, %bb.ah ], [ %.sroa.10.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gr, i64 16 ; 2 uses
  %i.ha = icmp eq ptr %i.gz, %i.gs
  br i1 %i.ha, label %bb.ai, label %_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_EppEv.exit.i.i.i.i.i.i

bb.ai:                                            ; preds = %_ZNSt13move_iteratorISt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS4_PS4_EEppEv.exit.i.i.i.i.i.i
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gt, i64 8 ; 2 uses
  %i.hc = load ptr, ptr %i.hb, align 8, !noalias !265 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 512
  br label %_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_EppEv.exit.i.i.i.i.i.i

_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_EppEv.exit.i.i.i.i.i.i: ; preds = %bb.ai, %_ZNSt13move_iteratorISt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS4_PS4_EEppEv.exit.i.i.i.i.i.i
  %i.he = phi ptr [ %i.gt, %_ZNSt13move_iteratorISt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS4_PS4_EEppEv.exit.i.i.i.i.i.i ], [ %i.hb, %bb.ai ] ; 2 uses
  %i.hf = phi ptr [ %i.gs, %_ZNSt13move_iteratorISt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS4_PS4_EEppEv.exit.i.i.i.i.i.i ], [ %i.hd, %bb.ai ] ; 2 uses
  %i.hg = phi ptr [ %i.gz, %_ZNSt13move_iteratorISt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS4_PS4_EEppEv.exit.i.i.i.i.i.i ], [ %i.hc, %bb.ai ] ; 2 uses
  %i.hh = icmp eq ptr %.sroa.04.1.i.i.i.i.i, %storemerge.i.i
  br i1 %i.hh, label %_ZSt22__uninitialized_move_aISt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS4_PS4_ES7_SaIS4_EET0_T_SA_S9_RT1_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !243

_ZSt22__uninitialized_move_aISt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS4_PS4_ES7_SaIS4_EET0_T_SA_S9_RT1_.exit.i: ; preds = %_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_EppEv.exit.i.i.i.i.i.i, %_ZSt9__advanceISt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERKS4_PS5_ElEvRT_T0_St26random_access_iterator_tag.exit
  %.lcssa4.i.i.i.i.i.i = phi ptr [ %.sroa.15.0, %_ZSt9__advanceISt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERKS4_PS5_ElEvRT_T0_St26random_access_iterator_tag.exit ], [ %i.he, %_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_EppEv.exit.i.i.i.i.i.i ]
  %.lcssa2.i.i.i.i.i.i = phi ptr [ %.sroa.11337.0, %_ZSt9__advanceISt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERKS4_PS5_ElEvRT_T0_St26random_access_iterator_tag.exit ], [ %i.hf, %_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_EppEv.exit.i.i.i.i.i.i ]
  %.lcssa.i.i.i.i.i.i = phi ptr [ %storemerge.i.i.i.i, %_ZSt9__advanceISt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERKS4_PS5_ElEvRT_T0_St26random_access_iterator_tag.exit ], [ %i.hg, %_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_EppEv.exit.i.i.i.i.i.i ]
  %i.hi = icmp eq ptr %i.fo, %.sroa.0248.0
  br i1 %i.hi, label %_ZSt25__uninitialized_move_copyISt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS4_PS4_ES0_IS4_RKS4_PS8_ES7_SaIS4_EET1_T_SE_T0_SF_SD_RT2_.exit, label %.lr.ph.i.i.i.i.i23

.lr.ph.i.i.i.i.i23:                               ; preds = %_ZSt22__uninitialized_move_aISt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS4_PS4_ES7_SaIS4_EET0_T_SA_S9_RT1_.exit.i, %_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_EppEv.exit.i.i.i.i.i30
  %.sroa.04.0.i.i.i.i24 = phi ptr [ %.sroa.04.1.i.i.i.i27, %_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_EppEv.exit.i.i.i.i.i30 ], [ %i.fo, %_ZSt22__uninitialized_move_aISt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS4_PS4_ES7_SaIS4_EET0_T_SA_S9_RT1_.exit.i ] ; 2 uses
  %.sroa.7.0.i.i.i.i25 = phi ptr [ %.sroa.7.1.i.i.i.i28, %_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_EppEv.exit.i.i.i.i.i30 ], [ %i.fs, %_ZSt22__uninitialized_move_aISt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS4_PS4_ES7_SaIS4_EET0_T_SA_S9_RT1_.exit.i ] ; 2 uses
  %.sroa.10.0.i.i.i.i26 = phi ptr [ %.sroa.10.1.i.i.i.i29, %_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_EppEv.exit.i.i.i.i.i30 ], [ %i.fu, %_ZSt22__uninitialized_move_aISt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS4_PS4_ES7_SaIS4_EET0_T_SA_S9_RT1_.exit.i ] ; 2 uses
  %i.hj = phi ptr [ %i.hy, %_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_EppEv.exit.i.i.i.i.i30 ], [ %.lcssa.i.i.i.i.i.i, %_ZSt22__uninitialized_move_aISt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS4_PS4_ES7_SaIS4_EET0_T_SA_S9_RT1_.exit.i ] ; 2 uses
  %i.hk = phi ptr [ %i.hx, %_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_EppEv.exit.i.i.i.i.i30 ], [ %.lcssa2.i.i.i.i.i.i, %_ZSt22__uninitialized_move_aISt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS4_PS4_ES7_SaIS4_EET0_T_SA_S9_RT1_.exit.i ] ; 2 uses
  %i.hl = phi ptr [ %i.hw, %_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_EppEv.exit.i.i.i.i.i30 ], [ %.lcssa4.i.i.i.i.i.i, %_ZSt22__uninitialized_move_aISt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS4_PS4_ES7_SaIS4_EET0_T_SA_S9_RT1_.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hj, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.0.i.i.i.i24, i64 16, i1 false), !noalias !278
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i.i.i24, i64 16 ; 2 uses
  %i.hn = icmp eq ptr %i.hm, %.sroa.7.0.i.i.i.i25
  br i1 %i.hn, label %bb.aj, label %_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERKS3_PS4_EppEv.exit.i.i.i.i.i

bb.aj:                                            ; preds = %.lr.ph.i.i.i.i.i23
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i26, i64 8 ; 2 uses
  %i.hp = load ptr, ptr %i.ho, align 8, !noalias !278 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 512
  br label %_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERKS3_PS4_EppEv.exit.i.i.i.i.i

_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERKS3_PS4_EppEv.exit.i.i.i.i.i: ; preds = %bb.aj, %.lr.ph.i.i.i.i.i23
  %.sroa.04.1.i.i.i.i27 = phi ptr [ %i.hp, %bb.aj ], [ %i.hm, %.lr.ph.i.i.i.i.i23 ] ; 2 uses
  %.sroa.7.1.i.i.i.i28 = phi ptr [ %i.hq, %bb.aj ], [ %.sroa.7.0.i.i.i.i25, %.lr.ph.i.i.i.i.i23 ]
  %.sroa.10.1.i.i.i.i29 = phi ptr [ %i.ho, %bb.aj ], [ %.sroa.10.0.i.i.i.i26, %.lr.ph.i.i.i.i.i23 ]
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hj, i64 16 ; 2 uses
  %i.hs = icmp eq ptr %i.hr, %i.hk
  br i1 %i.hs, label %bb.ak, label %_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_EppEv.exit.i.i.i.i.i30

bb.ak:                                            ; preds = %_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERKS3_PS4_EppEv.exit.i.i.i.i.i
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hl, i64 8 ; 2 uses
  %i.hu = load ptr, ptr %i.ht, align 8, !noalias !278 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 512
  br label %_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_EppEv.exit.i.i.i.i.i30

_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_EppEv.exit.i.i.i.i.i30: ; preds = %bb.ak, %_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERKS3_PS4_EppEv.exit.i.i.i.i.i
  %i.hw = phi ptr [ %i.hl, %_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERKS3_PS4_EppEv.exit.i.i.i.i.i ], [ %i.ht, %bb.ak ]
  %i.hx = phi ptr [ %i.hk, %_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERKS3_PS4_EppEv.exit.i.i.i.i.i ], [ %i.hv, %bb.ak ]
  %i.hy = phi ptr [ %i.hr, %_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERKS3_PS4_EppEv.exit.i.i.i.i.i ], [ %i.hu, %bb.ak ]
  %i.hz = icmp eq ptr %.sroa.04.1.i.i.i.i27, %.sroa.0248.0
  br i1 %i.hz, label %_ZSt25__uninitialized_move_copyISt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS4_PS4_ES0_IS4_RKS4_PS8_ES7_SaIS4_EET1_T_SE_T0_SF_SD_RT2_.exit, label %.lr.ph.i.i.i.i.i23, !llvm.loop !190

_ZSt25__uninitialized_move_copyISt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS4_PS4_ES0_IS4_RKS4_PS8_ES7_SaIS4_EET1_T_SE_T0_SF_SD_RT2_.exit: ; preds = %_ZNSt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS3_PS3_EppEv.exit.i.i.i.i.i30, %_ZSt22__uninitialized_move_aISt15_Deque_iteratorIN4absl12crc_internal12CrcCordState9PrefixCrcERS4_PS4_ES7_SaIS4_EET0_T_SA_S9_RT1_.exit.i
  store ptr %storemerge.i.i.i.i, ptr %i.a, align 8
  store ptr %.sroa.7333.0, ptr %i.aw, align 8
  store ptr %.sroa.11337.0, ptr %i.u, align 8
  store ptr %.sroa.15.0, ptr %i.d, align 8
  %i.ia = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %20), !noalias !287
  call void @llvm.lifetime.start.p0(ptr nonnull %17), !noalias !290
  call void @llvm.lifetime.start.p0(ptr nonnull %18), !noalias !290
  call void @llvm.lifetime.start.p0(ptr nonnull %19), !noalias !290
  store ptr %.sroa.0248.0, ptr %17, align 8, !noalias !293
  %i.ib = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %.sroa.9252.2, ptr %i.ib, align 8, !noalias !293
  %i.ic = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr %.sroa.16255.2, ptr %i.ic, align 8, !noalias !293
  %i.id = getelementptr inbounds nuw i8, ptr %17, i64 24
  store ptr %.sroa.23258.2, ptr %i.id, align 8, !noalias !293
  %i.ie = load <2 x ptr>, ptr %3, align 8
  store <2 x ptr> %i.ie, ptr %18, align 16, !noalias !293
  %i.if = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.ig = load <2 x ptr>, ptr %i.ia, align 8
  store <2 x ptr> %i.ig, ptr %i.if, align 16, !noalias !293
  store ptr %i.bg, ptr %19, align 8, !noalias !293
  %i.ih = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %i.bf, ptr %i.ih, align 8, !noalias !293
  %i.ii = getelementptr inbounds nuw i8, ptr %19, i64 16
  store ptr %i.be, ptr %i.ii, align 8, !noalias !293
  %i.ij = getelementptr inbounds nuw i8, ptr %19, i64 24
  store ptr %i.bd, ptr %i.ij, align 8, !noalias !293
  call void @_ZSt15__copy_move_ditILb0EN4absl12crc_internal12CrcCordState9PrefixCrcERKS3_PS4_St15_Deque_iteratorIS3_RS3_PS3_EET3_S7_IT0_T1_T2_ESF_SB_(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %20, ptr noundef nonnull align 8 dead_on_return %17, ptr noundef nonnull align 8 dead_on_return %18, ptr noundef nonnull align 8 dead_on_return %19), !noalias !290
  call void @llvm.lifetime.end.p0(ptr nonnull %17), !noalias !290
  call void @llvm.lifetime.end.p0(ptr nonnull %18), !noalias !290
  call void @llvm.lifetime.end.p0(ptr nonnull %19), !noalias !290
  call void @llvm.lifetime.end.p0(ptr nonnull %20), !noalias !287
  br label %bb.bq

bb.al:                                            ; preds = %bb.a
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.il = load ptr, ptr %i.ik, align 8, !noalias !296 ; 2 uses
  %i.im = ptrtoint ptr %i.il to i64
  %i.in = sub i64 %i.im, %i.ao
  %i.io = ashr exact i64 %i.in, 4
  %i.ip = add nsw i64 %i.io, -1                   ; 2 uses
  %i.iq = icmp ugt i64 %4, %i.ip
  br i1 %i.iq, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ir = sub nuw i64 %4, %i.ip
  tail call void @_ZNSt5dequeIN4absl12crc_internal12CrcCordState9PrefixCrcESaIS3_EE23_M_new_elements_at_backEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %i.ir), !noalias !296
  %.pre.i36 = load ptr, ptr %i.ac, align 8, !noalias !299 ; 2 uses
  %.pre6.i37 = load ptr, ptr %i.ik, align 8, !noalias !299
  %.pre7.i38 = ptrtoint ptr %.pre.i36 to i64
  %.pre = load ptr, ptr %i.am, align 8, !noalias !299 ; 2 uses
  %.pre354 = load ptr, ptr %i.ad, align 8, !noalias !299
  %.pre357 = ptrtoint ptr %.pre to i64            ; 2 uses
  %.pre358 = sub i64 %.pre7.i38, %.pre357
  %.pre360 = ashr exact i64 %.pre358, 4
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.pre-phi361 = phi i64 [ %.pre360, %bb.am ], [ %i.ar, %bb.al ]
  %.pre-phi = phi i64 [ %.pre357, %bb.am ], [ %i.ap, %bb.al ]
  %i.is = phi ptr [ %.pre354, %bb.am ], [ %i.ae, %bb.al ] ; 5 uses
  %i.it = phi ptr [ %.pre, %bb.am ], [ %i.an, %bb.al ] ; 3 uses
  %i.iu = phi ptr [ %.pre6.i37, %bb.am ], [ %i.il, %bb.al ] ; 3 uses
  %i.iv = phi ptr [ %.pre.i36, %bb.am ], [ %i.al, %bb.al ] ; 4 uses
  %i.iw = add nsw i64 %.pre-phi361, %4            ; 5 uses
  %i.ix = icmp sgt i64 %i.iw, -1
  br i1 %i.ix, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %bb.an
  %i.iy = icmp samesign ult i64 %i.iw, 32
  br i1 %i.iy, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.iz = getelementptr inbounds [16 x i8], ptr %i.iv, i64 %4
  br label %_ZNSt5dequeIN4absl12crc_internal12CrcCordState9PrefixCrcESaIS3_EE27_M_reserve_elements_at_backEm.exit

bb.aq:                                            ; preds = %bb.ao
  %i.ja = lshr i64 %i.iw, 5
  br label %bb.as

bb.ar:                                            ; preds = %bb.an
  %i.jb = ashr i64 %i.iw, 5
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.jc = phi i64 [ %i.ja, %bb.aq ], [ %i.jb, %bb.ar ] ; 2 uses
  %i.jd = getelementptr inbounds [8 x i8], ptr %i.is, i64 %i.jc ; 2 uses
  %i.je = load ptr, ptr %i.jd, align 8, !noalias !299 ; 3 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 512
  %i.jg = shl nsw i64 %i.jc, 5
  %i.jh = sub nsw i64 %i.iw, %i.jg
  %i.ji = getelementptr inbounds [16 x i8], ptr %i.je, i64 %i.jh
  br label %_ZNSt5dequeIN4absl12crc_internal12CrcCordState9PrefixCrcESaIS3_EE27_M_reserve_elements_at_backEm.exit

_ZNSt5dequeIN4absl12crc_internal12CrcCordState9PrefixCrcESaIS3_EE27_M_reserve_elements_at_backEm.exit: ; preds = %bb.ap, %bb.as
  %.sroa.5200.0 = phi ptr [ %i.it, %bb.ap ], [ %i.je, %bb.as ] ; 2 uses
  %.sroa.7.0 = phi ptr [ %i.iu, %bb.ap ], [ %i.jf, %bb.as ] ; 2 uses
  %.sroa.9205.0 = phi ptr [ %i.is, %bb.ap ], [ %i.jd, %bb.as ] ; 2 uses
  %storemerge.i.i.i35 = phi ptr [ %i.iz, %bb.ap ], [ %i.ji, %bb.as ] ; 2 uses
  %i.jj = sub nsw i64 %i.as, %i.t                 ; 5 uses
  %i.jk = sub nsw i64 0, %i.jj
  %i.jl = ptrtoint ptr %i.iv to i64
  %i.jm = sub i64 %i.jl, %.pre-phi
  %i.jn = ashr exact i64 %i.jm, 4
end_hunk_5
begin_hunk_6_@_ZN4absl13cord_internal21CordRepBtreeNavigator6NextUpEv:bb.a

bb.i:                                             ; preds = %_ZNK4absl13cord_internal12CordRepBtree4EdgeEm.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.83, i32 noundef 599, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal7CordRep5btreeEv) #20
  unreachable

_ZN4absl13cord_internal7CordRep5btreeEv.exit:     ; preds = %_ZNK4absl13cord_internal12CordRepBtree4EdgeEm.exit
  %indvars.iv.next43 = add nsw i64 %indvars.iv42, -1 ; 3 uses
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.d, i64 %indvars.iv.next43
  store ptr %i.ag, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 14
  %i.am = load i8, ptr %i.al, align 2             ; 4 uses
  %i.an = zext i8 %i.am to i64                    ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv.next43
  store i8 %i.am, ptr %i.ao, align 1
  %i.ap = icmp sgt i64 %indvars.iv42, 1
  br i1 %i.ap, label %bb.e, label %bb.j, !llvm.loop !399

bb.j:                                             ; preds = %_ZN4absl13cord_internal7CordRep5btreeEv.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 15
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = icmp ult i8 %i.am, %i.ar
  br i1 %i.as, label %_ZNK4absl13cord_internal12CordRepBtree4EdgeEm.exit22, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @__assert_fail(ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.83, i32 noundef 617, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4absl13cord_internal12CordRepBtree4EdgeEm) #20
  unreachable

_ZNK4absl13cord_internal12CordRepBtree4EdgeEm.exit22: ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.an
  %i.av = load ptr, ptr %i.au, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %.preheader, %_ZNK4absl13cord_internal12CordRepBtree4EdgeEm.exit22
  %.018 = phi ptr [ %i.av, %_ZNK4absl13cord_internal12CordRepBtree4EdgeEm.exit22 ], [ null, %.preheader ], [ null, %bb.c ]
  ret ptr %.018
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIN4absl12crc_internal12CrcCordState9PrefixCrcESaIS3_EE16_M_push_back_auxIJS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = shl nsw i64 %i.l, 5
  %i.n = load ptr, ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 4
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load ptr, ptr %i.b, align 8
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 4
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 1152921504606846975
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.133) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = load ptr, ptr %0, align 8
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.g, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = sub i64 %i.af, %i.aj
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %bb.d, label %_ZNSt5dequeIN4absl12crc_internal12CrcCordState9PrefixCrcESaIS3_EE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeIN4absl12crc_internal12CrcCordState9PrefixCrcESaIS3_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeIN4absl12crc_internal12CrcCordState9PrefixCrcESaIS3_EE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeIN4absl12crc_internal12CrcCordState9PrefixCrcESaIS3_EE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %i.am = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #22
  %i.an = load ptr, ptr %i.c, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.am, ptr %i.ao, align 8
  %i.ap = load ptr, ptr %i.a, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.aq = load ptr, ptr %i.c, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  store ptr %i.ar, ptr %i.c, align 8
  %i.as = load ptr, ptr %i.ar, align 8            ; 3 uses
  store ptr %i.as, ptr %i.o, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 512
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.at, ptr %i.au, align 8
  store ptr %i.as, ptr %i.a, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK4absl4Cord15CompareSlowPathESt17basic_string_viewIcSt11char_traitsIcEEmm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1, ptr %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %5 = alloca %"class.absl::Cord::ChunkIterator", align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !400)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %5, i8 0, i64 40, i1 false), !alias.scope !400
  store i32 -1, ptr %i.b, align 8, !alias.scope !400
  %i.c = load i8, ptr %0, align 8, !noalias !400  ; 2 uses
  %i.d = trunc i8 %i.c to i1                      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !noalias !400 ; 3 uses
  %.not8.i.i = icmp ne ptr %i.f, null
  %.not.not.i.i = select i1 %i.d, i1 %.not8.i.i, i1 false
  br i1 %.not.not.i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8, !noalias !400 ; 2 uses
  store i64 %i.g, ptr %i.a, align 8, !alias.scope !400
  %.not7.i.i = icmp eq i64 %i.g, 0
  br i1 %.not7.i.i, label %_ZNK4absl4Cord11chunk_beginEv.exit.thread, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  call void @_ZN4absl4Cord13ChunkIterator8InitTreeEPNS_13cord_internal7CordRepE(ptr noundef nonnull align 8 dereferenceable(152) %5, ptr noundef nonnull %i.f)
  %.pr = load i64, ptr %i.a, align 8
  br label %_ZNK4absl4Cord11chunk_beginEv.exit

_ZNK4absl4Cord11chunk_beginEv.exit.thread:        ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %5, i8 0, i64 16, i1 false), !alias.scope !400
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  br i1 %i.d, label %bb.e, label %_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i, !prof !7

bb.e:                                             ; preds = %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.68, i32 noundef 758, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZNK4absl13cord_internal10InlineData3Rep11inline_sizeEvENKUlvE_clEv) #20, !noalias !400
  unreachable

_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i: ; preds = %bb.d
  %i.h = sext i8 %i.c to i64
  %i.i = lshr exact i64 %i.h, 1                   ; 3 uses
  store i64 %i.i, ptr %i.a, align 8, !alias.scope !400
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i64 %i.i, ptr %5, align 8, !alias.scope !400
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !400
  br label %_ZNK4absl4Cord11chunk_beginEv.exit

_ZNK4absl4Cord11chunk_beginEv.exit:               ; preds = %bb.c, %_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i
  %i.k = phi i64 [ %.pr, %bb.c ], [ %i.i, %_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i ] ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %bb.f, label %_ZNK4absl4Cord13ChunkIteratordeEv.exit

_ZNK4absl4Cord13ChunkIteratordeEv.exit:           ; preds = %_ZNK4absl4Cord11chunk_beginEv.exit
  %.sroa.0.0.copyload.i = load i64, ptr %5, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZNK4absl4Cord11chunk_beginEv.exit, %_ZNK4absl4Cord11chunk_beginEv.exit.thread, %_ZNK4absl4Cord13ChunkIteratordeEv.exit
  %i.l = phi i64 [ %i.k, %_ZNK4absl4Cord13ChunkIteratordeEv.exit ], [ 0, %_ZNK4absl4Cord11chunk_beginEv.exit.thread ], [ 0, %_ZNK4absl4Cord11chunk_beginEv.exit ]
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.copyload.i, %_ZNK4absl4Cord13ChunkIteratordeEv.exit ], [ 0, %_ZNK4absl4Cord11chunk_beginEv.exit.thread ], [ 0, %_ZNK4absl4Cord11chunk_beginEv.exit ] ; 2 uses
  %.sroa.13.0 = phi ptr [ %.sroa.2.0.copyload.i, %_ZNK4absl4Cord13ChunkIteratordeEv.exit ], [ null, %_ZNK4absl4Cord11chunk_beginEv.exit.thread ], [ null, %_ZNK4absl4Cord11chunk_beginEv.exit ]
  %.not12 = icmp ugt i64 %3, %.sroa.0.0
  br i1 %.not12, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @__assert_fail(ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.1, i32 noundef 910, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4absl4Cord15CompareSlowPathESt17basic_string_viewIcSt11char_traitsIcEEmm) #20
  unreachable

bb.h:                                             ; preds = %bb.f
  %.not13 = icmp ugt i64 %3, %1
  br i1 %.not13, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @__assert_fail(ptr noundef nonnull @.str.140, ptr noundef nonnull @.str.1, i32 noundef 911, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4absl4Cord15CompareSlowPathESt17basic_string_viewIcSt11char_traitsIcEEmm) #20
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.13.0, i64 %3
  %i.n = sub nuw i64 %.sroa.0.0, %3
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %i.p = sub nuw i64 %1, %3
  %i.q = sub i64 %4, %3
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 56
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.k

bb.k:                                             ; preds = %_ZN4absl12_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES5_Pm.exit, %bb.j
  %i.t = phi i64 [ %i.l, %bb.j ], [ %i.ah, %_ZN4absl12_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES5_Pm.exit ] ; 5 uses
  %.sroa.030.0 = phi i64 [ %i.p, %bb.j ], [ %i.ao, %_ZN4absl12_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES5_Pm.exit ] ; 5 uses
  %.0 = phi i64 [ %i.q, %bb.j ], [ %i.ak, %_ZN4absl12_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES5_Pm.exit ] ; 2 uses
  %.sroa.9.0 = phi ptr [ %i.o, %bb.j ], [ %i.an, %_ZN4absl12_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES5_Pm.exit ] ; 2 uses
  %.sroa.0.1 = phi i64 [ %i.n, %bb.j ], [ %i.am, %_ZN4absl12_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES5_Pm.exit ] ; 2 uses
  %.sroa.13.1 = phi ptr [ %i.m, %bb.j ], [ %i.al, %_ZN4absl12_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES5_Pm.exit ]
  %i.u = icmp eq i64 %.sroa.0.1, 0
  br i1 %i.u, label %bb.l, label %_ZNK4absl4Cord13ChunkIteratordeEv.exit.i

bb.l:                                             ; preds = %bb.k
  %.not.i.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i, label %bb.m, label %bb.n, !prof !7

bb.m:                                             ; preds = %bb.l
  call void @__assert_fail(ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.31, i32 noundef 1556, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZN4absl4Cord13ChunkIteratorppEvENKUlvE_clEv) #20
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.v = load i64, ptr %5, align 8                ; 4 uses
  %.not2.i.i = icmp ult i64 %i.t, %i.v
  br i1 %.not2.i.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @__assert_fail(ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.31, i32 noundef 1557, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl4Cord13ChunkIteratorppEv) #20
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.w = sub nuw i64 %i.t, %i.v                   ; 2 uses
  store i64 %i.w, ptr %i.a, align 8
  %.not3.i.i = icmp eq i64 %i.t, %i.v
  br i1 %.not3.i.i, label %.critedge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.x = load i32, ptr %i.b, align 8              ; 2 uses
  %i.y = icmp sgt i32 %i.x, -1
  br i1 %i.y, label %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.i.i, label %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i

_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.i.i: ; preds = %bb.q
  %i.z = zext nneg i32 %i.x to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8
  %.not4.i.i = icmp eq ptr %i.ab, null
  br i1 %.not4.i.i, label %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i, label %_ZN4absl4Cord13ChunkIteratorppEv.exit.i

_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i: ; preds = %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.i.i, %bb.q
  %i.ac = icmp eq i64 %i.v, 0
  br i1 %i.ac, label %bb.r, label %_ZN4absl4Cord13ChunkIteratorppEv.exit.thread13.i

bb.r:                                             ; preds = %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i
  call void @__assert_fail(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.31, i32 noundef 1563, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl4Cord13ChunkIteratorppEv) #20
  unreachable

_ZN4absl4Cord13ChunkIteratorppEv.exit.thread13.i: ; preds = %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %5, i8 0, i64 16, i1 false)
  br label %_ZNK4absl4Cord13ChunkIteratordeEv.exit.i

_ZN4absl4Cord13ChunkIteratorppEv.exit.i:          ; preds = %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.i.i
  %i.ad = call { i64, ptr } @_ZN4absl13cord_internal18CordRepBtreeReader4NextEv(ptr noundef nonnull align 8 dereferenceable(120) %i.r) ; 2 uses
  %i.ae = extractvalue { i64, ptr } %i.ad, 0      ; 2 uses
  %i.af = extractvalue { i64, ptr } %i.ad, 1      ; 2 uses
  store i64 %i.ae, ptr %5, align 8
  store ptr %i.af, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  %.pr.pre.i = load i64, ptr %i.a, align 8        ; 2 uses
  %i.ag = icmp eq i64 %.pr.pre.i, 0
  br i1 %i.ag, label %.critedge, label %_ZNK4absl4Cord13ChunkIteratordeEv.exit.i

_ZNK4absl4Cord13ChunkIteratordeEv.exit.i:         ; preds = %_ZN4absl4Cord13ChunkIteratorppEv.exit.i, %bb.k, %_ZN4absl4Cord13ChunkIteratorppEv.exit.thread13.i
  %i.ah = phi i64 [ %i.t, %bb.k ], [ %i.w, %_ZN4absl4Cord13ChunkIteratorppEv.exit.thread13.i ], [ %.pr.pre.i, %_ZN4absl4Cord13ChunkIteratorppEv.exit.i ]
  %.sroa.0.2.ph = phi i64 [ %.sroa.0.1, %bb.k ], [ 0, %_ZN4absl4Cord13ChunkIteratorppEv.exit.thread13.i ], [ %i.ae, %_ZN4absl4Cord13ChunkIteratorppEv.exit.i ] ; 3 uses
  %.sroa.13.2.ph = phi ptr [ %.sroa.13.1, %bb.k ], [ null, %_ZN4absl4Cord13ChunkIteratorppEv.exit.thread13.i ], [ %i.af, %_ZN4absl4Cord13ChunkIteratorppEv.exit.i ] ; 2 uses
  %i.ai = icmp eq i64 %.sroa.030.0, 0
  br i1 %i.ai, label %.critedge, label %bb.s

bb.s:                                             ; preds = %_ZNK4absl4Cord13ChunkIteratordeEv.exit.i
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 %.sroa.030.0, i64 %.sroa.0.2.ph) ; 7 uses
  %.not.i15 = icmp ult i64 %.0, %.sroa.speculated.i
  br i1 %.not.i15, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @__assert_fail(ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.1, i32 noundef 782, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl12_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES5_Pm) #20
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.aj = call i32 @memcmp(ptr noundef %.sroa.13.2.ph, ptr noundef %.sroa.9.0, i64 noundef %.sroa.speculated.i) #25 ; 2 uses
  %.not18.i = icmp eq i32 %i.aj, 0
  br i1 %.not18.i, label %_ZN4absl12_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES5_Pm.exit, label %_ZN4absl12_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES5_Pm.exit.thread

_ZN4absl12_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES5_Pm.exit: ; preds = %bb.u
  %i.ak = sub nuw i64 %.0, %.sroa.speculated.i    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.13.2.ph, i64 %.sroa.speculated.i
  %i.am = sub nuw i64 %.sroa.0.2.ph, %.sroa.speculated.i
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.9.0, i64 %.sroa.speculated.i
  %i.ao = sub nuw i64 %.sroa.030.0, %.sroa.speculated.i
  %.not53 = icmp eq i64 %i.ak, 0
  br i1 %.not53, label %_ZN4absl12_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES5_Pm.exit.thread, label %bb.k, !llvm.loop !403

.critedge:                                        ; preds = %_ZN4absl4Cord13ChunkIteratorppEv.exit.i, %bb.p, %_ZNK4absl4Cord13ChunkIteratordeEv.exit.i
  %.sroa.030.0.lcssa60 = phi i64 [ %.sroa.030.0, %_ZN4absl4Cord13ChunkIteratorppEv.exit.i ], [ %.sroa.030.0, %bb.p ], [ 0, %_ZNK4absl4Cord13ChunkIteratordeEv.exit.i ]
  %.sroa.0.242 = phi i64 [ 0, %_ZN4absl4Cord13ChunkIteratorppEv.exit.i ], [ 0, %bb.p ], [ %.sroa.0.2.ph, %_ZNK4absl4Cord13ChunkIteratordeEv.exit.i ]
  %i.ap = icmp eq i64 %.sroa.030.0.lcssa60, 0
  %i.aq = zext i1 %i.ap to i32
  %i.ar = icmp eq i64 %.sroa.0.242, 0
  %.neg = sext i1 %i.ar to i32
  %i.as = add nsw i32 %.neg, %i.aq
  br label %_ZN4absl12_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES5_Pm.exit.thread

_ZN4absl12_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES5_Pm.exit.thread: ; preds = %bb.u, %_ZN4absl12_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES5_Pm.exit, %.critedge
  %.2 = phi i32 [ %i.as, %.critedge ], [ %i.aj, %bb.u ], [ 0, %_ZN4absl12_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES5_Pm.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  ret i32 %.2
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local { i64, ptr } @_ZNK4absl4Cord9InlineRep18FindFlatStartPieceEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8                 ; 2 uses
  %i.b = trunc i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %_ZNK4absl13cord_internal10InlineData11inline_sizeEv.exit

_ZNK4absl13cord_internal10InlineData11inline_sizeEv.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = sext i8 %i.a to i64
  %i.e = lshr exact i64 %i.d, 1
  %i.f = insertvalue { i64, ptr } poison, i64 %i.e, 0
  %i.g = insertvalue { i64, ptr } %i.f, ptr %i.c, 1
  br label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8              ; 4 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.81, i32 noundef 72, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal11SkipCrcNodeEPNS0_7CordRepE) #20
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.k = load i8, ptr %i.j, align 4               ; 2 uses
  %i.l = icmp eq i8 %i.k, 2
  br i1 %i.l, label %_ZN4absl13cord_internal7CordRep3crcEv.exit.i, label %_ZN4absl13cord_internal11SkipCrcNodeEPNS0_7CordRepE.exit, !prof !7

_ZN4absl13cord_internal7CordRep3crcEv.exit.i:     ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %.pre = load i8, ptr %.phi.trans.insert, align 4
  br label %_ZN4absl13cord_internal11SkipCrcNodeEPNS0_7CordRepE.exit

_ZN4absl13cord_internal11SkipCrcNodeEPNS0_7CordRepE.exit: ; preds = %bb.d, %_ZN4absl13cord_internal7CordRep3crcEv.exit.i
  %i.o = phi i8 [ %.pre, %_ZN4absl13cord_internal7CordRep3crcEv.exit.i ], [ %i.k, %bb.d ] ; 5 uses
  %.0.i31 = phi ptr [ %i.n, %_ZN4absl13cord_internal7CordRep3crcEv.exit.i ], [ %i.i, %bb.d ] ; 11 uses
  %i.p = icmp ugt i8 %i.o, 5
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4absl13cord_internal11SkipCrcNodeEPNS0_7CordRepE.exit
  %i.q = icmp ult i8 %i.o, -7
  br i1 %i.q, label %_ZN4absl13cord_internal7CordRep4flatEv.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.e
  tail call void @__assert_fail(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.78, i32 noundef 182, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal7CordRep4flatEv) #20
  unreachable

_ZN4absl13cord_internal7CordRep4flatEv.exit:      ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i31, i64 13
  %i.s = load i64, ptr %.0.i31, align 8
  %i.t = insertvalue { i64, ptr } poison, i64 %i.s, 0
  %i.u = insertvalue { i64, ptr } %i.t, ptr %i.r, 1
  br label %bb.o

bb.f:                                             ; preds = %_ZN4absl13cord_internal11SkipCrcNodeEPNS0_7CordRepE.exit
  switch i8 %i.o, label %bb.i [
    i8 5, label %_ZN4absl13cord_internal7CordRep8externalEv.exit
    i8 3, label %_ZN4absl13cord_internal7CordRep5btreeEv.exit
  ]

_ZN4absl13cord_internal7CordRep8externalEv.exit:  ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i31, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load i64, ptr %.0.i31, align 8
  %i.y = insertvalue { i64, ptr } poison, i64 %i.x, 0
  %i.z = insertvalue { i64, ptr } %i.y, ptr %i.w, 1
  br label %bb.o

_ZN4absl13cord_internal7CordRep5btreeEv.exit:     ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i31, i64 13
  %i.ab = load i8, ptr %i.aa, align 1             ; 2 uses
  %.not57 = icmp eq i8 %i.ab, 0
  br i1 %.not57, label %_ZN4absl13cord_internal7CordRep5btreeEv.exit32._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4absl13cord_internal7CordRep5btreeEv.exit
  %i.ac = zext i8 %i.ab to i32
  br label %bb.g

_ZN4absl13cord_internal7CordRep5btreeEv.exit32:   ; preds = %bb.g
  %i.ad = add nsw i32 %.02656, -1
  %i.ae = icmp sgt i32 %.02656, 1
  br i1 %i.ae, label %bb.g, label %_ZN4absl13cord_internal7CordRep5btreeEv.exit32._crit_edge, !llvm.loop !404

bb.g:                                             ; preds = %.lr.ph, %_ZN4absl13cord_internal7CordRep5btreeEv.exit32
  %.02656 = phi i32 [ %i.ac, %.lr.ph ], [ %i.ad, %_ZN4absl13cord_internal7CordRep5btreeEv.exit32 ] ; 2 uses
  %.02755 = phi ptr [ %.0.i31, %.lr.ph ], [ %i.ak, %_ZN4absl13cord_internal7CordRep5btreeEv.exit32 ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.02755, i64 14
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %.02755, i64 16
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ah
  %i.ak = load ptr, ptr %i.aj, align 8            ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  %i.am = load i8, ptr %i.al, align 4
  %i.an = icmp eq i8 %i.am, 3
  br i1 %i.an, label %_ZN4absl13cord_internal7CordRep5btreeEv.exit32, label %bb.h, !llvm.loop !404

bb.h:                                             ; preds = %bb.g
  tail call void @__assert_fail(ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.83, i32 noundef 599, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal7CordRep5btreeEv) #20
  unreachable

_ZN4absl13cord_internal7CordRep5btreeEv.exit32._crit_edge: ; preds = %_ZN4absl13cord_internal7CordRep5btreeEv.exit32, %_ZN4absl13cord_internal7CordRep5btreeEv.exit
  %.027.lcssa = phi ptr [ %.0.i31, %_ZN4absl13cord_internal7CordRep5btreeEv.exit ], [ %i.ak, %_ZN4absl13cord_internal7CordRep5btreeEv.exit32 ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.027.lcssa, i64 14
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = zext i8 %i.ap to i64
  %i.ar = tail call { i64, ptr } @_ZNK4absl13cord_internal12CordRepBtree4DataEm(ptr noundef nonnull align 8 dereferenceable(64) %.027.lcssa, i64 noundef %i.aq)
  br label %bb.o

bb.i:                                             ; preds = %bb.f
  %i.as = load i64, ptr %.0.i31, align 8          ; 3 uses
  %.not = icmp eq i64 %i.as, 0
  br i1 %.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.135, ptr noundef nonnull @.str.1, i32 noundef 837, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4absl4Cord9InlineRep18FindFlatStartPieceEv) #20
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.at = icmp eq i8 %i.o, 1
  br i1 %i.at, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %.0.i31, i64 16
  %i.av = load i64, ptr %i.au, align 8            ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i31, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8            ; 3 uses
  %.phi.trans.insert41 = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  %.pre42 = load i8, ptr %.phi.trans.insert41, align 4 ; 3 uses
  %i.ay = icmp ugt i8 %.pre42, 5
  br i1 %i.ay, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %i.az = icmp ult i8 %.pre42, -7
  br i1 %i.az, label %_ZN4absl13cord_internal7CordRep4flatEv.exit37, label %.critedge.i36

.critedge.i36:                                    ; preds = %bb.m
  tail call void @__assert_fail(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.78, i32 noundef 182, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal7CordRep4flatEv) #20
  unreachable

_ZN4absl13cord_internal7CordRep4flatEv.exit37:    ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 13
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.av
  %i.bc = insertvalue { i64, ptr } poison, i64 %i.as, 0
  %i.bd = insertvalue { i64, ptr } %i.bc, ptr %i.bb, 1
  br label %bb.o

.thread:                                          ; preds = %bb.k, %bb.l
  %.052 = phi i64 [ %i.av, %bb.l ], [ 0, %bb.k ]
  %.02851 = phi ptr [ %i.ax, %bb.l ], [ %.0.i31, %bb.k ]
  %i.be = phi i8 [ %.pre42, %bb.l ], [ %i.o, %bb.k ]
  %i.bf = icmp eq i8 %i.be, 5
  br i1 %i.bf, label %_ZN4absl13cord_internal7CordRep8externalEv.exit38, label %bb.n

bb.n:                                             ; preds = %.thread
  tail call void @__assert_fail(ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.1, i32 noundef 848, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4absl4Cord9InlineRep18FindFlatStartPieceEv) #20
  unreachable

_ZN4absl13cord_internal7CordRep8externalEv.exit38: ; preds = %.thread
  %i.bg = getelementptr inbounds nuw i8, ptr %.02851, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.052
  %i.bj = insertvalue { i64, ptr } poison, i64 %i.as, 0
  %i.bk = insertvalue { i64, ptr } %i.bj, ptr %i.bi, 1
  br label %bb.o

bb.o:                                             ; preds = %_ZN4absl13cord_internal7CordRep4flatEv.exit, %_ZN4absl13cord_internal7CordRep8externalEv.exit, %_ZN4absl13cord_internal7CordRep5btreeEv.exit32._crit_edge, %_ZN4absl13cord_internal7CordRep8externalEv.exit38, %_ZN4absl13cord_internal7CordRep4flatEv.exit37, %_ZNK4absl13cord_internal10InlineData11inline_sizeEv.exit
  %.fca.1.insert.merged = phi { i64, ptr } [ %i.u, %_ZN4absl13cord_internal7CordRep4flatEv.exit ], [ %i.z, %_ZN4absl13cord_internal7CordRep8externalEv.exit ], [ %i.ar, %_ZN4absl13cord_internal7CordRep5btreeEv.exit32._crit_edge ], [ %i.bd, %_ZN4absl13cord_internal7CordRep4flatEv.exit37 ], [ %i.bk, %_ZN4absl13cord_internal7CordRep8externalEv.exit38 ], [ %i.g, %_ZNK4absl13cord_internal10InlineData11inline_sizeEv.exit ]
  ret { i64, ptr } %.fca.1.insert.merged
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local { i64, ptr } @_ZNK4absl13cord_internal12CordRepBtree4DataEm(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.b = load i8, ptr %i.a, align 1
end_hunk_6
begin_hunk_7_@_ZNK4absl13cord_internal12CordRepBtree4DataEm:bb.a
  %i.m = load ptr, ptr %i.l, align 8              ; 6 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK4absl13cord_internal12CordRepBtree4EdgeEm.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72, i32 noundef 33, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE) #20
  unreachable

bb.h:                                             ; preds = %_ZNK4absl13cord_internal12CordRepBtree4EdgeEm.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.o = load i8, ptr %i.n, align 4               ; 3 uses
  %or.cond.i.i = icmp ugt i8 %i.o, 4
  br i1 %or.cond.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = icmp eq i8 %i.o, 1
  br i1 %i.p, label %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.i, label %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.thread14.i

_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.i: ; preds = %bb.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 4 ; 2 uses
  %i.s = icmp ugt i8 %.pre.i.i, 4
  br i1 %i.s, label %_ZNK4absl13cord_internal7CordRep9substringEv.exit12.i, label %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.thread14.i

_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.thread14.i: ; preds = %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.i, %bb.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.72, i32 noundef 46, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal8EdgeDataEPKNS0_7CordRepE) #20
  unreachable

_ZNK4absl13cord_internal7CordRep9substringEv.exit12.i: ; preds = %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.u = load i64, ptr %i.t, align 8
  br label %bb.j

bb.j:                                             ; preds = %_ZNK4absl13cord_internal7CordRep9substringEv.exit12.i, %bb.h
  %i.v = phi i8 [ %.pre.i.i, %_ZNK4absl13cord_internal7CordRep9substringEv.exit12.i ], [ %i.o, %bb.h ] ; 2 uses
  %.011.i = phi ptr [ %i.r, %_ZNK4absl13cord_internal7CordRep9substringEv.exit12.i ], [ %i.m, %bb.h ] ; 2 uses
  %.0.i = phi i64 [ %i.u, %_ZNK4absl13cord_internal7CordRep9substringEv.exit12.i ], [ 0, %bb.h ]
  %i.w = load i64, ptr %i.m, align 8
  %i.x = icmp ugt i8 %i.v, 5
  br i1 %i.x, label %bb.k, label %_ZNK4absl13cord_internal7CordRep8externalEv.exit.i

bb.k:                                             ; preds = %bb.j
  %i.y = icmp ult i8 %i.v, -7
  br i1 %i.y, label %_ZNK4absl13cord_internal7CordRep4flatEv.exit.i, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.k
  tail call void @__assert_fail(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.78, i32 noundef 187, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4absl13cord_internal7CordRep4flatEv) #20
  unreachable

_ZNK4absl13cord_internal7CordRep4flatEv.exit.i:   ; preds = %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %.011.i, i64 13
  br label %_ZN4absl13cord_internal8EdgeDataEPKNS0_7CordRepE.exit

_ZNK4absl13cord_internal7CordRep8externalEv.exit.i: ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %.011.i, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  br label %_ZN4absl13cord_internal8EdgeDataEPKNS0_7CordRepE.exit

_ZN4absl13cord_internal8EdgeDataEPKNS0_7CordRepE.exit: ; preds = %_ZNK4absl13cord_internal7CordRep4flatEv.exit.i, %_ZNK4absl13cord_internal7CordRep8externalEv.exit.i
  %.pn.i = phi ptr [ %i.z, %_ZNK4absl13cord_internal7CordRep4flatEv.exit.i ], [ %i.ab, %_ZNK4absl13cord_internal7CordRep8externalEv.exit.i ]
  %.sroa.3.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 %.0.i
  %.fca.0.insert.i = insertvalue { i64, ptr } poison, i64 %i.w, 0
  %.fca.1.insert.i = insertvalue { i64, ptr } %.fca.0.insert.i, ptr %.sroa.3.0.i, 1
  ret { i64, ptr } %.fca.1.insert.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK4absl4Cord15CompareSlowPathERKS0_mm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %4 = alloca %"class.absl::Cord::ChunkIterator", align 8 ; 16 uses
  %5 = alloca %"class.absl::Cord::ChunkIterator", align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !405)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %4, i8 0, i64 40, i1 false), !alias.scope !405
  store i32 -1, ptr %i.b, align 8, !alias.scope !405
  %i.c = load i8, ptr %0, align 8, !noalias !405  ; 2 uses
  %i.d = trunc i8 %i.c to i1                      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !noalias !405 ; 3 uses
  %.not8.i.i = icmp ne ptr %i.f, null
  %.not.not.i.i = select i1 %i.d, i1 %.not8.i.i, i1 false
  br i1 %.not.not.i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8, !noalias !405 ; 2 uses
  store i64 %i.g, ptr %i.a, align 8, !alias.scope !405
  %.not7.i.i = icmp eq i64 %i.g, 0
  br i1 %.not7.i.i, label %bb.d, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  call void @_ZN4absl4Cord13ChunkIterator8InitTreeEPNS_13cord_internal7CordRepE(ptr noundef nonnull align 8 dereferenceable(152) %4, ptr noundef nonnull %i.f)
  br label %_ZNK4absl4Cord11chunk_beginEv.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %4, i8 0, i64 16, i1 false), !alias.scope !405
  br label %_ZNK4absl4Cord11chunk_beginEv.exit

bb.e:                                             ; preds = %bb.a
  br i1 %i.d, label %bb.f, label %_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i, !prof !7

bb.f:                                             ; preds = %bb.e
  tail call void @__assert_fail(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.68, i32 noundef 758, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZNK4absl13cord_internal10InlineData3Rep11inline_sizeEvENKUlvE_clEv) #20, !noalias !405
  unreachable

_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i: ; preds = %bb.e
  %i.h = sext i8 %i.c to i64
  %i.i = lshr exact i64 %i.h, 1                   ; 2 uses
  store i64 %i.i, ptr %i.a, align 8, !alias.scope !405
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i64 %i.i, ptr %4, align 8, !alias.scope !405
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !405
  br label %_ZNK4absl4Cord11chunk_beginEv.exit

_ZNK4absl4Cord11chunk_beginEv.exit:               ; preds = %bb.c, %bb.d, %_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !408)
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %5, i8 0, i64 40, i1 false), !alias.scope !408
  store i32 -1, ptr %i.l, align 8, !alias.scope !408
  %i.m = load i8, ptr %1, align 8, !noalias !408  ; 2 uses
  %i.n = trunc i8 %i.m to i1                      ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !noalias !408 ; 3 uses
  %.not8.i.i17 = icmp ne ptr %i.p, null
  %.not.not.i.i18 = select i1 %i.n, i1 %.not8.i.i17, i1 false
  br i1 %.not.not.i.i18, label %bb.g, label %bb.j

bb.g:                                             ; preds = %_ZNK4absl4Cord11chunk_beginEv.exit
  %i.q = load i64, ptr %i.p, align 8, !noalias !408 ; 2 uses
  store i64 %i.q, ptr %i.k, align 8, !alias.scope !408
  %.not7.i.i21 = icmp eq i64 %i.q, 0
  br i1 %.not7.i.i21, label %bb.i, label %bb.h, !prof !7

bb.h:                                             ; preds = %bb.g
  call void @_ZN4absl4Cord13ChunkIterator8InitTreeEPNS_13cord_internal7CordRepE(ptr noundef nonnull align 8 dereferenceable(152) %5, ptr noundef nonnull %i.p)
  %.pre = load i64, ptr %i.k, align 8
  %.sroa.0.0.copyload.i24.pre = load i64, ptr %5, align 8
  %.sroa.2.0..sroa_idx.i25.phi.trans.insert = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.2.0.copyload.i26.pre = load ptr, ptr %.sroa.2.0..sroa_idx.i25.phi.trans.insert, align 8
  br label %_ZNK4absl4Cord11chunk_beginEv.exit22

bb.i:                                             ; preds = %bb.g
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %5, i8 0, i64 16, i1 false), !alias.scope !408
  br label %_ZNK4absl4Cord11chunk_beginEv.exit22

bb.j:                                             ; preds = %_ZNK4absl4Cord11chunk_beginEv.exit
  br i1 %i.n, label %bb.k, label %_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i19, !prof !7

bb.k:                                             ; preds = %bb.j
  call void @__assert_fail(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.68, i32 noundef 758, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZNK4absl13cord_internal10InlineData3Rep11inline_sizeEvENKUlvE_clEv) #20, !noalias !408
  unreachable

_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i19: ; preds = %bb.j
  %i.r = sext i8 %i.m to i64
  %i.s = lshr exact i64 %i.r, 1                   ; 4 uses
  store i64 %i.s, ptr %i.k, align 8, !alias.scope !408
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  store i64 %i.s, ptr %5, align 8, !alias.scope !408
  %.sroa.4.0..sroa_idx.i.i20 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.t, ptr %.sroa.4.0..sroa_idx.i.i20, align 8, !alias.scope !408
  br label %_ZNK4absl4Cord11chunk_beginEv.exit22

_ZNK4absl4Cord11chunk_beginEv.exit22:             ; preds = %bb.h, %bb.i, %_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i19
  %.sroa.2.0.copyload.i26 = phi ptr [ %.sroa.2.0.copyload.i26.pre, %bb.h ], [ null, %bb.i ], [ %i.t, %_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i19 ]
  %.sroa.0.0.copyload.i24 = phi i64 [ %.sroa.0.0.copyload.i24.pre, %bb.h ], [ 0, %bb.i ], [ %i.s, %_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i19 ]
  %i.u = phi i64 [ %.pre, %bb.h ], [ 0, %bb.i ], [ %i.s, %_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i19 ]
  %i.v = load i64, ptr %i.a, align 8
  %.not = icmp eq i64 %i.v, 0                     ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %4, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8
  %.sroa.059.0 = select i1 %.not, i64 0, i64 %.sroa.0.0.copyload.i ; 2 uses
  %.sroa.1365.0 = select i1 %.not, ptr null, ptr %.sroa.2.0.copyload.i
  %.not13 = icmp eq i64 %i.u, 0                   ; 2 uses
  %.sroa.2.0..sroa_idx.i25 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.0.0 = select i1 %.not13, i64 0, i64 %.sroa.0.0.copyload.i24 ; 2 uses
  %.sroa.13.0 = select i1 %.not13, ptr null, ptr %.sroa.2.0.copyload.i26
  %.not14 = icmp ugt i64 %2, %.sroa.059.0
  br i1 %.not14, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK4absl4Cord11chunk_beginEv.exit22
  call void @__assert_fail(ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.1, i32 noundef 944, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4absl4Cord15CompareSlowPathERKS0_mm) #20
  unreachable

bb.m:                                             ; preds = %_ZNK4absl4Cord11chunk_beginEv.exit22
  %.not15 = icmp ugt i64 %2, %.sroa.0.0
  br i1 %.not15, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @__assert_fail(ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.1, i32 noundef 945, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4absl4Cord15CompareSlowPathERKS0_mm) #20
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.1365.0, i64 %2
  %i.x = sub nuw i64 %.sroa.059.0, %2
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.13.0, i64 %2
  %i.z = sub nuw i64 %.sroa.0.0, %2
  %i.aa = sub i64 %3, %2
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 56
  br label %bb.p

bb.p:                                             ; preds = %_ZN4absl12_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES5_Pm.exit, %bb.o
  %.0 = phi i64 [ %i.aa, %bb.o ], [ %i.bi, %_ZN4absl12_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES5_Pm.exit ] ; 2 uses
  %.sroa.059.1 = phi i64 [ %i.x, %bb.o ], [ %i.bk, %_ZN4absl12_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES5_Pm.exit ] ; 2 uses
  %.sroa.1365.1 = phi ptr [ %i.w, %bb.o ], [ %i.bj, %_ZN4absl12_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES5_Pm.exit ]
  %.sroa.0.1 = phi i64 [ %i.z, %bb.o ], [ %i.bm, %_ZN4absl12_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES5_Pm.exit ] ; 4 uses
  %.sroa.13.1 = phi ptr [ %i.y, %bb.o ], [ %i.bl, %_ZN4absl12_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES5_Pm.exit ]
  %i.af = icmp eq i64 %.sroa.059.1, 0
  br i1 %i.af, label %bb.q, label %_ZNK4absl4Cord13ChunkIteratordeEv.exit.i

bb.q:                                             ; preds = %bb.p
  %i.ag = load i64, ptr %i.a, align 8             ; 4 uses
  %.not.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i, label %bb.r, label %bb.s, !prof !7

bb.r:                                             ; preds = %bb.q
  call void @__assert_fail(ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.31, i32 noundef 1556, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZN4absl4Cord13ChunkIteratorppEvENKUlvE_clEv) #20
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.ah = load i64, ptr %4, align 8               ; 4 uses
  %.not2.i.i = icmp ult i64 %i.ag, %i.ah
  br i1 %.not2.i.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @__assert_fail(ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.31, i32 noundef 1557, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl4Cord13ChunkIteratorppEv) #20
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.ai = sub nuw i64 %i.ag, %i.ah
  store i64 %i.ai, ptr %i.a, align 8
  %.not3.i.i = icmp eq i64 %i.ag, %i.ah
  br i1 %.not3.i.i, label %.critedge, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aj = load i32, ptr %i.b, align 8             ; 2 uses
  %i.ak = icmp sgt i32 %i.aj, -1
  br i1 %i.ak, label %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.i.i, label %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i

_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.i.i: ; preds = %bb.v
  %i.al = zext nneg i32 %i.aj to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8
  %.not4.i.i = icmp eq ptr %i.an, null
  br i1 %.not4.i.i, label %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i, label %_ZN4absl4Cord13ChunkIteratorppEv.exit.i

_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i: ; preds = %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.i.i, %bb.v
  %i.ao = icmp eq i64 %i.ah, 0
  br i1 %i.ao, label %bb.w, label %_ZN4absl4Cord13ChunkIteratorppEv.exit.thread13.i

bb.w:                                             ; preds = %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i
  call void @__assert_fail(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.31, i32 noundef 1563, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl4Cord13ChunkIteratorppEv) #20
  unreachable

_ZN4absl4Cord13ChunkIteratorppEv.exit.thread13.i: ; preds = %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %4, i8 0, i64 16, i1 false)
  br label %_ZNK4absl4Cord13ChunkIteratordeEv.exit.i

_ZN4absl4Cord13ChunkIteratorppEv.exit.i:          ; preds = %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.i.i
  %i.ap = call { i64, ptr } @_ZN4absl13cord_internal18CordRepBtreeReader4NextEv(ptr noundef nonnull align 8 dereferenceable(120) %i.ab) ; 2 uses
  %i.aq = extractvalue { i64, ptr } %i.ap, 0      ; 2 uses
  %i.ar = extractvalue { i64, ptr } %i.ap, 1      ; 2 uses
  store i64 %i.aq, ptr %4, align 8
  store ptr %i.ar, ptr %.sroa.2.0..sroa_idx.i, align 8
  %.pr.pre.i = load i64, ptr %i.a, align 8
  %i.as = icmp eq i64 %.pr.pre.i, 0
  br i1 %i.as, label %.critedge, label %_ZNK4absl4Cord13ChunkIteratordeEv.exit.i

_ZNK4absl4Cord13ChunkIteratordeEv.exit.i:         ; preds = %_ZN4absl4Cord13ChunkIteratorppEv.exit.i, %bb.p, %_ZN4absl4Cord13ChunkIteratorppEv.exit.thread13.i
  %.sroa.059.2.ph = phi i64 [ %.sroa.059.1, %bb.p ], [ 0, %_ZN4absl4Cord13ChunkIteratorppEv.exit.thread13.i ], [ %i.aq, %_ZN4absl4Cord13ChunkIteratorppEv.exit.i ] ; 4 uses
  %.sroa.1365.2.ph = phi ptr [ %.sroa.1365.1, %bb.p ], [ null, %_ZN4absl4Cord13ChunkIteratorppEv.exit.thread13.i ], [ %i.ar, %_ZN4absl4Cord13ChunkIteratorppEv.exit.i ] ; 2 uses
  %i.at = icmp eq i64 %.sroa.0.1, 0
  br i1 %i.at, label %bb.x, label %_ZNK4absl4Cord13ChunkIteratordeEv.exit.i36

bb.x:                                             ; preds = %_ZNK4absl4Cord13ChunkIteratordeEv.exit.i
  %i.au = load i64, ptr %i.k, align 8             ; 4 uses
  %.not.i.i31 = icmp eq i64 %i.au, 0
  br i1 %.not.i.i31, label %bb.y, label %bb.z, !prof !7

bb.y:                                             ; preds = %bb.x
  call void @__assert_fail(ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.31, i32 noundef 1556, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZN4absl4Cord13ChunkIteratorppEvENKUlvE_clEv) #20
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.av = load i64, ptr %5, align 8               ; 4 uses
  %.not2.i.i32 = icmp ult i64 %i.au, %i.av
  br i1 %.not2.i.i32, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void @__assert_fail(ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.31, i32 noundef 1557, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl4Cord13ChunkIteratorppEv) #20
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.aw = sub nuw i64 %i.au, %i.av
  store i64 %i.aw, ptr %i.k, align 8
  %.not3.i.i33 = icmp eq i64 %i.au, %i.av
  br i1 %.not3.i.i33, label %.critedge, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ax = load i32, ptr %i.l, align 8             ; 2 uses
  %i.ay = icmp sgt i32 %i.ax, -1
  br i1 %i.ay, label %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.i.i40, label %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i34

_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.i.i40: ; preds = %bb.ac
  %i.az = zext nneg i32 %i.ax to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.az
  %i.bb = load ptr, ptr %i.ba, align 8
  %.not4.i.i41 = icmp eq ptr %i.bb, null
  br i1 %.not4.i.i41, label %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i34, label %_ZN4absl4Cord13ChunkIteratorppEv.exit.i42

_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i34: ; preds = %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.i.i40, %bb.ac
  %i.bc = icmp eq i64 %i.av, 0
  br i1 %i.bc, label %bb.ad, label %_ZN4absl4Cord13ChunkIteratorppEv.exit.thread13.i35

bb.ad:                                            ; preds = %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i34
  call void @__assert_fail(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.31, i32 noundef 1563, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl4Cord13ChunkIteratorppEv) #20
  unreachable

_ZN4absl4Cord13ChunkIteratorppEv.exit.thread13.i35: ; preds = %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %5, i8 0, i64 16, i1 false)
  br label %_ZNK4absl4Cord13ChunkIteratordeEv.exit.i36

_ZN4absl4Cord13ChunkIteratorppEv.exit.i42:        ; preds = %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.i.i40
  %i.bd = call { i64, ptr } @_ZN4absl13cord_internal18CordRepBtreeReader4NextEv(ptr noundef nonnull align 8 dereferenceable(120) %i.ad) ; 2 uses
  %i.be = extractvalue { i64, ptr } %i.bd, 0      ; 2 uses
  %i.bf = extractvalue { i64, ptr } %i.bd, 1      ; 2 uses
  store i64 %i.be, ptr %5, align 8
  store ptr %i.bf, ptr %.sroa.2.0..sroa_idx.i25, align 8
  %.pr.pre.i44 = load i64, ptr %i.k, align 8
  %i.bg = icmp eq i64 %.pr.pre.i44, 0
  br i1 %i.bg, label %.critedge, label %_ZNK4absl4Cord13ChunkIteratordeEv.exit.i36

_ZNK4absl4Cord13ChunkIteratordeEv.exit.i36:       ; preds = %_ZN4absl4Cord13ChunkIteratorppEv.exit.i42, %_ZNK4absl4Cord13ChunkIteratordeEv.exit.i, %_ZN4absl4Cord13ChunkIteratorppEv.exit.thread13.i35
  %.sroa.0.3.ph = phi i64 [ %.sroa.0.1, %_ZNK4absl4Cord13ChunkIteratordeEv.exit.i ], [ 0, %_ZN4absl4Cord13ChunkIteratorppEv.exit.thread13.i35 ], [ %i.be, %_ZN4absl4Cord13ChunkIteratorppEv.exit.i42 ] ; 2 uses
  %.sroa.13.2.ph = phi ptr [ %.sroa.13.1, %_ZNK4absl4Cord13ChunkIteratordeEv.exit.i ], [ null, %_ZN4absl4Cord13ChunkIteratorppEv.exit.thread13.i35 ], [ %i.bf, %_ZN4absl4Cord13ChunkIteratorppEv.exit.i42 ] ; 2 uses
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 %.sroa.0.3.ph, i64 %.sroa.059.2.ph) ; 7 uses
  %.not.i46 = icmp ult i64 %.0, %.sroa.speculated.i
  br i1 %.not.i46, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZNK4absl4Cord13ChunkIteratordeEv.exit.i36
  call void @__assert_fail(ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.1, i32 noundef 782, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl12_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES5_Pm) #20
  unreachable

bb.af:                                            ; preds = %_ZNK4absl4Cord13ChunkIteratordeEv.exit.i36
  %i.bh = call i32 @memcmp(ptr noundef %.sroa.1365.2.ph, ptr noundef %.sroa.13.2.ph, i64 noundef %.sroa.speculated.i) #25 ; 2 uses
  %.not18.i = icmp eq i32 %i.bh, 0
  br i1 %.not18.i, label %_ZN4absl12_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES5_Pm.exit, label %_ZN4absl12_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES5_Pm.exit.thread

_ZN4absl12_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES5_Pm.exit: ; preds = %bb.af
  %i.bi = sub nuw i64 %.0, %.sroa.speculated.i    ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.1365.2.ph, i64 %.sroa.speculated.i
  %i.bk = sub nuw i64 %.sroa.059.2.ph, %.sroa.speculated.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.13.2.ph, i64 %.sroa.speculated.i
  %i.bm = sub nuw i64 %.sroa.0.3.ph, %.sroa.speculated.i
  %.not94 = icmp eq i64 %i.bi, 0
  br i1 %.not94, label %_ZN4absl12_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES5_Pm.exit.thread, label %bb.p, !llvm.loop !411

.critedge:                                        ; preds = %_ZN4absl4Cord13ChunkIteratorppEv.exit.i42, %bb.ab, %_ZN4absl4Cord13ChunkIteratorppEv.exit.i, %bb.u
  %.sroa.059.279 = phi i64 [ 0, %_ZN4absl4Cord13ChunkIteratorppEv.exit.i ], [ 0, %bb.u ], [ %.sroa.059.2.ph, %bb.ab ], [ %.sroa.059.2.ph, %_ZN4absl4Cord13ChunkIteratorppEv.exit.i42 ]
  %.sroa.0.2 = phi i64 [ %.sroa.0.1, %_ZN4absl4Cord13ChunkIteratorppEv.exit.i ], [ %.sroa.0.1, %bb.u ], [ 0, %bb.ab ], [ 0, %_ZN4absl4Cord13ChunkIteratorppEv.exit.i42 ]
  %i.bn = icmp eq i64 %.sroa.0.2, 0
  %i.bo = zext i1 %i.bn to i32
  %i.bp = icmp eq i64 %.sroa.059.279, 0
  %.neg = sext i1 %i.bp to i32
  %i.bq = add nsw i32 %i.bo, %.neg
  br label %_ZN4absl12_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES5_Pm.exit.thread

_ZN4absl12_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES5_Pm.exit.thread: ; preds = %bb.af, %_ZN4absl12_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES5_Pm.exit, %.critedge
  %.2 = phi i32 [ %i.bq, %.critedge ], [ %i.bh, %bb.af ], [ 0, %_ZN4absl12_GLOBAL__N_113CompareChunksEPSt17basic_string_viewIcSt11char_traitsIcEES5_Pm.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret i32 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZN4absl14GenericCompareIiNS_4CordEEET_RKS1_RKT0_m(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load i8, ptr %0, align 8                 ; 2 uses
  %i.b = trunc i8 %i.a to i1
  br i1 %i.b, label %_ZNK4absl4Cord9InlineRep7as_treeEv.exit.i.i.i.i, label %_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i.i.i

_ZNK4absl4Cord9InlineRep7as_treeEv.exit.i.i.i.i:  ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load i64, ptr %i.d, align 8
  br label %_ZNK4absl4Cord5emptyEv.exit.i

_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i.i.i: ; preds = %bb.a
  %i.f = sext i8 %i.a to i64
  %i.g = lshr exact i64 %i.f, 1
  br label %_ZNK4absl4Cord5emptyEv.exit.i

_ZNK4absl4Cord5emptyEv.exit.i:                    ; preds = %_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i.i.i, %_ZNK4absl4Cord9InlineRep7as_treeEv.exit.i.i.i.i
  %i.h = phi i64 [ %i.e, %_ZNK4absl4Cord9InlineRep7as_treeEv.exit.i.i.i.i ], [ %i.g, %_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i.i.i ]
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_ZN4absl4Cord13GetFirstChunkERKS0_.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK4absl4Cord5emptyEv.exit.i
  %i.j = tail call { i64, ptr } @_ZNK4absl4Cord9InlineRep18FindFlatStartPieceEv(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 2 uses
  %i.k = extractvalue { i64, ptr } %i.j, 0
  %i.l = extractvalue { i64, ptr } %i.j, 1
  br label %_ZN4absl4Cord13GetFirstChunkERKS0_.exit

_ZN4absl4Cord13GetFirstChunkERKS0_.exit:          ; preds = %_ZNK4absl4Cord5emptyEv.exit.i, %bb.b
  %.sroa.0.0.i = phi i64 [ %i.k, %bb.b ], [ 0, %_ZNK4absl4Cord5emptyEv.exit.i ]
  %.sroa.3.0.i = phi ptr [ %i.l, %bb.b ], [ null, %_ZNK4absl4Cord5emptyEv.exit.i ]
  %i.m = load i8, ptr %1, align 8                 ; 2 uses
  %i.n = trunc i8 %i.m to i1
  br i1 %i.n, label %_ZNK4absl4Cord9InlineRep7as_treeEv.exit.i.i.i.i24, label %_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i.i.i18

_ZNK4absl4Cord9InlineRep7as_treeEv.exit.i.i.i.i24: ; preds = %_ZN4absl4Cord13GetFirstChunkERKS0_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = load i64, ptr %i.p, align 8
  br label %_ZNK4absl4Cord5emptyEv.exit.i19

_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i.i.i18: ; preds = %_ZN4absl4Cord13GetFirstChunkERKS0_.exit
  %i.r = sext i8 %i.m to i64
  %i.s = lshr exact i64 %i.r, 1
  br label %_ZNK4absl4Cord5emptyEv.exit.i19

_ZNK4absl4Cord5emptyEv.exit.i19:                  ; preds = %_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i.i.i18, %_ZNK4absl4Cord9InlineRep7as_treeEv.exit.i.i.i.i24
  %i.t = phi i64 [ %i.q, %_ZNK4absl4Cord9InlineRep7as_treeEv.exit.i.i.i.i24 ], [ %i.s, %_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i.i.i18 ]
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %.thread, label %_ZN4absl4Cord13GetFirstChunkERKS0_.exit25

_ZN4absl4Cord13GetFirstChunkERKS0_.exit25:        ; preds = %_ZNK4absl4Cord5emptyEv.exit.i19
  %i.v = tail call { i64, ptr } @_ZNK4absl4Cord9InlineRep18FindFlatStartPieceEv(ptr noundef nonnull align 8 dereferenceable(16) %1) ; 2 uses
  %i.w = extractvalue { i64, ptr } %i.v, 0
  %i.x = extractvalue { i64, ptr } %i.v, 1
  %i.y = tail call i64 @llvm.umin.i64(i64 %i.w, i64 %.sroa.0.0.i) ; 4 uses
  %.not = icmp ult i64 %2, %i.y
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN4absl4Cord13GetFirstChunkERKS0_.exit25
  tail call void @__assert_fail(ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.1, i32 noundef 977, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl14GenericCompareIiNS_4CordEEET_RKS1_RKT0_m) #20
  unreachable

bb.d:                                             ; preds = %_ZN4absl4Cord13GetFirstChunkERKS0_.exit25
  %.not17 = icmp eq i64 %i.y, 0
  br i1 %.not17, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = tail call i32 @memcmp(ptr noundef %.sroa.3.0.i, ptr noundef %i.x, i64 noundef %i.y) #25
  br label %.thread

.thread:                                          ; preds = %_ZNK4absl4Cord5emptyEv.exit.i19, %bb.d, %bb.e
  %.sroa.0.0.i203540 = phi i64 [ %i.y, %bb.e ], [ 0, %bb.d ], [ 0, %_ZNK4absl4Cord5emptyEv.exit.i19 ] ; 2 uses
  %i.aa = phi i32 [ %i.z, %bb.e ], [ 0, %bb.d ], [ 0, %_ZNK4absl4Cord5emptyEv.exit.i19 ] ; 2 uses
  %i.ab = icmp eq i64 %.sroa.0.0.i203540, %2
  %i.ac = icmp ne i32 %i.aa, 0
  %or.cond = select i1 %i.ab, i1 true, i1 %i.ac
  br i1 %or.cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.thread
  %i.ad = tail call noundef i32 @_ZNK4absl4Cord15CompareSlowPathERKS0_mm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 noundef %.sroa.0.0.i203540, i64 noundef %2)
  br label %bb.g

bb.g:                                             ; preds = %.thread, %bb.f
  %.sink = phi i32 [ %i.ad, %bb.f ], [ %i.aa, %.thread ]
  %i.ae = tail call noundef range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32 %.sink, i32 0)
  ret i32 %i.ae
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN4absl13cord_internal19CordRepExternalImplIZNS_4Cord15FlattenSlowPathEvE3$_0E7ReleaseEPNS0_15CordRepExternalE"(ptr noundef %0) #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load i64, ptr %0, align 8
  %i.b = getelementptr i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.b, align 8
  tail call void @_ZdlPvm(ptr noundef %.val1, i64 noundef %.val) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #23
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #16

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { noreturn nounwind }
attributes #21 = { nounwind }
attributes #22 = { builtin nounwind allocsize(0) }
attributes #23 = { builtin nounwind }
attributes #24 = { nounwind allocsize(0) }
attributes #25 = { nounwind willreturn memory(read) }
attributes #26 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!5 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!6 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!7 = !{!"branch_weights", !"expected", i32 1, i32 2000}
end_hunk_7
