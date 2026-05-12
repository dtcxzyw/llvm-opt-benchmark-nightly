inline.NumInlined: 4507
inline.NumDeleted: 1580
begin_hunk_0_@_ZN5arrow7compute8internal16GetTemporalCastsEv:bb.a
  %1 = alloca %"class.std::shared_ptr.10", align 16 ; 4 uses
  %2 = alloca %"struct.arrow::compute::ScalarKernel", align 16 ; 21 uses
  %3 = alloca %"class.std::shared_ptr.289", align 16 ; 7 uses
  %4 = alloca %"class.std::vector.35", align 8    ; 12 uses
  %5 = alloca [1 x %"class.arrow::compute::InputType"], align 8 ; 10 uses
  %6 = alloca %"class.arrow::compute::OutputType", align 8 ; 8 uses
  %7 = alloca %"class.std::shared_ptr.298", align 8 ; 6 uses
end_hunk_0
begin_hunk_1_@_ZN5arrow7compute8internal16GetTemporalCastsEv:bb.a
  %27 = alloca %"class.std::shared_ptr.10", align 16 ; 4 uses
  %28 = alloca %"struct.arrow::compute::ScalarKernel", align 16 ; 21 uses
  %29 = alloca %"class.std::shared_ptr.289", align 16 ; 7 uses
  %30 = alloca %"class.std::vector.35", align 8   ; 12 uses
  %31 = alloca [1 x %"class.arrow::compute::InputType"], align 8 ; 10 uses
  %32 = alloca %"class.arrow::compute::OutputType", align 8 ; 8 uses
  %33 = alloca %"class.std::shared_ptr.298", align 8 ; 6 uses
end_hunk_1
begin_hunk_2_@_ZN5arrow7compute8internal16GetTemporalCastsEv:bb.a
  %46 = alloca %"class.std::shared_ptr.10", align 16 ; 4 uses
  %47 = alloca %"struct.arrow::compute::ScalarKernel", align 16 ; 21 uses
  %48 = alloca %"class.std::shared_ptr.289", align 16 ; 7 uses
  %49 = alloca %"class.std::vector.35", align 8   ; 12 uses
  %50 = alloca [1 x %"class.arrow::compute::InputType"], align 8 ; 10 uses
  %51 = alloca %"class.arrow::compute::OutputType", align 8 ; 8 uses
  %52 = alloca %"class.std::shared_ptr.298", align 8 ; 6 uses
end_hunk_2
begin_hunk_3_@_ZN5arrow7compute8internal16GetTemporalCastsEv:bb.a
  %65 = alloca %"class.std::shared_ptr.10", align 16 ; 4 uses
  %66 = alloca %"struct.arrow::compute::ScalarKernel", align 16 ; 21 uses
  %67 = alloca %"class.std::shared_ptr.289", align 16 ; 7 uses
  %68 = alloca %"class.std::vector.35", align 8   ; 12 uses
  %69 = alloca [1 x %"class.arrow::compute::InputType"], align 8 ; 10 uses
  %70 = alloca %"class.arrow::compute::OutputType", align 8 ; 8 uses
  %71 = alloca %"class.std::shared_ptr.298", align 8 ; 6 uses
end_hunk_3
begin_hunk_4_@_ZN5arrow7compute8internal16GetTemporalCastsEv:bb.a

_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i.i: ; preds = %bb.wv
  %i.blq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %141 = load ptr, ptr %68, align 8, !tbaa !123, !noalias !94 ; 3 uses
  %.not.i.i4.i.i.i = icmp eq ptr %141, null
  br i1 %.not.i.i4.i.i.i, label %.body.i.i, label %142

142:                                              ; preds = %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i.i
  %143 = getelementptr inbounds nuw i8, ptr %68, i64 16
  %144 = load ptr, ptr %143, align 8, !tbaa !126, !noalias !94
  %145 = ptrtoint ptr %144 to i64
  %146 = ptrtoint ptr %141 to i64
  %147 = sub i64 %145, %146
  call void @_ZdlPvm(ptr noundef nonnull %141, i64 noundef %147) #22, !noalias !94
  br label %.body.i.i

bb.ww:                                            ; preds = %.noexc3.i.i.i
end_hunk_4
begin_hunk_5_@_ZN5arrow7compute8internal16GetTemporalCastsEv:bb.a
  call void @_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %68) #20, !noalias !94
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.yt, %142, %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i.i
  %.pn.pn.i.i = phi { ptr, i32 } [ %.pn.i.i, %bb.yt ], [ %i.blq, %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i.i ], [ %i.blq, %142 ]
  call void @_ZN5arrow7compute9InputTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %69) #20, !noalias !94
  br label %.loopexit.i.i

end_hunk_5
begin_hunk_6_@_ZN5arrow7compute8internal16GetTemporalCastsEv:bb.a

_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i.i367: ; preds = %bb.aec
  %i.cei = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %148 = load ptr, ptr %49, align 8, !tbaa !123, !noalias !161 ; 3 uses
  %.not.i.i4.i.i.i367 = icmp eq ptr %148, null
  br i1 %.not.i.i4.i.i.i367, label %.body.i.i368, label %149

149:                                              ; preds = %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i.i367
  %150 = getelementptr inbounds nuw i8, ptr %49, i64 16
  %151 = load ptr, ptr %150, align 8, !tbaa !126, !noalias !161
  %152 = ptrtoint ptr %151 to i64
  %153 = ptrtoint ptr %148 to i64
  %154 = sub i64 %152, %153
  call void @_ZdlPvm(ptr noundef nonnull %148, i64 noundef %154) #22, !noalias !161
  br label %.body.i.i368

bb.aed:                                           ; preds = %.noexc3.i.i.i370
end_hunk_6
begin_hunk_7_@_ZN5arrow7compute8internal16GetTemporalCastsEv:bb.a
  call void @_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %49) #20, !noalias !161
  br label %.body.i.i368

.body.i.i368:                                     ; preds = %bb.aga, %149, %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i.i367
  %.pn.pn.i.i369 = phi { ptr, i32 } [ %.pn.i.i371, %bb.aga ], [ %i.cei, %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i.i367 ], [ %i.cei, %149 ]
  call void @_ZN5arrow7compute9InputTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %50) #20, !noalias !161
  br label %.loopexit.i.i364

end_hunk_7
begin_hunk_8_@_ZN5arrow7compute8internal16GetTemporalCastsEv:bb.a

_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i.i478: ; preds = %bb.aki
  %i.cus = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %155 = load ptr, ptr %30, align 8, !tbaa !123, !noalias !178 ; 3 uses
  %.not.i.i4.i.i.i478 = icmp eq ptr %155, null
  br i1 %.not.i.i4.i.i.i478, label %.body.i.i479, label %156

156:                                              ; preds = %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i.i478
  %157 = getelementptr inbounds nuw i8, ptr %30, i64 16
  %158 = load ptr, ptr %157, align 8, !tbaa !126, !noalias !178
  %159 = ptrtoint ptr %158 to i64
  %160 = ptrtoint ptr %155 to i64
  %161 = sub i64 %159, %160
  call void @_ZdlPvm(ptr noundef nonnull %155, i64 noundef %161) #22, !noalias !178
  br label %.body.i.i479

bb.akj:                                           ; preds = %.noexc3.i.i.i481
end_hunk_8
begin_hunk_9_@_ZN5arrow7compute8internal16GetTemporalCastsEv:bb.a
  call void @_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %30) #20, !noalias !178
  br label %.body.i.i479

.body.i.i479:                                     ; preds = %bb.amg, %156, %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i.i478
  %.pn.pn.i.i480 = phi { ptr, i32 } [ %.pn.i.i482, %bb.amg ], [ %i.cus, %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i.i478 ], [ %i.cus, %156 ]
  call void @_ZN5arrow7compute9InputTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %31) #20, !noalias !178
  br label %.loopexit.i.i475

end_hunk_9
begin_hunk_10_@_ZN5arrow7compute8internal16GetTemporalCastsEv:bb.a

_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i.i591: ; preds = %bb.atx
  %i.duf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %162 = load ptr, ptr %4, align 8, !tbaa !123, !noalias !195 ; 3 uses
  %.not.i.i4.i.i.i591 = icmp eq ptr %162, null
  br i1 %.not.i.i4.i.i.i591, label %.body.i.i592, label %163

163:                                              ; preds = %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i.i591
  %164 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %165 = load ptr, ptr %164, align 8, !tbaa !126, !noalias !195
  %166 = ptrtoint ptr %165 to i64
  %167 = ptrtoint ptr %162 to i64
  %168 = sub i64 %166, %167
  call void @_ZdlPvm(ptr noundef nonnull %162, i64 noundef %168) #22, !noalias !195
  br label %.body.i.i592

bb.aty:                                           ; preds = %.noexc3.i.i.i594
end_hunk_10
begin_hunk_11_@_ZN5arrow7compute8internal16GetTemporalCastsEv:bb.a
  call void @_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #20, !noalias !195
  br label %.body.i.i592

.body.i.i592:                                     ; preds = %bb.avv, %163, %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i.i591
  %.pn.pn.i.i593 = phi { ptr, i32 } [ %.pn.i.i595, %bb.avv ], [ %i.duf, %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit.i.i.i591 ], [ %i.duf, %163 ]
  call void @_ZN5arrow7compute9InputTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #20, !noalias !195
  br label %.loopexit.i.i588

end_hunk_11
