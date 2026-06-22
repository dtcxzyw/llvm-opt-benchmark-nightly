inline.NumInlined: 2801
inline.NumDeleted: 1489
begin_hunk_0_@_ZN2v88internal6maglev31MaglevPhiRepresentationSelector18PreparePhiTaggingsEPNS1_10BasicBlockEPKS3_:bb.a
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
  %i.gi = sub i64 %i.fv, %i.fw
  br label %bb.aa

bb.z:                                             ; preds = %._crit_edge.i.i
  %i.gj = load ptr, ptr %i.v, align 8             ; 2 uses
  %i.gk = load ptr, ptr %i.x, align 8             ; 2 uses
  %.not25.i.i = icmp eq ptr %i.gj, %i.gk
  br i1 %.not25.i.i, label %"_ZN2v88internal8compiler10turboshaft13SnapshotTableIPNS0_6maglev9ValueNodeENS2_9NoKeyDataEE16StartNewSnapshotIZNS4_31MaglevPhiRepresentationSelector18PreparePhiTaggingsEPNS4_10BasicBlockEPKSB_E3$_0NS2_16NoChangeCallbackEEEvNS_4base6VectorIKNS8_8SnapshotEEERKT_RKT0_Qaasr3stdE14is_invocable_vITL0__NS2_16SnapshotTableKeyISM_SP_EENSI_ISN_EEEsr3stdE14is_invocable_vITL0_0_SU_SM_SM_E.exit", label %.lr.ph28.i.i

.lr.ph28.i.i:                                     ; preds = %bb.z
  %i.gl = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gm = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.gn = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.gu = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.gv = icmp eq i64 %i.fx, 8
  %unroll_iter = and i64 %i.fy, 4294967294
  %i.gw = and i64 %i.fx, 8
  %lcmp.mod.not = icmp eq i64 %i.gw, 0
  %lcmp.mod77 = trunc i64 %i.fy to i1
  br label %bb.ao

bb.aa:                                            ; preds = %._crit_edge.i.i, %bb.y
  %indvars.iv.i.i = phi i64 [ 0, %bb.y ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 4 uses
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %indvars.iv.i.i
  %.03320.i.i = load ptr, ptr %i.gx, align 8      ; 2 uses
  %.not3621.i.i = icmp eq ptr %.03320.i.i, %i.gd
  br i1 %.not3621.i.i, label %._crit_edge.i.i, label %.lr.ph23.preheader.i.i

.lr.ph23.preheader.i.i:                           ; preds = %bb.aa
  %i.gy = trunc nuw i64 %indvars.iv.i.i to i32    ; 2 uses
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
  %i.gz = getelementptr inbounds nuw i8, ptr %.03322.i.i, i64 16
  %i.ha = load i64, ptr %i.gz, align 8            ; 2 uses
  %i.hb = load ptr, ptr %i.p, align 8             ; 2 uses
  %i.hc = getelementptr inbounds nuw [24 x i8], ptr %i.hb, i64 %i.ha
  %i.hd = getelementptr inbounds nuw i8, ptr %.03322.i.i, i64 24
  %i.he = load i64, ptr %i.hd, align 8            ; 2 uses
  %i.hf = icmp samesign eq i64 %i.he, %i.ha
  br i1 %i.hf, label %.loopexit18.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.lr.ph23.i.i
  %i.hg = getelementptr inbounds nuw [24 x i8], ptr %i.hb, i64 %i.he
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN2v88internal8compiler10turboshaft13SnapshotTableIPNS0_6maglev9ValueNodeENS2_9NoKeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS6_S7_EERKS6_jj.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.02.019.i.i = phi ptr [ %i.hh, %_ZN2v88internal8compiler10turboshaft13SnapshotTableIPNS0_6maglev9ValueNodeENS2_9NoKeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS6_S7_EERKS6_jj.exit.i.i ], [ %i.hg, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.hh = getelementptr inbounds i8, ptr %.sroa.02.019.i.i, i64 -24 ; 3 uses
  %i.hi = load ptr, ptr %i.hh, align 8, !nonnull !40, !align !41 ; 4 uses
  %i.hj = getelementptr inbounds i8, ptr %.sroa.02.019.i.i, i64 -8
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hi, i64 12 ; 2 uses
  %i.hl = load i32, ptr %i.hk, align 4
  %i.hm = zext i32 %i.hl to i64
  %i.hn = icmp eq i64 %indvars.iv.i.i, %i.hm
  br i1 %i.hn, label %_ZN2v88internal8compiler10turboshaft13SnapshotTableIPNS0_6maglev9ValueNodeENS2_9NoKeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS6_S7_EERKS6_jj.exit.i.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.i
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hi, i64 8 ; 3 uses
  %i.hp = load i32, ptr %i.ho, align 8            ; 2 uses
  %i.hq = icmp eq i32 %i.hp, -1
  br i1 %i.hq, label %bb.ac, label %bb.an

bb.ac:                                            ; preds = %bb.ab
  %i.hr = load ptr, ptr %i.ac, align 8
  %i.hs = load ptr, ptr %i.aa, align 8
  %i.ht = ptrtoint ptr %i.hr to i64
  %i.hu = ptrtoint ptr %i.hs to i64
  %i.hv = sub i64 %i.ht, %i.hu
  %i.hw = ashr exact i64 %i.hv, 3                 ; 2 uses
  %i.hx = add nsw i64 %i.hw, %i.fy
  %i.hy = icmp ult i64 %i.hx, 4294967296
  br i1 %i.hy, label %bb.ae, label %bb.ad, !prof !36

bb.ad:                                            ; preds = %bb.ac
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.71) #19
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.hz = trunc i64 %i.hw to i32
  store i32 %i.hz, ptr %i.ho, align 8
  %i.ia = load ptr, ptr %i.x, align 8             ; 2 uses
  %i.ib = load ptr, ptr %i.gf, align 8            ; 2 uses
  %i.ic = icmp ult ptr %i.ia, %i.ib
  br i1 %i.ic, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryIPNS0_6maglev9ValueNodeENS3_9NoKeyDataEEEE9push_backEOSA_.exit.i.i.i, label %bb.af, !prof !36

bb.af:                                            ; preds = %bb.ae
  %i.id = load ptr, ptr %i.v, align 8
  %i.ie = ptrtoint ptr %i.ib to i64
  %i.if = ptrtoint ptr %i.id to i64
  %i.ig = sub i64 %i.ie, %i.if
  %i.ih = ashr exact i64 %i.ig, 3
  %i.ii = add nsw i64 %i.ih, 1
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryIPNS0_6maglev9ValueNodeENS3_9NoKeyDataEEEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.gg, i64 noundef %i.ii)
  %.pre.i.i.i.i.i = load ptr, ptr %i.x, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryIPNS0_6maglev9ValueNodeENS3_9NoKeyDataEEEE9push_backEOSA_.exit.i.i.i

_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryIPNS0_6maglev9ValueNodeENS3_9NoKeyDataEEEE9push_backEOSA_.exit.i.i.i: ; preds = %bb.af, %bb.ae
  %i.ij = phi ptr [ %i.ia, %bb.ae ], [ %.pre.i.i.i.i.i, %bb.af ] ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  store ptr %i.ik, ptr %i.x, align 8
  store ptr %i.hi, ptr %i.ij, align 8
  %i.il = load ptr, ptr %i.ac, align 8            ; 3 uses
  %i.im = load ptr, ptr %i.aa, align 8            ; 5 uses
  %i.in = ptrtoint ptr %i.il to i64               ; 4 uses
  %i.io = ptrtoint ptr %i.im to i64               ; 5 uses
  %i.ip = sub i64 %i.in, %i.io                    ; 4 uses
  %i.iq = ashr exact i64 %i.ip, 3                 ; 2 uses
  %i.ir = xor i64 %i.iq, -1
  %.not.i38.i.i = icmp ugt i64 %i.fy, %i.ir
  br i1 %.not.i38.i.i, label %bb.ag, label %bb.ah, !prof !5

bb.ag:                                            ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryIPNS0_6maglev9ValueNodeENS3_9NoKeyDataEEEE9push_backEOSA_.exit.i.i.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.72) #19
  unreachable

bb.ah:                                            ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft18SnapshotTableEntryIPNS0_6maglev9ValueNodeENS3_9NoKeyDataEEEE9push_backEOSA_.exit.i.i.i
  %i.is = load ptr, ptr %i.gh, align 8            ; 2 uses
  %i.it = ptrtoint ptr %i.is to i64
  %i.iu = sub i64 %i.it, %i.io                    ; 2 uses
  %i.iv = ashr exact i64 %i.iu, 3
  %i.iw = add nsw i64 %i.iq, %i.fy                ; 2 uses
  %i.ix = icmp ult i64 %i.iv, %i.iw
  br i1 %i.ix, label %bb.ai, label %_ZN2v88internal10ZoneVectorIPNS0_6maglev9ValueNodeEE19PrepareForInsertionEPKS4_mPm.exit.i.i

bb.ai:                                            ; preds = %bb.ah
  %i.iy = icmp eq ptr %i.im, %i.is
  %i.iz = ashr exact i64 %i.iu, 2
  %i.ja = select i1 %i.iy, i64 2, i64 %i.iz
  %i.jb = call noundef i64 @llvm.umax.i64(i64 %i.ja, i64 %i.iw) ; 3 uses
  %i.jc = load ptr, ptr %i.ge, align 8            ; 3 uses
  %i.jd = icmp ult i64 %i.jb, 2305843009213693951
  br i1 %i.jd, label %bb.ak, label %bb.aj, !prof !36

bb.aj:                                            ; preds = %bb.ai
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.33) #19
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.je = shl nuw i64 %i.jb, 3                    ; 3 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jc, i64 24
  %i.jg = load i64, ptr %i.jf, align 8
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jc, i64 16 ; 3 uses
  %i.ji = load i64, ptr %i.jh, align 8            ; 2 uses
  %i.jj = sub i64 %i.jg, %i.ji
  %i.jk = icmp ugt i64 %i.je, %i.jj
  br i1 %i.jk, label %bb.al, label %_ZN2v88internal4Zone13AllocateArrayIPNS0_6maglev9ValueNodeEA_S5_EEPT_m.exit.i.i.i, !prof !5

bb.al:                                            ; preds = %bb.ak
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.jc, i64 noundef %i.je) #18
  %.pre.i.i.i40.i.i = load i64, ptr %i.jh, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIPNS0_6maglev9ValueNodeEA_S5_EEPT_m.exit.i.i.i

_ZN2v88internal4Zone13AllocateArrayIPNS0_6maglev9ValueNodeEA_S5_EEPT_m.exit.i.i.i: ; preds = %bb.al, %bb.ak
  %i.jl = phi i64 [ %.pre.i.i.i40.i.i, %bb.al ], [ %i.ji, %bb.ak ] ; 2 uses
  %i.jm = inttoptr i64 %i.jl to ptr               ; 4 uses
  %i.jn = add i64 %i.jl, %i.je
  store i64 %i.jn, ptr %i.jh, align 8
  store ptr %i.jm, ptr %i.aa, align 8
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jm, i64 %i.ip
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 %i.fx
  store ptr %i.jp, ptr %i.ac, align 8
  %.not26.i.i.i = icmp eq ptr %i.im, null
  br i1 %.not26.i.i.i, label %_ZN2v88internal10ZoneVectorIPNS0_6maglev9ValueNodeEE19PrepareForInsertionEPKS4_mPm.exit.thread.i.i, label %bb.am

bb.am:                                            ; preds = %_ZN2v88internal4Zone13AllocateArrayIPNS0_6maglev9ValueNodeEA_S5_EEPT_m.exit.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.il) ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.jm, ptr nonnull align 8 %i.im, i64 %i.ip, i1 false)
  %.pre.i39.i.i = load ptr, ptr %i.aa, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_6maglev9ValueNodeEE19PrepareForInsertionEPKS4_mPm.exit.thread.i.i

_ZN2v88internal10ZoneVectorIPNS0_6maglev9ValueNodeEE19PrepareForInsertionEPKS4_mPm.exit.thread.i.i: ; preds = %bb.am, %_ZN2v88internal4Zone13AllocateArrayIPNS0_6maglev9ValueNodeEA_S5_EEPT_m.exit.i.i.i
  %i.jq = phi ptr [ %.pre.i39.i.i, %bb.am ], [ %i.jm, %_ZN2v88internal4Zone13AllocateArrayIPNS0_6maglev9ValueNodeEA_S5_EEPT_m.exit.i.i.i ] ; 2 uses
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.jq, i64 %i.jb
  store ptr %i.jr, ptr %i.gh, align 8
  br label %._crit_edge.i.i.i.i

_ZN2v88internal10ZoneVectorIPNS0_6maglev9ValueNodeEE19PrepareForInsertionEPKS4_mPm.exit.i.i: ; preds = %bb.ah
  %i.js = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.fx
  store ptr %i.js, ptr %i.ac, align 8
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZN2v88internal10ZoneVectorIPNS0_6maglev9ValueNodeEE19PrepareForInsertionEPKS4_mPm.exit.i.i, %_ZN2v88internal10ZoneVectorIPNS0_6maglev9ValueNodeEE19PrepareForInsertionEPKS4_mPm.exit.thread.i.i
  %.pn.i.i = phi ptr [ %i.im, %_ZN2v88internal10ZoneVectorIPNS0_6maglev9ValueNodeEE19PrepareForInsertionEPKS4_mPm.exit.i.i ], [ %i.jq, %_ZN2v88internal10ZoneVectorIPNS0_6maglev9ValueNodeEE19PrepareForInsertionEPKS4_mPm.exit.thread.i.i ] ; 2 uses
  %.pn.i.i74 = ptrtoint ptr %.pn.i.i to i64       ; 3 uses
  %.0.lcssa.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 %i.ip ; 4 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 %i.fx
  %.pre20.i.i.i.i = load ptr, ptr %i.hi, align 8  ; 2 uses
  %i.ju = add i64 %i.io, -1
  %i.jv = add i64 %i.gi, %.pn.i.i74
  %i.jw = add i64 %i.jv, %i.in
  %i.jx = sub i64 %i.jw, %i.io
  %i.jy = add i64 %.pn.i.i74, 8
  %i.jz = add i64 %i.jy, %i.in
  %i.ka = sub i64 %i.jz, %i.io
  %umax = call i64 @llvm.umax.i64(i64 %i.jx, i64 %i.ka)
  %i.kb = add i64 %i.ju, %umax
  %i.kc = add i64 %.pn.i.i74, %i.in
  %i.kd = sub i64 %i.kb, %i.kc                    ; 2 uses
  %i.ke = lshr i64 %i.kd, 3
  %i.kf = add nuw nsw i64 %i.ke, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.kd, 24
  br i1 %min.iters.check, label %.lr.ph18.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %._crit_edge.i.i.i.i
  %n.vec = and i64 %i.kf, 4611686018427387900     ; 3 uses
  %i.kg = shl i64 %n.vec, 3
  %i.kh = getelementptr i8, ptr %.0.lcssa.i.i.i.i, i64 %i.kg
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %.pre20.i.i.i.i, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ki = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %.0.lcssa.i.i.i.i, i64 %i.ki ; 2 uses
  %i.kj = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %broadcast.splat, ptr %next.gep, align 8
  store <2 x ptr> %broadcast.splat, ptr %i.kj, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.kk = icmp eq i64 %index.next, %n.vec
  br i1 %i.kk, label %middle.block, label %vector.body, !llvm.loop !42

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.kf, %n.vec
  br i1 %cmp.n, label %_ZN2v88internal10ZoneVectorIPNS0_6maglev9ValueNodeEE6insertEPKS4_mRS6_.exit.i.i.i, label %.lr.ph18.i.i.i.i.preheader

.lr.ph18.i.i.i.i.preheader:                       ; preds = %._crit_edge.i.i.i.i, %middle.block
  %.116.i.i.i.i.ph = phi ptr [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.kh, %middle.block ]
  br label %.lr.ph18.i.i.i.i

.lr.ph18.i.i.i.i:                                 ; preds = %.lr.ph18.i.i.i.i.preheader, %.lr.ph18.i.i.i.i
  %.116.i.i.i.i = phi ptr [ %i.kl, %.lr.ph18.i.i.i.i ], [ %.116.i.i.i.i.ph, %.lr.ph18.i.i.i.i.preheader ] ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %.116.i.i.i.i, i64 8 ; 2 uses
  store ptr %.pre20.i.i.i.i, ptr %.116.i.i.i.i, align 8
  %i.km = icmp ult ptr %i.kl, %i.jt
  br i1 %i.km, label %.lr.ph18.i.i.i.i, label %_ZN2v88internal10ZoneVectorIPNS0_6maglev9ValueNodeEE6insertEPKS4_mRS6_.exit.i.i.i, !llvm.loop !45

_ZN2v88internal10ZoneVectorIPNS0_6maglev9ValueNodeEE6insertEPKS4_mRS6_.exit.i.i.i: ; preds = %.lr.ph18.i.i.i.i, %middle.block
  %.pre.i.i.i = load i32, ptr %i.ho, align 8
  br label %bb.an

bb.an:                                            ; preds = %_ZN2v88internal10ZoneVectorIPNS0_6maglev9ValueNodeEE6insertEPKS4_mRS6_.exit.i.i.i, %bb.ab
  %i.kn = phi i32 [ %.pre.i.i.i, %_ZN2v88internal10ZoneVectorIPNS0_6maglev9ValueNodeEE6insertEPKS4_mRS6_.exit.i.i.i ], [ %i.hp, %bb.ab ]
  %i.ko = load ptr, ptr %i.hj, align 8
  %i.kp = add i32 %i.kn, %i.gy
  %i.kq = zext i32 %i.kp to i64
  %i.kr = load ptr, ptr %i.aa, align 8
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.kr, i64 %i.kq
  store ptr %i.ko, ptr %i.ks, align 8
  store i32 %i.gy, ptr %i.hk, align 4
  br label %_ZN2v88internal8compiler10turboshaft13SnapshotTableIPNS0_6maglev9ValueNodeENS2_9NoKeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS6_S7_EERKS6_jj.exit.i.i

_ZN2v88internal8compiler10turboshaft13SnapshotTableIPNS0_6maglev9ValueNodeENS2_9NoKeyDataEE16RecordMergeValueERNS2_18SnapshotTableEntryIS6_S7_EERKS6_jj.exit.i.i: ; preds = %bb.an, %.lr.ph.i.i
  %i.kt = icmp eq ptr %i.hh, %i.hc
  br i1 %i.kt, label %.loopexit18.i.i, label %.lr.ph.i.i

bb.ao:                                            ; preds = %_ZN2v88internal8compiler10turboshaft13SnapshotTableIPNS0_6maglev9ValueNodeENS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIS6_S7_EES6_.exit.i.i, %.lr.ph28.i.i
  %.03426.i.i = phi ptr [ %i.gj, %.lr.ph28.i.i ], [ %i.oj, %_ZN2v88internal8compiler10turboshaft13SnapshotTableIPNS0_6maglev9ValueNodeENS2_9NoKeyDataEE3SetENS2_16SnapshotTableKeyIS6_S7_EES6_.exit.i.i ] ; 2 uses
  %i.ku = load ptr, ptr %.03426.i.i, align 8      ; 4 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 8
  %i.kw = load i32, ptr %i.kv, align 8
  %i.kx = zext i32 %i.kw to i64
  %i.ky = load ptr, ptr %i.aa, align 8
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %i.kx ; 5 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 %i.fx
  br label %.lr.ph.i.i.i

bb.ap:                                            ; preds = %.lr.ph.i.i.i
  %i.lb = getelementptr inbounds nuw i8, ptr %.0249.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.lb, %i.la
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ap, %bb.ao
  %.0249.i.i.i = phi ptr [ %i.lb, %bb.ap ], [ %i.kz, %bb.ao ] ; 2 uses
  %i.lc = load ptr, ptr %.0249.i.i.i, align 8
  %.not28.i.i.i = icmp eq ptr %i.lc, null
  br i1 %.not28.i.i.i, label %"_ZZN2v88internal6maglev31MaglevPhiRepresentationSelector18PreparePhiTaggingsEPNS1_10BasicBlockEPKS3_ENK3$_0clENS0_8compiler10turboshaft16SnapshotTableKeyIPNS1_9ValueNodeENS9_9NoKeyDataEEENS_4base6VectorIKSC_EE.exit.i.i", label %bb.ap

._crit_edge.i.i.i:                                ; preds = %bb.ap
  %i.ld = load ptr, ptr %i.gu, align 8            ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 4
  %i.lf = load i32, ptr %i.le, align 4            ; 2 uses
  %i.lg = load ptr, ptr %0, align 8
  %i.lh = load ptr, ptr %i.lg, align 8            ; 3 uses
  %i.li = sext i32 %i.lf to i64                   ; 3 uses
  %i.lj = shl nsw i64 %i.li, 3                    ; 2 uses
  %i.lk = add nsw i64 %i.lj, 56                   ; 3 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lh, i64 24
  %i.lm = load i64, ptr %i.ll, align 8
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lh, i64 16 ; 3 uses
  %i.lo = load i64, ptr %i.ln, align 8            ; 2 uses
  %i.lp = sub i64 %i.lm, %i.lo
  %i.lq = icmp ugt i64 %i.lk, %i.lp
  br i1 %i.lq, label %bb.aq, label %_ZN2v88internal6maglev8NodeBase3NewINS1_3PhiEJPNS1_31MergePointInterpreterFrameStateENS0_11interpreter8RegisterEEEEPT_PNS0_4ZoneEmDpOT0_.exit.i.i.i, !prof !5

bb.aq:                                            ; preds = %._crit_edge.i.i.i
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.lh, i64 noundef %i.lk) #18
  %.pre.i.i.i.i.i.i12 = load i64, ptr %i.ln, align 8
  br label %_ZN2v88internal6maglev8NodeBase3NewINS1_3PhiEJPNS1_31MergePointInterpreterFrameStateENS0_11interpreter8RegisterEEEEPT_PNS0_4ZoneEmDpOT0_.exit.i.i.i

_ZN2v88internal6maglev8NodeBase3NewINS1_3PhiEJPNS1_31MergePointInterpreterFrameStateENS0_11interpreter8RegisterEEEEPT_PNS0_4ZoneEmDpOT0_.exit.i.i.i: ; preds = %bb.aq, %._crit_edge.i.i.i
  %i.lr = phi i64 [ %.pre.i.i.i.i.i.i12, %bb.aq ], [ %i.lo, %._crit_edge.i.i.i ] ; 2 uses
  %i.ls = add i64 %i.lr, %i.lk
  store i64 %i.ls, ptr %i.ln, align 8
  %i.lt = add i64 %i.lr, %i.lj
  %i.lu = inttoptr i64 %i.lt to ptr               ; 15 uses
  %i.lv = shl nsw i64 %i.li, 16
  %i.lw = or disjoint i64 %i.lv, 142
  store ptr null, ptr %i.lu, align 8
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lu, i64 8
  store i64 %i.lw, ptr %i.lx, align 8
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lu, i64 16 ; 3 uses
  store i32 0, ptr %i.ly, align 8
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lu, i64 20
  store i32 2147483647, ptr %i.lz, align 4
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lu, i64 24
  store i8 0, ptr %i.ma, align 8
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lu, i64 25
  store i8 0, ptr %i.mb, align 1
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lu, i64 32 ; 2 uses
  store ptr null, ptr %i.mc, align 8
  %i.md = getelementptr inbounds nuw i8, ptr %i.lu, i64 40
  store ptr %i.ld, ptr %i.md, align 8
  %i.me = getelementptr inbounds nuw i8, ptr %i.lu, i64 48
  store i32 262143, ptr %i.me, align 8
  %i.mf = getelementptr inbounds nuw i8, ptr %i.lu, i64 52
  store i32 262143, ptr %i.mf, align 4
  %i.mg = getelementptr inbounds i8, ptr %i.lu, i64 -8 ; 4 uses
  br i1 %i.gv, label %.epil.preheader, label %_ZN2v88internal6maglev8NodeBase3NewINS1_3PhiEJPNS1_31MergePointInterpreterFrameStateENS0_11interpreter8RegisterEEEEPT_PNS0_4ZoneEmDpOT0_.exit.i.i.i.new

._crit_edge12.i.i.i.unr-lcssa:                    ; preds = %_ZN2v88internal6maglev8NodeBase3NewINS1_3PhiEJPNS1_31MergePointInterpreterFrameStateENS0_11interpreter8RegisterEEEEPT_PNS0_4ZoneEmDpOT0_.exit.i.i.i.new
  br i1 %lcmp.mod.not, label %._crit_edge12.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge12.i.i.i.unr-lcssa, %_ZN2v88internal6maglev8NodeBase3NewINS1_3PhiEJPNS1_31MergePointInterpreterFrameStateENS0_11interpreter8RegisterEEEEPT_PNS0_4ZoneEmDpOT0_.exit.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %_ZN2v88internal6maglev8NodeBase3NewINS1_3PhiEJPNS1_31MergePointInterpreterFrameStateENS0_11interpreter8RegisterEEEEPT_PNS0_4ZoneEmDpOT0_.exit.i.i.i ], [ %indvars.iv.next.i.i.i.1, %._crit_edge12.i.i.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod77)
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %i.kz, i64 %indvars.iv.i.i.i.epil.init
  %i.mi = load ptr, ptr %i.mh, align 8            ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 16 ; 2 uses
  %i.mk = load i32, ptr %i.mj, align 8
  %i.ml = add nsw i32 %i.mk, 1
  store i32 %i.ml, ptr %i.mj, align 8
  %i.mm = sub nsw i64 0, %indvars.iv.i.i.i.epil.init
  %i.mn = getelementptr inbounds [8 x i8], ptr %i.mg, i64 %i.mm
  store ptr %i.mi, ptr %i.mn, align 8
  br label %._crit_edge12.i.i.i

._crit_edge12.i.i.i:                              ; preds = %._crit_edge12.i.i.i.unr-lcssa, %.epil.preheader
  %.not29.i.i.i = icmp eq i64 %i.fy, %i.li
  br i1 %.not29.i.i.i, label %bb.as, label %bb.ar

_ZN2v88internal6maglev8NodeBase3NewINS1_3PhiEJPNS1_31MergePointInterpreterFrameStateENS0_11interpreter8RegisterEEEEPT_PNS0_4ZoneEmDpOT0_.exit.i.i.i.new: ; preds = %_ZN2v88internal6maglev8NodeBase3NewINS1_3PhiEJPNS1_31MergePointInterpreterFrameStateENS0_11interpreter8RegisterEEEEPT_PNS0_4ZoneEmDpOT0_.exit.i.i.i, %_ZN2v88internal6maglev8NodeBase3NewINS1_3PhiEJPNS1_31MergePointInterpreterFrameStateENS0_11interpreter8RegisterEEEEPT_PNS0_4ZoneEmDpOT0_.exit.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.1, %_ZN2v88internal6maglev8NodeBase3NewINS1_3PhiEJPNS1_31MergePointInterpreterFrameStateENS0_11interpreter8RegisterEEEEPT_PNS0_4ZoneEmDpOT0_.exit.i.i.i.new ], [ 0, %_ZN2v88internal6maglev8NodeBase3NewINS1_3PhiEJPNS1_31MergePointInterpreterFrameStateENS0_11interpreter8RegisterEEEEPT_PNS0_4ZoneEmDpOT0_.exit.i.i.i ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %_ZN2v88internal6maglev8NodeBase3NewINS1_3PhiEJPNS1_31MergePointInterpreterFrameStateENS0_11interpreter8RegisterEEEEPT_PNS0_4ZoneEmDpOT0_.exit.i.i.i.new ], [ 0, %_ZN2v88internal6maglev8NodeBase3NewINS1_3PhiEJPNS1_31MergePointInterpreterFrameStateENS0_11interpreter8RegisterEEEEPT_PNS0_4ZoneEmDpOT0_.exit.i.i.i ]
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr %i.kz, i64 %indvars.iv.i.i.i
  %i.mp = load ptr, ptr %i.mo, align 8            ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 16 ; 2 uses
  %i.mr = load i32, ptr %i.mq, align 8
  %i.ms = add nsw i32 %i.mr, 1
  store i32 %i.ms, ptr %i.mq, align 8
  %i.mt = sub nsw i64 0, %indvars.iv.i.i.i
  %i.mu = getelementptr inbounds [8 x i8], ptr %i.mg, i64 %i.mt
  store ptr %i.mp, ptr %i.mu, align 8
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %i.kz, i64 %indvars.iv.i.i.i
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 8
  %i.mx = load ptr, ptr %i.mw, align 8            ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 16 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN2v88internal6maglev31MaglevPhiRepresentationSelector27AddNewNodeNoInputConversionINS1_14Uint32ToNumberEJEEEPT_PNS1_10BasicBlockENS1_18BasicBlockPositionESt16initializer_listIPNS1_9ValueNodeEEDpOT0_:bb.a
  %i.u = shl i64 %4, 16
  %i.v = or i64 %i.u, 26663156973744
  store ptr null, ptr %i.t, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %i.v, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i32 0, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 %i.h
  %.not14.i.i = icmp eq i64 %4, 0
  br i1 %.not14.i.i, label %_ZN2v88internal6maglev13MaglevReducerINS1_31MaglevPhiRepresentationSelectorEE27AddNewNodeNoInputConversionINS1_14Uint32ToNumberEJEEEPT_St16initializer_listIPNS1_9ValueNodeEEDpOT0_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN2v88internal6maglev8NodeBase3NewINS1_14Uint32ToNumberEJEEEPT_PNS0_4ZoneEmDpOT0_.exit.i
  %i.z = getelementptr inbounds i8, ptr %i.t, i64 -8
  br label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread.i.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread.i.i ] ; 2 uses
  %.01115.i.i = phi ptr [ %3, %.lr.ph.i.i ], [ %i.ak, %_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread.i.i ] ; 2 uses
  %i.aa = load ptr, ptr %.01115.i.i, align 8      ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = and i64 %i.ac, 7696581394432
  %i.ae = icmp eq i64 %i.ad, 2199023255552
  br i1 %i.ae, label %_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread.i.i, label %_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.i.i

_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.i.i: ; preds = %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.46) #19
  unreachable

_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread.i.i: ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8
  %i.ah = add nsw i32 %i.ag, 1
  store i32 %i.ah, ptr %i.af, align 8
  %i.ai = sub nsw i64 0, %indvars.iv.i.i
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.ai
  store ptr %i.aa, ptr %i.aj, align 8
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %i.ak = getelementptr inbounds nuw i8, ptr %.01115.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ak, %i.y
  br i1 %.not.i.i, label %_ZN2v88internal6maglev13MaglevReducerINS1_31MaglevPhiRepresentationSelectorEE27AddNewNodeNoInputConversionINS1_14Uint32ToNumberEJEEEPT_St16initializer_listIPNS1_9ValueNodeEEDpOT0_.exit, label %bb.d

_ZN2v88internal6maglev13MaglevReducerINS1_31MaglevPhiRepresentationSelectorEE27AddNewNodeNoInputConversionINS1_14Uint32ToNumberEJEEEPT_St16initializer_listIPNS1_9ValueNodeEEDpOT0_.exit: ; preds = %_ZN2v88internal6maglev21ValueRepresentationIsENS1_19ValueRepresentationES2_.exit.thread.i.i, %_ZN2v88internal6maglev8NodeBase3NewINS1_14Uint32ToNumberEJEEEPT_PNS0_4ZoneEmDpOT0_.exit.i
  tail call void @_ZN2v88internal6maglev13MaglevReducerINS1_31MaglevPhiRepresentationSelectorEE25AddInitializedNodeToGraphEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(152) %i.a, ptr noundef nonnull %i.t)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.al = tail call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_31MaglevPhiRepresentationSelectorEE37AddUnbufferedNewNodeNoInputConversionINS1_14Uint32ToNumberEJEEEPT_PNS1_10BasicBlockESt16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(152) %i.a, ptr noundef %1, ptr %3, i64 %4)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal6maglev13MaglevReducerINS1_31MaglevPhiRepresentationSelectorEE27AddNewNodeNoInputConversionINS1_14Uint32ToNumberEJEEEPT_St16initializer_listIPNS1_9ValueNodeEEDpOT0_.exit
  %.0 = phi ptr [ %i.t, %_ZN2v88internal6maglev13MaglevReducerINS1_31MaglevPhiRepresentationSelectorEE27AddNewNodeNoInputConversionINS1_14Uint32ToNumberEJEEEPT_St16initializer_listIPNS1_9ValueNodeEEDpOT0_.exit ], [ %i.al, %bb.e ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal6maglev31MaglevPhiRepresentationSelector19FixLoopPhisBackedgeEPNS1_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(576) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i8, ptr %1, align 8
  %i.b = icmp eq i8 %i.a, 0
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = icmp ne ptr %i.d, null
  %i.f = select i1 %i.b, i1 %i.e, i1 false
  br i1 %i.f, label %_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit, label %_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit.thread

_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8
  %.not36 = icmp eq ptr %i.h, null
  br i1 %.not36, label %_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = icmp eq ptr %i.g, %i.j
  br i1 %i.k, label %_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN2v88internal6maglev8NodeBase12change_inputEiPNS1_9ValueNodeE.exit
  %.sroa.033.037 = phi ptr [ %i.g, %.lr.ph ], [ %i.bb, %_ZN2v88internal6maglev8NodeBase12change_inputEiPNS1_9ValueNodeE.exit ] ; 2 uses
  %i.m = load ptr, ptr %.sroa.033.037, align 8    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i64, ptr %i.n, align 8              ; 2 uses
  %i.p = trunc i64 %i.o to i32
  %i.q = lshr i32 %i.p, 16
  %i.r = getelementptr inbounds i8, ptr %i.m, i64 -8
  %narrow = sub nsw i32 1, %i.q
  %i.s = sext i32 %narrow to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.s ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8              ; 5 uses
  %i.v = and i64 %i.o, 7696581394432
  %i.w = icmp eq i64 %i.v, 0
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.y = load i64, ptr %i.x, align 8              ; 2 uses
  br i1 %i.w, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.z = and i64 %i.y, 7696581394432
  %.not = icmp eq i64 %i.z, 0
  br i1 %.not, label %_ZN2v88internal6maglev8NodeBase12change_inputEiPNS1_9ValueNodeE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr %i.l, align 8
  %i.ab = tail call noundef ptr @_ZN2v88internal6maglev31MaglevPhiRepresentationSelector15EnsurePhiTaggedEPNS1_3PhiEPNS1_10BasicBlockENS1_18BasicBlockPositionEPKNS1_15ProcessingStateESt8optionalIiE(ptr noundef nonnull align 8 dereferenceable(576) %0, ptr noundef nonnull %i.u, ptr noundef %i.aa, i32 -1, ptr poison, i64 0) ; 4 uses
  %i.ac = load ptr, ptr %i.t, align 8             ; 4 uses
  %i.ad = icmp eq ptr %i.ac, %i.ab
  br i1 %i.ad, label %_ZN2v88internal6maglev8NodeBase12change_inputEiPNS1_9ValueNodeE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8            ; 2 uses
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %bb.g, label %_ZN2v88internal6maglev8NodeBase12change_inputEiPNS1_9ValueNodeE.exit.sink.split

bb.g:                                             ; preds = %bb.f
  %i.ah = add nsw i32 %i.af, -1
  store i32 %i.ah, ptr %i.ae, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = and i64 %i.aj, 65535
  %.not.i.i = icmp eq i64 %i.ak, 99
  br i1 %.not.i.i, label %bb.h, label %_ZN2v88internal6maglev8NodeBase12change_inputEiPNS1_9ValueNodeE.exit.sink.split

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 36 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4
  %i.an = tail call i32 @llvm.smax.i32(i32 %i.am, i32 1)
  %.sroa.speculated.i.i.i = add nsw i32 %i.an, -1
  store i32 %.sroa.speculated.i.i.i, ptr %i.al, align 4
  br label %_ZN2v88internal6maglev8NodeBase12change_inputEiPNS1_9ValueNodeE.exit.sink.split

bb.i:                                             ; preds = %bb.c
  %i.ao = and i64 %i.y, 65535
  %i.ap = icmp eq i64 %i.ao, 67
  br i1 %i.ap, label %bb.j, label %_ZN2v88internal6maglev8NodeBase12change_inputEiPNS1_9ValueNodeE.exit

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds i8, ptr %i.u, i64 -8
  %i.ar = load ptr, ptr %i.aq, align 8            ; 3 uses
  %i.as = icmp eq ptr %i.u, %i.ar
  br i1 %i.as, label %_ZN2v88internal6maglev8NodeBase12change_inputEiPNS1_9ValueNodeE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8            ; 2 uses
  %i.av = icmp sgt i32 %i.au, 0
  br i1 %i.av, label %bb.l, label %_ZN2v88internal6maglev8NodeBase12change_inputEiPNS1_9ValueNodeE.exit.sink.split

bb.l:                                             ; preds = %bb.k
  %i.aw = add nsw i32 %i.au, -1
  store i32 %i.aw, ptr %i.at, align 8
  br label %_ZN2v88internal6maglev8NodeBase12change_inputEiPNS1_9ValueNodeE.exit.sink.split

_ZN2v88internal6maglev8NodeBase12change_inputEiPNS1_9ValueNodeE.exit.sink.split: ; preds = %bb.k, %bb.l, %bb.f, %bb.g, %bb.h
  %.sink51 = phi ptr [ %i.ab, %bb.f ], [ %i.ab, %bb.h ], [ %i.ab, %bb.g ], [ %i.ar, %bb.l ], [ %i.ar, %bb.k ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sink51, i64 16 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 8
  %i.az = add nsw i32 %i.ay, 1
  store i32 %i.az, ptr %i.ax, align 8
  store ptr %.sink51, ptr %i.t, align 8
  br label %_ZN2v88internal6maglev8NodeBase12change_inputEiPNS1_9ValueNodeE.exit

_ZN2v88internal6maglev8NodeBase12change_inputEiPNS1_9ValueNodeE.exit: ; preds = %_ZN2v88internal6maglev8NodeBase12change_inputEiPNS1_9ValueNodeE.exit.sink.split, %bb.j, %bb.e, %bb.i, %bb.d
  %i.ba = load ptr, ptr %.sroa.033.037, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 32 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.j
  br i1 %i.bc, label %_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit.thread, label %bb.c

_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit.thread: ; preds = %_ZN2v88internal6maglev8NodeBase12change_inputEiPNS1_9ValueNodeE.exit, %bb.b, %bb.a, %_ZNK2v88internal6maglev10BasicBlock7has_phiEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIjN2v88internal8compiler10turboshaft13SnapshotTableIPNS4_6maglev9ValueNodeENS6_9NoKeyDataEE8SnapshotEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjSD_EEE2atIjSE_EEDTclsrT0_5valueclL_ZSt9addressofISM_EPT_RSS_EclL_ZSt7declvalIRSM_EDTcl9__declvalISS_ELi0EEEvEEEEERSL_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 3 uses
  %i.b = icmp ult i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %.not.i.i.i = icmp ult i64 %i.d, 131072
  br i1 %.not.i.i.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal8compiler10turboshaft13SnapshotTableIPNS4_6maglev9ValueNodeENS6_9NoKeyDataEE8SnapshotEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjSD_EEE4findIjEENSO_8iteratorERSL_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = load i32, ptr %1, align 4
  %i.h = icmp eq i32 %i.f, %i.g
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl18container_internal11kSooControlE, ptr poison }, ptr %i.e, 1
  %spec.select.i.i = select i1 %i.h, { ptr, ptr } %.fca.1.insert.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal8compiler10turboshaft13SnapshotTableIPNS4_6maglev9ValueNodeENS6_9NoKeyDataEE8SnapshotEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjSD_EEE4findIjEENSO_8iteratorERSL_.exit

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.i, align 8 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8
  %sext.i = shl i64 %i.k, 48
  %i.l = ashr exact i64 %sext.i, 48
  %i.m = load i32, ptr %1, align 4                ; 2 uses
  %i.n = zext i32 %i.m to i64
  %i.o = xor i64 %i.l, %i.n
  %i.p = zext i64 %i.o to i128
  %i.q = mul nuw nsw i128 %i.p, 8779197792823184629 ; 2 uses
  %i.r = lshr i128 %i.q, 64
  %i.s = xor i128 %i.r, %i.q
  %i.t = trunc i128 %i.s to i64                   ; 2 uses
  %i.u = lshr i64 %i.t, 57
  %i.v = trunc nuw nsw i64 %i.u to i8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i14.i.i = load ptr, ptr %i.w, align 8 ; 2 uses
  %i.x = insertelement <16 x i8> poison, i8 %i.v, i64 0
  %i.y = shufflevector <16 x i8> %i.x, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i7.i = phi i64 [ %i.t, %bb.d ], [ %i.ar, %bb.g ]
  %.sroa.13.0.i.i = phi i64 [ 0, %bb.d ], [ %i.aq, %bb.g ]
  %.sroa.6.0.i.i = and i64 %.pn.i7.i, %i.a        ; 4 uses
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %.sroa.6.0.i.i
  tail call void @llvm.prefetch.p0(ptr %i.z, i32 0, i32 3, i32 1)
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.6.0.i.i
  %i.ab = load <16 x i8>, ptr %i.aa, align 1      ; 2 uses
  %i.ac = icmp eq <16 x i8> %i.y, %i.ab
  %i.ad = bitcast <16 x i1> %i.ac to i16          ; 2 uses
  %.not46.i.i = icmp eq i16 %i.ad, 0
  br i1 %.not46.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.sroa.017.047.i.i = phi i16 [ %i.an, %bb.f ], [ %i.ad, %bb.e ] ; 3 uses
  %i.ae = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i, i1 true)
  %i.af = zext nneg i16 %i.ae to i64
  %i.ag = add i64 %.sroa.6.0.i.i, %i.af
  %i.ah = and i64 %i.ag, %i.a                     ; 2 uses
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %i.ah ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = icmp eq i32 %i.aj, %i.m
  br i1 %i.ak, label %.thread33.i.i, label %bb.f, !prof !36

.thread33.i.i:                                    ; preds = %.lr.ph.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.ah
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal8compiler10turboshaft13SnapshotTableIPNS4_6maglev9ValueNodeENS6_9NoKeyDataEE8SnapshotEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjSD_EEE10find_largeIjEENSO_8iteratorERSL_m.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.am = add i16 %.sroa.017.047.i.i, -1
  %i.an = and i16 %i.am, %.sroa.017.047.i.i       ; 2 uses
  %.not.i.i = icmp eq i16 %i.an, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.f, %bb.e
  %i.ao = icmp eq <16 x i8> %i.ab, splat (i8 -128)
  %i.ap = bitcast <16 x i1> %i.ao to i16
  %.not44.i.i = icmp eq i16 %i.ap, 0
  br i1 %.not44.i.i, label %bb.g, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal8compiler10turboshaft13SnapshotTableIPNS4_6maglev9ValueNodeENS6_9NoKeyDataEE8SnapshotEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjSD_EEE10find_largeIjEENSO_8iteratorERSL_m.exit.i, !prof !5

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.aq = add i64 %.sroa.13.0.i.i, 16             ; 2 uses
  %i.ar = add i64 %i.aq, %.sroa.6.0.i.i
  br label %bb.e, !llvm.loop !61

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal8compiler10turboshaft13SnapshotTableIPNS4_6maglev9ValueNodeENS6_9NoKeyDataEE8SnapshotEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjSD_EEE10find_largeIjEENSO_8iteratorERSL_m.exit.i: ; preds = %._crit_edge.i.i, %.thread33.i.i
  %.sroa.0.4.ph.i.i = phi ptr [ %i.al, %.thread33.i.i ], [ null, %._crit_edge.i.i ]
  %.sroa.3.4.ph.i.i = phi ptr [ %i.ai, %.thread33.i.i ], [ undef, %._crit_edge.i.i ]
  %.fca.0.insert.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i, 0
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i, ptr %.sroa.3.4.ph.i.i, 1
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal8compiler10turboshaft13SnapshotTableIPNS4_6maglev9ValueNodeENS6_9NoKeyDataEE8SnapshotEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjSD_EEE4findIjEENSO_8iteratorERSL_.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal8compiler10turboshaft13SnapshotTableIPNS4_6maglev9ValueNodeENS6_9NoKeyDataEE8SnapshotEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjSD_EEE4findIjEENSO_8iteratorERSL_.exit: ; preds = %bb.b, %bb.c, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal8compiler10turboshaft13SnapshotTableIPNS4_6maglev9ValueNodeENS6_9NoKeyDataEE8SnapshotEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjSD_EEE10find_largeIjEENSO_8iteratorERSL_m.exit.i
  %.pn.i = phi { ptr, ptr } [ %.fca.1.insert.i.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal8compiler10turboshaft13SnapshotTableIPNS4_6maglev9ValueNodeENS6_9NoKeyDataEE8SnapshotEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjSD_EEE10find_largeIjEENSO_8iteratorERSL_m.exit.i ], [ { ptr null, ptr undef }, %bb.b ], [ %spec.select.i.i, %bb.c ] ; 2 uses
  %i.as = extractvalue { ptr, ptr } %.pn.i, 0     ; 4 uses
  %i.at = icmp eq ptr %i.as, null                 ; 2 uses
  %i.au = icmp eq ptr %i.as, @_ZN4absl18container_internal19kDefaultIterControlE ; 2 uses
  %or.cond.i.i = or i1 %i.at, %i.au
  br i1 %or.cond.i.i, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i, label %bb.h

bb.h:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal8compiler10turboshaft13SnapshotTableIPNS4_6maglev9ValueNodeENS6_9NoKeyDataEE8SnapshotEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjSD_EEE4findIjEENSO_8iteratorERSL_.exit
  %i.av = load i8, ptr %i.as, align 1
  %i.aw = icmp sgt i8 %i.av, -1
  br i1 %i.aw, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i, label %bb.i, !prof !36

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i: ; preds = %bb.h, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal8compiler10turboshaft13SnapshotTableIPNS4_6maglev9ValueNodeENS6_9NoKeyDataEE8SnapshotEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjSD_EEE4findIjEENSO_8iteratorERSL_.exit
  br i1 %i.au, label %bb.j, label %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal8compiler10turboshaft13SnapshotTableIPNS4_6maglev9ValueNodeENS6_9NoKeyDataEE8SnapshotEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjSD_EEE8iteratorESR_.exit, !prof !5

bb.j:                                             ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.64, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.62) #18
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal8compiler10turboshaft13SnapshotTableIPNS4_6maglev9ValueNodeENS6_9NoKeyDataEE8SnapshotEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjSD_EEE8iteratorESR_.exit: ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i
  br i1 %i.at, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal8compiler10turboshaft13SnapshotTableIPNS4_6maglev9ValueNodeENS6_9NoKeyDataEE8SnapshotEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjSD_EEE8iteratorESR_.exit
  tail call void @_ZN4absl13base_internal18ThrowStdOutOfRangeEPKc(ptr noundef nonnull @.str.60) #19
  unreachable

bb.l:                                             ; preds = %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal8compiler10turboshaft13SnapshotTableIPNS4_6maglev9ValueNodeENS6_9NoKeyDataEE8SnapshotEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjSD_EEE8iteratorESR_.exit
  %i.ax = load i8, ptr %i.as, align 1
  %i.ay = icmp sgt i8 %i.ax, -1
  br i1 %i.ay, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal8compiler10turboshaft13SnapshotTableIPNS4_6maglev9ValueNodeENS6_9NoKeyDataEE8SnapshotEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjSD_EEE8iteratordeEv.exit, label %bb.m, !prof !36

bb.m:                                             ; preds = %bb.l
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.64, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.66) #18
  tail call void @llvm.trap()
  unreachable

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIjN2v88internal8compiler10turboshaft13SnapshotTableIPNS4_6maglev9ValueNodeENS6_9NoKeyDataEE8SnapshotEEENS_13hash_internal4HashIjEESt8equal_toIjESaISt4pairIKjSD_EEE8iteratordeEv.exit: ; preds = %bb.l
  %i.az = extractvalue { ptr, ptr } %.pn.i, 1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  ret ptr %i.ba
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal6maglev10BasicBlockELm2ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %0, align 8                ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.h)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.j = sub nuw nsw i64 64, %i.i                 ; 2 uses
  %i.k = icmp ugt i64 %spec.select.i.i, 576460752303423487
  br i1 %i.k, label %bb.b, label %bb.e, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #19
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #19
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = shl nuw i64 8, %i.j
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #20 ; 5 uses
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.p, %i.f                       ; 4 uses
  %i.r = icmp sgt i64 %i.q, 8
  br i1 %i.r, label %bb.f, label %bb.g, !prof !36

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.b, i64 %i.q, i1 false)
  br label %_ZSt18uninitialized_moveIPPN2v88internal6maglev10BasicBlockES5_ET0_T_S7_S6_.exit

bb.g:                                             ; preds = %bb.e
  %i.s = icmp eq i64 %i.q, 8
  br i1 %i.s, label %bb.h, label %_ZSt18uninitialized_moveIPPN2v88internal6maglev10BasicBlockES5_ET0_T_S7_S6_.exit

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %i.b, align 8
  store ptr %i.t, ptr %i.o, align 8
  br label %_ZSt18uninitialized_moveIPPN2v88internal6maglev10BasicBlockES5_ET0_T_S7_S6_.exit

_ZSt18uninitialized_moveIPPN2v88internal6maglev10BasicBlockES5_ET0_T_S7_S6_.exit: ; preds = %bb.f, %bb.g, %bb.h
  %i.u = shl nuw i64 1, %i.j
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal6maglev10BasicBlockELm2ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  store ptr %i.o, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.q
  store ptr %i.v, ptr %i.a, align 8
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.u
  store ptr %i.w, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal6maglev10BasicBlockELm2ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #7 comdat align 2 {
_ZSt9destroy_nIPPN2v88internal6maglev10BasicBlockElET_S6_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPPN2v88internal6maglev10BasicBlockElET_S6_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #21
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPPN2v88internal6maglev10BasicBlockElET_S6_T0_.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #8

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal6maglev10BasicBlockELm2ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #7 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal6maglev10BasicBlockELm2ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef 0)
  ret void
}

declare noundef zeroext i1 @_ZNK2v88internal6maglev21MaglevCompilationUnit6is_osrEv(ptr noundef nonnull align 8 dereferenceable(52)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK2v88internal6maglev5Graph21CreateNewConstantNodeINS1_13Int32ConstantEJiRiEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(976) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"struct.v8::internal::maglev::MaglevGraphLabeller::NodeInfo", align 8 ; 7 uses
  %i.b = load ptr, ptr %0, align 8                ; 3 uses
  %i.c = load i32, ptr %1, align 4
  %i.d = sext i32 %i.c to i64                     ; 2 uses
  %i.e = shl nsw i64 %i.d, 3                      ; 2 uses
  %i.f = add nsw i64 %i.e, 24                     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.h = load i64, ptr %i.g, align 8
end_hunk_1
