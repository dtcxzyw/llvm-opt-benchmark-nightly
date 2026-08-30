Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/test_fixture-9afb7519003256ef.test_fixture.92a92005736a33cb-cgu.3?download=true
inline.NumInlined: 147
inline.NumDeleted: 87
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtCsbSS6DM8SDEO_5alloc6string6StringBC_EECscAFBYSOo4Yh_12test_fixture:bb.a
_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECscAFBYSOo4Yh_12test_fixture.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECscAFBYSOo4Yh_12test_fixture.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECscAFBYSOo4Yh_12test_fixture.exit3 unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECscAFBYSOo4Yh_12test_fixture.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #21
  unreachable

common.resume:                                    ; preds = %.body, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.e ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECscAFBYSOo4Yh_12test_fixture.exit3: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECscAFBYSOo4Yh_12test_fixture.exit
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  ret void

bb.g:                                             ; preds = %.body
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #21
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs6_NtCsaH4Z5sDJ4bD_9hashbrown3rawINtB5_8RawTablejE16with_capacity_inCscAFBYSOo4Yh_12test_fixture(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call fastcc void @_RINvMsa_NtCsaH4Z5sDJ4bD_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtNtCsdJdTcfBK2IX_14allocator_api26stable5alloc6global6GlobalECscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i1 noundef zeroext true) #19
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsC_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_11RawIntoIterTNtNtCsbSS6DM8SDEO_5alloc6string6StringBT_EENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !90, !noundef !9 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvMso_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_7RawIterTNtNtCsbSS6DM8SDEO_5alloc6string6StringBO_EE13drop_elementsCscAFBYSOo4Yh_12test_fixture.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.promoted = load i16, ptr %i.e, align 8, !alias.scope !93
  br label %bb.b

bb.b:                                             ; preds = %_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsbSS6DM8SDEO_5alloc6string6StringBV_EE9next_implKb0_ECscAFBYSOo4Yh_12test_fixture.exit.i, %.preheader.i
  %i.g = phi i16 [ %.promoted, %.preheader.i ], [ %i.r, %_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsbSS6DM8SDEO_5alloc6string6StringBV_EE9next_implKb0_ECscAFBYSOo4Yh_12test_fixture.exit.i ] ; 2 uses
  %i.h = phi i64 [ %i.c, %.preheader.i ], [ %i.u, %_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsbSS6DM8SDEO_5alloc6string6StringBV_EE9next_implKb0_ECscAFBYSOo4Yh_12test_fixture.exit.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96)
  %.not11.i.i = icmp eq i16 %i.g, 0
  %.promoted.i.i = load ptr, ptr %i.a, align 8, !alias.scope !93 ; 2 uses
  br i1 %.not11.i.i, label %.lr.ph.i.i, label %_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsbSS6DM8SDEO_5alloc6string6StringBV_EE9next_implKb0_ECscAFBYSOo4Yh_12test_fixture.exit.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %.promoted13.i.i = load ptr, ptr %i.f, align 8, !alias.scope !93
  br label %bb.c

._crit_edge.i.i:                                  ; preds = %bb.c
  store ptr %i.m, ptr %i.f, align 8, !alias.scope !93
  store ptr %i.l, ptr %i.a, align 8, !alias.scope !93
  br label %_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsbSS6DM8SDEO_5alloc6string6StringBV_EE9next_implKb0_ECscAFBYSOo4Yh_12test_fixture.exit.i

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.i = phi ptr [ %.promoted13.i.i, %.lr.ph.i.i ], [ %i.m, %bb.c ] ; 2 uses
  %i.j = phi ptr [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.l, %bb.c ]
  %.val9.i.i = load <16 x i8>, ptr %i.i, align 16, !noalias !93
  %i.k = icmp sgt <16 x i8> %.val9.i.i, splat (i8 -1)
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 -768 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %.cast.i.i = bitcast <16 x i1> %i.k to i16      ; 2 uses
  %.not.i.i = icmp eq i16 %.cast.i.i, 0
  br i1 %.not.i.i, label %bb.c, label %._crit_edge.i.i

_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsbSS6DM8SDEO_5alloc6string6StringBV_EE9next_implKb0_ECscAFBYSOo4Yh_12test_fixture.exit.i: ; preds = %bb.b, %._crit_edge.i.i
  %i.n = phi ptr [ %i.l, %._crit_edge.i.i ], [ %.promoted.i.i, %bb.b ]
  %.lcssa.i.i = phi i16 [ %.cast.i.i, %._crit_edge.i.i ], [ %i.g, %bb.b ] ; 3 uses
  %i.o = add i16 %.lcssa.i.i, -1
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = and i16 %i.o, %.lcssa.i.i                ; 2 uses
  store i16 %i.r, ptr %i.e, align 8, !alias.scope !93
  %i.s = sub nsw i64 0, %i.q
  %i.t = getelementptr inbounds [48 x i8], ptr %i.n, i64 %i.s
  %i.u = add i64 %i.h, -1                         ; 3 uses
  store i64 %i.u, ptr %i.b, align 8, !alias.scope !90
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -48
  tail call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtNtCsbSS6DM8SDEO_5alloc6string6StringBC_EECscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef align 8 dereferenceable(48) %i.v), !noalias !90
  %.old3.i = icmp eq i64 %i.u, 0
  br i1 %.old3.i, label %_RNvMso_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_7RawIterTNtNtCsbSS6DM8SDEO_5alloc6string6StringBO_EE13drop_elementsCscAFBYSOo4Yh_12test_fixture.exit, label %bb.b

_RNvMso_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_7RawIterTNtNtCsbSS6DM8SDEO_5alloc6string6StringBO_EE13drop_elementsCscAFBYSOo4Yh_12test_fixture.exit: ; preds = %_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsbSS6DM8SDEO_5alloc6string6StringBV_EE9next_implKb0_ECscAFBYSOo4Yh_12test_fixture.exit.i, %bb.a
  %i.w = load i64, ptr %0, align 8, !range !97, !noundef !9 ; 2 uses
  %.not = icmp eq i64 %i.w, 0
  br i1 %.not, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit, label %bb.d

bb.d:                                             ; preds = %_RNvMso_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_7RawIterTNtNtCsbSS6DM8SDEO_5alloc6string6StringBO_EE13drop_elementsCscAFBYSOo4Yh_12test_fixture.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i64, ptr %i.x, align 8, !noundef !9 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !9, !noundef !9
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ab, i64 noundef %i.y, i64 noundef range(i64 1, -9223372036854775807) %i.w) #22
  br label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit: ; preds = %bb.e, %bb.d, %_RNvMso_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_7RawIterTNtNtCsbSS6DM8SDEO_5alloc6string6StringBO_EE13drop_elementsCscAFBYSOo4Yh_12test_fixture.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvXsE_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_11RawIntoIterTNtNtCsbSS6DM8SDEO_5alloc6string6StringBT_EENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCscAFBYSOo4Yh_12test_fixture(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !9 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.f = load i16, ptr %i.e, align 8, !alias.scope !98, !noundef !9 ; 2 uses
  %.not11.i = icmp eq i16 %i.f, 0
  %.promoted.i = load ptr, ptr %i.d, align 8, !alias.scope !98 ; 2 uses
  br i1 %.not11.i, label %.lr.ph.i, label %_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsbSS6DM8SDEO_5alloc6string6StringBV_EE9next_implKb0_ECscAFBYSOo4Yh_12test_fixture.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.promoted13.i = load ptr, ptr %i.g, align 8, !alias.scope !98
  br label %bb.c

._crit_edge.i:                                    ; preds = %bb.c
  store ptr %i.l, ptr %i.g, align 8, !alias.scope !98
  store ptr %i.k, ptr %i.d, align 8, !alias.scope !98
  br label %_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsbSS6DM8SDEO_5alloc6string6StringBV_EE9next_implKb0_ECscAFBYSOo4Yh_12test_fixture.exit

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %i.h = phi ptr [ %.promoted13.i, %.lr.ph.i ], [ %i.l, %bb.c ] ; 2 uses
  %i.i = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.k, %bb.c ]
  %.val9.i = load <16 x i8>, ptr %i.h, align 16, !noalias !98
  %i.j = icmp sgt <16 x i8> %.val9.i, splat (i8 -1)
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 -768 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.cast.i = bitcast <16 x i1> %i.j to i16        ; 2 uses
  %.not.i = icmp eq i16 %.cast.i, 0
  br i1 %.not.i, label %bb.c, label %._crit_edge.i

_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsbSS6DM8SDEO_5alloc6string6StringBV_EE9next_implKb0_ECscAFBYSOo4Yh_12test_fixture.exit: ; preds = %bb.b, %._crit_edge.i
  %i.m = phi ptr [ %i.k, %._crit_edge.i ], [ %.promoted.i, %bb.b ]
  %.lcssa.i = phi i16 [ %.cast.i, %._crit_edge.i ], [ %i.f, %bb.b ] ; 3 uses
  %i.n = add i16 %.lcssa.i, -1
  %i.o = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.p = zext nneg i16 %i.o to i64
  %i.q = and i16 %i.n, %.lcssa.i
  store i16 %i.q, ptr %i.e, align 8, !alias.scope !98
  %i.r = sub nsw i64 0, %i.p
  %i.s = getelementptr inbounds [48 x i8], ptr %i.m, i64 %i.r
  %i.t = add i64 %i.b, -1
  store i64 %i.t, ptr %i.a, align 8
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 -48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.u, i64 48, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsbSS6DM8SDEO_5alloc6string6StringBV_EE9next_implKb0_ECscAFBYSOo4Yh_12test_fixture.exit, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomuEENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCscAFBYSOo4Yh_12test_fixture(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !9 ; 6 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add i64 %i.c, 1                          ; 3 uses
  %i.f = icmp ugt i64 %i.e, 1152921504606846975
  br i1 %i.f, label %bb.d, label %bb.c, !prof !10

bb.c:                                             ; preds = %bb.b
  %i.g = shl nuw i64 %i.e, 4                      ; 3 uses
  %i.h = add nsw i64 %i.c, 17                     ; 2 uses
  %i.i = add i64 %i.h, %i.g                       ; 4 uses
  %i.j = icmp ult i64 %i.i, %i.g
  %i.k = icmp ugt i64 %i.i, 9223372036854775792
  %or.cond.i.i = or i1 %i.j, %i.k
  br i1 %or.cond.i.i, label %bb.d, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.i.i, !prof !57

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.c
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !101
  %i.l = tail call noundef align 16 ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) 16) #22, !noalias !101 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.e, label %bb.g

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = tail call { i64, i64 } @_RNvMNtCsfjX3T6UU9IB_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !101
  br label %bb.f

bb.e:                                             ; preds = %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.i.i
  %i.o = tail call { i64, i64 } @_RNvMNtCsfjX3T6UU9IB_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.i), !noalias !101
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn.i = phi { i64, i64 } [ %i.n, %bb.d ], [ %i.o, %bb.e ] ; 2 uses
  %.sroa.12.020.i = extractvalue { i64, i64 } %.pn.i, 1
  %.sroa.7.021.i = extractvalue { i64, i64 } %.pn.i, 0 ; 2 uses
  %.pre = add i64 %.sroa.7.021.i, 17
  br label %_RNvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomuEE17new_uninitializedCscAFBYSOo4Yh_12test_fixture.exit

bb.g:                                             ; preds = %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator8allocate.exit.i.i
  %i.p = icmp ult i64 %i.c, 8
  %i.q = lshr i64 %i.e, 3
  %i.r = mul nuw nsw i64 %i.q, 7
  %.sroa.07.0.i.i = select i1 %i.p, i64 %i.c, i64 %i.r
  %2 = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.g
  br label %_RNvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomuEE17new_uninitializedCscAFBYSOo4Yh_12test_fixture.exit

_RNvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomuEE17new_uninitializedCscAFBYSOo4Yh_12test_fixture.exit: ; preds = %bb.f, %bb.g
  %.pre-phi = phi i64 [ %.pre, %bb.f ], [ %i.h, %bb.g ]
  %.sroa.7.0 = phi i64 [ %.sroa.12.020.i, %bb.f ], [ %.sroa.07.0.i.i, %bb.g ]
  %.sroa.5.0 = phi i64 [ %.sroa.7.021.i, %bb.f ], [ %i.c, %bb.g ]
  %.sroa.0.0 = phi ptr [ null, %bb.f ], [ %2, %bb.g ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.0, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.9.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !111)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114)
  %i.s = load ptr, ptr %1, align 8, !alias.scope !116, !noalias !117, !nonnull !9, !noundef !9 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0, ptr nonnull align 1 %i.s, i64 %.pre-phi, i1 false), !noalias !118
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !116, !noalias !117, !noundef !9 ; 3 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomuEE17new_uninitializedCscAFBYSOo4Yh_12test_fixture.exit
  %.val3.i.i.i = load <16 x i8>, ptr %i.s, align 16, !noalias !119
  %i.w = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.x = bitcast <16 x i1> %i.w to i16
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.z = ptrtoint ptr %i.s to i64
  br label %bb.i

bb.h:                                             ; preds = %bb.k, %bb.j
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.l, %bb.h
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.aa, %bb.h ], [ %i.at, %bb.l ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsfjX3T6UU9IB_9hashbrown10scopeguard10ScopeGuardTjQINtNtBG_3raw8RawTableTNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomuEEENCNvMse_B1y_B1v_15clone_from_impl0EECscAFBYSOo4Yh_12test_fixture(i64 %.sroa.012.031.i.i, ptr nonnull align 8 dereferenceable(32) %i.a) #20
          to label %.body unwind label %bb.n, !noalias !116

bb.i:                                             ; preds = %_RNvYTNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomuENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCscAFBYSOo4Yh_12test_fixture.exit.i.i, %.lr.ph.i.i
  %.sroa.012.031.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bb, %_RNvYTNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomuENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCscAFBYSOo4Yh_12test_fixture.exit.i.i ]
  %.sroa.013.030.i.i = phi ptr [ %i.s, %.lr.ph.i.i ], [ %.sroa.013.1.i.i, %_RNvYTNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomuENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCscAFBYSOo4Yh_12test_fixture.exit.i.i ] ; 2 uses
  %.sroa.6.029.i.i = phi ptr [ %i.y, %.lr.ph.i.i ], [ %.sroa.6.1.i.i, %_RNvYTNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomuENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCscAFBYSOo4Yh_12test_fixture.exit.i.i ] ; 2 uses
  %.sroa.814.028.i.i = phi i16 [ %i.x, %.lr.ph.i.i ], [ %i.aj, %_RNvYTNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomuENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCscAFBYSOo4Yh_12test_fixture.exit.i.i ] ; 2 uses
  %.sroa.1015.027.i.i = phi i64 [ %i.u, %.lr.ph.i.i ], [ %i.am, %_RNvYTNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomuENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCscAFBYSOo4Yh_12test_fixture.exit.i.i ]
  %.not11.i.i.i = icmp eq i16 %.sroa.814.028.i.i, 0
  br i1 %.not11.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i, %.lr.ph.i.i.i
  %i.ab = phi ptr [ %i.af, %.lr.ph.i.i.i ], [ %.sroa.6.029.i.i, %bb.i ] ; 2 uses
  %i.ac = phi ptr [ %i.ae, %.lr.ph.i.i.i ], [ %.sroa.013.030.i.i, %bb.i ]
  %.val9.i.i.i = load <16 x i8>, ptr %i.ab, align 16, !noalias !122
  %i.ad = icmp sgt <16 x i8> %.val9.i.i.i, splat (i8 -1)
  %i.ae = getelementptr inbounds i8, ptr %i.ac, i64 -256 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.ad to i16   ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.i
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.029.i.i, %bb.i ], [ %i.af, %.lr.ph.i.i.i ]
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.030.i.i, %bb.i ], [ %i.ae, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.814.028.i.i, %bb.i ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.ag = add i16 %.lcssa.i.i.i, -1
  %i.ah = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.ai = zext nneg i16 %i.ah to i64
  %i.aj = and i16 %i.ag, %.lcssa.i.i.i
  %i.ak = sub nsw i64 0, %i.ai
  %i.al = getelementptr inbounds [16 x i8], ptr %.sroa.013.1.i.i, i64 %i.ak ; 3 uses
  %i.am = add i64 %.sroa.1015.027.i.i, -1         ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.al, i64 -16 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !125, !noalias !130, !noundef !9
  %.not.i.i.i.i = icmp eq ptr %i.ao, null
  %i.ap = getelementptr inbounds i8, ptr %i.al, i64 -8 ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.loopexit.i.i
  %i.aq = invoke noundef nonnull ptr @_RNvXs4_NtCs39E2wp1vf7X_6intern6symbolNtB5_6SymbolNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.an)
          to label %.noexc.i.i unwind label %bb.h, !noalias !118 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.j
  %i.ar = invoke noundef nonnull ptr @_RNvXs4_NtCs39E2wp1vf7X_6intern6symbolNtB5_6SymbolNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ap)
          to label %_RNvYTNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomuENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCscAFBYSOo4Yh_12test_fixture.exit.i.i unwind label %bb.l, !noalias !130

bb.k:                                             ; preds = %.loopexit.i.i
  %i.as = invoke noundef nonnull ptr @_RNvXs4_NtCs39E2wp1vf7X_6intern6symbolNtB5_6SymbolNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ap)
          to label %_RNvYTNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomuENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCscAFBYSOo4Yh_12test_fixture.exit.i.i unwind label %bb.h, !noalias !118

bb.l:                                             ; preds = %.noexc.i.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs39E2wp1vf7X_6intern6symbol6SymbolECscAFBYSOo4Yh_12test_fixture(ptr nonnull %i.aq) #20
          to label %.body.i.i unwind label %bb.m, !noalias !130

bb.m:                                             ; preds = %bb.l
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #21, !noalias !130
  unreachable

_RNvYTNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomuENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCscAFBYSOo4Yh_12test_fixture.exit.i.i: ; preds = %bb.k, %.noexc.i.i
  %.sroa.517.0.i.i = phi ptr [ %i.as, %bb.k ], [ %i.ar, %.noexc.i.i ]
  %.sroa.0.0.i.i = phi ptr [ null, %bb.k ], [ %i.aq, %.noexc.i.i ]
  %i.av = ptrtoint ptr %i.al to i64
  %i.aw = sub i64 %i.z, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = sub nsw i64 0, %i.ax
  %i.az = getelementptr inbounds [16 x i8], ptr %.sroa.0.0, i64 %i.ay ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -16
  store ptr %.sroa.0.0.i.i, ptr %i.ba, align 8, !noalias !118
  %.sroa.517.0..sroa_idx.i.i = getelementptr inbounds i8, ptr %i.az, i64 -8
  store ptr %.sroa.517.0.i.i, ptr %.sroa.517.0..sroa_idx.i.i, align 8, !noalias !118
  %i.bb = add nsw i64 %i.ax, 1
  %i.bc = icmp eq i64 %i.am, 0
  br i1 %i.bc, label %.loopexit, label %bb.i

bb.n:                                             ; preds = %.body.i.i
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #21, !noalias !118
  unreachable

bb.o:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @4, i64 32, i1 false)
  br label %bb.p

.body:                                            ; preds = %.body.i.i
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsfjX3T6UU9IB_9hashbrown3raw8RawTableTNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomuEEECscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef align 8 dereferenceable(32) %i.a) #20
          to label %bb.r unwind label %bb.q

.loopexit:                                        ; preds = %_RNvYTNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomuENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCscAFBYSOo4Yh_12test_fixture.exit.i.i, %_RNvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomuEE17new_uninitializedCscAFBYSOo4Yh_12test_fixture.exit
  store i64 %i.u, ptr %.sroa.9.0..sroa_idx, align 8, !alias.scope !117, !noalias !116
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !116, !noalias !117, !noundef !9
  store i64 %i.bf, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !117, !noalias !116
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.p

bb.p:                                             ; preds = %.loopexit, %bb.o
  ret void

bb.q:                                             ; preds = %.body
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.r:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand10proc_macro15CrateProcMacrosEEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCscAFBYSOo4Yh_12test_fixture(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !133, !noundef !9 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand10proc_macro15CrateProcMacrosEENtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECscAFBYSOo4Yh_12test_fixture.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !139, !noundef !9 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand10proc_macro15CrateProcMacrosEEECscAFBYSOo4Yh_12test_fixture.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !139, !nonnull !9, !noundef !9 ; 3 uses
  %.val3.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !140
  %i.h = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand10proc_macro15CrateProcMacrosEEE9next_implKb0_ECscAFBYSOo4Yh_12test_fixture.exit.i.i, %bb.c
  %.sroa.05.016.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand10proc_macro15CrateProcMacrosEEE9next_implKb0_ECscAFBYSOo4Yh_12test_fixture.exit.i.i ] ; 2 uses
  %.sroa.6.015.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i, %_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand10proc_macro15CrateProcMacrosEEE9next_implKb0_ECscAFBYSOo4Yh_12test_fixture.exit.i.i ] ; 2 uses
  %.sroa.86.014.i.i = phi i16 [ %i.j, %bb.c ], [ %i.s, %_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand10proc_macro15CrateProcMacrosEEE9next_implKb0_ECscAFBYSOo4Yh_12test_fixture.exit.i.i ] ; 2 uses
  %.sroa.107.013.i.i = phi i64 [ %i.e, %bb.c ], [ %i.v, %_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand10proc_macro15CrateProcMacrosEEE9next_implKb0_ECscAFBYSOo4Yh_12test_fixture.exit.i.i ]
  %.not11.i.i.i = icmp eq i16 %.sroa.86.014.i.i, 0
  br i1 %.not11.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand10proc_macro15CrateProcMacrosEEE9next_implKb0_ECscAFBYSOo4Yh_12test_fixture.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.sroa.6.015.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %.sroa.05.016.i.i, %bb.d ]
  %.val9.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !143
  %i.m = icmp sgt <16 x i8> %.val9.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -256 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.m to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand10proc_macro15CrateProcMacrosEEE9next_implKb0_ECscAFBYSOo4Yh_12test_fixture.exit.i.i

_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsgIpRO4v45SJ_7base_db5input12CrateBuilderEINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand10proc_macro15CrateProcMacrosEEE9next_implKb0_ECscAFBYSOo4Yh_12test_fixture.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.015.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.016.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.014.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.p = add i16 %.lcssa.i.i.i, -1
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
end_hunk_0
