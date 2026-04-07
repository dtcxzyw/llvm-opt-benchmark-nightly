begin_hunk_0_@_ZNK4llvh9StringRef11getAsDoubleERdb:bb.a
  br i1 %or.cond.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.pre = tail call noundef nonnull align 1 ptr @_ZN4llvh11APFloatBase15PPCDoubleDoubleEv() #23
  br label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
end_hunk_0
begin_hunk_1_@_ZNK4llvh9StringRef11getAsDoubleERdb:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.0.i.i = select i1 %.not.i.i, ptr %i.i, ptr %i.a
  %i.j = call noundef double @_ZNK4llvh6detail9IEEEFloat15convertToDoubleEv(ptr noundef nonnull align 8 dereferenceable(24) %.0.i.i) #20
  store double %i.j, ptr %1, align 8, !tbaa !67
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
end_hunk_1
begin_hunk_2_@_ZNK4llvh9StringRef11getAsDoubleERdb:bb.a
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN4llvh6detail9IEEEFloatD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #20
  br label %_ZN4llvh7APFloatD2Ev.exit

bb.f:                                             ; preds = %bb.d
  call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #20
  br label %_ZN4llvh7APFloatD2Ev.exit

_ZN4llvh7APFloatD2Ev.exit:                        ; preds = %bb.e, %bb.f
end_hunk_2
begin_hunk_3_@_ZN4llvh6detail13DoubleAPFloatD2Ev
define linkonce_odr hidden void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69   ; 4 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIA_N4llvh7APFloatESt14default_deleteIS2_EED2Ev.exit, label %bb.b

end_hunk_3
begin_hunk_4_@_ZN4llvh6detail13DoubleAPFloatD2Ev:bb.a
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvh6detail9IEEEFloatD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.j) #20
  br label %_ZN4llvh7APFloatD2Ev.exit.i

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN4llvh6detail13DoubleAPFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.j) #20
  br label %_ZN4llvh7APFloatD2Ev.exit.i

_ZN4llvh7APFloatD2Ev.exit.i:                      ; preds = %bb.e, %bb.d
end_hunk_4
begin_hunk_5_@_ZN4llvh6detail13DoubleAPFloatD2Ev:bb.a

_ZNKSt14default_deleteIA_N4llvh7APFloatEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit: ; preds = %_ZN4llvh7APFloatD2Ev.exit.i, %bb.b
  %i.m = or disjoint i64 %.idx.i, 8
  tail call void @_ZdaPvm(ptr noundef nonnull %i.c, i64 noundef %i.m) #22
  br label %_ZNSt10unique_ptrIA_N4llvh7APFloatESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIA_N4llvh7APFloatESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIA_N4llvh7APFloatEEclIS1_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS2_EE5valueEvE4typeEPS6_.exit
  store ptr null, ptr %i.a, align 8, !tbaa !69
  ret void
}

end_hunk_5
begin_hunk_6_@_ZN4llvh7hashing6detail23hash_combine_range_implIKcEENSt9enable_ifIXsr16is_hashable_dataIT_EE5valueENS_9hash_codeEE4typeEPS5_S9_:bb.a
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4llvh7hashing6detail18get_execution_seedEvE4seed acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4llvh7hashing6detail18get_execution_seedEv.exit, !prof !71

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4llvh7hashing6detail18get_execution_seedEvE4seed) #20
end_hunk_6
begin_hunk_7_@_ZN4llvh7hashing6detail23hash_combine_range_implIKcEENSt9enable_ifIXsr16is_hashable_dataIT_EE5valueENS_9hash_codeEE4typeEPS5_S9_:bb.a
  %i.aj = mul i64 %i.ai, -7070675565921424023     ; 2 uses
  %i.ak = add i64 %i.w, %i.f
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.0.copyload.i.i.i = load i64, ptr %i.al, align 1, !noalias !72 ; 2 uses
  %i.am = add i64 %i.ak, %.0.copyload.i.i.i       ; 2 uses
  %i.an = tail call i64 @llvm.fshl.i64(i64 %i.am, i64 %i.am, i64 27)
  %i.ao = mul i64 %i.an, -5435081209227447693
  %i.ap = mul i64 %i.f, -5435081209227447692
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.0.copyload.i7.i.i = load i64, ptr %i.aq, align 1, !noalias !72 ; 2 uses
  %i.ar = add i64 %.0.copyload.i7.i.i, %i.ap      ; 2 uses
  %i.as = tail call i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 22)
  %i.at = mul i64 %i.as, -5435081209227447693
  %i.au = xor i64 %i.ao, %i.aj                    ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.0.copyload.i8.i.i = load i64, ptr %i.av, align 1, !noalias !72 ; 2 uses
  %i.aw = add i64 %.0.copyload.i8.i.i, %i.w
  %i.ax = add i64 %i.aw, %i.at                    ; 3 uses
  %i.ay = add i64 %i.v, %i.z                      ; 2 uses
end_hunk_7
begin_hunk_8_@_ZN4llvh7hashing6detail23hash_combine_range_implIKcEENSt9enable_ifIXsr16is_hashable_dataIT_EE5valueENS_9hash_codeEE4typeEPS5_S9_:bb.a
  %i.ba = mul i64 %i.az, -5435081209227447693     ; 3 uses
  %i.bb = mul i64 %i.f, -7894485801551159383
  %i.bc = add i64 %i.au, %i.z
  %.0.copyload.i.i.i.i = load i64, ptr %0, align 1, !noalias !72
  %i.bd = add i64 %.0.copyload.i.i.i.i, %i.bb     ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.0.copyload.i15.i.i.i = load i64, ptr %i.be, align 1, !noalias !72 ; 2 uses
  %i.bf = add i64 %i.bc, %i.bd
  %i.bg = add i64 %i.bf, %.0.copyload.i15.i.i.i   ; 2 uses
  %i.bh = tail call i64 @llvm.fshl.i64(i64 %i.bg, i64 %i.bg, i64 43)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.0.copyload.i17.i.i.i = load i64, ptr %i.bi, align 1, !noalias !72 ; 2 uses
  %i.bj = add i64 %i.bd, %.0.copyload.i.i.i
  %i.bk = add i64 %i.bj, %.0.copyload.i17.i.i.i   ; 3 uses
  %i.bl = tail call i64 @llvm.fshl.i64(i64 %i.bk, i64 %i.bk, i64 20)
end_hunk_8
begin_hunk_9_@_ZN4llvh7hashing6detail23hash_combine_range_implIKcEENSt9enable_ifIXsr16is_hashable_dataIT_EE5valueENS_9hash_codeEE4typeEPS5_S9_:bb.a
  %i.bp = add i64 %i.aj, %i.ba
  %i.bq = add i64 %i.ax, %.0.copyload.i17.i.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.0.copyload.i.i10.i.i = load i64, ptr %i.br, align 1, !noalias !72
  %i.bs = add i64 %i.bp, %.0.copyload.i.i10.i.i   ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.0.copyload.i15.i11.i.i = load i64, ptr %i.bt, align 1, !noalias !72 ; 2 uses
  %i.bu = add i64 %i.bq, %i.bs
  %i.bv = add i64 %i.bu, %.0.copyload.i15.i11.i.i ; 2 uses
  %i.bw = tail call i64 @llvm.fshl.i64(i64 %i.bv, i64 %i.bv, i64 43)
end_hunk_9
begin_hunk_10_@_ZN4llvh7hashing6detail23hash_combine_range_implIKcEENSt9enable_ifIXsr16is_hashable_dataIT_EE5valueENS_9hash_codeEE4typeEPS5_S9_:bb.a
  %i.dw = add i64 %i.ds, %.0.copyload.i15.i11.i   ; 2 uses
  %.0 = getelementptr inbounds nuw i8, ptr %.059, i64 64 ; 2 uses
  %.not = icmp eq ptr %.0, %i.m
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !75

._crit_edge:                                      ; preds = %.lr.ph, %bb.e
  %.sroa.58.0.lcssa = phi i64 [ %i.cb, %bb.e ], [ %i.dv, %.lr.ph ] ; 3 uses
end_hunk_10
begin_hunk_11_@llvm.vector.reduce.add.v2i64
!64 = !{!"_ZTSN4llvh5APIntE", !5, i64 0, !4, i64 8}
!65 = distinct !{!65, !14}
!66 = distinct !{!66, !14}
!67 = !{!68, !68, i64 0}
!68 = !{!"double", !5, i64 0}
!69 = !{!70, !70, i64 0}
!70 = !{!"p1 _ZTSN4llvh7APFloatE", !10, i64 0}
!71 = !{!"branch_weights", i32 1, i32 1048575}
!72 = !{!73}
!73 = distinct !{!73, !74, !"_ZN4llvh7hashing6detail10hash_state6createEPKcm: argument 0"}
!74 = distinct !{!74, !"_ZN4llvh7hashing6detail10hash_state6createEPKcm"}
!75 = distinct !{!75, !14}
end_hunk_11
