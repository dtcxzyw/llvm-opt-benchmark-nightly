inline.NumInlined: 6273
inline.NumDeleted: 3206
begin_hunk_0_@_ZN6duckdb17LogicalCopyToFile11DeserializeERNS_12DeserializerE:bb.a
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 88
  %i.dj = load ptr, ptr %i.di, align 8, !noalias !414
  %i.dk = invoke noundef zeroext i1 %i.dj(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %.noexc152 unwind label %bb.ad

.noexc152:                                        ; preds = %.noexc151
  br i1 %i.dk, label %_ZN6duckdb10unique_ptrINS_9ParseInfoESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i, label %bb.m
end_hunk_0
begin_hunk_1_@_ZN6duckdb17LogicalCopyToFile11DeserializeERNS_12DeserializerE:bb.a
          to label %.noexc154 unwind label %bb.ad

.noexc154:                                        ; preds = %.noexc153
  %i.do = load ptr, ptr %7, align 8, !tbaa !417, !noalias !414 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29, !noalias !414
  %i.dp = load ptr, ptr %1, align 8, !tbaa !16, !noalias !414
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 64
end_hunk_1
begin_hunk_2_@_ZN6duckdb17LogicalCopyToFile11DeserializeERNS_12DeserializerE:bb.a
  %i.dv = load ptr, ptr %.sink8.i, align 8, !tbaa !16, !noalias !411
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !noalias !411
  call void %i.dx(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %.sink8.i) #29, !noalias !411, !inline_history !419
  br label %.body155

_ZN6duckdb12Deserializer4ReadINS_10unique_ptrINS_9ParseInfoESt14default_deleteIS3_ELb1EEES3_EENSt9enable_ifIXaasr13is_unique_ptrIT_EE5valuesr15has_deserializeIT0_EE5valueES8_E4typeEv.exit.i: ; preds = %bb.m
end_hunk_2
begin_hunk_3_@_ZN6duckdb19LogicalCopyDatabaseC2ENS_10unique_ptrINS_9ParseInfoESt14default_deleteIS2_ELb1EEE:_ZNSt10unique_ptrIN6duckdb9ParseInfoESt14default_deleteIS1_EED2Ev.exit
  tail call void @_ZN6duckdb15LogicalOperatorC2ENS_19LogicalOperatorTypeE(ptr noundef nonnull align 8 dereferenceable(97) %0, i8 noundef zeroext 15)
  store ptr getelementptr inbounds nuw inrange(-16, 128) (i8, ptr @_ZTVN6duckdb19LogicalCopyDatabaseE, i64 16), ptr %0, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load i64, ptr %1, align 8, !tbaa !417
  %i.c = inttoptr i64 %i.b to ptr
  store ptr null, ptr %1, align 8, !tbaa !417
  store ptr %i.c, ptr %i.a, align 8, !tbaa !529, !alias.scope !531
  ret void
}
end_hunk_3
begin_hunk_4_@_ZN6duckdb18LogicalCreateIndexC2ERNS_13ClientContextENS_10unique_ptrINS_10CreateInfoESt14default_deleteIS4_ELb1EEENS_6vectorINS3_INS_10ExpressionES5_IS9_ELb1EEELb1ESaISB_EEENS3_INS_9ParseInfoES5_ISE_ELb1EEE:_ZNSt10unique_ptrIN6duckdb10CreateInfoESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  store ptr %i.j, ptr %i.d, align 8, !tbaa !544
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.l = load i64, ptr %4, align 8, !tbaa !417
  %i.m = inttoptr i64 %i.l to ptr
  store ptr null, ptr %4, align 8, !tbaa !417
  store ptr %i.m, ptr %i.k, align 8, !tbaa !546, !alias.scope !570
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
end_hunk_4
begin_hunk_5_@_ZN6duckdb13LogicalExportC2ERNS_13ClientContextENS_10unique_ptrINS_9ParseInfoESt14default_deleteIS4_ELb1EEES7_:_ZNSt10unique_ptrIN6duckdb9ParseInfoESt14default_deleteIS1_EED2Ev.exit
  tail call void @_ZN6duckdb15LogicalOperatorC2ENS_19LogicalOperatorTypeE(ptr noundef nonnull align 8 dereferenceable(97) %0, i8 noundef zeroext -79)
  store ptr getelementptr inbounds nuw inrange(-16, 128) (i8, ptr @_ZTVN6duckdb13LogicalExportE, i64 16), ptr %0, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.b = load i64, ptr %2, align 8, !tbaa !417
  %i.c = inttoptr i64 %i.b to ptr
  store ptr null, ptr %2, align 8, !tbaa !417
  store ptr %i.c, ptr %i.a, align 8, !tbaa !312, !alias.scope !738
  %i.d = invoke noundef nonnull align 8 dereferenceable(344) ptr @_ZNK6duckdb10unique_ptrINS_8CopyInfoESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.a unwind label %bb.b
end_hunk_5
begin_hunk_6_@_ZN6duckdb13LogicalExportC2ERNS_13ClientContextENS_10unique_ptrINS_9ParseInfoESt14default_deleteIS4_ELb1EEES7_:_ZNSt10unique_ptrIN6duckdb9ParseInfoESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb9ParseInfoESt14default_deleteIS1_EED2Ev.exit5: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.g = load i64, ptr %3, align 8, !tbaa !417
  %i.h = inttoptr i64 %i.g to ptr
  store ptr null, ptr %3, align 8, !tbaa !417
  store ptr %i.h, ptr %i.f, align 8, !tbaa !736, !alias.scope !741
  ret void

end_hunk_6
begin_hunk_7_@_ZN6duckdb13LogicalVacuum11DeserializeERNS_12DeserializerE:bb.a
          to label %.noexc41 unwind label %bb.w

.noexc41:                                         ; preds = %.noexc40
  %i.o = load ptr, ptr %3, align 8, !tbaa !417, !noalias !1268 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29, !noalias !1268
  %i.p = load ptr, ptr %1, align 8, !tbaa !16, !noalias !1268
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 64
end_hunk_7
begin_hunk_8_@bcmp
!414 = !{!415, !412}
!415 = distinct !{!415, !416, !"_ZN6duckdb12Deserializer4ReadINS_10unique_ptrINS_9ParseInfoESt14default_deleteIS3_ELb1EEES3_EENSt9enable_ifIXaasr13is_unique_ptrIT_EE5valuesr15has_deserializeIT0_EE5valueES8_E4typeEv: argument 0"}
!416 = distinct !{!416, !"_ZN6duckdb12Deserializer4ReadINS_10unique_ptrINS_9ParseInfoESt14default_deleteIS3_ELb1EEES3_EENSt9enable_ifIXaasr13is_unique_ptrIT_EE5valuesr15has_deserializeIT0_EE5valueES8_E4typeEv"}
!417 = !{!418, !418, i64 0}
!418 = !{!"p1 _ZTSN6duckdb9ParseInfoE", !9, i64 0}
!419 = distinct !{null}
!420 = !{!421}
!421 = distinct !{!421, !422, !"_ZN6duckdb15unique_ptr_castINS_9ParseInfoENS_8CopyInfoEEENS_10unique_ptrIT0_St14default_deleteIS4_ELb1EEENS3_IT_S5_IS8_ELb1EEE: argument 0"}
!422 = distinct !{!422, !"_ZN6duckdb15unique_ptr_castINS_9ParseInfoENS_8CopyInfoEEENS_10unique_ptrIT0_St14default_deleteIS4_ELb1EEENS3_IT_S5_IS8_ELb1EEE"}
end_hunk_8
