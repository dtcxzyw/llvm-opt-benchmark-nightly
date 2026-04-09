inline.NumInlined: 1517
inline.NumDeleted: 727
begin_hunk_0_@_ZN6hermes6bigint18multiplyResultSizeENS0_18ImmutableBigIntRefES1_:bb.a
  %i.a = icmp ne i32 %1, 0
  %i.b = icmp ne i32 %3, 0
  %or.cond = select i1 %i.a, i1 %i.b, i1 false
  %i.c = add i32 %1, 1
  %i.d = add i32 %i.c, %3
  %i.e = select i1 %or.cond, i32 %i.d, i32 0
  ret i32 %i.e
}
end_hunk_0
begin_hunk_1_@_ZN6hermes6bigint8multiplyENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefES2_:bb.a

_ZN6hermes6bigint12_GLOBAL__N_113copyAndNegateENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE.exit.thread: ; preds = %bb.h, %.critedge.thread.i.i.i, %_ZN6hermes6bigint10TmpStorageC2Ej.exit
  %.sroa.055.1 = phi ptr [ %2, %_ZN6hermes6bigint10TmpStorageC2Ej.exit ], [ %i.y, %.critedge.thread.i.i.i ], [ %i.y, %bb.h ]
  %.sroa.756.1 = phi i32 [ %3, %_ZN6hermes6bigint10TmpStorageC2Ej.exit ], [ %i.bk, %.critedge.thread.i.i.i ], [ 0, %bb.h ] ; 4 uses
  br i1 %i.o, label %bb.k, label %_ZN6hermes6bigint12_GLOBAL__N_113copyAndNegateENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE.exit89.thread

bb.k:                                             ; preds = %_ZN6hermes6bigint12_GLOBAL__N_113copyAndNegateENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE.exit.thread
end_hunk_1
begin_hunk_2_@_ZN6hermes6bigint8multiplyENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefES2_:bb.a

_ZN6hermes6bigint12_GLOBAL__N_113copyAndNegateENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE.exit89.thread: ; preds = %bb.n, %.critedge.thread.i.i.i75, %_ZN6hermes6bigint12_GLOBAL__N_113copyAndNegateENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE.exit.thread
  %.sroa.049.1 = phi ptr [ %4, %_ZN6hermes6bigint12_GLOBAL__N_113copyAndNegateENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE.exit.thread ], [ %i.bl, %.critedge.thread.i.i.i75 ], [ %i.bl, %bb.n ]
  %.sroa.7.1 = phi i32 [ %5, %_ZN6hermes6bigint12_GLOBAL__N_113copyAndNegateENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE.exit.thread ], [ %i.cw, %.critedge.thread.i.i.i75 ], [ 0, %bb.n ] ; 4 uses
  %i.cx = icmp ne i32 %.sroa.756.1, 0
  %i.cy = icmp ne i32 %.sroa.7.1, 0
  %or.cond.i90 = select i1 %i.cx, i1 %i.cy, i1 false
  %i.cz = add i32 %.sroa.756.1, 1
  %i.da = add i32 %i.cz, %.sroa.7.1
  %i.db = select i1 %or.cond.i90, i32 %i.da, i32 0 ; 3 uses
  %i.dc = load i32, ptr %1, align 4, !tbaa !3
  %i.dd = icmp ult i32 %i.dc, %i.db
end_hunk_2
begin_hunk_3_@_ZN6hermes6bigint8multiplyENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefES2_:bb.a

bb.r:                                             ; preds = %bb.q
  call void @_ZN4llvh5APInt14tcFullMultiplyEPmPKmS3_jj(ptr noundef %0, ptr noundef %.sroa.055.1, ptr noundef %.sroa.049.1, i32 noundef %.sroa.756.1, i32 noundef %.sroa.7.1) #17
  %7 = add i32 %.sroa.7.1, %.sroa.756.1           ; 2 uses
  %i.de = zext i32 %7 to i64
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.de
  %i.dg = load i32, ptr %1, align 4, !tbaa !3
  %i.dh = sub i32 %i.dg, %7
  %i.di = shl i32 %i.dh, 3
  %i.dj = zext i32 %i.di to i64
  call void @llvm.memset.p0.i64(ptr align 8 %i.df, i8 0, i64 %i.dj, i1 false)
end_hunk_3
