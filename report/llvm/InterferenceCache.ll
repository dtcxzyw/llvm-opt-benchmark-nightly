Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/InterferenceCache?download=true
begin_hunk_0_@_ZN4llvm17InterferenceCache5Entry5validEPNS_17LiveIntervalUnionEPKNS_18TargetRegisterInfoE:bb.a

.thread:                                          ; preds = %bb.b, %_ZN4llvm17MCRegUnitIteratorppEv.exit, %bb.a
  %.not32.lcssa = phi i1 [ %.not3233, %bb.a ], [ %.not.i.i, %_ZN4llvm17MCRegUnitIteratorppEv.exit ], [ false, %bb.b ]
  %.219 = phi i32 [ 0, %bb.a ], [ %spec.select, %_ZN4llvm17MCRegUnitIteratorppEv.exit ], [ %spec.select, %bb.b ]
  %i.ae = icmp eq i32 %.219, %i.b
  %.3 = select i1 %.not32.lcssa, i1 %i.ae, i1 false
  ret i1 %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4llvm17InterferenceCache5Entry10revalidateEPNS_17LiveIntervalUnionEPKNS_18TargetRegisterInfoE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(720) initializes((40, 48)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !88
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 4, !tbaa !88
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.d, align 8, !tbaa !58
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !60, !noalias !97 ; 2 uses
  %.not15 = icmp eq ptr %i.f, null
  br i1 %.not15, label %._crit_edge, label %_ZN4llvm17MCRegUnitIteratorppEv.exit.lr.ph

_ZN4llvm17MCRegUnitIteratorppEv.exit.lr.ph:       ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !64, !noalias !97
  %.sroa.0.0.copyload = load i32, ptr %0, align 8, !tbaa !37
  %i.i = zext i32 %.sroa.0.0.copyload to i64
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i32, ptr %i.k, align 4, !tbaa !65, !noalias !97 ; 2 uses
  %i.m = lshr i32 %i.l, 12
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.n
  %i.p = and i32 %i.l, 4095
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !69
  br label %_ZN4llvm17MCRegUnitIteratorppEv.exit

._crit_edge:                                      ; preds = %_ZN4llvm17MCRegUnitIteratorppEv.exit, %bb.a
  ret void

_ZN4llvm17MCRegUnitIteratorppEv.exit:             ; preds = %_ZN4llvm17MCRegUnitIteratorppEv.exit.lr.ph, %_ZN4llvm17MCRegUnitIteratorppEv.exit
  %.018 = phi i32 [ 0, %_ZN4llvm17MCRegUnitIteratorppEv.exit.lr.ph ], [ %i.v, %_ZN4llvm17MCRegUnitIteratorppEv.exit ] ; 2 uses
  %.sroa.58.017 = phi ptr [ %i.o, %_ZN4llvm17MCRegUnitIteratorppEv.exit.lr.ph ], [ %i.z, %_ZN4llvm17MCRegUnitIteratorppEv.exit ] ; 2 uses
  %.sroa.07.016 = phi i32 [ %i.p, %_ZN4llvm17MCRegUnitIteratorppEv.exit.lr.ph ], [ %i.ac, %_ZN4llvm17MCRegUnitIteratorppEv.exit ] ; 2 uses
  %i.s = zext i32 %.sroa.07.016 to i64
  %i.t = getelementptr inbounds nuw [216 x i8], ptr %1, i64 %i.s
  %i.u = load i32, ptr %i.t, align 8, !tbaa !83
  %i.v = add i32 %.018, 1
  %i.w = zext i32 %.018 to i64
  %i.x = getelementptr inbounds nuw [112 x i8], ptr %i.r, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 88
  store i32 %i.u, ptr %i.y, align 8, !tbaa !70
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.58.017, i64 2
  %i.aa = load i16, ptr %.sroa.58.017, align 2, !tbaa !87 ; 2 uses
  %i.ab = sext i16 %i.aa to i32
  %i.ac = add i32 %.sroa.07.016, %i.ab
  %.not.i.i = icmp eq i16 %i.aa, 0
  br i1 %.not.i.i, label %._crit_edge, label %_ZN4llvm17MCRegUnitIteratorppEv.exit
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvm17InterferenceCache5Entry5resetENS_10MCRegisterEPNS_17LiveIntervalUnionEPKNS_18TargetRegisterInfoEPKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(720) initializes((0, 4)) %0, i32 %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"struct.llvm::InterferenceCache::Entry::RegUnitInfo", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !88
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 4, !tbaa !88
  store i32 %1, ptr %0, align 8, !tbaa !37
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !100
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !104
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = lshr exact i64 %i.k, 3                   ; 2 uses
  %i.m = trunc i64 %i.l to i32
  %i.n = and i64 %i.l, 4294967295                 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 3 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !59
  %i.q = zext i32 %i.p to i64                     ; 3 uses
  %i.r = icmp eq i64 %i.n, %i.q
  br i1 %i.r, label %_ZN4llvm15SmallVectorImplINS_17InterferenceCache17BlockInterferenceEE6resizeEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = icmp samesign ult i64 %i.n, %i.q
  br i1 %i.s, label %.sink.split.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 524
  %i.u = load i32, ptr %i.t, align 4, !tbaa !105
  %i.v = zext i32 %i.u to i64
  %i.w = icmp samesign ugt i64 %i.n, %i.v
  br i1 %i.w, label %bb.d, label %_ZN4llvm15SmallVectorImplINS_17InterferenceCache17BlockInterferenceEE7reserveEm.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 528
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull %i.x, i64 noundef %i.n, i64 noundef 24) #12
  %.pre.i.i = load i32, ptr %i.o, align 8, !tbaa !59
  %.pre13.i.i = zext i32 %.pre.i.i to i64
  br label %_ZN4llvm15SmallVectorImplINS_17InterferenceCache17BlockInterferenceEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplINS_17InterferenceCache17BlockInterferenceEE7reserveEm.exit.i.i: ; preds = %bb.d, %bb.c
  %.pre-phi.i.i = phi i64 [ %i.q, %bb.c ], [ %.pre13.i.i, %bb.d ]
  %.pre-phi.i.fr.i = freeze i64 %.pre-phi.i.i     ; 3 uses
  %.not11.i.i = icmp samesign eq i64 %i.n, %.pre-phi.i.fr.i
  br i1 %.not11.i.i, label %.sink.split.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4llvm15SmallVectorImplINS_17InterferenceCache17BlockInterferenceEE7reserveEm.exit.i.i
  %i.y = load ptr, ptr %i.d, align 8, !tbaa !69
  %i.z = getelementptr [24 x i8], ptr %i.y, i64 %.pre-phi.i.fr.i
  %reass.add = sub i64 %i.n, %.pre-phi.i.fr.i
  %reass.mul = mul i64 %reass.add, 24             ; 2 uses
  %i.aa = add i64 %reass.mul, -24
  %i.ab = urem i64 %i.aa, 24
  %i.ac = sub i64 %reass.mul, %i.ab
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.z, i8 0, i64 %i.ac, i1 false)
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %.lr.ph.preheader.i.i, %_ZN4llvm15SmallVectorImplINS_17InterferenceCache17BlockInterferenceEE7reserveEm.exit.i.i, %bb.b
  store i32 %i.m, ptr %i.o, align 8, !tbaa !59
  br label %_ZN4llvm15SmallVectorImplINS_17InterferenceCache17BlockInterferenceEE6resizeEm.exit

_ZN4llvm15SmallVectorImplINS_17InterferenceCache17BlockInterferenceEE6resizeEm.exit: ; preds = %bb.a, %.sink.split.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.ad, align 8, !tbaa !58
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 7 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !69 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !59 ; 2 uses
  %.not4.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not4.i.i, label %_ZN4llvm15SmallVectorImplINS_17InterferenceCache5Entry11RegUnitInfoEE5clearEv.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZN4llvm15SmallVectorImplINS_17InterferenceCache17BlockInterferenceEE6resizeEm.exit
  %i.ai = zext i32 %i.ah to i64
  %.idx.i = mul nuw nsw i64 %i.ai, 112
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 %.idx.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4llvm17InterferenceCache5Entry11RegUnitInfoD2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.ak, %_ZN4llvm17InterferenceCache5Entry11RegUnitInfoD2Ev.exit.i.i ], [ %i.aj, %.lr.ph.i.preheader.i ] ; 3 uses
  %i.ak = getelementptr inbounds i8, ptr %.05.i.i, i64 -112 ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %.05.i.i, i64 -104
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !69 ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %.05.i.i, i64 -88
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZN4llvm17InterferenceCache5Entry11RegUnitInfoD2Ev.exit.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i
  tail call void @free(ptr noundef %i.am) #12
  br label %_ZN4llvm17InterferenceCache5Entry11RegUnitInfoD2Ev.exit.i.i

_ZN4llvm17InterferenceCache5Entry11RegUnitInfoD2Ev.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %i.af, %i.ak
  br i1 %.not.i.i, label %_ZN4llvm15SmallVectorImplINS_17InterferenceCache5Entry11RegUnitInfoEE5clearEv.exit, label %.lr.ph.i.i, !llvm.loop !106

_ZN4llvm15SmallVectorImplINS_17InterferenceCache5Entry11RegUnitInfoEE5clearEv.exit: ; preds = %_ZN4llvm17InterferenceCache5Entry11RegUnitInfoD2Ev.exit.i.i, %_ZN4llvm15SmallVectorImplINS_17InterferenceCache17BlockInterferenceEE6resizeEm.exit
  store i32 0, ptr %i.ag, align 8, !tbaa !59
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !60, !noalias !108 ; 2 uses
  %.not18 = icmp eq ptr %i.aq, null
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplINS_17InterferenceCache5Entry11RegUnitInfoEE5clearEv.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !64, !noalias !108
  %.sroa.0.0.copyload = load i32, ptr %0, align 8, !tbaa !37
  %i.at = zext i32 %.sroa.0.0.copyload to i64
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.as, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !65, !noalias !108 ; 2 uses
  %i.ax = lshr i32 %i.aw, 12
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %i.ay
  %i.ba = and i32 %i.aw, 4095
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.bi = ptrtoint ptr %5 to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre3.i.pre = load ptr, ptr %i.ae, align 8, !tbaa !69
  br label %bb.f

._crit_edge:                                      ; preds = %_ZN4llvm13LiveIntervals10getRegUnitENS_9MCRegUnitE.exit, %_ZN4llvm15SmallVectorImplINS_17InterferenceCache5Entry11RegUnitInfoEE5clearEv.exit
  ret void

bb.f:                                             ; preds = %.lr.ph, %_ZN4llvm13LiveIntervals10getRegUnitENS_9MCRegUnitE.exit
  %.pre3.i = phi ptr [ %.pre3.i.pre, %.lr.ph ], [ %i.dn, %_ZN4llvm13LiveIntervals10getRegUnitENS_9MCRegUnitE.exit ] ; 4 uses
  %i.bk = phi i32 [ 0, %.lr.ph ], [ %i.do, %_ZN4llvm13LiveIntervals10getRegUnitENS_9MCRegUnitE.exit ] ; 2 uses
  %.sroa.511.020 = phi ptr [ %i.az, %.lr.ph ], [ %i.ds, %_ZN4llvm13LiveIntervals10getRegUnitENS_9MCRegUnitE.exit ] ; 2 uses
  %.sroa.010.019 = phi i32 [ %i.ba, %.lr.ph ], [ %i.dv, %_ZN4llvm13LiveIntervals10getRegUnitENS_9MCRegUnitE.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.bl = zext i32 %.sroa.010.019 to i64          ; 2 uses
  %i.bm = getelementptr inbounds nuw [216 x i8], ptr %2, i64 %i.bl ; 2 uses
  store ptr %i.bc, ptr %i.bb, align 8, !tbaa !69
  store i32 0, ptr %i.bd, align 8, !tbaa !59
  store i32 4, ptr %i.be, align 4, !tbaa !105
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !83
  store i32 %i.bn, ptr %i.bf, align 8, !tbaa !70
  store ptr null, ptr %i.bg, align 8, !tbaa !111
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr %i.bo, ptr %5, align 8, !tbaa !112
  %i.bp = zext i32 %i.bk to i64                   ; 2 uses
  %i.bq = add nuw nsw i64 %i.bp, 1                ; 2 uses
  %i.br = load i32, ptr %i.bh, align 4, !tbaa !105
  %.not.i.i.not.i = icmp ult i32 %i.bk, %i.br
  br i1 %.not.i.i.not.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_17InterferenceCache5Entry11RegUnitInfoELb0EE28reserveForParamAndGetAddressERS3_m.exit.i, label %bb.g, !prof !113

bb.g:                                             ; preds = %bb.f
  %i.bs = getelementptr inbounds nuw [112 x i8], ptr %.pre3.i, i64 %i.bp
  %i.bt = icmp uge ptr %5, %.pre3.i
  %i.bu = icmp ult ptr %5, %i.bs
  %spec.select.i.i.i.i.i = and i1 %i.bt, %i.bu
  br i1 %spec.select.i.i.i.i.i, label %bb.h, label %.critedge.i.i.i, !prof !114

bb.h:                                             ; preds = %bb.g
  %i.bv = ptrtoint ptr %.pre3.i to i64
  %i.bw = sub i64 %i.bi, %i.bv
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_17InterferenceCache5Entry11RegUnitInfoELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i64 noundef %i.bq)
  %i.bx = load ptr, ptr %i.ae, align 8, !tbaa !69 ; 2 uses
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 %i.bw
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_17InterferenceCache5Entry11RegUnitInfoELb0EE28reserveForParamAndGetAddressERS3_m.exit.i

.critedge.i.i.i:                                  ; preds = %bb.g
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_17InterferenceCache5Entry11RegUnitInfoELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i64 noundef %i.bq)
  %.pre.i = load ptr, ptr %i.ae, align 8, !tbaa !69
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_17InterferenceCache5Entry11RegUnitInfoELb0EE28reserveForParamAndGetAddressERS3_m.exit.i

_ZN4llvm23SmallVectorTemplateBaseINS_17InterferenceCache5Entry11RegUnitInfoELb0EE28reserveForParamAndGetAddressERS3_m.exit.i: ; preds = %.critedge.i.i.i, %bb.h, %bb.f
  %i.bz = phi ptr [ %.pre3.i, %bb.f ], [ %i.bx, %bb.h ], [ %.pre.i, %.critedge.i.i.i ]
  %.016.i.i.i = phi ptr [ %5, %bb.f ], [ %i.by, %bb.h ], [ %5, %.critedge.i.i.i ] ; 4 uses
  %i.ca = load i32, ptr %i.ag, align 8, !tbaa !59
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [112 x i8], ptr %i.bz, i64 %i.cb ; 6 uses
  %i.cd = load ptr, ptr %.016.i.i.i, align 8, !tbaa !112
  store ptr %i.cd, ptr %i.cc, align 8, !tbaa !112
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  store ptr %i.cf, ptr %i.ce, align 8, !tbaa !69
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store i32 0, ptr %i.cg, align 8, !tbaa !59
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 20
  store i32 4, ptr %i.ch, align 4, !tbaa !105
  %i.ci = getelementptr inbounds nuw i8, ptr %.016.i.i.i, i64 16
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !59
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.cj, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_17InterferenceCache5Entry11RegUnitInfoELb0EE9push_backEOS3_.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_17InterferenceCache5Entry11RegUnitInfoELb0EE28reserveForParamAndGetAddressERS3_m.exit.i
  %i.ck = getelementptr inbounds nuw i8, ptr %.016.i.i.i, i64 8
  %i.cl = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplINS_15IntervalMapImpl4Path5EntryEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(80) %i.ce, ptr noundef nonnull align 8 dereferenceable(80) %i.ck) ; 0 uses
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_17InterferenceCache5Entry11RegUnitInfoELb0EE9push_backEOS3_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_17InterferenceCache5Entry11RegUnitInfoELb0EE9push_backEOS3_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_17InterferenceCache5Entry11RegUnitInfoELb0EE28reserveForParamAndGetAddressERS3_m.exit.i, %bb.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cc, i64 88
  %i.cn = getelementptr inbounds nuw i8, ptr %.016.i.i.i, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cm, ptr noundef nonnull align 8 dereferenceable(24) %i.cn, i64 24, i1 false)
  %i.co = load i32, ptr %i.ag, align 8, !tbaa !59
  %i.cp = add i32 %i.co, 1
  store i32 %i.cp, ptr %i.ag, align 8, !tbaa !59
  %i.cq = load ptr, ptr %i.bb, align 8, !tbaa !69 ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.bc
  br i1 %i.cr, label %_ZN4llvm17InterferenceCache5Entry11RegUnitInfoD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_17InterferenceCache5Entry11RegUnitInfoELb0EE9push_backEOS3_.exit
  call void @free(ptr noundef %i.cq) #12
  br label %_ZN4llvm17InterferenceCache5Entry11RegUnitInfoD2Ev.exit

_ZN4llvm17InterferenceCache5Entry11RegUnitInfoD2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_17InterferenceCache5Entry11RegUnitInfoELb0EE9push_backEOS3_.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %i.cs = load ptr, ptr %i.bj, align 8, !tbaa !57 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 408
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !69
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.bl ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !115 ; 2 uses
  %.not.i = icmp eq ptr %i.cw, null
  br i1 %.not.i, label %bb.k, label %_ZN4llvm13LiveIntervals10getRegUnitENS_9MCRegUnitE.exit

bb.k:                                             ; preds = %_ZN4llvm17InterferenceCache5Entry11RegUnitInfoD2Ev.exit
  %i.cx = call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #16 ; 12 uses
  %i.cy = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm24UseSegmentSetForPhysRegsE, i64 120), align 8, !tbaa !116, !range !122, !noundef !123
  %i.cz = trunc nuw i8 %i.cy to i1
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store ptr %i.da, ptr %i.cx, align 8, !tbaa !69
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store i32 0, ptr %i.db, align 8, !tbaa !59
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cx, i64 12
  store i32 2, ptr %i.dc, align 4, !tbaa !105
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cx, i64 64
  %i.de = getelementptr inbounds nuw i8, ptr %i.cx, i64 80
  store ptr %i.de, ptr %i.dd, align 8, !tbaa !69
  %i.df = getelementptr inbounds nuw i8, ptr %i.cx, i64 72
  store i32 0, ptr %i.df, align 8, !tbaa !59
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cx, i64 76
  store i32 2, ptr %i.dg, align 4, !tbaa !105
  br i1 %i.cz, label %bb.l, label %_ZN4llvm9LiveRangeC2Eb.exit.i

bb.l:                                             ; preds = %bb.k
  %i.dh = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #16, !noalias !124 ; 6 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.dh, i8 0, i64 32, i1 false), !noalias !124
  store ptr %i.di, ptr %i.dj, align 8, !tbaa !127, !noalias !124
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  store ptr %i.di, ptr %i.dk, align 8, !tbaa !132, !noalias !124
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 40
  store i64 0, ptr %i.dl, align 8, !tbaa !133, !noalias !124
  br label %_ZN4llvm9LiveRangeC2Eb.exit.i

_ZN4llvm9LiveRangeC2Eb.exit.i:                    ; preds = %bb.l, %bb.k
  %storemerge.i.i = phi ptr [ %i.dh, %bb.l ], [ null, %bb.k ]
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cx, i64 96
  store ptr %storemerge.i.i, ptr %i.dm, align 8, !tbaa !134
  store ptr %i.cx, ptr %i.cv, align 8, !tbaa !115
  call void @_ZN4llvm13LiveIntervals19computeRegUnitRangeERNS_9LiveRangeENS_9MCRegUnitE(ptr noundef nonnull align 8 dereferenceable(424) %i.cs, ptr noundef nonnull align 8 dereferenceable(104) %i.cx, i32 noundef %.sroa.010.019) #12
  br label %_ZN4llvm13LiveIntervals10getRegUnitENS_9MCRegUnitE.exit

_ZN4llvm13LiveIntervals10getRegUnitENS_9MCRegUnitE.exit: ; preds = %_ZN4llvm17InterferenceCache5Entry11RegUnitInfoD2Ev.exit, %_ZN4llvm9LiveRangeC2Eb.exit.i
  %.0.i = phi ptr [ %i.cw, %_ZN4llvm17InterferenceCache5Entry11RegUnitInfoD2Ev.exit ], [ %i.cx, %_ZN4llvm9LiveRangeC2Eb.exit.i ]
  %i.dn = load ptr, ptr %i.ae, align 8, !tbaa !69 ; 2 uses
  %i.do = load i32, ptr %i.ag, align 8, !tbaa !59 ; 2 uses
  %i.dp = zext i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw [112 x i8], ptr %i.dn, i64 %i.dp
  %i.dr = getelementptr inbounds i8, ptr %i.dq, i64 -16
  store ptr %.0.i, ptr %i.dr, align 8, !tbaa !111
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.511.020, i64 2
  %i.dt = load i16, ptr %.sroa.511.020, align 2, !tbaa !87 ; 2 uses
  %i.du = sext i16 %i.dt to i32
  %i.dv = add i32 %.sroa.010.019, %i.du
  %.not.i.i8 = icmp eq i16 %i.dt, 0
  br i1 %.not.i.i8, label %._crit_edge, label %bb.f
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvm17InterferenceCache5Entry6updateEj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(720) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.d = zext i32 %1 to i64                       ; 3 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !69
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.d ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !58   ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !58
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %.0.copyload.i.i.i.i = load i64, ptr %i.j, align 8 ; 4 uses
  %.not316 = icmp eq i64 %.0.copyload.i.i.i.i, %i.g
  br i1 %.not316, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = icmp ugt i64 %.0.copyload.i.i.i.i, 7
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = and i64 %i.g, -8
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 3 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !136
  %i.p = trunc i64 %i.g to i32
  %i.q = lshr i32 %i.p, 1
  %i.r = and i32 %i.q, 3                          ; 3 uses
  %i.s = or i32 %i.o, %i.r
  %i.t = and i64 %.0.copyload.i.i.i.i, -8
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load i32, ptr %i.v, align 8, !tbaa !136
  %i.x = trunc i64 %.0.copyload.i.i.i.i to i32
  %i.y = lshr i32 %i.x, 1
  %i.z = and i32 %i.y, 3
  %i.aa = or i32 %i.w, %i.z
  %i.ab = icmp ult i32 %i.s, %i.aa
  br i1 %i.ab, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !69 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !59 ; 2 uses
  %i.ag = zext i32 %i.af to i64
  %.idx367 = mul nuw nsw i64 %i.ag, 112
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx367
  %.not175340 = icmp eq i32 %i.af, 0
  br i1 %.not175340, label %.loopexit, label %.lr.ph342

.lr.ph342:                                        ; preds = %bb.d
  %i.ai = and i64 %i.g, -8
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = trunc i64 %i.g to i32
  %i.am = lshr i32 %i.al, 1
  %i.an = and i32 %i.am, 3
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph342, %_ZN4llvm11IntervalMapINS_9SlotIndexEPKNS_12LiveIntervalELj8ENS_15IntervalMapInfoIS1_EEE14const_iterator4findES1_.exit
  %.0161341 = phi ptr [ %i.ad, %.lr.ph342 ], [ %i.bt, %_ZN4llvm11IntervalMapINS_9SlotIndexEPKNS_12LiveIntervalELj8ENS_15IntervalMapInfoIS1_EEE14const_iterator4findES1_.exit ] ; 8 uses
  %i.ao = load ptr, ptr %.0161341, align 8, !tbaa !112 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 192
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !144
  %.not.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4llvm11IntervalMapINS_9SlotIndexEPKNS_12LiveIntervalELj8ENS_15IntervalMapInfoIS1_EEE14const_iterator8treeFindES1_(ptr noundef nonnull align 8 dereferenceable(88) %.0161341, i64 %i.g)
  br label %_ZN4llvm11IntervalMapINS_9SlotIndexEPKNS_12LiveIntervalELj8ENS_15IntervalMapInfoIS1_EEE14const_iterator4findES1_.exit

bb.g:                                             ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 196
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !145 ; 2 uses
  %.not6.i.i = icmp eq i32 %i.as, 0
  br i1 %.not6.i.i, label %_ZNK4llvm15IntervalMapImpl8LeafNodeINS_9SlotIndexEPKNS_12LiveIntervalELj8ENS_15IntervalMapInfoIS2_EEE8findFromEjjS2_.exit.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g
  %i.at = load i32, ptr %i.ak, align 8, !tbaa !136
  %i.au = or i32 %i.at, %i.an
  %i.av = zext i32 %i.as to i64                   ; 3 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.i ], [ 0, %.lr.ph.i.i ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %indvars.iv.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ax, align 8 ; 2 uses
  %i.ay = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, -8
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !136
  %i.bc = trunc i64 %.0.copyload.i.i.i.i.i.i.i.i.i to i32
  %i.bd = lshr i32 %i.bc, 1
  %i.be = and i32 %i.bd, 3
  %i.bf = or i32 %i.be, %i.bb
  %.not5.i.i = icmp ugt i32 %i.bf, %i.au
  br i1 %.not5.i.i, label %_ZNK4llvm15IntervalMapImpl8LeafNodeINS_9SlotIndexEPKNS_12LiveIntervalELj8ENS_15IntervalMapInfoIS2_EEE8findFromEjjS2_.exit.thread.loopexit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.av
  br i1 %.not.i.i, label %_ZNK4llvm15IntervalMapImpl8LeafNodeINS_9SlotIndexEPKNS_12LiveIntervalELj8ENS_15IntervalMapInfoIS2_EEE8findFromEjjS2_.exit.thread.loopexit.i, label %bb.h, !llvm.loop !146

_ZNK4llvm15IntervalMapImpl8LeafNodeINS_9SlotIndexEPKNS_12LiveIntervalELj8ENS_15IntervalMapInfoIS2_EEE8findFromEjjS2_.exit.thread.loopexit.i: ; preds = %bb.i, %bb.h
  %.pre-phi = phi i64 [ %indvars.iv.i, %bb.h ], [ %i.av, %bb.i ]
  %i.bg = shl nuw i64 %.pre-phi, 32
  %i.bh = or disjoint i64 %i.bg, %i.av
  br label %_ZNK4llvm15IntervalMapImpl8LeafNodeINS_9SlotIndexEPKNS_12LiveIntervalELj8ENS_15IntervalMapInfoIS2_EEE8findFromEjjS2_.exit.thread.i

_ZNK4llvm15IntervalMapImpl8LeafNodeINS_9SlotIndexEPKNS_12LiveIntervalELj8ENS_15IntervalMapInfoIS2_EEE8findFromEjjS2_.exit.thread.i: ; preds = %_ZNK4llvm15IntervalMapImpl8LeafNodeINS_9SlotIndexEPKNS_12LiveIntervalELj8ENS_15IntervalMapInfoIS2_EEE8findFromEjjS2_.exit.thread.loopexit.i, %bb.g
  %.sroa.2.8.insert.insert.i5.i.i = phi i64 [ %i.bh, %_ZNK4llvm15IntervalMapImpl8LeafNodeINS_9SlotIndexEPKNS_12LiveIntervalELj8ENS_15IntervalMapInfoIS2_EEE8findFromEjjS2_.exit.thread.loopexit.i ], [ 0, %bb.g ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.0161341, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0161341, i64 16 ; 3 uses
  store i32 0, ptr %i.bj, align 8, !tbaa !59
  %i.bk = getelementptr inbounds nuw i8, ptr %.0161341, i64 20
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !105
  %.not.i.not.i6.i.i = icmp eq i32 %i.bl, 0
  br i1 %.not.i.not.i6.i.i, label %bb.j, label %bb.k, !prof !114

bb.j:                                             ; preds = %_ZNK4llvm15IntervalMapImpl8LeafNodeINS_9SlotIndexEPKNS_12LiveIntervalELj8ENS_15IntervalMapInfoIS2_EEE8findFromEjjS2_.exit.thread.i
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_15IntervalMapImpl4Path5EntryELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(80) %i.bi, ptr nonnull %i.ao, i64 %.sroa.2.8.insert.insert.i5.i.i)
  br label %_ZN4llvm11IntervalMapINS_9SlotIndexEPKNS_12LiveIntervalELj8ENS_15IntervalMapInfoIS1_EEE14const_iterator4findES1_.exit

bb.k:                                             ; preds = %_ZNK4llvm15IntervalMapImpl8LeafNodeINS_9SlotIndexEPKNS_12LiveIntervalELj8ENS_15IntervalMapInfoIS2_EEE8findFromEjjS2_.exit.thread.i
  %i.bm = load ptr, ptr %i.bi, align 8, !tbaa !69 ; 2 uses
  store ptr %i.ao, ptr %i.bm, align 1
  %.sroa.3.0..sroa_idx.i.i7.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store i64 %.sroa.2.8.insert.insert.i5.i.i, ptr %.sroa.3.0..sroa_idx.i.i7.i.i, align 1
  %i.bn = load i32, ptr %i.bj, align 8, !tbaa !59
  %i.bo = add i32 %i.bn, 1
  store i32 %i.bo, ptr %i.bj, align 8, !tbaa !59
  br label %_ZN4llvm11IntervalMapINS_9SlotIndexEPKNS_12LiveIntervalELj8ENS_15IntervalMapInfoIS1_EEE14const_iterator4findES1_.exit

_ZN4llvm11IntervalMapINS_9SlotIndexEPKNS_12LiveIntervalELj8ENS_15IntervalMapInfoIS1_EEE14const_iterator4findES1_.exit: ; preds = %bb.f, %bb.j, %bb.k
  %i.bp = getelementptr inbounds nuw i8, ptr %.0161341, i64 96
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !111
  %i.br = tail call noundef ptr @_ZN4llvm9LiveRange4findENS_9SlotIndexE(ptr noundef nonnull align 8 dereferenceable(104) %i.bq, i64 %i.g) #12
  %i.bs = getelementptr inbounds nuw i8, ptr %.0161341, i64 104
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !147
  %i.bt = getelementptr inbounds nuw i8, ptr %.0161341, i64 112 ; 2 uses
  %.not175 = icmp eq ptr %i.bt, %i.ah
  br i1 %.not175, label %.loopexit, label %bb.e

bb.l:                                             ; preds = %bb.c
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !69 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !59 ; 2 uses
  %i.by = zext i32 %i.bx to i64
  %.idx = mul nuw nsw i64 %i.by, 112
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.idx
  %.not338 = icmp eq i32 %i.bx, 0
  br i1 %.not338, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l, %bb.s
  %.0162339 = phi ptr [ %i.ek, %bb.s ], [ %i.bv, %bb.l ] ; 7 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.0162339, i64 16
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !59 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.cb, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm11IntervalMapINS_9SlotIndexEPKNS_12LiveIntervalELj8ENS_15IntervalMapInfoIS1_EEE14const_iterator9advanceToES1_.exit, label %_ZNK4llvm11IntervalMapINS_9SlotIndexEPKNS_12LiveIntervalELj8ENS_15IntervalMapInfoIS1_EEE14const_iterator5validEv.exit.i

_ZNK4llvm11IntervalMapINS_9SlotIndexEPKNS_12LiveIntervalELj8ENS_15IntervalMapInfoIS1_EEE14const_iterator5validEv.exit.i: ; preds = %.lr.ph
  %i.cc = getelementptr inbounds nuw i8, ptr %.0162339, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !69 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !148
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !150
  %i.ci = icmp ult i32 %i.cf, %i.ch
  br i1 %i.ci, label %bb.m, label %_ZN4llvm11IntervalMapINS_9SlotIndexEPKNS_12LiveIntervalELj8ENS_15IntervalMapInfoIS1_EEE14const_iterator9advanceToES1_.exit

bb.m:                                             ; preds = %_ZNK4llvm11IntervalMapINS_9SlotIndexEPKNS_12LiveIntervalELj8ENS_15IntervalMapInfoIS1_EEE14const_iterator5validEv.exit.i
end_hunk_0
