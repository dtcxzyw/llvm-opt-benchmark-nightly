inline.NumInlined: 2614
inline.NumDeleted: 870
begin_hunk_0_@_ZN6google8protobuf8internal10WireFormat37InternalSerializeUnknownFieldsToArrayERKNS0_15UnknownFieldSetEPhPNS0_2io19EpsCopyOutputStreamE:bb.a
bb.j:                                             ; preds = %bb.i
  %i.by = icmp ult i32 %i.bv, 2097152
  %i.bz = icmp ult i32 %i.bv, 268435456
  %i.ca = select i1 %i.bz, i64 4, i64 5
  %i.cb = select i1 %i.by, i64 3, i64 %i.ca
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream7TagSizeEj.exit

_ZN6google8protobuf2io19EpsCopyOutputStream7TagSizeEj.exit: ; preds = %bb.h, %bb.i, %bb.j
  %i.cc = phi i64 [ 1, %bb.h ], [ %i.cb, %bb.j ], [ 2, %bb.i ]
  %3 = add i64 %i.bt, 16
  %i.cd = add i64 %i.cc, %i.bu
  %4 = xor i64 %i.cd, -1
  %i.ce = add i64 %3, %4
  %i.cf = icmp slt i64 %i.ce, %i.bq
  br i1 %i.cf, label %.critedge.i, label %bb.k, !prof !47

end_hunk_0
begin_hunk_1_@_ZN6google8protobuf8internal10WireFormat24ComputeUnknownFieldsSizeERKNS0_15UnknownFieldSetE:bb.a
  %i.am = add nuw nsw i32 %i.al, 73
  %i.an = lshr i32 %i.am, 6
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = add i64 %.034, 4
  %i.aq = add i64 %i.ap, %i.ao
  br label %bb.h

bb.e:                                             ; preds = %bb.b
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf8internal10WireFormat24ComputeUnknownFieldsSizeERKNS0_15UnknownFieldSetE:bb.a
  %i.ax = add nuw nsw i32 %i.aw, 73
  %i.ay = lshr i32 %i.ax, 6
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = add i64 %.034, 8
  %i.bb = add i64 %i.ba, %i.az
  br label %bb.h

bb.f:                                             ; preds = %bb.b
end_hunk_2
begin_hunk_3_@_ZN6google8protobuf8internal10WireFormat22InternalSerializeFieldEPKNS0_15FieldDescriptorERKNS0_7MessageEPhPNS0_2io19EpsCopyOutputStreamE:bb.a
bb.jo:                                            ; preds = %bb.jn
  %i.axs = icmp ult i32 %i.axp, 2097152
  %i.axt = icmp ult i32 %i.axp, 268435456
  %i.axu = select i1 %i.axt, i64 4, i64 5
  %i.axv = select i1 %i.axs, i64 3, i64 %i.axu
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream7TagSizeEj.exit

_ZN6google8protobuf2io19EpsCopyOutputStream7TagSizeEj.exit: ; preds = %bb.jm, %bb.jn, %bb.jo
  %i.axw = phi i64 [ 1, %bb.jm ], [ %i.axv, %bb.jo ], [ 2, %bb.jn ]
  %27 = add i64 %i.axn, 16
  %i.axx = add i64 %i.axw, %i.axo
  %28 = xor i64 %i.axx, -1
  %i.axy = add i64 %27, %28
  %i.axz = icmp slt i64 %i.axy, %i.axk
  br i1 %i.axz, label %.critedge.i511, label %bb.jp, !prof !47

end_hunk_3
begin_hunk_4_@_ZN6google8protobuf8internal10WireFormat22InternalSerializeFieldEPKNS0_15FieldDescriptorERKNS0_7MessageEPhPNS0_2io19EpsCopyOutputStreamE:bb.a
bb.kf:                                            ; preds = %bb.ke
  %i.bag = icmp ult i32 %i.bad, 2097152
  %i.bah = icmp ult i32 %i.bad, 268435456
  %i.bai = select i1 %i.bah, i64 4, i64 5
  %i.baj = select i1 %i.bag, i64 3, i64 %i.bai
  br label %_ZN6google8protobuf2io19EpsCopyOutputStream7TagSizeEj.exit971

_ZN6google8protobuf2io19EpsCopyOutputStream7TagSizeEj.exit971: ; preds = %bb.kd, %bb.ke, %bb.kf
  %i.bak = phi i64 [ 1, %bb.kd ], [ %i.baj, %bb.kf ], [ 2, %bb.ke ]
  %29 = add i64 %i.bab, 16
  %i.bal = add i64 %i.bak, %i.bac
  %30 = xor i64 %i.bal, -1
  %i.bam = add i64 %29, %30
  %i.ban = icmp slt i64 %i.bam, %i.azy
  br i1 %i.ban, label %.critedge.i, label %bb.kg, !prof !47

end_hunk_4
begin_hunk_5_@_ZN6google8protobuf8internalL25InternalSerializeMapEntryEPKNS0_15FieldDescriptorERKNS0_6MapKeyERKNS0_16MapValueConstRefEPhPNS0_2io19EpsCopyOutputStreamE:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !134
  %i.g = tail call noundef i64 @_ZN6google8protobuf8internal22MapKeyDataOnlyByteSizeEPKNS0_15FieldDescriptorERKNS0_6MapKeyE(ptr noundef %i.c, ptr noundef nonnull align 8 dereferenceable(20) %1)
  %5 = add i64 %i.g, 2
  %i.h = getelementptr i8, ptr %i.f, i64 90       ; 2 uses
  %.val = load i8, ptr %i.h, align 2, !tbaa !79
  %i.i = tail call fastcc noundef i64 @_ZN6google8protobuf8internalL27MapValueRefDataOnlyByteSizeEPKNS0_15FieldDescriptorERKNS0_16MapValueConstRefE(i8 %.val, ptr noundef nonnull align 8 dereferenceable(12) %2)
  %i.j = add i64 %5, %i.i
  %i.k = load ptr, ptr %4, align 8, !tbaa !32
  %.not.i = icmp ult ptr %3, %i.k
  br i1 %.not.i, label %_ZN6google8protobuf2io19EpsCopyOutputStream11EnsureSpaceEPh.exit, label %bb.b, !prof !20
end_hunk_5
begin_hunk_6_@_ZN6google8protobuf8internalL25InternalSerializeMapEntryEPKNS0_15FieldDescriptorERKNS0_6MapKeyERKNS0_16MapValueConstRefEPhPNS0_2io19EpsCopyOutputStreamE:bb.a
  %i.w = trunc nuw nsw i32 %.07.i.lcssa.i to i8
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i.lcssa.i, i64 1 ; 2 uses
  store i8 %i.w, ptr %.0.i.lcssa.i, align 1, !tbaa !21
  %i.y = trunc i64 %i.j to i32                    ; 3 uses
  %i.z = icmp ugt i32 %i.y, 127
  br i1 %i.z, label %.lr.ph.i24, label %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit27, !prof !38

.lr.ph.i24:                                       ; preds = %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit, %.lr.ph.i24
  %.0.i2.i25 = phi ptr [ %i.ad, %.lr.ph.i24 ], [ %i.x, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit ] ; 2 uses
  %.07.i1.i26 = phi i32 [ %i.ac, %.lr.ph.i24 ], [ %i.y, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit ] ; 3 uses
  %i.aa = trunc i32 %.07.i1.i26 to i8
  %i.ab = or i8 %i.aa, -128
  store i8 %i.ab, ptr %.0.i2.i25, align 1, !tbaa !21
end_hunk_6
begin_hunk_7_@_ZN6google8protobuf8internalL25InternalSerializeMapEntryEPKNS0_15FieldDescriptorERKNS0_6MapKeyERKNS0_16MapValueConstRefEPhPNS0_2io19EpsCopyOutputStreamE:bb.a
  br i1 %i.ae, label %.lr.ph.i24, label %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit27, !prof !39, !llvm.loop !40

_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit27: ; preds = %.lr.ph.i24, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit
  %.07.i.lcssa.i22 = phi i32 [ %i.y, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit ], [ %i.ac, %.lr.ph.i24 ]
  %.0.i.lcssa.i23 = phi ptr [ %i.x, %_ZN6google8protobuf2io17CodedOutputStream20WriteVarint32ToArrayEjPh.exit ], [ %i.ad, %.lr.ph.i24 ] ; 2 uses
  %i.af = trunc nuw nsw i32 %.07.i.lcssa.i22 to i8
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i.lcssa.i23, i64 1
end_hunk_7
begin_hunk_8_@_ZN6google8protobuf8internal10WireFormat21FieldDataOnlyByteSizeEPKNS0_15FieldDescriptorERKNS0_7MessageE:bb.a
bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.0206249 = phi i64 [ 0, %.lr.ph ], [ %i.ad, %bb.d ]
  %i.r = call noundef i64 @_ZN6google8protobuf8internal22MapKeyDataOnlyByteSizeEPKNS0_15FieldDescriptorERKNS0_6MapKeyE(ptr noundef %i.j, ptr noundef nonnull align 8 dereferenceable(20) %i.o)
  %6 = add i64 %i.r, 2
  %.val = load i8, ptr %i.q, align 2, !tbaa !79
  %i.s = call fastcc noundef i64 @_ZN6google8protobuf8internalL27MapValueRefDataOnlyByteSizeEPKNS0_15FieldDescriptorERKNS0_16MapValueConstRefE(i8 %.val, ptr noundef nonnull align 8 dereferenceable(12) %i.p)
  %i.t = add i64 %6, %i.s                         ; 2 uses
  %i.u = trunc i64 %i.t to i32
  %i.v = or i32 %i.u, 1
  %i.w = call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.v, i1 true)
end_hunk_8
begin_hunk_9_@_ZN6google8protobuf8internal10WireFormat16MessageSetParser12ParseElementEPKcPNS1_12ParseContextE:bb.a
  %i.az = and i32 %i.ay, %i.ax
  %i.ba = add nsw i32 %i.az, %i.ay                ; 3 uses
  %i.bb = shl nsw i32 %i.ba, 13
  %i.bc = add nsw i32 %i.au, -16384
  %i.bd = add i32 %i.bc, %i.bb                    ; 2 uses
  %sext.mask19.i = and i32 %i.ba, 32768
  %i.be = icmp eq i32 %sext.mask19.i, 0
  br i1 %i.be, label %bb.g, label %.preheader.1.i, !prof !20
end_hunk_9
begin_hunk_10_@_ZN6google8protobuf8internal10WireFormat16MessageSetParser12ParseElementEPKcPNS1_12ParseContextE:bb.a
  %i.bj = and i32 %i.bi, %i.bh
  %i.bk = add nsw i32 %i.bj, %i.bi                ; 3 uses
  %i.bl = shl i32 %i.bk, 27
  %i.bm = add i32 %i.bd, -268435456
  %i.bn = add i32 %i.bm, %i.bl                    ; 3 uses
  %sext.mask19.1.i = and i32 %i.bk, 32768
  %i.bo = icmp eq i32 %sext.mask19.1.i, 0
  br i1 %i.bo, label %bb.g, label %.preheader.2.i, !prof !20
end_hunk_10
begin_hunk_11_@_ZN6google8protobuf8internal10WireFormat16MessageSetParser12ParseElementEPKcPNS1_12ParseContextE:bb.a
  %sext.i21.2.i = shl i32 %i.bq, 24
  %i.br = ashr exact i32 %sext.i21.2.i, 24        ; 3 uses
  %i.bs = and i32 %i.br, %i.bq
  %i.bt = add nsw i32 %i.bs, %i.br                ; 2 uses
  %sext.mask19.2.i = and i32 %i.bt, 32768
  %i.bu = icmp eq i32 %sext.mask19.2.i, 0
  br i1 %i.bu, label %bb.g, label %.preheader.3.i, !prof !20

end_hunk_11
begin_hunk_12_@_ZN6google8protobuf8internal10WireFormat16MessageSetParser12ParseElementEPKcPNS1_12ParseContextE:bb.a
  %sext.i21.3.i = shl i32 %i.bw, 24
  %i.bx = ashr exact i32 %sext.i21.3.i, 24        ; 3 uses
  %i.by = and i32 %i.bx, %i.bw
  %i.bz = add nsw i32 %i.by, %i.bx                ; 2 uses
  %sext.mask19.3.i = and i32 %i.bz, 32768
  %i.ca = icmp eq i32 %sext.mask19.3.i, 0
  br i1 %i.ca, label %bb.g, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, !prof !20

bb.g:                                             ; preds = %.preheader.3.i, %.preheader.2.i, %.preheader.1.i, %.preheader.preheader.i
  %.lcssa36.i = phi i64 [ 2, %.preheader.preheader.i ], [ 4, %.preheader.1.i ], [ 6, %.preheader.2.i ], [ 8, %.preheader.3.i ]
  %.lcssa34.i = phi i32 [ %i.ay, %.preheader.preheader.i ], [ %i.bi, %.preheader.1.i ], [ %i.br, %.preheader.2.i ], [ %i.bx, %.preheader.3.i ]
  %.lcssa32.i = phi i32 [ %i.ba, %.preheader.preheader.i ], [ %i.bk, %.preheader.1.i ], [ %i.bt, %.preheader.2.i ], [ %i.bz, %.preheader.3.i ]
  %.lcssa.i = phi i32 [ %i.bd, %.preheader.preheader.i ], [ %i.bn, %.preheader.1.i ], [ %i.bn, %.preheader.2.i ], [ %i.bn, %.preheader.3.i ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.lcssa36.i
  %i.cc = icmp ult i32 %.lcssa32.i, %.lcssa34.i
  br label %_ZN6google8protobuf8internal14ParseBigVarintEPKcPm.exit
end_hunk_12
begin_hunk_13_@_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf7MessageESt6vectorIS7_SaIS7_EEEEEET_SD_SD_SD_St26random_access_iterator_tag:bb.a
  br i1 %i.k, label %.lr.ph.i.preheader, label %bb.d

.lr.ph.i.preheader:                               ; preds = %bb.c
  %3 = add i64 %i.g, -8
  %4 = sub i64 %3, %i.d                           ; 2 uses
  %i.l = lshr i64 %4, 3
  %i.m = add nuw nsw i64 %i.l, 1                  ; 2 uses
  %min.iters.check175 = icmp ult i64 %4, 120
  br i1 %min.iters.check175, label %.lr.ph.i.preheader194, label %vector.memcheck168

vector.memcheck168:                               ; preds = %.lr.ph.i.preheader
  %5 = add i64 %i.g, -8
  %i.n = sub i64 %5, %i.d
  %i.o = and i64 %i.n, -8
  %6 = add i64 %i.o, 8                            ; 2 uses
  %scevgep169 = getelementptr i8, ptr %0, i64 %6
  %scevgep170 = getelementptr i8, ptr %1, i64 %6
  %bound0171 = icmp ult ptr %0, %scevgep170
  %bound1172 = icmp ult ptr %1, %scevgep169
  %found.conflict173 = and i1 %bound0171, %bound1172
end_hunk_13
