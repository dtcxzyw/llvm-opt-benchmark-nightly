Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tgrep-rs/original/tgrep.tgrep.897916b5d56b90bc-cgu.06?download=true
inline.NumInlined: 852
inline.NumDeleted: 469
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_RNvMsh_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutjNtNtB7_7set_val9SetValZSTNtB1y_4LeafENtB1y_4EdgeE7next_kvCsbNLsQi0JuJ4_5tgrep:bb.a

; Function Attrs: noinline nounwind nonlazybind uwtable
define hidden void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtCsbNLsQi0JuJ4_5tgrep16IndexStrategyArgE9drop_slowBI_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.b = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.b, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync4WeakNtCsbNLsQi0JuJ4_5tgrep16IndexStrategyArgRNtNtBG_5alloc6GlobalEEB1c_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = atomicrmw sub ptr %i.c, i64 1 release, align 8
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync4WeakNtCsbNLsQi0JuJ4_5tgrep16IndexStrategyArgRNtNtBG_5alloc6GlobalEEB1c_.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 24, 2001) 24, i64 noundef 8) #28
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync4WeakNtCsbNLsQi0JuJ4_5tgrep16IndexStrategyArgRNtNtBG_5alloc6GlobalEEB1c_.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync4WeakNtCsbNLsQi0JuJ4_5tgrep16IndexStrategyArgRNtNtBG_5alloc6GlobalEEB1c_.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define hidden void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtB7_6string6StringE9drop_slowCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #13 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.e, %bb.d ], [ %i.c, %bb.b ]
  %i.f = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync4WeakNtNtBG_6string6StringRNtNtBG_5alloc6GlobalEECsbNLsQi0JuJ4_5tgrep.exit, label %bb.e

bb.e:                                             ; preds = %.body
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = atomicrmw sub ptr %i.g, i64 1 release, align 8
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync4WeakNtNtBG_6string6StringRNtNtBG_5alloc6GlobalEECsbNLsQi0JuJ4_5tgrep.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 24, 2001) 40, i64 noundef 8) #28
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync4WeakNtNtBG_6string6StringRNtNtBG_5alloc6GlobalEECsbNLsQi0JuJ4_5tgrep.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i
  %i.j = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.j, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync4WeakNtNtBG_6string6StringRNtNtBG_5alloc6GlobalEECsbNLsQi0JuJ4_5tgrep.exit2, label %bb.g

bb.g:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.h, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync4WeakNtNtBG_6string6StringRNtNtBG_5alloc6GlobalEECsbNLsQi0JuJ4_5tgrep.exit2

bb.h:                                             ; preds = %bb.g
  fence acquire
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 24, 2001) 40, i64 noundef 8) #28
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync4WeakNtNtBG_6string6StringRNtNtBG_5alloc6GlobalEECsbNLsQi0JuJ4_5tgrep.exit2

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync4WeakNtNtBG_6string6StringRNtNtBG_5alloc6GlobalEECsbNLsQi0JuJ4_5tgrep.exit2: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit, %bb.g, %bb.h
  ret void

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync4WeakNtNtBG_6string6StringRNtNtBG_5alloc6GlobalEECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.f, %bb.e, %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: noinline nonlazybind uwtable
define hidden void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileE9drop_slowBK_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #13 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %.body.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit.i unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.d, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.e, %bb.d ], [ %i.c, %bb.b ]
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core8encoding11LossyFixupsECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #29
          to label %.body unwind label %bb.g

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 3 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTjjEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core8encoding11LossyFixupsECsbNLsQi0JuJ4_5tgrep.exit.i unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTjjEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core8encoding11LossyFixupsECsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit.i
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTjjEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEBF_.exit unwind label %bb.h

bb.g:                                             ; preds = %.body.i
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.h:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core8encoding11LossyFixupsECsbNLsQi0JuJ4_5tgrep.exit.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.e, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.k, %bb.h ], [ %i.h, %bb.e ], [ %eh.lpad-body.i, %.body.i ]
  %i.l = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.l, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync4WeakNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileRNtNtBG_5alloc6GlobalEEB1e_.exit, label %bb.i

bb.i:                                             ; preds = %.body
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = atomicrmw sub ptr %i.m, i64 1 release, align 8
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %bb.j, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync4WeakNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileRNtNtBG_5alloc6GlobalEEB1e_.exit

bb.j:                                             ; preds = %bb.i
  fence acquire
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 24, 2001) 64, i64 noundef 8) #28
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync4WeakNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileRNtNtBG_5alloc6GlobalEEB1e_.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEBF_.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core8encoding11LossyFixupsECsbNLsQi0JuJ4_5tgrep.exit.i
  %i.p = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.p, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync4WeakNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileRNtNtBG_5alloc6GlobalEEB1e_.exit2, label %bb.k

bb.k:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEBF_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.r = atomicrmw sub ptr %i.q, i64 1 release, align 8
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.l, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync4WeakNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileRNtNtBG_5alloc6GlobalEEB1e_.exit2

bb.l:                                             ; preds = %bb.k
  fence acquire
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 24, 2001) 64, i64 noundef 8) #28
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync4WeakNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileRNtNtBG_5alloc6GlobalEEB1e_.exit2

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync4WeakNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileRNtNtBG_5alloc6GlobalEEB1e_.exit2: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEBF_.exit, %bb.k, %bb.l
  ret void

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync4WeakNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileRNtNtBG_5alloc6GlobalEEB1e_.exit: ; preds = %bb.j, %bb.i, %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: noinline nonlazybind uwtable
define hidden void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11ServerStateE9drop_slowBK_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #13 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 50 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1305)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 288 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1306)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1307)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1308)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 576 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1309)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1310)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1311)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !1312, !nonnull !6, !noundef !6
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !1313
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.b, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbzNSmZPCnTx_10tgrep_core6reader11IndexReaderEEECsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsbzNSmZPCnTx_10tgrep_core6reader11IndexReaderE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #33
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbzNSmZPCnTx_10tgrep_core6reader11IndexReaderEEECsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core4live9LiveIndexECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(248) %i.h) #29
          to label %bb.d unwind label %bb.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbzNSmZPCnTx_10tgrep_core6reader11IndexReaderEEECsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i: ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core4live9LiveIndexECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(248) %i.i)
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.j, %bb.e ], [ %i.g, %bb.c ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(296) %i.b) #29
          to label %.body.i unwind label %bb.i

bb.e:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbzNSmZPCnTx_10tgrep_core6reader11IndexReaderEEECsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.f:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbzNSmZPCnTx_10tgrep_core6reader11IndexReaderEEECsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(296) %i.b)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellNtNtCsbzNSmZPCnTx_10tgrep_core6hybrid11HybridIndexEECsbNLsQi0JuJ4_5tgrep.exit.i.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(296) %i.b)
          to label %.body.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.i:                                             ; preds = %bb.d, %bb.c
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellNtNtCsbzNSmZPCnTx_10tgrep_core6hybrid11HybridIndexEECsbNLsQi0JuJ4_5tgrep.exit.i.i: ; preds = %bb.f
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(296) %i.b)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockNtNtCsbzNSmZPCnTx_10tgrep_core6hybrid11HybridIndexEECsbNLsQi0JuJ4_5tgrep.exit.i unwind label %bb.j

bb.j:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellNtNtCsbzNSmZPCnTx_10tgrep_core6hybrid11HybridIndexEECsbNLsQi0JuJ4_5tgrep.exit.i.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.j, %bb.g, %bb.d
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.n, %bb.j ], [ %i.k, %bb.g ], [ %.pn.i.i.i.i, %bb.d ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 600
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringbENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockNtNtCsbzNSmZPCnTx_10tgrep_core10visibility14PathVisibilityEECsbNLsQi0JuJ4_5tgrep.exit.i unwind label %bb.ax

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockNtNtCsbzNSmZPCnTx_10tgrep_core6hybrid11HybridIndexEECsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellNtNtCsbzNSmZPCnTx_10tgrep_core6hybrid11HybridIndexEECsbNLsQi0JuJ4_5tgrep.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 600
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringbENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockNtNtCsbzNSmZPCnTx_10tgrep_core10visibility14PathVisibilityEECsbNLsQi0JuJ4_5tgrep.exit28.i unwind label %bb.k

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockNtNtCsbzNSmZPCnTx_10tgrep_core10visibility14PathVisibilityEECsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %bb.k, %.body.i
  %.pn.i = phi { ptr, i32 } [ %i.r, %bb.k ], [ %eh.lpad-body.i, %.body.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 640
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringuEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.q)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockINtNtNtNtBK_11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEEECsbNLsQi0JuJ4_5tgrep.exit.i unwind label %bb.ax

bb.k:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockNtNtCsbzNSmZPCnTx_10tgrep_core6hybrid11HybridIndexEECsbNLsQi0JuJ4_5tgrep.exit.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockNtNtCsbzNSmZPCnTx_10tgrep_core10visibility14PathVisibilityEECsbNLsQi0JuJ4_5tgrep.exit.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockNtNtCsbzNSmZPCnTx_10tgrep_core10visibility14PathVisibilityEECsbNLsQi0JuJ4_5tgrep.exit28.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockNtNtCsbzNSmZPCnTx_10tgrep_core6hybrid11HybridIndexEECsbNLsQi0JuJ4_5tgrep.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 640
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringuEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.s)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockINtNtNtNtBK_11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEEECsbNLsQi0JuJ4_5tgrep.exit29.i unwind label %bb.l

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockINtNtNtNtBK_11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEEECsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %bb.l, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockNtNtCsbzNSmZPCnTx_10tgrep_core10visibility14PathVisibilityEECsbNLsQi0JuJ4_5tgrep.exit.i
  %.pn2.i = phi { ptr, i32 } [ %i.u, %bb.l ], [ %.pn.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockNtNtCsbzNSmZPCnTx_10tgrep_core10visibility14PathVisibilityEECsbNLsQi0JuJ4_5tgrep.exit.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 688
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockNtNtCsbNLsQi0JuJ4_5tgrep5serve12ContentCacheEEB1w_(ptr noalias nofree noundef align 8 dereferenceable(104) %i.t) #29
          to label %.body30.i unwind label %bb.ax

bb.l:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockNtNtCsbzNSmZPCnTx_10tgrep_core10visibility14PathVisibilityEECsbNLsQi0JuJ4_5tgrep.exit28.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockINtNtNtNtBK_11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEEECsbNLsQi0JuJ4_5tgrep.exit.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockINtNtNtNtBK_11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEEECsbNLsQi0JuJ4_5tgrep.exit29.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockNtNtCsbzNSmZPCnTx_10tgrep_core10visibility14PathVisibilityEECsbNLsQi0JuJ4_5tgrep.exit28.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 704 ; 3 uses
  invoke void @_RNvXsa_CsgkkDPjMtGWv_3lruINtB5_8LruCacheNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtBG_4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1z_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.v)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellNtNtCsbNLsQi0JuJ4_5tgrep5serve12ContentCacheEEB14_.exit.i.i unwind label %bb.m

bb.m:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockINtNtNtNtBK_11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEEECsbNLsQi0JuJ4_5tgrep.exit29.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 736
  invoke void @_RINvMsa_NtCs9tUge3wv4pz_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTINtCsgkkDPjMtGWv_3lru6KeyRefNtNtCsgCecv3eZDcN_5alloc6string6StringEINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtB1g_8LruEntryB1F_INtNtB1J_4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEEENtNtNtNtCs288oJFe8OPC_14allocator_api26stable5alloc6global6GlobalEB3J_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.x, i64 noundef 16, i64 noundef 16)
          to label %.body30.i unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellNtNtCsbNLsQi0JuJ4_5tgrep5serve12ContentCacheEEB14_.exit.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockINtNtNtNtBK_11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEEECsbNLsQi0JuJ4_5tgrep.exit29.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 736
  invoke void @_RINvMsa_NtCs9tUge3wv4pz_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTINtCsgkkDPjMtGWv_3lru6KeyRefNtNtCsgCecv3eZDcN_5alloc6string6StringEINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtB1g_8LruEntryB1F_INtNtB1J_4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEEENtNtNtNtCs288oJFe8OPC_14allocator_api26stable5alloc6global6GlobalEB3J_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.z, i64 noundef 16, i64 noundef 16)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockNtNtCsbNLsQi0JuJ4_5tgrep5serve12ContentCacheEEB1w_.exit.i unwind label %bb.o

.body30.i:                                        ; preds = %bb.o, %bb.m, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockINtNtNtNtBK_11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEEECsbNLsQi0JuJ4_5tgrep.exit.i
  %.pn4.i = phi { ptr, i32 } [ %.pn2.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockINtNtNtNtBK_11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEEECsbNLsQi0JuJ4_5tgrep.exit.i ], [ %i.ab, %bb.o ], [ %i.w, %bb.m ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 800
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex5MutexNtNtCsbNLsQi0JuJ4_5tgrep5serve18RecentReindexCacheEEB1u_(ptr noalias nofree noundef align 8 dereferenceable(96) %i.aa) #29
          to label %.body32.i unwind label %bb.ax

bb.o:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellNtNtCsbNLsQi0JuJ4_5tgrep5serve12ContentCacheEEB14_.exit.i.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %.body30.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockNtNtCsbNLsQi0JuJ4_5tgrep5serve12ContentCacheEEB1w_.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellNtNtCsbNLsQi0JuJ4_5tgrep5serve12ContentCacheEEB14_.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 808 ; 3 uses
  invoke void @_RNvXsa_CsgkkDPjMtGWv_3lruINtB5_8LruCacheNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbNLsQi0JuJ4_5tgrep5serve13RecentReindexENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.ac)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellNtNtCsbNLsQi0JuJ4_5tgrep5serve18RecentReindexCacheEEB14_.exit.i.i unwind label %bb.p

bb.p:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockNtNtCsbNLsQi0JuJ4_5tgrep5serve12ContentCacheEEB1w_.exit.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 840
  invoke void @_RINvMsa_NtCs9tUge3wv4pz_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTINtCsgkkDPjMtGWv_3lru6KeyRefNtNtCsgCecv3eZDcN_5alloc6string6StringEINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtB1g_8LruEntryB1F_NtNtCsbNLsQi0JuJ4_5tgrep5serve13RecentReindexEEENtNtNtNtCs288oJFe8OPC_14allocator_api26stable5alloc6global6GlobalEB3r_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ae, i64 noundef 16, i64 noundef 16)
          to label %.body32.i unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellNtNtCsbNLsQi0JuJ4_5tgrep5serve18RecentReindexCacheEEB14_.exit.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockNtNtCsbNLsQi0JuJ4_5tgrep5serve12ContentCacheEEB1w_.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 840
  invoke void @_RINvMsa_NtCs9tUge3wv4pz_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTINtCsgkkDPjMtGWv_3lru6KeyRefNtNtCsgCecv3eZDcN_5alloc6string6StringEINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtB1g_8LruEntryB1F_NtNtCsbNLsQi0JuJ4_5tgrep5serve13RecentReindexEEENtNtNtNtCs288oJFe8OPC_14allocator_api26stable5alloc6global6GlobalEB3r_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ag, i64 noundef 16, i64 noundef 16)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex5MutexNtNtCsbNLsQi0JuJ4_5tgrep5serve18RecentReindexCacheEEB1u_.exit.i unwind label %bb.r

.body32.i:                                        ; preds = %bb.r, %bb.p, %.body30.i
  %.pn6.i = phi { ptr, i32 } [ %.pn4.i, %.body30.i ], [ %i.ai, %bb.r ], [ %i.ad, %bb.p ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ah) #29
          to label %.body34.i unwind label %bb.ax

bb.r:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellNtNtCsbNLsQi0JuJ4_5tgrep5serve18RecentReindexCacheEEB14_.exit.i.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body32.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex5MutexNtNtCsbNLsQi0JuJ4_5tgrep5serve18RecentReindexCacheEEB1u_.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellNtNtCsbNLsQi0JuJ4_5tgrep5serve18RecentReindexCacheEEB14_.exit.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsbNLsQi0JuJ4_5tgrep.exit.i.i unwind label %bb.s

bb.s:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex5MutexNtNtCsbNLsQi0JuJ4_5tgrep5serve18RecentReindexCacheEEB1u_.exit.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %.body34.i unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsbNLsQi0JuJ4_5tgrep.exit.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex5MutexNtNtCsbNLsQi0JuJ4_5tgrep5serve18RecentReindexCacheEEB1u_.exit.i
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbNLsQi0JuJ4_5tgrep.exit.i unwind label %bb.u

.body34.i:                                        ; preds = %bb.u, %bb.s, %.body32.i
  %.pn8.i = phi { ptr, i32 } [ %.pn6.i, %.body32.i ], [ %i.an, %bb.u ], [ %i.ak, %bb.s ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 936
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBK_4path7PathBufEEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(40) %i.am) #29
          to label %.body36.i unwind label %bb.ax

bb.u:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsbNLsQi0JuJ4_5tgrep.exit.i.i
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body34.i

end_hunk_0
begin_hunk_1_@llvm.memset.p0.i64
!1071 = distinct !{!1071, !1070, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtCsf3Ta7LF998c_4core4sync6atomic6AtomicbEENtNtNtBN_3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep: argument 0"}
!1072 = !{!1069}
!1073 = !{!1071}
!1074 = !{!1071, !1069}
!1075 = distinct !{!1075, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs30WoLBgco1_6ignore9overrides8OverrideEECsbNLsQi0JuJ4_5tgrep"}
!1076 = distinct !{!1076, !1075, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs30WoLBgco1_6ignore9overrides8OverrideEECsbNLsQi0JuJ4_5tgrep: argument 0"}
!1077 = distinct !{!1077, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs30WoLBgco1_6ignore9overrides8OverrideEECsbNLsQi0JuJ4_5tgrep"}
!1078 = distinct !{!1078, !1077, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs30WoLBgco1_6ignore9overrides8OverrideEECsbNLsQi0JuJ4_5tgrep: argument 0"}
!1079 = !{!1076}
!1080 = !{!1078}
!1081 = distinct !{!1081, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep"}
!1082 = distinct !{!1082, !1081, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep: argument 0"}
!1083 = !{!1082}
!1084 = distinct !{!1084, !"_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterNtNtCsgCecv3eZDcN_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldjNCINvNtNtB1s_8adapters3map12map_try_foldRBJ_jjINtNtBa_6option6OptionjENCNCINvNtBN_3str17join_generic_copyehBJ_Es_00NvMs9_NtBa_3numj11checked_addE0B2V_ECsbNLsQi0JuJ4_5tgrep"}
!1085 = distinct !{!1085, !1084, !"_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterNtNtCsgCecv3eZDcN_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldjNCINvNtNtB1s_8adapters3map12map_try_foldRBJ_jjINtNtBa_6option6OptionjENCNCINvNtBN_3str17join_generic_copyehBJ_Es_00NvMs9_NtBa_3numj11checked_addE0B2V_ECsbNLsQi0JuJ4_5tgrep: argument 0"}
!1086 = !{!1085}
!1087 = distinct !{!1087, !"_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldjNCINvNtNtBS_8adapters3map12map_try_foldRBJ_jjINtNtBa_6option6OptionjENCNCINvNtCsgCecv3eZDcN_5alloc3str17join_generic_copyehBJ_Es_00NvMs9_NtBa_3numj11checked_addE0B2k_ECsbNLsQi0JuJ4_5tgrep"}
!1088 = distinct !{!1088, !1087, !"_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldjNCINvNtNtBS_8adapters3map12map_try_foldRBJ_jjINtNtBa_6option6OptionjENCNCINvNtCsgCecv3eZDcN_5alloc3str17join_generic_copyehBJ_Es_00NvMs9_NtBa_3numj11checked_addE0B2k_ECsbNLsQi0JuJ4_5tgrep: argument 0"}
!1089 = !{!1088}
!1090 = distinct !{!1090, !"_RINvXNtNtCs6MoqnCnVQOT_10serde_json5value3serNtB5_5ValueNtNtCs4ZeZeX9PAiK_10serde_core3ser9Serialize9serializeNtB3_10SerializerECsbNLsQi0JuJ4_5tgrep"}
!1091 = distinct !{!1091, !1090, !"_RINvXNtNtCs6MoqnCnVQOT_10serde_json5value3serNtB5_5ValueNtNtCs4ZeZeX9PAiK_10serde_core3ser9Serialize9serializeNtB3_10SerializerECsbNLsQi0JuJ4_5tgrep: argument 0"}
!1092 = distinct !{!1092, !1090, !"_RINvXNtNtCs6MoqnCnVQOT_10serde_json5value3serNtB5_5ValueNtNtCs4ZeZeX9PAiK_10serde_core3ser9Serialize9serializeNtB3_10SerializerECsbNLsQi0JuJ4_5tgrep: argument 1"}
!1093 = distinct !{!1093, !"_RNvXs_NtNtCs6MoqnCnVQOT_10serde_json5value3serNtB4_10SerializerNtNtCs4ZeZeX9PAiK_10serde_core3ser10Serializer14serialize_unit"}
!1094 = distinct !{!1094, !1093, !"_RNvXs_NtNtCs6MoqnCnVQOT_10serde_json5value3serNtB4_10SerializerNtNtCs4ZeZeX9PAiK_10serde_core3ser10Serializer14serialize_unit: argument 0"}
!1095 = distinct !{!1095, !"_RNvXs_NtNtCs6MoqnCnVQOT_10serde_json5value3serNtB4_10SerializerNtNtCs4ZeZeX9PAiK_10serde_core3ser10Serializer14serialize_bool"}
!1096 = distinct !{!1096, !1095, !"_RNvXs_NtNtCs6MoqnCnVQOT_10serde_json5value3serNtB4_10SerializerNtNtCs4ZeZeX9PAiK_10serde_core3ser10Serializer14serialize_bool: argument 0"}
!1097 = distinct !{!1097, !"_RINvXs4_NtCs6MoqnCnVQOT_10serde_json6numberNtB6_6NumberNtNtCs4ZeZeX9PAiK_10serde_core3ser9Serialize9serializeNtNtNtB8_5value3ser10SerializerECsbNLsQi0JuJ4_5tgrep"}
!1098 = distinct !{!1098, !1097, !"_RINvXs4_NtCs6MoqnCnVQOT_10serde_json6numberNtB6_6NumberNtNtCs4ZeZeX9PAiK_10serde_core3ser9Serialize9serializeNtNtNtB8_5value3ser10SerializerECsbNLsQi0JuJ4_5tgrep: argument 0"}
!1099 = distinct !{!1099, !1097, !"_RINvXs4_NtCs6MoqnCnVQOT_10serde_json6numberNtB6_6NumberNtNtCs4ZeZeX9PAiK_10serde_core3ser9Serialize9serializeNtNtNtB8_5value3ser10SerializerECsbNLsQi0JuJ4_5tgrep: argument 1"}
!1100 = distinct !{!1100, !"_RNvXs_NtNtCs6MoqnCnVQOT_10serde_json5value3serNtB4_10SerializerNtNtCs4ZeZeX9PAiK_10serde_core3ser10Serializer13serialize_u64"}
!1101 = distinct !{!1101, !1100, !"_RNvXs_NtNtCs6MoqnCnVQOT_10serde_json5value3serNtB4_10SerializerNtNtCs4ZeZeX9PAiK_10serde_core3ser10Serializer13serialize_u64: argument 0"}
!1102 = distinct !{!1102, !"_RNvXs_NtNtCs6MoqnCnVQOT_10serde_json5value3serNtB4_10SerializerNtNtCs4ZeZeX9PAiK_10serde_core3ser10Serializer13serialize_i64"}
!1103 = distinct !{!1103, !1102, !"_RNvXs_NtNtCs6MoqnCnVQOT_10serde_json5value3serNtB4_10SerializerNtNtCs4ZeZeX9PAiK_10serde_core3ser10Serializer13serialize_i64: argument 0"}
!1104 = distinct !{!1104, !"_RNvXs_NtNtCs6MoqnCnVQOT_10serde_json5value3serNtB4_10SerializerNtNtCs4ZeZeX9PAiK_10serde_core3ser10Serializer13serialize_str"}
!1105 = distinct !{!1105, !1104, !"_RNvXs_NtNtCs6MoqnCnVQOT_10serde_json5value3serNtB4_10SerializerNtNtCs4ZeZeX9PAiK_10serde_core3ser10Serializer13serialize_str: argument 0"}
!1106 = distinct !{!1106, !1104, !"_RNvXs_NtNtCs6MoqnCnVQOT_10serde_json5value3serNtB4_10SerializerNtNtCs4ZeZeX9PAiK_10serde_core3ser10Serializer13serialize_str: argument 1"}
!1107 = distinct !{!1107, !"_RINvXs_NvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsbNLsQi0JuJ4_5tgrep"}
!1108 = distinct !{!1108, !1107, !"_RINvXs_NvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsbNLsQi0JuJ4_5tgrep: argument 1"}
!1109 = distinct !{!1109, !1107, !"_RINvXs_NvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsbNLsQi0JuJ4_5tgrep: argument 0"}
!1110 = distinct !{null}
!1111 = distinct !{!1111, !"_RINvYNtNtNtCs6MoqnCnVQOT_10serde_json5value3ser12SerializeMapNtNtCs4ZeZeX9PAiK_10serde_core3ser12SerializeMap15serialize_entryNtNtCsgCecv3eZDcN_5alloc6string6StringNtB7_5ValueECsbNLsQi0JuJ4_5tgrep"}
!1112 = distinct !{!1112, !1111, !"_RINvYNtNtNtCs6MoqnCnVQOT_10serde_json5value3ser12SerializeMapNtNtCs4ZeZeX9PAiK_10serde_core3ser12SerializeMap15serialize_entryNtNtCsgCecv3eZDcN_5alloc6string6StringNtB7_5ValueECsbNLsQi0JuJ4_5tgrep: argument 0"}
!1113 = distinct !{!1113, !1111, !"_RINvYNtNtNtCs6MoqnCnVQOT_10serde_json5value3ser12SerializeMapNtNtCs4ZeZeX9PAiK_10serde_core3ser12SerializeMap15serialize_entryNtNtCsgCecv3eZDcN_5alloc6string6StringNtB7_5ValueECsbNLsQi0JuJ4_5tgrep: argument 1"}
!1114 = distinct !{!1114, !1111, !"_RINvYNtNtNtCs6MoqnCnVQOT_10serde_json5value3ser12SerializeMapNtNtCs4ZeZeX9PAiK_10serde_core3ser12SerializeMap15serialize_entryNtNtCsgCecv3eZDcN_5alloc6string6StringNtB7_5ValueECsbNLsQi0JuJ4_5tgrep: argument 2"}
!1115 = distinct !{!1115, !"_RINvXs4_NtNtCs6MoqnCnVQOT_10serde_json5value3serNtB6_12SerializeMapNtNtCs4ZeZeX9PAiK_10serde_core3ser12SerializeMap13serialize_keyNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep"}
!1116 = distinct !{!1116, !1115, !"_RINvXs4_NtNtCs6MoqnCnVQOT_10serde_json5value3serNtB6_12SerializeMapNtNtCs4ZeZeX9PAiK_10serde_core3ser12SerializeMap13serialize_keyNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep: argument 0"}
!1117 = distinct !{!1117, !"_RINvXs_NtNtCs4ZeZeX9PAiK_10serde_core3ser5implsNtNtCsgCecv3eZDcN_5alloc6string6StringNtB7_9Serialize9serializeNtNtNtCs6MoqnCnVQOT_10serde_json5value3ser16MapKeySerializerECsbNLsQi0JuJ4_5tgrep"}
!1118 = distinct !{!1118, !1117, !"_RINvXs_NtNtCs4ZeZeX9PAiK_10serde_core3ser5implsNtNtCsgCecv3eZDcN_5alloc6string6StringNtB7_9Serialize9serializeNtNtNtCs6MoqnCnVQOT_10serde_json5value3ser16MapKeySerializerECsbNLsQi0JuJ4_5tgrep: argument 0"}
!1119 = distinct !{!1119, !"_RNvXs5_NtNtCs6MoqnCnVQOT_10serde_json5value3serNtB5_16MapKeySerializerNtNtCs4ZeZeX9PAiK_10serde_core3ser10Serializer13serialize_str"}
!1120 = distinct !{!1120, !1119, !"_RNvXs5_NtNtCs6MoqnCnVQOT_10serde_json5value3serNtB5_16MapKeySerializerNtNtCs4ZeZeX9PAiK_10serde_core3ser10Serializer13serialize_str: argument 1"}
!1121 = distinct !{!1121, !1119, !"_RNvXs5_NtNtCs6MoqnCnVQOT_10serde_json5value3serNtB5_16MapKeySerializerNtNtCs4ZeZeX9PAiK_10serde_core3ser10Serializer13serialize_str: argument 0"}
!1122 = distinct !{!1122, !"_RINvXs_NvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsbNLsQi0JuJ4_5tgrep"}
!1123 = distinct !{!1123, !1122, !"_RINvXs_NvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsbNLsQi0JuJ4_5tgrep: argument 1"}
!1124 = distinct !{!1124, !1122, !"_RINvXs_NvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsbNLsQi0JuJ4_5tgrep: argument 0"}
!1125 = distinct !{null, null}
!1126 = distinct !{!1126, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep"}
!1127 = distinct !{!1127, !1126, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep: argument 0"}
!1128 = distinct !{!1128, !"_RINvXs4_NtNtCs6MoqnCnVQOT_10serde_json5value3serNtB6_12SerializeMapNtNtCs4ZeZeX9PAiK_10serde_core3ser12SerializeMap15serialize_valueNtB8_5ValueECsbNLsQi0JuJ4_5tgrep"}
!1129 = distinct !{!1129, !1128, !"_RINvXs4_NtNtCs6MoqnCnVQOT_10serde_json5value3serNtB6_12SerializeMapNtNtCs4ZeZeX9PAiK_10serde_core3ser12SerializeMap15serialize_valueNtB8_5ValueECsbNLsQi0JuJ4_5tgrep: argument 0"}
!1130 = distinct !{!1130, !1128, !"_RINvXs4_NtNtCs6MoqnCnVQOT_10serde_json5value3serNtB6_12SerializeMapNtNtCs4ZeZeX9PAiK_10serde_core3ser12SerializeMap15serialize_valueNtB8_5ValueECsbNLsQi0JuJ4_5tgrep: argument 1"}
!1131 = distinct !{!1131, !"_RINvNtCs6MoqnCnVQOT_10serde_json5value8to_valueRNtB2_5ValueECsbNLsQi0JuJ4_5tgrep"}
!1132 = distinct !{!1132, !1131, !"_RINvNtCs6MoqnCnVQOT_10serde_json5value8to_valueRNtB2_5ValueECsbNLsQi0JuJ4_5tgrep: argument 1"}
!1133 = distinct !{!1133, !1131, !"_RINvNtCs6MoqnCnVQOT_10serde_json5value8to_valueRNtB2_5ValueECsbNLsQi0JuJ4_5tgrep: argument 0"}
!1134 = distinct !{ptr @_RINvNtCs6MoqnCnVQOT_10serde_json5value8to_valueRNtB2_5ValueECsbNLsQi0JuJ4_5tgrep, null, null, null}
!1135 = distinct !{null, null, null}
!1136 = distinct !{!1136, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep"}
!1137 = distinct !{!1137, !1136, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep: argument 0"}
!1138 = distinct !{!1138, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6MoqnCnVQOT_10serde_json5value3ser12SerializeMapECsbNLsQi0JuJ4_5tgrep"}
!1139 = distinct !{!1139, !1138, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6MoqnCnVQOT_10serde_json5value3ser12SerializeMapECsbNLsQi0JuJ4_5tgrep: argument 0"}
!1140 = distinct !{!1140, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep"}
!1141 = distinct !{!1141, !1140, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep: argument 0"}
!1142 = !{!1091}
!1143 = !{!1092}
!1144 = !{!1094, !1091}
!1145 = !{!1096, !1091}
!1146 = !{!1098}
!1147 = !{!1099}
!1148 = !{i64 0, i64 3}
!1149 = !{!1101, !1098}
!1150 = !{!1103, !1098}
!1151 = !{!1105}
!1152 = !{!1109, !1108, !1105, !1106, !1092}
!1153 = !{!1109, !1105, !1092}
!1154 = !{!1106, !1092}
!1155 = !{!1091, !1092}
!1156 = !{!1112}
!1157 = !{!1113}
!1158 = !{!1112, !1114, !1091, !1092}
!1159 = !{!1116}
!1160 = !{!1124, !1123, !1121, !1120, !1118, !1116, !1112, !1113, !1114, !1091, !1092}
!1161 = !{!1124, !1121, !1118, !1116, !1112, !1113, !1114, !1091, !1092}
!1162 = !{!1127, !1116, !1112}
!1163 = !{!1113, !1114, !1091, !1092}
!1164 = !{!1116, !1112}
!1165 = !{!1129}
!1166 = !{!1112, !1113, !1114, !1091, !1092}
!1167 = !{!1129, !1130, !1112, !1113, !1114, !1091, !1092}
!1168 = !{!1130, !1113, !1114, !1091, !1092}
!1169 = !{!1129, !1112}
!1170 = !{!1133, !1132, !1129, !1113, !1091, !1092}
!1171 = !{!1129, !1113, !1091, !1092}
!1172 = !{!1137}
!1173 = !{!1141, !1139}
!1174 = distinct !{!1174, !"_RINvXs6_NtCs6MoqnCnVQOT_10serde_json6numberNtB6_6NumberNtNtCs4ZeZeX9PAiK_10serde_core2de12Deserializer15deserialize_anyNtNvXs17_NtBT_5implsyNtBT_11Deserialize11deserialize16PrimitiveVisitorECsbNLsQi0JuJ4_5tgrep"}
!1175 = distinct !{!1175, !1174, !"_RINvXs6_NtCs6MoqnCnVQOT_10serde_json6numberNtB6_6NumberNtNtCs4ZeZeX9PAiK_10serde_core2de12Deserializer15deserialize_anyNtNvXs17_NtBT_5implsyNtBT_11Deserialize11deserialize16PrimitiveVisitorECsbNLsQi0JuJ4_5tgrep: argument 0"}
!1176 = !{!1175}
!1177 = distinct !{!1177, !"_RINvXs6_NtCs6MoqnCnVQOT_10serde_json6numberNtB6_6NumberNtNtCs4ZeZeX9PAiK_10serde_core2de12Deserializer15deserialize_anyNtNvXs1a_NtBT_5implsjNtBT_11Deserialize11deserialize16PrimitiveVisitorECsbNLsQi0JuJ4_5tgrep"}
!1178 = distinct !{!1178, !1177, !"_RINvXs6_NtCs6MoqnCnVQOT_10serde_json6numberNtB6_6NumberNtNtCs4ZeZeX9PAiK_10serde_core2de12Deserializer15deserialize_anyNtNvXs1a_NtBT_5implsjNtBT_11Deserialize11deserialize16PrimitiveVisitorECsbNLsQi0JuJ4_5tgrep: argument 0"}
!1179 = !{!1178}
!1180 = distinct !{!1180, !"_RINvXs0_NtNtCs4ZeZeX9PAiK_10serde_core2de5implsNtB6_11BoolVisitorNtB8_7Visitor10visit_boolNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbNLsQi0JuJ4_5tgrep"}
!1181 = distinct !{!1181, !1180, !"_RINvXs0_NtNtCs4ZeZeX9PAiK_10serde_core2de5implsNtB6_11BoolVisitorNtB8_7Visitor10visit_boolNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbNLsQi0JuJ4_5tgrep: argument 0"}
!1182 = !{!1181}
!1183 = distinct !{!1183, !"_RINvXNtNtCs4ZeZeX9PAiK_10serde_core3ser5implseNtB5_9Serialize9serializeNtNtNtCs6MoqnCnVQOT_10serde_json5value3ser16MapKeySerializerECsbNLsQi0JuJ4_5tgrep"}
!1184 = distinct !{!1184, !1183, !"_RINvXNtNtCs4ZeZeX9PAiK_10serde_core3ser5implseNtB5_9Serialize9serializeNtNtNtCs6MoqnCnVQOT_10serde_json5value3ser16MapKeySerializerECsbNLsQi0JuJ4_5tgrep: argument 1"}
!1185 = distinct !{!1185, !1183, !"_RINvXNtNtCs4ZeZeX9PAiK_10serde_core3ser5implseNtB5_9Serialize9serializeNtNtNtCs6MoqnCnVQOT_10serde_json5value3ser16MapKeySerializerECsbNLsQi0JuJ4_5tgrep: argument 0"}
!1186 = distinct !{!1186, !"_RNvXs5_NtNtCs6MoqnCnVQOT_10serde_json5value3serNtB5_16MapKeySerializerNtNtCs4ZeZeX9PAiK_10serde_core3ser10Serializer13serialize_str"}
!1187 = distinct !{!1187, !1186, !"_RNvXs5_NtNtCs6MoqnCnVQOT_10serde_json5value3serNtB5_16MapKeySerializerNtNtCs4ZeZeX9PAiK_10serde_core3ser10Serializer13serialize_str: argument 1"}
!1188 = distinct !{!1188, !1186, !"_RNvXs5_NtNtCs6MoqnCnVQOT_10serde_json5value3serNtB5_16MapKeySerializerNtNtCs4ZeZeX9PAiK_10serde_core3ser10Serializer13serialize_str: argument 0"}
!1189 = distinct !{!1189, !"_RINvXs_NvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsbNLsQi0JuJ4_5tgrep"}
!1190 = distinct !{!1190, !1189, !"_RINvXs_NvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsbNLsQi0JuJ4_5tgrep: argument 1"}
!1191 = distinct !{!1191, !1189, !"_RINvXs_NvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsbNLsQi0JuJ4_5tgrep: argument 0"}
!1192 = distinct !{!1192, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep"}
!1193 = distinct !{!1193, !1192, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep: argument 0"}
!1194 = !{!1191, !1190, !1188, !1187, !1185, !1184}
!1195 = !{!1191, !1188, !1185}
!1196 = !{!1193}
!1197 = distinct !{!1197, !"_RINvYNtNtNtCs6MoqnCnVQOT_10serde_json5value3ser12SerializeMapNtNtCs4ZeZeX9PAiK_10serde_core3ser12SerializeMap15serialize_entryeNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep"}
!1198 = distinct !{!1198, !1197, !"_RINvYNtNtNtCs6MoqnCnVQOT_10serde_json5value3ser12SerializeMapNtNtCs4ZeZeX9PAiK_10serde_core3ser12SerializeMap15serialize_entryeNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep: argument 0"}
!1199 = distinct !{!1199, !"_RINvXs4_NtNtCs6MoqnCnVQOT_10serde_json5value3serNtB6_12SerializeMapNtNtCs4ZeZeX9PAiK_10serde_core3ser12SerializeMap15serialize_valueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep"}
!1200 = distinct !{!1200, !1199, !"_RINvXs4_NtNtCs6MoqnCnVQOT_10serde_json5value3serNtB6_12SerializeMapNtNtCs4ZeZeX9PAiK_10serde_core3ser12SerializeMap15serialize_valueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep: argument 0"}
!1201 = distinct !{!1201, !1197, !"_RINvYNtNtNtCs6MoqnCnVQOT_10serde_json5value3ser12SerializeMapNtNtCs4ZeZeX9PAiK_10serde_core3ser12SerializeMap15serialize_entryeNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep: argument 1"}
!1202 = distinct !{!1202, !"_RINvNtCs6MoqnCnVQOT_10serde_json5value8to_valueRNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep"}
!1203 = distinct !{!1203, !1202, !"_RINvNtCs6MoqnCnVQOT_10serde_json5value8to_valueRNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep: argument 1"}
!1204 = distinct !{!1204, !1202, !"_RINvNtCs6MoqnCnVQOT_10serde_json5value8to_valueRNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep: argument 0"}
!1205 = distinct !{!1205, !"_RINvXs1H_NtNtCs4ZeZeX9PAiK_10serde_core3ser5implsRNtNtCsgCecv3eZDcN_5alloc6string6StringNtB9_9Serialize9serializeNtNtNtCs6MoqnCnVQOT_10serde_json5value3ser10SerializerECsbNLsQi0JuJ4_5tgrep"}
!1206 = distinct !{!1206, !1205, !"_RINvXs1H_NtNtCs4ZeZeX9PAiK_10serde_core3ser5implsRNtNtCsgCecv3eZDcN_5alloc6string6StringNtB9_9Serialize9serializeNtNtNtCs6MoqnCnVQOT_10serde_json5value3ser10SerializerECsbNLsQi0JuJ4_5tgrep: argument 0"}
!1207 = distinct !{!1207, !"_RINvXs_NtNtCs4ZeZeX9PAiK_10serde_core3ser5implsNtNtCsgCecv3eZDcN_5alloc6string6StringNtB7_9Serialize9serializeNtNtNtCs6MoqnCnVQOT_10serde_json5value3ser10SerializerECsbNLsQi0JuJ4_5tgrep"}
!1208 = distinct !{!1208, !1207, !"_RINvXs_NtNtCs4ZeZeX9PAiK_10serde_core3ser5implsNtNtCsgCecv3eZDcN_5alloc6string6StringNtB7_9Serialize9serializeNtNtNtCs6MoqnCnVQOT_10serde_json5value3ser10SerializerECsbNLsQi0JuJ4_5tgrep: argument 0"}
!1209 = distinct !{!1209, !"_RNvXs_NtNtCs6MoqnCnVQOT_10serde_json5value3serNtB4_10SerializerNtNtCs4ZeZeX9PAiK_10serde_core3ser10Serializer13serialize_str"}
!1210 = distinct !{!1210, !1209, !"_RNvXs_NtNtCs6MoqnCnVQOT_10serde_json5value3serNtB4_10SerializerNtNtCs4ZeZeX9PAiK_10serde_core3ser10Serializer13serialize_str: argument 1"}
!1211 = distinct !{!1211, !1209, !"_RNvXs_NtNtCs6MoqnCnVQOT_10serde_json5value3serNtB4_10SerializerNtNtCs4ZeZeX9PAiK_10serde_core3ser10Serializer13serialize_str: argument 0"}
!1212 = distinct !{!1212, !"_RINvXs_NvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsbNLsQi0JuJ4_5tgrep"}
!1213 = distinct !{!1213, !1212, !"_RINvXs_NvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsbNLsQi0JuJ4_5tgrep: argument 1"}
!1214 = distinct !{!1214, !1212, !"_RINvXs_NvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECsbNLsQi0JuJ4_5tgrep: argument 0"}
!1215 = distinct !{!1215, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep"}
!1216 = distinct !{!1216, !1215, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep: argument 0"}
!1217 = !{!1198}
!1218 = !{!1200}
!1219 = !{!1198, !1201}
!1220 = !{!1200, !1198}
!1221 = !{!1201}
!1222 = !{!1200, !1198, !1201}
!1223 = !{!1214, !1213, !1211, !1210, !1208, !1206, !1204, !1203, !1200, !1198, !1201}
!1224 = !{!1200, !1201}
!1225 = !{!1214, !1211, !1208, !1206, !1204, !1203, !1200, !1201}
!1226 = !{!1216}
!1227 = distinct !{!1227, !"_RINvYNtNtNtCs6MoqnCnVQOT_10serde_json5value3ser12SerializeMapNtNtCs4ZeZeX9PAiK_10serde_core3ser12SerializeMap15serialize_entryeyECsbNLsQi0JuJ4_5tgrep"}
!1228 = distinct !{!1228, !1227, !"_RINvYNtNtNtCs6MoqnCnVQOT_10serde_json5value3ser12SerializeMapNtNtCs4ZeZeX9PAiK_10serde_core3ser12SerializeMap15serialize_entryeyECsbNLsQi0JuJ4_5tgrep: argument 0"}
!1229 = distinct !{!1229, !"_RINvXs4_NtNtCs6MoqnCnVQOT_10serde_json5value3serNtB6_12SerializeMapNtNtCs4ZeZeX9PAiK_10serde_core3ser12SerializeMap15serialize_valueyECsbNLsQi0JuJ4_5tgrep"}
!1230 = distinct !{!1230, !1229, !"_RINvXs4_NtNtCs6MoqnCnVQOT_10serde_json5value3serNtB6_12SerializeMapNtNtCs4ZeZeX9PAiK_10serde_core3ser12SerializeMap15serialize_valueyECsbNLsQi0JuJ4_5tgrep: argument 0"}
!1231 = distinct !{!1231, !1227, !"_RINvYNtNtNtCs6MoqnCnVQOT_10serde_json5value3ser12SerializeMapNtNtCs4ZeZeX9PAiK_10serde_core3ser12SerializeMap15serialize_entryeyECsbNLsQi0JuJ4_5tgrep: argument 1"}
!1232 = distinct !{!1232, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep"}
!1233 = distinct !{!1233, !1232, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep: argument 0"}
!1234 = !{!1228}
!1235 = !{!1230}
!1236 = !{!1228, !1231}
!1237 = !{!1230, !1228}
!1238 = !{!1231}
!1239 = !{!1230, !1231}
!1240 = !{!1230, !1228, !1231}
!1241 = !{!1233}
!1242 = distinct !{!1242, !"_RNCINvYNtNtNtCs6MoqnCnVQOT_10serde_json5value3ser10SerializerNtNtCs4ZeZeX9PAiK_10serde_core3ser10Serializer11collect_seqRINtNtCsgCecv3eZDcN_5alloc3vec3VecNtB9_5ValueEE0CsbNLsQi0JuJ4_5tgrep"}
!1243 = distinct !{!1243, !1242, !"_RNCINvYNtNtNtCs6MoqnCnVQOT_10serde_json5value3ser10SerializerNtNtCs4ZeZeX9PAiK_10serde_core3ser10Serializer11collect_seqRINtNtCsgCecv3eZDcN_5alloc3vec3VecNtB9_5ValueEE0CsbNLsQi0JuJ4_5tgrep: argument 1"}
!1244 = distinct !{!1244, !1242, !"_RNCINvYNtNtNtCs6MoqnCnVQOT_10serde_json5value3ser10SerializerNtNtCs4ZeZeX9PAiK_10serde_core3ser10Serializer11collect_seqRINtNtCsgCecv3eZDcN_5alloc3vec3VecNtB9_5ValueEE0CsbNLsQi0JuJ4_5tgrep: argument 0"}
!1245 = distinct !{!1245, !"_RINvXs0_NtNtCs6MoqnCnVQOT_10serde_json5value3serNtB6_12SerializeVecNtNtCs4ZeZeX9PAiK_10serde_core3ser12SerializeSeq17serialize_elementRNtB8_5ValueECsbNLsQi0JuJ4_5tgrep"}
!1246 = distinct !{!1246, !1245, !"_RINvXs0_NtNtCs6MoqnCnVQOT_10serde_json5value3serNtB6_12SerializeVecNtNtCs4ZeZeX9PAiK_10serde_core3ser12SerializeSeq17serialize_elementRNtB8_5ValueECsbNLsQi0JuJ4_5tgrep: argument 1"}
!1247 = distinct !{!1247, !1245, !"_RINvXs0_NtNtCs6MoqnCnVQOT_10serde_json5value3serNtB6_12SerializeVecNtNtCs4ZeZeX9PAiK_10serde_core3ser12SerializeSeq17serialize_elementRNtB8_5ValueECsbNLsQi0JuJ4_5tgrep: argument 0"}
!1248 = distinct !{null, null, null}
!1249 = distinct !{!1249, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs6MoqnCnVQOT_10serde_json5value5ValueE8push_mutCsbNLsQi0JuJ4_5tgrep"}
!1250 = distinct !{!1250, !1249, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs6MoqnCnVQOT_10serde_json5value5ValueE8push_mutCsbNLsQi0JuJ4_5tgrep: argument 0"}
!1251 = distinct !{!1251, !1249, !"_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs6MoqnCnVQOT_10serde_json5value5ValueE8push_mutCsbNLsQi0JuJ4_5tgrep: argument 1"}
!1252 = distinct !{!1252, !"_RNvXs0_NtNtCs6MoqnCnVQOT_10serde_json5value3serNtB5_12SerializeVecNtNtCs4ZeZeX9PAiK_10serde_core3ser12SerializeSeq3end"}
!1253 = distinct !{!1253, !1252, !"_RNvXs0_NtNtCs6MoqnCnVQOT_10serde_json5value3serNtB5_12SerializeVecNtNtCs4ZeZeX9PAiK_10serde_core3ser12SerializeSeq3end: argument 0"}
!1254 = distinct !{!1254, !1252, !"_RNvXs0_NtNtCs6MoqnCnVQOT_10serde_json5value3serNtB5_12SerializeVecNtNtCs4ZeZeX9PAiK_10serde_core3ser12SerializeSeq3end: argument 1"}
!1255 = !{!1244, !1243}
!1256 = !{!1247, !1246, !1244, !1243}
!1257 = !{!1250}
!1258 = !{!1251, !1244}
!1259 = !{!1244}
!1260 = !{!1253}
!1261 = !{!1254}
!1262 = distinct !{!1262, !"_RNvMse_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker5ImmutNtNtBb_6string6StringNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtB19_14LeafOrInternalE6ascendCsbNLsQi0JuJ4_5tgrep"}
!1263 = distinct !{!1263, !1262, !"_RNvMse_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker5ImmutNtNtBb_6string6StringNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtB19_14LeafOrInternalE6ascendCsbNLsQi0JuJ4_5tgrep: argument 0"}
!1264 = !{!1263}
!1265 = distinct !{!1265, !"_RNvMse_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker5ImmutNtNtBb_6string6StringbNtB19_14LeafOrInternalE6ascendCsbNLsQi0JuJ4_5tgrep"}
!1266 = distinct !{!1266, !1265, !"_RNvMse_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker5ImmutNtNtBb_6string6StringbNtB19_14LeafOrInternalE6ascendCsbNLsQi0JuJ4_5tgrep: argument 0"}
!1267 = !{!1266}
!1268 = distinct !{!1268, !"_RNvMse_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker5ImmutjNtNtB7_7set_val9SetValZSTNtB19_14LeafOrInternalE6ascendCsbNLsQi0JuJ4_5tgrep"}
!1269 = distinct !{!1269, !1268, !"_RNvMse_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker5ImmutjNtNtB7_7set_val9SetValZSTNtB19_14LeafOrInternalE6ascendCsbNLsQi0JuJ4_5tgrep: argument 0"}
!1270 = !{!1269}
!1271 = distinct !{!1271, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockNtNtCsbzNSmZPCnTx_10tgrep_core6hybrid11HybridIndexEECsbNLsQi0JuJ4_5tgrep"}
!1272 = distinct !{!1272, !1271, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockNtNtCsbzNSmZPCnTx_10tgrep_core6hybrid11HybridIndexEECsbNLsQi0JuJ4_5tgrep: argument 0"}
!1273 = distinct !{!1273, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellNtNtCsbzNSmZPCnTx_10tgrep_core6hybrid11HybridIndexEECsbNLsQi0JuJ4_5tgrep"}
!1274 = distinct !{!1274, !1273, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellNtNtCsbzNSmZPCnTx_10tgrep_core6hybrid11HybridIndexEECsbNLsQi0JuJ4_5tgrep: argument 0"}
!1275 = distinct !{!1275, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core6hybrid11HybridIndexECsbNLsQi0JuJ4_5tgrep"}
!1276 = distinct !{!1276, !1275, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core6hybrid11HybridIndexECsbNLsQi0JuJ4_5tgrep: argument 0"}
!1277 = distinct !{!1277, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbzNSmZPCnTx_10tgrep_core6reader11IndexReaderEEECsbNLsQi0JuJ4_5tgrep"}
!1278 = distinct !{!1278, !1277, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbzNSmZPCnTx_10tgrep_core6reader11IndexReaderEEECsbNLsQi0JuJ4_5tgrep: argument 0"}
!1279 = distinct !{!1279, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbzNSmZPCnTx_10tgrep_core6reader11IndexReaderEEECsbNLsQi0JuJ4_5tgrep"}
!1280 = distinct !{!1280, !1279, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbzNSmZPCnTx_10tgrep_core6reader11IndexReaderEEECsbNLsQi0JuJ4_5tgrep: argument 0"}
!1281 = distinct !{!1281, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbzNSmZPCnTx_10tgrep_core6reader11IndexReaderEECsbNLsQi0JuJ4_5tgrep"}
!1282 = distinct !{!1282, !1281, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbzNSmZPCnTx_10tgrep_core6reader11IndexReaderEECsbNLsQi0JuJ4_5tgrep: argument 0"}
!1283 = distinct !{!1283, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsbzNSmZPCnTx_10tgrep_core6reader11IndexReaderENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep"}
!1284 = distinct !{!1284, !1283, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsbzNSmZPCnTx_10tgrep_core6reader11IndexReaderENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep: argument 0"}
!1285 = distinct !{!1285, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbNLsQi0JuJ4_5tgrep5serve11ServerStateEBF_"}
!1286 = distinct !{!1286, !1285, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbNLsQi0JuJ4_5tgrep5serve11ServerStateEBF_: argument 0"}
!1287 = distinct !{!1287, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtNtNtBK_11collections4hash3map7HashMapNtNtBK_4path7PathBufbEEEECsbNLsQi0JuJ4_5tgrep"}
!1288 = distinct !{!1288, !1287, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtNtNtBK_11collections4hash3map7HashMapNtNtBK_4path7PathBufbEEEECsbNLsQi0JuJ4_5tgrep: argument 0"}
!1289 = distinct !{!1289, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtB1v_4path7PathBufbEEEECsbNLsQi0JuJ4_5tgrep"}
!1290 = distinct !{!1290, !1289, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtB1v_4path7PathBufbEEEECsbNLsQi0JuJ4_5tgrep: argument 0"}
!1291 = distinct !{!1291, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtB16_4path7PathBufbEEECsbNLsQi0JuJ4_5tgrep"}
!1292 = distinct !{!1292, !1291, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtB16_4path7PathBufbEEECsbNLsQi0JuJ4_5tgrep: argument 0"}
!1293 = distinct !{!1293, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtNtNtBK_11collections4hash3map7HashMapNtNtBK_4path7PathBufbEEEECsbNLsQi0JuJ4_5tgrep"}
!1294 = distinct !{!1294, !1293, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtNtNtBK_11collections4hash3map7HashMapNtNtBK_4path7PathBufbEEEECsbNLsQi0JuJ4_5tgrep: argument 0"}
!1295 = distinct !{!1295, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtB1v_4path7PathBufbEEEECsbNLsQi0JuJ4_5tgrep"}
!1296 = distinct !{!1296, !1295, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtB1v_4path7PathBufbEEEECsbNLsQi0JuJ4_5tgrep: argument 0"}
!1297 = distinct !{!1297, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtB16_4path7PathBufbEEECsbNLsQi0JuJ4_5tgrep"}
!1298 = distinct !{!1298, !1297, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtB16_4path7PathBufbEEECsbNLsQi0JuJ4_5tgrep: argument 0"}
!1299 = distinct !{!1299, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbNLsQi0JuJ4_5tgrep5serve14RefreshControlEBF_"}
!1300 = distinct !{!1300, !1299, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbNLsQi0JuJ4_5tgrep5serve14RefreshControlEBF_: argument 0"}
!1301 = distinct !{!1301, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEECsbNLsQi0JuJ4_5tgrep"}
!1302 = distinct !{!1302, !1301, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEECsbNLsQi0JuJ4_5tgrep: argument 0"}
!1303 = distinct !{!1303, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtCsf3Ta7LF998c_4core4sync6atomic6AtomicbEENtNtNtBN_3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep"}
!1304 = distinct !{!1304, !1303, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtCsf3Ta7LF998c_4core4sync6atomic6AtomicbEENtNtNtBN_3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep: argument 0"}
!1305 = !{!1272}
!1306 = !{!1274}
!1307 = !{!1276}
!1308 = !{!1278}
!1309 = !{!1280}
!1310 = !{!1282}
!1311 = !{!1284}
!1312 = !{!1284, !1282, !1280, !1278, !1276, !1274, !1272, !1286}
!1313 = !{!1284, !1282, !1280, !1278, !1276, !1274, !1272}
!1314 = !{!1292, !1290, !1288, !1286}
!1315 = !{!1298, !1296, !1294, !1286}
!1316 = !{!1300}
!1317 = !{!1302}
!1318 = !{!1304}
!1319 = !{!1304, !1302, !1300, !1286}
!1320 = !{!1304, !1302, !1300}
!1321 = distinct !{!1321, !9}
!1322 = distinct !{!1322, !9}
!1323 = distinct !{!1323, !9}
!1324 = distinct !{!1324, !"_RINvXNvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inNtNtB8_6string6StringNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsbNLsQi0JuJ4_5tgrep"}
!1325 = distinct !{!1325, !1324, !"_RINvXNvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inNtNtB8_6string6StringNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsbNLsQi0JuJ4_5tgrep: argument 1"}
!1326 = distinct !{!1326, !1324, !"_RINvXNvMNtCsgCecv3eZDcN_5alloc5sliceSp9to_vec_inNtNtB8_6string6StringNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsbNLsQi0JuJ4_5tgrep: argument 0"}
!1327 = distinct !{!1327, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEECsbNLsQi0JuJ4_5tgrep"}
!1328 = distinct !{!1328, !1327, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEECsbNLsQi0JuJ4_5tgrep: argument 0"}
!1329 = distinct !{!1329, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtCsf3Ta7LF998c_4core4sync6atomic6AtomicbEENtNtNtBN_3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep"}
!1330 = distinct !{!1330, !1329, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtCsf3Ta7LF998c_4core4sync6atomic6AtomicbEENtNtNtBN_3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep: argument 0"}
!1331 = distinct !{!1331, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbNLsQi0JuJ4_5tgrep3mem18PrivatePeakSamplerEBF_"}
!1332 = distinct !{!1332, !1331, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbNLsQi0JuJ4_5tgrep3mem18PrivatePeakSamplerEBF_: argument 0"}
!1333 = distinct !{!1333, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEECsbNLsQi0JuJ4_5tgrep"}
!1334 = distinct !{!1334, !1333, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEECsbNLsQi0JuJ4_5tgrep: argument 0"}
!1335 = distinct !{!1335, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtCsf3Ta7LF998c_4core4sync6atomic6AtomicbEENtNtNtBN_3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep"}
!1336 = distinct !{!1336, !1335, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtCsf3Ta7LF998c_4core4sync6atomic6AtomicbEENtNtNtBN_3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep: argument 0"}
!1337 = distinct !{!1337, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEECsbNLsQi0JuJ4_5tgrep"}
!1338 = distinct !{!1338, !1337, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEECsbNLsQi0JuJ4_5tgrep: argument 0"}
!1339 = distinct !{!1339, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtCsf3Ta7LF998c_4core4sync6atomic6AtomicbEENtNtNtBN_3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep"}
!1340 = distinct !{!1340, !1339, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtCsf3Ta7LF998c_4core4sync6atomic6AtomicbEENtNtNtBN_3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep: argument 0"}
!1341 = distinct !{!1341, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbNLsQi0JuJ4_5tgrep3mem18PrivatePeakSamplerEBF_"}
!1342 = distinct !{!1342, !1341, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbNLsQi0JuJ4_5tgrep3mem18PrivatePeakSamplerEBF_: argument 0"}
!1343 = distinct !{!1343, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEECsbNLsQi0JuJ4_5tgrep"}
!1344 = distinct !{!1344, !1343, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEECsbNLsQi0JuJ4_5tgrep: argument 0"}
!1345 = distinct !{!1345, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtCsf3Ta7LF998c_4core4sync6atomic6AtomicbEENtNtNtBN_3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep"}
!1346 = distinct !{!1346, !1345, !"_RNvXsE_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtCsf3Ta7LF998c_4core4sync6atomic6AtomicbEENtNtNtBN_3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep: argument 0"}
!1347 = !{!1326, !1325}
!1348 = !{!1326}
!1349 = !{!1328}
!1350 = !{!1330}
!1351 = !{!1330, !1328, !1332}
!1352 = !{!1330, !1328}
!1353 = !{!1334}
!1354 = !{!1336}
!1355 = !{!1336, !1334, !1332}
!1356 = !{!1336, !1334}
!1357 = !{!"address", !"read_provenance"}
!1358 = !{!1338}
!1359 = !{!1340}
!1360 = !{!1340, !1338, !1342}
!1361 = !{!1340, !1338}
!1362 = !{!1344}
!1363 = !{!1346}
!1364 = !{!1346, !1344, !1342}
!1365 = !{!1346, !1344}
!1366 = distinct !{!1366, !"_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep"}
!1367 = distinct !{!1367, !1366, !"_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep: argument 0"}
!1368 = !{!1367}
end_hunk_1
