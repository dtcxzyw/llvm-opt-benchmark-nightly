Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/libcst_native-f6ddb4b5b15f8b82.libcst_native.799f4444683a0d30-cgu.04?download=true
inline.NumInlined: 2071
inline.NumDeleted: 1083
begin_hunk_0_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement21DeflatedExceptHandlerEBH_:bb.a

bb.f:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEEB13_.exit
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement30DeflatedAssignTargetExpressionEBH_(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement14DeflatedAsNameEEB13_.exit unwind label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEEB13_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEEB13_.exit3: ; preds = %bb.d, %bb.e
  %i.l = load i64, ptr %0, align 8, !range !21, !alias.scope !1357, !noundef !8
  %i.m = icmp eq i64 %i.l, -1
  br i1 %i.m, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement14DeflatedAsNameEEB13_.exit5, label %bb.h

bb.h:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEEB13_.exit3
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement30DeflatedAssignTargetExpressionEBH_(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %0)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement14DeflatedAsNameEEB13_.exit5

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement14DeflatedAsNameEEB13_.exit5: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEEB13_.exit3, %bb.h
  ret void

bb.i:                                             ; preds = %bb.f, %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #11
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement14DeflatedAsNameEEB13_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEEB13_.exit, %bb.f
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedSmallStatementEBH_(ptr noalias noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !1396 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !1397, !noundef !8 ; 2 uses
  %i.b = xor i64 %i.a, -9223372036854775808
  %i.c = icmp slt i64 %i.a, 0
  %i.d = select i1 %i.c, i64 %i.b, i64 15
  switch i64 %i.d, label %bb.b [
    i64 0, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement17DeflatedTypeAliasEBH_.exit
    i64 1, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement17DeflatedTypeAliasEBH_.exit
    i64 2, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement17DeflatedTypeAliasEBH_.exit
    i64 3, label %bb.k
    i64 4, label %bb.m
    i64 5, label %bb.n
    i64 6, label %bb.t
    i64 7, label %bb.w
    i64 8, label %bb.ai
    i64 9, label %bb.ao
    i64 10, label %bb.av
    i64 11, label %bb.bb
    i64 12, label %bb.be
    i64 13, label %bb.bh
    i64 14, label %bb.bk
  ]

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression12DeflatedNameEBH_(ptr noalias noundef nonnull align 8 dereferenceable(144) %0)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEEB1f_(ptr noalias noundef align 8 dereferenceable(8) %i.f) #14
          to label %.body.i unwind label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1398)
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !1399, !nonnull !8, !noundef !8 ; 3 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEBH_(ptr noalias noundef align 8 dereferenceable(16) %i.h) #12
          to label %bb.f unwind label %bb.e, !noalias !1398, !inline_history !9

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.h, i64 noundef 16, i64 noundef 8) #13, !noalias !1398, !inline_history !9
  br label %.body.i

.body.i:                                          ; preds = %bb.e, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.e, %bb.c ], [ %i.i, %bb.e ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedTypeParametersEEB13_(ptr noalias noundef align 8 dereferenceable(40) %i.j) #14
          to label %common.resume unwind label %bb.j

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.h, i64 noundef 16, i64 noundef 8) #13, !noalias !1398, !inline_history !9
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.l = load i64, ptr %i.k, align 8, !range !7, !alias.scope !1400, !noundef !8
  %i.m = icmp eq i64 %i.l, -1
  br i1 %i.m, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement17DeflatedTypeAliasEBH_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement17DeflatedTypeParamENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.k)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedTypeParametersEBH_.exit.i.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement17DeflatedTypeParamENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.k)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #11
  unreachable

common.resume:                                    ; preds = %bb.bi, %bb.bf, %bb.bc, %bb.ax, %bb.ay, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement18DeflatedAnnotationEBH_.exit.i, %bb.ar, %.body.i5, %.body3.i, %bb.af, %bb.u, %bb.o, %bb.p, %.body.i, %bb.h, %common.resume.i.i
  %common.resume.op = phi { ptr, i32 } [ %common.resume.op.i.i, %common.resume.i.i ], [ %.pn.i, %.body.i ], [ %i.v, %bb.o ], [ %i.ae, %bb.u ], [ %.pn.i2, %.body3.i ], [ %eh.lpad-body.i, %.body.i5 ], [ %.pn.i6, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement18DeflatedAnnotationEBH_.exit.i ], [ %i.br, %bb.ax ], [ %i.ca, %bb.bc ], [ %i.cd, %bb.bf ], [ %i.n, %bb.h ], [ %i.v, %bb.p ], [ %i.at, %bb.af ], [ %.pn.i6, %bb.ar ], [ %i.br, %bb.ay ], [ %i.cg, %bb.bi ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedTypeParametersEBH_.exit.i.i: ; preds = %bb.g
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement17DeflatedTypeParamENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.k)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement17DeflatedTypeAliasEBH_.exit

bb.j:                                             ; preds = %.body.i, %bb.c
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #11
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement17DeflatedTypeAliasEBH_.exit: ; preds = %bb.bs, %bb.br, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression17DeflatedAttributeEEB1f_.exit.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression12DeflatedNameEEB1f_.exit.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression17DeflatedSubscriptEEB1f_.exit.i.i, %bb.az, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEEB13_.exit.i8, %bb.at, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement18DeflatedAnnotationEBH_.exit2.i, %bb.r, %bb.q, %bb.l, %bb.k, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement22DeflatedTypeParametersEBH_.exit.i.i, %bb.f, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement17DeflatedAugAssignEBH_.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement16DeflatedNonlocalEBH_.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement14DeflatedGlobalEBH_.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement14DeflatedAssignEBH_.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement18DeflatedImportFromEBH_.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement14DeflatedImportEBH_.exit, %bb.m, %bb.a, %bb.a, %bb.a
  ret void

bb.k:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !range !13, !alias.scope !1401, !noundef !8
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement17DeflatedTypeAliasEBH_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEBH_(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.q), !inline_history !1
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement17DeflatedTypeAliasEBH_.exit

bb.m:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEBH_(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.t)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement17DeflatedTypeAliasEBH_.exit

bb.n:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1402)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEBH_(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %i.u)
          to label %bb.q unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !range !13, !alias.scope !1403, !noundef !8
  %i.y = icmp eq i64 %i.x, -1
  br i1 %i.y, label %common.resume, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEBH_(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.w)
          to label %common.resume unwind label %bb.s, !inline_history !1

bb.q:                                             ; preds = %bb.n
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !range !13, !alias.scope !1404, !noundef !8
  %i.ab = icmp eq i64 %i.aa, -1
  br i1 %i.ab, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement17DeflatedTypeAliasEBH_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEBH_(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.z), !inline_history !1
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement17DeflatedTypeAliasEBH_.exit

bb.s:                                             ; preds = %bb.p
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #11, !noalias !1402
  unreachable

bb.t:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement19DeflatedImportAliasENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ad)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement14DeflatedImportEBH_.exit unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement19DeflatedImportAliasENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ad)
          to label %common.resume unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #11
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement14DeflatedImportEBH_.exit: ; preds = %bb.t
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement19DeflatedImportAliasENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ad)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement17DeflatedTypeAliasEBH_.exit

bb.w:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1405)
  %.val.i = load i64, ptr %i.ag, align 8, !range !15, !alias.scope !1405, !noundef !8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2.i = load ptr, ptr %i.ah, align 8, !alias.scope !1405 ; 5 uses
  %1 = icmp eq i64 %.val.i, 2
  br i1 %1, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEEB13_.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %2 = icmp eq i64 %.val.i, 0
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  br i1 %2, label %3, label %bb.z

3:                                                ; preds = %bb.x
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression12DeflatedNameEBH_(ptr noalias noundef nonnull align 8 dereferenceable(64) %.val2.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEBH_.exit.i.i unwind label %bb.y, !noalias !1405

common.resume.i.i.i:                              ; preds = %bb.aa, %bb.y
  %.sink.i.i.i = phi i64 [ 128, %bb.aa ], [ 64, %bb.y ]
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.ak, %bb.aa ], [ %i.aj, %bb.y ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef %.sink.i.i.i, i64 noundef 8) #13, !noalias !1405
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement19DeflatedImportNamesEBH_(ptr noalias noundef align 8 dereferenceable(24) %i.ai) #14
          to label %.body3.i unwind label %bb.ah

bb.y:                                             ; preds = %3
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i.i

bb.z:                                             ; preds = %bb.x
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression17DeflatedAttributeEBH_(ptr noalias noundef nonnull align 8 dereferenceable(128) %.val2.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEBH_.exit.i.i unwind label %bb.aa, !noalias !1405, !inline_history !2

bb.aa:                                            ; preds = %bb.z
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEBH_.exit.i.i: ; preds = %bb.z, %3
  %.sink1.i.i.i = phi i64 [ 64, %3 ], [ 128, %bb.z ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef %.sink1.i.i.i, i64 noundef 8) #13, !noalias !1405
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEEB13_.exit.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEEB13_.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEBH_.exit.i.i, %bb.w
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.am = load i64, ptr %i.al, align 8, !range !7, !alias.scope !1406, !noundef !8
  %i.an = icmp eq i64 %i.am, -1
  br i1 %i.an, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement19DeflatedImportNamesEBH_.exit.i, label %bb.ab

bb.ab:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEEB13_.exit.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement19DeflatedImportAliasENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement19DeflatedImportAliasEEB1d_.exit.i.i unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement19DeflatedImportAliasENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %.body3.i unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #11
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement19DeflatedImportAliasEEB1d_.exit.i.i: ; preds = %bb.ab
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement19DeflatedImportAliasENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement19DeflatedImportNamesEBH_.exit.i unwind label %bb.ae

.body3.i:                                         ; preds = %bb.ae, %bb.ac, %common.resume.i.i.i
  %.pn.i2 = phi { ptr, i32 } [ %common.resume.op.i.i.i, %common.resume.i.i.i ], [ %i.ar, %bb.ae ], [ %i.ao, %bb.ac ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes2op11DeflatedDotEEB1d_(ptr noalias noundef align 8 dereferenceable(24) %i.aq) #14
          to label %common.resume unwind label %bb.ah

bb.ae:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement19DeflatedImportAliasEEB1d_.exit.i.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body3.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement19DeflatedImportNamesEBH_.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement19DeflatedImportAliasEEB1d_.exit.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression23DeflatedNameOrAttributeEEB13_.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes2op11DeflatedDotENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement18DeflatedImportFromEBH_.exit unwind label %bb.af

bb.af:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement19DeflatedImportNamesEBH_.exit.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes2op11DeflatedDotENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %common.resume unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #11
  unreachable

bb.ah:                                            ; preds = %.body3.i, %common.resume.i.i.i
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #11
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement18DeflatedImportFromEBH_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement19DeflatedImportNamesEBH_.exit.i
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes2op11DeflatedDotENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.as)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement17DeflatedTypeAliasEBH_.exit

bb.ai:                                            ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement20DeflatedAssignTargetENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %bb.ak unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement20DeflatedAssignTargetENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %.body.i5 unwind label %bb.al

bb.ak:                                            ; preds = %bb.ai
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement20DeflatedAssignTargetENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement14DeflatedAssignEBH_.exit unwind label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #11
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %.body.i5

.body.i5:                                         ; preds = %bb.am, %bb.aj
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ba, %bb.am ], [ %i.ay, %bb.aj ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEBH_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.aw) #14
          to label %common.resume unwind label %bb.an

bb.an:                                            ; preds = %.body.i5
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #11
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement14DeflatedAssignEBH_.exit: ; preds = %bb.ak
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEBH_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.aw)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement17DeflatedTypeAliasEBH_.exit

bb.ao:                                            ; preds = %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1407)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement30DeflatedAssignTargetExpressionEBH_(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.bc)
          to label %bb.aq unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.bd = landingpad { ptr, i32 }
          cleanup
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEBH_(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.be)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement18DeflatedAnnotationEBH_.exit.i unwind label %bb.au, !inline_history !1380

bb.aq:                                            ; preds = %bb.ao
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEBH_(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.bf)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement18DeflatedAnnotationEBH_.exit2.i unwind label %bb.as, !inline_history !1380

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement18DeflatedAnnotationEBH_.exit.i: ; preds = %bb.as, %bb.ap
  %.pn.i6 = phi { ptr, i32 } [ %i.bj, %bb.as ], [ %i.bd, %bb.ap ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !range !13, !alias.scope !1408, !noundef !8
  %i.bi = icmp eq i64 %i.bh, -1
  br i1 %i.bi, label %common.resume, label %bb.ar

bb.ar:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement18DeflatedAnnotationEBH_.exit.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEBH_(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.bg)
          to label %common.resume unwind label %bb.au, !inline_history !1

bb.as:                                            ; preds = %bb.aq
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement18DeflatedAnnotationEBH_.exit.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement18DeflatedAnnotationEBH_.exit2.i: ; preds = %bb.aq
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !range !13, !alias.scope !1409, !noundef !8
  %i.bm = icmp eq i64 %i.bl, -1
  br i1 %i.bm, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement17DeflatedTypeAliasEBH_.exit, label %bb.at

bb.at:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement18DeflatedAnnotationEBH_.exit2.i
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEBH_(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.bk), !inline_history !1
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement17DeflatedTypeAliasEBH_.exit

bb.au:                                            ; preds = %bb.ar, %bb.ap
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #11, !noalias !1407
  unreachable

bb.av:                                            ; preds = %bb.a
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1410)
  %i.bp = load i64, ptr %i.bo, align 8, !range !13, !alias.scope !1411, !noundef !8
  %i.bq = icmp eq i64 %i.bp, -1
  br i1 %i.bq, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEEB13_.exit.i8, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEBH_(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %i.bo)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEEB13_.exit.i8 unwind label %bb.ax, !inline_history !1

bb.ax:                                            ; preds = %bb.aw
  %i.br = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !range !13, !alias.scope !1412, !noundef !8
  %i.bu = icmp eq i64 %i.bt, -1
  br i1 %i.bu, label %common.resume, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEBH_(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.bs)
          to label %common.resume unwind label %bb.ba

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEEB13_.exit.i8: ; preds = %bb.aw, %bb.av
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !range !13, !alias.scope !1413, !noundef !8
  %i.bx = icmp eq i64 %i.bw, -1
  br i1 %i.bx, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement17DeflatedTypeAliasEBH_.exit, label %bb.az

bb.az:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEEB13_.exit.i8
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression18DeflatedExpressionEBH_(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.bv), !inline_history !1393
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsarohYtwVpE2_13libcst_native5nodes9statement17DeflatedTypeAliasEBH_.exit

bb.ba:                                            ; preds = %bb.ay
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #11, !noalias !1410
  unreachable

bb.bb:                                            ; preds = %bb.a
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
end_hunk_0
