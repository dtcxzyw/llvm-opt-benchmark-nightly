Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Trace?download=true
inline.NumInlined: 3170
inline.NumDeleted: 1700
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4llvm15format_providerImvE6formatERKmRNS_11raw_ostreamENS_9StringRefE:bb.a
  store ptr %i.w, ptr %4, align 8, !tbaa !91
  store i64 %i.x, ptr %i.c, align 8, !tbaa !25
  br label %_ZN4llvm9StringRef13consume_frontES0_.exit26

_ZN4llvm9StringRef13consume_frontES0_.exit26:     ; preds = %_ZN4llvm9StringRef13consume_frontES0_.exit26.sink.split, %_ZN4llvm9StringRef13consume_frontEc.exit, %.critedge, %_ZNK4llvm9StringRef11starts_withES0_.exit.i23
  %i.y = phi i1 [ %i.o, %_ZNK4llvm9StringRef11starts_withES0_.exit.i23 ], [ %.ph, %_ZN4llvm9StringRef13consume_frontES0_.exit26.sink.split ], [ true, %_ZN4llvm9StringRef13consume_frontEc.exit ], [ false, %.critedge ]
  %.0 = phi i32 [ 0, %_ZNK4llvm9StringRef11starts_withES0_.exit.i23 ], [ %.0.ph, %_ZN4llvm9StringRef13consume_frontES0_.exit26.sink.split ], [ 0, %_ZN4llvm9StringRef13consume_frontEc.exit ], [ 0, %.critedge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.z = call noundef zeroext i1 @_ZN4llvm22consumeUnsignedIntegerERNS_9StringRefEjRy(ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 10, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #20
  %i.aa = load i64, ptr %i.a, align 8
  %spec.select = select i1 %i.z, i64 0, i64 %i.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.ab = load i64, ptr %0, align 8, !tbaa !25
  call void @_ZN4llvm13write_integerERNS_11raw_ostreamEmmNS_12IntegerStyleEb(ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %i.ab, i64 noundef %spec.select, i32 noundef %.0, i1 noundef zeroext %i.y) #20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN4llvm9StringRef13consume_frontES0_.exit26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN4llvm7support6detail15HelperFunctions15consumeHexStyleERNS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK4llvm9StringRef23starts_with_insensitiveES0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.26, i64 1) #20
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !398  ; 7 uses
  %.not.i.i = icmp ult i64 %i.c, 2
  br i1 %.not.i.i, label %bb.e, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i

_ZNK4llvm9StringRef11starts_withES0_.exit.i:      ; preds = %bb.b
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !92  ; 2 uses
  %i.d = load i16, ptr %.pre.i, align 1
  %i.e = icmp ne i16 %i.d, 11640
  %i.f = zext i1 %i.e to i32
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i9

bb.c:                                             ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %.pre.i, i64 2
  %i.i = add i64 %i.c, -2
  store ptr %i.h, ptr %0, align 8, !tbaa !91
  store i64 %i.i, ptr %i.b, align 8, !tbaa !25
  br label %bb.f

_ZNK4llvm9StringRef11starts_withES0_.exit.i9:     ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i
  %.pre.i8 = load ptr, ptr %0, align 8, !tbaa !92 ; 2 uses
  %i.j = load i16, ptr %.pre.i8, align 1
  %i.k = icmp ne i16 %i.j, 11608
  %i.l = zext i1 %i.k to i32
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.d, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i15

bb.d:                                             ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i9
  %i.n = getelementptr inbounds nuw i8, ptr %.pre.i8, i64 2
  %i.o = add i64 %i.c, -2
  store ptr %i.n, ptr %0, align 8, !tbaa !91
  store i64 %i.o, ptr %i.b, align 8, !tbaa !25
  br label %bb.f

_ZNK4llvm9StringRef11starts_withES0_.exit.i15:    ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i9
  %.pre.i14 = load ptr, ptr %0, align 8, !tbaa !92 ; 2 uses
  %i.p = load i16, ptr %.pre.i14, align 1
  %i.q = icmp ne i16 %i.p, 11128
  %i.r = zext i1 %i.q to i32
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %_ZN4llvm9StringRef13consume_frontES0_.exit18, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i21.thread

_ZN4llvm9StringRef13consume_frontES0_.exit18:     ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i15
  %i.t = getelementptr inbounds nuw i8, ptr %.pre.i14, i64 2
  %i.u = add i64 %i.c, -2
  store ptr %i.t, ptr %0, align 8, !tbaa !91
  store i64 %i.u, ptr %i.b, align 8, !tbaa !25
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %.not.i.i19 = icmp eq i64 %i.c, 0
  br i1 %.not.i.i19, label %.thread49, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i21

_ZNK4llvm9StringRef11starts_withES0_.exit.i21:    ; preds = %bb.e
  %.pre.i20 = load ptr, ptr %0, align 8, !tbaa !92 ; 2 uses
  %lhsc = load i8, ptr %.pre.i20, align 1
  %i.v = icmp eq i8 %lhsc, 120
  br i1 %i.v, label %_ZN4llvm9StringRef13consume_frontES0_.exit24, label %.thread49

_ZNK4llvm9StringRef11starts_withES0_.exit.i21.thread: ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i15
  %.pre.i2050 = load ptr, ptr %0, align 8, !tbaa !92 ; 2 uses
  %lhsc51 = load i8, ptr %.pre.i2050, align 1
  %i.w = icmp eq i8 %lhsc51, 120
  br i1 %i.w, label %_ZN4llvm9StringRef13consume_frontES0_.exit24, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i27

_ZN4llvm9StringRef13consume_frontES0_.exit24:     ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i21.thread, %_ZNK4llvm9StringRef11starts_withES0_.exit.i21
  %.pre.i2052 = phi ptr [ %.pre.i2050, %_ZNK4llvm9StringRef11starts_withES0_.exit.i21.thread ], [ %.pre.i20, %_ZNK4llvm9StringRef11starts_withES0_.exit.i21 ]
  %i.x = getelementptr inbounds nuw i8, ptr %.pre.i2052, i64 1
  %i.y = add i64 %i.c, -1
  store ptr %i.x, ptr %0, align 8, !tbaa !91
  store i64 %i.y, ptr %i.b, align 8, !tbaa !25
  br label %bb.f

_ZNK4llvm9StringRef11starts_withES0_.exit.i27:    ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i21.thread
  %.pre.i26 = load ptr, ptr %0, align 8, !tbaa !92 ; 2 uses
  %i.z = load i16, ptr %.pre.i26, align 1
  %i.aa = icmp ne i16 %i.z, 11096
  %i.ab = zext i1 %i.aa to i32
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_ZN4llvm9StringRef13consume_frontES0_.exit30, label %.thread49

_ZN4llvm9StringRef13consume_frontES0_.exit30:     ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i27
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre.i26, i64 2
  %i.ae = add i64 %i.c, -2
  store ptr %i.ad, ptr %0, align 8, !tbaa !91
  store i64 %i.ae, ptr %i.b, align 8, !tbaa !25
  br label %bb.f

.thread49:                                        ; preds = %bb.e, %_ZNK4llvm9StringRef11starts_withES0_.exit.i21, %_ZNK4llvm9StringRef11starts_withES0_.exit.i27
  %i.af = tail call noundef zeroext i1 @_ZN4llvm9StringRef13consume_frontES0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.31, i64 1) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %.thread49, %_ZN4llvm9StringRef13consume_frontES0_.exit30, %_ZN4llvm9StringRef13consume_frontES0_.exit18, %_ZN4llvm9StringRef13consume_frontES0_.exit24, %bb.a, %bb.d, %bb.c
  %.sroa.5.0 = phi i64 [ 4294967297, %bb.c ], [ 4294967296, %bb.d ], [ 0, %bb.a ], [ 4294967299, %_ZN4llvm9StringRef13consume_frontES0_.exit18 ], [ 4294967299, %_ZN4llvm9StringRef13consume_frontES0_.exit24 ], [ 4294967298, %_ZN4llvm9StringRef13consume_frontES0_.exit30 ], [ 4294967298, %.thread49 ]
  ret i64 %.sroa.5.0
}

declare void @_ZN4llvm9write_hexERNS_11raw_ostreamEmNS_13HexPrintStyleESt8optionalImE(ptr noundef nonnull align 8 dereferenceable(48), i64 noundef, i32 noundef, i64, i8) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm9StringRef13consume_frontES0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !398  ; 2 uses
  %.not.i = icmp ult i64 %i.b, %2
  br i1 %.not.i, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread3, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %2, 0
  %.pre = load ptr, ptr %0, align 8, !tbaa !92    ; 2 uses
  br i1 %i.c, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread, label %_ZNK4llvm9StringRef11starts_withES0_.exit

_ZNK4llvm9StringRef11starts_withES0_.exit:        ; preds = %bb.b
  %bcmp.i = tail call i32 @bcmp(ptr %.pre, ptr %1, i64 %2)
  %i.d = icmp eq i32 %bcmp.i, 0
  br i1 %i.d, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread3

_ZNK4llvm9StringRef11starts_withES0_.exit.thread: ; preds = %bb.b, %_ZNK4llvm9StringRef11starts_withES0_.exit
  %i.e = getelementptr inbounds nuw i8, ptr %.pre, i64 %2
  %i.f = sub nuw i64 %i.b, %2
  store ptr %i.e, ptr %0, align 8, !tbaa !91
  store i64 %i.f, ptr %i.a, align 8, !tbaa !25
  br label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread3

_ZNK4llvm9StringRef11starts_withES0_.exit.thread3: ; preds = %bb.a, %_ZNK4llvm9StringRef11starts_withES0_.exit, %_ZNK4llvm9StringRef11starts_withES0_.exit.thread
  %i.g = phi i1 [ false, %_ZNK4llvm9StringRef11starts_withES0_.exit ], [ true, %_ZNK4llvm9StringRef11starts_withES0_.exit.thread ], [ false, %bb.a ]
  ret i1 %i.g
}

declare void @_ZN4llvm13write_integerERNS_11raw_ostreamEmmNS_12IntegerStyleEb(ptr noundef nonnull align 8 dereferenceable(48), i64 noundef, i64 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK4llvm9StringRef23starts_with_insensitiveES0_(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4llvm18isPrefixedHexStyleENS_13HexPrintStyleE(i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4llvm22consumeUnsignedIntegerERNS_9StringRefEjRy(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorImEEEEvlS2_S3_(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr %2, i64 %3) #0 comdat align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  tail call void @_ZN4llvm15format_providerImvE6formatERKmRNS_11raw_ostreamENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr %2, i64 %3)
  ret void
}

declare noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm8DenseMapImNS0_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEEENS3_ImvEENS6_ImS8_EEEaSEOSB_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !213  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8DenseMapImNS0_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEEENS3_ImvEENS6_ImS8_EEE17deallocateBucketsEv.exit, label %.lr.ph7.preheader.i

.lr.ph7.preheader.i:                              ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !202
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !212
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5
  br label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %._crit_edge.i, %.lr.ph7.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph7.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !26   ; 2 uses
  %.not11.i2.i = icmp eq i32 %i.k, 0
  br i1 %.not11.i2.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph7.i
  %indvars.iv.tr.i = trunc nuw i64 %indvars.iv.i to i32
  %i.l = shl nuw i32 %indvars.iv.tr.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEENS4_ImvEENS7_ImS9_EEEEmS9_SA_SB_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i3.i = phi i32 [ %i.k, %.lr.ph.i ], [ %i.ac, %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEENS4_ImvEENS7_ImS9_EEEEmS9_SA_SB_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i, i1 true)
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 28
  %i.r = load i32, ptr %i.q, align 4, !tbaa !228  ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEENS4_ImvEENS7_ImS9_EEEEmS9_SA_SB_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !217
  %i.v = zext i32 %i.r to i64                     ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 4
  %i.x = add nuw nsw i64 %i.v, 31
  %i.y = lshr i64 %i.x, 3
  %i.z = and i64 %i.y, 1073741820
  %i.aa = add nuw nsw i64 %i.z, %i.w
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.u, i64 noundef %i.aa, i64 noundef 8) #20
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEENS4_ImvEENS7_ImS9_EEEEmS9_SA_SB_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEENS4_ImvEENS7_ImS9_EEEEmS9_SA_SB_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %bb.c, %bb.b
  %i.ab = add i32 %.0.i3.i, -1
  %i.ac = and i32 %i.ab, %.0.i3.i                 ; 2 uses
  %.not11.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.b, !llvm.loop !785

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEENS4_ImvEENS7_ImS9_EEEEmS9_SA_SB_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph7.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.i
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEENS4_ImvEENS7_ImS9_EEEEmS9_SA_SB_E10destroyAllEv.exit, label %.lr.ph7.i, !llvm.loop !786

_ZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEENS4_ImvEENS7_ImS9_EEEEmS9_SA_SB_E10destroyAllEv.exit: ; preds = %._crit_edge.i
  %.pr = load i32, ptr %i.a, align 4, !tbaa !213  ; 2 uses
  %i.ad = icmp eq i32 %.pr, 0
  br i1 %i.ad, label %_ZN4llvm8DenseMapImNS0_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEEENS3_ImvEENS6_ImS8_EEE17deallocateBucketsEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEENS4_ImvEENS7_ImS9_EEEEmS9_SA_SB_E10destroyAllEv.exit
  %i.ae = load ptr, ptr %0, align 8, !tbaa !202
  %i.af = zext i32 %.pr to i64                    ; 2 uses
  %i.ag = shl nuw nsw i64 %i.af, 5
  %i.ah = add nuw nsw i64 %i.af, 31
  %i.ai = lshr i64 %i.ah, 3
  %i.aj = and i64 %i.ai, 1073741820
  %i.ak = add nuw nsw i64 %i.aj, %i.ag
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ae, i64 noundef %i.ak, i64 noundef 8) #20
  br label %_ZN4llvm8DenseMapImNS0_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEEENS3_ImvEENS6_ImS8_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapImNS0_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEEENS3_ImvEENS6_ImS8_EEE17deallocateBucketsEv.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEENS4_ImvEENS7_ImS9_EEEEmS9_SA_SB_E10destroyAllEv.exit, %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.am = load <2 x ptr>, ptr %1, align 8, !tbaa !133
  store <2 x ptr> %i.am, ptr %0, align 8, !tbaa !133
  store ptr null, ptr %1, align 8, !tbaa !787
  store ptr null, ptr %i.al, align 8, !tbaa !526
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !26
  store i32 %i.ap, ptr %i.an, align 8, !tbaa !26
  store i32 0, ptr %i.ao, align 8, !tbaa !26
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.ar = load i32, ptr %i.a, align 4, !tbaa !26
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !26
  store i32 %i.as, ptr %i.a, align 4, !tbaa !26
  store i32 %i.ar, ptr %i.aq, align 4, !tbaa !26
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm8DenseMapIjNS0_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEEENS3_IjvEENS6_IjS8_EEEaSEOSB_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !241  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8DenseMapIjNS0_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEEENS3_IjvEENS6_IjS8_EEE17deallocateBucketsEv.exit, label %.lr.ph7.preheader.i

.lr.ph7.preheader.i:                              ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !230
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !240
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5
  br label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %._crit_edge.i, %.lr.ph7.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph7.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !26   ; 2 uses
  %.not11.i2.i = icmp eq i32 %i.k, 0
  br i1 %.not11.i2.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph7.i
  %indvars.iv.tr.i = trunc nuw i64 %indvars.iv.i to i32
  %i.l = shl nuw i32 %indvars.iv.tr.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEENS4_IjvEENS7_IjS9_EEEEjS9_SA_SB_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i3.i = phi i32 [ %i.k, %.lr.ph.i ], [ %i.ac, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEENS4_IjvEENS7_IjS9_EEEEjS9_SA_SB_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i, i1 true)
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 28
  %i.r = load i32, ptr %i.q, align 4, !tbaa !228  ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEENS4_IjvEENS7_IjS9_EEEEjS9_SA_SB_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !217
  %i.v = zext i32 %i.r to i64                     ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 4
  %i.x = add nuw nsw i64 %i.v, 31
  %i.y = lshr i64 %i.x, 3
  %i.z = and i64 %i.y, 1073741820
  %i.aa = add nuw nsw i64 %i.z, %i.w
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.u, i64 noundef %i.aa, i64 noundef 8) #20
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEENS4_IjvEENS7_IjS9_EEEEjS9_SA_SB_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEENS4_IjvEENS7_IjS9_EEEEjS9_SA_SB_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %bb.c, %bb.b
  %i.ab = add i32 %.0.i3.i, -1
  %i.ac = and i32 %i.ab, %.0.i3.i                 ; 2 uses
  %.not11.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.b, !llvm.loop !788

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEENS4_IjvEENS7_IjS9_EEEEjS9_SA_SB_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph7.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.i
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEENS4_IjvEENS7_IjS9_EEEEjS9_SA_SB_E10destroyAllEv.exit, label %.lr.ph7.i, !llvm.loop !789

_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEENS4_IjvEENS7_IjS9_EEEEjS9_SA_SB_E10destroyAllEv.exit: ; preds = %._crit_edge.i
  %.pr = load i32, ptr %i.a, align 4, !tbaa !241  ; 2 uses
  %i.ad = icmp eq i32 %.pr, 0
  br i1 %i.ad, label %_ZN4llvm8DenseMapIjNS0_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEEENS3_IjvEENS6_IjS8_EEE17deallocateBucketsEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEENS4_IjvEENS7_IjS9_EEEEjS9_SA_SB_E10destroyAllEv.exit
  %i.ae = load ptr, ptr %0, align 8, !tbaa !230
  %i.af = zext i32 %.pr to i64                    ; 2 uses
  %i.ag = shl nuw nsw i64 %i.af, 5
  %i.ah = add nuw nsw i64 %i.af, 31
  %i.ai = lshr i64 %i.ah, 3
  %i.aj = and i64 %i.ai, 1073741820
  %i.ak = add nuw nsw i64 %i.aj, %i.ag
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ae, i64 noundef %i.ak, i64 noundef 8) #20
  br label %_ZN4llvm8DenseMapIjNS0_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEEENS3_IjvEENS6_IjS8_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapIjNS0_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEEENS3_IjvEENS6_IjS8_EEE17deallocateBucketsEv.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEENS4_IjvEENS7_IjS9_EEEEjS9_SA_SB_E10destroyAllEv.exit, %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.am = load <2 x ptr>, ptr %1, align 8, !tbaa !133
  store <2 x ptr> %i.am, ptr %0, align 8, !tbaa !133
  store ptr null, ptr %1, align 8, !tbaa !790
  store ptr null, ptr %i.al, align 8, !tbaa !526
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !26
  store i32 %i.ap, ptr %i.an, align 8, !tbaa !26
  store i32 0, ptr %i.ao, align 8, !tbaa !26
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.ar = load i32, ptr %i.a, align 4, !tbaa !26
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !26
  store i32 %i.as, ptr %i.a, align 4, !tbaa !26
  store i32 %i.ar, ptr %i.aq, align 4, !tbaa !26
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm8DenseMapImNS0_IN12lldb_private11ConstStringENS1_8FileSpecENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEENS4_ImvEENS7_ImS9_EEEaSEOSC_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !555  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8DenseMapImNS0_IN12lldb_private11ConstStringENS1_8FileSpecENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEENS4_ImvEENS7_ImS9_EEE17deallocateBucketsEv.exit, label %.lr.ph7.preheader.i

.lr.ph7.preheader.i:                              ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !542
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !554
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5
  br label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %._crit_edge.i, %.lr.ph7.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph7.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !26   ; 2 uses
  %.not11.i2.i = icmp eq i32 %i.k, 0
  br i1 %.not11.i2.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph7.i
  %indvars.iv.tr.i = trunc nuw i64 %indvars.iv.i to i32
  %i.l = shl nuw i32 %indvars.iv.tr.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_ImvEENS8_ImSA_EEEEmSA_SB_SC_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i3.i = phi i32 [ %i.k, %.lr.ph.i ], [ %i.ac, %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_ImvEENS8_ImSA_EEEEmSA_SB_SC_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i, i1 true)
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 28
  %i.r = load i32, ptr %i.q, align 4, !tbaa !572  ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_ImvEENS8_ImSA_EEEEmSA_SB_SC_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !557
  %i.v = zext i32 %i.r to i64                     ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 5
  %i.x = add nuw nsw i64 %i.v, 31
  %i.y = lshr i64 %i.x, 3
  %i.z = and i64 %i.y, 1073741820
  %i.aa = add nuw nsw i64 %i.z, %i.w
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.u, i64 noundef %i.aa, i64 noundef 8) #20
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_ImvEENS8_ImSA_EEEEmSA_SB_SC_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_ImvEENS8_ImSA_EEEEmSA_SB_SC_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %bb.c, %bb.b
  %i.ab = add i32 %.0.i3.i, -1
  %i.ac = and i32 %i.ab, %.0.i3.i                 ; 2 uses
  %.not11.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.b, !llvm.loop !791

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_ImvEENS8_ImSA_EEEEmSA_SB_SC_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph7.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.i
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_ImvEENS8_ImSA_EEEEmSA_SB_SC_E10destroyAllEv.exit, label %.lr.ph7.i, !llvm.loop !792

_ZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_ImvEENS8_ImSA_EEEEmSA_SB_SC_E10destroyAllEv.exit: ; preds = %._crit_edge.i
  %.pr = load i32, ptr %i.a, align 4, !tbaa !555  ; 2 uses
  %i.ad = icmp eq i32 %.pr, 0
  br i1 %i.ad, label %_ZN4llvm8DenseMapImNS0_IN12lldb_private11ConstStringENS1_8FileSpecENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEENS4_ImvEENS7_ImS9_EEE17deallocateBucketsEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_ImvEENS8_ImSA_EEEEmSA_SB_SC_E10destroyAllEv.exit
  %i.ae = load ptr, ptr %0, align 8, !tbaa !542
  %i.af = zext i32 %.pr to i64                    ; 2 uses
  %i.ag = shl nuw nsw i64 %i.af, 5
  %i.ah = add nuw nsw i64 %i.af, 31
  %i.ai = lshr i64 %i.ah, 3
  %i.aj = and i64 %i.ai, 1073741820
  %i.ak = add nuw nsw i64 %i.aj, %i.ag
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ae, i64 noundef %i.ak, i64 noundef 8) #20
  br label %_ZN4llvm8DenseMapImNS0_IN12lldb_private11ConstStringENS1_8FileSpecENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEENS4_ImvEENS7_ImS9_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapImNS0_IN12lldb_private11ConstStringENS1_8FileSpecENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEENS4_ImvEENS7_ImS9_EEE17deallocateBucketsEv.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_ImvEENS8_ImSA_EEEEmSA_SB_SC_E10destroyAllEv.exit, %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.am = load <2 x ptr>, ptr %1, align 8, !tbaa !133
  store <2 x ptr> %i.am, ptr %0, align 8, !tbaa !133
  store ptr null, ptr %1, align 8, !tbaa !793
  store ptr null, ptr %i.al, align 8, !tbaa !526
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !26
  store i32 %i.ap, ptr %i.an, align 8, !tbaa !26
  store i32 0, ptr %i.ao, align 8, !tbaa !26
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.ar = load i32, ptr %i.a, align 4, !tbaa !26
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !26
  store i32 %i.as, ptr %i.a, align 4, !tbaa !26
  store i32 %i.ar, ptr %i.aq, align 4, !tbaa !26
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm8DenseMapIjNS0_IN12lldb_private11ConstStringENS1_8FileSpecENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEENS4_IjvEENS7_IjS9_EEEaSEOSC_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !600  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8DenseMapIjNS0_IN12lldb_private11ConstStringENS1_8FileSpecENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEENS4_IjvEENS7_IjS9_EEE17deallocateBucketsEv.exit, label %.lr.ph7.preheader.i

.lr.ph7.preheader.i:                              ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !587
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !599
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5
  br label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %._crit_edge.i, %.lr.ph7.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph7.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !26   ; 2 uses
  %.not11.i2.i = icmp eq i32 %i.k, 0
  br i1 %.not11.i2.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph7.i
  %indvars.iv.tr.i = trunc nuw i64 %indvars.iv.i to i32
  %i.l = shl nuw i32 %indvars.iv.tr.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_IjvEENS8_IjSA_EEEEjSA_SB_SC_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i3.i = phi i32 [ %i.k, %.lr.ph.i ], [ %i.ac, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_IjvEENS8_IjSA_EEEEjSA_SB_SC_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i, i1 true)
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 28
  %i.r = load i32, ptr %i.q, align 4, !tbaa !572  ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_IjvEENS8_IjSA_EEEEjSA_SB_SC_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !557
  %i.v = zext i32 %i.r to i64                     ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 5
  %i.x = add nuw nsw i64 %i.v, 31
  %i.y = lshr i64 %i.x, 3
  %i.z = and i64 %i.y, 1073741820
  %i.aa = add nuw nsw i64 %i.z, %i.w
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.u, i64 noundef %i.aa, i64 noundef 8) #20
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_IjvEENS8_IjSA_EEEEjSA_SB_SC_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_IjvEENS8_IjSA_EEEEjSA_SB_SC_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %bb.c, %bb.b
  %i.ab = add i32 %.0.i3.i, -1
  %i.ac = and i32 %i.ab, %.0.i3.i                 ; 2 uses
  %.not11.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.b, !llvm.loop !794

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_IjvEENS8_IjSA_EEEEjSA_SB_SC_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph7.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.i
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_IjvEENS8_IjSA_EEEEjSA_SB_SC_E10destroyAllEv.exit, label %.lr.ph7.i, !llvm.loop !795

_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_IjvEENS8_IjSA_EEEEjSA_SB_SC_E10destroyAllEv.exit: ; preds = %._crit_edge.i
  %.pr = load i32, ptr %i.a, align 4, !tbaa !600  ; 2 uses
  %i.ad = icmp eq i32 %.pr, 0
  br i1 %i.ad, label %_ZN4llvm8DenseMapIjNS0_IN12lldb_private11ConstStringENS1_8FileSpecENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEENS4_IjvEENS7_IjS9_EEE17deallocateBucketsEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_IjvEENS8_IjSA_EEEEjSA_SB_SC_E10destroyAllEv.exit
  %i.ae = load ptr, ptr %0, align 8, !tbaa !587
  %i.af = zext i32 %.pr to i64                    ; 2 uses
  %i.ag = shl nuw nsw i64 %i.af, 5
  %i.ah = add nuw nsw i64 %i.af, 31
  %i.ai = lshr i64 %i.ah, 3
  %i.aj = and i64 %i.ai, 1073741820
  %i.ak = add nuw nsw i64 %i.aj, %i.ag
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ae, i64 noundef %i.ak, i64 noundef 8) #20
  br label %_ZN4llvm8DenseMapIjNS0_IN12lldb_private11ConstStringENS1_8FileSpecENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEENS4_IjvEENS7_IjS9_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapIjNS0_IN12lldb_private11ConstStringENS1_8FileSpecENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEENS4_IjvEENS7_IjS9_EEE17deallocateBucketsEv.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_IjvEENS8_IjSA_EEEEjSA_SB_SC_E10destroyAllEv.exit, %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.am = load <2 x ptr>, ptr %1, align 8, !tbaa !133
  store <2 x ptr> %i.am, ptr %0, align 8, !tbaa !133
  store ptr null, ptr %1, align 8, !tbaa !796
  store ptr null, ptr %i.al, align 8, !tbaa !526
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !26
  store i32 %i.ap, ptr %i.an, align 8, !tbaa !26
  store i32 0, ptr %i.ao, align 8, !tbaa !26
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.ar = load i32, ptr %i.a, align 4, !tbaa !26
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !26
  store i32 %i.as, ptr %i.a, align 4, !tbaa !26
  store i32 %i.ar, ptr %i.aq, align 4, !tbaa !26
  ret ptr %0
}

declare void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEENS7_IjvEENSA_IjSC_EEEEjSC_SD_SE_E10destroyAllEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !523  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS4_IN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEENSA_IjvEENSD_IjSF_EEEEjSF_SG_SH_E10destroyAllEvEUljE_EEvPKjjT_.exit, label %.lr.ph7.preheader

.lr.ph7.preheader:                                ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !524
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !660
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5
  br label %.lr.ph7

.lr.ph7:                                          ; preds = %.lr.ph7.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph7.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.k = load i32, ptr %i.j, align 4, !tbaa !26   ; 2 uses
  %.not11.i2 = icmp eq i32 %i.k, 0
  br i1 %.not11.i2, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph7
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.l = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEENS7_IjvEENSA_IjSC_EEEEjSC_SD_SE_E10destroyAllEvENKUljE_clEj.exit
  %.0.i3 = phi i32 [ %i.k, %.lr.ph ], [ %i.az, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEENS7_IjvEENSA_IjSC_EEEEjSC_SD_SE_E10destroyAllEvENKUljE_clEj.exit ] ; 3 uses
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3, i1 true)
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %i.o ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 28 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !675  ; 2 uses
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEENS7_IjvEENSA_IjSC_EEEEjSC_SD_SE_E10destroyAllEvENKUljE_clEj.exit, label %.lr.ph7.preheader.i.i.i

.lr.ph7.preheader.i.i.i:                          ; preds = %bb.b
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !662
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !674
  %i.x = zext i32 %i.s to i64
  %i.y = add nuw nsw i64 %i.x, 31
  %i.z = lshr i64 %i.y, 5
  br label %.lr.ph7.i.i.i

.lr.ph7.i.i.i:                                    ; preds = %._crit_edge.i.i.i, %.lr.ph7.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.i.i.i
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !26 ; 2 uses
  %.not11.i2.i.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not11.i2.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph7.i.i.i
  %indvars.iv.tr.i.i.i = trunc nuw i64 %indvars.iv.i.i.i to i32
  %i.ac = shl nuw i32 %indvars.iv.tr.i.i.i, 5
  br label %bb.c

bb.c:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph.i.i.i
  %.0.i3.i.i.i = phi i32 [ %i.ab, %.lr.ph.i.i.i ], [ %i.ap, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i.i ] ; 3 uses
  %i.ad = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i, i1 true)
  %i.ae = or disjoint i32 %i.ad, %i.ac
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !291 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !304
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.ai to i64
  %i.an = sub i64 %i.al, %i.am
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.an) #21
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i.i: ; preds = %bb.d, %bb.c
  %i.ao = add i32 %.0.i3.i.i.i, -1
  %i.ap = and i32 %i.ao, %.0.i3.i.i.i             ; 2 uses
  %.not11.i.i.i.i = icmp eq i32 %i.ap, 0
  br i1 %.not11.i.i.i.i, label %._crit_edge.i.i.i, label %bb.c, !llvm.loop !797

._crit_edge.i.i.i:                                ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph7.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %i.z
  br i1 %.not.i.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEv.exit.i.i, label %.lr.ph7.i.i.i, !llvm.loop !798

_ZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEv.exit.i.i: ; preds = %._crit_edge.i.i.i
  %.pr.i.i = load i32, ptr %i.r, align 4, !tbaa !675 ; 2 uses
  %i.aq = icmp eq i32 %.pr.i.i, 0
  br i1 %i.aq, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEENS7_IjvEENSA_IjSC_EEEEjSC_SD_SE_E10destroyAllEvENKUljE_clEj.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEv.exit.i.i
  %i.ar = load ptr, ptr %i.q, align 8, !tbaa !662
  %i.as = zext i32 %.pr.i.i to i64                ; 2 uses
  %i.at = shl nuw nsw i64 %i.as, 5
  %i.au = add nuw nsw i64 %i.as, 31
  %i.av = lshr i64 %i.au, 3
  %i.aw = and i64 %i.av, 1073741820
  %i.ax = add nuw nsw i64 %i.aw, %i.at
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ar, i64 noundef %i.ax, i64 noundef 8) #20
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEENS7_IjvEENSA_IjSC_EEEEjSC_SD_SE_E10destroyAllEvENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEENS7_IjvEENSA_IjSC_EEEEjSC_SD_SE_E10destroyAllEvENKUljE_clEj.exit: ; preds = %bb.b, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEv.exit.i.i, %bb.e
  %i.ay = add i32 %.0.i3, -1
  %i.az = and i32 %i.ay, %.0.i3                   ; 2 uses
  %.not11.i = icmp eq i32 %i.az, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !799

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEENS7_IjvEENSA_IjSC_EEEEjSC_SD_SE_E10destroyAllEvENKUljE_clEj.exit, %.lr.ph7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.i
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS4_IN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEENSA_IjvEENSD_IjSF_EEEEjSF_SG_SH_E10destroyAllEvEUljE_EEvPKjjT_.exit, label %.lr.ph7, !llvm.loop !800

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS4_IN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEENSA_IjvEENSD_IjSF_EEEEjSF_SG_SH_E10destroyAllEvEUljE_EEvPKjjT_.exit: ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_move_assignEOS6_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(33) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !528, !range !182, !noundef !183
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load i8, ptr %i.d, align 8, !range !182
  %i.f = trunc nuw i8 %i.e to i1                  ; 2 uses
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !35     ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.i = icmp eq ptr %i.g, %i.h
  %i.j = load ptr, ptr %1, align 8, !tbaa !35     ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.l = icmp eq ptr %i.j, %i.k                   ; 2 uses
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.b
  br i1 %i.l, label %bb.c, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.b
  br i1 %i.l, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !51   ; 3 uses
  %i.o = icmp ult i64 %i.n, 16
  tail call void @llvm.assume(i1 %i.o)
  %.not21.i = icmp eq ptr %1, %0
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.d, !prof !529

bb.d:                                             ; preds = %bb.c
  switch i64 %i.n, label %bb.f [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.p = load i8, ptr %i.j, align 1, !tbaa !34
  store i8 %i.p, ptr %i.g, align 1, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %i.j, i64 %i.n, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.q = load i64, ptr %i.m, align 8, !tbaa !51   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !51
  %i.s = load ptr, ptr %0, align 8, !tbaa !35
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.t, align 1, !tbaa !34
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %0, align 8, !tbaa !35
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !51
  store i64 %i.w, ptr %i.u, align 8, !tbaa !51
  %i.x = load i64, ptr %i.k, align 8, !tbaa !34
  store i64 %i.x, ptr %i.h, align 8, !tbaa !34
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.y = load i64, ptr %i.h, align 8, !tbaa !34
  store ptr %i.j, ptr %0, align 8, !tbaa !35
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !51
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !51
  %i.ac = load i64, ptr %i.k, align 8, !tbaa !34
  store i64 %i.ac, ptr %i.h, align 8, !tbaa !34
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.g, ptr %1, align 8, !tbaa !35
  store i64 %i.y, ptr %i.k, align 8, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.k, ptr %1, align 8, !tbaa !35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.g, %bb.h
  %i.ad = phi ptr [ %i.g, %bb.g ], [ %i.k, %bb.h ], [ %i.j, %bb.c ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.ae, align 8, !tbaa !51
  store i8 0, ptr %i.ad, align 1, !tbaa !34
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

bb.i:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.af, ptr %0, align 8, !tbaa !50
  %i.ag = load ptr, ptr %1, align 8, !tbaa !35    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !51 ; 2 uses
  %i.al = icmp ult i64 %i.ak, 16
  tail call void @llvm.assume(i1 %i.al)
  %i.am = add nuw nsw i64 %i.ak, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.af, ptr noundef nonnull align 8 dereferenceable(1) %i.ah, i64 %i.am, i1 false)
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.j
  store ptr %i.ag, ptr %0, align 8, !tbaa !35
  %i.an = load i64, ptr %i.ah, align 8, !tbaa !34
  store i64 %i.an, ptr %i.af, align 8, !tbaa !34
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !51
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !51
  store ptr %i.ah, ptr %1, align 8, !tbaa !35
  store i64 0, ptr %i.ao, align 8, !tbaa !51
  store i8 0, ptr %i.ah, align 8, !tbaa !34
  store i8 1, ptr %i.a, align 8, !tbaa !528
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

bb.l:                                             ; preds = %bb.i
  store i8 0, ptr %i.a, align 8, !tbaa !528
  br i1 %i.c, label %bb.m, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

bb.m:                                             ; preds = %bb.l
  %i.ar = load ptr, ptr %0, align 8, !tbaa !35    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.m
  %i.au = load i64, ptr %i.as, align 8, !tbaa !34
  %i.av = add i64 %i.au, 1
  tail call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #21
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.l, %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm8DenseMapIjNS0_IN12lldb_private11ConstStringENS1_8FileSpecENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEENS4_IjvEENS7_IjS9_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !600  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8DenseMapIjNS0_IN12lldb_private11ConstStringENS1_8FileSpecENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEENS4_IjvEENS7_IjS9_EEE17deallocateBucketsEv.exit, label %.lr.ph7.preheader.i

.lr.ph7.preheader.i:                              ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !587
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !599
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5
  br label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %._crit_edge.i, %.lr.ph7.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph7.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !26   ; 2 uses
  %.not11.i2.i = icmp eq i32 %i.k, 0
  br i1 %.not11.i2.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph7.i
  %indvars.iv.tr.i = trunc nuw i64 %indvars.iv.i to i32
  %i.l = shl nuw i32 %indvars.iv.tr.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_IjvEENS8_IjSA_EEEEjSA_SB_SC_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i3.i = phi i32 [ %i.k, %.lr.ph.i ], [ %i.ac, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_IjvEENS8_IjSA_EEEEjSA_SB_SC_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i, i1 true)
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 28
  %i.r = load i32, ptr %i.q, align 4, !tbaa !572  ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_IjvEENS8_IjSA_EEEEjSA_SB_SC_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !557
  %i.v = zext i32 %i.r to i64                     ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 5
  %i.x = add nuw nsw i64 %i.v, 31
  %i.y = lshr i64 %i.x, 3
  %i.z = and i64 %i.y, 1073741820
  %i.aa = add nuw nsw i64 %i.z, %i.w
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.u, i64 noundef %i.aa, i64 noundef 8) #20
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_IjvEENS8_IjSA_EEEEjSA_SB_SC_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_IjvEENS8_IjSA_EEEEjSA_SB_SC_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %bb.c, %bb.b
  %i.ab = add i32 %.0.i3.i, -1
  %i.ac = and i32 %i.ab, %.0.i3.i                 ; 2 uses
  %.not11.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.b, !llvm.loop !794

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_IjvEENS8_IjSA_EEEEjSA_SB_SC_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph7.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.i
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_IjvEENS8_IjSA_EEEEjSA_SB_SC_E10destroyAllEv.exit, label %.lr.ph7.i, !llvm.loop !795

_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_IjvEENS8_IjSA_EEEEjSA_SB_SC_E10destroyAllEv.exit: ; preds = %._crit_edge.i
  %.pr = load i32, ptr %i.a, align 4, !tbaa !600  ; 2 uses
  %i.ad = icmp eq i32 %.pr, 0
  br i1 %i.ad, label %_ZN4llvm8DenseMapIjNS0_IN12lldb_private11ConstStringENS1_8FileSpecENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEENS4_IjvEENS7_IjS9_EEE17deallocateBucketsEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_IjvEENS8_IjSA_EEEEjSA_SB_SC_E10destroyAllEv.exit
  %i.ae = load ptr, ptr %0, align 8, !tbaa !587
  %i.af = zext i32 %.pr to i64                    ; 2 uses
  %i.ag = shl nuw nsw i64 %i.af, 5
  %i.ah = add nuw nsw i64 %i.af, 31
  %i.ai = lshr i64 %i.ah, 3
  %i.aj = and i64 %i.ai, 1073741820
  %i.ak = add nuw nsw i64 %i.aj, %i.ag
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ae, i64 noundef %i.ak, i64 noundef 8) #20
  br label %_ZN4llvm8DenseMapIjNS0_IN12lldb_private11ConstStringENS1_8FileSpecENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEENS4_IjvEENS7_IjS9_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapIjNS0_IN12lldb_private11ConstStringENS1_8FileSpecENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEENS4_IjvEENS7_IjS9_EEE17deallocateBucketsEv.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_IjvEENS8_IjSA_EEEEjSA_SB_SC_E10destroyAllEv.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm8DenseMapImNS0_IN12lldb_private11ConstStringENS1_8FileSpecENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEENS4_ImvEENS7_ImS9_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !555  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8DenseMapImNS0_IN12lldb_private11ConstStringENS1_8FileSpecENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEENS4_ImvEENS7_ImS9_EEE17deallocateBucketsEv.exit, label %.lr.ph7.preheader.i

.lr.ph7.preheader.i:                              ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !542
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !554
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5
  br label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %._crit_edge.i, %.lr.ph7.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph7.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !26   ; 2 uses
  %.not11.i2.i = icmp eq i32 %i.k, 0
  br i1 %.not11.i2.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph7.i
  %indvars.iv.tr.i = trunc nuw i64 %indvars.iv.i to i32
  %i.l = shl nuw i32 %indvars.iv.tr.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_ImvEENS8_ImSA_EEEEmSA_SB_SC_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i3.i = phi i32 [ %i.k, %.lr.ph.i ], [ %i.ac, %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_ImvEENS8_ImSA_EEEEmSA_SB_SC_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i, i1 true)
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 28
  %i.r = load i32, ptr %i.q, align 4, !tbaa !572  ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_ImvEENS8_ImSA_EEEEmSA_SB_SC_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !557
  %i.v = zext i32 %i.r to i64                     ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 5
  %i.x = add nuw nsw i64 %i.v, 31
  %i.y = lshr i64 %i.x, 3
  %i.z = and i64 %i.y, 1073741820
  %i.aa = add nuw nsw i64 %i.z, %i.w
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.u, i64 noundef %i.aa, i64 noundef 8) #20
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_ImvEENS8_ImSA_EEEEmSA_SB_SC_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_ImvEENS8_ImSA_EEEEmSA_SB_SC_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %bb.c, %bb.b
  %i.ab = add i32 %.0.i3.i, -1
  %i.ac = and i32 %i.ab, %.0.i3.i                 ; 2 uses
  %.not11.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.b, !llvm.loop !791

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_ImvEENS8_ImSA_EEEEmSA_SB_SC_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph7.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.i
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_ImvEENS8_ImSA_EEEEmSA_SB_SC_E10destroyAllEv.exit, label %.lr.ph7.i, !llvm.loop !792

_ZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_ImvEENS8_ImSA_EEEEmSA_SB_SC_E10destroyAllEv.exit: ; preds = %._crit_edge.i
  %.pr = load i32, ptr %i.a, align 4, !tbaa !555  ; 2 uses
  %i.ad = icmp eq i32 %.pr, 0
  br i1 %i.ad, label %_ZN4llvm8DenseMapImNS0_IN12lldb_private11ConstStringENS1_8FileSpecENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEENS4_ImvEENS7_ImS9_EEE17deallocateBucketsEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_ImvEENS8_ImSA_EEEEmSA_SB_SC_E10destroyAllEv.exit
  %i.ae = load ptr, ptr %0, align 8, !tbaa !542
  %i.af = zext i32 %.pr to i64                    ; 2 uses
  %i.ag = shl nuw nsw i64 %i.af, 5
  %i.ah = add nuw nsw i64 %i.af, 31
  %i.ai = lshr i64 %i.ah, 3
  %i.aj = and i64 %i.ai, 1073741820
  %i.ak = add nuw nsw i64 %i.aj, %i.ag
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ae, i64 noundef %i.ak, i64 noundef 8) #20
  br label %_ZN4llvm8DenseMapImNS0_IN12lldb_private11ConstStringENS1_8FileSpecENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEENS4_ImvEENS7_ImS9_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapImNS0_IN12lldb_private11ConstStringENS1_8FileSpecENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEENS4_ImvEENS7_ImS9_EEE17deallocateBucketsEv.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_ImvEENS8_ImSA_EEEEmSA_SB_SC_E10destroyAllEv.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm8DenseMapIjNS0_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEEENS3_IjvEENS6_IjS8_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !241  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8DenseMapIjNS0_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEEENS3_IjvEENS6_IjS8_EEE17deallocateBucketsEv.exit, label %.lr.ph7.preheader.i

.lr.ph7.preheader.i:                              ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !230
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !240
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5
  br label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %._crit_edge.i, %.lr.ph7.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph7.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !26   ; 2 uses
  %.not11.i2.i = icmp eq i32 %i.k, 0
  br i1 %.not11.i2.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph7.i
  %indvars.iv.tr.i = trunc nuw i64 %indvars.iv.i to i32
  %i.l = shl nuw i32 %indvars.iv.tr.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEENS4_IjvEENS7_IjS9_EEEEjS9_SA_SB_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i3.i = phi i32 [ %i.k, %.lr.ph.i ], [ %i.ac, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEENS4_IjvEENS7_IjS9_EEEEjS9_SA_SB_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i, i1 true)
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 28
  %i.r = load i32, ptr %i.q, align 4, !tbaa !228  ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEENS4_IjvEENS7_IjS9_EEEEjS9_SA_SB_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !217
  %i.v = zext i32 %i.r to i64                     ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 4
  %i.x = add nuw nsw i64 %i.v, 31
  %i.y = lshr i64 %i.x, 3
  %i.z = and i64 %i.y, 1073741820
  %i.aa = add nuw nsw i64 %i.z, %i.w
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.u, i64 noundef %i.aa, i64 noundef 8) #20
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEENS4_IjvEENS7_IjS9_EEEEjS9_SA_SB_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEENS4_IjvEENS7_IjS9_EEEEjS9_SA_SB_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %bb.c, %bb.b
  %i.ab = add i32 %.0.i3.i, -1
  %i.ac = and i32 %i.ab, %.0.i3.i                 ; 2 uses
  %.not11.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.b, !llvm.loop !788

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEENS4_IjvEENS7_IjS9_EEEEjS9_SA_SB_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph7.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.i
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEENS4_IjvEENS7_IjS9_EEEEjS9_SA_SB_E10destroyAllEv.exit, label %.lr.ph7.i, !llvm.loop !789

_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEENS4_IjvEENS7_IjS9_EEEEjS9_SA_SB_E10destroyAllEv.exit: ; preds = %._crit_edge.i
  %.pr = load i32, ptr %i.a, align 4, !tbaa !241  ; 2 uses
  %i.ad = icmp eq i32 %.pr, 0
  br i1 %i.ad, label %_ZN4llvm8DenseMapIjNS0_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEEENS3_IjvEENS6_IjS8_EEE17deallocateBucketsEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEENS4_IjvEENS7_IjS9_EEEEjS9_SA_SB_E10destroyAllEv.exit
  %i.ae = load ptr, ptr %0, align 8, !tbaa !230
  %i.af = zext i32 %.pr to i64                    ; 2 uses
  %i.ag = shl nuw nsw i64 %i.af, 5
  %i.ah = add nuw nsw i64 %i.af, 31
  %i.ai = lshr i64 %i.ah, 3
  %i.aj = and i64 %i.ai, 1073741820
  %i.ak = add nuw nsw i64 %i.aj, %i.ag
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ae, i64 noundef %i.ak, i64 noundef 8) #20
  br label %_ZN4llvm8DenseMapIjNS0_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEEENS3_IjvEENS6_IjS8_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapIjNS0_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEEENS3_IjvEENS6_IjS8_EEE17deallocateBucketsEv.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEENS4_IjvEENS7_IjS9_EEEEjS9_SA_SB_E10destroyAllEv.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm8DenseMapImNS0_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEEENS3_ImvEENS6_ImS8_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !213  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8DenseMapImNS0_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEEENS3_ImvEENS6_ImS8_EEE17deallocateBucketsEv.exit, label %.lr.ph7.preheader.i

.lr.ph7.preheader.i:                              ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !202
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !212
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5
  br label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %._crit_edge.i, %.lr.ph7.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph7.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !26   ; 2 uses
  %.not11.i2.i = icmp eq i32 %i.k, 0
  br i1 %.not11.i2.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph7.i
  %indvars.iv.tr.i = trunc nuw i64 %indvars.iv.i to i32
  %i.l = shl nuw i32 %indvars.iv.tr.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEENS4_ImvEENS7_ImS9_EEEEmS9_SA_SB_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i3.i = phi i32 [ %i.k, %.lr.ph.i ], [ %i.ac, %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEENS4_ImvEENS7_ImS9_EEEEmS9_SA_SB_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i, i1 true)
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 28
  %i.r = load i32, ptr %i.q, align 4, !tbaa !228  ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEENS4_ImvEENS7_ImS9_EEEEmS9_SA_SB_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !217
  %i.v = zext i32 %i.r to i64                     ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 4
  %i.x = add nuw nsw i64 %i.v, 31
  %i.y = lshr i64 %i.x, 3
  %i.z = and i64 %i.y, 1073741820
  %i.aa = add nuw nsw i64 %i.z, %i.w
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.u, i64 noundef %i.aa, i64 noundef 8) #20
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEENS4_ImvEENS7_ImS9_EEEEmS9_SA_SB_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEENS4_ImvEENS7_ImS9_EEEEmS9_SA_SB_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %bb.c, %bb.b
  %i.ab = add i32 %.0.i3.i, -1
  %i.ac = and i32 %i.ab, %.0.i3.i                 ; 2 uses
  %.not11.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.b, !llvm.loop !785

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEENS4_ImvEENS7_ImS9_EEEEmS9_SA_SB_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph7.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.i
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEENS4_ImvEENS7_ImS9_EEEEmS9_SA_SB_E10destroyAllEv.exit, label %.lr.ph7.i, !llvm.loop !786

_ZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEENS4_ImvEENS7_ImS9_EEEEmS9_SA_SB_E10destroyAllEv.exit: ; preds = %._crit_edge.i
  %.pr = load i32, ptr %i.a, align 4, !tbaa !213  ; 2 uses
  %i.ad = icmp eq i32 %.pr, 0
  br i1 %i.ad, label %_ZN4llvm8DenseMapImNS0_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEEENS3_ImvEENS6_ImS8_EEE17deallocateBucketsEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEENS4_ImvEENS7_ImS9_EEEEmS9_SA_SB_E10destroyAllEv.exit
  %i.ae = load ptr, ptr %0, align 8, !tbaa !202
  %i.af = zext i32 %.pr to i64                    ; 2 uses
  %i.ag = shl nuw nsw i64 %i.af, 5
  %i.ah = add nuw nsw i64 %i.af, 31
  %i.ai = lshr i64 %i.ah, 3
  %i.aj = and i64 %i.ai, 1073741820
  %i.ak = add nuw nsw i64 %i.aj, %i.ag
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ae, i64 noundef %i.ak, i64 noundef 8) #20
  br label %_ZN4llvm8DenseMapImNS0_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEEENS3_ImvEENS6_ImS8_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapImNS0_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEEENS3_ImvEENS6_ImS8_EEE17deallocateBucketsEv.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEENS4_ImvEENS7_ImS9_EEEEmS9_SA_SB_E10destroyAllEv.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm4json5parseIN12lldb_private21TraceGetStateResponseEEENS_8ExpectedIT_EERKNS_9StringRefEPKc(ptr dead_on_unwind noalias writable sret(%"class.llvm::Expected.414") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"class.llvm::Expected.13", align 8 ; 9 uses
  %4 = alloca %"class.llvm::json::Path::Root", align 8 ; 10 uses
  %5 = alloca %"struct.lldb_private::TraceGetStateResponse", align 16 ; 16 uses
  %6 = alloca %"class.llvm::json::Path", align 8  ; 3 uses
  %7 = alloca %"class.llvm::Error", align 8       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !tbaa !91
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !25
  call void @_ZN4llvm4json5parseENS_9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.13") align 8 %3, ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload) #20
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8               ; 2 uses
  %i.c = trunc i8 %i.b to i1
  br i1 %i.c, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i, label %bb.b

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %bb.a
  %i.d = load i64, ptr %3, align 8, !tbaa !68, !noalias !801
  %i.e = inttoptr i64 %i.d to ptr
  store ptr null, ptr %3, align 8, !tbaa !68, !noalias !801
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8
  %i.h = or i8 %i.g, 1
  store i8 %i.h, ptr %i.f, align 8
  store ptr %i.e, ptr %0, align 8, !tbaa !68, !alias.scope !804
  br label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %_ZN4llvm9StringRefC2EPKc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #20
  br label %_ZN4llvm9StringRefC2EPKc.exit

_ZN4llvm9StringRefC2EPKc.exit:                    ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi i64 [ %i.i, %bb.c ], [ 0, %bb.b ]
  store ptr %2, ptr %4, align 8, !tbaa !91
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %.sroa.0.0.i, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !25
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr @.str.20, ptr %i.j, align 8, !tbaa !92
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 2 uses
  store i8 0, ptr %i.l, align 8, !tbaa !454
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 104 ; 2 uses
  store i8 0, ptr %i.m, align 8, !tbaa !403
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %5, i8 0, i64 48, i1 false)
  store ptr null, ptr %6, align 8, !tbaa !21
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.o = ptrtoint ptr %4 to i64
  store i64 %i.o, ptr %i.n, align 8, !tbaa !807
  %i.p = call noundef zeroext i1 @_ZN12lldb_private8fromJSONERKN4llvm4json5ValueERNS_21TraceGetStateResponseENS1_4PathE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(112) %5, ptr noundef nonnull byval(%"class.llvm::json::Path") align 8 %6) #20
  br i1 %i.p, label %bb.d, label %_ZN4llvm5ErrorD2Ev.exit2

bb.d:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8
  %i.s = and i8 %i.r, -2
  store i8 %i.s, ptr %i.q, align 8
  %i.t = load <2 x ptr>, ptr %5, align 16, !tbaa !412
  store <2 x ptr> %i.t, ptr %0, align 8, !tbaa !412
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.w = load ptr, ptr %i.v, align 16, !tbaa !501
  store ptr %i.w, ptr %i.u, align 8, !tbaa !501
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %5, i8 0, i64 24, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.z = load <2 x ptr>, ptr %i.y, align 8, !tbaa !414
  store <2 x ptr> %i.z, ptr %i.x, align 8, !tbaa !414
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !502
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !502
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store i8 0, ptr %i.ad, align 8, !tbaa !454
  %i.ae = load i8, ptr %i.l, align 8, !tbaa !454, !range !182, !noundef !183
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.e, label %_ZNSt8optionalISt6vectorIN12lldb_private13TraceCpuStateESaIS2_EEEC2EOS5_.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.ai = load <2 x ptr>, ptr %i.ah, align 16, !tbaa !460
  store <2 x ptr> %i.ai, ptr %i.ag, align 8, !tbaa !460
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.al = load ptr, ptr %i.ak, align 16, !tbaa !503
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !503
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.ah, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.ad, align 8, !tbaa !454
  br label %_ZNSt8optionalISt6vectorIN12lldb_private13TraceCpuStateESaIS2_EEEC2EOS5_.exit.i.i

_ZNSt8optionalISt6vectorIN12lldb_private13TraceCpuStateESaIS2_EEEC2EOS5_.exit.i.i: ; preds = %bb.e, %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  store i8 0, ptr %i.am, align 8, !tbaa !403
  %i.an = load i8, ptr %i.m, align 8, !tbaa !403, !range !182, !noundef !183
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.f, label %_ZN4llvm8ExpectedIN12lldb_private21TraceGetStateResponseEEC2IS2_EEOT_PNSt9enable_ifIXsr3stdE16is_convertible_vIS5_S2_EEvE4typeE.exit

bb.f:                                             ; preds = %_ZNSt8optionalISt6vectorIN12lldb_private13TraceCpuStateESaIS2_EEEC2EOS5_.exit.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 2 uses
  %i.ar = load <2 x ptr>, ptr %i.aq, align 16, !tbaa !59
  store <2 x ptr> %i.ar, ptr %i.ap, align 8, !tbaa !59
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.au = load ptr, ptr %i.at, align 16, !tbaa !504
  store ptr %i.au, ptr %i.as, align 8, !tbaa !504
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.aq, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.am, align 8, !tbaa !403
  br label %_ZN4llvm8ExpectedIN12lldb_private21TraceGetStateResponseEEC2IS2_EEOT_PNSt9enable_ifIXsr3stdE16is_convertible_vIS5_S2_EEvE4typeE.exit

_ZN4llvm5ErrorD2Ev.exit2:                         ; preds = %_ZN4llvm9StringRefC2EPKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @_ZNK4llvm4json4Path4Root8getErrorEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %7, ptr noundef nonnull align 8 dereferenceable(56) %4) #20
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.aw = load i8, ptr %i.av, align 8
  %i.ax = or i8 %i.aw, 1
  store i8 %i.ax, ptr %i.av, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !808)
  %i.ay = load ptr, ptr %7, align 8, !tbaa !103, !noalias !808
  store ptr %i.ay, ptr %0, align 8, !tbaa !68, !alias.scope !808
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %_ZN4llvm8ExpectedIN12lldb_private21TraceGetStateResponseEEC2IS2_EEOT_PNSt9enable_ifIXsr3stdE16is_convertible_vIS5_S2_EEvE4typeE.exit

_ZN4llvm8ExpectedIN12lldb_private21TraceGetStateResponseEEC2IS2_EEOT_PNSt9enable_ifIXsr3stdE16is_convertible_vIS5_S2_EEvE4typeE.exit: ; preds = %bb.f, %_ZNSt8optionalISt6vectorIN12lldb_private13TraceCpuStateESaIS2_EEEC2EOS5_.exit.i.i, %_ZN4llvm5ErrorD2Ev.exit2
  call void @_ZN12lldb_private21TraceGetStateResponseD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !111 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i.i, label %_ZN4llvm4json4Path4RootD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm8ExpectedIN12lldb_private21TraceGetStateResponseEEC2IS2_EEOT_PNSt9enable_ifIXsr3stdE16is_convertible_vIS5_S2_EEvE4typeE.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !114
end_hunk_0
begin_hunk_1_@_ZN12lldb_private21TraceGetStateResponseD2Ev:bb.a
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !446 ; 2 uses
  %.not4.i.i.i7 = icmp eq ptr %i.bn, %i.bp
  br i1 %.not4.i.i.i7, label %_ZSt8_DestroyIPN12lldb_private16TraceThreadStateEEvT_S3_.exit.i, label %.lr.ph.i.i.i8

.lr.ph.i.i.i8:                                    ; preds = %_ZNSt6vectorIN12lldb_private15TraceBinaryDataESaIS1_EED2Ev.exit, %_ZSt8_DestroyIN12lldb_private16TraceThreadStateEEvPT_.exit.i.i.i
  %.05.i.i.i9 = phi ptr [ %i.cg, %_ZSt8_DestroyIN12lldb_private16TraceThreadStateEEvPT_.exit.i.i.i ], [ %i.bn, %_ZNSt6vectorIN12lldb_private15TraceBinaryDataESaIS1_EED2Ev.exit ] ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.05.i.i.i9, i64 8 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !498 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.05.i.i.i9, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !500 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.br, %i.bt
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN12lldb_private15TraceBinaryDataEEvT_S3_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i8, %_ZSt8_DestroyIN12lldb_private15TraceBinaryDataEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.bz, %_ZSt8_DestroyIN12lldb_private15TraceBinaryDataEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.br, %.lr.ph.i.i.i8 ] ; 3 uses
  %i.bu = load ptr, ptr %.05.i.i.i.i.i.i.i.i, align 8, !tbaa !35 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %_ZSt8_DestroyIN12lldb_private15TraceBinaryDataEEvPT_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.bx = load i64, ptr %i.bv, align 8, !tbaa !34
  %i.by = add i64 %i.bx, 1
  tail call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.by) #21
  br label %_ZSt8_DestroyIN12lldb_private15TraceBinaryDataEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyIN12lldb_private15TraceBinaryDataEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bz, %i.bt
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN12lldb_private15TraceBinaryDataEEvT_S3_.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !814

_ZSt8_DestroyIPN12lldb_private15TraceBinaryDataEEvT_S3_.exitthread-pre-split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN12lldb_private15TraceBinaryDataEEvPT_.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %i.bq, align 8, !tbaa !498
  br label %_ZSt8_DestroyIPN12lldb_private15TraceBinaryDataEEvT_S3_.exit.i.i.i.i.i.i

_ZSt8_DestroyIPN12lldb_private15TraceBinaryDataEEvT_S3_.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN12lldb_private15TraceBinaryDataEEvT_S3_.exitthread-pre-split.i.i.i.i.i.i, %.lr.ph.i.i.i8
  %i.ca = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPN12lldb_private15TraceBinaryDataEEvT_S3_.exitthread-pre-split.i.i.i.i.i.i ], [ %i.br, %.lr.ph.i.i.i8 ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZSt8_DestroyIN12lldb_private16TraceThreadStateEEvPT_.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN12lldb_private15TraceBinaryDataEEvT_S3_.exit.i.i.i.i.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.05.i.i.i9, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !502
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %i.ca to i64
  %i.cf = sub i64 %i.cd, %i.ce
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ca, i64 noundef %i.cf) #21
  br label %_ZSt8_DestroyIN12lldb_private16TraceThreadStateEEvPT_.exit.i.i.i

_ZSt8_DestroyIN12lldb_private16TraceThreadStateEEvPT_.exit.i.i.i: ; preds = %bb.h, %_ZSt8_DestroyIPN12lldb_private15TraceBinaryDataEEvT_S3_.exit.i.i.i.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %.05.i.i.i9, i64 32 ; 2 uses
  %.not.i.i.i10 = icmp eq ptr %i.cg, %i.bp
  br i1 %.not.i.i.i10, label %_ZSt8_DestroyIPN12lldb_private16TraceThreadStateEEvT_S3_.exitthread-pre-split.i, label %.lr.ph.i.i.i8, !llvm.loop !816

_ZSt8_DestroyIPN12lldb_private16TraceThreadStateEEvT_S3_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN12lldb_private16TraceThreadStateEEvPT_.exit.i.i.i
  %.pr.i11 = load ptr, ptr %0, align 8, !tbaa !448
  br label %_ZSt8_DestroyIPN12lldb_private16TraceThreadStateEEvT_S3_.exit.i

_ZSt8_DestroyIPN12lldb_private16TraceThreadStateEEvT_S3_.exit.i: ; preds = %_ZSt8_DestroyIPN12lldb_private16TraceThreadStateEEvT_S3_.exitthread-pre-split.i, %_ZNSt6vectorIN12lldb_private15TraceBinaryDataESaIS1_EED2Ev.exit
  %i.ch = phi ptr [ %.pr.i11, %_ZSt8_DestroyIPN12lldb_private16TraceThreadStateEEvT_S3_.exitthread-pre-split.i ], [ %i.bn, %_ZNSt6vectorIN12lldb_private15TraceBinaryDataESaIS1_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i12 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i1.i12, label %_ZNSt6vectorIN12lldb_private16TraceThreadStateESaIS1_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPN12lldb_private16TraceThreadStateEEvT_S3_.exit.i
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !501
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = ptrtoint ptr %i.ch to i64
  %i.cm = sub i64 %i.ck, %i.cl
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef %i.cm) #21
  br label %_ZNSt6vectorIN12lldb_private16TraceThreadStateESaIS1_EED2Ev.exit

_ZNSt6vectorIN12lldb_private16TraceThreadStateESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN12lldb_private16TraceThreadStateEEvT_S3_.exit.i, %bb.i
  ret void
}

declare noundef zeroext i1 @_ZN12lldb_private8fromJSONERKN4llvm4json5ValueERNS_21TraceGetStateResponseENS1_4PathE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(112), ptr noundef byval(%"class.llvm::json::Path") align 8) local_unnamed_addr #2

declare void @_ZN12lldb_private3Log6FormatEN4llvm9StringRefES2_RKNS1_19formatv_object_baseE(ptr noundef nonnull align 8 dereferenceable(104), ptr, i64, ptr, i64, ptr noundef nonnull align 8 dereferenceable(33)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvlS2_S3_(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr %2, i64 %3) #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = inttoptr i64 %0 to ptr
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !817, !nonnull !183, !align !775 ; 2 uses
  %i.d = icmp eq i64 %3, 0
  br i1 %i.d, label %bb.b, label %_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit.i.i

_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit.i.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.e = call noundef zeroext i1 @_ZN4llvm20getAsUnsignedIntegerENS_9StringRefEjRy(ptr %2, i64 %3, i32 noundef 10, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #20
  %i.f = load i64, ptr %i.a, align 8
  %spec.select.i.i = select i1 %i.e, i64 -1, i64 %i.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.b

bb.b:                                             ; preds = %_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit.i.i, %bb.a
  %.0.i.i = phi i64 [ -1, %bb.a ], [ %spec.select.i.i, %_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit.i.i ]
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !35   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !51
  %.sroa.speculated.i.i.i = call i64 @llvm.umin.i64(i64 %i.i, i64 %.0.i.i) ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !776
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !777  ; 2 uses
  %i.n = ptrtoint ptr %i.k to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = icmp ugt i64 %.sroa.speculated.i.i.i, %i.p
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %i.g, i64 noundef %.sroa.speculated.i.i.i) #20 ; 0 uses
  br label %_ZN4llvm7support6detail13FormatFunctorIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERNS_11raw_ostreamENS_9StringRefE.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZN4llvm7support6detail13FormatFunctorIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERNS_11raw_ostreamENS_9StringRefE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.g, i64 %.sroa.speculated.i.i.i, i1 false)
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !777
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.speculated.i.i.i
  store ptr %i.t, ptr %i.l, align 8, !tbaa !777
  br label %_ZN4llvm7support6detail13FormatFunctorIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERNS_11raw_ostreamENS_9StringRefE.exit

_ZN4llvm7support6detail13FormatFunctorIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERNS_11raw_ostreamENS_9StringRefE.exit: ; preds = %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEENS4_ImvEENS7_ImS9_EEEEmS9_SA_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.226", align 16 ; 10 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !213
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 5                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #20 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !202
  store ptr %i.y, ptr %i.q, align 8, !tbaa !212
  store i32 0, ptr %i.p, align 16, !tbaa !423
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEENS4_ImvEENS7_ImS9_EEEEmS9_SA_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !787    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !526 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !133
  store ptr %i.z, ptr %2, align 16, !tbaa !787
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !133
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !526
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !26 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.ad, align 8, !tbaa !26
  %i.ah = load <2 x i32>, ptr %i.p, align 16, !tbaa !26
  store <2 x i32> %i.ah, ptr %i.ad, align 8, !tbaa !26
  store <2 x i32> %i.ag, ptr %i.p, align 16, !tbaa !26
  %i.ai = icmp eq i32 %i.af, 0
  br i1 %i.ai, label %_ZN4llvm8DenseMapImNS0_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEEENS3_ImvEENS6_ImS8_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.aj = zext i32 %i.af to i64
  %i.ak = add nuw nsw i64 %i.aj, 31
  %i.al = lshr i64 %i.ak, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !26 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.ao = shl nuw i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEENS4_ImvEENS7_ImS9_EEEEmS9_SA_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.bf, %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEENS4_ImvEENS7_ImS9_EEEEmS9_SA_SB_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ap = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 28
  %i.au = load i32, ptr %i.at, align 4, !tbaa !228 ; 2 uses
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEENS4_ImvEENS7_ImS9_EEEEmS9_SA_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !217
  %i.ay = zext i32 %i.au to i64                   ; 2 uses
  %i.az = shl nuw nsw i64 %i.ay, 4
  %i.ba = add nuw nsw i64 %i.ay, 31
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = and i64 %i.bb, 1073741820
  %i.bd = add nuw nsw i64 %i.bc, %i.az
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ax, i64 noundef %i.bd, i64 noundef 8) #20
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEENS4_ImvEENS7_ImS9_EEEEmS9_SA_SB_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEENS4_ImvEENS7_ImS9_EEEEmS9_SA_SB_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.c, %bb.b
  %i.be = add i32 %.0.i3.i.i, -1
  %i.bf = and i32 %i.be, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.bf, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !785

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEENS4_ImvEENS7_ImS9_EEEEmS9_SA_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEENS4_ImvEENS7_ImS9_EEEEmS9_SA_SB_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !786

_ZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEENS4_ImvEENS7_ImS9_EEEEmS9_SA_SB_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.o, align 4, !tbaa !213 ; 2 uses
  %i.bg = icmp eq i32 %.pr.i, 0
  br i1 %i.bg, label %_ZN4llvm8DenseMapImNS0_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEEENS3_ImvEENS6_ImS8_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEENS4_ImvEENS7_ImS9_EEEEmS9_SA_SB_E10destroyAllEv.exit.i
  %i.bh = load ptr, ptr %2, align 16, !tbaa !202
  %i.bi = zext i32 %.pr.i to i64                  ; 2 uses
  %i.bj = shl nuw nsw i64 %i.bi, 5
  %i.bk = add nuw nsw i64 %i.bi, 31
  %i.bl = lshr i64 %i.bk, 3
  %i.bm = and i64 %i.bl, 1073741820
  %i.bn = add nuw nsw i64 %i.bm, %i.bj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bh, i64 noundef %i.bn, i64 noundef 8) #20
  br label %_ZN4llvm8DenseMapImNS0_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEEENS3_ImvEENS6_ImS8_EEED2Ev.exit

_ZN4llvm8DenseMapImNS0_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEEENS3_ImvEENS6_ImS8_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEENS4_ImvEENS7_ImS9_EEEEmS9_SA_SB_E10destroyAllEv.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEENS4_ImvEENS7_ImS9_EEEEmS9_SA_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !202
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !212
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !213  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !212  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !202
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !213
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i18 = icmp eq i64 %i.n, 0
  br i1 %.not.i18, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS4_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEENS7_ImvEENSA_ImSC_EEEEmSC_SD_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !26   ; 2 uses
  %.not11.i16 = icmp eq i32 %i.p, 0
  br i1 %.not11.i16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph21
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEENS4_ImvEENS7_ImS9_EEEEmS9_SA_SB_E8moveFromERSC_ENKUljE_clEj.exit
  %.0.i17 = phi i32 [ %i.p, %.lr.ph ], [ %i.bq, %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEENS4_ImvEENS7_ImS9_EEEEmS9_SA_SB_E8moveFromERSC_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i17, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.t ; 5 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !25   ; 2 uses
  %i.w = mul i64 %i.v, -4658895280553007687       ; 2 uses
  %i.x = lshr i64 %i.w, 31
  %i.y = xor i64 %i.x, %i.w
  %i.z = trunc i64 %i.y to i32
  %i.aa = and i32 %i.k, %i.z                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = lshr i64 %i.ab, 5                       ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !26
  %i.af = and i32 %i.aa, 31                       ; 2 uses
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.aj, %.lr.ph.i ], [ %i.aa, %bb.b ]
  %i.ai = add i32 %.014.i, 1
  %i.aj = and i32 %i.ai, %i.k                     ; 3 uses
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = lshr i64 %i.ak, 5                       ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !26
  %i.ao = and i32 %i.aj, 31                       ; 2 uses
  %i.ap = lshr i32 %i.an, %i.ao
  %i.aq = trunc i32 %i.ap to i1
  br i1 %i.aq, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !819

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.ab, %bb.b ], [ %i.ak, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %i.ar = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %.lcssa12.i ; 4 uses
  store i64 %i.v, ptr %i.ar, align 8, !tbaa !25
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, i8 0, i64 24, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.av = load <2 x ptr>, ptr %i.at, align 8, !tbaa !133
  store <2 x ptr> %i.av, ptr %i.as, align 8, !tbaa !133
  store ptr null, ptr %i.at, align 8, !tbaa !527
  store ptr null, ptr %i.au, align 8, !tbaa !526
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !26
  store i32 %i.ay, ptr %i.aw, align 8, !tbaa !26
  store i32 0, ptr %i.ax, align 8, !tbaa !26
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 28 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.u, i64 28 ; 3 uses
  %i.bb = load i32, ptr %i.az, align 4, !tbaa !26
  %i.bc = load i32, ptr %i.ba, align 4, !tbaa !26
  store i32 %i.bc, ptr %i.az, align 4, !tbaa !26
  store i32 %i.bb, ptr %i.ba, align 4, !tbaa !26
  %i.bd = shl nuw i32 1, %.lcssa.i
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !26
  %i.bg = or i32 %i.bf, %i.bd
  store i32 %i.bg, ptr %i.be, align 4, !tbaa !26
  %i.bh = load i32, ptr %i.ba, align 4, !tbaa !228 ; 2 uses
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEENS4_ImvEENS7_ImS9_EEEEmS9_SA_SB_E8moveFromERSC_ENKUljE_clEj.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  %i.bj = zext i32 %i.bh to i64                   ; 2 uses
  %i.bk = shl nuw nsw i64 %i.bj, 4
  %i.bl = add nuw nsw i64 %i.bj, 31
  %i.bm = lshr i64 %i.bl, 3
  %i.bn = and i64 %i.bm, 1073741820
  %i.bo = add nuw nsw i64 %i.bn, %i.bk
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef null, i64 noundef %i.bo, i64 noundef 8) #20
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEENS4_ImvEENS7_ImS9_EEEEmS9_SA_SB_E8moveFromERSC_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEENS4_ImvEENS7_ImS9_EEEEmS9_SA_SB_E8moveFromERSC_ENKUljE_clEj.exit: ; preds = %._crit_edge.i, %bb.c
  %i.bp = add i32 %.0.i17, -1
  %i.bq = and i32 %i.bp, %.0.i17                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bq, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !820

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEENS4_ImvEENS7_ImS9_EEEEmS9_SA_SB_E8moveFromERSC_ENKUljE_clEj.exit, %.lr.ph21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS4_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEENS7_ImvEENSA_ImSC_EEEEmSC_SD_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph21, !llvm.loop !821

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS4_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEENS7_ImvEENSA_ImSC_EEEEmSC_SD_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !213
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS4_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEENS7_ImvEENSA_ImSC_EEEEmSC_SD_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS4_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEENS7_ImvEENSA_ImSC_EEEEmSC_SD_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS4_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEENS7_ImvEENSA_ImSC_EEEEmSC_SD_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.br = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS4_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEENS7_ImvEENSA_ImSC_EEEEmSC_SD_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !423
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bt, ptr %i.bu, align 8, !tbaa !423
  %i.bv = icmp eq i32 %i.br, 0
  br i1 %i.bv, label %_ZN4llvm8DenseMapImNS0_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEEENS3_ImvEENS6_ImS8_EEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS4_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEENS7_ImvEENSA_ImSC_EEEEmSC_SD_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit
  %i.bw = load ptr, ptr %1, align 8, !tbaa !202
  %i.bx = zext i32 %i.br to i64                   ; 2 uses
  %i.by = shl nuw nsw i64 %i.bx, 5
  %i.bz = add nuw nsw i64 %i.bx, 31
  %i.ca = lshr i64 %i.bz, 3
  %i.cb = and i64 %i.ca, 1073741820
  %i.cc = add nuw nsw i64 %i.cb, %i.by
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bw, i64 noundef %i.cc, i64 noundef 8) #20
  store i32 0, ptr %i.d, align 4, !tbaa !213
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapImNS0_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEEENS3_ImvEENS6_ImS8_EEE4killEv.exit

_ZN4llvm8DenseMapImNS0_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEEENS3_ImvEENS6_ImS8_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS4_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEENS7_ImvEENSA_ImSC_EEEEmSC_SD_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E24lookupOrInsertIntoBucketIS3_JmEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !217, !noalias !822 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !227, !noalias !822 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !228, !noalias !822 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %.sroa.04.0.copyload.i = load ptr, ptr %1, align 8, !tbaa !91 ; 2 uses
  %i.i = ptrtoint ptr %.sroa.04.0.copyload.i to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.h, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !26
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph.i, label %.loopexit, !prof !215

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ab, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.01926.i = phi i32 [ %i.z, %bb.c ], [ %i.n, %bb.b ]
  %.sroa.0.0.copyload.i = load ptr, ptr %i.w, align 8, !tbaa !91
  %i.x = icmp eq ptr %.sroa.04.0.copyload.i, %.sroa.0.0.copyload.i
  br i1 %i.x, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit, label %bb.c, !prof !12

bb.c:                                             ; preds = %.lr.ph.i
  %i.y = add nuw i32 %.01926.i, 1
  %i.z = and i32 %i.y, %i.h                       ; 3 uses
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.aa ; 2 uses
  %i.ac = lshr i64 %i.aa, 5
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !26
  %i.af = and i32 %i.z, 31
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph.i, label %.loopexit, !prof !216, !llvm.loop !439

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa30.sink.i.ph = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ab, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa30.sink.i.ph, ptr %i.a, align 8, !tbaa !527
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !440
  %i.ak = shl i32 %i.aj, 2
  %i.al = add i32 %i.ak, 4
  %i.am = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.al, %i.am
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit, label %bb.d, !prof !12

bb.d:                                             ; preds = %.loopexit
  %i.an = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.an)
  %i.ao = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !527
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !227
  %.pre16 = load ptr, ptr %0, align 8, !tbaa !217
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit: ; preds = %.loopexit, %bb.d
  %i.ap = phi ptr [ %.pre16, %bb.d ], [ %i.b, %.loopexit ]
  %i.aq = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.ar = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa30.sink.i.ph, %.loopexit ] ; 4 uses
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = ashr exact i64 %i.au, 4                 ; 2 uses
  %i.aw = trunc i64 %i.av to i32
  %i.ax = and i32 %i.aw, 31
  %i.ay = shl nuw i32 1, %i.ax
  %i.az = lshr i64 %i.av, 5
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.az ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !26
  %i.bc = or i32 %i.ay, %i.bb
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !26
  %i.bd = load i32, ptr %i.ai, align 8, !tbaa !440
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr %i.ai, align 8, !tbaa !440
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bf = load i64, ptr %1, align 8, !tbaa !91
  store i64 %i.bf, ptr %i.ar, align 8, !tbaa !91
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.bh = load i64, ptr %2, align 8, !tbaa !25
  store i64 %i.bh, ptr %i.bg, align 8, !tbaa !25
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit
  %.sroa.0.0 = phi ptr [ %i.ar, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit ], [ %i.w, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !217, !noalias !827 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !227, !noalias !827 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !228, !noalias !827 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %.sroa.04.0.copyload = load ptr, ptr %1, align 8, !tbaa !91 ; 2 uses
  %i.h = ptrtoint ptr %.sroa.04.0.copyload to i64
  %i.i = mul i64 %i.h, -4658895280553007687       ; 2 uses
  %i.j = lshr i64 %i.i, 31
  %i.k = xor i64 %i.j, %i.i
  %i.l = trunc i64 %i.k to i32
  %i.m = and i32 %i.g, %i.l                       ; 3 uses
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.n ; 2 uses
  %i.p = lshr i64 %i.n, 5
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !26
  %i.s = and i32 %i.m, 31
  %i.t = lshr i32 %i.r, %i.s
  %i.u = trunc i32 %i.t to i1
  br i1 %i.u, label %.lr.ph, label %.thread, !prof !215

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.v = phi ptr [ %i.aa, %bb.c ], [ %i.o, %bb.b ] ; 2 uses
  %.01926 = phi i32 [ %i.y, %bb.c ], [ %i.m, %bb.b ]
  %.sroa.0.0.copyload = load ptr, ptr %i.v, align 8, !tbaa !91
  %i.w = icmp eq ptr %.sroa.04.0.copyload, %.sroa.0.0.copyload ; 3 uses
  br i1 %i.w, label %.thread, label %bb.c, !prof !12

bb.c:                                             ; preds = %.lr.ph
  %i.x = add nuw i32 %.01926, 1
  %i.y = and i32 %i.x, %i.g                       ; 3 uses
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.z ; 2 uses
  %i.ab = lshr i64 %i.z, 5
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !26
  %i.ae = and i32 %i.y, 31
  %i.af = lshr i32 %i.ad, %i.ae
  %i.ag = trunc i32 %i.af to i1
  br i1 %i.ag, label %.lr.ph, label %.thread, !prof !216, !llvm.loop !439

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ], [ %i.aa, %bb.c ], [ %i.v, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.w, %bb.c ], [ %i.w, %.lr.ph ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !527
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.232", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !228
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #20 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !217
  store ptr %i.y, ptr %i.q, align 8, !tbaa !227
  store i32 0, ptr %i.p, align 16, !tbaa !440
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !133
  %i.aa = load ptr, ptr %0, align 8, !tbaa !527
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !133
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !133
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !133
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !26 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !26
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !26
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !26
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !26
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIN12lldb_private11ConstStringEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #20
  br label %_ZN4llvm8DenseMapIN12lldb_private11ConstStringEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEED2Ev.exit

_ZN4llvm8DenseMapIN12lldb_private11ConstStringEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !217    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !227
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !228  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !227  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !217
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !228
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !26   ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E8moveFromERS9_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.az, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E8moveFromERS9_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.u, align 8
  %i.v = ptrtoint ptr %.sroa.0.0.copyload.i to i64 ; 2 uses
  %i.w = mul i64 %i.v, -4658895280553007687       ; 2 uses
  %i.x = lshr i64 %i.w, 31
  %i.y = xor i64 %i.x, %i.w
  %i.z = trunc i64 %i.y to i32
  %i.aa = and i32 %i.k, %i.z                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = lshr i64 %i.ab, 5                       ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !26 ; 2 uses
  %i.af = and i32 %i.aa, 31                       ; 2 uses
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E8moveFromERS9_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.aj, %.lr.ph.i ], [ %i.aa, %bb.b ]
  %i.ai = add i32 %.016.i, 1
  %i.aj = and i32 %i.ai, %i.k                     ; 3 uses
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = lshr i64 %i.ak, 5                       ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !26 ; 2 uses
  %i.ao = and i32 %i.aj, 31                       ; 2 uses
  %i.ap = lshr i32 %i.an, %i.ao
  %i.aq = trunc i32 %i.ap to i1
  br i1 %i.aq, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E8moveFromERS9_ENKUljE_clEj.exit, !llvm.loop !832

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E8moveFromERS9_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ab, %bb.b ], [ %i.ak, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.ae, %bb.b ], [ %i.an, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa13.i ; 2 uses
  store i64 %i.v, ptr %i.as, align 8, !tbaa !91
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !25
  store i64 %i.av, ptr %i.at, align 8, !tbaa !25
  %i.aw = shl nuw i32 1, %.lcssa.i
  %i.ax = or i32 %i.aw, %.lcssa11.i
  store i32 %i.ax, ptr %i.ar, align 4, !tbaa !26
  %i.ay = add i32 %.0.i15, -1
  %i.az = and i32 %i.ay, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.az, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !833

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E8moveFromERS9_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !834

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !228
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ba = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !440
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bc, ptr %i.bd, align 8, !tbaa !440
  %i.be = icmp eq i32 %i.ba, 0
  br i1 %i.be, label %_ZN4llvm8DenseMapIN12lldb_private11ConstStringEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit
  %i.bf = zext i32 %i.ba to i64                   ; 2 uses
  %i.bg = shl nuw nsw i64 %i.bf, 4
  %i.bh = add nuw nsw i64 %i.bf, 31
  %i.bi = lshr i64 %i.bh, 3
  %i.bj = and i64 %i.bi, 1073741820
  %i.bk = add nuw nsw i64 %i.bj, %i.bg
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bk, i64 noundef 8) #20
  store i32 0, ptr %i.d, align 4, !tbaa !228
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIN12lldb_private11ConstStringEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEE4killEv.exit

_ZN4llvm8DenseMapIN12lldb_private11ConstStringEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEENS4_IjvEENS7_IjS9_EEEEjS9_SA_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.228", align 16 ; 10 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !241
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 5                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #20 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !230
  store ptr %i.y, ptr %i.q, align 8, !tbaa !240
  store i32 0, ptr %i.p, align 16, !tbaa !469
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEENS4_IjvEENS7_IjS9_EEEEjS9_SA_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !790    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !526 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !133
  store ptr %i.z, ptr %2, align 16, !tbaa !790
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !133
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !526
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !26 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.ad, align 8, !tbaa !26
  %i.ah = load <2 x i32>, ptr %i.p, align 16, !tbaa !26
  store <2 x i32> %i.ah, ptr %i.ad, align 8, !tbaa !26
  store <2 x i32> %i.ag, ptr %i.p, align 16, !tbaa !26
  %i.ai = icmp eq i32 %i.af, 0
  br i1 %i.ai, label %_ZN4llvm8DenseMapIjNS0_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEEENS3_IjvEENS6_IjS8_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.aj = zext i32 %i.af to i64
  %i.ak = add nuw nsw i64 %i.aj, 31
  %i.al = lshr i64 %i.ak, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !26 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.ao = shl nuw i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEENS4_IjvEENS7_IjS9_EEEEjS9_SA_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.bf, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEENS4_IjvEENS7_IjS9_EEEEjS9_SA_SB_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ap = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 28
  %i.au = load i32, ptr %i.at, align 4, !tbaa !228 ; 2 uses
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEENS4_IjvEENS7_IjS9_EEEEjS9_SA_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !217
  %i.ay = zext i32 %i.au to i64                   ; 2 uses
  %i.az = shl nuw nsw i64 %i.ay, 4
  %i.ba = add nuw nsw i64 %i.ay, 31
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = and i64 %i.bb, 1073741820
  %i.bd = add nuw nsw i64 %i.bc, %i.az
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ax, i64 noundef %i.bd, i64 noundef 8) #20
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEENS4_IjvEENS7_IjS9_EEEEjS9_SA_SB_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEENS4_IjvEENS7_IjS9_EEEEjS9_SA_SB_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.c, %bb.b
  %i.be = add i32 %.0.i3.i.i, -1
  %i.bf = and i32 %i.be, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.bf, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !788

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEENS4_IjvEENS7_IjS9_EEEEjS9_SA_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEENS4_IjvEENS7_IjS9_EEEEjS9_SA_SB_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !789

_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEENS4_IjvEENS7_IjS9_EEEEjS9_SA_SB_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.o, align 4, !tbaa !241 ; 2 uses
  %i.bg = icmp eq i32 %.pr.i, 0
  br i1 %i.bg, label %_ZN4llvm8DenseMapIjNS0_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEEENS3_IjvEENS6_IjS8_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEENS4_IjvEENS7_IjS9_EEEEjS9_SA_SB_E10destroyAllEv.exit.i
  %i.bh = load ptr, ptr %2, align 16, !tbaa !230
  %i.bi = zext i32 %.pr.i to i64                  ; 2 uses
  %i.bj = shl nuw nsw i64 %i.bi, 5
  %i.bk = add nuw nsw i64 %i.bi, 31
  %i.bl = lshr i64 %i.bk, 3
  %i.bm = and i64 %i.bl, 1073741820
  %i.bn = add nuw nsw i64 %i.bm, %i.bj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bh, i64 noundef %i.bn, i64 noundef 8) #20
  br label %_ZN4llvm8DenseMapIjNS0_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEEENS3_IjvEENS6_IjS8_EEED2Ev.exit

_ZN4llvm8DenseMapIjNS0_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEEENS3_IjvEENS6_IjS8_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEENS4_IjvEENS7_IjS9_EEEEjS9_SA_SB_E10destroyAllEv.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEENS4_IjvEENS7_IjS9_EEEEjS9_SA_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !230
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !240
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !241  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !240  ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !230
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !241
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i20 = icmp eq i64 %i.n, 0
  br i1 %.not.i20, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS4_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEENS7_IjvEENSA_IjSC_EEEEjSC_SD_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, label %.lr.ph23

.lr.ph23:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !26   ; 2 uses
  %.not11.i18 = icmp eq i32 %i.p, 0
  br i1 %.not11.i18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph23
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEENS4_IjvEENS7_IjS9_EEEEjS9_SA_SB_E8moveFromERSC_ENKUljE_clEj.exit
  %.0.i19 = phi i32 [ %i.p, %.lr.ph ], [ %i.be, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEENS4_IjvEENS7_IjS9_EEEEjS9_SA_SB_E8moveFromERSC_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i19, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.t ; 5 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !26   ; 2 uses
  %i.w = mul i32 %i.v, 37
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.w, %bb.b ], [ %i.ae, %bb.c ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.x = zext i32 %.0.i7 to i64                   ; 2 uses
  %i.y = lshr i64 %i.x, 5                         ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !26
  %i.ab = and i32 %.0.i7, 31                      ; 2 uses
  %i.ac = lshr i32 %i.aa, %i.ab
  %i.ad = trunc i32 %i.ac to i1
  %i.ae = add i32 %.0.i7, 1
  br i1 %i.ad, label %bb.c, label %bb.d, !llvm.loop !835

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y ; 2 uses
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.x ; 4 uses
  store i32 %i.v, ptr %i.ag, align 4, !tbaa !26
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ak = load <2 x ptr>, ptr %i.ai, align 8, !tbaa !133
  store <2 x ptr> %i.ak, ptr %i.ah, align 8, !tbaa !133
  store ptr null, ptr %i.ai, align 8, !tbaa !527
  store ptr null, ptr %i.aj, align 8, !tbaa !526
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !26
  store i32 %i.an, ptr %i.al, align 8, !tbaa !26
  store i32 0, ptr %i.am, align 8, !tbaa !26
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 28 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.u, i64 28 ; 3 uses
  %i.aq = load i32, ptr %i.ao, align 4, !tbaa !26
  %i.ar = load i32, ptr %i.ap, align 4, !tbaa !26
  store i32 %i.ar, ptr %i.ao, align 4, !tbaa !26
  store i32 %i.aq, ptr %i.ap, align 4, !tbaa !26
  %i.as = shl nuw i32 1, %i.ab
  %i.at = load i32, ptr %i.af, align 4, !tbaa !26
  %i.au = or i32 %i.at, %i.as
  store i32 %i.au, ptr %i.af, align 4, !tbaa !26
  %i.av = load i32, ptr %i.ap, align 4, !tbaa !228 ; 2 uses
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEENS4_IjvEENS7_IjS9_EEEEjS9_SA_SB_E8moveFromERSC_ENKUljE_clEj.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ax = zext i32 %i.av to i64                   ; 2 uses
  %i.ay = shl nuw nsw i64 %i.ax, 4
  %i.az = add nuw nsw i64 %i.ax, 31
  %i.ba = lshr i64 %i.az, 3
  %i.bb = and i64 %i.ba, 1073741820
  %i.bc = add nuw nsw i64 %i.bb, %i.ay
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef null, i64 noundef %i.bc, i64 noundef 8) #20
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEENS4_IjvEENS7_IjS9_EEEEjS9_SA_SB_E8moveFromERSC_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEENS4_IjvEENS7_IjS9_EEEEjS9_SA_SB_E8moveFromERSC_ENKUljE_clEj.exit: ; preds = %bb.d, %bb.e
  %i.bd = add i32 %.0.i19, -1
  %i.be = and i32 %i.bd, %.0.i19                  ; 2 uses
  %.not11.i = icmp eq i32 %i.be, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !836

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEENS4_IjvEENS7_IjS9_EEEEjS9_SA_SB_E8moveFromERSC_ENKUljE_clEj.exit, %.lr.ph23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS4_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEENS7_IjvEENSA_IjSC_EEEEjSC_SD_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph23, !llvm.loop !837

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS4_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEENS7_IjvEENSA_IjSC_EEEEjSC_SD_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !241
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS4_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEENS7_IjvEENSA_IjSC_EEEEjSC_SD_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS4_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEENS7_IjvEENSA_IjSC_EEEEjSC_SD_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS4_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEENS7_IjvEENSA_IjSC_EEEEjSC_SD_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bf = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS4_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEENS7_IjvEENSA_IjSC_EEEEjSC_SD_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !469
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bh, ptr %i.bi, align 8, !tbaa !469
  %i.bj = icmp eq i32 %i.bf, 0
  br i1 %i.bj, label %_ZN4llvm8DenseMapIjNS0_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEEENS3_IjvEENS6_IjS8_EEE4killEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS4_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEENS7_IjvEENSA_IjSC_EEEEjSC_SD_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit
  %i.bk = load ptr, ptr %1, align 8, !tbaa !230
  %i.bl = zext i32 %i.bf to i64                   ; 2 uses
  %i.bm = shl nuw nsw i64 %i.bl, 5
  %i.bn = add nuw nsw i64 %i.bl, 31
  %i.bo = lshr i64 %i.bn, 3
  %i.bp = and i64 %i.bo, 1073741820
  %i.bq = add nuw nsw i64 %i.bp, %i.bm
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bk, i64 noundef %i.bq, i64 noundef 8) #20
  store i32 0, ptr %i.d, align 4, !tbaa !241
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIjNS0_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEEENS3_IjvEENS6_IjS8_EEE4killEv.exit

_ZN4llvm8DenseMapIjNS0_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEEENS3_IjvEENS6_IjS8_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS4_IN12lldb_private11ConstStringEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEENS7_IjvEENSA_IjSC_EEEEjSC_SD_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, %bb.f
  ret void
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #13

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !41
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #20, !inline_history !838
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !26   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !26
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !41
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #20, !inline_history !838
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt22_Optional_payload_baseISt6vectorIjSaIjEEE14_M_copy_assignERKS3_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !456, !range !182, !noundef !183
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i8, ptr %i.d, align 8, !range !182
  %i.f = trunc nuw i8 %i.e to i1                  ; 2 uses
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIjSaIjEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) ; 0 uses
  br label %_ZNSt22_Optional_payload_baseISt6vectorIjSaIjEEE8_M_resetEv.exit

bb.c:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !462  ; 2 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !457    ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i = icmp eq ptr %i.i, %i.j
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = icmp ugt i64 %i.m, 9223372036854775804
  br i1 %i.n, label %bb.f, label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !529

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.e
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #23
  br label %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.i.i.i

_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.i.i.i:  ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i, %bb.d
  %i.p = phi ptr [ %i.o, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i.i ], [ null, %bb.d ] ; 6 uses
  store ptr %i.p, ptr %0, align 8, !tbaa !457
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !462
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.m
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.r, ptr %i.s, align 8, !tbaa !459
  %i.t = load ptr, ptr %1, align 8, !tbaa !526    ; 3 uses
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !526
end_hunk_1
begin_hunk_2_@_ZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_ImvEENS8_ImSA_EEEEmSA_SB_SC_E24lookupOrInsertIntoBucketIRKmJEEESt4pairIPSC_bEOT_DpOT0_:bb.a

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load i64, ptr %i.w, align 8, !tbaa !25
  %i.y = icmp eq i64 %i.i, %i.x
  br i1 %i.y, label %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_ImvEENS8_ImSA_EEEEmSA_SB_SC_E15LookupBucketForImEEbRKT_RPSC_.exit, label %bb.c, !prof !12

bb.c:                                             ; preds = %.lr.ph.i
  %i.z = add nuw i32 %.024.i, 1
  %i.aa = and i32 %i.z, %i.h                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !26
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %.loopexit, !prof !216, !llvm.loop !875

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !793
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !876
  %i.al = shl i32 %i.ak, 2
  %i.am = add i32 %i.al, 4
  %i.an = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.am, %i.an
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_ImvEENS8_ImSA_EEEEmSA_SB_SC_E22findBucketForInsertionImEEPSC_RKT_SG_.exit, label %bb.d, !prof !12

bb.d:                                             ; preds = %.loopexit
  %i.ao = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_ImvEENS8_ImSA_EEEEmSA_SB_SC_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ao)
  %i.ap = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_ImvEENS8_ImSA_EEEEmSA_SB_SC_E15LookupBucketForImEEbRKT_RPSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !793
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !554
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !542
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_ImvEENS8_ImSA_EEEEmSA_SB_SC_E22findBucketForInsertionImEEPSC_RKT_SG_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_ImvEENS8_ImSA_EEEEmSA_SB_SC_E22findBucketForInsertionImEEPSC_RKT_SG_.exit: ; preds = %.loopexit, %bb.d
  %i.aq = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.ar = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.as = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = ashr exact i64 %i.av, 5                 ; 2 uses
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = and i32 %i.ax, 31
  %i.az = shl nuw i32 1, %i.ay
  %i.ba = lshr i64 %i.aw, 5
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.ba ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !26
  %i.bd = or i32 %i.az, %i.bc
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !26
  %i.be = load i32, ptr %i.aj, align 8, !tbaa !876
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr %i.aj, align 8, !tbaa !876
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bg = load i64, ptr %1, align 8, !tbaa !25
  store i64 %i.bg, ptr %i.as, align 8, !tbaa !25
  %i.bh = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i8 0, i64 24, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_ImvEENS8_ImSA_EEEEmSA_SB_SC_E15LookupBucketForImEEbRKT_RPSC_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_ImvEENS8_ImSA_EEEEmSA_SB_SC_E15LookupBucketForImEEbRKT_RPSC_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_ImvEENS8_ImSA_EEEEmSA_SB_SC_E22findBucketForInsertionImEEPSC_RKT_SG_.exit
  %.sroa.0.0 = phi ptr [ %i.as, %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_ImvEENS8_ImSA_EEEEmSA_SB_SC_E22findBucketForInsertionImEEPSC_RKT_SG_.exit ], [ %i.w, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_ImvEENS8_ImSA_EEEEmSA_SB_SC_E22findBucketForInsertionImEEPSC_RKT_SG_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_ImvEENS8_ImSA_EEEEmSA_SB_SC_E15LookupBucketForImEEbRKT_RPSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !542, !noalias !877 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !554, !noalias !877 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !555, !noalias !877 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load i64, ptr %1, align 8, !tbaa !25     ; 2 uses
  %i.i = mul i64 %i.h, -4658895280553007687       ; 2 uses
  %i.j = lshr i64 %i.i, 31
  %i.k = xor i64 %i.j, %i.i
  %i.l = trunc i64 %i.k to i32
  %i.m = and i32 %i.g, %i.l                       ; 3 uses
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.n ; 2 uses
  %i.p = lshr i64 %i.n, 5
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !26
  %i.s = and i32 %i.m, 31
  %i.t = lshr i32 %i.r, %i.s
  %i.u = trunc i32 %i.t to i1
  br i1 %i.u, label %.lr.ph, label %.thread, !prof !215

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.v = phi ptr [ %i.ab, %bb.c ], [ %i.o, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.z, %bb.c ], [ %i.m, %bb.b ]
  %i.w = load i64, ptr %i.v, align 8, !tbaa !25
  %i.x = icmp eq i64 %i.h, %i.w                   ; 3 uses
  br i1 %i.x, label %.thread, label %bb.c, !prof !12

bb.c:                                             ; preds = %.lr.ph
  %i.y = add nuw i32 %.024, 1
  %i.z = and i32 %i.y, %i.g                       ; 3 uses
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.aa ; 2 uses
  %i.ac = lshr i64 %i.aa, 5
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !26
  %i.af = and i32 %i.z, 31
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph, label %.thread, !prof !216, !llvm.loop !875

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ], [ %i.ab, %bb.c ], [ %i.v, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.x, %bb.c ], [ %i.x, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !793
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_ImvEENS8_ImSA_EEEEmSA_SB_SC_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.247", align 16 ; 10 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !555
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 5                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #20 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !542
  store ptr %i.y, ptr %i.q, align 8, !tbaa !554
  store i32 0, ptr %i.p, align 16, !tbaa !876
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_ImvEENS8_ImSA_EEEEmSA_SB_SC_E8moveFromERSD_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !793    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !526 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !133
  store ptr %i.z, ptr %2, align 16, !tbaa !793
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !133
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !526
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !26 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.ad, align 8, !tbaa !26
  %i.ah = load <2 x i32>, ptr %i.p, align 16, !tbaa !26
  store <2 x i32> %i.ah, ptr %i.ad, align 8, !tbaa !26
  store <2 x i32> %i.ag, ptr %i.p, align 16, !tbaa !26
  %i.ai = icmp eq i32 %i.af, 0
  br i1 %i.ai, label %_ZN4llvm8DenseMapImNS0_IN12lldb_private11ConstStringENS1_8FileSpecENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEENS4_ImvEENS7_ImS9_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.aj = zext i32 %i.af to i64
  %i.ak = add nuw nsw i64 %i.aj, 31
  %i.al = lshr i64 %i.ak, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !26 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.ao = shl nuw i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_ImvEENS8_ImSA_EEEEmSA_SB_SC_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.bf, %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_ImvEENS8_ImSA_EEEEmSA_SB_SC_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ap = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 28
  %i.au = load i32, ptr %i.at, align 4, !tbaa !572 ; 2 uses
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_ImvEENS8_ImSA_EEEEmSA_SB_SC_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !557
  %i.ay = zext i32 %i.au to i64                   ; 2 uses
  %i.az = shl nuw nsw i64 %i.ay, 5
  %i.ba = add nuw nsw i64 %i.ay, 31
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = and i64 %i.bb, 1073741820
  %i.bd = add nuw nsw i64 %i.bc, %i.az
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ax, i64 noundef %i.bd, i64 noundef 8) #20
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_ImvEENS8_ImSA_EEEEmSA_SB_SC_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_ImvEENS8_ImSA_EEEEmSA_SB_SC_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.c, %bb.b
  %i.be = add i32 %.0.i3.i.i, -1
  %i.bf = and i32 %i.be, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.bf, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !791

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_ImvEENS8_ImSA_EEEEmSA_SB_SC_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_ImvEENS8_ImSA_EEEEmSA_SB_SC_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !792

_ZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_ImvEENS8_ImSA_EEEEmSA_SB_SC_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.o, align 4, !tbaa !555 ; 2 uses
  %i.bg = icmp eq i32 %.pr.i, 0
  br i1 %i.bg, label %_ZN4llvm8DenseMapImNS0_IN12lldb_private11ConstStringENS1_8FileSpecENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEENS4_ImvEENS7_ImS9_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_ImvEENS8_ImSA_EEEEmSA_SB_SC_E10destroyAllEv.exit.i
  %i.bh = load ptr, ptr %2, align 16, !tbaa !542
  %i.bi = zext i32 %.pr.i to i64                  ; 2 uses
  %i.bj = shl nuw nsw i64 %i.bi, 5
  %i.bk = add nuw nsw i64 %i.bi, 31
  %i.bl = lshr i64 %i.bk, 3
  %i.bm = and i64 %i.bl, 1073741820
  %i.bn = add nuw nsw i64 %i.bm, %i.bj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bh, i64 noundef %i.bn, i64 noundef 8) #20
  br label %_ZN4llvm8DenseMapImNS0_IN12lldb_private11ConstStringENS1_8FileSpecENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEENS4_ImvEENS7_ImS9_EEED2Ev.exit

_ZN4llvm8DenseMapImNS0_IN12lldb_private11ConstStringENS1_8FileSpecENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEENS4_ImvEENS7_ImS9_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_ImvEENS8_ImSA_EEEEmSA_SB_SC_E10destroyAllEv.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_ImvEENS8_ImSA_EEEEmSA_SB_SC_E8moveFromERSD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !542
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !554
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !555  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !554  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !542
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !555
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i18 = icmp eq i64 %i.n, 0
  br i1 %.not.i18, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS4_IN12lldb_private11ConstStringENS5_8FileSpecENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEENS8_ImvEENSB_ImSD_EEEEmSD_SE_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !26   ; 2 uses
  %.not11.i16 = icmp eq i32 %i.p, 0
  br i1 %.not11.i16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph21
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_ImvEENS8_ImSA_EEEEmSA_SB_SC_E8moveFromERSD_ENKUljE_clEj.exit
  %.0.i17 = phi i32 [ %i.p, %.lr.ph ], [ %i.bq, %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_ImvEENS8_ImSA_EEEEmSA_SB_SC_E8moveFromERSD_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i17, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.t ; 5 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !25   ; 2 uses
  %i.w = mul i64 %i.v, -4658895280553007687       ; 2 uses
  %i.x = lshr i64 %i.w, 31
  %i.y = xor i64 %i.x, %i.w
  %i.z = trunc i64 %i.y to i32
  %i.aa = and i32 %i.k, %i.z                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = lshr i64 %i.ab, 5                       ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !26
  %i.af = and i32 %i.aa, 31                       ; 2 uses
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.aj, %.lr.ph.i ], [ %i.aa, %bb.b ]
  %i.ai = add i32 %.014.i, 1
  %i.aj = and i32 %i.ai, %i.k                     ; 3 uses
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = lshr i64 %i.ak, 5                       ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !26
  %i.ao = and i32 %i.aj, 31                       ; 2 uses
  %i.ap = lshr i32 %i.an, %i.ao
  %i.aq = trunc i32 %i.ap to i1
  br i1 %i.aq, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !882

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.ab, %bb.b ], [ %i.ak, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %i.ar = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %.lcssa12.i ; 4 uses
  store i64 %i.v, ptr %i.ar, align 8, !tbaa !25
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, i8 0, i64 24, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.av = load <2 x ptr>, ptr %i.at, align 8, !tbaa !133
  store <2 x ptr> %i.av, ptr %i.as, align 8, !tbaa !133
  store ptr null, ptr %i.at, align 8, !tbaa !883
  store ptr null, ptr %i.au, align 8, !tbaa !526
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !26
  store i32 %i.ay, ptr %i.aw, align 8, !tbaa !26
  store i32 0, ptr %i.ax, align 8, !tbaa !26
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 28 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.u, i64 28 ; 3 uses
  %i.bb = load i32, ptr %i.az, align 4, !tbaa !26
  %i.bc = load i32, ptr %i.ba, align 4, !tbaa !26
  store i32 %i.bc, ptr %i.az, align 4, !tbaa !26
  store i32 %i.bb, ptr %i.ba, align 4, !tbaa !26
  %i.bd = shl nuw i32 1, %.lcssa.i
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !26
  %i.bg = or i32 %i.bf, %i.bd
  store i32 %i.bg, ptr %i.be, align 4, !tbaa !26
  %i.bh = load i32, ptr %i.ba, align 4, !tbaa !572 ; 2 uses
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_ImvEENS8_ImSA_EEEEmSA_SB_SC_E8moveFromERSD_ENKUljE_clEj.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  %i.bj = zext i32 %i.bh to i64                   ; 2 uses
  %i.bk = shl nuw nsw i64 %i.bj, 5
  %i.bl = add nuw nsw i64 %i.bj, 31
  %i.bm = lshr i64 %i.bl, 3
  %i.bn = and i64 %i.bm, 1073741820
  %i.bo = add nuw nsw i64 %i.bn, %i.bk
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef null, i64 noundef %i.bo, i64 noundef 8) #20
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_ImvEENS8_ImSA_EEEEmSA_SB_SC_E8moveFromERSD_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_ImvEENS8_ImSA_EEEEmSA_SB_SC_E8moveFromERSD_ENKUljE_clEj.exit: ; preds = %._crit_edge.i, %bb.c
  %i.bp = add i32 %.0.i17, -1
  %i.bq = and i32 %i.bp, %.0.i17                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bq, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !884

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_ImvEENS8_ImSA_EEEEmSA_SB_SC_E8moveFromERSD_ENKUljE_clEj.exit, %.lr.ph21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS4_IN12lldb_private11ConstStringENS5_8FileSpecENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEENS8_ImvEENSB_ImSD_EEEEmSD_SE_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph21, !llvm.loop !885

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS4_IN12lldb_private11ConstStringENS5_8FileSpecENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEENS8_ImvEENSB_ImSD_EEEEmSD_SE_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !555
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS4_IN12lldb_private11ConstStringENS5_8FileSpecENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEENS8_ImvEENSB_ImSD_EEEEmSD_SE_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS4_IN12lldb_private11ConstStringENS5_8FileSpecENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEENS8_ImvEENSB_ImSD_EEEEmSD_SE_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS4_IN12lldb_private11ConstStringENS5_8FileSpecENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEENS8_ImvEENSB_ImSD_EEEEmSD_SE_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.br = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS4_IN12lldb_private11ConstStringENS5_8FileSpecENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEENS8_ImvEENSB_ImSD_EEEEmSD_SE_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !876
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bt, ptr %i.bu, align 8, !tbaa !876
  %i.bv = icmp eq i32 %i.br, 0
  br i1 %i.bv, label %_ZN4llvm8DenseMapImNS0_IN12lldb_private11ConstStringENS1_8FileSpecENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEENS4_ImvEENS7_ImS9_EEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS4_IN12lldb_private11ConstStringENS5_8FileSpecENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEENS8_ImvEENSB_ImSD_EEEEmSD_SE_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit
  %i.bw = load ptr, ptr %1, align 8, !tbaa !542
  %i.bx = zext i32 %i.br to i64                   ; 2 uses
  %i.by = shl nuw nsw i64 %i.bx, 5
  %i.bz = add nuw nsw i64 %i.bx, 31
  %i.ca = lshr i64 %i.bz, 3
  %i.cb = and i64 %i.ca, 1073741820
  %i.cc = add nuw nsw i64 %i.cb, %i.by
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bw, i64 noundef %i.cc, i64 noundef 8) #20
  store i32 0, ptr %i.d, align 4, !tbaa !555
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapImNS0_IN12lldb_private11ConstStringENS1_8FileSpecENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEENS4_ImvEENS7_ImS9_EEE4killEv.exit

_ZN4llvm8DenseMapImNS0_IN12lldb_private11ConstStringENS1_8FileSpecENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEENS4_ImvEENS7_ImS9_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS4_IN12lldb_private11ConstStringENS5_8FileSpecENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEENS8_ImvEENSB_ImSD_EEEEmSD_SE_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E24lookupOrInsertIntoBucketIS3_JS4_EEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !557, !noalias !886 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !571, !noalias !886 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !572, !noalias !886 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %.sroa.04.0.copyload.i = load ptr, ptr %1, align 8, !tbaa !91 ; 2 uses
  %i.i = ptrtoint ptr %.sroa.04.0.copyload.i to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.h, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !26
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph.i, label %.loopexit, !prof !215

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ab, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.01926.i = phi i32 [ %i.z, %bb.c ], [ %i.n, %bb.b ]
  %.sroa.0.0.copyload.i = load ptr, ptr %i.w, align 8, !tbaa !91
  %i.x = icmp eq ptr %.sroa.04.0.copyload.i, %.sroa.0.0.copyload.i
  br i1 %i.x, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit, label %bb.c, !prof !12

bb.c:                                             ; preds = %.lr.ph.i
  %i.y = add nuw i32 %.01926.i, 1
  %i.z = and i32 %i.y, %i.h                       ; 3 uses
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.aa ; 2 uses
  %i.ac = lshr i64 %i.aa, 5
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !26
  %i.af = and i32 %i.z, 31
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph.i, label %.loopexit, !prof !216, !llvm.loop !891

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa30.sink.i.ph = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ab, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa30.sink.i.ph, ptr %i.a, align 8, !tbaa !883
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !892
  %i.ak = shl i32 %i.aj, 2
  %i.al = add i32 %i.ak, 4
  %i.am = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.al, %i.am
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit, label %bb.d, !prof !12

bb.d:                                             ; preds = %.loopexit
  %i.an = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.an)
  %i.ao = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !883
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !571
  %.pre16 = load ptr, ptr %0, align 8, !tbaa !557
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit: ; preds = %.loopexit, %bb.d
  %i.ap = phi ptr [ %.pre16, %bb.d ], [ %i.b, %.loopexit ]
  %i.aq = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.ar = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa30.sink.i.ph, %.loopexit ] ; 4 uses
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = ashr exact i64 %i.au, 5                 ; 2 uses
  %i.aw = trunc i64 %i.av to i32
  %i.ax = and i32 %i.aw, 31
  %i.ay = shl nuw i32 1, %i.ax
  %i.az = lshr i64 %i.av, 5
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.az ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !26
  %i.bc = or i32 %i.ay, %i.bb
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !26
  %i.bd = load i32, ptr %i.ai, align 8, !tbaa !892
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr %i.ai, align 8, !tbaa !892
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bf = load i64, ptr %1, align 8, !tbaa !91
  store i64 %i.bf, ptr %i.ar, align 8, !tbaa !91
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !625
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit
  %.sroa.0.0 = phi ptr [ %i.ar, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ %i.w, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !557, !noalias !893 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !571, !noalias !893 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !572, !noalias !893 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %.sroa.04.0.copyload = load ptr, ptr %1, align 8, !tbaa !91 ; 2 uses
  %i.h = ptrtoint ptr %.sroa.04.0.copyload to i64
  %i.i = mul i64 %i.h, -4658895280553007687       ; 2 uses
  %i.j = lshr i64 %i.i, 31
  %i.k = xor i64 %i.j, %i.i
  %i.l = trunc i64 %i.k to i32
  %i.m = and i32 %i.g, %i.l                       ; 3 uses
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.n ; 2 uses
  %i.p = lshr i64 %i.n, 5
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !26
  %i.s = and i32 %i.m, 31
  %i.t = lshr i32 %i.r, %i.s
  %i.u = trunc i32 %i.t to i1
  br i1 %i.u, label %.lr.ph, label %.thread, !prof !215

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.v = phi ptr [ %i.aa, %bb.c ], [ %i.o, %bb.b ] ; 2 uses
  %.01926 = phi i32 [ %i.y, %bb.c ], [ %i.m, %bb.b ]
  %.sroa.0.0.copyload = load ptr, ptr %i.v, align 8, !tbaa !91
  %i.w = icmp eq ptr %.sroa.04.0.copyload, %.sroa.0.0.copyload ; 3 uses
  br i1 %i.w, label %.thread, label %bb.c, !prof !12

bb.c:                                             ; preds = %.lr.ph
  %i.x = add nuw i32 %.01926, 1
  %i.y = and i32 %i.x, %i.g                       ; 3 uses
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.z ; 2 uses
  %i.ab = lshr i64 %i.z, 5
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !26
  %i.ae = and i32 %i.y, 31
  %i.af = lshr i32 %i.ad, %i.ae
  %i.ag = trunc i32 %i.af to i1
  br i1 %i.ag, label %.lr.ph, label %.thread, !prof !216, !llvm.loop !891

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ], [ %i.aa, %bb.c ], [ %i.v, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.w, %bb.c ], [ %i.w, %.lr.ph ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !883
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.358", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !572
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 5                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #20 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !557
  store ptr %i.y, ptr %i.q, align 8, !tbaa !571
  store i32 0, ptr %i.p, align 16, !tbaa !892
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !133
  %i.aa = load ptr, ptr %0, align 8, !tbaa !883
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !133
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !133
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !133
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !26 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !26
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !26
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !26
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !26
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIN12lldb_private11ConstStringENS1_8FileSpecENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 5
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #20
  br label %_ZN4llvm8DenseMapIN12lldb_private11ConstStringENS1_8FileSpecENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit

_ZN4llvm8DenseMapIN12lldb_private11ConstStringENS1_8FileSpecENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !557
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !571
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !572  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !571  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !557
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !572
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i17 = icmp eq i64 %i.n, 0
  br i1 %.not.i17, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringENS5_8FileSpecENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !26   ; 2 uses
  %.not11.i15 = icmp eq i32 %i.p, 0
  br i1 %.not11.i15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph20
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i16 = phi i32 [ %i.p, %.lr.ph ], [ %i.az, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i16, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.u, align 8
  %i.v = ptrtoint ptr %.sroa.0.0.copyload.i to i64 ; 2 uses
  %i.w = mul i64 %i.v, -4658895280553007687       ; 2 uses
  %i.x = lshr i64 %i.w, 31
  %i.y = xor i64 %i.x, %i.w
  %i.z = trunc i64 %i.y to i32
  %i.aa = and i32 %i.k, %i.z                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = lshr i64 %i.ab, 5                       ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !26
  %i.af = and i32 %i.aa, 31                       ; 2 uses
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.aj, %.lr.ph.i ], [ %i.aa, %bb.b ]
  %i.ai = add i32 %.014.i, 1
  %i.aj = and i32 %i.ai, %i.k                     ; 3 uses
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = lshr i64 %i.ak, 5                       ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !26
  %i.ao = and i32 %i.aj, 31                       ; 2 uses
  %i.ap = lshr i32 %i.an, %i.ao
  %i.aq = trunc i32 %i.ap to i1
  br i1 %i.aq, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !898

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.ab, %bb.b ], [ %i.ak, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %i.ar = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %.lcssa12.i ; 2 uses
  store i64 %i.v, ptr %i.ar, align 8, !tbaa !91
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.at, i64 24, i1 false), !tbaa.struct !625
  %i.au = shl nuw i32 1, %.lcssa.i
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !26
  %i.ax = or i32 %i.aw, %i.au
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !26
  %i.ay = add i32 %.0.i16, -1
  %i.az = and i32 %i.ay, %.0.i16                  ; 2 uses
  %.not11.i = icmp eq i32 %i.az, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !899

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit, %.lr.ph20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringENS5_8FileSpecENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph20, !llvm.loop !900

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringENS5_8FileSpecENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !572
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringENS5_8FileSpecENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringENS5_8FileSpecENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringENS5_8FileSpecENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ba = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringENS5_8FileSpecENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !892
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bc, ptr %i.bd, align 8, !tbaa !892
  %i.be = icmp eq i32 %i.ba, 0
  br i1 %i.be, label %_ZN4llvm8DenseMapIN12lldb_private11ConstStringENS1_8FileSpecENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringENS5_8FileSpecENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bf = load ptr, ptr %1, align 8, !tbaa !557
  %i.bg = zext i32 %i.ba to i64                   ; 2 uses
  %i.bh = shl nuw nsw i64 %i.bg, 5
  %i.bi = add nuw nsw i64 %i.bg, 31
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = and i64 %i.bj, 1073741820
  %i.bl = add nuw nsw i64 %i.bk, %i.bh
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bf, i64 noundef %i.bl, i64 noundef 8) #20
  store i32 0, ptr %i.d, align 4, !tbaa !572
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIN12lldb_private11ConstStringENS1_8FileSpecENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE4killEv.exit

_ZN4llvm8DenseMapIN12lldb_private11ConstStringENS1_8FileSpecENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringENS5_8FileSpecENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_IjvEENS8_IjSA_EEEEjSA_SB_SC_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPSC_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !587, !noalias !901 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !599, !noalias !901 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !600, !noalias !901 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load i32, ptr %1, align 4, !tbaa !26     ; 2 uses
  %i.j = mul i32 %i.i, 37
  %.024.i = and i32 %i.j, %i.h                    ; 3 uses
  %i.k = zext i32 %.024.i to i64                  ; 2 uses
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.k ; 2 uses
  %i.m = lshr i64 %i.k, 5
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !26
  %i.p = and i32 %.024.i, 31
  %i.q = lshr i32 %i.o, %i.p
  %i.r = trunc i32 %i.q to i1
  br i1 %i.r, label %.lr.ph.i, label %.loopexit, !prof !215

bb.c:                                             ; preds = %.lr.ph.i
  %i.s = add nuw i32 %.025.i, 1
  %.0.i = and i32 %i.s, %i.h                      ; 3 uses
  %i.t = zext i32 %.0.i to i64                    ; 2 uses
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.t ; 2 uses
  %i.v = lshr i64 %i.t, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !26
  %i.y = and i32 %.0.i, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph.i, label %.loopexit, !prof !216, !llvm.loop !906

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.ab = phi ptr [ %i.u, %bb.c ], [ %i.l, %bb.b ] ; 2 uses
  %.025.i = phi i32 [ %.0.i, %bb.c ], [ %.024.i, %bb.b ]
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !26
  %i.ad = icmp eq i32 %i.i, %i.ac
  br i1 %i.ad, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_IjvEENS8_IjSA_EEEEjSA_SB_SC_E15LookupBucketForIjEEbRKT_RPSC_.exit, label %bb.c, !prof !12

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa30.sink.i.ph = phi ptr [ %i.l, %bb.b ], [ null, %bb.a ], [ %i.u, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa30.sink.i.ph, ptr %i.a, align 8, !tbaa !796
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !907
  %i.ag = shl i32 %i.af, 2
  %i.ah = add i32 %i.ag, 4
  %i.ai = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.ah, %i.ai
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_IjvEENS8_IjSA_EEEEjSA_SB_SC_E22findBucketForInsertionIjEEPSC_RKT_SG_.exit, label %bb.d, !prof !12

bb.d:                                             ; preds = %.loopexit
  %i.aj = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_IjvEENS8_IjSA_EEEEjSA_SB_SC_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.aj)
  %i.ak = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_IjvEENS8_IjSA_EEEEjSA_SB_SC_E15LookupBucketForIjEEbRKT_RPSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !796
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !599
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !587
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_IjvEENS8_IjSA_EEEEjSA_SB_SC_E22findBucketForInsertionIjEEPSC_RKT_SG_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_IjvEENS8_IjSA_EEEEjSA_SB_SC_E22findBucketForInsertionIjEEPSC_RKT_SG_.exit: ; preds = %.loopexit, %bb.d
  %i.al = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.am = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.an = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa30.sink.i.ph, %.loopexit ] ; 4 uses
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 5                 ; 2 uses
  %i.as = trunc i64 %i.ar to i32
  %i.at = and i32 %i.as, 31
  %i.au = shl nuw i32 1, %i.at
  %i.av = lshr i64 %i.ar, 5
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.av ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !26
  %i.ay = or i32 %i.au, %i.ax
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !26
  %i.az = load i32, ptr %i.ae, align 8, !tbaa !907
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr %i.ae, align 8, !tbaa !907
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bb = load i32, ptr %1, align 4, !tbaa !26
  store i32 %i.bb, ptr %i.an, align 4, !tbaa !26
  %i.bc = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i8 0, i64 24, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_IjvEENS8_IjSA_EEEEjSA_SB_SC_E15LookupBucketForIjEEbRKT_RPSC_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_IjvEENS8_IjSA_EEEEjSA_SB_SC_E15LookupBucketForIjEEbRKT_RPSC_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_IjvEENS8_IjSA_EEEEjSA_SB_SC_E22findBucketForInsertionIjEEPSC_RKT_SG_.exit
  %.sroa.0.0 = phi ptr [ %i.an, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_IjvEENS8_IjSA_EEEEjSA_SB_SC_E22findBucketForInsertionIjEEPSC_RKT_SG_.exit ], [ %i.ab, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_IjvEENS8_IjSA_EEEEjSA_SB_SC_E22findBucketForInsertionIjEEPSC_RKT_SG_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_IjvEENS8_IjSA_EEEEjSA_SB_SC_E15LookupBucketForIjEEbRKT_RPSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !587, !noalias !908 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !599, !noalias !908 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !600, !noalias !908 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load i32, ptr %1, align 4, !tbaa !26     ; 2 uses
  %i.i = mul i32 %i.h, 37
  %.024 = and i32 %i.i, %i.g                      ; 3 uses
  %i.j = zext i32 %.024 to i64                    ; 2 uses
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.j ; 2 uses
  %i.l = lshr i64 %i.j, 5
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !26
  %i.o = and i32 %.024, 31
  %i.p = lshr i32 %i.n, %i.o
  %i.q = trunc i32 %i.p to i1
  br i1 %i.q, label %.lr.ph, label %.thread, !prof !215

bb.c:                                             ; preds = %.lr.ph
  %i.r = add nuw i32 %.025, 1
  %.0 = and i32 %i.r, %i.g                        ; 3 uses
  %i.s = zext i32 %.0 to i64                      ; 2 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.s ; 2 uses
  %i.u = lshr i64 %i.s, 5
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !26
  %i.x = and i32 %.0, 31
  %i.y = lshr i32 %i.w, %i.x
  %i.z = trunc i32 %i.y to i1
  br i1 %i.z, label %.lr.ph, label %.thread, !prof !216, !llvm.loop !906

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.aa = phi ptr [ %i.t, %bb.c ], [ %i.k, %bb.b ] ; 2 uses
  %.025 = phi i32 [ %.0, %bb.c ], [ %.024, %bb.b ]
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !26
  %i.ac = icmp eq i32 %i.h, %i.ab                 ; 3 uses
  br i1 %i.ac, label %.thread, label %bb.c, !prof !12

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ], [ %i.t, %bb.c ], [ %i.aa, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !796
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_IjvEENS8_IjSA_EEEEjSA_SB_SC_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.249", align 16 ; 10 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !600
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 5                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #20 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !587
  store ptr %i.y, ptr %i.q, align 8, !tbaa !599
  store i32 0, ptr %i.p, align 16, !tbaa !907
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_IjvEENS8_IjSA_EEEEjSA_SB_SC_E8moveFromERSD_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !796    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !526 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !133
  store ptr %i.z, ptr %2, align 16, !tbaa !796
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !133
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !526
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !26 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.ad, align 8, !tbaa !26
  %i.ah = load <2 x i32>, ptr %i.p, align 16, !tbaa !26
  store <2 x i32> %i.ah, ptr %i.ad, align 8, !tbaa !26
  store <2 x i32> %i.ag, ptr %i.p, align 16, !tbaa !26
  %i.ai = icmp eq i32 %i.af, 0
  br i1 %i.ai, label %_ZN4llvm8DenseMapIjNS0_IN12lldb_private11ConstStringENS1_8FileSpecENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEENS4_IjvEENS7_IjS9_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.aj = zext i32 %i.af to i64
  %i.ak = add nuw nsw i64 %i.aj, 31
  %i.al = lshr i64 %i.ak, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !26 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.ao = shl nuw i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_IjvEENS8_IjSA_EEEEjSA_SB_SC_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.bf, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_IjvEENS8_IjSA_EEEEjSA_SB_SC_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ap = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 28
  %i.au = load i32, ptr %i.at, align 4, !tbaa !572 ; 2 uses
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_IjvEENS8_IjSA_EEEEjSA_SB_SC_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !557
  %i.ay = zext i32 %i.au to i64                   ; 2 uses
  %i.az = shl nuw nsw i64 %i.ay, 5
  %i.ba = add nuw nsw i64 %i.ay, 31
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = and i64 %i.bb, 1073741820
  %i.bd = add nuw nsw i64 %i.bc, %i.az
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ax, i64 noundef %i.bd, i64 noundef 8) #20
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_IjvEENS8_IjSA_EEEEjSA_SB_SC_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_IjvEENS8_IjSA_EEEEjSA_SB_SC_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.c, %bb.b
  %i.be = add i32 %.0.i3.i.i, -1
  %i.bf = and i32 %i.be, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.bf, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !794

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_IjvEENS8_IjSA_EEEEjSA_SB_SC_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_IjvEENS8_IjSA_EEEEjSA_SB_SC_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !795

_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_IjvEENS8_IjSA_EEEEjSA_SB_SC_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.o, align 4, !tbaa !600 ; 2 uses
  %i.bg = icmp eq i32 %.pr.i, 0
  br i1 %i.bg, label %_ZN4llvm8DenseMapIjNS0_IN12lldb_private11ConstStringENS1_8FileSpecENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEENS4_IjvEENS7_IjS9_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_IjvEENS8_IjSA_EEEEjSA_SB_SC_E10destroyAllEv.exit.i
  %i.bh = load ptr, ptr %2, align 16, !tbaa !587
  %i.bi = zext i32 %.pr.i to i64                  ; 2 uses
  %i.bj = shl nuw nsw i64 %i.bi, 5
  %i.bk = add nuw nsw i64 %i.bi, 31
  %i.bl = lshr i64 %i.bk, 3
  %i.bm = and i64 %i.bl, 1073741820
  %i.bn = add nuw nsw i64 %i.bm, %i.bj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bh, i64 noundef %i.bn, i64 noundef 8) #20
  br label %_ZN4llvm8DenseMapIjNS0_IN12lldb_private11ConstStringENS1_8FileSpecENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEENS4_IjvEENS7_IjS9_EEED2Ev.exit

_ZN4llvm8DenseMapIjNS0_IN12lldb_private11ConstStringENS1_8FileSpecENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEENS4_IjvEENS7_IjS9_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_IjvEENS8_IjSA_EEEEjSA_SB_SC_E10destroyAllEv.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_IjvEENS8_IjSA_EEEEjSA_SB_SC_E8moveFromERSD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !587
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !599
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !600  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !599  ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !587
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !600
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i20 = icmp eq i64 %i.n, 0
  br i1 %.not.i20, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS4_IN12lldb_private11ConstStringENS5_8FileSpecENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEENS8_IjvEENSB_IjSD_EEEEjSD_SE_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit, label %.lr.ph23

.lr.ph23:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !26   ; 2 uses
  %.not11.i18 = icmp eq i32 %i.p, 0
  br i1 %.not11.i18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph23
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_IjvEENS8_IjSA_EEEEjSA_SB_SC_E8moveFromERSD_ENKUljE_clEj.exit
  %.0.i19 = phi i32 [ %i.p, %.lr.ph ], [ %i.be, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_IjvEENS8_IjSA_EEEEjSA_SB_SC_E8moveFromERSD_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i19, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.t ; 5 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !26   ; 2 uses
  %i.w = mul i32 %i.v, 37
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.w, %bb.b ], [ %i.ae, %bb.c ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.x = zext i32 %.0.i7 to i64                   ; 2 uses
  %i.y = lshr i64 %i.x, 5                         ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !26
  %i.ab = and i32 %.0.i7, 31                      ; 2 uses
  %i.ac = lshr i32 %i.aa, %i.ab
  %i.ad = trunc i32 %i.ac to i1
  %i.ae = add i32 %.0.i7, 1
  br i1 %i.ad, label %bb.c, label %bb.d, !llvm.loop !913

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y ; 2 uses
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.x ; 4 uses
  store i32 %i.v, ptr %i.ag, align 4, !tbaa !26
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ak = load <2 x ptr>, ptr %i.ai, align 8, !tbaa !133
  store <2 x ptr> %i.ak, ptr %i.ah, align 8, !tbaa !133
  store ptr null, ptr %i.ai, align 8, !tbaa !883
  store ptr null, ptr %i.aj, align 8, !tbaa !526
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !26
  store i32 %i.an, ptr %i.al, align 8, !tbaa !26
  store i32 0, ptr %i.am, align 8, !tbaa !26
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 28 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.u, i64 28 ; 3 uses
  %i.aq = load i32, ptr %i.ao, align 4, !tbaa !26
  %i.ar = load i32, ptr %i.ap, align 4, !tbaa !26
  store i32 %i.ar, ptr %i.ao, align 4, !tbaa !26
  store i32 %i.aq, ptr %i.ap, align 4, !tbaa !26
  %i.as = shl nuw i32 1, %i.ab
  %i.at = load i32, ptr %i.af, align 4, !tbaa !26
  %i.au = or i32 %i.at, %i.as
  store i32 %i.au, ptr %i.af, align 4, !tbaa !26
  %i.av = load i32, ptr %i.ap, align 4, !tbaa !572 ; 2 uses
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_IjvEENS8_IjSA_EEEEjSA_SB_SC_E8moveFromERSD_ENKUljE_clEj.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ax = zext i32 %i.av to i64                   ; 2 uses
  %i.ay = shl nuw nsw i64 %i.ax, 5
  %i.az = add nuw nsw i64 %i.ax, 31
  %i.ba = lshr i64 %i.az, 3
  %i.bb = and i64 %i.ba, 1073741820
  %i.bc = add nuw nsw i64 %i.bb, %i.ay
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef null, i64 noundef %i.bc, i64 noundef 8) #20
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_IjvEENS8_IjSA_EEEEjSA_SB_SC_E8moveFromERSD_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_IjvEENS8_IjSA_EEEEjSA_SB_SC_E8moveFromERSD_ENKUljE_clEj.exit: ; preds = %bb.d, %bb.e
  %i.bd = add i32 %.0.i19, -1
  %i.be = and i32 %i.bd, %.0.i19                  ; 2 uses
  %.not11.i = icmp eq i32 %i.be, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !914

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringENS2_8FileSpecENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEENS5_IjvEENS8_IjSA_EEEEjSA_SB_SC_E8moveFromERSD_ENKUljE_clEj.exit, %.lr.ph23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS4_IN12lldb_private11ConstStringENS5_8FileSpecENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEENS8_IjvEENSB_IjSD_EEEEjSD_SE_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph23, !llvm.loop !915

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS4_IN12lldb_private11ConstStringENS5_8FileSpecENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEENS8_IjvEENSB_IjSD_EEEEjSD_SE_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !600
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS4_IN12lldb_private11ConstStringENS5_8FileSpecENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEENS8_IjvEENSB_IjSD_EEEEjSD_SE_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS4_IN12lldb_private11ConstStringENS5_8FileSpecENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEENS8_IjvEENSB_IjSD_EEEEjSD_SE_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS4_IN12lldb_private11ConstStringENS5_8FileSpecENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEENS8_IjvEENSB_IjSD_EEEEjSD_SE_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bf = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS4_IN12lldb_private11ConstStringENS5_8FileSpecENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEENS8_IjvEENSB_IjSD_EEEEjSD_SE_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !907
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bh, ptr %i.bi, align 8, !tbaa !907
  %i.bj = icmp eq i32 %i.bf, 0
  br i1 %i.bj, label %_ZN4llvm8DenseMapIjNS0_IN12lldb_private11ConstStringENS1_8FileSpecENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEENS4_IjvEENS7_IjS9_EEE4killEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS4_IN12lldb_private11ConstStringENS5_8FileSpecENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEENS8_IjvEENSB_IjSD_EEEEjSD_SE_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit
  %i.bk = load ptr, ptr %1, align 8, !tbaa !587
  %i.bl = zext i32 %i.bf to i64                   ; 2 uses
  %i.bm = shl nuw nsw i64 %i.bl, 5
  %i.bn = add nuw nsw i64 %i.bl, 31
  %i.bo = lshr i64 %i.bn, 3
  %i.bp = and i64 %i.bo, 1073741820
  %i.bq = add nuw nsw i64 %i.bp, %i.bm
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bk, i64 noundef %i.bq, i64 noundef 8) #20
  store i32 0, ptr %i.d, align 4, !tbaa !600
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIjNS0_IN12lldb_private11ConstStringENS1_8FileSpecENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEENS4_IjvEENS7_IjS9_EEE4killEv.exit

_ZN4llvm8DenseMapIjNS0_IN12lldb_private11ConstStringENS1_8FileSpecENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EEEENS4_IjvEENS7_IjS9_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS4_IN12lldb_private11ConstStringENS5_8FileSpecENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEENS8_IjvEENSB_IjSD_EEEEjSD_SE_SF_E8moveFromERSG_EUljE_EEvPKjjT_.exit, %bb.f
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEENS7_IjvEENSA_IjSC_EEEEjSC_SD_SE_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPSE_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !524, !noalias !916 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !660, !noalias !916 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !523, !noalias !916 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load i32, ptr %1, align 4, !tbaa !26     ; 2 uses
  %i.j = mul i32 %i.i, 37
  %.024.i = and i32 %i.j, %i.h                    ; 3 uses
  %i.k = zext i32 %.024.i to i64                  ; 2 uses
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.k ; 2 uses
  %i.m = lshr i64 %i.k, 5
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !26
  %i.p = and i32 %.024.i, 31
  %i.q = lshr i32 %i.o, %i.p
  %i.r = trunc i32 %i.q to i1
  br i1 %i.r, label %.lr.ph.i, label %.loopexit, !prof !215

bb.c:                                             ; preds = %.lr.ph.i
  %i.s = add nuw i32 %.025.i, 1
  %.0.i = and i32 %i.s, %i.h                      ; 3 uses
  %i.t = zext i32 %.0.i to i64                    ; 2 uses
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.t ; 2 uses
  %i.v = lshr i64 %i.t, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !26
  %i.y = and i32 %.0.i, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph.i, label %.loopexit, !prof !216, !llvm.loop !921

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.ab = phi ptr [ %i.u, %bb.c ], [ %i.l, %bb.b ] ; 2 uses
  %.025.i = phi i32 [ %.0.i, %bb.c ], [ %.024.i, %bb.b ]
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !26
  %i.ad = icmp eq i32 %i.i, %i.ac
  br i1 %i.ad, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEENS7_IjvEENSA_IjSC_EEEEjSC_SD_SE_E15LookupBucketForIjEEbRKT_RPSE_.exit, label %bb.c, !prof !12

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa30.sink.i.ph = phi ptr [ %i.l, %bb.b ], [ null, %bb.a ], [ %i.u, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa30.sink.i.ph, ptr %i.a, align 8, !tbaa !525
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !922
  %i.ag = shl i32 %i.af, 2
  %i.ah = add i32 %i.ag, 4
  %i.ai = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.ah, %i.ai
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEENS7_IjvEENSA_IjSC_EEEEjSC_SD_SE_E22findBucketForInsertionIjEEPSE_RKT_SI_.exit, label %bb.d, !prof !12

bb.d:                                             ; preds = %.loopexit
  %i.aj = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEENS7_IjvEENSA_IjSC_EEEEjSC_SD_SE_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.aj)
  %i.ak = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEENS7_IjvEENSA_IjSC_EEEEjSC_SD_SE_E15LookupBucketForIjEEbRKT_RPSE_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !525
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !660
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !524
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEENS7_IjvEENSA_IjSC_EEEEjSC_SD_SE_E22findBucketForInsertionIjEEPSE_RKT_SI_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEENS7_IjvEENSA_IjSC_EEEEjSC_SD_SE_E22findBucketForInsertionIjEEPSE_RKT_SI_.exit: ; preds = %.loopexit, %bb.d
  %i.al = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.am = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.an = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa30.sink.i.ph, %.loopexit ] ; 4 uses
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 5                 ; 2 uses
  %i.as = trunc i64 %i.ar to i32
  %i.at = and i32 %i.as, 31
  %i.au = shl nuw i32 1, %i.at
  %i.av = lshr i64 %i.ar, 5
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.av ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !26
  %i.ay = or i32 %i.au, %i.ax
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !26
  %i.az = load i32, ptr %i.ae, align 8, !tbaa !922
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr %i.ae, align 8, !tbaa !922
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bb = load i32, ptr %1, align 4, !tbaa !26
  store i32 %i.bb, ptr %i.an, align 4, !tbaa !26
  %i.bc = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i8 0, i64 24, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEENS7_IjvEENSA_IjSC_EEEEjSC_SD_SE_E15LookupBucketForIjEEbRKT_RPSE_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEENS7_IjvEENSA_IjSC_EEEEjSC_SD_SE_E15LookupBucketForIjEEbRKT_RPSE_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEENS7_IjvEENSA_IjSC_EEEEjSC_SD_SE_E22findBucketForInsertionIjEEPSE_RKT_SI_.exit
  %.sroa.0.0 = phi ptr [ %i.an, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEENS7_IjvEENSA_IjSC_EEEEjSC_SD_SE_E22findBucketForInsertionIjEEPSE_RKT_SI_.exit ], [ %i.ab, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEENS7_IjvEENSA_IjSC_EEEEjSC_SD_SE_E22findBucketForInsertionIjEEPSE_RKT_SI_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEENS7_IjvEENSA_IjSC_EEEEjSC_SD_SE_E15LookupBucketForIjEEbRKT_RPSE_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !524, !noalias !923 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !660, !noalias !923 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !523, !noalias !923 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load i32, ptr %1, align 4, !tbaa !26     ; 2 uses
  %i.i = mul i32 %i.h, 37
  %.024 = and i32 %i.i, %i.g                      ; 3 uses
  %i.j = zext i32 %.024 to i64                    ; 2 uses
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.j ; 2 uses
  %i.l = lshr i64 %i.j, 5
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !26
  %i.o = and i32 %.024, 31
  %i.p = lshr i32 %i.n, %i.o
  %i.q = trunc i32 %i.p to i1
  br i1 %i.q, label %.lr.ph, label %.thread, !prof !215

bb.c:                                             ; preds = %.lr.ph
  %i.r = add nuw i32 %.025, 1
  %.0 = and i32 %i.r, %i.g                        ; 3 uses
  %i.s = zext i32 %.0 to i64                      ; 2 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.s ; 2 uses
  %i.u = lshr i64 %i.s, 5
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !26
  %i.x = and i32 %.0, 31
  %i.y = lshr i32 %i.w, %i.x
  %i.z = trunc i32 %i.y to i1
  br i1 %i.z, label %.lr.ph, label %.thread, !prof !216, !llvm.loop !921

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.aa = phi ptr [ %i.t, %bb.c ], [ %i.k, %bb.b ] ; 2 uses
  %.025 = phi i32 [ %.0, %bb.c ], [ %.024, %bb.b ]
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !26
  %i.ac = icmp eq i32 %i.h, %i.ab                 ; 3 uses
  br i1 %i.ac, label %.thread, label %bb.c, !prof !12

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ], [ %i.t, %bb.c ], [ %i.aa, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !525
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEENS7_IjvEENSA_IjSC_EEEEjSC_SD_SE_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.230", align 16 ; 11 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !523
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 5                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #20 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !524
  store ptr %i.y, ptr %i.q, align 8, !tbaa !660
  store i32 0, ptr %i.p, align 16, !tbaa !922
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEENS7_IjvEENSA_IjSC_EEEEjSC_SD_SE_E8moveFromERSF_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !133
  %i.aa = load <2 x ptr>, ptr %2, align 16, !tbaa !133
  store <2 x ptr> %i.aa, ptr %0, align 8, !tbaa !133
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !133
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ac = load <2 x i32>, ptr %i.ab, align 8, !tbaa !26
  %i.ad = load <2 x i32>, ptr %i.p, align 16, !tbaa !26
  store <2 x i32> %i.ad, ptr %i.ab, align 8, !tbaa !26
  store <2 x i32> %i.ac, ptr %i.p, align 16, !tbaa !26
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEENS7_IjvEENSA_IjSC_EEEEjSC_SD_SE_E10destroyAllEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.ae = load i32, ptr %i.o, align 4, !tbaa !523 ; 2 uses
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %_ZN4llvm8DenseMapIjNS0_IN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEEENS6_IjvEENS9_IjSB_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ag = load ptr, ptr %2, align 16, !tbaa !524
  %i.ah = zext i32 %i.ae to i64                   ; 2 uses
  %i.ai = shl nuw nsw i64 %i.ah, 5
  %i.aj = add nuw nsw i64 %i.ah, 31
  %i.ak = lshr i64 %i.aj, 3
  %i.al = and i64 %i.ak, 1073741820
  %i.am = add nuw nsw i64 %i.al, %i.ai
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ag, i64 noundef %i.am, i64 noundef 8) #20
  br label %_ZN4llvm8DenseMapIjNS0_IN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEEENS6_IjvEENS9_IjSB_EEED2Ev.exit

_ZN4llvm8DenseMapIjNS0_IN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEEENS6_IjvEENS9_IjSB_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEENS7_IjvEENSA_IjSC_EEEEjSC_SD_SE_E8moveFromERSF_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !524
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !660
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !523  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !660  ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !524
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !523
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i20 = icmp eq i64 %i.n, 0
  br i1 %.not.i20, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS4_IN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEENSA_IjvEENSD_IjSF_EEEEjSF_SG_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit, label %.lr.ph23

.lr.ph23:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !26   ; 2 uses
  %.not11.i18 = icmp eq i32 %i.p, 0
  br i1 %.not11.i18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph23
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEENS7_IjvEENSA_IjSC_EEEEjSC_SD_SE_E8moveFromERSF_ENKUljE_clEj.exit
  %.0.i19 = phi i32 [ %i.p, %.lr.ph ], [ %i.aw, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEENS7_IjvEENSA_IjSC_EEEEjSC_SD_SE_E8moveFromERSF_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i19, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.t ; 5 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !26   ; 2 uses
  %i.w = mul i32 %i.v, 37
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.w, %bb.b ], [ %i.ae, %bb.c ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.x = zext i32 %.0.i7 to i64                   ; 2 uses
  %i.y = lshr i64 %i.x, 5                         ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !26
  %i.ab = and i32 %.0.i7, 31                      ; 2 uses
  %i.ac = lshr i32 %i.aa, %i.ab
  %i.ad = trunc i32 %i.ac to i1
  %i.ae = add i32 %.0.i7, 1
  br i1 %i.ad, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEENS7_IjvEENSA_IjSC_EEEEjSC_SD_SE_E8moveFromERSF_ENKUljE_clEj.exit, !llvm.loop !928

_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEENS7_IjvEENSA_IjSC_EEEEjSC_SD_SE_E8moveFromERSF_ENKUljE_clEj.exit: ; preds = %bb.c
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y ; 2 uses
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.x ; 4 uses
  store i32 %i.v, ptr %i.ag, align 4, !tbaa !26
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ak = load <2 x ptr>, ptr %i.ai, align 8, !tbaa !133
  store <2 x ptr> %i.ak, ptr %i.ah, align 8, !tbaa !133
  store ptr null, ptr %i.ai, align 8, !tbaa !929
  store ptr null, ptr %i.aj, align 8, !tbaa !526
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !26
  store i32 %i.an, ptr %i.al, align 8, !tbaa !26
  store i32 0, ptr %i.am, align 8, !tbaa !26
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 28 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.u, i64 28 ; 2 uses
  %i.aq = load i32, ptr %i.ao, align 4, !tbaa !26
  %i.ar = load i32, ptr %i.ap, align 4, !tbaa !26
  store i32 %i.ar, ptr %i.ao, align 4, !tbaa !26
  store i32 %i.aq, ptr %i.ap, align 4, !tbaa !26
  %i.as = shl nuw i32 1, %i.ab
  %i.at = load i32, ptr %i.af, align 4, !tbaa !26
  %i.au = or i32 %i.at, %i.as
  store i32 %i.au, ptr %i.af, align 4, !tbaa !26
  %i.av = add i32 %.0.i19, -1
  %i.aw = and i32 %i.av, %.0.i19                  ; 2 uses
  %.not11.i = icmp eq i32 %i.aw, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !930

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS1_IN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEENS7_IjvEENSA_IjSC_EEEEjSC_SD_SE_E8moveFromERSF_ENKUljE_clEj.exit, %.lr.ph23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS4_IN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEENSA_IjvEENSD_IjSF_EEEEjSF_SG_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph23, !llvm.loop !931

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS4_IN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEENSA_IjvEENSD_IjSF_EEEEjSF_SG_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !523
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS4_IN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEENSA_IjvEENSD_IjSF_EEEEjSF_SG_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS4_IN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEENSA_IjvEENSD_IjSF_EEEEjSF_SG_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS4_IN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEENSA_IjvEENSD_IjSF_EEEEjSF_SG_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ax = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS4_IN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEENSA_IjvEENSD_IjSF_EEEEjSF_SG_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !922
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.az, ptr %i.ba, align 8, !tbaa !922
  %i.bb = icmp eq i32 %i.ax, 0
  br i1 %i.bb, label %_ZN4llvm8DenseMapIjNS0_IN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEEENS6_IjvEENS9_IjSB_EEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS4_IN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEENSA_IjvEENSD_IjSF_EEEEjSF_SG_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit
  %i.bc = load ptr, ptr %1, align 8, !tbaa !524
  %i.bd = zext i32 %i.ax to i64                   ; 2 uses
  %i.be = shl nuw nsw i64 %i.bd, 5
  %i.bf = add nuw nsw i64 %i.bd, 31
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = and i64 %i.bg, 1073741820
  %i.bi = add nuw nsw i64 %i.bh, %i.be
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bc, i64 noundef %i.bi, i64 noundef 8) #20
  store i32 0, ptr %i.d, align 4, !tbaa !523
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIjNS0_IN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEEENS6_IjvEENS9_IjSB_EEE4killEv.exit

_ZN4llvm8DenseMapIjNS0_IN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEEENS6_IjvEENS9_IjSB_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS4_IN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEENSA_IjvEENSD_IjSF_EEEEjSF_SG_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E24lookupOrInsertIntoBucketIS3_JS6_EEESt4pairIPSB_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !662, !noalias !932 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !674, !noalias !932 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !675, !noalias !932 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %.sroa.04.0.copyload.i = load ptr, ptr %1, align 8, !tbaa !91 ; 2 uses
  %i.i = ptrtoint ptr %.sroa.04.0.copyload.i to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.h, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !26
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph.i, label %.loopexit, !prof !215

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ab, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.01926.i = phi i32 [ %i.z, %bb.c ], [ %i.n, %bb.b ]
  %.sroa.0.0.copyload.i = load ptr, ptr %i.w, align 8, !tbaa !91
  %i.x = icmp eq ptr %.sroa.04.0.copyload.i, %.sroa.0.0.copyload.i
  br i1 %i.x, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E15LookupBucketForIS3_EEbRKT_RPSB_.exit, label %bb.c, !prof !12

bb.c:                                             ; preds = %.lr.ph.i
  %i.y = add nuw i32 %.01926.i, 1
  %i.z = and i32 %i.y, %i.h                       ; 3 uses
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.aa ; 2 uses
  %i.ac = lshr i64 %i.aa, 5
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !26
  %i.af = and i32 %i.z, 31
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph.i, label %.loopexit, !prof !216, !llvm.loop !937

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa30.sink.i.ph = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ab, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa30.sink.i.ph, ptr %i.a, align 8, !tbaa !929
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !938
  %i.ak = shl i32 %i.aj, 2
  %i.al = add i32 %i.ak, 4
  %i.am = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.al, %i.am
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E22findBucketForInsertionIS3_EEPSB_RKT_SF_.exit, label %bb.d, !prof !12

bb.d:                                             ; preds = %.loopexit
  %i.an = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.an)
  %i.ao = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E15LookupBucketForIS3_EEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !929
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !674
  %.pre16 = load ptr, ptr %0, align 8, !tbaa !662
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E22findBucketForInsertionIS3_EEPSB_RKT_SF_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E22findBucketForInsertionIS3_EEPSB_RKT_SF_.exit: ; preds = %.loopexit, %bb.d
  %i.ap = phi ptr [ %.pre16, %bb.d ], [ %i.b, %.loopexit ]
  %i.aq = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.ar = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa30.sink.i.ph, %.loopexit ] ; 5 uses
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = ashr exact i64 %i.au, 5                 ; 2 uses
  %i.aw = trunc i64 %i.av to i32
  %i.ax = and i32 %i.aw, 31
  %i.ay = shl nuw i32 1, %i.ax
  %i.az = lshr i64 %i.av, 5
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.az ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !26
  %i.bc = or i32 %i.ay, %i.bb
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !26
  %i.bd = load i32, ptr %i.ai, align 8, !tbaa !938
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr %i.ai, align 8, !tbaa !938
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bf = load i64, ptr %1, align 8, !tbaa !91
  store i64 %i.bf, ptr %i.ar, align 8, !tbaa !91
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.bh = load <2 x ptr>, ptr %2, align 8, !tbaa !91
  store <2 x ptr> %i.bh, ptr %i.bg, align 8, !tbaa !91
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !304
  store ptr %i.bk, ptr %i.bi, align 8, !tbaa !304
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E15LookupBucketForIS3_EEbRKT_RPSB_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E15LookupBucketForIS3_EEbRKT_RPSB_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E22findBucketForInsertionIS3_EEPSB_RKT_SF_.exit
  %.sroa.0.0 = phi ptr [ %i.ar, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E22findBucketForInsertionIS3_EEPSB_RKT_SF_.exit ], [ %i.w, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E22findBucketForInsertionIS3_EEPSB_RKT_SF_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E15LookupBucketForIS3_EEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !662, !noalias !939 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !674, !noalias !939 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !675, !noalias !939 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %.sroa.04.0.copyload = load ptr, ptr %1, align 8, !tbaa !91 ; 2 uses
  %i.h = ptrtoint ptr %.sroa.04.0.copyload to i64
  %i.i = mul i64 %i.h, -4658895280553007687       ; 2 uses
  %i.j = lshr i64 %i.i, 31
  %i.k = xor i64 %i.j, %i.i
  %i.l = trunc i64 %i.k to i32
  %i.m = and i32 %i.g, %i.l                       ; 3 uses
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.n ; 2 uses
  %i.p = lshr i64 %i.n, 5
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !26
  %i.s = and i32 %i.m, 31
  %i.t = lshr i32 %i.r, %i.s
  %i.u = trunc i32 %i.t to i1
  br i1 %i.u, label %.lr.ph, label %.thread, !prof !215

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.v = phi ptr [ %i.aa, %bb.c ], [ %i.o, %bb.b ] ; 2 uses
  %.01926 = phi i32 [ %i.y, %bb.c ], [ %i.m, %bb.b ]
  %.sroa.0.0.copyload = load ptr, ptr %i.v, align 8, !tbaa !91
  %i.w = icmp eq ptr %.sroa.04.0.copyload, %.sroa.0.0.copyload ; 3 uses
  br i1 %i.w, label %.thread, label %bb.c, !prof !12

bb.c:                                             ; preds = %.lr.ph
  %i.x = add nuw i32 %.01926, 1
  %i.y = and i32 %i.x, %i.g                       ; 3 uses
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.z ; 2 uses
  %i.ab = lshr i64 %i.z, 5
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !26
  %i.ae = and i32 %i.y, 31
  %i.af = lshr i32 %i.ad, %i.ae
  %i.ag = trunc i32 %i.af to i1
  br i1 %i.ag, label %.lr.ph, label %.thread, !prof !216, !llvm.loop !937

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ], [ %i.aa, %bb.c ], [ %i.v, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.w, %bb.c ], [ %i.w, %.lr.ph ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !929
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.367", align 16 ; 10 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !675
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 5                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #20 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !662
  store ptr %i.y, ptr %i.q, align 8, !tbaa !674
  store i32 0, ptr %i.p, align 16, !tbaa !938
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !929    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !526 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !133
  store ptr %i.z, ptr %2, align 16, !tbaa !929
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !133
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !526
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !26 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.ad, align 8, !tbaa !26
  %i.ah = load <2 x i32>, ptr %i.p, align 16, !tbaa !26
  store <2 x i32> %i.ah, ptr %i.ad, align 8, !tbaa !26
  store <2 x i32> %i.ag, ptr %i.p, align 16, !tbaa !26
  %i.ai = icmp eq i32 %i.af, 0
  br i1 %i.ai, label %_ZN4llvm8DenseMapIN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.aj = zext i32 %i.af to i64
  %i.ak = add nuw nsw i64 %i.aj, 31
  %i.al = lshr i64 %i.ak, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !26 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.ao = shl nuw i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.bb, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ap = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !291 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !304
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.au to i64
  %i.az = sub i64 %i.ax, %i.ay
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.az) #21
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.c, %bb.b
  %i.ba = add i32 %.0.i3.i.i, -1
  %i.bb = and i32 %i.ba, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.bb, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !797

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !798

_ZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.o, align 4, !tbaa !675 ; 2 uses
  %i.bc = icmp eq i32 %.pr.i, 0
  br i1 %i.bc, label %_ZN4llvm8DenseMapIN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEv.exit.i
  %i.bd = load ptr, ptr %2, align 16, !tbaa !662
  %i.be = zext i32 %.pr.i to i64                  ; 2 uses
  %i.bf = shl nuw nsw i64 %i.be, 5
  %i.bg = add nuw nsw i64 %i.be, 31
  %i.bh = lshr i64 %i.bg, 3
  %i.bi = and i64 %i.bh, 1073741820
  %i.bj = add nuw nsw i64 %i.bi, %i.bf
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bd, i64 noundef %i.bj, i64 noundef 8) #20
  br label %_ZN4llvm8DenseMapIN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEED2Ev.exit

_ZN4llvm8DenseMapIN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEv.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !662
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !674
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !675  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !674  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !662
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !675
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i18 = icmp eq i64 %i.n, 0
  br i1 %.not.i18, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !26   ; 2 uses
  %.not11.i16 = icmp eq i32 %i.p, 0
  br i1 %.not11.i16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph21
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit
  %.0.i17 = phi i32 [ %i.p, %.lr.ph ], [ %i.bd, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i17, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.t ; 3 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.u, align 8
  %i.v = ptrtoint ptr %.sroa.0.0.copyload.i to i64 ; 2 uses
  %i.w = mul i64 %i.v, -4658895280553007687       ; 2 uses
  %i.x = lshr i64 %i.w, 31
  %i.y = xor i64 %i.x, %i.w
  %i.z = trunc i64 %i.y to i32
  %i.aa = and i32 %i.k, %i.z                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = lshr i64 %i.ab, 5                       ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !26
  %i.af = and i32 %i.aa, 31                       ; 2 uses
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.aj, %.lr.ph.i ], [ %i.aa, %bb.b ]
  %i.ai = add i32 %.014.i, 1
  %i.aj = and i32 %i.ai, %i.k                     ; 3 uses
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = lshr i64 %i.ak, 5                       ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !26
  %i.ao = and i32 %i.aj, 31                       ; 2 uses
  %i.ap = lshr i32 %i.an, %i.ao
  %i.aq = trunc i32 %i.ap to i1
  br i1 %i.aq, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit, !llvm.loop !944

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.ab, %bb.b ], [ %i.ak, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %i.ar = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %.lcssa12.i ; 3 uses
  store i64 %i.v, ptr %i.ar, align 8, !tbaa !91
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.au = load <2 x ptr>, ptr %i.at, align 8, !tbaa !91
  store <2 x ptr> %i.au, ptr %i.as, align 8, !tbaa !91
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !304
  store ptr %i.ax, ptr %i.av, align 8, !tbaa !304
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, i8 0, i64 24, i1 false)
  %i.ay = shl nuw i32 1, %.lcssa.i
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !26
  %i.bb = or i32 %i.ba, %i.ay
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !26
  %i.bc = add i32 %.0.i17, -1
  %i.bd = and i32 %i.bc, %.0.i17                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bd, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !945

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit, %.lr.ph21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph21, !llvm.loop !946

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !675
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.be = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !938
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bg, ptr %i.bh, align 8, !tbaa !938
  %i.bi = icmp eq i32 %i.be, 0
  br i1 %i.bi, label %_ZN4llvm8DenseMapIN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit
  %i.bj = load ptr, ptr %1, align 8, !tbaa !662
  %i.bk = zext i32 %i.be to i64                   ; 2 uses
  %i.bl = shl nuw nsw i64 %i.bk, 5
  %i.bm = add nuw nsw i64 %i.bk, 31
  %i.bn = lshr i64 %i.bm, 3
  %i.bo = and i64 %i.bn, 1073741820
  %i.bp = add nuw nsw i64 %i.bo, %i.bl
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bj, i64 noundef %i.bp, i64 noundef 8) #20
  store i32 0, ptr %i.d, align 4, !tbaa !675
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE4killEv.exit

_ZN4llvm8DenseMapIN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIN12lldb_private11ConstStringESt6vectorIhSaIhEENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN4llvm12function_refIFiPcmEE11callback_fnIZNS_lsIJPKcS7_EEERNS_11raw_ostreamES9_NS_13format_objectIJDpT_EEEEUlS1_mE_EEilS1_m(i64 noundef %0, ptr noundef %1, i64 noundef %2) #0 comdat align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !947, !nonnull !183, !align !775 ; 3 uses
  %i.c = and i64 %2, 4294967295
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !949
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !91
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !91
  %i.i = tail call noundef i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %1, i64 noundef %i.c, ptr noundef %i.d, ptr noundef %i.g, ptr noundef %i.h) #20
  ret i32 %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZNSt17_Function_handlerIFN4llvm5ErrorEN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEZN12lldb_private5Trace23OnAllCpusBinaryDataReadENS0_9StringRefESt8functionIFS1_RKNS0_8DenseMapIjNS0_8ArrayRefIhEENS0_12DenseMapInfoIjvEENS0_6detail12DenseMapPairIjSG_EEEEEEE3$_0E9_M_invokeERKSt9_Any_dataOS8_"(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) #0 align 2 {
bb.a:
  %3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8 ; 4 uses
  %4 = alloca %"class.std::function", align 8     ; 9 uses
  %.val = load ptr, ptr %1, align 8, !tbaa !133   ; 7 uses
  %.val2 = load ptr, ptr %2, align 8, !tbaa !526  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !955
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !955
  store ptr %.val2, ptr %3, align 8, !noalias !960
  %i.a = load ptr, ptr %.val, align 8, !tbaa !963, !noalias !960, !nonnull !183, !align !775
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !526, !noalias !960
  %i.d = icmp eq ptr %.val2, %i.c
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !965, !noalias !960, !nonnull !183, !align !775 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !643, !noalias !966
  %.not.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i, label %bb.c, label %_ZNKSt8functionIFN4llvm5ErrorERKNS0_8DenseMapIjNS0_8ArrayRefIhEENS0_12DenseMapInfoIjvEENS0_6detail12DenseMapPairIjS4_EEEEEEclESC_.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt25__throw_bad_function_callv() #24, !noalias !966
  unreachable

_ZNKSt8functionIFN4llvm5ErrorERKNS0_8DenseMapIjNS0_8ArrayRefIhEENS0_12DenseMapInfoIjvEENS0_6detail12DenseMapPairIjS4_EEEEEEclESC_.exit.i.i.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !969, !noalias !960, !nonnull !183, !align !775
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !970, !noalias !966
  tail call void %i.l(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.j) #20, !inline_history !972
  br label %"_ZSt10__invoke_rIN4llvm5ErrorERZN12lldb_private5Trace23OnAllCpusBinaryDataReadENS0_9StringRefESt8functionIFS1_RKNS0_8DenseMapIjNS0_8ArrayRefIhEENS0_12DenseMapInfoIjvEENS0_6detail12DenseMapPairIjS8_EEEEEEE3$_0JN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EEST_E4typeEOSU_DpOSV_.exit"

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !973, !noalias !960
  %i.o = load i32, ptr %.val2, align 4, !tbaa !26, !noalias !960
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !974, !noalias !960, !nonnull !183, !align !775 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.q, align 8, !tbaa !91, !noalias !960
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !25, !noalias !960
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !969, !noalias !960, !nonnull !183, !align !775
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !975, !noalias !960, !nonnull !183, !align !775
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.x, align 8, !noalias !960
  %i.y = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #23, !noalias !960 ; 4 uses
  store ptr %i.s, ptr %i.y, align 16, !tbaa !735, !noalias !960
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %3, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !976, !noalias !960
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr %i.u, ptr %.sroa.5.0..sroa_idx.i.i.i, align 16, !tbaa !738, !noalias !960
  store ptr %i.y, ptr %4, align 8, !tbaa !133, !noalias !960
  store ptr @"_ZNSt17_Function_handlerIFN4llvm5ErrorENS0_8ArrayRefIhEEEZZN12lldb_private5Trace23OnAllCpusBinaryDataReadENS0_9StringRefESt8functionIFS1_RKNS0_8DenseMapIjS3_NS0_12DenseMapInfoIjvEENS0_6detail12DenseMapPairIjS3_EEEEEEENK3$_0clEN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_", ptr %i.w, align 8, !tbaa !645, !noalias !960
  store ptr @"_ZNSt17_Function_handlerIFN4llvm5ErrorENS0_8ArrayRefIhEEEZZN12lldb_private5Trace23OnAllCpusBinaryDataReadENS0_9StringRefESt8functionIFS1_RKNS0_8DenseMapIjS3_NS0_12DenseMapInfoIjvEENS0_6detail12DenseMapPairIjS3_EEEEEEENK3$_0clEN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEUlS3_E_E10_M_managerERSt9_Any_dataRKSU_St18_Manager_operation", ptr %i.v, align 8, !tbaa !643, !noalias !960
  call void @_ZN12lldb_private5Trace19OnCpuBinaryDataReadEjN4llvm9StringRefESt8functionIFNS1_5ErrorENS1_8ArrayRefIhEEEE(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(280) %i.n, i32 noundef %i.o, ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.2.0.copyload.i.i.i, ptr nofree noundef nonnull align 8 dereferenceable(32) %4)
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !643, !noalias !960 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i, label %"_ZSt10__invoke_rIN4llvm5ErrorERZN12lldb_private5Trace23OnAllCpusBinaryDataReadENS0_9StringRefESt8functionIFS1_RKNS0_8DenseMapIjNS0_8ArrayRefIhEENS0_12DenseMapInfoIjvEENS0_6detail12DenseMapPairIjS8_EEEEEEE3$_0JN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EEST_E4typeEOSU_DpOSV_.exit", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = call noundef zeroext i1 %i.z(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3) #20, !inline_history !978 ; 0 uses
  br label %"_ZSt10__invoke_rIN4llvm5ErrorERZN12lldb_private5Trace23OnAllCpusBinaryDataReadENS0_9StringRefESt8functionIFS1_RKNS0_8DenseMapIjNS0_8ArrayRefIhEENS0_12DenseMapInfoIjvEENS0_6detail12DenseMapPairIjS8_EEEEEEE3$_0JN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EEST_E4typeEOSU_DpOSV_.exit"

"_ZSt10__invoke_rIN4llvm5ErrorERZN12lldb_private5Trace23OnAllCpusBinaryDataReadENS0_9StringRefESt8functionIFS1_RKNS0_8DenseMapIjNS0_8ArrayRefIhEENS0_12DenseMapInfoIjvEENS0_6detail12DenseMapPairIjS8_EEEEEEE3$_0JN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EEST_E4typeEOSU_DpOSV_.exit": ; preds = %_ZNKSt8functionIFN4llvm5ErrorERKNS0_8DenseMapIjNS0_8ArrayRefIhEENS0_12DenseMapInfoIjvEENS0_6detail12DenseMapPairIjS4_EEEEEEclESC_.exit.i.i.i, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !955
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !955
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFN4llvm5ErrorEN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEZN12lldb_private5Trace23OnAllCpusBinaryDataReadENS0_9StringRefESt8functionIFS1_RKNS0_8DenseMapIjNS0_8ArrayRefIhEENS0_12DenseMapInfoIjvEENS0_6detail12DenseMapPairIjSG_EEEEEEE3$_0E10_M_managerERSt9_Any_dataRKST_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN12lldb_private5Trace23OnAllCpusBinaryDataReadEN4llvm9StringRefESt8functionIFNS3_5ErrorERKNS3_8DenseMapIjNS3_8ArrayRefIhEENS3_12DenseMapInfoIjvEENS3_6detail12DenseMapPairIjS9_EEEEEEE3$_0E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation.exit" [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
end_hunk_2
begin_hunk_3_@_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_8ArrayRefIhEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E24lookupOrInsertIntoBucketIRKjJRS3_EEESt4pairIPS8_bEOT_DpOT0_:bb.a
  store ptr %.lcssa30.sink.i.ph, ptr %i.a, align 8, !tbaa !1013
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !1014
  %i.ag = shl i32 %i.af, 2
  %i.ah = add i32 %i.ag, 4
  %i.ai = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.ah, %i.ai
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_8ArrayRefIhEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E22findBucketForInsertionIjEEPS8_RKT_SC_.exit, label %bb.d, !prof !12

bb.d:                                             ; preds = %.loopexit
  %i.aj = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_8ArrayRefIhEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.aj)
  %i.ak = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_8ArrayRefIhEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E15LookupBucketForIjEEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1013
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !1011
  %.pre16 = load ptr, ptr %0, align 8, !tbaa !749
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_8ArrayRefIhEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E22findBucketForInsertionIjEEPS8_RKT_SC_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_8ArrayRefIhEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E22findBucketForInsertionIjEEPS8_RKT_SC_.exit: ; preds = %.loopexit, %bb.d
  %i.al = phi ptr [ %.pre16, %bb.d ], [ %i.b, %.loopexit ]
  %i.am = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.an = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa30.sink.i.ph, %.loopexit ] ; 4 uses
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = sdiv exact i64 %i.aq, 24                ; 2 uses
  %i.as = trunc i64 %i.ar to i32
  %i.at = and i32 %i.as, 31
  %i.au = shl nuw i32 1, %i.at
  %i.av = lshr i64 %i.ar, 5
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.av ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !26
  %i.ay = or i32 %i.au, %i.ax
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !26
  %i.az = load i32, ptr %i.ae, align 8, !tbaa !1014
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr %i.ae, align 8, !tbaa !1014
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bb = load i32, ptr %1, align 4, !tbaa !26
  store i32 %i.bb, ptr %i.an, align 4, !tbaa !26
  %i.bc = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !1015
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_8ArrayRefIhEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E15LookupBucketForIjEEbRKT_RPS8_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_8ArrayRefIhEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E15LookupBucketForIjEEbRKT_RPS8_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_8ArrayRefIhEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E22findBucketForInsertionIjEEPS8_RKT_SC_.exit
  %.sroa.0.0 = phi ptr [ %i.an, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_8ArrayRefIhEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E22findBucketForInsertionIjEEPS8_RKT_SC_.exit ], [ %i.ab, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_8ArrayRefIhEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E22findBucketForInsertionIjEEPS8_RKT_SC_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_8ArrayRefIhEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E15LookupBucketForIjEEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !749, !noalias !1016 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1011, !noalias !1016 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !746, !noalias !1016 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load i32, ptr %1, align 4, !tbaa !26     ; 2 uses
  %i.i = mul i32 %i.h, 37
  %.024 = and i32 %i.i, %i.g                      ; 3 uses
  %i.j = zext i32 %.024 to i64                    ; 2 uses
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.j ; 2 uses
  %i.l = lshr i64 %i.j, 5
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !26
  %i.o = and i32 %.024, 31
  %i.p = lshr i32 %i.n, %i.o
  %i.q = trunc i32 %i.p to i1
  br i1 %i.q, label %.lr.ph, label %.thread, !prof !215

bb.c:                                             ; preds = %.lr.ph
  %i.r = add nuw i32 %.025, 1
  %.0 = and i32 %i.r, %i.g                        ; 3 uses
  %i.s = zext i32 %.0 to i64                      ; 2 uses
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.s ; 2 uses
  %i.u = lshr i64 %i.s, 5
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !26
  %i.x = and i32 %.0, 31
  %i.y = lshr i32 %i.w, %i.x
  %i.z = trunc i32 %i.y to i1
  br i1 %i.z, label %.lr.ph, label %.thread, !prof !216, !llvm.loop !1012

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.aa = phi ptr [ %i.t, %bb.c ], [ %i.k, %bb.b ] ; 2 uses
  %.025 = phi i32 [ %.0, %bb.c ], [ %.024, %bb.b ]
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !26
  %i.ac = icmp eq i32 %i.h, %i.ab                 ; 3 uses
  br i1 %i.ac, label %.thread, label %bb.c, !prof !12

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ], [ %i.t, %bb.c ], [ %i.aa, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !1013
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_8ArrayRefIhEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.374", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !746
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 24                 ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #20 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !749
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1011
  store i32 0, ptr %i.p, align 16, !tbaa !1014
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_8ArrayRefIhEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !133
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1013
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !133
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !133
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !133
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !26 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !26
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !26
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !26
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !26
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIjNS_8ArrayRefIhEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = mul nuw nsw i64 %i.ai, 24
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #20
  br label %_ZN4llvm8DenseMapIjNS_8ArrayRefIhEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEED2Ev.exit

_ZN4llvm8DenseMapIjNS_8ArrayRefIhEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_8ArrayRefIhEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !749
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1011
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !746  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1011 ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !749
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !746
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i19 = icmp eq i64 %i.n, 0
  br i1 %.not.i19, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_8ArrayRefIhEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !26   ; 2 uses
  %.not11.i17 = icmp eq i32 %i.p, 0
  br i1 %.not11.i17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph22
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_8ArrayRefIhEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit
  %.0.i18 = phi i32 [ %i.p, %.lr.ph ], [ %i.an, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_8ArrayRefIhEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !26   ; 2 uses
  %i.w = mul i32 %i.v, 37
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.w, %bb.b ], [ %i.ae, %bb.c ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.x = zext i32 %.0.i7 to i64                   ; 2 uses
  %i.y = lshr i64 %i.x, 5                         ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !26
  %i.ab = and i32 %.0.i7, 31                      ; 2 uses
  %i.ac = lshr i32 %i.aa, %i.ab
  %i.ad = trunc i32 %i.ac to i1
  %i.ae = add i32 %.0.i7, 1
  br i1 %i.ad, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_8ArrayRefIhEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit, !llvm.loop !1021

_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_8ArrayRefIhEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit: ; preds = %bb.c
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y ; 2 uses
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.x ; 2 uses
  store i32 %i.v, ptr %i.ag, align 4, !tbaa !26
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i64 16, i1 false), !tbaa.struct !1015
  %i.aj = shl nuw i32 1, %i.ab
  %i.ak = load i32, ptr %i.af, align 4, !tbaa !26
  %i.al = or i32 %i.ak, %i.aj
  store i32 %i.al, ptr %i.af, align 4, !tbaa !26
  %i.am = add i32 %.0.i18, -1
  %i.an = and i32 %i.am, %.0.i18                  ; 2 uses
  %.not11.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1022

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_8ArrayRefIhEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit, %.lr.ph22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_8ArrayRefIhEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph22, !llvm.loop !1023

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_8ArrayRefIhEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !746
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_8ArrayRefIhEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_8ArrayRefIhEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_8ArrayRefIhEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ao = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_8ArrayRefIhEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !1014
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.aq, ptr %i.ar, align 8, !tbaa !1014
  %i.as = icmp eq i32 %i.ao, 0
  br i1 %i.as, label %_ZN4llvm8DenseMapIjNS_8ArrayRefIhEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_8ArrayRefIhEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit
  %i.at = load ptr, ptr %1, align 8, !tbaa !749
  %i.au = zext i32 %i.ao to i64                   ; 2 uses
  %i.av = mul nuw nsw i64 %i.au, 24
  %i.aw = add nuw nsw i64 %i.au, 31
  %i.ax = lshr i64 %i.aw, 3
  %i.ay = and i64 %i.ax, 1073741820
  %i.az = add nuw nsw i64 %i.ay, %i.av
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.at, i64 noundef %i.az, i64 noundef 8) #20
  store i32 0, ptr %i.d, align 4, !tbaa !746
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIjNS_8ArrayRefIhEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEE4killEv.exit

_ZN4llvm8DenseMapIjNS_8ArrayRefIhEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_8ArrayRefIhEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, %bb.d
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #14 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #20 = { nounwind }
attributes #21 = { builtin nounwind }
attributes #22 = { nounwind willreturn memory(none) }
attributes #23 = { builtin nounwind allocsize(0) }
attributes #24 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTSN4llvm4json5ValueE", !10, i64 0, !11, i64 8}
!10 = !{!"_ZTSN4llvm4json5Value9ValueTypeE", !6, i64 0}
!11 = !{!"_ZTSN4llvm21AlignedCharArrayUnionIbJdlmNS_9StringRefENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_4json5ArrayENS8_6ObjectEEEE", !6, i64 0}
!12 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!13 = !{!14, !15, i64 0}
!14 = !{!"_ZTSN4llvm4json12ObjectMapperE", !15, i64 0, !17, i64 8}
!15 = !{!"p1 _ZTSN4llvm4json6ObjectE", !16, i64 0}
!16 = !{!"any pointer", !6, i64 0}
!17 = !{!"_ZTSN4llvm4json4PathE", !18, i64 0, !19, i64 8}
!18 = !{!"p1 _ZTSN4llvm4json4PathE", !16, i64 0}
!19 = !{!"_ZTSN4llvm4json4Path7SegmentE", !20, i64 0, !5, i64 8}
!20 = !{!"long", !6, i64 0}
!21 = !{!17, !18, i64 0}
!22 = !{!23}
!23 = distinct !{!23, !24, !"_ZNK4llvm4json4Path5fieldENS_9StringRefE: argument 0"}
!24 = distinct !{!24, !"_ZNK4llvm4json4Path5fieldENS_9StringRefE"}
!25 = !{!20, !20, i64 0}
!26 = !{!5, !5, i64 0}
!27 = !{!28}
!28 = distinct !{!28, !29, !"_ZNK4llvm4json4Path5fieldENS_9StringRefE: argument 0"}
!29 = distinct !{!29, !"_ZNK4llvm4json4Path5fieldENS_9StringRefE"}
!30 = !{!31, !32, i64 32}
!31 = !{!"_ZTSN4llvm5TwineE", !6, i64 0, !6, i64 16, !32, i64 32, !32, i64 33}
!32 = !{!"_ZTSN4llvm5Twine8NodeKindE", !6, i64 0}
!33 = !{!31, !32, i64 33}
!34 = !{!6, !6, i64 0}
!35 = !{!36, !38, i64 0}
!36 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !37, i64 0, !20, i64 8, !6, i64 16}
!37 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !38, i64 0}
!38 = !{!"p1 omnipotent char", !16, i64 0}
!39 = !{!40, !40, i64 0}
!40 = !{!"p1 _ZTSNSt3_V214error_categoryE", !16, i64 0}
!41 = !{!42, !42, i64 0}
!42 = !{!"vtable pointer", !7, i64 0}
!43 = !{!44}
!44 = distinct !{!44, !45, !"_ZNKSt10error_code7messageB5cxx11Ev: argument 0"}
!45 = distinct !{!45, !"_ZNKSt10error_code7messageB5cxx11Ev"}
!46 = distinct !{null}
!47 = !{!48}
!48 = distinct !{!48, !49, !"_ZN4llvm17createStringErrorIJPKcS2_EEENS_5ErrorESt10error_codeS2_DpRKT_: argument 0"}
!49 = distinct !{!49, !"_ZN4llvm17createStringErrorIJPKcS2_EEENS_5ErrorESt10error_codeS2_DpRKT_"}
!50 = !{!37, !38, i64 0}
!51 = !{!36, !20, i64 8}
!52 = !{!53, !54, i64 8}
!53 = !{!"_ZTSN4llvm11raw_ostreamE", !54, i64 8, !38, i64 16, !38, i64 24, !38, i64 32, !55, i64 40, !56, i64 44}
!54 = !{!"_ZTSN4llvm11raw_ostream11OStreamKindE", !6, i64 0}
!55 = !{!"bool", !6, i64 0}
!56 = !{!"_ZTSN4llvm11raw_ostream10BufferKindE", !6, i64 0}
!57 = !{!53, !55, i64 40}
!58 = !{!53, !56, i64 44}
!59 = !{!60, !60, i64 0}
!60 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !16, i64 0}
!61 = !{!62, !62, i64 0}
!62 = !{!"p1 _ZTSN4llvm13format_objectIJPKcS2_EEE", !16, i64 0}
!63 = !{!64, !66, !48}
!64 = distinct !{!64, !65, !"_ZSt11make_uniqueIN4llvm11StringErrorEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt10error_codebEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!65 = distinct !{!65, !"_ZSt11make_uniqueIN4llvm11StringErrorEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt10error_codebEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!66 = distinct !{!66, !67, !"_ZN4llvm10make_errorINS_11StringErrorEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt10error_codebEEENS_5ErrorEDpOT0_: argument 0"}
!67 = distinct !{!67, !"_ZN4llvm10make_errorINS_11StringErrorEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt10error_codebEEENS_5ErrorEDpOT0_"}
!68 = !{!69, !69, i64 0}
!69 = !{!"p1 _ZTSN4llvm13ErrorInfoBaseE", !16, i64 0}
!70 = !{!71}
!71 = distinct !{!71, !72, !"_ZN4llvm5Error11takePayloadEv: argument 0"}
!72 = distinct !{!72, !"_ZN4llvm5Error11takePayloadEv"}
!73 = !{!74, !74, i64 0}
!74 = !{!"p1 _ZTSN4llvm12MemoryBufferE", !16, i64 0}
!75 = !{!76, !38, i64 8}
end_hunk_3
