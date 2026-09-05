Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_func_struct_main?download=true
inline.NumInlined: 5129
inline.NumDeleted: 2006
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN6duckdbL14StructSearchOpIiLb1EEEvRNS_6VectorERNS_6vectorINS_10unique_ptrIS1_St14default_deleteIS1_ELb1EEELb1ESaIS7_EEES2_mS2_:bb.a

bb.vn:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i134.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bhr) #21
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit136.i

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit136.i:    ; preds = %bb.vn, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i134.i, %bb.vj, %_ZN6duckdb15SelectionVectorD2Ev.exit.i131.i
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #21
  br label %bb.vr

.loopexit227.i671:                                ; preds = %_ZNKSt6vectorIPKN6duckdb9hugeint_tESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i115.i
  %lpad.loopexit.i672 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i637

.loopexit.split-lp.i673:                          ; preds = %bb.uw
  %lpad.loopexit.split-lp.i674 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i637

bb.vo:                                            ; preds = %_ZNSt6vectorIPKN6duckdb9hugeint_tESaIS3_EE9push_backEOS3_.exit123.i
  %i.bih = landingpad { ptr, i32 }
          cleanup
  br label %bb.vq

bb.vp:                                            ; preds = %bb.vb
  %i.bii = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %74) #21
  br label %bb.vq

bb.vq:                                            ; preds = %bb.vp, %bb.vo
  %.pn99.i640 = phi { ptr, i32 } [ %i.bii, %bb.vp ], [ %i.bih, %bb.vo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #21
  br label %.body.i637

bb.vr:                                            ; preds = %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit136.i, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i688
  %.sroa.0201.4.i = phi ptr [ %.sroa.0201.7.i, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i688 ], [ %.sroa.0201.8.i, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit136.i ] ; 16 uses
  %.pn226.pn.i = phi ptr [ %.pn226.i, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i688 ], [ %.pn.i638, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit136.i ]
  %.sroa.18.1.i641 = phi ptr [ %.sroa.18.2.i676, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i688 ], [ %.sroa.18.3.i639, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit136.i ]
  %.162.i642 = phi i64 [ %i.bez, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i688 ], [ %.061272.i, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit136.i ] ; 2 uses
  %.sroa.11.1.i643 = getelementptr inbounds nuw i8, ptr %.pn226.pn.i, i64 8 ; 2 uses
  %i.bij = getelementptr inbounds nuw i8, ptr %.sroa.0198.0271.i, i64 8 ; 2 uses
  %.not224.i = icmp eq ptr %i.bij, %i.bdm
  br i1 %.not224.i, label %._crit_edge.i644, label %bb.to

._crit_edge.thread.i670:                          ; preds = %._crit_edge.i644, %bb.tj
  %.sroa.0201.0.lcssa331.i = phi ptr [ %.sroa.0201.4.i, %._crit_edge.i644 ], [ null, %bb.tj ] ; 3 uses
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %4, i8 noundef zeroext 2)
          to label %bb.vs unwind label %bb.vt

bb.vs:                                            ; preds = %._crit_edge.thread.i670
  invoke void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %4, i1 noundef zeroext true)
          to label %.loopexit.i659 unwind label %bb.vt

bb.vt:                                            ; preds = %bb.vu, %bb.vs, %._crit_edge.thread.i670
  %.sroa.0201.0.lcssa330.i = phi ptr [ %.sroa.0201.4.i, %bb.vu ], [ %.sroa.0201.0.lcssa331.i, %bb.vs ], [ %.sroa.0201.0.lcssa331.i, %._crit_edge.thread.i670 ]
  %i.bik = landingpad { ptr, i32 }
          cleanup
  br label %.body.i637

bb.vu:                                            ; preds = %._crit_edge.i644
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %4, i8 noundef zeroext 0)
          to label %bb.vv unwind label %bb.vt

bb.vv:                                            ; preds = %bb.vu
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIiEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %4)
          to label %bb.vw unwind label %bb.vy

bb.vw:                                            ; preds = %bb.vv
  %i.bil = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bim = load ptr, ptr %i.bil, align 8, !tbaa !260 ; 2 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %4)
          to label %bb.vx unwind label %bb.vz

bb.vx:                                            ; preds = %bb.vw
  %i.bin = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 5 uses
  %.not283.i645 = icmp eq i64 %3, 0
  br i1 %.not283.i645, label %.loopexit.i659, label %.lr.ph282.i646

.lr.ph282.i646:                                   ; preds = %bb.vx
  %i.bio = load ptr, ptr %i.bdl, align 8, !tbaa !201 ; 2 uses
  %i.bip = ptrtoint ptr %i.bio to i64
  %i.biq = load ptr, ptr %1, align 8, !tbaa !202  ; 2 uses
  %i.bir = ptrtoint ptr %i.biq to i64
  %i.bis = sub i64 %i.bip, %i.bir
  %i.bit = ashr exact i64 %i.bis, 3
  %i.biu = getelementptr inbounds nuw i8, ptr %70, i64 16
  %i.biv = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.biw = getelementptr inbounds nuw i8, ptr %71, i64 16
  %.not284.i647 = icmp eq ptr %i.bio, %i.biq      ; 2 uses
  %i.bix = ptrtoint ptr %.sroa.0201.4.i to i64
  %i.biy = sub i64 %i.bdv, %i.bix
  %i.biz = ashr exact i64 %i.biy, 3               ; 4 uses
  %umax.i648 = call i64 @llvm.umax.i64(i64 %i.bit, i64 1) ; 4 uses
  br label %bb.wa

bb.vy:                                            ; preds = %bb.vv
  %i.bja = landingpad { ptr, i32 }
          cleanup
  br label %.body.i637

bb.vz:                                            ; preds = %bb.vw
  %i.bjb = landingpad { ptr, i32 }
          cleanup
  br label %.body.i637

bb.wa:                                            ; preds = %._crit_edge278.thread.i, %.lr.ph282.i646
  %.060280.i = phi i64 [ 0, %.lr.ph282.i646 ], [ %i.bnu, %._crit_edge278.thread.i ] ; 13 uses
  %i.bjc = load ptr, ptr %70, align 8, !tbaa !251
  %i.bjd = load ptr, ptr %i.bjc, align 8, !tbaa !252 ; 2 uses
  %.not.i.i649 = icmp eq ptr %i.bjd, null
  br i1 %.not.i.i649, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i650, label %bb.wb

bb.wb:                                            ; preds = %bb.wa
  %i.bje = getelementptr inbounds nuw [4 x i8], ptr %i.bjd, i64 %.060280.i
  %i.bjf = load i32, ptr %i.bje, align 4, !tbaa !48
  %i.bjg = zext i32 %i.bjf to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i650

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i650: ; preds = %bb.wb, %bb.wa
  %i.bjh = phi i64 [ %i.bjg, %bb.wb ], [ %.060280.i, %bb.wa ] ; 2 uses
  %i.bji = load ptr, ptr %i.biu, align 8, !tbaa !242 ; 2 uses
  %.not.i139.i = icmp eq ptr %i.bji, null
  br i1 %.not.i139.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i652, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i651

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i651: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i650
  %i.bjj = lshr i64 %i.bjh, 6
  %i.bjk = and i64 %i.bjh, 63
  %i.bjl = getelementptr inbounds nuw [8 x i8], ptr %i.bji, i64 %i.bjj
  %i.bjm = load i64, ptr %i.bjl, align 8, !tbaa !174
  %i.bjn = shl nuw i64 1, %i.bjk
  %i.bjo = and i64 %i.bjm, %i.bjn
  %.not225.i = icmp eq i64 %i.bjo, 0
  br i1 %.not225.i, label %bb.wc, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i652

bb.wc:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i651
  %i.bjp = load ptr, ptr %i.bin, align 8, !tbaa !242 ; 2 uses
  %.not.i140.i669 = icmp eq ptr %i.bjp, null
  br i1 %.not.i140.i669, label %bb.wd, label %._crit_edge278.thread.sink.split.i

bb.wd:                                            ; preds = %bb.wc
  %i.bjq = load i64, ptr %i.biv, align 8, !tbaa !253
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bin, i64 noundef %i.bjq)
          to label %._crit_edge278.thread.sink.split.sink.split.i unwind label %bb.we

bb.we:                                            ; preds = %bb.wd
  %i.bjr = landingpad { ptr, i32 }
          cleanup
  br label %.body.i637

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i652: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i651, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i650
  %i.bjs = load ptr, ptr %71, align 8, !tbaa !251
  %i.bjt = load ptr, ptr %i.bjs, align 8, !tbaa !252 ; 2 uses
  %.not.i142.i653 = icmp eq ptr %i.bjt, null
  br i1 %.not.i142.i653, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit143.i, label %bb.wf

bb.wf:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i652
  %i.bju = getelementptr inbounds nuw [4 x i8], ptr %i.bjt, i64 %.060280.i
  %i.bjv = load i32, ptr %i.bju, align 4, !tbaa !48
  %i.bjw = zext i32 %i.bjv to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit143.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit143.i: ; preds = %bb.wf, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i652
  %i.bjx = phi i64 [ %i.bjw, %bb.wf ], [ %.060280.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i652 ] ; 3 uses
  %i.bjy = load ptr, ptr %i.biw, align 8, !tbaa !242 ; 2 uses
  %.not.i144.i = icmp eq ptr %i.bjy, null
  br i1 %.not.i144.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit146.i.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit146.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit146.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit143.i
  br i1 %.not284.i647, label %.critedge.i658, label %.lr.ph277.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit146.i.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit143.i
  br i1 %.not284.i647, label %.critedge.i658, label %.lr.ph277.i.thread

.lr.ph277.i.thread:                               ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit146.i.thread
  %i.bjz = getelementptr inbounds nuw [4 x i8], ptr %i.bim, i64 %.060280.i
  br label %.outer.i.us.preheader

.lr.ph277.i:                                      ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit146.i
  %i.bka = lshr i64 %i.bjx, 6
  %i.bkb = getelementptr inbounds nuw [8 x i8], ptr %i.bjy, i64 %i.bka
  %i.bkc = load i64, ptr %i.bkb, align 8, !tbaa !174
  %i.bkd = and i64 %i.bjx, 63
  %i.bke = shl nuw i64 1, %i.bkd
  %i.bkf = and i64 %i.bkc, %i.bke
  %.fr2346 = freeze i64 %i.bkf
  %.not3317 = icmp eq i64 %.fr2346, 0
  %i.bkg = getelementptr inbounds nuw [4 x i8], ptr %i.bim, i64 %.060280.i ; 2 uses
  br i1 %.not3317, label %.outer.i, label %.outer.i.us.preheader

.outer.i.us.preheader:                            ; preds = %.lr.ph277.i.thread, %.lr.ph277.i
  %i.bkh = phi ptr [ %i.bjz, %.lr.ph277.i.thread ], [ %i.bkg, %.lr.ph277.i ]
  %i.bki = getelementptr inbounds nuw [16 x i8], ptr %i.bdj, i64 %i.bjx
  br label %.outer.i.us

.outer.i.us:                                      ; preds = %.outer.i.us.preheader, %.thread.i.split.us2326
  %.0276.ph.i.us = phi i64 [ %i.blm, %.thread.i.split.us2326 ], [ 0, %.outer.i.us.preheader ]
  %.059275.ph.i.us = phi i1 [ true, %.thread.i.split.us2326 ], [ false, %.outer.i.us.preheader ]
  br label %bb.wg

bb.wg:                                            ; preds = %.critedge2333, %.outer.i.us
  %.0276.i.us2316 = phi i64 [ %i.blj, %.critedge2333 ], [ %.0276.ph.i.us, %.outer.i.us ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  store i64 %.0276.i.us2316, ptr %i.ba, align 8, !tbaa !174
  store i64 %i.biz, ptr %i.bb, align 8, !tbaa !174
  %exitcond.not.i654.us2317 = icmp eq i64 %.0276.i.us2316, %i.biz
  br i1 %exitcond.not.i654.us2317, label %.noexc.i.i662, label %bb.wh, !prof !158

bb.wh:                                            ; preds = %bb.wg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  %i.bkj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0201.4.i, i64 %.0276.i.us2316 ; 2 uses
  %i.bkk = load ptr, ptr %i.bkj, align 8, !tbaa !326
  %.not.i655.us2318 = icmp eq ptr %i.bkk, null
  br i1 %.not.i655.us2318, label %.critedge2333, label %bb.wi

bb.wi:                                            ; preds = %bb.wh
  %i.bkl = load ptr, ptr %i.bdn, align 8, !tbaa !316
  %i.bkm = load ptr, ptr %72, align 8, !tbaa !318 ; 2 uses
  %i.bkn = ptrtoint ptr %i.bkl to i64
  %i.bko = ptrtoint ptr %i.bkm to i64
  %i.bkp = sub i64 %i.bkn, %i.bko
  %i.bkq = sdiv exact i64 %i.bkp, 80              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  store i64 %.0276.i.us2316, ptr %i.ay, align 8, !tbaa !174
  store i64 %i.bkq, ptr %i.az, align 8, !tbaa !174
  %.not.i.i.i147.i.us2319 = icmp ult i64 %.0276.i.us2316, %i.bkq
  br i1 %.not.i.i.i147.i.us2319, label %bb.wj, label %.noexc.i192.i, !prof !203

bb.wj:                                            ; preds = %bb.wi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  %i.bkr = getelementptr inbounds nuw [80 x i8], ptr %i.bkm, i64 %.0276.i.us2316 ; 2 uses
  %i.bks = load ptr, ptr %i.bkr, align 8, !tbaa !251
  %i.bkt = load ptr, ptr %i.bks, align 8, !tbaa !252 ; 2 uses
  %.not.i156.i657.us2320 = icmp eq ptr %i.bkt, null
  br i1 %.not.i156.i657.us2320, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit157.i.us2321, label %bb.wk

bb.wk:                                            ; preds = %bb.wj
  %i.bku = getelementptr inbounds nuw [4 x i8], ptr %i.bkt, i64 %.060280.i
  %i.bkv = load i32, ptr %i.bku, align 4, !tbaa !48
  %i.bkw = zext i32 %i.bkv to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit157.i.us2321

_ZNK6duckdb15SelectionVector9get_indexEm.exit157.i.us2321: ; preds = %bb.wk, %bb.wj
  %i.bkx = phi i64 [ %i.bkw, %bb.wk ], [ %.060280.i, %bb.wj ] ; 3 uses
  %i.bky = getelementptr inbounds nuw i8, ptr %i.bkr, i64 16
  %i.bkz = load ptr, ptr %i.bky, align 8, !tbaa !242 ; 2 uses
  %.not.i158.i.us2322 = icmp eq ptr %i.bkz, null
  br i1 %.not.i158.i.us2322, label %.critedge, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit160.i.us2323

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit160.i.us2323: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit157.i.us2321
  %i.bla = lshr i64 %i.bkx, 6
  %i.blb = and i64 %i.bkx, 63
  %i.blc = getelementptr inbounds nuw [8 x i8], ptr %i.bkz, i64 %i.bla
  %i.bld = load i64, ptr %i.blc, align 8, !tbaa !174
  %i.ble = shl nuw i64 1, %i.blb
  %i.blf = and i64 %i.bld, %i.ble
  %.not2347 = icmp eq i64 %i.blf, 0
  br i1 %.not2347, label %.critedge2333, label %.critedge

.critedge:                                        ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit157.i.us2321, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit160.i.us2323
  %i.blg = load ptr, ptr %i.bkj, align 8, !tbaa !326
  %i.blh = getelementptr inbounds nuw [16 x i8], ptr %i.blg, i64 %i.bkx
  %i.bli = invoke noundef zeroext i1 @_ZNK6duckdb9hugeint_teqERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.blh, ptr noundef nonnull align 8 dereferenceable(16) %i.bki)
          to label %_ZN6duckdb6Equals9OperationINS_9hugeint_tEEEbRKT_S5_.exit.i.us unwind label %.split.us2329

_ZN6duckdb6Equals9OperationINS_9hugeint_tEEEbRKT_S5_.exit.i.us: ; preds = %.critedge
  br i1 %i.bli, label %.thread.i.split.us2326, label %.critedge2333

.critedge2333:                                    ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit160.i.us2323, %_ZN6duckdb6Equals9OperationINS_9hugeint_tEEEbRKT_S5_.exit.i.us, %bb.wh
  %i.blj = add nuw i64 %.0276.i.us2316, 1         ; 2 uses
  %exitcond296.not.i.us2325 = icmp eq i64 %i.blj, %umax.i648
  br i1 %exitcond296.not.i.us2325, label %._crit_edge278.i, label %bb.wg, !llvm.loop !850

.thread.i.split.us2326:                           ; preds = %_ZN6duckdb6Equals9OperationINS_9hugeint_tEEEbRKT_S5_.exit.i.us
  %i.blk = trunc i64 %.0276.i.us2316 to i32
  %i.bll = add i32 %i.blk, 1
  store i32 %i.bll, ptr %i.bkh, align 4, !tbaa !48
  %i.blm = add nuw i64 %.0276.i.us2316, 1         ; 2 uses
  %exitcond296.not334.i.us = icmp eq i64 %i.blm, %umax.i648
  br i1 %exitcond296.not334.i.us, label %._crit_edge278.thread.i, label %.outer.i.us, !llvm.loop !850

.split.us2329:                                    ; preds = %.critedge
  %i.bln = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i656

.outer.i:                                         ; preds = %.lr.ph277.i, %.thread.i.split.us
  %.0276.ph.i = phi i64 [ %i.bmp, %.thread.i.split.us ], [ 0, %.lr.ph277.i ]
  %.059275.ph.i = phi i1 [ true, %.thread.i.split.us ], [ false, %.lr.ph277.i ]
  %i.blo = load ptr, ptr %i.bdn, align 8
  %i.blp = load ptr, ptr %72, align 8             ; 2 uses
  %i.blq = ptrtoint ptr %i.blo to i64
  %i.blr = ptrtoint ptr %i.blp to i64
  %i.bls = sub i64 %i.blq, %i.blr
  %i.blt = sdiv exact i64 %i.bls, 80              ; 2 uses
  br label %bb.wl

bb.wl:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit160.i.us.thread, %.outer.i
  %.0276.i.us = phi i64 [ %i.bmm, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit160.i.us.thread ], [ %.0276.ph.i, %.outer.i ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  store i64 %.0276.i.us, ptr %i.ba, align 8, !tbaa !174
  store i64 %i.biz, ptr %i.bb, align 8, !tbaa !174
  %exitcond.not.i654.us = icmp eq i64 %.0276.i.us, %i.biz
  br i1 %exitcond.not.i654.us, label %.noexc.i.i662, label %bb.wm, !prof !158

bb.wm:                                            ; preds = %bb.wl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  %i.blu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0201.4.i, i64 %.0276.i.us
  %i.blv = load ptr, ptr %i.blu, align 8, !tbaa !326
  %.not.i655.us = icmp eq ptr %i.blv, null
  br i1 %.not.i655.us, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit160.i.us.thread, label %bb.wn

bb.wn:                                            ; preds = %bb.wm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  store i64 %.0276.i.us, ptr %i.ay, align 8, !tbaa !174
  store i64 %i.blt, ptr %i.az, align 8, !tbaa !174
  %.not.i.i.i147.i.us = icmp ult i64 %.0276.i.us, %i.blt
  br i1 %.not.i.i.i147.i.us, label %bb.wo, label %.noexc.i192.i, !prof !203

bb.wo:                                            ; preds = %bb.wn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  %i.blw = getelementptr inbounds nuw [80 x i8], ptr %i.blp, i64 %.0276.i.us ; 2 uses
  %i.blx = load ptr, ptr %i.blw, align 8, !tbaa !251
  %i.bly = load ptr, ptr %i.blx, align 8, !tbaa !252 ; 2 uses
  %.not.i156.i657.us = icmp eq ptr %i.bly, null
  br i1 %.not.i156.i657.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit157.i.us, label %bb.wp

bb.wp:                                            ; preds = %bb.wo
  %i.blz = getelementptr inbounds nuw [4 x i8], ptr %i.bly, i64 %.060280.i
  %i.bma = load i32, ptr %i.blz, align 4, !tbaa !48
  %i.bmb = zext i32 %i.bma to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit157.i.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit157.i.us: ; preds = %bb.wp, %bb.wo
  %i.bmc = phi i64 [ %i.bmb, %bb.wp ], [ %.060280.i, %bb.wo ] ; 2 uses
  %i.bmd = getelementptr inbounds nuw i8, ptr %i.blw, i64 16
  %i.bme = load ptr, ptr %i.bmd, align 8, !tbaa !242 ; 2 uses
  %.not.i158.i.us = icmp eq ptr %i.bme, null
  br i1 %.not.i158.i.us, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit160.i.us.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit160.i.us

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit160.i.us: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit157.i.us
  %i.bmf = lshr i64 %i.bmc, 6
  %i.bmg = and i64 %i.bmc, 63
  %i.bmh = getelementptr inbounds nuw [8 x i8], ptr %i.bme, i64 %i.bmf
  %i.bmi = load i64, ptr %i.bmh, align 8, !tbaa !174
  %i.bmj = shl nuw i64 1, %i.bmg
  %i.bmk = and i64 %i.bmi, %i.bmj
  %i.bml = icmp eq i64 %i.bmk, 0
  br i1 %i.bml, label %.thread.i.split.us, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit160.i.us.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit160.i.us.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit157.i.us, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit160.i.us, %bb.wm
  %i.bmm = add nuw i64 %.0276.i.us, 1             ; 2 uses
  %exitcond296.not.i.us = icmp eq i64 %i.bmm, %umax.i648
  br i1 %exitcond296.not.i.us, label %._crit_edge278.i, label %bb.wl, !llvm.loop !850

.thread.i.split.us:                               ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit160.i.us
  %i.bmn = trunc i64 %.0276.i.us to i32
  %i.bmo = add i32 %i.bmn, 1
  store i32 %i.bmo, ptr %i.bkg, align 4, !tbaa !48
  %i.bmp = add nuw i64 %.0276.i.us, 1             ; 2 uses
  %exitcond296.not334.i = icmp eq i64 %i.bmp, %umax.i648
  br i1 %exitcond296.not334.i, label %._crit_edge278.thread.i, label %.outer.i, !llvm.loop !850

._crit_edge278.i:                                 ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit160.i.us.thread, %.critedge2333
  %.us-phi2315 = phi i1 [ %.059275.ph.i.us, %.critedge2333 ], [ %.059275.ph.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit160.i.us.thread ]
  br i1 %.us-phi2315, label %._crit_edge278.thread.i, label %.critedge.i658

.noexc.i.i662:                                    ; preds = %bb.wl, %bb.wg
  %i.bmq = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #21
  %i.bmr = getelementptr inbounds nuw i8, ptr %69, i64 16 ; 3 uses
  store ptr %i.bmr, ptr %69, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax) #21
  store i64 55, ptr %i.ax, align 8, !tbaa !174
  %i.bms = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %69, ptr noundef nonnull align 8 dereferenceable(8) %i.ax, i64 noundef 0)
          to label %.noexc190.i665 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i663 ; 3 uses

.noexc190.i665:                                   ; preds = %.noexc.i.i662
  store ptr %i.bms, ptr %69, align 8, !tbaa !68
  %i.bmt = load i64, ptr %i.ax, align 8, !tbaa !174 ; 3 uses
  store i64 %i.bmt, ptr %i.bmr, align 8, !tbaa !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.bms, ptr noundef nonnull align 1 dereferenceable(55) @.str.8, i64 55, i1 false)
  %i.bmu = getelementptr inbounds nuw i8, ptr %69, i64 8
  store i64 %i.bmt, ptr %i.bmu, align 8, !tbaa !55
  %i.bmv = getelementptr inbounds nuw i8, ptr %i.bms, i64 %i.bmt
  store i8 0, ptr %i.bmv, align 1, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax) #21
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bmq, ptr noundef nonnull align 8 dereferenceable(32) %69, ptr noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noundef nonnull align 8 dereferenceable(8) %i.bb)
          to label %bb.wq unwind label %bb.wr

bb.wq:                                            ; preds = %.noexc190.i665
  invoke void @__cxa_throw(ptr nonnull %i.bmq, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.wt unwind label %bb.wr
end_hunk_0
begin_hunk_1_@_ZN6duckdbL14StructSearchOpIiLb1EEEvRNS_6VectorERNS_6vectorINS_10unique_ptrIS1_St14default_deleteIS1_ELb1EEELb1ESaIS7_EEES2_mS2_:bb.a

bb.auq:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i134.i1455
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dwg) #21
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit136.i1457

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit136.i1457: ; preds = %bb.auq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i134.i1455, %bb.aum, %_ZN6duckdb15SelectionVectorD2Ev.exit.i131.i1452
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #21
  br label %bb.auu

.loopexit227.i1556:                               ; preds = %_ZNKSt6vectorIPKN6duckdb10uhugeint_tESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i115.i
  %lpad.loopexit.i1557 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i1435

.loopexit.split-lp.i1560:                         ; preds = %bb.atz
  %lpad.loopexit.split-lp.i1561 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i1435

bb.aur:                                           ; preds = %_ZNSt6vectorIPKN6duckdb10uhugeint_tESaIS3_EE9push_backEOS3_.exit123.i
  %i.dww = landingpad { ptr, i32 }
          cleanup
  br label %bb.aut

bb.aus:                                           ; preds = %bb.aue
  %i.dwx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %39) #21
  br label %bb.aut

bb.aut:                                           ; preds = %bb.aus, %bb.aur
  %.pn99.i1445 = phi { ptr, i32 } [ %i.dwx, %bb.aus ], [ %i.dww, %bb.aur ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #21
  br label %.body.i1435

bb.auu:                                           ; preds = %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit136.i1457, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i1585
  %.sroa.0201.4.i1458 = phi ptr [ %.sroa.0201.7.i1571, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i1585 ], [ %.sroa.0201.8.i1442, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit136.i1457 ] ; 16 uses
  %.pn226.pn.i1459 = phi ptr [ %.pn226.i1572, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i1585 ], [ %.pn.i1443, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit136.i1457 ]
  %.sroa.18.1.i1460 = phi ptr [ %.sroa.18.2.i1573, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i1585 ], [ %.sroa.18.3.i1444, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit136.i1457 ]
  %.162.i1461 = phi i64 [ %i.dto, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i1585 ], [ %.061272.i1430, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit136.i1457 ] ; 2 uses
  %.sroa.11.1.i1462 = getelementptr inbounds nuw i8, ptr %.pn226.pn.i1459, i64 8 ; 2 uses
  %i.dwy = getelementptr inbounds nuw i8, ptr %.sroa.0198.0271.i1431, i64 8 ; 2 uses
  %.not224.i1463 = icmp eq ptr %i.dwy, %i.dsb
  br i1 %.not224.i1463, label %._crit_edge.i1464, label %bb.asr

._crit_edge.thread.i1552:                         ; preds = %._crit_edge.i1464, %bb.asm
  %.sroa.0201.0.lcssa331.i1553 = phi ptr [ %.sroa.0201.4.i1458, %._crit_edge.i1464 ], [ null, %bb.asm ] ; 3 uses
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %4, i8 noundef zeroext 2)
          to label %bb.auv unwind label %bb.auw

bb.auv:                                           ; preds = %._crit_edge.thread.i1552
  invoke void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %4, i1 noundef zeroext true)
          to label %.loopexit.i1515 unwind label %bb.auw

bb.auw:                                           ; preds = %bb.aux, %bb.auv, %._crit_edge.thread.i1552
  %.sroa.0201.0.lcssa330.i1465 = phi ptr [ %.sroa.0201.4.i1458, %bb.aux ], [ %.sroa.0201.0.lcssa331.i1553, %bb.auv ], [ %.sroa.0201.0.lcssa331.i1553, %._crit_edge.thread.i1552 ]
  %i.dwz = landingpad { ptr, i32 }
          cleanup
  br label %.body.i1435

bb.aux:                                           ; preds = %._crit_edge.i1464
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %4, i8 noundef zeroext 0)
          to label %bb.auy unwind label %bb.auw

bb.auy:                                           ; preds = %bb.aux
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIiEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %4)
          to label %bb.auz unwind label %bb.avb

bb.auz:                                           ; preds = %bb.auy
  %i.dxa = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.dxb = load ptr, ptr %i.dxa, align 8, !tbaa !260 ; 2 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %4)
          to label %bb.ava unwind label %bb.avc

bb.ava:                                           ; preds = %bb.auz
  %i.dxc = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 5 uses
  %.not283.i1466 = icmp eq i64 %3, 0
  br i1 %.not283.i1466, label %.loopexit.i1515, label %.lr.ph282.i1467

.lr.ph282.i1467:                                  ; preds = %bb.ava
  %i.dxd = load ptr, ptr %i.dsa, align 8, !tbaa !201 ; 2 uses
  %i.dxe = ptrtoint ptr %i.dxd to i64
  %i.dxf = load ptr, ptr %1, align 8, !tbaa !202  ; 2 uses
  %i.dxg = ptrtoint ptr %i.dxf to i64
  %i.dxh = sub i64 %i.dxe, %i.dxg
  %i.dxi = ashr exact i64 %i.dxh, 3
  %i.dxj = getelementptr inbounds nuw i8, ptr %35, i64 16
  %i.dxk = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.dxl = getelementptr inbounds nuw i8, ptr %36, i64 16
  %.not284.i1468 = icmp eq ptr %i.dxd, %i.dxf     ; 2 uses
  %i.dxm = ptrtoint ptr %.sroa.0201.4.i1458 to i64
  %i.dxn = sub i64 %i.dsk, %i.dxm
  %i.dxo = ashr exact i64 %i.dxn, 3               ; 4 uses
  %umax.i1469 = call i64 @llvm.umax.i64(i64 %i.dxi, i64 1) ; 4 uses
  br label %bb.avd

bb.avb:                                           ; preds = %bb.auy
  %i.dxp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i1435

bb.avc:                                           ; preds = %bb.auz
  %i.dxq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i1435

bb.avd:                                           ; preds = %._crit_edge278.thread.i1513, %.lr.ph282.i1467
  %.060280.i1470 = phi i64 [ 0, %.lr.ph282.i1467 ], [ %i.ecj, %._crit_edge278.thread.i1513 ] ; 13 uses
  %i.dxr = load ptr, ptr %35, align 8, !tbaa !251
  %i.dxs = load ptr, ptr %i.dxr, align 8, !tbaa !252 ; 2 uses
  %.not.i.i1471 = icmp eq ptr %i.dxs, null
  br i1 %.not.i.i1471, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i1472, label %bb.ave

bb.ave:                                           ; preds = %bb.avd
  %i.dxt = getelementptr inbounds nuw [4 x i8], ptr %i.dxs, i64 %.060280.i1470
  %i.dxu = load i32, ptr %i.dxt, align 4, !tbaa !48
  %i.dxv = zext i32 %i.dxu to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i1472

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i1472: ; preds = %bb.ave, %bb.avd
  %i.dxw = phi i64 [ %i.dxv, %bb.ave ], [ %.060280.i1470, %bb.avd ] ; 2 uses
  %i.dxx = load ptr, ptr %i.dxj, align 8, !tbaa !242 ; 2 uses
  %.not.i139.i1473 = icmp eq ptr %i.dxx, null
  br i1 %.not.i139.i1473, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i1476, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i1474

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i1474: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i1472
  %i.dxy = lshr i64 %i.dxw, 6
  %i.dxz = and i64 %i.dxw, 63
  %i.dya = getelementptr inbounds nuw [8 x i8], ptr %i.dxx, i64 %i.dxy
  %i.dyb = load i64, ptr %i.dya, align 8, !tbaa !174
  %i.dyc = shl nuw i64 1, %i.dxz
  %i.dyd = and i64 %i.dyb, %i.dyc
  %.not225.i1475 = icmp eq i64 %i.dyd, 0
  br i1 %.not225.i1475, label %bb.avf, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i1476

bb.avf:                                           ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i1474
  %i.dye = load ptr, ptr %i.dxc, align 8, !tbaa !242 ; 2 uses
  %.not.i140.i1551 = icmp eq ptr %i.dye, null
  br i1 %.not.i140.i1551, label %bb.avg, label %._crit_edge278.thread.sink.split.i1511

bb.avg:                                           ; preds = %bb.avf
  %i.dyf = load i64, ptr %i.dxk, align 8, !tbaa !253
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.dxc, i64 noundef %i.dyf)
          to label %._crit_edge278.thread.sink.split.sink.split.i1540 unwind label %bb.avh

bb.avh:                                           ; preds = %bb.avg
  %i.dyg = landingpad { ptr, i32 }
          cleanup
  br label %.body.i1435

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i1476: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i1474, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i1472
  %i.dyh = load ptr, ptr %36, align 8, !tbaa !251
  %i.dyi = load ptr, ptr %i.dyh, align 8, !tbaa !252 ; 2 uses
  %.not.i142.i1477 = icmp eq ptr %i.dyi, null
  br i1 %.not.i142.i1477, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit143.i1478, label %bb.avi

bb.avi:                                           ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i1476
  %i.dyj = getelementptr inbounds nuw [4 x i8], ptr %i.dyi, i64 %.060280.i1470
  %i.dyk = load i32, ptr %i.dyj, align 4, !tbaa !48
  %i.dyl = zext i32 %i.dyk to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit143.i1478

_ZNK6duckdb15SelectionVector9get_indexEm.exit143.i1478: ; preds = %bb.avi, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i1476
  %i.dym = phi i64 [ %i.dyl, %bb.avi ], [ %.060280.i1470, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i1476 ] ; 3 uses
  %i.dyn = load ptr, ptr %i.dxl, align 8, !tbaa !242 ; 2 uses
  %.not.i144.i1479 = icmp eq ptr %i.dyn, null
  br i1 %.not.i144.i1479, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit146.i1480.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit146.i1480

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit146.i1480: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit143.i1478
  br i1 %.not284.i1468, label %.critedge.i1509, label %.lr.ph277.i1482

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit146.i1480.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit143.i1478
  br i1 %.not284.i1468, label %.critedge.i1509, label %.lr.ph277.i1482.thread

.lr.ph277.i1482.thread:                           ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit146.i1480.thread
  %i.dyo = getelementptr inbounds nuw [4 x i8], ptr %i.dxb, i64 %.060280.i1470
  br label %.outer.i1483.us.preheader

.lr.ph277.i1482:                                  ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit146.i1480
  %i.dyp = lshr i64 %i.dym, 6
  %i.dyq = getelementptr inbounds nuw [8 x i8], ptr %i.dyn, i64 %i.dyp
  %i.dyr = load i64, ptr %i.dyq, align 8, !tbaa !174
  %i.dys = and i64 %i.dym, 63
  %i.dyt = shl nuw i64 1, %i.dys
  %i.dyu = and i64 %i.dyr, %i.dyt
  %.fr2344 = freeze i64 %i.dyu
  %.not3316 = icmp eq i64 %.fr2344, 0
  %i.dyv = getelementptr inbounds nuw [4 x i8], ptr %i.dxb, i64 %.060280.i1470 ; 2 uses
  br i1 %.not3316, label %.outer.i1483, label %.outer.i1483.us.preheader

.outer.i1483.us.preheader:                        ; preds = %.lr.ph277.i1482.thread, %.lr.ph277.i1482
  %i.dyw = phi ptr [ %i.dyo, %.lr.ph277.i1482.thread ], [ %i.dyv, %.lr.ph277.i1482 ]
  %i.dyx = getelementptr inbounds nuw [16 x i8], ptr %i.dry, i64 %i.dym
  br label %.outer.i1483.us

.outer.i1483.us:                                  ; preds = %.outer.i1483.us.preheader, %.thread.i1542.split.us2308
  %.0276.ph.i1484.us = phi i64 [ %i.eab, %.thread.i1542.split.us2308 ], [ 0, %.outer.i1483.us.preheader ]
  %.059275.ph.i1485.us = phi i1 [ true, %.thread.i1542.split.us2308 ], [ false, %.outer.i1483.us.preheader ]
  br label %bb.avj

bb.avj:                                           ; preds = %.critedge2335, %.outer.i1483.us
  %.0276.i1486.us2298 = phi i64 [ %i.dzy, %.critedge2335 ], [ %.0276.ph.i1484.us, %.outer.i1483.us ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store i64 %.0276.i1486.us2298, ptr %i.w, align 8, !tbaa !174
  store i64 %i.dxo, ptr %i.x, align 8, !tbaa !174
  %exitcond.not.i1487.us2299 = icmp eq i64 %.0276.i1486.us2298, %i.dxo
  br i1 %exitcond.not.i1487.us2299, label %.noexc.i.i1544, label %bb.avk, !prof !158

bb.avk:                                           ; preds = %bb.avj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %i.dyy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0201.4.i1458, i64 %.0276.i1486.us2298 ; 2 uses
  %i.dyz = load ptr, ptr %i.dyy, align 8, !tbaa !328
  %.not.i1488.us2300 = icmp eq ptr %i.dyz, null
  br i1 %.not.i1488.us2300, label %.critedge2335, label %bb.avl

bb.avl:                                           ; preds = %bb.avk
  %i.dza = load ptr, ptr %i.dsc, align 8, !tbaa !316
  %i.dzb = load ptr, ptr %37, align 8, !tbaa !318 ; 2 uses
  %i.dzc = ptrtoint ptr %i.dza to i64
  %i.dzd = ptrtoint ptr %i.dzb to i64
  %i.dze = sub i64 %i.dzc, %i.dzd
  %i.dzf = sdiv exact i64 %i.dze, 80              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store i64 %.0276.i1486.us2298, ptr %i.u, align 8, !tbaa !174
  store i64 %i.dzf, ptr %i.v, align 8, !tbaa !174
  %.not.i.i.i147.i1489.us2301 = icmp ult i64 %.0276.i1486.us2298, %i.dzf
  br i1 %.not.i.i.i147.i1489.us2301, label %bb.avm, label %.noexc.i192.i1490, !prof !203

bb.avm:                                           ; preds = %bb.avl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.dzg = getelementptr inbounds nuw [80 x i8], ptr %i.dzb, i64 %.0276.i1486.us2298 ; 2 uses
  %i.dzh = load ptr, ptr %i.dzg, align 8, !tbaa !251
  %i.dzi = load ptr, ptr %i.dzh, align 8, !tbaa !252 ; 2 uses
  %.not.i156.i1499.us2302 = icmp eq ptr %i.dzi, null
  br i1 %.not.i156.i1499.us2302, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit157.i1500.us2303, label %bb.avn

bb.avn:                                           ; preds = %bb.avm
  %i.dzj = getelementptr inbounds nuw [4 x i8], ptr %i.dzi, i64 %.060280.i1470
  %i.dzk = load i32, ptr %i.dzj, align 4, !tbaa !48
  %i.dzl = zext i32 %i.dzk to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit157.i1500.us2303

_ZNK6duckdb15SelectionVector9get_indexEm.exit157.i1500.us2303: ; preds = %bb.avn, %bb.avm
  %i.dzm = phi i64 [ %i.dzl, %bb.avn ], [ %.060280.i1470, %bb.avm ] ; 3 uses
  %i.dzn = getelementptr inbounds nuw i8, ptr %i.dzg, i64 16
  %i.dzo = load ptr, ptr %i.dzn, align 8, !tbaa !242 ; 2 uses
  %.not.i158.i1501.us2304 = icmp eq ptr %i.dzo, null
  br i1 %.not.i158.i1501.us2304, label %.critedge2334, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit160.i1502.us2305

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit160.i1502.us2305: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit157.i1500.us2303
  %i.dzp = lshr i64 %i.dzm, 6
  %i.dzq = and i64 %i.dzm, 63
  %i.dzr = getelementptr inbounds nuw [8 x i8], ptr %i.dzo, i64 %i.dzp
  %i.dzs = load i64, ptr %i.dzr, align 8, !tbaa !174
  %i.dzt = shl nuw i64 1, %i.dzq
  %i.dzu = and i64 %i.dzs, %i.dzt
  %.not2345 = icmp eq i64 %i.dzu, 0
  br i1 %.not2345, label %.critedge2335, label %.critedge2334

.critedge2334:                                    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit157.i1500.us2303, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit160.i1502.us2305
  %i.dzv = load ptr, ptr %i.dyy, align 8, !tbaa !328
  %i.dzw = getelementptr inbounds nuw [16 x i8], ptr %i.dzv, i64 %i.dzm
  %i.dzx = invoke noundef zeroext i1 @_ZNK6duckdb10uhugeint_teqERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.dzw, ptr noundef nonnull align 8 dereferenceable(16) %i.dyx)
          to label %_ZN6duckdb6Equals9OperationINS_10uhugeint_tEEEbRKT_S5_.exit.i.us unwind label %.split.us2311

_ZN6duckdb6Equals9OperationINS_10uhugeint_tEEEbRKT_S5_.exit.i.us: ; preds = %.critedge2334
  br i1 %i.dzx, label %.thread.i1542.split.us2308, label %.critedge2335

.critedge2335:                                    ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit160.i1502.us2305, %_ZN6duckdb6Equals9OperationINS_10uhugeint_tEEEbRKT_S5_.exit.i.us, %bb.avk
  %i.dzy = add nuw i64 %.0276.i1486.us2298, 1     ; 2 uses
  %exitcond296.not.i1507.us2307 = icmp eq i64 %i.dzy, %umax.i1469
  br i1 %exitcond296.not.i1507.us2307, label %._crit_edge278.i1508, label %bb.avj, !llvm.loop !870

.thread.i1542.split.us2308:                       ; preds = %_ZN6duckdb6Equals9OperationINS_10uhugeint_tEEEbRKT_S5_.exit.i.us
  %i.dzz = trunc i64 %.0276.i1486.us2298 to i32
  %i.eaa = add i32 %i.dzz, 1
  store i32 %i.eaa, ptr %i.dyw, align 4, !tbaa !48
  %i.eab = add nuw i64 %.0276.i1486.us2298, 1     ; 2 uses
  %exitcond296.not334.i1543.us = icmp eq i64 %i.eab, %umax.i1469
  br i1 %exitcond296.not334.i1543.us, label %._crit_edge278.thread.i1513, label %.outer.i1483.us, !llvm.loop !870

.split.us2311:                                    ; preds = %.critedge2334
  %i.eac = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i1493

.outer.i1483:                                     ; preds = %.lr.ph277.i1482, %.thread.i1542.split.us
  %.0276.ph.i1484 = phi i64 [ %i.ebe, %.thread.i1542.split.us ], [ 0, %.lr.ph277.i1482 ]
  %.059275.ph.i1485 = phi i1 [ true, %.thread.i1542.split.us ], [ false, %.lr.ph277.i1482 ]
  %i.ead = load ptr, ptr %i.dsc, align 8
  %i.eae = load ptr, ptr %37, align 8             ; 2 uses
  %i.eaf = ptrtoint ptr %i.ead to i64
  %i.eag = ptrtoint ptr %i.eae to i64
  %i.eah = sub i64 %i.eaf, %i.eag
  %i.eai = sdiv exact i64 %i.eah, 80              ; 2 uses
  br label %bb.avo

bb.avo:                                           ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit160.i1502.us.thread, %.outer.i1483
  %.0276.i1486.us = phi i64 [ %i.ebb, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit160.i1502.us.thread ], [ %.0276.ph.i1484, %.outer.i1483 ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store i64 %.0276.i1486.us, ptr %i.w, align 8, !tbaa !174
  store i64 %i.dxo, ptr %i.x, align 8, !tbaa !174
  %exitcond.not.i1487.us = icmp eq i64 %.0276.i1486.us, %i.dxo
  br i1 %exitcond.not.i1487.us, label %.noexc.i.i1544, label %bb.avp, !prof !158

bb.avp:                                           ; preds = %bb.avo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %i.eaj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0201.4.i1458, i64 %.0276.i1486.us
  %i.eak = load ptr, ptr %i.eaj, align 8, !tbaa !328
  %.not.i1488.us = icmp eq ptr %i.eak, null
  br i1 %.not.i1488.us, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit160.i1502.us.thread, label %bb.avq

bb.avq:                                           ; preds = %bb.avp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store i64 %.0276.i1486.us, ptr %i.u, align 8, !tbaa !174
  store i64 %i.eai, ptr %i.v, align 8, !tbaa !174
  %.not.i.i.i147.i1489.us = icmp ult i64 %.0276.i1486.us, %i.eai
  br i1 %.not.i.i.i147.i1489.us, label %bb.avr, label %.noexc.i192.i1490, !prof !203

bb.avr:                                           ; preds = %bb.avq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.eal = getelementptr inbounds nuw [80 x i8], ptr %i.eae, i64 %.0276.i1486.us ; 2 uses
  %i.eam = load ptr, ptr %i.eal, align 8, !tbaa !251
  %i.ean = load ptr, ptr %i.eam, align 8, !tbaa !252 ; 2 uses
  %.not.i156.i1499.us = icmp eq ptr %i.ean, null
  br i1 %.not.i156.i1499.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit157.i1500.us, label %bb.avs

bb.avs:                                           ; preds = %bb.avr
  %i.eao = getelementptr inbounds nuw [4 x i8], ptr %i.ean, i64 %.060280.i1470
  %i.eap = load i32, ptr %i.eao, align 4, !tbaa !48
  %i.eaq = zext i32 %i.eap to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit157.i1500.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit157.i1500.us: ; preds = %bb.avs, %bb.avr
  %i.ear = phi i64 [ %i.eaq, %bb.avs ], [ %.060280.i1470, %bb.avr ] ; 2 uses
  %i.eas = getelementptr inbounds nuw i8, ptr %i.eal, i64 16
  %i.eat = load ptr, ptr %i.eas, align 8, !tbaa !242 ; 2 uses
  %.not.i158.i1501.us = icmp eq ptr %i.eat, null
  br i1 %.not.i158.i1501.us, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit160.i1502.us.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit160.i1502.us

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit160.i1502.us: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit157.i1500.us
  %i.eau = lshr i64 %i.ear, 6
  %i.eav = and i64 %i.ear, 63
  %i.eaw = getelementptr inbounds nuw [8 x i8], ptr %i.eat, i64 %i.eau
  %i.eax = load i64, ptr %i.eaw, align 8, !tbaa !174
  %i.eay = shl nuw i64 1, %i.eav
  %i.eaz = and i64 %i.eax, %i.eay
  %i.eba = icmp eq i64 %i.eaz, 0
  br i1 %i.eba, label %.thread.i1542.split.us, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit160.i1502.us.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit160.i1502.us.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit157.i1500.us, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit160.i1502.us, %bb.avp
  %i.ebb = add nuw i64 %.0276.i1486.us, 1         ; 2 uses
  %exitcond296.not.i1507.us = icmp eq i64 %i.ebb, %umax.i1469
  br i1 %exitcond296.not.i1507.us, label %._crit_edge278.i1508, label %bb.avo, !llvm.loop !870

.thread.i1542.split.us:                           ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit160.i1502.us
  %i.ebc = trunc i64 %.0276.i1486.us to i32
  %i.ebd = add i32 %i.ebc, 1
  store i32 %i.ebd, ptr %i.dyv, align 4, !tbaa !48
  %i.ebe = add nuw i64 %.0276.i1486.us, 1         ; 2 uses
  %exitcond296.not334.i1543 = icmp eq i64 %i.ebe, %umax.i1469
  br i1 %exitcond296.not334.i1543, label %._crit_edge278.thread.i1513, label %.outer.i1483, !llvm.loop !870

._crit_edge278.i1508:                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit160.i1502.us.thread, %.critedge2335
  %.us-phi2297 = phi i1 [ %.059275.ph.i1485.us, %.critedge2335 ], [ %.059275.ph.i1485, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit160.i1502.us.thread ]
  br i1 %.us-phi2297, label %._crit_edge278.thread.i1513, label %.critedge.i1509

.noexc.i.i1544:                                   ; preds = %bb.avo, %bb.avj
  %i.ebf = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #21
  %i.ebg = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 3 uses
  store ptr %i.ebg, ptr %34, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #21
  store i64 55, ptr %i.t, align 8, !tbaa !174
  %i.ebh = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull align 8 dereferenceable(8) %i.t, i64 noundef 0)
          to label %.noexc190.i1547 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i1545 ; 3 uses

.noexc190.i1547:                                  ; preds = %.noexc.i.i1544
  store ptr %i.ebh, ptr %34, align 8, !tbaa !68
  %i.ebi = load i64, ptr %i.t, align 8, !tbaa !174 ; 3 uses
  store i64 %i.ebi, ptr %i.ebg, align 8, !tbaa !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.ebh, ptr noundef nonnull align 1 dereferenceable(55) @.str.8, i64 55, i1 false)
  %i.ebj = getelementptr inbounds nuw i8, ptr %34, i64 8
  store i64 %i.ebi, ptr %i.ebj, align 8, !tbaa !55
  %i.ebk = getelementptr inbounds nuw i8, ptr %i.ebh, i64 %i.ebi
  store i8 0, ptr %i.ebk, align 1, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #21
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ebf, ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull align 8 dereferenceable(8) %i.x)
          to label %bb.avt unwind label %bb.avu

bb.avt:                                           ; preds = %.noexc190.i1547
  invoke void @__cxa_throw(ptr nonnull %i.ebf, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.avw unwind label %bb.avu
end_hunk_1
begin_hunk_2_@_ZN6duckdbL14StructSearchOpIiLb1EEEvRNS_6VectorERNS_6vectorINS_10unique_ptrIS1_St14default_deleteIS1_ELb1EEELb1ESaIS7_EEES2_mS2_:bb.a

bb.azp:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i134.i1612
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ejp) #21
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit136.i1614

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit136.i1614: ; preds = %bb.azp, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i134.i1612, %bb.azl, %_ZN6duckdb15SelectionVectorD2Ev.exit.i131.i1609
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #21
  br label %bb.azt

.loopexit226.i1669:                               ; preds = %_ZNKSt6vectorIPKfSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i115.i
  %lpad.loopexit.i1670 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i1597

.loopexit.split-lp.i1673:                         ; preds = %bb.ayy
  %lpad.loopexit.split-lp.i1674 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i1597

bb.azq:                                           ; preds = %_ZNSt6vectorIPKfSaIS1_EE9push_backEOS1_.exit123.i
  %i.ekf = landingpad { ptr, i32 }
          cleanup
  br label %bb.azs

bb.azr:                                           ; preds = %bb.azd
  %i.ekg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %32) #21
  br label %bb.azs

bb.azs:                                           ; preds = %bb.azr, %bb.azq
  %.pn99.i1602 = phi { ptr, i32 } [ %i.ekg, %bb.azr ], [ %i.ekf, %bb.azq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #21
  br label %.body.i1597

bb.azt:                                           ; preds = %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit136.i1614, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i1694
  %.sroa.0200.4.i = phi ptr [ %.sroa.0200.7.i, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i1694 ], [ %.sroa.0200.8.i, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit136.i1614 ] ; 16 uses
  %.pn225.pn.i1615 = phi ptr [ %.pn225.i1681, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i1694 ], [ %.pn.i1600, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit136.i1614 ]
  %.sroa.18.1.i1616 = phi ptr [ %.sroa.18.2.i1682, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i1694 ], [ %.sroa.18.3.i1601, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit136.i1614 ]
  %.162.i1617 = phi i64 [ %i.egx, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i1694 ], [ %.061271.i, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit136.i1614 ] ; 2 uses
  %.sroa.11.1.i1618 = getelementptr inbounds nuw i8, ptr %.pn225.pn.i1615, i64 8 ; 2 uses
  %i.ekh = getelementptr inbounds nuw i8, ptr %.sroa.0197.0270.i, i64 8 ; 2 uses
  %.not223.i = icmp eq ptr %i.ekh, %i.efk
  br i1 %.not223.i, label %._crit_edge.i1619, label %bb.axq

._crit_edge.thread.i1666:                         ; preds = %._crit_edge.i1619, %bb.axl
  %.sroa.0200.0.lcssa330.i = phi ptr [ %.sroa.0200.4.i, %._crit_edge.i1619 ], [ null, %bb.axl ] ; 3 uses
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %4, i8 noundef zeroext 2)
          to label %bb.azu unwind label %bb.azv

bb.azu:                                           ; preds = %._crit_edge.thread.i1666
  invoke void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %4, i1 noundef zeroext true)
          to label %.loopexit.i1654 unwind label %bb.azv

bb.azv:                                           ; preds = %bb.azw, %bb.azu, %._crit_edge.thread.i1666
  %.sroa.0200.0.lcssa329.i = phi ptr [ %.sroa.0200.4.i, %bb.azw ], [ %.sroa.0200.0.lcssa330.i, %bb.azu ], [ %.sroa.0200.0.lcssa330.i, %._crit_edge.thread.i1666 ]
  %i.eki = landingpad { ptr, i32 }
          cleanup
  br label %.body.i1597

bb.azw:                                           ; preds = %._crit_edge.i1619
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %4, i8 noundef zeroext 0)
          to label %bb.azx unwind label %bb.azv

bb.azx:                                           ; preds = %bb.azw
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIiEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %4)
          to label %bb.azy unwind label %bb.baa

bb.azy:                                           ; preds = %bb.azx
  %i.ekj = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ekk = load ptr, ptr %i.ekj, align 8, !tbaa !260 ; 2 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %4)
          to label %bb.azz unwind label %bb.bab

bb.azz:                                           ; preds = %bb.azy
  %i.ekl = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 5 uses
  %.not282.i = icmp eq i64 %3, 0
  br i1 %.not282.i, label %.loopexit.i1654, label %.lr.ph281.i

.lr.ph281.i:                                      ; preds = %bb.azz
  %i.ekm = load ptr, ptr %i.efj, align 8, !tbaa !201 ; 2 uses
  %i.ekn = ptrtoint ptr %i.ekm to i64
  %i.eko = load ptr, ptr %1, align 8, !tbaa !202  ; 2 uses
  %i.ekp = ptrtoint ptr %i.eko to i64
  %i.ekq = sub i64 %i.ekn, %i.ekp
  %i.ekr = ashr exact i64 %i.ekq, 3
  %i.eks = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.ekt = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.eku = getelementptr inbounds nuw i8, ptr %29, i64 16
  %.not283.i1620 = icmp eq ptr %i.ekm, %i.eko     ; 2 uses
  %i.ekv = ptrtoint ptr %.sroa.0200.4.i to i64
  %i.ekw = sub i64 %i.eft, %i.ekv
  %i.ekx = ashr exact i64 %i.ekw, 3               ; 4 uses
  %umax.i1621 = call i64 @llvm.umax.i64(i64 %i.ekr, i64 1) ; 4 uses
  br label %bb.bac

bb.baa:                                           ; preds = %bb.azx
  %i.eky = landingpad { ptr, i32 }
          cleanup
  br label %.body.i1597

bb.bab:                                           ; preds = %bb.azy
  %i.ekz = landingpad { ptr, i32 }
          cleanup
  br label %.body.i1597

bb.bac:                                           ; preds = %._crit_edge277.thread.i, %.lr.ph281.i
  %.060279.i = phi i64 [ 0, %.lr.ph281.i ], [ %i.eps, %._crit_edge277.thread.i ] ; 13 uses
  %i.ela = load ptr, ptr %28, align 8, !tbaa !251
  %i.elb = load ptr, ptr %i.ela, align 8, !tbaa !252 ; 2 uses
  %.not.i.i1622 = icmp eq ptr %i.elb, null
  br i1 %.not.i.i1622, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i1623, label %bb.bad

bb.bad:                                           ; preds = %bb.bac
  %i.elc = getelementptr inbounds nuw [4 x i8], ptr %i.elb, i64 %.060279.i
  %i.eld = load i32, ptr %i.elc, align 4, !tbaa !48
  %i.ele = zext i32 %i.eld to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i1623

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i1623: ; preds = %bb.bad, %bb.bac
  %i.elf = phi i64 [ %i.ele, %bb.bad ], [ %.060279.i, %bb.bac ] ; 2 uses
  %i.elg = load ptr, ptr %i.eks, align 8, !tbaa !242 ; 2 uses
  %.not.i139.i1624 = icmp eq ptr %i.elg, null
  br i1 %.not.i139.i1624, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i1627, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i1625

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i1625: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i1623
  %i.elh = lshr i64 %i.elf, 6
  %i.eli = and i64 %i.elf, 63
  %i.elj = getelementptr inbounds nuw [8 x i8], ptr %i.elg, i64 %i.elh
  %i.elk = load i64, ptr %i.elj, align 8, !tbaa !174
  %i.ell = shl nuw i64 1, %i.eli
  %i.elm = and i64 %i.elk, %i.ell
  %.not224.i1626 = icmp eq i64 %i.elm, 0
  br i1 %.not224.i1626, label %bb.bae, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i1627

bb.bae:                                           ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i1625
  %i.eln = load ptr, ptr %i.ekl, align 8, !tbaa !242 ; 2 uses
  %.not.i140.i1665 = icmp eq ptr %i.eln, null
  br i1 %.not.i140.i1665, label %bb.baf, label %._crit_edge277.thread.sink.split.i

bb.baf:                                           ; preds = %bb.bae
  %i.elo = load i64, ptr %i.ekt, align 8, !tbaa !253
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ekl, i64 noundef %i.elo)
          to label %._crit_edge277.thread.sink.split.sink.split.i unwind label %bb.bag

bb.bag:                                           ; preds = %bb.baf
  %i.elp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i1597

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i1627: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i1625, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i1623
  %i.elq = load ptr, ptr %29, align 8, !tbaa !251
  %i.elr = load ptr, ptr %i.elq, align 8, !tbaa !252 ; 2 uses
  %.not.i142.i1628 = icmp eq ptr %i.elr, null
  br i1 %.not.i142.i1628, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit143.i1629, label %bb.bah

bb.bah:                                           ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i1627
  %i.els = getelementptr inbounds nuw [4 x i8], ptr %i.elr, i64 %.060279.i
  %i.elt = load i32, ptr %i.els, align 4, !tbaa !48
  %i.elu = zext i32 %i.elt to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit143.i1629

_ZNK6duckdb15SelectionVector9get_indexEm.exit143.i1629: ; preds = %bb.bah, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i1627
  %i.elv = phi i64 [ %i.elu, %bb.bah ], [ %.060279.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i1627 ] ; 3 uses
  %i.elw = load ptr, ptr %i.eku, align 8, !tbaa !242 ; 2 uses
  %.not.i144.i1630 = icmp eq ptr %i.elw, null
  br i1 %.not.i144.i1630, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit146.i1631.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit146.i1631

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit146.i1631: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit143.i1629
  br i1 %.not283.i1620, label %.critedge.i1652, label %.lr.ph276.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit146.i1631.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit143.i1629
  br i1 %.not283.i1620, label %.critedge.i1652, label %.lr.ph276.i.thread

.lr.ph276.i.thread:                               ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit146.i1631.thread
  %i.elx = getelementptr inbounds nuw [4 x i8], ptr %i.ekk, i64 %.060279.i
  br label %.outer.i1633.us.preheader

.lr.ph276.i:                                      ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit146.i1631
  %i.ely = lshr i64 %i.elv, 6
  %i.elz = getelementptr inbounds nuw [8 x i8], ptr %i.elw, i64 %i.ely
  %i.ema = load i64, ptr %i.elz, align 8, !tbaa !174
  %i.emb = and i64 %i.elv, 63
  %i.emc = shl nuw i64 1, %i.emb
  %i.emd = and i64 %i.ema, %i.emc
  %.fr2342 = freeze i64 %i.emd
  %.not3315 = icmp eq i64 %.fr2342, 0
  %i.eme = getelementptr inbounds nuw [4 x i8], ptr %i.ekk, i64 %.060279.i ; 2 uses
  br i1 %.not3315, label %.outer.i1633, label %.outer.i1633.us.preheader

.outer.i1633.us.preheader:                        ; preds = %.lr.ph276.i.thread, %.lr.ph276.i
  %i.emf = phi ptr [ %i.elx, %.lr.ph276.i.thread ], [ %i.eme, %.lr.ph276.i ]
  %i.emg = getelementptr inbounds nuw [4 x i8], ptr %i.efh, i64 %i.elv
  br label %.outer.i1633.us

.outer.i1633.us:                                  ; preds = %.outer.i1633.us.preheader, %.thread.i1658.split.us2290
  %.0275.ph.i.us = phi i64 [ %i.enk, %.thread.i1658.split.us2290 ], [ 0, %.outer.i1633.us.preheader ]
  %.059274.ph.i.us = phi i1 [ true, %.thread.i1658.split.us2290 ], [ false, %.outer.i1633.us.preheader ]
  br label %bb.bai

bb.bai:                                           ; preds = %.critedge2338, %.outer.i1633.us
  %.0275.i.us2280 = phi i64 [ %i.enh, %.critedge2338 ], [ %.0275.ph.i.us, %.outer.i1633.us ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i64 %.0275.i.us2280, ptr %i.q, align 8, !tbaa !174
  store i64 %i.ekx, ptr %i.r, align 8, !tbaa !174
  %exitcond.not.i1634.us2281 = icmp eq i64 %.0275.i.us2280, %i.ekx
  br i1 %exitcond.not.i1634.us2281, label %.noexc.i.i1659, label %bb.baj, !prof !158

bb.baj:                                           ; preds = %bb.bai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.emh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0200.4.i, i64 %.0275.i.us2280 ; 2 uses
  %i.emi = load ptr, ptr %i.emh, align 8, !tbaa !330
  %.not.i1635.us2282 = icmp eq ptr %i.emi, null
  br i1 %.not.i1635.us2282, label %.critedge2338, label %bb.bak

bb.bak:                                           ; preds = %bb.baj
  %i.emj = load ptr, ptr %i.efl, align 8, !tbaa !316
  %i.emk = load ptr, ptr %30, align 8, !tbaa !318 ; 2 uses
  %i.eml = ptrtoint ptr %i.emj to i64
  %i.emm = ptrtoint ptr %i.emk to i64
  %i.emn = sub i64 %i.eml, %i.emm
  %i.emo = sdiv exact i64 %i.emn, 80              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i64 %.0275.i.us2280, ptr %i.o, align 8, !tbaa !174
  store i64 %i.emo, ptr %i.p, align 8, !tbaa !174
  %.not.i.i.i147.i1636.us2283 = icmp ult i64 %.0275.i.us2280, %i.emo
  br i1 %.not.i.i.i147.i1636.us2283, label %bb.bal, label %.noexc.i191.i, !prof !203

bb.bal:                                           ; preds = %bb.bak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.emp = getelementptr inbounds nuw [80 x i8], ptr %i.emk, i64 %.0275.i.us2280 ; 2 uses
  %i.emq = load ptr, ptr %i.emp, align 8, !tbaa !251
  %i.emr = load ptr, ptr %i.emq, align 8, !tbaa !252 ; 2 uses
  %.not.i156.i1644.us2284 = icmp eq ptr %i.emr, null
  br i1 %.not.i156.i1644.us2284, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit157.i1645.us2285, label %bb.bam

bb.bam:                                           ; preds = %bb.bal
  %i.ems = getelementptr inbounds nuw [4 x i8], ptr %i.emr, i64 %.060279.i
  %i.emt = load i32, ptr %i.ems, align 4, !tbaa !48
  %i.emu = zext i32 %i.emt to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit157.i1645.us2285

_ZNK6duckdb15SelectionVector9get_indexEm.exit157.i1645.us2285: ; preds = %bb.bam, %bb.bal
  %i.emv = phi i64 [ %i.emu, %bb.bam ], [ %.060279.i, %bb.bal ] ; 3 uses
  %i.emw = getelementptr inbounds nuw i8, ptr %i.emp, i64 16
  %i.emx = load ptr, ptr %i.emw, align 8, !tbaa !242 ; 2 uses
  %.not.i158.i1646.us2286 = icmp eq ptr %i.emx, null
  br i1 %.not.i158.i1646.us2286, label %.critedge2336, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit160.i1647.us2287

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit160.i1647.us2287: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit157.i1645.us2285
  %i.emy = lshr i64 %i.emv, 6
  %i.emz = and i64 %i.emv, 63
  %i.ena = getelementptr inbounds nuw [8 x i8], ptr %i.emx, i64 %i.emy
  %i.enb = load i64, ptr %i.ena, align 8, !tbaa !174
  %i.enc = shl nuw i64 1, %i.emz
  %i.end = and i64 %i.enb, %i.enc
  %.not2343 = icmp eq i64 %i.end, 0
  br i1 %.not2343, label %.critedge2338, label %.critedge2336

.critedge2336:                                    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit157.i1645.us2285, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit160.i1647.us2287
  %i.ene = load ptr, ptr %i.emh, align 8, !tbaa !330
  %i.enf = getelementptr inbounds nuw [4 x i8], ptr %i.ene, i64 %i.emv
  %i.eng = invoke noundef zeroext i1 @_ZN6duckdb6Equals9OperationIfEEbRKT_S4_(ptr noundef nonnull align 4 dereferenceable(4) %i.enf, ptr noundef nonnull align 4 dereferenceable(4) %i.emg)
          to label %bb.ban unwind label %.split.us2293

bb.ban:                                           ; preds = %.critedge2336
  br i1 %i.eng, label %.thread.i1658.split.us2290, label %.critedge2338

.critedge2338:                                    ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit160.i1647.us2287, %bb.ban, %bb.baj
  %i.enh = add nuw i64 %.0275.i.us2280, 1         ; 2 uses
  %exitcond295.not.i.us2289 = icmp eq i64 %i.enh, %umax.i1621
  br i1 %exitcond295.not.i.us2289, label %._crit_edge277.i, label %bb.bai, !llvm.loop !874

.thread.i1658.split.us2290:                       ; preds = %bb.ban
  %i.eni = trunc i64 %.0275.i.us2280 to i32
  %i.enj = add i32 %i.eni, 1
  store i32 %i.enj, ptr %i.emf, align 4, !tbaa !48
  %i.enk = add nuw i64 %.0275.i.us2280, 1         ; 2 uses
  %exitcond295.not333.i.us = icmp eq i64 %i.enk, %umax.i1621
  br i1 %exitcond295.not333.i.us, label %._crit_edge277.thread.i, label %.outer.i1633.us, !llvm.loop !874

.split.us2293:                                    ; preds = %.critedge2336
  %i.enl = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i1639

.outer.i1633:                                     ; preds = %.lr.ph276.i, %.thread.i1658.split.us
  %.0275.ph.i = phi i64 [ %i.eon, %.thread.i1658.split.us ], [ 0, %.lr.ph276.i ]
  %.059274.ph.i = phi i1 [ true, %.thread.i1658.split.us ], [ false, %.lr.ph276.i ]
  %i.enm = load ptr, ptr %i.efl, align 8
  %i.enn = load ptr, ptr %30, align 8             ; 2 uses
  %i.eno = ptrtoint ptr %i.enm to i64
  %i.enp = ptrtoint ptr %i.enn to i64
  %i.enq = sub i64 %i.eno, %i.enp
  %i.enr = sdiv exact i64 %i.enq, 80              ; 2 uses
  br label %bb.bao

bb.bao:                                           ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit160.i1647.us.thread, %.outer.i1633
  %.0275.i.us = phi i64 [ %i.eok, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit160.i1647.us.thread ], [ %.0275.ph.i, %.outer.i1633 ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i64 %.0275.i.us, ptr %i.q, align 8, !tbaa !174
  store i64 %i.ekx, ptr %i.r, align 8, !tbaa !174
  %exitcond.not.i1634.us = icmp eq i64 %.0275.i.us, %i.ekx
  br i1 %exitcond.not.i1634.us, label %.noexc.i.i1659, label %bb.bap, !prof !158

bb.bap:                                           ; preds = %bb.bao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.ens = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0200.4.i, i64 %.0275.i.us
  %i.ent = load ptr, ptr %i.ens, align 8, !tbaa !330
  %.not.i1635.us = icmp eq ptr %i.ent, null
  br i1 %.not.i1635.us, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit160.i1647.us.thread, label %bb.baq

bb.baq:                                           ; preds = %bb.bap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i64 %.0275.i.us, ptr %i.o, align 8, !tbaa !174
  store i64 %i.enr, ptr %i.p, align 8, !tbaa !174
  %.not.i.i.i147.i1636.us = icmp ult i64 %.0275.i.us, %i.enr
  br i1 %.not.i.i.i147.i1636.us, label %bb.bar, label %.noexc.i191.i, !prof !203

bb.bar:                                           ; preds = %bb.baq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.enu = getelementptr inbounds nuw [80 x i8], ptr %i.enn, i64 %.0275.i.us ; 2 uses
  %i.env = load ptr, ptr %i.enu, align 8, !tbaa !251
  %i.enw = load ptr, ptr %i.env, align 8, !tbaa !252 ; 2 uses
  %.not.i156.i1644.us = icmp eq ptr %i.enw, null
  br i1 %.not.i156.i1644.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit157.i1645.us, label %bb.bas

bb.bas:                                           ; preds = %bb.bar
  %i.enx = getelementptr inbounds nuw [4 x i8], ptr %i.enw, i64 %.060279.i
  %i.eny = load i32, ptr %i.enx, align 4, !tbaa !48
  %i.enz = zext i32 %i.eny to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit157.i1645.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit157.i1645.us: ; preds = %bb.bas, %bb.bar
  %i.eoa = phi i64 [ %i.enz, %bb.bas ], [ %.060279.i, %bb.bar ] ; 2 uses
  %i.eob = getelementptr inbounds nuw i8, ptr %i.enu, i64 16
  %i.eoc = load ptr, ptr %i.eob, align 8, !tbaa !242 ; 2 uses
  %.not.i158.i1646.us = icmp eq ptr %i.eoc, null
  br i1 %.not.i158.i1646.us, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit160.i1647.us.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit160.i1647.us

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit160.i1647.us: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit157.i1645.us
  %i.eod = lshr i64 %i.eoa, 6
  %i.eoe = and i64 %i.eoa, 63
  %i.eof = getelementptr inbounds nuw [8 x i8], ptr %i.eoc, i64 %i.eod
  %i.eog = load i64, ptr %i.eof, align 8, !tbaa !174
  %i.eoh = shl nuw i64 1, %i.eoe
  %i.eoi = and i64 %i.eog, %i.eoh
  %i.eoj = icmp eq i64 %i.eoi, 0
  br i1 %i.eoj, label %.thread.i1658.split.us, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit160.i1647.us.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit160.i1647.us.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit157.i1645.us, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit160.i1647.us, %bb.bap
  %i.eok = add nuw i64 %.0275.i.us, 1             ; 2 uses
  %exitcond295.not.i.us = icmp eq i64 %i.eok, %umax.i1621
  br i1 %exitcond295.not.i.us, label %._crit_edge277.i, label %bb.bao, !llvm.loop !874

.thread.i1658.split.us:                           ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit160.i1647.us
  %i.eol = trunc i64 %.0275.i.us to i32
  %i.eom = add i32 %i.eol, 1
  store i32 %i.eom, ptr %i.eme, align 4, !tbaa !48
  %i.eon = add nuw i64 %.0275.i.us, 1             ; 2 uses
  %exitcond295.not333.i = icmp eq i64 %i.eon, %umax.i1621
  br i1 %exitcond295.not333.i, label %._crit_edge277.thread.i, label %.outer.i1633, !llvm.loop !874

._crit_edge277.i:                                 ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit160.i1647.us.thread, %.critedge2338
  %.us-phi2279 = phi i1 [ %.059274.ph.i.us, %.critedge2338 ], [ %.059274.ph.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit160.i1647.us.thread ]
  br i1 %.us-phi2279, label %._crit_edge277.thread.i, label %.critedge.i1652

.noexc.i.i1659:                                   ; preds = %bb.bao, %bb.bai
  %i.eoo = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #21
  %i.eop = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 3 uses
  store ptr %i.eop, ptr %27, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #21
  store i64 55, ptr %i.n, align 8, !tbaa !174
  %i.eoq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(8) %i.n, i64 noundef 0)
          to label %.noexc189.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i1660 ; 3 uses

.noexc189.i:                                      ; preds = %.noexc.i.i1659
  store ptr %i.eoq, ptr %27, align 8, !tbaa !68
  %i.eor = load i64, ptr %i.n, align 8, !tbaa !174 ; 3 uses
  store i64 %i.eor, ptr %i.eop, align 8, !tbaa !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.eoq, ptr noundef nonnull align 1 dereferenceable(55) @.str.8, i64 55, i1 false)
  %i.eos = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i64 %i.eor, ptr %i.eos, align 8, !tbaa !55
  %i.eot = getelementptr inbounds nuw i8, ptr %i.eoq, i64 %i.eor
  store i8 0, ptr %i.eot, align 1, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #21
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.eoo, ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.r)
          to label %bb.bat unwind label %bb.bau

bb.bat:                                           ; preds = %.noexc189.i
  invoke void @__cxa_throw(ptr nonnull %i.eoo, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.baw unwind label %bb.bau
end_hunk_2
begin_hunk_3_@_ZN6duckdbL14StructSearchOpIiLb1EEEvRNS_6VectorERNS_6vectorINS_10unique_ptrIS1_St14default_deleteIS1_ELb1EEELb1ESaIS7_EEES2_mS2_:bb.a

bb.bep:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i134.i1732
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ewy) #21
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit136.i1734

_ZN6duckdb19UnifiedVectorFormatD2Ev.exit136.i1734: ; preds = %bb.bep, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i3.i134.i1732, %bb.bel, %_ZN6duckdb15SelectionVectorD2Ev.exit.i131.i1729
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #21
  br label %bb.bet

.loopexit226.i1833:                               ; preds = %_ZNKSt6vectorIPKdSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i115.i
  %lpad.loopexit.i1834 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i1712

.loopexit.split-lp.i1837:                         ; preds = %bb.bdy
  %lpad.loopexit.split-lp.i1838 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i1712

bb.beq:                                           ; preds = %_ZNSt6vectorIPKdSaIS1_EE9push_backEOS1_.exit123.i
  %i.exo = landingpad { ptr, i32 }
          cleanup
  br label %bb.bes

bb.ber:                                           ; preds = %bb.bed
  %i.exp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb19UnifiedVectorFormatD2Ev(ptr noundef nonnull align 8 dead_on_return(73) dereferenceable(73) %25) #21
  br label %bb.bes

bb.bes:                                           ; preds = %bb.ber, %bb.beq
  %.pn99.i1722 = phi { ptr, i32 } [ %i.exp, %bb.ber ], [ %i.exo, %bb.beq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #21
  br label %.body.i1712

bb.bet:                                           ; preds = %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit136.i1734, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i1862
  %.sroa.0200.4.i1735 = phi ptr [ %.sroa.0200.7.i1848, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i1862 ], [ %.sroa.0200.8.i1719, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit136.i1734 ] ; 16 uses
  %.pn225.pn.i1736 = phi ptr [ %.pn225.i1849, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i1862 ], [ %.pn.i1720, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit136.i1734 ]
  %.sroa.18.1.i1737 = phi ptr [ %.sroa.18.2.i1850, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i1862 ], [ %.sroa.18.3.i1721, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit136.i1734 ]
  %.162.i1738 = phi i64 [ %i.eug, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit.i1862 ], [ %.061271.i1707, %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit136.i1734 ] ; 2 uses
  %.sroa.11.1.i1739 = getelementptr inbounds nuw i8, ptr %.pn225.pn.i1736, i64 8 ; 2 uses
  %i.exq = getelementptr inbounds nuw i8, ptr %.sroa.0197.0270.i1708, i64 8 ; 2 uses
  %.not223.i1740 = icmp eq ptr %i.exq, %i.est
  br i1 %.not223.i1740, label %._crit_edge.i1741, label %bb.bcq

._crit_edge.thread.i1829:                         ; preds = %._crit_edge.i1741, %bb.bcl
  %.sroa.0200.0.lcssa330.i1830 = phi ptr [ %.sroa.0200.4.i1735, %._crit_edge.i1741 ], [ null, %bb.bcl ] ; 3 uses
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %4, i8 noundef zeroext 2)
          to label %bb.beu unwind label %bb.bev

bb.beu:                                           ; preds = %._crit_edge.thread.i1829
  invoke void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %4, i1 noundef zeroext true)
          to label %.loopexit.i1792 unwind label %bb.bev

bb.bev:                                           ; preds = %bb.bew, %bb.beu, %._crit_edge.thread.i1829
  %.sroa.0200.0.lcssa329.i1742 = phi ptr [ %.sroa.0200.4.i1735, %bb.bew ], [ %.sroa.0200.0.lcssa330.i1830, %bb.beu ], [ %.sroa.0200.0.lcssa330.i1830, %._crit_edge.thread.i1829 ]
  %i.exr = landingpad { ptr, i32 }
          cleanup
  br label %.body.i1712

bb.bew:                                           ; preds = %._crit_edge.i1741
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %4, i8 noundef zeroext 0)
          to label %bb.bex unwind label %bb.bev

bb.bex:                                           ; preds = %bb.bew
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIiEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %4)
          to label %bb.bey unwind label %bb.bfa

bb.bey:                                           ; preds = %bb.bex
  %i.exs = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ext = load ptr, ptr %i.exs, align 8, !tbaa !260 ; 2 uses
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %4)
          to label %bb.bez unwind label %bb.bfb

bb.bez:                                           ; preds = %bb.bey
  %i.exu = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 5 uses
  %.not282.i1743 = icmp eq i64 %3, 0
  br i1 %.not282.i1743, label %.loopexit.i1792, label %.lr.ph281.i1744

.lr.ph281.i1744:                                  ; preds = %bb.bez
  %i.exv = load ptr, ptr %i.ess, align 8, !tbaa !201 ; 2 uses
  %i.exw = ptrtoint ptr %i.exv to i64
  %i.exx = load ptr, ptr %1, align 8, !tbaa !202  ; 2 uses
  %i.exy = ptrtoint ptr %i.exx to i64
  %i.exz = sub i64 %i.exw, %i.exy
  %i.eya = ashr exact i64 %i.exz, 3
  %i.eyb = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.eyc = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.eyd = getelementptr inbounds nuw i8, ptr %22, i64 16
  %.not283.i1745 = icmp eq ptr %i.exv, %i.exx     ; 2 uses
  %i.eye = ptrtoint ptr %.sroa.0200.4.i1735 to i64
  %i.eyf = sub i64 %i.etc, %i.eye
  %i.eyg = ashr exact i64 %i.eyf, 3               ; 4 uses
  %umax.i1746 = call i64 @llvm.umax.i64(i64 %i.eya, i64 1) ; 4 uses
  br label %bb.bfc

bb.bfa:                                           ; preds = %bb.bex
  %i.eyh = landingpad { ptr, i32 }
          cleanup
  br label %.body.i1712

bb.bfb:                                           ; preds = %bb.bey
  %i.eyi = landingpad { ptr, i32 }
          cleanup
  br label %.body.i1712

bb.bfc:                                           ; preds = %._crit_edge277.thread.i1790, %.lr.ph281.i1744
  %.060279.i1747 = phi i64 [ 0, %.lr.ph281.i1744 ], [ %i.fdb, %._crit_edge277.thread.i1790 ] ; 13 uses
  %i.eyj = load ptr, ptr %21, align 8, !tbaa !251
  %i.eyk = load ptr, ptr %i.eyj, align 8, !tbaa !252 ; 2 uses
  %.not.i.i1748 = icmp eq ptr %i.eyk, null
  br i1 %.not.i.i1748, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i1749, label %bb.bfd

bb.bfd:                                           ; preds = %bb.bfc
  %i.eyl = getelementptr inbounds nuw [4 x i8], ptr %i.eyk, i64 %.060279.i1747
  %i.eym = load i32, ptr %i.eyl, align 4, !tbaa !48
  %i.eyn = zext i32 %i.eym to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i1749

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i1749: ; preds = %bb.bfd, %bb.bfc
  %i.eyo = phi i64 [ %i.eyn, %bb.bfd ], [ %.060279.i1747, %bb.bfc ] ; 2 uses
  %i.eyp = load ptr, ptr %i.eyb, align 8, !tbaa !242 ; 2 uses
  %.not.i139.i1750 = icmp eq ptr %i.eyp, null
  br i1 %.not.i139.i1750, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i1753, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i1751

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i1751: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i1749
  %i.eyq = lshr i64 %i.eyo, 6
  %i.eyr = and i64 %i.eyo, 63
  %i.eys = getelementptr inbounds nuw [8 x i8], ptr %i.eyp, i64 %i.eyq
  %i.eyt = load i64, ptr %i.eys, align 8, !tbaa !174
  %i.eyu = shl nuw i64 1, %i.eyr
  %i.eyv = and i64 %i.eyt, %i.eyu
  %.not224.i1752 = icmp eq i64 %i.eyv, 0
  br i1 %.not224.i1752, label %bb.bfe, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i1753

bb.bfe:                                           ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i1751
  %i.eyw = load ptr, ptr %i.exu, align 8, !tbaa !242 ; 2 uses
  %.not.i140.i1828 = icmp eq ptr %i.eyw, null
  br i1 %.not.i140.i1828, label %bb.bff, label %._crit_edge277.thread.sink.split.i1788

bb.bff:                                           ; preds = %bb.bfe
  %i.eyx = load i64, ptr %i.eyc, align 8, !tbaa !253
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.exu, i64 noundef %i.eyx)
          to label %._crit_edge277.thread.sink.split.sink.split.i1817 unwind label %bb.bfg

bb.bfg:                                           ; preds = %bb.bff
  %i.eyy = landingpad { ptr, i32 }
          cleanup
  br label %.body.i1712

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i1753: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i1751, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i1749
  %i.eyz = load ptr, ptr %22, align 8, !tbaa !251
  %i.eza = load ptr, ptr %i.eyz, align 8, !tbaa !252 ; 2 uses
  %.not.i142.i1754 = icmp eq ptr %i.eza, null
  br i1 %.not.i142.i1754, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit143.i1755, label %bb.bfh

bb.bfh:                                           ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i1753
  %i.ezb = getelementptr inbounds nuw [4 x i8], ptr %i.eza, i64 %.060279.i1747
  %i.ezc = load i32, ptr %i.ezb, align 4, !tbaa !48
  %i.ezd = zext i32 %i.ezc to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit143.i1755

_ZNK6duckdb15SelectionVector9get_indexEm.exit143.i1755: ; preds = %bb.bfh, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i1753
  %i.eze = phi i64 [ %i.ezd, %bb.bfh ], [ %.060279.i1747, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i1753 ] ; 3 uses
  %i.ezf = load ptr, ptr %i.eyd, align 8, !tbaa !242 ; 2 uses
  %.not.i144.i1756 = icmp eq ptr %i.ezf, null
  br i1 %.not.i144.i1756, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit146.i1757.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit146.i1757

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit146.i1757: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit143.i1755
  br i1 %.not283.i1745, label %.critedge.i1786, label %.lr.ph276.i1759

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit146.i1757.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit143.i1755
  br i1 %.not283.i1745, label %.critedge.i1786, label %.lr.ph276.i1759.thread

.lr.ph276.i1759.thread:                           ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit146.i1757.thread
  %i.ezg = getelementptr inbounds nuw [4 x i8], ptr %i.ext, i64 %.060279.i1747
  br label %.outer.i1760.us.preheader

.lr.ph276.i1759:                                  ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit146.i1757
  %i.ezh = lshr i64 %i.eze, 6
  %i.ezi = getelementptr inbounds nuw [8 x i8], ptr %i.ezf, i64 %i.ezh
  %i.ezj = load i64, ptr %i.ezi, align 8, !tbaa !174
  %i.ezk = and i64 %i.eze, 63
  %i.ezl = shl nuw i64 1, %i.ezk
  %i.ezm = and i64 %i.ezj, %i.ezl
  %.fr = freeze i64 %i.ezm
  %.not3314 = icmp eq i64 %.fr, 0
  %i.ezn = getelementptr inbounds nuw [4 x i8], ptr %i.ext, i64 %.060279.i1747 ; 2 uses
  br i1 %.not3314, label %.outer.i1760, label %.outer.i1760.us.preheader

.outer.i1760.us.preheader:                        ; preds = %.lr.ph276.i1759.thread, %.lr.ph276.i1759
  %i.ezo = phi ptr [ %i.ezg, %.lr.ph276.i1759.thread ], [ %i.ezn, %.lr.ph276.i1759 ]
  %i.ezp = getelementptr inbounds nuw [8 x i8], ptr %i.esq, i64 %i.eze
  br label %.outer.i1760.us

.outer.i1760.us:                                  ; preds = %.outer.i1760.us.preheader, %.thread.i1819.split.us2273
  %.0275.ph.i1761.us = phi i64 [ %i.fat, %.thread.i1819.split.us2273 ], [ 0, %.outer.i1760.us.preheader ]
  %.059274.ph.i1762.us = phi i1 [ true, %.thread.i1819.split.us2273 ], [ false, %.outer.i1760.us.preheader ]
  br label %bb.bfi

bb.bfi:                                           ; preds = %.critedge2341, %.outer.i1760.us
  %.0275.i1763.us2263 = phi i64 [ %i.faq, %.critedge2341 ], [ %.0275.ph.i1761.us, %.outer.i1760.us ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i64 %.0275.i1763.us2263, ptr %i.k, align 8, !tbaa !174
  store i64 %i.eyg, ptr %i.l, align 8, !tbaa !174
  %exitcond.not.i1764.us2264 = icmp eq i64 %.0275.i1763.us2263, %i.eyg
  br i1 %exitcond.not.i1764.us2264, label %.noexc.i.i1821, label %bb.bfj, !prof !158

bb.bfj:                                           ; preds = %bb.bfi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.ezq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0200.4.i1735, i64 %.0275.i1763.us2263 ; 2 uses
  %i.ezr = load ptr, ptr %i.ezq, align 8, !tbaa !332
  %.not.i1765.us2265 = icmp eq ptr %i.ezr, null
  br i1 %.not.i1765.us2265, label %.critedge2341, label %bb.bfk

bb.bfk:                                           ; preds = %bb.bfj
  %i.ezs = load ptr, ptr %i.esu, align 8, !tbaa !316
  %i.ezt = load ptr, ptr %23, align 8, !tbaa !318 ; 2 uses
  %i.ezu = ptrtoint ptr %i.ezs to i64
  %i.ezv = ptrtoint ptr %i.ezt to i64
  %i.ezw = sub i64 %i.ezu, %i.ezv
  %i.ezx = sdiv exact i64 %i.ezw, 80              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 %.0275.i1763.us2263, ptr %i.i, align 8, !tbaa !174
  store i64 %i.ezx, ptr %i.j, align 8, !tbaa !174
  %.not.i.i.i147.i1766.us2266 = icmp ult i64 %.0275.i1763.us2263, %i.ezx
  br i1 %.not.i.i.i147.i1766.us2266, label %bb.bfl, label %.noexc.i191.i1767, !prof !203

bb.bfl:                                           ; preds = %bb.bfk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.ezy = getelementptr inbounds nuw [80 x i8], ptr %i.ezt, i64 %.0275.i1763.us2263 ; 2 uses
  %i.ezz = load ptr, ptr %i.ezy, align 8, !tbaa !251
  %i.faa = load ptr, ptr %i.ezz, align 8, !tbaa !252 ; 2 uses
  %.not.i156.i1776.us2267 = icmp eq ptr %i.faa, null
  br i1 %.not.i156.i1776.us2267, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit157.i1777.us2268, label %bb.bfm

bb.bfm:                                           ; preds = %bb.bfl
  %i.fab = getelementptr inbounds nuw [4 x i8], ptr %i.faa, i64 %.060279.i1747
  %i.fac = load i32, ptr %i.fab, align 4, !tbaa !48
  %i.fad = zext i32 %i.fac to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit157.i1777.us2268

_ZNK6duckdb15SelectionVector9get_indexEm.exit157.i1777.us2268: ; preds = %bb.bfm, %bb.bfl
  %i.fae = phi i64 [ %i.fad, %bb.bfm ], [ %.060279.i1747, %bb.bfl ] ; 3 uses
  %i.faf = getelementptr inbounds nuw i8, ptr %i.ezy, i64 16
  %i.fag = load ptr, ptr %i.faf, align 8, !tbaa !242 ; 2 uses
  %.not.i158.i1778.us2269 = icmp eq ptr %i.fag, null
  br i1 %.not.i158.i1778.us2269, label %.critedge2339, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit160.i1779.us2270

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit160.i1779.us2270: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit157.i1777.us2268
  %i.fah = lshr i64 %i.fae, 6
  %i.fai = and i64 %i.fae, 63
  %i.faj = getelementptr inbounds nuw [8 x i8], ptr %i.fag, i64 %i.fah
  %i.fak = load i64, ptr %i.faj, align 8, !tbaa !174
  %i.fal = shl nuw i64 1, %i.fai
  %i.fam = and i64 %i.fak, %i.fal
  %.not = icmp eq i64 %i.fam, 0
  br i1 %.not, label %.critedge2341, label %.critedge2339

.critedge2339:                                    ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit157.i1777.us2268, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit160.i1779.us2270
  %i.fan = load ptr, ptr %i.ezq, align 8, !tbaa !332
  %i.fao = getelementptr inbounds nuw [8 x i8], ptr %i.fan, i64 %i.fae
  %i.fap = invoke noundef zeroext i1 @_ZN6duckdb6Equals9OperationIdEEbRKT_S4_(ptr noundef nonnull align 8 dereferenceable(8) %i.fao, ptr noundef nonnull align 8 dereferenceable(8) %i.ezp)
          to label %bb.bfn unwind label %.split.us

bb.bfn:                                           ; preds = %.critedge2339
  br i1 %i.fap, label %.thread.i1819.split.us2273, label %.critedge2341

.critedge2341:                                    ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit160.i1779.us2270, %bb.bfn, %bb.bfj
  %i.faq = add nuw i64 %.0275.i1763.us2263, 1     ; 2 uses
  %exitcond295.not.i1784.us2272 = icmp eq i64 %i.faq, %umax.i1746
  br i1 %exitcond295.not.i1784.us2272, label %._crit_edge277.i1785, label %bb.bfi, !llvm.loop !878

.thread.i1819.split.us2273:                       ; preds = %bb.bfn
  %i.far = trunc i64 %.0275.i1763.us2263 to i32
  %i.fas = add i32 %i.far, 1
  store i32 %i.fas, ptr %i.ezo, align 4, !tbaa !48
  %i.fat = add nuw i64 %.0275.i1763.us2263, 1     ; 2 uses
  %exitcond295.not333.i1820.us = icmp eq i64 %i.fat, %umax.i1746
  br i1 %exitcond295.not333.i1820.us, label %._crit_edge277.thread.i1790, label %.outer.i1760.us, !llvm.loop !878

.split.us:                                        ; preds = %.critedge2339
  %i.fau = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i1770

.outer.i1760:                                     ; preds = %.lr.ph276.i1759, %.thread.i1819.split.us
  %.0275.ph.i1761 = phi i64 [ %i.fbw, %.thread.i1819.split.us ], [ 0, %.lr.ph276.i1759 ]
  %.059274.ph.i1762 = phi i1 [ true, %.thread.i1819.split.us ], [ false, %.lr.ph276.i1759 ]
  %i.fav = load ptr, ptr %i.esu, align 8
  %i.faw = load ptr, ptr %23, align 8             ; 2 uses
  %i.fax = ptrtoint ptr %i.fav to i64
  %i.fay = ptrtoint ptr %i.faw to i64
  %i.faz = sub i64 %i.fax, %i.fay
  %i.fba = sdiv exact i64 %i.faz, 80              ; 2 uses
  br label %bb.bfo

bb.bfo:                                           ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit160.i1779.us.thread, %.outer.i1760
  %.0275.i1763.us = phi i64 [ %i.fbt, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit160.i1779.us.thread ], [ %.0275.ph.i1761, %.outer.i1760 ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i64 %.0275.i1763.us, ptr %i.k, align 8, !tbaa !174
  store i64 %i.eyg, ptr %i.l, align 8, !tbaa !174
  %exitcond.not.i1764.us = icmp eq i64 %.0275.i1763.us, %i.eyg
  br i1 %exitcond.not.i1764.us, label %.noexc.i.i1821, label %bb.bfp, !prof !158

bb.bfp:                                           ; preds = %bb.bfo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.fbb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0200.4.i1735, i64 %.0275.i1763.us
  %i.fbc = load ptr, ptr %i.fbb, align 8, !tbaa !332
  %.not.i1765.us = icmp eq ptr %i.fbc, null
  br i1 %.not.i1765.us, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit160.i1779.us.thread, label %bb.bfq

bb.bfq:                                           ; preds = %bb.bfp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 %.0275.i1763.us, ptr %i.i, align 8, !tbaa !174
  store i64 %i.fba, ptr %i.j, align 8, !tbaa !174
  %.not.i.i.i147.i1766.us = icmp ult i64 %.0275.i1763.us, %i.fba
  br i1 %.not.i.i.i147.i1766.us, label %bb.bfr, label %.noexc.i191.i1767, !prof !203

bb.bfr:                                           ; preds = %bb.bfq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.fbd = getelementptr inbounds nuw [80 x i8], ptr %i.faw, i64 %.0275.i1763.us ; 2 uses
  %i.fbe = load ptr, ptr %i.fbd, align 8, !tbaa !251
  %i.fbf = load ptr, ptr %i.fbe, align 8, !tbaa !252 ; 2 uses
  %.not.i156.i1776.us = icmp eq ptr %i.fbf, null
  br i1 %.not.i156.i1776.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit157.i1777.us, label %bb.bfs

bb.bfs:                                           ; preds = %bb.bfr
  %i.fbg = getelementptr inbounds nuw [4 x i8], ptr %i.fbf, i64 %.060279.i1747
  %i.fbh = load i32, ptr %i.fbg, align 4, !tbaa !48
  %i.fbi = zext i32 %i.fbh to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit157.i1777.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit157.i1777.us: ; preds = %bb.bfs, %bb.bfr
  %i.fbj = phi i64 [ %i.fbi, %bb.bfs ], [ %.060279.i1747, %bb.bfr ] ; 2 uses
  %i.fbk = getelementptr inbounds nuw i8, ptr %i.fbd, i64 16
  %i.fbl = load ptr, ptr %i.fbk, align 8, !tbaa !242 ; 2 uses
  %.not.i158.i1778.us = icmp eq ptr %i.fbl, null
  br i1 %.not.i158.i1778.us, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit160.i1779.us.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit160.i1779.us

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit160.i1779.us: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit157.i1777.us
  %i.fbm = lshr i64 %i.fbj, 6
  %i.fbn = and i64 %i.fbj, 63
  %i.fbo = getelementptr inbounds nuw [8 x i8], ptr %i.fbl, i64 %i.fbm
  %i.fbp = load i64, ptr %i.fbo, align 8, !tbaa !174
  %i.fbq = shl nuw i64 1, %i.fbn
  %i.fbr = and i64 %i.fbp, %i.fbq
  %i.fbs = icmp eq i64 %i.fbr, 0
  br i1 %i.fbs, label %.thread.i1819.split.us, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit160.i1779.us.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit160.i1779.us.thread: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit157.i1777.us, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit160.i1779.us, %bb.bfp
  %i.fbt = add nuw i64 %.0275.i1763.us, 1         ; 2 uses
  %exitcond295.not.i1784.us = icmp eq i64 %i.fbt, %umax.i1746
  br i1 %exitcond295.not.i1784.us, label %._crit_edge277.i1785, label %bb.bfo, !llvm.loop !878

.thread.i1819.split.us:                           ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit160.i1779.us
  %i.fbu = trunc i64 %.0275.i1763.us to i32
  %i.fbv = add i32 %i.fbu, 1
  store i32 %i.fbv, ptr %i.ezn, align 4, !tbaa !48
  %i.fbw = add nuw i64 %.0275.i1763.us, 1         ; 2 uses
  %exitcond295.not333.i1820 = icmp eq i64 %i.fbw, %umax.i1746
  br i1 %exitcond295.not333.i1820, label %._crit_edge277.thread.i1790, label %.outer.i1760, !llvm.loop !878

._crit_edge277.i1785:                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit160.i1779.us.thread, %.critedge2341
  %.us-phi2262 = phi i1 [ %.059274.ph.i1762.us, %.critedge2341 ], [ %.059274.ph.i1762, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit160.i1779.us.thread ]
  br i1 %.us-phi2262, label %._crit_edge277.thread.i1790, label %.critedge.i1786

.noexc.i.i1821:                                   ; preds = %bb.bfo, %bb.bfi
  %i.fbx = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #21
  %i.fby = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 3 uses
  store ptr %i.fby, ptr %20, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #21
  store i64 55, ptr %i.h, align 8, !tbaa !174
  %i.fbz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef 0)
          to label %.noexc189.i1824 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i.i1822 ; 3 uses

.noexc189.i1824:                                  ; preds = %.noexc.i.i1821
  store ptr %i.fbz, ptr %20, align 8, !tbaa !68
  %i.fca = load i64, ptr %i.h, align 8, !tbaa !174 ; 3 uses
  store i64 %i.fca, ptr %i.fby, align 8, !tbaa !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.fbz, ptr noundef nonnull align 1 dereferenceable(55) @.str.8, i64 55, i1 false)
  %i.fcb = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 %i.fca, ptr %i.fcb, align 8, !tbaa !55
  %i.fcc = getelementptr inbounds nuw i8, ptr %i.fbz, i64 %i.fca
  store i8 0, ptr %i.fcc, align 1, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #21
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.fbx, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %bb.bft unwind label %bb.bfu

bb.bft:                                           ; preds = %.noexc189.i1824
  invoke void @__cxa_throw(ptr nonnull %i.fbx, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.bfw unwind label %bb.bfu
end_hunk_3
