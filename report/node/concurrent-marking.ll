Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/concurrent-marking?download=true
inline.NumInlined: 10827
inline.NumDeleted: 3306
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN4heap4base18CachedUnorderedMapIPN2v88internal19MutablePageMetadataESt10unique_ptrINS3_10TypedSlotsESt14default_deleteIS7_EENS2_4base4hashIS5_EEEixERKS5_:bb.a
  %.pn.i7.i = phi i64 [ %i.u, %bb.f ], [ %i.as, %bb.i ]
  %.sroa.13.0.i.i = phi i64 [ 0, %bb.f ], [ %i.ar, %bb.i ]
  %.sroa.6.0.i.i = and i64 %.pn.i7.i, %i.g        ; 4 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %.sroa.6.0.i.i
  tail call void @llvm.prefetch.p0(ptr %i.aa, i32 0, i32 3, i32 1)
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.6.0.i.i
  %i.ac = load <16 x i8>, ptr %i.ab, align 1      ; 2 uses
  %i.ad = icmp eq <16 x i8> %i.z, %i.ac
  %i.ae = bitcast <16 x i1> %i.ad to i16          ; 2 uses
  %.not46.i.i = icmp eq i16 %i.ae, 0
  br i1 %.not46.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %bb.h
  %.sroa.017.047.i.i = phi i16 [ %i.ao, %bb.h ], [ %i.ae, %bb.g ] ; 3 uses
  %i.af = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i, i1 true)
  %i.ag = zext nneg i16 %i.af to i64
  %i.ah = add i64 %.sroa.6.0.i.i, %i.ag
  %i.ai = and i64 %i.ah, %i.g                     ; 2 uses
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i, i64 %i.ai ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = icmp eq ptr %i.ak, %i.a
  br i1 %i.al, label %.thread33.i.i, label %bb.h, !prof !31

.thread33.i.i:                                    ; preds = %.lr.ph.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.ai
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal19MutablePageMetadataESt10unique_ptrINS4_10TypedSlotsESt14default_deleteIS8_EEEENS3_4base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_SB_EEE10find_largeIS6_EENSN_8iteratorERSK_m.exit.i

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.an = add i16 %.sroa.017.047.i.i, -1
  %i.ao = and i16 %i.an, %.sroa.017.047.i.i       ; 2 uses
  %.not.i.i = icmp eq i16 %i.ao, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.h, %bb.g
  %i.ap = icmp eq <16 x i8> %i.ac, splat (i8 -128)
  %i.aq = bitcast <16 x i1> %i.ap to i16
  %.not44.i.i = icmp eq i16 %i.aq, 0
  br i1 %.not44.i.i, label %bb.i, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal19MutablePageMetadataESt10unique_ptrINS4_10TypedSlotsESt14default_deleteIS8_EEEENS3_4base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_SB_EEE10find_largeIS6_EENSN_8iteratorERSK_m.exit.i, !prof !27

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.ar = add i64 %.sroa.13.0.i.i, 16             ; 2 uses
  %i.as = add i64 %i.ar, %.sroa.6.0.i.i
  br label %bb.g, !llvm.loop !221

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal19MutablePageMetadataESt10unique_ptrINS4_10TypedSlotsESt14default_deleteIS8_EEEENS3_4base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_SB_EEE10find_largeIS6_EENSN_8iteratorERSK_m.exit.i: ; preds = %._crit_edge.i.i, %.thread33.i.i
  %.sroa.0.4.ph.i.i = phi ptr [ %i.am, %.thread33.i.i ], [ null, %._crit_edge.i.i ]
  %.sroa.3.4.ph.i.i = phi ptr [ %i.aj, %.thread33.i.i ], [ undef, %._crit_edge.i.i ]
  %.fca.0.insert.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i, 0
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i, ptr %.sroa.3.4.ph.i.i, 1
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal19MutablePageMetadataESt10unique_ptrINS4_10TypedSlotsESt14default_deleteIS8_EEEENS3_4base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_SB_EEE4findIS6_EENSN_8iteratorERSK_.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal19MutablePageMetadataESt10unique_ptrINS4_10TypedSlotsESt14default_deleteIS8_EEEENS3_4base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_SB_EEE4findIS6_EENSN_8iteratorERSK_.exit: ; preds = %bb.d, %bb.e, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal19MutablePageMetadataESt10unique_ptrINS4_10TypedSlotsESt14default_deleteIS8_EEEENS3_4base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_SB_EEE10find_largeIS6_EENSN_8iteratorERSK_m.exit.i
  %i.at = phi i64 [ %i.p, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal19MutablePageMetadataESt10unique_ptrINS4_10TypedSlotsESt14default_deleteIS8_EEEENS3_4base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_SB_EEE10find_largeIS6_EENSN_8iteratorERSK_m.exit.i ], [ %i.j, %bb.d ], [ %i.j, %bb.e ] ; 2 uses
  %.pn.i = phi { ptr, ptr } [ %.fca.1.insert.i.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal19MutablePageMetadataESt10unique_ptrINS4_10TypedSlotsESt14default_deleteIS8_EEEENS3_4base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_SB_EEE10find_largeIS6_EENSN_8iteratorERSK_m.exit.i ], [ { ptr null, ptr undef }, %bb.d ], [ %spec.select.i.i, %bb.e ] ; 2 uses
  %i.au = extractvalue { ptr, ptr } %.pn.i, 0     ; 4 uses
  %i.av = extractvalue { ptr, ptr } %.pn.i, 1
  %i.aw = icmp eq ptr %i.au, null                 ; 2 uses
  %i.ax = icmp eq ptr %i.au, @_ZN4absl18container_internal19kDefaultIterControlE ; 2 uses
  %or.cond.i.i = or i1 %i.aw, %i.ax
  br i1 %or.cond.i.i, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i, label %bb.j

bb.j:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal19MutablePageMetadataESt10unique_ptrINS4_10TypedSlotsESt14default_deleteIS8_EEEENS3_4base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_SB_EEE4findIS6_EENSN_8iteratorERSK_.exit
  %i.ay = load i8, ptr %i.au, align 1
  %i.az = icmp sgt i8 %i.ay, -1
  br i1 %i.az, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i, label %bb.k, !prof !31

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i: ; preds = %bb.j, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal19MutablePageMetadataESt10unique_ptrINS4_10TypedSlotsESt14default_deleteIS8_EEEENS3_4base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_SB_EEE4findIS6_EENSN_8iteratorERSK_.exit
  br i1 %i.ax, label %bb.l, label %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal19MutablePageMetadataESt10unique_ptrINS4_10TypedSlotsESt14default_deleteIS8_EEEENS3_4base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_SB_EEE8iteratorESQ_.exit, !prof !27

bb.l:                                             ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.30, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.28) #26
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal19MutablePageMetadataESt10unique_ptrINS4_10TypedSlotsESt14default_deleteIS8_EEEENS3_4base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_SB_EEE8iteratorESQ_.exit: ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i
  br i1 %i.aw, label %bb.m, label %.thread

bb.m:                                             ; preds = %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal19MutablePageMetadataESt10unique_ptrINS4_10TypedSlotsESt14default_deleteIS8_EEEENS3_4base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_SB_EEE8iteratorESQ_.exit
  br i1 %i.h, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %.not.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.at, 131072
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 131072, ptr %i.ba, align 8, !noalias !242
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.u

bb.p:                                             ; preds = %bb.n
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !noalias !242
  %i.be = icmp eq ptr %i.bd, %i.a
  br i1 %i.be, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26, !noalias !242
  store ptr %i.f, ptr %2, align 8, !noalias !242
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %1, ptr %i.bf, align 8, !noalias !242
  %i.bg = call noundef i64 @_ZN4absl18container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm0ELb0EEEmRNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal19MutablePageMetadataESt10unique_ptrINS4_10TypedSlotsESt14default_deleteIS8_EEEENS3_4base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_SB_EEE18GetPolicyFunctionsEvE5value, ptr nonnull %2, ptr nonnull @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyIN2v84base4hashIPNS4_8internal19MutablePageMetadataEEES9_Lb0EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE, i1 noundef zeroext false) #26, !noalias !242 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26, !noalias !242
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bc, align 8, !noalias !242, !nonnull !29, !noundef !29
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bi, align 8, !noalias !242
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i, i64 %i.bg
  br label %bb.u

bb.r:                                             ; preds = %bb.m
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i7 = load ptr, ptr %i.bk, align 8, !noalias !243 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i7, i32 0, i32 1, i32 1), !noalias !243
  %sext.i8 = shl i64 %i.at, 48
  %i.bl = ashr exact i64 %sext.i8, 48             ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.bn = load i64, ptr %i.bm, align 8, !noalias !243
  %i.bo = lshr i64 %i.bn, 18
  %i.bp = xor i64 %i.bo, %i.bl                    ; 2 uses
  %i.bq = lshr i64 %i.bl, 57
  %i.br = trunc nuw nsw i64 %i.bq to i8
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.sroa.0.0.copyload.i.i.i22.i = load ptr, ptr %i.bs, align 8, !noalias !243 ; 2 uses
  %i.bt = insertelement <16 x i8> poison, i8 %i.br, i64 0
  %i.bu = shufflevector <16 x i8> %i.bt, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.s

bb.s:                                             ; preds = %bb.t, %bb.r
  %.pn.i9 = phi i64 [ %i.bp, %bb.r ], [ %i.ct, %bb.t ]
  %.sroa.15.0.i = phi i64 [ 0, %bb.r ], [ %i.cs, %bb.t ] ; 2 uses
  %.sroa.7.0.i = and i64 %.pn.i9, %i.g            ; 5 uses
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %.sroa.7.0.i
  tail call void @llvm.prefetch.p0(ptr %i.bv, i32 0, i32 3, i32 1), !noalias !243
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i7, i64 %.sroa.7.0.i
  %i.bx = load <16 x i8>, ptr %i.bw, align 1, !noalias !243 ; 2 uses
  %i.by = icmp eq <16 x i8> %i.bu, %i.bx
  %i.bz = bitcast <16 x i1> %i.by to i16          ; 2 uses
  %.not64.i = icmp eq i16 %i.bz, 0
  br i1 %.not64.i, label %.critedge19.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.s, %.critedge.i
  %.sroa.035.065.i = phi i16 [ %i.ci, %.critedge.i ], [ %i.bz, %bb.s ] ; 3 uses
  %i.ca = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.065.i, i1 true)
  %i.cb = zext nneg i16 %i.ca to i64
  %i.cc = add i64 %.sroa.7.0.i, %i.cb
  %i.cd = and i64 %i.cc, %i.g                     ; 2 uses
  %i.ce = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %i.cd ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !noalias !243
  %i.cg = icmp eq ptr %i.cf, %i.a
  br i1 %i.cg, label %.critedge21.i, label %.critedge.i, !prof !31

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.ch = add i16 %.sroa.035.065.i, -1
  %i.ci = and i16 %i.ch, %.sroa.035.065.i         ; 2 uses
  %.not.i10 = icmp eq i16 %i.ci, 0
  br i1 %.not.i10, label %.critedge19.i, label %.lr.ph.i

.critedge19.i:                                    ; preds = %.critedge.i, %bb.s
  %i.cj = icmp eq <16 x i8> %i.bx, splat (i8 -128)
  %i.ck = bitcast <16 x i1> %i.cj to i16          ; 2 uses
  %.not57.i = icmp eq i16 %i.ck, 0
  br i1 %.not57.i, label %bb.t, label %.thread.i, !prof !27

.thread.i:                                        ; preds = %.critedge19.i
  %i.cl = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ck, i1 true)
  %i.cm = zext nneg i16 %i.cl to i64
  %i.cn = add i64 %.sroa.7.0.i, %i.cm
  %i.co = and i64 %i.cn, %i.g
  %i.cp = tail call noundef i64 @_ZN4absl18container_internal18PrepareInsertLargeERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmNS0_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal19MutablePageMetadataESt10unique_ptrINS4_10TypedSlotsESt14default_deleteIS8_EEEENS3_4base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_SB_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.bp, i64 %i.co, i64 %.sroa.15.0.i) #26, !noalias !243 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i25.i = load ptr, ptr %i.bk, align 8, !noalias !243, !nonnull !29, !noundef !29
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i25.i, i64 %i.cp
  %.sroa.0.0.copyload.i.i.i2.i26.i = load ptr, ptr %i.bs, align 8, !noalias !243
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i26.i, i64 %i.cp
  br label %bb.u

bb.t:                                             ; preds = %.critedge19.i
  %i.cs = add i64 %.sroa.15.0.i, 16               ; 2 uses
  %i.ct = add i64 %i.cs, %.sroa.7.0.i
  br label %bb.s

.critedge21.i:                                    ; preds = %.lr.ph.i
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i7, i64 %i.cd
  br label %_ZNSt10unique_ptrIN2v88internal10TypedSlotsESt14default_deleteIS2_EED2Ev.exit

bb.u:                                             ; preds = %bb.q, %bb.o, %.thread.i
  %.sroa.5.0.ph = phi ptr [ %i.cr, %.thread.i ], [ %i.bb, %bb.o ], [ %i.bj, %bb.q ] ; 3 uses
  %.sroa.011.0.ph = phi ptr [ %i.cq, %.thread.i ], [ @_ZN4absl18container_internal11kSooControlE, %bb.o ], [ %i.bh, %bb.q ]
  %i.cv = load ptr, ptr %1, align 8, !noalias !244
  store ptr %i.cv, ptr %.sroa.5.0.ph, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.5.0.ph, i64 8
  store i64 0, ptr %i.cw, align 8
  %.pre = load ptr, ptr %1, align 8
  br label %_ZNSt10unique_ptrIN2v88internal10TypedSlotsESt14default_deleteIS2_EED2Ev.exit

.thread:                                          ; preds = %bb.p, %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal19MutablePageMetadataESt10unique_ptrINS4_10TypedSlotsESt14default_deleteIS8_EEEENS3_4base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_SB_EEE8iteratorESQ_.exit
  %.sroa.013.0.ph = phi ptr [ @_ZN4absl18container_internal11kSooControlE, %bb.p ], [ %i.au, %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal19MutablePageMetadataESt10unique_ptrINS4_10TypedSlotsESt14default_deleteIS8_EEEENS3_4base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_SB_EEE8iteratorESQ_.exit ]
  %.sroa.7.0.ph = phi ptr [ %i.bc, %bb.p ], [ %i.av, %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal19MutablePageMetadataESt10unique_ptrINS4_10TypedSlotsESt14default_deleteIS8_EEEENS3_4base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_SB_EEE8iteratorESQ_.exit ]
  store ptr %i.a, ptr %0, align 8
  br label %bb.y

_ZNSt10unique_ptrIN2v88internal10TypedSlotsESt14default_deleteIS2_EED2Ev.exit: ; preds = %.critedge21.i, %bb.u
  %i.cx = phi ptr [ %i.a, %.critedge21.i ], [ %.pre, %bb.u ]
  %.sroa.013.0 = phi ptr [ %i.cu, %.critedge21.i ], [ %.sroa.011.0.ph, %bb.u ] ; 3 uses
  %.sroa.7.0 = phi ptr [ %i.ce, %.critedge21.i ], [ %.sroa.5.0.ph, %bb.u ]
  store ptr %i.cx, ptr %0, align 8
  %i.cy = icmp eq ptr %.sroa.013.0, null
  br i1 %i.cy, label %bb.v, label %bb.w, !prof !245

bb.v:                                             ; preds = %_ZNSt10unique_ptrIN2v88internal10TypedSlotsESt14default_deleteIS2_EED2Ev.exit
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.30, i64 61), i32 noundef 1251, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.32) #26
  call void @llvm.trap()
  unreachable

bb.w:                                             ; preds = %_ZNSt10unique_ptrIN2v88internal10TypedSlotsESt14default_deleteIS2_EED2Ev.exit
  %i.cz = icmp eq ptr %.sroa.013.0, @_ZN4absl18container_internal19kDefaultIterControlE
  br i1 %i.cz, label %bb.x, label %bb.y, !prof !246

bb.x:                                             ; preds = %bb.w
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.30, i64 61), i32 noundef 1255, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.32) #26
  call void @llvm.trap()
  unreachable

bb.y:                                             ; preds = %.thread, %bb.w
  %.sroa.013.02631 = phi ptr [ %.sroa.013.0.ph, %.thread ], [ %.sroa.013.0, %bb.w ] ; 2 uses
  %.sroa.7.02730 = phi ptr [ %.sroa.7.0.ph, %.thread ], [ %.sroa.7.0, %bb.w ]
  %i.da = load i8, ptr %.sroa.013.02631, align 1
  %i.db = icmp sgt i8 %i.da, -1
  br i1 %i.db, label %bb.aa, label %bb.z, !prof !31

bb.z:                                             ; preds = %bb.y
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.30, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.32) #26
  call void @llvm.trap()
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.7.02730, i64 8 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dc, ptr %i.dd, align 8
  %i.de = load i8, ptr %.sroa.013.02631, align 1
  %i.df = icmp sgt i8 %i.de, -1
  br i1 %i.df, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal19MutablePageMetadataESt10unique_ptrINS4_10TypedSlotsESt14default_deleteIS8_EEEENS3_4base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_SB_EEE8iteratorptEv.exit6, label %bb.ab, !prof !31

bb.ab:                                            ; preds = %bb.aa
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.30, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.32) #26
  call void @llvm.trap()
  unreachable

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal19MutablePageMetadataESt10unique_ptrINS4_10TypedSlotsESt14default_deleteIS8_EEEENS3_4base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_SB_EEE8iteratorptEv.exit6: ; preds = %bb.aa, %bb.b
  %.0 = phi ptr [ %i.e, %bb.b ], [ %i.dc, %bb.aa ]
  ret ptr %.0
}

declare void @_ZN2v88internal10TypedSlots6InsertENS0_8SlotTypeEj(ptr noundef nonnull align 8 dereferenceable(24), i8 noundef zeroext, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #18

declare void @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

declare noundef i64 @_ZN4absl18container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm0ELb0EEEmRNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(72), ptr, ptr, i1 noundef zeroext) local_unnamed_addr #5

declare noundef ptr @_ZN4absl18container_internal19GetRefForEmptyClassERNS0_12CommonFieldsE(ptr noundef nonnull align 8 dereferenceable(32)) #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN4absl18container_internal18hash_policy_traitsINS0_17FlatHashMapPolicyIPN2v88internal19MutablePageMetadataESt10unique_ptrINS4_10TypedSlotsESt14default_deleteIS8_EEEEvE28hash_slot_fn_non_type_erasedINS3_4base4hashIS6_EELb0EEEmPKvPvm(ptr noundef %0, ptr noundef %1, i64 noundef %2) #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load i64, ptr %i.b, align 8
  %i.d = lshr i64 %i.c, 18
  %i.e = xor i64 %i.d, %2
  ret i64 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal19MutablePageMetadataESt10unique_ptrINS4_10TypedSlotsESt14default_deleteIS8_EEEENS3_4base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_SB_EEE19transfer_n_slots_fnEPvSO_SO_m(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #4 comdat align 2 {
bb.a:
  %.not11 = icmp eq i64 %3, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.014.prol = phi ptr [ %i.g, %.lr.ph.prol ], [ %1, %.lr.ph.preheader ] ; 3 uses
  %.0913.prol = phi ptr [ %i.f, %.lr.ph.prol ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %.01012.prol = phi i64 [ %i.e, %.lr.ph.prol ], [ %3, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.a = load ptr, ptr %.0913.prol, align 8
  store ptr %i.a, ptr %.014.prol, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %.014.prol, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %.0913.prol, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8
  store i64 %i.d, ptr %i.b, align 8
  store ptr null, ptr %i.c, align 8
  %i.e = add i64 %.01012.prol, -1                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0913.prol, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.014.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !247

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.014.unr = phi ptr [ %1, %.lr.ph.preheader ], [ %i.g, %.lr.ph.prol ]
  %.0913.unr = phi ptr [ %2, %.lr.ph.preheader ], [ %i.f, %.lr.ph.prol ]
  %.01012.unr = phi i64 [ %3, %.lr.ph.preheader ], [ %i.e, %.lr.ph.prol ]
  %i.h = icmp ult i64 %3, 4
  br i1 %i.h, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.014 = phi ptr [ %i.ag, %.lr.ph ], [ %.014.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.0913 = phi ptr [ %i.af, %.lr.ph ], [ %.0913.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.01012 = phi i64 [ %i.ae, %.lr.ph ], [ %.01012.unr, %.lr.ph.prol.loopexit ]
  %i.i = load ptr, ptr %.0913, align 8
  store ptr %i.i, ptr %.014, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %.014, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %.0913, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8
  store i64 %i.l, ptr %i.j, align 8
  store ptr null, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %.0913, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %.014, i64 16
  %i.o = load ptr, ptr %i.m, align 8
  store ptr %i.o, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %.014, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %.0913, i64 24 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8
  store i64 %i.r, ptr %i.p, align 8
  store ptr null, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %.0913, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %.014, i64 32
  %i.u = load ptr, ptr %i.s, align 8
  store ptr %i.u, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %.014, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %.0913, i64 40 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8
  store i64 %i.x, ptr %i.v, align 8
  store ptr null, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %.0913, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %.014, i64 48
  %i.aa = load ptr, ptr %i.y, align 8
  store ptr %i.aa, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.014, i64 56
  %i.ac = getelementptr inbounds nuw i8, ptr %.0913, i64 56 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8
  store i64 %i.ad, ptr %i.ab, align 8
  store ptr null, ptr %i.ac, align 8
  %i.ae = add i64 %.01012, -4                     ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0913, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %.014, i64 64
  %.not.3 = icmp eq i64 %i.ae, 0
  br i1 %.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !248

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4absl18container_internal20AllocateBackingArrayILm8ESaIcEEEPvS3_m(ptr noundef %0, i64 noundef %1) #22 comdat {
bb.a:
  %i.a = add i64 %1, 7                            ; 2 uses
  %i.b = icmp slt i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4absl18container_internal8AllocateILm8ESaIcEEEPvPT0_m.exit, !prof !27

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZN4absl18container_internal8AllocateILm8ESaIcEEEPvPT0_m.exit: ; preds = %bb.a
  %i.c = and i64 %i.a, 9223372036854775800
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #28
  ret ptr %i.d
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4absl18container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS0_6ctrl_tEmmb(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext %5) #22 comdat {
bb.a:
  %.neg = select i1 %5, i64 -9, i64 -8
  %i.a = select i1 %5, i64 9, i64 8
  %i.b = icmp ult i64 %1, 2
  %i.c = add i64 %1, 15
  %i.d = select i1 %i.b, i64 -1, i64 %i.c
  %i.e = add i64 %i.d, %4
  %i.f = add i64 %i.e, %i.a
  %i.g = sub i64 0, %4
  %i.h = and i64 %i.f, %i.g
  %i.i = mul i64 %3, %1
  %i.j = getelementptr inbounds i8, ptr %2, i64 %.neg
  %i.k = add i64 %i.i, 7
  %i.l = add i64 %i.k, %i.h
  %i.m = and i64 %i.l, -8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.m) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal19MutablePageMetadataESt10unique_ptrINS4_10TypedSlotsESt14default_deleteIS8_EEEENS3_4base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_SB_EEE46transfer_unprobed_elements_to_next_capacity_fnERNS0_12CommonFieldsEPKNS0_6ctrl_tEPvST_PFvST_hmmE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #19 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 4 uses
  %i.b = lshr i64 %i.a, 1                         ; 4 uses
  %i.c = and i64 %i.a, 30
  %i.d = icmp eq i64 %i.c, 30
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.e, align 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = and i64 %i.b, 9223372036854775792
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.04962 = phi i64 [ 0, %bb.a ], [ %i.p, %._crit_edge ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %.04962
  %i.j = load <16 x i8>, ptr %i.i, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.04962 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.k, i8 -128, i64 16, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.m, i8 -128, i64 16, i1 false)
  %i.n = icmp sgt <16 x i8> %i.j, splat (i8 -1)
  %i.o = bitcast <16 x i1> %i.n to i16            ; 2 uses
  %.not60 = icmp eq i16 %i.o, 0
  br i1 %.not60, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.j, %bb.c
  %i.p = add nuw i64 %.04962, 16                  ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.b
  br i1 %i.q, label %bb.c, label %bb.b, !llvm.loop !249

.lr.ph:                                           ; preds = %bb.c, %bb.j
  %.sroa.052.061 = phi i16 [ %i.bb, %bb.j ], [ %i.o, %bb.c ] ; 3 uses
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.052.061, i1 true)
  %i.s = zext nneg i16 %i.r to i64
  %i.t = or disjoint i64 %.04962, %i.s            ; 4 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.t ; 3 uses
  %i.v = load i64, ptr %i.g, align 8
  %sext = shl i64 %i.v, 48
  %i.w = ashr exact i64 %sext, 48                 ; 2 uses
  %i.x = load ptr, ptr %i.u, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = lshr i64 %i.z, 18
  %i.ab = xor i64 %i.aa, %i.w                     ; 5 uses
  %i.ac = lshr i64 %i.w, 57
  %i.ad = trunc nuw nsw i64 %i.ac to i8           ; 2 uses
  %i.ae = sub i64 %i.t, %i.ab                     ; 2 uses
  %i.af = and i64 %i.h, %i.ae
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.d, label %bb.e, !prof !31

bb.d:                                             ; preds = %.lr.ph
  %i.ah = and i64 %i.ae, 15
  %i.ai = add nsw i64 %i.ah, %i.ab
  %i.aj = and i64 %i.ai, %i.a
  br label %bb.i

bb.e:                                             ; preds = %.lr.ph
  %i.ak = and i64 %i.ab, %i.b
  %.not.i = icmp ult i64 %i.ak, %i.t
  br i1 %.not.i, label %bb.f, label %bb.h, !prof !31

bb.f:                                             ; preds = %bb.e
  %i.al = and i64 %i.ab, %i.a                     ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.al
  %i.an = load <16 x i8>, ptr %i.am, align 1
  %i.ao = icmp slt <16 x i8> %i.an, zeroinitializer
  %i.ap = bitcast <16 x i1> %i.ao to i16          ; 2 uses
  %.not26.i = icmp eq i16 %i.ap, 0
  br i1 %.not26.i, label %bb.h, label %bb.g, !prof !27

bb.g:                                             ; preds = %bb.f
  %i.aq = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ap, i1 true)
  %i.ar = zext nneg i16 %i.aq to i64
  %i.as = add i64 %i.al, %i.ar
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.e
  tail call void %4(ptr noundef %3, i8 noundef zeroext %i.ad, i64 noundef %i.t, i64 noundef %i.ab) #26
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.d
  %.sink27.i = phi i64 [ %i.as, %bb.g ], [ %i.aj, %bb.d ] ; 3 uses
  %i.at = icmp ne i64 %.sink27.i, -1
  tail call void @llvm.assume(i1 %i.at)
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.sink27.i
  store i8 %i.ad, ptr %i.au, align 1
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sink27.i ; 2 uses
  %i.aw = load ptr, ptr %i.u, align 8
  store ptr %i.aw, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8
  store i64 %i.az, ptr %i.ax, align 8
  store ptr null, ptr %i.ay, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ba = add i16 %.sroa.052.061, -1
  %i.bb = and i16 %i.ba, %.sroa.052.061           ; 2 uses
  %.not = icmp eq i16 %i.bb, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyIN2v84base4hashIPNS4_8internal19MutablePageMetadataEEES9_Lb0EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE(ptr %0, i64 noundef %1) #4 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !29, !align !30
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.e = load i64, ptr %i.d, align 8
  %i.f = lshr i64 %i.e, 18
  %i.g = xor i64 %i.f, %1
  ret i64 %i.g
}

declare noundef i64 @_ZN4absl18container_internal18PrepareInsertLargeERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmNS0_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(72), i64 noundef, i64, i64) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4heap4base8WorklistIN2v88internal17HeapObjectAndCodeELt64EE5Local18PublishPushSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #26
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !nonnull !29, !align !30 ; 4 uses
  %i.e = load ptr, ptr %i.a, align 8              ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(24) %i.d) #26
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.g, ptr %i.h, align 8
  store ptr %i.e, ptr %i.f, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.j = atomicrmw add ptr %i.i, i64 1 monotonic, align 8 ; 0 uses
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(24) %i.d) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4heap4base8WorklistIN2v88internal17HeapObjectAndCodeELt64EE5Local10NewSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load i8, ptr @_ZN4heap4base12WorklistBase18predictable_order_E, align 1, !range !28, !noundef !29
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = tail call noalias noundef dereferenceable_or_null(1040) ptr @malloc(i64 noundef 1040) #31 ; 6 uses
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @malloc_usable_size(ptr noundef %i.c) #26
  %i.e = add i64 %i.d, 1048560
  %i.f = lshr i64 %i.e, 4
  %i.g = trunc i64 %i.f to i16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.6.0.i = phi i16 [ %i.g, %bb.b ], [ 64, %bb.a ]
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.d, label %_ZN4heap4base8WorklistIN2v88internal17HeapObjectAndCodeELt64EE7Segment6CreateEt.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v84base8FatalOOMENS0_7OOMTypeEPKc(i32 noundef 1, ptr noundef nonnull @.str.23) #27
  unreachable

_ZN4heap4base8WorklistIN2v88internal17HeapObjectAndCodeELt64EE7Segment6CreateEt.exit: ; preds = %bb.c
  store i16 %.sroa.6.0.i, ptr %i.c, align 2
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i16 0, ptr %i.h, align 2
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr null, ptr %i.i, align 8
  ret ptr %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZNSt10_HashtableIPN5cppgc8internal16HeapObjectHeaderES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKS3_SJ_NS5_10_AllocNodeISaINS5_10_Hash_nodeIS3_Lb0EEEEEEEESt4pairINS5_14_Node_iteratorIS3_Lb1ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8
  %.not.not = icmp eq i64 %i.b, 0
  br i1 %.not.not, label %bb.b, label %.thread31

.thread31:                                        ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8                ; 3 uses
  %i.d = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = urem i64 %i.d, %i.f                      ; 5 uses
  %i.h = load ptr, ptr %0, align 8
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.g
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %.critedge, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.025.0.in = phi ptr [ %i.k, %bb.b ], [ %.sroa.025.0, %bb.d ]
  %.sroa.025.0 = load ptr, ptr %.sroa.025.0.in, align 8 ; 4 uses
  %i.m = icmp eq ptr %.sroa.025.0, null
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.025.0, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = icmp eq ptr %i.l, %i.o
  br i1 %i.p, label %_ZNKSt10_HashtableIPN5cppgc8internal16HeapObjectHeaderES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trIS3_EEPNS5_10_Hash_nodeIS3_Lb0EEEmRKT_m.exit, label %bb.c, !llvm.loop !250

bb.e:                                             ; preds = %bb.c
  %i.q = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8
  %i.t = urem i64 %i.q, %i.s
  br label %.critedge

bb.f:                                             ; preds = %.thread31
  %i.u = load ptr, ptr %i.j, align 8              ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = icmp eq ptr %i.c, %i.w
  br i1 %i.x, label %_ZNKSt10_HashtableIPN5cppgc8internal16HeapObjectHeaderES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trIS3_EEPNS5_10_Hash_nodeIS3_Lb0EEEmRKT_m.exit, label %.lr.ph.i.i

bb.g:                                             ; preds = %bb.h
  %i.y = icmp eq ptr %i.c, %i.ab
  br i1 %i.y, label %_ZNKSt10_HashtableIPN5cppgc8internal16HeapObjectHeaderES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trIS3_EEPNS5_10_Hash_nodeIS3_Lb0EEEmRKT_m.exit, label %.lr.ph.i.i, !llvm.loop !251

.lr.ph.i.i:                                       ; preds = %bb.f, %bb.g
  %.020.i.i = phi ptr [ %i.z, %bb.g ], [ %i.u, %bb.f ]
  %i.z = load ptr, ptr %.020.i.i, align 8         ; 4 uses
  %.not18.i.i = icmp eq ptr %i.z, null
  br i1 %.not18.i.i, label %.critedge, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = urem i64 %i.ac, %i.f
  %.not19.i.i = icmp eq i64 %i.ad, %i.g
  br i1 %.not19.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i, !llvm.loop !251

..loopexit_crit_edge21.i.i:                       ; preds = %bb.h
  br label %.critedge, !llvm.loop !251

.critedge:                                        ; preds = %.lr.ph.i.i, %bb.e, %..loopexit_crit_edge21.i.i, %.thread31
  %i.ae = phi i64 [ %i.t, %bb.e ], [ %i.g, %.thread31 ], [ %i.g, %..loopexit_crit_edge21.i.i ], [ %i.g, %.lr.ph.i.i ]
  %i.af = phi ptr [ %i.r, %bb.e ], [ %i.e, %.thread31 ], [ %i.e, %..loopexit_crit_edge21.i.i ], [ %i.e, %.lr.ph.i.i ] ; 3 uses
  %i.ag = phi i64 [ %i.q, %bb.e ], [ %i.d, %.thread31 ], [ %i.d, %..loopexit_crit_edge21.i.i ], [ %i.d, %.lr.ph.i.i ]
  %i.ah = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #28 ; 8 uses
  store ptr null, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %1, align 8
  store ptr %i.aj, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = load i64, ptr %i.af, align 8
  %i.am = load i64, ptr %i.a, align 8
  %i.an = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i64 noundef %i.al, i64 noundef %i.am, i64 noundef 1) #26 ; 2 uses
  %i.ao = extractvalue { i8, i64 } %i.an, 0
  %i.ap = trunc i8 %i.ao to i1
  br i1 %i.ap, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.critedge
  %i.aq = extractvalue { i8, i64 } %i.an, 1
  tail call void @_ZNSt10_HashtableIPN5cppgc8internal16HeapObjectHeaderES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.aq)
  %i.ar = load i64, ptr %i.af, align 8
  %i.as = urem i64 %i.ag, %i.ar
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.critedge
  %.0.i17 = phi i64 [ %i.as, %bb.i ], [ %i.ae, %.critedge ] ; 2 uses
  %i.at = load ptr, ptr %0, align 8               ; 3 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.0.i17 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8            ; 2 uses
  %.not.i.i18 = icmp eq ptr %i.av, null
  br i1 %.not.i.i18, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = load ptr, ptr %i.av, align 8
  store ptr %i.aw, ptr %i.ah, align 8
  %i.ax = load ptr, ptr %i.au, align 8
  store ptr %i.ah, ptr %i.ax, align 8
  br label %_ZNSt10_HashtableIPN5cppgc8internal16HeapObjectHeaderES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.az = load ptr, ptr %i.ay, align 8            ; 3 uses
  store ptr %i.az, ptr %i.ah, align 8
  store ptr %i.ah, ptr %i.ay, align 8
  %.not11.i.i = icmp eq ptr %i.az, null
  br i1 %.not11.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load i64, ptr %i.af, align 8
  %i.bc = load ptr, ptr %i.ba, align 8
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = urem i64 %i.bd, %i.bb
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.be
  store ptr %i.ah, ptr %i.bf, align 8
  %.pre = load ptr, ptr %0, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bg = phi ptr [ %.pre, %bb.m ], [ %i.at, %bb.l ]
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %.0.i17
  store ptr %i.ay, ptr %i.bh, align 8
  br label %_ZNSt10_HashtableIPN5cppgc8internal16HeapObjectHeaderES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit

_ZNSt10_HashtableIPN5cppgc8internal16HeapObjectHeaderES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %bb.n, %bb.k
  %i.bi = load i64, ptr %i.a, align 8
  %i.bj = add i64 %i.bi, 1
  store i64 %i.bj, ptr %i.a, align 8
  br label %_ZNKSt10_HashtableIPN5cppgc8internal16HeapObjectHeaderES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trIS3_EEPNS5_10_Hash_nodeIS3_Lb0EEEmRKT_m.exit

_ZNKSt10_HashtableIPN5cppgc8internal16HeapObjectHeaderES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trIS3_EEPNS5_10_Hash_nodeIS3_Lb0EEEmRKT_m.exit: ; preds = %bb.g, %bb.d, %bb.f, %_ZNSt10_HashtableIPN5cppgc8internal16HeapObjectHeaderES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit
  %.sroa.028.1 = phi ptr [ %i.ah, %_ZNSt10_HashtableIPN5cppgc8internal16HeapObjectHeaderES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit ], [ %.sroa.025.0, %bb.d ], [ %i.u, %bb.f ], [ %i.z, %bb.g ]
  %.sroa.4.1 = phi i8 [ 1, %_ZNSt10_HashtableIPN5cppgc8internal16HeapObjectHeaderES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit ], [ 0, %bb.d ], [ 0, %bb.f ], [ 0, %bb.g ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.028.1, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.4.1, 1
  ret { ptr, i8 } %.fca.1.insert
}

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10_HashtableIPN5cppgc8internal16HeapObjectHeaderES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !27

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8
  br label %_ZNSt10_HashtableIPN5cppgc8internal16HeapObjectHeaderES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIPN5cppgc8internal16HeapObjectHeaderELb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !27

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #27
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIPN5cppgc8internal16HeapObjectHeaderELb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #28 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableIPN5cppgc8internal16HeapObjectHeaderES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIPN5cppgc8internal16HeapObjectHeaderES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIPN5cppgc8internal16HeapObjectHeaderELb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIPN5cppgc8internal16HeapObjectHeaderELb0EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  store ptr null, ptr %i.g, align 8
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIPN5cppgc8internal16HeapObjectHeaderES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.j
  %.031 = phi i64 [ %.1, %bb.j ], [ 0, %_ZNSt10_HashtableIPN5cppgc8internal16HeapObjectHeaderES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.j ], [ %i.h, %_ZNSt10_HashtableIPN5cppgc8internal16HeapObjectHeaderES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %i.i = load ptr, ptr %.02530, align 8           ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = urem i64 %i.l, %1                        ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.m ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not27 = icmp eq ptr %i.o, null
  br i1 %.not27, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph
  %i.p = load ptr, ptr %i.g, align 8
  store ptr %i.p, ptr %.02530, align 8
  store ptr %.02530, ptr %i.g, align 8
  store ptr %i.g, ptr %i.n, align 8
  %i.q = load ptr, ptr %.02530, align 8
  %.not28 = icmp eq ptr %i.q, null
  br i1 %.not28, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.r, align 8
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.s = load ptr, ptr %i.o, align 8
  store ptr %i.s, ptr %.02530, align 8
  %i.t = load ptr, ptr %i.n, align 8
  store ptr %.02530, ptr %i.t, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.1 = phi i64 [ %.031, %bb.i ], [ %i.m, %bb.h ], [ %i.m, %bb.g ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !252

._crit_edge:                                      ; preds = %bb.j, %_ZNSt10_HashtableIPN5cppgc8internal16HeapObjectHeaderES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.u = load ptr, ptr %0, align 8                ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt10_HashtableIPN5cppgc8internal16HeapObjectHeaderES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i64, ptr %i.x, align 8
  %i.z = shl i64 %i.y, 3
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.z) #29
  br label %_ZNSt10_HashtableIPN5cppgc8internal16HeapObjectHeaderES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIPN5cppgc8internal16HeapObjectHeaderES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.aa, align 8
  store ptr %.0.i, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4heap4base8WorklistIN5cppgc15TraceDescriptorELt512EE5Local18PublishPushSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #26
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !nonnull !29, !align !30 ; 4 uses
  %i.e = load ptr, ptr %i.a, align 8              ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(24) %i.d) #26
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.g, ptr %i.h, align 8
  store ptr %i.e, ptr %i.f, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.j = atomicrmw add ptr %i.i, i64 1 monotonic, align 8 ; 0 uses
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(24) %i.d) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4heap4base8WorklistIN5cppgc15TraceDescriptorELt512EE5Local10NewSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load i8, ptr @_ZN4heap4base12WorklistBase18predictable_order_E, align 1, !range !28, !noundef !29
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = tail call noalias noundef dereferenceable_or_null(8208) ptr @malloc(i64 noundef 8208) #31 ; 6 uses
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @malloc_usable_size(ptr noundef %i.c) #26
  %i.e = add i64 %i.d, 1048560
  %i.f = lshr i64 %i.e, 4
  %i.g = trunc i64 %i.f to i16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.6.0.i = phi i16 [ %i.g, %bb.b ], [ 512, %bb.a ]
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.d, label %_ZN4heap4base8WorklistIN5cppgc15TraceDescriptorELt512EE7Segment6CreateEt.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v84base8FatalOOMENS0_7OOMTypeEPKc(i32 noundef 1, ptr noundef nonnull @.str.23) #27
  unreachable

_ZN4heap4base8WorklistIN5cppgc15TraceDescriptorELt512EE7Segment6CreateEt.exit: ; preds = %bb.c
  store i16 %.sroa.6.0.i, ptr %i.c, align 2
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i16 0, ptr %i.h, align 2
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr null, ptr %i.i, align 8
  ret ptr %i.c
}

declare void @_ZN2v84base19MemoryProtectionKey20SetPermissionsForKeyEiNS1_10PermissionE(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE23ProcessStrongHeapObjectINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %0, i64 %1, i64 %2, i64 %3) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = and i64 %3, -262144
  %i.d = inttoptr i64 %i.c to ptr                 ; 3 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.d, align 262144 ; 3 uses
  %i.e = and i64 %.sroa.0.0.copyload.i, 64
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %.critedge.i, label %_ZN2v88internal13MarkingHelper16ShouldMarkObjectEPNS0_4HeapENS0_6TaggedINS0_10HeapObjectEEE.exit

.critedge.i:                                      ; preds = %bb.a
  %i.f = and i64 %.sroa.0.0.copyload.i, 1
  %.not.i18 = icmp eq i64 %i.f, 0
  br i1 %.not.i18, label %bb.c, label %bb.b, !prof !31

bb.b:                                             ; preds = %.critedge.i
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = add i64 %i.g, -55464
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 55448
  %i.k = load i8, ptr %i.j, align 8, !range !28, !noundef !29
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.c, label %_ZN2v88internal13MarkingHelper16ShouldMarkObjectEPNS0_4HeapENS0_6TaggedINS0_10HeapObjectEEE.exit

bb.c:                                             ; preds = %.critedge.i, %bb.b
  %i.m = and i64 %.sroa.0.0.copyload.i, 32
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %bb.d, label %_ZNKRSt8optionalIN2v88internal13MarkingHelper14WorklistTargetEE5valueEv.exit

bb.d:                                             ; preds = %bb.c
  %i.n = add i64 %3, -1
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load atomic volatile i64, ptr %i.o monotonic, align 8
  %i.q = add i64 %i.p, 11
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load atomic volatile i16, ptr %i.r monotonic, align 2
  %i.t = and i16 %i.s, -2
  %i.u = icmp eq i16 %i.t, 270
  br i1 %i.u, label %bb.e, label %_ZNKRSt8optionalIN2v88internal13MarkingHelper14WorklistTargetEE5valueEv.exit, !prof !27

bb.e:                                             ; preds = %bb.d
  %i.v = ptrtoint ptr %i.b to i64
  %i.w = add i64 %i.v, -55464
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = add i64 %1, -1
  %i.z = inttoptr i64 %i.y to ptr                 ; 2 uses
  %i.aa = load atomic volatile i64, ptr %i.z monotonic, align 8
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = inttoptr i64 %2 to ptr
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 80
  %i.ag = load atomic ptr, ptr %i.af seq_cst, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = zext i32 %i.ai to i64
  %i.ak = inttoptr i64 %i.aj to ptr
  tail call void @_ZN2v88internal7Isolate20PushStackTraceAndDieEPvS2_S2_S2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(64320) %i.x, ptr noundef %i.ab, ptr noundef nonnull %i.z, ptr noundef %i.ac, ptr noundef %i.ak, ptr noundef null, ptr noundef null) #26
  br label %_ZNKRSt8optionalIN2v88internal13MarkingHelper14WorklistTargetEE5valueEv.exit

_ZNKRSt8optionalIN2v88internal13MarkingHelper14WorklistTargetEE5valueEv.exit: ; preds = %bb.d, %bb.e, %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 80
  %i.aq = load atomic ptr, ptr %i.ap seq_cst, align 8
  %.not.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i, label %bb.f, label %_ZN2v88internal7MarkBit4FromEPKNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEE.exit, !prof !27

bb.f:                                             ; preds = %_ZNKRSt8optionalIN2v88internal13MarkingHelper14WorklistTargetEE5valueEv.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.24) #27
  unreachable

_ZN2v88internal7MarkBit4FromEPKNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %_ZNKRSt8optionalIN2v88internal13MarkingHelper14WorklistTargetEE5valueEv.exit
  %i.ar = ptrtoint ptr %i.ao to i64
  %i.as = add i64 %i.ar, 336
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = lshr i64 %3, 3
  %i.av = and i64 %i.au, 63
  %i.aw = shl nuw i64 1, %i.av                    ; 2 uses
  %i.ax = lshr i64 %3, 9
  %i.ay = and i64 %i.ax, 511
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.ay ; 2 uses
  %i.ba = load atomic volatile i64, ptr %i.az monotonic, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %_ZN2v88internal7MarkBit4FromEPKNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEE.exit
  %.0.i.i = phi i64 [ %i.ba, %_ZN2v88internal7MarkBit4FromEPKNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEE.exit ], [ %i.be, %bb.h ] ; 3 uses
  %i.bb = and i64 %.0.i.i, %i.aw
  %.not16.not.not.i.not.not.not.i.not.not = icmp eq i64 %i.bb, 0
  br i1 %.not16.not.not.i.not.not.not.i.not.not, label %bb.h, label %_ZN2v88internal13MarkingHelper14TryMarkAndPushINS0_12MarkingStateEEEbPNS0_4HeapEPNS0_16MarkingWorklists5LocalEPT_NS1_14WorklistTargetENS0_6TaggedINS0_10HeapObjectEEE.exit

bb.h:                                             ; preds = %bb.g
  %i.bc = or i64 %.0.i.i, %i.aw
  %i.bd = cmpxchg volatile ptr %i.az, i64 %.0.i.i, i64 %i.bc monotonic monotonic, align 8 ; 2 uses
  %i.be = extractvalue { i64, i1 } %i.bd, 0
  %.not.i.i19 = extractvalue { i64, i1 } %i.bd, 1
  br i1 %.not.i.i19, label %_ZN2v88internal7MarkBit3SetILNS0_10AccessModeE0EEEbv.exit, label %bb.g, !llvm.loop !5

_ZN2v88internal7MarkBit3SetILNS0_10AccessModeE0EEEbv.exit: ; preds = %bb.h
  %i.bf = load ptr, ptr %i.am, align 8            ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8            ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  %i.bj = load i16, ptr %i.bi, align 2            ; 2 uses
  %i.bk = load i16, ptr %i.bh, align 2
  %i.bl = icmp eq i16 %i.bj, %i.bk
  br i1 %i.bl, label %bb.i, label %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit, !prof !27

bb.i:                                             ; preds = %_ZN2v88internal7MarkBit3SetILNS0_10AccessModeE0EEEbv.exit
  tail call void @_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bf)
  %i.bm = tail call noundef ptr @_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local10NewSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bf) ; 3 uses
  store ptr %i.bm, ptr %i.bg, align 8
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 2
end_hunk_0
begin_hunk_1_@_ZN2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE23ProcessStrongHeapObjectINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_:bb.a
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 2
  %i.bq = add i16 %i.bn, 1
  store i16 %i.bq, ptr %i.bp, align 2
  %i.br = zext i16 %i.bn to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.br
  store i64 %3, ptr %i.bt, align 8
  br label %_ZN2v88internal13MarkingHelper14TryMarkAndPushINS0_12MarkingStateEEEbPNS0_4HeapEPNS0_16MarkingWorklists5LocalEPT_NS1_14WorklistTargetENS0_6TaggedINS0_10HeapObjectEEE.exit

_ZN2v88internal13MarkingHelper14TryMarkAndPushINS0_12MarkingStateEEEbPNS0_4HeapEPNS0_16MarkingWorklists5LocalEPT_NS1_14WorklistTargetENS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %bb.g, %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit
  tail call void @_ZN2v88internal24ConcurrentMarkingVisitor10RecordSlotINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S6_(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 %1, i64 %2, i64 %3)
  br label %_ZN2v88internal13MarkingHelper16ShouldMarkObjectEPNS0_4HeapENS0_6TaggedINS0_10HeapObjectEEE.exit

_ZN2v88internal13MarkingHelper16ShouldMarkObjectEPNS0_4HeapENS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %bb.a, %bb.b, %_ZN2v88internal13MarkingHelper14TryMarkAndPushINS0_12MarkingStateEEEbPNS0_4HeapEPNS0_16MarkingWorklists5LocalEPT_NS1_14WorklistTargetENS0_6TaggedINS0_10HeapObjectEEE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal24ConcurrentMarkingVisitor10RecordSlotINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S6_(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 %1, i64 %2, i64 %3) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = and i64 %1, -262144                      ; 4 uses
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 262144
  %i.c = and i64 %.sroa.0.0.copyload.i.i, 536
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %_ZN2v88internal20MarkCompactCollector10RecordSlotINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S6_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %3, -262144
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  %i.f = load i64, ptr %i.e, align 262144
  %i.g = and i64 %i.f, 512
  %.not13 = icmp eq i64 %i.g, 0
  br i1 %.not13, label %_ZN2v88internal20MarkCompactCollector10RecordSlotINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S6_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load ptr, ptr %i.h, align 8              ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.k = load atomic ptr, ptr %i.j seq_cst, align 8
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.d, label %_ZN2v88internal19MutablePageMetadata4castEPNS0_19MemoryChunkMetadataE.exit, !prof !27

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.24) #27
  unreachable

_ZN2v88internal19MutablePageMetadata4castEPNS0_19MemoryChunkMetadataE.exit: ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %i.o = load atomic ptr, ptr %i.n seq_cst, align 8
  %.not.i6 = icmp eq ptr %i.o, null
  br i1 %.not.i6, label %bb.e, label %_ZN2v88internal19MutablePageMetadata4castEPKNS0_19MemoryChunkMetadataE.exit, !prof !27

bb.e:                                             ; preds = %_ZN2v88internal19MutablePageMetadata4castEPNS0_19MemoryChunkMetadataE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.24) #27
  unreachable

_ZN2v88internal19MutablePageMetadata4castEPKNS0_19MemoryChunkMetadataE.exit: ; preds = %_ZN2v88internal19MutablePageMetadata4castEPNS0_19MemoryChunkMetadataE.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  %i.q = load i32, ptr %i.p, align 8              ; 3 uses
  %i.r = and i32 %i.q, 16
  %.not14 = icmp eq i32 %i.r, 0
  br i1 %.not14, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal19MutablePageMetadata4castEPKNS0_19MemoryChunkMetadataE.exit
  %i.s = sub i64 %2, %i.a
  tail call void @_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE4EE6InsertILNS0_10AccessModeE0EEEvPNS0_19MutablePageMetadataEm(ptr noundef nonnull %i.i, i64 noundef %i.s)
  br label %_ZN2v88internal20MarkCompactCollector10RecordSlotINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S6_.exit

bb.g:                                             ; preds = %_ZN2v88internal19MutablePageMetadata4castEPKNS0_19MemoryChunkMetadataE.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.u = load i32, ptr %i.t, align 8
  %i.v = and i32 %i.q, 4096
  %i.w = and i32 %i.v, %i.u
  %or.cond.not = icmp eq i32 %i.w, 0
  br i1 %or.cond.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = sub i64 %2, %i.a
  tail call void @_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE5EE6InsertILNS0_10AccessModeE0EEEvPNS0_19MutablePageMetadataEm(ptr noundef nonnull %i.i, i64 noundef %i.x)
  br label %_ZN2v88internal20MarkCompactCollector10RecordSlotINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S6_.exit

bb.i:                                             ; preds = %bb.g
  %i.y = and i32 %i.q, 8192
  %.not15 = icmp eq i32 %i.y, 0
  br i1 %.not15, label %bb.k, label %bb.j, !prof !31

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = add i64 %i.ab, -55464
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 55448
  %i.af = load i8, ptr %i.ae, align 8, !range !28, !noundef !29
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.k, label %_ZN2v88internal20MarkCompactCollector10RecordSlotINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S6_.exit

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ah = sub i64 %2, %i.a
  tail call void @_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE2EE6InsertILNS0_10AccessModeE0EEEvPNS0_19MutablePageMetadataEm(ptr noundef nonnull %i.i, i64 noundef %i.ah)
  br label %_ZN2v88internal20MarkCompactCollector10RecordSlotINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S6_.exit

_ZN2v88internal20MarkCompactCollector10RecordSlotINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S6_.exit: ; preds = %bb.k, %bb.j, %bb.h, %bb.f, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4heap4base8WorklistIN2v88internal9EphemeronELt64EE5Local18PublishPushSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #26
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !nonnull !29, !align !30 ; 4 uses
  %i.e = load ptr, ptr %i.a, align 8              ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(24) %i.d) #26
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.g, ptr %i.h, align 8
  store ptr %i.e, ptr %i.f, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.j = atomicrmw add ptr %i.i, i64 1 monotonic, align 8 ; 0 uses
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(24) %i.d) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4heap4base8WorklistIN2v88internal9EphemeronELt64EE5Local10NewSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load i8, ptr @_ZN4heap4base12WorklistBase18predictable_order_E, align 1, !range !28, !noundef !29
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = tail call noalias noundef dereferenceable_or_null(1040) ptr @malloc(i64 noundef 1040) #31 ; 6 uses
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @malloc_usable_size(ptr noundef %i.c) #26
  %i.e = add i64 %i.d, 1048560
  %i.f = lshr i64 %i.e, 4
  %i.g = trunc i64 %i.f to i16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.6.0.i = phi i16 [ %i.g, %bb.b ], [ 64, %bb.a ]
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.d, label %_ZN4heap4base8WorklistIN2v88internal9EphemeronELt64EE7Segment6CreateEt.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v84base8FatalOOMENS0_7OOMTypeEPKc(i32 noundef 1, ptr noundef nonnull @.str.23) #27
  unreachable

_ZN4heap4base8WorklistIN2v88internal9EphemeronELt64EE7Segment6CreateEt.exit: ; preds = %bb.c
  store i16 %.sroa.6.0.i, ptr %i.c, align 2
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i16 0, ptr %i.h, align 2
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr null, ptr %i.i, align 8
  ret ptr %i.c
}

declare noundef zeroext i1 @_ZN2v88internal16MarkingWorklists5Local10PopContextEPNS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(136), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #23

declare noundef i64 @_ZN2v88internal16MarkingWorklists5Local19SwitchToContextSlowEm(ptr noundef nonnull align 8 dereferenceable(136), i64 noundef) local_unnamed_addr #5

declare void @_ZN2v88internal18NativeContextStats21IncrementExternalSizeEmNS0_6TaggedINS0_3MapEEENS2_INS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(56), i64 noundef, i64, i64) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseImSt4pairIKmmESaIS3_ENS_10_Select1stESt8equal_toImESt4hashImENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixERS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = urem i64 %i.a, %i.c                      ; 3 uses
  %i.e = load ptr, ptr %0, align 8
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.d
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i64, ptr %i.i, align 8
  %i.k = icmp eq i64 %i.a, %i.j
  br i1 %i.k, label %.loopexit30, label %.lr.ph.i.i

bb.c:                                             ; preds = %bb.d
  %i.l = icmp eq i64 %i.a, %i.o
  br i1 %i.l, label %.loopexit30, label %.lr.ph.i.i, !llvm.loop !253

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.020.i.i = phi ptr [ %i.m, %bb.c ], [ %i.h, %bb.b ]
  %i.m = load ptr, ptr %.020.i.i, align 8         ; 4 uses
  %.not18.i.i = icmp eq ptr %i.m, null
  br i1 %.not18.i.i, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i64, ptr %i.n, align 8              ; 2 uses
  %i.p = urem i64 %i.o, %i.c
  %.not19.i.i = icmp eq i64 %i.p, %i.d
  br i1 %.not19.i.i, label %bb.c, label %..loopexit_crit_edge21.i.i, !llvm.loop !253

..loopexit_crit_edge21.i.i:                       ; preds = %bb.d
  br label %.loopexit, !llvm.loop !253

.loopexit:                                        ; preds = %.lr.ph.i.i, %bb.a, %..loopexit_crit_edge21.i.i
  %i.q = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28 ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i64, ptr %1, align 8
  store i64 %i.s, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 0, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load i64, ptr %i.b, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.x = load i64, ptr %i.w, align 8
  %i.y = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 noundef %i.v, i64 noundef %i.x, i64 noundef 1) #26 ; 2 uses
  %i.z = extractvalue { i8, i64 } %i.y, 0
  %i.aa = trunc i8 %i.z to i1
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.loopexit
  %i.ab = extractvalue { i8, i64 } %i.y, 1
  tail call void @_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.ab)
  %i.ac = load i64, ptr %i.b, align 8
  %i.ad = urem i64 %i.a, %i.ac
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.loopexit
  %.0.i19 = phi i64 [ %i.ad, %bb.e ], [ %i.d, %.loopexit ] ; 2 uses
  %i.ae = load ptr, ptr %0, align 8               ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.0.i19
  %i.ag = load ptr, ptr %i.af, align 8            ; 3 uses
  %.not.i.i20 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i20, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = load ptr, ptr %i.ag, align 8
  store ptr %i.ah, ptr %i.q, align 8
  store ptr %i.q, ptr %i.ag, align 8
  br label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8            ; 3 uses
  store ptr %i.aj, ptr %i.q, align 8
  store ptr %i.q, ptr %i.ai, align 8
  %.not11.i.i = icmp eq ptr %i.aj, null
  br i1 %.not11.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load i64, ptr %i.b, align 8
  %i.am = load i64, ptr %i.ak, align 8
  %i.an = urem i64 %i.am, %i.al
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.an
  store ptr %i.q, ptr %i.ao, align 8
  %.pre = load ptr, ptr %0, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ap = phi ptr [ %.pre, %bb.i ], [ %i.ae, %bb.h ]
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.0.i19
  store ptr %i.ai, ptr %i.aq, align 8
  br label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit

_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %bb.j, %bb.g
  %i.ar = load i64, ptr %i.w, align 8
  %i.as = add i64 %i.ar, 1
  store i64 %i.as, ptr %i.w, align 8
  br label %.loopexit30

.loopexit30:                                      ; preds = %bb.c, %bb.b, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit
  %.pn = phi ptr [ %i.q, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit ], [ %i.h, %bb.b ], [ %i.m, %bb.c ]
  %.1 = getelementptr inbounds nuw i8, ptr %.pn, i64 16
  ret ptr %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !27

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8
  br label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmmELb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !27

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #27
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmmELb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #28 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmmELb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmmELb0EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  store ptr null, ptr %i.g, align 8
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.j
  %.031 = phi i64 [ %.1, %bb.j ], [ 0, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.j ], [ %i.h, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %i.i = load ptr, ptr %.02530, align 8           ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 8
  %i.k = load i64, ptr %i.j, align 8
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8
  store ptr %i.o, ptr %.02530, align 8
  store ptr %.02530, ptr %i.g, align 8
  store ptr %i.g, ptr %i.m, align 8
  %i.p = load ptr, ptr %.02530, align 8
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.q, align 8
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8
  store ptr %i.r, ptr %.02530, align 8
  %i.s = load ptr, ptr %i.m, align 8
  store ptr %.02530, ptr %i.s, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.1 = phi i64 [ %.031, %bb.i ], [ %i.l, %bb.h ], [ %i.l, %bb.g ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !254

._crit_edge:                                      ; preds = %bb.j, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.t = load ptr, ptr %0, align 8                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8
  %i.y = shl i64 %i.x, 3
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.y) #29
  br label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.z, align 8
  store ptr %.0.i, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5LocalD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.d = load i16, ptr %i.c, align 2
  %.not6 = icmp eq i16 %i.d, 0
  br i1 %.not6, label %.critedge, label %bb.c, !prof !31

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.37) #27
  unreachable

.critedge:                                        ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not2 = icmp eq ptr %i.f, null
  br i1 %.not2, label %.critedge4, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.h = load i16, ptr %i.g, align 2
  %.not7 = icmp eq i16 %i.h, 0
  br i1 %.not7, label %.critedge4, label %bb.e, !prof !31

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.38) #27
  unreachable

.critedge4:                                       ; preds = %.critedge, %bb.d
  %i.i = tail call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #26
  %i.j = icmp eq ptr %i.b, %i.i
  br i1 %i.j, label %_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit, label %bb.f

bb.f:                                             ; preds = %.critedge4
  tail call void @free(ptr noundef %i.b) #26
  br label %_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit

_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit: ; preds = %.critedge4, %bb.f
  %i.k = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.l = tail call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #26
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit5, label %bb.g

bb.g:                                             ; preds = %_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit
  tail call void @free(ptr noundef %i.k) #26
  br label %_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit5

_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit5: ; preds = %_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local13DeleteSegmentEPNS0_8internal11SegmentBaseE.exit, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal17ConcurrentMarking9TaskStateD2Ev(ptr noundef nonnull align 8 dead_on_return(680) dereferenceable(680) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  %1 = alloca %class.anon.1171, align 8           ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIN2v88internal6TaggedINS1_14AllocationSiteEEESt4pairIKS4_mESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ENS1_6Object6HasherENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.06.i.i.i.i, align 8      ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 32) #29
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIN2v88internal6TaggedINS1_14AllocationSiteEEESt4pairIKS4_mESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ENS1_6Object6HasherENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !16

_ZNSt10_HashtableIN2v88internal6TaggedINS1_14AllocationSiteEEESt4pairIKS4_mESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ENS1_6Object6HasherENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.a
  %i.e = load ptr, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8
  %i.h = shl i64 %i.g, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.e, i8 0, i64 %i.h, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.i = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt13unordered_mapIN2v88internal6TaggedINS1_14AllocationSiteEEEmNS1_6Object6HasherESt8equal_toIS4_ESaISt4pairIKS4_mEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableIN2v88internal6TaggedINS1_14AllocationSiteEEESt4pairIKS4_mESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ENS1_6Object6HasherENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  %i.l = load i64, ptr %i.f, align 8
  %i.m = shl i64 %i.l, 3
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #29
  br label %_ZNSt13unordered_mapIN2v88internal6TaggedINS1_14AllocationSiteEEEmNS1_6Object6HasherESt8equal_toIS4_ESaISt4pairIKS4_mEEED2Ev.exit

_ZNSt13unordered_mapIN2v88internal6TaggedINS1_14AllocationSiteEEEmNS1_6Object6HasherESt8equal_toIS4_ESaISt4pairIKS4_mEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIN2v88internal6TaggedINS1_14AllocationSiteEEESt4pairIKS4_mESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ENS1_6Object6HasherENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not5.i.i.i.i.i, label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt13unordered_mapIN2v88internal6TaggedINS1_14AllocationSiteEEEmNS1_6Object6HasherESt8equal_toIS4_ESaISt4pairIKS4_mEEED2Ev.exit, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.p, %_ZNSt13unordered_mapIN2v88internal6TaggedINS1_14AllocationSiteEEEmNS1_6Object6HasherESt8equal_toIS4_ESaISt4pairIKS4_mEEED2Ev.exit ] ; 2 uses
  %i.q = load ptr, ptr %.06.i.i.i.i.i, align 8    ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i, i64 noundef 24) #29
  %.not.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !255

_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNSt13unordered_mapIN2v88internal6TaggedINS1_14AllocationSiteEEEmNS1_6Object6HasherESt8equal_toIS4_ESaISt4pairIKS4_mEEED2Ev.exit
  %i.r = load ptr, ptr %i.n, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8
  %i.u = shl i64 %i.t, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.r, i8 0, i64 %i.u, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  %i.v = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZN2v88internal18NativeContextStatsD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i
  %i.y = load i64, ptr %i.s, align 8
  %i.z = shl i64 %i.y, 3
  tail call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #29
  br label %_ZN2v88internal18NativeContextStatsD2Ev.exit

_ZN2v88internal18NativeContextStatsD2Ev.exit:     ; preds = %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i, %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 5 uses
  %i.ab = load i64, ptr %i.aa, align 8            ; 2 uses
  %i.ac = icmp ne i64 %i.ab, 0
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = icmp ult i64 %i.ab, 2
  br i1 %i.ad, label %bb.d, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal19MutablePageMetadataESt10unique_ptrINS4_10TypedSlotsESt14default_deleteIS8_EEEENS3_4base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_SB_EEE7deallocEv.exit.i.i.i

bb.d:                                             ; preds = %_ZN2v88internal18NativeContextStatsD2Ev.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.af = load i64, ptr %i.ae, align 8
  %.not.i.i.i.i1 = icmp ult i64 %i.af, 131072
  br i1 %.not.i.i.i.i1, label %_ZN4heap4base18CachedUnorderedMapIPN2v88internal19MutablePageMetadataESt10unique_ptrINS3_10TypedSlotsESt14default_deleteIS7_EENS2_4base4hashIS5_EEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.ah = load ptr, ptr %i.ag, align 8            ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4heap4base18CachedUnorderedMapIPN2v88internal19MutablePageMetadataESt10unique_ptrINS3_10TypedSlotsESt14default_deleteIS7_EENS2_4base4hashIS5_EEED2Ev.exit, label %_ZNKSt14default_deleteIN2v88internal10TypedSlotsEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN2v88internal10TypedSlotsEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void %i.ak(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ah) #26, !inline_history !256
  br label %_ZN4heap4base18CachedUnorderedMapIPN2v88internal19MutablePageMetadataESt10unique_ptrINS3_10TypedSlotsESt14default_deleteIS7_EENS2_4base4hashIS5_EEED2Ev.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal19MutablePageMetadataESt10unique_ptrINS4_10TypedSlotsESt14default_deleteIS8_EEEENS3_4base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_SB_EEE7deallocEv.exit.i.i.i: ; preds = %_ZN2v88internal18NativeContextStatsD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  store ptr %i.aa, ptr %1, align 8
  call void @_ZN4absl18container_internal20IterateOverFullSlotsERKNS0_12CommonFieldsEmNS_11FunctionRefIFvPKNS0_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i64 noundef 16, ptr nonnull %1, ptr nonnull @_ZN4absl19functional_internal12InvokeObjectIZNS_18container_internal12raw_hash_setINS2_17FlatHashMapPolicyIPN2v88internal19MutablePageMetadataESt10unique_ptrINS6_10TypedSlotsESt14default_deleteISA_EEEENS5_4base4hashIS8_EENS2_6HashEqIS8_vE2EqESaISt4pairIKS8_SD_EEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_vJSS_ST_EEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  %i.al = load i64, ptr %i.aa, align 8            ; 2 uses
  %i.am = icmp ne i64 %i.al, 0
  call void @llvm.assume(i1 %i.am)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = and i64 %i.ao, 65536
  %.not.i.i.i.i.i.i = icmp ne i64 %i.ap, 0
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 552
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.aq, align 8
  call void @_ZN4absl18container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS0_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i64 noundef %i.al, ptr noundef %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, i64 noundef 16, i64 noundef 8, i1 noundef zeroext %.not.i.i.i.i.i.i)
  br label %_ZN4heap4base18CachedUnorderedMapIPN2v88internal19MutablePageMetadataESt10unique_ptrINS3_10TypedSlotsESt14default_deleteIS7_EENS2_4base4hashIS5_EEED2Ev.exit

_ZN4heap4base18CachedUnorderedMapIPN2v88internal19MutablePageMetadataESt10unique_ptrINS3_10TypedSlotsESt14default_deleteIS7_EENS2_4base4hashIS5_EEED2Ev.exit: ; preds = %bb.d, %bb.e, %_ZNKSt14default_deleteIN2v88internal10TypedSlotsEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal19MutablePageMetadataESt10unique_ptrINS4_10TypedSlotsESt14default_deleteIS8_EEEENS3_4base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_SB_EEE7deallocEv.exit.i.i.i
  ret void
}

declare void @_ZN4absl18container_internal20IterateOverFullSlotsERKNS0_12CommonFieldsEmNS_11FunctionRefIFvPKNS0_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, ptr, ptr) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl19functional_internal12InvokeObjectIZNS_18container_internal12raw_hash_setINS2_17FlatHashMapPolicyIPN2v88internal19MutablePageMetadataESt10unique_ptrINS6_10TypedSlotsESt14default_deleteISA_EEEENS5_4base4hashIS8_EENS2_6HashEqIS8_vE2EqESaISt4pairIKS8_SD_EEE13destroy_slotsEvEUlPKNS2_6ctrl_tEPvE_vJSS_ST_EEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE(ptr %0, ptr noundef %1, ptr noundef %2) #4 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt6invokeIRKZN4absl18container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPN2v88internal19MutablePageMetadataESt10unique_ptrINS5_10TypedSlotsESt14default_deleteIS9_EEEENS4_4base4hashIS7_EENS1_6HashEqIS7_vE2EqESaISt4pairIKS7_SC_EEE13destroy_slotsEvEUlPKNS1_6ctrl_tEPvE_JSR_SS_EENSt13invoke_resultIT_JDpT0_EE4typeEOSX_DpOSY_.exit, label %_ZNKSt14default_deleteIN2v88internal10TypedSlotsEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN2v88internal10TypedSlotsEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #26, !inline_history !257
  br label %_ZSt6invokeIRKZN4absl18container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPN2v88internal19MutablePageMetadataESt10unique_ptrINS5_10TypedSlotsESt14default_deleteIS9_EEEENS4_4base4hashIS7_EENS1_6HashEqIS7_vE2EqESaISt4pairIKS7_SC_EEE13destroy_slotsEvEUlPKNS1_6ctrl_tEPvE_JSR_SS_EENSt13invoke_resultIT_JDpT0_EE4typeEOSX_DpOSY_.exit

_ZSt6invokeIRKZN4absl18container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPN2v88internal19MutablePageMetadataESt10unique_ptrINS5_10TypedSlotsESt14default_deleteIS9_EEEENS4_4base4hashIS7_EENS1_6HashEqIS7_vE2EqESaISt4pairIKS7_SC_EEE13destroy_slotsEvEUlPKNS1_6ctrl_tEPvE_JSR_SS_EENSt13invoke_resultIT_JDpT0_EE4typeEOSX_DpOSY_.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN2v88internal10TypedSlotsEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  ret void
}

declare noundef i64 @_ZNKSt8__detail20_Prime_rehash_policy11_M_next_bktEm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef) local_unnamed_addr #5

declare void @_ZN2v88internal7Isolate16PushParamsAndDieEPvS2_S2_S2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(64320), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare noundef i32 @_ZNK2v88internal10HeapObject11SizeFromMapENS0_6TaggedINS0_3MapEEE(ptr noundef nonnull align 8 dereferenceable(8), i64) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal17DoubleStringCache14BodyDescriptor11IterateBodyINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEEiPT_(i64 %0, i64 %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = icmp sgt i32 %2, 16
  br i1 %i.a, label %.lr.ph31, label %._crit_edge

.lr.ph31:                                         ; preds = %bb.a
  %i.b = add i64 %1, -1                           ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.d = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.f = and i64 %1, -262144                      ; 4 uses
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE17VisitPointersImplINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph31, %_ZN2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE17VisitPointersImplINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit
  %.030 = phi i32 [ 16, %.lr.ph31 ], [ %i.dx, %_ZN2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE17VisitPointersImplINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit ] ; 2 uses
  %i.i = sext i32 %.030 to i64
  %i.j = add i64 %i.b, %i.i                       ; 2 uses
  %i.k = add i64 %i.j, 16                         ; 2 uses
  %.sroa.021.028 = add i64 %i.j, 8                ; 2 uses
  %i.l = icmp ult i64 %.sroa.021.028, %i.k
  br i1 %i.l, label %.lr.ph, label %_ZN2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE17VisitPointersImplINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit

.lr.ph:                                           ; preds = %bb.b, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit
  %.sroa.021.029 = phi i64 [ %.sroa.021.0, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit ], [ %.sroa.021.028, %bb.b ] ; 5 uses
  %i.m = inttoptr i64 %.sroa.021.029 to ptr       ; 2 uses
  %i.n = load atomic volatile i64, ptr %i.m monotonic, align 8 ; 6 uses
  %i.o = trunc i64 %i.n to i1
  br i1 %i.o, label %bb.c, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit

bb.c:                                             ; preds = %.lr.ph
  %i.p = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.q = and i64 %i.n, -262144
  %i.r = inttoptr i64 %i.q to ptr                 ; 4 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.r, align 262144 ; 3 uses
  %i.s = and i64 %.sroa.0.0.copyload.i.i, 64
  %.not.i.i = icmp eq i64 %i.s, 0
  br i1 %.not.i.i, label %.critedge.i.i, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit

.critedge.i.i:                                    ; preds = %bb.c
  %i.t = and i64 %.sroa.0.0.copyload.i.i, 1
  %.not.i18.i = icmp eq i64 %i.t, 0
  br i1 %.not.i18.i, label %bb.e, label %bb.d, !prof !31

bb.d:                                             ; preds = %.critedge.i.i
  %i.u = ptrtoint ptr %i.p to i64
  %i.v = add i64 %i.u, -55464
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 55448
  %i.y = load i8, ptr %i.x, align 8, !range !28, !noundef !29
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.e, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit

bb.e:                                             ; preds = %bb.d, %.critedge.i.i
  %i.aa = and i64 %.sroa.0.0.copyload.i.i, 32
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %bb.f, label %_ZNKRSt8optionalIN2v88internal13MarkingHelper14WorklistTargetEE5valueEv.exit.i

bb.f:                                             ; preds = %bb.e
  %i.ab = add nsw i64 %i.n, -1
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = load atomic volatile i64, ptr %i.ac monotonic, align 8
  %i.ae = add i64 %i.ad, 11
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = load atomic volatile i16, ptr %i.af monotonic, align 2
  %i.ah = and i16 %i.ag, -2
  %i.ai = icmp eq i16 %i.ah, 270
  br i1 %i.ai, label %bb.g, label %_ZNKRSt8optionalIN2v88internal13MarkingHelper14WorklistTargetEE5valueEv.exit.i, !prof !27

bb.g:                                             ; preds = %bb.f
  %i.aj = ptrtoint ptr %i.p to i64
  %i.ak = add i64 %i.aj, -55464
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load atomic volatile i64, ptr %i.d monotonic, align 8
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 80
  %i.ar = load atomic ptr, ptr %i.aq seq_cst, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load i32, ptr %i.as, align 8
  %i.au = zext i32 %i.at to i64
  %i.av = inttoptr i64 %i.au to ptr
  tail call void @_ZN2v88internal7Isolate20PushStackTraceAndDieEPvS2_S2_S2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(64320) %i.al, ptr noundef %i.an, ptr noundef nonnull %i.d, ptr noundef nonnull %i.m, ptr noundef %i.av, ptr noundef null, ptr noundef null) #26
  br label %_ZNKRSt8optionalIN2v88internal13MarkingHelper14WorklistTargetEE5valueEv.exit.i

_ZNKRSt8optionalIN2v88internal13MarkingHelper14WorklistTargetEE5valueEv.exit.i: ; preds = %bb.g, %bb.f, %bb.e
  %i.aw = load ptr, ptr %i.e, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 80
  %i.ba = load atomic ptr, ptr %i.az seq_cst, align 8
  %.not.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i, label %bb.h, label %_ZN2v88internal7MarkBit4FromEPKNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEE.exit.i, !prof !27

bb.h:                                             ; preds = %_ZNKRSt8optionalIN2v88internal13MarkingHelper14WorklistTargetEE5valueEv.exit.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.24) #27
  unreachable

_ZN2v88internal7MarkBit4FromEPKNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEE.exit.i: ; preds = %_ZNKRSt8optionalIN2v88internal13MarkingHelper14WorklistTargetEE5valueEv.exit.i
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = add i64 %i.bb, 336
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = lshr i64 %i.n, 3
  %i.bf = and i64 %i.be, 63
  %i.bg = shl nuw i64 1, %i.bf                    ; 2 uses
  %i.bh = lshr i64 %i.n, 9
  %i.bi = and i64 %i.bh, 511
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bi ; 2 uses
  %i.bk = load atomic volatile i64, ptr %i.bj monotonic, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %_ZN2v88internal7MarkBit4FromEPKNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEE.exit.i
  %.0.i.i.i = phi i64 [ %i.bk, %_ZN2v88internal7MarkBit4FromEPKNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEE.exit.i ], [ %i.bo, %bb.j ] ; 3 uses
  %i.bl = and i64 %.0.i.i.i, %i.bg
  %.not16.not.not.i.not.not.not.i.not.not.i = icmp eq i64 %i.bl, 0
  br i1 %.not16.not.not.i.not.not.not.i.not.not.i, label %bb.j, label %_ZN2v88internal13MarkingHelper14TryMarkAndPushINS0_12MarkingStateEEEbPNS0_4HeapEPNS0_16MarkingWorklists5LocalEPT_NS1_14WorklistTargetENS0_6TaggedINS0_10HeapObjectEEE.exit.i

bb.j:                                             ; preds = %bb.i
  %i.bm = or i64 %.0.i.i.i, %i.bg
  %i.bn = cmpxchg volatile ptr %i.bj, i64 %.0.i.i.i, i64 %i.bm monotonic monotonic, align 8 ; 2 uses
  %i.bo = extractvalue { i64, i1 } %i.bn, 0
  %.not.i.i19.i = extractvalue { i64, i1 } %i.bn, 1
  br i1 %.not.i.i19.i, label %_ZN2v88internal7MarkBit3SetILNS0_10AccessModeE0EEEbv.exit.i, label %bb.i, !llvm.loop !5

_ZN2v88internal7MarkBit3SetILNS0_10AccessModeE0EEEbv.exit.i: ; preds = %bb.j
  %i.bp = load ptr, ptr %i.aw, align 8            ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 3 uses
  %i.br = load ptr, ptr %i.bq, align 8            ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 2
  %i.bt = load i16, ptr %i.bs, align 2            ; 2 uses
  %i.bu = load i16, ptr %i.br, align 2
  %i.bv = icmp eq i16 %i.bt, %i.bu
  br i1 %i.bv, label %bb.k, label %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i, !prof !27

bb.k:                                             ; preds = %_ZN2v88internal7MarkBit3SetILNS0_10AccessModeE0EEEbv.exit.i
  %i.bw = tail call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #26
  %.not.i12 = icmp eq ptr %i.br, %i.bw
  br i1 %.not.i12, label %_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bx = load ptr, ptr %i.bp, align 8, !nonnull !29, !align !30 ; 4 uses
  %i.by = load ptr, ptr %i.bq, align 8            ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bx) #26
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store ptr %i.ca, ptr %i.cb, align 8
  store ptr %i.by, ptr %i.bz, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.cd = atomicrmw add ptr %i.cc, i64 1 monotonic, align 8 ; 0 uses
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bx) #26
  br label %_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv.exit

_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv.exit: ; preds = %bb.k, %bb.l
  %i.ce = load i8, ptr @_ZN4heap4base12WorklistBase18predictable_order_E, align 1, !range !28, !noundef !29
  %i.cf = trunc nuw i8 %i.ce to i1
  %i.cg = tail call noalias noundef dereferenceable_or_null(528) ptr @malloc(i64 noundef 528) #31 ; 7 uses
  br i1 %i.cf, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv.exit
  %i.ch = tail call noundef i64 @malloc_usable_size(ptr noundef %i.cg) #26
  %i.ci = add i64 %i.ch, 524272
  %i.cj = lshr i64 %i.ci, 3
  %i.ck = trunc i64 %i.cj to i16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv.exit
  %.sroa.6.0.i.i = phi i16 [ %i.ck, %bb.m ], [ 64, %_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv.exit ]
  %.not.i.i11 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i11, label %bb.o, label %_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local10NewSegmentEv.exit

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN2v84base8FatalOOMENS0_7OOMTypeEPKc(i32 noundef 1, ptr noundef nonnull @.str.23) #27
  unreachable

_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local10NewSegmentEv.exit: ; preds = %bb.n
  store i16 %.sroa.6.0.i.i, ptr %i.cg, align 2
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 2 ; 2 uses
  store i16 0, ptr %i.cl, align 2
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store ptr null, ptr %i.cm, align 8
  store ptr %i.cg, ptr %i.bq, align 8
  %.pre.i.i = load i16, ptr %i.cl, align 2
  br label %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i

_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i: ; preds = %_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local10NewSegmentEv.exit, %_ZN2v88internal7MarkBit3SetILNS0_10AccessModeE0EEEbv.exit.i
  %i.cn = phi i16 [ %i.bt, %_ZN2v88internal7MarkBit3SetILNS0_10AccessModeE0EEEbv.exit.i ], [ %.pre.i.i, %_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local10NewSegmentEv.exit ] ; 2 uses
  %i.co = phi ptr [ %i.br, %_ZN2v88internal7MarkBit3SetILNS0_10AccessModeE0EEEbv.exit.i ], [ %i.cg, %_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local10NewSegmentEv.exit ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 2
  %i.cq = add i16 %i.cn, 1
  store i16 %i.cq, ptr %i.cp, align 2
  %i.cr = zext i16 %i.cn to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.cr
  store i64 %i.n, ptr %i.ct, align 8
  br label %_ZN2v88internal13MarkingHelper14TryMarkAndPushINS0_12MarkingStateEEEbPNS0_4HeapEPNS0_16MarkingWorklists5LocalEPT_NS1_14WorklistTargetENS0_6TaggedINS0_10HeapObjectEEE.exit.i

_ZN2v88internal13MarkingHelper14TryMarkAndPushINS0_12MarkingStateEEEbPNS0_4HeapEPNS0_16MarkingWorklists5LocalEPT_NS1_14WorklistTargetENS0_6TaggedINS0_10HeapObjectEEE.exit.i: ; preds = %bb.i, %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.g, align 262144
  %i.cu = and i64 %.sroa.0.0.copyload.i.i.i, 536
  %.not.i9 = icmp eq i64 %i.cu, 0
  br i1 %.not.i9, label %bb.p, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit

bb.p:                                             ; preds = %_ZN2v88internal13MarkingHelper14TryMarkAndPushINS0_12MarkingStateEEEbPNS0_4HeapEPNS0_16MarkingWorklists5LocalEPT_NS1_14WorklistTargetENS0_6TaggedINS0_10HeapObjectEEE.exit.i
  %i.cv = load i64, ptr %i.r, align 262144
  %i.cw = and i64 %i.cv, 512
  %.not13.i = icmp eq i64 %i.cw, 0
  br i1 %.not13.i, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cx = load ptr, ptr %i.h, align 8             ; 6 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 80
  %i.cz = load atomic ptr, ptr %i.cy seq_cst, align 8
  %.not.i.i10 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i10, label %bb.r, label %_ZN2v88internal19MutablePageMetadata4castEPNS0_19MemoryChunkMetadataE.exit.i, !prof !27

bb.r:                                             ; preds = %bb.q
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.24) #27
  unreachable

_ZN2v88internal19MutablePageMetadata4castEPNS0_19MemoryChunkMetadataE.exit.i: ; preds = %bb.q
  %i.da = load ptr, ptr %i.ax, align 8            ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 80
  %i.dc = load atomic ptr, ptr %i.db seq_cst, align 8
  %.not.i6.i = icmp eq ptr %i.dc, null
  br i1 %.not.i6.i, label %bb.s, label %_ZN2v88internal19MutablePageMetadata4castEPKNS0_19MemoryChunkMetadataE.exit.i, !prof !27

bb.s:                                             ; preds = %_ZN2v88internal19MutablePageMetadata4castEPNS0_19MemoryChunkMetadataE.exit.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.24) #27
  unreachable

_ZN2v88internal19MutablePageMetadata4castEPKNS0_19MemoryChunkMetadataE.exit.i: ; preds = %_ZN2v88internal19MutablePageMetadata4castEPNS0_19MemoryChunkMetadataE.exit.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 88
  %i.de = load i32, ptr %i.dd, align 8            ; 3 uses
  %i.df = and i32 %i.de, 16
  %.not14.i = icmp eq i32 %i.df, 0
  br i1 %.not14.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZN2v88internal19MutablePageMetadata4castEPKNS0_19MemoryChunkMetadataE.exit.i
  %i.dg = sub i64 %.sroa.021.029, %i.f
  tail call void @_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE4EE6InsertILNS0_10AccessModeE0EEEvPNS0_19MutablePageMetadataEm(ptr noundef nonnull %i.cx, i64 noundef %i.dg)
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit

bb.u:                                             ; preds = %_ZN2v88internal19MutablePageMetadata4castEPKNS0_19MemoryChunkMetadataE.exit.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cx, i64 88
  %i.di = load i32, ptr %i.dh, align 8
  %i.dj = and i32 %i.de, 4096
  %i.dk = and i32 %i.dj, %i.di
  %or.cond.not.i = icmp eq i32 %i.dk, 0
  br i1 %or.cond.not.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dl = sub i64 %.sroa.021.029, %i.f
  tail call void @_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE5EE6InsertILNS0_10AccessModeE0EEEvPNS0_19MutablePageMetadataEm(ptr noundef nonnull %i.cx, i64 noundef %i.dl)
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit

bb.w:                                             ; preds = %bb.u
  %i.dm = and i32 %i.de, 8192
  %.not15.i = icmp eq i32 %i.dm, 0
  br i1 %.not15.i, label %bb.y, label %bb.x, !prof !31

bb.x:                                             ; preds = %bb.w
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cx, i64 64
  %i.do = load ptr, ptr %i.dn, align 8
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = add i64 %i.dp, -55464
  %i.dr = inttoptr i64 %i.dq to ptr
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 55448
  %i.dt = load i8, ptr %i.ds, align 8, !range !28, !noundef !29
  %i.du = trunc nuw i8 %i.dt to i1
  br i1 %i.du, label %bb.y, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.dv = sub i64 %.sroa.021.029, %i.f
  tail call void @_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE2EE6InsertILNS0_10AccessModeE0EEEvPNS0_19MutablePageMetadataEm(ptr noundef nonnull %i.cx, i64 noundef %i.dv)
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %.lr.ph, %bb.y, %bb.x, %bb.v, %bb.t, %bb.p, %_ZN2v88internal13MarkingHelper14TryMarkAndPushINS0_12MarkingStateEEEbPNS0_4HeapEPNS0_16MarkingWorklists5LocalEPT_NS1_14WorklistTargetENS0_6TaggedINS0_10HeapObjectEEE.exit.i, %bb.c, %bb.d
  %.sroa.021.0 = add i64 %.sroa.021.029, 8        ; 2 uses
  %i.dw = icmp ult i64 %.sroa.021.0, %i.k
  br i1 %i.dw, label %.lr.ph, label %_ZN2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE17VisitPointersImplINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit, !llvm.loop !3

_ZN2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE17VisitPointersImplINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit: ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit, %bb.b
  %i.dx = add i32 %.030, 16                       ; 2 uses
  %i.dy = icmp slt i32 %i.dx, %2
  br i1 %i.dy, label %bb.b, label %._crit_edge, !llvm.loop !258
}

declare i64 @_ZN2v88internal19ObjectHashTableBaseINS0_18EphemeronHashTableENS0_23EphemeronHashTableShapeEE7ValueAtENS0_13InternalIndexE(ptr noundef nonnull align 4 dereferenceable(16), i64) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE11try_emplaceIS7_Li0EJETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS0_12raw_hash_setISC_SE_SF_SJ_E14const_iteratorEEE5valueEiE4typeELi0EEESG_INSP_8iteratorEbERSH_DpOT1_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.1328") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !261)
  tail call void @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE22find_or_prepare_insertIS7_EESG_INSK_8iteratorEbERKT_(ptr dead_on_unwind writable sret(%"struct.std::pair.1328") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !range !28, !alias.scope !261, !noundef !29
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE16try_emplace_implIRSH_JEEESG_INS0_12raw_hash_setISC_SE_SF_SJ_E8iteratorEbEOT_DpOT0_.exit

bb.b:                                             ; preds = %bb.a
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !261 ; 6 uses
  %i.d = load i64, ptr %2, align 8, !noalias !261
  store i64 %i.d, ptr %.sroa.2.0.copyload.i, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i, i64 32 ; 3 uses
  store i64 0, ptr %i.f, align 8
  store ptr %i.f, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i, i64 16
  store ptr %i.f, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i, i64 40
  store ptr %i.i, ptr %i.h, align 8
  br label %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE16try_emplace_implIRSH_JEEESG_INS0_12raw_hash_setISC_SE_SF_SJ_E8iteratorEbEOT_DpOT0_.exit

_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE16try_emplace_implIRSH_JEEESG_INS0_12raw_hash_setISC_SE_SF_SJ_E8iteratorEbEOT_DpOT0_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE8iteratorptEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !27

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.30, i64 61), i32 noundef 1251, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.32) #26
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %i.a, @_ZN4absl18container_internal19kDefaultIterControlE
  br i1 %i.c, label %bb.d, label %bb.e, !prof !27

bb.d:                                             ; preds = %bb.c
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.30, i64 61), i32 noundef 1255, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.32) #26
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.d = load i8, ptr %i.a, align 1
  %i.e = icmp sgt i8 %i.d, -1
  br i1 %i.e, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE8iteratordeEv.exit, label %bb.f, !prof !31

bb.f:                                             ; preds = %bb.e
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.30, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.32) #26
  tail call void @llvm.trap()
  unreachable

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE8iteratordeEv.exit: ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  ret ptr %i.g
}

declare i32 @_ZNK2v88internal16HeapObjectLayout15SafeSizeFromMapENS0_6TaggedINS0_3MapEEE(ptr noundef nonnull align 4 dereferenceable(8), i64) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_18EphemeronHashTableEEELt64EE5Local18PublishPushSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #26
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !nonnull !29, !align !30 ; 4 uses
  %i.e = load ptr, ptr %i.a, align 8              ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(24) %i.d) #26
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.g, ptr %i.h, align 8
  store ptr %i.e, ptr %i.f, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.j = atomicrmw add ptr %i.i, i64 1 monotonic, align 8 ; 0 uses
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(24) %i.d) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_18EphemeronHashTableEEELt64EE5Local10NewSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load i8, ptr @_ZN4heap4base12WorklistBase18predictable_order_E, align 1, !range !28, !noundef !29
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = tail call noalias noundef dereferenceable_or_null(528) ptr @malloc(i64 noundef 528) #31 ; 6 uses
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @malloc_usable_size(ptr noundef %i.c) #26
  %i.e = add i64 %i.d, 524272
  %i.f = lshr i64 %i.e, 3
  %i.g = trunc i64 %i.f to i16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.6.0.i = phi i16 [ %i.g, %bb.b ], [ 64, %bb.a ]
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.d, label %_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_18EphemeronHashTableEEELt64EE7Segment6CreateEt.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v84base8FatalOOMENS0_7OOMTypeEPKc(i32 noundef 1, ptr noundef nonnull @.str.23) #27
  unreachable

_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_18EphemeronHashTableEEELt64EE7Segment6CreateEt.exit: ; preds = %bb.c
  store i16 %.sroa.6.0.i, ptr %i.c, align 2
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i16 0, ptr %i.h, align 2
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr null, ptr %i.i, align 8
  ret ptr %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE22find_or_prepare_insertIS7_EESG_INSK_8iteratorEbERKT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.1328") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #19 comdat align 2 {
bb.a:
  %3 = alloca %"struct.absl::container_internal::HashKey.1342", align 8 ; 5 uses
  %i.a = load i64, ptr %1, align 8                ; 4 uses
  %i.b = icmp ult i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !266)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noalias !266
  %.not.i.i = icmp ult i64 %i.d, 131072
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.e, align 8, !noalias !266 ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.0.0.copyload.i.i.i.i.i, align 8, !noalias !266
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %2, align 8, !noalias !266
  %i.f = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr @_ZN4absl18container_internal11kSooControlE, ptr %0, align 8, !alias.scope !266
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.copyload.i.i.i.i.i, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !266
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.g, align 8, !alias.scope !266
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE28find_or_prepare_insert_smallIS7_EESG_INSK_8iteratorEbERKT_.exit

bb.e:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26, !noalias !266
  store ptr %1, ptr %3, align 8, !noalias !266
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.h, align 8, !noalias !266
  %i.i = call { ptr, ptr } @_ZN4absl18container_internal24PrepareInsertSmallNonSooERNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE18GetPolicyFunctionsEvE5value, ptr nonnull %3, ptr nonnull @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyIN2v88internal6Object6HasherENS5_6TaggedINS5_10HeapObjectEEELb0EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE) #26, !noalias !266 ; 2 uses
  %i.j = extractvalue { ptr, ptr } %i.i, 0        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  %i.k = extractvalue { ptr, ptr } %i.i, 1
  store ptr %i.j, ptr %0, align 8, !alias.scope !266
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !266
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.l, align 8, !alias.scope !266
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26, !noalias !266
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE28find_or_prepare_insert_smallIS7_EESG_INSK_8iteratorEbERKT_.exit

bb.f:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !267)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i4 = load ptr, ptr %i.m, align 8, !noalias !267 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i4, i32 0, i32 1, i32 1), !noalias !267
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i64, ptr %i.n, align 8, !noalias !267
  %sext.i = shl i64 %i.o, 48
  %i.p = ashr exact i64 %sext.i, 48
  %.sroa.0.0.copyload.i.i = load i64, ptr %2, align 8, !noalias !267 ; 2 uses
  %i.q = xor i64 %i.p, %.sroa.0.0.copyload.i.i    ; 3 uses
  %i.r = lshr i64 %i.q, 57
  %i.s = trunc nuw nsw i64 %i.r to i8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i22.i = load ptr, ptr %i.t, align 8, !noalias !267 ; 2 uses
  %i.u = insertelement <16 x i8> poison, i8 %i.s, i64 0
  %i.v = shufflevector <16 x i8> %i.u, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.pn.i = phi i64 [ %i.q, %bb.f ], [ %i.at, %bb.h ]
  %.sroa.15.0.i = phi i64 [ 0, %bb.f ], [ %i.as, %bb.h ] ; 2 uses
  %.sroa.7.0.i = and i64 %.pn.i, %i.a             ; 5 uses
  %i.w = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %.sroa.7.0.i
  tail call void @llvm.prefetch.p0(ptr %i.w, i32 0, i32 3, i32 1), !noalias !267
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i4, i64 %.sroa.7.0.i
  %i.y = load <16 x i8>, ptr %i.x, align 1, !noalias !267 ; 2 uses
  %i.z = icmp eq <16 x i8> %i.v, %i.y
  %i.aa = bitcast <16 x i1> %i.z to i16           ; 2 uses
  %.not65.i = icmp eq i16 %i.aa, 0
  br i1 %.not65.i, label %.critedge19.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.critedge.i
  %.sroa.036.066.i = phi i16 [ %i.ai, %.critedge.i ], [ %i.aa, %bb.g ] ; 3 uses
  %i.ab = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.036.066.i, i1 true)
  %i.ac = zext nneg i16 %i.ab to i64
  %i.ad = add i64 %.sroa.7.0.i, %i.ac
  %i.ae = and i64 %i.ad, %i.a                     ; 2 uses
  %i.af = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %i.ae ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i5 = load i64, ptr %i.af, align 8, !noalias !267
  %i.ag = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i5, %.sroa.0.0.copyload.i.i
  br i1 %i.ag, label %.critedge21.i, label %.critedge.i, !prof !31

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.ah = add i16 %.sroa.036.066.i, -1
  %i.ai = and i16 %i.ah, %.sroa.036.066.i         ; 2 uses
  %.not.i = icmp eq i16 %i.ai, 0
  br i1 %.not.i, label %.critedge19.i, label %.lr.ph.i

.critedge19.i:                                    ; preds = %.critedge.i, %bb.g
  %i.aj = icmp eq <16 x i8> %i.y, splat (i8 -128)
  %i.ak = bitcast <16 x i1> %i.aj to i16          ; 2 uses
  %.not58.i = icmp eq i16 %i.ak, 0
  br i1 %.not58.i, label %bb.h, label %.thread.i, !prof !27

.thread.i:                                        ; preds = %.critedge19.i
  %i.al = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ak, i1 true)
  %i.am = zext nneg i16 %i.al to i64
  %i.an = add i64 %.sroa.7.0.i, %i.am
  %i.ao = and i64 %i.an, %i.a
  %i.ap = tail call noundef i64 @_ZN4absl18container_internal18PrepareInsertLargeERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmNS0_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.q, i64 %i.ao, i64 %.sroa.15.0.i) #26, !noalias !267 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i26.i = load ptr, ptr %i.m, align 8, !noalias !267, !nonnull !29, !noundef !29
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i26.i, i64 %i.ap
  %.sroa.0.0.copyload.i.i.i2.i27.i = load ptr, ptr %i.t, align 8, !noalias !267
  %i.ar = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i27.i, i64 %i.ap
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE28find_or_prepare_insert_largeIS7_EESG_INSK_8iteratorEbERKT_.exit

bb.h:                                             ; preds = %.critedge19.i
  %i.as = add i64 %.sroa.15.0.i, 16               ; 2 uses
  %i.at = add i64 %i.as, %.sroa.7.0.i
  br label %bb.g

.critedge21.i:                                    ; preds = %.lr.ph.i
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i4, i64 %i.ae
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE28find_or_prepare_insert_largeIS7_EESG_INSK_8iteratorEbERKT_.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE28find_or_prepare_insert_largeIS7_EESG_INSK_8iteratorEbERKT_.exit: ; preds = %.thread.i, %.critedge21.i
  %.sink83.i = phi ptr [ %i.aq, %.thread.i ], [ %i.au, %.critedge21.i ]
  %.sink82.i = phi ptr [ %i.ar, %.thread.i ], [ %i.af, %.critedge21.i ]
  %.sink.i = phi i8 [ 1, %.thread.i ], [ 0, %.critedge21.i ]
  store ptr %.sink83.i, ptr %0, align 8, !alias.scope !267
  %.sroa.4.0..sroa_idx.i6 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink82.i, ptr %.sroa.4.0..sroa_idx.i6, align 8, !alias.scope !267
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink.i, ptr %i.av, align 8, !alias.scope !267
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE28find_or_prepare_insert_smallIS7_EESG_INSK_8iteratorEbERKT_.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE28find_or_prepare_insert_smallIS7_EESG_INSK_8iteratorEbERKT_.exit: ; preds = %bb.e, %bb.d, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE28find_or_prepare_insert_largeIS7_EESG_INSK_8iteratorEbERKT_.exit
  ret void
}

declare { ptr, ptr } @_ZN4absl18container_internal24PrepareInsertSmallNonSooERNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(72), ptr, ptr) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN4absl18container_internal23TypeErasedApplyToSlotFnIN2v88internal6Object6HasherENS3_6TaggedINS3_10HeapObjectEEELb0EEEmPKvPvm(ptr noundef %0, ptr noundef %1, i64 noundef %2) #4 comdat {
bb.a:
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8
  %i.a = xor i64 %.sroa.0.0.copyload.i, %2
  ret i64 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE19transfer_n_slots_fnEPvSL_SL_m(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #4 comdat align 2 {
bb.a:
  %.not11 = icmp eq i64 %3, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE8transferEPNS0_13map_slot_typeIS7_SB_EESN_.exit
  %.014 = phi ptr [ %i.g, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE8transferEPNS0_13map_slot_typeIS7_SB_EESN_.exit ], [ %1, %bb.a ] ; 7 uses
  %.0913 = phi ptr [ %i.ad, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE8transferEPNS0_13map_slot_typeIS7_SB_EESN_.exit ], [ %2, %bb.a ] ; 11 uses
  %.01012 = phi i64 [ %i.ac, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE8transferEPNS0_13map_slot_typeIS7_SB_EESN_.exit ], [ %3, %bb.a ]
  %i.a = load i64, ptr %.0913, align 8
  store i64 %i.a, ptr %.014, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %.014, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0913, i64 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.014, i64 32 ; 5 uses
  store ptr %i.d, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %.014, i64 16 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %.014, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %.014, i64 40 ; 2 uses
  store ptr %i.g, ptr %i.f, align 8
  %i.h = icmp eq ptr %.014, %.0913
  br i1 %i.h, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE8transferEPNS0_13map_slot_typeIS7_SB_EESN_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.i = load ptr, ptr %i.c, align 8              ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.0913, i64 32 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.i, %i.j
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal6TaggedINS2_10HeapObjectEEELm1ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %i.b)
  %i.k = load ptr, ptr %i.c, align 8
  store ptr %i.k, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %.0913, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  store ptr %i.m, ptr %i.e, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %.0913, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %.0913, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.i to i64
  %i.t = sub i64 %i.r, %i.s                       ; 4 uses
  %i.u = icmp sgt i64 %i.t, 8
  br i1 %i.u, label %bb.e, label %bb.f, !prof !31

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.d, ptr align 8 %i.i, i64 %i.t, i1 false)
  br label %_ZSt4moveIPN2v88internal6TaggedINS1_10HeapObjectEEES5_ET0_T_S7_S6_.exit.i.i.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.v = icmp eq i64 %i.t, 8
  br i1 %i.v, label %bb.g, label %_ZSt4moveIPN2v88internal6TaggedINS1_10HeapObjectEEES5_ET0_T_S7_S6_.exit.i.i.i.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.w = load i64, ptr %i.i, align 8
  store i64 %i.w, ptr %i.d, align 8
  br label %_ZSt4moveIPN2v88internal6TaggedINS1_10HeapObjectEEES5_ET0_T_S7_S6_.exit.i.i.i.i.i.i.i.i.i.i.i

_ZSt4moveIPN2v88internal6TaggedINS1_10HeapObjectEEES5_ET0_T_S7_S6_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.t
  br label %bb.h

bb.h:                                             ; preds = %_ZSt4moveIPN2v88internal6TaggedINS1_10HeapObjectEEES5_ET0_T_S7_S6_.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.c
  %.sink16.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 8, %_ZSt4moveIPN2v88internal6TaggedINS1_10HeapObjectEEES5_ET0_T_S7_S6_.exit.i.i.i.i.i.i.i.i.i.i.i ], [ 16, %bb.c ]
  %.sink.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.x, %_ZSt4moveIPN2v88internal6TaggedINS1_10HeapObjectEEES5_ET0_T_S7_S6_.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.o, %bb.c ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sink16.i.i.i.i.i.i.i.i.i.i.i
  store ptr %.sink.i.i.i.i.i.i.i.i.i.i.i, ptr %i.y, align 8
  store ptr %i.j, ptr %i.c, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %.0913, i64 16
  store ptr %i.j, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.0913, i64 40
  %i.ab = getelementptr inbounds nuw i8, ptr %.0913, i64 24
  store ptr %i.aa, ptr %i.ab, align 8
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE8transferEPNS0_13map_slot_typeIS7_SB_EESN_.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE8transferEPNS0_13map_slot_typeIS7_SB_EESN_.exit: ; preds = %.lr.ph, %bb.h
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal6TaggedINS2_10HeapObjectEEELm1ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %i.c)
  %i.ac = add i64 %.01012, -1                     ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0913, i64 40
  %.not = icmp eq i64 %i.ac, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !268

._crit_edge:                                      ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE8transferEPNS0_13map_slot_typeIS7_SB_EESN_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE46transfer_unprobed_elements_to_next_capacity_fnERNS0_12CommonFieldsEPKNS0_6ctrl_tEPvSQ_PFvSQ_hmmE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #19 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 4 uses
  %i.b = lshr i64 %i.a, 1                         ; 4 uses
  %i.c = and i64 %i.a, 30
  %i.d = icmp eq i64 %i.c, 30
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.e, align 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = and i64 %i.b, 9223372036854775792
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.04962 = phi i64 [ 0, %bb.a ], [ %i.p, %._crit_edge ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %.04962
  %i.j = load <16 x i8>, ptr %i.i, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.04962 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.k, i8 -128, i64 16, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.m, i8 -128, i64 16, i1 false)
  %i.n = icmp sgt <16 x i8> %i.j, splat (i8 -1)
  %i.o = bitcast <16 x i1> %i.n to i16            ; 2 uses
  %.not60 = icmp eq i16 %i.o, 0
  br i1 %.not60, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.q, %bb.c
  %i.p = add nuw i64 %.04962, 16                  ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.b
  br i1 %i.q, label %bb.c, label %bb.b, !llvm.loop !269

.lr.ph:                                           ; preds = %bb.c, %bb.q
  %.sroa.052.061 = phi i16 [ %i.bv, %bb.q ], [ %i.o, %bb.c ] ; 3 uses
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.052.061, i1 true)
  %i.s = zext nneg i16 %i.r to i64
  %i.t = or disjoint i64 %.04962, %i.s            ; 4 uses
  %i.u = getelementptr inbounds nuw [40 x i8], ptr %2, i64 %i.t ; 11 uses
  %i.v = load i64, ptr %i.g, align 8
  %sext = shl i64 %i.v, 48
  %i.w = ashr exact i64 %sext, 48
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.u, align 8
  %i.x = xor i64 %i.w, %.sroa.0.0.copyload.i.i.i.i.i ; 6 uses
  %i.y = lshr i64 %i.x, 57
  %i.z = trunc nuw nsw i64 %i.y to i8             ; 2 uses
  %i.aa = sub i64 %i.t, %i.x                      ; 2 uses
  %i.ab = and i64 %i.h, %i.aa
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.d, label %bb.e, !prof !31

bb.d:                                             ; preds = %.lr.ph
  %i.ad = and i64 %i.aa, 15
  %i.ae = add i64 %i.ad, %i.x
  %i.af = and i64 %i.ae, %i.a
  br label %bb.i

bb.e:                                             ; preds = %.lr.ph
  %i.ag = and i64 %i.x, %i.b
  %.not.i = icmp ult i64 %i.ag, %i.t
  br i1 %.not.i, label %bb.f, label %bb.h, !prof !31

bb.f:                                             ; preds = %bb.e
  %i.ah = and i64 %i.x, %i.a                      ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.ah
  %i.aj = load <16 x i8>, ptr %i.ai, align 1
  %i.ak = icmp slt <16 x i8> %i.aj, zeroinitializer
  %i.al = bitcast <16 x i1> %i.ak to i16          ; 2 uses
  %.not26.i = icmp eq i16 %i.al, 0
  br i1 %.not26.i, label %bb.h, label %bb.g, !prof !27

bb.g:                                             ; preds = %bb.f
  %i.am = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.al, i1 true)
  %i.an = zext nneg i16 %i.am to i64
  %i.ao = add i64 %i.ah, %i.an
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.e
  tail call void %4(ptr noundef %3, i8 noundef zeroext %i.z, i64 noundef %i.t, i64 noundef %i.x) #26
  br label %bb.q

bb.i:                                             ; preds = %bb.g, %bb.d
  %.sink27.i = phi i64 [ %i.ao, %bb.g ], [ %i.af, %bb.d ] ; 3 uses
  %i.ap = icmp ne i64 %.sink27.i, -1
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.sink27.i
  store i8 %i.z, ptr %i.aq, align 1
  %i.ar = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sink27.i ; 7 uses
  %i.as = load i64, ptr %i.u, align 8
  store i64 %i.as, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 32 ; 5 uses
  store ptr %i.av, ptr %i.at, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 2 uses
  store ptr %i.av, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  store ptr %i.ay, ptr %i.ax, align 8
  %i.az = icmp eq ptr %i.ar, %i.u
  br i1 %i.az, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE8transferEPNS0_13map_slot_typeIS7_SB_EESN_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = load ptr, ptr %i.au, align 8            ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.bb
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal6TaggedINS2_10HeapObjectEEELm1ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %i.at)
  %i.bc = load ptr, ptr %i.au, align 8
  store ptr %i.bc, ptr %i.at, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.be = load ptr, ptr %i.bd, align 8
  store ptr %i.be, ptr %i.aw, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8
  br label %bb.p

bb.l:                                             ; preds = %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %i.ba to i64
  %i.bl = sub i64 %i.bj, %i.bk                    ; 4 uses
  %i.bm = icmp sgt i64 %i.bl, 8
  br i1 %i.bm, label %bb.m, label %bb.n, !prof !31

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.ba, i64 %i.bl, i1 false)
  br label %_ZSt4moveIPN2v88internal6TaggedINS1_10HeapObjectEEES5_ET0_T_S7_S6_.exit.i.i.i.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.bn = icmp eq i64 %i.bl, 8
  br i1 %i.bn, label %bb.o, label %_ZSt4moveIPN2v88internal6TaggedINS1_10HeapObjectEEES5_ET0_T_S7_S6_.exit.i.i.i.i.i.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.bo = load i64, ptr %i.ba, align 8
  store i64 %i.bo, ptr %i.av, align 8
  br label %_ZSt4moveIPN2v88internal6TaggedINS1_10HeapObjectEEES5_ET0_T_S7_S6_.exit.i.i.i.i.i.i.i.i.i.i.i

_ZSt4moveIPN2v88internal6TaggedINS1_10HeapObjectEEES5_ET0_T_S7_S6_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.o, %bb.n, %bb.m
  %i.bp = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.bl
  br label %bb.p

bb.p:                                             ; preds = %_ZSt4moveIPN2v88internal6TaggedINS1_10HeapObjectEEES5_ET0_T_S7_S6_.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.k
  %.sink16.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 8, %_ZSt4moveIPN2v88internal6TaggedINS1_10HeapObjectEEES5_ET0_T_S7_S6_.exit.i.i.i.i.i.i.i.i.i.i.i ], [ 16, %bb.k ]
  %.sink.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bp, %_ZSt4moveIPN2v88internal6TaggedINS1_10HeapObjectEEES5_ET0_T_S7_S6_.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bg, %bb.k ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.at, i64 %.sink16.i.i.i.i.i.i.i.i.i.i.i
  store ptr %.sink.i.i.i.i.i.i.i.i.i.i.i, ptr %i.bq, align 8
  store ptr %i.bb, ptr %i.au, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %i.bb, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.bt = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store ptr %i.bs, ptr %i.bt, align 8
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE8transferEPNS0_13map_slot_typeIS7_SB_EESN_.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE8transferEPNS0_13map_slot_typeIS7_SB_EESN_.exit: ; preds = %bb.i, %bb.p
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal6TaggedINS2_10HeapObjectEEELm1ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %i.au)
  br label %bb.q

bb.q:                                             ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE8transferEPNS0_13map_slot_typeIS7_SB_EESN_.exit, %bb.h
  %i.bu = add i16 %.sroa.052.061, -1
  %i.bv = and i16 %i.bu, %.sroa.052.061           ; 2 uses
  %.not = icmp eq i16 %i.bv, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal6TaggedINS2_10HeapObjectEEELm1ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #22 comdat align 2 {
_ZSt9destroy_nIPN2v88internal6TaggedINS1_10HeapObjectEEElET_S6_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPN2v88internal6TaggedINS1_10HeapObjectEEElET_S6_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #29
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal6TaggedINS1_10HeapObjectEEElET_S6_T0_.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyIN2v88internal6Object6HasherENS5_6TaggedINS5_10HeapObjectEEELb0EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE(ptr %0, i64 noundef %1) #4 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !29, !align !30
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.b, align 8
  %i.c = xor i64 %.sroa.0.0.copyload.i.i.i.i.i, %1
  ret i64 %i.c
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal6TaggedINS2_10HeapObjectEEELm1ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #22 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal6TaggedINS2_10HeapObjectEEELm1ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal6TaggedINS2_10HeapObjectEEELm1ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %0, align 8
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
  br i1 %i.k, label %bb.b, label %bb.e, !prof !27

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #27
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #27
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = shl nuw i64 8, %i.j
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #28 ; 4 uses
  %i.p = load ptr, ptr %0, align 8                ; 2 uses
  %i.q = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZSt18uninitialized_moveIPN2v88internal6TaggedINS1_10HeapObjectEEES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i ], [ %i.o, %bb.e ] ; 2 uses
  %.sroa.04.07.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i ], [ %i.p, %bb.e ] ; 2 uses
  %i.s = load i64, ptr %.sroa.04.07.i.i.i.i, align 8
  store i64 %i.s, ptr %.08.i.i.i.i, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 8
  %i.v = icmp eq ptr %i.t, %i.q
  br i1 %i.v, label %_ZSt18uninitialized_moveIPN2v88internal6TaggedINS1_10HeapObjectEEES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !270

_ZSt18uninitialized_moveIPN2v88internal6TaggedINS1_10HeapObjectEEES5_ET0_T_S7_S6_.exit: ; preds = %.lr.ph.i.i.i.i, %bb.e
  %i.w = shl nuw i64 1, %i.j
  %i.x = ptrtoint ptr %i.m to i64
  %i.y = sub i64 %i.x, %i.f
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal6TaggedINS2_10HeapObjectEEELm1ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  store ptr %i.o, ptr %0, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.y
  store ptr %i.z, ptr %i.a, align 8
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.w
  store ptr %i.aa, ptr %i.c, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #18

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2v88internal27DescriptorArrayMarkingState22TryUpdateIndicesToMarkEjNS0_6TaggedINS0_15DescriptorArrayEEEt(i32 noundef %0, i64 %1, i16 noundef zeroext %2) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = and i32 %0, 3                            ; 2 uses
  %i.b = add i64 %1, 11
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = zext i16 %2 to i32                       ; 2 uses
  %i.e = shl nuw i32 %i.d, 16
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.f = load atomic volatile i32, ptr %i.c monotonic, align 4 ; 4 uses
  %i.g = and i32 %i.f, 3
  %.not = icmp eq i32 %i.a, %i.g
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = trunc i32 %i.f to i16
  %i.i = lshr i16 %i.h, 2                         ; 2 uses
  %i.j = lshr i32 %i.f, 16
  %i.k = zext nneg i16 %i.i to i32                ; 2 uses
  %i.l = add nuw nsw i32 %i.j, %i.k
  %.not27 = icmp samesign ult i32 %i.l, %i.d
  br i1 %.not27, label %.thread, label %.thread34

.thread:                                          ; preds = %bb.c
  %i.m = sub nuw i16 %2, %i.i
  %i.n = shl nuw nsw i32 %i.k, 2
  %i.o = zext i16 %i.m to i32
  %i.p = shl nuw i32 %i.o, 16
  %i.q = or disjoint i32 %i.p, %i.n
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %.thread
  %.pn = phi i32 [ %i.q, %.thread ], [ %i.e, %bb.b ]
  %.123 = or disjoint i32 %.pn, %i.a
  %i.r = cmpxchg volatile ptr %i.c, i32 %i.f, i32 %.123 acq_rel acquire, align 4
  %i.s = extractvalue { i32, i1 } %i.r, 1
  br i1 %i.s, label %.thread34, label %bb.b, !llvm.loop !271

.thread34:                                        ; preds = %bb.c, %bb.d
  %.337 = phi i1 [ true, %bb.d ], [ false, %bb.c ]
  ret i1 %.337
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_18SharedFunctionInfoEEELt64EE5Local18PublishPushSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #26
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !nonnull !29, !align !30 ; 4 uses
  %i.e = load ptr, ptr %i.a, align 8              ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(24) %i.d) #26
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.g, ptr %i.h, align 8
  store ptr %i.e, ptr %i.f, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.j = atomicrmw add ptr %i.i, i64 1 monotonic, align 8 ; 0 uses
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(24) %i.d) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_18SharedFunctionInfoEEELt64EE5Local10NewSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load i8, ptr @_ZN4heap4base12WorklistBase18predictable_order_E, align 1, !range !28, !noundef !29
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = tail call noalias noundef dereferenceable_or_null(528) ptr @malloc(i64 noundef 528) #31 ; 6 uses
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @malloc_usable_size(ptr noundef %i.c) #26
  %i.e = add i64 %i.d, 524272
  %i.f = lshr i64 %i.e, 3
  %i.g = trunc i64 %i.f to i16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.6.0.i = phi i16 [ %i.g, %bb.b ], [ 64, %bb.a ]
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.d, label %_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_18SharedFunctionInfoEEELt64EE7Segment6CreateEt.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v84base8FatalOOMENS0_7OOMTypeEPKc(i32 noundef 1, ptr noundef nonnull @.str.23) #27
  unreachable

_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_18SharedFunctionInfoEEELt64EE7Segment6CreateEt.exit: ; preds = %bb.c
  store i16 %.sroa.6.0.i, ptr %i.c, align 2
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i16 0, ptr %i.h, align 2
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr null, ptr %i.i, align 8
  ret ptr %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_15TransitionArrayEEELt64EE5Local18PublishPushSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #26
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !nonnull !29, !align !30 ; 4 uses
  %i.e = load ptr, ptr %i.a, align 8              ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(24) %i.d) #26
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.g, ptr %i.h, align 8
  store ptr %i.e, ptr %i.f, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.j = atomicrmw add ptr %i.i, i64 1 monotonic, align 8 ; 0 uses
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(24) %i.d) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_15TransitionArrayEEELt64EE5Local10NewSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load i8, ptr @_ZN4heap4base12WorklistBase18predictable_order_E, align 1, !range !28, !noundef !29
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = tail call noalias noundef dereferenceable_or_null(528) ptr @malloc(i64 noundef 528) #31 ; 6 uses
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @malloc_usable_size(ptr noundef %i.c) #26
  %i.e = add i64 %i.d, 524272
  %i.f = lshr i64 %i.e, 3
  %i.g = trunc i64 %i.f to i16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.6.0.i = phi i16 [ %i.g, %bb.b ], [ 64, %bb.a ]
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.d, label %_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_15TransitionArrayEEELt64EE7Segment6CreateEt.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v84base8FatalOOMENS0_7OOMTypeEPKc(i32 noundef 1, ptr noundef nonnull @.str.23) #27
  unreachable

_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_15TransitionArrayEEELt64EE7Segment6CreateEt.exit: ; preds = %bb.c
  store i16 %.sroa.6.0.i, ptr %i.c, align 2
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i16 0, ptr %i.h, align 2
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr null, ptr %i.i, align 8
  ret ptr %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_8WeakCellEEELt64EE5Local18PublishPushSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #26
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !nonnull !29, !align !30 ; 4 uses
  %i.e = load ptr, ptr %i.a, align 8              ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(24) %i.d) #26
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.g, ptr %i.h, align 8
  store ptr %i.e, ptr %i.f, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.j = atomicrmw add ptr %i.i, i64 1 monotonic, align 8 ; 0 uses
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(24) %i.d) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_8WeakCellEEELt64EE5Local10NewSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load i8, ptr @_ZN4heap4base12WorklistBase18predictable_order_E, align 1, !range !28, !noundef !29
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = tail call noalias noundef dereferenceable_or_null(528) ptr @malloc(i64 noundef 528) #31 ; 6 uses
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @malloc_usable_size(ptr noundef %i.c) #26
  %i.e = add i64 %i.d, 524272
  %i.f = lshr i64 %i.e, 3
  %i.g = trunc i64 %i.f to i16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.6.0.i = phi i16 [ %i.g, %bb.b ], [ 64, %bb.a ]
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.d, label %_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_8WeakCellEEELt64EE7Segment6CreateEt.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v84base8FatalOOMENS0_7OOMTypeEPKc(i32 noundef 1, ptr noundef nonnull @.str.23) #27
  unreachable

_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_8WeakCellEEELt64EE7Segment6CreateEt.exit: ; preds = %bb.c
  store i16 %.sroa.6.0.i, ptr %i.c, align 2
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i16 0, ptr %i.h, align 2
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr null, ptr %i.i, align 8
  ret ptr %i.c
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal10WasmStruct14BodyDescriptor11IterateBodyINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEEiPT_(i64 %0, i64 %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN2v88internal10WasmStruct10GcSafeTypeENS0_6TaggedINS0_3MapEEE(i64 %0) #26 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  %i.c = load i8, ptr %i.b, align 2, !range !28, !noundef !29
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZN2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE17VisitPointersImplINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = add i64 %1, 15                           ; 2 uses
  %i.f = add i64 %1, 23                           ; 2 uses
  %i.g = icmp ult i64 %i.e, %i.f
  br i1 %i.g, label %.lr.ph, label %_ZN2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE17VisitPointersImplINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit
end_hunk_1
begin_hunk_2_@_ZN2v88internal10WasmStruct14BodyDescriptor11IterateBodyINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEEiPT_:bb.a
  %i.az = load i8, ptr %i.ay, align 8, !range !28, !noundef !29
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.j, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit24

bb.j:                                             ; preds = %bb.i, %.critedge.i.i
  %i.bb = and i64 %.sroa.0.0.copyload.i.i25, 32
  %.not.i = icmp eq i64 %i.bb, 0
  br i1 %.not.i, label %bb.k, label %_ZNKRSt8optionalIN2v88internal13MarkingHelper14WorklistTargetEE5valueEv.exit.i

bb.k:                                             ; preds = %bb.j
  %i.bc = add nsw i64 %i.ao, -1
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = load atomic volatile i64, ptr %i.bd monotonic, align 8
  %i.bf = add i64 %i.be, 11
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = load atomic volatile i16, ptr %i.bg monotonic, align 2
  %i.bi = and i16 %i.bh, -2
  %i.bj = icmp eq i16 %i.bi, 270
  br i1 %i.bj, label %bb.l, label %_ZNKRSt8optionalIN2v88internal13MarkingHelper14WorklistTargetEE5valueEv.exit.i, !prof !27

bb.l:                                             ; preds = %bb.k
  %i.bk = ptrtoint ptr %i.aq to i64
  %i.bl = add i64 %i.bk, -55464
  %i.bm = inttoptr i64 %i.bl to ptr
  %i.bn = load atomic volatile i64, ptr %i.s monotonic, align 8
  %i.bo = inttoptr i64 %i.bn to ptr
  %i.bp = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 80
  %i.bs = load atomic ptr, ptr %i.br seq_cst, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load i32, ptr %i.bt, align 8
  %i.bv = zext i32 %i.bu to i64
  %i.bw = inttoptr i64 %i.bv to ptr
  tail call void @_ZN2v88internal7Isolate20PushStackTraceAndDieEPvS2_S2_S2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(64320) %i.bm, ptr noundef %i.bo, ptr noundef nonnull %i.s, ptr noundef nonnull %i.an, ptr noundef %i.bw, ptr noundef null, ptr noundef null) #26
  br label %_ZNKRSt8optionalIN2v88internal13MarkingHelper14WorklistTargetEE5valueEv.exit.i

_ZNKRSt8optionalIN2v88internal13MarkingHelper14WorklistTargetEE5valueEv.exit.i: ; preds = %bb.l, %bb.k, %bb.j
  %i.bx = load ptr, ptr %i.t, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8            ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 80
  %i.cb = load atomic ptr, ptr %i.ca seq_cst, align 8
  %.not.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i, label %bb.m, label %_ZN2v88internal7MarkBit4FromEPKNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEE.exit.i, !prof !27

bb.m:                                             ; preds = %_ZNKRSt8optionalIN2v88internal13MarkingHelper14WorklistTargetEE5valueEv.exit.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.24) #27
  unreachable

_ZN2v88internal7MarkBit4FromEPKNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEE.exit.i: ; preds = %_ZNKRSt8optionalIN2v88internal13MarkingHelper14WorklistTargetEE5valueEv.exit.i
  %i.cc = ptrtoint ptr %i.bz to i64
  %i.cd = add i64 %i.cc, 336
  %i.ce = inttoptr i64 %i.cd to ptr
  %i.cf = lshr i64 %i.ao, 3
  %i.cg = and i64 %i.cf, 63
  %i.ch = shl nuw i64 1, %i.cg                    ; 2 uses
  %i.ci = lshr i64 %i.ao, 9
  %i.cj = and i64 %i.ci, 511
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cj ; 2 uses
  %i.cl = load atomic volatile i64, ptr %i.ck monotonic, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %_ZN2v88internal7MarkBit4FromEPKNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEE.exit.i
  %.0.i.i.i = phi i64 [ %i.cl, %_ZN2v88internal7MarkBit4FromEPKNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEE.exit.i ], [ %i.cp, %bb.o ] ; 3 uses
  %i.cm = and i64 %.0.i.i.i, %i.ch
  %.not16.not.not.i.not.not.not.i.not.not.i = icmp eq i64 %i.cm, 0
  br i1 %.not16.not.not.i.not.not.not.i.not.not.i, label %bb.o, label %_ZN2v88internal13MarkingHelper14TryMarkAndPushINS0_12MarkingStateEEEbPNS0_4HeapEPNS0_16MarkingWorklists5LocalEPT_NS1_14WorklistTargetENS0_6TaggedINS0_10HeapObjectEEE.exit.i

bb.o:                                             ; preds = %bb.n
  %i.cn = or i64 %.0.i.i.i, %i.ch
  %i.co = cmpxchg volatile ptr %i.ck, i64 %.0.i.i.i, i64 %i.cn monotonic monotonic, align 8 ; 2 uses
  %i.cp = extractvalue { i64, i1 } %i.co, 0
  %.not.i.i19.i = extractvalue { i64, i1 } %i.co, 1
  br i1 %.not.i.i19.i, label %_ZN2v88internal7MarkBit3SetILNS0_10AccessModeE0EEEbv.exit.i, label %bb.n, !llvm.loop !5

_ZN2v88internal7MarkBit3SetILNS0_10AccessModeE0EEEbv.exit.i: ; preds = %bb.o
  %i.cq = load ptr, ptr %i.bx, align 8            ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8            ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 2
  %i.cu = load i16, ptr %i.ct, align 2            ; 2 uses
  %i.cv = load i16, ptr %i.cs, align 2
  %i.cw = icmp eq i16 %i.cu, %i.cv
  br i1 %i.cw, label %bb.p, label %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i, !prof !27

bb.p:                                             ; preds = %_ZN2v88internal7MarkBit3SetILNS0_10AccessModeE0EEEbv.exit.i
  tail call void @_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cq)
  %i.cx = tail call noundef ptr @_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local10NewSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cq) ; 3 uses
  store ptr %i.cx, ptr %i.cr, align 8
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 2
  %.pre.i.i = load i16, ptr %.phi.trans.insert.i.i, align 2
  br label %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i

_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i: ; preds = %bb.p, %_ZN2v88internal7MarkBit3SetILNS0_10AccessModeE0EEEbv.exit.i
  %i.cy = phi i16 [ %i.cu, %_ZN2v88internal7MarkBit3SetILNS0_10AccessModeE0EEEbv.exit.i ], [ %.pre.i.i, %bb.p ] ; 2 uses
  %i.cz = phi ptr [ %i.cs, %_ZN2v88internal7MarkBit3SetILNS0_10AccessModeE0EEEbv.exit.i ], [ %i.cx, %bb.p ] ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 2
  %i.db = add i16 %i.cy, 1
  store i16 %i.db, ptr %i.da, align 2
  %i.dc = zext i16 %i.cy to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.dc
  store i64 %i.ao, ptr %i.de, align 8
  br label %_ZN2v88internal13MarkingHelper14TryMarkAndPushINS0_12MarkingStateEEEbPNS0_4HeapEPNS0_16MarkingWorklists5LocalEPT_NS1_14WorklistTargetENS0_6TaggedINS0_10HeapObjectEEE.exit.i

_ZN2v88internal13MarkingHelper14TryMarkAndPushINS0_12MarkingStateEEEbPNS0_4HeapEPNS0_16MarkingWorklists5LocalEPT_NS1_14WorklistTargetENS0_6TaggedINS0_10HeapObjectEEE.exit.i: ; preds = %bb.n, %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.v, align 262144
  %i.df = and i64 %.sroa.0.0.copyload.i.i.i, 536
  %.not.i26 = icmp eq i64 %i.df, 0
  br i1 %.not.i26, label %bb.q, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit24

bb.q:                                             ; preds = %_ZN2v88internal13MarkingHelper14TryMarkAndPushINS0_12MarkingStateEEEbPNS0_4HeapEPNS0_16MarkingWorklists5LocalEPT_NS1_14WorklistTargetENS0_6TaggedINS0_10HeapObjectEEE.exit.i
  %i.dg = load i64, ptr %i.as, align 262144
  %i.dh = and i64 %i.dg, 512
  %.not13.i = icmp eq i64 %i.dh, 0
  br i1 %.not13.i, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit24, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.di = load ptr, ptr %i.w, align 8             ; 6 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 80
  %i.dk = load atomic ptr, ptr %i.dj seq_cst, align 8
  %.not.i.i27 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i27, label %bb.s, label %_ZN2v88internal19MutablePageMetadata4castEPNS0_19MemoryChunkMetadataE.exit.i, !prof !27

bb.s:                                             ; preds = %bb.r
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.24) #27
  unreachable

_ZN2v88internal19MutablePageMetadata4castEPNS0_19MemoryChunkMetadataE.exit.i: ; preds = %bb.r
  %i.dl = load ptr, ptr %i.by, align 8            ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 80
  %i.dn = load atomic ptr, ptr %i.dm seq_cst, align 8
  %.not.i6.i = icmp eq ptr %i.dn, null
  br i1 %.not.i6.i, label %bb.t, label %_ZN2v88internal19MutablePageMetadata4castEPKNS0_19MemoryChunkMetadataE.exit.i, !prof !27

bb.t:                                             ; preds = %_ZN2v88internal19MutablePageMetadata4castEPNS0_19MemoryChunkMetadataE.exit.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.24) #27
  unreachable

_ZN2v88internal19MutablePageMetadata4castEPKNS0_19MemoryChunkMetadataE.exit.i: ; preds = %_ZN2v88internal19MutablePageMetadata4castEPNS0_19MemoryChunkMetadataE.exit.i
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 88
  %i.dp = load i32, ptr %i.do, align 8            ; 3 uses
  %i.dq = and i32 %i.dp, 16
  %.not14.i = icmp eq i32 %i.dq, 0
  br i1 %.not14.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZN2v88internal19MutablePageMetadata4castEPKNS0_19MemoryChunkMetadataE.exit.i
  %i.dr = sub i64 %.sroa.053.067, %i.u
  tail call void @_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE4EE6InsertILNS0_10AccessModeE0EEEvPNS0_19MutablePageMetadataEm(ptr noundef nonnull %i.di, i64 noundef %i.dr)
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit24

bb.v:                                             ; preds = %_ZN2v88internal19MutablePageMetadata4castEPKNS0_19MemoryChunkMetadataE.exit.i
  %i.ds = getelementptr inbounds nuw i8, ptr %i.di, i64 88
  %i.dt = load i32, ptr %i.ds, align 8
  %i.du = and i32 %i.dp, 4096
  %i.dv = and i32 %i.du, %i.dt
  %or.cond.not.i = icmp eq i32 %i.dv, 0
  br i1 %or.cond.not.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dw = sub i64 %.sroa.053.067, %i.u
  tail call void @_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE5EE6InsertILNS0_10AccessModeE0EEEvPNS0_19MutablePageMetadataEm(ptr noundef nonnull %i.di, i64 noundef %i.dw)
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit24

bb.x:                                             ; preds = %bb.v
  %i.dx = and i32 %i.dp, 8192
  %.not15.i = icmp eq i32 %i.dx, 0
  br i1 %.not15.i, label %bb.z, label %bb.y, !prof !31

bb.y:                                             ; preds = %bb.x
  %i.dy = getelementptr inbounds nuw i8, ptr %i.di, i64 64
  %i.dz = load ptr, ptr %i.dy, align 8
  %i.ea = ptrtoint ptr %i.dz to i64
  %i.eb = add i64 %i.ea, -55464
  %i.ec = inttoptr i64 %i.eb to ptr
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 55448
  %i.ee = load i8, ptr %i.ed, align 8, !range !28, !noundef !29
  %i.ef = trunc nuw i8 %i.ee to i1
  br i1 %i.ef, label %bb.z, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit24

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.eg = sub i64 %.sroa.053.067, %i.u
  tail call void @_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE2EE6InsertILNS0_10AccessModeE0EEEvPNS0_19MutablePageMetadataEm(ptr noundef nonnull %i.di, i64 noundef %i.eg)
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit24

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit24: ; preds = %.lr.ph68, %bb.z, %bb.y, %bb.w, %bb.u, %bb.q, %_ZN2v88internal13MarkingHelper14TryMarkAndPushINS0_12MarkingStateEEEbPNS0_4HeapEPNS0_16MarkingWorklists5LocalEPT_NS1_14WorklistTargetENS0_6TaggedINS0_10HeapObjectEEE.exit.i, %bb.h, %bb.i
  %i.eh = add i64 %.sroa.053.067, 8               ; 2 uses
  %i.ei = icmp ult i64 %i.eh, %i.al
  br i1 %i.ei, label %.lr.ph68, label %_ZN2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE17VisitPointersImplINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit21.loopexit, !llvm.loop !3

_ZN2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE17VisitPointersImplINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit21.loopexit: ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit24
  %.pre = load i16, ptr %i.a, align 8
  br label %_ZN2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE17VisitPointersImplINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit21

_ZN2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE17VisitPointersImplINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit21: ; preds = %_ZN2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE17VisitPointersImplINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit21.loopexit, %_ZNK2v88internal4wasm14StructTypeBase12field_offsetEj.exit, %bb.d
  %i.ej = phi i16 [ %.pre, %_ZN2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE17VisitPointersImplINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit21.loopexit ], [ %i.x, %_ZNK2v88internal4wasm14StructTypeBase12field_offsetEj.exit ], [ %i.x, %bb.d ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ek = zext i16 %i.ej to i64
  %i.el = icmp samesign ult i64 %indvars.iv.next, %i.ek
  br i1 %i.el, label %bb.d, label %._crit_edge, !llvm.loop !272
}

declare noundef ptr @_ZN2v88internal10WasmStruct10GcSafeTypeENS0_6TaggedINS0_3MapEEE(i64) local_unnamed_addr #5

declare void @_ZN2v88internal16MarkingWorklists5Local9ShareWorkEv(ptr noundef nonnull align 8 dereferenceable(136)) local_unnamed_addr #5

declare void @_ZN2v88internal13JSArrayBuffer13MarkExtensionEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal59JSAPIObjectWithEmbedderSlotsOrJSSpecialObjectBodyDescriptor41IterateJSAPIObjectWithEmbedderSlotsHeaderINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEEiPT_(i64 %0, i64 %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %4 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = add i64 %1, 7                            ; 2 uses
  %i.c = add i64 %1, 23                           ; 3 uses
  %i.d = icmp ult i64 %i.b, %i.c
  br i1 %i.d, label %.lr.ph.i, label %_ZN2v88internal18BodyDescriptorBase15IteratePointersINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiiPT_.exit

.lr.ph.i:                                         ; preds = %bb.a, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i
  %.sroa.019.028.i = phi i64 [ %i.h, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = inttoptr i64 %.sroa.019.028.i to ptr
  %i.f = load atomic volatile i64, ptr %i.e monotonic, align 8 ; 2 uses
  %i.g = trunc i64 %i.f to i1
  br i1 %i.g, label %bb.b, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i

bb.b:                                             ; preds = %.lr.ph.i
  tail call void @_ZN2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE23ProcessStrongHeapObjectINS0_18FullHeapObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %3, i64 %1, i64 %.sroa.019.028.i, i64 %i.f)
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i: ; preds = %bb.b, %.lr.ph.i
  %i.h = add i64 %.sroa.019.028.i, 8              ; 2 uses
  %i.i = icmp ult i64 %i.h, %i.c
  br i1 %i.i, label %.lr.ph.i, label %_ZN2v88internal18BodyDescriptorBase15IteratePointersINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiiPT_.exit, !llvm.loop !3

_ZN2v88internal18BodyDescriptorBase15IteratePointersINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiiPT_.exit: ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i, %bb.a
  %i.j = inttoptr i64 %i.c to ptr
  %i.k = load atomic volatile i64, ptr %i.j monotonic, align 8 ; 2 uses
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %_ZN2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE19VisitCppHeapPointerENS0_6TaggedINS0_10HeapObjectEEENS0_18CppHeapPointerSlotE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal18BodyDescriptorBase15IteratePointersINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiiPT_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = inttoptr i64 %i.k to ptr                 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !29, !align !30 ; 3 uses
  %i.s = getelementptr inbounds i8, ptr %i.p, i64 -4 ; 2 uses
  %i.t = load i16, ptr %i.s, align 2
  %i.u = lshr i16 %i.t, 2
  %i.v = load ptr, ptr @_ZN5cppgc8internal17GlobalGCInfoTable13global_table_E, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = zext nneg i16 %i.u to i64
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %i.x, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = load atomic i16, ptr %i.s acquire, align 2
  %i.ad = trunc i16 %i.ac to i1
  br i1 %i.ad, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds i8, ptr %i.p, i64 -8
  %i.af = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !29, !align !30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ae, ptr %i.a, align 8
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(64) %i.ag) #26
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr %i.ah, ptr %4, align 8
  %i.ai = call { ptr, i8 } @_ZNSt10_HashtableIPN5cppgc8internal16HeapObjectHeaderES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKS3_SJ_NS5_10_AllocNodeISaINS5_10_Hash_nodeIS3_Lb0EEEEEEEESt4pairINS5_14_Node_iteratorIS3_Lb1ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %i.ah, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(64) %i.ag) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE19VisitCppHeapPointerENS0_6TaggedINS0_10HeapObjectEEENS0_18CppHeapPointerSlotE.exit

bb.e:                                             ; preds = %bb.c
  %i.aj = getelementptr inbounds i8, ptr %i.p, i64 -2 ; 2 uses
  %i.ak = load atomic i16, ptr %i.aj monotonic, align 2 ; 3 uses
  %i.al = or i16 %i.ak, 1                         ; 2 uses
  %i.am = icmp eq i16 %i.al, %i.ak
  br i1 %i.am, label %_ZN2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE19VisitCppHeapPointerENS0_6TaggedINS0_10HeapObjectEEENS0_18CppHeapPointerSlotE.exit, label %_ZN5cppgc8internal16MarkingStateBase10MarkNoPushERNS0_16HeapObjectHeaderE.exit.i.i.i

_ZN5cppgc8internal16MarkingStateBase10MarkNoPushERNS0_16HeapObjectHeaderE.exit.i.i.i: ; preds = %bb.e
  %i.an = cmpxchg ptr %i.aj, i16 %i.ak, i16 %i.al monotonic monotonic, align 2
  %i.ao = extractvalue { i16, i1 } %i.an, 1
  br i1 %i.ao, label %bb.f, label %_ZN2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE19VisitCppHeapPointerENS0_6TaggedINS0_10HeapObjectEEENS0_18CppHeapPointerSlotE.exit

bb.f:                                             ; preds = %_ZN5cppgc8internal16MarkingStateBase10MarkNoPushERNS0_16HeapObjectHeaderE.exit.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8            ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 2
  %i.as = load i16, ptr %i.ar, align 2            ; 2 uses
  %i.at = load i16, ptr %i.aq, align 2
  %i.au = icmp eq i16 %i.as, %i.at
  br i1 %i.au, label %bb.g, label %_ZN5cppgc8internal16MarkingStateBase10PushMarkedERNS0_16HeapObjectHeaderENS_15TraceDescriptorE.exit.i.i.i, !prof !27

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  tail call void @_ZN4heap4base8WorklistIN5cppgc15TraceDescriptorELt512EE5Local18PublishPushSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %i.av)
  %i.aw = tail call noundef ptr @_ZNK4heap4base8WorklistIN5cppgc15TraceDescriptorELt512EE5Local10NewSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %i.av) ; 3 uses
  store ptr %i.aw, ptr %i.ap, align 8
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 2
  %.pre.i.i.i.i = load i16, ptr %.phi.trans.insert.i.i.i.i, align 2
  br label %_ZN5cppgc8internal16MarkingStateBase10PushMarkedERNS0_16HeapObjectHeaderENS_15TraceDescriptorE.exit.i.i.i

_ZN5cppgc8internal16MarkingStateBase10PushMarkedERNS0_16HeapObjectHeaderENS_15TraceDescriptorE.exit.i.i.i: ; preds = %bb.g, %bb.f
  %i.ax = phi i16 [ %i.as, %bb.f ], [ %.pre.i.i.i.i, %bb.g ] ; 2 uses
  %i.ay = phi ptr [ %i.aq, %bb.f ], [ %i.aw, %bb.g ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 2
  %i.ba = add i16 %i.ax, 1
  store i16 %i.ba, ptr %i.az, align 2
  %i.bb = zext i16 %i.ax to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %i.bb ; 2 uses
  store ptr %i.p, ptr %i.bd, align 8
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr %i.ab, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8
  br label %_ZN2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE19VisitCppHeapPointerENS0_6TaggedINS0_10HeapObjectEEENS0_18CppHeapPointerSlotE.exit

_ZN2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE19VisitCppHeapPointerENS0_6TaggedINS0_10HeapObjectEEENS0_18CppHeapPointerSlotE.exit: ; preds = %_ZN5cppgc8internal16MarkingStateBase10PushMarkedERNS0_16HeapObjectHeaderENS_15TraceDescriptorE.exit.i.i.i, %_ZN5cppgc8internal16MarkingStateBase10MarkNoPushERNS0_16HeapObjectHeaderE.exit.i.i.i, %bb.e, %bb.d, %_ZN2v88internal18BodyDescriptorBase15IteratePointersINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiiPT_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE23ShouldFlushBaselineCodeENS0_6TaggedINS0_10JSFunctionEEE(ptr noundef nonnull align 8 dereferenceable(61) %0, i64 %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 4 uses
  %.sroa.015.0.copyload = load i32, ptr %i.a, align 4
  %i.b = and i32 %.sroa.015.0.copyload, 2
  %.not50 = icmp eq i32 %i.b, 0
  br i1 %.not50, label %_ZNK2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE15ShouldFlushCodeENS0_6TaggedINS0_18SharedFunctionInfoEEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %1, 31
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load atomic volatile i64, ptr %i.d acquire, align 8 ; 7 uses
  %i.f = trunc i64 %i.e to i1
  br i1 %i.f, label %_ZN2v88internal20IsSharedFunctionInfoENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZNK2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE15ShouldFlushCodeENS0_6TaggedINS0_18SharedFunctionInfoEEE.exit

_ZN2v88internal20IsSharedFunctionInfoENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.b
  %i.g = add nsw i64 %i.e, -1
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load atomic volatile i64, ptr %i.h monotonic, align 8
  %i.j = add i64 %i.i, 11
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load atomic volatile i16, ptr %i.k monotonic, align 2
  %i.m = icmp eq i16 %i.l, 286
  br i1 %i.m, label %bb.c, label %_ZNK2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE15ShouldFlushCodeENS0_6TaggedINS0_18SharedFunctionInfoEEE.exit

bb.c:                                             ; preds = %_ZN2v88internal20IsSharedFunctionInfoENS0_6TaggedINS0_6ObjectEEE.exit
  %i.n = add i64 %1, 23
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load atomic volatile i32, ptr %i.o acquire, align 4 ; 2 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %_ZNK2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE15ShouldFlushCodeENS0_6TaggedINS0_18SharedFunctionInfoEEE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 10688
  %i.t = lshr i32 %i.p, 8
  %i.u = load ptr, ptr %i.s, align 8
  %i.v = zext nneg i32 %i.t to i64
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.v ; 2 uses
  %i.x = load atomic i64, ptr %i.w monotonic, align 8
  %i.y = icmp ugt i64 %i.x, -281474976710657
  br i1 %i.y, label %bb.e, label %_ZNK2v88internal10JSFunction8raw_codeENS0_17IsolateForSandboxENS_14AcquireLoadTagE.exit, !prof !27

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.43) #27
  unreachable

_ZNK2v88internal10JSFunction8raw_codeENS0_17IsolateForSandboxENS_14AcquireLoadTagE.exit: ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.aa = load atomic i64, ptr %i.z monotonic, align 8
  %i.ab = lshr i64 %i.aa, 16                      ; 2 uses
  %i.ac = and i64 %i.ab, 281474976710654
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = load atomic volatile i64, ptr %i.ad monotonic, align 8
  %i.af = add i64 %i.ae, 11
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = load atomic volatile i16, ptr %i.ag monotonic, align 2
  %i.ai = icmp eq i16 %i.ah, 185
  br i1 %i.ai, label %bb.f, label %_ZNK2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE15ShouldFlushCodeENS0_6TaggedINS0_18SharedFunctionInfoEEE.exit

bb.f:                                             ; preds = %_ZNK2v88internal10JSFunction8raw_codeENS0_17IsolateForSandboxENS_14AcquireLoadTagE.exit
  %i.aj = or i64 %i.ab, 1
  %i.ak = add nuw nsw i64 %i.aj, 51
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load atomic volatile i32, ptr %i.al monotonic, align 4
  %i.an = and i32 %i.am, 15
  %.not = icmp eq i32 %i.an, 10
  br i1 %.not, label %bb.g, label %_ZNK2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE15ShouldFlushCodeENS0_6TaggedINS0_18SharedFunctionInfoEEE.exit

bb.g:                                             ; preds = %bb.f
  %.sroa.08.0.copyload.i = load i32, ptr %i.a, align 4
  %i.ao = icmp eq i32 %.sroa.08.0.copyload.i, 0
  br i1 %i.ao, label %_ZNK2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE15ShouldFlushCodeENS0_6TaggedINS0_18SharedFunctionInfoEEE.exit, label %bb.h
end_hunk_2
begin_hunk_3_@_ZNK2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE23ShouldFlushBaselineCodeENS0_6TaggedINS0_10JSFunctionEEE:bb.a

.split.i:                                         ; preds = %bb.o
  %i.cf = add i64 %i.e, 67
  %i.cg = inttoptr i64 %i.cf to ptr
  %i.ch = load atomic volatile i16, ptr %i.cg monotonic, align 2
  %i.ci = zext i16 %i.ch to i32
  %i.cj = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1216), align 64
  %.not5.i = icmp sgt i32 %i.cj, %i.ci
  br i1 %.not5.i, label %bb.r, label %_ZNK2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE15ShouldFlushCodeENS0_6TaggedINS0_18SharedFunctionInfoEEE.exit

bb.p:                                             ; preds = %bb.o
  %i.ck = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1213), align 1, !range !28, !noundef !29
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %bb.q, label %_ZNK2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE5IsOldENS0_6TaggedINS0_18SharedFunctionInfoEEE.exit.i

bb.q:                                             ; preds = %bb.p
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.cn = load i8, ptr %i.cm, align 4, !range !28, !noundef !29
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %_ZNK2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE15ShouldFlushCodeENS0_6TaggedINS0_18SharedFunctionInfoEEE.exit, label %.split4.i

.split4.i:                                        ; preds = %bb.q
  %i.cp = add i64 %i.e, 67
  %i.cq = inttoptr i64 %i.cp to ptr
  %i.cr = load atomic volatile i16, ptr %i.cq monotonic, align 2
  %i.cs = icmp eq i16 %i.cr, -1
  br i1 %i.cs, label %_ZNK2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE15ShouldFlushCodeENS0_6TaggedINS0_18SharedFunctionInfoEEE.exit, label %bb.r

_ZNK2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE5IsOldENS0_6TaggedINS0_18SharedFunctionInfoEEE.exit.i: ; preds = %bb.p
  %i.ct = add i64 %i.e, 67
  %i.cu = inttoptr i64 %i.ct to ptr
  %i.cv = load atomic volatile i16, ptr %i.cu monotonic, align 2
  %i.cw = zext i16 %i.cv to i32
  %i.cx = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1208), align 8
  %.not.i18 = icmp sgt i32 %i.cx, %i.cw
  br i1 %.not.i18, label %bb.r, label %_ZNK2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE15ShouldFlushCodeENS0_6TaggedINS0_18SharedFunctionInfoEEE.exit

bb.r:                                             ; preds = %_ZNK2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE5IsOldENS0_6TaggedINS0_18SharedFunctionInfoEEE.exit.i, %.split4.i, %.split.i
  %i.cy = and i32 %.sroa.0.0.copyload.i, 4
  %i.cz = icmp ne i32 %i.cy, 0
  br label %_ZNK2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE15ShouldFlushCodeENS0_6TaggedINS0_18SharedFunctionInfoEEE.exit

_ZNK2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE15ShouldFlushCodeENS0_6TaggedINS0_18SharedFunctionInfoEEE.exit: ; preds = %bb.k, %bb.n, %_ZN2v88internal6IsCodeENS0_6TaggedINS0_6ObjectEEE.exit.thread.i, %bb.i, %bb.g, %bb.h, %bb.c, %bb.b, %bb.f, %_ZNK2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE27HasBytecodeArrayForFlushingENS0_6TaggedINS0_18SharedFunctionInfoEEE.exit, %.split.i, %bb.q, %.split4.i, %_ZNK2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE5IsOldENS0_6TaggedINS0_18SharedFunctionInfoEEE.exit.i, %bb.r, %_ZN2v88internal20IsSharedFunctionInfoENS0_6TaggedINS0_6ObjectEEE.exit, %_ZNK2v88internal10JSFunction8raw_codeENS0_17IsolateForSandboxENS_14AcquireLoadTagE.exit, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ false, %_ZN2v88internal20IsSharedFunctionInfoENS0_6TaggedINS0_6ObjectEEE.exit ], [ false, %bb.b ], [ false, %_ZNK2v88internal10JSFunction8raw_codeENS0_17IsolateForSandboxENS_14AcquireLoadTagE.exit ], [ true, %bb.q ], [ false, %bb.f ], [ false, %_ZNK2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE27HasBytecodeArrayForFlushingENS0_6TaggedINS0_18SharedFunctionInfoEEE.exit ], [ false, %bb.c ], [ true, %_ZNK2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE5IsOldENS0_6TaggedINS0_18SharedFunctionInfoEEE.exit.i ], [ %i.cz, %bb.r ], [ true, %.split4.i ], [ true, %.split.i ], [ false, %bb.k ], [ false, %bb.h ], [ false, %bb.g ], [ false, %bb.i ], [ false, %_ZN2v88internal6IsCodeENS0_6TaggedINS0_6ObjectEEE.exit.thread.i ], [ false, %bb.n ]
  ret i1 %.3
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal10JSFunction14BodyDescriptor11IterateBodyINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEEiPT_(i64 %0, i64 %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = add i64 %0, 13
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load atomic volatile i8, ptr %i.b monotonic, align 1
  %i.d = icmp slt i8 %i.c, 0
  %i.e = add i64 %1, -1                           ; 2 uses
  %i.f = add i64 %1, 7                            ; 2 uses
  %i.g = add i64 %1, 23                           ; 3 uses
  %i.h = icmp ult i64 %i.f, %i.g
  br i1 %i.h, label %.lr.ph.i, label %_ZN2v88internal18BodyDescriptorBase15IteratePointersINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiiPT_.exit

.lr.ph.i:                                         ; preds = %bb.a, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i
  %.sroa.019.028.i = phi i64 [ %i.l, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i ], [ %i.f, %bb.a ] ; 3 uses
  %i.i = inttoptr i64 %.sroa.019.028.i to ptr
  %i.j = load atomic volatile i64, ptr %i.i monotonic, align 8 ; 2 uses
  %i.k = trunc i64 %i.j to i1
  br i1 %i.k, label %bb.b, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i

bb.b:                                             ; preds = %.lr.ph.i
  tail call void @_ZN2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE23ProcessStrongHeapObjectINS0_18FullHeapObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %3, i64 %1, i64 %.sroa.019.028.i, i64 %i.j)
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i: ; preds = %bb.b, %.lr.ph.i
  %i.l = add i64 %.sroa.019.028.i, 8              ; 2 uses
  %i.m = icmp ult i64 %i.l, %i.g
  br i1 %i.m, label %.lr.ph.i, label %_ZN2v88internal18BodyDescriptorBase15IteratePointersINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiiPT_.exit, !llvm.loop !3

_ZN2v88internal18BodyDescriptorBase15IteratePointersINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiiPT_.exit: ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i, %bb.a
  %i.n = inttoptr i64 %i.g to ptr
  %i.o = load atomic volatile i32, ptr %i.n monotonic, align 4 ; 2 uses
  %i.p = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 10688
  %i.r = lshr i32 %i.o, 8
  %i.s = icmp ult i32 %i.o, 1048576
  br i1 %i.s, label %_ZN2v88internal18BodyDescriptorBase22IterateJSDispatchEntryINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal18BodyDescriptorBase15IteratePointersINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiiPT_.exit
  %i.t = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 216), align 8, !range !28, !noundef !29
  %i.u = trunc nuw i8 %i.t to i1
  %.not.i.i.i = xor i1 %i.u, true
  %i.v = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 219), align 1, !range !28
  %i.w = trunc nuw i8 %i.v to i1
  %or.cond.i.i.i = select i1 %.not.i.i.i, i1 true, i1 %i.w
  br i1 %or.cond.i.i.i, label %bb.d, label %_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.x = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal15ThreadIsolation13trusted_data_E, i64 8), align 8 ; 2 uses
  %.not7.i.i.i = icmp eq i32 %i.x, -1
  br i1 %.not7.i.i.i, label %_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN2v84base19MemoryProtectionKey20SetPermissionsForKeyEiNS1_10PermissionE(i32 noundef %i.x, i32 noundef 0) #26
  br label %_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit.i.i.i

_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit.i.i.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.y = load ptr, ptr %i.q, align 8
  %i.z = zext nneg i32 %i.r to i64
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.ac = load atomic i64, ptr %i.ab monotonic, align 8 ; 2 uses
  %i.ad = or i64 %i.ac, 65536
  %i.ae = cmpxchg ptr %i.ab, i64 %i.ac, i64 %i.ad monotonic monotonic, align 8 ; 0 uses
  %i.af = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 216), align 8, !range !28, !noundef !29
  %i.ag = trunc nuw i8 %i.af to i1
  %.not4.i.i.i = xor i1 %i.ag, true
  %i.ah = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 219), align 1, !range !28
  %i.ai = trunc nuw i8 %i.ah to i1
  %or.cond6.i.i.i = select i1 %.not4.i.i.i, i1 true, i1 %i.ai
  br i1 %or.cond6.i.i.i, label %bb.f, label %_ZN2v88internal18BodyDescriptorBase22IterateJSDispatchEntryINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_.exit

bb.f:                                             ; preds = %_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit.i.i.i
  %i.aj = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal15ThreadIsolation13trusted_data_E, i64 8), align 8 ; 2 uses
  %.not8.i.i.i = icmp eq i32 %i.aj, -1
  br i1 %.not8.i.i.i, label %_ZN2v88internal18BodyDescriptorBase22IterateJSDispatchEntryINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN2v84base19MemoryProtectionKey20SetPermissionsForKeyEiNS1_10PermissionE(i32 noundef %i.aj, i32 noundef 2) #26
  br label %_ZN2v88internal18BodyDescriptorBase22IterateJSDispatchEntryINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_.exit

_ZN2v88internal18BodyDescriptorBase22IterateJSDispatchEntryINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_.exit: ; preds = %_ZN2v88internal18BodyDescriptorBase15IteratePointersINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiiPT_.exit, %_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit.i.i.i, %bb.f, %bb.g
  %i.ak = add i64 %1, 31                          ; 2 uses
  %i.al = select i1 %i.d, i64 64, i64 56
  %i.am = add i64 %i.al, %i.e                     ; 4 uses
  %i.an = icmp ult i64 %i.ak, %i.am
  br i1 %i.an, label %.lr.ph.i14, label %_ZN2v88internal18BodyDescriptorBase15IteratePointersINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiiPT_.exit17

.lr.ph.i14:                                       ; preds = %_ZN2v88internal18BodyDescriptorBase22IterateJSDispatchEntryINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_.exit, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i16
  %.sroa.019.028.i15 = phi i64 [ %i.ar, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i16 ], [ %i.ak, %_ZN2v88internal18BodyDescriptorBase22IterateJSDispatchEntryINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_.exit ] ; 3 uses
  %i.ao = inttoptr i64 %.sroa.019.028.i15 to ptr
  %i.ap = load atomic volatile i64, ptr %i.ao monotonic, align 8 ; 2 uses
  %i.aq = trunc i64 %i.ap to i1
  br i1 %i.aq, label %bb.h, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i16

bb.h:                                             ; preds = %.lr.ph.i14
  tail call void @_ZN2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE23ProcessStrongHeapObjectINS0_18FullHeapObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %3, i64 %1, i64 %.sroa.019.028.i15, i64 %i.ap)
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i16

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i16: ; preds = %bb.h, %.lr.ph.i14
  %i.ar = add i64 %.sroa.019.028.i15, 8           ; 2 uses
  %i.as = icmp ult i64 %i.ar, %i.am
  br i1 %i.as, label %.lr.ph.i14, label %_ZN2v88internal18BodyDescriptorBase15IteratePointersINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiiPT_.exit17, !llvm.loop !3

_ZN2v88internal18BodyDescriptorBase15IteratePointersINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiiPT_.exit17: ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i16, %_ZN2v88internal18BodyDescriptorBase22IterateJSDispatchEntryINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_.exit
  %i.at = sext i32 %2 to i64
  %i.au = add i64 %i.e, %i.at                     ; 2 uses
  %i.av = icmp ult i64 %i.am, %i.au
  br i1 %i.av, label %.lr.ph.i.i, label %_ZN2v88internal18BodyDescriptorBase23IterateJSObjectBodyImplINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEEiiPT_.exit

.lr.ph.i.i:                                       ; preds = %_ZN2v88internal18BodyDescriptorBase15IteratePointersINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiiPT_.exit17, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i
  %.sroa.019.028.i.i = phi i64 [ %i.az, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i ], [ %i.am, %_ZN2v88internal18BodyDescriptorBase15IteratePointersINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiiPT_.exit17 ] ; 3 uses
  %i.aw = inttoptr i64 %.sroa.019.028.i.i to ptr
  %i.ax = load atomic volatile i64, ptr %i.aw monotonic, align 8 ; 2 uses
  %i.ay = trunc i64 %i.ax to i1
  br i1 %i.ay, label %bb.i, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i

bb.i:                                             ; preds = %.lr.ph.i.i
  tail call void @_ZN2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE23ProcessStrongHeapObjectINS0_18FullHeapObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %3, i64 %1, i64 %.sroa.019.028.i.i, i64 %i.ax)
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i: ; preds = %bb.i, %.lr.ph.i.i
  %i.az = add i64 %.sroa.019.028.i.i, 8           ; 2 uses
  %i.ba = icmp ult i64 %i.az, %i.au
  br i1 %i.ba, label %.lr.ph.i.i, label %_ZN2v88internal18BodyDescriptorBase23IterateJSObjectBodyImplINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEEiiPT_.exit, !llvm.loop !3

_ZN2v88internal18BodyDescriptorBase23IterateJSObjectBodyImplINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEEiiPT_.exit: ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i, %_ZN2v88internal18BodyDescriptorBase15IteratePointersINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiiPT_.exit17
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2v88internal10JSFunction23IsOptimizationRequestedEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 10688
  %i.c = load i64, ptr %0, align 8
  %i.d = add i64 %i.c, 23
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load atomic volatile i32, ptr %i.e monotonic, align 4
  %i.g = lshr i32 %i.f, 8
  %i.h = load ptr, ptr %i.b, align 8
  %i.i = zext nneg i32 %i.g to i64
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.i ; 2 uses
  %i.k = load atomic i64, ptr %i.j monotonic, align 8
  %i.l = icmp ugt i64 %i.k, -281474976710657
  br i1 %i.l, label %bb.b, label %_ZN2v88internal15JSDispatchTable13GetEntrypointENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEE.exit.i, !prof !27

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.43) #27
  unreachable

_ZN2v88internal15JSDispatchTable13GetEntrypointENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEE.exit.i: ; preds = %bb.a
  %i.m = load atomic i64, ptr %i.j monotonic, align 8 ; 2 uses
  %i.n = tail call noundef ptr @_ZNK2v88internal7Isolate18embedded_blob_codeEv(ptr noundef nonnull align 8 dereferenceable(64320) %1) #26, !noalias !277 ; 2 uses
  %i.o = tail call noundef i32 @_ZNK2v88internal7Isolate23embedded_blob_code_sizeEv(ptr noundef nonnull align 8 dereferenceable(64320) %1) #26, !noalias !277 ; 0 uses
  %i.p = tail call noundef ptr @_ZNK2v88internal7Isolate18embedded_blob_dataEv(ptr noundef nonnull align 8 dereferenceable(64320) %1) #26, !noalias !277 ; 2 uses
  %i.q = tail call noundef i32 @_ZNK2v88internal7Isolate23embedded_blob_data_sizeEv(ptr noundef nonnull align 8 dereferenceable(64320) %1) #26, !noalias !277 ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 1308
  %i.s = load i32, ptr %i.r, align 4
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.t
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = icmp eq i64 %i.m, %i.v
  br i1 %i.w, label %_ZNK2v88internal10JSFunction19IsTurbofanRequestedEPNS0_7IsolateE.exit, label %_ZNK2v88internal10JSFunction17IsMaglevRequestedEPNS0_7IsolateE.exit

_ZNK2v88internal10JSFunction17IsMaglevRequestedEPNS0_7IsolateE.exit: ; preds = %_ZN2v88internal15JSDispatchTable13GetEntrypointENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEE.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 1320
  %i.y = load i32, ptr %i.x, align 4
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.z
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = icmp eq i64 %i.m, %i.ab
  br i1 %i.ac, label %_ZNK2v88internal10JSFunction19IsTurbofanRequestedEPNS0_7IsolateE.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK2v88internal10JSFunction17IsMaglevRequestedEPNS0_7IsolateE.exit
  %i.ad = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 10688
  %i.af = load i64, ptr %0, align 8
  %i.ag = add i64 %i.af, 23
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = load atomic volatile i32, ptr %i.ah monotonic, align 4
  %i.aj = lshr i32 %i.ai, 8
  %i.ak = load ptr, ptr %i.ae, align 8
  %i.al = zext nneg i32 %i.aj to i64
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %i.al ; 2 uses
  %i.an = load atomic i64, ptr %i.am monotonic, align 8
  %i.ao = icmp ugt i64 %i.an, -281474976710657
  br i1 %i.ao, label %bb.d, label %_ZN2v88internal15JSDispatchTable13GetEntrypointENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEE.exit.i3, !prof !27

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.43) #27
  unreachable

_ZN2v88internal15JSDispatchTable13GetEntrypointENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEE.exit.i3: ; preds = %bb.c
  %i.ap = load atomic i64, ptr %i.am monotonic, align 8 ; 2 uses
  %i.aq = tail call noundef ptr @_ZNK2v88internal7Isolate18embedded_blob_codeEv(ptr noundef nonnull align 8 dereferenceable(64320) %1) #26, !noalias !278 ; 2 uses
  %i.ar = tail call noundef i32 @_ZNK2v88internal7Isolate23embedded_blob_code_sizeEv(ptr noundef nonnull align 8 dereferenceable(64320) %1) #26, !noalias !278 ; 0 uses
  %i.as = tail call noundef ptr @_ZNK2v88internal7Isolate18embedded_blob_dataEv(ptr noundef nonnull align 8 dereferenceable(64320) %1) #26, !noalias !278 ; 2 uses
  %i.at = tail call noundef i32 @_ZNK2v88internal7Isolate23embedded_blob_data_sizeEv(ptr noundef nonnull align 8 dereferenceable(64320) %1) #26, !noalias !278 ; 0 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 1332
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.aw
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = icmp eq i64 %i.ap, %i.ay
  br i1 %i.az, label %_ZNK2v88internal10JSFunction19IsTurbofanRequestedEPNS0_7IsolateE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal15JSDispatchTable13GetEntrypointENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEE.exit.i3
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 1344
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bc
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = icmp eq i64 %i.ap, %i.be
  br label %_ZNK2v88internal10JSFunction19IsTurbofanRequestedEPNS0_7IsolateE.exit

_ZNK2v88internal10JSFunction19IsTurbofanRequestedEPNS0_7IsolateE.exit: ; preds = %_ZN2v88internal15JSDispatchTable13GetEntrypointENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEE.exit.i, %bb.e, %_ZN2v88internal15JSDispatchTable13GetEntrypointENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEE.exit.i3, %_ZNK2v88internal10JSFunction17IsMaglevRequestedEPNS0_7IsolateE.exit
  %i.bg = phi i1 [ true, %_ZNK2v88internal10JSFunction17IsMaglevRequestedEPNS0_7IsolateE.exit ], [ %i.bf, %bb.e ], [ true, %_ZN2v88internal15JSDispatchTable13GetEntrypointENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEE.exit.i3 ], [ true, %_ZN2v88internal15JSDispatchTable13GetEntrypointENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEE.exit.i ]
  ret i1 %i.bg
}

declare noundef ptr @_ZNK2v88internal7Isolate18embedded_blob_codeEv(ptr noundef nonnull align 8 dereferenceable(64320)) local_unnamed_addr #5

declare noundef i32 @_ZNK2v88internal7Isolate23embedded_blob_code_sizeEv(ptr noundef nonnull align 8 dereferenceable(64320)) local_unnamed_addr #5

declare noundef ptr @_ZNK2v88internal7Isolate18embedded_blob_dataEv(ptr noundef nonnull align 8 dereferenceable(64320)) local_unnamed_addr #5

declare noundef i32 @_ZNK2v88internal7Isolate23embedded_blob_data_sizeEv(ptr noundef nonnull align 8 dereferenceable(64320)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10JSFunctionEEELt64EE5Local18PublishPushSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #26
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !nonnull !29, !align !30 ; 4 uses
  %i.e = load ptr, ptr %i.a, align 8              ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(24) %i.d) #26
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.g, ptr %i.h, align 8
  store ptr %i.e, ptr %i.f, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.j = atomicrmw add ptr %i.i, i64 1 monotonic, align 8 ; 0 uses
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(24) %i.d) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_10JSFunctionEEELt64EE5Local10NewSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load i8, ptr @_ZN4heap4base12WorklistBase18predictable_order_E, align 1, !range !28, !noundef !29
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = tail call noalias noundef dereferenceable_or_null(528) ptr @malloc(i64 noundef 528) #31 ; 6 uses
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @malloc_usable_size(ptr noundef %i.c) #26
  %i.e = add i64 %i.d, 524272
  %i.f = lshr i64 %i.e, 3
  %i.g = trunc i64 %i.f to i16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.6.0.i = phi i16 [ %i.g, %bb.b ], [ 64, %bb.a ]
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.d, label %_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10JSFunctionEEELt64EE7Segment6CreateEt.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v84base8FatalOOMENS0_7OOMTypeEPKc(i32 noundef 1, ptr noundef nonnull @.str.23) #27
  unreachable

_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10JSFunctionEEELt64EE7Segment6CreateEt.exit: ; preds = %bb.c
  store i16 %.sroa.6.0.i, ptr %i.c, align 2
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i16 0, ptr %i.h, align 2
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr null, ptr %i.i, align 8
  ret ptr %i.c
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8JSRegExp14BodyDescriptor11IterateBodyINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEEiPT_(i64 %0, i64 %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = add i64 %1, -1
  %i.b = add i64 %1, 7                            ; 2 uses
  %i.c = add i64 %1, 23                           ; 4 uses
  %i.d = icmp ult i64 %i.b, %i.c
  br i1 %i.d, label %.lr.ph.i, label %_ZN2v88internal18BodyDescriptorBase15IteratePointersINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiiPT_.exit

.lr.ph.i:                                         ; preds = %bb.a, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i
  %.sroa.019.028.i = phi i64 [ %i.h, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = inttoptr i64 %.sroa.019.028.i to ptr
  %i.f = load atomic volatile i64, ptr %i.e monotonic, align 8 ; 2 uses
  %i.g = trunc i64 %i.f to i1
  br i1 %i.g, label %bb.b, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i

bb.b:                                             ; preds = %.lr.ph.i
  tail call void @_ZN2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE23ProcessStrongHeapObjectINS0_18FullHeapObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %3, i64 %1, i64 %.sroa.019.028.i, i64 %i.f)
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i: ; preds = %bb.b, %.lr.ph.i
  %i.h = add i64 %.sroa.019.028.i, 8              ; 2 uses
  %i.i = icmp ult i64 %i.h, %i.c
  br i1 %i.i, label %.lr.ph.i, label %_ZN2v88internal18BodyDescriptorBase15IteratePointersINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiiPT_.exit, !llvm.loop !3

_ZN2v88internal18BodyDescriptorBase15IteratePointersINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiiPT_.exit: ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i, %bb.a
  %i.j = add i64 %1, 31                           ; 3 uses
  %i.k = icmp ult i64 %i.c, -8
  br i1 %i.k, label %.lr.ph.i.i, label %_ZN2v88internal18BodyDescriptorBase21IterateTrustedPointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_NS0_19IndirectPointerModeENS0_18IndirectPointerTagE.exit

.lr.ph.i.i:                                       ; preds = %_ZN2v88internal18BodyDescriptorBase15IteratePointersINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiiPT_.exit, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i
  %.sroa.09.017.i.i = phi i64 [ %i.o, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i ], [ %i.c, %_ZN2v88internal18BodyDescriptorBase15IteratePointersINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiiPT_.exit ] ; 3 uses
  %i.l = inttoptr i64 %.sroa.09.017.i.i to ptr
  %i.m = load atomic volatile i64, ptr %i.l monotonic, align 8 ; 2 uses
  %i.n = trunc i64 %i.m to i1
  br i1 %i.n, label %bb.c, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  tail call void @_ZN2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE23ProcessStrongHeapObjectINS0_18FullHeapObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %3, i64 %1, i64 %.sroa.09.017.i.i, i64 %i.m)
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i: ; preds = %bb.c, %.lr.ph.i.i
  %i.o = add i64 %.sroa.09.017.i.i, 8             ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.j
  br i1 %i.p, label %.lr.ph.i.i, label %_ZN2v88internal18BodyDescriptorBase21IterateTrustedPointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_NS0_19IndirectPointerModeENS0_18IndirectPointerTagE.exit, !llvm.loop !3

_ZN2v88internal18BodyDescriptorBase21IterateTrustedPointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_NS0_19IndirectPointerModeENS0_18IndirectPointerTagE.exit: ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i, %_ZN2v88internal18BodyDescriptorBase15IteratePointersINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiiPT_.exit
  %i.q = add i64 %1, 39
  %i.r = icmp ult i64 %i.j, -8
  br i1 %i.r, label %.lr.ph.i13, label %_ZN2v88internal18BodyDescriptorBase14IteratePointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_.exit

.lr.ph.i13:                                       ; preds = %_ZN2v88internal18BodyDescriptorBase21IterateTrustedPointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_NS0_19IndirectPointerModeENS0_18IndirectPointerTagE.exit, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i14
  %.sroa.09.017.i = phi i64 [ %i.v, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i14 ], [ %i.j, %_ZN2v88internal18BodyDescriptorBase21IterateTrustedPointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_NS0_19IndirectPointerModeENS0_18IndirectPointerTagE.exit ] ; 3 uses
  %i.s = inttoptr i64 %.sroa.09.017.i to ptr
  %i.t = load atomic volatile i64, ptr %i.s monotonic, align 8 ; 2 uses
  %i.u = trunc i64 %i.t to i1
  br i1 %i.u, label %bb.d, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i14

bb.d:                                             ; preds = %.lr.ph.i13
  tail call void @_ZN2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE23ProcessStrongHeapObjectINS0_18FullHeapObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %3, i64 %1, i64 %.sroa.09.017.i, i64 %i.t)
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i14

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i14: ; preds = %bb.d, %.lr.ph.i13
  %i.v = add i64 %.sroa.09.017.i, 8               ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.q
  br i1 %i.w, label %.lr.ph.i13, label %_ZN2v88internal18BodyDescriptorBase14IteratePointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_.exit, !llvm.loop !3

_ZN2v88internal18BodyDescriptorBase14IteratePointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_.exit: ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i14, %_ZN2v88internal18BodyDescriptorBase21IterateTrustedPointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_NS0_19IndirectPointerModeENS0_18IndirectPointerTagE.exit
  %i.x = add i64 %1, 47                           ; 2 uses
  %i.y = sext i32 %2 to i64
  %i.z = add i64 %i.a, %i.y                       ; 2 uses
  %i.aa = icmp ult i64 %i.x, %i.z
  br i1 %i.aa, label %.lr.ph.i.i15, label %_ZN2v88internal18BodyDescriptorBase23IterateJSObjectBodyImplINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEEiiPT_.exit

.lr.ph.i.i15:                                     ; preds = %_ZN2v88internal18BodyDescriptorBase14IteratePointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_.exit, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i16
  %.sroa.019.028.i.i = phi i64 [ %i.ae, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i16 ], [ %i.x, %_ZN2v88internal18BodyDescriptorBase14IteratePointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_.exit ] ; 3 uses
  %i.ab = inttoptr i64 %.sroa.019.028.i.i to ptr
  %i.ac = load atomic volatile i64, ptr %i.ab monotonic, align 8 ; 2 uses
  %i.ad = trunc i64 %i.ac to i1
  br i1 %i.ad, label %bb.e, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i16

bb.e:                                             ; preds = %.lr.ph.i.i15
  tail call void @_ZN2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE23ProcessStrongHeapObjectINS0_18FullHeapObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %3, i64 %1, i64 %.sroa.019.028.i.i, i64 %i.ac)
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i16

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i16: ; preds = %bb.e, %.lr.ph.i.i15
  %i.ae = add i64 %.sroa.019.028.i.i, 8           ; 2 uses
  %i.af = icmp ult i64 %i.ae, %i.z
  br i1 %i.af, label %.lr.ph.i.i15, label %_ZN2v88internal18BodyDescriptorBase23IterateJSObjectBodyImplINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEEiiPT_.exit, !llvm.loop !3

_ZN2v88internal18BodyDescriptorBase23IterateJSObjectBodyImplINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEEiiPT_.exit: ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i16, %_ZN2v88internal18BodyDescriptorBase14IteratePointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_9JSWeakRefEEELt64EE5Local18PublishPushSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #26
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !nonnull !29, !align !30 ; 4 uses
  %i.e = load ptr, ptr %i.a, align 8              ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(24) %i.d) #26
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
end_hunk_3
begin_hunk_4_@_ZN2v88internal18WasmInstanceObject14BodyDescriptor11IterateBodyINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEEiPT_:bb.a
  %i.g = trunc i64 %i.f to i1
  br i1 %i.g, label %bb.b, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i

bb.b:                                             ; preds = %.lr.ph.i
  tail call void @_ZN2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE23ProcessStrongHeapObjectINS0_18FullHeapObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %3, i64 %1, i64 %.sroa.019.028.i, i64 %i.f)
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i: ; preds = %bb.b, %.lr.ph.i
  %i.h = add i64 %.sroa.019.028.i, 8              ; 2 uses
  %i.i = icmp ult i64 %i.h, %i.c
  br i1 %i.i, label %.lr.ph.i, label %_ZN2v88internal18BodyDescriptorBase15IteratePointersINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiiPT_.exit, !llvm.loop !3

_ZN2v88internal18BodyDescriptorBase15IteratePointersINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiiPT_.exit: ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i, %bb.a
  %i.j = add i64 %1, 31                           ; 3 uses
  %i.k = icmp ult i64 %i.c, -8
  br i1 %i.k, label %.lr.ph.i.i, label %_ZN2v88internal18BodyDescriptorBase21IterateTrustedPointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_NS0_19IndirectPointerModeENS0_18IndirectPointerTagE.exit

.lr.ph.i.i:                                       ; preds = %_ZN2v88internal18BodyDescriptorBase15IteratePointersINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiiPT_.exit, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i
  %.sroa.09.017.i.i = phi i64 [ %i.o, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i ], [ %i.c, %_ZN2v88internal18BodyDescriptorBase15IteratePointersINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiiPT_.exit ] ; 3 uses
  %i.l = inttoptr i64 %.sroa.09.017.i.i to ptr
  %i.m = load atomic volatile i64, ptr %i.l monotonic, align 8 ; 2 uses
  %i.n = trunc i64 %i.m to i1
  br i1 %i.n, label %bb.c, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  tail call void @_ZN2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE23ProcessStrongHeapObjectINS0_18FullHeapObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %3, i64 %1, i64 %.sroa.09.017.i.i, i64 %i.m)
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i: ; preds = %bb.c, %.lr.ph.i.i
  %i.o = add i64 %.sroa.09.017.i.i, 8             ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.j
  br i1 %i.p, label %.lr.ph.i.i, label %_ZN2v88internal18BodyDescriptorBase21IterateTrustedPointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_NS0_19IndirectPointerModeENS0_18IndirectPointerTagE.exit, !llvm.loop !3

_ZN2v88internal18BodyDescriptorBase21IterateTrustedPointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_NS0_19IndirectPointerModeENS0_18IndirectPointerTagE.exit: ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i, %_ZN2v88internal18BodyDescriptorBase15IteratePointersINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiiPT_.exit
  %i.q = add i64 %1, 39                           ; 3 uses
  %i.r = icmp ult i64 %i.j, -8
  br i1 %i.r, label %.lr.ph.i16, label %_ZN2v88internal18BodyDescriptorBase14IteratePointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_.exit

.lr.ph.i16:                                       ; preds = %_ZN2v88internal18BodyDescriptorBase21IterateTrustedPointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_NS0_19IndirectPointerModeENS0_18IndirectPointerTagE.exit, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i17
  %.sroa.09.017.i = phi i64 [ %i.v, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i17 ], [ %i.j, %_ZN2v88internal18BodyDescriptorBase21IterateTrustedPointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_NS0_19IndirectPointerModeENS0_18IndirectPointerTagE.exit ] ; 3 uses
  %i.s = inttoptr i64 %.sroa.09.017.i to ptr
  %i.t = load atomic volatile i64, ptr %i.s monotonic, align 8 ; 2 uses
  %i.u = trunc i64 %i.t to i1
  br i1 %i.u, label %bb.d, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i17

bb.d:                                             ; preds = %.lr.ph.i16
  tail call void @_ZN2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE23ProcessStrongHeapObjectINS0_18FullHeapObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %3, i64 %1, i64 %.sroa.09.017.i, i64 %i.t)
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i17

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i17: ; preds = %bb.d, %.lr.ph.i16
  %i.v = add i64 %.sroa.09.017.i, 8               ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.q
  br i1 %i.w, label %.lr.ph.i16, label %_ZN2v88internal18BodyDescriptorBase14IteratePointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_.exit, !llvm.loop !3

_ZN2v88internal18BodyDescriptorBase14IteratePointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_.exit: ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i17, %_ZN2v88internal18BodyDescriptorBase21IterateTrustedPointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_NS0_19IndirectPointerModeENS0_18IndirectPointerTagE.exit
  %i.x = add i64 %1, 47                           ; 3 uses
  %i.y = icmp ult i64 %i.q, -8
  br i1 %i.y, label %.lr.ph.i18, label %_ZN2v88internal18BodyDescriptorBase14IteratePointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_.exit21

.lr.ph.i18:                                       ; preds = %_ZN2v88internal18BodyDescriptorBase14IteratePointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_.exit, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i20
  %.sroa.09.017.i19 = phi i64 [ %i.ac, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i20 ], [ %i.q, %_ZN2v88internal18BodyDescriptorBase14IteratePointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_.exit ] ; 3 uses
  %i.z = inttoptr i64 %.sroa.09.017.i19 to ptr
  %i.aa = load atomic volatile i64, ptr %i.z monotonic, align 8 ; 2 uses
  %i.ab = trunc i64 %i.aa to i1
  br i1 %i.ab, label %bb.e, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i20

bb.e:                                             ; preds = %.lr.ph.i18
  tail call void @_ZN2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE23ProcessStrongHeapObjectINS0_18FullHeapObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %3, i64 %1, i64 %.sroa.09.017.i19, i64 %i.aa)
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i20

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i20: ; preds = %bb.e, %.lr.ph.i18
  %i.ac = add i64 %.sroa.09.017.i19, 8            ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %i.x
  br i1 %i.ad, label %.lr.ph.i18, label %_ZN2v88internal18BodyDescriptorBase14IteratePointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_.exit21, !llvm.loop !3

_ZN2v88internal18BodyDescriptorBase14IteratePointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_.exit21: ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i20, %_ZN2v88internal18BodyDescriptorBase14IteratePointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_.exit
  %i.ae = sext i32 %2 to i64
  %i.af = add i64 %i.a, %i.ae                     ; 2 uses
  %i.ag = icmp ult i64 %i.x, %i.af
  br i1 %i.ag, label %.lr.ph.i.i22, label %_ZN2v88internal18BodyDescriptorBase23IterateJSObjectBodyImplINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEEiiPT_.exit

.lr.ph.i.i22:                                     ; preds = %_ZN2v88internal18BodyDescriptorBase14IteratePointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_.exit21, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i23
  %.sroa.019.028.i.i = phi i64 [ %i.ak, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i23 ], [ %i.x, %_ZN2v88internal18BodyDescriptorBase14IteratePointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_.exit21 ] ; 3 uses
  %i.ah = inttoptr i64 %.sroa.019.028.i.i to ptr
  %i.ai = load atomic volatile i64, ptr %i.ah monotonic, align 8 ; 2 uses
  %i.aj = trunc i64 %i.ai to i1
  br i1 %i.aj, label %bb.f, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i23

bb.f:                                             ; preds = %.lr.ph.i.i22
  tail call void @_ZN2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE23ProcessStrongHeapObjectINS0_18FullHeapObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %3, i64 %1, i64 %.sroa.019.028.i.i, i64 %i.ai)
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i23

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i23: ; preds = %bb.f, %.lr.ph.i.i22
  %i.ak = add i64 %.sroa.019.028.i.i, 8           ; 2 uses
  %i.al = icmp ult i64 %i.ak, %i.af
  br i1 %i.al, label %.lr.ph.i.i22, label %_ZN2v88internal18BodyDescriptorBase23IterateJSObjectBodyImplINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEEiiPT_.exit, !llvm.loop !3

_ZN2v88internal18BodyDescriptorBase23IterateJSObjectBodyImplINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEEiiPT_.exit: ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i23, %_ZN2v88internal18BodyDescriptorBase14IteratePointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_.exit21
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal15WasmTableObject14BodyDescriptor11IterateBodyINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEEiPT_(i64 %0, i64 %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = add i64 %1, -1
  %i.b = add i64 %1, 7                            ; 2 uses
  %i.c = add i64 %1, 55                           ; 4 uses
  %i.d = icmp ult i64 %i.b, %i.c
  br i1 %i.d, label %.lr.ph.i, label %_ZN2v88internal18BodyDescriptorBase15IteratePointersINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiiPT_.exit

.lr.ph.i:                                         ; preds = %bb.a, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i
  %.sroa.019.028.i = phi i64 [ %i.h, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = inttoptr i64 %.sroa.019.028.i to ptr
  %i.f = load atomic volatile i64, ptr %i.e monotonic, align 8 ; 2 uses
  %i.g = trunc i64 %i.f to i1
  br i1 %i.g, label %bb.b, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i

bb.b:                                             ; preds = %.lr.ph.i
  tail call void @_ZN2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE23ProcessStrongHeapObjectINS0_18FullHeapObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %3, i64 %1, i64 %.sroa.019.028.i, i64 %i.f)
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i: ; preds = %bb.b, %.lr.ph.i
  %i.h = add i64 %.sroa.019.028.i, 8              ; 2 uses
  %i.i = icmp ult i64 %i.h, %i.c
  br i1 %i.i, label %.lr.ph.i, label %_ZN2v88internal18BodyDescriptorBase15IteratePointersINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiiPT_.exit, !llvm.loop !3

_ZN2v88internal18BodyDescriptorBase15IteratePointersINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiiPT_.exit: ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i, %bb.a
  %i.j = add i64 %1, 63                           ; 3 uses
  %i.k = icmp ult i64 %i.c, -8
  br i1 %i.k, label %.lr.ph.i.i, label %_ZN2v88internal18BodyDescriptorBase21IterateTrustedPointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_NS0_19IndirectPointerModeENS0_18IndirectPointerTagE.exit

.lr.ph.i.i:                                       ; preds = %_ZN2v88internal18BodyDescriptorBase15IteratePointersINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiiPT_.exit, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i
  %.sroa.09.017.i.i = phi i64 [ %i.o, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i ], [ %i.c, %_ZN2v88internal18BodyDescriptorBase15IteratePointersINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiiPT_.exit ] ; 3 uses
  %i.l = inttoptr i64 %.sroa.09.017.i.i to ptr
  %i.m = load atomic volatile i64, ptr %i.l monotonic, align 8 ; 2 uses
  %i.n = trunc i64 %i.m to i1
  br i1 %i.n, label %bb.c, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  tail call void @_ZN2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE23ProcessStrongHeapObjectINS0_18FullHeapObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %3, i64 %1, i64 %.sroa.09.017.i.i, i64 %i.m)
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i: ; preds = %bb.c, %.lr.ph.i.i
  %i.o = add i64 %.sroa.09.017.i.i, 8             ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.j
  br i1 %i.p, label %.lr.ph.i.i, label %_ZN2v88internal18BodyDescriptorBase21IterateTrustedPointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_NS0_19IndirectPointerModeENS0_18IndirectPointerTagE.exit, !llvm.loop !3

_ZN2v88internal18BodyDescriptorBase21IterateTrustedPointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_NS0_19IndirectPointerModeENS0_18IndirectPointerTagE.exit: ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i, %_ZN2v88internal18BodyDescriptorBase15IteratePointersINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiiPT_.exit
  %i.q = add i64 %1, 71
  %i.r = icmp ult i64 %i.j, -8
  br i1 %i.r, label %.lr.ph.i.i13, label %_ZN2v88internal18BodyDescriptorBase21IterateTrustedPointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_NS0_19IndirectPointerModeENS0_18IndirectPointerTagE.exit16

.lr.ph.i.i13:                                     ; preds = %_ZN2v88internal18BodyDescriptorBase21IterateTrustedPointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_NS0_19IndirectPointerModeENS0_18IndirectPointerTagE.exit, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i15
  %.sroa.09.017.i.i14 = phi i64 [ %i.v, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i15 ], [ %i.j, %_ZN2v88internal18BodyDescriptorBase21IterateTrustedPointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_NS0_19IndirectPointerModeENS0_18IndirectPointerTagE.exit ] ; 3 uses
  %i.s = inttoptr i64 %.sroa.09.017.i.i14 to ptr
  %i.t = load atomic volatile i64, ptr %i.s monotonic, align 8 ; 2 uses
  %i.u = trunc i64 %i.t to i1
  br i1 %i.u, label %bb.d, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i15

bb.d:                                             ; preds = %.lr.ph.i.i13
  tail call void @_ZN2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE23ProcessStrongHeapObjectINS0_18FullHeapObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %3, i64 %1, i64 %.sroa.09.017.i.i14, i64 %i.t)
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i15

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i15: ; preds = %bb.d, %.lr.ph.i.i13
  %i.v = add i64 %.sroa.09.017.i.i14, 8           ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.q
  br i1 %i.w, label %.lr.ph.i.i13, label %_ZN2v88internal18BodyDescriptorBase21IterateTrustedPointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_NS0_19IndirectPointerModeENS0_18IndirectPointerTagE.exit16, !llvm.loop !3

_ZN2v88internal18BodyDescriptorBase21IterateTrustedPointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_NS0_19IndirectPointerModeENS0_18IndirectPointerTagE.exit16: ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i15, %_ZN2v88internal18BodyDescriptorBase21IterateTrustedPointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_NS0_19IndirectPointerModeENS0_18IndirectPointerTagE.exit
  %i.x = add i64 %1, 79                           ; 2 uses
  %i.y = sext i32 %2 to i64
  %i.z = add i64 %i.a, %i.y                       ; 2 uses
  %i.aa = icmp ult i64 %i.x, %i.z
  br i1 %i.aa, label %.lr.ph.i.i17, label %_ZN2v88internal18BodyDescriptorBase23IterateJSObjectBodyImplINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEEiiPT_.exit

.lr.ph.i.i17:                                     ; preds = %_ZN2v88internal18BodyDescriptorBase21IterateTrustedPointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_NS0_19IndirectPointerModeENS0_18IndirectPointerTagE.exit16, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i18
  %.sroa.019.028.i.i = phi i64 [ %i.ae, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i18 ], [ %i.x, %_ZN2v88internal18BodyDescriptorBase21IterateTrustedPointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_NS0_19IndirectPointerModeENS0_18IndirectPointerTagE.exit16 ] ; 3 uses
  %i.ab = inttoptr i64 %.sroa.019.028.i.i to ptr
  %i.ac = load atomic volatile i64, ptr %i.ab monotonic, align 8 ; 2 uses
  %i.ad = trunc i64 %i.ac to i1
  br i1 %i.ad, label %bb.e, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i18

bb.e:                                             ; preds = %.lr.ph.i.i17
  tail call void @_ZN2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE23ProcessStrongHeapObjectINS0_18FullHeapObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %3, i64 %1, i64 %.sroa.019.028.i.i, i64 %i.ac)
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i18

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i18: ; preds = %bb.e, %.lr.ph.i.i17
  %i.ae = add i64 %.sroa.019.028.i.i, 8           ; 2 uses
  %i.af = icmp ult i64 %i.ae, %i.z
  br i1 %i.af, label %.lr.ph.i.i17, label %_ZN2v88internal18BodyDescriptorBase23IterateJSObjectBodyImplINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEEiiPT_.exit, !llvm.loop !3

_ZN2v88internal18BodyDescriptorBase23IterateJSObjectBodyImplINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEEiiPT_.exit: ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i18, %_ZN2v88internal18BodyDescriptorBase21IterateTrustedPointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_NS0_19IndirectPointerModeENS0_18IndirectPointerTagE.exit16
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal9ScopeInfo14BodyDescriptor6SizeOfENS0_6TaggedINS0_3MapEEENS3_INS0_10HeapObjectEEE(i64 %0, i64 %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = add i64 %1, 7
  %i.b = inttoptr i64 %i.a to ptr                 ; 9 uses
  %i.c = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !303
  %i.d = add i64 %1, 23
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load i64, ptr %i.e, align 8, !noalias !304 ; 3 uses
  %i.g = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !305
  %i.h = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !306
  %i.i = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !307
  %i.j = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !308
  %i.k = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !309
  %i.l = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !310
  %i.m = and i32 %i.l, 15
  %i.n = icmp eq i32 %i.m, 5
  br i1 %i.n, label %bb.b, label %_ZNK2v88internal24TorqueGeneratedScopeInfoINS0_9ScopeInfoENS0_10HeapObjectEE13AllocatedSizeEv.exit

bb.b:                                             ; preds = %bb.a
  %i.o = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !311
  %i.p = and i32 %i.o, 15
  %i.q = icmp eq i32 %i.p, 5
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = add i64 %1, 47
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load i64, ptr %i.s, align 8, !noalias !310
  %i.u = ashr i64 %i.t, 32
  %i.v = mul nsw i64 %i.u, 24
  br label %_ZNK2v88internal24TorqueGeneratedScopeInfoINS0_9ScopeInfoENS0_10HeapObjectEE13AllocatedSizeEv.exit

bb.d:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.22) #27, !noalias !310
  unreachable

_ZNK2v88internal24TorqueGeneratedScopeInfoINS0_9ScopeInfoENS0_10HeapObjectEE13AllocatedSizeEv.exit: ; preds = %bb.a, %bb.c
  %storemerge.i.i.i = phi i64 [ %i.v, %bb.c ], [ 0, %bb.a ]
  %i.w = and i32 %i.k, 15
  %i.x = icmp eq i32 %i.w, 5
  %i.y = select i1 %i.x, i64 8, i64 0
  %i.z = icmp sgt i64 %i.f, 322122547199
  %i.aa = select i1 %i.z, i64 8, i64 0
  %i.ab = and i32 %i.c, 15
  %i.ac = icmp eq i32 %i.ab, 5
  %i.ad = select i1 %i.ac, i64 56, i64 48
  %i.ae = add nuw nsw i64 %i.aa, %i.ad
  %i.af = ashr i64 %i.f, 29
  %i.ag = and i64 %i.af, -8                       ; 2 uses
  %i.ah = add nsw i64 %i.ae, %i.ag
  %i.ai = icmp slt i64 %i.f, 322122547200
  %i.aj = select i1 %i.ai, i64 %i.ag, i64 0
  %i.ak = add nsw i64 %i.ah, %i.aj
  %i.al = lshr i32 %i.g, 7
  %i.am = and i32 %i.al, 8
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = add nsw i64 %i.ak, %i.an
  %i.ap = and i32 %i.h, 12288
  %.not.i.not.i.i.i.i.i.i = icmp eq i32 %i.ap, 0
  %i.aq = select i1 %.not.i.not.i.i.i.i.i.i, i64 0, i64 16
  %i.ar = add nsw i64 %i.ao, %i.aq
  %i.as = lshr i32 %i.i, 11
  %i.at = and i32 %i.as, 8
  %i.au = zext nneg i32 %i.at to i64
  %i.av = add nsw i64 %i.ar, %i.au
  %i.aw = lshr i32 %i.j, 19
  %i.ax = and i32 %i.aw, 8
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = add nsw i64 %i.av, %i.ay
  %i.ba = add nsw i64 %i.az, %i.y
  %i.bb = add nsw i64 %i.ba, %storemerge.i.i.i
  %i.bc = load atomic volatile i32, ptr %i.b monotonic, align 4, !noalias !312
  %i.bd = trunc i64 %i.bb to i32
  %i.be = lshr i32 %i.bc, 1
  %i.bf = and i32 %i.be, 8
  %i.bg = add nsw i32 %i.bf, %i.bd
  ret i32 %i.bg
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4Code14BodyDescriptor11IterateBodyINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEEiPT_(i64 %0, i64 %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = add i64 %1, 7                            ; 2 uses
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load atomic volatile i64, ptr %i.b monotonic, align 8 ; 2 uses
  %i.d = trunc i64 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZN2v88internal18BodyDescriptorBase23IterateProtectedPointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE23ProcessStrongHeapObjectINS0_18FullHeapObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %3, i64 %1, i64 %i.a, i64 %i.c)
  br label %_ZN2v88internal18BodyDescriptorBase23IterateProtectedPointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_.exit

_ZN2v88internal18BodyDescriptorBase23IterateProtectedPointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_.exit: ; preds = %bb.a, %bb.b
  %i.e = add i64 %1, 15                           ; 2 uses
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i64, ptr %i.f monotonic, align 8 ; 2 uses
  %i.h = trunc i64 %i.g to i1
  br i1 %i.h, label %bb.c, label %_ZN2v88internal18BodyDescriptorBase23IterateProtectedPointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_.exit15

bb.c:                                             ; preds = %_ZN2v88internal18BodyDescriptorBase23IterateProtectedPointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_.exit
  tail call void @_ZN2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE23ProcessStrongHeapObjectINS0_18FullHeapObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %3, i64 %1, i64 %i.e, i64 %i.g)
  br label %_ZN2v88internal18BodyDescriptorBase23IterateProtectedPointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_.exit15

_ZN2v88internal18BodyDescriptorBase23IterateProtectedPointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_.exit15: ; preds = %_ZN2v88internal18BodyDescriptorBase23IterateProtectedPointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_.exit, %bb.c
  %i.i = add i64 %1, 23                           ; 2 uses
  %i.j = add i64 %1, 31                           ; 4 uses
  %i.k = icmp ult i64 %i.i, %i.j
  br i1 %i.k, label %.lr.ph.i, label %_ZN2v88internal18BodyDescriptorBase15IteratePointersINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiiPT_.exit

.lr.ph.i:                                         ; preds = %_ZN2v88internal18BodyDescriptorBase23IterateProtectedPointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_.exit15, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i
  %.sroa.019.028.i = phi i64 [ %i.o, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i ], [ %i.i, %_ZN2v88internal18BodyDescriptorBase23IterateProtectedPointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_.exit15 ] ; 3 uses
  %i.l = inttoptr i64 %.sroa.019.028.i to ptr
  %i.m = load atomic volatile i64, ptr %i.l monotonic, align 8 ; 2 uses
  %i.n = trunc i64 %i.m to i1
  br i1 %i.n, label %bb.d, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i

bb.d:                                             ; preds = %.lr.ph.i
  tail call void @_ZN2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE23ProcessStrongHeapObjectINS0_18FullHeapObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %3, i64 %1, i64 %.sroa.019.028.i, i64 %i.m)
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i: ; preds = %bb.d, %.lr.ph.i
  %i.o = add i64 %.sroa.019.028.i, 8              ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.j
  br i1 %i.p, label %.lr.ph.i, label %_ZN2v88internal18BodyDescriptorBase15IteratePointersINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiiPT_.exit, !llvm.loop !3

_ZN2v88internal18BodyDescriptorBase15IteratePointersINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiiPT_.exit: ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i, %_ZN2v88internal18BodyDescriptorBase23IterateProtectedPointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_.exit15
  %i.q = add i64 %1, 47
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load atomic volatile i32, ptr %i.r monotonic, align 4 ; 2 uses
  %i.t = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 10688
  %i.v = lshr i32 %i.s, 8
  %i.w = icmp ult i32 %i.s, 1048576
  br i1 %i.w, label %_ZN2v88internal18BodyDescriptorBase22IterateJSDispatchEntryINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal18BodyDescriptorBase15IteratePointersINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiiPT_.exit
  %i.x = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 216), align 8, !range !28, !noundef !29
  %i.y = trunc nuw i8 %i.x to i1
  %.not.i.i.i = xor i1 %i.y, true
  %i.z = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 219), align 1, !range !28
  %i.aa = trunc nuw i8 %i.z to i1
  %or.cond.i.i.i = select i1 %.not.i.i.i, i1 true, i1 %i.aa
  br i1 %or.cond.i.i.i, label %bb.f, label %_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.ab = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal15ThreadIsolation13trusted_data_E, i64 8), align 8 ; 2 uses
  %.not7.i.i.i = icmp eq i32 %i.ab, -1
  br i1 %.not7.i.i.i, label %_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN2v84base19MemoryProtectionKey20SetPermissionsForKeyEiNS1_10PermissionE(i32 noundef %i.ab, i32 noundef 0) #26
  br label %_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit.i.i.i

_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit.i.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %i.ac = load ptr, ptr %i.u, align 8
  %i.ad = zext nneg i32 %i.v to i64
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.ag = load atomic i64, ptr %i.af monotonic, align 8 ; 2 uses
  %i.ah = or i64 %i.ag, 65536
  %i.ai = cmpxchg ptr %i.af, i64 %i.ag, i64 %i.ah monotonic monotonic, align 8 ; 0 uses
  %i.aj = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 216), align 8, !range !28, !noundef !29
  %i.ak = trunc nuw i8 %i.aj to i1
  %.not4.i.i.i = xor i1 %i.ak, true
  %i.al = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 219), align 1, !range !28
  %i.am = trunc nuw i8 %i.al to i1
  %or.cond6.i.i.i = select i1 %.not4.i.i.i, i1 true, i1 %i.am
  br i1 %or.cond6.i.i.i, label %bb.h, label %_ZN2v88internal18BodyDescriptorBase22IterateJSDispatchEntryINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_.exit

bb.h:                                             ; preds = %_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit.i.i.i
  %i.an = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal15ThreadIsolation13trusted_data_E, i64 8), align 8 ; 2 uses
  %.not8.i.i.i = icmp eq i32 %i.an, -1
  br i1 %.not8.i.i.i, label %_ZN2v88internal18BodyDescriptorBase22IterateJSDispatchEntryINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN2v84base19MemoryProtectionKey20SetPermissionsForKeyEiNS1_10PermissionE(i32 noundef %i.an, i32 noundef 2) #26
  br label %_ZN2v88internal18BodyDescriptorBase22IterateJSDispatchEntryINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_.exit

_ZN2v88internal18BodyDescriptorBase22IterateJSDispatchEntryINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_.exit: ; preds = %_ZN2v88internal18BodyDescriptorBase15IteratePointersINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiiPT_.exit, %_ZN2v88internal19RwxMemoryWriteScopeC2EPKc.exit.i.i.i, %bb.h, %bb.i
  %i.ao = inttoptr i64 %i.j to ptr
  %i.ap = load atomic volatile i64, ptr %i.ao monotonic, align 8 ; 2 uses
  %i.aq = trunc i64 %i.ap to i1
  br i1 %i.aq, label %bb.j, label %_ZN2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE22VisitStrongPointerImplINS0_21OffHeapFullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_.exit

bb.j:                                             ; preds = %_ZN2v88internal18BodyDescriptorBase22IterateJSDispatchEntryINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_.exit
  tail call void @_ZN2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE23ProcessStrongHeapObjectINS0_18FullHeapObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %3, i64 %1, i64 %i.j, i64 %i.ap)
  br label %_ZN2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE22VisitStrongPointerImplINS0_21OffHeapFullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_.exit

_ZN2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE22VisitStrongPointerImplINS0_21OffHeapFullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_.exit: ; preds = %_ZN2v88internal18BodyDescriptorBase22IterateJSDispatchEntryINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_.exit, %bb.j
  ret void
}

declare void @_ZN2v88internal13RelocIteratorC1ENS0_6TaggedINS0_17InstructionStreamEEEi(ptr noundef nonnull align 8 dereferenceable(56), i64, i32 noundef) unnamed_addr #5

declare void @_ZN2v88internal13ObjectVisitor14VisitRelocInfoENS0_6TaggedINS0_17InstructionStreamEEEPNS0_13RelocIteratorE(ptr noundef nonnull align 8 dereferenceable(8), i64, ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal23ProtectedWeakFixedArray14BodyDescriptor11IterateBodyINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEEiPT_(i64 %0, i64 %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = icmp sgt i32 %2, 16
  br i1 %i.a, label %.lr.ph42, label %._crit_edge

.lr.ph42:                                         ; preds = %bb.a
  %i.b = add i64 %1, -1                           ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.d = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.f = and i64 %1, -262144                      ; 4 uses
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE17VisitPointersImplINS0_19FullMaybeObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph42, %_ZN2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE17VisitPointersImplINS0_19FullMaybeObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit
  %indvars.iv = phi i64 [ 16, %.lr.ph42 ], [ %indvars.iv.next, %_ZN2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE17VisitPointersImplINS0_19FullMaybeObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit ] ; 2 uses
  %i.i = add i64 %i.b, %indvars.iv                ; 3 uses
  %i.j = add i64 %i.i, 8
  %i.k = icmp ult i64 %i.i, -8
  br i1 %i.k, label %.lr.ph, label %_ZN2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE17VisitPointersImplINS0_19FullMaybeObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit

.lr.ph:                                           ; preds = %bb.b, %_ZN2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE23ProcessStrongHeapObjectINS0_18FullHeapObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_.exit
  %.sroa.026.040 = phi i64 [ %i.eb, %_ZN2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE23ProcessStrongHeapObjectINS0_18FullHeapObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_.exit ], [ %i.i, %bb.b ] ; 6 uses
  %i.l = inttoptr i64 %.sroa.026.040 to ptr       ; 2 uses
  %i.m = load atomic volatile i64, ptr %i.l monotonic, align 8 ; 8 uses
  %i.n = and i64 %i.m, 3                          ; 2 uses
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %bb.c, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit

bb.c:                                             ; preds = %.lr.ph
  %i.p = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.q = and i64 %i.m, -262144
  %i.r = inttoptr i64 %i.q to ptr                 ; 4 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.r, align 262144 ; 3 uses
  %i.s = and i64 %.sroa.0.0.copyload.i.i, 64
  %.not.i.i = icmp eq i64 %i.s, 0
  br i1 %.not.i.i, label %.critedge.i.i, label %_ZN2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE23ProcessStrongHeapObjectINS0_18FullHeapObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_.exit

.critedge.i.i:                                    ; preds = %bb.c
  %i.t = and i64 %.sroa.0.0.copyload.i.i, 1
  %.not.i18.i = icmp eq i64 %i.t, 0
  br i1 %.not.i18.i, label %bb.e, label %bb.d, !prof !31

bb.d:                                             ; preds = %.critedge.i.i
  %i.u = ptrtoint ptr %i.p to i64
  %i.v = add i64 %i.u, -55464
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 55448
  %i.y = load i8, ptr %i.x, align 8, !range !28, !noundef !29
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.e, label %_ZN2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE23ProcessStrongHeapObjectINS0_18FullHeapObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_.exit

bb.e:                                             ; preds = %bb.d, %.critedge.i.i
  %i.aa = and i64 %.sroa.0.0.copyload.i.i, 32
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %bb.f, label %_ZNKRSt8optionalIN2v88internal13MarkingHelper14WorklistTargetEE5valueEv.exit.i

bb.f:                                             ; preds = %bb.e
  %i.ab = add nsw i64 %i.m, -1
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = load atomic volatile i64, ptr %i.ac monotonic, align 8
  %i.ae = add i64 %i.ad, 11
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = load atomic volatile i16, ptr %i.af monotonic, align 2
  %i.ah = and i16 %i.ag, -2
  %i.ai = icmp eq i16 %i.ah, 270
  br i1 %i.ai, label %bb.g, label %_ZNKRSt8optionalIN2v88internal13MarkingHelper14WorklistTargetEE5valueEv.exit.i, !prof !27

bb.g:                                             ; preds = %bb.f
  %i.aj = ptrtoint ptr %i.p to i64
  %i.ak = add i64 %i.aj, -55464
end_hunk_4
begin_hunk_5_@_ZN2v88internal23ProtectedWeakFixedArray14BodyDescriptor11IterateBodyINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEEiPT_:bb.a
_ZN2v88internal7MarkBit4FromEPKNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEE.exit.i: ; preds = %_ZNKRSt8optionalIN2v88internal13MarkingHelper14WorklistTargetEE5valueEv.exit.i
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = add i64 %i.bb, 336
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = lshr i64 %i.m, 3
  %i.bf = and i64 %i.be, 63
  %i.bg = shl nuw i64 1, %i.bf                    ; 2 uses
  %i.bh = lshr i64 %i.m, 9
  %i.bi = and i64 %i.bh, 511
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bi ; 2 uses
  %i.bk = load atomic volatile i64, ptr %i.bj monotonic, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %_ZN2v88internal7MarkBit4FromEPKNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEE.exit.i
  %.0.i.i.i = phi i64 [ %i.bk, %_ZN2v88internal7MarkBit4FromEPKNS0_7IsolateENS0_6TaggedINS0_10HeapObjectEEE.exit.i ], [ %i.bo, %bb.j ] ; 3 uses
  %i.bl = and i64 %.0.i.i.i, %i.bg
  %.not16.not.not.i.not.not.not.i.not.not.i = icmp eq i64 %i.bl, 0
  br i1 %.not16.not.not.i.not.not.not.i.not.not.i, label %bb.j, label %_ZN2v88internal13MarkingHelper14TryMarkAndPushINS0_12MarkingStateEEEbPNS0_4HeapEPNS0_16MarkingWorklists5LocalEPT_NS1_14WorklistTargetENS0_6TaggedINS0_10HeapObjectEEE.exit.i

bb.j:                                             ; preds = %bb.i
  %i.bm = or i64 %.0.i.i.i, %i.bg
  %i.bn = cmpxchg volatile ptr %i.bj, i64 %.0.i.i.i, i64 %i.bm monotonic monotonic, align 8 ; 2 uses
  %i.bo = extractvalue { i64, i1 } %i.bn, 0
  %.not.i.i19.i = extractvalue { i64, i1 } %i.bn, 1
  br i1 %.not.i.i19.i, label %_ZN2v88internal7MarkBit3SetILNS0_10AccessModeE0EEEbv.exit.i, label %bb.i, !llvm.loop !5

_ZN2v88internal7MarkBit3SetILNS0_10AccessModeE0EEEbv.exit.i: ; preds = %bb.j
  %i.bp = load ptr, ptr %i.aw, align 8            ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 3 uses
  %i.br = load ptr, ptr %i.bq, align 8            ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 2
  %i.bt = load i16, ptr %i.bs, align 2            ; 2 uses
  %i.bu = load i16, ptr %i.br, align 2
  %i.bv = icmp eq i16 %i.bt, %i.bu
  br i1 %i.bv, label %bb.k, label %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i, !prof !27

bb.k:                                             ; preds = %_ZN2v88internal7MarkBit3SetILNS0_10AccessModeE0EEEbv.exit.i
  %i.bw = tail call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #26
  %.not.i13 = icmp eq ptr %i.br, %i.bw
  br i1 %.not.i13, label %_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bx = load ptr, ptr %i.bp, align 8, !nonnull !29, !align !30 ; 4 uses
  %i.by = load ptr, ptr %i.bq, align 8            ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bx) #26
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store ptr %i.ca, ptr %i.cb, align 8
  store ptr %i.by, ptr %i.bz, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.cd = atomicrmw add ptr %i.cc, i64 1 monotonic, align 8 ; 0 uses
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bx) #26
  br label %_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv.exit

_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv.exit: ; preds = %bb.k, %bb.l
  %i.ce = load i8, ptr @_ZN4heap4base12WorklistBase18predictable_order_E, align 1, !range !28, !noundef !29
  %i.cf = trunc nuw i8 %i.ce to i1
  %i.cg = tail call noalias noundef dereferenceable_or_null(528) ptr @malloc(i64 noundef 528) #31 ; 7 uses
  br i1 %i.cf, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv.exit
  %i.ch = tail call noundef i64 @malloc_usable_size(ptr noundef %i.cg) #26
  %i.ci = add i64 %i.ch, 524272
  %i.cj = lshr i64 %i.ci, 3
  %i.ck = trunc i64 %i.cj to i16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv.exit
  %.sroa.6.0.i.i = phi i16 [ %i.ck, %bb.m ], [ 64, %_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv.exit ]
  %.not.i.i12 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i12, label %bb.o, label %_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local10NewSegmentEv.exit

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN2v84base8FatalOOMENS0_7OOMTypeEPKc(i32 noundef 1, ptr noundef nonnull @.str.23) #27
  unreachable

_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local10NewSegmentEv.exit: ; preds = %bb.n
  store i16 %.sroa.6.0.i.i, ptr %i.cg, align 2
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 2 ; 2 uses
  store i16 0, ptr %i.cl, align 2
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store ptr null, ptr %i.cm, align 8
  store ptr %i.cg, ptr %i.bq, align 8
  %.pre.i.i = load i16, ptr %i.cl, align 2
  br label %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i

_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i: ; preds = %_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local10NewSegmentEv.exit, %_ZN2v88internal7MarkBit3SetILNS0_10AccessModeE0EEEbv.exit.i
  %i.cn = phi i16 [ %i.bt, %_ZN2v88internal7MarkBit3SetILNS0_10AccessModeE0EEEbv.exit.i ], [ %.pre.i.i, %_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local10NewSegmentEv.exit ] ; 2 uses
  %i.co = phi ptr [ %i.br, %_ZN2v88internal7MarkBit3SetILNS0_10AccessModeE0EEEbv.exit.i ], [ %i.cg, %_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local10NewSegmentEv.exit ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 2
  %i.cq = add i16 %i.cn, 1
  store i16 %i.cq, ptr %i.cp, align 2
  %i.cr = zext i16 %i.cn to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.cr
  store i64 %i.m, ptr %i.ct, align 8
  br label %_ZN2v88internal13MarkingHelper14TryMarkAndPushINS0_12MarkingStateEEEbPNS0_4HeapEPNS0_16MarkingWorklists5LocalEPT_NS1_14WorklistTargetENS0_6TaggedINS0_10HeapObjectEEE.exit.i

_ZN2v88internal13MarkingHelper14TryMarkAndPushINS0_12MarkingStateEEEbPNS0_4HeapEPNS0_16MarkingWorklists5LocalEPT_NS1_14WorklistTargetENS0_6TaggedINS0_10HeapObjectEEE.exit.i: ; preds = %bb.i, %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.g, align 262144
  %i.cu = and i64 %.sroa.0.0.copyload.i.i.i, 536
  %.not.i10 = icmp eq i64 %i.cu, 0
  br i1 %.not.i10, label %bb.p, label %_ZN2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE23ProcessStrongHeapObjectINS0_18FullHeapObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_.exit

bb.p:                                             ; preds = %_ZN2v88internal13MarkingHelper14TryMarkAndPushINS0_12MarkingStateEEEbPNS0_4HeapEPNS0_16MarkingWorklists5LocalEPT_NS1_14WorklistTargetENS0_6TaggedINS0_10HeapObjectEEE.exit.i
  %i.cv = load i64, ptr %i.r, align 262144
  %i.cw = and i64 %i.cv, 512
  %.not13.i = icmp eq i64 %i.cw, 0
  br i1 %.not13.i, label %_ZN2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE23ProcessStrongHeapObjectINS0_18FullHeapObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cx = load ptr, ptr %i.h, align 8             ; 6 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 80
  %i.cz = load atomic ptr, ptr %i.cy seq_cst, align 8
  %.not.i.i11 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i11, label %bb.r, label %_ZN2v88internal19MutablePageMetadata4castEPNS0_19MemoryChunkMetadataE.exit.i, !prof !27

bb.r:                                             ; preds = %bb.q
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.24) #27
  unreachable

_ZN2v88internal19MutablePageMetadata4castEPNS0_19MemoryChunkMetadataE.exit.i: ; preds = %bb.q
  %i.da = load ptr, ptr %i.ax, align 8            ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 80
  %i.dc = load atomic ptr, ptr %i.db seq_cst, align 8
  %.not.i6.i = icmp eq ptr %i.dc, null
  br i1 %.not.i6.i, label %bb.s, label %_ZN2v88internal19MutablePageMetadata4castEPKNS0_19MemoryChunkMetadataE.exit.i, !prof !27

bb.s:                                             ; preds = %_ZN2v88internal19MutablePageMetadata4castEPNS0_19MemoryChunkMetadataE.exit.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.24) #27
  unreachable

_ZN2v88internal19MutablePageMetadata4castEPKNS0_19MemoryChunkMetadataE.exit.i: ; preds = %_ZN2v88internal19MutablePageMetadata4castEPNS0_19MemoryChunkMetadataE.exit.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 88
  %i.de = load i32, ptr %i.dd, align 8            ; 3 uses
  %i.df = and i32 %i.de, 16
  %.not14.i = icmp eq i32 %i.df, 0
  br i1 %.not14.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZN2v88internal19MutablePageMetadata4castEPKNS0_19MemoryChunkMetadataE.exit.i
  %i.dg = sub i64 %.sroa.026.040, %i.f
  tail call void @_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE4EE6InsertILNS0_10AccessModeE0EEEvPNS0_19MutablePageMetadataEm(ptr noundef nonnull %i.cx, i64 noundef %i.dg)
  br label %_ZN2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE23ProcessStrongHeapObjectINS0_18FullHeapObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_.exit

bb.u:                                             ; preds = %_ZN2v88internal19MutablePageMetadata4castEPKNS0_19MemoryChunkMetadataE.exit.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cx, i64 88
  %i.di = load i32, ptr %i.dh, align 8
  %i.dj = and i32 %i.de, 4096
  %i.dk = and i32 %i.dj, %i.di
  %or.cond.not.i = icmp eq i32 %i.dk, 0
  br i1 %or.cond.not.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dl = sub i64 %.sroa.026.040, %i.f
  tail call void @_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE5EE6InsertILNS0_10AccessModeE0EEEvPNS0_19MutablePageMetadataEm(ptr noundef nonnull %i.cx, i64 noundef %i.dl)
  br label %_ZN2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE23ProcessStrongHeapObjectINS0_18FullHeapObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_.exit

bb.w:                                             ; preds = %bb.u
  %i.dm = and i32 %i.de, 8192
  %.not15.i = icmp eq i32 %i.dm, 0
  br i1 %.not15.i, label %bb.y, label %bb.x, !prof !31

bb.x:                                             ; preds = %bb.w
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cx, i64 64
  %i.do = load ptr, ptr %i.dn, align 8
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = add i64 %i.dp, -55464
  %i.dr = inttoptr i64 %i.dq to ptr
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 55448
  %i.dt = load i8, ptr %i.ds, align 8, !range !28, !noundef !29
  %i.du = trunc nuw i8 %i.dt to i1
  br i1 %i.du, label %bb.y, label %_ZN2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE23ProcessStrongHeapObjectINS0_18FullHeapObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_.exit

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.dv = sub i64 %.sroa.026.040, %i.f
  tail call void @_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE2EE6InsertILNS0_10AccessModeE0EEEvPNS0_19MutablePageMetadataEm(ptr noundef nonnull %i.cx, i64 noundef %i.dv)
  br label %_ZN2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE23ProcessStrongHeapObjectINS0_18FullHeapObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_.exit

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %.lr.ph
  %i.dw = icmp eq i64 %i.n, 3
  %i.dx = and i64 %i.m, 4294967295
  %i.dy = icmp ne i64 %i.dx, 3
  %i.dz = and i1 %i.dw, %i.dy
  br i1 %i.dz, label %bb.z, label %_ZN2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE23ProcessStrongHeapObjectINS0_18FullHeapObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_.exit

bb.z:                                             ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit
  %i.ea = and i64 %i.m, -3
  tail call void @_ZN2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE21ProcessWeakHeapObjectINS0_18FullHeapObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %3, i64 %1, i64 %.sroa.026.040, i64 %i.ea)
  br label %_ZN2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE23ProcessStrongHeapObjectINS0_18FullHeapObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_.exit

_ZN2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE23ProcessStrongHeapObjectINS0_18FullHeapObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_.exit: ; preds = %bb.z, %bb.y, %bb.x, %bb.v, %bb.t, %bb.p, %_ZN2v88internal13MarkingHelper14TryMarkAndPushINS0_12MarkingStateEEEbPNS0_4HeapEPNS0_16MarkingWorklists5LocalEPT_NS1_14WorklistTargetENS0_6TaggedINS0_10HeapObjectEEE.exit.i, %bb.c, %bb.d, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit
  %i.eb = add i64 %.sroa.026.040, 8               ; 2 uses
  %i.ec = icmp ult i64 %i.eb, %i.j
  br i1 %i.ec, label %.lr.ph, label %_ZN2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE17VisitPointersImplINS0_19FullMaybeObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit, !llvm.loop !4

_ZN2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE17VisitPointersImplINS0_19FullMaybeObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit: ; preds = %_ZN2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE23ProcessStrongHeapObjectINS0_18FullHeapObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_.exit, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %i.ed = trunc nuw i64 %indvars.iv.next to i32
  %i.ee = icmp sgt i32 %2, %i.ed
  br i1 %i.ee, label %bb.b, label %._crit_edge, !llvm.loop !313
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal12IrRegExpData14BodyDescriptor11IterateBodyINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEEiPT_(i64 %0, i64 %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = add i64 %1, 15                           ; 2 uses
  %i.b = add i64 %1, 23
  %i.c = icmp ult i64 %i.a, -8
  br i1 %i.c, label %.lr.ph.i, label %_ZN2v88internal18BodyDescriptorBase14IteratePointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_.exit.thread

_ZN2v88internal18BodyDescriptorBase14IteratePointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_.exit.thread: ; preds = %bb.a
  %i.d = add nsw i64 %1, 31
  %i.e = add nsw i64 %1, 39
  br label %.lr.ph.i24.preheader

.lr.ph.i:                                         ; preds = %bb.a, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i
  %.sroa.09.017.i = phi i64 [ %i.i, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.f = inttoptr i64 %.sroa.09.017.i to ptr
  %i.g = load atomic volatile i64, ptr %i.f monotonic, align 8 ; 2 uses
  %i.h = trunc i64 %i.g to i1
  br i1 %i.h, label %bb.b, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i

bb.b:                                             ; preds = %.lr.ph.i
  tail call void @_ZN2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE23ProcessStrongHeapObjectINS0_18FullHeapObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %3, i64 %1, i64 %.sroa.09.017.i, i64 %i.g)
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i: ; preds = %bb.b, %.lr.ph.i
  %i.i = add i64 %.sroa.09.017.i, 8               ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.b
  br i1 %i.j, label %.lr.ph.i, label %_ZN2v88internal18BodyDescriptorBase14IteratePointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_.exit, !llvm.loop !3

_ZN2v88internal18BodyDescriptorBase14IteratePointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_.exit: ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i
  %i.k = add i64 %1, 31                           ; 2 uses
  %i.l = add i64 %1, 39                           ; 2 uses
  %i.m = icmp ult i64 %i.k, -8
  br i1 %i.m, label %.lr.ph.i24.preheader, label %_ZN2v88internal18BodyDescriptorBase14IteratePointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_.exit27

.lr.ph.i24.preheader:                             ; preds = %_ZN2v88internal18BodyDescriptorBase14IteratePointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_.exit.thread, %_ZN2v88internal18BodyDescriptorBase14IteratePointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_.exit
  %i.n = phi i64 [ %i.e, %_ZN2v88internal18BodyDescriptorBase14IteratePointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_.exit.thread ], [ %i.l, %_ZN2v88internal18BodyDescriptorBase14IteratePointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_.exit ] ; 2 uses
  %i.o = phi i64 [ %i.d, %_ZN2v88internal18BodyDescriptorBase14IteratePointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_.exit.thread ], [ %i.k, %_ZN2v88internal18BodyDescriptorBase14IteratePointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_.exit ]
  br label %.lr.ph.i24

.lr.ph.i24:                                       ; preds = %.lr.ph.i24.preheader, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i26
  %.sroa.09.017.i25 = phi i64 [ %i.s, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i26 ], [ %i.o, %.lr.ph.i24.preheader ] ; 3 uses
  %i.p = inttoptr i64 %.sroa.09.017.i25 to ptr
  %i.q = load atomic volatile i64, ptr %i.p monotonic, align 8 ; 2 uses
  %i.r = trunc i64 %i.q to i1
  br i1 %i.r, label %bb.c, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i26

bb.c:                                             ; preds = %.lr.ph.i24
  tail call void @_ZN2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE23ProcessStrongHeapObjectINS0_18FullHeapObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %3, i64 %1, i64 %.sroa.09.017.i25, i64 %i.q)
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i26

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i26: ; preds = %bb.c, %.lr.ph.i24
  %i.s = add i64 %.sroa.09.017.i25, 8             ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.n
  br i1 %i.t, label %.lr.ph.i24, label %_ZN2v88internal18BodyDescriptorBase14IteratePointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_.exit27, !llvm.loop !3

_ZN2v88internal18BodyDescriptorBase14IteratePointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_.exit27: ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i26, %_ZN2v88internal18BodyDescriptorBase14IteratePointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_.exit
  %i.u = phi i64 [ %i.l, %_ZN2v88internal18BodyDescriptorBase14IteratePointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_.exit ], [ %i.n, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i26 ] ; 2 uses
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load atomic volatile i64, ptr %i.v monotonic, align 8 ; 2 uses
  %i.x = trunc i64 %i.w to i1
  br i1 %i.x, label %bb.d, label %_ZN2v88internal18BodyDescriptorBase23IterateProtectedPointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_.exit

bb.d:                                             ; preds = %_ZN2v88internal18BodyDescriptorBase14IteratePointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_.exit27
  tail call void @_ZN2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE23ProcessStrongHeapObjectINS0_18FullHeapObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %3, i64 %1, i64 %i.u, i64 %i.w)
  br label %_ZN2v88internal18BodyDescriptorBase23IterateProtectedPointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_.exit

_ZN2v88internal18BodyDescriptorBase23IterateProtectedPointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_.exit: ; preds = %_ZN2v88internal18BodyDescriptorBase14IteratePointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_.exit27, %bb.d
  %i.y = add i64 %1, 47                           ; 2 uses
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = load atomic volatile i64, ptr %i.z monotonic, align 8 ; 2 uses
  %i.ab = trunc i64 %i.aa to i1
  br i1 %i.ab, label %bb.e, label %_ZN2v88internal18BodyDescriptorBase23IterateProtectedPointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_.exit28

bb.e:                                             ; preds = %_ZN2v88internal18BodyDescriptorBase23IterateProtectedPointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_.exit
  tail call void @_ZN2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE23ProcessStrongHeapObjectINS0_18FullHeapObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %3, i64 %1, i64 %i.y, i64 %i.aa)
  br label %_ZN2v88internal18BodyDescriptorBase23IterateProtectedPointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_.exit28

_ZN2v88internal18BodyDescriptorBase23IterateProtectedPointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_.exit28: ; preds = %_ZN2v88internal18BodyDescriptorBase23IterateProtectedPointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_.exit, %bb.e
  %i.ac = add i64 %1, 55                          ; 2 uses
  %i.ad = add i64 %1, 63                          ; 3 uses
  %i.ae = icmp ult i64 %i.ac, -8
  br i1 %i.ae, label %.lr.ph.i.i.i, label %_ZN2v88internal18BodyDescriptorBase18IterateCodePointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_NS0_19IndirectPointerModeE.exit

.lr.ph.i.i.i:                                     ; preds = %_ZN2v88internal18BodyDescriptorBase23IterateProtectedPointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_.exit28, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i
  %.sroa.09.017.i.i.i = phi i64 [ %i.ai, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i ], [ %i.ac, %_ZN2v88internal18BodyDescriptorBase23IterateProtectedPointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_.exit28 ] ; 3 uses
  %i.af = inttoptr i64 %.sroa.09.017.i.i.i to ptr
  %i.ag = load atomic volatile i64, ptr %i.af monotonic, align 8 ; 2 uses
  %i.ah = trunc i64 %i.ag to i1
  br i1 %i.ah, label %bb.f, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  tail call void @_ZN2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE23ProcessStrongHeapObjectINS0_18FullHeapObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %3, i64 %1, i64 %.sroa.09.017.i.i.i, i64 %i.ag)
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i: ; preds = %bb.f, %.lr.ph.i.i.i
  %i.ai = add i64 %.sroa.09.017.i.i.i, 8          ; 2 uses
  %i.aj = icmp ult i64 %i.ai, %i.ad
  br i1 %i.aj, label %.lr.ph.i.i.i, label %_ZN2v88internal18BodyDescriptorBase18IterateCodePointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_NS0_19IndirectPointerModeE.exit, !llvm.loop !3

_ZN2v88internal18BodyDescriptorBase18IterateCodePointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_NS0_19IndirectPointerModeE.exit: ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i, %_ZN2v88internal18BodyDescriptorBase23IterateProtectedPointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_.exit28
  %i.ak = add i64 %1, 71                          ; 3 uses
  %i.al = icmp ult i64 %i.ad, -8
  br i1 %i.al, label %.lr.ph.i.i.i29, label %_ZN2v88internal18BodyDescriptorBase18IterateCodePointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_NS0_19IndirectPointerModeE.exit32

.lr.ph.i.i.i29:                                   ; preds = %_ZN2v88internal18BodyDescriptorBase18IterateCodePointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_NS0_19IndirectPointerModeE.exit, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i31
  %.sroa.09.017.i.i.i30 = phi i64 [ %i.ap, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i31 ], [ %i.ad, %_ZN2v88internal18BodyDescriptorBase18IterateCodePointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_NS0_19IndirectPointerModeE.exit ] ; 3 uses
  %i.am = inttoptr i64 %.sroa.09.017.i.i.i30 to ptr
  %i.an = load atomic volatile i64, ptr %i.am monotonic, align 8 ; 2 uses
  %i.ao = trunc i64 %i.an to i1
  br i1 %i.ao, label %bb.g, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i31

bb.g:                                             ; preds = %.lr.ph.i.i.i29
  tail call void @_ZN2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE23ProcessStrongHeapObjectINS0_18FullHeapObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %3, i64 %1, i64 %.sroa.09.017.i.i.i30, i64 %i.an)
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i31

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i31: ; preds = %bb.g, %.lr.ph.i.i.i29
  %i.ap = add i64 %.sroa.09.017.i.i.i30, 8        ; 2 uses
  %i.aq = icmp ult i64 %i.ap, %i.ak
  br i1 %i.aq, label %.lr.ph.i.i.i29, label %_ZN2v88internal18BodyDescriptorBase18IterateCodePointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_NS0_19IndirectPointerModeE.exit32, !llvm.loop !3

_ZN2v88internal18BodyDescriptorBase18IterateCodePointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_NS0_19IndirectPointerModeE.exit32: ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i31, %_ZN2v88internal18BodyDescriptorBase18IterateCodePointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_NS0_19IndirectPointerModeE.exit
  %i.ar = add i64 %1, 79
  %i.as = icmp ult i64 %i.ak, -8
  br i1 %i.as, label %.lr.ph.i33, label %_ZN2v88internal18BodyDescriptorBase14IteratePointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_.exit36

.lr.ph.i33:                                       ; preds = %_ZN2v88internal18BodyDescriptorBase18IterateCodePointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_NS0_19IndirectPointerModeE.exit32, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i35
  %.sroa.09.017.i34 = phi i64 [ %i.aw, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i35 ], [ %i.ak, %_ZN2v88internal18BodyDescriptorBase18IterateCodePointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_NS0_19IndirectPointerModeE.exit32 ] ; 3 uses
  %i.at = inttoptr i64 %.sroa.09.017.i34 to ptr
  %i.au = load atomic volatile i64, ptr %i.at monotonic, align 8 ; 2 uses
  %i.av = trunc i64 %i.au to i1
  br i1 %i.av, label %bb.h, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i35

bb.h:                                             ; preds = %.lr.ph.i33
  tail call void @_ZN2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE23ProcessStrongHeapObjectINS0_18FullHeapObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %3, i64 %1, i64 %.sroa.09.017.i34, i64 %i.au)
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i35

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i35: ; preds = %bb.h, %.lr.ph.i33
  %i.aw = add i64 %.sroa.09.017.i34, 8            ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %i.ar
  br i1 %i.ax, label %.lr.ph.i33, label %_ZN2v88internal18BodyDescriptorBase14IteratePointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_.exit36, !llvm.loop !3

_ZN2v88internal18BodyDescriptorBase14IteratePointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_.exit36: ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i35, %_ZN2v88internal18BodyDescriptorBase18IterateCodePointerINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_NS0_19IndirectPointerModeE.exit32
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal20WithProtectedPointerILm40EE14BodyDescriptorINS0_22SubclassBodyDescriptorINS0_21StackedBodyDescriptorINS0_39FixedExposedTrustedObjectBodyDescriptorINS0_16WasmFunctionDataELNS0_18IndirectPointerTagE16325548649218048EEENS0_24WithStrongTrustedPointerILm8ELS8_12103423998558208EEEJNS1_ILm32EEEEEENS0_19FixedBodyDescriptorILi48ELi88ELi104EEEEEE11IterateBodyINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_3MapEEENSK_INS0_10HeapObjectEEEiPT_(i64 %0, i64 %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = add i64 %1, 15                           ; 3 uses
  %i.b = add i64 %1, 31                           ; 4 uses
  %i.c = icmp ult i64 %i.a, %i.b
  br i1 %i.c, label %.lr.ph.i.i.i.i.i.i.i, label %_ZN2v88internal39FixedExposedTrustedObjectBodyDescriptorINS0_16WasmFunctionDataELNS0_18IndirectPointerTagE16325548649218048EE11IterateBodyINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_3MapEEENS7_INS0_10HeapObjectEEEiPT_.exit.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.a, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i
  %.sroa.019.028.i.i.i.i.i.i.i = phi i64 [ %i.g, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = inttoptr i64 %.sroa.019.028.i.i.i.i.i.i.i to ptr
  %i.e = load atomic volatile i64, ptr %i.d monotonic, align 8 ; 2 uses
  %i.f = trunc i64 %i.e to i1
  br i1 %i.f, label %bb.b, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  tail call void @_ZN2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE23ProcessStrongHeapObjectINS0_18FullHeapObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %3, i64 %1, i64 %.sroa.019.028.i.i.i.i.i.i.i, i64 %i.e)
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i.i
  %i.g = add i64 %.sroa.019.028.i.i.i.i.i.i.i, 8  ; 2 uses
  %i.h = icmp ult i64 %i.g, %i.b
  br i1 %i.h, label %.lr.ph.i.i.i.i.i.i.i, label %_ZN2v88internal39FixedExposedTrustedObjectBodyDescriptorINS0_16WasmFunctionDataELNS0_18IndirectPointerTagE16325548649218048EE11IterateBodyINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_3MapEEENS7_INS0_10HeapObjectEEEiPT_.exit.i.i.i, !llvm.loop !3

_ZN2v88internal39FixedExposedTrustedObjectBodyDescriptorINS0_16WasmFunctionDataELNS0_18IndirectPointerTagE16325548649218048EE11IterateBodyINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_3MapEEENS7_INS0_10HeapObjectEEEiPT_.exit.i.i.i: ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i.i.i, %bb.a
  %i.i = add i64 %1, 7                            ; 2 uses
  %i.j = icmp ult i64 %i.i, -8
  br i1 %i.j, label %.lr.ph.i.i.i.i.i, label %_ZN2v88internal24WithStrongTrustedPointerILm8ELNS0_18IndirectPointerTagE12103423998558208EE14BodyDescriptorINS0_39FixedExposedTrustedObjectBodyDescriptorINS0_16WasmFunctionDataELS2_16325548649218048EEEE11IterateBodyINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_3MapEEENSB_INS0_10HeapObjectEEEiPT_.exit.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN2v88internal39FixedExposedTrustedObjectBodyDescriptorINS0_16WasmFunctionDataELNS0_18IndirectPointerTagE16325548649218048EE11IterateBodyINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_3MapEEENS7_INS0_10HeapObjectEEEiPT_.exit.i.i.i, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i
  %.sroa.09.017.i.i.i.i.i = phi i64 [ %i.n, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i ], [ %i.i, %_ZN2v88internal39FixedExposedTrustedObjectBodyDescriptorINS0_16WasmFunctionDataELNS0_18IndirectPointerTagE16325548649218048EE11IterateBodyINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_3MapEEENS7_INS0_10HeapObjectEEEiPT_.exit.i.i.i ] ; 3 uses
  %i.k = inttoptr i64 %.sroa.09.017.i.i.i.i.i to ptr
  %i.l = load atomic volatile i64, ptr %i.k monotonic, align 8 ; 2 uses
  %i.m = trunc i64 %i.l to i1
  br i1 %i.m, label %bb.c, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  tail call void @_ZN2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE23ProcessStrongHeapObjectINS0_18FullHeapObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %3, i64 %1, i64 %.sroa.09.017.i.i.i.i.i, i64 %i.l)
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %i.n = add i64 %.sroa.09.017.i.i.i.i.i, 8       ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.a
  br i1 %i.o, label %.lr.ph.i.i.i.i.i, label %_ZN2v88internal24WithStrongTrustedPointerILm8ELNS0_18IndirectPointerTagE12103423998558208EE14BodyDescriptorINS0_39FixedExposedTrustedObjectBodyDescriptorINS0_16WasmFunctionDataELS2_16325548649218048EEEE11IterateBodyINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_3MapEEENSB_INS0_10HeapObjectEEEiPT_.exit.i.i, !llvm.loop !3

_ZN2v88internal24WithStrongTrustedPointerILm8ELNS0_18IndirectPointerTagE12103423998558208EE14BodyDescriptorINS0_39FixedExposedTrustedObjectBodyDescriptorINS0_16WasmFunctionDataELS2_16325548649218048EEEE11IterateBodyINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_3MapEEENSB_INS0_10HeapObjectEEEiPT_.exit.i.i: ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i.i.i, %_ZN2v88internal39FixedExposedTrustedObjectBodyDescriptorINS0_16WasmFunctionDataELNS0_18IndirectPointerTagE16325548649218048EE11IterateBodyINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_3MapEEENS7_INS0_10HeapObjectEEEiPT_.exit.i.i.i
  %i.p = inttoptr i64 %i.b to ptr
  %i.q = load atomic volatile i64, ptr %i.p monotonic, align 8 ; 2 uses
  %i.r = trunc i64 %i.q to i1
  br i1 %i.r, label %bb.d, label %_ZN2v88internal20WithProtectedPointerILm32EE14BodyDescriptorINS0_24WithStrongTrustedPointerILm8ELNS0_18IndirectPointerTagE12103423998558208EE14BodyDescriptorINS0_39FixedExposedTrustedObjectBodyDescriptorINS0_16WasmFunctionDataELS5_16325548649218048EEEEEE11IterateBodyINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_3MapEEENSF_INS0_10HeapObjectEEEiPT_.exit.i

bb.d:                                             ; preds = %_ZN2v88internal24WithStrongTrustedPointerILm8ELNS0_18IndirectPointerTagE12103423998558208EE14BodyDescriptorINS0_39FixedExposedTrustedObjectBodyDescriptorINS0_16WasmFunctionDataELS2_16325548649218048EEEE11IterateBodyINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_3MapEEENSB_INS0_10HeapObjectEEEiPT_.exit.i.i
end_hunk_5
begin_hunk_6_@_ZN2v88internal21CppHeapExternalObject14BodyDescriptor11IterateBodyINS0_24ConcurrentMarkingVisitorEEEvNS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEEiPT_:bb.a

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  tail call void @_ZN4heap4base8WorklistIN5cppgc15TraceDescriptorELt512EE5Local18PublishPushSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ao)
  %i.ap = tail call noundef ptr @_ZNK4heap4base8WorklistIN5cppgc15TraceDescriptorELt512EE5Local10NewSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ao) ; 3 uses
  store ptr %i.ap, ptr %i.ai, align 8
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  %.pre.i.i.i.i = load i16, ptr %.phi.trans.insert.i.i.i.i, align 2
  br label %_ZN5cppgc8internal16MarkingStateBase10PushMarkedERNS0_16HeapObjectHeaderENS_15TraceDescriptorE.exit.i.i.i

_ZN5cppgc8internal16MarkingStateBase10PushMarkedERNS0_16HeapObjectHeaderENS_15TraceDescriptorE.exit.i.i.i: ; preds = %bb.f, %bb.e
  %i.aq = phi i16 [ %i.al, %bb.e ], [ %.pre.i.i.i.i, %bb.f ] ; 2 uses
  %i.ar = phi ptr [ %i.aj, %bb.e ], [ %i.ap, %bb.f ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 2
  %i.at = add i16 %i.aq, 1
  store i16 %i.at, ptr %i.as, align 2
  %i.au = zext i16 %i.aq to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %i.au ; 2 uses
  store ptr %i.i, ptr %i.aw, align 8
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %i.u, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8
  br label %_ZN2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE19VisitCppHeapPointerENS0_6TaggedINS0_10HeapObjectEEENS0_18CppHeapPointerSlotE.exit

_ZN2v88internal18MarkingVisitorBaseINS0_24ConcurrentMarkingVisitorEE19VisitCppHeapPointerENS0_6TaggedINS0_10HeapObjectEEENS0_18CppHeapPointerSlotE.exit: ; preds = %_ZN5cppgc8internal16MarkingStateBase10PushMarkedERNS0_16HeapObjectHeaderENS_15TraceDescriptorE.exit.i.i.i, %_ZN5cppgc8internal16MarkingStateBase10MarkNoPushERNS0_16HeapObjectHeaderE.exit.i.i.i, %bb.d, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEC2EPNS0_4HeapEPSt13unordered_mapINS0_6TaggedINS0_14AllocationSiteEEEmNS0_6Object6HasherESt8equal_toIS9_ESaISt4pairIKS9_mEEE(ptr noundef nonnull align 8 dereferenceable(2256) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 comdat align 2 {
bb.a:
  %3 = alloca %"class.std::unique_ptr.301", align 8 ; 4 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = add i64 %i.a, -55464
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 55464
  store ptr %i.e, ptr %i.d, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTVN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEE, i64 16), ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %i.f, i8 0, i64 2048, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2064
  store ptr %i.c, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2072
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1888 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 2040
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not.not = icmp eq ptr %i.n, null
  br i1 %.not.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -512
  call void @_ZN2v88internal7CppHeap21CreateCppMarkingStateEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.301") align 8 %3, ptr noundef nonnull align 8 dereferenceable(672) %i.o) #26
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %3, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @_ZN2v88internal16MarkingWorklists5LocalC1EPS1_St10unique_ptrINS0_15CppMarkingStateESt14default_deleteIS5_EE(ptr noundef nonnull align 8 dereferenceable(136) %i.h, ptr noundef %i.l, ptr noundef nonnull %3) #26
  %i.p = load ptr, ptr %3, align 8                ; 3 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN2v88internal15CppMarkingStateESt14default_deleteIS2_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %_ZNKSt14default_deleteIN2v88internal15CppMarkingStateEEclEPS2_.exit.i, label %_ZNKSt14default_deleteIN5cppgc8internal16MarkingStateBaseEEclEPS2_.exit.i.i.i.i

_ZNKSt14default_deleteIN5cppgc8internal16MarkingStateBaseEEclEPS2_.exit.i.i.i.i: ; preds = %bb.e
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.q) #26, !inline_history !1
  br label %_ZNKSt14default_deleteIN2v88internal15CppMarkingStateEEclEPS2_.exit.i

_ZNKSt14default_deleteIN2v88internal15CppMarkingStateEEclEPS2_.exit.i: ; preds = %_ZNKSt14default_deleteIN5cppgc8internal16MarkingStateBaseEEclEPS2_.exit.i.i.i.i, %bb.e
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef 16) #29
  br label %_ZNSt10unique_ptrIN2v88internal15CppMarkingStateESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN2v88internal15CppMarkingStateESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.d, %_ZNKSt14default_deleteIN2v88internal15CppMarkingStateEEclEPS2_.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 2208
  %i.v = load ptr, ptr %i.i, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  store ptr %i.x, ptr %i.u, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 2216
  %i.z = call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #26
  store ptr %i.z, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 2224
  %i.ab = call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #26
  store ptr %i.ab, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 2232
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 2856
  store ptr %i.ad, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 2240
  store ptr %2, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 2248
  %i.ag = call noundef zeroext i1 @_ZNK2v88internal4Heap26CanShortcutStringsDuringGCENS0_16GarbageCollectorE(ptr noundef nonnull align 8 dereferenceable(2992) %1, i32 noundef 2) #26
  %i.ah = zext i1 %i.ag to i8
  store i8 %i.ah, ptr %i.af, align 8
  ret void
}

declare void @_ZN2v88internal16MarkingWorklists5Local11MergeOnHoldEv(ptr noundef nonnull align 8 dereferenceable(136)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2v88internal44YoungGenerationRememberedSetsMarkingWorklist5Local15ProcessNextItemINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEbPT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.d = load atomic i64, ptr %i.c monotonic, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZN2v88internal44YoungGenerationRememberedSetsMarkingWorklist15ProcessNextItemINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEbPT_RSt8optionalImE.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %.pre.i = load i8, ptr %i.f, align 8, !range !28
  %i.i = trunc nuw i8 %.pre.i to i1
  br i1 %i.i, label %_ZStssImmQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.i.peel, label %.critedge.i.peel

_ZStssImmQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.i.peel: ; preds = %.preheader.i
  %i.j = load ptr, ptr %i.g, align 8
  %i.k = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = sdiv exact i64 %i.n, 40
  %i.p = load i64, ptr %i.b, align 8              ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.o
  br i1 %i.q, label %bb.b, label %.critedge.i.peel

bb.b:                                             ; preds = %_ZStssImmQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.i.peel
  %i.r = getelementptr inbounds nuw [40 x i8], ptr %i.k, i64 %i.p ; 2 uses
  %i.s = atomicrmw xchg ptr %i.r, i8 1 monotonic, align 1
  %i.t = trunc i8 %i.s to i1
  br i1 %i.t, label %.critedge.i.peel, label %.loopexit

.critedge.i.peel:                                 ; preds = %bb.b, %_ZStssImmQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.i.peel, %.preheader.i
  %i.u = tail call { i64, i8 } @_ZN2v88internal14IndexGenerator7GetNextEv(ptr noundef nonnull align 8 dereferenceable(96) %i.h) #26 ; 2 uses
  %i.v = extractvalue { i64, i8 } %i.u, 0         ; 2 uses
  %i.w = extractvalue { i64, i8 } %i.u, 1         ; 2 uses
  store i64 %i.v, ptr %i.b, align 8
  store i8 %i.w, ptr %i.f, align 8
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %_ZStssImmQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.i, label %_ZN2v88internal44YoungGenerationRememberedSetsMarkingWorklist15ProcessNextItemINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEbPT_RSt8optionalImE.exit

_ZStssImmQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.i: ; preds = %.critedge.i.peel, %.critedge.i
  %i.y = phi i64 [ %i.aq, %.critedge.i ], [ %i.v, %.critedge.i.peel ] ; 2 uses
  %i.z = load ptr, ptr %i.g, align 8
  %i.aa = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = sdiv exact i64 %i.ad, 40
  %i.af = icmp ult i64 %i.y, %i.ae
  br i1 %i.af, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %_ZStssImmQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.i
  %i.ag = getelementptr inbounds nuw [40 x i8], ptr %i.aa, i64 %i.y ; 2 uses
  %i.ah = atomicrmw xchg ptr %i.ag, i8 1 monotonic, align 1
  %i.ai = trunc i8 %i.ah to i1
  br i1 %i.ai, label %.critedge.i, label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.b
  %.lcssa = phi ptr [ %i.r, %bb.b ], [ %i.ag, %bb.c ] ; 3 uses
  %i.aj = atomicrmw sub ptr %i.c, i64 1 monotonic, align 8 ; 0 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.lcssa, i64 16
  %i.al = load i32, ptr %i.ak, align 8
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.loopexit
  tail call void @_ZN2v88internal44YoungGenerationRememberedSetsMarkingWorklist11MarkingItem19MarkUntypedPointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvPT_(ptr noundef nonnull align 8 dereferenceable(40) %.lcssa, ptr noundef %1)
  br label %_ZN2v88internal44YoungGenerationRememberedSetsMarkingWorklist11MarkingItem7ProcessINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvPT_.exit.i

bb.e:                                             ; preds = %.loopexit
  tail call void @_ZN2v88internal44YoungGenerationRememberedSetsMarkingWorklist11MarkingItem17MarkTypedPointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvPT_(ptr noundef nonnull align 8 dereferenceable(40) %.lcssa, ptr noundef %1)
  br label %_ZN2v88internal44YoungGenerationRememberedSetsMarkingWorklist11MarkingItem7ProcessINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvPT_.exit.i

_ZN2v88internal44YoungGenerationRememberedSetsMarkingWorklist11MarkingItem7ProcessINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvPT_.exit.i: ; preds = %bb.e, %bb.d
  %i.an = load i64, ptr %i.b, align 8
  %i.ao = add i64 %i.an, 1
  store i64 %i.ao, ptr %i.b, align 8
  br label %_ZN2v88internal44YoungGenerationRememberedSetsMarkingWorklist15ProcessNextItemINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEbPT_RSt8optionalImE.exit

.critedge.i:                                      ; preds = %bb.c, %_ZStssImmQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.i
  %i.ap = tail call { i64, i8 } @_ZN2v88internal14IndexGenerator7GetNextEv(ptr noundef nonnull align 8 dereferenceable(96) %i.h) #26 ; 2 uses
  %i.aq = extractvalue { i64, i8 } %i.ap, 0       ; 2 uses
  %i.ar = extractvalue { i64, i8 } %i.ap, 1       ; 2 uses
  store i64 %i.aq, ptr %i.b, align 8
  store i8 %i.ar, ptr %i.f, align 8
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %_ZStssImmQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.i, label %_ZN2v88internal44YoungGenerationRememberedSetsMarkingWorklist15ProcessNextItemINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEbPT_RSt8optionalImE.exit, !llvm.loop !314

_ZN2v88internal44YoungGenerationRememberedSetsMarkingWorklist15ProcessNextItemINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEbPT_RSt8optionalImE.exit: ; preds = %.critedge.i, %.critedge.i.peel, %bb.a, %_ZN2v88internal44YoungGenerationRememberedSetsMarkingWorklist11MarkingItem7ProcessINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvPT_.exit.i
  %.3.i = phi i1 [ false, %bb.a ], [ true, %_ZN2v88internal44YoungGenerationRememberedSetsMarkingWorklist11MarkingItem7ProcessINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvPT_.exit.i ], [ false, %.critedge.i.peel ], [ false, %.critedge.i ]
  ret i1 %.3.i
}

declare void @_ZN2v88internal23MinorMarkSweepCollector9RequestGCEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EED2Ev(ptr noundef nonnull align 8 dereferenceable(2256) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2072 ; 2 uses
  tail call void @_ZN2v88internal16MarkingWorklists5Local7PublishEv(ptr noundef nonnull align 8 dereferenceable(136) %i.a) #26
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2208 ; 2 uses
  tail call void @_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_18EphemeronHashTableEEELt128EE5Local7PublishEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b)
  %.0.ptr12 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.b:                                             ; preds = %bb.g
  tail call void @_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_18EphemeronHashTableEEELt128EE5LocalD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #26
  tail call void @_ZN2v88internal16MarkingWorklists5LocalD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %i.a) #26
  ret void

bb.c:                                             ; preds = %bb.g, %bb.a
  %.0.ptr14 = phi ptr [ %.0.ptr12, %bb.a ], [ %.0.ptr.1, %bb.g ] ; 2 uses
  %.pn.add13 = phi i64 [ 16, %bb.a ], [ %.pn.add.1, %bb.g ] ; 2 uses
  %i.c = load ptr, ptr %.0.ptr14, align 8         ; 2 uses
  %.not11 = icmp eq ptr %i.c, null
  br i1 %.not11, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %.0.ptr14, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  %i.g = atomicrmw add ptr %i.f, i64 %i.e monotonic, align 8 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %.pn.add13 ; 2 uses
  %.0.ptr = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.i = load ptr, ptr %.0.ptr, align 8           ; 2 uses
  %.not11.1 = icmp eq ptr %i.i, null
  br i1 %.not11.1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 240
  %i.m = atomicrmw add ptr %i.l, i64 %i.k monotonic, align 8 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.add.1 = add nuw nsw i64 %.pn.add13, 32     ; 3 uses
  %.0.ptr.1 = getelementptr inbounds nuw i8, ptr %0, i64 %.pn.add.1
  %.not.1 = icmp eq i64 %.pn.add.1, 2064
  br i1 %.not.1, label %bb.b, label %bb.c
}

declare noundef zeroext i1 @_ZNK2v88internal4Heap26CanShortcutStringsDuringGCENS0_16GarbageCollectorE(ptr noundef nonnull align 8 dereferenceable(2992), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EED0Ev(ptr noundef nonnull align 8 dereferenceable(2256) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2072 ; 2 uses
  tail call void @_ZN2v88internal16MarkingWorklists5Local7PublishEv(ptr noundef nonnull align 8 dereferenceable(136) %i.a) #26
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2208 ; 2 uses
  tail call void @_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_18EphemeronHashTableEEELt128EE5Local7PublishEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b)
  %.0.ptr12.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %.0.ptr14.i = phi ptr [ %.0.ptr12.i, %bb.a ], [ %.0.ptr.i.1, %bb.f ] ; 2 uses
  %.pn.add13.i = phi i64 [ 16, %bb.a ], [ %.pn.add.i.1, %bb.f ] ; 2 uses
  %i.c = load ptr, ptr %.0.ptr14.i, align 8       ; 2 uses
  %.not11.i = icmp eq ptr %i.c, null
  br i1 %.not11.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.0.ptr14.i, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  %i.g = atomicrmw add ptr %i.f, i64 %i.e monotonic, align 8 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %.pn.add13.i ; 2 uses
  %.0.ptr.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.i = load ptr, ptr %.0.ptr.i, align 8         ; 2 uses
  %.not11.i.1 = icmp eq ptr %i.i, null
  br i1 %.not11.i.1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 240
  %i.m = atomicrmw add ptr %i.l, i64 %i.k monotonic, align 8 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn.add.i.1 = add nuw nsw i64 %.pn.add13.i, 32 ; 3 uses
  %.0.ptr.i.1 = getelementptr inbounds nuw i8, ptr %0, i64 %.pn.add.i.1
  %.not.i.1 = icmp eq i64 %.pn.add.i.1, 2064
  br i1 %.not.i.1, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EED2Ev.exit, label %bb.b

_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EED2Ev.exit: ; preds = %bb.f
  tail call void @_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_18EphemeronHashTableEEELt128EE5LocalD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #26
  tail call void @_ZN2v88internal16MarkingWorklists5LocalD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %i.a) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 2256) #29
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE13VisitPointersENS0_6TaggedINS0_10HeapObjectEEENS0_14FullObjectSlotES7_(ptr noundef nonnull align 8 dereferenceable(2256) %0, i64 %1, i64 %2, i64 %3) unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = icmp ult i64 %2, %3
  br i1 %i.a, label %.lr.ph, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE17VisitPointersImplINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2072
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit
  %.sroa.0.019 = phi i64 [ %2, %.lr.ph ], [ %i.ap, %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit ] ; 2 uses
  %i.c = inttoptr i64 %.sroa.0.019 to ptr
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8 ; 5 uses
  %i.e = trunc i64 %i.d to i1
  br i1 %i.e, label %bb.c, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = and i64 %i.d, -262144
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.g, align 262144
  %i.h = and i64 %.sroa.0.0.copyload.i.i, 24
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %i.l = load atomic ptr, ptr %i.k seq_cst, align 8
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i, !prof !27

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.24) #27
  unreachable

_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i: ; preds = %bb.d
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = add i64 %i.m, 336
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = lshr i64 %i.d, 3
  %i.q = and i64 %i.p, 63
  %i.r = shl nuw i64 1, %i.q                      ; 2 uses
  %i.s = lshr i64 %i.d, 9
  %i.t = and i64 %i.s, 511
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.t ; 2 uses
  %i.v = load atomic volatile i64, ptr %i.u monotonic, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i
  %.0.i.i.i = phi i64 [ %i.v, %_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i ], [ %i.z, %bb.g ] ; 3 uses
  %i.w = and i64 %.0.i.i.i, %i.r
  %.not16.not.not.i.not.not.not.i.i = icmp eq i64 %i.w, 0
  br i1 %.not16.not.not.i.not.not.not.i.i, label %bb.g, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.x = or i64 %.0.i.i.i, %i.r
  %i.y = cmpxchg volatile ptr %i.u, i64 %.0.i.i.i, i64 %i.x monotonic monotonic, align 8 ; 2 uses
  %i.z = extractvalue { i64, i1 } %i.y, 0
  %.not.i.i2.i = extractvalue { i64, i1 } %i.y, 1
  br i1 %.not.i.i2.i, label %bb.h, label %bb.f, !llvm.loop !5

bb.h:                                             ; preds = %bb.g
  %i.aa = load ptr, ptr %i.b, align 8             ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8            ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 2
  %i.ae = load i16, ptr %i.ad, align 2            ; 2 uses
  %i.af = load i16, ptr %i.ac, align 2
  %i.ag = icmp eq i16 %i.ae, %i.af
  br i1 %i.ag, label %bb.i, label %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit, !prof !27

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aa)
  %i.ah = tail call noundef ptr @_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local10NewSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aa) ; 3 uses
  store ptr %i.ah, ptr %i.ab, align 8
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 2
  %.pre.i = load i16, ptr %.phi.trans.insert.i, align 2
  br label %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit

_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %bb.h, %bb.i
  %i.ai = phi i16 [ %i.ae, %bb.h ], [ %.pre.i, %bb.i ] ; 2 uses
  %i.aj = phi ptr [ %i.ac, %bb.h ], [ %i.ah, %bb.i ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  %i.al = add i16 %i.ai, 1
  store i16 %i.al, ptr %i.ak, align 2
  %i.am = zext i16 %i.ai to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
end_hunk_6
begin_hunk_7_@_ZN2v88internal18BodyDescriptorBase15IteratePointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvNS0_6TaggedINS0_10HeapObjectEEEiiPT_:bb.a
  %i.i = inttoptr i64 %.sroa.018.031 to ptr
  %i.j = load atomic volatile i64, ptr %i.i monotonic, align 8 ; 5 uses
  %i.k = trunc i64 %i.j to i1
  br i1 %i.k, label %bb.e, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit

bb.e:                                             ; preds = %bb.d
  %i.l = and i64 %i.j, -262144
  %i.m = inttoptr i64 %i.l to ptr                 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.m, align 262144
  %i.n = and i64 %.sroa.0.0.copyload.i.i, 24
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %i.r = load atomic ptr, ptr %i.q seq_cst, align 8
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %bb.g, label %_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i, !prof !27

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.24) #27
  unreachable

_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i: ; preds = %bb.f
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = add i64 %i.s, 336
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = lshr i64 %i.j, 3
  %i.w = and i64 %i.v, 63
  %i.x = shl nuw i64 1, %i.w                      ; 2 uses
  %i.y = lshr i64 %i.j, 9
  %i.z = and i64 %i.y, 511
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.z ; 2 uses
  %i.ab = load atomic volatile i64, ptr %i.aa monotonic, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i
  %.0.i.i.i = phi i64 [ %i.ab, %_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i ], [ %i.af, %bb.i ] ; 3 uses
  %i.ac = and i64 %.0.i.i.i, %i.x
  %.not16.not.not.i.not.not.not.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not16.not.not.i.not.not.not.i.i, label %bb.i, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit

bb.i:                                             ; preds = %bb.h
  %i.ad = or i64 %.0.i.i.i, %i.x
  %i.ae = cmpxchg volatile ptr %i.aa, i64 %.0.i.i.i, i64 %i.ad monotonic monotonic, align 8 ; 2 uses
  %i.af = extractvalue { i64, i1 } %i.ae, 0
  %.not.i.i2.i = extractvalue { i64, i1 } %i.ae, 1
  br i1 %.not.i.i2.i, label %bb.j, label %bb.h, !llvm.loop !5

bb.j:                                             ; preds = %bb.i
  %i.ag = load ptr, ptr %i.h, align 8             ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8            ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 2
  %i.ak = load i16, ptr %i.aj, align 2            ; 2 uses
  %i.al = load i16, ptr %i.ai, align 2
  %i.am = icmp eq i16 %i.ak, %i.al
  br i1 %i.am, label %bb.k, label %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit, !prof !27

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ag)
  %i.an = tail call noundef ptr @_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local10NewSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ag) ; 3 uses
  store ptr %i.an, ptr %i.ah, align 8
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.an, i64 2
  %.pre.i = load i16, ptr %.phi.trans.insert.i, align 2
  br label %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit

_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %bb.j, %bb.k
  %i.ao = phi i16 [ %i.ak, %bb.j ], [ %.pre.i, %bb.k ] ; 2 uses
  %i.ap = phi ptr [ %i.ai, %bb.j ], [ %i.an, %bb.k ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  %i.ar = add i16 %i.ao, 1
  store i16 %i.ar, ptr %i.aq, align 2
  %i.as = zext i16 %i.ao to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.as
  store i64 %i.j, ptr %i.au, align 8
  br label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit

_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit: ; preds = %bb.h, %bb.e, %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit, %bb.d
  %i.av = add i64 %.sroa.018.031, 8               ; 2 uses
  %i.aw = icmp ult i64 %i.av, %i.f
  br i1 %i.aw, label %bb.d, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE17VisitPointersImplINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit, !llvm.loop !12

_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE17VisitPointersImplINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit: ; preds = %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal14AllocationSite14BodyDescriptor11IterateBodyINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvNS0_6TaggedINS0_3MapEEENS7_INS0_10HeapObjectEEEiPT_(i64 %0, i64 %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = add i64 %1, 7                            ; 2 uses
  %i.b = add i64 %1, 31                           ; 2 uses
  %i.c = icmp ult i64 %i.a, %i.b
  br i1 %i.c, label %.lr.ph.i, label %_ZN2v88internal18BodyDescriptorBase15IteratePointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvNS0_6TaggedINS0_10HeapObjectEEEiiPT_.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 2072
  br label %bb.b

bb.b:                                             ; preds = %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit.i, %.lr.ph.i
  %.sroa.018.031.i = phi i64 [ %i.a, %.lr.ph.i ], [ %i.ar, %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit.i ] ; 2 uses
  %i.e = inttoptr i64 %.sroa.018.031.i to ptr
  %i.f = load atomic volatile i64, ptr %i.e monotonic, align 8 ; 5 uses
  %i.g = trunc i64 %i.f to i1
  br i1 %i.g, label %bb.c, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit.i

bb.c:                                             ; preds = %bb.b
  %i.h = and i64 %i.f, -262144
  %i.i = inttoptr i64 %i.h to ptr                 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.i, align 262144
  %i.j = and i64 %.sroa.0.0.copyload.i.i.i, 24
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  %i.n = load atomic ptr, ptr %i.m seq_cst, align 8
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %bb.e, label %_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i, !prof !27

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.24) #27
  unreachable

_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i: ; preds = %bb.d
  %i.o = ptrtoint ptr %i.l to i64
  %i.p = add i64 %i.o, 336
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = lshr i64 %i.f, 3
  %i.s = and i64 %i.r, 63
  %i.t = shl nuw i64 1, %i.s                      ; 2 uses
  %i.u = lshr i64 %i.f, 9
  %i.v = and i64 %i.u, 511
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.v ; 2 uses
  %i.x = load atomic volatile i64, ptr %i.w monotonic, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i
  %.0.i.i.i.i = phi i64 [ %i.x, %_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i ], [ %i.ab, %bb.g ] ; 3 uses
  %i.y = and i64 %.0.i.i.i.i, %i.t
  %.not16.not.not.i.not.not.not.i.i.i = icmp eq i64 %i.y, 0
  br i1 %.not16.not.not.i.not.not.not.i.i.i, label %bb.g, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit.i

bb.g:                                             ; preds = %bb.f
  %i.z = or i64 %.0.i.i.i.i, %i.t
  %i.aa = cmpxchg volatile ptr %i.w, i64 %.0.i.i.i.i, i64 %i.z monotonic monotonic, align 8 ; 2 uses
  %i.ab = extractvalue { i64, i1 } %i.aa, 0
  %.not.i.i2.i.i = extractvalue { i64, i1 } %i.aa, 1
  br i1 %.not.i.i2.i.i, label %bb.h, label %bb.f, !llvm.loop !5

bb.h:                                             ; preds = %bb.g
  %i.ac = load ptr, ptr %i.d, align 8             ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8            ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  %i.ag = load i16, ptr %i.af, align 2            ; 2 uses
  %i.ah = load i16, ptr %i.ae, align 2
  %i.ai = icmp eq i16 %i.ag, %i.ah
  br i1 %i.ai, label %bb.i, label %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i, !prof !27

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ac)
  %i.aj = tail call noundef ptr @_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local10NewSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ac) ; 3 uses
  store ptr %i.aj, ptr %i.ad, align 8
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  %.pre.i.i = load i16, ptr %.phi.trans.insert.i.i, align 2
  br label %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i

_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i: ; preds = %bb.i, %bb.h
  %i.ak = phi i16 [ %i.ag, %bb.h ], [ %.pre.i.i, %bb.i ] ; 2 uses
  %i.al = phi ptr [ %i.ae, %bb.h ], [ %i.aj, %bb.i ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  %i.an = add i16 %i.ak, 1
  store i16 %i.an, ptr %i.am, align 2
  %i.ao = zext i16 %i.ak to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ao
  store i64 %i.f, ptr %i.aq, align 8
  br label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit.i

_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit.i: ; preds = %bb.f, %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i, %bb.c, %bb.b
  %i.ar = add i64 %.sroa.018.031.i, 8             ; 2 uses
  %i.as = icmp ult i64 %i.ar, %i.b
  br i1 %i.as, label %bb.b, label %_ZN2v88internal18BodyDescriptorBase15IteratePointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvNS0_6TaggedINS0_10HeapObjectEEEiiPT_.exit, !llvm.loop !12

_ZN2v88internal18BodyDescriptorBase15IteratePointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvNS0_6TaggedINS0_10HeapObjectEEEiiPT_.exit: ; preds = %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit.i, %bb.a
  %i.at = icmp eq i32 %2, 48
  br i1 %i.at, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN2v88internal18BodyDescriptorBase15IteratePointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvNS0_6TaggedINS0_10HeapObjectEEEiiPT_.exit
  %i.au = add i64 %1, 39
  %i.av = add i64 %1, 47
  %i.aw = load ptr, ptr %3, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  tail call void %i.ay(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 %1, i64 %i.au, i64 %i.av) #26, !inline_history !315
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN2v88internal18BodyDescriptorBase15IteratePointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvNS0_6TaggedINS0_10HeapObjectEEEiiPT_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal15BytecodeWrapper14BodyDescriptor11IterateBodyINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvNS0_6TaggedINS0_3MapEEENS7_INS0_10HeapObjectEEEiPT_(i64 %0, i64 %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = add i64 %1, 7                            ; 2 uses
  %i.b = add i64 %1, 15
  %i.c = icmp ult i64 %i.a, -8
  br i1 %i.c, label %.lr.ph.i.i, label %_ZN2v88internal18BodyDescriptorBase21IterateTrustedPointerINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_NS0_19IndirectPointerModeENS0_18IndirectPointerTagE.exit

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 2072
  br label %bb.b

bb.b:                                             ; preds = %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit.i.i, %.lr.ph.i.i
  %.sroa.07.020.i.i = phi i64 [ %i.a, %.lr.ph.i.i ], [ %i.ar, %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit.i.i ] ; 2 uses
  %i.e = inttoptr i64 %.sroa.07.020.i.i to ptr
  %i.f = load atomic volatile i64, ptr %i.e monotonic, align 8 ; 5 uses
  %i.g = trunc i64 %i.f to i1
  br i1 %i.g, label %bb.c, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.h = and i64 %i.f, -262144
  %i.i = inttoptr i64 %i.h to ptr                 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.i, align 262144
  %i.j = and i64 %.sroa.0.0.copyload.i.i.i.i, 24
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  %i.n = load atomic ptr, ptr %i.m seq_cst, align 8
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i, label %bb.e, label %_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i, !prof !27

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.24) #27
  unreachable

_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i: ; preds = %bb.d
  %i.o = ptrtoint ptr %i.l to i64
  %i.p = add i64 %i.o, 336
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = lshr i64 %i.f, 3
  %i.s = and i64 %i.r, 63
  %i.t = shl nuw i64 1, %i.s                      ; 2 uses
  %i.u = lshr i64 %i.f, 9
  %i.v = and i64 %i.u, 511
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.v ; 2 uses
  %i.x = load atomic volatile i64, ptr %i.w monotonic, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i
  %.0.i.i.i.i.i = phi i64 [ %i.x, %_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i ], [ %i.ab, %bb.g ] ; 3 uses
  %i.y = and i64 %.0.i.i.i.i.i, %i.t
  %.not16.not.not.i.not.not.not.i.i.i.i = icmp eq i64 %i.y, 0
  br i1 %.not16.not.not.i.not.not.not.i.i.i.i, label %bb.g, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.z = or i64 %.0.i.i.i.i.i, %i.t
  %i.aa = cmpxchg volatile ptr %i.w, i64 %.0.i.i.i.i.i, i64 %i.z monotonic monotonic, align 8 ; 2 uses
  %i.ab = extractvalue { i64, i1 } %i.aa, 0
  %.not.i.i2.i.i.i = extractvalue { i64, i1 } %i.aa, 1
  br i1 %.not.i.i2.i.i.i, label %bb.h, label %bb.f, !llvm.loop !5

bb.h:                                             ; preds = %bb.g
  %i.ac = load ptr, ptr %i.d, align 8             ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8            ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  %i.ag = load i16, ptr %i.af, align 2            ; 2 uses
  %i.ah = load i16, ptr %i.ae, align 2
  %i.ai = icmp eq i16 %i.ag, %i.ah
  br i1 %i.ai, label %bb.i, label %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i, !prof !27

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ac)
  %i.aj = tail call noundef ptr @_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local10NewSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ac) ; 3 uses
  store ptr %i.aj, ptr %i.ad, align 8
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  %.pre.i.i.i = load i16, ptr %.phi.trans.insert.i.i.i, align 2
  br label %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i

_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i: ; preds = %bb.i, %bb.h
  %i.ak = phi i16 [ %i.ag, %bb.h ], [ %.pre.i.i.i, %bb.i ] ; 2 uses
  %i.al = phi ptr [ %i.ae, %bb.h ], [ %i.aj, %bb.i ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  %i.an = add i16 %i.ak, 1
  store i16 %i.an, ptr %i.am, align 2
  %i.ao = zext i16 %i.ak to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ao
  store i64 %i.f, ptr %i.aq, align 8
  br label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit.i.i

_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit.i.i: ; preds = %bb.f, %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i, %bb.c, %bb.b
  %i.ar = add i64 %.sroa.07.020.i.i, 8            ; 2 uses
  %i.as = icmp ult i64 %i.ar, %i.b
  br i1 %i.as, label %bb.b, label %_ZN2v88internal18BodyDescriptorBase21IterateTrustedPointerINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_NS0_19IndirectPointerModeENS0_18IndirectPointerTagE.exit, !llvm.loop !12

_ZN2v88internal18BodyDescriptorBase21IterateTrustedPointerINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_NS0_19IndirectPointerModeENS0_18IndirectPointerTagE.exit: ; preds = %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal12CallSiteInfo14BodyDescriptor11IterateBodyINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvNS0_6TaggedINS0_3MapEEENS7_INS0_10HeapObjectEEEiPT_(i64 %0, i64 %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = add i64 %1, 7                            ; 2 uses
  %i.b = add i64 %1, 15                           ; 3 uses
  %i.c = icmp ult i64 %i.a, -8
  br i1 %i.c, label %.lr.ph.i.i, label %_ZN2v88internal18BodyDescriptorBase21IterateTrustedPointerINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_NS0_19IndirectPointerModeENS0_18IndirectPointerTagE.exit

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 2072
  br label %bb.b

bb.b:                                             ; preds = %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit.i.i, %.lr.ph.i.i
  %.sroa.07.020.i.i = phi i64 [ %i.a, %.lr.ph.i.i ], [ %i.ar, %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit.i.i ] ; 2 uses
  %i.e = inttoptr i64 %.sroa.07.020.i.i to ptr
  %i.f = load atomic volatile i64, ptr %i.e monotonic, align 8 ; 5 uses
  %i.g = trunc i64 %i.f to i1
  br i1 %i.g, label %bb.c, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.h = and i64 %i.f, -262144
  %i.i = inttoptr i64 %i.h to ptr                 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.i, align 262144
  %i.j = and i64 %.sroa.0.0.copyload.i.i.i.i, 24
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  %i.n = load atomic ptr, ptr %i.m seq_cst, align 8
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i, label %bb.e, label %_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i, !prof !27

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.24) #27
  unreachable

_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i: ; preds = %bb.d
  %i.o = ptrtoint ptr %i.l to i64
  %i.p = add i64 %i.o, 336
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = lshr i64 %i.f, 3
  %i.s = and i64 %i.r, 63
  %i.t = shl nuw i64 1, %i.s                      ; 2 uses
  %i.u = lshr i64 %i.f, 9
  %i.v = and i64 %i.u, 511
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.v ; 2 uses
  %i.x = load atomic volatile i64, ptr %i.w monotonic, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i
  %.0.i.i.i.i.i = phi i64 [ %i.x, %_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i ], [ %i.ab, %bb.g ] ; 3 uses
  %i.y = and i64 %.0.i.i.i.i.i, %i.t
  %.not16.not.not.i.not.not.not.i.i.i.i = icmp eq i64 %i.y, 0
  br i1 %.not16.not.not.i.not.not.not.i.i.i.i, label %bb.g, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.z = or i64 %.0.i.i.i.i.i, %i.t
  %i.aa = cmpxchg volatile ptr %i.w, i64 %.0.i.i.i.i.i, i64 %i.z monotonic monotonic, align 8 ; 2 uses
  %i.ab = extractvalue { i64, i1 } %i.aa, 0
  %.not.i.i2.i.i.i = extractvalue { i64, i1 } %i.aa, 1
  br i1 %.not.i.i2.i.i.i, label %bb.h, label %bb.f, !llvm.loop !5

bb.h:                                             ; preds = %bb.g
  %i.ac = load ptr, ptr %i.d, align 8             ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8            ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  %i.ag = load i16, ptr %i.af, align 2            ; 2 uses
  %i.ah = load i16, ptr %i.ae, align 2
  %i.ai = icmp eq i16 %i.ag, %i.ah
  br i1 %i.ai, label %bb.i, label %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i, !prof !27

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ac)
  %i.aj = tail call noundef ptr @_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local10NewSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ac) ; 3 uses
  store ptr %i.aj, ptr %i.ad, align 8
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  %.pre.i.i.i = load i16, ptr %.phi.trans.insert.i.i.i, align 2
  br label %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i

_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i: ; preds = %bb.i, %bb.h
  %i.ak = phi i16 [ %i.ag, %bb.h ], [ %.pre.i.i.i, %bb.i ] ; 2 uses
  %i.al = phi ptr [ %i.ae, %bb.h ], [ %i.aj, %bb.i ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  %i.an = add i16 %i.ak, 1
  store i16 %i.an, ptr %i.am, align 2
  %i.ao = zext i16 %i.ak to i64
end_hunk_7
begin_hunk_8_@_ZN2v88internal9DebugInfo14BodyDescriptor11IterateBodyINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvNS0_6TaggedINS0_3MapEEENS7_INS0_10HeapObjectEEEiPT_:bb.a
  %i.dl = extractvalue { i64, i1 } %i.dk, 0
  %.not.i.i2.i.i.i18 = extractvalue { i64, i1 } %i.dk, 1
  br i1 %.not.i.i2.i.i.i18, label %bb.x, label %bb.v, !llvm.loop !5

bb.x:                                             ; preds = %bb.w
  %i.dm = load ptr, ptr %i.cn, align 8            ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8 ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8            ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 2
  %i.dq = load i16, ptr %i.dp, align 2            ; 2 uses
  %i.dr = load i16, ptr %i.do, align 2
  %i.ds = icmp eq i16 %i.dq, %i.dr
  br i1 %i.ds, label %bb.y, label %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i19, !prof !27

bb.y:                                             ; preds = %bb.x
  tail call void @_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dm)
  %i.dt = tail call noundef ptr @_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local10NewSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dm) ; 3 uses
  store ptr %i.dt, ptr %i.dn, align 8
  %.phi.trans.insert.i.i.i20 = getelementptr inbounds nuw i8, ptr %i.dt, i64 2
  %.pre.i.i.i21 = load i16, ptr %.phi.trans.insert.i.i.i20, align 2
  br label %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i19

_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i19: ; preds = %bb.y, %bb.x
  %i.du = phi i16 [ %i.dq, %bb.x ], [ %.pre.i.i.i21, %bb.y ] ; 2 uses
  %i.dv = phi ptr [ %i.do, %bb.x ], [ %i.dt, %bb.y ] ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 2
  %i.dx = add i16 %i.du, 1
  store i16 %i.dx, ptr %i.dw, align 2
  %i.dy = zext i16 %i.du to i64
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.dy
  store i64 %i.cp, ptr %i.ea, align 8
  br label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit.i.i11

_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit.i.i11: ; preds = %bb.v, %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i19, %bb.s, %bb.r
  %i.eb = add i64 %.sroa.07.020.i.i10, 8          ; 2 uses
  %i.ec = icmp ult i64 %i.eb, %i.at
  br i1 %i.ec, label %bb.r, label %_ZN2v88internal18BodyDescriptorBase21IterateTrustedPointerINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_NS0_19IndirectPointerModeENS0_18IndirectPointerTagE.exit22, !llvm.loop !12

_ZN2v88internal18BodyDescriptorBase21IterateTrustedPointerINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_NS0_19IndirectPointerModeENS0_18IndirectPointerTagE.exit22: ; preds = %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit.i.i11, %_ZN2v88internal18BodyDescriptorBase21IterateTrustedPointerINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_NS0_19IndirectPointerModeENS0_18IndirectPointerTagE.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal17DoubleStringCache14BodyDescriptor11IterateBodyINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvNS0_6TaggedINS0_3MapEEENS7_INS0_10HeapObjectEEEiPT_(i64 %0, i64 %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = icmp sgt i32 %2, 16
  br i1 %i.a, label %.lr.ph30, label %._crit_edge

.lr.ph30:                                         ; preds = %bb.a
  %i.b = add i64 %1, -1
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 2072
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE17VisitPointersImplINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph30, %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE17VisitPointersImplINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit
  %.029 = phi i32 [ 16, %.lr.ph30 ], [ %i.bl, %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE17VisitPointersImplINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit ] ; 2 uses
  %i.d = sext i32 %.029 to i64
  %i.e = add i64 %i.b, %i.d                       ; 2 uses
  %i.f = add i64 %i.e, 16                         ; 2 uses
  %.sroa.014.027 = add i64 %i.e, 8                ; 2 uses
  %i.g = icmp ult i64 %.sroa.014.027, %i.f
  br i1 %i.g, label %.lr.ph, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE17VisitPointersImplINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit

.lr.ph:                                           ; preds = %bb.b, %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit
  %.sroa.014.028 = phi i64 [ %.sroa.014.0, %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit ], [ %.sroa.014.027, %bb.b ] ; 2 uses
  %i.h = inttoptr i64 %.sroa.014.028 to ptr
  %i.i = load atomic volatile i64, ptr %i.h monotonic, align 8 ; 5 uses
  %i.j = trunc i64 %i.i to i1
  br i1 %i.j, label %bb.c, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit

bb.c:                                             ; preds = %.lr.ph
  %i.k = and i64 %i.i, -262144
  %i.l = inttoptr i64 %i.k to ptr                 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.l, align 262144
  %i.m = and i64 %.sroa.0.0.copyload.i.i, 24
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %i.q = load atomic ptr, ptr %i.p seq_cst, align 8
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %bb.e, label %_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i, !prof !27

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.24) #27
  unreachable

_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i: ; preds = %bb.d
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = add i64 %i.r, 336
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = lshr i64 %i.i, 3
  %i.v = and i64 %i.u, 63
  %i.w = shl nuw i64 1, %i.v                      ; 2 uses
  %i.x = lshr i64 %i.i, 9
  %i.y = and i64 %i.x, 511
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.y ; 2 uses
  %i.aa = load atomic volatile i64, ptr %i.z monotonic, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i
  %.0.i.i.i = phi i64 [ %i.aa, %_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i ], [ %i.ae, %bb.g ] ; 3 uses
  %i.ab = and i64 %.0.i.i.i, %i.w
  %.not16.not.not.i.not.not.not.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not16.not.not.i.not.not.not.i.i, label %bb.g, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.ac = or i64 %.0.i.i.i, %i.w
  %i.ad = cmpxchg volatile ptr %i.z, i64 %.0.i.i.i, i64 %i.ac monotonic monotonic, align 8 ; 2 uses
  %i.ae = extractvalue { i64, i1 } %i.ad, 0
  %.not.i.i2.i = extractvalue { i64, i1 } %i.ad, 1
  br i1 %.not.i.i2.i, label %bb.h, label %bb.f, !llvm.loop !5

bb.h:                                             ; preds = %bb.g
  %i.af = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 2
  %i.aj = load i16, ptr %i.ai, align 2            ; 2 uses
  %i.ak = load i16, ptr %i.ah, align 2
  %i.al = icmp eq i16 %i.aj, %i.ak
  br i1 %i.al, label %bb.i, label %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit, !prof !27

bb.i:                                             ; preds = %bb.h
  %i.am = tail call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #26
  %.not.i = icmp eq ptr %i.ah, %i.am
  br i1 %.not.i, label %_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = load ptr, ptr %i.af, align 8, !nonnull !29, !align !30 ; 4 uses
  %i.ao = load ptr, ptr %i.ag, align 8            ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(24) %i.an) #26
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.aq, ptr %i.ar, align 8
  store ptr %i.ao, ptr %i.ap, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.at = atomicrmw add ptr %i.as, i64 1 monotonic, align 8 ; 0 uses
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(24) %i.an) #26
  br label %_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv.exit

_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv.exit: ; preds = %bb.i, %bb.j
  %i.au = load i8, ptr @_ZN4heap4base12WorklistBase18predictable_order_E, align 1, !range !28, !noundef !29
  %i.av = trunc nuw i8 %i.au to i1
  %i.aw = tail call noalias noundef dereferenceable_or_null(528) ptr @malloc(i64 noundef 528) #31 ; 7 uses
  br i1 %i.av, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv.exit
  %i.ax = tail call noundef i64 @malloc_usable_size(ptr noundef %i.aw) #26
  %i.ay = add i64 %i.ax, 524272
  %i.az = lshr i64 %i.ay, 3
  %i.ba = trunc i64 %i.az to i16
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv.exit
  %.sroa.6.0.i.i = phi i16 [ %i.ba, %bb.k ], [ 64, %_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv.exit ]
  %.not.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i, label %bb.m, label %_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local10NewSegmentEv.exit

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN2v84base8FatalOOMENS0_7OOMTypeEPKc(i32 noundef 1, ptr noundef nonnull @.str.23) #27
  unreachable

_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local10NewSegmentEv.exit: ; preds = %bb.l
  store i16 %.sroa.6.0.i.i, ptr %i.aw, align 2
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 2 ; 2 uses
  store i16 0, ptr %i.bb, align 2
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr null, ptr %i.bc, align 8
  store ptr %i.aw, ptr %i.ag, align 8
  %.pre.i = load i16, ptr %i.bb, align 2
  br label %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit

_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %bb.h, %_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local10NewSegmentEv.exit
  %i.bd = phi i16 [ %i.aj, %bb.h ], [ %.pre.i, %_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local10NewSegmentEv.exit ] ; 2 uses
  %i.be = phi ptr [ %i.ah, %bb.h ], [ %i.aw, %_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local10NewSegmentEv.exit ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 2
  %i.bg = add i16 %i.bd, 1
  store i16 %i.bg, ptr %i.bf, align 2
  %i.bh = zext i16 %i.bd to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bh
  store i64 %i.i, ptr %i.bj, align 8
  br label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit

_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit: ; preds = %bb.f, %bb.c, %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit, %.lr.ph
  %.sroa.014.0 = add i64 %.sroa.014.028, 8        ; 2 uses
  %i.bk = icmp ult i64 %.sroa.014.0, %i.f
  br i1 %i.bk, label %.lr.ph, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE17VisitPointersImplINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit, !llvm.loop !12

_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE17VisitPointersImplINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit: ; preds = %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit, %bb.b
  %i.bl = add i32 %.029, 16                       ; 2 uses
  %i.bm = icmp slt i32 %i.bl, %2
  br i1 %i.bm, label %bb.b, label %._crit_edge, !llvm.loop !316
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal17EmbedderDataArray14BodyDescriptor11IterateBodyINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvNS0_6TaggedINS0_3MapEEENS7_INS0_10HeapObjectEEEiPT_(i64 %0, i64 %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = add i64 %1, -1
  %i.b = add i64 %1, 15                           ; 2 uses
  %i.c = sext i32 %2 to i64
  %i.d = add i64 %i.a, %i.c                       ; 2 uses
  %i.e = icmp ult i64 %i.b, %i.d
  br i1 %i.e, label %.lr.ph.i, label %_ZN2v88internal18BodyDescriptorBase15IteratePointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvNS0_6TaggedINS0_10HeapObjectEEEiiPT_.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 2072
  br label %bb.b

bb.b:                                             ; preds = %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit.i, %.lr.ph.i
  %.sroa.018.031.i = phi i64 [ %i.b, %.lr.ph.i ], [ %i.at, %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit.i ] ; 2 uses
  %i.g = inttoptr i64 %.sroa.018.031.i to ptr
  %i.h = load atomic volatile i64, ptr %i.g monotonic, align 8 ; 5 uses
  %i.i = trunc i64 %i.h to i1
  br i1 %i.i, label %bb.c, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit.i

bb.c:                                             ; preds = %bb.b
  %i.j = and i64 %i.h, -262144
  %i.k = inttoptr i64 %i.j to ptr                 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.k, align 262144
  %i.l = and i64 %.sroa.0.0.copyload.i.i.i, 24
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.p = load atomic ptr, ptr %i.o seq_cst, align 8
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %bb.e, label %_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i, !prof !27

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.24) #27
  unreachable

_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i: ; preds = %bb.d
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = add i64 %i.q, 336
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = lshr i64 %i.h, 3
  %i.u = and i64 %i.t, 63
  %i.v = shl nuw i64 1, %i.u                      ; 2 uses
  %i.w = lshr i64 %i.h, 9
  %i.x = and i64 %i.w, 511
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.x ; 2 uses
  %i.z = load atomic volatile i64, ptr %i.y monotonic, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i
  %.0.i.i.i.i = phi i64 [ %i.z, %_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i ], [ %i.ad, %bb.g ] ; 3 uses
  %i.aa = and i64 %.0.i.i.i.i, %i.v
  %.not16.not.not.i.not.not.not.i.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not16.not.not.i.not.not.not.i.i.i, label %bb.g, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ab = or i64 %.0.i.i.i.i, %i.v
  %i.ac = cmpxchg volatile ptr %i.y, i64 %.0.i.i.i.i, i64 %i.ab monotonic monotonic, align 8 ; 2 uses
  %i.ad = extractvalue { i64, i1 } %i.ac, 0
  %.not.i.i2.i.i = extractvalue { i64, i1 } %i.ac, 1
  br i1 %.not.i.i2.i.i, label %bb.h, label %bb.f, !llvm.loop !5

bb.h:                                             ; preds = %bb.g
  %i.ae = load ptr, ptr %i.f, align 8             ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8            ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  %i.ai = load i16, ptr %i.ah, align 2            ; 2 uses
  %i.aj = load i16, ptr %i.ag, align 2
  %i.ak = icmp eq i16 %i.ai, %i.aj
  br i1 %i.ak, label %bb.i, label %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i, !prof !27

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ae)
  %i.al = tail call noundef ptr @_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local10NewSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ae) ; 3 uses
  store ptr %i.al, ptr %i.af, align 8
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  %.pre.i.i = load i16, ptr %.phi.trans.insert.i.i, align 2
  br label %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i

_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i: ; preds = %bb.i, %bb.h
  %i.am = phi i16 [ %i.ai, %bb.h ], [ %.pre.i.i, %bb.i ] ; 2 uses
  %i.an = phi ptr [ %i.ag, %bb.h ], [ %i.al, %bb.i ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 2
  %i.ap = add i16 %i.am, 1
  store i16 %i.ap, ptr %i.ao, align 2
  %i.aq = zext i16 %i.am to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.aq
  store i64 %i.h, ptr %i.as, align 8
  br label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit.i

_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit.i: ; preds = %bb.f, %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i, %bb.c, %bb.b
  %i.at = add i64 %.sroa.018.031.i, 8             ; 2 uses
  %i.au = icmp ult i64 %i.at, %i.d
  br i1 %i.au, label %bb.b, label %_ZN2v88internal18BodyDescriptorBase15IteratePointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvNS0_6TaggedINS0_10HeapObjectEEEiiPT_.exit, !llvm.loop !12

_ZN2v88internal18BodyDescriptorBase15IteratePointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvNS0_6TaggedINS0_10HeapObjectEEEiiPT_.exit: ; preds = %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_18EphemeronHashTableEEELt128EE5Local18PublishPushSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #26
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !nonnull !29, !align !30 ; 4 uses
  %i.e = load ptr, ptr %i.a, align 8              ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(24) %i.d) #26
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.g, ptr %i.h, align 8
  store ptr %i.e, ptr %i.f, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.j = atomicrmw add ptr %i.i, i64 1 monotonic, align 8 ; 0 uses
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(24) %i.d) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_18EphemeronHashTableEEELt128EE5Local10NewSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load i8, ptr @_ZN4heap4base12WorklistBase18predictable_order_E, align 1, !range !28, !noundef !29
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = tail call noalias noundef dereferenceable_or_null(1040) ptr @malloc(i64 noundef 1040) #31 ; 6 uses
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @malloc_usable_size(ptr noundef %i.c) #26
  %i.e = add i64 %i.d, 524272
  %i.f = lshr i64 %i.e, 3
  %i.g = trunc i64 %i.f to i16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.6.0.i = phi i16 [ %i.g, %bb.b ], [ 128, %bb.a ]
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.d, label %_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_18EphemeronHashTableEEELt128EE7Segment6CreateEt.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v84base8FatalOOMENS0_7OOMTypeEPKc(i32 noundef 1, ptr noundef nonnull @.str.23) #27
  unreachable

_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_18EphemeronHashTableEEELt128EE7Segment6CreateEt.exit: ; preds = %bb.c
  store i16 %.sroa.6.0.i, ptr %i.c, align 2
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i16 0, ptr %i.h, align 2
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr null, ptr %i.i, align 8
  ret ptr %i.c
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal12FeedbackCell14BodyDescriptor11IterateBodyINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvNS0_6TaggedINS0_3MapEEENS7_INS0_10HeapObjectEEEiPT_(i64 %0, i64 %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = add i64 %1, 7                            ; 2 uses
  %i.b = add i64 %1, 15                           ; 2 uses
  %i.c = icmp ult i64 %i.a, -8
  br i1 %i.c, label %.lr.ph.i, label %_ZN2v88internal18BodyDescriptorBase14IteratePointerINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 2072
  br label %bb.b

bb.b:                                             ; preds = %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit.i, %.lr.ph.i
  %.sroa.07.020.i = phi i64 [ %i.a, %.lr.ph.i ], [ %i.ar, %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit.i ] ; 2 uses
  %i.e = inttoptr i64 %.sroa.07.020.i to ptr
  %i.f = load atomic volatile i64, ptr %i.e monotonic, align 8 ; 5 uses
  %i.g = trunc i64 %i.f to i1
  br i1 %i.g, label %bb.c, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit.i

bb.c:                                             ; preds = %bb.b
  %i.h = and i64 %i.f, -262144
  %i.i = inttoptr i64 %i.h to ptr                 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.i, align 262144
  %i.j = and i64 %.sroa.0.0.copyload.i.i.i, 24
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  %i.n = load atomic ptr, ptr %i.m seq_cst, align 8
end_hunk_8
begin_hunk_9_@_ZN2v88internal10WasmStruct14BodyDescriptor11IterateBodyINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvNS0_6TaggedINS0_3MapEEENS7_INS0_10HeapObjectEEEiPT_:bb.a
  %i.y = lshr i64 %i.j, 9
  %i.z = and i64 %i.y, 511
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.z ; 2 uses
  %i.ab = load atomic volatile i64, ptr %i.aa monotonic, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i
  %.0.i.i.i = phi i64 [ %i.ab, %_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i ], [ %i.af, %bb.h ] ; 3 uses
  %i.ac = and i64 %.0.i.i.i, %i.x
  %.not16.not.not.i.not.not.not.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not16.not.not.i.not.not.not.i.i, label %bb.h, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit25

bb.h:                                             ; preds = %bb.g
  %i.ad = or i64 %.0.i.i.i, %i.x
  %i.ae = cmpxchg volatile ptr %i.aa, i64 %.0.i.i.i, i64 %i.ad monotonic monotonic, align 8 ; 2 uses
  %i.af = extractvalue { i64, i1 } %i.ae, 0
  %.not.i.i2.i = extractvalue { i64, i1 } %i.ae, 1
  br i1 %.not.i.i2.i, label %bb.i, label %bb.g, !llvm.loop !5

bb.i:                                             ; preds = %bb.h
  %i.ag = load ptr, ptr %i.h, align 8             ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8            ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 2
  %i.ak = load i16, ptr %i.aj, align 2            ; 2 uses
  %i.al = load i16, ptr %i.ai, align 2
  %i.am = icmp eq i16 %i.ak, %i.al
  br i1 %i.am, label %bb.j, label %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit, !prof !27

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ag)
  %i.an = tail call noundef ptr @_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local10NewSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ag) ; 3 uses
  store ptr %i.an, ptr %i.ah, align 8
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.an, i64 2
  %.pre.i = load i16, ptr %.phi.trans.insert.i, align 2
  br label %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit

_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %bb.i, %bb.j
  %i.ao = phi i16 [ %i.ak, %bb.i ], [ %.pre.i, %bb.j ] ; 2 uses
  %i.ap = phi ptr [ %i.ai, %bb.i ], [ %i.an, %bb.j ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  %i.ar = add i16 %i.ao, 1
  store i16 %i.ar, ptr %i.aq, align 2
  %i.as = zext i16 %i.ao to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.as
  store i64 %i.j, ptr %i.au, align 8
  br label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit25

_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit25: ; preds = %bb.g, %bb.d, %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit, %bb.c
  %i.av = add i64 %.sroa.055.084, 8               ; 2 uses
  %i.aw = icmp ult i64 %i.av, %i.f
  br i1 %i.aw, label %bb.c, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE17VisitPointersImplINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit, !llvm.loop !12

_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE17VisitPointersImplINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit: ; preds = %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit25, %bb.b, %bb.a
  %i.ax = load i16, ptr %i.a, align 8             ; 2 uses
  %.not90 = icmp eq i16 %i.ax, 0
  br i1 %.not90, label %._crit_edge, label %.lr.ph89

.lr.ph89:                                         ; preds = %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE17VisitPointersImplINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ba = add i64 %1, 15
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 2072
  br label %bb.k

._crit_edge:                                      ; preds = %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE17VisitPointersImplINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit18, %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE17VisitPointersImplINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit
  ret void

bb.k:                                             ; preds = %.lr.ph89, %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE17VisitPointersImplINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit18
  %i.bc = phi i16 [ %i.ax, %.lr.ph89 ], [ %i.dh, %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE17VisitPointersImplINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit18 ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph89 ], [ %indvars.iv.next, %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE17VisitPointersImplINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit18 ] ; 4 uses
  %i.bd = load ptr, ptr %i.ay, align 8
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv
  %.sroa.0.0.copyload.i.i27 = load i32, ptr %i.be, align 4
  %i.bf = trunc i32 %.sroa.0.0.copyload.i.i27 to i1
  br i1 %i.bf, label %bb.l, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE17VisitPointersImplINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit18

bb.l:                                             ; preds = %bb.k
  %i.bg = icmp eq i64 %indvars.iv, 0
  br i1 %i.bg, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bh = load i8, ptr %i.b, align 2, !range !28, !noundef !29
  %i.bi = shl nuw nsw i8 %i.bh, 3
  %i.bj = zext nneg i8 %i.bi to i32
  br label %_ZNK2v88internal4wasm14StructTypeBase12field_offsetEj.exit

bb.n:                                             ; preds = %bb.l
  %i.bk = load ptr, ptr %i.az, align 8
  %i.bl = getelementptr [4 x i8], ptr %i.bk, i64 %indvars.iv
  %i.bm = getelementptr i8, ptr %i.bl, i64 -4
  %i.bn = load i32, ptr %i.bm, align 4
  br label %_ZNK2v88internal4wasm14StructTypeBase12field_offsetEj.exit

_ZNK2v88internal4wasm14StructTypeBase12field_offsetEj.exit: ; preds = %bb.m, %bb.n
  %.0.i28 = phi i32 [ %i.bj, %bb.m ], [ %i.bn, %bb.n ]
  %i.bo = sext i32 %.0.i28 to i64
  %i.bp = add i64 %i.ba, %i.bo                    ; 3 uses
  %i.bq = add i64 %i.bp, 8
  %i.br = icmp ult i64 %i.bp, -8
  br i1 %i.br, label %.lr.ph86, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE17VisitPointersImplINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit18

.lr.ph86:                                         ; preds = %_ZNK2v88internal4wasm14StructTypeBase12field_offsetEj.exit, %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit
  %.sroa.059.085 = phi i64 [ %i.df, %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit ], [ %i.bp, %_ZNK2v88internal4wasm14StructTypeBase12field_offsetEj.exit ] ; 2 uses
  %i.bs = inttoptr i64 %.sroa.059.085 to ptr
  %i.bt = load atomic volatile i64, ptr %i.bs monotonic, align 8 ; 5 uses
  %i.bu = trunc i64 %i.bt to i1
  br i1 %i.bu, label %bb.o, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit

bb.o:                                             ; preds = %.lr.ph86
  %i.bv = and i64 %i.bt, -262144
  %i.bw = inttoptr i64 %i.bv to ptr               ; 2 uses
  %.sroa.0.0.copyload.i.i26 = load i64, ptr %i.bw, align 262144
  %i.bx = and i64 %.sroa.0.0.copyload.i.i26, 24
  %.not = icmp eq i64 %i.bx, 0
  br i1 %.not, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.bz = load ptr, ptr %i.by, align 8            ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 80
  %i.cb = load atomic ptr, ptr %i.ca seq_cst, align 8
  %.not.i.i.i32 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i32, label %bb.q, label %_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i33, !prof !27

bb.q:                                             ; preds = %bb.p
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.24) #27
  unreachable

_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i33: ; preds = %bb.p
  %i.cc = ptrtoint ptr %i.bz to i64
  %i.cd = add i64 %i.cc, 336
  %i.ce = inttoptr i64 %i.cd to ptr
  %i.cf = lshr i64 %i.bt, 3
  %i.cg = and i64 %i.cf, 63
  %i.ch = shl nuw i64 1, %i.cg                    ; 2 uses
  %i.ci = lshr i64 %i.bt, 9
  %i.cj = and i64 %i.ci, 511
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cj ; 2 uses
  %i.cl = load atomic volatile i64, ptr %i.ck monotonic, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.s, %_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i33
  %.0.i.i.i34 = phi i64 [ %i.cl, %_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i33 ], [ %i.cp, %bb.s ] ; 3 uses
  %i.cm = and i64 %.0.i.i.i34, %i.ch
  %.not16.not.not.i.not.not.not.i.i35 = icmp eq i64 %i.cm, 0
  br i1 %.not16.not.not.i.not.not.not.i.i35, label %bb.s, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit

bb.s:                                             ; preds = %bb.r
  %i.cn = or i64 %.0.i.i.i34, %i.ch
  %i.co = cmpxchg volatile ptr %i.ck, i64 %.0.i.i.i34, i64 %i.cn monotonic monotonic, align 8 ; 2 uses
  %i.cp = extractvalue { i64, i1 } %i.co, 0
  %.not.i.i2.i36 = extractvalue { i64, i1 } %i.co, 1
  br i1 %.not.i.i2.i36, label %bb.t, label %bb.r, !llvm.loop !5

bb.t:                                             ; preds = %bb.s
  %i.cq = load ptr, ptr %i.bb, align 8            ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8            ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 2
  %i.cu = load i16, ptr %i.ct, align 2            ; 2 uses
  %i.cv = load i16, ptr %i.cs, align 2
  %i.cw = icmp eq i16 %i.cu, %i.cv
  br i1 %i.cw, label %bb.u, label %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit40, !prof !27

bb.u:                                             ; preds = %bb.t
  tail call void @_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cq)
  %i.cx = tail call noundef ptr @_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local10NewSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cq) ; 3 uses
  store ptr %i.cx, ptr %i.cr, align 8
  %.phi.trans.insert.i38 = getelementptr inbounds nuw i8, ptr %i.cx, i64 2
  %.pre.i39 = load i16, ptr %.phi.trans.insert.i38, align 2
  br label %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit40

_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit40: ; preds = %bb.t, %bb.u
  %i.cy = phi i16 [ %i.cu, %bb.t ], [ %.pre.i39, %bb.u ] ; 2 uses
  %i.cz = phi ptr [ %i.cs, %bb.t ], [ %i.cx, %bb.u ] ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 2
  %i.db = add i16 %i.cy, 1
  store i16 %i.db, ptr %i.da, align 2
  %i.dc = zext i16 %i.cy to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.dc
  store i64 %i.bt, ptr %i.de, align 8
  br label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit

_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit: ; preds = %bb.r, %bb.o, %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit40, %.lr.ph86
  %i.df = add i64 %.sroa.059.085, 8               ; 2 uses
  %i.dg = icmp ult i64 %i.df, %i.bq
  br i1 %i.dg, label %.lr.ph86, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE17VisitPointersImplINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit18.loopexit, !llvm.loop !12

_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE17VisitPointersImplINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit18.loopexit: ; preds = %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit
  %.pre = load i16, ptr %i.a, align 8
  br label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE17VisitPointersImplINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit18

_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE17VisitPointersImplINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit18: ; preds = %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE17VisitPointersImplINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit18.loopexit, %_ZNK2v88internal4wasm14StructTypeBase12field_offsetEj.exit, %bb.k
  %i.dh = phi i16 [ %.pre, %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE17VisitPointersImplINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit18.loopexit ], [ %i.bc, %_ZNK2v88internal4wasm14StructTypeBase12field_offsetEj.exit ], [ %i.bc, %bb.k ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.di = zext i16 %i.dh to i64
  %i.dj = icmp samesign ult i64 %indvars.iv.next, %i.di
  br i1 %i.dj, label %bb.k, label %._crit_edge, !llvm.loop !317
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal12WasmTypeInfo14BodyDescriptor11IterateBodyINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvNS0_6TaggedINS0_3MapEEENS7_INS0_10HeapObjectEEEiPT_(i64 %0, i64 %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = add i64 %1, 15
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load i64, ptr %i.b, align 8
  %i.d = add i64 %1, -1
  %i.e = add i64 %1, 23                           ; 2 uses
  %i.f = shl i64 %i.c, 3
  %i.g = and i64 %i.f, -34359738368
  %sext = add i64 %i.g, 103079215104
  %i.h = ashr exact i64 %sext, 32
  %i.i = add i64 %i.d, %i.h                       ; 2 uses
  %i.j = icmp ult i64 %i.e, %i.i
  br i1 %i.j, label %.lr.ph.i, label %_ZN2v88internal18BodyDescriptorBase15IteratePointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvNS0_6TaggedINS0_10HeapObjectEEEiiPT_.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 2072
  br label %bb.b

bb.b:                                             ; preds = %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit.i, %.lr.ph.i
  %.sroa.018.031.i = phi i64 [ %i.e, %.lr.ph.i ], [ %i.ay, %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit.i ] ; 2 uses
  %i.l = inttoptr i64 %.sroa.018.031.i to ptr
  %i.m = load atomic volatile i64, ptr %i.l monotonic, align 8 ; 5 uses
  %i.n = trunc i64 %i.m to i1
  br i1 %i.n, label %bb.c, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit.i

bb.c:                                             ; preds = %bb.b
  %i.o = and i64 %i.m, -262144
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.p, align 262144
  %i.q = and i64 %.sroa.0.0.copyload.i.i.i, 24
  %.not.i = icmp eq i64 %i.q, 0
  br i1 %.not.i, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  %i.u = load atomic ptr, ptr %i.t seq_cst, align 8
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %bb.e, label %_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i, !prof !27

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.24) #27
  unreachable

_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i: ; preds = %bb.d
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = add i64 %i.v, 336
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = lshr i64 %i.m, 3
  %i.z = and i64 %i.y, 63
  %i.aa = shl nuw i64 1, %i.z                     ; 2 uses
  %i.ab = lshr i64 %i.m, 9
  %i.ac = and i64 %i.ab, 511
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.ac ; 2 uses
  %i.ae = load atomic volatile i64, ptr %i.ad monotonic, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i
  %.0.i.i.i.i = phi i64 [ %i.ae, %_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i ], [ %i.ai, %bb.g ] ; 3 uses
  %i.af = and i64 %.0.i.i.i.i, %i.aa
  %.not16.not.not.i.not.not.not.i.i.i = icmp eq i64 %i.af, 0
  br i1 %.not16.not.not.i.not.not.not.i.i.i, label %bb.g, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ag = or i64 %.0.i.i.i.i, %i.aa
  %i.ah = cmpxchg volatile ptr %i.ad, i64 %.0.i.i.i.i, i64 %i.ag monotonic monotonic, align 8 ; 2 uses
  %i.ai = extractvalue { i64, i1 } %i.ah, 0
  %.not.i.i2.i.i = extractvalue { i64, i1 } %i.ah, 1
  br i1 %.not.i.i2.i.i, label %bb.h, label %bb.f, !llvm.loop !5

bb.h:                                             ; preds = %bb.g
  %i.aj = load ptr, ptr %i.k, align 8             ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8            ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  %i.an = load i16, ptr %i.am, align 2            ; 2 uses
  %i.ao = load i16, ptr %i.al, align 2
  %i.ap = icmp eq i16 %i.an, %i.ao
  br i1 %i.ap, label %bb.i, label %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i, !prof !27

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aj)
  %i.aq = tail call noundef ptr @_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local10NewSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aj) ; 3 uses
  store ptr %i.aq, ptr %i.ak, align 8
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 2
  %.pre.i.i = load i16, ptr %.phi.trans.insert.i.i, align 2
  br label %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i

_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i: ; preds = %bb.i, %bb.h
  %i.ar = phi i16 [ %i.an, %bb.h ], [ %.pre.i.i, %bb.i ] ; 2 uses
  %i.as = phi ptr [ %i.al, %bb.h ], [ %i.aq, %bb.i ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  %i.au = add i16 %i.ar, 1
  store i16 %i.au, ptr %i.at, align 2
  %i.av = zext i16 %i.ar to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.av
  store i64 %i.m, ptr %i.ax, align 8
  br label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit.i

_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit.i: ; preds = %bb.f, %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i, %bb.c, %bb.b
  %i.ay = add i64 %.sroa.018.031.i, 8             ; 2 uses
  %i.az = icmp ult i64 %i.ay, %i.i
  br i1 %i.az, label %bb.b, label %_ZN2v88internal18BodyDescriptorBase15IteratePointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvNS0_6TaggedINS0_10HeapObjectEEEiiPT_.exit, !llvm.loop !12

_ZN2v88internal18BodyDescriptorBase15IteratePointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvNS0_6TaggedINS0_10HeapObjectEEEiiPT_.exit: ; preds = %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit.i, %bb.a
  ret void
}

declare void @_ZN2v88internal13JSArrayBuffer18YoungMarkExtensionEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal18PretenuringHandler20UpdateAllocationSiteEPNS0_4HeapENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEEiPSt13unordered_mapINS4_INS0_14AllocationSiteEEEmNS0_6Object6HasherESt8equal_toISB_ESaISt4pairIKSB_mEEE(ptr noundef %0, i64 %1, i64 %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %5 = alloca %"class.v8::internal::Tagged.1169", align 8 ; 4 uses
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 225), align 1, !range !28, !noundef !29
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %_ZN2v88internal14AllocationSite8CanTrackENS0_12InstanceTypeE.exit, label %.critedge, !prof !31

_ZN2v88internal14AllocationSite8CanTrackENS0_12InstanceTypeE.exit: ; preds = %bb.a
  %i.c = add i64 %1, 11
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load atomic volatile i16, ptr %i.d monotonic, align 2
  switch i16 %i.e, label %.critedge [
    i16 2119, label %bb.b
    i16 1057, label %bb.b
  ]

bb.b:                                             ; preds = %_ZN2v88internal14AllocationSite8CanTrackENS0_12InstanceTypeE.exit, %_ZN2v88internal14AllocationSite8CanTrackENS0_12InstanceTypeE.exit
  %i.f = add i64 %2, -1                           ; 4 uses
  %i.g = sext i32 %3 to i64                       ; 2 uses
  %i.h = add i64 %i.f, %i.g                       ; 2 uses
  %i.i = add i64 %i.h, 8
  %i.j = xor i64 %i.i, %i.f
  %i.k = icmp ult i64 %i.j, 262144
  br i1 %i.k, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.l = add i64 %2, %i.g                         ; 3 uses
  %i.m = ptrtoint ptr %0 to i64
  %i.n = add i64 %i.m, -55464
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8296
  %i.q = load i64, ptr %i.p, align 8
  %i.r = inttoptr i64 %i.h to ptr
  %i.s = load atomic volatile i64, ptr %i.r monotonic, align 8
  %i.t = icmp eq i64 %i.s, %i.q
  br i1 %i.t, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.u = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1754), align 2, !range !28, !noundef !29
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %_ZN2v88internal18PretenuringHandler21FindAllocationMementoILNS1_15FindMementoModeE1EEENS0_6TaggedINS0_17AllocationMementoEEEPNS0_4HeapENS4_INS0_3MapEEENS4_INS0_10HeapObjectEEEi.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = and i64 %i.f, -262144                    ; 3 uses
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = load i64, ptr %i.x, align 262144
  %i.z = and i64 %i.y, 1024
  %.not.i = icmp eq i64 %i.z, 0
  br i1 %.not.i, label %_ZN2v88internal18PretenuringHandler21FindAllocationMementoILNS1_15FindMementoModeE1EEENS0_6TaggedINS0_17AllocationMementoEEEPNS0_4HeapENS4_INS0_3MapEEENS4_INS0_10HeapObjectEEEi.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 416
  %i.ad = load i64, ptr %i.ac, align 8            ; 3 uses
  %i.ae = icmp ult i64 %i.w, %i.ad
  br i1 %i.ae, label %_ZNK2v88internal17SemiSpaceNewSpace21IsAddressBelowAgeMarkEm.exit.i, label %.critedge

_ZNK2v88internal17SemiSpaceNewSpace21IsAddressBelowAgeMarkEm.exit.i: ; preds = %bb.f
  %i.af = add i64 %i.w, 262144
  %i.ag = icmp ugt i64 %i.ad, %i.af
  %i.ah = icmp ult i64 %i.f, %i.ad
  %i.ai = or i1 %i.ag, %i.ah
  %i.aj = icmp eq i64 %i.l, 0
  %or.cond = select i1 %i.ai, i1 true, i1 %i.aj
  br i1 %or.cond, label %.critedge, label %bb.g

_ZN2v88internal18PretenuringHandler21FindAllocationMementoILNS1_15FindMementoModeE1EEENS0_6TaggedINS0_17AllocationMementoEEEPNS0_4HeapENS4_INS0_3MapEEENS4_INS0_10HeapObjectEEEi.exit: ; preds = %bb.d, %bb.e
  %.old = icmp eq i64 %i.l, 0
  br i1 %.old, label %.critedge, label %bb.g

bb.g:                                             ; preds = %_ZNK2v88internal17SemiSpaceNewSpace21IsAddressBelowAgeMarkEm.exit.i, %_ZN2v88internal18PretenuringHandler21FindAllocationMementoILNS1_15FindMementoModeE1EEENS0_6TaggedINS0_17AllocationMementoEEEPNS0_4HeapENS4_INS0_3MapEEENS4_INS0_10HeapObjectEEEi.exit
  %i.ak = add i64 %i.l, -1
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load i64, ptr %i.am, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store i64 %i.an, ptr %5, align 8
  %i.ao = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseIN2v88internal6TaggedINS2_14AllocationSiteEEESt4pairIKS5_mESaIS8_ENS_10_Select1stESt8equal_toIS5_ENS2_6Object6HasherENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS5_(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = add i64 %i.ap, 1
  store i64 %i.aq, ptr %i.ao, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
end_hunk_9
begin_hunk_10_@_ZN2v88internal59JSAPIObjectWithEmbedderSlotsOrJSSpecialObjectBodyDescriptor41IterateJSAPIObjectWithEmbedderSlotsHeaderINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvNS0_6TaggedINS0_3MapEEENS6_INS0_10HeapObjectEEEiPT_:bb.a
  %.not.i5 = icmp eq i64 %i.k, 0
  br i1 %.not.i5, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %i.o = load atomic ptr, ptr %i.n seq_cst, align 8
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %bb.e, label %_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i, !prof !27

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.24) #27
  unreachable

_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i: ; preds = %bb.d
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = add i64 %i.p, 336
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = lshr i64 %i.g, 3
  %i.t = and i64 %i.s, 63
  %i.u = shl nuw i64 1, %i.t                      ; 2 uses
  %i.v = lshr i64 %i.g, 9
  %i.w = and i64 %i.v, 511
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.w ; 2 uses
  %i.y = load atomic volatile i64, ptr %i.x monotonic, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i
  %.0.i.i.i.i = phi i64 [ %i.y, %_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i ], [ %i.ac, %bb.g ] ; 3 uses
  %i.z = and i64 %.0.i.i.i.i, %i.u
  %.not16.not.not.i.not.not.not.i.i.i = icmp eq i64 %i.z, 0
  br i1 %.not16.not.not.i.not.not.not.i.i.i, label %bb.g, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit.i

bb.g:                                             ; preds = %bb.f
  %i.aa = or i64 %.0.i.i.i.i, %i.u
  %i.ab = cmpxchg volatile ptr %i.x, i64 %.0.i.i.i.i, i64 %i.aa monotonic monotonic, align 8 ; 2 uses
  %i.ac = extractvalue { i64, i1 } %i.ab, 0
  %.not.i.i2.i.i = extractvalue { i64, i1 } %i.ab, 1
  br i1 %.not.i.i2.i.i, label %bb.h, label %bb.f, !llvm.loop !5

bb.h:                                             ; preds = %bb.g
  %i.ad = load ptr, ptr %i.e, align 8             ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8            ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  %i.ah = load i16, ptr %i.ag, align 2            ; 2 uses
  %i.ai = load i16, ptr %i.af, align 2
  %i.aj = icmp eq i16 %i.ah, %i.ai
  br i1 %i.aj, label %bb.i, label %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i, !prof !27

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ad)
  %i.ak = tail call noundef ptr @_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local10NewSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ad) ; 3 uses
  store ptr %i.ak, ptr %i.ae, align 8
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 2
  %.pre.i.i = load i16, ptr %.phi.trans.insert.i.i, align 2
  br label %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i

_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i: ; preds = %bb.i, %bb.h
  %i.al = phi i16 [ %i.ah, %bb.h ], [ %.pre.i.i, %bb.i ] ; 2 uses
  %i.am = phi ptr [ %i.af, %bb.h ], [ %i.ak, %bb.i ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  %i.ao = add i16 %i.al, 1
  store i16 %i.ao, ptr %i.an, align 2
  %i.ap = zext i16 %i.al to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ap
  store i64 %i.g, ptr %i.ar, align 8
  br label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit.i

_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit.i: ; preds = %bb.f, %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i, %bb.c, %bb.b
  %i.as = add i64 %.sroa.018.031.i, 8             ; 2 uses
  %i.at = icmp ult i64 %i.as, %i.c
  br i1 %i.at, label %bb.b, label %_ZN2v88internal18BodyDescriptorBase15IteratePointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvNS0_6TaggedINS0_10HeapObjectEEEiiPT_.exit, !llvm.loop !12

_ZN2v88internal18BodyDescriptorBase15IteratePointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvNS0_6TaggedINS0_10HeapObjectEEEiiPT_.exit: ; preds = %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit.i, %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 2200
  %i.av = load ptr, ptr %i.au, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.av, null
  br i1 %.not.i, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE19VisitCppHeapPointerENS0_6TaggedINS0_10HeapObjectEEENS0_18CppHeapPointerSlotE.exit, label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal18BodyDescriptorBase15IteratePointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvNS0_6TaggedINS0_10HeapObjectEEEiiPT_.exit
  %i.aw = inttoptr i64 %i.c to ptr
  %i.ax = load atomic volatile i64, ptr %i.aw monotonic, align 8 ; 2 uses
  %.not3.i = icmp eq i64 %i.ax, 0
  br i1 %.not3.i, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE19VisitCppHeapPointerENS0_6TaggedINS0_10HeapObjectEEENS0_18CppHeapPointerSlotE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = inttoptr i64 %i.ax to ptr               ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !nonnull !29, !align !30 ; 3 uses
  %i.bb = getelementptr inbounds i8, ptr %i.ay, i64 -4 ; 2 uses
  %i.bc = load i16, ptr %i.bb, align 2
  %i.bd = lshr i16 %i.bc, 2
  %i.be = load ptr, ptr @_ZN5cppgc8internal17GlobalGCInfoTable13global_table_E, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = zext nneg i16 %i.bd to i64
  %i.bi = getelementptr inbounds nuw [32 x i8], ptr %i.bg, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = load atomic i16, ptr %i.bb acquire, align 2
  %i.bm = trunc i16 %i.bl to i1
  br i1 %i.bm, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bn = getelementptr inbounds i8, ptr %i.ay, i64 -8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  %i.bp = load ptr, ptr %i.bo, align 8, !nonnull !29, !align !30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.bn, ptr %i.a, align 8
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(64) %i.bp) #26
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr %i.bq, ptr %4, align 8
  %i.br = call { ptr, i8 } @_ZNSt10_HashtableIPN5cppgc8internal16HeapObjectHeaderES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKS3_SJ_NS5_10_AllocNodeISaINS5_10_Hash_nodeIS3_Lb0EEEEEEEESt4pairINS5_14_Node_iteratorIS3_Lb1ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %i.bq, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(64) %i.bp) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE19VisitCppHeapPointerENS0_6TaggedINS0_10HeapObjectEEENS0_18CppHeapPointerSlotE.exit

bb.m:                                             ; preds = %bb.k
  %i.bs = getelementptr inbounds i8, ptr %i.ay, i64 -2 ; 2 uses
  %i.bt = load atomic i16, ptr %i.bs monotonic, align 2 ; 3 uses
  %i.bu = or i16 %i.bt, 1                         ; 2 uses
  %i.bv = icmp eq i16 %i.bu, %i.bt
  br i1 %i.bv, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE19VisitCppHeapPointerENS0_6TaggedINS0_10HeapObjectEEENS0_18CppHeapPointerSlotE.exit, label %_ZN5cppgc8internal16MarkingStateBase10MarkNoPushERNS0_16HeapObjectHeaderE.exit.i.i.i

_ZN5cppgc8internal16MarkingStateBase10MarkNoPushERNS0_16HeapObjectHeaderE.exit.i.i.i: ; preds = %bb.m
  %i.bw = cmpxchg ptr %i.bs, i16 %i.bt, i16 %i.bu monotonic monotonic, align 2
  %i.bx = extractvalue { i16, i1 } %i.bw, 1
  br i1 %i.bx, label %bb.n, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE19VisitCppHeapPointerENS0_6TaggedINS0_10HeapObjectEEENS0_18CppHeapPointerSlotE.exit

bb.n:                                             ; preds = %_ZN5cppgc8internal16MarkingStateBase10MarkNoPushERNS0_16HeapObjectHeaderE.exit.i.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.ba, i64 24 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8            ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 2
  %i.cb = load i16, ptr %i.ca, align 2            ; 2 uses
  %i.cc = load i16, ptr %i.bz, align 2
  %i.cd = icmp eq i16 %i.cb, %i.cc
  br i1 %i.cd, label %bb.o, label %_ZN5cppgc8internal16MarkingStateBase10PushMarkedERNS0_16HeapObjectHeaderENS_15TraceDescriptorE.exit.i.i.i, !prof !27

bb.o:                                             ; preds = %bb.n
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  tail call void @_ZN4heap4base8WorklistIN5cppgc15TraceDescriptorELt512EE5Local18PublishPushSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ce)
  %i.cf = tail call noundef ptr @_ZNK4heap4base8WorklistIN5cppgc15TraceDescriptorELt512EE5Local10NewSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ce) ; 3 uses
  store ptr %i.cf, ptr %i.by, align 8
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 2
  %.pre.i.i.i.i = load i16, ptr %.phi.trans.insert.i.i.i.i, align 2
  br label %_ZN5cppgc8internal16MarkingStateBase10PushMarkedERNS0_16HeapObjectHeaderENS_15TraceDescriptorE.exit.i.i.i

_ZN5cppgc8internal16MarkingStateBase10PushMarkedERNS0_16HeapObjectHeaderENS_15TraceDescriptorE.exit.i.i.i: ; preds = %bb.o, %bb.n
  %i.cg = phi i16 [ %i.cb, %bb.n ], [ %.pre.i.i.i.i, %bb.o ] ; 2 uses
  %i.ch = phi ptr [ %i.bz, %bb.n ], [ %i.cf, %bb.o ] ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 2
  %i.cj = add i16 %i.cg, 1
  store i16 %i.cj, ptr %i.ci, align 2
  %i.ck = zext i16 %i.cg to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.cl, i64 %i.ck ; 2 uses
  store ptr %i.ay, ptr %i.cm, align 8
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store ptr %i.bk, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8
  br label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE19VisitCppHeapPointerENS0_6TaggedINS0_10HeapObjectEEENS0_18CppHeapPointerSlotE.exit

_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE19VisitCppHeapPointerENS0_6TaggedINS0_10HeapObjectEEENS0_18CppHeapPointerSlotE.exit: ; preds = %_ZN5cppgc8internal16MarkingStateBase10PushMarkedERNS0_16HeapObjectHeaderENS_15TraceDescriptorE.exit.i.i.i, %_ZN5cppgc8internal16MarkingStateBase10MarkNoPushERNS0_16HeapObjectHeaderE.exit.i.i.i, %bb.m, %bb.l, %_ZN2v88internal18BodyDescriptorBase15IteratePointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvNS0_6TaggedINS0_10HeapObjectEEEiiPT_.exit, %bb.j
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseIN2v88internal6TaggedINS2_14AllocationSiteEEESt4pairIKS5_mESaIS8_ENS_10_Select1stESt8equal_toIS5_ENS2_6Object6HasherENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS5_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = urem i64 %.sroa.0.0.copyload.i, %i.b     ; 3 uses
  %i.d = load ptr, ptr %0, align 8
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.c
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.f, align 8              ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.j = load i64, ptr %i.i, align 8
  %i.k = icmp eq i64 %.sroa.0.0.copyload.i, %i.j
  %.sroa.0.0.copyload.i.i.i20.i.i = load i64, ptr %i.h, align 8
  %i.l = icmp eq i64 %.sroa.0.0.copyload.i, %.sroa.0.0.copyload.i.i.i20.i.i
  %i.m = select i1 %i.k, i1 %i.l, i1 false
  br i1 %i.m, label %.loopexit30, label %.lr.ph.i.i

bb.c:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.o = icmp eq i64 %.sroa.0.0.copyload.i, %i.t
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.n, align 8
  %i.p = icmp eq i64 %.sroa.0.0.copyload.i, %.sroa.0.0.copyload.i.i.i.i.i
  %i.q = select i1 %i.o, i1 %i.p, i1 false
  br i1 %i.q, label %.loopexit30, label %.lr.ph.i.i, !llvm.loop !318

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.021.i.i = phi ptr [ %i.r, %bb.c ], [ %i.g, %bb.b ]
  %i.r = load ptr, ptr %.021.i.i, align 8         ; 5 uses
  %.not18.i.i = icmp eq ptr %i.r, null
  br i1 %.not18.i.i, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load i64, ptr %i.s, align 8              ; 2 uses
  %i.u = urem i64 %i.t, %i.b
  %.not19.i.i = icmp eq i64 %i.u, %i.c
  br i1 %.not19.i.i, label %bb.c, label %..loopexit_crit_edge22.i.i, !llvm.loop !318

..loopexit_crit_edge22.i.i:                       ; preds = %bb.d
  br label %.loopexit, !llvm.loop !318

.loopexit:                                        ; preds = %.lr.ph.i.i, %bb.a, %..loopexit_crit_edge22.i.i
  %i.v = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #28 ; 9 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i64, ptr %1, align 8
  store i64 %i.x, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 0, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aa = load i64, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i64 noundef %i.aa, i64 noundef %i.ac, i64 noundef 1) #26 ; 2 uses
  %i.ae = extractvalue { i8, i64 } %i.ad, 0
  %i.af = trunc i8 %i.ae to i1
  br i1 %i.af, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.loopexit
  %i.ag = extractvalue { i8, i64 } %i.ad, 1
  tail call void @_ZNSt10_HashtableIN2v88internal6TaggedINS1_14AllocationSiteEEESt4pairIKS4_mESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ENS1_6Object6HasherENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.ag)
  %i.ah = load i64, ptr %i.a, align 8
  %i.ai = urem i64 %.sroa.0.0.copyload.i, %i.ah
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.loopexit
  %.0.i19 = phi i64 [ %i.ai, %bb.e ], [ %i.c, %.loopexit ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store i64 %.sroa.0.0.copyload.i, ptr %i.aj, align 8
  %i.ak = load ptr, ptr %0, align 8               ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.0.i19
  %i.am = load ptr, ptr %i.al, align 8            ; 3 uses
  %.not.i.i20 = icmp eq ptr %i.am, null
  br i1 %.not.i.i20, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = load ptr, ptr %i.am, align 8
  store ptr %i.an, ptr %i.v, align 8
  store ptr %i.v, ptr %i.am, align 8
  br label %_ZNSt10_HashtableIN2v88internal6TaggedINS1_14AllocationSiteEEESt4pairIKS4_mESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ENS1_6Object6HasherENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8            ; 3 uses
  store ptr %i.ap, ptr %i.v, align 8
  store ptr %i.v, ptr %i.ao, align 8
  %.not11.i.i = icmp eq ptr %i.ap, null
  br i1 %.not11.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = load i64, ptr %i.a, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = urem i64 %i.as, %i.aq
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.at
  store ptr %i.v, ptr %i.au, align 8
  %.pre = load ptr, ptr %0, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.av = phi ptr [ %.pre, %bb.i ], [ %i.ak, %bb.h ]
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.0.i19
  store ptr %i.ao, ptr %i.aw, align 8
  br label %_ZNSt10_HashtableIN2v88internal6TaggedINS1_14AllocationSiteEEESt4pairIKS4_mESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ENS1_6Object6HasherENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit

_ZNSt10_HashtableIN2v88internal6TaggedINS1_14AllocationSiteEEESt4pairIKS4_mESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ENS1_6Object6HasherENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %bb.j, %bb.g
  %i.ax = load i64, ptr %i.ab, align 8
  %i.ay = add i64 %i.ax, 1
  store i64 %i.ay, ptr %i.ab, align 8
  br label %.loopexit30

.loopexit30:                                      ; preds = %bb.c, %bb.b, %_ZNSt10_HashtableIN2v88internal6TaggedINS1_14AllocationSiteEEESt4pairIKS4_mESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ENS1_6Object6HasherENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit
  %.pn = phi ptr [ %i.v, %_ZNSt10_HashtableIN2v88internal6TaggedINS1_14AllocationSiteEEESt4pairIKS4_mESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ENS1_6Object6HasherENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit ], [ %i.g, %bb.b ], [ %i.r, %bb.c ]
  %.1 = getelementptr inbounds nuw i8, ptr %.pn, i64 16
  ret ptr %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10_HashtableIN2v88internal6TaggedINS1_14AllocationSiteEEESt4pairIKS4_mESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ENS1_6Object6HasherENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !27

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8
  br label %_ZNSt10_HashtableIN2v88internal6TaggedINS1_14AllocationSiteEEESt4pairIKS4_mESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ENS1_6Object6HasherENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN2v88internal6TaggedINS4_14AllocationSiteEEEmELb1EEEEE19_M_allocate_bucketsEm.exit.i, !prof !27

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #27
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN2v88internal6TaggedINS4_14AllocationSiteEEEmELb1EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #28 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableIN2v88internal6TaggedINS1_14AllocationSiteEEESt4pairIKS4_mESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ENS1_6Object6HasherENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIN2v88internal6TaggedINS1_14AllocationSiteEEESt4pairIKS4_mESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ENS1_6Object6HasherENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN2v88internal6TaggedINS4_14AllocationSiteEEEmELb1EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN2v88internal6TaggedINS4_14AllocationSiteEEEmELb1EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  store ptr null, ptr %i.g, align 8
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIN2v88internal6TaggedINS1_14AllocationSiteEEESt4pairIKS4_mESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ENS1_6Object6HasherENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.j
  %.031 = phi i64 [ %.1, %bb.j ], [ 0, %_ZNSt10_HashtableIN2v88internal6TaggedINS1_14AllocationSiteEEESt4pairIKS4_mESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ENS1_6Object6HasherENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.j ], [ %i.h, %_ZNSt10_HashtableIN2v88internal6TaggedINS1_14AllocationSiteEEESt4pairIKS4_mESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ENS1_6Object6HasherENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %i.i = load ptr, ptr %.02530, align 8           ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8
  store ptr %i.o, ptr %.02530, align 8
  store ptr %.02530, ptr %i.g, align 8
  store ptr %i.g, ptr %i.m, align 8
  %i.p = load ptr, ptr %.02530, align 8
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.q, align 8
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8
  store ptr %i.r, ptr %.02530, align 8
  %i.s = load ptr, ptr %i.m, align 8
  store ptr %.02530, ptr %i.s, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.1 = phi i64 [ %.031, %bb.i ], [ %i.l, %bb.h ], [ %i.l, %bb.g ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !319

._crit_edge:                                      ; preds = %bb.j, %_ZNSt10_HashtableIN2v88internal6TaggedINS1_14AllocationSiteEEESt4pairIKS4_mESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ENS1_6Object6HasherENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.t = load ptr, ptr %0, align 8                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableIN2v88internal6TaggedINS1_14AllocationSiteEEESt4pairIKS4_mESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ENS1_6Object6HasherENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8
  %i.y = shl i64 %i.x, 3
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.y) #29
  br label %_ZNSt10_HashtableIN2v88internal6TaggedINS1_14AllocationSiteEEESt4pairIKS4_mESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ENS1_6Object6HasherENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIN2v88internal6TaggedINS1_14AllocationSiteEEESt4pairIKS4_mESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ENS1_6Object6HasherENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.z, align 8
  store ptr %.0.i, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal27JSDataViewOrRabGsabDataView14BodyDescriptor11IterateBodyINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvNS0_6TaggedINS0_3MapEEENS7_INS0_10HeapObjectEEEiPT_(i64 %0, i64 %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #11 comdat align 2 {
_ZN2v88internal18BodyDescriptorBase15IteratePointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvNS0_6TaggedINS0_10HeapObjectEEEiiPT_.exit:
  tail call void @_ZN2v88internal17JSArrayBufferView14BodyDescriptor11IterateBodyINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvNS0_6TaggedINS0_3MapEEENS7_INS0_10HeapObjectEEEiPT_(i64 %0, i64 %1, i32 noundef %2, ptr noundef %3)
  %i.a = add i64 %1, -1
  %i.b = add i64 %1, 71                           ; 2 uses
  %i.c = sext i32 %2 to i64
  %i.d = add i64 %i.a, %i.c                       ; 2 uses
  %i.e = icmp ult i64 %i.b, %i.d
  br i1 %i.e, label %.lr.ph.i.i, label %_ZN2v88internal59JSAPIObjectWithEmbedderSlotsOrJSSpecialObjectBodyDescriptor39IterateJSAPIObjectWithEmbedderSlotsTailINS0_27JSDataViewOrRabGsabDataViewENS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvNS0_6TaggedINS0_3MapEEENS7_INS0_10HeapObjectEEEiPT0_.exit

.lr.ph.i.i:                                       ; preds = %_ZN2v88internal18BodyDescriptorBase15IteratePointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvNS0_6TaggedINS0_10HeapObjectEEEiiPT_.exit
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 2072
  br label %bb.a

bb.a:                                             ; preds = %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit.i.i, %.lr.ph.i.i
  %.sroa.018.031.i.i = phi i64 [ %i.b, %.lr.ph.i.i ], [ %i.at, %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit.i.i ] ; 2 uses
  %i.g = inttoptr i64 %.sroa.018.031.i.i to ptr
  %i.h = load atomic volatile i64, ptr %i.g monotonic, align 8 ; 5 uses
  %i.i = trunc i64 %i.h to i1
  br i1 %i.i, label %bb.b, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.j = and i64 %i.h, -262144
  %i.k = inttoptr i64 %i.j to ptr                 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.k, align 262144
  %i.l = and i64 %.sroa.0.0.copyload.i.i.i.i, 24
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.p = load atomic ptr, ptr %i.o seq_cst, align 8
  %.not.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i, label %bb.d, label %_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i, !prof !27

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.24) #27
  unreachable

_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i: ; preds = %bb.c
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = add i64 %i.q, 336
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = lshr i64 %i.h, 3
  %i.u = and i64 %i.t, 63
  %i.v = shl nuw i64 1, %i.u                      ; 2 uses
  %i.w = lshr i64 %i.h, 9
  %i.x = and i64 %i.w, 511
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.x ; 2 uses
  %i.z = load atomic volatile i64, ptr %i.y monotonic, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i
  %.0.i.i.i.i.i = phi i64 [ %i.z, %_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i ], [ %i.ad, %bb.f ] ; 3 uses
  %i.aa = and i64 %.0.i.i.i.i.i, %i.v
  %.not16.not.not.i.not.not.not.i.i.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not16.not.not.i.not.not.not.i.i.i.i, label %bb.f, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.ab = or i64 %.0.i.i.i.i.i, %i.v
  %i.ac = cmpxchg volatile ptr %i.y, i64 %.0.i.i.i.i.i, i64 %i.ab monotonic monotonic, align 8 ; 2 uses
  %i.ad = extractvalue { i64, i1 } %i.ac, 0
  %.not.i.i2.i.i.i = extractvalue { i64, i1 } %i.ac, 1
  br i1 %.not.i.i2.i.i.i, label %bb.g, label %bb.e, !llvm.loop !5

bb.g:                                             ; preds = %bb.f
  %i.ae = load ptr, ptr %i.f, align 8             ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8            ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  %i.ai = load i16, ptr %i.ah, align 2            ; 2 uses
  %i.aj = load i16, ptr %i.ag, align 2
  %i.ak = icmp eq i16 %i.ai, %i.aj
  br i1 %i.ak, label %bb.h, label %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i, !prof !27

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ae)
  %i.al = tail call noundef ptr @_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local10NewSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ae) ; 3 uses
  store ptr %i.al, ptr %i.af, align 8
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  %.pre.i.i.i = load i16, ptr %.phi.trans.insert.i.i.i, align 2
  br label %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i

_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i: ; preds = %bb.h, %bb.g
  %i.am = phi i16 [ %i.ai, %bb.g ], [ %.pre.i.i.i, %bb.h ] ; 2 uses
  %i.an = phi ptr [ %i.ag, %bb.g ], [ %i.al, %bb.h ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 2
  %i.ap = add i16 %i.am, 1
  store i16 %i.ap, ptr %i.ao, align 2
  %i.aq = zext i16 %i.am to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.aq
  store i64 %i.h, ptr %i.as, align 8
  br label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit.i.i

_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit.i.i: ; preds = %bb.e, %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i, %bb.b, %bb.a
  %i.at = add i64 %.sroa.018.031.i.i, 8           ; 2 uses
  %i.au = icmp ult i64 %i.at, %i.d
  br i1 %i.au, label %bb.a, label %_ZN2v88internal59JSAPIObjectWithEmbedderSlotsOrJSSpecialObjectBodyDescriptor39IterateJSAPIObjectWithEmbedderSlotsTailINS0_27JSDataViewOrRabGsabDataViewENS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvNS0_6TaggedINS0_3MapEEENS7_INS0_10HeapObjectEEEiPT0_.exit, !llvm.loop !12

_ZN2v88internal59JSAPIObjectWithEmbedderSlotsOrJSSpecialObjectBodyDescriptor39IterateJSAPIObjectWithEmbedderSlotsTailINS0_27JSDataViewOrRabGsabDataViewENS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvNS0_6TaggedINS0_3MapEEENS7_INS0_10HeapObjectEEEiPT0_.exit: ; preds = %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit.i.i, %_ZN2v88internal18BodyDescriptorBase15IteratePointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvNS0_6TaggedINS0_10HeapObjectEEEiiPT_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal17JSArrayBufferView14BodyDescriptor11IterateBodyINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvNS0_6TaggedINS0_3MapEEENS7_INS0_10HeapObjectEEEiPT_(i64 %0, i64 %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZN2v88internal59JSAPIObjectWithEmbedderSlotsOrJSSpecialObjectBodyDescriptor41IterateJSAPIObjectWithEmbedderSlotsHeaderINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvNS0_6TaggedINS0_3MapEEENS6_INS0_10HeapObjectEEEiPT_(i64 %0, i64 %1, i32 noundef %2, ptr noundef %3)
  %i.a = add i64 %1, 31                           ; 2 uses
  %i.b = add i64 %1, 39                           ; 2 uses
  %i.c = icmp ult i64 %i.a, %i.b
  br i1 %i.c, label %.lr.ph.i, label %_ZN2v88internal18BodyDescriptorBase15IteratePointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvNS0_6TaggedINS0_10HeapObjectEEEiiPT_.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 2072
  br label %bb.b

bb.b:                                             ; preds = %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit.i, %.lr.ph.i
  %.sroa.018.031.i = phi i64 [ %i.a, %.lr.ph.i ], [ %i.ar, %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit.i ] ; 2 uses
  %i.e = inttoptr i64 %.sroa.018.031.i to ptr
  %i.f = load atomic volatile i64, ptr %i.e monotonic, align 8 ; 5 uses
  %i.g = trunc i64 %i.f to i1
  br i1 %i.g, label %bb.c, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit.i

bb.c:                                             ; preds = %bb.b
  %i.h = and i64 %i.f, -262144
  %i.i = inttoptr i64 %i.h to ptr                 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.i, align 262144
  %i.j = and i64 %.sroa.0.0.copyload.i.i.i, 24
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  %i.n = load atomic ptr, ptr %i.m seq_cst, align 8
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %bb.e, label %_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i, !prof !27

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.24) #27
  unreachable

_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i: ; preds = %bb.d
  %i.o = ptrtoint ptr %i.l to i64
  %i.p = add i64 %i.o, 336
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = lshr i64 %i.f, 3
  %i.s = and i64 %i.r, 63
  %i.t = shl nuw i64 1, %i.s                      ; 2 uses
  %i.u = lshr i64 %i.f, 9
  %i.v = and i64 %i.u, 511
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.v ; 2 uses
  %i.x = load atomic volatile i64, ptr %i.w monotonic, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i
  %.0.i.i.i.i = phi i64 [ %i.x, %_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i ], [ %i.ab, %bb.g ] ; 3 uses
  %i.y = and i64 %.0.i.i.i.i, %i.t
  %.not16.not.not.i.not.not.not.i.i.i = icmp eq i64 %i.y, 0
  br i1 %.not16.not.not.i.not.not.not.i.i.i, label %bb.g, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE1ENS0_14FullObjectSlotEEEbT1_.exit.i

bb.g:                                             ; preds = %bb.f
  %i.z = or i64 %.0.i.i.i.i, %i.t
  %i.aa = cmpxchg volatile ptr %i.w, i64 %.0.i.i.i.i, i64 %i.z monotonic monotonic, align 8 ; 2 uses
  %i.ab = extractvalue { i64, i1 } %i.aa, 0
  %.not.i.i2.i.i = extractvalue { i64, i1 } %i.aa, 1
  br i1 %.not.i.i2.i.i, label %bb.h, label %bb.f, !llvm.loop !5

bb.h:                                             ; preds = %bb.g
  %i.ac = load ptr, ptr %i.d, align 8             ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8            ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  %i.ag = load i16, ptr %i.af, align 2            ; 2 uses
end_hunk_10
begin_hunk_11_@_ZN2v88internal21CppHeapExternalObject14BodyDescriptor11IterateBodyINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvNS0_6TaggedINS0_3MapEEENS7_INS0_10HeapObjectEEEiPT_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(64) %i.x) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE19VisitCppHeapPointerENS0_6TaggedINS0_10HeapObjectEEENS0_18CppHeapPointerSlotE.exit

bb.e:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds i8, ptr %i.g, i64 -2 ; 2 uses
  %i.ab = load atomic i16, ptr %i.aa monotonic, align 2 ; 3 uses
  %i.ac = or i16 %i.ab, 1                         ; 2 uses
  %i.ad = icmp eq i16 %i.ac, %i.ab
  br i1 %i.ad, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE19VisitCppHeapPointerENS0_6TaggedINS0_10HeapObjectEEENS0_18CppHeapPointerSlotE.exit, label %_ZN5cppgc8internal16MarkingStateBase10MarkNoPushERNS0_16HeapObjectHeaderE.exit.i.i.i

_ZN5cppgc8internal16MarkingStateBase10MarkNoPushERNS0_16HeapObjectHeaderE.exit.i.i.i: ; preds = %bb.e
  %i.ae = cmpxchg ptr %i.aa, i16 %i.ab, i16 %i.ac monotonic monotonic, align 2
  %i.af = extractvalue { i16, i1 } %i.ae, 1
  br i1 %i.af, label %bb.f, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE19VisitCppHeapPointerENS0_6TaggedINS0_10HeapObjectEEENS0_18CppHeapPointerSlotE.exit

bb.f:                                             ; preds = %_ZN5cppgc8internal16MarkingStateBase10MarkNoPushERNS0_16HeapObjectHeaderE.exit.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 2
  %i.aj = load i16, ptr %i.ai, align 2            ; 2 uses
  %i.ak = load i16, ptr %i.ah, align 2
  %i.al = icmp eq i16 %i.aj, %i.ak
  br i1 %i.al, label %bb.g, label %_ZN5cppgc8internal16MarkingStateBase10PushMarkedERNS0_16HeapObjectHeaderENS_15TraceDescriptorE.exit.i.i.i, !prof !27

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  tail call void @_ZN4heap4base8WorklistIN5cppgc15TraceDescriptorELt512EE5Local18PublishPushSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %i.am)
  %i.an = tail call noundef ptr @_ZNK4heap4base8WorklistIN5cppgc15TraceDescriptorELt512EE5Local10NewSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %i.am) ; 3 uses
  store ptr %i.an, ptr %i.ag, align 8
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 2
  %.pre.i.i.i.i = load i16, ptr %.phi.trans.insert.i.i.i.i, align 2
  br label %_ZN5cppgc8internal16MarkingStateBase10PushMarkedERNS0_16HeapObjectHeaderENS_15TraceDescriptorE.exit.i.i.i

_ZN5cppgc8internal16MarkingStateBase10PushMarkedERNS0_16HeapObjectHeaderENS_15TraceDescriptorE.exit.i.i.i: ; preds = %bb.g, %bb.f
  %i.ao = phi i16 [ %i.aj, %bb.f ], [ %.pre.i.i.i.i, %bb.g ] ; 2 uses
  %i.ap = phi ptr [ %i.ah, %bb.f ], [ %i.an, %bb.g ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  %i.ar = add i16 %i.ao, 1
  store i16 %i.ar, ptr %i.aq, align 2
  %i.as = zext i16 %i.ao to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %i.as ; 2 uses
  store ptr %i.g, ptr %i.au, align 8
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %i.s, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8
  br label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE19VisitCppHeapPointerENS0_6TaggedINS0_10HeapObjectEEENS0_18CppHeapPointerSlotE.exit

_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE19VisitCppHeapPointerENS0_6TaggedINS0_10HeapObjectEEENS0_18CppHeapPointerSlotE.exit: ; preds = %_ZN5cppgc8internal16MarkingStateBase10PushMarkedERNS0_16HeapObjectHeaderENS_15TraceDescriptorE.exit.i.i.i, %_ZN5cppgc8internal16MarkingStateBase10MarkNoPushERNS0_16HeapObjectHeaderE.exit.i.i.i, %bb.e, %bb.d, %bb.a, %bb.b
  ret void
}

declare { i64, i8 } @_ZN2v88internal14IndexGenerator7GetNextEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal44YoungGenerationRememberedSetsMarkingWorklist11MarkingItem19MarkUntypedPointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvPT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %2 = alloca %class.anon.1458, align 8           ; 6 uses
  %3 = alloca %class.anon.1458, align 8           ; 6 uses
  %4 = alloca [2 x %"class.std::unique_ptr.1143"], align 16 ; 6 uses
  %5 = alloca %"class.v8::internal::tracing::ScopedTracer", align 8 ; 11 uses
  %i.a = load atomic volatile i64, ptr @_ZZN2v88internal44YoungGenerationRememberedSetsMarkingWorklist11MarkingItem19MarkUntypedPointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvPT_E27trace_event_unique_atomic98 acquire, align 8 ; 2 uses
  %i.b = inttoptr i64 %i.a to ptr
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #26 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef ptr %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.209) #26 ; 2 uses
  %i.h = ptrtoint ptr %i.g to i64
  store atomic volatile i64 %i.h, ptr @_ZZN2v88internal44YoungGenerationRememberedSetsMarkingWorklist11MarkingItem19MarkUntypedPointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvPT_E27trace_event_unique_atomic98 release, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.b, %bb.a ], [ %i.g, %bb.b ]  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr null, ptr %5, align 8
  %i.i = load atomic volatile i8, ptr %.0 monotonic, align 1
  %i.j = and i8 %i.i, 5
  %.not15 = icmp eq i8 %i.j, 0
  br i1 %.not15, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.k = tail call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #26 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call noundef i64 %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i8 noundef signext 88, ptr noundef nonnull %.0, ptr noundef nonnull @.str.210, ptr noundef null, i64 noundef 0, i64 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %4, i32 noundef 0) #26, !inline_history !7
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i: ; preds = %bb.d
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.q) #26, !inline_history !8
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.d, %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i
  %i.u = load ptr, ptr %4, align 16               ; 3 uses
  %.not.i.1 = icmp eq ptr %i.u, null
  br i1 %.not.i.1, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1: ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.u) #26, !inline_history !8
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1: ; preds = %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1, %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %.0, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr @.str.210, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %i.o, ptr %i.aa, align 8
  store ptr %i.y, ptr %5, align 8
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1, %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8            ; 3 uses
  %.not16 = icmp eq ptr %i.ac, null
  br i1 %.not16, label %bb.r, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = and i64 %i.ag, -262144
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = add i64 %i.aj, 8191
  %i.al = lshr i64 %i.ak, 13                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %0, ptr %3, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %i.am, align 8
  %.not57 = icmp eq i64 %i.al, 0
  br i1 %.not57, label %.thread, label %.lr.ph.i.i

.thread:                                          ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.f, %bb.o
  %.04360.i.i = phi i64 [ %i.bo, %bb.o ], [ 0, %bb.f ] ; 3 uses
  %.04459.i.i = phi i64 [ %.145.i.i, %bb.o ], [ 0, %bb.f ] ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.04360.i.i ; 3 uses
  %i.ao = load atomic volatile i64, ptr %i.an acquire, align 8 ; 2 uses
  %i.ap = inttoptr i64 %i.ao to ptr
  %.not.i.i29 = icmp eq i64 %i.ao, 0
  br i1 %.not.i.i29, label %bb.o, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.aq = shl nuw nsw i64 %.04360.i.i, 10
  br label %bb.i

bb.h:                                             ; preds = %bb.l
  %i.ar = icmp eq i64 %.3.i.i, 0
  br i1 %i.ar, label %bb.m, label %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE1EZNS0_44YoungGenerationRememberedSetsMarkingWorklist11MarkingItem19MarkUntypedPointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvPT_EUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE0_clEm.exit.i.i

bb.i:                                             ; preds = %bb.l, %bb.g
  %indvars.iv.i.i = phi i64 [ 0, %bb.g ], [ %indvars.iv.next.i.i, %bb.l ] ; 2 uses
  %.04057.i.i = phi i64 [ %i.aq, %bb.g ], [ %i.bj, %bb.l ] ; 2 uses
  %.04156.i.i = phi i64 [ 0, %bb.g ], [ %.3.i.i, %bb.l ] ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.i.i ; 3 uses
  %i.at = load i32, ptr %i.as, align 4            ; 3 uses
  %.not48.i.i = icmp eq i32 %i.at, 0
  br i1 %.not48.i.i, label %bb.l, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.i, %.preheader.i.i
  %.055.i.i = phi i32 [ %.1.i.i, %.preheader.i.i ], [ 0, %bb.i ]
  %.03854.i.i = phi i32 [ %i.be, %.preheader.i.i ], [ %i.at, %bb.i ] ; 3 uses
  %.14253.i.i = phi i64 [ %.2.i.i, %.preheader.i.i ], [ %.04156.i.i, %bb.i ]
  %i.au = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.03854.i.i, i1 true) ; 2 uses
  %i.av = shl nuw i32 1, %i.au                    ; 3 uses
  %i.aw = zext nneg i32 %i.au to i64
  %i.ax = or disjoint i64 %.04057.i.i, %i.aw
  %i.ay = shl i64 %i.ax, 3
  %i.az = add i64 %i.ay, %i.ah
  %i.ba = call noundef i32 @_ZZN2v88internal44YoungGenerationRememberedSetsMarkingWorklist11MarkingItem19MarkUntypedPointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvPT_ENKUlNS0_19FullMaybeObjectSlotEE_clES9_(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 %i.az)
  %i.bb = icmp eq i32 %i.ba, 0                    ; 2 uses
  %i.bc = zext i1 %i.bb to i64
  %.2.i.i = add i64 %.14253.i.i, %i.bc            ; 3 uses
  %i.bd = select i1 %i.bb, i32 0, i32 %i.av
  %.1.i.i = or i32 %i.bd, %.055.i.i               ; 3 uses
  %i.be = xor i32 %i.av, %.03854.i.i
  %.not49.i.i = icmp eq i32 %i.av, %.03854.i.i
  br i1 %.not49.i.i, label %bb.j, label %.preheader.i.i, !llvm.loop !320

bb.j:                                             ; preds = %.preheader.i.i
  %i.bf = and i32 %.1.i.i, %i.at
  %.not50.i.i = icmp eq i32 %i.bf, 0
  br i1 %.not50.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bg = xor i32 %.1.i.i, -1
  %i.bh = load i32, ptr %i.as, align 4
  %i.bi = and i32 %i.bh, %i.bg
  store i32 %i.bi, ptr %i.as, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %.3.i.i = phi i64 [ %.04156.i.i, %bb.i ], [ %.2.i.i, %bb.k ], [ %.2.i.i, %bb.j ] ; 3 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.bj = add nuw nsw i64 %.04057.i.i, 32
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 32
  br i1 %exitcond.not.i.i, label %bb.h, label %bb.i, !llvm.loop !321

bb.m:                                             ; preds = %bb.h
  %i.bk = load atomic volatile i64, ptr %i.an acquire, align 8 ; 2 uses
  store atomic volatile i64 0, ptr %i.an release, align 8
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE1EZNS0_44YoungGenerationRememberedSetsMarkingWorklist11MarkingItem19MarkUntypedPointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvPT_EUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE0_clEm.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bm = inttoptr i64 %i.bk to ptr
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef 128) #29
  br label %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE1EZNS0_44YoungGenerationRememberedSetsMarkingWorklist11MarkingItem19MarkUntypedPointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvPT_EUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE0_clEm.exit.i.i

_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE1EZNS0_44YoungGenerationRememberedSetsMarkingWorklist11MarkingItem19MarkUntypedPointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvPT_EUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE0_clEm.exit.i.i: ; preds = %bb.n, %bb.m, %bb.h
  %i.bn = add i64 %.3.i.i, %.04459.i.i
  br label %bb.o

bb.o:                                             ; preds = %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE1EZNS0_44YoungGenerationRememberedSetsMarkingWorklist11MarkingItem19MarkUntypedPointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvPT_EUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE0_clEm.exit.i.i, %.lr.ph.i.i
  %.145.i.i = phi i64 [ %i.bn, %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE1EZNS0_44YoungGenerationRememberedSetsMarkingWorklist11MarkingItem19MarkUntypedPointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvPT_EUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE0_clEm.exit.i.i ], [ %.04459.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.bo = add nuw nsw i64 %.04360.i.i, 1          ; 2 uses
  %exitcond63.not.i.i = icmp eq i64 %i.bo, %i.al
  br i1 %exitcond63.not.i.i, label %_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE0EE7IterateILNS0_10AccessModeE1EZNS0_44YoungGenerationRememberedSetsMarkingWorklist11MarkingItem19MarkUntypedPointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvPT_EUlNS0_19FullMaybeObjectSlotEE_EEiPNS0_7SlotSetEPKNS0_19MutablePageMetadataET0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit, label %.lr.ph.i.i, !llvm.loop !322

_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE0EE7IterateILNS0_10AccessModeE1EZNS0_44YoungGenerationRememberedSetsMarkingWorklist11MarkingItem19MarkUntypedPointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvPT_EUlNS0_19FullMaybeObjectSlotEE_EEiPNS0_7SlotSetEPKNS0_19MutablePageMetadataET0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.bp = and i64 %.145.i.i, 4294967295
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %bb.p, label %bb.r

bb.p:                                             ; preds = %_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE0EE7IterateILNS0_10AccessModeE1EZNS0_44YoungGenerationRememberedSetsMarkingWorklist11MarkingItem19MarkUntypedPointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvPT_EUlNS0_19FullMaybeObjectSlotEE_EEiPNS0_7SlotSetEPKNS0_19MutablePageMetadataET0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit
  %.pre = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.br = icmp eq ptr %.pre, null
  br i1 %i.br, label %_ZN4heap4base12BasicSlotSetILm8EE6DeleteEPS2_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %.thread, %bb.p
  %i.bs = phi ptr [ %i.ac, %.thread ], [ %.pre, %bb.p ] ; 2 uses
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 -8 ; 3 uses
  %i.bu = load i64, ptr %i.bt, align 8
  %.not.i18 = icmp eq i64 %i.bu, 0
  br i1 %.not.i18, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i, %.preheader.i
  call void @free(ptr noundef nonnull %i.bt) #26
  br label %_ZN4heap4base12BasicSlotSetILm8EE6DeleteEPS2_.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i
  %.07.i = phi i64 [ %i.bz, %_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %.07.i ; 2 uses
  %i.bw = load atomic volatile i64, ptr %i.bv acquire, align 8 ; 2 uses
  store atomic volatile i64 0, ptr %i.bv release, align 8
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i
  %i.by = inttoptr i64 %i.bw to ptr
  call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef 128) #29
  br label %_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i

_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i: ; preds = %bb.q, %.lr.ph.i
  %i.bz = add nuw i64 %.07.i, 1                   ; 2 uses
  %i.ca = load i64, ptr %i.bt, align 8
  %i.cb = icmp ult i64 %i.bz, %i.ca
  br i1 %i.cb, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !19

_ZN4heap4base12BasicSlotSetILm8EE6DeleteEPS2_.exit: ; preds = %bb.p, %._crit_edge.i
  store ptr null, ptr %i.ab, align 8
  br label %bb.r

bb.r:                                             ; preds = %_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE0EE7IterateILNS0_10AccessModeE1EZNS0_44YoungGenerationRememberedSetsMarkingWorklist11MarkingItem19MarkUntypedPointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvPT_EUlNS0_19FullMaybeObjectSlotEE_EEiPNS0_7SlotSetEPKNS0_19MutablePageMetadataET0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit, %_ZN4heap4base12BasicSlotSetILm8EE6DeleteEPS2_.exit, %bb.e
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.cd = load ptr, ptr %i.cc, align 8            ; 3 uses
  %.not17 = icmp eq ptr %i.cd, null
  br i1 %.not17, label %bb.ae, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8            ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 72
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = and i64 %i.ch, -262144
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 48
  %i.ck = load i64, ptr %i.cj, align 8
  %i.cl = add i64 %i.ck, 8191
  %i.cm = lshr i64 %i.cl, 13                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %0, ptr %2, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %1, ptr %i.cn, align 8
  %.not58 = icmp eq i64 %i.cm, 0
  br i1 %.not58, label %.thread78, label %.lr.ph.i.i32

.thread78:                                        ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %.preheader.i21

.lr.ph.i.i32:                                     ; preds = %bb.s, %bb.ab
  %.04360.i.i33 = phi i64 [ %i.dp, %bb.ab ], [ 0, %bb.s ] ; 3 uses
  %.04459.i.i34 = phi i64 [ %.145.i.i52, %bb.ab ], [ 0, %bb.s ] ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %.04360.i.i33 ; 3 uses
  %i.cp = load atomic volatile i64, ptr %i.co acquire, align 8 ; 2 uses
  %i.cq = inttoptr i64 %i.cp to ptr
  %.not.i.i35 = icmp eq i64 %i.cp, 0
  br i1 %.not.i.i35, label %bb.ab, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i32
  %i.cr = shl nuw nsw i64 %.04360.i.i33, 10
  br label %bb.v

bb.u:                                             ; preds = %bb.y
  %i.cs = icmp eq i64 %.3.i.i48, 0
  br i1 %i.cs, label %bb.z, label %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE1EZNS0_44YoungGenerationRememberedSetsMarkingWorklist11MarkingItem19MarkUntypedPointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvPT_EUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE0_clEm.exit.i.i51

bb.v:                                             ; preds = %bb.y, %bb.t
  %indvars.iv.i.i36 = phi i64 [ 0, %bb.t ], [ %indvars.iv.next.i.i49, %bb.y ] ; 2 uses
  %.04057.i.i37 = phi i64 [ %i.cr, %bb.t ], [ %i.dk, %bb.y ] ; 2 uses
  %.04156.i.i38 = phi i64 [ 0, %bb.t ], [ %.3.i.i48, %bb.y ] ; 2 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv.i.i36 ; 3 uses
  %i.cu = load i32, ptr %i.ct, align 4            ; 3 uses
  %.not48.i.i39 = icmp eq i32 %i.cu, 0
  br i1 %.not48.i.i39, label %bb.y, label %.preheader.i.i40

.preheader.i.i40:                                 ; preds = %bb.v, %.preheader.i.i40
  %.055.i.i41 = phi i32 [ %.1.i.i45, %.preheader.i.i40 ], [ 0, %bb.v ]
  %.03854.i.i42 = phi i32 [ %i.df, %.preheader.i.i40 ], [ %i.cu, %bb.v ] ; 3 uses
  %.14253.i.i43 = phi i64 [ %.2.i.i44, %.preheader.i.i40 ], [ %.04156.i.i38, %bb.v ]
  %i.cv = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.03854.i.i42, i1 true) ; 2 uses
  %i.cw = shl nuw i32 1, %i.cv                    ; 3 uses
  %i.cx = zext nneg i32 %i.cv to i64
  %i.cy = or disjoint i64 %.04057.i.i37, %i.cx
  %i.cz = shl i64 %i.cy, 3
  %i.da = add i64 %i.cz, %i.ci
  %i.db = call noundef i32 @_ZZN2v88internal44YoungGenerationRememberedSetsMarkingWorklist11MarkingItem19MarkUntypedPointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvPT_ENKUlNS0_19FullMaybeObjectSlotEE_clES9_(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 %i.da)
  %i.dc = icmp eq i32 %i.db, 0                    ; 2 uses
  %i.dd = zext i1 %i.dc to i64
  %.2.i.i44 = add i64 %.14253.i.i43, %i.dd        ; 3 uses
  %i.de = select i1 %i.dc, i32 0, i32 %i.cw
  %.1.i.i45 = or i32 %i.de, %.055.i.i41           ; 3 uses
  %i.df = xor i32 %i.cw, %.03854.i.i42
  %.not49.i.i46 = icmp eq i32 %i.cw, %.03854.i.i42
  br i1 %.not49.i.i46, label %bb.w, label %.preheader.i.i40, !llvm.loop !320

bb.w:                                             ; preds = %.preheader.i.i40
  %i.dg = and i32 %.1.i.i45, %i.cu
  %.not50.i.i47 = icmp eq i32 %i.dg, 0
  br i1 %.not50.i.i47, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dh = xor i32 %.1.i.i45, -1
  %i.di = load i32, ptr %i.ct, align 4
  %i.dj = and i32 %i.di, %i.dh
  store i32 %i.dj, ptr %i.ct, align 4
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  %.3.i.i48 = phi i64 [ %.04156.i.i38, %bb.v ], [ %.2.i.i44, %bb.x ], [ %.2.i.i44, %bb.w ] ; 3 uses
  %indvars.iv.next.i.i49 = add nuw nsw i64 %indvars.iv.i.i36, 1 ; 2 uses
  %i.dk = add nuw nsw i64 %.04057.i.i37, 32
  %exitcond.not.i.i50 = icmp eq i64 %indvars.iv.next.i.i49, 32
  br i1 %exitcond.not.i.i50, label %bb.u, label %bb.v, !llvm.loop !321

bb.z:                                             ; preds = %bb.u
  %i.dl = load atomic volatile i64, ptr %i.co acquire, align 8 ; 2 uses
  store atomic volatile i64 0, ptr %i.co release, align 8
  %i.dm = icmp eq i64 %i.dl, 0
  br i1 %i.dm, label %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE1EZNS0_44YoungGenerationRememberedSetsMarkingWorklist11MarkingItem19MarkUntypedPointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvPT_EUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE0_clEm.exit.i.i51, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dn = inttoptr i64 %i.dl to ptr
  call void @_ZdlPvm(ptr noundef nonnull %i.dn, i64 noundef 128) #29
  br label %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE1EZNS0_44YoungGenerationRememberedSetsMarkingWorklist11MarkingItem19MarkUntypedPointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvPT_EUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE0_clEm.exit.i.i51

_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE1EZNS0_44YoungGenerationRememberedSetsMarkingWorklist11MarkingItem19MarkUntypedPointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvPT_EUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE0_clEm.exit.i.i51: ; preds = %bb.aa, %bb.z, %bb.u
  %i.do = add i64 %.3.i.i48, %.04459.i.i34
  br label %bb.ab

bb.ab:                                            ; preds = %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE1EZNS0_44YoungGenerationRememberedSetsMarkingWorklist11MarkingItem19MarkUntypedPointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvPT_EUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE0_clEm.exit.i.i51, %.lr.ph.i.i32
  %.145.i.i52 = phi i64 [ %i.do, %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE1EZNS0_44YoungGenerationRememberedSetsMarkingWorklist11MarkingItem19MarkUntypedPointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvPT_EUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE0_clEm.exit.i.i51 ], [ %.04459.i.i34, %.lr.ph.i.i32 ] ; 2 uses
  %i.dp = add nuw nsw i64 %.04360.i.i33, 1        ; 2 uses
  %exitcond63.not.i.i53 = icmp eq i64 %i.dp, %i.cm
  br i1 %exitcond63.not.i.i53, label %_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE1EE7IterateILNS0_10AccessModeE1EZNS0_44YoungGenerationRememberedSetsMarkingWorklist11MarkingItem19MarkUntypedPointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvPT_EUlNS0_19FullMaybeObjectSlotEE_EEiPNS0_7SlotSetEPKNS0_19MutablePageMetadataET0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit, label %.lr.ph.i.i32, !llvm.loop !322

_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE1EE7IterateILNS0_10AccessModeE1EZNS0_44YoungGenerationRememberedSetsMarkingWorklist11MarkingItem19MarkUntypedPointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvPT_EUlNS0_19FullMaybeObjectSlotEE_EEiPNS0_7SlotSetEPKNS0_19MutablePageMetadataET0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit: ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.dq = and i64 %.145.i.i52, 4294967295
  %i.dr = icmp eq i64 %i.dq, 0
  br i1 %i.dr, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE1EE7IterateILNS0_10AccessModeE1EZNS0_44YoungGenerationRememberedSetsMarkingWorklist11MarkingItem19MarkUntypedPointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvPT_EUlNS0_19FullMaybeObjectSlotEE_EEiPNS0_7SlotSetEPKNS0_19MutablePageMetadataET0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit
  %.pre59 = load ptr, ptr %i.cc, align 8          ; 2 uses
  %i.ds = icmp eq ptr %.pre59, null
  br i1 %i.ds, label %_ZN4heap4base12BasicSlotSetILm8EE6DeleteEPS2_.exit27, label %.preheader.i21

.preheader.i21:                                   ; preds = %.thread78, %bb.ac
  %i.dt = phi ptr [ %i.cd, %.thread78 ], [ %.pre59, %bb.ac ] ; 2 uses
  %i.du = getelementptr inbounds i8, ptr %i.dt, i64 -8 ; 3 uses
  %i.dv = load i64, ptr %i.du, align 8
  %.not.i22 = icmp eq i64 %i.dv, 0
  br i1 %.not.i22, label %._crit_edge.i26, label %.lr.ph.i23

._crit_edge.i26:                                  ; preds = %_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i25, %.preheader.i21
  call void @free(ptr noundef nonnull %i.du) #26
  br label %_ZN4heap4base12BasicSlotSetILm8EE6DeleteEPS2_.exit27

.lr.ph.i23:                                       ; preds = %.preheader.i21, %_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i25
  %.07.i24 = phi i64 [ %i.ea, %_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i25 ], [ 0, %.preheader.i21 ] ; 2 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %.07.i24 ; 2 uses
  %i.dx = load atomic volatile i64, ptr %i.dw acquire, align 8 ; 2 uses
  store atomic volatile i64 0, ptr %i.dw release, align 8
  %i.dy = icmp eq i64 %i.dx, 0
  br i1 %i.dy, label %_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i25, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i23
  %i.dz = inttoptr i64 %i.dx to ptr
  call void @_ZdlPvm(ptr noundef nonnull %i.dz, i64 noundef 128) #29
  br label %_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i25

_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i25: ; preds = %bb.ad, %.lr.ph.i23
  %i.ea = add nuw i64 %.07.i24, 1                 ; 2 uses
  %i.eb = load i64, ptr %i.du, align 8
  %i.ec = icmp ult i64 %i.ea, %i.eb
  br i1 %i.ec, label %.lr.ph.i23, label %._crit_edge.i26, !llvm.loop !19

_ZN4heap4base12BasicSlotSetILm8EE6DeleteEPS2_.exit27: ; preds = %bb.ac, %._crit_edge.i26
  store ptr null, ptr %i.cc, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE1EE7IterateILNS0_10AccessModeE1EZNS0_44YoungGenerationRememberedSetsMarkingWorklist11MarkingItem19MarkUntypedPointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvPT_EUlNS0_19FullMaybeObjectSlotEE_EEiPNS0_7SlotSetEPKNS0_19MutablePageMetadataET0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit, %_ZN4heap4base12BasicSlotSetILm8EE6DeleteEPS2_.exit27, %bb.r
  %i.ed = load ptr, ptr %5, align 8
  %.not.i28 = icmp eq ptr %i.ed, null
  br i1 %.not.i28, label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ee = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8
  %i.eg = load atomic volatile i8, ptr %i.ef monotonic, align 1
  %.not1.i = icmp eq i8 %i.eg, 0
  br i1 %.not1.i, label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.eh = call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #26 ; 2 uses
  %i.ei = load ptr, ptr %i.ee, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ek = load ptr, ptr %i.ej, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.em = load i64, ptr %i.el, align 8
  %i.en = load ptr, ptr %i.eh, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 40
  %i.ep = load ptr, ptr %i.eo, align 8
  call void %i.ep(ptr noundef nonnull align 8 dereferenceable(8) %i.eh, ptr noundef %i.ei, ptr noundef %i.ek, i64 noundef %i.em) #26, !inline_history !9
  br label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit

_ZN2v88internal7tracing12ScopedTracerD2Ev.exit:   ; preds = %bb.ae, %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal44YoungGenerationRememberedSetsMarkingWorklist11MarkingItem17MarkTypedPointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvPT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %2 = alloca %class.anon.1462, align 8           ; 6 uses
  %3 = alloca [2 x %"class.std::unique_ptr.1143"], align 16 ; 6 uses
  %4 = alloca %"class.v8::internal::tracing::ScopedTracer", align 8 ; 11 uses
  %i.a = load atomic volatile i64, ptr @_ZZN2v88internal44YoungGenerationRememberedSetsMarkingWorklist11MarkingItem17MarkTypedPointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvPT_E28trace_event_unique_atomic127 acquire, align 8 ; 2 uses
  %i.b = inttoptr i64 %i.a to ptr
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #26 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef ptr %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.209) #26 ; 2 uses
  %i.h = ptrtoint ptr %i.g to i64
  store atomic volatile i64 %i.h, ptr @_ZZN2v88internal44YoungGenerationRememberedSetsMarkingWorklist11MarkingItem17MarkTypedPointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvPT_E28trace_event_unique_atomic127 release, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.b, %bb.a ], [ %i.g, %bb.b ]  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr null, ptr %4, align 8
  %i.i = load atomic volatile i8, ptr %.0 monotonic, align 1
  %i.j = and i8 %i.i, 5
  %.not10 = icmp eq i8 %i.j, 0
  br i1 %.not10, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.k = tail call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #26 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call noundef i64 %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i8 noundef signext 88, ptr noundef nonnull %.0, ptr noundef nonnull @.str.211, ptr noundef null, i64 noundef 0, i64 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %3, i32 noundef 0) #26, !inline_history !7
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i: ; preds = %bb.d
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.q) #26, !inline_history !8
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.d, %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i
  %i.u = load ptr, ptr %3, align 16               ; 3 uses
  %.not.i.1 = icmp eq ptr %i.u, null
  br i1 %.not.i.1, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1: ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.u) #26, !inline_history !8
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1: ; preds = %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1, %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %.0, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr @.str.211, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %i.o, ptr %i.aa, align 8
  store ptr %i.y, ptr %4, align 8
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1, %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %0, ptr %2, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %1, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %.not40.i.i = icmp eq ptr %i.af, null
  br i1 %.not40.i.i, label %.thread, label %.lr.ph45.i.i

.thread:                                          ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.k

.lr.ph45.i.i:                                     ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  br label %.lr.ph45.split.us.i.i

.lr.ph45.split.us.i.i:                            ; preds = %._crit_edge.us.i.i, %.lr.ph45.i.i
  %.043.us.i.i = phi ptr [ %i.ay, %._crit_edge.us.i.i ], [ %i.af, %.lr.ph45.i.i ] ; 3 uses
  %.02542.us.i.i = phi i32 [ %.126.lcssa.us.i.i, %._crit_edge.us.i.i ], [ 0, %.lr.ph45.i.i ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.043.us.i.i, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.043.us.i.i, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %i.al = icmp eq ptr %i.ai, %i.ak
  br i1 %i.al, label %._crit_edge.us.i.i, label %.lr.ph.us.i.i

.lr.ph.us.i.i:                                    ; preds = %.lr.ph45.split.us.i.i, %bb.i
  %.12637.us.i.i = phi i32 [ %.3.us.i.i, %bb.i ], [ %.02542.us.i.i, %.lr.ph45.split.us.i.i ] ; 3 uses
  %.sroa.033.036.us.i.i = phi ptr [ %i.aw, %bb.i ], [ %i.ai, %.lr.ph45.split.us.i.i ] ; 3 uses
  %i.am = load i32, ptr %.sroa.033.036.us.i.i, align 4 ; 2 uses
  %i.an = lshr i32 %i.am, 29                      ; 2 uses
  %.not32.us.i.i = icmp eq i32 %i.an, 6
  br i1 %.not32.us.i.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.us.i.i
  %i.ao = trunc nuw nsw i32 %i.an to i8
  %i.ap = and i32 %i.am, 536870911
  %i.aq = load i64, ptr %i.ag, align 8
  %i.ar = zext nneg i32 %i.ap to i64
  %i.as = add i64 %i.aq, %i.ar
  %i.at = call noundef i32 @_ZZN2v88internal44YoungGenerationRememberedSetsMarkingWorklist11MarkingItem17MarkTypedPointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvPT_ENKUlNS0_8SlotTypeEmE_clES9_m(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 noundef zeroext %i.ao, i64 noundef %i.as)
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 -1073741824, ptr %.sroa.033.036.us.i.i, align 4
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.av = add nsw i32 %.12637.us.i.i, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %.lr.ph.us.i.i
  %.3.us.i.i = phi i32 [ %.12637.us.i.i, %.lr.ph.us.i.i ], [ %i.av, %bb.h ], [ %.12637.us.i.i, %bb.g ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.033.036.us.i.i, i64 4 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.ak
  br i1 %i.ax, label %._crit_edge.us.i.i, label %.lr.ph.us.i.i

._crit_edge.us.i.i:                               ; preds = %bb.i, %.lr.ph45.split.us.i.i
  %.126.lcssa.us.i.i = phi i32 [ %.02542.us.i.i, %.lr.ph45.split.us.i.i ], [ %.3.us.i.i, %bb.i ] ; 2 uses
  %i.ay = load ptr, ptr %.043.us.i.i, align 8     ; 2 uses
  %.not.us.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.us.i.i, label %_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE0EE12IterateTypedIZNS0_44YoungGenerationRememberedSetsMarkingWorklist11MarkingItem17MarkTypedPointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvPT_EUlNS0_8SlotTypeEmE_EEiPNS0_12TypedSlotSetESB_.exit, label %.lr.ph45.split.us.i.i, !llvm.loop !323

_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE0EE12IterateTypedIZNS0_44YoungGenerationRememberedSetsMarkingWorklist11MarkingItem17MarkTypedPointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvPT_EUlNS0_8SlotTypeEmE_EEiPNS0_12TypedSlotSetESB_.exit: ; preds = %._crit_edge.us.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.az = icmp eq i32 %.126.lcssa.us.i.i, 0
  br i1 %i.az, label %bb.j, label %bb.m

bb.j:                                             ; preds = %_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE0EE12IterateTypedIZNS0_44YoungGenerationRememberedSetsMarkingWorklist11MarkingItem17MarkTypedPointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvPT_EUlNS0_8SlotTypeEmE_EEiPNS0_12TypedSlotSetESB_.exit
  %.pre = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ba = icmp eq ptr %.pre, null
  br i1 %i.ba, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.thread, %bb.j
  %i.bb = phi ptr [ %i.ac, %.thread ], [ %.pre, %bb.j ] ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(32) %i.bb) #26
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr null, ptr %i.ab, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE0EE12IterateTypedIZNS0_44YoungGenerationRememberedSetsMarkingWorklist11MarkingItem17MarkTypedPointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvPT_EUlNS0_8SlotTypeEmE_EEiPNS0_12TypedSlotSetESB_.exit
  %i.bf = load ptr, ptr %4, align 8
  %.not.i11 = icmp eq ptr %i.bf, null
  br i1 %.not.i11, label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = load atomic volatile i8, ptr %i.bh monotonic, align 1
  %.not1.i = icmp eq i8 %i.bi, 0
  br i1 %.not1.i, label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bj = call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #26 ; 2 uses
  %i.bk = load ptr, ptr %i.bg, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bo = load i64, ptr %i.bn, align 8
  %i.bp = load ptr, ptr %i.bj, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef %i.bk, ptr noundef %i.bm, i64 noundef %i.bo) #26, !inline_history !9
  br label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit

_ZN2v88internal7tracing12ScopedTracerD2Ev.exit:   ; preds = %bb.m, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZZN2v88internal44YoungGenerationRememberedSetsMarkingWorklist11MarkingItem19MarkUntypedPointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEEEvPT_ENKUlNS0_19FullMaybeObjectSlotEE_clES9_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 4 uses
  %3 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 4 uses
  %4 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 4 uses
  %5 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 4 uses
  %6 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 4 uses
  %7 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 4 uses
  %8 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 4 uses
  %9 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 4 uses
  %10 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 4 uses
  %11 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.1395", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 139 uses
  %i.c = inttoptr i64 %1 to ptr
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8 ; 6 uses
  %i.e = trunc i64 %i.d to i1
  %i.f = and i64 %i.d, 4294967295
  %i.g = icmp ne i64 %i.f, 3
  %i.h = and i1 %i.g, %i.e
  br i1 %i.h, label %bb.b, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE0ELNS3_17SlotTreatmentModeE1ENS0_19FullMaybeObjectSlotEEEbT1_.exit

bb.b:                                             ; preds = %bb.a
  %i.i = and i64 %i.d, -3                         ; 169 uses
  %i.j = and i64 %i.d, -262144
  %i.k = inttoptr i64 %i.j to ptr                 ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.k, align 262144
  %i.l = and i64 %.sroa.0.0.copyload.i.i.i, 24
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE0ELNS3_17SlotTreatmentModeE1ENS0_19FullMaybeObjectSlotEEEbT1_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.p = load atomic ptr, ptr %i.o seq_cst, align 8
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %bb.d, label %_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i, !prof !27

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.24) #27
  unreachable

_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i: ; preds = %bb.c
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = add i64 %i.q, 336
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = lshr i64 %i.d, 3
  %i.u = and i64 %i.t, 63
  %i.v = shl nuw i64 1, %i.u                      ; 2 uses
  %i.w = lshr i64 %i.d, 9
  %i.x = and i64 %i.w, 511
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.x ; 2 uses
  %i.z = load atomic volatile i64, ptr %i.y monotonic, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i
  %.0.i.i.i2 = phi i64 [ %i.z, %_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i ], [ %i.ad, %bb.f ] ; 3 uses
  %i.aa = and i64 %.0.i.i.i2, %i.v
  %.not16.not.not.i.not.not.not.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not16.not.not.i.not.not.not.i.i, label %bb.f, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE0ELNS3_17SlotTreatmentModeE1ENS0_19FullMaybeObjectSlotEEEbT1_.exit

bb.f:                                             ; preds = %bb.e
  %i.ab = or i64 %.0.i.i.i2, %i.v
  %i.ac = cmpxchg volatile ptr %i.y, i64 %.0.i.i.i2, i64 %i.ab monotonic monotonic, align 8 ; 2 uses
  %i.ad = extractvalue { i64, i1 } %i.ac, 0
  %.not.i.i2.i = extractvalue { i64, i1 } %i.ac, 1
  br i1 %.not.i.i2.i, label %bb.g, label %bb.e, !llvm.loop !5

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 2064 ; 21 uses
  %i.af = add nsw i64 %i.i, -1
  %i.ag = inttoptr i64 %i.af to ptr               ; 26 uses
  %i.ah = load atomic volatile i64, ptr %i.ag monotonic, align 8 ; 192 uses
  %i.ai = add i64 %i.ah, 10
  %i.aj = inttoptr i64 %i.ai to ptr               ; 2 uses
  %i.ak = load atomic volatile i8, ptr %i.aj monotonic, align 1
  switch i8 %i.ak, label %bb.fv [
    i8 24, label %bb.h
    i8 25, label %bb.i
    i8 0, label %bb.j
    i8 26, label %bb.k
    i8 27, label %bb.l
    i8 28, label %bb.m
    i8 29, label %bb.n
    i8 30, label %bb.o
    i8 31, label %bb.p
    i8 1, label %bb.q
    i8 33, label %bb.r
    i8 34, label %bb.s
    i8 35, label %bb.t
    i8 36, label %bb.u
    i8 37, label %bb.v
    i8 38, label %bb.af
    i8 39, label %bb.ag
    i8 2, label %bb.ah
    i8 40, label %_ZN2v88internal11HeapVisitorINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEE5VisitENS0_6TaggedINS0_3MapEEENS6_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit.i.thread
    i8 42, label %bb.aj
    i8 4, label %_ZN2v88internal11HeapVisitorINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEE5VisitENS0_6TaggedINS0_3MapEEENS6_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit.i.thread
    i8 43, label %bb.ak
    i8 5, label %bb.al
    i8 58, label %bb.am
    i8 59, label %bb.an
    i8 60, label %bb.ao
    i8 61, label %bb.ap
    i8 62, label %bb.aq
    i8 63, label %bb.ar
    i8 64, label %bb.as
    i8 65, label %bb.at
    i8 66, label %bb.au
    i8 6, label %bb.av
    i8 7, label %bb.aw
    i8 67, label %bb.ax
    i8 69, label %bb.ay
    i8 70, label %bb.az
    i8 71, label %bb.ba
    i8 72, label %bb.bb
    i8 73, label %bb.bc
    i8 74, label %bb.bd
    i8 76, label %bb.be
    i8 77, label %bb.bf
    i8 78, label %bb.bg
    i8 79, label %bb.bh
    i8 80, label %bb.bi
    i8 95, label %bb.bj
    i8 81, label %bb.bk
    i8 82, label %bb.bl
    i8 85, label %bb.bm
    i8 8, label %bb.al
    i8 87, label %bb.bn
    i8 88, label %bb.bo
    i8 91, label %_ZN2v88internal11HeapVisitorINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE0EEEE5VisitENS0_6TaggedINS0_3MapEEENS6_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit.i.thread
    i8 94, label %bb.bp
    i8 96, label %bb.bq
    i8 97, label %bb.br
    i8 98, label %bb.bs
    i8 99, label %bb.bt
    i8 100, label %bb.bu
    i8 101, label %bb.bv
    i8 102, label %bb.bw
    i8 103, label %bb.bx
    i8 104, label %bb.by
    i8 45, label %bb.bz
    i8 46, label %bb.cb
    i8 47, label %bb.cd
    i8 48, label %bb.cf
end_hunk_11
begin_hunk_12_@_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_18EphemeronHashTableEEELt128EE5Local7PublishEv:bb.a
  br i1 %i.s, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = tail call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #26
  %.not.i1 = icmp eq ptr %i.p, %i.t
  br i1 %.not.i1, label %_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_18EphemeronHashTableEEELt128EE5Local17PublishPopSegmentEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr %0, align 8, !nonnull !29, !align !30 ; 4 uses
  %i.v = load ptr, ptr %i.o, align 8              ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(24) %i.u) #26
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.x, ptr %i.y, align 8
  store ptr %i.v, ptr %i.w, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.aa = atomicrmw add ptr %i.z, i64 1 monotonic, align 8 ; 0 uses
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(24) %i.u) #26
  br label %_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_18EphemeronHashTableEEELt128EE5Local17PublishPopSegmentEv.exit

_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_18EphemeronHashTableEEELt128EE5Local17PublishPopSegmentEv.exit: ; preds = %bb.e, %bb.f
  %i.ab = tail call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #26
  store ptr %i.ab, ptr %i.o, align 8
  br label %bb.g

bb.g:                                             ; preds = %_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_18EphemeronHashTableEEELt128EE5Local17PublishPopSegmentEv.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EEC2EPNS0_4HeapEPSt13unordered_mapINS0_6TaggedINS0_14AllocationSiteEEEmNS0_6Object6HasherESt8equal_toIS9_ESaISt4pairIKS9_mEEE(ptr noundef nonnull align 8 dereferenceable(2256) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 comdat align 2 {
bb.a:
  %3 = alloca %"class.std::unique_ptr.301", align 8 ; 4 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = add i64 %i.a, -55464
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 55464
  store ptr %i.e, ptr %i.d, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTVN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EEE, i64 16), ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %i.f, i8 0, i64 2048, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2064
  store ptr %i.c, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2072
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1888 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 2040
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not.not = icmp eq ptr %i.n, null
  br i1 %.not.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -512
  call void @_ZN2v88internal7CppHeap21CreateCppMarkingStateEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.301") align 8 %3, ptr noundef nonnull align 8 dereferenceable(672) %i.o) #26
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %3, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @_ZN2v88internal16MarkingWorklists5LocalC1EPS1_St10unique_ptrINS0_15CppMarkingStateESt14default_deleteIS5_EE(ptr noundef nonnull align 8 dereferenceable(136) %i.h, ptr noundef %i.l, ptr noundef nonnull %3) #26
  %i.p = load ptr, ptr %3, align 8                ; 3 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN2v88internal15CppMarkingStateESt14default_deleteIS2_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %_ZNKSt14default_deleteIN2v88internal15CppMarkingStateEEclEPS2_.exit.i, label %_ZNKSt14default_deleteIN5cppgc8internal16MarkingStateBaseEEclEPS2_.exit.i.i.i.i

_ZNKSt14default_deleteIN5cppgc8internal16MarkingStateBaseEEclEPS2_.exit.i.i.i.i: ; preds = %bb.e
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.q) #26, !inline_history !1
  br label %_ZNKSt14default_deleteIN2v88internal15CppMarkingStateEEclEPS2_.exit.i

_ZNKSt14default_deleteIN2v88internal15CppMarkingStateEEclEPS2_.exit.i: ; preds = %_ZNKSt14default_deleteIN5cppgc8internal16MarkingStateBaseEEclEPS2_.exit.i.i.i.i, %bb.e
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef 16) #29
  br label %_ZNSt10unique_ptrIN2v88internal15CppMarkingStateESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN2v88internal15CppMarkingStateESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.d, %_ZNKSt14default_deleteIN2v88internal15CppMarkingStateEEclEPS2_.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 2208
  %i.v = load ptr, ptr %i.i, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  store ptr %i.x, ptr %i.u, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 2216
  %i.z = call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #26
  store ptr %i.z, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 2224
  %i.ab = call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #26
  store ptr %i.ab, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 2232
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 2856
  store ptr %i.ad, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 2240
  store ptr %2, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 2248
  %i.ag = call noundef zeroext i1 @_ZNK2v88internal4Heap26CanShortcutStringsDuringGCENS0_16GarbageCollectorE(ptr noundef nonnull align 8 dereferenceable(2992) %1, i32 noundef 2) #26
  %i.ah = zext i1 %i.ag to i8
  store i8 %i.ah, ptr %i.af, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2v88internal44YoungGenerationRememberedSetsMarkingWorklist5Local15ProcessNextItemINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EEEEEbPT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.d = load atomic i64, ptr %i.c monotonic, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZN2v88internal44YoungGenerationRememberedSetsMarkingWorklist15ProcessNextItemINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EEEEEbPT_RSt8optionalImE.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %.pre.i = load i8, ptr %i.f, align 8, !range !28
  %i.i = trunc nuw i8 %.pre.i to i1
  br i1 %i.i, label %_ZStssImmQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.i.peel, label %.critedge.i.peel

_ZStssImmQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.i.peel: ; preds = %.preheader.i
  %i.j = load ptr, ptr %i.g, align 8
  %i.k = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = sdiv exact i64 %i.n, 40
  %i.p = load i64, ptr %i.b, align 8              ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.o
  br i1 %i.q, label %bb.b, label %.critedge.i.peel

bb.b:                                             ; preds = %_ZStssImmQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.i.peel
  %i.r = getelementptr inbounds nuw [40 x i8], ptr %i.k, i64 %i.p ; 2 uses
  %i.s = atomicrmw xchg ptr %i.r, i8 1 monotonic, align 1
  %i.t = trunc i8 %i.s to i1
  br i1 %i.t, label %.critedge.i.peel, label %.loopexit

.critedge.i.peel:                                 ; preds = %bb.b, %_ZStssImmQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.i.peel, %.preheader.i
  %i.u = tail call { i64, i8 } @_ZN2v88internal14IndexGenerator7GetNextEv(ptr noundef nonnull align 8 dereferenceable(96) %i.h) #26 ; 2 uses
  %i.v = extractvalue { i64, i8 } %i.u, 0         ; 2 uses
  %i.w = extractvalue { i64, i8 } %i.u, 1         ; 2 uses
  store i64 %i.v, ptr %i.b, align 8
  store i8 %i.w, ptr %i.f, align 8
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %_ZStssImmQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.i, label %_ZN2v88internal44YoungGenerationRememberedSetsMarkingWorklist15ProcessNextItemINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EEEEEbPT_RSt8optionalImE.exit

_ZStssImmQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.i: ; preds = %.critedge.i.peel, %.critedge.i
  %i.y = phi i64 [ %i.aq, %.critedge.i ], [ %i.v, %.critedge.i.peel ] ; 2 uses
  %i.z = load ptr, ptr %i.g, align 8
  %i.aa = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = sdiv exact i64 %i.ad, 40
  %i.af = icmp ult i64 %i.y, %i.ae
  br i1 %i.af, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %_ZStssImmQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.i
  %i.ag = getelementptr inbounds nuw [40 x i8], ptr %i.aa, i64 %i.y ; 2 uses
  %i.ah = atomicrmw xchg ptr %i.ag, i8 1 monotonic, align 1
  %i.ai = trunc i8 %i.ah to i1
  br i1 %i.ai, label %.critedge.i, label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.b
  %.lcssa = phi ptr [ %i.r, %bb.b ], [ %i.ag, %bb.c ] ; 3 uses
  %i.aj = atomicrmw sub ptr %i.c, i64 1 monotonic, align 8 ; 0 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.lcssa, i64 16
  %i.al = load i32, ptr %i.ak, align 8
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.loopexit
  tail call void @_ZN2v88internal44YoungGenerationRememberedSetsMarkingWorklist11MarkingItem19MarkUntypedPointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EEEEEvPT_(ptr noundef nonnull align 8 dereferenceable(40) %.lcssa, ptr noundef %1)
  br label %_ZN2v88internal44YoungGenerationRememberedSetsMarkingWorklist11MarkingItem7ProcessINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EEEEEvPT_.exit.i

bb.e:                                             ; preds = %.loopexit
  tail call void @_ZN2v88internal44YoungGenerationRememberedSetsMarkingWorklist11MarkingItem17MarkTypedPointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EEEEEvPT_(ptr noundef nonnull align 8 dereferenceable(40) %.lcssa, ptr noundef %1)
  br label %_ZN2v88internal44YoungGenerationRememberedSetsMarkingWorklist11MarkingItem7ProcessINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EEEEEvPT_.exit.i

_ZN2v88internal44YoungGenerationRememberedSetsMarkingWorklist11MarkingItem7ProcessINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EEEEEvPT_.exit.i: ; preds = %bb.e, %bb.d
  %i.an = load i64, ptr %i.b, align 8
  %i.ao = add i64 %i.an, 1
  store i64 %i.ao, ptr %i.b, align 8
  br label %_ZN2v88internal44YoungGenerationRememberedSetsMarkingWorklist15ProcessNextItemINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EEEEEbPT_RSt8optionalImE.exit

.critedge.i:                                      ; preds = %bb.c, %_ZStssImmQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.i
  %i.ap = tail call { i64, i8 } @_ZN2v88internal14IndexGenerator7GetNextEv(ptr noundef nonnull align 8 dereferenceable(96) %i.h) #26 ; 2 uses
  %i.aq = extractvalue { i64, i8 } %i.ap, 0       ; 2 uses
  %i.ar = extractvalue { i64, i8 } %i.ap, 1       ; 2 uses
  store i64 %i.aq, ptr %i.b, align 8
  store i8 %i.ar, ptr %i.f, align 8
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %_ZStssImmQaant15__is_optional_vIT0_E25three_way_comparable_withIS0_T_EENSt8__detail18__cmp3way_res_implIS1_S0_E4typeERKSt8optionalIS1_ERKS0_.exit.i, label %_ZN2v88internal44YoungGenerationRememberedSetsMarkingWorklist15ProcessNextItemINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EEEEEbPT_RSt8optionalImE.exit, !llvm.loop !324

_ZN2v88internal44YoungGenerationRememberedSetsMarkingWorklist15ProcessNextItemINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EEEEEbPT_RSt8optionalImE.exit: ; preds = %.critedge.i, %.critedge.i.peel, %bb.a, %_ZN2v88internal44YoungGenerationRememberedSetsMarkingWorklist11MarkingItem7ProcessINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EEEEEvPT_.exit.i
  %.3.i = phi i1 [ false, %bb.a ], [ true, %_ZN2v88internal44YoungGenerationRememberedSetsMarkingWorklist11MarkingItem7ProcessINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EEEEEvPT_.exit.i ], [ false, %.critedge.i.peel ], [ false, %.critedge.i ]
  ret i1 %.3.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EED2Ev(ptr noundef nonnull align 8 dereferenceable(2256) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2072 ; 2 uses
  tail call void @_ZN2v88internal16MarkingWorklists5Local7PublishEv(ptr noundef nonnull align 8 dereferenceable(136) %i.a) #26
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2208 ; 2 uses
  tail call void @_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_18EphemeronHashTableEEELt128EE5Local7PublishEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b)
  %.0.ptr12 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.b:                                             ; preds = %bb.g
  tail call void @_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_18EphemeronHashTableEEELt128EE5LocalD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #26
  tail call void @_ZN2v88internal16MarkingWorklists5LocalD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %i.a) #26
  ret void

bb.c:                                             ; preds = %bb.g, %bb.a
  %.0.ptr14 = phi ptr [ %.0.ptr12, %bb.a ], [ %.0.ptr.1, %bb.g ] ; 2 uses
  %.pn.add13 = phi i64 [ 16, %bb.a ], [ %.pn.add.1, %bb.g ] ; 2 uses
  %i.c = load ptr, ptr %.0.ptr14, align 8         ; 2 uses
  %.not11 = icmp eq ptr %i.c, null
  br i1 %.not11, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %.0.ptr14, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  %i.g = atomicrmw add ptr %i.f, i64 %i.e monotonic, align 8 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %.pn.add13 ; 2 uses
  %.0.ptr = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.i = load ptr, ptr %.0.ptr, align 8           ; 2 uses
  %.not11.1 = icmp eq ptr %i.i, null
  br i1 %.not11.1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 240
  %i.m = atomicrmw add ptr %i.l, i64 %i.k monotonic, align 8 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.add.1 = add nuw nsw i64 %.pn.add13, 32     ; 3 uses
  %.0.ptr.1 = getelementptr inbounds nuw i8, ptr %0, i64 %.pn.add.1
  %.not.1 = icmp eq i64 %.pn.add.1, 2064
  br i1 %.not.1, label %bb.b, label %bb.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EED0Ev(ptr noundef nonnull align 8 dereferenceable(2256) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2072 ; 2 uses
  tail call void @_ZN2v88internal16MarkingWorklists5Local7PublishEv(ptr noundef nonnull align 8 dereferenceable(136) %i.a) #26
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2208 ; 2 uses
  tail call void @_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_18EphemeronHashTableEEELt128EE5Local7PublishEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b)
  %.0.ptr12.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %.0.ptr14.i = phi ptr [ %.0.ptr12.i, %bb.a ], [ %.0.ptr.i.1, %bb.f ] ; 2 uses
  %.pn.add13.i = phi i64 [ 16, %bb.a ], [ %.pn.add.i.1, %bb.f ] ; 2 uses
  %i.c = load ptr, ptr %.0.ptr14.i, align 8       ; 2 uses
  %.not11.i = icmp eq ptr %i.c, null
  br i1 %.not11.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.0.ptr14.i, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  %i.g = atomicrmw add ptr %i.f, i64 %i.e monotonic, align 8 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %.pn.add13.i ; 2 uses
  %.0.ptr.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.i = load ptr, ptr %.0.ptr.i, align 8         ; 2 uses
  %.not11.i.1 = icmp eq ptr %i.i, null
  br i1 %.not11.i.1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 240
  %i.m = atomicrmw add ptr %i.l, i64 %i.k monotonic, align 8 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn.add.i.1 = add nuw nsw i64 %.pn.add13.i, 32 ; 3 uses
  %.0.ptr.i.1 = getelementptr inbounds nuw i8, ptr %0, i64 %.pn.add.i.1
  %.not.i.1 = icmp eq i64 %.pn.add.i.1, 2064
  br i1 %.not.i.1, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EED2Ev.exit, label %bb.b

_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EED2Ev.exit: ; preds = %bb.f
  tail call void @_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_18EphemeronHashTableEEELt128EE5LocalD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.b) #26
  tail call void @_ZN2v88internal16MarkingWorklists5LocalD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %i.a) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 2256) #29
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE13VisitPointersENS0_6TaggedINS0_10HeapObjectEEENS0_14FullObjectSlotES7_(ptr noundef nonnull align 8 dereferenceable(2256) %0, i64 %1, i64 %2, i64 %3) unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = icmp ult i64 %2, %3
  br i1 %i.a, label %.lr.ph, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE17VisitPointersImplINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2072
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_14FullObjectSlotEEEbT1_.exit
  %.sroa.0.019 = phi i64 [ %2, %.lr.ph ], [ %i.ap, %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_14FullObjectSlotEEEbT1_.exit ] ; 2 uses
  %i.c = inttoptr i64 %.sroa.0.019 to ptr
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8 ; 5 uses
  %i.e = trunc i64 %i.d to i1
  br i1 %i.e, label %bb.c, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_14FullObjectSlotEEEbT1_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = and i64 %i.d, -262144
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.g, align 262144
  %i.h = and i64 %.sroa.0.0.copyload.i.i.i, 24
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_14FullObjectSlotEEEbT1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %i.l = load atomic ptr, ptr %i.k seq_cst, align 8
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i, !prof !27

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.24) #27
  unreachable

_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i: ; preds = %bb.d
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = add i64 %i.m, 336
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = lshr i64 %i.d, 3
  %i.q = and i64 %i.p, 63
  %i.r = shl nuw i64 1, %i.q                      ; 2 uses
  %i.s = lshr i64 %i.d, 9
  %i.t = and i64 %i.s, 511
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.t ; 2 uses
  %i.v = load atomic volatile i64, ptr %i.u monotonic, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i
  %.0.i.i.i = phi i64 [ %i.v, %_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i ], [ %i.z, %bb.g ] ; 3 uses
  %i.w = and i64 %.0.i.i.i, %i.r
  %.not16.not.not.i.not.not.not.i.i = icmp eq i64 %i.w, 0
  br i1 %.not16.not.not.i.not.not.not.i.i, label %bb.g, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_14FullObjectSlotEEEbT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.x = or i64 %.0.i.i.i, %i.r
  %i.y = cmpxchg volatile ptr %i.u, i64 %.0.i.i.i, i64 %i.x monotonic monotonic, align 8 ; 2 uses
  %i.z = extractvalue { i64, i1 } %i.y, 0
  %.not.i.i2.i = extractvalue { i64, i1 } %i.y, 1
  br i1 %.not.i.i2.i, label %bb.h, label %bb.f, !llvm.loop !5

bb.h:                                             ; preds = %bb.g
  %i.aa = load ptr, ptr %i.b, align 8             ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8            ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 2
  %i.ae = load i16, ptr %i.ad, align 2            ; 2 uses
  %i.af = load i16, ptr %i.ac, align 2
  %i.ag = icmp eq i16 %i.ae, %i.af
  br i1 %i.ag, label %bb.i, label %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit, !prof !27

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aa)
  %i.ah = tail call noundef ptr @_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local10NewSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aa) ; 3 uses
  store ptr %i.ah, ptr %i.ab, align 8
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 2
  %.pre.i = load i16, ptr %.phi.trans.insert.i, align 2
  br label %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit

_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %bb.h, %bb.i
  %i.ai = phi i16 [ %i.ae, %bb.h ], [ %.pre.i, %bb.i ] ; 2 uses
  %i.aj = phi ptr [ %i.ac, %bb.h ], [ %i.ah, %bb.i ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  %i.al = add i16 %i.ai, 1
  store i16 %i.al, ptr %i.ak, align 2
  %i.am = zext i16 %i.ai to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.am
  store i64 %i.d, ptr %i.ao, align 8
  br label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_14FullObjectSlotEEEbT1_.exit

end_hunk_12
begin_hunk_13_@_ZN2v88internal18BodyDescriptorBase15IteratePointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EEEEEvNS0_6TaggedINS0_10HeapObjectEEEiiPT_:bb.a
  %i.i = inttoptr i64 %.sroa.018.031 to ptr
  %i.j = load atomic volatile i64, ptr %i.i monotonic, align 8 ; 5 uses
  %i.k = trunc i64 %i.j to i1
  br i1 %i.k, label %bb.e, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_14FullObjectSlotEEEbT1_.exit

bb.e:                                             ; preds = %bb.d
  %i.l = and i64 %i.j, -262144
  %i.m = inttoptr i64 %i.l to ptr                 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.m, align 262144
  %i.n = and i64 %.sroa.0.0.copyload.i.i.i, 24
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_14FullObjectSlotEEEbT1_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %i.r = load atomic ptr, ptr %i.q seq_cst, align 8
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %bb.g, label %_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i, !prof !27

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.24) #27
  unreachable

_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i: ; preds = %bb.f
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = add i64 %i.s, 336
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = lshr i64 %i.j, 3
  %i.w = and i64 %i.v, 63
  %i.x = shl nuw i64 1, %i.w                      ; 2 uses
  %i.y = lshr i64 %i.j, 9
  %i.z = and i64 %i.y, 511
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.z ; 2 uses
  %i.ab = load atomic volatile i64, ptr %i.aa monotonic, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i
  %.0.i.i.i = phi i64 [ %i.ab, %_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i ], [ %i.af, %bb.i ] ; 3 uses
  %i.ac = and i64 %.0.i.i.i, %i.x
  %.not16.not.not.i.not.not.not.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not16.not.not.i.not.not.not.i.i, label %bb.i, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_14FullObjectSlotEEEbT1_.exit

bb.i:                                             ; preds = %bb.h
  %i.ad = or i64 %.0.i.i.i, %i.x
  %i.ae = cmpxchg volatile ptr %i.aa, i64 %.0.i.i.i, i64 %i.ad monotonic monotonic, align 8 ; 2 uses
  %i.af = extractvalue { i64, i1 } %i.ae, 0
  %.not.i.i2.i = extractvalue { i64, i1 } %i.ae, 1
  br i1 %.not.i.i2.i, label %bb.j, label %bb.h, !llvm.loop !5

bb.j:                                             ; preds = %bb.i
  %i.ag = load ptr, ptr %i.h, align 8             ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8            ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 2
  %i.ak = load i16, ptr %i.aj, align 2            ; 2 uses
  %i.al = load i16, ptr %i.ai, align 2
  %i.am = icmp eq i16 %i.ak, %i.al
  br i1 %i.am, label %bb.k, label %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit, !prof !27

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ag)
  %i.an = tail call noundef ptr @_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local10NewSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ag) ; 3 uses
  store ptr %i.an, ptr %i.ah, align 8
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.an, i64 2
  %.pre.i = load i16, ptr %.phi.trans.insert.i, align 2
  br label %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit

_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %bb.j, %bb.k
  %i.ao = phi i16 [ %i.ak, %bb.j ], [ %.pre.i, %bb.k ] ; 2 uses
  %i.ap = phi ptr [ %i.ai, %bb.j ], [ %i.an, %bb.k ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  %i.ar = add i16 %i.ao, 1
  store i16 %i.ar, ptr %i.aq, align 2
  %i.as = zext i16 %i.ao to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.as
  store i64 %i.j, ptr %i.au, align 8
  br label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_14FullObjectSlotEEEbT1_.exit

_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_14FullObjectSlotEEEbT1_.exit: ; preds = %bb.h, %bb.e, %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit, %bb.d
  %i.av = add i64 %.sroa.018.031, 8               ; 2 uses
  %i.aw = icmp ult i64 %i.av, %i.f
  br i1 %i.aw, label %bb.d, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE17VisitPointersImplINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit, !llvm.loop !14

_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE17VisitPointersImplINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit: ; preds = %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_14FullObjectSlotEEEbT1_.exit, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal14AllocationSite14BodyDescriptor11IterateBodyINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EEEEEvNS0_6TaggedINS0_3MapEEENS7_INS0_10HeapObjectEEEiPT_(i64 %0, i64 %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = add i64 %1, 7                            ; 2 uses
  %i.b = add i64 %1, 31                           ; 2 uses
  %i.c = icmp ult i64 %i.a, %i.b
  br i1 %i.c, label %.lr.ph.i, label %_ZN2v88internal18BodyDescriptorBase15IteratePointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EEEEEvNS0_6TaggedINS0_10HeapObjectEEEiiPT_.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 2072
  br label %bb.b

bb.b:                                             ; preds = %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_14FullObjectSlotEEEbT1_.exit.i, %.lr.ph.i
  %.sroa.018.031.i = phi i64 [ %i.a, %.lr.ph.i ], [ %i.ar, %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_14FullObjectSlotEEEbT1_.exit.i ] ; 2 uses
  %i.e = inttoptr i64 %.sroa.018.031.i to ptr
  %i.f = load atomic volatile i64, ptr %i.e monotonic, align 8 ; 5 uses
  %i.g = trunc i64 %i.f to i1
  br i1 %i.g, label %bb.c, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_14FullObjectSlotEEEbT1_.exit.i

bb.c:                                             ; preds = %bb.b
  %i.h = and i64 %i.f, -262144
  %i.i = inttoptr i64 %i.h to ptr                 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.i, align 262144
  %i.j = and i64 %.sroa.0.0.copyload.i.i.i.i, 24
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_14FullObjectSlotEEEbT1_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  %i.n = load atomic ptr, ptr %i.m seq_cst, align 8
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %bb.e, label %_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i, !prof !27

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.24) #27
  unreachable

_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i: ; preds = %bb.d
  %i.o = ptrtoint ptr %i.l to i64
  %i.p = add i64 %i.o, 336
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = lshr i64 %i.f, 3
  %i.s = and i64 %i.r, 63
  %i.t = shl nuw i64 1, %i.s                      ; 2 uses
  %i.u = lshr i64 %i.f, 9
  %i.v = and i64 %i.u, 511
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.v ; 2 uses
  %i.x = load atomic volatile i64, ptr %i.w monotonic, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i
  %.0.i.i.i.i = phi i64 [ %i.x, %_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i ], [ %i.ab, %bb.g ] ; 3 uses
  %i.y = and i64 %.0.i.i.i.i, %i.t
  %.not16.not.not.i.not.not.not.i.i.i = icmp eq i64 %i.y, 0
  br i1 %.not16.not.not.i.not.not.not.i.i.i, label %bb.g, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_14FullObjectSlotEEEbT1_.exit.i

bb.g:                                             ; preds = %bb.f
  %i.z = or i64 %.0.i.i.i.i, %i.t
  %i.aa = cmpxchg volatile ptr %i.w, i64 %.0.i.i.i.i, i64 %i.z monotonic monotonic, align 8 ; 2 uses
  %i.ab = extractvalue { i64, i1 } %i.aa, 0
  %.not.i.i2.i.i = extractvalue { i64, i1 } %i.aa, 1
  br i1 %.not.i.i2.i.i, label %bb.h, label %bb.f, !llvm.loop !5

bb.h:                                             ; preds = %bb.g
  %i.ac = load ptr, ptr %i.d, align 8             ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8            ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  %i.ag = load i16, ptr %i.af, align 2            ; 2 uses
  %i.ah = load i16, ptr %i.ae, align 2
  %i.ai = icmp eq i16 %i.ag, %i.ah
  br i1 %i.ai, label %bb.i, label %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i, !prof !27

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ac)
  %i.aj = tail call noundef ptr @_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local10NewSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ac) ; 3 uses
  store ptr %i.aj, ptr %i.ad, align 8
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  %.pre.i.i = load i16, ptr %.phi.trans.insert.i.i, align 2
  br label %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i

_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i: ; preds = %bb.i, %bb.h
  %i.ak = phi i16 [ %i.ag, %bb.h ], [ %.pre.i.i, %bb.i ] ; 2 uses
  %i.al = phi ptr [ %i.ae, %bb.h ], [ %i.aj, %bb.i ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  %i.an = add i16 %i.ak, 1
  store i16 %i.an, ptr %i.am, align 2
  %i.ao = zext i16 %i.ak to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ao
  store i64 %i.f, ptr %i.aq, align 8
  br label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_14FullObjectSlotEEEbT1_.exit.i

_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_14FullObjectSlotEEEbT1_.exit.i: ; preds = %bb.f, %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i, %bb.c, %bb.b
  %i.ar = add i64 %.sroa.018.031.i, 8             ; 2 uses
  %i.as = icmp ult i64 %i.ar, %i.b
  br i1 %i.as, label %bb.b, label %_ZN2v88internal18BodyDescriptorBase15IteratePointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EEEEEvNS0_6TaggedINS0_10HeapObjectEEEiiPT_.exit, !llvm.loop !14

_ZN2v88internal18BodyDescriptorBase15IteratePointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EEEEEvNS0_6TaggedINS0_10HeapObjectEEEiiPT_.exit: ; preds = %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_14FullObjectSlotEEEbT1_.exit.i, %bb.a
  %i.at = icmp eq i32 %2, 48
  br i1 %i.at, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN2v88internal18BodyDescriptorBase15IteratePointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EEEEEvNS0_6TaggedINS0_10HeapObjectEEEiiPT_.exit
  %i.au = add i64 %1, 39
  %i.av = add i64 %1, 47
  %i.aw = load ptr, ptr %3, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  tail call void %i.ay(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 %1, i64 %i.au, i64 %i.av) #26, !inline_history !325
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN2v88internal18BodyDescriptorBase15IteratePointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EEEEEvNS0_6TaggedINS0_10HeapObjectEEEiiPT_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal12CallSiteInfo14BodyDescriptor11IterateBodyINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EEEEEvNS0_6TaggedINS0_3MapEEENS7_INS0_10HeapObjectEEEiPT_(i64 %0, i64 %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = add i64 %1, 7                            ; 2 uses
  %i.b = add i64 %1, 15                           ; 3 uses
  %i.c = icmp ult i64 %i.a, -8
  br i1 %i.c, label %.lr.ph.i.i, label %_ZN2v88internal18BodyDescriptorBase21IterateTrustedPointerINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EEEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_NS0_19IndirectPointerModeENS0_18IndirectPointerTagE.exit

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 2072
  br label %bb.b

bb.b:                                             ; preds = %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_14FullObjectSlotEEEbT1_.exit.i.i, %.lr.ph.i.i
  %.sroa.07.020.i.i = phi i64 [ %i.a, %.lr.ph.i.i ], [ %i.ar, %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_14FullObjectSlotEEEbT1_.exit.i.i ] ; 2 uses
  %i.e = inttoptr i64 %.sroa.07.020.i.i to ptr
  %i.f = load atomic volatile i64, ptr %i.e monotonic, align 8 ; 5 uses
  %i.g = trunc i64 %i.f to i1
  br i1 %i.g, label %bb.c, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_14FullObjectSlotEEEbT1_.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.h = and i64 %i.f, -262144
  %i.i = inttoptr i64 %i.h to ptr                 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.i, align 262144
  %i.j = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 24
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_14FullObjectSlotEEEbT1_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  %i.n = load atomic ptr, ptr %i.m seq_cst, align 8
  %.not.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i, label %bb.e, label %_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i, !prof !27

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.24) #27
  unreachable

_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i: ; preds = %bb.d
  %i.o = ptrtoint ptr %i.l to i64
  %i.p = add i64 %i.o, 336
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = lshr i64 %i.f, 3
  %i.s = and i64 %i.r, 63
  %i.t = shl nuw i64 1, %i.s                      ; 2 uses
  %i.u = lshr i64 %i.f, 9
  %i.v = and i64 %i.u, 511
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.v ; 2 uses
  %i.x = load atomic volatile i64, ptr %i.w monotonic, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i
  %.0.i.i.i.i.i = phi i64 [ %i.x, %_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i ], [ %i.ab, %bb.g ] ; 3 uses
  %i.y = and i64 %.0.i.i.i.i.i, %i.t
  %.not16.not.not.i.not.not.not.i.i.i.i = icmp eq i64 %i.y, 0
  br i1 %.not16.not.not.i.not.not.not.i.i.i.i, label %bb.g, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_14FullObjectSlotEEEbT1_.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.z = or i64 %.0.i.i.i.i.i, %i.t
  %i.aa = cmpxchg volatile ptr %i.w, i64 %.0.i.i.i.i.i, i64 %i.z monotonic monotonic, align 8 ; 2 uses
  %i.ab = extractvalue { i64, i1 } %i.aa, 0
  %.not.i.i2.i.i.i = extractvalue { i64, i1 } %i.aa, 1
  br i1 %.not.i.i2.i.i.i, label %bb.h, label %bb.f, !llvm.loop !5

bb.h:                                             ; preds = %bb.g
  %i.ac = load ptr, ptr %i.d, align 8             ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8            ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  %i.ag = load i16, ptr %i.af, align 2            ; 2 uses
  %i.ah = load i16, ptr %i.ae, align 2
  %i.ai = icmp eq i16 %i.ag, %i.ah
  br i1 %i.ai, label %bb.i, label %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i, !prof !27

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ac)
  %i.aj = tail call noundef ptr @_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local10NewSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ac) ; 3 uses
  store ptr %i.aj, ptr %i.ad, align 8
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  %.pre.i.i.i = load i16, ptr %.phi.trans.insert.i.i.i, align 2
  br label %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i

_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i: ; preds = %bb.i, %bb.h
  %i.ak = phi i16 [ %i.ag, %bb.h ], [ %.pre.i.i.i, %bb.i ] ; 2 uses
  %i.al = phi ptr [ %i.ae, %bb.h ], [ %i.aj, %bb.i ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  %i.an = add i16 %i.ak, 1
  store i16 %i.an, ptr %i.am, align 2
  %i.ao = zext i16 %i.ak to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ao
  store i64 %i.f, ptr %i.aq, align 8
  br label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_14FullObjectSlotEEEbT1_.exit.i.i

_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_14FullObjectSlotEEEbT1_.exit.i.i: ; preds = %bb.f, %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i, %bb.c, %bb.b
  %i.ar = add i64 %.sroa.07.020.i.i, 8            ; 2 uses
  %i.as = icmp ult i64 %i.ar, %i.b
  br i1 %i.as, label %bb.b, label %_ZN2v88internal18BodyDescriptorBase21IterateTrustedPointerINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EEEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_NS0_19IndirectPointerModeENS0_18IndirectPointerTagE.exit, !llvm.loop !14

_ZN2v88internal18BodyDescriptorBase21IterateTrustedPointerINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EEEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_NS0_19IndirectPointerModeENS0_18IndirectPointerTagE.exit: ; preds = %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_14FullObjectSlotEEEbT1_.exit.i.i, %bb.a
  %i.at = add i64 %1, 55                          ; 2 uses
  %i.au = icmp ult i64 %i.b, %i.at
  br i1 %i.au, label %.lr.ph.i, label %_ZN2v88internal18BodyDescriptorBase15IteratePointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EEEEEvNS0_6TaggedINS0_10HeapObjectEEEiiPT_.exit

.lr.ph.i:                                         ; preds = %_ZN2v88internal18BodyDescriptorBase21IterateTrustedPointerINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EEEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_NS0_19IndirectPointerModeENS0_18IndirectPointerTagE.exit
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 2072
  br label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_14FullObjectSlotEEEbT1_.exit.i, %.lr.ph.i
  %.sroa.018.031.i = phi i64 [ %i.b, %.lr.ph.i ], [ %i.cj, %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_14FullObjectSlotEEEbT1_.exit.i ] ; 2 uses
  %i.aw = inttoptr i64 %.sroa.018.031.i to ptr
  %i.ax = load atomic volatile i64, ptr %i.aw monotonic, align 8 ; 5 uses
  %i.ay = trunc i64 %i.ax to i1
  br i1 %i.ay, label %bb.k, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_14FullObjectSlotEEEbT1_.exit.i

bb.k:                                             ; preds = %bb.j
  %i.az = and i64 %i.ax, -262144
  %i.ba = inttoptr i64 %i.az to ptr               ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.ba, align 262144
  %i.bb = and i64 %.sroa.0.0.copyload.i.i.i.i, 24
  %.not.i = icmp eq i64 %i.bb, 0
  br i1 %.not.i, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_14FullObjectSlotEEEbT1_.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8            ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 80
  %i.bf = load atomic ptr, ptr %i.be seq_cst, align 8
  %.not.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i, label %bb.m, label %_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i, !prof !27

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.24) #27
  unreachable

_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i: ; preds = %bb.l
  %i.bg = ptrtoint ptr %i.bd to i64
  %i.bh = add i64 %i.bg, 336
  %i.bi = inttoptr i64 %i.bh to ptr
  %i.bj = lshr i64 %i.ax, 3
  %i.bk = and i64 %i.bj, 63
  %i.bl = shl nuw i64 1, %i.bk                    ; 2 uses
  %i.bm = lshr i64 %i.ax, 9
  %i.bn = and i64 %i.bm, 511
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bn ; 2 uses
  %i.bp = load atomic volatile i64, ptr %i.bo monotonic, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i
  %.0.i.i.i.i = phi i64 [ %i.bp, %_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i ], [ %i.bt, %bb.o ] ; 3 uses
  %i.bq = and i64 %.0.i.i.i.i, %i.bl
  %.not16.not.not.i.not.not.not.i.i.i = icmp eq i64 %i.bq, 0
  br i1 %.not16.not.not.i.not.not.not.i.i.i, label %bb.o, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_14FullObjectSlotEEEbT1_.exit.i

bb.o:                                             ; preds = %bb.n
  %i.br = or i64 %.0.i.i.i.i, %i.bl
  %i.bs = cmpxchg volatile ptr %i.bo, i64 %.0.i.i.i.i, i64 %i.br monotonic monotonic, align 8 ; 2 uses
  %i.bt = extractvalue { i64, i1 } %i.bs, 0
  %.not.i.i2.i.i = extractvalue { i64, i1 } %i.bs, 1
  br i1 %.not.i.i2.i.i, label %bb.p, label %bb.n, !llvm.loop !5

bb.p:                                             ; preds = %bb.o
  %i.bu = load ptr, ptr %i.av, align 8            ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8            ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 2
  %i.by = load i16, ptr %i.bx, align 2            ; 2 uses
  %i.bz = load i16, ptr %i.bw, align 2
  %i.ca = icmp eq i16 %i.by, %i.bz
  br i1 %i.ca, label %bb.q, label %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i, !prof !27

bb.q:                                             ; preds = %bb.p
  tail call void @_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bu)
  %i.cb = tail call noundef ptr @_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local10NewSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bu) ; 3 uses
  store ptr %i.cb, ptr %i.bv, align 8
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 2
  %.pre.i.i = load i16, ptr %.phi.trans.insert.i.i, align 2
  br label %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i

_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i: ; preds = %bb.q, %bb.p
  %i.cc = phi i16 [ %i.by, %bb.p ], [ %.pre.i.i, %bb.q ] ; 2 uses
  %i.cd = phi ptr [ %i.bw, %bb.p ], [ %i.cb, %bb.q ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 2
  %i.cf = add i16 %i.cc, 1
  store i16 %i.cf, ptr %i.ce, align 2
  %i.cg = zext i16 %i.cc to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cg
  store i64 %i.ax, ptr %i.ci, align 8
  br label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_14FullObjectSlotEEEbT1_.exit.i

_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_14FullObjectSlotEEEbT1_.exit.i: ; preds = %bb.n, %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i, %bb.k, %bb.j
  %i.cj = add i64 %.sroa.018.031.i, 8             ; 2 uses
end_hunk_13
begin_hunk_14_@_ZN2v88internal9DebugInfo14BodyDescriptor11IterateBodyINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EEEEEvNS0_6TaggedINS0_3MapEEENS7_INS0_10HeapObjectEEEiPT_:bb.a
  %i.dl = extractvalue { i64, i1 } %i.dk, 0
  %.not.i.i2.i.i.i18 = extractvalue { i64, i1 } %i.dk, 1
  br i1 %.not.i.i2.i.i.i18, label %bb.x, label %bb.v, !llvm.loop !5

bb.x:                                             ; preds = %bb.w
  %i.dm = load ptr, ptr %i.cn, align 8            ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8 ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8            ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 2
  %i.dq = load i16, ptr %i.dp, align 2            ; 2 uses
  %i.dr = load i16, ptr %i.do, align 2
  %i.ds = icmp eq i16 %i.dq, %i.dr
  br i1 %i.ds, label %bb.y, label %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i19, !prof !27

bb.y:                                             ; preds = %bb.x
  tail call void @_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dm)
  %i.dt = tail call noundef ptr @_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local10NewSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dm) ; 3 uses
  store ptr %i.dt, ptr %i.dn, align 8
  %.phi.trans.insert.i.i.i20 = getelementptr inbounds nuw i8, ptr %i.dt, i64 2
  %.pre.i.i.i21 = load i16, ptr %.phi.trans.insert.i.i.i20, align 2
  br label %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i19

_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i19: ; preds = %bb.y, %bb.x
  %i.du = phi i16 [ %i.dq, %bb.x ], [ %.pre.i.i.i21, %bb.y ] ; 2 uses
  %i.dv = phi ptr [ %i.do, %bb.x ], [ %i.dt, %bb.y ] ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 2
  %i.dx = add i16 %i.du, 1
  store i16 %i.dx, ptr %i.dw, align 2
  %i.dy = zext i16 %i.du to i64
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.dy
  store i64 %i.cp, ptr %i.ea, align 8
  br label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_14FullObjectSlotEEEbT1_.exit.i.i11

_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_14FullObjectSlotEEEbT1_.exit.i.i11: ; preds = %bb.v, %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i19, %bb.s, %bb.r
  %i.eb = add i64 %.sroa.07.020.i.i10, 8          ; 2 uses
  %i.ec = icmp ult i64 %i.eb, %i.at
  br i1 %i.ec, label %bb.r, label %_ZN2v88internal18BodyDescriptorBase21IterateTrustedPointerINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EEEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_NS0_19IndirectPointerModeENS0_18IndirectPointerTagE.exit22, !llvm.loop !14

_ZN2v88internal18BodyDescriptorBase21IterateTrustedPointerINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EEEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_NS0_19IndirectPointerModeENS0_18IndirectPointerTagE.exit22: ; preds = %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_14FullObjectSlotEEEbT1_.exit.i.i11, %_ZN2v88internal18BodyDescriptorBase21IterateTrustedPointerINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EEEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_NS0_19IndirectPointerModeENS0_18IndirectPointerTagE.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal17DoubleStringCache14BodyDescriptor11IterateBodyINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EEEEEvNS0_6TaggedINS0_3MapEEENS7_INS0_10HeapObjectEEEiPT_(i64 %0, i64 %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = icmp sgt i32 %2, 16
  br i1 %i.a, label %.lr.ph30, label %._crit_edge

.lr.ph30:                                         ; preds = %bb.a
  %i.b = add i64 %1, -1
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 2072
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE17VisitPointersImplINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph30, %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE17VisitPointersImplINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit
  %.029 = phi i32 [ 16, %.lr.ph30 ], [ %i.bl, %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE17VisitPointersImplINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit ] ; 2 uses
  %i.d = sext i32 %.029 to i64
  %i.e = add i64 %i.b, %i.d                       ; 2 uses
  %i.f = add i64 %i.e, 16                         ; 2 uses
  %.sroa.014.027 = add i64 %i.e, 8                ; 2 uses
  %i.g = icmp ult i64 %.sroa.014.027, %i.f
  br i1 %i.g, label %.lr.ph, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE17VisitPointersImplINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit

.lr.ph:                                           ; preds = %bb.b, %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_14FullObjectSlotEEEbT1_.exit
  %.sroa.014.028 = phi i64 [ %.sroa.014.0, %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_14FullObjectSlotEEEbT1_.exit ], [ %.sroa.014.027, %bb.b ] ; 2 uses
  %i.h = inttoptr i64 %.sroa.014.028 to ptr
  %i.i = load atomic volatile i64, ptr %i.h monotonic, align 8 ; 5 uses
  %i.j = trunc i64 %i.i to i1
  br i1 %i.j, label %bb.c, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_14FullObjectSlotEEEbT1_.exit

bb.c:                                             ; preds = %.lr.ph
  %i.k = and i64 %i.i, -262144
  %i.l = inttoptr i64 %i.k to ptr                 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.l, align 262144
  %i.m = and i64 %.sroa.0.0.copyload.i.i.i, 24
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_14FullObjectSlotEEEbT1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %i.q = load atomic ptr, ptr %i.p seq_cst, align 8
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %bb.e, label %_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i, !prof !27

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.24) #27
  unreachable

_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i: ; preds = %bb.d
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = add i64 %i.r, 336
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = lshr i64 %i.i, 3
  %i.v = and i64 %i.u, 63
  %i.w = shl nuw i64 1, %i.v                      ; 2 uses
  %i.x = lshr i64 %i.i, 9
  %i.y = and i64 %i.x, 511
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.y ; 2 uses
  %i.aa = load atomic volatile i64, ptr %i.z monotonic, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i
  %.0.i.i.i = phi i64 [ %i.aa, %_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i ], [ %i.ae, %bb.g ] ; 3 uses
  %i.ab = and i64 %.0.i.i.i, %i.w
  %.not16.not.not.i.not.not.not.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not16.not.not.i.not.not.not.i.i, label %bb.g, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_14FullObjectSlotEEEbT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.ac = or i64 %.0.i.i.i, %i.w
  %i.ad = cmpxchg volatile ptr %i.z, i64 %.0.i.i.i, i64 %i.ac monotonic monotonic, align 8 ; 2 uses
  %i.ae = extractvalue { i64, i1 } %i.ad, 0
  %.not.i.i2.i = extractvalue { i64, i1 } %i.ad, 1
  br i1 %.not.i.i2.i, label %bb.h, label %bb.f, !llvm.loop !5

bb.h:                                             ; preds = %bb.g
  %i.af = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 2
  %i.aj = load i16, ptr %i.ai, align 2            ; 2 uses
  %i.ak = load i16, ptr %i.ah, align 2
  %i.al = icmp eq i16 %i.aj, %i.ak
  br i1 %i.al, label %bb.i, label %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit, !prof !27

bb.i:                                             ; preds = %bb.h
  %i.am = tail call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #26
  %.not.i = icmp eq ptr %i.ah, %i.am
  br i1 %.not.i, label %_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = load ptr, ptr %i.af, align 8, !nonnull !29, !align !30 ; 4 uses
  %i.ao = load ptr, ptr %i.ag, align 8            ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(24) %i.an) #26
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.aq, ptr %i.ar, align 8
  store ptr %i.ao, ptr %i.ap, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.at = atomicrmw add ptr %i.as, i64 1 monotonic, align 8 ; 0 uses
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(24) %i.an) #26
  br label %_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv.exit

_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv.exit: ; preds = %bb.i, %bb.j
  %i.au = load i8, ptr @_ZN4heap4base12WorklistBase18predictable_order_E, align 1, !range !28, !noundef !29
  %i.av = trunc nuw i8 %i.au to i1
  %i.aw = tail call noalias noundef dereferenceable_or_null(528) ptr @malloc(i64 noundef 528) #31 ; 7 uses
  br i1 %i.av, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv.exit
  %i.ax = tail call noundef i64 @malloc_usable_size(ptr noundef %i.aw) #26
  %i.ay = add i64 %i.ax, 524272
  %i.az = lshr i64 %i.ay, 3
  %i.ba = trunc i64 %i.az to i16
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv.exit
  %.sroa.6.0.i.i = phi i16 [ %i.ba, %bb.k ], [ 64, %_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv.exit ]
  %.not.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i, label %bb.m, label %_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local10NewSegmentEv.exit

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN2v84base8FatalOOMENS0_7OOMTypeEPKc(i32 noundef 1, ptr noundef nonnull @.str.23) #27
  unreachable

_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local10NewSegmentEv.exit: ; preds = %bb.l
  store i16 %.sroa.6.0.i.i, ptr %i.aw, align 2
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 2 ; 2 uses
  store i16 0, ptr %i.bb, align 2
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr null, ptr %i.bc, align 8
  store ptr %i.aw, ptr %i.ag, align 8
  %.pre.i = load i16, ptr %i.bb, align 2
  br label %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit

_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %bb.h, %_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local10NewSegmentEv.exit
  %i.bd = phi i16 [ %i.aj, %bb.h ], [ %.pre.i, %_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local10NewSegmentEv.exit ] ; 2 uses
  %i.be = phi ptr [ %i.ah, %bb.h ], [ %i.aw, %_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local10NewSegmentEv.exit ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 2
  %i.bg = add i16 %i.bd, 1
  store i16 %i.bg, ptr %i.bf, align 2
  %i.bh = zext i16 %i.bd to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bh
  store i64 %i.i, ptr %i.bj, align 8
  br label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_14FullObjectSlotEEEbT1_.exit

_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_14FullObjectSlotEEEbT1_.exit: ; preds = %bb.f, %bb.c, %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit, %.lr.ph
  %.sroa.014.0 = add i64 %.sroa.014.028, 8        ; 2 uses
  %i.bk = icmp ult i64 %.sroa.014.0, %i.f
  br i1 %i.bk, label %.lr.ph, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE17VisitPointersImplINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit, !llvm.loop !14

_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE17VisitPointersImplINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit: ; preds = %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_14FullObjectSlotEEEbT1_.exit, %bb.b
  %i.bl = add i32 %.029, 16                       ; 2 uses
  %i.bm = icmp slt i32 %i.bl, %2
  br i1 %i.bm, label %bb.b, label %._crit_edge, !llvm.loop !326
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal3Map14BodyDescriptor11IterateBodyINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EEEEEvNS0_6TaggedIS1_EENS7_INS0_10HeapObjectEEEiPT_(i64 %0, i64 %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = add i64 %1, 23                           ; 2 uses
  %i.b = add i64 %1, 63                           ; 4 uses
  %i.c = icmp ult i64 %i.a, %i.b
  br i1 %i.c, label %.lr.ph.i, label %_ZN2v88internal18BodyDescriptorBase15IteratePointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EEEEEvNS0_6TaggedINS0_10HeapObjectEEEiiPT_.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 2072
  br label %bb.b

bb.b:                                             ; preds = %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_14FullObjectSlotEEEbT1_.exit.i, %.lr.ph.i
  %.sroa.018.031.i = phi i64 [ %i.a, %.lr.ph.i ], [ %i.ar, %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_14FullObjectSlotEEEbT1_.exit.i ] ; 2 uses
  %i.e = inttoptr i64 %.sroa.018.031.i to ptr
  %i.f = load atomic volatile i64, ptr %i.e monotonic, align 8 ; 5 uses
  %i.g = trunc i64 %i.f to i1
  br i1 %i.g, label %bb.c, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_14FullObjectSlotEEEbT1_.exit.i

bb.c:                                             ; preds = %bb.b
  %i.h = and i64 %i.f, -262144
  %i.i = inttoptr i64 %i.h to ptr                 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.i, align 262144
  %i.j = and i64 %.sroa.0.0.copyload.i.i.i.i, 24
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_14FullObjectSlotEEEbT1_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  %i.n = load atomic ptr, ptr %i.m seq_cst, align 8
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %bb.e, label %_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i, !prof !27

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.24) #27
  unreachable

_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i: ; preds = %bb.d
  %i.o = ptrtoint ptr %i.l to i64
  %i.p = add i64 %i.o, 336
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = lshr i64 %i.f, 3
  %i.s = and i64 %i.r, 63
  %i.t = shl nuw i64 1, %i.s                      ; 2 uses
  %i.u = lshr i64 %i.f, 9
  %i.v = and i64 %i.u, 511
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.v ; 2 uses
  %i.x = load atomic volatile i64, ptr %i.w monotonic, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i
  %.0.i.i.i.i = phi i64 [ %i.x, %_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i ], [ %i.ab, %bb.g ] ; 3 uses
  %i.y = and i64 %.0.i.i.i.i, %i.t
  %.not16.not.not.i.not.not.not.i.i.i = icmp eq i64 %i.y, 0
  br i1 %.not16.not.not.i.not.not.not.i.i.i, label %bb.g, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_14FullObjectSlotEEEbT1_.exit.i

bb.g:                                             ; preds = %bb.f
  %i.z = or i64 %.0.i.i.i.i, %i.t
  %i.aa = cmpxchg volatile ptr %i.w, i64 %.0.i.i.i.i, i64 %i.z monotonic monotonic, align 8 ; 2 uses
  %i.ab = extractvalue { i64, i1 } %i.aa, 0
  %.not.i.i2.i.i = extractvalue { i64, i1 } %i.aa, 1
  br i1 %.not.i.i2.i.i, label %bb.h, label %bb.f, !llvm.loop !5

bb.h:                                             ; preds = %bb.g
  %i.ac = load ptr, ptr %i.d, align 8             ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8            ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  %i.ag = load i16, ptr %i.af, align 2            ; 2 uses
  %i.ah = load i16, ptr %i.ae, align 2
  %i.ai = icmp eq i16 %i.ag, %i.ah
  br i1 %i.ai, label %bb.i, label %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i, !prof !27

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ac)
  %i.aj = tail call noundef ptr @_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local10NewSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ac) ; 3 uses
  store ptr %i.aj, ptr %i.ad, align 8
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  %.pre.i.i = load i16, ptr %.phi.trans.insert.i.i, align 2
  br label %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i

_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i: ; preds = %bb.i, %bb.h
  %i.ak = phi i16 [ %i.ag, %bb.h ], [ %.pre.i.i, %bb.i ] ; 2 uses
  %i.al = phi ptr [ %i.ae, %bb.h ], [ %i.aj, %bb.i ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  %i.an = add i16 %i.ak, 1
  store i16 %i.an, ptr %i.am, align 2
  %i.ao = zext i16 %i.ak to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ao
  store i64 %i.f, ptr %i.aq, align 8
  br label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_14FullObjectSlotEEEbT1_.exit.i

_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_14FullObjectSlotEEEbT1_.exit.i: ; preds = %bb.f, %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i, %bb.c, %bb.b
  %i.ar = add i64 %.sroa.018.031.i, 8             ; 2 uses
  %i.as = icmp ult i64 %i.ar, %i.b
  br i1 %i.as, label %bb.b, label %_ZN2v88internal18BodyDescriptorBase15IteratePointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EEEEEvNS0_6TaggedINS0_10HeapObjectEEEiiPT_.exit, !llvm.loop !14

_ZN2v88internal18BodyDescriptorBase15IteratePointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EEEEEvNS0_6TaggedINS0_10HeapObjectEEEiiPT_.exit: ; preds = %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_14FullObjectSlotEEEbT1_.exit.i, %bb.a
  %i.at = add i64 %1, 71
  %i.au = icmp ult i64 %i.b, -8
  br i1 %i.au, label %.lr.ph.i6, label %_ZN2v88internal18BodyDescriptorBase23IterateMaybeWeakPointerINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EEEEEvNS0_6TaggedINS0_10HeapObjectEEEiPT_.exit

.lr.ph.i6:                                        ; preds = %_ZN2v88internal18BodyDescriptorBase15IteratePointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EEEEEvNS0_6TaggedINS0_10HeapObjectEEEiiPT_.exit
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 2072
  br label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_19FullMaybeObjectSlotEEEbT1_.exit.i, %.lr.ph.i6
  %.sroa.07.021.i = phi i64 [ %i.b, %.lr.ph.i6 ], [ %i.cn, %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_19FullMaybeObjectSlotEEEbT1_.exit.i ] ; 2 uses
  %i.aw = inttoptr i64 %.sroa.07.021.i to ptr
  %i.ax = load atomic volatile i64, ptr %i.aw monotonic, align 8 ; 6 uses
  %i.ay = trunc i64 %i.ax to i1
  %i.az = and i64 %i.ax, 4294967295
  %i.ba = icmp ne i64 %i.az, 3
  %i.bb = and i1 %i.ba, %i.ay
  br i1 %i.bb, label %bb.k, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_19FullMaybeObjectSlotEEEbT1_.exit.i

bb.k:                                             ; preds = %bb.j
  %i.bc = and i64 %i.ax, -3
  %i.bd = and i64 %i.ax, -262144
  %i.be = inttoptr i64 %i.bd to ptr               ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i7 = load i64, ptr %i.be, align 262144
  %i.bf = and i64 %.sroa.0.0.copyload.i.i.i.i7, 24
  %.not.i8 = icmp eq i64 %i.bf, 0
  br i1 %.not.i8, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_19FullMaybeObjectSlotEEEbT1_.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8            ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 80
  %i.bj = load atomic ptr, ptr %i.bi seq_cst, align 8
  %.not.i.i.i.i9 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i9, label %bb.m, label %_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i10, !prof !27

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.24) #27
  unreachable

_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i10: ; preds = %bb.l
  %i.bk = ptrtoint ptr %i.bh to i64
  %i.bl = add i64 %i.bk, 336
  %i.bm = inttoptr i64 %i.bl to ptr
  %i.bn = lshr i64 %i.ax, 3
  %i.bo = and i64 %i.bn, 63
  %i.bp = shl nuw i64 1, %i.bo                    ; 2 uses
  %i.bq = lshr i64 %i.ax, 9
  %i.br = and i64 %i.bq, 511
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.br ; 2 uses
  %i.bt = load atomic volatile i64, ptr %i.bs monotonic, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i10
  %.0.i.i.i.i11 = phi i64 [ %i.bt, %_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i10 ], [ %i.bx, %bb.o ] ; 3 uses
  %i.bu = and i64 %.0.i.i.i.i11, %i.bp
  %.not16.not.not.i.not.not.not.i.i.i12 = icmp eq i64 %i.bu, 0
  br i1 %.not16.not.not.i.not.not.not.i.i.i12, label %bb.o, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_19FullMaybeObjectSlotEEEbT1_.exit.i

bb.o:                                             ; preds = %bb.n
  %i.bv = or i64 %.0.i.i.i.i11, %i.bp
  %i.bw = cmpxchg volatile ptr %i.bs, i64 %.0.i.i.i.i11, i64 %i.bv monotonic monotonic, align 8 ; 2 uses
  %i.bx = extractvalue { i64, i1 } %i.bw, 0
  %.not.i.i2.i.i13 = extractvalue { i64, i1 } %i.bw, 1
  br i1 %.not.i.i2.i.i13, label %bb.p, label %bb.n, !llvm.loop !5

bb.p:                                             ; preds = %bb.o
  %i.by = load ptr, ptr %i.av, align 8            ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8            ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 2
  %i.cc = load i16, ptr %i.cb, align 2            ; 2 uses
  %i.cd = load i16, ptr %i.ca, align 2
  %i.ce = icmp eq i16 %i.cc, %i.cd
  br i1 %i.ce, label %bb.q, label %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i14, !prof !27

bb.q:                                             ; preds = %bb.p
  tail call void @_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %i.by)
  %i.cf = tail call noundef ptr @_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local10NewSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %i.by) ; 3 uses
  store ptr %i.cf, ptr %i.bz, align 8
  %.phi.trans.insert.i.i15 = getelementptr inbounds nuw i8, ptr %i.cf, i64 2
  %.pre.i.i16 = load i16, ptr %.phi.trans.insert.i.i15, align 2
  br label %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i14

_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i14: ; preds = %bb.q, %bb.p
  %i.cg = phi i16 [ %i.cc, %bb.p ], [ %.pre.i.i16, %bb.q ] ; 2 uses
  %i.ch = phi ptr [ %i.ca, %bb.p ], [ %i.cf, %bb.q ] ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 2
  %i.cj = add i16 %i.cg, 1
  store i16 %i.cj, ptr %i.ci, align 2
  %i.ck = zext i16 %i.cg to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.ck
  store i64 %i.bc, ptr %i.cm, align 8
  br label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_19FullMaybeObjectSlotEEEbT1_.exit.i

_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_19FullMaybeObjectSlotEEEbT1_.exit.i: ; preds = %bb.n, %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i14, %bb.k, %bb.j
  %i.cn = add i64 %.sroa.07.021.i, 8              ; 2 uses
end_hunk_14
begin_hunk_15_@_ZN2v88internal10WasmStruct14BodyDescriptor11IterateBodyINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EEEEEvNS0_6TaggedINS0_3MapEEENS7_INS0_10HeapObjectEEEiPT_:bb.a
  %i.y = lshr i64 %i.j, 9
  %i.z = and i64 %i.y, 511
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.z ; 2 uses
  %i.ab = load atomic volatile i64, ptr %i.aa monotonic, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i
  %.0.i.i.i = phi i64 [ %i.ab, %_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i ], [ %i.af, %bb.h ] ; 3 uses
  %i.ac = and i64 %.0.i.i.i, %i.x
  %.not16.not.not.i.not.not.not.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not16.not.not.i.not.not.not.i.i, label %bb.h, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_14FullObjectSlotEEEbT1_.exit26

bb.h:                                             ; preds = %bb.g
  %i.ad = or i64 %.0.i.i.i, %i.x
  %i.ae = cmpxchg volatile ptr %i.aa, i64 %.0.i.i.i, i64 %i.ad monotonic monotonic, align 8 ; 2 uses
  %i.af = extractvalue { i64, i1 } %i.ae, 0
  %.not.i.i2.i = extractvalue { i64, i1 } %i.ae, 1
  br i1 %.not.i.i2.i, label %bb.i, label %bb.g, !llvm.loop !5

bb.i:                                             ; preds = %bb.h
  %i.ag = load ptr, ptr %i.h, align 8             ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8            ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 2
  %i.ak = load i16, ptr %i.aj, align 2            ; 2 uses
  %i.al = load i16, ptr %i.ai, align 2
  %i.am = icmp eq i16 %i.ak, %i.al
  br i1 %i.am, label %bb.j, label %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit, !prof !27

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ag)
  %i.an = tail call noundef ptr @_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local10NewSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ag) ; 3 uses
  store ptr %i.an, ptr %i.ah, align 8
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.an, i64 2
  %.pre.i = load i16, ptr %.phi.trans.insert.i, align 2
  br label %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit

_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %bb.i, %bb.j
  %i.ao = phi i16 [ %i.ak, %bb.i ], [ %.pre.i, %bb.j ] ; 2 uses
  %i.ap = phi ptr [ %i.ai, %bb.i ], [ %i.an, %bb.j ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  %i.ar = add i16 %i.ao, 1
  store i16 %i.ar, ptr %i.aq, align 2
  %i.as = zext i16 %i.ao to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.as
  store i64 %i.j, ptr %i.au, align 8
  br label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_14FullObjectSlotEEEbT1_.exit26

_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_14FullObjectSlotEEEbT1_.exit26: ; preds = %bb.g, %bb.d, %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit, %bb.c
  %i.av = add i64 %.sroa.054.083, 8               ; 2 uses
  %i.aw = icmp ult i64 %i.av, %i.f
  br i1 %i.aw, label %bb.c, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE17VisitPointersImplINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit, !llvm.loop !14

_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE17VisitPointersImplINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit: ; preds = %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_14FullObjectSlotEEEbT1_.exit26, %bb.b, %bb.a
  %i.ax = load i16, ptr %i.a, align 8             ; 2 uses
  %.not89 = icmp eq i16 %i.ax, 0
  br i1 %.not89, label %._crit_edge, label %.lr.ph88

.lr.ph88:                                         ; preds = %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE17VisitPointersImplINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ba = add i64 %1, 15
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 2072
  br label %bb.k

._crit_edge:                                      ; preds = %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE17VisitPointersImplINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit18, %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE17VisitPointersImplINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit
  ret void

bb.k:                                             ; preds = %.lr.ph88, %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE17VisitPointersImplINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit18
  %i.bc = phi i16 [ %i.ax, %.lr.ph88 ], [ %i.dh, %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE17VisitPointersImplINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit18 ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph88 ], [ %indvars.iv.next, %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE17VisitPointersImplINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit18 ] ; 4 uses
  %i.bd = load ptr, ptr %i.ay, align 8
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.be, align 4
  %i.bf = trunc i32 %.sroa.0.0.copyload.i.i to i1
  br i1 %i.bf, label %bb.l, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE17VisitPointersImplINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit18

bb.l:                                             ; preds = %bb.k
  %i.bg = icmp eq i64 %indvars.iv, 0
  br i1 %i.bg, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bh = load i8, ptr %i.b, align 2, !range !28, !noundef !29
  %i.bi = shl nuw nsw i8 %i.bh, 3
  %i.bj = zext nneg i8 %i.bi to i32
  br label %_ZNK2v88internal4wasm14StructTypeBase12field_offsetEj.exit

bb.n:                                             ; preds = %bb.l
  %i.bk = load ptr, ptr %i.az, align 8
  %i.bl = getelementptr [4 x i8], ptr %i.bk, i64 %indvars.iv
  %i.bm = getelementptr i8, ptr %i.bl, i64 -4
  %i.bn = load i32, ptr %i.bm, align 4
  br label %_ZNK2v88internal4wasm14StructTypeBase12field_offsetEj.exit

_ZNK2v88internal4wasm14StructTypeBase12field_offsetEj.exit: ; preds = %bb.m, %bb.n
  %.0.i27 = phi i32 [ %i.bj, %bb.m ], [ %i.bn, %bb.n ]
  %i.bo = sext i32 %.0.i27 to i64
  %i.bp = add i64 %i.ba, %i.bo                    ; 3 uses
  %i.bq = add i64 %i.bp, 8
  %i.br = icmp ult i64 %i.bp, -8
  br i1 %i.br, label %.lr.ph85, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE17VisitPointersImplINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit18

.lr.ph85:                                         ; preds = %_ZNK2v88internal4wasm14StructTypeBase12field_offsetEj.exit, %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_14FullObjectSlotEEEbT1_.exit
  %.sroa.058.084 = phi i64 [ %i.df, %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_14FullObjectSlotEEEbT1_.exit ], [ %i.bp, %_ZNK2v88internal4wasm14StructTypeBase12field_offsetEj.exit ] ; 2 uses
  %i.bs = inttoptr i64 %.sroa.058.084 to ptr
  %i.bt = load atomic volatile i64, ptr %i.bs monotonic, align 8 ; 5 uses
  %i.bu = trunc i64 %i.bt to i1
  br i1 %i.bu, label %bb.o, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_14FullObjectSlotEEEbT1_.exit

bb.o:                                             ; preds = %.lr.ph85
  %i.bv = and i64 %i.bt, -262144
  %i.bw = inttoptr i64 %i.bv to ptr               ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.bw, align 262144
  %i.bx = and i64 %.sroa.0.0.copyload.i.i.i, 24
  %.not = icmp eq i64 %i.bx, 0
  br i1 %.not, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_14FullObjectSlotEEEbT1_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.bz = load ptr, ptr %i.by, align 8            ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 80
  %i.cb = load atomic ptr, ptr %i.ca seq_cst, align 8
  %.not.i.i.i31 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i31, label %bb.q, label %_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i32, !prof !27

bb.q:                                             ; preds = %bb.p
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.24) #27
  unreachable

_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i32: ; preds = %bb.p
  %i.cc = ptrtoint ptr %i.bz to i64
  %i.cd = add i64 %i.cc, 336
  %i.ce = inttoptr i64 %i.cd to ptr
  %i.cf = lshr i64 %i.bt, 3
  %i.cg = and i64 %i.cf, 63
  %i.ch = shl nuw i64 1, %i.cg                    ; 2 uses
  %i.ci = lshr i64 %i.bt, 9
  %i.cj = and i64 %i.ci, 511
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cj ; 2 uses
  %i.cl = load atomic volatile i64, ptr %i.ck monotonic, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.s, %_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i32
  %.0.i.i.i33 = phi i64 [ %i.cl, %_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i32 ], [ %i.cp, %bb.s ] ; 3 uses
  %i.cm = and i64 %.0.i.i.i33, %i.ch
  %.not16.not.not.i.not.not.not.i.i34 = icmp eq i64 %i.cm, 0
  br i1 %.not16.not.not.i.not.not.not.i.i34, label %bb.s, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_14FullObjectSlotEEEbT1_.exit

bb.s:                                             ; preds = %bb.r
  %i.cn = or i64 %.0.i.i.i33, %i.ch
  %i.co = cmpxchg volatile ptr %i.ck, i64 %.0.i.i.i33, i64 %i.cn monotonic monotonic, align 8 ; 2 uses
  %i.cp = extractvalue { i64, i1 } %i.co, 0
  %.not.i.i2.i35 = extractvalue { i64, i1 } %i.co, 1
  br i1 %.not.i.i2.i35, label %bb.t, label %bb.r, !llvm.loop !5

bb.t:                                             ; preds = %bb.s
  %i.cq = load ptr, ptr %i.bb, align 8            ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8            ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 2
  %i.cu = load i16, ptr %i.ct, align 2            ; 2 uses
  %i.cv = load i16, ptr %i.cs, align 2
  %i.cw = icmp eq i16 %i.cu, %i.cv
  br i1 %i.cw, label %bb.u, label %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit39, !prof !27

bb.u:                                             ; preds = %bb.t
  tail call void @_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cq)
  %i.cx = tail call noundef ptr @_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local10NewSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cq) ; 3 uses
  store ptr %i.cx, ptr %i.cr, align 8
  %.phi.trans.insert.i37 = getelementptr inbounds nuw i8, ptr %i.cx, i64 2
  %.pre.i38 = load i16, ptr %.phi.trans.insert.i37, align 2
  br label %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit39

_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit39: ; preds = %bb.t, %bb.u
  %i.cy = phi i16 [ %i.cu, %bb.t ], [ %.pre.i38, %bb.u ] ; 2 uses
  %i.cz = phi ptr [ %i.cs, %bb.t ], [ %i.cx, %bb.u ] ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 2
  %i.db = add i16 %i.cy, 1
  store i16 %i.db, ptr %i.da, align 2
  %i.dc = zext i16 %i.cy to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.dc
  store i64 %i.bt, ptr %i.de, align 8
  br label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_14FullObjectSlotEEEbT1_.exit

_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_14FullObjectSlotEEEbT1_.exit: ; preds = %bb.r, %bb.o, %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit39, %.lr.ph85
  %i.df = add i64 %.sroa.058.084, 8               ; 2 uses
  %i.dg = icmp ult i64 %i.df, %i.bq
  br i1 %i.dg, label %.lr.ph85, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE17VisitPointersImplINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit18.loopexit, !llvm.loop !14

_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE17VisitPointersImplINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit18.loopexit: ; preds = %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_14FullObjectSlotEEEbT1_.exit
  %.pre = load i16, ptr %i.a, align 8
  br label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE17VisitPointersImplINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit18

_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE17VisitPointersImplINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit18: ; preds = %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE17VisitPointersImplINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit18.loopexit, %_ZNK2v88internal4wasm14StructTypeBase12field_offsetEj.exit, %bb.k
  %i.dh = phi i16 [ %.pre, %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE17VisitPointersImplINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit18.loopexit ], [ %i.bc, %_ZNK2v88internal4wasm14StructTypeBase12field_offsetEj.exit ], [ %i.bc, %bb.k ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.di = zext i16 %i.dh to i64
  %i.dj = icmp samesign ult i64 %indvars.iv.next, %i.di
  br i1 %i.dj, label %bb.k, label %._crit_edge, !llvm.loop !327
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal13JSArrayBuffer14BodyDescriptor11IterateBodyINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EEEEEvNS0_6TaggedINS0_3MapEEENS7_INS0_10HeapObjectEEEiPT_(i64 %0, i64 %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZN2v88internal59JSAPIObjectWithEmbedderSlotsOrJSSpecialObjectBodyDescriptor41IterateJSAPIObjectWithEmbedderSlotsHeaderINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EEEEEvNS0_6TaggedINS0_3MapEEENS6_INS0_10HeapObjectEEEiPT_(i64 %0, i64 %1, i32 noundef %2, ptr noundef %3)
  %i.a = add i64 %1, -1
  %i.b = add i64 %1, 31                           ; 2 uses
  %i.c = add i64 %1, 39                           ; 2 uses
  %i.d = icmp ult i64 %i.b, %i.c
  br i1 %i.d, label %.lr.ph.i, label %_ZN2v88internal18BodyDescriptorBase15IteratePointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EEEEEvNS0_6TaggedINS0_10HeapObjectEEEiiPT_.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 2072
  br label %bb.b

bb.b:                                             ; preds = %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_14FullObjectSlotEEEbT1_.exit.i, %.lr.ph.i
  %.sroa.018.031.i = phi i64 [ %i.b, %.lr.ph.i ], [ %i.as, %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_14FullObjectSlotEEEbT1_.exit.i ] ; 2 uses
  %i.f = inttoptr i64 %.sroa.018.031.i to ptr
  %i.g = load atomic volatile i64, ptr %i.f monotonic, align 8 ; 5 uses
  %i.h = trunc i64 %i.g to i1
  br i1 %i.h, label %bb.c, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_14FullObjectSlotEEEbT1_.exit.i

bb.c:                                             ; preds = %bb.b
  %i.i = and i64 %i.g, -262144
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.j, align 262144
  %i.k = and i64 %.sroa.0.0.copyload.i.i.i.i, 24
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_14FullObjectSlotEEEbT1_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %i.o = load atomic ptr, ptr %i.n seq_cst, align 8
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %bb.e, label %_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i, !prof !27

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.24) #27
  unreachable

_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i: ; preds = %bb.d
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = add i64 %i.p, 336
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = lshr i64 %i.g, 3
  %i.t = and i64 %i.s, 63
  %i.u = shl nuw i64 1, %i.t                      ; 2 uses
  %i.v = lshr i64 %i.g, 9
  %i.w = and i64 %i.v, 511
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.w ; 2 uses
  %i.y = load atomic volatile i64, ptr %i.x monotonic, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i
  %.0.i.i.i.i = phi i64 [ %i.y, %_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i ], [ %i.ac, %bb.g ] ; 3 uses
  %i.z = and i64 %.0.i.i.i.i, %i.u
  %.not16.not.not.i.not.not.not.i.i.i = icmp eq i64 %i.z, 0
  br i1 %.not16.not.not.i.not.not.not.i.i.i, label %bb.g, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_14FullObjectSlotEEEbT1_.exit.i

bb.g:                                             ; preds = %bb.f
  %i.aa = or i64 %.0.i.i.i.i, %i.u
  %i.ab = cmpxchg volatile ptr %i.x, i64 %.0.i.i.i.i, i64 %i.aa monotonic monotonic, align 8 ; 2 uses
  %i.ac = extractvalue { i64, i1 } %i.ab, 0
  %.not.i.i2.i.i = extractvalue { i64, i1 } %i.ab, 1
  br i1 %.not.i.i2.i.i, label %bb.h, label %bb.f, !llvm.loop !5

bb.h:                                             ; preds = %bb.g
  %i.ad = load ptr, ptr %i.e, align 8             ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8            ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  %i.ah = load i16, ptr %i.ag, align 2            ; 2 uses
  %i.ai = load i16, ptr %i.af, align 2
  %i.aj = icmp eq i16 %i.ah, %i.ai
  br i1 %i.aj, label %bb.i, label %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i, !prof !27

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ad)
  %i.ak = tail call noundef ptr @_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local10NewSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ad) ; 3 uses
  store ptr %i.ak, ptr %i.ae, align 8
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 2
  %.pre.i.i = load i16, ptr %.phi.trans.insert.i.i, align 2
  br label %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i

_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i: ; preds = %bb.i, %bb.h
  %i.al = phi i16 [ %i.ah, %bb.h ], [ %.pre.i.i, %bb.i ] ; 2 uses
  %i.am = phi ptr [ %i.af, %bb.h ], [ %i.ak, %bb.i ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  %i.ao = add i16 %i.al, 1
  store i16 %i.ao, ptr %i.an, align 2
  %i.ap = zext i16 %i.al to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ap
  store i64 %i.g, ptr %i.ar, align 8
  br label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_14FullObjectSlotEEEbT1_.exit.i

_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_14FullObjectSlotEEEbT1_.exit.i: ; preds = %bb.f, %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i, %bb.c, %bb.b
  %i.as = add i64 %.sroa.018.031.i, 8             ; 2 uses
  %i.at = icmp ult i64 %i.as, %i.c
  br i1 %i.at, label %bb.b, label %_ZN2v88internal18BodyDescriptorBase15IteratePointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EEEEEvNS0_6TaggedINS0_10HeapObjectEEEiiPT_.exit, !llvm.loop !14

_ZN2v88internal18BodyDescriptorBase15IteratePointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EEEEEvNS0_6TaggedINS0_10HeapObjectEEEiiPT_.exit: ; preds = %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_14FullObjectSlotEEEbT1_.exit.i, %bb.a
  %i.au = add i64 %1, 79                          ; 2 uses
  %i.av = sext i32 %2 to i64
  %i.aw = add i64 %i.a, %i.av                     ; 2 uses
  %i.ax = icmp ult i64 %i.au, %i.aw
  br i1 %i.ax, label %.lr.ph.i.i, label %_ZN2v88internal59JSAPIObjectWithEmbedderSlotsOrJSSpecialObjectBodyDescriptor39IterateJSAPIObjectWithEmbedderSlotsTailINS0_13JSArrayBufferENS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EEEEEvNS0_6TaggedINS0_3MapEEENS7_INS0_10HeapObjectEEEiPT0_.exit

.lr.ph.i.i:                                       ; preds = %_ZN2v88internal18BodyDescriptorBase15IteratePointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EEEEEvNS0_6TaggedINS0_10HeapObjectEEEiiPT_.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 2072
  br label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_14FullObjectSlotEEEbT1_.exit.i.i, %.lr.ph.i.i
  %.sroa.018.031.i.i = phi i64 [ %i.au, %.lr.ph.i.i ], [ %i.cm, %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_14FullObjectSlotEEEbT1_.exit.i.i ] ; 2 uses
  %i.az = inttoptr i64 %.sroa.018.031.i.i to ptr
  %i.ba = load atomic volatile i64, ptr %i.az monotonic, align 8 ; 5 uses
  %i.bb = trunc i64 %i.ba to i1
  br i1 %i.bb, label %bb.k, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_14FullObjectSlotEEEbT1_.exit.i.i

bb.k:                                             ; preds = %bb.j
  %i.bc = and i64 %i.ba, -262144
  %i.bd = inttoptr i64 %i.bc to ptr               ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.bd, align 262144
  %i.be = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 24
  %.not.i.i = icmp eq i64 %i.be, 0
  br i1 %.not.i.i, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_14FullObjectSlotEEEbT1_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8            ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 80
  %i.bi = load atomic ptr, ptr %i.bh seq_cst, align 8
  %.not.i.i.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i.i, label %bb.m, label %_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i, !prof !27

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.24) #27
  unreachable

_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i: ; preds = %bb.l
  %i.bj = ptrtoint ptr %i.bg to i64
  %i.bk = add i64 %i.bj, 336
  %i.bl = inttoptr i64 %i.bk to ptr
  %i.bm = lshr i64 %i.ba, 3
  %i.bn = and i64 %i.bm, 63
  %i.bo = shl nuw i64 1, %i.bn                    ; 2 uses
  %i.bp = lshr i64 %i.ba, 9
  %i.bq = and i64 %i.bp, 511
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bq ; 2 uses
  %i.bs = load atomic volatile i64, ptr %i.br monotonic, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i
  %.0.i.i.i.i.i = phi i64 [ %i.bs, %_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i ], [ %i.bw, %bb.o ] ; 3 uses
  %i.bt = and i64 %.0.i.i.i.i.i, %i.bo
  %.not16.not.not.i.not.not.not.i.i.i.i = icmp eq i64 %i.bt, 0
  br i1 %.not16.not.not.i.not.not.not.i.i.i.i, label %bb.o, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_14FullObjectSlotEEEbT1_.exit.i.i

bb.o:                                             ; preds = %bb.n
  %i.bu = or i64 %.0.i.i.i.i.i, %i.bo
  %i.bv = cmpxchg volatile ptr %i.br, i64 %.0.i.i.i.i.i, i64 %i.bu monotonic monotonic, align 8 ; 2 uses
  %i.bw = extractvalue { i64, i1 } %i.bv, 0
  %.not.i.i2.i.i.i = extractvalue { i64, i1 } %i.bv, 1
  br i1 %.not.i.i2.i.i.i, label %bb.p, label %bb.n, !llvm.loop !5

bb.p:                                             ; preds = %bb.o
  %i.bx = load ptr, ptr %i.ay, align 8            ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8            ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 2
  %i.cb = load i16, ptr %i.ca, align 2            ; 2 uses
  %i.cc = load i16, ptr %i.bz, align 2
  %i.cd = icmp eq i16 %i.cb, %i.cc
  br i1 %i.cd, label %bb.q, label %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i, !prof !27

bb.q:                                             ; preds = %bb.p
  tail call void @_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bx)
  %i.ce = tail call noundef ptr @_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local10NewSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bx) ; 3 uses
  store ptr %i.ce, ptr %i.by, align 8
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 2
  %.pre.i.i.i = load i16, ptr %.phi.trans.insert.i.i.i, align 2
  br label %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i

_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i: ; preds = %bb.q, %bb.p
  %i.cf = phi i16 [ %i.cb, %bb.p ], [ %.pre.i.i.i, %bb.q ] ; 2 uses
  %i.cg = phi ptr [ %i.bz, %bb.p ], [ %i.ce, %bb.q ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 2
  %i.ci = add i16 %i.cf, 1
  store i16 %i.ci, ptr %i.ch, align 2
  %i.cj = zext i16 %i.cf to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.cj
  store i64 %i.ba, ptr %i.cl, align 8
  br label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_14FullObjectSlotEEEbT1_.exit.i.i

_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE18VisitObjectViaSlotILNS3_20ObjectVisitationModeE1ELNS3_17SlotTreatmentModeE0ENS0_14FullObjectSlotEEEbT1_.exit.i.i: ; preds = %bb.n, %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i, %bb.k, %bb.j
  %i.cm = add i64 %.sroa.018.031.i.i, 8           ; 2 uses
end_hunk_15
begin_hunk_16_@_ZN2v88internal44YoungGenerationRememberedSetsMarkingWorklist11MarkingItem19MarkUntypedPointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EEEEEvPT_:bb.a
  %i.bv = load i64, ptr %i.bu, align 8
  %.not.i22 = icmp eq i64 %i.bv, 0
  br i1 %.not.i22, label %._crit_edge.i26, label %.lr.ph.i23

._crit_edge.i26:                                  ; preds = %_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i25, %.preheader.i21
  call void @free(ptr noundef nonnull %i.bu) #26
  br label %_ZN4heap4base12BasicSlotSetILm8EE6DeleteEPS2_.exit27

.lr.ph.i23:                                       ; preds = %.preheader.i21, %_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i25
  %.07.i24 = phi i64 [ %i.ca, %_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i25 ], [ 0, %.preheader.i21 ] ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %.07.i24 ; 2 uses
  %i.bx = load atomic volatile i64, ptr %i.bw acquire, align 8 ; 2 uses
  store atomic volatile i64 0, ptr %i.bw release, align 8
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i25, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i23
  %i.bz = inttoptr i64 %i.bx to ptr
  call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef 128) #29
  br label %_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i25

_ZN4heap4base12BasicSlotSetILm8EE13ReleaseBucketILNS2_10AccessModeE0EEEvm.exit.i25: ; preds = %bb.j, %.lr.ph.i23
  %i.ca = add nuw i64 %.07.i24, 1                 ; 2 uses
  %i.cb = load i64, ptr %i.bu, align 8
  %i.cc = icmp ult i64 %i.ca, %i.cb
  br i1 %i.cc, label %.lr.ph.i23, label %._crit_edge.i26, !llvm.loop !19

_ZN4heap4base12BasicSlotSetILm8EE6DeleteEPS2_.exit27: ; preds = %bb.i, %._crit_edge.i26
  store ptr null, ptr %i.bc, align 8
  br label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE1EE7IterateILNS0_10AccessModeE1EZNS0_44YoungGenerationRememberedSetsMarkingWorklist11MarkingItem19MarkUntypedPointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EEEEEvPT_EUlNS0_19FullMaybeObjectSlotEE_EEiPNS0_7SlotSetEPKNS0_19MutablePageMetadataET0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeE.exit, %_ZN4heap4base12BasicSlotSetILm8EE6DeleteEPS2_.exit27, %bb.h
  %i.cd = load ptr, ptr %7, align 8
  %.not.i28 = icmp eq ptr %i.cd, null
  br i1 %.not.i28, label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = load atomic volatile i8, ptr %i.cf monotonic, align 1
  %.not1.i = icmp eq i8 %i.cg, 0
  br i1 %.not1.i, label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ch = call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #26 ; 2 uses
  %i.ci = load ptr, ptr %i.ce, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.cm = load i64, ptr %i.cl, align 8
  %i.cn = load ptr, ptr %i.ch, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 40
  %i.cp = load ptr, ptr %i.co, align 8
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(8) %i.ch, ptr noundef %i.ci, ptr noundef %i.ck, i64 noundef %i.cm) #26, !inline_history !9
  br label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit

_ZN2v88internal7tracing12ScopedTracerD2Ev.exit:   ; preds = %bb.k, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal44YoungGenerationRememberedSetsMarkingWorklist11MarkingItem17MarkTypedPointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EEEEEvPT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %2 = alloca %class.anon.1479, align 8           ; 6 uses
  %3 = alloca [2 x %"class.std::unique_ptr.1143"], align 16 ; 6 uses
  %4 = alloca %"class.v8::internal::tracing::ScopedTracer", align 8 ; 11 uses
  %i.a = load atomic volatile i64, ptr @_ZZN2v88internal44YoungGenerationRememberedSetsMarkingWorklist11MarkingItem17MarkTypedPointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EEEEEvPT_E28trace_event_unique_atomic127 acquire, align 8 ; 2 uses
  %i.b = inttoptr i64 %i.a to ptr
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #26 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef ptr %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.209) #26 ; 2 uses
  %i.h = ptrtoint ptr %i.g to i64
  store atomic volatile i64 %i.h, ptr @_ZZN2v88internal44YoungGenerationRememberedSetsMarkingWorklist11MarkingItem17MarkTypedPointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EEEEEvPT_E28trace_event_unique_atomic127 release, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.b, %bb.a ], [ %i.g, %bb.b ]  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr null, ptr %4, align 8
  %i.i = load atomic volatile i8, ptr %.0 monotonic, align 1
  %i.j = and i8 %i.i, 5
  %.not10 = icmp eq i8 %i.j, 0
  br i1 %.not10, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.k = tail call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #26 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call noundef i64 %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i8 noundef signext 88, ptr noundef nonnull %.0, ptr noundef nonnull @.str.211, ptr noundef null, i64 noundef 0, i64 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %3, i32 noundef 0) #26, !inline_history !7
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i: ; preds = %bb.d
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.q) #26, !inline_history !8
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.d, %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i
  %i.u = load ptr, ptr %3, align 16               ; 3 uses
  %.not.i.1 = icmp eq ptr %i.u, null
  br i1 %.not.i.1, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1: ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.u) #26, !inline_history !8
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1: ; preds = %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1, %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %.0, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr @.str.211, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %i.o, ptr %i.aa, align 8
  store ptr %i.y, ptr %4, align 8
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1, %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %0, ptr %2, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %1, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %.not40.i.i = icmp eq ptr %i.af, null
  br i1 %.not40.i.i, label %.thread, label %.lr.ph45.i.i

.thread:                                          ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.k

.lr.ph45.i.i:                                     ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  br label %.lr.ph45.split.us.i.i

.lr.ph45.split.us.i.i:                            ; preds = %._crit_edge.us.i.i, %.lr.ph45.i.i
  %.043.us.i.i = phi ptr [ %i.ay, %._crit_edge.us.i.i ], [ %i.af, %.lr.ph45.i.i ] ; 3 uses
  %.02542.us.i.i = phi i32 [ %.126.lcssa.us.i.i, %._crit_edge.us.i.i ], [ 0, %.lr.ph45.i.i ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.043.us.i.i, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.043.us.i.i, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %i.al = icmp eq ptr %i.ai, %i.ak
  br i1 %i.al, label %._crit_edge.us.i.i, label %.lr.ph.us.i.i

.lr.ph.us.i.i:                                    ; preds = %.lr.ph45.split.us.i.i, %bb.i
  %.12637.us.i.i = phi i32 [ %.3.us.i.i, %bb.i ], [ %.02542.us.i.i, %.lr.ph45.split.us.i.i ] ; 3 uses
  %.sroa.033.036.us.i.i = phi ptr [ %i.aw, %bb.i ], [ %i.ai, %.lr.ph45.split.us.i.i ] ; 3 uses
  %i.am = load i32, ptr %.sroa.033.036.us.i.i, align 4 ; 2 uses
  %i.an = lshr i32 %i.am, 29                      ; 2 uses
  %.not32.us.i.i = icmp eq i32 %i.an, 6
  br i1 %.not32.us.i.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.us.i.i
  %i.ao = trunc nuw nsw i32 %i.an to i8
  %i.ap = and i32 %i.am, 536870911
  %i.aq = load i64, ptr %i.ag, align 8
  %i.ar = zext nneg i32 %i.ap to i64
  %i.as = add i64 %i.aq, %i.ar
  %i.at = call noundef i32 @_ZZN2v88internal44YoungGenerationRememberedSetsMarkingWorklist11MarkingItem17MarkTypedPointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EEEEEvPT_ENKUlNS0_8SlotTypeEmE_clES9_m(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 noundef zeroext %i.ao, i64 noundef %i.as)
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 -1073741824, ptr %.sroa.033.036.us.i.i, align 4
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.av = add nsw i32 %.12637.us.i.i, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %.lr.ph.us.i.i
  %.3.us.i.i = phi i32 [ %.12637.us.i.i, %.lr.ph.us.i.i ], [ %i.av, %bb.h ], [ %.12637.us.i.i, %bb.g ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.033.036.us.i.i, i64 4 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.ak
  br i1 %i.ax, label %._crit_edge.us.i.i, label %.lr.ph.us.i.i

._crit_edge.us.i.i:                               ; preds = %bb.i, %.lr.ph45.split.us.i.i
  %.126.lcssa.us.i.i = phi i32 [ %.02542.us.i.i, %.lr.ph45.split.us.i.i ], [ %.3.us.i.i, %bb.i ] ; 2 uses
  %i.ay = load ptr, ptr %.043.us.i.i, align 8     ; 2 uses
  %.not.us.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.us.i.i, label %_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE0EE12IterateTypedIZNS0_44YoungGenerationRememberedSetsMarkingWorklist11MarkingItem17MarkTypedPointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EEEEEvPT_EUlNS0_8SlotTypeEmE_EEiPNS0_12TypedSlotSetESB_.exit, label %.lr.ph45.split.us.i.i, !llvm.loop !328

_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE0EE12IterateTypedIZNS0_44YoungGenerationRememberedSetsMarkingWorklist11MarkingItem17MarkTypedPointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EEEEEvPT_EUlNS0_8SlotTypeEmE_EEiPNS0_12TypedSlotSetESB_.exit: ; preds = %._crit_edge.us.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.az = icmp eq i32 %.126.lcssa.us.i.i, 0
  br i1 %i.az, label %bb.j, label %bb.m

bb.j:                                             ; preds = %_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE0EE12IterateTypedIZNS0_44YoungGenerationRememberedSetsMarkingWorklist11MarkingItem17MarkTypedPointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EEEEEvPT_EUlNS0_8SlotTypeEmE_EEiPNS0_12TypedSlotSetESB_.exit
  %.pre = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ba = icmp eq ptr %.pre, null
  br i1 %i.ba, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.thread, %bb.j
  %i.bb = phi ptr [ %i.ac, %.thread ], [ %.pre, %bb.j ] ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(32) %i.bb) #26
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr null, ptr %i.ab, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN2v88internal13RememberedSetILNS0_17RememberedSetTypeE0EE12IterateTypedIZNS0_44YoungGenerationRememberedSetsMarkingWorklist11MarkingItem17MarkTypedPointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EEEEEvPT_EUlNS0_8SlotTypeEmE_EEiPNS0_12TypedSlotSetESB_.exit
  %i.bf = load ptr, ptr %4, align 8
  %.not.i11 = icmp eq ptr %i.bf, null
  br i1 %.not.i11, label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = load atomic volatile i8, ptr %i.bh monotonic, align 1
  %.not1.i = icmp eq i8 %i.bi, 0
  br i1 %.not1.i, label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bj = call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #26 ; 2 uses
  %i.bk = load ptr, ptr %i.bg, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bo = load i64, ptr %i.bn, align 8
  %i.bp = load ptr, ptr %i.bj, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef %i.bk, ptr noundef %i.bm, i64 noundef %i.bo) #26, !inline_history !9
  br label %_ZN2v88internal7tracing12ScopedTracerD2Ev.exit

_ZN2v88internal7tracing12ScopedTracerD2Ev.exit:   ; preds = %bb.m, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN4heap4base12BasicSlotSetILm8EE7IterateILNS2_10AccessModeE1EZN2v88internal7SlotSet7IterateILNS6_10AccessModeE1EZNS6_44YoungGenerationRememberedSetsMarkingWorklist11MarkingItem19MarkUntypedPointersINS6_29YoungGenerationMarkingVisitorILNS6_36YoungGenerationMarkingVisitationModeE1EEEEEvPT_EUlNS6_19FullMaybeObjectSlotEE_EEmmmmT0_NS2_15EmptyBucketModeEEUlmE_ZNS8_ILS9_1ESJ_EEmmmmSK_SL_EUlmE0_EEmmmmSK_T1_(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr %4, ptr noundef byval(%class.anon.1477) align 8 %5) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = icmp ult i64 %2, %3
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.v, %bb.a
  %.044.lcssa = phi i64 [ 0, %bb.a ], [ %.145, %bb.v ]
  ret i64 %.044.lcssa

bb.b:                                             ; preds = %.lr.ph, %bb.v
  %.04369 = phi i64 [ %2, %.lr.ph ], [ %i.co, %bb.v ] ; 4 uses
  %.04468 = phi i64 [ 0, %.lr.ph ], [ %.145, %bb.v ] ; 2 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.04369
  %i.e = load atomic volatile i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = inttoptr i64 %i.e to ptr
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.v, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = shl i64 %.04369, 10
  br label %bb.e

bb.d:                                             ; preds = %bb.s
  %i.h = icmp eq i64 %.3, 0
  %i.i = load i32, ptr %i.c, align 8
  %i.j = icmp eq i32 %i.i, 0
  %or.cond = select i1 %i.h, i1 %i.j, i1 false
  br i1 %or.cond, label %bb.t, label %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE1EZNS0_44YoungGenerationRememberedSetsMarkingWorklist11MarkingItem19MarkUntypedPointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EEEEEvPT_EUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE0_clEm.exit

bb.e:                                             ; preds = %bb.c, %bb.s
  %indvars.iv = phi i64 [ 0, %bb.c ], [ %indvars.iv.next, %bb.s ] ; 2 uses
  %.04066 = phi i64 [ %i.g, %bb.c ], [ %i.ch, %bb.s ] ; 2 uses
  %.04165 = phi i64 [ 0, %bb.c ], [ %.3, %bb.s ]  ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv ; 3 uses
  %i.l = load i32, ptr %i.k, align 4              ; 3 uses
  %.not48 = icmp eq i32 %i.l, 0
  br i1 %.not48, label %bb.s, label %.preheader

.preheader:                                       ; preds = %bb.e, %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE1EZNS0_44YoungGenerationRememberedSetsMarkingWorklist11MarkingItem19MarkUntypedPointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EEEEEvPT_EUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit
  %.064 = phi i32 [ %.1, %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE1EZNS0_44YoungGenerationRememberedSetsMarkingWorklist11MarkingItem19MarkUntypedPointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EEEEEvPT_EUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit ], [ 0, %bb.e ]
  %.03863 = phi i32 [ %i.cc, %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE1EZNS0_44YoungGenerationRememberedSetsMarkingWorklist11MarkingItem19MarkUntypedPointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EEEEEvPT_EUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit ], [ %i.l, %bb.e ] ; 3 uses
  %.14262 = phi i64 [ %.2, %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE1EZNS0_44YoungGenerationRememberedSetsMarkingWorklist11MarkingItem19MarkUntypedPointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EEEEEvPT_EUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit ], [ %.04165, %bb.e ]
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.03863, i1 true) ; 2 uses
  %i.n = shl nuw i32 1, %i.m                      ; 4 uses
  %i.o = zext nneg i32 %i.m to i64
  %i.p = or disjoint i64 %.04066, %i.o
  %i.q = shl i64 %i.p, 3
  %i.r = add i64 %i.q, %1
  %i.s = load ptr, ptr %i.b, align 8
  %i.t = inttoptr i64 %i.r to ptr
  %i.u = load atomic volatile i64, ptr %i.t monotonic, align 8 ; 6 uses
  %i.v = trunc i64 %i.u to i1
  %i.w = and i64 %i.u, 4294967295
  %i.x = icmp ne i64 %i.w, 3
  %i.y = and i1 %i.x, %i.v
  br i1 %i.y, label %bb.f, label %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE1EZNS0_44YoungGenerationRememberedSetsMarkingWorklist11MarkingItem19MarkUntypedPointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EEEEEvPT_EUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit

bb.f:                                             ; preds = %.preheader
  %i.z = and i64 %i.u, -3
  %i.aa = and i64 %i.u, -262144
  %i.ab = inttoptr i64 %i.aa to ptr               ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.ab, align 262144
  %i.ac = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 24
  %.not.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i, label %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE1EZNS0_44YoungGenerationRememberedSetsMarkingWorklist11MarkingItem19MarkUntypedPointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EEEEEvPT_EUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 80
  %i.ag = load atomic ptr, ptr %i.af seq_cst, align 8
  %.not.i.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i.i, label %bb.h, label %_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i, !prof !27

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.24) #27
  unreachable

_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i: ; preds = %bb.g
  %i.ah = ptrtoint ptr %i.ae to i64
  %i.ai = add i64 %i.ah, 336
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = lshr i64 %i.u, 3
  %i.al = and i64 %i.ak, 63
  %i.am = shl nuw i64 1, %i.al                    ; 2 uses
  %i.an = lshr i64 %i.u, 9
  %i.ao = and i64 %i.an, 511
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ao ; 2 uses
  %i.aq = load atomic volatile i64, ptr %i.ap monotonic, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i
  %.0.i.i.i.i.i = phi i64 [ %i.aq, %_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i ], [ %i.au, %bb.j ] ; 3 uses
  %i.ar = and i64 %.0.i.i.i.i.i, %i.am
  %.not16.not.not.i.not.not.not.i.i.i.i = icmp eq i64 %i.ar, 0
  br i1 %.not16.not.not.i.not.not.not.i.i.i.i, label %bb.j, label %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE1EZNS0_44YoungGenerationRememberedSetsMarkingWorklist11MarkingItem19MarkUntypedPointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EEEEEvPT_EUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit

bb.j:                                             ; preds = %bb.i
  %i.as = or i64 %.0.i.i.i.i.i, %i.am
  %i.at = cmpxchg volatile ptr %i.ap, i64 %.0.i.i.i.i.i, i64 %i.as monotonic monotonic, align 8 ; 2 uses
  %i.au = extractvalue { i64, i1 } %i.at, 0
  %.not.i.i2.i.i.i = extractvalue { i64, i1 } %i.at, 1
  br i1 %.not.i.i2.i.i.i, label %bb.k, label %bb.i, !llvm.loop !5

bb.k:                                             ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %i.s, i64 2072
  %i.aw = load ptr, ptr %i.av, align 8            ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8            ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 2
  %i.ba = load i16, ptr %i.az, align 2            ; 2 uses
  %i.bb = load i16, ptr %i.ay, align 2
  %i.bc = icmp eq i16 %i.ba, %i.bb
  br i1 %i.bc, label %bb.l, label %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i, !prof !27

bb.l:                                             ; preds = %bb.k
  %i.bd = tail call noundef ptr @_ZN4heap4base8internal11SegmentBase25GetSentinelSegmentAddressEv() #26
  %.not.i = icmp eq ptr %i.ay, %i.bd
  br i1 %.not.i, label %_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = load ptr, ptr %i.aw, align 8, !nonnull !29, !align !30 ; 4 uses
  %i.bf = load ptr, ptr %i.ax, align 8            ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(24) %i.be) #26
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.bh, ptr %i.bi, align 8
  store ptr %i.bf, ptr %i.bg, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bk = atomicrmw add ptr %i.bj, i64 1 monotonic, align 8 ; 0 uses
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(24) %i.be) #26
  br label %_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv.exit

_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv.exit: ; preds = %bb.l, %bb.m
  %i.bl = load i8, ptr @_ZN4heap4base12WorklistBase18predictable_order_E, align 1, !range !28, !noundef !29
  %i.bm = trunc nuw i8 %i.bl to i1
  %i.bn = tail call noalias noundef dereferenceable_or_null(528) ptr @malloc(i64 noundef 528) #31 ; 7 uses
  br i1 %i.bm, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv.exit
  %i.bo = tail call noundef i64 @malloc_usable_size(ptr noundef %i.bn) #26
  %i.bp = add i64 %i.bo, 524272
  %i.bq = lshr i64 %i.bp, 3
  %i.br = trunc i64 %i.bq to i16
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv.exit
  %.sroa.6.0.i.i = phi i16 [ %i.br, %bb.n ], [ 64, %_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv.exit ]
  %.not.i.i51 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i51, label %bb.p, label %_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local10NewSegmentEv.exit

bb.p:                                             ; preds = %bb.o
  tail call void @_ZN2v84base8FatalOOMENS0_7OOMTypeEPKc(i32 noundef 1, ptr noundef nonnull @.str.23) #27
  unreachable

_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local10NewSegmentEv.exit: ; preds = %bb.o
  store i16 %.sroa.6.0.i.i, ptr %i.bn, align 2
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 2 ; 2 uses
  store i16 0, ptr %i.bs, align 2
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr null, ptr %i.bt, align 8
  store ptr %i.bn, ptr %i.ax, align 8
  %.pre.i.i.i = load i16, ptr %i.bs, align 2
  br label %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i

_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i: ; preds = %_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local10NewSegmentEv.exit, %bb.k
  %i.bu = phi i16 [ %i.ba, %bb.k ], [ %.pre.i.i.i, %_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local10NewSegmentEv.exit ] ; 2 uses
  %i.bv = phi ptr [ %i.ay, %bb.k ], [ %i.bn, %_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local10NewSegmentEv.exit ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 2
  %i.bx = add i16 %i.bu, 1
  store i16 %i.bx, ptr %i.bw, align 2
  %i.by = zext i16 %i.bu to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.by
  store i64 %i.z, ptr %i.ca, align 8
  br label %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE1EZNS0_44YoungGenerationRememberedSetsMarkingWorklist11MarkingItem19MarkUntypedPointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EEEEEvPT_EUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit

_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE1EZNS0_44YoungGenerationRememberedSetsMarkingWorklist11MarkingItem19MarkUntypedPointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EEEEEvPT_EUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit: ; preds = %bb.i, %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i, %bb.f, %.preheader
  %.sink = phi i64 [ 0, %bb.f ], [ 0, %.preheader ], [ 1, %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i ], [ 1, %bb.i ]
  %i.cb = phi i32 [ %i.n, %bb.f ], [ %i.n, %.preheader ], [ 0, %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit.i.i ], [ 0, %bb.i ]
  %.2 = add i64 %.14262, %.sink                   ; 3 uses
  %.1 = or i32 %i.cb, %.064                       ; 3 uses
  %i.cc = xor i32 %i.n, %.03863
  %.not49 = icmp eq i32 %i.n, %.03863
  br i1 %.not49, label %bb.q, label %.preheader, !llvm.loop !329

bb.q:                                             ; preds = %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE1EZNS0_44YoungGenerationRememberedSetsMarkingWorklist11MarkingItem19MarkUntypedPointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EEEEEvPT_EUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE_clEm.exit
  %i.cd = and i32 %.1, %i.l
  %.not50 = icmp eq i32 %i.cd, 0
  br i1 %.not50, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ce = xor i32 %.1, -1
  %i.cf = load i32, ptr %i.k, align 4
  %i.cg = and i32 %i.cf, %i.ce
  store i32 %i.cg, ptr %i.k, align 4
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.e
  %.3 = phi i64 [ %.04165, %bb.e ], [ %.2, %bb.r ], [ %.2, %bb.q ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ch = add i64 %.04066, 32
  %exitcond.not = icmp eq i64 %indvars.iv.next, 32
  br i1 %exitcond.not, label %bb.d, label %bb.e, !llvm.loop !330

bb.t:                                             ; preds = %bb.d
  %i.ci = load ptr, ptr %5, align 8
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %.04369 ; 2 uses
  %i.ck = load atomic volatile i64, ptr %i.cj acquire, align 8 ; 2 uses
  store atomic volatile i64 0, ptr %i.cj release, align 8
  %i.cl = icmp eq i64 %i.ck, 0
  br i1 %i.cl, label %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE1EZNS0_44YoungGenerationRememberedSetsMarkingWorklist11MarkingItem19MarkUntypedPointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EEEEEvPT_EUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE0_clEm.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cm = inttoptr i64 %i.ck to ptr
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cm, i64 noundef 128) #29
  br label %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE1EZNS0_44YoungGenerationRememberedSetsMarkingWorklist11MarkingItem19MarkUntypedPointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EEEEEvPT_EUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE0_clEm.exit

_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE1EZNS0_44YoungGenerationRememberedSetsMarkingWorklist11MarkingItem19MarkUntypedPointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EEEEEvPT_EUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE0_clEm.exit: ; preds = %bb.u, %bb.t, %bb.d
  %i.cn = add i64 %.3, %.04468
  br label %bb.v

bb.v:                                             ; preds = %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE1EZNS0_44YoungGenerationRememberedSetsMarkingWorklist11MarkingItem19MarkUntypedPointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EEEEEvPT_EUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE0_clEm.exit, %bb.b
  %.145 = phi i64 [ %i.cn, %_ZZN2v88internal7SlotSet7IterateILNS0_10AccessModeE1EZNS0_44YoungGenerationRememberedSetsMarkingWorklist11MarkingItem19MarkUntypedPointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EEEEEvPT_EUlNS0_19FullMaybeObjectSlotEE_EEmmmmT0_N4heap4base12BasicSlotSetILm8EE15EmptyBucketModeEENKUlmE0_clEm.exit ], [ %.04468, %bb.b ] ; 2 uses
  %i.co = add nuw i64 %.04369, 1                  ; 2 uses
  %exitcond72.not = icmp eq i64 %i.co, %3
  br i1 %exitcond72.not, label %._crit_edge, label %bb.b, !llvm.loop !331
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZZN2v88internal44YoungGenerationRememberedSetsMarkingWorklist11MarkingItem17MarkTypedPointersINS0_29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EEEEEvPT_ENKUlNS0_8SlotTypeEmE_clES9_m(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext %1, i64 noundef %2) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %.sroa.0 = alloca i64, align 8                  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  switch i8 %1, label %bb.g [
    i8 2, label %bb.b
    i8 5, label %bb.d
    i8 1, label %_ZN2v88internal9RelocInfo13target_objectENS0_16PtrComprCageBaseE.exit14.i
    i8 0, label %_ZN2v88internal9RelocInfo13target_objectENS0_16PtrComprCageBaseE.exit.i
    i8 4, label %bb.e
    i8 3, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = inttoptr i64 %2 to ptr
  %.0.copyload.i.i.i = load i32, ptr %i.a, align 1
  %i.b = sext i32 %.0.copyload.i.i.i to i64
  %i.c = add i64 %2, 4
  %i.d = add i64 %i.c, %i.b                       ; 3 uses
  %i.e = tail call noundef ptr @_ZN2v88internal7Isolate23CurrentEmbeddedBlobCodeEv() #26
  %i.f = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.g = tail call noundef i32 @_ZN2v88internal7Isolate27CurrentEmbeddedBlobCodeSizeEv() #26
  %i.h = zext i32 %i.g to i64
  %i.i = add i64 %i.h, %i.f
  %i.j = icmp uge i64 %i.d, %i.f
  %i.k = icmp ult i64 %i.d, %i.i
  %.not9.i.i = and i1 %i.j, %i.k
  br i1 %.not9.i.i, label %bb.c, label %_ZN2v88internal17InstructionStream17FromTargetAddressEm.exit.i, !prof !27

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.26) #27
  unreachable

_ZN2v88internal17InstructionStream17FromTargetAddressEm.exit.i: ; preds = %bb.b
  %i.l = add i64 %i.d, -31
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.m = inttoptr i64 %2 to ptr
  %i.n = load i64, ptr %i.m, align 8
  %i.o = add i64 %i.n, -31
  br label %bb.h

_ZN2v88internal9RelocInfo13target_objectENS0_16PtrComprCageBaseE.exit14.i: ; preds = %bb.a
  %i.p = inttoptr i64 %2 to ptr
  %.0.copyload.i17.i = load i64, ptr %i.p, align 1
  br label %bb.h

_ZN2v88internal9RelocInfo13target_objectENS0_16PtrComprCageBaseE.exit.i: ; preds = %bb.a
  %i.q = inttoptr i64 %2 to ptr
  %.0.copyload.i19.i = load i64, ptr %i.q, align 1
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.22) #27
  unreachable

bb.f:                                             ; preds = %bb.a
  %i.r = inttoptr i64 %2 to ptr
  %i.s = load i64, ptr %i.r, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.22) #27
  unreachable

bb.h:                                             ; preds = %bb.f, %_ZN2v88internal9RelocInfo13target_objectENS0_16PtrComprCageBaseE.exit.i, %_ZN2v88internal9RelocInfo13target_objectENS0_16PtrComprCageBaseE.exit14.i, %bb.d, %_ZN2v88internal17InstructionStream17FromTargetAddressEm.exit.i
  %.sroa.030.0.i = phi i64 [ %i.l, %_ZN2v88internal17InstructionStream17FromTargetAddressEm.exit.i ], [ %i.o, %bb.d ], [ %.0.copyload.i17.i, %_ZN2v88internal9RelocInfo13target_objectENS0_16PtrComprCageBaseE.exit14.i ], [ %.0.copyload.i19.i, %_ZN2v88internal9RelocInfo13target_objectENS0_16PtrComprCageBaseE.exit.i ], [ %i.s, %bb.f ]
  store i64 %.sroa.030.0.i, ptr %.sroa.0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  %.sroa.0.0..sroa.0.0..sroa.0.0. = load atomic volatile i64, ptr %.sroa.0 monotonic, align 8 ; 6 uses
  %i.v = trunc i64 %.sroa.0.0..sroa.0.0..sroa.0.0. to i1
  %i.w = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0., 4294967295
  %i.x = icmp ne i64 %i.w, 3
  %i.y = and i1 %i.x, %i.v
  br i1 %i.y, label %bb.i, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE33VisitObjectViaSlotInRememberedSetINS0_19FullMaybeObjectSlotEEEbT_.exit

bb.i:                                             ; preds = %bb.h
  %i.z = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0., -3
  %i.aa = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0., -262144
  %i.ab = inttoptr i64 %i.aa to ptr               ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.ab, align 262144
  %i.ac = and i64 %.sroa.0.0.copyload.i.i.i.i, 24
  %.not = icmp eq i64 %i.ac, 0
  br i1 %.not, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE33VisitObjectViaSlotInRememberedSetINS0_19FullMaybeObjectSlotEEEbT_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 80
  %i.ag = load atomic ptr, ptr %i.af seq_cst, align 8
  %.not.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i, label %bb.k, label %_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i, !prof !27

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.24) #27
  unreachable

_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i: ; preds = %bb.j
  %i.ah = ptrtoint ptr %i.ae to i64
  %i.ai = add i64 %i.ah, 336
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0., 3
  %i.al = and i64 %i.ak, 63
  %i.am = shl nuw i64 1, %i.al                    ; 2 uses
  %i.an = lshr i64 %.sroa.0.0..sroa.0.0..sroa.0.0., 9
  %i.ao = and i64 %i.an, 511
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ao ; 2 uses
  %i.aq = load atomic volatile i64, ptr %i.ap monotonic, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i
  %.0.i.i.i = phi i64 [ %i.aq, %_ZN2v88internal7MarkBit4FromENS0_6TaggedINS0_10HeapObjectEEE.exit.i ], [ %i.au, %bb.m ] ; 3 uses
  %i.ar = and i64 %.0.i.i.i, %i.am
  %.not16.not.not.i.not.not.not.i.i = icmp eq i64 %i.ar, 0
  br i1 %.not16.not.not.i.not.not.not.i.i, label %bb.m, label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE33VisitObjectViaSlotInRememberedSetINS0_19FullMaybeObjectSlotEEEbT_.exit

bb.m:                                             ; preds = %bb.l
  %i.as = or i64 %.0.i.i.i, %i.am
  %i.at = cmpxchg volatile ptr %i.ap, i64 %.0.i.i.i, i64 %i.as monotonic monotonic, align 8 ; 2 uses
  %i.au = extractvalue { i64, i1 } %i.at, 0
  %.not.i.i2.i = extractvalue { i64, i1 } %i.at, 1
  br i1 %.not.i.i2.i, label %bb.n, label %bb.l, !llvm.loop !5

bb.n:                                             ; preds = %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 2072
  %i.aw = load ptr, ptr %i.av, align 8            ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8            ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 2
  %i.ba = load i16, ptr %i.az, align 2            ; 2 uses
  %i.bb = load i16, ptr %i.ay, align 2
  %i.bc = icmp eq i16 %i.ba, %i.bb
  br i1 %i.bc, label %bb.o, label %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit, !prof !27

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local18PublishPushSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aw)
  %i.bd = tail call noundef ptr @_ZNK4heap4base8WorklistIN2v88internal6TaggedINS3_10HeapObjectEEELt64EE5Local10NewSegmentEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aw) ; 3 uses
  store ptr %i.bd, ptr %i.ax, align 8
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 2
  %.pre.i = load i16, ptr %.phi.trans.insert.i, align 2
  br label %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit

_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %bb.n, %bb.o
  %i.be = phi i16 [ %i.ba, %bb.n ], [ %.pre.i, %bb.o ] ; 2 uses
  %i.bf = phi ptr [ %i.ay, %bb.n ], [ %i.bd, %bb.o ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 2
  %i.bh = add i16 %i.be, 1
  store i16 %i.bh, ptr %i.bg, align 2
  %i.bi = zext i16 %i.be to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bi
  store i64 %i.z, ptr %i.bk, align 8
  br label %_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE33VisitObjectViaSlotInRememberedSetINS0_19FullMaybeObjectSlotEEEbT_.exit

_ZN2v88internal29YoungGenerationMarkingVisitorILNS0_36YoungGenerationMarkingVisitationModeE1EE33VisitObjectViaSlotInRememberedSetINS0_19FullMaybeObjectSlotEEEbT_.exit: ; preds = %bb.l, %bb.i, %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit, %bb.h
  %not..i = phi i32 [ 0, %_ZN2v88internal16MarkingWorklists5Local4PushENS0_6TaggedINS0_10HeapObjectEEE.exit ], [ 1, %bb.i ], [ 1, %bb.h ], [ 0, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  ret i32 %not..i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal17ConcurrentMarking12JobTaskMajorD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal17ConcurrentMarking12JobTaskMajor3RunEPNS_11JobDelegateE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %2 = alloca [2 x %"class.std::unique_ptr.1143"], align 16 ; 6 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %3 = alloca %"class.v8::internal::tracing::ScopedTracer", align 8 ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = add i64 %i.h, -55464
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN2v88internal18g_current_isolate_E)
  %i.l = load ptr, ptr %i.k, align 8
  tail call void @_ZN2v88internal7Isolate10SetCurrentEPS1_(ptr noundef %i.j) #26
  %i.m = load ptr, ptr %1, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef zeroext i1 %i.o(ptr noundef nonnull align 8 dereferenceable(8) %1) #26
  %i.q = load ptr, ptr %i.d, align 8              ; 2 uses
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.05.0.copyload = load i32, ptr %i.r, align 4
end_hunk_16
begin_hunk_17_@llvm.smin.i32
!46 = distinct !{!46, !44, !"_ZSt19__relocate_object_aISt10unique_ptrIN2v88internal17ConcurrentMarking9TaskStateESt14default_deleteIS4_EES7_SaIS7_EEvPT_PT0_RT1_: argument 1"}
!47 = distinct !{!47, i1 false, !"LVerDomain"}
!48 = distinct !{!48, !47}
!49 = distinct !{!49, !47}
!50 = distinct !{!50, !26, !57, !58}
!51 = distinct !{!51, !26, !57}
!52 = distinct !{!52, !26}
!53 = !{!35}
!54 = !{!36}
!55 = !{!36, !38}
!56 = !{!35, !39}
!57 = !{!"llvm.loop.isvectorized", i32 1}
!58 = !{!"llvm.loop.unroll.runtime.disable"}
!59 = !{!43}
!60 = !{!45}
!61 = !{!46}
!62 = !{!46, !48}
!63 = !{!45, !49}
!64 = distinct !{!64, !26}
!65 = distinct !{!65, !26}
!66 = distinct !{!66, !26}
!67 = distinct !{null, null, null, ptr @_ZN2v88internal13ObjectVisitor22VisitCustomWeakPointerENS0_6TaggedINS0_10HeapObjectEEENS0_14FullObjectSlotE}
!68 = distinct !{null, null, ptr @_ZN2v88internal13ObjectVisitor22VisitCustomWeakPointerENS0_6TaggedINS0_10HeapObjectEEENS0_14FullObjectSlotE}
!69 = distinct !{!69, !26}
!70 = distinct !{null, null, ptr @_ZN2v88internal13ObjectVisitor22VisitCustomWeakPointerENS0_6TaggedINS0_10HeapObjectEEENS0_14FullObjectSlotE}
!71 = distinct !{null, null, ptr @_ZN2v88internal13ObjectVisitor22VisitCustomWeakPointerENS0_6TaggedINS0_10HeapObjectEEENS0_14FullObjectSlotE}
!72 = distinct !{!72, i1 false, !"_ZN2v88internal41TqRuntimeFieldSliceScopeInfoDependentCodeENS0_6TaggedINS0_9ScopeInfoEEE"}
!73 = distinct !{!73, !72, !"_ZN2v88internal41TqRuntimeFieldSliceScopeInfoDependentCodeENS0_6TaggedINS0_9ScopeInfoEEE: argument 0"}
!74 = distinct !{!74, i1 false, !"_ZN2v88internal43TqRuntimeFieldSliceScopeInfoModuleVariablesENS0_6TaggedINS0_9ScopeInfoEEE"}
!75 = distinct !{!75, !74, !"_ZN2v88internal43TqRuntimeFieldSliceScopeInfoModuleVariablesENS0_6TaggedINS0_9ScopeInfoEEE: argument 0"}
!76 = distinct !{!76, i1 false, !"_ZN2v88internal38TqRuntimeFieldSliceScopeInfoModuleInfoENS0_6TaggedINS0_9ScopeInfoEEE"}
!77 = distinct !{!77, !76, !"_ZN2v88internal38TqRuntimeFieldSliceScopeInfoModuleInfoENS0_6TaggedINS0_9ScopeInfoEEE: argument 0"}
!78 = distinct !{!78, i1 false, !"_ZN2v88internal42TqRuntimeFieldSliceScopeInfoOuterScopeInfoENS0_6TaggedINS0_9ScopeInfoEEE"}
!79 = distinct !{!79, !78, !"_ZN2v88internal42TqRuntimeFieldSliceScopeInfoOuterScopeInfoENS0_6TaggedINS0_9ScopeInfoEEE: argument 0"}
!80 = distinct !{!80, i1 false, !"_ZN2v88internal48TqRuntimeFieldSliceScopeInfoInferredFunctionNameENS0_6TaggedINS0_9ScopeInfoEEE"}
!81 = distinct !{!81, !80, !"_ZN2v88internal48TqRuntimeFieldSliceScopeInfoInferredFunctionNameENS0_6TaggedINS0_9ScopeInfoEEE: argument 0"}
!82 = distinct !{!82, i1 false, !"_ZN2v88internal48TqRuntimeFieldSliceScopeInfoFunctionVariableInfoENS0_6TaggedINS0_9ScopeInfoEEE"}
!83 = distinct !{!83, !82, !"_ZN2v88internal48TqRuntimeFieldSliceScopeInfoFunctionVariableInfoENS0_6TaggedINS0_9ScopeInfoEEE: argument 0"}
!84 = distinct !{!84, i1 false, !"_ZN2v88internal50TqRuntimeFieldSliceScopeInfoSavedClassVariableInfoENS0_6TaggedINS0_9ScopeInfoEEE"}
!85 = distinct !{!85, !84, !"_ZN2v88internal50TqRuntimeFieldSliceScopeInfoSavedClassVariableInfoENS0_6TaggedINS0_9ScopeInfoEEE: argument 0"}
!86 = distinct !{!86, i1 false, !"_ZN2v88internal45TqRuntimeFieldSliceScopeInfoContextLocalInfosENS0_6TaggedINS0_9ScopeInfoEEE"}
!87 = distinct !{!87, !86, !"_ZN2v88internal45TqRuntimeFieldSliceScopeInfoContextLocalInfosENS0_6TaggedINS0_9ScopeInfoEEE: argument 0"}
!88 = distinct !{!88, i1 false, !"_ZN2v88internal54TqRuntimeFieldSliceScopeInfoContextLocalNamesHashtableENS0_6TaggedINS0_9ScopeInfoEEE"}
!89 = distinct !{!89, !88, !"_ZN2v88internal54TqRuntimeFieldSliceScopeInfoContextLocalNamesHashtableENS0_6TaggedINS0_9ScopeInfoEEE: argument 0"}
!90 = distinct !{!90, i1 false, !"_ZN2v88internal45TqRuntimeFieldSliceScopeInfoContextLocalNamesENS0_6TaggedINS0_9ScopeInfoEEE"}
!91 = distinct !{!91, !90, !"_ZN2v88internal45TqRuntimeFieldSliceScopeInfoContextLocalNamesENS0_6TaggedINS0_9ScopeInfoEEE: argument 0"}
!92 = distinct !{!92, i1 false, !"_ZN2v88internal47TqRuntimeFieldSliceScopeInfoModuleVariableCountENS0_6TaggedINS0_9ScopeInfoEEE"}
!93 = distinct !{!93, !92, !"_ZN2v88internal47TqRuntimeFieldSliceScopeInfoModuleVariableCountENS0_6TaggedINS0_9ScopeInfoEEE: argument 0"}
!94 = distinct !{!94, i1 false, !"_ZN2v88internal47TqRuntimeFieldSliceScopeInfoModuleVariableCountENS0_6TaggedINS0_9ScopeInfoEEE"}
!95 = distinct !{!95, !94, !"_ZN2v88internal47TqRuntimeFieldSliceScopeInfoModuleVariableCountENS0_6TaggedINS0_9ScopeInfoEEE: argument 0"}
!96 = distinct !{!96, !26}
!97 = distinct !{!97, !26}
!98 = distinct !{!98, !26}
!99 = !{!93, !91, !89, !87, !85, !83, !81, !79, !77, !75, !73}
!100 = !{!91, !89, !87, !85, !83, !81, !79, !77, !75, !73}
!101 = !{!85, !83, !81, !79, !77, !75, !73}
!102 = !{!83, !81, !79, !77, !75, !73}
!103 = !{!81, !79, !77, !75, !73}
!104 = !{!79, !77, !75, !73}
!105 = !{!77, !75, !73}
!106 = !{!75, !73}
!107 = !{!95, !75, !73}
!108 = !{!73}
!109 = !{!"branch_weights", i32 2146410443, i32 1073205}
!110 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!111 = distinct !{!111, !26}
!112 = distinct !{null}
!113 = distinct !{!113, i1 false, !"_ZN2v88internal41TqRuntimeFieldSliceScopeInfoDependentCodeENS0_6TaggedINS0_9ScopeInfoEEE"}
!114 = distinct !{!114, !113, !"_ZN2v88internal41TqRuntimeFieldSliceScopeInfoDependentCodeENS0_6TaggedINS0_9ScopeInfoEEE: argument 0"}
!115 = distinct !{!115, i1 false, !"_ZN2v88internal43TqRuntimeFieldSliceScopeInfoModuleVariablesENS0_6TaggedINS0_9ScopeInfoEEE"}
!116 = distinct !{!116, !115, !"_ZN2v88internal43TqRuntimeFieldSliceScopeInfoModuleVariablesENS0_6TaggedINS0_9ScopeInfoEEE: argument 0"}
!117 = distinct !{!117, i1 false, !"_ZN2v88internal38TqRuntimeFieldSliceScopeInfoModuleInfoENS0_6TaggedINS0_9ScopeInfoEEE"}
!118 = distinct !{!118, !117, !"_ZN2v88internal38TqRuntimeFieldSliceScopeInfoModuleInfoENS0_6TaggedINS0_9ScopeInfoEEE: argument 0"}
!119 = distinct !{!119, i1 false, !"_ZN2v88internal42TqRuntimeFieldSliceScopeInfoOuterScopeInfoENS0_6TaggedINS0_9ScopeInfoEEE"}
!120 = distinct !{!120, !119, !"_ZN2v88internal42TqRuntimeFieldSliceScopeInfoOuterScopeInfoENS0_6TaggedINS0_9ScopeInfoEEE: argument 0"}
!121 = distinct !{!121, i1 false, !"_ZN2v88internal48TqRuntimeFieldSliceScopeInfoInferredFunctionNameENS0_6TaggedINS0_9ScopeInfoEEE"}
!122 = distinct !{!122, !121, !"_ZN2v88internal48TqRuntimeFieldSliceScopeInfoInferredFunctionNameENS0_6TaggedINS0_9ScopeInfoEEE: argument 0"}
!123 = distinct !{!123, i1 false, !"_ZN2v88internal48TqRuntimeFieldSliceScopeInfoFunctionVariableInfoENS0_6TaggedINS0_9ScopeInfoEEE"}
!124 = distinct !{!124, !123, !"_ZN2v88internal48TqRuntimeFieldSliceScopeInfoFunctionVariableInfoENS0_6TaggedINS0_9ScopeInfoEEE: argument 0"}
!125 = distinct !{!125, i1 false, !"_ZN2v88internal50TqRuntimeFieldSliceScopeInfoSavedClassVariableInfoENS0_6TaggedINS0_9ScopeInfoEEE"}
!126 = distinct !{!126, !125, !"_ZN2v88internal50TqRuntimeFieldSliceScopeInfoSavedClassVariableInfoENS0_6TaggedINS0_9ScopeInfoEEE: argument 0"}
!127 = distinct !{!127, i1 false, !"_ZN2v88internal45TqRuntimeFieldSliceScopeInfoContextLocalInfosENS0_6TaggedINS0_9ScopeInfoEEE"}
!128 = distinct !{!128, !127, !"_ZN2v88internal45TqRuntimeFieldSliceScopeInfoContextLocalInfosENS0_6TaggedINS0_9ScopeInfoEEE: argument 0"}
!129 = distinct !{!129, i1 false, !"_ZN2v88internal54TqRuntimeFieldSliceScopeInfoContextLocalNamesHashtableENS0_6TaggedINS0_9ScopeInfoEEE"}
!130 = distinct !{!130, !129, !"_ZN2v88internal54TqRuntimeFieldSliceScopeInfoContextLocalNamesHashtableENS0_6TaggedINS0_9ScopeInfoEEE: argument 0"}
!131 = distinct !{!131, i1 false, !"_ZN2v88internal45TqRuntimeFieldSliceScopeInfoContextLocalNamesENS0_6TaggedINS0_9ScopeInfoEEE"}
!132 = distinct !{!132, !131, !"_ZN2v88internal45TqRuntimeFieldSliceScopeInfoContextLocalNamesENS0_6TaggedINS0_9ScopeInfoEEE: argument 0"}
!133 = distinct !{!133, i1 false, !"_ZN2v88internal47TqRuntimeFieldSliceScopeInfoModuleVariableCountENS0_6TaggedINS0_9ScopeInfoEEE"}
!134 = distinct !{!134, !133, !"_ZN2v88internal47TqRuntimeFieldSliceScopeInfoModuleVariableCountENS0_6TaggedINS0_9ScopeInfoEEE: argument 0"}
!135 = distinct !{!135, i1 false, !"_ZN2v88internal47TqRuntimeFieldSliceScopeInfoModuleVariableCountENS0_6TaggedINS0_9ScopeInfoEEE"}
!136 = distinct !{!136, !135, !"_ZN2v88internal47TqRuntimeFieldSliceScopeInfoModuleVariableCountENS0_6TaggedINS0_9ScopeInfoEEE: argument 0"}
!137 = distinct !{!137, !26}
!138 = distinct !{!138, !26}
!139 = distinct !{null}
!140 = distinct !{!140, i1 false, !"_ZN2v88internal41TqRuntimeFieldSliceScopeInfoDependentCodeENS0_6TaggedINS0_9ScopeInfoEEE"}
!141 = distinct !{!141, !140, !"_ZN2v88internal41TqRuntimeFieldSliceScopeInfoDependentCodeENS0_6TaggedINS0_9ScopeInfoEEE: argument 0"}
!142 = distinct !{!142, i1 false, !"_ZN2v88internal43TqRuntimeFieldSliceScopeInfoModuleVariablesENS0_6TaggedINS0_9ScopeInfoEEE"}
!143 = distinct !{!143, !142, !"_ZN2v88internal43TqRuntimeFieldSliceScopeInfoModuleVariablesENS0_6TaggedINS0_9ScopeInfoEEE: argument 0"}
!144 = distinct !{!144, i1 false, !"_ZN2v88internal38TqRuntimeFieldSliceScopeInfoModuleInfoENS0_6TaggedINS0_9ScopeInfoEEE"}
!145 = distinct !{!145, !144, !"_ZN2v88internal38TqRuntimeFieldSliceScopeInfoModuleInfoENS0_6TaggedINS0_9ScopeInfoEEE: argument 0"}
!146 = distinct !{!146, i1 false, !"_ZN2v88internal42TqRuntimeFieldSliceScopeInfoOuterScopeInfoENS0_6TaggedINS0_9ScopeInfoEEE"}
!147 = distinct !{!147, !146, !"_ZN2v88internal42TqRuntimeFieldSliceScopeInfoOuterScopeInfoENS0_6TaggedINS0_9ScopeInfoEEE: argument 0"}
!148 = distinct !{!148, i1 false, !"_ZN2v88internal48TqRuntimeFieldSliceScopeInfoInferredFunctionNameENS0_6TaggedINS0_9ScopeInfoEEE"}
!149 = distinct !{!149, !148, !"_ZN2v88internal48TqRuntimeFieldSliceScopeInfoInferredFunctionNameENS0_6TaggedINS0_9ScopeInfoEEE: argument 0"}
!150 = distinct !{!150, i1 false, !"_ZN2v88internal48TqRuntimeFieldSliceScopeInfoFunctionVariableInfoENS0_6TaggedINS0_9ScopeInfoEEE"}
!151 = distinct !{!151, !150, !"_ZN2v88internal48TqRuntimeFieldSliceScopeInfoFunctionVariableInfoENS0_6TaggedINS0_9ScopeInfoEEE: argument 0"}
!152 = distinct !{!152, i1 false, !"_ZN2v88internal50TqRuntimeFieldSliceScopeInfoSavedClassVariableInfoENS0_6TaggedINS0_9ScopeInfoEEE"}
!153 = distinct !{!153, !152, !"_ZN2v88internal50TqRuntimeFieldSliceScopeInfoSavedClassVariableInfoENS0_6TaggedINS0_9ScopeInfoEEE: argument 0"}
!154 = distinct !{!154, i1 false, !"_ZN2v88internal45TqRuntimeFieldSliceScopeInfoContextLocalInfosENS0_6TaggedINS0_9ScopeInfoEEE"}
!155 = distinct !{!155, !154, !"_ZN2v88internal45TqRuntimeFieldSliceScopeInfoContextLocalInfosENS0_6TaggedINS0_9ScopeInfoEEE: argument 0"}
!156 = distinct !{!156, i1 false, !"_ZN2v88internal54TqRuntimeFieldSliceScopeInfoContextLocalNamesHashtableENS0_6TaggedINS0_9ScopeInfoEEE"}
!157 = distinct !{!157, !156, !"_ZN2v88internal54TqRuntimeFieldSliceScopeInfoContextLocalNamesHashtableENS0_6TaggedINS0_9ScopeInfoEEE: argument 0"}
!158 = distinct !{!158, i1 false, !"_ZN2v88internal45TqRuntimeFieldSliceScopeInfoContextLocalNamesENS0_6TaggedINS0_9ScopeInfoEEE"}
!159 = distinct !{!159, !158, !"_ZN2v88internal45TqRuntimeFieldSliceScopeInfoContextLocalNamesENS0_6TaggedINS0_9ScopeInfoEEE: argument 0"}
!160 = distinct !{!160, i1 false, !"_ZN2v88internal47TqRuntimeFieldSliceScopeInfoModuleVariableCountENS0_6TaggedINS0_9ScopeInfoEEE"}
!161 = distinct !{!161, !160, !"_ZN2v88internal47TqRuntimeFieldSliceScopeInfoModuleVariableCountENS0_6TaggedINS0_9ScopeInfoEEE: argument 0"}
!162 = distinct !{!162, i1 false, !"_ZN2v88internal47TqRuntimeFieldSliceScopeInfoModuleVariableCountENS0_6TaggedINS0_9ScopeInfoEEE"}
!163 = distinct !{!163, !162, !"_ZN2v88internal47TqRuntimeFieldSliceScopeInfoModuleVariableCountENS0_6TaggedINS0_9ScopeInfoEEE: argument 0"}
!164 = distinct !{!164, !26}
!165 = distinct !{!165, !26}
!166 = !{!134, !132, !130, !128, !126, !124, !122, !120, !118, !116, !114}
!167 = !{!132, !130, !128, !126, !124, !122, !120, !118, !116, !114}
!168 = !{!126, !124, !122, !120, !118, !116, !114}
!169 = !{!124, !122, !120, !118, !116, !114}
!170 = !{!122, !120, !118, !116, !114}
!171 = !{!120, !118, !116, !114}
!172 = !{!118, !116, !114}
!173 = !{!116, !114}
!174 = !{!136, !116, !114}
!175 = !{!114}
!176 = !{!161, !159, !157, !155, !153, !151, !149, !147, !145, !143, !141}
!177 = !{!159, !157, !155, !153, !151, !149, !147, !145, !143, !141}
!178 = !{!153, !151, !149, !147, !145, !143, !141}
!179 = !{!151, !149, !147, !145, !143, !141}
!180 = !{!149, !147, !145, !143, !141}
!181 = !{!147, !145, !143, !141}
!182 = !{!145, !143, !141}
!183 = !{!143, !141}
!184 = !{!163, !143, !141}
!185 = !{!141}
!186 = distinct !{!186, i1 false, !"_ZSt11make_uniqueIN2v88internal17ConcurrentMarking12JobTaskMajorEJPS2_jNS0_4base7EnumSetINS1_13CodeFlushModeEiEEbEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!187 = distinct !{!187, !186, !"_ZSt11make_uniqueIN2v88internal17ConcurrentMarking12JobTaskMajorEJPS2_jNS0_4base7EnumSetINS1_13CodeFlushModeEiEEbEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!188 = distinct !{!188, i1 false, !"_ZN2v88Platform7PostJobENS_12TaskPriorityESt10unique_ptrINS_7JobTaskESt14default_deleteIS3_EENS_14SourceLocationE"}
!189 = distinct !{!189, !188, !"_ZN2v88Platform7PostJobENS_12TaskPriorityESt10unique_ptrINS_7JobTaskESt14default_deleteIS3_EENS_14SourceLocationE: argument 0"}
!190 = distinct !{!190, i1 false, !"_ZN2v88Platform9CreateJobENS_12TaskPriorityESt10unique_ptrINS_7JobTaskESt14default_deleteIS3_EENS_14SourceLocationE"}
!191 = distinct !{!191, !190, !"_ZN2v88Platform9CreateJobENS_12TaskPriorityESt10unique_ptrINS_7JobTaskESt14default_deleteIS3_EENS_14SourceLocationE: argument 0"}
!192 = distinct !{null, null}
!193 = distinct !{null, null, null, null}
!194 = distinct !{null}
!195 = distinct !{null, null, null, null, null}
!196 = distinct !{!196, i1 false, !"_ZSt11make_uniqueIN2v88internal17ConcurrentMarking17MinorMarkingStateEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!197 = distinct !{!197, !196, !"_ZSt11make_uniqueIN2v88internal17ConcurrentMarking17MinorMarkingStateEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!198 = distinct !{!198, i1 false, !"_ZSt11make_uniqueIN2v88internal17ConcurrentMarking12JobTaskMinorEJPS2_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!199 = distinct !{!199, !198, !"_ZSt11make_uniqueIN2v88internal17ConcurrentMarking12JobTaskMinorEJPS2_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!200 = distinct !{!200, i1 false, !"_ZN2v88Platform7PostJobENS_12TaskPriorityESt10unique_ptrINS_7JobTaskESt14default_deleteIS3_EENS_14SourceLocationE"}
!201 = distinct !{!201, !200, !"_ZN2v88Platform7PostJobENS_12TaskPriorityESt10unique_ptrINS_7JobTaskESt14default_deleteIS3_EENS_14SourceLocationE: argument 0"}
!202 = distinct !{!202, i1 false, !"_ZN2v88Platform9CreateJobENS_12TaskPriorityESt10unique_ptrINS_7JobTaskESt14default_deleteIS3_EENS_14SourceLocationE"}
!203 = distinct !{!203, !202, !"_ZN2v88Platform9CreateJobENS_12TaskPriorityESt10unique_ptrINS_7JobTaskESt14default_deleteIS3_EENS_14SourceLocationE: argument 0"}
!204 = !{!187}
!205 = !{!189}
!206 = !{!191, !189}
!207 = !{!197}
!208 = !{!199}
!209 = !{!201}
!210 = !{!203, !201}
!211 = !{ptr @_ZN2v88internal17ConcurrentMarking9IsStoppedEv}
!212 = distinct !{!212, !26}
!213 = distinct !{!213, !26}
!214 = distinct !{null, null, null, null, null, null, null, null, null, null, null, null}
!215 = distinct !{null, null}
!216 = distinct !{!216, !32}
!217 = distinct !{!217, !26}
!218 = !{!"branch_weights", i32 1073205, i32 2146410443}
!219 = !{!"branch_weights", !"expected", i32 2147483112, i32 536}
!220 = distinct !{null, null, null}
!221 = distinct !{!221, !26}
!222 = distinct !{!222, i1 false, !"_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal19MutablePageMetadataESt10unique_ptrINS4_10TypedSlotsESt14default_deleteIS8_EEEENS3_4base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_SB_EEE7emplaceIJRSK_SB_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESJ_INSN_8iteratorEbEDpOSR_"}
!223 = distinct !{!223, !222, !"_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal19MutablePageMetadataESt10unique_ptrINS4_10TypedSlotsESt14default_deleteIS8_EEEENS3_4base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_SB_EEE7emplaceIJRSK_SB_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESJ_INSN_8iteratorEbEDpOSR_: argument 0"}
!224 = distinct !{!224, i1 false, !"_ZN4absl18container_internal18hash_policy_traitsINS0_17FlatHashMapPolicyIPN2v88internal19MutablePageMetadataESt10unique_ptrINS4_10TypedSlotsESt14default_deleteIS8_EEEEvE5applyINS0_12raw_hash_setISC_NS3_4base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_SB_EEE19EmplaceDecomposableEJRSN_SB_ESC_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSU_DpOSV_"}
!225 = distinct !{!225, !224, !"_ZN4absl18container_internal18hash_policy_traitsINS0_17FlatHashMapPolicyIPN2v88internal19MutablePageMetadataESt10unique_ptrINS4_10TypedSlotsESt14default_deleteIS8_EEEEvE5applyINS0_12raw_hash_setISC_NS3_4base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_SB_EEE19EmplaceDecomposableEJRSN_SB_ESC_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSU_DpOSV_: argument 0"}
!226 = distinct !{!226, i1 false, !"_ZN4absl18container_internal17FlatHashMapPolicyIPN2v88internal19MutablePageMetadataESt10unique_ptrINS3_10TypedSlotsESt14default_deleteIS7_EEE5applyINS0_12raw_hash_setISB_NS2_4base4hashIS5_EENS0_6HashEqIS5_vE2EqESaISt4pairIKS5_SA_EEE19EmplaceDecomposableEJRSL_SA_EEEDTclsr4absl18container_internalE13DecomposePairclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOSR_DpOSS_"}
!227 = distinct !{!227, !226, !"_ZN4absl18container_internal17FlatHashMapPolicyIPN2v88internal19MutablePageMetadataESt10unique_ptrINS3_10TypedSlotsESt14default_deleteIS7_EEE5applyINS0_12raw_hash_setISB_NS2_4base4hashIS5_EENS0_6HashEqIS5_vE2EqESaISt4pairIKS5_SA_EEE19EmplaceDecomposableEJRSL_SA_EEEDTclsr4absl18container_internalE13DecomposePairclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOSR_DpOSS_: argument 0"}
!228 = distinct !{!228, i1 false, !"_ZN4absl18container_internal13DecomposePairINS0_12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal19MutablePageMetadataESt10unique_ptrINS5_10TypedSlotsESt14default_deleteIS9_EEEENS4_4base4hashIS7_EENS0_6HashEqIS7_vE2EqESaISt4pairIKS7_SC_EEE19EmplaceDecomposableEJRSL_SC_EEEDTclsr15memory_internalE17DecomposePairImplclsr3stdE7forwardIT_Efp_Ecl8PairArgsspclsr3stdE7forwardIT0_Efp0_EEEEOSR_DpOSS_"}
!229 = distinct !{!229, !228, !"_ZN4absl18container_internal13DecomposePairINS0_12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal19MutablePageMetadataESt10unique_ptrINS5_10TypedSlotsESt14default_deleteIS9_EEEENS4_4base4hashIS7_EENS0_6HashEqIS7_vE2EqESaISt4pairIKS7_SC_EEE19EmplaceDecomposableEJRSL_SC_EEEDTclsr15memory_internalE17DecomposePairImplclsr3stdE7forwardIT_Efp_Ecl8PairArgsspclsr3stdE7forwardIT0_Efp0_EEEEOSR_DpOSS_: argument 0"}
!230 = distinct !{!230, i1 false, !"_ZN4absl18container_internal15memory_internal17DecomposePairImplINS0_12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal19MutablePageMetadataESt10unique_ptrINS6_10TypedSlotsESt14default_deleteISA_EEEENS5_4base4hashIS8_EENS0_6HashEqIS8_vE2EqESaISt4pairIKS8_SD_EEE19EmplaceDecomposableERSM_St5tupleIJOSD_EEEEDTclclsr3stdE7declvalIT_EEclsr3stdE7declvalIRKT0_EEL_ZSt19piecewise_constructEclsr3stdE7declvalISS_IJSW_EEEEclsr3stdE7declvalIT1_EEEEOSV_SL_ISZ_S10_E"}
!231 = distinct !{!231, !230, !"_ZN4absl18container_internal15memory_internal17DecomposePairImplINS0_12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal19MutablePageMetadataESt10unique_ptrINS6_10TypedSlotsESt14default_deleteISA_EEEENS5_4base4hashIS8_EENS0_6HashEqIS8_vE2EqESaISt4pairIKS8_SD_EEE19EmplaceDecomposableERSM_St5tupleIJOSD_EEEEDTclclsr3stdE7declvalIT_EEclsr3stdE7declvalIRKT0_EEL_ZSt19piecewise_constructEclsr3stdE7declvalISS_IJSW_EEEEclsr3stdE7declvalIT1_EEEEOSV_SL_ISZ_S10_E: argument 0"}
!232 = distinct !{!232, i1 false, !"_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal19MutablePageMetadataESt10unique_ptrINS4_10TypedSlotsESt14default_deleteIS8_EEEENS3_4base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_SB_EEE19EmplaceDecomposableclIS6_JRKSt21piecewise_construct_tSt5tupleIJRSK_EEST_IJOSB_EEEEESJ_INSN_8iteratorEbERKT_DpOT0_"}
!233 = distinct !{!233, !232, !"_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal19MutablePageMetadataESt10unique_ptrINS4_10TypedSlotsESt14default_deleteIS8_EEEENS3_4base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_SB_EEE19EmplaceDecomposableclIS6_JRKSt21piecewise_construct_tSt5tupleIJRSK_EEST_IJOSB_EEEEESJ_INSN_8iteratorEbERKT_DpOT0_: argument 0"}
!234 = distinct !{!234, i1 false, !"_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal19MutablePageMetadataESt10unique_ptrINS4_10TypedSlotsESt14default_deleteIS8_EEEENS3_4base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_SB_EEE22find_or_prepare_insertIS6_EESJ_INSN_8iteratorEbERKT_"}
!235 = distinct !{!235, !234, !"_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal19MutablePageMetadataESt10unique_ptrINS4_10TypedSlotsESt14default_deleteIS8_EEEENS3_4base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_SB_EEE22find_or_prepare_insertIS6_EESJ_INSN_8iteratorEbERKT_: argument 0"}
!236 = distinct !{!236, i1 false, !"_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal19MutablePageMetadataESt10unique_ptrINS4_10TypedSlotsESt14default_deleteIS8_EEEENS3_4base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_SB_EEE28find_or_prepare_insert_smallIS6_EESJ_INSN_8iteratorEbERKT_"}
!237 = distinct !{!237, !236, !"_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal19MutablePageMetadataESt10unique_ptrINS4_10TypedSlotsESt14default_deleteIS8_EEEENS3_4base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_SB_EEE28find_or_prepare_insert_smallIS6_EESJ_INSN_8iteratorEbERKT_: argument 0"}
!238 = distinct !{!238, i1 false, !"_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal19MutablePageMetadataESt10unique_ptrINS4_10TypedSlotsESt14default_deleteIS8_EEEENS3_4base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_SB_EEE26find_or_prepare_insert_sooIS6_EESJ_INSN_8iteratorEbERKT_"}
!239 = distinct !{!239, !238, !"_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal19MutablePageMetadataESt10unique_ptrINS4_10TypedSlotsESt14default_deleteIS8_EEEENS3_4base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_SB_EEE26find_or_prepare_insert_sooIS6_EESJ_INSN_8iteratorEbERKT_: argument 0"}
!240 = distinct !{!240, i1 false, !"_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal19MutablePageMetadataESt10unique_ptrINS4_10TypedSlotsESt14default_deleteIS8_EEEENS3_4base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_SB_EEE28find_or_prepare_insert_largeIS6_EESJ_INSN_8iteratorEbERKT_"}
!241 = distinct !{!241, !240, !"_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPN2v88internal19MutablePageMetadataESt10unique_ptrINS4_10TypedSlotsESt14default_deleteIS8_EEEENS3_4base4hashIS6_EENS0_6HashEqIS6_vE2EqESaISt4pairIKS6_SB_EEE28find_or_prepare_insert_largeIS6_EESJ_INSN_8iteratorEbERKT_: argument 0"}
!242 = !{!239, !237, !235, !233, !231, !229, !227, !225, !223}
!243 = !{!241}
!244 = !{!229, !227, !225, !223}
!245 = !{!"branch_weights", !"expected", i32 3157936, i32 2144325712}
!246 = !{!"branch_weights", !"expected", i32 3161006, i32 2144322642}
!247 = distinct !{!247, !32}
!248 = distinct !{!248, !26}
!249 = distinct !{!249, !26}
!250 = distinct !{!250, !26}
!251 = distinct !{!251, !26}
!252 = distinct !{!252, !26}
!253 = distinct !{!253, !26}
!254 = distinct !{!254, !26}
!255 = distinct !{!255, !26}
!256 = distinct !{null, null, null, null, null, null, null, null, null, null, null, null, null}
!257 = distinct !{null, null, null, null, null, null, null, null, null, null, null, null, null, null}
!258 = distinct !{!258, !26}
!259 = distinct !{!259, i1 false, !"_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE16try_emplace_implIRSH_JEEESG_INS0_12raw_hash_setISC_SE_SF_SJ_E8iteratorEbEOT_DpOT0_"}
!260 = distinct !{!260, !259, !"_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE16try_emplace_implIRSH_JEEESG_INS0_12raw_hash_setISC_SE_SF_SJ_E8iteratorEbEOT_DpOT0_: argument 0"}
!261 = !{!260}
!262 = distinct !{!262, i1 false, !"_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE28find_or_prepare_insert_smallIS7_EESG_INSK_8iteratorEbERKT_"}
!263 = distinct !{!263, !262, !"_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE28find_or_prepare_insert_smallIS7_EESG_INSK_8iteratorEbERKT_: argument 0"}
!264 = distinct !{!264, i1 false, !"_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE28find_or_prepare_insert_largeIS7_EESG_INSK_8iteratorEbERKT_"}
!265 = distinct !{!265, !264, !"_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIN2v88internal6TaggedINS4_10HeapObjectEEENS3_4base11SmallVectorIS7_Lm1ESaIS7_EEEEENS4_6Object6HasherENSD_12KeyEqualSafeESaISt4pairIKS7_SB_EEE28find_or_prepare_insert_largeIS7_EESG_INSK_8iteratorEbERKT_: argument 0"}
!266 = !{!263}
!267 = !{!265}
!268 = distinct !{!268, !26}
!269 = distinct !{!269, !26}
!270 = distinct !{!270, !26}
!271 = distinct !{!271, !26}
!272 = distinct !{!272, !26}
!273 = distinct !{!273, i1 false, !"_ZN2v88internal12EmbeddedData8FromBlobEPNS0_7IsolateE"}
!274 = distinct !{!274, !273, !"_ZN2v88internal12EmbeddedData8FromBlobEPNS0_7IsolateE: argument 0"}
!275 = distinct !{!275, i1 false, !"_ZN2v88internal12EmbeddedData8FromBlobEPNS0_7IsolateE"}
!276 = distinct !{!276, !275, !"_ZN2v88internal12EmbeddedData8FromBlobEPNS0_7IsolateE: argument 0"}
!277 = !{!274}
!278 = !{!276}
!279 = distinct !{!279, i1 false, !"_ZN2v88internal41TqRuntimeFieldSliceScopeInfoDependentCodeENS0_6TaggedINS0_9ScopeInfoEEE"}
!280 = distinct !{!280, !279, !"_ZN2v88internal41TqRuntimeFieldSliceScopeInfoDependentCodeENS0_6TaggedINS0_9ScopeInfoEEE: argument 0"}
!281 = distinct !{!281, i1 false, !"_ZN2v88internal43TqRuntimeFieldSliceScopeInfoModuleVariablesENS0_6TaggedINS0_9ScopeInfoEEE"}
!282 = distinct !{!282, !281, !"_ZN2v88internal43TqRuntimeFieldSliceScopeInfoModuleVariablesENS0_6TaggedINS0_9ScopeInfoEEE: argument 0"}
!283 = distinct !{!283, i1 false, !"_ZN2v88internal38TqRuntimeFieldSliceScopeInfoModuleInfoENS0_6TaggedINS0_9ScopeInfoEEE"}
!284 = distinct !{!284, !283, !"_ZN2v88internal38TqRuntimeFieldSliceScopeInfoModuleInfoENS0_6TaggedINS0_9ScopeInfoEEE: argument 0"}
!285 = distinct !{!285, i1 false, !"_ZN2v88internal42TqRuntimeFieldSliceScopeInfoOuterScopeInfoENS0_6TaggedINS0_9ScopeInfoEEE"}
!286 = distinct !{!286, !285, !"_ZN2v88internal42TqRuntimeFieldSliceScopeInfoOuterScopeInfoENS0_6TaggedINS0_9ScopeInfoEEE: argument 0"}
!287 = distinct !{!287, i1 false, !"_ZN2v88internal48TqRuntimeFieldSliceScopeInfoInferredFunctionNameENS0_6TaggedINS0_9ScopeInfoEEE"}
!288 = distinct !{!288, !287, !"_ZN2v88internal48TqRuntimeFieldSliceScopeInfoInferredFunctionNameENS0_6TaggedINS0_9ScopeInfoEEE: argument 0"}
!289 = distinct !{!289, i1 false, !"_ZN2v88internal48TqRuntimeFieldSliceScopeInfoFunctionVariableInfoENS0_6TaggedINS0_9ScopeInfoEEE"}
!290 = distinct !{!290, !289, !"_ZN2v88internal48TqRuntimeFieldSliceScopeInfoFunctionVariableInfoENS0_6TaggedINS0_9ScopeInfoEEE: argument 0"}
!291 = distinct !{!291, i1 false, !"_ZN2v88internal50TqRuntimeFieldSliceScopeInfoSavedClassVariableInfoENS0_6TaggedINS0_9ScopeInfoEEE"}
!292 = distinct !{!292, !291, !"_ZN2v88internal50TqRuntimeFieldSliceScopeInfoSavedClassVariableInfoENS0_6TaggedINS0_9ScopeInfoEEE: argument 0"}
!293 = distinct !{!293, i1 false, !"_ZN2v88internal45TqRuntimeFieldSliceScopeInfoContextLocalInfosENS0_6TaggedINS0_9ScopeInfoEEE"}
!294 = distinct !{!294, !293, !"_ZN2v88internal45TqRuntimeFieldSliceScopeInfoContextLocalInfosENS0_6TaggedINS0_9ScopeInfoEEE: argument 0"}
!295 = distinct !{!295, i1 false, !"_ZN2v88internal54TqRuntimeFieldSliceScopeInfoContextLocalNamesHashtableENS0_6TaggedINS0_9ScopeInfoEEE"}
!296 = distinct !{!296, !295, !"_ZN2v88internal54TqRuntimeFieldSliceScopeInfoContextLocalNamesHashtableENS0_6TaggedINS0_9ScopeInfoEEE: argument 0"}
!297 = distinct !{!297, i1 false, !"_ZN2v88internal45TqRuntimeFieldSliceScopeInfoContextLocalNamesENS0_6TaggedINS0_9ScopeInfoEEE"}
!298 = distinct !{!298, !297, !"_ZN2v88internal45TqRuntimeFieldSliceScopeInfoContextLocalNamesENS0_6TaggedINS0_9ScopeInfoEEE: argument 0"}
!299 = distinct !{!299, i1 false, !"_ZN2v88internal47TqRuntimeFieldSliceScopeInfoModuleVariableCountENS0_6TaggedINS0_9ScopeInfoEEE"}
!300 = distinct !{!300, !299, !"_ZN2v88internal47TqRuntimeFieldSliceScopeInfoModuleVariableCountENS0_6TaggedINS0_9ScopeInfoEEE: argument 0"}
!301 = distinct !{!301, i1 false, !"_ZN2v88internal47TqRuntimeFieldSliceScopeInfoModuleVariableCountENS0_6TaggedINS0_9ScopeInfoEEE"}
!302 = distinct !{!302, !301, !"_ZN2v88internal47TqRuntimeFieldSliceScopeInfoModuleVariableCountENS0_6TaggedINS0_9ScopeInfoEEE: argument 0"}
!303 = !{!300, !298, !296, !294, !292, !290, !288, !286, !284, !282, !280}
!304 = !{!298, !296, !294, !292, !290, !288, !286, !284, !282, !280}
!305 = !{!292, !290, !288, !286, !284, !282, !280}
!306 = !{!290, !288, !286, !284, !282, !280}
!307 = !{!288, !286, !284, !282, !280}
!308 = !{!286, !284, !282, !280}
!309 = !{!284, !282, !280}
!310 = !{!282, !280}
!311 = !{!302, !282, !280}
!312 = !{!280}
!313 = distinct !{!313, !26}
!314 = distinct !{!314, !26, !33}
!315 = distinct !{null, ptr @_ZN2v88internal13ObjectVisitor23VisitCustomWeakPointersENS0_6TaggedINS0_10HeapObjectEEENS0_14FullObjectSlotES5_}
!316 = distinct !{!316, !26}
!317 = distinct !{!317, !26}
!318 = distinct !{!318, !26}
!319 = distinct !{!319, !26}
!320 = distinct !{!320, !26}
!321 = distinct !{!321, !26}
!322 = distinct !{!322, !26}
!323 = distinct !{!323, !26}
!324 = distinct !{!324, !26, !33}
!325 = distinct !{null, ptr @_ZN2v88internal13ObjectVisitor23VisitCustomWeakPointersENS0_6TaggedINS0_10HeapObjectEEENS0_14FullObjectSlotES5_}
!326 = distinct !{!326, !26}
!327 = distinct !{!327, !26}
!328 = distinct !{!328, !26}
!329 = distinct !{!329, !26}
!330 = distinct !{!330, !26}
!331 = distinct !{!331, !26}
end_hunk_17
