begin_hunk_0
; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb22CaseSimplificationRule5ApplyERNS_15LogicalOperatorERNS_6vectorISt17reference_wrapperINS_10ExpressionEELb1ESaIS6_EEERbb(ptr dead_on_unwind noalias writable writeonly sret(%"class.duckdb::unique_ptr.88") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nonnull readnone align 8 captures(none) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr nonnull readnone align 1 captures(none) %4, i1 zeroext %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.duckdb::Value", align 8     ; 9 uses
  %7 = alloca %"class.duckdb::Value", align 8     ; 10 uses
  %8 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_10ExpressionEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 0)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !139
end_hunk_0
begin_hunk_1
  br i1 %.not, label %.loopexit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.thread
  %.066 = phi i64 [ 0, %.lr.ph ], [ %i.ax, %.thread ] ; 5 uses
  %i.i = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb6vectorINS_14BoundCaseCheckELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %.066) ; 3 uses
  %i.j = call noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i) ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !13
end_hunk_1
begin_hunk_2
bb.e:                                             ; preds = %bb.d
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.q = load i8, ptr %i.h, align 8, !tbaa !143, !range !159, !noundef !160
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.h, label %bb.f

end_hunk_2
begin_hunk_3

_ZNSt6vectorIN6duckdb14BoundCaseCheckESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit.a: ; preds = %bb.h
  %i.t = add i64 %.066, -1
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %.thread

bb.i:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
end_hunk_3
begin_hunk_4

bb.m:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %i.c, i64 112 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !142
  store ptr null, ptr %i.x, align 8, !tbaa !142
  %i.z = load ptr, ptr %9, align 8, !tbaa !142    ; 3 uses
  store ptr %i.y, ptr %9, align 8, !tbaa !142
  %.not.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i

end_hunk_4
begin_hunk_5
  %i.af = getelementptr inbounds [16 x i8], ptr %i.ad, i64 %i.ae ; 2 uses
  %i.ag = load ptr, ptr %i.e, align 8, !tbaa !187 ; 2 uses
  %.not.i.i = icmp eq ptr %i.af, %i.ag
  br i1 %.not.i.i, label %.critedge, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6duckdb14BoundCaseCheckESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6duckdb14BoundCaseCheckESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i: ; preds = %_ZN6duckdb11NumericCastIlmvEET_T0_.exit
  %i.ah = load ptr, ptr %i.d, align 8, !tbaa !187 ; 2 uses
end_hunk_5
begin_hunk_6

_ZSt8_DestroyIPN6duckdb14BoundCaseCheckES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIN6duckdb14BoundCaseCheckEEvPT_.exit.i.i.i.i.i
  store ptr %i.al, ptr %i.e, align 8, !tbaa !183
  br label %.critedge

bb.n:                                             ; preds = %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l
  %.pn37 = phi { ptr, i32 } [ %i.w, %bb.l ], [ %i.aw, %bb.n ]
end_hunk_6
begin_hunk_7
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  resume { ptr, i32 } %.pn37.pn

.thread:                                          ; preds = %_ZNSt6vectorIN6duckdb14BoundCaseCheckESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit.a, %bb.b
  %.348 = phi i64 [ %i.t, %_ZNSt6vectorIN6duckdb14BoundCaseCheckESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit.a ], [ %.066, %bb.b ]
  %i.ax = add i64 %.348, 1                        ; 2 uses
  %i.ay = load ptr, ptr %i.e, align 8, !tbaa !183 ; 2 uses
  %i.az = load ptr, ptr %i.d, align 8, !tbaa !186 ; 2 uses
end_hunk_7
begin_hunk_8
  %i.be = icmp ult i64 %i.ax, %i.bd
  br i1 %i.be, label %bb.b, label %.loopexit, !llvm.loop !189

.critedge:                                        ; preds = %_ZN6duckdb11NumericCastIlmvEET_T0_.exit, %_ZSt8_DestroyIPN6duckdb14BoundCaseCheckES1_EvT_S3_RSaIT0_E.exit.i.i.i
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !187
  %.pre75 = load ptr, ptr %i.e, align 8, !tbaa !187
  br label %.loopexit

.loopexit:                                        ; preds = %.thread, %.critedge
  %i.bf = phi ptr [ %.pre75, %.critedge ], [ %i.ay, %.thread ]
  %i.bg = phi ptr [ %.pre, %.critedge ], [ %i.az, %.thread ]
  %i.bh = icmp eq ptr %i.bg, %i.bf
  br i1 %i.bh, label %.loopexit.thread, label %bb.q

end_hunk_8
