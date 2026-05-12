inline.NumInlined: 3472
inline.NumDeleted: 1065
begin_hunk_0_@_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl8ValidateEv:bb.a
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 10 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
end_hunk_0
begin_hunk_1_@_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl8ValidateEv:bb.a
  br i1 %exitcond55.not, label %._crit_edge.i, label %.lr.ph.i.split.us, !llvm.loop !117

.lr.ph.i.split:                                   ; preds = %.lr.ph.i, %.thread.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.thread.i ], [ 0, %.lr.ph.i ] ; 5 uses
  %i.fa = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %indvars.iv.i ; 2 uses
  %i.fb = icmp slt i64 %indvars.iv.i, %i.eq       ; 2 uses
  %i.fc = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %indvars.iv.i ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN5arrow8internal12_GLOBAL__N_117ValidateArrayImpl8ValidateEv:bb.a
  br i1 %i.fh, label %.split.us, label %._crit_edge149.i

.split.us:                                        ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18, !noalias !47
  %i.fj = load ptr, ptr %i.j, align 8, !tbaa !50, !noalias !47
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 32
end_hunk_2
