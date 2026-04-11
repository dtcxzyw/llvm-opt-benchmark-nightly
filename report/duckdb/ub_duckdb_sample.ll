inline.NumInlined: 1843
inline.NumDeleted: 893
begin_hunk_0_@_ZN6duckdb15ReservoirSample11SimpleMergeERS0_:bb.a
  %i.cj = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.w)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 80
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !39
  %i.cm = uitofp i64 %i.cl to double
  %3 = uitofp i64 %i.ci to double                 ; 2 uses
  %4 = fdiv double %i.cm, %3                      ; 3 uses
  %5 = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 80
  %7 = load i64, ptr %6, align 8, !tbaa !39
  %8 = uitofp i64 %7 to double
  %9 = fdiv double %8, %3                         ; 3 uses
  %i.cn = fadd double %4, %9                      ; 2 uses
  %i.co = fcmp olt double %i.cn, 1.000000e+00
  %i.cp = fsub double 1.000000e+00, %i.cn
  %i.cq = fadd double %9, %i.cp
  %.050 = select i1 %i.co, double %i.cq, double %9 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !155
  %i.ct = uitofp i64 %i.cs to double              ; 2 uses
  %i.cu = fcmp ogt double %4, %.050
  br i1 %i.cu, label %bb.s, label %bb.x

bb.s:                                             ; preds = %bb.r
  %i.cv = fmul double %4, %i.ct
  %i.cw = tail call double @llvm.round.f64(double %i.cv)
  %i.cx = fptoui double %i.cw to i64
  %i.cy = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.w) ; 2 uses
end_hunk_0
