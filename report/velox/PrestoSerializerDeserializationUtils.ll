Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/PrestoSerializerDeserializationUtils?download=true
inline.NumInlined: 14590
inline.NumDeleted: 3684
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 61
begin_hunk_0_@_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_111readColumnsEPNS0_15ByteInputStreamERKSt6vectorISt10shared_ptrIKNS0_4TypeEESaISB_EEiPKmiPNS0_6memory10MemoryPoolERKNS2_17PrestoVectorSerde13PrestoOptionsERS7_IS8_INS0_10BaseVectorEESaISQ_EE:bb.a
  %i.py = and i32 %i.pm, 63
  %i.pz = zext nneg i32 %i.py to i64
  %notmask.i.i.i.i = shl nsw i64 -1, %i.pz
  %i.qa = xor i64 %notmask.i.i.i.i, -1
  %i.qb = and i64 %i.ft, %i.qa
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.sink.split

bb.db:                                            ; preds = %bb.cz
  br i1 %.not32.i.i.i319, label %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.qc = getelementptr inbounds [8 x i8], ptr %.pre751, i64 %i.fu ; 2 uses
  %i.qd = load i64, ptr %i.qc, align 8, !tbaa !187
  %i.qe = or i64 %i.qd, %i.ft
  store i64 %i.qe, ptr %i.qc, align 8, !tbaa !187
  br label %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i

_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i: ; preds = %bb.dc, %bb.db
  %.not3347.i.i.i = icmp sgt i32 %i.fv, %i.pw
  br i1 %.not3347.i.i.i, label %._crit_edge.i.i.i213, label %.lr.ph.i.i.i211

._crit_edge.i.i.i213:                             ; preds = %.lr.ph.i.i.i211, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i
  %.not34.i.i.i = icmp eq i32 %i.pm, %i.pw
  br i1 %.not34.i.i.i, label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i, label %bb.dd

.lr.ph.i.i.i211:                                  ; preds = %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i, %.lr.ph.i.i.i211
  %i.qf = phi i32 [ %i.qj, %.lr.ph.i.i.i211 ], [ %i.fv, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i ] ; 2 uses
  %.048.i.i.i = phi i32 [ %i.qf, %.lr.ph.i.i.i211 ], [ %i.fm, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i ]
  %i.qg = sdiv i32 %.048.i.i.i, 64
  %i.qh = sext i32 %i.qg to i64
  %i.qi = getelementptr inbounds [8 x i8], ptr %.pre751, i64 %i.qh
  store i64 -1, ptr %i.qi, align 8, !tbaa !187
  %i.qj = add nsw i32 %i.qf, 64                   ; 2 uses
  %.not33.i.i.i212 = icmp sgt i32 %i.qj, %i.pw
  br i1 %.not33.i.i.i212, label %._crit_edge.i.i.i213, label %.lr.ph.i.i.i211, !llvm.loop !199

bb.dd:                                            ; preds = %._crit_edge.i.i.i213
  %i.qk = and i32 %i.pm, 63
  %i.ql = zext nneg i32 %i.qk to i64
  %notmask.i37.i.i.i = shl nsw i64 -1, %i.ql
  %i.qm = xor i64 %notmask.i37.i.i.i, -1
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.sink.split

_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.sink.split: ; preds = %bb.da, %bb.dd
  %.sink953 = phi i64 [ %i.qm, %bb.dd ], [ %i.qb, %bb.da ]
  %.sink = ashr i32 %i.pm, 6
  %i.qn = sext i32 %.sink to i64
  %i.qo = getelementptr inbounds [8 x i8], ptr %.pre751, i64 %i.qn ; 2 uses
  %i.qp = load i64, ptr %i.qo, align 8, !tbaa !187
  %i.qq = or i64 %i.qp, %.sink953
  store i64 %i.qq, ptr %i.qo, align 8, !tbaa !187
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i

_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i:    ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.sink.split, %._crit_edge.i.i.i213, %bb.cy
  store i8 0, ptr %i.gl, align 1, !tbaa !185
  br label %_ZN8facebook5velox17SelectivityVector13setValidRangeEiib.exit

_ZN8facebook5velox17SelectivityVector13setValidRangeEiib.exit: ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i, %bb.cx
  %.not.i.i.i208 = icmp sgt i32 %i.pm, 0
  br i1 %.not.i.i.i208, label %bb.de, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i

bb.de:                                            ; preds = %_ZN8facebook5velox17SelectivityVector13setValidRangeEiib.exit
  %i.qr = and i32 %i.pm, 2147483584               ; 4 uses
  %i.qs = zext nneg i32 %i.qr to i64
  %.not37.i.i.not.i1281.not = icmp eq i32 %i.qr, 0
  br i1 %.not37.i.i.not.i1281.not, label %.critedge.i.i.i, label %.lr.ph1284

_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i: ; preds = %.lr.ph1284
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i1282, 64 ; 2 uses
  %.not37.i.i.not.i = icmp samesign ult i64 %indvars.iv.next.i, %i.qs
  br i1 %.not37.i.i.not.i, label %.lr.ph1284, label %.critedge.i.i.i, !llvm.loop !200

.lr.ph1284:                                       ; preds = %bb.de, %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i
  %indvars.iv.i1282 = phi i64 [ %indvars.iv.next.i, %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i ], [ 0, %bb.de ] ; 3 uses
  %i.qt = lshr exact i64 %indvars.iv.i1282, 3
  %i.qu = getelementptr inbounds nuw i8, ptr %.pre751, i64 %i.qt
  %i.qv = load i64, ptr %i.qu, align 8, !tbaa !187 ; 2 uses
  %.not.i42.i.i.i = icmp eq i64 %i.qv, 0
  br i1 %.not.i42.i.i.i, label %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i, !llvm.loop !200

.critedge.i.i.i:                                  ; preds = %_ZZN8facebook5velox4bits12findFirstBitEPKmiiENKUliE_clEi.exit.i.i.i, %bb.de
  %.not38.i.i.i = icmp eq i32 %i.pm, %i.qr
  br i1 %.not38.i.i.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i, label %bb.df

bb.df:                                            ; preds = %.critedge.i.i.i
  %i.qw = lshr i32 %i.pm, 6
  %i.qx = and i32 %i.pm, 63
  %i.qy = zext nneg i32 %i.qx to i64
  %notmask.i43.i.i.i = shl nsw i64 -1, %i.qy
  %i.qz = xor i64 %notmask.i43.i.i.i, -1
  %i.ra = zext nneg i32 %i.qw to i64
  %i.rb = getelementptr inbounds nuw [8 x i8], ptr %.pre751, i64 %i.ra
  %i.rc = load i64, ptr %i.rb, align 8, !tbaa !187
  %i.rd = and i64 %i.rc, %i.qz                    ; 2 uses
  %.not.i44.i.i.i = icmp eq i64 %i.rd, 0
  br i1 %.not.i44.i.i.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i, label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i

_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i: ; preds = %bb.df, %.critedge.i.i.i, %_ZN8facebook5velox17SelectivityVector13setValidRangeEiib.exit
  store i32 0, ptr %i.gn, align 4, !tbaa !201
  store i32 0, ptr %i.gm, align 8, !tbaa !198
  store i16 256, ptr %i.gp, align 4
  br label %_ZN8facebook5velox17SelectivityVector12updateBoundsEv.exit

_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i: ; preds = %.lr.ph1284
  %i.re = trunc nuw nsw i64 %indvars.iv.i1282 to i32
  br label %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i

_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i: ; preds = %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i, %bb.df
  %.sink67.i.i.i = phi i64 [ %i.rd, %bb.df ], [ %i.qv, %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i ]
  %.sink65.i.i.i = phi i32 [ %i.qr, %bb.df ], [ %i.re, %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.loopexit.i ]
  %i.rf = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.sink67.i.i.i, i1 true)
  %i.rg = trunc nuw nsw i64 %i.rf to i32
  %i.rh = or disjoint i32 %.sink65.i.i.i, %i.rg   ; 2 uses
  store i32 %i.rh, ptr %i.gn, align 4, !tbaa !201
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #22
  store i32 -1, ptr %i.g, align 4, !tbaa !21
  store ptr %.pre751, ptr %15, align 8, !tbaa !202
  store ptr %i.g, ptr %i.gq, align 8, !tbaa !205
  store i8 1, ptr %i.gr, align 8, !tbaa !206
  store ptr %.pre751, ptr %16, align 8, !tbaa !207
  store ptr %i.g, ptr %i.gs, align 8, !tbaa !205
  store i8 1, ptr %i.gt, align 8, !tbaa !209
  %i.ri = invoke noundef zeroext i1 @_ZN8facebook5velox4bits16testWordsReverseIZNS1_11findLastBitEPKmiibEUlimE_ZNS1_11findLastBitES4_iibEUliE_EEbiiT_T0_(i32 noundef %i.rh, i32 noundef %i.pm, ptr noundef nonnull byval(%class.anon.712) align 8 %15, ptr noundef nonnull byval(%class.anon.714) align 8 %16)
          to label %.noexc209 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc209:                                        ; preds = %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i
  %i.rj = load i32, ptr %i.g, align 4, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  %i.rk = add nsw i32 %i.rj, 1
  store i32 %i.rk, ptr %i.gm, align 8, !tbaa !198
  store i8 0, ptr %i.gl, align 1, !tbaa !185
  br label %_ZN8facebook5velox17SelectivityVector12updateBoundsEv.exit

_ZN8facebook5velox17SelectivityVector12updateBoundsEv.exit: ; preds = %.noexc209, %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.thread.i
  invoke void @_ZN8facebook5velox10BaseVector14ensureWritableERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEEPNS0_6memory10MemoryPoolERS5_IS1_EPNS0_10VectorPoolE(ptr noundef nonnull align 8 dereferenceable(38) %44, ptr noundef nonnull align 8 dereferenceable(16) %i.jg, ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(16) %i.ji, ptr noundef null)
          to label %bb.dg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !165

bb.dg:                                            ; preds = %_ZN8facebook5velox17SelectivityVector12updateBoundsEv.exit
  %i.rl = load ptr, ptr %i.ji, align 8, !tbaa !159 ; 2 uses
  %i.rm = load ptr, ptr %42, align 16, !tbaa !159
  %i.rn = load ptr, ptr %i.rl, align 8, !tbaa !18
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 208
  %i.rp = load ptr, ptr %i.ro, align 8
  invoke void %i.rp(ptr noundef nonnull align 8 dereferenceable(94) %i.rl, ptr noundef %i.rm, i32 noundef %2, i32 noundef 0, i32 noundef %i.kh)
          to label %bb.dh unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !165

bb.dh:                                            ; preds = %bb.dg
  %i.rq = icmp slt i32 %i.kh, 1
  %or.cond = select i1 %.not.i137, i1 true, i1 %i.rq
  br i1 %or.cond, label %"_ZN8facebook5velox4bits15forEachUnsetBitIZNS0_10serializer6presto6detail12_GLOBAL__N_118readConstantVectorEPNS0_15ByteInputStreamERKSt10shared_ptrIKNS0_4TypeEEiPKmiPNS0_6memory10MemoryPoolERKNS4_17PrestoVectorSerde13PrestoOptionsERS9_INS0_10BaseVectorEEE3$_0EEvSG_iiT_.exit", label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.rr = and i32 %i.kh, 2147483584               ; 4 uses
  %.not32.not57.not.i.i.i = icmp eq i32 %i.rr, 0
  br i1 %.not32.not57.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i203

.lr.ph.i.i.i203:                                  ; preds = %bb.di
  %i.rs = zext nneg i32 %i.rr to i64
  br label %bb.dj

._crit_edge.i.i.i:                                ; preds = %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_118readConstantVectorEPNS0_15ByteInputStreamERKSt10shared_ptrIKNS0_4TypeEEiPKmiPNS0_6memory10MemoryPoolERKNS4_17PrestoVectorSerde13PrestoOptionsERS9_INS0_10BaseVectorEEE3$_0EEvSG_iibT_ENKUliE_clEi.exit.i.i.i", %bb.di
  %.not33.i.i.i = icmp eq i32 %i.kh, %i.rr
  br i1 %.not33.i.i.i, label %"_ZN8facebook5velox4bits15forEachUnsetBitIZNS0_10serializer6presto6detail12_GLOBAL__N_118readConstantVectorEPNS0_15ByteInputStreamERKSt10shared_ptrIKNS0_4TypeEEiPKmiPNS0_6memory10MemoryPoolERKNS4_17PrestoVectorSerde13PrestoOptionsERS9_INS0_10BaseVectorEEE3$_0EEvSG_iiT_.exit", label %bb.dk

bb.dj:                                            ; preds = %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_118readConstantVectorEPNS0_15ByteInputStreamERKSt10shared_ptrIKNS0_4TypeEEiPKmiPNS0_6memory10MemoryPoolERKNS4_17PrestoVectorSerde13PrestoOptionsERS9_INS0_10BaseVectorEEE3$_0EEvSG_iibT_ENKUliE_clEi.exit.i.i.i", %.lr.ph.i.i.i203
  %indvars.iv60.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i203 ], [ %indvars.iv.next61.i.i.i, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_118readConstantVectorEPNS0_15ByteInputStreamERKSt10shared_ptrIKNS0_4TypeEEiPKmiPNS0_6memory10MemoryPoolERKNS4_17PrestoVectorSerde13PrestoOptionsERS9_INS0_10BaseVectorEEE3$_0EEvSG_iibT_ENKUliE_clEi.exit.i.i.i" ] ; 4 uses
  %indvars.iv.i.i.i = phi i64 [ 64, %.lr.ph.i.i.i203 ], [ %indvars.iv.next.i.i.i, %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_118readConstantVectorEPNS0_15ByteInputStreamERKSt10shared_ptrIKNS0_4TypeEEiPKmiPNS0_6memory10MemoryPoolERKNS4_17PrestoVectorSerde13PrestoOptionsERS9_INS0_10BaseVectorEEE3$_0EEvSG_iibT_ENKUliE_clEi.exit.i.i.i" ] ; 3 uses
  %i.rt = lshr exact i64 %indvars.iv60.i.i.i, 3
  %i.ru = getelementptr inbounds nuw i8, ptr %3, i64 %i.rt
  %i.rv = load i64, ptr %i.ru, align 8, !tbaa !187
  %i.rw = xor i64 %i.rv, -1                       ; 2 uses
  switch i64 %i.rw, label %.lr.ph.i.i.i.i204 [
    i64 -1, label %.preheader.i.i
    i64 0, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_118readConstantVectorEPNS0_15ByteInputStreamERKSt10shared_ptrIKNS0_4TypeEEiPKmiPNS0_6memory10MemoryPoolERKNS4_17PrestoVectorSerde13PrestoOptionsERS9_INS0_10BaseVectorEEE3$_0EEvSG_iibT_ENKUliE_clEi.exit.i.i.i"
  ]

.preheader.i.i:                                   ; preds = %bb.dj, %.noexc205
  %.023.i.i.i.i = phi i64 [ %i.sc, %.noexc205 ], [ %indvars.iv60.i.i.i, %bb.dj ] ; 2 uses
  %.val18.val.i.i.i.i = load ptr, ptr %i.ji, align 8, !tbaa !159 ; 2 uses
  %i.rx = trunc i64 %.023.i.i.i.i to i32
  %i.ry = add i32 %2, %i.rx
  %i.rz = load ptr, ptr %.val18.val.i.i.i.i, align 8, !tbaa !18
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 144
  %i.sb = load ptr, ptr %i.sa, align 8
  invoke void %i.sb(ptr noundef nonnull align 8 dereferenceable(94) %.val18.val.i.i.i.i, i32 noundef %i.ry, i1 noundef zeroext true)
          to label %.noexc205 unwind label %.loopexit.split-lp.loopexit, !inline_history !210

.noexc205:                                        ; preds = %.preheader.i.i
  %i.sc = add nuw nsw i64 %.023.i.i.i.i, 1        ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.sc, %indvars.iv.i.i.i
  br i1 %exitcond.not.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_118readConstantVectorEPNS0_15ByteInputStreamERKSt10shared_ptrIKNS0_4TypeEEiPKmiPNS0_6memory10MemoryPoolERKNS4_17PrestoVectorSerde13PrestoOptionsERS9_INS0_10BaseVectorEEE3$_0EEvSG_iibT_ENKUliE_clEi.exit.i.i.i", label %.preheader.i.i, !llvm.loop !211

.lr.ph.i.i.i.i204:                                ; preds = %bb.dj, %.noexc206
  %.01522.i.i.i.i = phi i64 [ %i.sl, %.noexc206 ], [ %i.rw, %bb.dj ] ; 3 uses
  %i.sd = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01522.i.i.i.i, i1 true)
  %i.se = or disjoint i64 %i.sd, %indvars.iv60.i.i.i
  %i.sf = trunc i64 %i.se to i32
  %.val.val.i44.i.i.i = load ptr, ptr %i.ji, align 8, !tbaa !159 ; 2 uses
  %i.sg = add nsw i32 %2, %i.sf
  %i.sh = load ptr, ptr %.val.val.i44.i.i.i, align 8, !tbaa !18
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 144
  %i.sj = load ptr, ptr %i.si, align 8
  invoke void %i.sj(ptr noundef nonnull align 8 dereferenceable(94) %.val.val.i44.i.i.i, i32 noundef %i.sg, i1 noundef zeroext true)
          to label %.noexc206 unwind label %.loopexit490, !inline_history !210

.noexc206:                                        ; preds = %.lr.ph.i.i.i.i204
  %i.sk = add i64 %.01522.i.i.i.i, -1
  %i.sl = and i64 %i.sk, %.01522.i.i.i.i          ; 2 uses
  %.not.i45.i.i.i = icmp eq i64 %i.sl, 0
  br i1 %.not.i45.i.i.i, label %"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_118readConstantVectorEPNS0_15ByteInputStreamERKSt10shared_ptrIKNS0_4TypeEEiPKmiPNS0_6memory10MemoryPoolERKNS4_17PrestoVectorSerde13PrestoOptionsERS9_INS0_10BaseVectorEEE3$_0EEvSG_iibT_ENKUliE_clEi.exit.i.i.i", label %.lr.ph.i.i.i.i204, !llvm.loop !212

"_ZZN8facebook5velox4bits10forEachBitIZNS0_10serializer6presto6detail12_GLOBAL__N_118readConstantVectorEPNS0_15ByteInputStreamERKSt10shared_ptrIKNS0_4TypeEEiPKmiPNS0_6memory10MemoryPoolERKNS4_17PrestoVectorSerde13PrestoOptionsERS9_INS0_10BaseVectorEEE3$_0EEvSG_iibT_ENKUliE_clEi.exit.i.i.i": ; preds = %.noexc205, %.noexc206, %bb.dj
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 64
  %.not32.not.i.i.i = icmp samesign ult i64 %indvars.iv.i.i.i, %i.rs
  %indvars.iv.next61.i.i.i = add nuw nsw i64 %indvars.iv60.i.i.i, 64
  br i1 %.not32.not.i.i.i, label %bb.dj, label %._crit_edge.i.i.i, !llvm.loop !213

bb.dk:                                            ; preds = %._crit_edge.i.i.i
  %i.sm = lshr i32 %i.kh, 6
  %i.sn = and i32 %i.kh, 63
  %i.so = zext nneg i32 %i.sn to i64
  %notmask.i46.i.i.i = shl nsw i64 -1, %i.so
  %i.sp = zext nneg i32 %i.sm to i64
  %i.sq = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.sp
  %i.sr = load i64, ptr %i.sq, align 8, !tbaa !187
  %.demorgan.i.i = or i64 %i.sr, %notmask.i46.i.i.i ; 2 uses
  %.not.i47.i.i.i = icmp eq i64 %.demorgan.i.i, -1
  br i1 %.not.i47.i.i.i, label %"_ZN8facebook5velox4bits15forEachUnsetBitIZNS0_10serializer6presto6detail12_GLOBAL__N_118readConstantVectorEPNS0_15ByteInputStreamERKSt10shared_ptrIKNS0_4TypeEEiPKmiPNS0_6memory10MemoryPoolERKNS4_17PrestoVectorSerde13PrestoOptionsERS9_INS0_10BaseVectorEEE3$_0EEvSG_iiT_.exit", label %.preheader.i48.i.preheader.i.i

.preheader.i48.i.preheader.i.i:                   ; preds = %bb.dk
  %i.ss = xor i64 %.demorgan.i.i, -1
  %i.st = add i32 %i.rr, %2
  br label %.preheader.i48.i.i.i

.preheader.i48.i.i.i:                             ; preds = %.noexc207, %.preheader.i48.i.preheader.i.i
  %.012.i49.i.i.i = phi i64 [ %i.tb, %.noexc207 ], [ %i.ss, %.preheader.i48.i.preheader.i.i ] ; 3 uses
  %i.su = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.012.i49.i.i.i, i1 true)
  %i.sv = trunc nuw nsw i64 %i.su to i32
  %.val.val.i52.i.i.i = load ptr, ptr %i.ji, align 8, !tbaa !159 ; 2 uses
  %i.sw = add i32 %i.st, %i.sv
  %i.sx = load ptr, ptr %.val.val.i52.i.i.i, align 8, !tbaa !18
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 144
  %i.sz = load ptr, ptr %i.sy, align 8
  invoke void %i.sz(ptr noundef nonnull align 8 dereferenceable(94) %.val.val.i52.i.i.i, i32 noundef %i.sw, i1 noundef zeroext true)
          to label %.noexc207 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !210

.noexc207:                                        ; preds = %.preheader.i48.i.i.i
  %i.ta = add nsw i64 %.012.i49.i.i.i, -1
  %i.tb = and i64 %i.ta, %.012.i49.i.i.i          ; 2 uses
  %.not10.i54.i.i.i = icmp eq i64 %i.tb, 0
  br i1 %.not10.i54.i.i.i, label %"_ZN8facebook5velox4bits15forEachUnsetBitIZNS0_10serializer6presto6detail12_GLOBAL__N_118readConstantVectorEPNS0_15ByteInputStreamERKSt10shared_ptrIKNS0_4TypeEEiPKmiPNS0_6memory10MemoryPoolERKNS4_17PrestoVectorSerde13PrestoOptionsERS9_INS0_10BaseVectorEEE3$_0EEvSG_iiT_.exit", label %.preheader.i48.i.i.i, !llvm.loop !214

.loopexit490:                                     ; preds = %.lr.ph.i.i.i.i204
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %.preheader.i.i
  %lpad.loopexit491 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %.preheader.i48.i.i.i
  %lpad.loopexit498 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZN8facebook5velox17SelectivityVector12updateBoundsEv.exit, %bb.dg, %_ZN8facebook5velox4bits12findFirstBitEPKmii.exit.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit490
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit490 ], [ %lpad.loopexit491, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit498, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.tc = load ptr, ptr %44, align 8, !tbaa !188  ; 2 uses
  %.not.i.i.i.i201 = icmp eq ptr %i.tc, null
  br i1 %.not.i.i.i.i201, label %.body217, label %.body217.sink.split

"_ZN8facebook5velox4bits15forEachUnsetBitIZNS0_10serializer6presto6detail12_GLOBAL__N_118readConstantVectorEPNS0_15ByteInputStreamERKSt10shared_ptrIKNS0_4TypeEEiPKmiPNS0_6memory10MemoryPoolERKNS4_17PrestoVectorSerde13PrestoOptionsERS9_INS0_10BaseVectorEEE3$_0EEvSG_iiT_.exit": ; preds = %.noexc207, %bb.dk, %._crit_edge.i.i.i, %bb.dh
  %i.td = load ptr, ptr %44, align 8, !tbaa !188  ; 3 uses
  %.not.i.i.i.i200 = icmp eq ptr %i.td, null
  br i1 %.not.i.i.i.i200, label %_ZN8facebook5velox17SelectivityVectorD2Ev.exit, label %bb.dl

bb.dl:                                            ; preds = %"_ZN8facebook5velox4bits15forEachUnsetBitIZNS0_10serializer6presto6detail12_GLOBAL__N_118readConstantVectorEPNS0_15ByteInputStreamERKSt10shared_ptrIKNS0_4TypeEEiPKmiPNS0_6memory10MemoryPoolERKNS4_17PrestoVectorSerde13PrestoOptionsERS9_INS0_10BaseVectorEEE3$_0EEvSG_iiT_.exit"
  %i.te = load ptr, ptr %i.gu, align 8, !tbaa !215
  %i.tf = ptrtoint ptr %i.te to i64
  %i.tg = ptrtoint ptr %i.td to i64
  %i.th = sub i64 %i.tf, %i.tg
  call void @_ZdlPvm(ptr noundef nonnull %i.td, i64 noundef %i.th) #40
  br label %_ZN8facebook5velox17SelectivityVectorD2Ev.exit

_ZN8facebook5velox17SelectivityVectorD2Ev.exit:   ; preds = %"_ZN8facebook5velox4bits15forEachUnsetBitIZNS0_10serializer6presto6detail12_GLOBAL__N_118readConstantVectorEPNS0_15ByteInputStreamERKSt10shared_ptrIKNS0_4TypeEEiPKmiPNS0_6memory10MemoryPoolERKNS4_17PrestoVectorSerde13PrestoOptionsERS9_INS0_10BaseVectorEEE3$_0EEvSG_iiT_.exit", %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #22
  br label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_118readConstantVectorEPNS0_15ByteInputStreamERKSt10shared_ptrIKNS0_4TypeEEiPKmiPNS0_6memory10MemoryPoolERKNS2_17PrestoVectorSerde13PrestoOptionsERS7_INS0_10BaseVectorEE.exit

.body217.sink.split:                              ; preds = %.loopexit.split-lp, %bb.cw
  %.sink959 = phi ptr [ %i.pu, %bb.cw ], [ %i.tc, %.loopexit.split-lp ] ; 2 uses
  %.pn47.i.ph = phi { ptr, i32 } [ %i.pt, %bb.cw ], [ %lpad.phi, %.loopexit.split-lp ]
  %i.ti = load ptr, ptr %i.gu, align 8, !tbaa !215
  %i.tj = ptrtoint ptr %i.ti to i64
  %i.tk = ptrtoint ptr %.sink959 to i64
  %i.tl = sub i64 %i.tj, %i.tk
  call void @_ZdlPvm(ptr noundef nonnull %.sink959, i64 noundef %i.tl) #40
  br label %.body217

.body217:                                         ; preds = %.body217.sink.split, %.loopexit.split-lp, %bb.cw
  %.pn47.i = phi { ptr, i32 } [ %i.pt, %bb.cw ], [ %lpad.phi, %.loopexit.split-lp ], [ %.pn47.i.ph, %.body217.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #22
  br label %bb.dm

bb.dm:                                            ; preds = %bb.cs, %.body217, %bb.cl
  %.sink961 = phi ptr [ %43, %bb.cl ], [ %42, %.body217 ], [ %42, %bb.cs ]
  %.pn47.pn.pn.i = phi { ptr, i32 } [ %i.ov, %bb.cl ], [ %.pn47.i, %.body217 ], [ %i.pk, %bb.cs ]
  call void @_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %.sink961) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #22
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230, %bb.bq
  %.pn51.pn.i = phi { ptr, i32 } [ %.pn51.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230 ], [ %.pn47.pn.pn.i, %bb.dm ], [ %i.mx, %bb.bq ]
  call void @_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %39) #22, !inline_history !165
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %.loopexit
  %.pn51.pn.pn.i = phi { ptr, i32 } [ %.pn51.pn.i, %bb.dn ], [ %.pn.i, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #22
  call void @_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %37) #22, !inline_history !165
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %.body980
  %.pn51.pn.pn.pn.i = phi { ptr, i32 } [ %.pn51.pn.pn.i, %bb.do ], [ %i.mu, %.body980 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #22
  br label %.body

_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_118readConstantVectorEPNS0_15ByteInputStreamERKSt10shared_ptrIKNS0_4TypeEEiPKmiPNS0_6memory10MemoryPoolERKNS2_17PrestoVectorSerde13PrestoOptionsERS7_INS0_10BaseVectorEE.exit: ; preds = %bb.ck, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.cg, %bb.ce, %bb.cr, %_ZN8facebook5velox17SelectivityVectorD2Ev.exit
  %i.tm = load ptr, ptr %i.gv, align 8, !tbaa !91 ; 8 uses
  %.not.i.i196 = icmp eq ptr %i.tm, null
  br i1 %.not.i.i196, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.dq

bb.dq:                                            ; preds = %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_118readConstantVectorEPNS0_15ByteInputStreamERKSt10shared_ptrIKNS0_4TypeEEiPKmiPNS0_6memory10MemoryPoolERKNS2_17PrestoVectorSerde13PrestoOptionsERS7_INS0_10BaseVectorEE.exit
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 8 ; 4 uses
  %i.to = load atomic i64, ptr %i.tn acquire, align 8 ; 2 uses
  %i.tp = icmp eq i64 %i.to, 4294967297
  %i.tq = trunc i64 %i.to to i32                  ; 2 uses
  br i1 %i.tp, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  store i32 0, ptr %i.tn, align 8, !tbaa !93
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tm, i64 12
  store i32 0, ptr %i.tr, align 4, !tbaa !95
  %i.ts = load ptr, ptr %i.tm, align 8, !tbaa !18
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 16
  %i.tu = load ptr, ptr %i.tt, align 8
  call void %i.tu(ptr noundef nonnull align 8 dereferenceable(16) %i.tm) #22, !inline_history !164
  %i.tv = load ptr, ptr %i.tm, align 8, !tbaa !18
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 24
  %i.tx = load ptr, ptr %i.tw, align 8
  call void %i.tx(ptr noundef nonnull align 8 dereferenceable(16) %i.tm) #22, !inline_history !164
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ds:                                            ; preds = %bb.dq
  %i.ty = load i8, ptr @__libc_single_threaded, align 1, !tbaa !42
  %.not.i.i.i197 = icmp eq i8 %i.ty, 0
  br i1 %.not.i.i.i197, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.tz = add nsw i32 %i.tq, -1
  store i32 %i.tz, ptr %i.tn, align 8, !tbaa !21
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i198

bb.du:                                            ; preds = %bb.ds
  %i.ua = atomicrmw volatile add ptr %i.tn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i198

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i198: ; preds = %bb.du, %bb.dt
  %.0.i.i.i.i199 = phi i32 [ %i.tq, %bb.dt ], [ %i.ua, %bb.du ]
  %i.ub = icmp eq i32 %.0.i.i.i.i199, 1
  br i1 %i.ub, label %bb.dv, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !38

bb.dv:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i198
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.tm) #22
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_118readConstantVectorEPNS0_15ByteInputStreamERKSt10shared_ptrIKNS0_4TypeEEiPKmiPNS0_6memory10MemoryPoolERKNS2_17PrestoVectorSerde13PrestoOptionsERS7_INS0_10BaseVectorEE.exit, %bb.dr, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i198, %bb.dv
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #22
  %i.uc = load ptr, ptr %39, align 8, !tbaa !144  ; 3 uses
  %i.ud = load ptr, ptr %i.gi, align 8, !tbaa !141 ; 2 uses
  %.not4.i.i.i186 = icmp eq ptr %i.uc, %i.ud
  br i1 %.not4.i.i.i186, label %_ZSt8_DestroyIPSt10shared_ptrIN8facebook5velox10BaseVectorEES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i187

.lr.ph.i.i.i187:                                  ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox10BaseVectorEEEvPT_.exit.i.i.i
  %.05.i.i.i188 = phi ptr [ %i.uv, %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox10BaseVectorEEEvPT_.exit.i.i.i ], [ %i.uc, %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %.05.i.i.i188, i64 8
  %i.uf = load ptr, ptr %i.ue, align 8, !tbaa !91 ; 8 uses
  %.not.i.i.i.i.i.i.i189 = icmp eq ptr %i.uf, null
  br i1 %.not.i.i.i.i.i.i.i189, label %_ZSt8_DestroyISt10shared_ptrIN8facebook5velox10BaseVectorEEEvPT_.exit.i.i.i, label %bb.dw

bb.dw:                                            ; preds = %.lr.ph.i.i.i187
end_hunk_0
