Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/cord?download=true
inline.NumInlined: 2123
inline.NumDeleted: 685
begin_hunk_0_@_ZN4absl4Cord13ChunkIterator19AdvanceAndReadBytesEm:bb.a
  br i1 %i.bm, label %bb.x, label %_ZN4absl4CordD2Ev.exit

bb.x:                                             ; preds = %bb.w
  call void @_ZN4absl4Cord9InlineRep9UnrefTreeEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  br label %_ZN4absl4CordD2Ev.exit

_ZN4absl4CordD2Ev.exit:                           ; preds = %bb.x, %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.bn = icmp ult i64 %2, %i.bg
  br i1 %i.bn, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZN4absl4CordD2Ev.exit
  %i.bo = load ptr, ptr %i.bj, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %2
  store ptr %i.bp, ptr %i.bj, align 8
  %i.bq = load i64, ptr %1, align 8
  %i.br = sub i64 %i.bq, %2
  store i64 %i.br, ptr %1, align 8
  br label %bb.ae

bb.z:                                             ; preds = %_ZN4absl4CordD2Ev.exit
  %i.bs = call { i64, ptr } @_ZN4absl13cord_internal18CordRepBtreeReader4NextEv(ptr noundef nonnull align 8 dereferenceable(120) %i.ay) ; 2 uses
  %i.bt = extractvalue { i64, ptr } %i.bs, 0
  %i.bu = extractvalue { i64, ptr } %i.bs, 1
  store i64 %i.bt, ptr %1, align 8
  store ptr %i.bu, ptr %i.bj, align 8
  br label %bb.ae

bb.aa:                                            ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.bv = call { i64, ptr } @_ZN4absl13cord_internal18CordRepBtreeReader4ReadEmmRPNS0_7CordRepE(ptr noundef nonnull align 8 dereferenceable(120) %i.ay, i64 noundef %2, i64 noundef %i.bg, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #21 ; 2 uses
  %i.bw = extractvalue { i64, ptr } %i.bv, 0
  %i.bx = extractvalue { i64, ptr } %i.bv, 1
  store i64 %i.bw, ptr %1, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.bx, ptr %.sroa.4.0..sroa_idx, align 8
  %i.by = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not.i54 = icmp eq ptr %i.by, null
  br i1 %.not.i54, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void @__assert_fail(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 1260, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl4Cord9InlineRep11EmplaceTreeEPNS_13cord_internal7CordRepENS2_18CordzUpdateTracker16MethodIdentifierE) #20
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.by, ptr %i.bz, align 8
  store i64 1, ptr %0, align 8
  %i.ca = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4absl13cord_internal17cordz_next_sampleE) ; 3 uses
  %i.cb = load i64, ptr %i.ca, align 8            ; 2 uses
  %i.cc = icmp sgt i64 %i.cb, 1
  br i1 %i.cc, label %_ZN4absl13cord_internal20cordz_should_profileEv.exit.thread.i, label %_ZN4absl13cord_internal20cordz_should_profileEv.exit.i, !prof !8

_ZN4absl13cord_internal20cordz_should_profileEv.exit.thread.i: ; preds = %bb.ac
  %i.cd = add nsw i64 %i.cb, -1
  store i64 %i.cd, ptr %i.ca, align 8
  br label %_ZN4absl4Cord9InlineRep11EmplaceTreeEPNS_13cord_internal7CordRepENS2_18CordzUpdateTracker16MethodIdentifierE.exit

_ZN4absl13cord_internal20cordz_should_profileEv.exit.i: ; preds = %bb.ac
  %i.ce = call noundef i64 @_ZN4absl13cord_internal25cordz_should_profile_slowERNS0_13SamplingStateE(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #21 ; 2 uses
  %i.cf = icmp sgt i64 %i.ce, 0
  br i1 %i.cf, label %bb.ad, label %_ZN4absl4Cord9InlineRep11EmplaceTreeEPNS_13cord_internal7CordRepENS2_18CordzUpdateTracker16MethodIdentifierE.exit, !prof !9

bb.ad:                                            ; preds = %_ZN4absl13cord_internal20cordz_should_profileEv.exit.i
  call void @_ZN4absl13cord_internal9CordzInfo9TrackCordERNS0_10InlineDataENS0_18CordzUpdateTracker16MethodIdentifierEl(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef 10, i64 noundef %i.ce) #21
  br label %_ZN4absl4Cord9InlineRep11EmplaceTreeEPNS_13cord_internal7CordRepENS2_18CordzUpdateTracker16MethodIdentifierE.exit

_ZN4absl4Cord9InlineRep11EmplaceTreeEPNS_13cord_internal7CordRepENS2_18CordzUpdateTracker16MethodIdentifierE.exit: ; preds = %_ZN4absl13cord_internal20cordz_should_profileEv.exit.thread.i, %_ZN4absl13cord_internal20cordz_should_profileEv.exit.i, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.ae

bb.ae:                                            ; preds = %bb.y, %bb.z, %_ZN4absl4Cord9InlineRep11EmplaceTreeEPNS_13cord_internal7CordRepENS2_18CordzUpdateTracker16MethodIdentifierE.exit
  %i.cg = load i64, ptr %i.b, align 8
  %i.ch = sub i64 %i.cg, %2
  store i64 %i.ch, ptr %i.b, align 8
  br label %_ZN4absl4Cord13ChunkIteratorppEv.exit53

_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.thread: ; preds = %bb.u, %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8            ; 7 uses
  %.not44 = icmp eq ptr %i.cj, null
  br i1 %.not44, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.thread
  tail call void @__assert_fail(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.1, i32 noundef 1126, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl4Cord13ChunkIterator19AdvanceAndReadBytesEm) #20
  unreachable

bb.ag:                                            ; preds = %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.thread
  %i.ck = load i64, ptr %i.cj, align 8
  %i.cl = icmp eq i64 %2, %i.ck
  br i1 %i.cl, label %bb.ah, label %_ZN4absl13cord_internal7CordRep9substringEv.exit

bb.ah:                                            ; preds = %bb.ag
  store i64 0, ptr %i.b, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cn = atomicrmw add ptr %i.cm, i32 2 monotonic, align 4 ; 0 uses
  %i.co = tail call fastcc noundef ptr @_ZN4abslL10VerifyTreeEPNS_13cord_internal7CordRepE(ptr noundef nonnull %i.cj) ; 0 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cj, ptr %i.cp, align 8
  store i64 1, ptr %0, align 8
  %i.cq = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4absl13cord_internal17cordz_next_sampleE) ; 3 uses
  %i.cr = load i64, ptr %i.cq, align 8            ; 2 uses
  %i.cs = icmp sgt i64 %i.cr, 1
  br i1 %i.cs, label %_ZN4absl13cord_internal20cordz_should_profileEv.exit.thread.i58, label %_ZN4absl13cord_internal20cordz_should_profileEv.exit.i57, !prof !8

_ZN4absl13cord_internal20cordz_should_profileEv.exit.thread.i58: ; preds = %bb.ah
  %i.ct = add nsw i64 %i.cr, -1
  store i64 %i.ct, ptr %i.cq, align 8
  br label %_ZN4absl4Cord13ChunkIteratorppEv.exit53

_ZN4absl13cord_internal20cordz_should_profileEv.exit.i57: ; preds = %bb.ah
  %i.cu = tail call noundef i64 @_ZN4absl13cord_internal25cordz_should_profile_slowERNS0_13SamplingStateE(ptr noundef nonnull align 8 dereferenceable(16) %i.cq) #21 ; 2 uses
  %i.cv = icmp sgt i64 %i.cu, 0
  br i1 %i.cv, label %bb.ai, label %_ZN4absl4Cord13ChunkIteratorppEv.exit53, !prof !9

bb.ai:                                            ; preds = %_ZN4absl13cord_internal20cordz_should_profileEv.exit.i57
  tail call void @_ZN4absl13cord_internal9CordzInfo9TrackCordERNS0_10InlineDataENS0_18CordzUpdateTracker16MethodIdentifierEl(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef 10, i64 noundef %i.cu) #21
  br label %_ZN4absl4Cord13ChunkIteratorppEv.exit53

_ZN4absl13cord_internal7CordRep9substringEv.exit: ; preds = %bb.ag
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cj, i64 12
  %i.cx = load i8, ptr %i.cw, align 4
  %i.cy = icmp eq i8 %i.cx, 1
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %spec.select = select i1 %i.cy, ptr %i.cz, ptr %i.ci
  %i.da = load ptr, ptr %spec.select, align 8     ; 8 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 12
  %i.dc = load i8, ptr %i.db, align 4             ; 2 uses
  %i.dd = icmp eq i8 %i.dc, 5
  br i1 %i.dd, label %_ZN4absl13cord_internal7CordRep8externalEv.exit, label %bb.aj

_ZN4absl13cord_internal7CordRep8externalEv.exit:  ; preds = %_ZN4absl13cord_internal7CordRep9substringEv.exit
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.df = load ptr, ptr %i.de, align 8
  br label %bb.ak

bb.aj:                                            ; preds = %_ZN4absl13cord_internal7CordRep9substringEv.exit
  %.off.i = add i8 %i.dc, -6
  %switch.i = icmp ult i8 %.off.i, -13
  br i1 %switch.i, label %_ZN4absl13cord_internal7CordRep4flatEv.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.aj
  tail call void @__assert_fail(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.78, i32 noundef 182, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal7CordRep4flatEv) #20
  unreachable

_ZN4absl13cord_internal7CordRep4flatEv.exit:      ; preds = %bb.aj
  %i.dg = getelementptr inbounds nuw i8, ptr %i.da, i64 13
  br label %bb.ak

bb.ak:                                            ; preds = %_ZN4absl13cord_internal7CordRep4flatEv.exit, %_ZN4absl13cord_internal7CordRep8externalEv.exit
  %i.dh = phi ptr [ %i.df, %_ZN4absl13cord_internal7CordRep8externalEv.exit ], [ %i.dg, %_ZN4absl13cord_internal7CordRep4flatEv.exit ]
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = ptrtoint ptr %i.dj to i64
  %i.dl = ptrtoint ptr %i.dh to i64
  %i.dm = sub i64 %i.dk, %i.dl                    ; 3 uses
  %i.dn = load i64, ptr %i.da, align 8            ; 3 uses
  %i.do = icmp ult i64 %i.dm, %i.dn
  br i1 %i.do, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  tail call void @__assert_fail(ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.68, i32 noundef 419, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal16CordRepSubstring9SubstringEPNS0_7CordRepEmm) #20
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.dp = sub nuw i64 %i.dn, %i.dm
  %.not29.i = icmp ugt i64 %2, %i.dp
  br i1 %.not29.i, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  tail call void @__assert_fail(ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.68, i32 noundef 420, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal16CordRepSubstring9SubstringEPNS0_7CordRepEmm) #20
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.dq = icmp eq i64 %2, %i.dn
  br i1 %i.dq, label %_ZN4absl13cord_internal7CordRep3RefEPS1_.exit.i, label %_ZN4absl13cord_internal7CordRep3RefEPS1_.exit32.i

_ZN4absl13cord_internal7CordRep3RefEPS1_.exit.i:  ; preds = %bb.ao
  %i.dr = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.ds = atomicrmw add ptr %i.dr, i32 2 monotonic, align 4 ; 0 uses
  br label %bb.ap

_ZN4absl13cord_internal7CordRep3RefEPS1_.exit32.i: ; preds = %bb.ao
  %i.dt = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #22 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.dt, i8 0, i64 16, i1 false)
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store i32 2, ptr %i.du, align 8
  store i64 %2, ptr %i.dt, align 16
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 12
  store i8 1, ptr %i.dv, align 4
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  store i64 %i.dm, ptr %i.dw, align 16
  %i.dx = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dy = atomicrmw add ptr %i.dx, i32 2 monotonic, align 4 ; 0 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  store ptr %i.da, ptr %i.dz, align 8
  br label %bb.ap

bb.ap:                                            ; preds = %_ZN4absl13cord_internal7CordRep3RefEPS1_.exit32.i, %_ZN4absl13cord_internal7CordRep3RefEPS1_.exit.i
  %.0.i = phi ptr [ %i.da, %_ZN4absl13cord_internal7CordRep3RefEPS1_.exit.i ], [ %i.dt, %_ZN4absl13cord_internal7CordRep3RefEPS1_.exit32.i ] ; 2 uses
  %i.ea = tail call fastcc noundef ptr @_ZN4abslL10VerifyTreeEPNS_13cord_internal7CordRepE(ptr noundef nonnull %.0.i) ; 0 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.i, ptr %i.eb, align 8
  store i64 1, ptr %0, align 8
  %i.ec = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4absl13cord_internal17cordz_next_sampleE) ; 3 uses
  %i.ed = load i64, ptr %i.ec, align 8            ; 2 uses
  %i.ee = icmp sgt i64 %i.ed, 1
  br i1 %i.ee, label %_ZN4absl13cord_internal20cordz_should_profileEv.exit.thread.i63, label %_ZN4absl13cord_internal20cordz_should_profileEv.exit.i62, !prof !8

_ZN4absl13cord_internal20cordz_should_profileEv.exit.thread.i63: ; preds = %bb.ap
  %i.ef = add nsw i64 %i.ed, -1
  store i64 %i.ef, ptr %i.ec, align 8
  br label %_ZN4absl4Cord9InlineRep11EmplaceTreeEPNS_13cord_internal7CordRepENS2_18CordzUpdateTracker16MethodIdentifierE.exit64

_ZN4absl13cord_internal20cordz_should_profileEv.exit.i62: ; preds = %bb.ap
  %i.eg = tail call noundef i64 @_ZN4absl13cord_internal25cordz_should_profile_slowERNS0_13SamplingStateE(ptr noundef nonnull align 8 dereferenceable(16) %i.ec) #21 ; 2 uses
  %i.eh = icmp sgt i64 %i.eg, 0
  br i1 %i.eh, label %bb.aq, label %_ZN4absl4Cord9InlineRep11EmplaceTreeEPNS_13cord_internal7CordRepENS2_18CordzUpdateTracker16MethodIdentifierE.exit64, !prof !9

bb.aq:                                            ; preds = %_ZN4absl13cord_internal20cordz_should_profileEv.exit.i62
  tail call void @_ZN4absl13cord_internal9CordzInfo9TrackCordERNS0_10InlineDataENS0_18CordzUpdateTracker16MethodIdentifierEl(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef 10, i64 noundef %i.eg) #21
  br label %_ZN4absl4Cord9InlineRep11EmplaceTreeEPNS_13cord_internal7CordRepENS2_18CordzUpdateTracker16MethodIdentifierE.exit64

_ZN4absl4Cord9InlineRep11EmplaceTreeEPNS_13cord_internal7CordRepENS2_18CordzUpdateTracker16MethodIdentifierE.exit64: ; preds = %_ZN4absl13cord_internal20cordz_should_profileEv.exit.thread.i63, %_ZN4absl13cord_internal20cordz_should_profileEv.exit.i62, %bb.aq
  %i.ei = load i64, ptr %i.b, align 8
  %i.ej = sub i64 %i.ei, %2
  store i64 %i.ej, ptr %i.b, align 8
  %i.ek = load ptr, ptr %i.di, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 %2
  store ptr %i.el, ptr %i.di, align 8
  %i.em = load i64, ptr %1, align 8
  %i.en = sub i64 %i.em, %2
  store i64 %i.en, ptr %1, align 8
  br label %_ZN4absl4Cord13ChunkIteratorppEv.exit53

_ZN4absl4Cord13ChunkIteratorppEv.exit53:          ; preds = %bb.ai, %_ZN4absl13cord_internal20cordz_should_profileEv.exit.i57, %_ZN4absl13cord_internal20cordz_should_profileEv.exit.thread.i58, %_ZNK4absl13cord_internal18CordRepBtreeReadercvbEv.exit.thread.i49, %bb.t, %bb.r, %bb.ae, %_ZN4absl4Cord9InlineRep11EmplaceTreeEPNS_13cord_internal7CordRepENS2_18CordzUpdateTracker16MethodIdentifierE.exit64, %bb.m, %_ZN4absl4Cord13ChunkIterator17RemoveChunkPrefixEm.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local { i64, ptr } @_ZN4absl13cord_internal18CordRepBtreeReader4NextEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.f = load i8, ptr %i.e, align 4               ; 2 uses
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 15 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1
  %i.j = zext i8 %i.i to i64
  %i.k = add nsw i64 %i.j, -1
  %i.l = icmp eq i64 %i.k, %i.g
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = tail call noundef ptr @_ZN4absl13cord_internal21CordRepBtreeNavigator6NextUpEv(ptr noundef nonnull align 8 dereferenceable(112) %i.m)
  br label %_ZN4absl13cord_internal21CordRepBtreeNavigator4NextEv.exit

bb.d:                                             ; preds = %bb.b
  %i.o = add i8 %i.f, 1                           ; 4 uses
  store i8 %i.o, ptr %i.e, align 4
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 14
  %i.r = load i8, ptr %i.q, align 1
  %.not.i.i = icmp ult i8 %i.o, %i.r
  br i1 %.not.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.83, i32 noundef 616, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4absl13cord_internal12CordRepBtree4EdgeEm) #20
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.s = load i8, ptr %i.h, align 1
  %i.t = icmp ult i8 %i.o, %i.s
  br i1 %i.t, label %_ZNK4absl13cord_internal12CordRepBtree4EdgeEm.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @__assert_fail(ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.83, i32 noundef 617, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4absl13cord_internal12CordRepBtree4EdgeEm) #20
  unreachable

_ZNK4absl13cord_internal12CordRepBtree4EdgeEm.exit.i: ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.p
  %i.w = load ptr, ptr %i.v, align 8
  br label %_ZN4absl13cord_internal21CordRepBtreeNavigator4NextEv.exit

_ZN4absl13cord_internal21CordRepBtreeNavigator4NextEv.exit: ; preds = %bb.c, %_ZNK4absl13cord_internal12CordRepBtree4EdgeEm.exit.i
  %i.x = phi ptr [ %i.n, %bb.c ], [ %i.w, %_ZNK4absl13cord_internal12CordRepBtree4EdgeEm.exit.i ] ; 7 uses
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4absl13cord_internal21CordRepBtreeNavigator4NextEv.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.101, i32 noundef 177, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal18CordRepBtreeReader4NextEv) #20
  unreachable

bb.i:                                             ; preds = %_ZN4absl13cord_internal21CordRepBtreeNavigator4NextEv.exit
  %i.y = load i64, ptr %i.x, align 8
  %i.z = load i64, ptr %0, align 8
  %i.aa = sub i64 %i.z, %i.y
  store i64 %i.aa, ptr %0, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  %i.ac = load i8, ptr %i.ab, align 4             ; 3 uses
  %or.cond.i.i = icmp ugt i8 %i.ac, 4
  br i1 %or.cond.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = icmp eq i8 %i.ac, 1
  br i1 %i.ad, label %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.i, label %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.thread14.i

_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.i: ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 4 ; 2 uses
  %i.ag = icmp ugt i8 %.pre.i.i, 4
  br i1 %i.ag, label %_ZNK4absl13cord_internal7CordRep9substringEv.exit12.i, label %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.thread14.i

_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.thread14.i: ; preds = %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.i, %bb.j
  tail call void @__assert_fail(ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.72, i32 noundef 46, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal8EdgeDataEPKNS0_7CordRepE) #20
  unreachable

_ZNK4absl13cord_internal7CordRep9substringEv.exit12.i: ; preds = %_ZN4absl13cord_internal10IsDataEdgeEPKNS0_7CordRepE.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ai = load i64, ptr %i.ah, align 8
  br label %bb.k

bb.k:                                             ; preds = %_ZNK4absl13cord_internal7CordRep9substringEv.exit12.i, %bb.i
  %i.aj = phi i8 [ %.pre.i.i, %_ZNK4absl13cord_internal7CordRep9substringEv.exit12.i ], [ %i.ac, %bb.i ] ; 2 uses
  %.011.i = phi ptr [ %i.af, %_ZNK4absl13cord_internal7CordRep9substringEv.exit12.i ], [ %i.x, %bb.i ] ; 2 uses
  %.0.i = phi i64 [ %i.ai, %_ZNK4absl13cord_internal7CordRep9substringEv.exit12.i ], [ 0, %bb.i ]
  %i.ak = load i64, ptr %i.x, align 8
  %i.al = icmp ugt i8 %i.aj, 5
  br i1 %i.al, label %bb.l, label %_ZNK4absl13cord_internal7CordRep8externalEv.exit.i

bb.l:                                             ; preds = %bb.k
  %i.am = icmp ult i8 %i.aj, -7
  br i1 %i.am, label %_ZNK4absl13cord_internal7CordRep4flatEv.exit.i, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.l
  tail call void @__assert_fail(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.78, i32 noundef 187, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK4absl13cord_internal7CordRep4flatEv) #20
  unreachable

_ZNK4absl13cord_internal7CordRep4flatEv.exit.i:   ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %.011.i, i64 13
  br label %_ZN4absl13cord_internal8EdgeDataEPKNS0_7CordRepE.exit

_ZNK4absl13cord_internal7CordRep8externalEv.exit.i: ; preds = %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %.011.i, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8
  br label %_ZN4absl13cord_internal8EdgeDataEPKNS0_7CordRepE.exit

_ZN4absl13cord_internal8EdgeDataEPKNS0_7CordRepE.exit: ; preds = %_ZNK4absl13cord_internal7CordRep4flatEv.exit.i, %_ZNK4absl13cord_internal7CordRep8externalEv.exit.i
  %.pn.i = phi ptr [ %i.an, %_ZNK4absl13cord_internal7CordRep4flatEv.exit.i ], [ %i.ap, %_ZNK4absl13cord_internal7CordRep8externalEv.exit.i ]
  %.sroa.3.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 %.0.i
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %_ZN4absl13cord_internal8EdgeDataEPKNS0_7CordRepE.exit
  %.sroa.0.0 = phi i64 [ %i.ak, %_ZN4absl13cord_internal8EdgeDataEPKNS0_7CordRepE.exit ], [ 0, %bb.a ]
  %.sroa.3.0 = phi ptr [ %.sroa.3.0.i, %_ZN4absl13cord_internal8EdgeDataEPKNS0_7CordRepE.exit ], [ null, %bb.a ]
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %.sroa.3.0, 1
  ret { i64, ptr } %.fca.1.insert
}

declare { i64, ptr } @_ZN4absl13cord_internal18CordRepBtreeReader4ReadEmmRPNS0_7CordRepE(ptr noundef nonnull align 8 dereferenceable(120), i64 noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef signext i8 @_ZNK4absl4CordixEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8                 ; 2 uses
  %i.b = trunc i8 %i.a to i1                      ; 2 uses
  br i1 %i.b, label %_ZNK4absl4Cord9InlineRep7as_treeEv.exit.i.i, label %_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i

_ZNK4absl4Cord9InlineRep7as_treeEv.exit.i.i:      ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load i64, ptr %i.d, align 8
  br label %_ZNK4absl4Cord4sizeEv.exit

_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i: ; preds = %bb.a
  %i.f = sext i8 %i.a to i64
  %i.g = lshr exact i64 %i.f, 1
  br label %_ZNK4absl4Cord4sizeEv.exit

_ZNK4absl4Cord4sizeEv.exit:                       ; preds = %_ZNK4absl4Cord9InlineRep7as_treeEv.exit.i.i, %_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i
  %i.h = phi i64 [ %i.e, %_ZNK4absl4Cord9InlineRep7as_treeEv.exit.i.i ], [ %i.g, %_ZNK4absl4Cord9InlineRep11inline_sizeEv.exit.i.i ]
  %i.i = icmp ult i64 %1, %i.h
  br i1 %i.i, label %bb.c, label %bb.b, !prof !8

bb.b:                                             ; preds = %_ZNK4absl4Cord4sizeEv.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.1, i32 noundef 1153, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZNK4absl4CordixEmENK3$_0clEv") #20
  unreachable

end_hunk_0
