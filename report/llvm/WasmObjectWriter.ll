Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/WasmObjectWriter?download=true
inline.NumInlined: 3411
inline.NumDeleted: 1501
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN12_GLOBAL__N_116WasmObjectWriter14writeOneObjectERN4llvm11MCAssemblerENS0_7DwoModeE:bb.a
  %i.bzq = getelementptr inbounds nuw i8, ptr %i.bzp, i64 80
  %i.bzr = load ptr, ptr %i.bzq, align 8
  %i.bzs = call noundef i64 %i.bzr(ptr noundef nonnull align 8 dereferenceable(48) %i.bzo) #22, !inline_history !521
  %i.bzt = getelementptr inbounds nuw i8, ptr %i.bzo, i64 32
  %i.bzu = load ptr, ptr %i.bzt, align 8, !tbaa !243
  %i.bzv = getelementptr inbounds nuw i8, ptr %i.bzo, i64 16
  %i.bzw = load ptr, ptr %i.bzv, align 8, !tbaa !244
  %i.bzx = ptrtoint ptr %i.bzu to i64
  %i.bzy = ptrtoint ptr %i.bzw to i64             ; 2 uses
  %i.bzz = add i64 %i.bzs, %i.bzx                 ; 2 uses
  %.not.i15.i = icmp eq i64 %i.bzz, %i.bzy
  br i1 %.not.i15.i, label %_ZN12_GLOBAL__N_116WasmObjectWriter10endSectionERNS_18SectionBookkeepingE.exit.i802, label %bb.mx

bb.mx:                                            ; preds = %._crit_edge.i787
  %i.caa = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.cab = load i64, ptr %i.caa, align 8, !tbaa !299
  %i.cac = add i64 %i.cab, %i.bzy
  %i.cad = sub i64 %i.bzz, %i.cac                 ; 2 uses
  %.not7.i.i788 = icmp ult i64 %i.cad, 4294967296
  br i1 %.not7.i.i788, label %bb.mz, label %bb.my

bb.my:                                            ; preds = %bb.mx
  call void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef nonnull @.str.43, i1 noundef zeroext true) #24
  unreachable

bb.mz:                                            ; preds = %bb.mx
  %i.cae = load ptr, ptr %i.ap, align 8, !tbaa !112
  %i.caf = load ptr, ptr %i.cae, align 8, !tbaa !239, !nonnull !149, !align !150 ; 2 uses
  %i.cag = load i64, ptr %10, align 8, !tbaa !300
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #22
  %scevgep.i.i.i.i.i789 = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  br label %bb.na

bb.na:                                            ; preds = %bb.na, %bb.mz
  %indvars.iv34.i.i.i.i.i790 = phi i32 [ %indvars.iv.next.i.i.i.i.i799, %bb.na ], [ 2, %bb.mz ] ; 2 uses
  %indvars.iv.i.i.i.i.i791 = phi ptr [ %scevgep33.i.i.i.i.i798, %bb.na ], [ %scevgep.i.i.i.i.i789, %bb.mz ] ; 2 uses
  %.021.i.i.i.i.i792 = phi ptr [ %i.cam, %bb.na ], [ %i.m, %bb.mz ] ; 2 uses
  %.020.i.i.i.i.i793 = phi i64 [ %i.cah, %bb.na ], [ %i.cad, %bb.mz ] ; 2 uses
  %.019.i.i.i.i.i794 = phi i32 [ %i.cai, %bb.na ], [ 0, %bb.mz ] ; 4 uses
  %i.cah = lshr i64 %.020.i.i.i.i.i793, 7         ; 2 uses
  %i.cai = add nuw nsw i32 %.019.i.i.i.i.i794, 1
  %.not.i.i.i.i.i795 = icmp ne i64 %i.cah, 0      ; 2 uses
  %i.caj = trunc i64 %.020.i.i.i.i.i793 to i8     ; 2 uses
  %i.cak = icmp samesign ult i32 %.019.i.i.i.i.i794, 4 ; 2 uses
  %or.cond.i.i.i.i.i796 = select i1 %.not.i.i.i.i.i795, i1 true, i1 %i.cak
  %i.cal = or i8 %i.caj, -128
  %.0.i.i.i.i.i797 = select i1 %or.cond.i.i.i.i.i796, i8 %i.cal, i8 %i.caj
  %i.cam = getelementptr i8, ptr %.021.i.i.i.i.i792, i64 1 ; 4 uses
  store i8 %.0.i.i.i.i.i797, ptr %.021.i.i.i.i.i792, align 1, !tbaa !63
  %scevgep33.i.i.i.i.i798 = getelementptr i8, ptr %indvars.iv.i.i.i.i.i791, i64 1
  %indvars.iv.next.i.i.i.i.i799 = add nsw i32 %indvars.iv34.i.i.i.i.i790, -1
  br i1 %.not.i.i.i.i.i795, label %bb.na, label %bb.nb, !llvm.loop !10

bb.nb:                                            ; preds = %bb.na
  br i1 %i.cak, label %.preheader.i.i.i.i.i803, label %_ZN12_GLOBAL__N_117writePatchableU32ERN4llvm17raw_pwrite_streamEjm.exit.i.i800

.preheader.i.i.i.i.i803:                          ; preds = %bb.nb
  %.not.i.i.i.i804 = icmp eq i32 %.019.i.i.i.i.i794, 3
  br i1 %.not.i.i.i.i804, label %._crit_edge.i.i.i.i.i808, label %.lr.ph.preheader.i.i.i.i.i805

.lr.ph.preheader.i.i.i.i.i805:                    ; preds = %.preheader.i.i.i.i.i803
  %narrow.i.i.i.i806 = sub nuw nsw i32 3, %.019.i.i.i.i.i794
  %i.can = zext nneg i32 %narrow.i.i.i.i806 to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cam, i8 -128, i64 %i.can, i1 false), !tbaa !63
  %i.cao = zext i32 %indvars.iv34.i.i.i.i.i790 to i64
  %scevgep35.i.i.i.i.i807 = getelementptr i8, ptr %indvars.iv.i.i.i.i.i791, i64 %i.cao
  br label %._crit_edge.i.i.i.i.i808

._crit_edge.i.i.i.i.i808:                         ; preds = %.lr.ph.preheader.i.i.i.i.i805, %.preheader.i.i.i.i.i803
  %.122.lcssa.i.i.i.i.i809 = phi ptr [ %i.cam, %.preheader.i.i.i.i.i803 ], [ %scevgep35.i.i.i.i.i807, %.lr.ph.preheader.i.i.i.i.i805 ] ; 2 uses
  %i.cap = getelementptr inbounds nuw i8, ptr %.122.lcssa.i.i.i.i.i809, i64 1
  store i8 0, ptr %.122.lcssa.i.i.i.i.i809, align 1, !tbaa !63
  br label %_ZN12_GLOBAL__N_117writePatchableU32ERN4llvm17raw_pwrite_streamEjm.exit.i.i800

_ZN12_GLOBAL__N_117writePatchableU32ERN4llvm17raw_pwrite_streamEjm.exit.i.i800: ; preds = %._crit_edge.i.i.i.i.i808, %bb.nb
  %.2.i.i.i.i.i801 = phi ptr [ %i.cap, %._crit_edge.i.i.i.i.i808 ], [ %i.cam, %bb.nb ]
  %i.caq = ptrtoint ptr %.2.i.i.i.i.i801 to i64
  %i.car = ptrtoint ptr %i.m to i64
  %i.cas = sub i64 %i.caq, %i.car
  %i.cat = and i64 %i.cas, 4294967295
  %i.cau = load ptr, ptr %i.caf, align 8, !tbaa !65
  %i.cav = getelementptr inbounds nuw i8, ptr %i.cau, i64 104
  %i.caw = load ptr, ptr %i.cav, align 8
  call void %i.caw(ptr noundef nonnull align 8 dereferenceable(48) %i.caf, ptr noundef nonnull %i.m, i64 noundef %i.cat, i64 noundef %i.cag) #22, !inline_history !522
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #22
  br label %_ZN12_GLOBAL__N_116WasmObjectWriter10endSectionERNS_18SectionBookkeepingE.exit.i802

_ZN12_GLOBAL__N_116WasmObjectWriter10endSectionERNS_18SectionBookkeepingE.exit.i802: ; preds = %_ZN12_GLOBAL__N_117writePatchableU32ERN4llvm17raw_pwrite_streamEjm.exit.i.i800, %._crit_edge.i787
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %_ZN12_GLOBAL__N_116WasmObjectWriter18writeGlobalSectionEN4llvm8ArrayRefINS1_4wasm10WasmGlobalEEE.exit

.lr.ph.i783:                                      ; preds = %_ZN4llvm11raw_ostreamlsEc.exit45.i, %.lr.ph.preheader.i781
  %.053.i = phi ptr [ %i.cdk, %_ZN4llvm11raw_ostreamlsEc.exit45.i ], [ %i.byx, %.lr.ph.preheader.i781 ] ; 4 uses
  %i.cax = getelementptr inbounds nuw i8, ptr %.053.i, i64 4 ; 2 uses
  %i.cay = load i8, ptr %i.cax, align 4, !tbaa !633 ; 3 uses
  %i.caz = load ptr, ptr %i.ap, align 8, !tbaa !112
  %i.cba = load ptr, ptr %i.caz, align 8, !tbaa !239, !nonnull !149, !align !150 ; 4 uses
  %i.cbb = getelementptr inbounds nuw i8, ptr %i.cba, i64 32 ; 4 uses
  %i.cbc = getelementptr inbounds nuw i8, ptr %i.cba, i64 24 ; 2 uses
  %.not.i18.not.i.peel = icmp sgt i8 %i.cay, -1
  %i.cbd = load ptr, ptr %i.cbb, align 8, !tbaa !243 ; 3 uses
  %i.cbe = load ptr, ptr %i.cbc, align 8, !tbaa !297
  %.not.i.i20.i.peel = icmp ult ptr %i.cbd, %i.cbe
  br i1 %.not.i.i20.i.peel, label %bb.nd, label %bb.nc

bb.nc:                                            ; preds = %.lr.ph.i783
  %i.cbf = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.cba, i8 noundef zeroext %i.cay) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i21.i.peel

bb.nd:                                            ; preds = %.lr.ph.i783
  %i.cbg = getelementptr inbounds nuw i8, ptr %i.cbd, i64 1
  store ptr %i.cbg, ptr %i.cbb, align 8, !tbaa !243
  store i8 %i.cay, ptr %i.cbd, align 1, !tbaa !63
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i21.i.peel

_ZN4llvm11raw_ostreamlsEc.exit.i21.i.peel:        ; preds = %bb.nd, %bb.nc
  br i1 %.not.i18.not.i.peel, label %_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit22.i, label %.peel.next1552

.peel.next1552:                                   ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i21.i.peel
  %i.cbh = load ptr, ptr %i.cbb, align 8, !tbaa !243 ; 3 uses
  %i.cbi = load ptr, ptr %i.cbc, align 8, !tbaa !297
  %.not.i.i20.i = icmp ult ptr %i.cbh, %i.cbi
  br i1 %.not.i.i20.i, label %bb.nf, label %bb.ne

bb.ne:                                            ; preds = %.peel.next1552
  %i.cbj = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.cba, i8 noundef zeroext 1) #22 ; 0 uses
  br label %_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit22.i

bb.nf:                                            ; preds = %.peel.next1552
  %i.cbk = getelementptr inbounds nuw i8, ptr %i.cbh, i64 1
  store ptr %i.cbk, ptr %i.cbb, align 8, !tbaa !243
  store i8 1, ptr %i.cbh, align 1, !tbaa !63
  br label %_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit22.i

_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit22.i: ; preds = %bb.nf, %bb.ne, %_ZN4llvm11raw_ostreamlsEc.exit.i21.i.peel
  %i.cbl = load ptr, ptr %i.ap, align 8, !tbaa !112
  %i.cbm = load ptr, ptr %i.cbl, align 8, !tbaa !239, !nonnull !149, !align !150 ; 3 uses
  %i.cbn = getelementptr inbounds nuw i8, ptr %.053.i, i64 5
  %i.cbo = load i8, ptr %i.cbn, align 1, !tbaa !634, !range !162, !noundef !149 ; 2 uses
  %i.cbp = getelementptr inbounds nuw i8, ptr %i.cbm, i64 32 ; 2 uses
  %i.cbq = load ptr, ptr %i.cbp, align 8, !tbaa !243 ; 3 uses
  %i.cbr = getelementptr inbounds nuw i8, ptr %i.cbm, i64 24
  %i.cbs = load ptr, ptr %i.cbr, align 8, !tbaa !297
  %.not.i23.i = icmp ult ptr %i.cbq, %i.cbs
  br i1 %.not.i23.i, label %bb.nh, label %bb.ng

bb.ng:                                            ; preds = %_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit22.i
  %i.cbt = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.cbm, i8 noundef zeroext %i.cbo) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i784

bb.nh:                                            ; preds = %_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit22.i
  %i.cbu = getelementptr inbounds nuw i8, ptr %i.cbq, i64 1
  store ptr %i.cbu, ptr %i.cbp, align 8, !tbaa !243
  store i8 %i.cbo, ptr %i.cbq, align 1, !tbaa !63
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i784

_ZN4llvm11raw_ostreamlsEc.exit.i784:              ; preds = %bb.nh, %bb.ng
  %i.cbv = load ptr, ptr %i.ap, align 8, !tbaa !112
  %i.cbw = load ptr, ptr %i.cbv, align 8, !tbaa !239, !nonnull !149, !align !150 ; 3 uses
  %i.cbx = getelementptr inbounds nuw i8, ptr %.053.i, i64 16
  %i.cby = load i8, ptr %i.cbx, align 8, !tbaa !595 ; 2 uses
  %i.cbz = getelementptr inbounds nuw i8, ptr %i.cbw, i64 32 ; 2 uses
  %i.cca = load ptr, ptr %i.cbz, align 8, !tbaa !243 ; 3 uses
  %i.ccb = getelementptr inbounds nuw i8, ptr %i.cbw, i64 24
  %i.ccc = load ptr, ptr %i.ccb, align 8, !tbaa !297
  %.not.i25.i = icmp ult ptr %i.cca, %i.ccc
  br i1 %.not.i25.i, label %bb.nj, label %bb.ni

bb.ni:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i784
  %i.ccd = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.cbw, i8 noundef zeroext %i.cby) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit27.i

bb.nj:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i784
  %i.cce = getelementptr inbounds nuw i8, ptr %i.cca, i64 1
  store ptr %i.cce, ptr %i.cbz, align 8, !tbaa !243
  store i8 %i.cby, ptr %i.cca, align 1, !tbaa !63
  br label %_ZN4llvm11raw_ostreamlsEc.exit27.i

_ZN4llvm11raw_ostreamlsEc.exit27.i:               ; preds = %bb.nj, %bb.ni
  %i.ccf = load i8, ptr %i.cax, align 4, !tbaa !633
  %i.ccg = load ptr, ptr %i.ap, align 8, !tbaa !112
  %i.cch = load ptr, ptr %i.ccg, align 8, !tbaa !239 ; 11 uses
  switch i8 %i.ccf, label %bb.nv [
    i8 127, label %bb.nk
    i8 126, label %bb.nn
    i8 125, label %bb.nq
    i8 124, label %bb.nr
    i8 111, label %bb.ns
  ]

bb.nk:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit27.i
  %i.cci = getelementptr inbounds nuw i8, ptr %i.cch, i64 32 ; 2 uses
  %i.ccj = getelementptr inbounds nuw i8, ptr %i.cch, i64 24
  %i.cck = load ptr, ptr %i.cci, align 8, !tbaa !243 ; 3 uses
  %i.ccl = load ptr, ptr %i.ccj, align 8, !tbaa !297
  %.not.i.i30.i = icmp ult ptr %i.cck, %i.ccl
  br i1 %.not.i.i30.i, label %bb.nm, label %bb.nl

bb.nl:                                            ; preds = %bb.nk
  %i.ccm = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.cch, i8 noundef zeroext 0) #22 ; 0 uses
  br label %_ZN4llvm13encodeSLEB128ElRNS_11raw_ostreamEj.exit.i

bb.nm:                                            ; preds = %bb.nk
  %i.ccn = getelementptr inbounds nuw i8, ptr %i.cck, i64 1
  store ptr %i.ccn, ptr %i.cci, align 8, !tbaa !243
  store i8 0, ptr %i.cck, align 1, !tbaa !63
  br label %_ZN4llvm13encodeSLEB128ElRNS_11raw_ostreamEj.exit.i

bb.nn:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit27.i
  %i.cco = getelementptr inbounds nuw i8, ptr %i.cch, i64 32 ; 2 uses
  %i.ccp = getelementptr inbounds nuw i8, ptr %i.cch, i64 24
  %i.ccq = load ptr, ptr %i.cco, align 8, !tbaa !243 ; 3 uses
  %i.ccr = load ptr, ptr %i.ccp, align 8, !tbaa !297
  %.not.i.i38.i810 = icmp ult ptr %i.ccq, %i.ccr
  br i1 %.not.i.i38.i810, label %bb.np, label %bb.no

bb.no:                                            ; preds = %bb.nn
  %i.ccs = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.cch, i8 noundef zeroext 0) #22 ; 0 uses
  br label %_ZN4llvm13encodeSLEB128ElRNS_11raw_ostreamEj.exit.i

bb.np:                                            ; preds = %bb.nn
  %i.cct = getelementptr inbounds nuw i8, ptr %i.ccq, i64 1
  store ptr %i.cct, ptr %i.cco, align 8, !tbaa !243
  store i8 0, ptr %i.ccq, align 1, !tbaa !63
  br label %_ZN4llvm13encodeSLEB128ElRNS_11raw_ostreamEj.exit.i

bb.nq:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit27.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #22
  store i32 0, ptr %i.l, align 4
  %i.ccu = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.cch, ptr noundef nonnull %i.l, i64 noundef 4) #22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #22
  br label %_ZN4llvm13encodeSLEB128ElRNS_11raw_ostreamEj.exit.i

bb.nr:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit27.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #22
  store i64 0, ptr %i.k, align 8
  %i.ccv = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.cch, ptr noundef nonnull %i.k, i64 noundef 8) #22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #22
  br label %_ZN4llvm13encodeSLEB128ElRNS_11raw_ostreamEj.exit.i

bb.ns:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit27.i
  %i.ccw = getelementptr inbounds nuw i8, ptr %i.cch, i64 32 ; 2 uses
  %i.ccx = load ptr, ptr %i.ccw, align 8, !tbaa !243 ; 3 uses
  %i.ccy = getelementptr inbounds nuw i8, ptr %i.cch, i64 24
  %i.ccz = load ptr, ptr %i.ccy, align 8, !tbaa !297
  %.not.i.i41.i = icmp ult ptr %i.ccx, %i.ccz
  br i1 %.not.i.i41.i, label %bb.nu, label %bb.nt

bb.nt:                                            ; preds = %bb.ns
  %i.cda = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.cch, i8 noundef zeroext 111) #22 ; 0 uses
  br label %_ZN4llvm13encodeSLEB128ElRNS_11raw_ostreamEj.exit.i

bb.nu:                                            ; preds = %bb.ns
  %i.cdb = getelementptr inbounds nuw i8, ptr %i.ccx, i64 1
  store ptr %i.cdb, ptr %i.ccw, align 8, !tbaa !243
  store i8 111, ptr %i.ccx, align 1, !tbaa !63
  br label %_ZN4llvm13encodeSLEB128ElRNS_11raw_ostreamEj.exit.i

bb.nv:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit27.i
  unreachable

_ZN4llvm13encodeSLEB128ElRNS_11raw_ostreamEj.exit.i: ; preds = %bb.nu, %bb.nt, %bb.nr, %bb.nq, %bb.np, %bb.no, %bb.nm, %bb.nl
  %i.cdc = load ptr, ptr %i.ap, align 8, !tbaa !112
  %i.cdd = load ptr, ptr %i.cdc, align 8, !tbaa !239, !nonnull !149, !align !150 ; 3 uses
  %i.cde = getelementptr inbounds nuw i8, ptr %i.cdd, i64 32 ; 2 uses
  %i.cdf = load ptr, ptr %i.cde, align 8, !tbaa !243 ; 3 uses
  %i.cdg = getelementptr inbounds nuw i8, ptr %i.cdd, i64 24
  %i.cdh = load ptr, ptr %i.cdg, align 8, !tbaa !297
  %.not.i43.i = icmp ult ptr %i.cdf, %i.cdh
  br i1 %.not.i43.i, label %bb.nx, label %bb.nw

bb.nw:                                            ; preds = %_ZN4llvm13encodeSLEB128ElRNS_11raw_ostreamEj.exit.i
  %i.cdi = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.cdd, i8 noundef zeroext 11) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit45.i

bb.nx:                                            ; preds = %_ZN4llvm13encodeSLEB128ElRNS_11raw_ostreamEj.exit.i
  %i.cdj = getelementptr inbounds nuw i8, ptr %i.cdf, i64 1
  store ptr %i.cdj, ptr %i.cde, align 8, !tbaa !243
  store i8 11, ptr %i.cdf, align 1, !tbaa !63
  br label %_ZN4llvm11raw_ostreamlsEc.exit45.i

_ZN4llvm11raw_ostreamlsEc.exit45.i:               ; preds = %bb.nx, %bb.nw
  %i.cdk = getelementptr inbounds nuw i8, ptr %.053.i, i64 72 ; 2 uses
  %.not.i786 = icmp eq ptr %i.cdk, %i.bzm
  br i1 %.not.i786, label %._crit_edge.i787, label %.lr.ph.i783

_ZN12_GLOBAL__N_116WasmObjectWriter18writeGlobalSectionEN4llvm8ArrayRefINS1_4wasm10WasmGlobalEEE.exit: ; preds = %_ZN12_GLOBAL__N_116WasmObjectWriter15writeTagSectionEN4llvm8ArrayRefIjEE.exit, %_ZN12_GLOBAL__N_116WasmObjectWriter10endSectionERNS_18SectionBookkeepingE.exit.i802
  %i.cdl = load ptr, ptr %30, align 8, !tbaa !58  ; 2 uses
  %i.cdm = load i32, ptr %i.bp, align 8, !tbaa !59 ; 2 uses
  %i.cdn = zext i32 %i.cdm to i64                 ; 2 uses
  %i.cdo = icmp eq i32 %i.cdm, 0
  br i1 %i.cdo, label %_ZN12_GLOBAL__N_116WasmObjectWriter18writeExportSectionEN4llvm8ArrayRefINS1_4wasm10WasmExportEEE.exit, label %bb.ny

bb.ny:                                            ; preds = %_ZN12_GLOBAL__N_116WasmObjectWriter18writeGlobalSectionEN4llvm8ArrayRefINS1_4wasm10WasmGlobalEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call fastcc void @_ZN12_GLOBAL__N_116WasmObjectWriter12startSectionERNS_18SectionBookkeepingEj(ptr noundef nonnull align 8 dereferenceable(1056) %0, ptr noundef nonnull align 8 dereferenceable(32) %9, i32 noundef 7)
  %i.cdp = load ptr, ptr %i.ap, align 8, !tbaa !112
  %i.cdq = load ptr, ptr %i.cdp, align 8, !tbaa !239, !nonnull !149, !align !150 ; 3 uses
  %i.cdr = getelementptr inbounds nuw i8, ptr %i.cdq, i64 32 ; 2 uses
  %i.cds = getelementptr inbounds nuw i8, ptr %i.cdq, i64 24
  br label %bb.nz

bb.nz:                                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i.i815, %bb.ny
  %.019.i.i811 = phi i64 [ %i.cdn, %bb.ny ], [ %i.cdt, %_ZN4llvm11raw_ostreamlsEc.exit.i.i815 ] ; 2 uses
  %i.cdt = lshr i64 %.019.i.i811, 7               ; 2 uses
  %.not.i.not.i812 = icmp eq i64 %i.cdt, 0        ; 2 uses
  %i.cdu = trunc i64 %.019.i.i811 to i8           ; 2 uses
  %i.cdv = or i8 %i.cdu, -128
  %.0.i.i813 = select i1 %.not.i.not.i812, i8 %i.cdu, i8 %i.cdv ; 2 uses
  %i.cdw = load ptr, ptr %i.cdr, align 8, !tbaa !243 ; 3 uses
  %i.cdx = load ptr, ptr %i.cds, align 8, !tbaa !297
  %.not.i.i.i814 = icmp ult ptr %i.cdw, %i.cdx
  br i1 %.not.i.i.i814, label %bb.ob, label %bb.oa

bb.oa:                                            ; preds = %bb.nz
  %i.cdy = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.cdq, i8 noundef zeroext %.0.i.i813) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i.i815

bb.ob:                                            ; preds = %bb.nz
  %i.cdz = getelementptr inbounds nuw i8, ptr %i.cdw, i64 1
  store ptr %i.cdz, ptr %i.cdr, align 8, !tbaa !243
  store i8 %.0.i.i813, ptr %i.cdw, align 1, !tbaa !63
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i.i815

_ZN4llvm11raw_ostreamlsEc.exit.i.i815:            ; preds = %bb.ob, %bb.oa
  br i1 %.not.i.not.i812, label %.lr.ph.preheader.i816, label %bb.nz, !llvm.loop !9

.lr.ph.preheader.i816:                            ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i.i815
  %.idx.i817 = mul nuw nsw i64 %i.cdn, 24
  %i.cea = getelementptr inbounds nuw i8, ptr %i.cdl, i64 %.idx.i817
  br label %.lr.ph.i818

._crit_edge.i838:                                 ; preds = %_ZN4llvm13encodeULEB128EmRNS_11raw_ostreamEj.exit20.i836
  %i.ceb = load ptr, ptr %i.ap, align 8, !tbaa !112
  %i.cec = load ptr, ptr %i.ceb, align 8, !tbaa !239, !nonnull !149, !align !150 ; 4 uses
  %i.ced = load ptr, ptr %i.cec, align 8, !tbaa !65
  %i.cee = getelementptr inbounds nuw i8, ptr %i.ced, i64 80
  %i.cef = load ptr, ptr %i.cee, align 8
  %i.ceg = call noundef i64 %i.cef(ptr noundef nonnull align 8 dereferenceable(48) %i.cec) #22, !inline_history !523
  %i.ceh = getelementptr inbounds nuw i8, ptr %i.cec, i64 32
  %i.cei = load ptr, ptr %i.ceh, align 8, !tbaa !243
  %i.cej = getelementptr inbounds nuw i8, ptr %i.cec, i64 16
  %i.cek = load ptr, ptr %i.cej, align 8, !tbaa !244
  %i.cel = ptrtoint ptr %i.cei to i64
  %i.cem = ptrtoint ptr %i.cek to i64             ; 2 uses
  %i.cen = add i64 %i.ceg, %i.cel                 ; 2 uses
  %.not.i10.i = icmp eq i64 %i.cen, %i.cem
  br i1 %.not.i10.i, label %_ZN12_GLOBAL__N_116WasmObjectWriter10endSectionERNS_18SectionBookkeepingE.exit.i853, label %bb.oc

bb.oc:                                            ; preds = %._crit_edge.i838
  %i.ceo = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.cep = load i64, ptr %i.ceo, align 8, !tbaa !299
  %i.ceq = add i64 %i.cep, %i.cem
  %i.cer = sub i64 %i.cen, %i.ceq                 ; 2 uses
  %.not7.i.i839 = icmp ult i64 %i.cer, 4294967296
  br i1 %.not7.i.i839, label %bb.oe, label %bb.od

bb.od:                                            ; preds = %bb.oc
  call void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef nonnull @.str.43, i1 noundef zeroext true) #24
  unreachable

bb.oe:                                            ; preds = %bb.oc
  %i.ces = load ptr, ptr %i.ap, align 8, !tbaa !112
  %i.cet = load ptr, ptr %i.ces, align 8, !tbaa !239, !nonnull !149, !align !150 ; 2 uses
  %i.ceu = load i64, ptr %9, align 8, !tbaa !300
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #22
  %scevgep.i.i.i.i.i840 = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  br label %bb.of

bb.of:                                            ; preds = %bb.of, %bb.oe
  %indvars.iv34.i.i.i.i.i841 = phi i32 [ %indvars.iv.next.i.i.i.i.i850, %bb.of ], [ 2, %bb.oe ] ; 2 uses
  %indvars.iv.i.i.i.i.i842 = phi ptr [ %scevgep33.i.i.i.i.i849, %bb.of ], [ %scevgep.i.i.i.i.i840, %bb.oe ] ; 2 uses
  %.021.i.i.i.i.i843 = phi ptr [ %i.cfa, %bb.of ], [ %i.j, %bb.oe ] ; 2 uses
  %.020.i.i.i.i.i844 = phi i64 [ %i.cev, %bb.of ], [ %i.cer, %bb.oe ] ; 2 uses
  %.019.i.i.i.i.i845 = phi i32 [ %i.cew, %bb.of ], [ 0, %bb.oe ] ; 4 uses
  %i.cev = lshr i64 %.020.i.i.i.i.i844, 7         ; 2 uses
  %i.cew = add nuw nsw i32 %.019.i.i.i.i.i845, 1
  %.not.i.i.i.i.i846 = icmp ne i64 %i.cev, 0      ; 2 uses
  %i.cex = trunc i64 %.020.i.i.i.i.i844 to i8     ; 2 uses
  %i.cey = icmp samesign ult i32 %.019.i.i.i.i.i845, 4 ; 2 uses
  %or.cond.i.i.i.i.i847 = select i1 %.not.i.i.i.i.i846, i1 true, i1 %i.cey
  %i.cez = or i8 %i.cex, -128
  %.0.i.i.i.i.i848 = select i1 %or.cond.i.i.i.i.i847, i8 %i.cez, i8 %i.cex
  %i.cfa = getelementptr i8, ptr %.021.i.i.i.i.i843, i64 1 ; 4 uses
  store i8 %.0.i.i.i.i.i848, ptr %.021.i.i.i.i.i843, align 1, !tbaa !63
  %scevgep33.i.i.i.i.i849 = getelementptr i8, ptr %indvars.iv.i.i.i.i.i842, i64 1
  %indvars.iv.next.i.i.i.i.i850 = add nsw i32 %indvars.iv34.i.i.i.i.i841, -1
  br i1 %.not.i.i.i.i.i846, label %bb.of, label %bb.og, !llvm.loop !10

bb.og:                                            ; preds = %bb.of
  br i1 %i.cey, label %.preheader.i.i.i.i.i854, label %_ZN12_GLOBAL__N_117writePatchableU32ERN4llvm17raw_pwrite_streamEjm.exit.i.i851

.preheader.i.i.i.i.i854:                          ; preds = %bb.og
  %.not.i.i.i.i855 = icmp eq i32 %.019.i.i.i.i.i845, 3
  br i1 %.not.i.i.i.i855, label %._crit_edge.i.i.i.i.i859, label %.lr.ph.preheader.i.i.i.i.i856

.lr.ph.preheader.i.i.i.i.i856:                    ; preds = %.preheader.i.i.i.i.i854
  %narrow.i.i.i.i857 = sub nuw nsw i32 3, %.019.i.i.i.i.i845
  %i.cfb = zext nneg i32 %narrow.i.i.i.i857 to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cfa, i8 -128, i64 %i.cfb, i1 false), !tbaa !63
  %i.cfc = zext i32 %indvars.iv34.i.i.i.i.i841 to i64
  %scevgep35.i.i.i.i.i858 = getelementptr i8, ptr %indvars.iv.i.i.i.i.i842, i64 %i.cfc
  br label %._crit_edge.i.i.i.i.i859

._crit_edge.i.i.i.i.i859:                         ; preds = %.lr.ph.preheader.i.i.i.i.i856, %.preheader.i.i.i.i.i854
  %.122.lcssa.i.i.i.i.i860 = phi ptr [ %i.cfa, %.preheader.i.i.i.i.i854 ], [ %scevgep35.i.i.i.i.i858, %.lr.ph.preheader.i.i.i.i.i856 ] ; 2 uses
  %i.cfd = getelementptr inbounds nuw i8, ptr %.122.lcssa.i.i.i.i.i860, i64 1
  store i8 0, ptr %.122.lcssa.i.i.i.i.i860, align 1, !tbaa !63
  br label %_ZN12_GLOBAL__N_117writePatchableU32ERN4llvm17raw_pwrite_streamEjm.exit.i.i851

_ZN12_GLOBAL__N_117writePatchableU32ERN4llvm17raw_pwrite_streamEjm.exit.i.i851: ; preds = %._crit_edge.i.i.i.i.i859, %bb.og
  %.2.i.i.i.i.i852 = phi ptr [ %i.cfd, %._crit_edge.i.i.i.i.i859 ], [ %i.cfa, %bb.og ]
  %i.cfe = ptrtoint ptr %.2.i.i.i.i.i852 to i64
  %i.cff = ptrtoint ptr %i.j to i64
  %i.cfg = sub i64 %i.cfe, %i.cff
  %i.cfh = and i64 %i.cfg, 4294967295
  %i.cfi = load ptr, ptr %i.cet, align 8, !tbaa !65
  %i.cfj = getelementptr inbounds nuw i8, ptr %i.cfi, i64 104
  %i.cfk = load ptr, ptr %i.cfj, align 8
  call void %i.cfk(ptr noundef nonnull align 8 dereferenceable(48) %i.cet, ptr noundef nonnull %i.j, i64 noundef %i.cfh, i64 noundef %i.ceu) #22, !inline_history !524
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #22
  br label %_ZN12_GLOBAL__N_116WasmObjectWriter10endSectionERNS_18SectionBookkeepingE.exit.i853

_ZN12_GLOBAL__N_116WasmObjectWriter10endSectionERNS_18SectionBookkeepingE.exit.i853: ; preds = %_ZN12_GLOBAL__N_117writePatchableU32ERN4llvm17raw_pwrite_streamEjm.exit.i.i851, %._crit_edge.i838
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
end_hunk_0
