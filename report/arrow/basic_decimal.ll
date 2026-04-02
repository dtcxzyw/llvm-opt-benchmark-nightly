begin_hunk_0
define weak_odr noundef zeroext i1 @_ZNK5arrow19GenericBasicDecimalINS_15BasicDecimal128ELi128ELi2EEcvbEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %1 = alloca %"struct.std::array", align 8       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16)
  %.not9.i.i.i.i.i = icmp ne i32 %bcmp.i.i.i.i.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  ret i1 %.not9.i.i.i.i.i
}

end_hunk_0
begin_hunk_1
; Function Attrs: mustprogress uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow19GenericBasicDecimalINS_15BasicDecimal256ELi256ELi4EEcvbEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %1 = alloca %"struct.std::array.2", align 8     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32)
  %.not9.i.i.i.i.i = icmp ne i32 %bcmp.i.i.i.i.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  ret i1 %.not9.i.i.i.i.i
}

end_hunk_1
begin_hunk_2
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow15BasicDecimal128dVERKS0_(ptr noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(16) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #8 align 2 {
bb.a:
  %2 = alloca %"class.arrow::BasicDecimal128", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.a = call noundef i32 @_ZNK5arrow15BasicDecimal1286DivideERKS0_PS0_S3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %0, ptr noundef nonnull %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret ptr %0
}

end_hunk_2
begin_hunk_3
  %.val = load i64, ptr %1, align 8               ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val4 = load i64, ptr %i.e, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 0, ptr %i.b, align 16, !tbaa !3
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 5 uses
  %.val100.i = load i64, ptr %0, align 8          ; 3 uses
end_hunk_3
begin_hunk_4
  ]

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.bt = zext i32 %i.bo to i64                   ; 8 uses
  %i.bu = load i32, ptr %i.b, align 16, !tbaa !3  ; 2 uses
  %i.bv = udiv i32 %i.bu, %i.bo
end_hunk_4
begin_hunk_5

_ZN5arrowL12SingleDivideINS_15BasicDecimal128EEENS_13DecimalStatusEPKjljPT_bbS6_.exit.i: ; preds = %bb.ab, %bb.aa, %.lr.ph.preheader.i.i.i.i
  %.0.i113.i = phi i32 [ 0, %bb.ab ], [ 0, %bb.aa ], [ 2, %.lr.ph.preheader.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %_ZN5arrowL13DecimalDivideINS_15BasicDecimal128EEENS_13DecimalStatusERKT_S5_PS3_S6_.exit

bb.ac:                                            ; preds = %bb.q
  %i.ex = sub nsw i64 %i.ak, %.0.i109.i           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  %i.ey = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bo, i1 false) ; 14 uses
  %.not.i = icmp eq i32 %i.ey, 0                  ; 2 uses
  %.pre12 = add nsw i64 %.0.i109.i, -1            ; 9 uses
end_hunk_5
begin_hunk_6

_ZN5arrowL14BuildFromArrayEPNS_15BasicDecimal128EPKjl.exit.i: ; preds = %bb.av, %bb.au, %.lr.ph.preheader.i.i148.i, %.lr.ph.preheader.i.i.i
  %.0.i = phi i32 [ 0, %bb.av ], [ 2, %.lr.ph.preheader.i.i148.i ], [ 0, %bb.au ], [ 2, %.lr.ph.preheader.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %_ZN5arrowL13DecimalDivideINS_15BasicDecimal128EEENS_13DecimalStatusERKT_S5_PS3_S6_.exit

_ZN5arrowL13DecimalDivideINS_15BasicDecimal128EEENS_13DecimalStatusERKT_S5_PS3_S6_.exit: ; preds = %bb.p, %bb.q, %_ZN5arrowL12SingleDivideINS_15BasicDecimal128EEENS_13DecimalStatusEPKjljPT_bbS6_.exit.i, %_ZN5arrowL14BuildFromArrayEPNS_15BasicDecimal128EPKjl.exit.i
  %.1.i = phi i32 [ 0, %bb.p ], [ %.0.i, %_ZN5arrowL14BuildFromArrayEPNS_15BasicDecimal128EPKjl.exit.i ], [ %.0.i113.i, %_ZN5arrowL12SingleDivideINS_15BasicDecimal128EEENS_13DecimalStatusEPKjljPT_bbS6_.exit.i ], [ 1, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  ret i32 %.1.i
}

end_hunk_6
begin_hunk_7
bb.a:
  %2 = alloca %"class.arrow::BasicDecimal128", align 8 ; 4 uses
  %3 = alloca %"class.arrow::BasicDecimal128", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.a = call noundef i32 @_ZNK5arrow15BasicDecimal1286DivideERKS0_PS0_S3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %2, ptr noundef nonnull %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %.fca.0.load = load i64, ptr %2, align 8
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds nuw i8, ptr %2, i64 8
end_hunk_7
begin_hunk_8
  %2 = alloca %"class.arrow::BasicDecimal128", align 8 ; 4 uses
  %3 = alloca %"class.arrow::BasicDecimal128", align 8 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.a = call noundef i32 @_ZNK5arrow15BasicDecimal1286DivideERKS0_PS0_S3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %3, ptr noundef nonnull %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %.fca.0.load = load i64, ptr %2, align 8
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds nuw i8, ptr %2, i64 8
end_hunk_8
begin_hunk_9
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.g = call noundef i32 @_ZNK5arrow15BasicDecimal1286DivideERKS0_PS0_S3_(ptr noundef nonnull readonly align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.e, ptr noundef %3, ptr noundef nonnull %4) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %bcmp.i.i.i.i.i.i.i = call i32 @bcmp(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16)
  %bcmp.i.i.i.i.i.i.i.fr = freeze i32 %bcmp.i.i.i.i.i.i.i
  %.not9.i.i.i.i.i.i.i.not = icmp eq i32 %bcmp.i.i.i.i.i.i.i.fr, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br i1 %.not9.i.i.i.i.i.i.i.not, label %_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal128EEEbRKT_iS4_PS2_.exit.thread17, label %_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal128EEEbRKT_iS4_PS2_.exit.thread, !prof !26

bb.e:                                             ; preds = %bb.c
end_hunk_9
begin_hunk_10
  %i.b = sext i32 %1 to i64                       ; 2 uses
  %i.c = getelementptr inbounds [16 x i8], ptr @_ZN5arrowL22kDecimal128PowersOfTenE, i64 %i.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.d = call noundef i32 @_ZNK5arrow15BasicDecimal1286DivideERKS0_PS0_S3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull %3, ptr noundef nonnull %4) ; 0 uses
  br i1 %2, label %bb.d, label %_ZN5arrowgeERKNS_15BasicDecimal128ES2_.exit.thread7
end_hunk_10
begin_hunk_11
  br label %_ZN5arrowgeERKNS_15BasicDecimal128ES2_.exit.thread7

_ZN5arrowgeERKNS_15BasicDecimal128ES2_.exit.thread7: ; preds = %bb.e, %_ZN5arrow15BasicDecimal1283AbsEv.exit, %_ZN5arrowgeERKNS_15BasicDecimal128ES2_.exit.thread, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.f

bb.f:                                             ; preds = %_ZN5arrowgeERKNS_15BasicDecimal128ES2_.exit.thread7, %bb.b
end_hunk_11
begin_hunk_12
  br label %bb.l

.lr.ph:                                           ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  store i64 %i.d, ptr %2, align 8
  %.06.i.i.i.i.ptr.1.i24 = getelementptr inbounds nuw i8, ptr %2, i64 8
end_hunk_12
begin_hunk_13

._crit_edge:                                      ; preds = %bb.e, %bb.g, %bb.i, %bb.k, %.lr.ph.split.us.preheader
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.l

bb.d:                                             ; preds = %.lr.ph.split.preheader
end_hunk_13
begin_hunk_14
  %i.b = alloca [65 x i32], align 16              ; 23 uses
  %i.c = alloca [64 x i32], align 16              ; 22 uses
  %i.d = alloca [64 x i32], align 16              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 0, ptr %i.b, align 16, !tbaa !3
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull readonly align 8 dereferenceable(32) %0, i64 32, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !9    ; 3 uses
end_hunk_14
begin_hunk_15

_ZN5arrowL11FillInArrayERKNS_15BasicDecimal256EPjRb.exit.i: ; preds = %.lr.ph.i.i.i, %middle.block, %bb.g, %.loopexit.i.thread.i.i
  %.120.lcssa.i.i.i = phi i64 [ 1, %.loopexit.i.thread.i.i ], [ 0, %bb.g ], [ %i.am, %middle.block ], [ %i.bh, %.lr.ph.i.i.i ] ; 27 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  %i.bk = add i64 %.120.lcssa.i.i.i, 1            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !9  ; 3 uses
end_hunk_15
begin_hunk_16

_ZN5arrowL11FillInArrayERKNS_15BasicDecimal256EPjRb.exit118.i: ; preds = %.lr.ph.i.i107.i, %middle.block105, %bb.m, %.loopexit.i.thread.i117.i
  %.120.lcssa.i.i111.i = phi i64 [ 1, %.loopexit.i.thread.i117.i ], [ 0, %bb.m ], [ %i.cs, %middle.block105 ], [ %i.dn, %.lr.ph.i.i107.i ] ; 13 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  %.not.not.i = icmp slt i64 %.120.lcssa.i.i.i, %.120.lcssa.i.i111.i
  br i1 %.not.not.i, label %bb.n, label %bb.o

end_hunk_16
begin_hunk_17

.lr.ph.i.i:                                       ; preds = %bb.o
  %i.dq = load i32, ptr %i.c, align 16, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.dr = zext i32 %i.dq to i64                   ; 2 uses
  br label %bb.u

end_hunk_17
begin_hunk_18

_ZN5arrowL12SingleDivideINS_15BasicDecimal256EEENS_13DecimalStatusEPKjljPT_bbS6_.exit.i: ; preds = %bb.y, %bb.x, %_ZN5arrowL14BuildFromArrayEPNS_15BasicDecimal256EPKjl.exit.i.i
  %.0.i.i = phi i32 [ 2, %_ZN5arrowL14BuildFromArrayEPNS_15BasicDecimal256EPKjl.exit.i.i ], [ 0, %bb.x ], [ 0, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %_ZN5arrowL13DecimalDivideINS_15BasicDecimal256EEENS_13DecimalStatusERKT_S5_PS3_S6_.exit

bb.z:                                             ; preds = %bb.o
  %i.hp = sub i64 %i.bk, %.120.lcssa.i.i111.i     ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  %i.hq = load i32, ptr %i.c, align 16, !tbaa !3  ; 3 uses
  %i.hr = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.hq, i1 false) ; 13 uses
  %i.hs = icmp sgt i64 %.120.lcssa.i.i111.i, 0    ; 2 uses
end_hunk_18
begin_hunk_19

_ZN5arrowL16FixDivisionSignsINS_15BasicDecimal256EEEvPT_S3_bb.exit.i: ; preds = %bb.au, %bb.at, %_ZN5arrowL14BuildFromArrayEPNS_15BasicDecimal256EPKjl.exit153.i, %_ZN5arrowL14BuildFromArrayEPNS_15BasicDecimal256EPKjl.exit.i
  %.0.i = phi i32 [ 2, %_ZN5arrowL14BuildFromArrayEPNS_15BasicDecimal256EPKjl.exit153.i ], [ 2, %_ZN5arrowL14BuildFromArrayEPNS_15BasicDecimal256EPKjl.exit.i ], [ 0, %bb.at ], [ 0, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %_ZN5arrowL13DecimalDivideINS_15BasicDecimal256EEENS_13DecimalStatusERKT_S5_PS3_S6_.exit

_ZN5arrowL13DecimalDivideINS_15BasicDecimal256EEENS_13DecimalStatusERKT_S5_PS3_S6_.exit: ; preds = %bb.n, %bb.o, %_ZN5arrowL12SingleDivideINS_15BasicDecimal256EEENS_13DecimalStatusEPKjljPT_bbS6_.exit.i, %_ZN5arrowL16FixDivisionSignsINS_15BasicDecimal256EEEvPT_S3_bb.exit.i
  %.1.i = phi i32 [ 0, %bb.n ], [ %.0.i, %_ZN5arrowL16FixDivisionSignsINS_15BasicDecimal256EEEvPT_S3_bb.exit.i ], [ %.0.i.i, %_ZN5arrowL12SingleDivideINS_15BasicDecimal256EEENS_13DecimalStatusEPKjljPT_bbS6_.exit.i ], [ 1, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  ret i32 %.1.i
}

end_hunk_19
begin_hunk_20
; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN5arrow14DecimalRescaleINS_15BasicDecimal256EEENS_13DecimalStatusERKT_iiPS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::BasicDecimal256", align 8 ; 5 uses
  %5 = alloca %"class.arrow::GenericBasicDecimal.1", align 8 ; 4 uses
  %6 = alloca %"class.arrow::BasicDecimal256", align 8 ; 5 uses
  %i.a = icmp eq i32 %1, %2
  br i1 %i.a, label %bb.b, label %bb.c
end_hunk_20
begin_hunk_21
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %i.g = call noundef i32 @_ZNK5arrow15BasicDecimal2566DivideERKS0_PS0_S3_(ptr noundef nonnull readonly align 8 dereferenceable(32) %0, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.e, ptr noundef %3, ptr noundef nonnull %4) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  %bcmp.i.i.i.i.i.i.i = call i32 @bcmp(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32)
  %.not9.i.i.i.i.i.i.i = icmp ne i32 %bcmp.i.i.i.i.i.i.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %_ZN5arrowL25RescaleWouldCauseDataLossINS_15BasicDecimal256EEEbRKT_iS4_PS2_.exit

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull readonly align 8 dereferenceable(32) %0, i64 32, i1 false)
  %i.h = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN5arrow15BasicDecimal256mLERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.e) ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !9    ; 4 uses
  %i.k = icmp slt i64 %i.j, 0
end_hunk_21
begin_hunk_22
  %i.b = sext i32 %2 to i64                       ; 2 uses
  %i.c = getelementptr inbounds [32 x i8], ptr @_ZN5arrowL22kDecimal256PowersOfTenE, i64 %i.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %i.d = call noundef i32 @_ZNK5arrow15BasicDecimal2566DivideERKS0_PS0_S3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull %0, ptr noundef nonnull %4) ; 0 uses
  br i1 %3, label %bb.d, label %bb.k
end_hunk_22
begin_hunk_23
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.f, %_ZN5arrowgeERKNS_15BasicDecimal256ES2_.exit, %_ZN5arrow15BasicDecimal256CI2NS_19GenericBasicDecimalIS0_Li256ELi4EEEIllEET_.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.b
end_hunk_23
begin_hunk_24
define noundef nonnull align 8 dereferenceable(32) ptr @_ZN5arrow15BasicDecimal256dVERKS0_(ptr noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(32) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #8 align 2 {
bb.a:
  %2 = alloca %"class.arrow::BasicDecimal256", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.a = call noundef i32 @_ZNK5arrow15BasicDecimal2566DivideERKS0_PS0_S3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %0, ptr noundef nonnull %2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret ptr %0
}

end_hunk_24
begin_hunk_25
define void @_ZN5arrowdvERKNS_15BasicDecimal256ES2_(ptr dead_on_unwind noalias writable sret(%"class.arrow::BasicDecimal256") align 8 captures(none) initializes((0, 32)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #8 {
bb.a:
  %3 = alloca %"class.arrow::BasicDecimal256", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %i.a = call noundef i32 @_ZNK5arrow15BasicDecimal2566DivideERKS0_PS0_S3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull %0, ptr noundef nonnull %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret void
}

end_hunk_25
begin_hunk_26
; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

end_hunk_26
begin_hunk_27
declare i64 @llvm.abs.i64(i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
end_hunk_27
begin_hunk_28
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
end_hunk_28
