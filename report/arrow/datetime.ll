inline.NumInlined: 2499
inline.NumDeleted: 992
begin_hunk_0_@_ZN14arrow_vendored4date9time_zone9load_dataIiEEvRSiiiii:bb.a
  %.sroa.090.0 = phi ptr [ %.sroa.090.1177, %bb.g ], [ %i.d, %_ZNSt12_Vector_baseIN14arrow_vendored4date6detail10transitionESaIS3_EE11_M_allocateEm.exit.i.i ]
  %i.g = phi ptr [ %i.ah, %bb.g ], [ %i.d, %_ZNSt12_Vector_baseIN14arrow_vendored4date6detail10transitionESaIS3_EE11_M_allocateEm.exit.i.i ] ; 7 uses
  %i.h = phi ptr [ %i.ag, %bb.g ], [ %i.e, %_ZNSt12_Vector_baseIN14arrow_vendored4date6detail10transitionESaIS3_EE11_M_allocateEm.exit.i.i ] ; 6 uses
  %i.i = phi ptr [ %.sroa.8.0178, %bb.g ], [ %i.d, %_ZNSt12_Vector_baseIN14arrow_vendored4date6detail10transitionESaIS3_EE11_M_allocateEm.exit.i.i ] ; 4 uses
  %.0819.i = phi i32 [ %i.ai, %bb.g ], [ 0, %_ZNSt12_Vector_baseIN14arrow_vendored4date6detail10transitionESaIS3_EE11_M_allocateEm.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31, !noalias !94
  %i.j = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.a, i64 noundef 4)
end_hunk_0
begin_hunk_1_@_ZN14arrow_vendored4date9time_zone9load_dataIiEEvRSiiiii:bb.a
  store i64 %i.m, ptr %i.i, align 8, !tbaa !75, !noalias !94
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr null, ptr %i.n, align 8, !tbaa !81, !noalias !94
  br label %bb.g

bb.c:                                             ; preds = %bb.b
end_hunk_1
begin_hunk_2_@_ZN14arrow_vendored4date9time_zone9load_dataIiEEvRSiiiii:bb.a
  br i1 %.not.i.i.i.i.i.i, label %.loopexit180, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !101

.loopexit180:                                     ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc14.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.y, %.noexc14.i ], [ %i.ac, %.lr.ph.i.i.i.i.i.i ] ; 4 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.q) #29, !noalias !94
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.w ; 4 uses
  %.sroa.0.0.copyload.i.i15.i.pre = load i64, ptr %.0.lcssa.i.i.i.i.i.i, align 8, !tbaa !75, !noalias !94
  %i.ae = icmp slt i64 %.sroa.0.0.copyload.i.i15.i.pre, -1096193779200
  br i1 %i.ae, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.loopexit180
end_hunk_2
begin_hunk_3_@_ZN14arrow_vendored4date9time_zone9load_dataIiEEvRSiiiii:bb.a
  br label %bb.h

bb.g:                                             ; preds = %.thread, %bb.e, %.loopexit180
  %.sroa.8.0178.a = phi ptr [ %i.i, %.thread ], [ %.0.lcssa.i.i.i.i.i.i, %bb.e ], [ %.0.lcssa.i.i.i.i.i.i, %.loopexit180 ]
  %i.ag = phi ptr [ %i.h, %.thread ], [ %i.ad, %bb.e ], [ %i.ad, %.loopexit180 ]
  %i.ah = phi ptr [ %i.g, %.thread ], [ %i.y, %bb.e ], [ %i.y, %.loopexit180 ]
  %.sroa.090.1177 = phi ptr [ %.sroa.090.0, %.thread ], [ %i.y, %bb.e ], [ %i.y, %.loopexit180 ] ; 2 uses
  %.sroa.12.1176 = phi ptr [ %.sroa.12.0, %.thread ], [ %i.ad, %bb.e ], [ %i.ad, %.loopexit180 ] ; 2 uses
  %.sroa.8.0178 = getelementptr inbounds nuw i8, ptr %.sroa.8.0178.a, i64 16 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31, !noalias !94
  %i.ai = add nuw nsw i32 %.0819.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ai, %3
end_hunk_3
begin_hunk_4_@_ZN14arrow_vendored4date9time_zone9load_dataIiEEvRSiiiii:bb.a

_ZN14arrow_vendored4dateL16load_transitionsIiEESt6vectorINS0_6detail10transitionESaIS4_EERSii.exit: ; preds = %bb.g, %bb.a, %_ZNSt12_Vector_baseIN14arrow_vendored4date6detail10transitionESaIS3_EE11_M_allocateEm.exit.i.i
  %.sroa.12.2 = phi ptr [ null, %bb.a ], [ %i.e, %_ZNSt12_Vector_baseIN14arrow_vendored4date6detail10transitionESaIS3_EE11_M_allocateEm.exit.i.i ], [ %.sroa.12.1176, %bb.g ]
  %.sroa.8.1 = phi ptr [ null, %bb.a ], [ %i.d, %_ZNSt12_Vector_baseIN14arrow_vendored4date6detail10transitionESaIS3_EE11_M_allocateEm.exit.i.i ], [ %.sroa.8.0178, %bb.g ]
  %.sroa.090.2 = phi ptr [ null, %bb.a ], [ %i.d, %_ZNSt12_Vector_baseIN14arrow_vendored4date6detail10transitionESaIS3_EE11_M_allocateEm.exit.i.i ], [ %.sroa.090.1177, %bb.g ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !45 ; 3 uses
end_hunk_4
