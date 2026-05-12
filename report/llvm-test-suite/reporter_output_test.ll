inline.NumInlined: 4348
inline.NumDeleted: 294
begin_hunk_0_@_GLOBAL__sub_I_reporter_output_test.cc:bb.a
  %317 = alloca [1 x %struct.TestCase], align 8   ; 11 uses
  %318 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %319 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %320 = alloca %"class.std::vector", align 8     ; 12 uses
  %321 = alloca %"class.std::vector.6", align 8   ; 13 uses
  %322 = alloca [3 x %"class.std::__cxx11::basic_string"], align 8 ; 18 uses
  %i.ix = alloca i64, align 8                     ; 5 uses
end_hunk_0
begin_hunk_1_@_GLOBAL__sub_I_reporter_output_test.cc:bb.a

bb.adw:                                           ; preds = %bb.adv
  call void @llvm.lifetime.start.p0(ptr nonnull %320) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %320, i8 0, i64 24, i1 false)
  %i.gvg = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26
          to label %bb.adx unwind label %566      ; 3 uses

566:                                              ; preds = %bb.adw
  %567 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %568 = load ptr, ptr %320, align 8, !tbaa !74   ; 2 uses
  %.not.i.i4.i.i = icmp eq ptr %568, null
  br i1 %.not.i.i4.i.i, label %.thread75.i, label %569

569:                                              ; preds = %566
  %570 = getelementptr inbounds nuw i8, ptr %320, i64 16
  %571 = load ptr, ptr %570, align 8, !tbaa !176
  br label %.thread78.sink.split.i

bb.adx:                                           ; preds = %bb.adw
  store ptr %i.gvg, ptr %320, align 8, !tbaa !74
  %i.gvh = getelementptr inbounds nuw i8, ptr %i.gvg, i64 24 ; 2 uses
end_hunk_1
begin_hunk_2_@_GLOBAL__sub_I_reporter_output_test.cc:bb.a
  call void @_ZdlPvm(ptr noundef %i.gxn, i64 noundef %i.gxq) #24
  br label %__cxx_global_var_init.138.exit

bb.aee:                                           ; preds = %bb.adx
  %i.gxr = landingpad { ptr, i32 }
          cleanup
end_hunk_2
begin_hunk_3_@_GLOBAL__sub_I_reporter_output_test.cc:bb.a

bb.aeg:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.2.i, %bb.aee
  %.pn.pn.pn.pn.pn.i1854 = phi { ptr, i32 } [ %.pn.i1855, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.2.i ], [ %i.gxr, %bb.aee ] ; 2 uses
  %i.gyf = load ptr, ptr %320, align 8, !tbaa !74 ; 2 uses
  %.not.i.i.i56.i = icmp eq ptr %i.gyf, null
  br i1 %.not.i.i.i56.i, label %.thread75.i, label %bb.aeh

bb.aeh:                                           ; preds = %bb.aeg
  %i.gyg = load ptr, ptr %i.gvi, align 8, !tbaa !176
  br label %.thread78.sink.split.i

bb.aei:                                           ; preds = %bb.adv, %__cxx_global_var_init.136.exit
  %.020.i = phi i1 [ false, %bb.adv ], [ true, %__cxx_global_var_init.136.exit ] ; 2 uses
end_hunk_3
begin_hunk_4_@_GLOBAL__sub_I_reporter_output_test.cc:bb.a
  %i.gyj = icmp eq ptr %i.gyi, %i.gvb
  br i1 %i.gyj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60.i.a, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58.i.a

.thread78.sink.split.i:                           ; preds = %bb.aeh, %569
  %.sink120.i = phi ptr [ %571, %569 ], [ %i.gyg, %bb.aeh ]
  %.sink119.i = phi ptr [ %568, %569 ], [ %i.gyf, %bb.aeh ] ; 2 uses
  %.pn.pn.pn.pn.pn.pn.ph.i = phi { ptr, i32 } [ %567, %569 ], [ %.pn.pn.pn.pn.pn.i1854, %bb.aeh ]
  %572 = ptrtoint ptr %.sink120.i to i64
  %573 = ptrtoint ptr %.sink119.i to i64
  %574 = sub i64 %572, %573
  call void @_ZdlPvm(ptr noundef nonnull %.sink119.i, i64 noundef %574) #24
  br label %.thread75.i

.thread75.i:                                      ; preds = %.thread78.sink.split.i, %bb.aeg, %566
  %.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %567, %566 ], [ %.pn.pn.pn.pn.pn.i1854, %bb.aeg ], [ %.pn.pn.pn.pn.pn.pn.ph.i, %.thread78.sink.split.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %320) #23
  %i.gyk = load ptr, ptr %319, align 8, !tbaa !20 ; 2 uses
  %i.gyl = icmp eq ptr %i.gyk, %i.gvb
end_hunk_4
