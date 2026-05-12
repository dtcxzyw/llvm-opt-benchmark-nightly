inline.NumInlined: 5151
inline.NumDeleted: 1155
begin_hunk_0_@_ZN6duckdb21TemplatedValidityMaskImE4CopyERKS1_m:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %2, ptr %i.a, align 8, !tbaa !263
  %i.b = load ptr, ptr %1, align 8, !tbaa !238
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %bb.i

end_hunk_0
begin_hunk_1_@_ZN6duckdb21TemplatedValidityMaskImE4CopyERKS1_m:bb.a
  store i32 1, ptr %i.w, align 4, !tbaa !119, !noalias !305
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.u, align 8, !tbaa !92, !noalias !305
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 3 uses
  %3 = load ptr, ptr %1, align 8, !tbaa !310, !noalias !305 ; 7 uses
  %4 = ptrtoaddr ptr %3 to i64
  store ptr null, ptr %i.x, align 8, !tbaa !311, !noalias !305
  %i.y = add i64 %2, 63                           ; 2 uses
  %i.z = lshr i64 %i.y, 6                         ; 7 uses
  %i.aa = shl nuw nsw i64 %i.z, 3
end_hunk_1
begin_hunk_2_@_ZN6duckdb21TemplatedValidityMaskImE4CopyERKS1_m:bb.a
          to label %.noexc.i.i.i.i.i unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i.i, !noalias !305 ; 8 uses

.noexc.i.i.i.i.i:                                 ; preds = %bb.i
  store ptr %i.ab, ptr %i.x, align 8, !tbaa !310, !noalias !305
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.z, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.noexc.i.i.i.i.i
  %i.ac = ptrtoaddr ptr %i.ab to i64
  %min.iters.check = icmp ult i64 %i.y, 384
  %i.ad = sub i64 %i.ac, %4
  %diff.check = icmp ult i64 %i.ad, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.preheader25, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
end_hunk_2
begin_hunk_3_@_ZN6duckdb21TemplatedValidityMaskImE4CopyERKS1_m:bb.a

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %wide.load = load <2 x i64>, ptr %i.ae, align 8, !tbaa !53, !noalias !305
  %wide.load24 = load <2 x i64>, ptr %i.af, align 8, !tbaa !53, !noalias !305
end_hunk_3
begin_hunk_4_@_ZN6duckdb21TemplatedValidityMaskImE4CopyERKS1_m:bb.a
.lr.ph.i.i.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader25, %.lr.ph.i.i.i.i.i.i.i.i.prol
  %.014.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.am, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %.014.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader25 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader25 ]
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.014.i.i.i.i.i.i.i.i.prol
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !53, !noalias !305
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.014.i.i.i.i.i.i.i.i.prol
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !53, !noalias !305
end_hunk_4
begin_hunk_5_@_ZN6duckdb21TemplatedValidityMaskImE4CopyERKS1_m:bb.a

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i
  %.014.i.i.i.i.i.i.i.i = phi i64 [ %i.be, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.014.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.014.i.i.i.i.i.i.i.i
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !53, !noalias !305
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.014.i.i.i.i.i.i.i.i
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !53, !noalias !305
  %i.as = add nuw nsw i64 %.014.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.as
  %i.au = load i64, ptr %i.at, align 8, !tbaa !53, !noalias !305
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.as
  store i64 %i.au, ptr %i.av, align 8, !tbaa !53, !noalias !305
  %i.aw = add nuw nsw i64 %.014.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.aw
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !53, !noalias !305
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.aw
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !53, !noalias !305
  %i.ba = add nuw nsw i64 %.014.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !53, !noalias !305
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ba
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !53, !noalias !305
end_hunk_5
begin_hunk_6_@_ZN6duckdb21TemplatedValidityMaskImE4CopyERKS1_m:bb.a

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit13: ; preds = %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i6, %bb.r, %_ZN6duckdb15make_shared_ptrINS_21TemplatedValidityDataImEEJRKPmRmEEENS_10shared_ptrIT_Lb1EEEDpOT0_.exit
  %i.cn = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bv)
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !310
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit13
end_hunk_6
begin_hunk_7_@_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !310  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIN6duckdb21TemplatedValidityDataImEEEvPT_.exit, label %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i

end_hunk_7
begin_hunk_8_@_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm:bb.a
_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit: ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEaSEOS3_.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.am = call noundef ptr @_ZNK6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c)
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !310
  store ptr %i.an, ptr %0, align 8, !tbaa !238
  ret void
}
end_hunk_8
begin_hunk_9_@_ZN6duckdb11make_bufferINS_21TemplatedValidityDataImEEJRmEEENS_10shared_ptrIT_Lb1EEEDpOT0_:bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !92, !noalias !331
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.e = load i64, ptr %1, align 8, !tbaa !53, !noalias !331
  store ptr null, ptr %i.d, align 8, !tbaa !311, !noalias !331
  %i.f = add i64 %i.e, 63
  %i.g = lshr i64 %i.f, 6                         ; 2 uses
  %i.h = shl nuw nsw i64 %i.g, 3                  ; 2 uses
end_hunk_9
begin_hunk_10_@_ZN6duckdb11make_bufferINS_21TemplatedValidityDataImEEJRmEEENS_10shared_ptrIT_Lb1EEEDpOT0_:bb.a
          to label %.noexc.i.i.i.i.i unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb21TemplatedValidityDataImEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i, !noalias !331 ; 2 uses

.noexc.i.i.i.i.i:                                 ; preds = %bb.a
  store ptr %i.i, ptr %i.d, align 8, !tbaa !310, !noalias !331
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.b, label %.lr.ph.i.i.i.i.i.i.i.i

end_hunk_10
begin_hunk_11_@llvm.bswap.v2i32
!307 = distinct !{!307, !"_ZSt11make_sharedIN6duckdb21TemplatedValidityDataImEEJRKPmRmEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES9_E4typeEEDpOT0_"}
!308 = distinct !{!308, !309, !"_ZN6duckdb15make_shared_ptrINS_21TemplatedValidityDataImEEJRKPmRmEEENS_10shared_ptrIT_Lb1EEEDpOT0_: argument 0"}
!309 = distinct !{!309, !"_ZN6duckdb15make_shared_ptrINS_21TemplatedValidityDataImEEJRKPmRmEEENS_10shared_ptrIT_Lb1EEEDpOT0_"}
!310 = !{!212, !212, i64 0}
!311 = !{!312, !212, i64 0}
!312 = !{!"_ZTSSt10_Head_baseILm0EPmLb0EE", !212, i64 0}
!313 = distinct !{!313, !26, !266, !267}
!314 = distinct !{!314, !273}
!315 = distinct !{!315, !26, !266}
end_hunk_11
