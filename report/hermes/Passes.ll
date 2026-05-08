inline.NumInlined: 1567
inline.NumDeleted: 831
begin_hunk_0_@_ZN6hermes3hbc19LowerArgumentsArray13runOnFunctionEPNS_8FunctionE:bb.a
  %4 = alloca %"struct.llvh::detail::DenseSetEmpty", align 1 ; 3 uses
  %5 = alloca %"struct.std::pair.137", align 8    ; 4 uses
  %6 = alloca %"class.hermes::IRBuilder", align 8 ; 22 uses
  %7 = alloca %"class.llvh::SmallSetVector", align 8 ; 31 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29
end_hunk_0
begin_hunk_1_@_ZN6hermes3hbc19LowerArgumentsArray13runOnFunctionEPNS_8FunctionE:bb.a
  %i.ag = call noundef ptr @_ZN6hermes9IRBuilder20createStoreStackInstEPNS_5ValueEPNS_14AllocStackInstE(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef %i.af, ptr noundef %i.ae) #13 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  store i32 1, ptr %7, align 8
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 3 uses
  store i32 0, ptr %8, align 4, !tbaa !93
  %.07.i.i.i.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.i.i.ptr.i.i.i, align 8, !tbaa !97
  %.07.i.i.i.i.ptr.1.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.i.i.ptr.1.i.i.i, align 8, !tbaa !97
  %.07.i.i.i.i.ptr.2.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.i.i.ptr.2.i.i.i, align 8, !tbaa !97
  %.07.i.i.i.i.ptr.3.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.i.i.ptr.3.i.i.i, align 8, !tbaa !97
  %.07.i.i.i.i.ptr.4.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 40
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.i.i.ptr.4.i.i.i, align 8, !tbaa !97
  %.07.i.i.i.i.ptr.5.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 48
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.i.i.ptr.5.i.i.i, align 8, !tbaa !97
  %.07.i.i.i.i.ptr.6.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 56
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.i.i.ptr.6.i.i.i, align 8, !tbaa !97
  %.07.i.i.i.i.ptr.7.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 64
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.i.i.ptr.7.i.i.i, align 8, !tbaa !97
  %.07.i.i.i.i.ptr.8.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 72
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.i.i.ptr.8.i.i.i, align 8, !tbaa !97
  %.07.i.i.i.i.ptr.9.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 80
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.i.i.ptr.9.i.i.i, align 8, !tbaa !97
  %.07.i.i.i.i.ptr.10.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 88
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.i.i.ptr.10.i.i.i, align 8, !tbaa !97
  %.07.i.i.i.i.ptr.11.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 96
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.i.i.ptr.11.i.i.i, align 8, !tbaa !97
  %.07.i.i.i.i.ptr.12.i.i.i.a = getelementptr inbounds nuw i8, ptr %7, i64 104
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.i.i.ptr.12.i.i.i.a, align 8, !tbaa !97
  %.07.i.i.i.i.ptr.13.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 112
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.i.i.ptr.13.i.i.i, align 8, !tbaa !97
  %.07.i.i.i.i.ptr.14.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 120
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.i.i.ptr.14.i.i.i, align 8, !tbaa !97
  %.07.i.i.i.i.ptr.15.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 128
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.i.i.ptr.15.i.i.i, align 8, !tbaa !97
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 136 ; 8 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 152 ; 4 uses
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !75
end_hunk_1
begin_hunk_2_@_ZN6hermes3hbc19LowerArgumentsArray13runOnFunctionEPNS_8FunctionE:bb.a
  %i.bm = load i32, ptr %7, align 8               ; 2 uses
  %i.bn = lshr i32 %i.bm, 1                       ; 2 uses
  %i.bo = icmp eq i32 %i.bn, 0
  %i.bp = load i32, ptr %8, align 4
  %i.bq = icmp eq i32 %i.bp, 0
  %or.cond.i.i = select i1 %i.bo, i1 %i.bq, i1 false
  br i1 %or.cond.i.i, label %_ZN4llvh9SetVectorIPN6hermes11InstructionENS_11SmallVectorIS3_Lj16EEENS_13SmallDenseSetIS3_Lj16ENS_12DenseMapInfoIS3_EEEEE5clearEv.exit, label %bb.k
end_hunk_2
begin_hunk_3_@_ZN6hermes3hbc19LowerArgumentsArray13runOnFunctionEPNS_8FunctionE:bb.a
  %i.br = shl i32 %i.bn, 2
  %i.bs = and i32 %i.bm, 1                        ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.bs, 0          ; 2 uses
  %i.bt = load i32, ptr %.07.i.i.i.i.ptr.1.i.i.i, align 8
  %i.bu = select i1 %.not.i.i.i.i.i, i32 %i.bt, i32 16 ; 4 uses
  %i.bv = icmp ult i32 %i.br, %i.bu
  %i.bw = icmp ugt i32 %i.bu, 64
end_hunk_3
begin_hunk_4_@_ZN6hermes3hbc19LowerArgumentsArray13runOnFunctionEPNS_8FunctionE:bb.a
  br label %_ZN4llvh9SetVectorIPN6hermes11InstructionENS_11SmallVectorIS3_Lj16EEENS_13SmallDenseSetIS3_Lj16ENS_12DenseMapInfoIS3_EEEEE5clearEv.exit

bb.m:                                             ; preds = %bb.k
  %i.bx = load ptr, ptr %.07.i.i.i.i.ptr.i.i.i, align 8
  %i.by = select i1 %.not.i.i.i.i.i, ptr %i.bx, ptr %.07.i.i.i.i.ptr.i.i.i ; 4 uses
  %i.bz = zext i32 %i.bu to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.bz, 3          ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 %.idx.i.i.i
end_hunk_4
begin_hunk_5_@_ZN6hermes3hbc19LowerArgumentsArray13runOnFunctionEPNS_8FunctionE:bb.a
._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.m
  %.pre-phi.i.i.i = phi i32 [ %.pre9.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.bs, %bb.m ]
  store i32 %.pre-phi.i.i.i, ptr %7, align 8
  store i32 0, ptr %8, align 4, !tbaa !93
  br label %_ZN4llvh9SetVectorIPN6hermes11InstructionENS_11SmallVectorIS3_Lj16EEENS_13SmallDenseSetIS3_Lj16ENS_12DenseMapInfoIS3_EEEEE5clearEv.exit

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader224, %.lr.ph.i.i.i
end_hunk_5
begin_hunk_6_@_ZN6hermes3hbc19LowerArgumentsArray13runOnFunctionEPNS_8FunctionE:bb.a
  br i1 %.not.i.i.i.i, label %bb.x, label %_ZN4llvh9SetVectorIPN6hermes11InstructionENS_11SmallVectorIS3_Lj16EEENS_13SmallDenseSetIS3_Lj16ENS_12DenseMapInfoIS3_EEEEED2Ev.exit

bb.x:                                             ; preds = %_ZN4llvh11SmallVectorIPN6hermes11InstructionELj16EED2Ev.exit.i
  %i.eu = load ptr, ptr %.07.i.i.i.i.ptr.i.i.i, align 8, !tbaa !117
  call void @_ZdlPv(ptr noundef %i.eu) #13
  br label %_ZN4llvh9SetVectorIPN6hermes11InstructionENS_11SmallVectorIS3_Lj16EEENS_13SmallDenseSetIS3_Lj16ENS_12DenseMapInfoIS3_EEEEED2Ev.exit

end_hunk_6
