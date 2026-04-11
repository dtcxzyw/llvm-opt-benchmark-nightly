inline.NumInlined: 5153
inline.NumDeleted: 1482
begin_hunk_0_@_ZN11OpenImageIO4v3_113TextureSystem14unit_test_hashEv:.noexc105

bb.h:                                             ; preds = %bb.b, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit
  %.sroa.0231.0372 = phi ptr [ null, %bb.b ], [ %.sroa.0231.1330, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit ] ; 12 uses
  %.sroa.12.0371 = phi ptr [ null, %bb.b ], [ %.sroa.12.1329.a, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit ] ; 8 uses
  %.sroa.18.0370 = phi ptr [ null, %bb.b ], [ %.sroa.18.1328, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit ] ; 5 uses
  %i.p = invoke ptr @_ZN11OpenImageIO4v3_17ustring9fmtformatIJiEEES1_PKcDpRKT_(ptr noundef nonnull @.str.76, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.i unwind label %bb.q
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_113TextureSystem14unit_test_hashEv:.noexc105
_ZNSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE9push_backEOS4_.exit.thread: ; preds = %bb.k
  %i.t = load ptr, ptr %11, align 8, !tbaa !611
  store ptr %i.t, ptr %.sroa.12.0371, align 8, !tbaa !611
  %12 = getelementptr inbounds nuw i8, ptr %.sroa.12.0371, i64 8
  br label %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit

bb.l:                                             ; preds = %bb.k
end_hunk_1
begin_hunk_2_@_ZN11OpenImageIO4v3_113TextureSystem14unit_test_hashEv:.noexc105
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !624

_ZNSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc180
  %.0.lcssa.i.i.i.i = phi ptr [ %i.ae, %.noexc180 ], [ %i.ap, %middle.block ], [ %i.ax, %.lr.ph.i.i.i.i ]
  %13 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8 ; 3 uses
  %.not.i23.i = icmp eq ptr %.sroa.0231.0372, null
  br i1 %.not.i23.i, label %_ZNSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE9push_backEOS4_.exit, label %bb.n

end_hunk_2
begin_hunk_3_@_ZN11OpenImageIO4v3_113TextureSystem14unit_test_hashEv:.noexc105

_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit: ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE9push_backEOS4_.exit.thread, %_ZNSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE9push_backEOS4_.exit, %bb.o, %bb.p
  %.sroa.0231.1330 = phi ptr [ %.sroa.0231.0372, %_ZNSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE9push_backEOS4_.exit.thread ], [ %i.ae, %_ZNSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE9push_backEOS4_.exit ], [ %i.ae, %bb.o ], [ %i.ae, %bb.p ] ; 11 uses
  %.sroa.12.1329.a = phi ptr [ %12, %_ZNSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE9push_backEOS4_.exit.thread ], [ %13, %_ZNSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE9push_backEOS4_.exit ], [ %13, %bb.o ], [ %13, %bb.p ] ; 6 uses
  %.sroa.18.1328 = phi ptr [ %.sroa.18.0370, %_ZNSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE9push_backEOS4_.exit.thread ], [ %i.ay, %_ZNSt6vectorIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEESaIS4_EE9push_backEOS4_.exit ], [ %i.ay, %bb.o ], [ %i.ay, %bb.p ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #3
  %i.bb = load i32, ptr %i.a, align 4, !tbaa !3   ; 2 uses
  %i.bc = add nsw i32 %i.bb, 1
end_hunk_3
begin_hunk_4_@_ZN11OpenImageIO4v3_113TextureSystem14unit_test_hashEv:.noexc105

_ZN11OpenImageIO4v3_15TimerD2Ev.exit:             ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #3
  %.not4.i.i.i = icmp eq ptr %.sroa.0231.1330, %.sroa.12.1329.a
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN11OpenImageIO4v3_15TimerD2Ev.exit, %_ZSt8_DestroyIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.hr, %_ZSt8_DestroyIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEEEvPT_.exit.i.i.i ], [ %.sroa.0231.1330, %_ZN11OpenImageIO4v3_15TimerD2Ev.exit ] ; 2 uses
  %i.ho = load ptr, ptr %.05.i.i.i, align 8, !tbaa !611 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ho, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEEEvPT_.exit.i.i.i, label %bb.as
end_hunk_4
begin_hunk_5_@_ZN11OpenImageIO4v3_113TextureSystem14unit_test_hashEv:.noexc105
  br label %_ZSt8_DestroyIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEEEvPT_.exit.i.i.i: ; preds = %bb.at, %bb.as, %.lr.ph.i.i.i
  %i.hr = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.hr, %.sroa.12.1329.a
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !639

_ZSt8_DestroyIPN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_113intrusive_ptrINS1_14ImageCacheFileEEEEvPT_.exit.i.i.i, %_ZN11OpenImageIO4v3_15TimerD2Ev.exit
end_hunk_5
begin_hunk_6_@_ZN11OpenImageIO4v3_113TextureSystem14unit_test_hashEv:.noexc105

_ZN11OpenImageIO4v3_15TimerD2Ev.exit153:          ; preds = %bb.ac, %bb.aj, %bb.ad, %bb.v
  %.sroa.18.0363 = phi ptr [ %.sroa.18.0370414, %bb.v ], [ %.sroa.18.1328, %bb.ad ], [ %.sroa.18.1328, %bb.aj ], [ %.sroa.18.1328, %bb.ac ]
  %.sroa.12.0354 = phi ptr [ %.sroa.12.0371, %bb.v ], [ %.sroa.12.1329.a, %bb.ad ], [ %.sroa.12.1329.a, %bb.aj ], [ %.sroa.12.1329.a, %bb.ac ] ; 2 uses
  %.sroa.0231.0345 = phi ptr [ %.sroa.0231.0372, %bb.v ], [ %.sroa.0231.1330, %bb.ad ], [ %.sroa.0231.1330, %bb.aj ], [ %.sroa.0231.1330, %bb.ac ] ; 5 uses
  %.pn91.pn.pn = phi { ptr, i32 } [ %.pn91.pn, %bb.v ], [ %i.dj, %bb.ad ], [ %i.gb, %bb.aj ], [ %i.di, %bb.ac ] ; 4 uses
  %.not4.i.i.i154 = icmp eq ptr %.sroa.0231.0345, %.sroa.12.0354
end_hunk_6
