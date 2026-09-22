Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tgrep-rs/original/tgrep.tgrep.897916b5d56b90bc-cgu.11?download=true
inline.NumInlined: 716
inline.NumDeleted: 346
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core4meta9IndexMetaNtNtB11_5error5ErrorEECsbNLsQi0JuJ4_5tgrep:bb.a
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !14, !noundef !7
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %0)
          to label %.body.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core4meta9IndexMetaECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.e, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.c, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringbENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %.body.i
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.p, %bb.s, %bb.v, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.w, %bb.s ], [ %i.l, %bb.i ], [ %i.u, %bb.p ], [ %i.y, %bb.v ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core4meta9IndexMetaECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringbENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit

bb.g:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102)
  %i.j = load i64, ptr %i.i, align 8, !range !103, !alias.scope !102, !noundef !7
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 14 uses
  switch i64 %i.j, label %bb.h [
    i64 0, label %bb.k
    i64 1, label %bb.n
    i64 2, label %bb.o
    i64 3, label %bb.r
    i64 4, label %bb.u
  ]

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %bb.h
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit

bb.k:                                             ; preds = %bb.g
  %.val.i = load ptr, ptr %i.k, align 8, !alias.scope !102, !nonnull !7, !noundef !7 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !102
  %i.n = ptrtoint ptr %.val.i to i64              ; 2 uses
  %i.o = and i64 %i.n, 3
  switch i64 %i.o, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.i
    i64 3, label %bb.l
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.i
    i64 1, label %bb.m
  ], !prof !16

default.unreachable:                              ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.p = icmp ult ptr %.val.i, inttoptr (i64 188978561024 to ptr)
  %i.q = and i64 %i.n, 1095216660480
  %i.r = icmp ne i64 %i.q, 1095216660480
  tail call void @llvm.assume(i1 %i.p)
  tail call void @llvm.assume(i1 %i.r)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.i

bb.m:                                             ; preds = %bb.k
  %i.s = getelementptr i8, ptr %.val.i, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.s, ptr %i.t, align 8, !alias.scope !104, !noalias !102
  store i8 3, ptr %i.a, align 8, !alias.scope !104, !noalias !102
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t), !noalias !102
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %bb.m, %bb.l, %bb.k, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !102
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit

bb.n:                                             ; preds = %bb.g
  tail call void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit

bb.o:                                             ; preds = %bb.g
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit2.i unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %common.resume unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit2.i: ; preds = %bb.o
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit

bb.r:                                             ; preds = %bb.g
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit4.i unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %common.resume unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit4.i: ; preds = %bb.r
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit

bb.u:                                             ; preds = %bb.g
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit6.i unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %common.resume unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit6.i: ; preds = %bb.u
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit6.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit4.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit2.i, %bb.n, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core4meta9IndexMetaECsbNLsQi0JuJ4_5tgrep.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECsbNLsQi0JuJ4_5tgrep(ptr nofree readnone captures(address_is_null) %.0.val, ptr %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %.not = icmp eq ptr %.0.val, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = ptrtoint ptr %.8.val to i64              ; 2 uses
  %i.c = and i64 %i.b, 3
  switch i64 %i.c, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit
    i64 3, label %bb.d
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit
    i64 1, label %bb.e
  ], !prof !16

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ult ptr %.8.val, inttoptr (i64 188978561024 to ptr)
  %i.e = and i64 %i.b, 1095216660480
  %i.f = icmp ne i64 %i.e, 1095216660480
  tail call void @llvm.assume(i1 %i.d)
  tail call void @llvm.assume(i1 %i.f)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %.8.val, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !alias.scope !107
  store i8 3, ptr %i.a, align 8, !alias.scope !107
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.c, %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbNLsQi0JuJ4_5tgrep(ptr %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = icmp eq ptr %.0.val, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = ptrtoint ptr %.0.val to i64              ; 2 uses
  %i.d = and i64 %i.c, 3
  switch i64 %i.d, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit
    i64 3, label %bb.d
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit
    i64 1, label %bb.e
  ], !prof !16

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.e = icmp ult ptr %.0.val, inttoptr (i64 188978561024 to ptr)
  %i.f = and i64 %i.c, 1095216660480
  %i.g = icmp ne i64 %i.f, 1095216660480
  tail call void @llvm.assume(i1 %i.e)
  tail call void @llvm.assume(i1 %i.g)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %.0.val, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8, !alias.scope !110
  store i8 3, ptr %i.a, align 8, !alias.scope !110
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.c, %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs6MoqnCnVQOT_10serde_json2de12DeserializerNtNtBG_4read7StrReadEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECsbNLsQi0JuJ4_5tgrep.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtBG_6string6StringEECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtBG_6string6StringEECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbNLsQi0JuJ4_5tgrep6search14FileMatchStatsEEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCsbNLsQi0JuJ4_5tgrep6search14FileMatchStatsENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsbNLsQi0JuJ4_5tgrep6search14FileMatchStatsENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCsbNLsQi0JuJ4_5tgrep6search14FileMatchStatsEEB1j_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCsbNLsQi0JuJ4_5tgrep6search14FileMatchStatsENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCsbNLsQi0JuJ4_5tgrep6search14FileMatchStatsEEB1j_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecjEECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

end_hunk_0
begin_hunk_1_@_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbNLsQi0JuJ4_5tgrep6status12StatusResultEBF_:bb.a
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.d, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #24
          to label %.body6 unwind label %bb.q

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.a, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !range !14, !alias.scope !155, !noundef !7
  %i.j = icmp eq i64 %i.i, -1
  br i1 %i.j, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep.exit9, label %bb.f

bb.f:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep.exit
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit.i5 unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body6 unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit.i5: ; preds = %bb.f
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep.exit9 unwind label %bb.i

.body6:                                           ; preds = %bb.i, %bb.g, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.n, %bb.i ], [ %i.k, %bb.g ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #24
          to label %.body12 unwind label %bb.q

bb.i:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit.i5
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body6

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep.exit9: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep.exit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit.i5
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.p = load i64, ptr %i.o, align 8, !range !14, !alias.scope !156, !noundef !7
  %i.q = icmp eq i64 %i.p, -1
  br i1 %i.q, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep.exit15, label %bb.j

bb.j:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep.exit9
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit.i11 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body12 unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit.i11: ; preds = %bb.j
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep.exit15 unwind label %bb.m

.body12:                                          ; preds = %bb.m, %bb.k, %.body6
  %.pn2 = phi { ptr, i32 } [ %.pn, %.body6 ], [ %i.u, %bb.m ], [ %i.r, %bb.k ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 136
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.t) #24
          to label %common.resume unwind label %bb.q

bb.m:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit.i11
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body12

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep.exit15: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep.exit9, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit.i11
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.w = load i64, ptr %i.v, align 8, !range !14, !alias.scope !157, !noundef !7
  %i.x = icmp eq i64 %i.w, -1
  br i1 %i.x, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep.exit18, label %bb.n

bb.n:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep.exit15
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit.i17 unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %common.resume unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25
  unreachable

common.resume:                                    ; preds = %.body12, %bb.o
  %common.resume.op = phi { ptr, i32 } [ %i.y, %bb.o ], [ %.pn2, %.body12 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit.i17: ; preds = %bb.n
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep.exit18

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep.exit18: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep.exit15, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit.i17
  ret void

bb.q:                                             ; preds = %.body12, %.body6, %.body
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core4meta9IndexMetaECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringbENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core10visibility14PathVisibilityECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.e

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringbENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  ret void

bb.e:                                             ; preds = %.body
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsbzNSmZPCnTx_10tgrep_core10visibility14PathVisibilityECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECsbNLsQi0JuJ4_5tgrep.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbNLsQi0JuJ4_5tgrep(ptr %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = ptrtoint ptr %.0.val to i64              ; 2 uses
  %i.c = and i64 %i.b, 3
  switch i64 %i.c, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECsbNLsQi0JuJ4_5tgrep.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECsbNLsQi0JuJ4_5tgrep.exit
    i64 1, label %bb.c
  ], !prof !16

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult ptr %.0.val, inttoptr (i64 188978561024 to ptr)
  %i.e = and i64 %i.b, 1095216660480
  %i.f = icmp ne i64 %i.e, 1095216660480
  tail call void @llvm.assume(i1 %i.d)
  tail call void @llvm.assume(i1 %i.f)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECsbNLsQi0JuJ4_5tgrep.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %.0.val, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !alias.scope !160
  store i8 3, ptr %i.a, align 8, !alias.scope !160
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECsbNLsQi0JuJ4_5tgrep.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.a, %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std2io5stdio10StdoutLockECsbNLsQi0JuJ4_5tgrep(ptr %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !noundef !7
  %i.c = add i32 %i.b, -1                         ; 2 uses
  store i32 %i.c, ptr %i.a, align 4
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs5Xr050g3D4S_3std4sync14reentrant_lock18ReentrantLockGuardINtNtB4_4cell7RefCellINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered10linewriter10LineWriterNtNtNtBI_2io5stdio9StdoutRawEEEECsbNLsQi0JuJ4_5tgrep.exit

bb.b:                                             ; preds = %bb.a
  store atomic i64 0, ptr %.0.val monotonic, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 2 uses
  %i.f = atomicrmw xchg ptr %i.e, i32 0 release, align 4
  %i.g = icmp eq i32 %i.f, 2
  br i1 %i.g, label %bb.c, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs5Xr050g3D4S_3std4sync14reentrant_lock18ReentrantLockGuardINtNtB4_4cell7RefCellINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered10linewriter10LineWriterNtNtNtBI_2io5stdio9StdoutRawEEEECsbNLsQi0JuJ4_5tgrep.exit, !prof !11

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.e)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs5Xr050g3D4S_3std4sync14reentrant_lock18ReentrantLockGuardINtNtB4_4cell7RefCellINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered10linewriter10LineWriterNtNtNtBI_2io5stdio9StdoutRawEEEECsbNLsQi0JuJ4_5tgrep.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCs5Xr050g3D4S_3std4sync14reentrant_lock18ReentrantLockGuardINtNtB4_4cell7RefCellINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered10linewriter10LineWriterNtNtNtBI_2io5stdio9StdoutRawEEEECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs5Xr050g3D4S_3std3sys6os_str5bytes3BufECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECsbNLsQi0JuJ4_5tgrep.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECsbNLsQi0JuJ4_5tgrep.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs5Xr050g3D4S_3std3sys6os_str5bytes3BufECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15MapDeserializerECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsy_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json3map8IntoIterECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !12, !alias.scope !165, !noundef !7
  %i.d = icmp eq i8 %i.c, -1
  br i1 %i.d, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.e

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json3map8IntoIterECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !range !12, !alias.scope !166, !noundef !7
  %i.g = icmp eq i8 %i.f, -1
  br i1 %i.g, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit1, label %bb.d

bb.d:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json3map8IntoIterECsbNLsQi0JuJ4_5tgrep.exit
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit1

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit1: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json3map8IntoIterECsbNLsQi0JuJ4_5tgrep.exit, %bb.d
  ret void

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs6MoqnCnVQOT_10serde_json5value2de11visit_arrayINtNvXsh_NtNtCs4ZeZeX9PAiK_10serde_core2de5implsINtNtCsgCecv3eZDcN_5alloc3vec3VecpENtB13_11Deserialize11deserialize10VecVisitorNtNtCsbNLsQi0JuJ4_5tgrep6search14FileMatchStatsEEB2Z_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !7 ; 3 uses
  %i.e = icmp ult i64 %i.d, 288230376151711744
  tail call void @llvm.assume(i1 %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !7, !noundef !7 ; 3 uses
  %i.h = load i64, ptr %1, align 8, !range !19, !noundef !7
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %i.d
  store ptr %i.g, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.g, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.h, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store ptr %i.i, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RINvXNvXsh_NtNtCs4ZeZeX9PAiK_10serde_core2de5implsINtNtCsgCecv3eZDcN_5alloc3vec3VecpENtBb_11Deserialize11deserializeINtB3_10VecVisitorNtNtCsbNLsQi0JuJ4_5tgrep6search14FileMatchStatsENtBb_7Visitor9visit_seqQNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerEB2c_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.j, %bb.c ], [ %i.m, %bb.e ]
  invoke void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.j

bb.c:                                             ; preds = %bb.h, %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.k = load i64, ptr %0, align 8, !range !14, !noundef !7
  %i.l = icmp eq i64 %i.k, -1
  br i1 %i.l, label %bb.i, label %bb.f

bb.e:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbNLsQi0JuJ4_5tgrep6search14FileMatchStatsEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #24
          to label %bb.b unwind label %bb.j

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %.val = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !7, !noundef !7
  %.val6 = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !nonnull !7, !noundef !7
  %i.n = icmp eq ptr %.val6, %.val
  br i1 %i.n, label %bb.i, label %bb.g, !prof !20

bb.g:                                             ; preds = %bb.f
  %i.o = invoke noundef nonnull align 8 ptr @_RNvYNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorNtNtCs4ZeZeX9PAiK_10serde_core2de5Error14invalid_lengthCsbNLsQi0JuJ4_5tgrep(i64 noundef %i.d, ptr noundef nonnull @22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23)
          to label %bb.h unwind label %bb.e

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.p, align 8
  store i64 -1, ptr %0, align 8
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbNLsQi0JuJ4_5tgrep6search14FileMatchStatsEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a)
          to label %bb.i unwind label %bb.c

bb.i:                                             ; preds = %bb.f, %bb.h, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.j:                                             ; preds = %bb.b, %bb.e
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_1
begin_hunk_2_@_RINvNtNtCs6MoqnCnVQOT_10serde_json5value2de11visit_arrayNtNvXNvNtCsbNLsQi0JuJ4_5tgrep6status1__NtBZ_12StatusResultNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserialize9___VisitorEB11_:bb.a
bb.c:                                             ; preds = %.noexc7
  call void @llvm.experimental.noalias.scope.decl(metadata !347)
  call void @llvm.experimental.noalias.scope.decl(metadata !348)
  call void @llvm.experimental.noalias.scope.decl(metadata !349)
  %i.aw = icmp eq i64 %i.ae, 2
  br i1 %i.aw, label %.thread269.i, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit.i.i.i214.i

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit.i.i.i214.i: ; preds = %bb.c
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ah, i64 96 ; 2 uses
  store ptr %i.ax, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !350, !noalias !351
  %.sroa.0.0.copyload3.i.i.i215.i = load i8, ptr %i.aq, align 8, !noalias !352 ; 2 uses
  %.not.i.i.i216.i = icmp eq i8 %.sroa.0.0.copyload3.i.i.i215.i, -1
  br i1 %.not.i.i.i216.i, label %.thread269.i, label %_RINvXs4_NtCs4ZeZeX9PAiK_10serde_core2deQNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementyECsbNLsQi0JuJ4_5tgrep.exit222.i

_RINvXs4_NtCs4ZeZeX9PAiK_10serde_core2deQNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementyECsbNLsQi0JuJ4_5tgrep.exit222.i: ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit.i.i.i214.i
  %.sroa.7.0..sroa_idx4.i.i.i217.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 65
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !353
  store i8 %.sroa.0.0.copyload3.i.i.i215.i, ptr %i.i, align 8, !noalias !353
  %.sroa.7.0..sroa_idx.i.i.i218.i = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx.i.i.i218.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx4.i.i.i217.i, i64 31, i1 false), !noalias !353
  %i.ay = invoke { i64, ptr } @_RINvXs2_NtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de12Deserializer15deserialize_u64NtNvXs17_NtBW_5implsyNtBW_11Deserialize11deserialize16PrimitiveVisitorECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.i)
          to label %.noexc9 unwind label %bb.ci   ; 2 uses

.noexc9:                                          ; preds = %_RINvXs4_NtCs4ZeZeX9PAiK_10serde_core2deQNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementyECsbNLsQi0JuJ4_5tgrep.exit222.i
  %i.az = extractvalue { i64, ptr } %i.ay, 0
  %i.ba = extractvalue { i64, ptr } %i.ay, 1      ; 2 uses
  %.sink7.i.i.i220.i = ptrtoint ptr %i.ba to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !353
  switch i64 %i.az, label %bb.d [
    i64 1, label %.noexc12
    i64 -1, label %.thread269.i
  ], !prof !21

.thread262.i:                                     ; preds = %.noexc7, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit.i.i.i205.i, %bb.b
  %i.bb = invoke noundef nonnull align 8 ptr @_RNvYNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorNtNtCs4ZeZeX9PAiK_10serde_core2de5Error14invalid_lengthCsbNLsQi0JuJ4_5tgrep(i64 noundef 1, ptr noundef nonnull @64, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23)
          to label %.noexc10 unwind label %bb.ci

.noexc10:                                         ; preds = %.thread262.i, %.noexc7
  %.sink327.i = phi ptr [ %i.at, %.noexc7 ], [ %i.bb, %.thread262.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink327.i, ptr %i.bc, align 8, !alias.scope !331, !noalias !332
  store i64 2, ptr %0, align 8, !alias.scope !331, !noalias !332
  br label %_RINvXs0_NvXNvNtCsbNLsQi0JuJ4_5tgrep6status1__NtBb_12StatusResultNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB12_7Visitor9visit_seqQNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerEBd_.exit.thread

bb.d:                                             ; preds = %.noexc9
  call void @llvm.experimental.noalias.scope.decl(metadata !354)
  call void @llvm.experimental.noalias.scope.decl(metadata !355)
  call void @llvm.experimental.noalias.scope.decl(metadata !356)
  %i.bd = icmp eq i64 %i.ae, 3
  br i1 %i.bd, label %.thread276.i, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit.i.i.i223.i

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit.i.i.i223.i: ; preds = %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %i.ah, i64 128 ; 2 uses
  store ptr %i.be, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !357, !noalias !358
  %.sroa.0.0.copyload3.i.i.i224.i = load i8, ptr %i.ax, align 8, !noalias !359 ; 2 uses
  %.not.i.i.i225.i = icmp eq i8 %.sroa.0.0.copyload3.i.i.i224.i, -1
  br i1 %.not.i.i.i225.i, label %.thread276.i, label %_RINvXs4_NtCs4ZeZeX9PAiK_10serde_core2deQNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementyECsbNLsQi0JuJ4_5tgrep.exit231.i

_RINvXs4_NtCs4ZeZeX9PAiK_10serde_core2deQNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementyECsbNLsQi0JuJ4_5tgrep.exit231.i: ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit.i.i.i223.i
  %.sroa.7.0..sroa_idx4.i.i.i226.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 97
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !360
  store i8 %.sroa.0.0.copyload3.i.i.i224.i, ptr %i.h, align 8, !noalias !360
  %.sroa.7.0..sroa_idx.i.i.i227.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx.i.i.i227.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx4.i.i.i226.i, i64 31, i1 false), !noalias !360
  %i.bf = invoke { i64, ptr } @_RINvXs2_NtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de12Deserializer15deserialize_u64NtNvXs17_NtBW_5implsyNtBW_11Deserialize11deserialize16PrimitiveVisitorECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.h)
          to label %.noexc11 unwind label %bb.ci  ; 2 uses

.noexc11:                                         ; preds = %_RINvXs4_NtCs4ZeZeX9PAiK_10serde_core2deQNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementyECsbNLsQi0JuJ4_5tgrep.exit231.i
  %i.bg = extractvalue { i64, ptr } %i.bf, 0
  %i.bh = extractvalue { i64, ptr } %i.bf, 1      ; 2 uses
  %.sink7.i.i.i229.i = ptrtoint ptr %i.bh to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !360
  switch i64 %i.bg, label %bb.e [
    i64 1, label %.noexc14
    i64 -1, label %.thread276.i
  ], !prof !21

.thread269.i:                                     ; preds = %.noexc9, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit.i.i.i214.i, %bb.c
  %i.bi = invoke noundef nonnull align 8 ptr @_RNvYNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorNtNtCs4ZeZeX9PAiK_10serde_core2de5Error14invalid_lengthCsbNLsQi0JuJ4_5tgrep(i64 noundef 2, ptr noundef nonnull @64, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23)
          to label %.noexc12 unwind label %bb.ci

.noexc12:                                         ; preds = %.thread269.i, %.noexc9
  %.sink329.i = phi ptr [ %i.ba, %.noexc9 ], [ %i.bi, %.thread269.i ]
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink329.i, ptr %i.bj, align 8, !alias.scope !331, !noalias !332
  store i64 2, ptr %0, align 8, !alias.scope !331, !noalias !332
  br label %_RINvXs0_NvXNvNtCsbNLsQi0JuJ4_5tgrep6status1__NtBb_12StatusResultNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB12_7Visitor9visit_seqQNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerEBd_.exit.thread

bb.e:                                             ; preds = %.noexc11
  call void @llvm.experimental.noalias.scope.decl(metadata !361)
  call void @llvm.experimental.noalias.scope.decl(metadata !362)
  call void @llvm.experimental.noalias.scope.decl(metadata !363)
  %i.bk = icmp eq i64 %i.ae, 4
  br i1 %i.bk, label %bb.j, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit.i.i.i232.i

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit.i.i.i232.i: ; preds = %bb.e
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ah, i64 160 ; 2 uses
  store ptr %i.bl, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !364, !noalias !365
  %.sroa.0.0.copyload1.i.i.i.i = load i8, ptr %i.be, align 8, !noalias !366 ; 2 uses
  %.not.i.i.i233.i = icmp eq i8 %.sroa.0.0.copyload1.i.i.i.i, -1
  br i1 %.not.i.i.i233.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit.i.i.i232.i
  %.sroa.7.0..sroa_idx2.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !367
  store i8 %.sroa.0.0.copyload1.i.i.i.i, ptr %i.g, align 8, !noalias !367
  %.sroa.7.0..sroa_idx.i.i.i234.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx.i.i.i234.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx2.i.i.i.i, i64 31, i1 false), !noalias !367
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !367
  invoke void @_RINvXs1_NtNtCs4ZeZeX9PAiK_10serde_core2de5implsbNtB8_11Deserialize11deserializeNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
          to label %.noexc13 unwind label %bb.ci

.noexc13:                                         ; preds = %bb.f
  %i.bm = load i8, ptr %i.f, align 8, !range !9, !noalias !367, !noundef !7
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %bb.g, label %bb.h

.thread276.i:                                     ; preds = %.noexc11, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit.i.i.i223.i, %bb.d
  %i.bo = invoke noundef nonnull align 8 ptr @_RNvYNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorNtNtCs4ZeZeX9PAiK_10serde_core2de5Error14invalid_lengthCsbNLsQi0JuJ4_5tgrep(i64 noundef 3, ptr noundef nonnull @64, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23)
          to label %.noexc14 unwind label %bb.ci

.noexc14:                                         ; preds = %.thread276.i, %.noexc11
  %.sink331.i = phi ptr [ %i.bh, %.noexc11 ], [ %i.bo, %.thread276.i ]
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink331.i, ptr %i.bp, align 8, !alias.scope !331, !noalias !332
  store i64 2, ptr %0, align 8, !alias.scope !331, !noalias !332
  br label %_RINvXs0_NvXNvNtCsbNLsQi0JuJ4_5tgrep6status1__NtBb_12StatusResultNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB12_7Visitor9visit_seqQNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerEBd_.exit.thread

bb.g:                                             ; preds = %.noexc13
  %i.bq = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !noalias !367, !nonnull !7, !align !22, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !367
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !367
  br label %.noexc17

bb.h:                                             ; preds = %.noexc13
  %i.bs = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.bt = load i8, ptr %i.bs, align 1, !range !9, !noalias !367, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !367
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !367
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !368
  call void @llvm.experimental.noalias.scope.decl(metadata !369)
  call void @llvm.experimental.noalias.scope.decl(metadata !370)
  call void @llvm.experimental.noalias.scope.decl(metadata !371)
  %i.bu = icmp eq i64 %i.ae, 5
  br i1 %i.bu, label %bb.l, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit.i.i.i236.i

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit.i.i.i236.i: ; preds = %bb.h
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ah, i64 192
  store ptr %i.bv, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !372, !noalias !373
  %.sroa.0.0.copyload2.i.i.i.i = load i8, ptr %i.bl, align 8, !noalias !374 ; 3 uses
  %.not.i.i.i237.i = icmp eq i8 %.sroa.0.0.copyload2.i.i.i.i, -1
  br i1 %.not.i.i.i237.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit.i.i.i236.i
  %.sroa.7.0..sroa_idx3.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !375
  store i8 %.sroa.0.0.copyload2.i.i.i.i, ptr %i.e, align 8, !noalias !375
  %.sroa.7.0..sroa_idx.i.i.i238.i = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx.i.i.i238.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx3.i.i.i.i, i64 31, i1 false), !noalias !375
  %i.bw = icmp eq i8 %.sroa.0.0.copyload2.i.i.i.i, 0
  br i1 %i.bw, label %_RINvXs3_NtCs4ZeZeX9PAiK_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEENtB6_15DeserializeSeed11deserializeNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbNLsQi0JuJ4_5tgrep.exit.thread.i.i.i.i, label %.noexc.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !376
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !noalias !377
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !378
  invoke void @_RINvXs6_NtNtCs4ZeZeX9PAiK_10serde_core2de5implsNtNtCsgCecv3eZDcN_5alloc6string6StringNtB8_11Deserialize11deserializeNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.d)
          to label %.noexc15 unwind label %bb.ci

.noexc15:                                         ; preds = %.noexc.i.i.i.i.i.i.i
  %i.bx = load i64, ptr %i.c, align 8, !range !14, !noalias !378, !noundef !7 ; 2 uses
  %i.by = icmp eq i64 %i.bx, -1
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !noalias !379 ; 3 uses
  br i1 %i.by, label %bb.k, label %_RINvXs3_NtCs4ZeZeX9PAiK_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEENtB6_15DeserializeSeed11deserializeNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i

_RINvXs3_NtCs4ZeZeX9PAiK_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEENtB6_15DeserializeSeed11deserializeNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbNLsQi0JuJ4_5tgrep.exit.thread.i.i.i.i: ; preds = %bb.i
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %.noexc16 unwind label %bb.ci

_RINvXs3_NtCs4ZeZeX9PAiK_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEENtB6_15DeserializeSeed11deserializeNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i: ; preds = %.noexc15
  %.sroa.9.0..sroa_idx9.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.9.0.copyload10.i.i.i.i = load i64, ptr %.sroa.9.0..sroa_idx9.i.i.i.i, align 8, !noalias !379
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !378
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !376
  br label %.noexc16

bb.j:                                             ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit.i.i.i232.i, %bb.e
  %i.cb = invoke noundef nonnull align 8 ptr @_RNvYNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorNtNtCs4ZeZeX9PAiK_10serde_core2de5Error14invalid_lengthCsbNLsQi0JuJ4_5tgrep(i64 noundef 4, ptr noundef nonnull @64, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23)
          to label %.noexc17 unwind label %bb.ci

.noexc17:                                         ; preds = %bb.j, %bb.g
  %.sink333.i = phi ptr [ %i.br, %bb.g ], [ %i.cb, %bb.j ]
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink333.i, ptr %i.cc, align 8, !alias.scope !331, !noalias !332
  store i64 2, ptr %0, align 8, !alias.scope !331, !noalias !332
  br label %_RINvXs0_NvXNvNtCsbNLsQi0JuJ4_5tgrep6status1__NtBb_12StatusResultNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB12_7Visitor9visit_seqQNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerEBd_.exit.thread

bb.k:                                             ; preds = %.noexc15
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ca) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !378
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !376
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !375
  br label %.noexc18

.noexc16:                                         ; preds = %_RINvXs3_NtCs4ZeZeX9PAiK_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEENtB6_15DeserializeSeed11deserializeNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbNLsQi0JuJ4_5tgrep.exit.thread.i.i.i.i, %_RINvXs3_NtCs4ZeZeX9PAiK_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEENtB6_15DeserializeSeed11deserializeNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i
  %.sroa.0250.0.ph.i = phi i64 [ %i.bx, %_RINvXs3_NtCs4ZeZeX9PAiK_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEENtB6_15DeserializeSeed11deserializeNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i ], [ -1, %_RINvXs3_NtCs4ZeZeX9PAiK_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEENtB6_15DeserializeSeed11deserializeNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbNLsQi0JuJ4_5tgrep.exit.thread.i.i.i.i ]
  %.sroa.7.0.ph.i = phi ptr [ %i.ca, %_RINvXs3_NtCs4ZeZeX9PAiK_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEENtB6_15DeserializeSeed11deserializeNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i ], [ undef, %_RINvXs3_NtCs4ZeZeX9PAiK_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEENtB6_15DeserializeSeed11deserializeNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbNLsQi0JuJ4_5tgrep.exit.thread.i.i.i.i ]
  %.sroa.11251.0.ph.i = phi i64 [ %.sroa.9.0.copyload10.i.i.i.i, %_RINvXs3_NtCs4ZeZeX9PAiK_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEENtB6_15DeserializeSeed11deserializeNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i ], [ undef, %_RINvXs3_NtCs4ZeZeX9PAiK_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDataINtNtBG_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEENtB6_15DeserializeSeed11deserializeNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbNLsQi0JuJ4_5tgrep.exit.thread.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !375
  store i64 %.sroa.0250.0.ph.i, ptr %i.aa, align 8, !noalias !368
  %.sroa.431.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %.sroa.7.0.ph.i, ptr %.sroa.431.0..sroa_idx.i, align 8, !noalias !368
  %.sroa.532.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 %.sroa.11251.0.ph.i, ptr %.sroa.532.0..sroa_idx.i, align 8, !noalias !368
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !368
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !368
  invoke fastcc void @_RINvXs4_NtCs4ZeZeX9PAiK_10serde_core2deQNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.y, ptr nonnull align 8 dereferenceable(32) %i.ac)
          to label %bb.o unwind label %bb.n, !noalias !331

bb.l:                                             ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextCsbNLsQi0JuJ4_5tgrep.exit.i.i.i236.i, %bb.h
  %i.cd = invoke noundef nonnull align 8 ptr @_RNvYNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorNtNtCs4ZeZeX9PAiK_10serde_core2de5Error14invalid_lengthCsbNLsQi0JuJ4_5tgrep(i64 noundef 5, ptr noundef nonnull @64, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23)
          to label %.noexc18 unwind label %bb.ci

.noexc18:                                         ; preds = %bb.l, %bb.k
  %.sink335.i = phi ptr [ %i.ca, %bb.k ], [ %i.cd, %bb.l ]
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink335.i, ptr %i.ce, align 8, !alias.scope !331, !noalias !332
  store i64 2, ptr %0, align 8, !alias.scope !331, !noalias !332
  br label %_RINvXs0_NvXNvNtCsbNLsQi0JuJ4_5tgrep6status1__NtBb_12StatusResultNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB12_7Visitor9visit_seqQNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerEBd_.exit.thread65

bb.m:                                             ; preds = %bb.u, %bb.n
  %.pn181.i = phi { ptr, i32 } [ %i.cf, %bb.n ], [ %.pn179.i, %bb.u ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aa) #24
          to label %.body unwind label %bb.ce, !noalias !368

bb.n:                                             ; preds = %bb.cg, %bb.s, %.noexc16
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.o:                                             ; preds = %.noexc16
  %i.cg = load i64, ptr %i.y, align 8, !range !380, !noalias !368, !noundef !7 ; 3 uses
  %i.ch = icmp eq i64 %i.cg, -3
  %i.ci = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !noalias !368 ; 2 uses
  br i1 %i.ch, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !368
  br label %bb.t

bb.q:                                             ; preds = %bb.o
  %.sroa.5155.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.5155.0.copyload.i = load i64, ptr %.sroa.5155.0..sroa_idx.i, align 8, !noalias !368
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !368
  %.not166.i = icmp eq i64 %i.cg, -2
  br i1 %.not166.i, label %bb.s, label %bb.r, !prof !11

bb.r:                                             ; preds = %bb.q
  store i64 %i.cg, ptr %i.z, align 8, !noalias !368
  %.sroa.445.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.cj, ptr %.sroa.445.0..sroa_idx.i, align 8, !noalias !368
  %.sroa.546.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 %.sroa.5155.0.copyload.i, ptr %.sroa.546.0..sroa_idx.i, align 8, !noalias !368
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !368
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !368
  invoke fastcc void @_RINvXs4_NtCs4ZeZeX9PAiK_10serde_core2deQNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.w, ptr nonnull align 8 dereferenceable(32) %i.ac)
          to label %bb.w unwind label %bb.v, !noalias !331

bb.s:                                             ; preds = %bb.q
  %i.ck = invoke noundef nonnull align 8 ptr @_RNvYNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorNtNtCs4ZeZeX9PAiK_10serde_core2de5Error14invalid_lengthCsbNLsQi0JuJ4_5tgrep(i64 noundef 6, ptr noundef nonnull @64, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23)
          to label %bb.t unwind label %bb.n, !noalias !368

bb.t:                                             ; preds = %bb.s, %bb.p
  %.sink337.i = phi ptr [ %i.cj, %bb.p ], [ %i.ck, %bb.s ]
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink337.i, ptr %i.cl, align 8, !alias.scope !331, !noalias !332
  store i64 2, ptr %0, align 8, !alias.scope !331, !noalias !332
  br label %bb.ch

bb.u:                                             ; preds = %bb.ac, %bb.v
  %.pn179.i = phi { ptr, i32 } [ %i.cm, %bb.v ], [ %.pn.i, %bb.ac ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.z) #24
          to label %bb.m unwind label %bb.ce, !noalias !368

bb.v:                                             ; preds = %bb.cf, %bb.aa, %bb.r
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.w:                                             ; preds = %bb.r
  %i.cn = load i64, ptr %i.w, align 8, !range !380, !noalias !368, !noundef !7 ; 3 uses
  %i.co = icmp eq i64 %i.cn, -3
  %i.cp = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !noalias !368 ; 2 uses
  br i1 %i.co, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !368
  br label %bb.ab

bb.y:                                             ; preds = %bb.w
  %.sroa.5158.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.5158.0.copyload.i = load i64, ptr %.sroa.5158.0..sroa_idx.i, align 8, !noalias !368
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !368
  %.not167.i = icmp eq i64 %i.cn, -2
  br i1 %.not167.i, label %bb.aa, label %bb.z, !prof !11

bb.z:                                             ; preds = %bb.y
  store i64 %i.cn, ptr %i.x, align 8, !noalias !368
  %.sroa.459.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.cq, ptr %.sroa.459.0..sroa_idx.i, align 8, !noalias !368
  %.sroa.560.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %.sroa.5158.0.copyload.i, ptr %.sroa.560.0..sroa_idx.i, align 8, !noalias !368
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !368
  invoke fastcc void @_RINvXs4_NtCs4ZeZeX9PAiK_10serde_core2deQNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementINtNtCsf3Ta7LF998c_4core6option6OptionjEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.v, ptr nonnull align 8 dereferenceable(32) %i.ac)
          to label %bb.ae unwind label %bb.ad, !noalias !331

bb.aa:                                            ; preds = %bb.y
  %i.cr = invoke noundef nonnull align 8 ptr @_RNvYNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorNtNtCs4ZeZeX9PAiK_10serde_core2de5Error14invalid_lengthCsbNLsQi0JuJ4_5tgrep(i64 noundef 7, ptr noundef nonnull @64, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23)
          to label %bb.ab unwind label %bb.v, !noalias !368

bb.ab:                                            ; preds = %bb.aa, %bb.x
  %.sink339.i = phi ptr [ %i.cq, %bb.x ], [ %i.cr, %bb.aa ]
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink339.i, ptr %i.cs, align 8, !alias.scope !331, !noalias !332
  store i64 2, ptr %0, align 8, !alias.scope !331, !noalias !332
  br label %bb.cg

bb.ac:                                            ; preds = %bb.bi, %bb.ad
  %.pn.i = phi { ptr, i32 } [ %i.ct, %bb.ad ], [ %i.ec, %bb.bi ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.x) #24
          to label %bb.u unwind label %bb.ce, !noalias !368

bb.ad:                                            ; preds = %bb.cc, %bb.bg, %bb.ba, %bb.az, %bb.au, %bb.at, %bb.ao, %bb.an, %bb.ai, %bb.ah, %bb.z
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ae:                                            ; preds = %bb.z
  %i.cu = load i64, ptr %i.v, align 8, !range !23, !noalias !368, !noundef !7 ; 3 uses
  %i.cv = icmp eq i64 %i.cu, -1
  %i.cw = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  br i1 %i.cv, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.cx = load ptr, ptr %i.cw, align 8, !noalias !368, !nonnull !7, !align !22, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !368
  br label %bb.aj

bb.ag:                                            ; preds = %bb.ae
  %i.cy = load i64, ptr %i.cw, align 8, !noalias !368
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !368
  %.not168.i = icmp eq i64 %i.cu, 2
  br i1 %.not168.i, label %bb.ai, label %bb.ah, !prof !11

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !368
  invoke fastcc void @_RINvXs4_NtCs4ZeZeX9PAiK_10serde_core2deQNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementINtNtCsf3Ta7LF998c_4core6option6OptionyEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.u, ptr nonnull align 8 dereferenceable(32) %i.ac)
          to label %bb.ak unwind label %bb.ad, !noalias !331

bb.ai:                                            ; preds = %bb.ag
  %i.cz = invoke noundef nonnull align 8 ptr @_RNvYNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorNtNtCs4ZeZeX9PAiK_10serde_core2de5Error14invalid_lengthCsbNLsQi0JuJ4_5tgrep(i64 noundef 8, ptr noundef nonnull @64, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23)
          to label %bb.aj unwind label %bb.ad, !noalias !368

bb.aj:                                            ; preds = %bb.ai, %bb.af
  %.sink341.i = phi ptr [ %i.cx, %bb.af ], [ %i.cz, %bb.ai ]
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink341.i, ptr %i.da, align 8, !alias.scope !331, !noalias !332
  store i64 2, ptr %0, align 8, !alias.scope !331, !noalias !332
  br label %bb.cf

bb.ak:                                            ; preds = %bb.ah
  %i.db = load i64, ptr %i.u, align 8, !range !23, !noalias !368, !noundef !7 ; 3 uses
  %i.dc = icmp eq i64 %i.db, -1
  %i.dd = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  br i1 %i.dc, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.de = load ptr, ptr %i.dd, align 8, !noalias !368, !nonnull !7, !align !22, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !368
  br label %bb.ap

bb.am:                                            ; preds = %bb.ak
  %i.df = load i64, ptr %i.dd, align 8, !noalias !368
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !368
  %.not169.i = icmp eq i64 %i.db, 2
  br i1 %.not169.i, label %bb.ao, label %bb.an, !prof !11

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !368
  invoke fastcc void @_RINvXs4_NtCs4ZeZeX9PAiK_10serde_core2deQNtNtNtCs6MoqnCnVQOT_10serde_json5value2de15SeqDeserializerNtB6_9SeqAccess12next_elementINtNtCsf3Ta7LF998c_4core6option6OptionyEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.t, ptr nonnull align 8 dereferenceable(32) %i.ac)
          to label %bb.aq unwind label %bb.ad, !noalias !331

bb.ao:                                            ; preds = %bb.am
  %i.dg = invoke noundef nonnull align 8 ptr @_RNvYNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorNtNtCs4ZeZeX9PAiK_10serde_core2de5Error14invalid_lengthCsbNLsQi0JuJ4_5tgrep(i64 noundef 9, ptr noundef nonnull @64, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23)
          to label %bb.ap unwind label %bb.ad, !noalias !368

bb.ap:                                            ; preds = %bb.ao, %bb.al
  %.sink343.i = phi ptr [ %i.de, %bb.al ], [ %i.dg, %bb.ao ]
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink343.i, ptr %i.dh, align 8, !alias.scope !331, !noalias !332
end_hunk_2
begin_hunk_3_@_RINvNtNtCsf3Ta7LF998c_4core2io5write17default_write_fmtNtNtNtCs5Xr050g3D4S_3std2io5stdio10StdoutLockECsbNLsQi0JuJ4_5tgrep:bb.a
_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %bb.h, %bb.g, %bb.f, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbNLsQi0JuJ4_5tgrep.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.i, %bb.e, %bb.d
  %.sroa.0.0 = phi ptr [ %i.f, %bb.d ], [ null, %bb.e ], [ null, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %.sroa.0.0

bb.i:                                             ; preds = %bb.d
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @25, ptr noundef nonnull inttoptr (i64 173 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #22
          to label %bb.j unwind label %bb.b

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.l:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtNtCsgCecv3eZDcN_5alloc2io8buf_read18default_read_untilINtNtNtB4_8buffered9bufreader9BufReaderNtNtNtCs5Xr050g3D4S_3std3net3tcp9TcpStreamEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(48) %0, i8 noundef %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %.outer

.outer:                                           ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsbNLsQi0JuJ4_5tgrep.exit, %bb.a
  %.sroa.01.0.ph = phi i64 [ %i.az, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsbNLsQi0JuJ4_5tgrep.exit ], [ 0, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs5_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtNtCs5Xr050g3D4S_3std3net3tcp9TcpStreamENtNtB9_8buf_read7BufRead8fill_bufCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
  %i.i = load ptr, ptr %i.b, align 8, !noundef !7 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.outer, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECsbNLsQi0JuJ4_5tgrep.exit
  %.val = load ptr, ptr %i.c, align 8, !nonnull !7, !noundef !7 ; 7 uses
  %i.k = ptrtoint ptr %.val to i64                ; 4 uses
  %i.l = and i64 %i.k, 3
  switch i64 %i.l, label %default.unreachable [
    i64 2, label %bb.b
    i64 3, label %.split28
    i64 0, label %.split29
    i64 1, label %.split
  ], !prof !16

default.unreachable:                              ; preds = %.lr.ph
  unreachable

bb.b:                                             ; preds = %.lr.ph
  %i.m = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCsf3Ta7LF998c_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.b
  %i.n = lshr i64 %i.k, 32
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !7, !noundef !7
  %i.r = invoke noundef zeroext i1 %i.q(i32 noundef %i.o)
          to label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit unwind label %bb.h, !inline_history !0

.split28:                                         ; preds = %.lr.ph
  %i.s = lshr i64 %i.k, 32
  %i.t = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i = trunc i64 %i.s to i8
  %spec.select.i.i.i = select i1 %i.t, i8 %switch.idx.cast.i.i.i, i8 -1 ; 2 uses
  %i.u = icmp ne i8 %spec.select.i.i.i, -1
  call void @llvm.assume(i1 %i.u)
  %i.v = icmp eq i8 %spec.select.i.i.i, 35
  br i1 %i.v, label %bb.j, label %bb.i

.split29:                                         ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.x = load i8, ptr %i.w, align 8, !range !24, !noundef !7
  %i.y = icmp eq i8 %i.x, 35
  br i1 %i.y, label %.thread, label %bb.i

.split:                                           ; preds = %.lr.ph
  %i.z = getelementptr i8, ptr %.val, i64 31
  %i.aa = load i8, ptr %i.z, align 8, !range !24, !noundef !7
  %i.ab = icmp eq i8 %i.aa, 35
  br i1 %i.ab, label %bb.k, label %bb.i

._crit_edge:                                      ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECsbNLsQi0JuJ4_5tgrep.exit, %.outer
  %.lcssa = phi ptr [ %i.i, %.outer ], [ %i.bh, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECsbNLsQi0JuJ4_5tgrep.exit ] ; 3 uses
  %i.ac = load i64, ptr %i.c, align 8, !noundef !7 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ad = icmp samesign ult i64 %i.ac, 16
  br i1 %i.ad, label %.preheader.i, label %bb.c

.preheader.i:                                     ; preds = %._crit_edge
  %.not.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i, label %_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchr.exit.thread, label %.lr.ph.i

bb.c:                                             ; preds = %._crit_edge
  %i.ae = call { i64, i64 } @_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr14memchr_aligned(i8 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.lcssa, i64 noundef range(i64 0, -9223372036854775808) %i.ac) ; 2 uses
  %i.af = extractvalue { i64, i64 } %i.ae, 0
  %i.ag = extractvalue { i64, i64 } %i.ae, 1
  %i.ah = trunc nuw i64 %i.af to i1
  br i1 %i.ah, label %_RNvXs8_NtNtCsf3Ta7LF998c_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCsbNLsQi0JuJ4_5tgrep.exit, label %_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchr.exit.thread

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.d
  %.sroa.04.011.i = phi i64 [ %i.al, %bb.d ], [ 0, %.preheader.i ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.lcssa, i64 %.sroa.04.011.i
  %i.aj = load i8, ptr %i.ai, align 1, !alias.scope !407, !noundef !7
  %i.ak = icmp eq i8 %i.aj, %1
  br i1 %i.ak, label %_RNvXs8_NtNtCsf3Ta7LF998c_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCsbNLsQi0JuJ4_5tgrep.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.al = add nuw nsw i64 %.sroa.04.011.i, 1      ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.al, %i.ac
  br i1 %exitcond.not.i, label %_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchr.exit.thread, label %.lr.ph.i

_RNvXs8_NtNtCsf3Ta7LF998c_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCsbNLsQi0JuJ4_5tgrep.exit: ; preds = %.lr.ph.i, %bb.c
  %.sroa.5.0.i = phi i64 [ %i.ag, %bb.c ], [ %.sroa.04.011.i, %.lr.ph.i ] ; 2 uses
  %i.am = icmp ult i64 %.sroa.5.0.i, %i.ac
  call void @llvm.assume(i1 %i.am)
  %i.an = add nuw nsw i64 %.sroa.5.0.i, 1
  br label %_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchr.exit.thread

_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchr.exit.thread: ; preds = %bb.d, %.preheader.i, %bb.c, %_RNvXs8_NtNtCsf3Ta7LF998c_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCsbNLsQi0JuJ4_5tgrep.exit
  %i.ao = phi i1 [ true, %_RNvXs8_NtNtCsf3Ta7LF998c_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCsbNLsQi0JuJ4_5tgrep.exit ], [ false, %bb.c ], [ false, %.preheader.i ], [ false, %bb.d ]
  %.sroa.6.0 = phi i64 [ %i.an, %_RNvXs8_NtNtCsf3Ta7LF998c_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCsbNLsQi0JuJ4_5tgrep.exit ], [ %i.ac, %bb.c ], [ 0, %.preheader.i ], [ %i.ac, %bb.d ] ; 6 uses
  call void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.sroa.6.0)
  %i.ap = load i64, ptr %i.e, align 8, !alias.scope !408, !noundef !7 ; 3 uses
  %i.aq = icmp sgt i64 %i.ap, -1
  call void @llvm.assume(i1 %i.aq)
  %.not.i21 = icmp eq i64 %.sroa.6.0, 0           ; 2 uses
  br i1 %.not.i21, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsbNLsQi0JuJ4_5tgrep.exit, label %bb.e

bb.e:                                             ; preds = %_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchr.exit.thread
  %i.ar = load ptr, ptr %i.f, align 8, !alias.scope !408, !nonnull !7, !noundef !7
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ap
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.as, ptr nonnull readonly align 1 %.lcssa, i64 %.sroa.6.0, i1 false)
  %.pre.i = load i64, ptr %i.e, align 8, !alias.scope !408
  br label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsbNLsQi0JuJ4_5tgrep.exit

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsbNLsQi0JuJ4_5tgrep.exit: ; preds = %_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchr.exit.thread, %bb.e
  %i.at = phi i64 [ %.pre.i, %bb.e ], [ %i.ap, %_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchr.exit.thread ]
  %i.au = add i64 %i.at, %.sroa.6.0
  store i64 %i.au, ptr %i.e, align 8, !alias.scope !408
  %i.av = load i64, ptr %i.g, align 8, !alias.scope !409, !noundef !7
  %i.aw = add i64 %i.av, %.sroa.6.0
  %i.ax = load i64, ptr %i.h, align 8, !alias.scope !409, !noundef !7
  %i.ay = call i64 @llvm.umin.i64(i64 %i.aw, i64 %i.ax)
  store i64 %i.ay, ptr %i.g, align 8, !alias.scope !409
  %i.az = add i64 %.sroa.6.0, %.sroa.01.0.ph      ; 2 uses
  %or.cond = or i1 %i.ao, %.not.i21
  br i1 %or.cond, label %bb.f, label %.outer

bb.f:                                             ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsbNLsQi0JuJ4_5tgrep.exit
  %i.ba = inttoptr i64 %i.az to ptr
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %bb.f
  %.sroa.3.0 = phi ptr [ %.val, %bb.i ], [ %i.ba, %bb.f ]
  %.sroa.0.0 = phi i64 [ 1, %bb.i ], [ 0, %bb.f ]
  %i.bb = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.bc = insertvalue { i64, ptr } %i.bb, ptr %.sroa.3.0, 1
  ret { i64, ptr } %i.bc

bb.h:                                             ; preds = %.noexc, %bb.b
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECsbNLsQi0JuJ4_5tgrep(ptr null, ptr nonnull %.val) #24
          to label %bb.m unwind label %bb.l

_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %.noexc
  br i1 %i.r, label %.thread, label %bb.i

bb.i:                                             ; preds = %.split29, %.split28, %.split, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

.thread:                                          ; preds = %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit, %.split29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECsbNLsQi0JuJ4_5tgrep.exit

bb.j:                                             ; preds = %.split28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.be = and i64 %i.k, 1095216660480
  %i.bf = icmp ne i64 %i.be, 1095216660480
  call void @llvm.assume(i1 %i.t)
  call void @llvm.assume(i1 %i.bf)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECsbNLsQi0JuJ4_5tgrep.exit

bb.k:                                             ; preds = %.split
  %i.bg = getelementptr i8, ptr %.val, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bg) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.bg, ptr %i.d, align 8, !alias.scope !410
  store i8 3, ptr %i.a, align 8, !alias.scope !410
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECsbNLsQi0JuJ4_5tgrep.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.j, %bb.k, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs5_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtNtCs5Xr050g3D4S_3std3net3tcp9TcpStreamENtNtB9_8buf_read7BufRead8fill_bufCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
  %i.bh = load ptr, ptr %i.b, align 8, !noundef !7 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %.lr.ph, label %._crit_edge

bb.l:                                             ; preds = %bb.h
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.m:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.bd
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtNtCsgCecv3eZDcN_5alloc2io8buf_read18default_read_untilINtNtNtB4_8buffered9bufreader9BufReaderRNtNtNtCs5Xr050g3D4S_3std3net3tcp9TcpStreamEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(48) %0, i8 noundef %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %.outer

.outer:                                           ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsbNLsQi0JuJ4_5tgrep.exit, %bb.a
  %.sroa.01.0.ph = phi i64 [ %i.az, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsbNLsQi0JuJ4_5tgrep.exit ], [ 0, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs5_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreaderINtB5_9BufReaderRNtNtNtCs5Xr050g3D4S_3std3net3tcp9TcpStreamENtNtB9_8buf_read7BufRead8fill_bufCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
  %i.i = load ptr, ptr %i.b, align 8, !noundef !7 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.outer, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECsbNLsQi0JuJ4_5tgrep.exit
  %.val = load ptr, ptr %i.c, align 8, !nonnull !7, !noundef !7 ; 7 uses
  %i.k = ptrtoint ptr %.val to i64                ; 4 uses
  %i.l = and i64 %i.k, 3
  switch i64 %i.l, label %default.unreachable [
    i64 2, label %bb.b
    i64 3, label %.split28
    i64 0, label %.split29
    i64 1, label %.split
  ], !prof !16

default.unreachable:                              ; preds = %.lr.ph
  unreachable

bb.b:                                             ; preds = %.lr.ph
  %i.m = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCsf3Ta7LF998c_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.b
  %i.n = lshr i64 %i.k, 32
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !7, !noundef !7
  %i.r = invoke noundef zeroext i1 %i.q(i32 noundef %i.o)
          to label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit unwind label %bb.h, !inline_history !0

.split28:                                         ; preds = %.lr.ph
  %i.s = lshr i64 %i.k, 32
  %i.t = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i = trunc i64 %i.s to i8
  %spec.select.i.i.i = select i1 %i.t, i8 %switch.idx.cast.i.i.i, i8 -1 ; 2 uses
  %i.u = icmp ne i8 %spec.select.i.i.i, -1
  call void @llvm.assume(i1 %i.u)
  %i.v = icmp eq i8 %spec.select.i.i.i, 35
  br i1 %i.v, label %bb.j, label %bb.i

.split29:                                         ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.x = load i8, ptr %i.w, align 8, !range !24, !noundef !7
  %i.y = icmp eq i8 %i.x, 35
  br i1 %i.y, label %.thread, label %bb.i

.split:                                           ; preds = %.lr.ph
  %i.z = getelementptr i8, ptr %.val, i64 31
  %i.aa = load i8, ptr %i.z, align 8, !range !24, !noundef !7
  %i.ab = icmp eq i8 %i.aa, 35
  br i1 %i.ab, label %bb.k, label %bb.i

._crit_edge:                                      ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECsbNLsQi0JuJ4_5tgrep.exit, %.outer
  %.lcssa = phi ptr [ %i.i, %.outer ], [ %i.bh, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECsbNLsQi0JuJ4_5tgrep.exit ] ; 3 uses
  %i.ac = load i64, ptr %i.c, align 8, !noundef !7 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ad = icmp samesign ult i64 %i.ac, 16
  br i1 %i.ad, label %.preheader.i, label %bb.c

.preheader.i:                                     ; preds = %._crit_edge
  %.not.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i, label %_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchr.exit.thread, label %.lr.ph.i

bb.c:                                             ; preds = %._crit_edge
  %i.ae = call { i64, i64 } @_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr14memchr_aligned(i8 noundef %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.lcssa, i64 noundef range(i64 0, -9223372036854775808) %i.ac) ; 2 uses
  %i.af = extractvalue { i64, i64 } %i.ae, 0
  %i.ag = extractvalue { i64, i64 } %i.ae, 1
  %i.ah = trunc nuw i64 %i.af to i1
  br i1 %i.ah, label %_RNvXs8_NtNtCsf3Ta7LF998c_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCsbNLsQi0JuJ4_5tgrep.exit, label %_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchr.exit.thread

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.d
  %.sroa.04.011.i = phi i64 [ %i.al, %bb.d ], [ 0, %.preheader.i ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.lcssa, i64 %.sroa.04.011.i
  %i.aj = load i8, ptr %i.ai, align 1, !alias.scope !419, !noundef !7
  %i.ak = icmp eq i8 %i.aj, %1
  br i1 %i.ak, label %_RNvXs8_NtNtCsf3Ta7LF998c_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCsbNLsQi0JuJ4_5tgrep.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.al = add nuw nsw i64 %.sroa.04.011.i, 1      ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.al, %i.ac
  br i1 %exitcond.not.i, label %_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchr.exit.thread, label %.lr.ph.i

_RNvXs8_NtNtCsf3Ta7LF998c_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCsbNLsQi0JuJ4_5tgrep.exit: ; preds = %.lr.ph.i, %bb.c
  %.sroa.5.0.i = phi i64 [ %i.ag, %bb.c ], [ %.sroa.04.011.i, %.lr.ph.i ] ; 2 uses
  %i.am = icmp ult i64 %.sroa.5.0.i, %i.ac
  call void @llvm.assume(i1 %i.am)
  %i.an = add nuw nsw i64 %.sroa.5.0.i, 1
  br label %_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchr.exit.thread

_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchr.exit.thread: ; preds = %bb.d, %.preheader.i, %bb.c, %_RNvXs8_NtNtCsf3Ta7LF998c_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCsbNLsQi0JuJ4_5tgrep.exit
  %i.ao = phi i1 [ true, %_RNvXs8_NtNtCsf3Ta7LF998c_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCsbNLsQi0JuJ4_5tgrep.exit ], [ false, %bb.c ], [ false, %.preheader.i ], [ false, %bb.d ]
  %.sroa.6.0 = phi i64 [ %i.an, %_RNvXs8_NtNtCsf3Ta7LF998c_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexShE5indexCsbNLsQi0JuJ4_5tgrep.exit ], [ %i.ac, %bb.c ], [ 0, %.preheader.i ], [ %i.ac, %bb.d ] ; 6 uses
  call void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.sroa.6.0)
  %i.ap = load i64, ptr %i.e, align 8, !alias.scope !420, !noundef !7 ; 3 uses
  %i.aq = icmp sgt i64 %i.ap, -1
  call void @llvm.assume(i1 %i.aq)
  %.not.i21 = icmp eq i64 %.sroa.6.0, 0           ; 2 uses
  br i1 %.not.i21, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsbNLsQi0JuJ4_5tgrep.exit, label %bb.e

bb.e:                                             ; preds = %_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchr.exit.thread
  %i.ar = load ptr, ptr %i.f, align 8, !alias.scope !420, !nonnull !7, !noundef !7
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ap
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.as, ptr nonnull readonly align 1 %.lcssa, i64 %.sroa.6.0, i1 false)
  %.pre.i = load i64, ptr %i.e, align 8, !alias.scope !420
  br label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsbNLsQi0JuJ4_5tgrep.exit

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsbNLsQi0JuJ4_5tgrep.exit: ; preds = %_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchr.exit.thread, %bb.e
  %i.at = phi i64 [ %.pre.i, %bb.e ], [ %i.ap, %_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr6memchr.exit.thread ]
  %i.au = add i64 %i.at, %.sroa.6.0
  store i64 %i.au, ptr %i.e, align 8, !alias.scope !420
  %i.av = load i64, ptr %i.g, align 8, !alias.scope !421, !noundef !7
  %i.aw = add i64 %i.av, %.sroa.6.0
  %i.ax = load i64, ptr %i.h, align 8, !alias.scope !421, !noundef !7
  %i.ay = call i64 @llvm.umin.i64(i64 %i.aw, i64 %i.ax)
  store i64 %i.ay, ptr %i.g, align 8, !alias.scope !421
  %i.az = add i64 %.sroa.6.0, %.sroa.01.0.ph      ; 2 uses
  %or.cond = or i1 %i.ao, %.not.i21
  br i1 %or.cond, label %bb.f, label %.outer

bb.f:                                             ; preds = %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCsbNLsQi0JuJ4_5tgrep.exit
  %i.ba = inttoptr i64 %i.az to ptr
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %bb.f
  %.sroa.3.0 = phi ptr [ %.val, %bb.i ], [ %i.ba, %bb.f ]
  %.sroa.0.0 = phi i64 [ 1, %bb.i ], [ 0, %bb.f ]
  %i.bb = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.bc = insertvalue { i64, ptr } %i.bb, ptr %.sroa.3.0, 1
  ret { i64, ptr } %i.bc

bb.h:                                             ; preds = %.noexc, %bb.b
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECsbNLsQi0JuJ4_5tgrep(ptr null, ptr nonnull %.val) #24
          to label %bb.m unwind label %bb.l

_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %.noexc
  br i1 %i.r, label %.thread, label %bb.i

bb.i:                                             ; preds = %.split29, %.split28, %.split, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

.thread:                                          ; preds = %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit, %.split29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECsbNLsQi0JuJ4_5tgrep.exit

bb.j:                                             ; preds = %.split28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.be = and i64 %i.k, 1095216660480
  %i.bf = icmp ne i64 %i.be, 1095216660480
  call void @llvm.assume(i1 %i.t)
  call void @llvm.assume(i1 %i.bf)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECsbNLsQi0JuJ4_5tgrep.exit

bb.k:                                             ; preds = %.split
  %i.bg = getelementptr i8, ptr %.val, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bg) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.bg, ptr %i.d, align 8, !alias.scope !422
  store i8 3, ptr %i.a, align 8, !alias.scope !422
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECsbNLsQi0JuJ4_5tgrep.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultRShNtNtNtB4_2io5error5ErrorEECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.j, %bb.k, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs5_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreaderINtB5_9BufReaderRNtNtNtCs5Xr050g3D4S_3std3net3tcp9TcpStreamENtNtB9_8buf_read7BufRead8fill_bufCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
  %i.bh = load ptr, ptr %i.b, align 8, !noundef !7 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %.lr.ph, label %._crit_edge

bb.l:                                             ; preds = %bb.h
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.m:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.bd
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazy7destroyINtNtCsf3Ta7LF998c_4core4cell4CellINtNtB19_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEECsbNLsQi0JuJ4_5tgrep(ptr noundef %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !range !6, !noundef !7
  store i8 2, ptr %i.a, align 1
  %i.c = icmp eq i8 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RINvNtNtCs5Xr050g3D4S_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyINtNtCsf3Ta7LF998c_4core4cell4CellINtNtB1D_6option6OptionNtNtNtNtB6_4sync4mpmc7context7ContextEEE0ECsbNLsQi0JuJ4_5tgrep.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !435)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !436)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !437)
  %i.d = load ptr, ptr %0, align 8, !alias.scope !438, !noundef !7 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_RINvNtNtCs5Xr050g3D4S_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyINtNtCsf3Ta7LF998c_4core4cell4CellINtNtB1D_6option6OptionNtNtNtNtB6_4sync4mpmc7context7ContextEEE0ECsbNLsQi0JuJ4_5tgrep.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !439
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.d, label %_RINvNtNtCs5Xr050g3D4S_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyINtNtCsf3Ta7LF998c_4core4cell4CellINtNtB1D_6option6OptionNtNtNtNtB6_4sync4mpmc7context7ContextEEE0ECsbNLsQi0JuJ4_5tgrep.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtNtCs5Xr050g3D4S_3std4sync4mpmc7context5InnerE9drop_slowCsaNF60lbdjjq_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #21
          to label %_RINvNtNtCs5Xr050g3D4S_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyINtNtCsf3Ta7LF998c_4core4cell4CellINtNtB1D_6option6OptionNtNtNtNtB6_4sync4mpmc7context7ContextEEE0ECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke fastcc void @_RNvXNvNtNtCs5Xr050g3D4S_3std3sys12thread_local20abort_on_dtor_unwindNtB2_15DtorUnwindGuardNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop() #27
          to label %.noexc1.i unwind label %bb.f

.noexc1.i:                                        ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtNtCs5Xr050g3D4S_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyINtNtCsf3Ta7LF998c_4core4cell4CellINtNtB1D_6option6OptionNtNtNtNtB6_4sync4mpmc7context7ContextEEE0ECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazy7destroyNtNtCs4ciboHeBKjP_15crossbeam_epoch9collector11LocalHandleECsbNLsQi0JuJ4_5tgrep(ptr nofree noundef captures(none) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !range !6, !noundef !7
  store i8 2, ptr %i.a, align 1
  %i.c = icmp eq i8 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RINvNtNtCs5Xr050g3D4S_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyNtNtCs4ciboHeBKjP_15crossbeam_epoch9collector11LocalHandleE0ECsbNLsQi0JuJ4_5tgrep.exit

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load ptr, ptr %0, align 8, !noundef !7 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 2072
  %i.e = load i64, ptr %i.d, align 8, !noundef !7
  %i.f = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 2080 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !7 ; 2 uses
  %i.h = add i64 %i.g, -1
  store i64 %i.h, ptr %i.f, align 8
  %i.i = icmp eq i64 %i.e, 0
  %i.j = icmp eq i64 %i.g, 1
  %or.cond.i.i.i.i.i = and i1 %i.i, %i.j
  br i1 %or.cond.i.i.i.i.i, label %bb.c, label %_RINvNtNtCs5Xr050g3D4S_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyNtNtCs4ciboHeBKjP_15crossbeam_epoch9collector11LocalHandleE0ECsbNLsQi0JuJ4_5tgrep.exit, !prof !10

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMs6_NtCs4ciboHeBKjP_15crossbeam_epoch8internalNtB5_5Local8finalize(ptr noundef nonnull align 128 %.val.i.i)
          to label %_RINvNtNtCs5Xr050g3D4S_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyNtNtCs4ciboHeBKjP_15crossbeam_epoch9collector11LocalHandleE0ECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke fastcc void @_RNvXNvNtNtCs5Xr050g3D4S_3std3sys12thread_local20abort_on_dtor_unwindNtB2_15DtorUnwindGuardNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop() #27
          to label %.noexc1.i unwind label %bb.e

.noexc1.i:                                        ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtNtCs5Xr050g3D4S_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyNtNtCs4ciboHeBKjP_15crossbeam_epoch9collector11LocalHandleE0ECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvNtNtNtNtCs5Xr050g3D4S_3std3sys2io11is_terminal6isatty11is_terminalNtNtNtBa_2io5stdio6StdoutECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef i32 @isatty(i32 noundef 1) #26
  %i.b = icmp ne i32 %i.a, 0
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNvXs7_NtCs6MoqnCnVQOT_10serde_json2deINtB8_9SeqAccesspENtNtCs4ZeZeX9PAiK_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read7StrReadECsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !nonnull !7, !align !22, !noundef !7 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !464)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !465, !noalias !466, !noundef !7 ; 4 uses
  %.promoted.i = load i64, ptr %i.f, align 8, !alias.scope !464, !noalias !467 ; 2 uses
  %i.i = icmp ult i64 %.promoted.i, %i.h
  br i1 %i.i, label %.lr.ph.i, label %.loopexit22

.lr.ph.i:                                         ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !465, !noalias !466, !nonnull !7, !noundef !7 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.l = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.o, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !468)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !469)
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !noalias !470, !noundef !7 ; 2 uses
  switch i8 %i.n, label %bb.e [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 93, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.o = add i64 %i.l, 1                          ; 3 uses
  store i64 %i.o, ptr %i.f, align 8, !alias.scope !471, !noalias !467
  %exitcond.not.i = icmp eq i64 %i.o, %i.h
  br i1 %exitcond.not.i, label %.loopexit22, label %bb.b

.loopexit22:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 2, ptr %i.d, align 8
  %i.p = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.e, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.q, align 8
  br label %bb.m

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.r, align 1
  br label %bb.m

bb.e:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.t = load i8, ptr %i.s, align 8, !range !9, !noundef !7
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = icmp eq i8 %i.n, 44
  br i1 %i.v, label %bb.h, label %bb.j, !prof !20

bb.g:                                             ; preds = %bb.e
  store i8 0, ptr %i.s, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.w, align 1
  br label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.x = add i64 %i.l, 1                          ; 3 uses
  store i64 %i.x, ptr %i.f, align 8, !alias.scope !472
  tail call void @llvm.experimental.noalias.scope.decl(metadata !473)
  %i.y = icmp ult i64 %i.x, %i.h
  br i1 %i.y, label %.lr.ph.i7, label %.loopexit
end_hunk_3
begin_hunk_4_@_RINvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB5_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeQINtNtB7_2de12DeserializerNtNtB7_4read7StrReadEECsbNLsQi0JuJ4_5tgrep:bb.a
  br i1 %.not.i36, label %bb.u, label %bb.aa, !prof !27

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !730), !noalias !678
  tail call void @llvm.experimental.noalias.scope.decl(metadata !731), !noalias !678
  %exitcond.not.i.1 = icmp eq i64 %i.ch, %umax.i
  br i1 %exitcond.not.i.1, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !noalias !732, !noundef !7
  %i.ck = add i64 %i.az, 3                        ; 3 uses
  store i64 %i.ck, ptr %i.at, align 8, !alias.scope !733, !noalias !729
  %.not.i36.1 = icmp eq i8 %i.cj, 108
  br i1 %.not.i36.1, label %bb.w, label %bb.aa, !prof !27

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !734), !noalias !678
  tail call void @llvm.experimental.noalias.scope.decl(metadata !735), !noalias !678
  %exitcond.not.i.2 = icmp eq i64 %i.ck, %umax.i
  br i1 %exitcond.not.i.2, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !noalias !736, !noundef !7
  %i.cn = add i64 %i.az, 4                        ; 3 uses
  store i64 %i.cn, ptr %i.at, align 8, !alias.scope !737, !noalias !729
  %.not.i36.2 = icmp eq i8 %i.cm, 115
  br i1 %.not.i36.2, label %bb.y, label %bb.aa, !prof !27

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !738), !noalias !678
  tail call void @llvm.experimental.noalias.scope.decl(metadata !739), !noalias !678
  %exitcond.not.i.3 = icmp eq i64 %i.cn, %umax.i
  br i1 %exitcond.not.i.3, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.co = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1, !noalias !740, !noundef !7
  %i.cq = add i64 %i.az, 5
  store i64 %i.cq, ptr %i.at, align 8, !alias.scope !741, !noalias !729
  %.not.i36.3 = icmp eq i8 %i.cp, 101
  br i1 %.not.i36.3, label %.thread, label %bb.aa, !prof !27

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i: ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !742
  store i64 5, ptr %i.p, align 8, !noalias !742
  %i.cr = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.p), !noalias !743
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !742
  br label %bb.aj

bb.aa:                                            ; preds = %bb.z, %bb.x, %bb.v, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !742
  store i64 9, ptr %i.o, align 8, !noalias !742
  %i.cs = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.o), !noalias !743
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !742
  br label %bb.aj

bb.ab:                                            ; preds = %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsbNLsQi0JuJ4_5tgrep.exit
  %i.ct = add i64 %i.az, 1
  store i64 %i.ct, ptr %i.at, align 8, !alias.scope !744, !noalias !678
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !688
  call fastcc void @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.ar, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext false), !noalias !678, !inline_history !529
  %i.cu = load i64, ptr %i.ar, align 8, !range !23, !noalias !688, !noundef !7 ; 2 uses
  %i.cv = icmp eq i64 %i.cu, -1
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  br i1 %i.cv, label %bb.ak, label %bb.al

bb.ac:                                            ; preds = %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsbNLsQi0JuJ4_5tgrep.exit
  %i.cx = add i64 %i.az, 1
  store i64 %i.cx, ptr %i.at, align 8, !alias.scope !745, !noalias !678
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.cy, align 8, !alias.scope !679, !noalias !678
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !688
  call void @_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ap, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1), !noalias !678, !inline_history !529
  %i.cz = load i64, ptr %i.ap, align 8, !range !15, !noalias !688, !noundef !7 ; 2 uses
  %i.da = icmp eq i64 %i.cz, 2
  %i.db = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !noalias !688 ; 3 uses
  br i1 %i.da, label %bb.aq, label %bb.ar

bb.ad:                                            ; preds = %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsbNLsQi0JuJ4_5tgrep.exit
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.de = load i8, ptr %i.dd, align 8, !alias.scope !679, !noalias !678, !noundef !7
  %i.df = add i8 %i.de, -1                        ; 2 uses
  store i8 %i.df, ptr %i.dd, align 8, !alias.scope !679, !noalias !678
  %i.dg = icmp eq i8 %i.df, 0
  br i1 %i.dg, label %bb.ay, label %bb.az, !prof !11

bb.ae:                                            ; preds = %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsbNLsQi0JuJ4_5tgrep.exit
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.di = load i8, ptr %i.dh, align 8, !alias.scope !679, !noalias !678, !noundef !7
  %i.dj = add i8 %i.di, -1                        ; 2 uses
  store i8 %i.dj, ptr %i.dh, align 8, !alias.scope !679, !noalias !678
  %i.dk = icmp eq i8 %i.dj, 0
  br i1 %i.dk, label %bb.bw, label %bb.bx, !prof !11

bb.af:                                            ; preds = %bb.k, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i51
  %.sroa.0.1.i50.ph = phi ptr [ %i.bq, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i51 ], [ %i.br, %bb.k ]
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i50.ph, ptr %i.dl, align 8, !alias.scope !678, !noalias !679
  store i8 -1, ptr %0, align 8, !alias.scope !678, !noalias !679
  br label %bb.ah

bb.ag:                                            ; preds = %.thread167, %.thread164
  %.sroa.24254.0 = phi i64 [ %.sroa.24254.4, %.thread167 ], [ %.sroa.24254.3, %.thread164 ] ; 2 uses
  %.sroa.22.0 = phi i8 [ %.sroa.22.2, %.thread167 ], [ %.sroa.22.1, %.thread164 ]
  %.sroa.0.0 = phi i8 [ %.sroa.0.4, %.thread167 ], [ %.sroa.0.3, %.thread164 ] ; 2 uses
  %i.dm = phi <2 x i64> [ %i.jy, %.thread167 ], [ %i.gk, %.thread164 ]
  %i.dn = icmp eq i8 %.sroa.0.0, -1
  br i1 %i.dn, label %._crit_edge, label %.thread, !prof !746

._crit_edge:                                      ; preds = %bb.ag
  %i.do = inttoptr i64 %.sroa.24254.0 to ptr
  br label %bb.du

bb.ah:                                            ; preds = %bb.dv, %bb.bw, %bb.ay, %bb.aq, %bb.ak, %bb.aj, %bb.ai, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24)
  br label %_RINvXs5_NtCs6MoqnCnVQOT_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB8_5value2deNtB2q_5ValueNtB1j_11Deserialize11deserialize12ValueVisitorECsbNLsQi0JuJ4_5tgrep.exit

bb.ai:                                            ; preds = %bb.r, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i43
  %.sroa.0.1.i42.ph = phi ptr [ %i.cc, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i43 ], [ %i.cd, %bb.r ]
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i42.ph, ptr %i.dp, align 8, !alias.scope !678, !noalias !679
  store i8 -1, ptr %0, align 8, !alias.scope !678, !noalias !679
  br label %bb.ah

bb.aj:                                            ; preds = %bb.aa, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i
  %.sroa.0.1.i.ph = phi ptr [ %i.cr, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i ], [ %i.cs, %bb.aa ]
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph, ptr %i.dq, align 8, !alias.scope !678, !noalias !679
  store i8 -1, ptr %0, align 8, !alias.scope !678, !noalias !679
  br label %bb.ah

bb.ak:                                            ; preds = %bb.ab
  %i.dr = load ptr, ptr %i.cw, align 8, !noalias !688, !nonnull !7, !align !22, !noundef !7
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dr, ptr %i.ds, align 8, !alias.scope !678, !noalias !679
  store i8 -1, ptr %0, align 8, !alias.scope !678, !noalias !679
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !688
  br label %bb.ah

bb.al:                                            ; preds = %bb.ab
  %.sroa.4.0.copyload = load i64, ptr %i.cw, align 8, !noalias !688 ; 3 uses
  %i.dt = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %.sroa.4.0.copyload, i64 0 ; 3 uses
  switch i64 %i.cu, label %default.unreachable338 [
    i64 0, label %bb.am
    i64 1, label %_RINvMs2_NtCs6MoqnCnVQOT_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserialize12ValueVisitorECsbNLsQi0JuJ4_5tgrep.exit33
    i64 2, label %bb.ap
  ]

default.unreachable338:                           ; preds = %bb.dw, %bb.al
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.du = bitcast i64 %.sroa.4.0.copyload to double
  %i.dv = tail call double @llvm.fabs.f64(double %i.du)
  %i.dw = fcmp ueq double %i.dv, +inf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !747
  br i1 %i.dw, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx4.sroa_idx.i.i26 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.5.sroa.4.0.copyload9.i.i27 = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx4.sroa_idx.i.i26, align 8, !alias.scope !748, !noalias !749
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx4.sroa_idx.i.i28 = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.dx = load <2 x i64>, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx4.sroa_idx.i.i28, align 8, !alias.scope !748, !noalias !749
  br label %_RINvXNvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.i18

bb.ao:                                            ; preds = %bb.am
  store i8 0, ptr %i.q, align 8, !noalias !747
  tail call void @llvm.experimental.noalias.scope.decl(metadata !750), !noalias !678
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.q), !noalias !751
  br label %_RINvXNvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.i18

_RINvXNvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.i18: ; preds = %bb.ao, %bb.an
  %.sroa.5.sroa.4.0.i.i20 = phi i64 [ %.sroa.5.sroa.4.0.copyload9.i.i27, %bb.an ], [ 2, %bb.ao ]
  %.sroa.0.0.i.i22 = phi i8 [ 0, %bb.an ], [ 2, %bb.ao ]
  %i.dy = phi <2 x i64> [ %i.dx, %bb.an ], [ %i.dt, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !747
  br label %_RINvMs2_NtCs6MoqnCnVQOT_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserialize12ValueVisitorECsbNLsQi0JuJ4_5tgrep.exit33

bb.ap:                                            ; preds = %bb.al
  %.lobit.i.i13 = lshr i64 %.sroa.4.0.copyload, 63
  br label %_RINvMs2_NtCs6MoqnCnVQOT_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserialize12ValueVisitorECsbNLsQi0JuJ4_5tgrep.exit33

_RINvMs2_NtCs6MoqnCnVQOT_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserialize12ValueVisitorECsbNLsQi0JuJ4_5tgrep.exit33: ; preds = %bb.al, %_RINvXNvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.i18, %bb.ap
  %.sroa.24254.1 = phi i64 [ %.sroa.5.sroa.4.0.i.i20, %_RINvXNvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.i18 ], [ %.lobit.i.i13, %bb.ap ], [ 0, %bb.al ]
  %.sroa.0.1 = phi i8 [ %.sroa.0.0.i.i22, %_RINvXNvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.i18 ], [ 2, %bb.ap ], [ 2, %bb.al ]
  %i.dz = phi <2 x i64> [ %i.dy, %_RINvXNvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.i18 ], [ %i.dt, %bb.ap ], [ %i.dt, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !688
  br label %.thread

bb.aq:                                            ; preds = %bb.ac
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dc, ptr %i.ea, align 8, !alias.scope !678, !noalias !679
  store i8 -1, ptr %0, align 8, !alias.scope !678, !noalias !679
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !688
  br label %bb.ah

bb.ar:                                            ; preds = %bb.ac
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dc) ]
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !688 ; 8 uses
  %i.eb = trunc nuw i64 %i.cz to i1
  br i1 %i.eb, label %bb.as, label %bb.av

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !752
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.sroa.4.0.copyload.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !752
  %i.ec = load i64, ptr %i.b, align 8, !range !8, !noalias !752, !noundef !7
  %i.ed = trunc nuw i64 %i.ec to i1
  %i.ee = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ef = load i64, ptr %i.ee, align 8, !range !28, !noalias !752, !noundef !7 ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.ed, label %bb.at, label %bb.au, !prof !11

bb.at:                                            ; preds = %bb.as
  %i.eh = load i64, ptr %i.eg, align 8, !noalias !752
  call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.ef, i64 %i.eh) #22, !noalias !752
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.ei = load ptr, ptr %i.eg, align 8, !noalias !752, !nonnull !7, !noundef !7 ; 2 uses
  %i.ej = icmp ule i64 %.sroa.4.0.copyload.i, %i.ef
  call void @llvm.assume(i1 %i.ej), !noalias !678
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !752
  %.not.i245 = icmp eq i64 %.sroa.4.0.copyload.i, 0
  br i1 %.not.i245, label %_RINvXNvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit, label %_RINvXNvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.sink.split

bb.av:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !753
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.4.0.copyload.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !753
  %i.ek = load i64, ptr %i.a, align 8, !range !8, !noalias !753, !noundef !7
  %i.el = trunc nuw i64 %i.ek to i1
  %i.em = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.en = load i64, ptr %i.em, align 8, !range !28, !noalias !753, !noundef !7 ; 4 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.el, label %bb.aw, label %bb.ax, !prof !11

bb.aw:                                            ; preds = %bb.av
  %i.ep = load i64, ptr %i.eo, align 8, !noalias !753
  call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.en, i64 %i.ep) #22, !noalias !753
  unreachable

bb.ax:                                            ; preds = %bb.av
  %i.eq = load ptr, ptr %i.eo, align 8, !noalias !753, !nonnull !7, !noundef !7 ; 2 uses
  %i.er = icmp ule i64 %.sroa.4.0.copyload.i, %i.en
  call void @llvm.assume(i1 %i.er), !noalias !678
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !753
  %.not.i.i = icmp eq i64 %.sroa.4.0.copyload.i, 0
  br i1 %.not.i.i, label %_RINvXNvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit, label %_RINvXNvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.sink.split

_RINvXNvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.sink.split: ; preds = %bb.ax, %bb.au
  %.sink = phi ptr [ %i.ei, %bb.au ], [ %i.eq, %bb.ax ] ; 2 uses
  %.sroa.24254.2.ph = phi i64 [ %i.ef, %bb.au ], [ %i.en, %bb.ax ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sink, ptr nonnull readonly align 1 %i.dc, i64 %.sroa.4.0.copyload.i, i1 false), !noalias !678
  br label %_RINvXNvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit

_RINvXNvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %_RINvXNvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.sink.split, %bb.ax, %bb.au
  %.sroa.37.2.in = phi ptr [ %i.eq, %bb.ax ], [ %i.ei, %bb.au ], [ %.sink, %_RINvXNvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.sink.split ]
  %.sroa.24254.2 = phi i64 [ %i.en, %bb.ax ], [ %i.ef, %bb.au ], [ %.sroa.24254.2.ph, %_RINvXNvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_strNtNtBa_5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.sink.split ]
  %.sroa.37.2 = ptrtoint ptr %.sroa.37.2.in to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !688
  %i.es = insertelement <2 x i64> poison, i64 %.sroa.37.2, i64 0
  %i.et = insertelement <2 x i64> %i.es, i64 %.sroa.4.0.copyload.i, i64 1
  br label %.thread

bb.ay:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !688
  store i64 24, ptr %i.ao, align 8, !noalias !688
  %i.eu = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ao), !noalias !678, !inline_history !529
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !688
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.eu, ptr %i.ev, align 8, !alias.scope !678, !noalias !679
  store i8 -1, ptr %0, align 8, !alias.scope !678, !noalias !679
  br label %bb.ah

bb.az:                                            ; preds = %bb.ad
  %i.ew = add i64 %i.az, 1
  store i64 %i.ew, ptr %i.at, align 8, !alias.scope !754, !noalias !678
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr %1, ptr %i.t, align 8, !noalias !755
  %i.ex = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i8 1, ptr %i.ex, align 8, !noalias !755
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !755
  store i64 0, ptr %i.s, align 8, !noalias !755
  %i.ey = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.ey, align 8, !noalias !755
  %i.ez = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 3 uses
  store i64 0, ptr %i.ez, align 8, !noalias !755
  %i.fa = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %.sroa.499.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.sroa.5100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.6101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.3.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %.sroa.3.i6.sroa.4.0..sroa.3.0..sroa_idx2.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.3.i6.sroa.5.0..sroa.3.0..sroa_idx2.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  br label %bb.ba

bb.ba:                                            ; preds = %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs6MoqnCnVQOT_10serde_json5value5ValueE8push_mutCsbNLsQi0JuJ4_5tgrep.exit.i, %bb.az
  call void @llvm.experimental.noalias.scope.decl(metadata !756)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !757
  invoke fastcc void @_RINvNvXs7_NtCs6MoqnCnVQOT_10serde_json2deINtB8_9SeqAccesspENtNtCs4ZeZeX9PAiK_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read7StrReadECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.t)
          to label %.noexc65 unwind label %bb.bf, !inline_history !607

.noexc65:                                         ; preds = %bb.ba
  %i.fb = load i8, ptr %i.d, align 8, !range !9, !noalias !757, !noundef !7
  %i.fc = trunc nuw i8 %i.fb to i1
  br i1 %i.fc, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %.noexc65
  %i.fd = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8, !noalias !757, !nonnull !7, !align !22, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !757
  br label %bb.bg

bb.bc:                                            ; preds = %.noexc65
  %i.ff = load i8, ptr %i.fa, align 1, !range !9, !noalias !757, !noundef !7
  %i.fg = trunc nuw i8 %i.ff to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !757
  br i1 %i.fg, label %bb.bd, label %bb.bn

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !757
  %i.fh = load ptr, ptr %i.t, align 8, !alias.scope !756, !noalias !758, !nonnull !7, !align !22, !noundef !7
  invoke fastcc void @_RINvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB5_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeQINtNtB7_2de12DeserializerNtNtB7_4read7StrReadEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.fh) #27
          to label %.noexc66 unwind label %bb.bf, !inline_history !607

.noexc66:                                         ; preds = %bb.bd
  %i.fi = load i8, ptr %i.c, align 8, !range !12, !noalias !757, !noundef !7 ; 2 uses
  %i.fj = icmp eq i8 %i.fi, -1
  br i1 %i.fj, label %bb.be, label %bb.bj

bb.be:                                            ; preds = %.noexc66
  %i.fk = load ptr, ptr %.sroa.5100.0..sroa_idx, align 8, !noalias !757, !nonnull !7, !align !22, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !757
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bd, %bb.ba
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %.body.i7

.body.i7:                                         ; preds = %bb.bl, %bb.bf
  %eh.lpad-body.i8 = phi { ptr, i32 } [ %i.fl, %bb.bf ], [ %i.fr, %bb.bl ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.s) #24
          to label %common.resume unwind label %bb.bo, !noalias !759, !inline_history !608

bb.bg:                                            ; preds = %bb.bb, %bb.be
  %.sroa.10.0.ph = phi ptr [ %i.fk, %bb.be ], [ %i.fe, %bb.bb ]
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit.i unwind label %bb.bh, !noalias !759, !inline_history !608

bb.bh:                                            ; preds = %bb.bg
  %i.fm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %common.resume unwind label %bb.bi, !noalias !759, !inline_history !608

bb.bi:                                            ; preds = %bb.bh
  %i.fn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !noalias !759, !inline_history !608
  unreachable

common.resume:                                    ; preds = %bb.bp, %bb.dm, %.body.i, %.body.i7, %bb.bh
  %common.resume.op = phi { ptr, i32 } [ %.pn.i2, %.body.i ], [ %i.fm, %bb.bh ], [ %eh.lpad-body.i8, %.body.i7 ], [ %i.jp, %bb.dm ], [ %i.ga, %bb.bp ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %bb.bg
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s), !noalias !759, !inline_history !608
  br label %_RINvXNvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_seqINtNtBa_2de9SeqAccessNtNtBa_4read7StrReadEECsbNLsQi0JuJ4_5tgrep.exit

bb.bj:                                            ; preds = %.noexc66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !755
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.0..sroa_idx2.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.499.0..sroa_idx, i64 7, i1 false)
  %.sroa.5100.0.copyload = load ptr, ptr %.sroa.5100.0..sroa_idx, align 8, !noalias !757
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.i6.sroa.5.0..sroa.3.0..sroa_idx2.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6101.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !757
  store i8 %i.fi, ptr %i.r, align 8, !noalias !755
  store ptr %.sroa.5100.0.copyload, ptr %.sroa.3.i6.sroa.4.0..sroa.3.0..sroa_idx2.i.sroa_idx, align 8, !noalias !755
  %i.fo = load i64, ptr %i.ez, align 8, !alias.scope !760, !noalias !761, !noundef !7 ; 3 uses
  %i.fp = load i64, ptr %i.s, align 8, !range !19, !alias.scope !760, !noalias !761, !noundef !7
  %i.fq = icmp eq i64 %i.fo, %i.fp
  br i1 %i.fq, label %bb.bk, label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs6MoqnCnVQOT_10serde_json5value5ValueE8push_mutCsbNLsQi0JuJ4_5tgrep.exit.i

bb.bk:                                            ; preds = %bb.bj
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs6MoqnCnVQOT_10serde_json5value5ValueE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs6MoqnCnVQOT_10serde_json5value5ValueE8push_mutCsbNLsQi0JuJ4_5tgrep.exit.i unwind label %bb.bl, !noalias !762, !inline_history !608

bb.bl:                                            ; preds = %bb.bk
  %i.fr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.r) #24
          to label %.body.i7 unwind label %bb.bm, !noalias !759, !inline_history !608

bb.bm:                                            ; preds = %bb.bl
  %i.fs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !noalias !759, !inline_history !608
  unreachable

_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs6MoqnCnVQOT_10serde_json5value5ValueE8push_mutCsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %bb.bk, %bb.bj
  %i.ft = load ptr, ptr %i.ey, align 8, !alias.scope !760, !noalias !761, !nonnull !7, !noundef !7
  %i.fu = getelementptr inbounds nuw [32 x i8], ptr %i.ft, i64 %i.fo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fu, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 32, i1 false), !noalias !759
  %i.fv = add i64 %i.fo, 1
  store i64 %i.fv, ptr %i.ez, align 8, !alias.scope !760, !noalias !761
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !755
  br label %bb.ba

bb.bn:                                            ; preds = %bb.bc
  %.sroa.083.0.copyload = load ptr, ptr %i.s, align 8, !noalias !755
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(16) %i.ey, i64 16, i1 false), !noalias !763
  br label %_RINvXNvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_seqINtNtBa_2de9SeqAccessNtNtBa_4read7StrReadEECsbNLsQi0JuJ4_5tgrep.exit

bb.bo:                                            ; preds = %.body.i7
  %i.fw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !noalias !759, !inline_history !608
  unreachable

_RINvXNvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_seqINtNtBa_2de9SeqAccessNtNtBa_4read7StrReadEECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit.i, %bb.bn
  %.sroa.7.0 = phi ptr [ %.sroa.10.0.ph, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit.i ], [ %.sroa.083.0.copyload, %bb.bn ]
  %.sroa.073.0 = phi i8 [ -1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit.i ], [ 4, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !755
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.fx = load i8, ptr %i.dd, align 8, !alias.scope !679, !noalias !678, !noundef !7
  %i.fy = add i8 %i.fx, 1
  store i8 %i.fy, ptr %i.dd, align 8, !alias.scope !679, !noalias !678
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !688
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !688
  store i8 %.sroa.073.0, ptr %i.am, align 8, !noalias !688
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !688
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, i64 16, i1 false), !noalias !688
  %i.fz = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1)
          to label %bb.bq unwind label %bb.bp, !noalias !678, !inline_history !529 ; 4 uses

bb.bp:                                            ; preds = %_RINvXNvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_seqINtNtBa_2de9SeqAccessNtNtBa_4read7StrReadEECsbNLsQi0JuJ4_5tgrep.exit
  %i.ga = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtNtB11_5error5ErrorEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(32) %i.am) #24
          to label %common.resume unwind label %bb.bu, !noalias !678, !inline_history !529

bb.bq:                                            ; preds = %_RINvXNvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_seqINtNtBa_2de9SeqAccessNtNtBa_4read7StrReadEECsbNLsQi0JuJ4_5tgrep.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.an, ptr noundef nonnull align 8 dereferenceable(32) %i.am, i64 32, i1 false), !noalias !688
  %i.gb = getelementptr inbounds nuw i8, ptr %i.an, i64 32 ; 2 uses
  store ptr %i.fz, ptr %i.gb, align 8, !noalias !688
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !688
  %i.gc = load i8, ptr %i.an, align 8, !range !12, !noalias !688, !noundef !7 ; 2 uses
  %i.gd = icmp eq i8 %i.gc, -1
  br i1 %i.gd, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %.not31.i = icmp eq ptr %i.fz, null
  br i1 %.not31.i, label %.thread227, label %bb.bt

.thread227:                                       ; preds = %bb.br
  %.sroa.22.0..sroa_idx248 = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %.sroa.22.0.copyload249 = load i8, ptr %.sroa.22.0..sroa_idx248, align 1, !noalias !688
  %.sroa.24.0..sroa_idx252 = getelementptr inbounds nuw i8, ptr %i.an, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.24, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.24.0..sroa_idx252, i64 6, i1 false), !noalias !688
  %.sroa.24254.0..sroa_idx255 = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.24254.0.copyload256 = load i64, ptr %.sroa.24254.0..sroa_idx255, align 8, !noalias !688
  %.sroa.37.0..sroa_idx259 = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ge = load <2 x i64>, ptr %.sroa.37.0..sroa_idx259, align 8, !noalias !688
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  br label %.thread164

bb.bs:                                            ; preds = %bb.bq
  %i.gf = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.gg = load ptr, ptr %i.gf, align 8, !noalias !688, !nonnull !7, !align !22, !noundef !7
  %i.gh = ptrtoint ptr %i.gg to i64               ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  %.not170 = icmp eq ptr %i.fz, null
  br i1 %.not170, label %.thread164, label %bb.bv

bb.bt:                                            ; preds = %bb.br
  %i.gi = ptrtoint ptr %i.fz to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(32) %i.an), !noalias !678, !inline_history !529
  br label %.thread164

bb.bu:                                            ; preds = %bb.dm, %bb.bp
  %i.gj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !noalias !678, !inline_history !529
  unreachable

.thread164:                                       ; preds = %.thread227, %bb.bt, %bb.bv, %bb.bs
  %.sroa.24254.3 = phi i64 [ %i.gh, %bb.bs ], [ %i.gh, %bb.bv ], [ %.sroa.24254.0.copyload256, %.thread227 ], [ %i.gi, %bb.bt ]
  %.sroa.22.1 = phi i8 [ undef, %bb.bs ], [ undef, %bb.bv ], [ %.sroa.22.0.copyload249, %.thread227 ], [ undef, %bb.bt ]
  %.sroa.0.3 = phi i8 [ -1, %bb.bs ], [ -1, %bb.bv ], [ %i.gc, %.thread227 ], [ -1, %bb.bt ]
  %i.gk = phi <2 x i64> [ undef, %bb.bs ], [ undef, %bb.bv ], [ %i.ge, %.thread227 ], [ undef, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !688
  br label %bb.ag

bb.bv:                                            ; preds = %bb.bs
  call void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.gb), !noalias !678, !inline_history !529
  br label %.thread164

bb.bw:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !688
  store i64 24, ptr %i.al, align 8, !noalias !688
  %i.gl = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.al), !noalias !678, !inline_history !529
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !688
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.gl, ptr %i.gm, align 8, !alias.scope !678, !noalias !679
  store i8 -1, ptr %0, align 8, !alias.scope !678, !noalias !679
  br label %bb.ah

bb.bx:                                            ; preds = %bb.ae
  %i.gn = add i64 %i.az, 1
  store i64 %i.gn, ptr %i.at, align 8, !alias.scope !764, !noalias !678
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !688
  tail call void @llvm.experimental.noalias.scope.decl(metadata !765)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store ptr %1, ptr %i.af, align 8, !noalias !766
  %i.go = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i8 1, ptr %i.go, align 8, !noalias !766
  tail call void @llvm.experimental.noalias.scope.decl(metadata !767), !noalias !678
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !768
  call fastcc void @_RINvNvXs9_NtCs6MoqnCnVQOT_10serde_json2deINtB8_9MapAccesspENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess13next_key_seed12has_next_keyNtNtBa_4read7StrReadECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.x, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.af), !noalias !769, !inline_history !620
  %i.gp = load i8, ptr %i.x, align 8, !range !9, !noalias !768, !noundef !7
  %i.gq = trunc nuw i8 %i.gp to i1
  br i1 %i.gq, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.gr = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.gs = load ptr, ptr %i.gr, align 8, !noalias !768, !nonnull !7, !align !22, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !768
  br label %bb.cj

bb.bz:                                            ; preds = %bb.bx
  %i.gt = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.gu = load i8, ptr %i.gt, align 1, !range !9, !noalias !768, !noundef !7
  %i.gv = trunc nuw i8 %i.gu to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !768
  br i1 %i.gv, label %bb.ca, label %bb.cl

bb.ca:                                            ; preds = %bb.bz
  %i.gw = load ptr, ptr %i.af, align 8, !alias.scope !767, !noalias !770, !nonnull !7, !align !22, !noundef !7 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !771), !noalias !678
  tail call void @llvm.experimental.noalias.scope.decl(metadata !772), !noalias !678
  tail call void @llvm.experimental.noalias.scope.decl(metadata !773), !noalias !678
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 24
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gw, i64 40 ; 2 uses
  %i.gz = load i64, ptr %i.gy, align 8, !alias.scope !774, !noalias !775, !noundef !7
  %i.ha = add i64 %i.gz, 1
  store i64 %i.ha, ptr %i.gy, align 8, !alias.scope !774, !noalias !775
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  store i64 0, ptr %i.hb, align 8, !alias.scope !776, !noalias !775
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !777
  call void @_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gx, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.gw), !noalias !775, !inline_history !620
  %i.hc = load i64, ptr %i.w, align 8, !range !15, !noalias !777, !noundef !7 ; 2 uses
  %i.hd = icmp eq i64 %i.hc, 2
  %i.he = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.hf = load ptr, ptr %i.he, align 8, !noalias !777, !nonnull !7, !noundef !7 ; 2 uses
  br i1 %i.hd, label %bb.ci, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.4.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !777 ; 8 uses
  %i.hg = trunc nuw i64 %i.hc to i1
  br i1 %i.hg, label %bb.cc, label %bb.cf

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !778
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !779, !inline_history !620
  %i.hh = load i64, ptr %i.v, align 8, !range !8, !noalias !778, !noundef !7
  %i.hi = trunc nuw i64 %i.hh to i1
  %i.hj = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.hk = load i64, ptr %i.hj, align 8, !range !28, !noalias !778, !noundef !7 ; 4 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  br i1 %i.hi, label %bb.cd, label %bb.ce, !prof !11

bb.cd:                                            ; preds = %bb.cc
  %i.hm = load i64, ptr %i.hl, align 8, !noalias !778
  call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.hk, i64 %i.hm) #22, !noalias !779, !inline_history !620
  unreachable

bb.ce:                                            ; preds = %bb.cc
  %i.hn = load ptr, ptr %i.hl, align 8, !noalias !778, !nonnull !7, !noundef !7 ; 2 uses
  %i.ho = icmp ule i64 %.sroa.4.0.copyload.i.i.i.i.i, %i.hk
  call void @llvm.assume(i1 %i.ho), !noalias !678
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !778
  %.not.i.i.i.i.i.i = icmp eq i64 %.sroa.4.0.copyload.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ck, label %_RINvXsl_NtNtCs6MoqnCnVQOT_10serde_json5value2deNtB6_13KeyClassifierNtNtCs4ZeZeX9PAiK_10serde_core2de7Visitor9visit_strNtNtBa_5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.sink.split.i.i.i.i.i

bb.cf:                                            ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !780
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, i64 noundef %.sroa.4.0.copyload.i.i.i.i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !781, !inline_history !620
  %i.hp = load i64, ptr %i.u, align 8, !range !8, !noalias !780, !noundef !7
  %i.hq = trunc nuw i64 %i.hp to i1
  %i.hr = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.hs = load i64, ptr %i.hr, align 8, !range !28, !noalias !780, !noundef !7 ; 4 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  br i1 %i.hq, label %bb.cg, label %bb.ch, !prof !11

bb.cg:                                            ; preds = %bb.cf
  %i.hu = load i64, ptr %i.ht, align 8, !noalias !780
  call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.hs, i64 %i.hu) #22, !noalias !781, !inline_history !620
  unreachable

bb.ch:                                            ; preds = %bb.cf
  %i.hv = load ptr, ptr %i.ht, align 8, !noalias !780, !nonnull !7, !noundef !7 ; 2 uses
  %i.hw = icmp ule i64 %.sroa.4.0.copyload.i.i.i.i.i, %i.hs
  call void @llvm.assume(i1 %i.hw), !noalias !678
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !780
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.sroa.4.0.copyload.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ck, label %_RINvXsl_NtNtCs6MoqnCnVQOT_10serde_json5value2deNtB6_13KeyClassifierNtNtCs4ZeZeX9PAiK_10serde_core2de7Visitor9visit_strNtNtBa_5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.sink.split.i.i.i.i.i

_RINvXsl_NtNtCs6MoqnCnVQOT_10serde_json5value2deNtB6_13KeyClassifierNtNtCs4ZeZeX9PAiK_10serde_core2de7Visitor9visit_strNtNtBa_5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.sink.split.i.i.i.i.i: ; preds = %bb.ch, %bb.ce
  %.sink6.i.i.i.i.i = phi ptr [ %i.hn, %bb.ce ], [ %i.hv, %bb.ch ] ; 2 uses
  %.sink5.ph.i.i.i.i.i = phi i64 [ %i.hk, %bb.ce ], [ %i.hs, %bb.ch ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sink6.i.i.i.i.i, ptr nonnull readonly align 1 %i.hf, i64 %.sroa.4.0.copyload.i.i.i.i.i, i1 false), !noalias !775
  br label %bb.ck

bb.ci:                                            ; preds = %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !777
  br label %bb.cj

bb.cj:                                            ; preds = %bb.by, %bb.ci
  %.sroa.876.0.ph = phi ptr [ %i.hf, %bb.ci ], [ %i.gs, %bb.by ]
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %.sroa.876.0.ph, ptr %i.hx, align 8, !alias.scope !765, !noalias !782
  store i8 -1, ptr %i.ak, align 8, !alias.scope !765, !noalias !782
  br label %_RINvXNvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_mapINtNtBa_2de9MapAccessNtNtBa_4read7StrReadEECsbNLsQi0JuJ4_5tgrep.exit

bb.ck:                                            ; preds = %_RINvXsl_NtNtCs6MoqnCnVQOT_10serde_json5value2deNtB6_13KeyClassifierNtNtCs4ZeZeX9PAiK_10serde_core2de7Visitor9visit_strNtNtBa_5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.sink.split.i.i.i.i.i, %bb.ch, %bb.ce
  %.sroa.7.0.ph.i.i = phi ptr [ %.sink6.i.i.i.i.i, %_RINvXsl_NtNtCs6MoqnCnVQOT_10serde_json5value2deNtB6_13KeyClassifierNtNtCs4ZeZeX9PAiK_10serde_core2de7Visitor9visit_strNtNtBa_5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.sink.split.i.i.i.i.i ], [ %i.hn, %bb.ce ], [ %i.hv, %bb.ch ]
  %.sroa.0.0.ph.i.i = phi i64 [ %.sink5.ph.i.i.i.i.i, %_RINvXsl_NtNtCs6MoqnCnVQOT_10serde_json5value2deNtB6_13KeyClassifierNtNtCs4ZeZeX9PAiK_10serde_core2de7Visitor9visit_strNtNtBa_5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.sink.split.i.i.i.i.i ], [ %i.hk, %bb.ce ], [ %i.hs, %bb.ch ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !777
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !766
  store ptr null, ptr %i.ae, align 8, !noalias !766
  %.sroa.519.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store i64 0, ptr %.sroa.519.0..sroa_idx.i, align 8, !noalias !766
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !766
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !766
  store i64 %.sroa.0.0.ph.i.i, ptr %i.ac, align 8, !noalias !766
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %.sroa.7.0.ph.i.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !766
  %.sroa.5.i.sroa.5.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 %.sroa.4.0.copyload.i.i.i.i.i, ptr %.sroa.5.i.sroa.5.0..sroa.5.0..sroa_idx.i.sroa_idx, align 8, !noalias !766
  invoke fastcc void @_RINvXs9_NtCs6MoqnCnVQOT_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB8_5value5ValueEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.ak, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.af)
          to label %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_valueNtNtB8_5value5ValueECsbNLsQi0JuJ4_5tgrep.exit.i unwind label %bb.cm, !noalias !678, !inline_history !641

_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_valueNtNtB8_5value5ValueECsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %bb.ck
  %i.hy = load i8, ptr %i.ak, align 8, !range !12, !alias.scope !765, !noalias !782, !noundef !7
  %i.hz = icmp eq i8 %i.hy, -1
  br i1 %i.hz, label %bb.cn, label %bb.cq

bb.cl:                                            ; preds = %bb.bz
  store i8 5, ptr %i.ak, align 8, !alias.scope !765, !noalias !782
  %.sroa.410.sroa.3.0..sroa.410.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr null, ptr %.sroa.410.sroa.3.0..sroa.410.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !765, !noalias !782
  %.sroa.410.sroa.5.0..sroa.410.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store i64 0, ptr %.sroa.410.sroa.5.0..sroa.410.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !765, !noalias !782
  br label %_RINvXNvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_mapINtNtBa_2de9MapAccessNtNtBa_4read7StrReadEECsbNLsQi0JuJ4_5tgrep.exit

bb.cm:                                            ; preds = %bb.ck
  %i.ia = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ac) #24
          to label %.body.i unwind label %bb.dl, !noalias !783, !inline_history !620

bb.cn:                                            ; preds = %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_valueNtNtB8_5value5ValueECsbNLsQi0JuJ4_5tgrep.exit.i
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i.i unwind label %bb.co, !noalias !783, !inline_history !620

bb.co:                                            ; preds = %bb.cn
  %i.ib = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %.body.i unwind label %bb.cp, !noalias !783, !inline_history !620

bb.cp:                                            ; preds = %bb.co
  %i.ic = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !noalias !783, !inline_history !620
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i.i: ; preds = %bb.cn
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit.i unwind label %.loopexit.split-lp, !noalias !783, !inline_history !620

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !766
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !766
  br label %bb.dk

bb.cq:                                            ; preds = %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_valueNtNtB8_5value5ValueECsbNLsQi0JuJ4_5tgrep.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %i.ak, i64 32, i1 false), !noalias !782
  invoke void @_RNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCs6MoqnCnVQOT_10serde_json5value5ValueE6insertCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ad, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ac, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.ab)
          to label %bb.cr unwind label %.loopexit.split-lp, !noalias !783, !inline_history !620

.body.i:                                          ; preds = %.loopexit, %.loopexit.split-lp, %bb.dd, %bb.de, %bb.co, %bb.cm
  %.pn.i2 = phi { ptr, i32 } [ %i.ia, %bb.cm ], [ %i.ib, %bb.co ], [ %lpad.phi176, %bb.dd ], [ %i.jf, %bb.de ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCs6MoqnCnVQOT_10serde_json5value5ValueENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %common.resume unwind label %bb.dl, !noalias !783, !inline_history !620

.loopexit:                                        ; preds = %bb.dh, %bb.dj, %bb.ct, %bb.cw
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp:                               ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i.i, %bb.cq, %bb.cs, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit.i62
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !766
  %i.id = load i8, ptr %i.ad, align 8, !range !12, !alias.scope !784, !noalias !766, !noundef !7
  %i.ie = icmp eq i8 %i.id, -1
  br i1 %i.ie, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ad)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit.i unwind label %.loopexit.split-lp, !noalias !783, !inline_history !620

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %bb.cs, %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !766
  %i.if = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %.sroa.1086.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.3.0..sroa_idx2.i58 = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %.sroa.3.i55.sroa.4.0..sroa.3.0..sroa_idx2.i58.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %.sroa.36.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.36.i.sroa.4.0..sroa.36.0..sroa_idx7.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  br label %bb.ct

bb.ct:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit25.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEECsbNLsQi0JuJ4_5tgrep.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !785)
  call void @llvm.experimental.noalias.scope.decl(metadata !786), !noalias !783
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !787
  invoke fastcc void @_RINvNvXs9_NtCs6MoqnCnVQOT_10serde_json2deINtB8_9MapAccesspENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess13next_key_seed12has_next_keyNtNtBa_4read7StrReadECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.af)
          to label %.noexc unwind label %.loopexit, !inline_history !650

.noexc:                                           ; preds = %bb.ct
  %i.ig = load i8, ptr %i.h, align 8, !range !9, !noalias !787, !noundef !7
  %i.ih = trunc nuw i8 %i.ig to i1
  br i1 %i.ih, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %.noexc
  %i.ii = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ij = load ptr, ptr %i.ii, align 8, !noalias !787, !nonnull !7, !align !22, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !787
  br label %.loopexit178

bb.cv:                                            ; preds = %.noexc
  %i.ik = load i8, ptr %i.if, align 1, !range !9, !noalias !787, !noundef !7
  %i.il = trunc nuw i8 %i.ik to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !787
  br i1 %i.il, label %bb.cw, label %.loopexit179

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !787
  %i.im = load ptr, ptr %i.af, align 8, !alias.scope !788, !noalias !789, !nonnull !7, !align !22, !noundef !7 ; 7 uses
  invoke void @_RINvXs6_NtNtCs4ZeZeX9PAiK_10serde_core2de5implsNtNtCsgCecv3eZDcN_5alloc6string6StringNtB8_11Deserialize11deserializeINtNtCs6MoqnCnVQOT_10serde_json2de6MapKeyNtNtB1V_4read7StrReadEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.im)
          to label %.noexc63 unwind label %.loopexit, !inline_history !650

.noexc63:                                         ; preds = %bb.cw
  %i.in = load i64, ptr %i.g, align 8, !range !14, !noalias !787, !noundef !7 ; 2 uses
  %i.io = icmp eq i64 %i.in, -1
  %i.ip = load ptr, ptr %.sroa.1086.0..sroa_idx, align 8, !noalias !790 ; 2 uses
  br i1 %i.io, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %.noexc63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !787
  br label %.loopexit178

bb.cy:                                            ; preds = %.noexc63
  %.sroa.14.0.copyload = load i64, ptr %.sroa.14.0..sroa_idx, align 8, !noalias !790
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !787
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !791
  store i64 %i.in, ptr %i.j, align 8, !noalias !791
  store ptr %i.ip, ptr %.sroa.3.0..sroa_idx2.i58, align 8, !noalias !791
  store i64 %.sroa.14.0.copyload, ptr %.sroa.3.i55.sroa.4.0..sroa.3.0..sroa_idx2.i58.sroa_idx, align 8, !noalias !791
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !791
  call void @llvm.experimental.noalias.scope.decl(metadata !792), !noalias !783
  call void @llvm.experimental.noalias.scope.decl(metadata !793), !noalias !783
  %i.iq = getelementptr inbounds nuw i8, ptr %i.im, i64 40 ; 3 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.im, i64 32
  %i.is = load i64, ptr %i.ir, align 8, !alias.scope !794, !noalias !795, !noundef !7 ; 2 uses
  %.promoted.i.i.i = load i64, ptr %i.iq, align 8, !alias.scope !796, !noalias !797 ; 2 uses
  %i.it = icmp ult i64 %.promoted.i.i.i, %i.is
  br i1 %i.it, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.cy
  %i.iu = getelementptr inbounds nuw i8, ptr %i.im, i64 24
  %i.iv = load ptr, ptr %i.iu, align 8, !alias.scope !794, !noalias !795, !nonnull !7, !noundef !7
  br label %bb.cz

bb.cz:                                            ; preds = %bb.da, %.lr.ph.i.i.i
  %i.iw = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.iz, %bb.da ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !798), !noalias !783
  call void @llvm.experimental.noalias.scope.decl(metadata !799), !noalias !783
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iv, i64 %i.iw
  %i.iy = load i8, ptr %i.ix, align 1, !noalias !800, !noundef !7
  switch i8 %i.iy, label %bb.db [
    i8 32, label %bb.da
    i8 10, label %bb.da
    i8 9, label %bb.da
    i8 13, label %bb.da
    i8 58, label %bb.dc
  ], !prof !29

bb.da:                                            ; preds = %bb.cz, %bb.cz, %bb.cz, %bb.cz
  %i.iz = add i64 %i.iw, 1                        ; 3 uses
  store i64 %i.iz, ptr %i.iq, align 8, !alias.scope !801, !noalias !797
  %exitcond.not.i.i.i = icmp eq i64 %i.iz, %i.is
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i, label %bb.cz

.loopexit.i.i:                                    ; preds = %bb.cy, %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !802
  store i64 3, ptr %i.e, align 8, !noalias !802
  %i.ja = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.im, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e)
          to label %.noexc9.i unwind label %.loopexit.split-lp173, !noalias !791, !inline_history !650

end_hunk_4
begin_hunk_5_@_RINvXs5_NtCs6MoqnCnVQOT_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCsbNLsQi0JuJ4_5tgrep5serves_1__NtB2t_10ServerInfoNtB1j_11Deserialize11deserialize9___VisitorEB2v_:bb.a
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !noalias !1922, !nonnull !7, !align !22, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !1922
  br label %_RINvXs0_NvXNvNtCsbNLsQi0JuJ4_5tgrep5serves_1__NtBb_10ServerInfoNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB11_7Visitor9visit_seqINtNtCs6MoqnCnVQOT_10serde_json2de9SeqAccessNtNtB2F_4read7StrReadEEBd_.exit

bb.o:                                             ; preds = %bb.m
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  %i.cf = load i8, ptr %i.ce, align 1, !range !9, !noalias !1922, !noundef !7
  %i.cg = trunc nuw i8 %i.cf to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !1922
  br i1 %i.cg, label %bb.p, label %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9SeqAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9SeqAccess12next_elementtECsbNLsQi0JuJ4_5tgrep.exit.i

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !1922
  %i.ch = load ptr, ptr %i.ag, align 8, !alias.scope !1924, !noalias !1925, !nonnull !7, !align !22, !noundef !7
  call fastcc void @_RINvXs3_NtCs4ZeZeX9PAiK_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDatatENtB6_15DeserializeSeed11deserializeQINtNtCs6MoqnCnVQOT_10serde_json2de12DeserializerNtNtB20_4read7StrReadEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.ac, ptr noalias nofree noundef align 8 dereferenceable(56) %i.ch) #27, !noalias !1926
  %i.ci = load i16, ptr %i.ac, align 8, !range !32, !noalias !1922, !noundef !7
  %i.cj = trunc nuw i16 %i.ci to i1
  br i1 %i.cj, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !noalias !1922, !nonnull !7, !align !22, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !1922
  br label %_RINvXs0_NvXNvNtCsbNLsQi0JuJ4_5tgrep5serves_1__NtBb_10ServerInfoNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB11_7Visitor9visit_seqINtNtCs6MoqnCnVQOT_10serde_json2de9SeqAccessNtNtB2F_4read7StrReadEEBd_.exit

bb.r:                                             ; preds = %bb.j
  %i.cm = tail call noundef nonnull align 8 ptr @_RNvYNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorNtNtCs4ZeZeX9PAiK_10serde_core2de5Error14invalid_lengthCsbNLsQi0JuJ4_5tgrep(i64 noundef 0, ptr noundef nonnull @60, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23), !noalias !1927
  br label %_RINvXs0_NvXNvNtCsbNLsQi0JuJ4_5tgrep5serves_1__NtBb_10ServerInfoNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB11_7Visitor9visit_seqINtNtCs6MoqnCnVQOT_10serde_json2de9SeqAccessNtNtB2F_4read7StrReadEEBd_.exit

bb.s:                                             ; preds = %bb.p
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ac, i64 2
  %i.co = load i16, ptr %i.cn, align 2, !noalias !1922, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !1922
  %.sroa.629.8.insert.ext = zext i16 %i.co to i64
  %i.cp = inttoptr i64 %.sroa.629.8.insert.ext to ptr
  br label %_RINvXs0_NvXNvNtCsbNLsQi0JuJ4_5tgrep5serves_1__NtBb_10ServerInfoNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB11_7Visitor9visit_seqINtNtCs6MoqnCnVQOT_10serde_json2de9SeqAccessNtNtB2F_4read7StrReadEEBd_.exit

_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9SeqAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9SeqAccess12next_elementtECsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %bb.o
  %i.cq = tail call noundef nonnull align 8 ptr @_RNvYNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorNtNtCs4ZeZeX9PAiK_10serde_core2de5Error14invalid_lengthCsbNLsQi0JuJ4_5tgrep(i64 noundef 1, ptr noundef nonnull @60, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23), !noalias !1927
  br label %_RINvXs0_NvXNvNtCsbNLsQi0JuJ4_5tgrep5serves_1__NtBb_10ServerInfoNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB11_7Visitor9visit_seqINtNtCs6MoqnCnVQOT_10serde_json2de9SeqAccessNtNtB2F_4read7StrReadEEBd_.exit

_RINvXs0_NvXNvNtCsbNLsQi0JuJ4_5tgrep5serves_1__NtBb_10ServerInfoNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB11_7Visitor9visit_seqINtNtCs6MoqnCnVQOT_10serde_json2de9SeqAccessNtNtB2F_4read7StrReadEEBd_.exit: ; preds = %bb.n, %bb.q, %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9SeqAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9SeqAccess12next_elementtECsbNLsQi0JuJ4_5tgrep.exit.i, %bb.i, %bb.l, %bb.r, %bb.s
  %.sroa.629.0 = phi ptr [ %i.cp, %bb.s ], [ %i.bp, %bb.i ], [ %i.cm, %bb.r ], [ %i.bx, %bb.l ], [ %i.cq, %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9SeqAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9SeqAccess12next_elementtECsbNLsQi0JuJ4_5tgrep.exit.i ], [ %i.cl, %bb.q ], [ %i.cd, %bb.n ]
  %.sroa.5.0 = phi i32 [ %i.bz, %bb.s ], [ undef, %bb.i ], [ undef, %bb.r ], [ undef, %bb.l ], [ undef, %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9SeqAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9SeqAccess12next_elementtECsbNLsQi0JuJ4_5tgrep.exit.i ], [ undef, %bb.q ], [ undef, %bb.n ]
  %i.cr = phi i1 [ true, %bb.s ], [ false, %bb.i ], [ false, %bb.r ], [ false, %bb.l ], [ false, %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9SeqAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9SeqAccess12next_elementtECsbNLsQi0JuJ4_5tgrep.exit.i ], [ false, %bb.q ], [ false, %bb.n ]
  %.sink37.i = phi i32 [ 0, %bb.s ], [ 1, %bb.i ], [ 1, %bb.r ], [ 1, %bb.l ], [ 1, %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9SeqAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9SeqAccess12next_elementtECsbNLsQi0JuJ4_5tgrep.exit.i ], [ 1, %bb.q ], [ 1, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.cs = load i8, ptr %i.bb, align 8, !noundef !7
  %i.ct = add i8 %i.cs, 1
  store i8 %i.ct, ptr %i.bb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  store i32 %.sink37.i, ptr %i.ak, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  store i32 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.629.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  store ptr %.sroa.629.0, ptr %.sroa.629.0..sroa_idx, align 8
  %i.cu = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(56) %1)
          to label %bb.w unwind label %bb.u       ; 4 uses

bb.t:                                             ; preds = %bb.ac, %bb.g
  %.sink = phi ptr [ %i.dl, %bb.ac ], [ %i.bj, %bb.g ]
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.cv, align 8
  br label %bb.ec

bb.u:                                             ; preds = %_RINvXs0_NvXNvNtCsbNLsQi0JuJ4_5tgrep5serves_1__NtBb_10ServerInfoNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB11_7Visitor9visit_seqINtNtCs6MoqnCnVQOT_10serde_json2de9SeqAccessNtNtB2F_4read7StrReadEEBd_.exit
  %i.cw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.cr, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbNLsQi0JuJ4_5tgrep5serve10ServerInfoNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorEEB11_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %.sroa.629.0..sroa_idx)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbNLsQi0JuJ4_5tgrep5serve10ServerInfoNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorEEB11_.exit unwind label %bb.z

bb.w:                                             ; preds = %_RINvXs0_NvXNvNtCsbNLsQi0JuJ4_5tgrep5serves_1__NtBb_10ServerInfoNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB11_7Visitor9visit_seqINtNtCs6MoqnCnVQOT_10serde_json2de9SeqAccessNtNtB2F_4read7StrReadEEBd_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i64 16, i1 false)
  %i.cx = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  store ptr %i.cu, ptr %i.cx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  %i.cy = load i32, ptr %i.al, align 8, !range !13, !noundef !7
  %i.cz = trunc nuw i32 %i.cy to i1
  br i1 %i.cz, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.not21 = icmp eq ptr %i.cu, null
  br i1 %.not21, label %.split, label %.split.thread, !prof !1928

bb.y:                                             ; preds = %bb.w
  %i.da = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !nonnull !7, !align !22, !noundef !7 ; 2 uses
  %.not70 = icmp eq ptr %i.cu, null
  br i1 %.not70, label %.split.thread, label %bb.aa, !prof !1928

bb.z:                                             ; preds = %bb.dv, %bb.v
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25
  unreachable

.split.thread:                                    ; preds = %bb.aa, %bb.y, %bb.x
  %.sroa.12.042.ph = phi ptr [ %i.cu, %bb.x ], [ %i.db, %bb.y ], [ %i.db, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br label %bb.ea

.split:                                           ; preds = %bb.x
  %i.dd = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.de = load i32, ptr %i.dd, align 4, !noundef !7
  %i.df = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.dg = load i16, ptr %i.df, align 8, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br label %bb.eb

bb.aa:                                            ; preds = %bb.y
  call void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cx)
  br label %.split.thread

.thread65:                                        ; preds = %bb.dy, %bb.dz, %bb.dx
  %.sroa.12.256.ph = phi ptr [ %i.mj, %bb.dy ], [ %i.mj, %bb.dz ], [ %i.md, %bb.dx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br label %bb.ea

bb.ab:                                            ; preds = %bb.dx
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.di = load i32, ptr %i.dh, align 4, !noundef !7
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.dk = load i16, ptr %i.dj, align 8, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br label %bb.eb

bb.ac:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  store i64 24, ptr %i.aj, align 8
  %i.dl = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %bb.t

bb.ad:                                            ; preds = %bb.f
  %i.dm = add i64 %i.au, 1
  store i64 %i.dm, ptr %i.ao, align 8, !alias.scope !1929
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store ptr %1, ptr %i.ab, align 8, !noalias !1930
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i8 1, ptr %i.dn, align 8, !noalias !1930
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !1931
  call fastcc void @_RINvNvXs9_NtCs6MoqnCnVQOT_10serde_json2deINtB8_9MapAccesspENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess13next_key_seed12has_next_keyNtNtBa_4read7StrReadECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.w, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ab), !noalias !1932
  %i.do = load i8, ptr %i.w, align 8, !range !9, !noalias !1931, !noundef !7
  %i.dp = trunc nuw i8 %i.do to i1
  br i1 %i.dp, label %._crit_edge.i, label %.lr.ph.i22

.lr.ph.i22:                                       ; preds = %bb.ad
  %i.dq = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %i.dr = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ds = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.z, i64 2
  %i.du = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  br label %bb.ae

._crit_edge.i:                                    ; preds = %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_valueNtNtB18_11ignored_any10IgnoredAnyECsbNLsQi0JuJ4_5tgrep.exit.i, %bb.ad
  %i.dw = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !noalias !1933, !nonnull !7, !align !22, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !1933
  br label %_RINvXs0_NvXNvNtCsbNLsQi0JuJ4_5tgrep5serves_1__NtBb_10ServerInfoNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB11_7Visitor9visit_mapINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB2F_4read7StrReadEEBd_.exit

bb.ae:                                            ; preds = %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_valueNtNtB18_11ignored_any10IgnoredAnyECsbNLsQi0JuJ4_5tgrep.exit.i, %.lr.ph.i22
  %.sroa.04.0306.i = phi i32 [ 0, %.lr.ph.i22 ], [ %.sroa.04.1.i, %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_valueNtNtB18_11ignored_any10IgnoredAnyECsbNLsQi0JuJ4_5tgrep.exit.i ] ; 5 uses
  %.sroa.4.0305.i = phi i32 [ undef, %.lr.ph.i22 ], [ %.sroa.4.1.i, %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_valueNtNtB18_11ignored_any10IgnoredAnyECsbNLsQi0JuJ4_5tgrep.exit.i ] ; 4 uses
  %.sroa.09.0304.i = phi i16 [ 0, %.lr.ph.i22 ], [ %.sroa.09.1.i, %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_valueNtNtB18_11ignored_any10IgnoredAnyECsbNLsQi0JuJ4_5tgrep.exit.i ] ; 5 uses
  %.sroa.411.0303.i = phi i16 [ undef, %.lr.ph.i22 ], [ %.sroa.411.1.i, %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_valueNtNtB18_11ignored_any10IgnoredAnyECsbNLsQi0JuJ4_5tgrep.exit.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1934)
  call void @llvm.experimental.noalias.scope.decl(metadata !1935)
  %i.dy = load i8, ptr %i.dq, align 1, !range !9, !noalias !1933, !noundef !7
  %i.dz = trunc nuw i8 %i.dy to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !1933
  br i1 %i.dz, label %bb.af, label %bb.ao

bb.af:                                            ; preds = %bb.ae
  %i.ea = load ptr, ptr %i.ab, align 8, !alias.scope !1936, !noalias !1937, !nonnull !7, !align !22, !noundef !7 ; 35 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1938)
  call void @llvm.experimental.noalias.scope.decl(metadata !1939)
  call void @llvm.experimental.noalias.scope.decl(metadata !1940)
  call void @llvm.experimental.noalias.scope.decl(metadata !1941)
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 24 ; 8 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 40 ; 38 uses
  %i.ed = load i64, ptr %i.ec, align 8, !alias.scope !1942, !noalias !1943, !noundef !7
  %i.ee = add i64 %i.ed, 1
  store i64 %i.ee, ptr %i.ec, align 8, !alias.scope !1942, !noalias !1943
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 16 ; 6 uses
  store i64 0, ptr %i.ef, align 8, !alias.scope !1944, !noalias !1943
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !1945
  call void @_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.v, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.eb, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ea), !noalias !1943
  %i.eg = load i64, ptr %i.v, align 8, !range !15, !noalias !1945, !noundef !7 ; 2 uses
  %i.eh = icmp eq i64 %i.eg, 2
  %i.ei = load ptr, ptr %i.dr, align 8, !noalias !1945, !nonnull !7, !noundef !7 ; 7 uses
  br i1 %i.eh, label %bb.an, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.sroa.4.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !1945 ; 2 uses
  %i.ej = trunc nuw i64 %i.eg to i1
  br i1 %i.ej, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, label %bb.ar [
    i64 3, label %bb.ai
    i64 4, label %bb.aj
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.ek = load i16, ptr %i.ei, align 1
  %i.el = xor i16 %i.ek, 26992
  %i.em = getelementptr i8, ptr %i.ei, i64 2
  %i.en = load i8, ptr %i.em, align 1
  %i.eo = zext i8 %i.en to i16
  %i.ep = xor i16 %i.eo, 100
  %i.eq = or i16 %i.el, %i.ep
  %i.er = icmp ne i16 %i.eq, 0
  %i.es = zext i1 %i.er to i32
  %i.et = icmp eq i32 %i.es, 0
  br i1 %i.et, label %bb.ap, label %bb.ar

bb.aj:                                            ; preds = %bb.ah
  %i.eu = load i32, ptr %i.ei, align 1
  %i.ev = icmp ne i32 %i.eu, 1953656688
  %i.ew = zext i1 %i.ev to i32
  %i.ex = icmp eq i32 %i.ew, 0
  br i1 %i.ex, label %bb.aq, label %bb.ar

bb.ak:                                            ; preds = %bb.ag
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, label %bb.ar [
    i64 3, label %bb.al
    i64 4, label %bb.am
  ]

bb.al:                                            ; preds = %bb.ak
  %i.ey = load i16, ptr %i.ei, align 1
  %i.ez = xor i16 %i.ey, 26992
  %i.fa = getelementptr i8, ptr %i.ei, i64 2
  %i.fb = load i8, ptr %i.fa, align 1
  %i.fc = zext i8 %i.fb to i16
  %i.fd = xor i16 %i.fc, 100
  %i.fe = or i16 %i.ez, %i.fd
  %i.ff = icmp ne i16 %i.fe, 0
  %i.fg = zext i1 %i.ff to i32
  %i.fh = icmp eq i32 %i.fg, 0
  br i1 %i.fh, label %bb.ap, label %bb.ar

bb.am:                                            ; preds = %bb.ak
  %i.fi = load i32, ptr %i.ei, align 1
  %i.fj = icmp ne i32 %i.fi, 1953656688
  %i.fk = zext i1 %i.fj to i32
  %i.fl = icmp eq i32 %i.fk, 0
  br i1 %i.fl, label %bb.aq, label %bb.ar

bb.an:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1945
  br label %_RINvXs0_NvXNvNtCsbNLsQi0JuJ4_5tgrep5serves_1__NtBb_10ServerInfoNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB11_7Visitor9visit_mapINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB2F_4read7StrReadEEBd_.exit

bb.ao:                                            ; preds = %bb.ae
  %i.fm = trunc nuw i32 %.sroa.04.0306.i to i1
  br i1 %i.fm, label %bb.dp, label %bb.dm

bb.ap:                                            ; preds = %bb.al, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1945
  %i.fn = icmp eq i32 %.sroa.04.0306.i, 1
  br i1 %i.fn, label %bb.de, label %bb.da, !prof !11

bb.aq:                                            ; preds = %bb.am, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1945
  %i.fo = icmp eq i16 %.sroa.09.0304.i, 1
  br i1 %i.fo, label %bb.dk, label %bb.dg, !prof !11

bb.ar:                                            ; preds = %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1945
  call void @llvm.experimental.noalias.scope.decl(metadata !1946)
  call void @llvm.experimental.noalias.scope.decl(metadata !1947)
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ea, i64 32 ; 3 uses
  %i.fq = load i64, ptr %i.fp, align 8, !alias.scope !1948, !noalias !1949, !noundef !7 ; 4 uses
  %.promoted.i.i.i.i.i = load i64, ptr %i.ec, align 8, !alias.scope !1950, !noalias !1951 ; 2 uses
  %i.fr = icmp ult i64 %.promoted.i.i.i.i.i, %i.fq
  br i1 %i.fr, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ar
  %i.fs = load ptr, ptr %i.eb, align 8, !alias.scope !1948, !noalias !1949, !nonnull !7, !noundef !7 ; 2 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.at, %.lr.ph.i.i.i.i.i
  %i.ft = phi i64 [ %.promoted.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.fw, %bb.at ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1952)
  call void @llvm.experimental.noalias.scope.decl(metadata !1953)
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.ft
  %i.fv = load i8, ptr %i.fu, align 1, !noalias !1954, !noundef !7
  switch i8 %i.fv, label %bb.au [
    i8 32, label %bb.at
    i8 10, label %bb.at
    i8 9, label %bb.at
    i8 13, label %bb.at
    i8 58, label %bb.av
  ], !prof !29

bb.at:                                            ; preds = %bb.as, %bb.as, %bb.as, %bb.as
  %i.fw = add i64 %i.ft, 1                        ; 3 uses
  store i64 %i.fw, ptr %i.ec, align 8, !alias.scope !1955, !noalias !1951
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.fw, %i.fq
  br i1 %exitcond.not.i.i.i.i.i, label %.loopexit.i.i.i.i, label %bb.as

.loopexit.i.i.i.i:                                ; preds = %bb.ar, %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !1956
  store i64 3, ptr %i.t, align 8, !noalias !1956
  %i.fx = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ea, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.t), !noalias !1957
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1956
  br label %_RINvXs0_NvXNvNtCsbNLsQi0JuJ4_5tgrep5serves_1__NtBb_10ServerInfoNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB11_7Visitor9visit_mapINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB2F_4read7StrReadEEBd_.exit

bb.au:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !1956
  store i64 6, ptr %i.u, align 8, !noalias !1956
  %i.fy = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ea, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.u), !noalias !1957
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1956
  br label %_RINvXs0_NvXNvNtCsbNLsQi0JuJ4_5tgrep5serves_1__NtBb_10ServerInfoNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB11_7Visitor9visit_mapINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB2F_4read7StrReadEEBd_.exit

bb.av:                                            ; preds = %bb.as
  %i.fz = add i64 %i.ft, 1                        ; 3 uses
  store i64 %i.fz, ptr %i.ec, align 8, !alias.scope !1958, !noalias !1957
  call void @llvm.experimental.noalias.scope.decl(metadata !1959)
  call void @llvm.experimental.noalias.scope.decl(metadata !1960)
  call void @llvm.experimental.noalias.scope.decl(metadata !1961)
  call void @llvm.experimental.noalias.scope.decl(metadata !1962)
  store i64 0, ptr %i.ef, align 8, !alias.scope !1963, !noalias !1957
  %i.ga = icmp ult i64 %i.fz, %i.fq
  br i1 %i.ga, label %.lr.ph.i.lr.ph.i.i.i.i.i.i.i, label %.loopexit130.i.i.i.i.i.i.i

.lr.ph.i.lr.ph.i.i.i.i.i.i.i:                     ; preds = %bb.av
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8 ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.cw, %.lr.ph.i.lr.ph.i.i.i.i.i.i.i
  %i.gc = phi ptr [ %i.fs, %.lr.ph.i.lr.ph.i.i.i.i.i.i.i ], [ %i.kd, %bb.cw ] ; 11 uses
  %.promoted.i179.i.i.i.i.i.i.i = phi i64 [ %i.fz, %.lr.ph.i.lr.ph.i.i.i.i.i.i.i ], [ %.promoted.i.i.i.i.i.i.i.i, %bb.cw ]
  %i.gd = phi i64 [ %i.fq, %.lr.ph.i.lr.ph.i.i.i.i.i.i.i ], [ %i.kc, %bb.cw ] ; 7 uses
  %.sroa.7.0178.i.i.i.i.i.i.i = phi i8 [ undef, %.lr.ph.i.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.027.2163.i.i.i.i.i.i.i, %bb.cw ] ; 2 uses
  %.sroa.039.0177.i.i.i.i.i.i.i = phi i1 [ false, %.lr.ph.i.lr.ph.i.i.i.i.i.i.i ], [ true, %bb.cw ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1964)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.ax, %.lr.ph.i.i.i.i.i.i.i.i
  %i.ge = phi i64 [ %.promoted.i179.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.gh, %bb.ax ] ; 17 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.ge
  %i.gg = load i8, ptr %i.gf, align 1, !noalias !1965, !noundef !7 ; 3 uses
  switch i8 %i.gg, label %bb.ay [
    i8 32, label %bb.ax
    i8 10, label %bb.ax
    i8 9, label %bb.ax
    i8 13, label %bb.ax
    i8 110, label %bb.az
    i8 116, label %bb.bf
    i8 102, label %bb.bl
    i8 45, label %bb.bt
    i8 34, label %bb.bu
    i8 91, label %bb.bv
    i8 123, label %bb.bv
  ]

bb.ax:                                            ; preds = %bb.aw, %bb.aw, %bb.aw, %bb.aw
  %i.gh = add i64 %i.ge, 1                        ; 3 uses
  store i64 %i.gh, ptr %i.ec, align 8, !alias.scope !1966, !noalias !1967
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.gh, %i.gd
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %.loopexit130.i.i.i.i.i.i.i, label %bb.aw

.loopexit130.i.i.i.i.i.i.i:                       ; preds = %bb.av, %bb.cw, %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1968
  store i64 5, ptr %i.s, align 8, !noalias !1968
  %i.gi = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ea, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.s), !noalias !1957
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1968
  br label %_RINvXs0_NvXNvNtCsbNLsQi0JuJ4_5tgrep5serves_1__NtBb_10ServerInfoNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB11_7Visitor9visit_mapINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB2F_4read7StrReadEEBd_.exit

bb.ay:                                            ; preds = %bb.aw
  %i.gj = add i8 %i.gg, -48
  %or.cond.i.i.i.i.i.i.i = icmp ult i8 %i.gj, 10
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.bz, label %bb.by, !prof !26

bb.az:                                            ; preds = %bb.aw
  %i.gk = add i64 %i.ge, 1                        ; 4 uses
  store i64 %i.gk, ptr %i.ec, align 8, !alias.scope !1969, !noalias !1957
  call void @llvm.experimental.noalias.scope.decl(metadata !1970)
  %umax.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.gk, i64 %i.gd) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1971)
  call void @llvm.experimental.noalias.scope.decl(metadata !1972)
  %exitcond.not.i53.not.i.i.i.i.i.i.i = icmp ult i64 %i.gk, %i.gd
  br i1 %exitcond.not.i53.not.i.i.i.i.i.i.i, label %bb.ba, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i

bb.ba:                                            ; preds = %bb.az
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.gk
  %i.gm = load i8, ptr %i.gl, align 1, !noalias !1973, !noundef !7
  %i.gn = add i64 %i.ge, 2                        ; 3 uses
  store i64 %i.gn, ptr %i.ec, align 8, !alias.scope !1974, !noalias !1975
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.gm, 117
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.bb, label %.loopexit246.i.i.i.i.i.i.i, !prof !27

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.experimental.noalias.scope.decl(metadata !1976)
  call void @llvm.experimental.noalias.scope.decl(metadata !1977)
  %exitcond.not.i53.1.i.i.i.i.i.i.i = icmp eq i64 %i.gn, %umax.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i53.1.i.i.i.i.i.i.i, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.go = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.gn
  %i.gp = load i8, ptr %i.go, align 1, !noalias !1978, !noundef !7
  %i.gq = add i64 %i.ge, 3                        ; 3 uses
  store i64 %i.gq, ptr %i.ec, align 8, !alias.scope !1979, !noalias !1975
  %.not.i.1.i.i.i.i.i.i.i = icmp eq i8 %i.gp, 108
  br i1 %.not.i.1.i.i.i.i.i.i.i, label %bb.bd, label %.loopexit246.i.i.i.i.i.i.i, !prof !27

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.experimental.noalias.scope.decl(metadata !1980)
  call void @llvm.experimental.noalias.scope.decl(metadata !1981)
  %exitcond.not.i53.2.i.i.i.i.i.i.i = icmp eq i64 %i.gq, %umax.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i53.2.i.i.i.i.i.i.i, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.gq
  %i.gs = load i8, ptr %i.gr, align 1, !noalias !1982, !noundef !7
  %i.gt = add i64 %i.ge, 4
  store i64 %i.gt, ptr %i.ec, align 8, !alias.scope !1983, !noalias !1975
  %.not.i.2.i.i.i.i.i.i.i = icmp eq i8 %i.gs, 108
  br i1 %.not.i.2.i.i.i.i.i.i.i, label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i.i.i.i, label %.loopexit246.i.i.i.i.i.i.i, !prof !27

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i: ; preds = %bb.bd, %bb.bb, %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1984
  store i64 5, ptr %i.k, align 8, !noalias !1984
  %i.gu = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ea, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.k), !noalias !1985
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1984
  br label %_RINvXs0_NvXNvNtCsbNLsQi0JuJ4_5tgrep5serves_1__NtBb_10ServerInfoNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB11_7Visitor9visit_mapINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB2F_4read7StrReadEEBd_.exit

.loopexit246.i.i.i.i.i.i.i:                       ; preds = %bb.be, %bb.bc, %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1984
  store i64 9, ptr %i.j, align 8, !noalias !1984
  %i.gv = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ea, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.j), !noalias !1985
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1984
  br label %_RINvXs0_NvXNvNtCsbNLsQi0JuJ4_5tgrep5serves_1__NtBb_10ServerInfoNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB11_7Visitor9visit_mapINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB2F_4read7StrReadEEBd_.exit

bb.bf:                                            ; preds = %bb.aw
  %i.gw = add i64 %i.ge, 1                        ; 4 uses
  store i64 %i.gw, ptr %i.ec, align 8, !alias.scope !1986, !noalias !1957
  call void @llvm.experimental.noalias.scope.decl(metadata !1987)
  %umax.i56.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.gw, i64 %i.gd) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1988)
  call void @llvm.experimental.noalias.scope.decl(metadata !1989)
  %exitcond.not.i58.not.i.i.i.i.i.i.i = icmp ult i64 %i.gw, %i.gd
  br i1 %exitcond.not.i58.not.i.i.i.i.i.i.i, label %bb.bg, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i.i.i

bb.bg:                                            ; preds = %bb.bf
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.gw
  %i.gy = load i8, ptr %i.gx, align 1, !noalias !1990, !noundef !7
  %i.gz = add i64 %i.ge, 2                        ; 3 uses
  store i64 %i.gz, ptr %i.ec, align 8, !alias.scope !1991, !noalias !1992
  %.not.i59.i.i.i.i.i.i.i = icmp eq i8 %i.gy, 114
end_hunk_5
