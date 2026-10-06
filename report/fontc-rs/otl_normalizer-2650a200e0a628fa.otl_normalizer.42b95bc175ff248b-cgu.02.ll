Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/otl_normalizer-2650a200e0a628fa.otl_normalizer.42b95bc175ff248b-cgu.02?download=true
inline.NumInlined: 368
inline.NumDeleted: 196
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs7SuSGX4jtHW_12clap_builder7builder9arg_group8ArgGroupECs5JazJsyow1H_14otl_normalizer:bb.a
bb.f:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22
  unreachable

.body:                                            ; preds = %bb.g, %bb.d
  %.pn = phi { ptr, i32 } [ %i.g, %bb.d ], [ %i.j, %bb.g ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs7SuSGX4jtHW_12clap_builder4util2id2IdEECs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #21
          to label %.body5 unwind label %bb.n

bb.g:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs7SuSGX4jtHW_12clap_builder4util2id2IdEECs5JazJsyow1H_14otl_normalizer.exit: ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs7SuSGX4jtHW_12clap_builder4util2id2IdENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs7SuSGX4jtHW_12clap_builder4util2id2IdEECs5JazJsyow1H_14otl_normalizer.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7SuSGX4jtHW_12clap_builder4util2id2IdENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body5 unwind label %bb.j

bb.i:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs7SuSGX4jtHW_12clap_builder4util2id2IdEECs5JazJsyow1H_14otl_normalizer.exit
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7SuSGX4jtHW_12clap_builder4util2id2IdENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs7SuSGX4jtHW_12clap_builder4util2id2IdEECs5JazJsyow1H_14otl_normalizer.exit7 unwind label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22
  unreachable

.body5:                                           ; preds = %bb.k, %bb.h, %.body
  %.pn2 = phi { ptr, i32 } [ %.pn, %.body ], [ %i.o, %bb.k ], [ %i.l, %bb.h ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs7SuSGX4jtHW_12clap_builder4util2id2IdEECs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.n) #21
          to label %common.resume unwind label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body5

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs7SuSGX4jtHW_12clap_builder4util2id2IdEECs5JazJsyow1H_14otl_normalizer.exit7: ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCs7SuSGX4jtHW_12clap_builder4util2id2IdENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs7SuSGX4jtHW_12clap_builder4util2id2IdEECs5JazJsyow1H_14otl_normalizer.exit9 unwind label %bb.l

bb.l:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs7SuSGX4jtHW_12clap_builder4util2id2IdEECs5JazJsyow1H_14otl_normalizer.exit7
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7SuSGX4jtHW_12clap_builder4util2id2IdENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22
  unreachable

common.resume:                                    ; preds = %.body5, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %i.q, %bb.l ], [ %.pn2, %.body5 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs7SuSGX4jtHW_12clap_builder4util2id2IdEECs5JazJsyow1H_14otl_normalizer.exit9: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs7SuSGX4jtHW_12clap_builder4util2id2IdEECs5JazJsyow1H_14otl_normalizer.exit7
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7SuSGX4jtHW_12clap_builder4util2id2IdENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
  ret void

bb.n:                                             ; preds = %.body5, %.body
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs7SuSGX4jtHW_12clap_builder6parser7matches11matched_arg10MatchedArgECs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECs5JazJsyow1H_14otl_normalizer.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.b, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecIBC_NtNtNtCs7SuSGX4jtHW_12clap_builder4util9any_value8AnyValueEEECs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #21
          to label %.body2 unwind label %bb.l

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECs5JazJsyow1H_14otl_normalizer.exit: ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecIBw_NtNtNtCs7SuSGX4jtHW_12clap_builder4util9any_value8AnyValueEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECs5JazJsyow1H_14otl_normalizer.exit
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtNtCs7SuSGX4jtHW_12clap_builder4util9any_value8AnyValueEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body2 unwind label %bb.h

bb.g:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECs5JazJsyow1H_14otl_normalizer.exit
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtNtCs7SuSGX4jtHW_12clap_builder4util9any_value8AnyValueEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecIBC_NtNtNtCs7SuSGX4jtHW_12clap_builder4util9any_value8AnyValueEEECs5JazJsyow1H_14otl_normalizer.exit unwind label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22
  unreachable

.body2:                                           ; preds = %bb.i, %bb.f, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.j, %bb.i ], [ %i.g, %bb.f ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecIBC_NtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringEEECs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #21
          to label %common.resume unwind label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body2

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecIBC_NtNtNtCs7SuSGX4jtHW_12clap_builder4util9any_value8AnyValueEEECs5JazJsyow1H_14otl_normalizer.exit: ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecIBw_NtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecIBC_NtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringEEECs5JazJsyow1H_14otl_normalizer.exit unwind label %bb.j

bb.j:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecIBC_NtNtNtCs7SuSGX4jtHW_12clap_builder4util9any_value8AnyValueEEECs5JazJsyow1H_14otl_normalizer.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22
  unreachable

common.resume:                                    ; preds = %.body2, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.j ], [ %.pn, %.body2 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecIBC_NtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringEEECs5JazJsyow1H_14otl_normalizer.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecIBC_NtNtNtCs7SuSGX4jtHW_12clap_builder4util9any_value8AnyValueEEECs5JazJsyow1H_14otl_normalizer.exit
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
  ret void

bb.l:                                             ; preds = %.body2, %.body
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #22
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable7ipnsortINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBY_4gpos5marks18MarkAttachmentRuleENvYBT_NtNtB8_3cmp10PartialOrd2ltEBY_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 76861433640456466) %1, ptr noalias nofree noundef nonnull %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBz_4gpos5marks18MarkAttachmentRuleE7reverseBz_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.c = tail call fastcc noundef zeroext i1 @_RNvYNvYINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBa_4gpos5marks18MarkAttachmentRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1G_3ops8function5FnMutTRB5_B2N_EE8call_mutBa_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %0) #25 ; 2 uses
  %.not16 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.c, label %.preheader, label %.preheader6

.preheader6:                                      ; preds = %bb.b
  br i1 %.not16, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB17_4gpos5marks18MarkAttachmentRuleENvYB12_NtNtB8_3cmp10PartialOrd2ltEB17_.exit, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  br i1 %.not16, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB17_4gpos5marks18MarkAttachmentRuleENvYB12_NtNtB8_3cmp10PartialOrd2ltEB17_.exit, label %.lr.ph12

.lr.ph:                                           ; preds = %.preheader6, %bb.c
  %.sroa.01.0.i8 = phi i64 [ %i.f, %bb.c ], [ 2, %.preheader6 ] ; 4 uses
  %i.d = getelementptr inbounds nuw [120 x i8], ptr %0, i64 %.sroa.01.0.i8
  %3 = getelementptr [120 x i8], ptr %0, i64 %.sroa.01.0.i8
  %4 = getelementptr i8, ptr %3, i64 -120
  %i.e = tail call fastcc noundef zeroext i1 @_RNvYNvYINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBa_4gpos5marks18MarkAttachmentRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1G_3ops8function5FnMutTRB5_B2N_EE8call_mutBa_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %4) #25
  br i1 %i.e, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB17_4gpos5marks18MarkAttachmentRuleENvYB12_NtNtB8_3cmp10PartialOrd2ltEB17_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.f = add nuw nsw i64 %.sroa.01.0.i8, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.f, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB17_4gpos5marks18MarkAttachmentRuleENvYB12_NtNtB8_3cmp10PartialOrd2ltEB17_.exit.thread, label %.lr.ph

.lr.ph12:                                         ; preds = %.preheader, %bb.d
  %.sroa.01.1.i11 = phi i64 [ %i.i, %bb.d ], [ 2, %.preheader ] ; 4 uses
  %i.g = getelementptr inbounds nuw [120 x i8], ptr %0, i64 %.sroa.01.1.i11
  %5 = getelementptr [120 x i8], ptr %0, i64 %.sroa.01.1.i11
  %6 = getelementptr i8, ptr %5, i64 -120
  %i.h = tail call fastcc noundef zeroext i1 @_RNvYNvYINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBa_4gpos5marks18MarkAttachmentRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1G_3ops8function5FnMutTRB5_B2N_EE8call_mutBa_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %6) #25
  br i1 %i.h, label %bb.d, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB17_4gpos5marks18MarkAttachmentRuleENvYB12_NtNtB8_3cmp10PartialOrd2ltEB17_.exit

bb.d:                                             ; preds = %.lr.ph12
  %i.i = add nuw nsw i64 %.sroa.01.1.i11, 1       ; 2 uses
  %exitcond19.not = icmp eq i64 %i.i, %1
  br i1 %exitcond19.not, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB17_4gpos5marks18MarkAttachmentRuleENvYB12_NtNtB8_3cmp10PartialOrd2ltEB17_.exit.thread, label %.lr.ph12

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB17_4gpos5marks18MarkAttachmentRuleENvYB12_NtNtB8_3cmp10PartialOrd2ltEB17_.exit: ; preds = %.lr.ph, %.lr.ph12, %.preheader6, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader6 ], [ 2, %.preheader ], [ %.sroa.01.1.i11, %.lr.ph12 ], [ %.sroa.01.0.i8, %.lr.ph ] ; 2 uses
  %i.j = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.k, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB17_4gpos5marks18MarkAttachmentRuleENvYB12_NtNtB8_3cmp10PartialOrd2ltEB17_.exit.thread, label %bb.e

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB17_4gpos5marks18MarkAttachmentRuleENvYB12_NtNtB8_3cmp10PartialOrd2ltEB17_.exit.thread: ; preds = %bb.c, %bb.d, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB17_4gpos5marks18MarkAttachmentRuleENvYB12_NtNtB8_3cmp10PartialOrd2ltEB17_.exit
  br i1 %i.c, label %.lr.ph.preheader.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBz_4gpos5marks18MarkAttachmentRuleE7reverseBz_.exit

bb.e:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB17_4gpos5marks18MarkAttachmentRuleENvYB12_NtNtB8_3cmp10PartialOrd2ltEB17_.exit
  %i.l = or i64 %1, 1
  %i.m = tail call range(i64 7, 64) i64 @llvm.ctlz.i64(i64 %i.l, i1 true)
  %i.n = trunc nuw nsw i64 %i.m to i32
  %i.o = shl nuw nsw i32 %i.n, 1
  %i.p = xor i32 %i.o, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable9quicksort9quicksortINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB1c_4gpos5marks18MarkAttachmentRuleENvYB17_NtNtBa_3cmp10PartialOrd2ltEB1c_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(120) null, i32 noundef %i.p, ptr noalias nofree noundef nonnull %2)
  br label %_RNvMNtCsf3Ta7LF998c_4core5sliceSINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBz_4gpos5marks18MarkAttachmentRuleE7reverseBz_.exit

_RNvMNtCsf3Ta7LF998c_4core5sliceSINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBz_4gpos5marks18MarkAttachmentRuleE7reverseBz_.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB15_4gpos5marks18MarkAttachmentRuleEEB15_.exit.i.i, %bb.a, %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB17_4gpos5marks18MarkAttachmentRuleENvYB12_NtNtB8_3cmp10PartialOrd2ltEB17_.exit.thread, %bb.e
  ret void

.lr.ph.preheader.i.i:                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB17_4gpos5marks18MarkAttachmentRuleENvYB12_NtNtB8_3cmp10PartialOrd2ltEB17_.exit.thread
  %i.q = lshr i64 %1, 1
  %i.r = getelementptr inbounds nuw [120 x i8], ptr %0, i64 %1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB15_4gpos5marks18MarkAttachmentRuleEEB15_.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.w, %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB15_4gpos5marks18MarkAttachmentRuleEEB15_.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.s = xor i64 %.sroa.0.017.i.i, -1
  %i.t = getelementptr inbounds nuw [120 x i8], ptr %0, i64 %.sroa.0.017.i.i
  %i.u = getelementptr [120 x i8], ptr %i.r, i64 %i.s
  invoke void @_RINvNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs5JazJsyow1H_14otl_normalizer(ptr noundef nonnull %i.t, ptr noundef nonnull %i.u, i64 noundef 15)
          to label %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB15_4gpos5marks18MarkAttachmentRuleEEB15_.exit.i.i unwind label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #22
  unreachable

_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB15_4gpos5marks18MarkAttachmentRuleEEB15_.exit.i.i: ; preds = %.lr.ph.i.i
  %i.w = add nuw nsw i64 %.sroa.0.017.i.i, 1      ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.w, %i.q
  br i1 %exitcond.not.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBz_4gpos5marks18MarkAttachmentRuleE7reverseBz_.exit, label %.lr.ph.i.i
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable7ipnsortINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBY_4gpos7pairpos11PairPosRuleENvYBT_NtNtB8_3cmp10PartialOrd2ltEBY_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 25063510969714065) %1, ptr noalias nofree noundef nonnull %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBz_4gpos7pairpos11PairPosRuleE7reverseBz_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !902)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !903)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !904)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !905)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !906)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !907)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !908)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !909)
  %i.c = load i64, ptr %i.b, align 8, !range !15, !alias.scope !910, !noalias !911, !noundef !4
  %.not.i.i.i.i = icmp eq i64 %i.c, -3
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !910, !noalias !911, !nonnull !4, !align !11
  %.sroa.0.0.i.i.i.i = select i1 %.not.i.i.i.i, ptr %i.e, ptr %i.b ; 4 uses
  %i.f = load i64, ptr %0, align 8, !range !15, !alias.scope !911, !noalias !910, !noundef !4
  %.not2.i.i.i.i = icmp eq i64 %i.f, -3
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !911, !noalias !910, !nonnull !4, !align !11
  %.sroa.01.0.i.i.i.i = select i1 %.not2.i.i.i.i, ptr %i.h, ptr %0 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !912)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !913)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !914)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !915)
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 352
  %i.j = load i16, ptr %i.i, align 8, !alias.scope !916, !noalias !917, !noundef !4 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i, i64 352
  %i.l = load i16, ptr %i.k, align 8, !alias.scope !918, !noalias !919, !noundef !4 ; 2 uses
  %i.m = tail call i8 @llvm.ucmp.i8.i16(i16 %i.j, i16 %i.l)
  %i.n = icmp eq i16 %i.j, %i.l
  br i1 %i.n, label %bb.c, label %_RNvXs9_NtCsgCecv3eZDcN_5alloc6borrowINtB5_3CowNtNtNtCs5JazJsyow1H_14otl_normalizer4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmpBO_.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 320
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i, i64 320
  %i.q = tail call noundef i8 @_RNvXs5_NtCs5JazJsyow1H_14otl_normalizer6commonNtB5_8GlyphSetNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.p) ; 2 uses
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.d, label %_RNvXs9_NtCsgCecv3eZDcN_5alloc6borrowINtB5_3CowNtNtNtCs5JazJsyow1H_14otl_normalizer4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmpBO_.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.s = tail call fastcc noundef i8 @_RNvXsk_NtCs5JazJsyow1H_14otl_normalizer4gposNtB5_19ResolvedValueRecordNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(360) %.sroa.0.0.i.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(360) %.sroa.01.0.i.i.i.i) #25 ; 2 uses
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %bb.e, label %_RNvXs9_NtCsgCecv3eZDcN_5alloc6borrowINtB5_3CowNtNtNtCs5JazJsyow1H_14otl_normalizer4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmpBO_.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 160
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i, i64 160
  %i.w = tail call fastcc noundef i8 @_RNvXsk_NtCs5JazJsyow1H_14otl_normalizer4gposNtB5_19ResolvedValueRecordNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.u, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.v) #25
  br label %_RNvXs9_NtCsgCecv3eZDcN_5alloc6borrowINtB5_3CowNtNtNtCs5JazJsyow1H_14otl_normalizer4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmpBO_.exit.i.i.i

_RNvXs9_NtCsgCecv3eZDcN_5alloc6borrowINtB5_3CowNtNtNtCs5JazJsyow1H_14otl_normalizer4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmpBO_.exit.i.i.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.i.i.i.i.i.i = phi i8 [ %i.w, %bb.e ], [ %i.s, %bb.d ], [ %i.q, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.x = icmp eq i8 %.sroa.0.0.i.i.i.i.i.i, 0
  br i1 %i.x, label %bb.f, label %_RNvYNvYINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBa_4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBa_.exit

bb.f:                                             ; preds = %_RNvXs9_NtCsgCecv3eZDcN_5alloc6borrowINtB5_3CowNtNtNtCs5JazJsyow1H_14otl_normalizer4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmpBO_.exit.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 732
  %i.z = load i16, ptr %i.y, align 4, !alias.scope !920, !noalias !921, !noundef !4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 364
  %i.ab = load i16, ptr %i.aa, align 4, !alias.scope !921, !noalias !920, !noundef !4 ; 2 uses
  %i.ac = tail call i8 @llvm.ucmp.i8.i16(i16 %i.z, i16 %i.ab)
  %i.ad = icmp eq i16 %i.z, %i.ab
  br i1 %i.ad, label %bb.g, label %_RNvYNvYINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBa_4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBa_.exit

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 734
  %i.af = load i16, ptr %i.ae, align 2, !alias.scope !920, !noalias !921, !noundef !4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 366
  %i.ah = load i16, ptr %i.ag, align 2, !alias.scope !921, !noalias !920, !noundef !4 ; 2 uses
  %i.ai = tail call i8 @llvm.ucmp.i8.i16(i16 %i.af, i16 %i.ah)
  %i.aj = icmp eq i16 %i.af, %i.ah
  br i1 %i.aj, label %bb.h, label %_RNvYNvYINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBa_4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBa_.exit

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.al = load i16, ptr %i.ak, align 8, !range !16, !alias.scope !920, !noalias !921, !noundef !4
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 730
  %i.an = trunc nuw i16 %i.al to i1
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ap = load i16, ptr %i.ao, align 8, !range !16, !alias.scope !921, !noalias !920, !noundef !4
  %i.aq = trunc nuw i16 %i.ap to i1               ; 2 uses
  br i1 %i.an, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  br i1 %i.aq, label %bb.k, label %.preheader26

bb.j:                                             ; preds = %bb.h
  %..i.i.i = sext i1 %i.aq to i8
  br label %_RNvYNvYINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBa_4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBa_.exit

bb.k:                                             ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 362
  %i.as = load i16, ptr %i.am, align 2, !alias.scope !920, !noalias !921, !noundef !4
  %i.at = load i16, ptr %i.ar, align 2, !alias.scope !921, !noalias !920, !noundef !4
  %i.au = tail call i8 @llvm.ucmp.i8.i16(i16 %i.as, i16 %i.at)
  br label %_RNvYNvYINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBa_4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBa_.exit

_RNvYNvYINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBa_4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBa_.exit: ; preds = %_RNvXs9_NtCsgCecv3eZDcN_5alloc6borrowINtB5_3CowNtNtNtCs5JazJsyow1H_14otl_normalizer4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmpBO_.exit.i.i.i, %bb.f, %bb.g, %bb.j, %bb.k
  %.sroa.0.0.i.i.i = phi i8 [ %i.au, %bb.k ], [ %i.ac, %bb.f ], [ %..i.i.i, %bb.j ], [ %.sroa.0.0.i.i.i.i.i.i, %_RNvXs9_NtCsgCecv3eZDcN_5alloc6borrowINtB5_3CowNtNtNtCs5JazJsyow1H_14otl_normalizer4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmpBO_.exit.i.i.i ], [ %i.ai, %bb.g ]
  %i.av = icmp slt i8 %.sroa.0.0.i.i.i, 0
  br i1 %i.av, label %.preheader, label %.preheader26

.preheader26:                                     ; preds = %bb.i, %_RNvYNvYINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBa_4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBa_.exit
  %.not = icmp eq i64 %1, 2
  br i1 %.not, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB17_4gpos7pairpos11PairPosRuleENvYB12_NtNtB8_3cmp10PartialOrd2ltEB17_.exit, label %.lr.ph

.preheader:                                       ; preds = %_RNvYNvYINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBa_4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBa_.exit
  %.not36 = icmp eq i64 %1, 2
  br i1 %.not36, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB17_4gpos7pairpos11PairPosRuleENvYB12_NtNtB8_3cmp10PartialOrd2ltEB17_.exit, label %.lr.ph31

.lr.ph:                                           ; preds = %.preheader26, %_RNvYNvYINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBa_4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBa_.exit10.thread
  %.sroa.01.0.i28 = phi i64 [ %i.cu, %_RNvYNvYINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBa_4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBa_.exit10.thread ], [ 2, %.preheader26 ] ; 4 uses
  %i.aw = getelementptr inbounds nuw [368 x i8], ptr %0, i64 %.sroa.01.0.i28 ; 7 uses
  %i.ax = add nsw i64 %.sroa.01.0.i28, -1         ; 2 uses
  %i.ay = icmp samesign ult i64 %i.ax, %1
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = getelementptr inbounds nuw [368 x i8], ptr %0, i64 %i.ax ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !922)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !923)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !924)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !925)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !926)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !927)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !928)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !929)
  %i.ba = load i64, ptr %i.aw, align 8, !range !15, !alias.scope !930, !noalias !931, !noundef !4
  %.not.i.i.i.i2 = icmp eq i64 %i.ba, -3
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !930, !noalias !931, !nonnull !4, !align !11
  %.sroa.0.0.i.i.i.i3 = select i1 %.not.i.i.i.i2, ptr %i.bc, ptr %i.aw ; 4 uses
  %i.bd = load i64, ptr %i.az, align 8, !range !15, !alias.scope !931, !noalias !930, !noundef !4
  %.not2.i.i.i.i4 = icmp eq i64 %i.bd, -3
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !alias.scope !931, !noalias !930, !nonnull !4, !align !11
  %.sroa.01.0.i.i.i.i5 = select i1 %.not2.i.i.i.i4, ptr %i.bf, ptr %i.az ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !932)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !933)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !934)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !935)
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i3, i64 352
end_hunk_0
