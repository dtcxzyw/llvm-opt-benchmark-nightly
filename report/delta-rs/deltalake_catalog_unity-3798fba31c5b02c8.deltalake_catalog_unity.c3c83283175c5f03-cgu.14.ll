inline.NumInlined: 839
inline.NumDeleted: 369
begin_hunk_0_@_RNCNvMsc_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB7_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE20do_run_pending_tasks0B1F_:bb.a

_RNvYNCNKNvNtCsee2lL6QbnsJ_15crossbeam_epoch7default6HANDLE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtNtBa_9collector11LocalHandleEEEE9call_onceCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread.i.i.i: ; preds = %.noexc153, %bb.ee
  %.sroa.0.0.i.i.i2.i.i.i = phi ptr [ %i.ry, %.noexc153 ], [ %i.ru, %bb.ee ]
  %.val.i.i.i = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i, align 8, !noundef !8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store ptr %.val.i.i.i, ptr %i.ah, align 8
  %i.sa = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 2072 ; 2 uses
end_hunk_0
begin_hunk_1_@_RNCNvMsc_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB7_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE20do_run_pending_tasks0B1F_:bb.a

.noexc156:                                        ; preds = %bb.em
  %i.sw = invoke noundef ptr @_RNvMs1_NtCsee2lL6QbnsJ_15crossbeam_epoch9collectorNtB5_9Collector8register(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.sv)
          to label %.noexc157 unwind label %bb.ez ; 13 uses

.noexc157:                                        ; preds = %.noexc156
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
end_hunk_1
begin_hunk_2_@_RNCNvMsc_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB7_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE20do_run_pending_tasks0B1F_:bb.a

bb.ev:                                            ; preds = %bb.er, %bb.eq, %bb.en
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.sw) ]
  %i.ty = load i64, ptr %i.sx, align 8, !noundef !8
  %i.tz = getelementptr inbounds nuw i8, ptr %i.sw, i64 2080 ; 2 uses
  %i.ua = load i64, ptr %i.tz, align 8, !noundef !8 ; 2 uses
end_hunk_2
begin_hunk_3_@_RNCNvMsc_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB7_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE20do_run_pending_tasks0B1F_:bb.a

bb.ey:                                            ; preds = %bb.ej, %bb.ei, %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  br label %_RNvNtCsee2lL6QbnsJ_15crossbeam_epoch7default3pin.exit

bb.ez:                                            ; preds = %bb.ew, %.noexc156, %bb.em, %_RNvYNCNKNvNtCsee2lL6QbnsJ_15crossbeam_epoch7default6HANDLE00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtNtBa_9collector11LocalHandleEEEE9call_onceCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i
end_hunk_3
