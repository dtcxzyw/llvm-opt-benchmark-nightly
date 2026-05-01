inline.NumInlined: 760
inline.NumDeleted: 290
begin_hunk_0_@_ZN5arrow7compute8internal15CastDecimalArgsEPNS_10TypeHolderEm:bb.a
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca i32, align 4                      ; 9 uses
  %4 = alloca %"class.arrow::Result.42", align 8  ; 12 uses
  %5 = alloca %"class.arrow::Result.38", align 8  ; 13 uses
  %.idx = mul nuw nsw i64 %2, 24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 4 uses
  %.not165 = icmp eq i64 %2, 0                    ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5arrow7compute8internal15CastDecimalArgsEPNS_10TypeHolderEm:bb.a

bb.aq:                                            ; preds = %.thread212
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %6 = load ptr, ptr %i.cx, align 8, !tbaa !84, !noalias !226 ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %8 = load ptr, ptr %7, align 8, !tbaa !34, !noalias !226 ; 11 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cx, i8 0, i64 16, i1 false)
  br i1 %.not165, label %._crit_edge180, label %.lr.ph179

.lr.ph179:                                        ; preds = %bb.aq
  %.not.i.i.i94 = icmp eq ptr %8, null
  %i.cy = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  br label %bb.ax

._crit_edge180:                                   ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit110, %bb.aq
  store ptr null, ptr %0, align 8, !tbaa !74, !alias.scope !231
  %.not.i.i89 = icmp eq ptr %8, null
  br i1 %.not.i.i89, label %_ZN5arrow6StatusC2ERKS0_.exit88, label %bb.ar

bb.ar:                                            ; preds = %._crit_edge180
  %i.cz = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  %i.da = load atomic i64, ptr %i.cz acquire, align 8 ; 2 uses
  %i.db = icmp eq i64 %i.da, 4294967297
  %i.dc = trunc i64 %i.da to i32                  ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN5arrow7compute8internal15CastDecimalArgsEPNS_10TypeHolderEm:bb.a

bb.as:                                            ; preds = %bb.ar
  store i32 0, ptr %i.cz, align 8, !tbaa !61
  %i.dd = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 0, ptr %i.dd, align 4, !tbaa !63
  %i.de = load ptr, ptr %8, align 8, !tbaa !64
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dg = load ptr, ptr %i.df, align 8
  call void %i.dg(ptr noundef nonnull align 8 dereferenceable(16) %8) #26, !inline_history !142
  %i.dh = load ptr, ptr %8, align 8, !tbaa !64
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dj = load ptr, ptr %i.di, align 8
  call void %i.dj(ptr noundef nonnull align 8 dereferenceable(16) %8) #26, !inline_history !142
  br label %_ZN5arrow6StatusC2ERKS0_.exit88

bb.at:                                            ; preds = %bb.ar
end_hunk_2
begin_hunk_3_@_ZN5arrow7compute8internal15CastDecimalArgsEPNS_10TypeHolderEm:bb.a
  br i1 %i.dn, label %bb.aw, label %_ZN5arrow6StatusC2ERKS0_.exit88, !prof !48

bb.aw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i91
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #26
  br label %_ZN5arrow6StatusC2ERKS0_.exit88

bb.ax:                                            ; preds = %.lr.ph179, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit110
end_hunk_3
begin_hunk_4_@_ZN5arrow7compute8internal15CastDecimalArgsEPNS_10TypeHolderEm:bb.a
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit96

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit96: ; preds = %bb.ax, %bb.az, %bb.ba
  store ptr %6, ptr %.0177, align 8, !tbaa !113
  %i.ds = getelementptr inbounds nuw i8, ptr %.0177, i64 8
  store ptr %6, ptr %i.ds, align 8, !tbaa !77
  %i.dt = getelementptr inbounds nuw i8, ptr %.0177, i64 16 ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !34 ; 8 uses
  store ptr %8, ptr %i.dt, align 8, !tbaa !34
  %.not.i.i.i.i.i97 = icmp eq ptr %i.du, null
  br i1 %.not.i.i.i.i.i97, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit110, label %bb.bb

end_hunk_4
