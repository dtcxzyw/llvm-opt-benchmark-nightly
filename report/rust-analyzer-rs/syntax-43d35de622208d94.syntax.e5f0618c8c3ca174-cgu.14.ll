Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/syntax-43d35de622208d94.syntax.e5f0618c8c3ca174-cgu.14?download=true
inline.NumInlined: 487
inline.NumDeleted: 274
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvXs1_NtNtCsjJXvCMGntp8_6syntax3ast9operatorsNtB5_8BinaryOpNtNtCshzWfHUSfYae_4core3fmt7Display3fmt:bb.a

bb.q:                                             ; preds = %bb.h
  br label %_RNvXs_NtNtCsjJXvCMGntp8_6syntax3ast9operatorsNtB4_7ArithOpNtNtCshzWfHUSfYae_4core3fmt7Display3fmt.exit6

bb.r:                                             ; preds = %bb.h
  br label %_RNvXs_NtNtCsjJXvCMGntp8_6syntax3ast9operatorsNtB4_7ArithOpNtNtCshzWfHUSfYae_4core3fmt7Display3fmt.exit6

_RNvXs_NtNtCsjJXvCMGntp8_6syntax3ast9operatorsNtB4_7ArithOpNtNtCshzWfHUSfYae_4core3fmt7Display3fmt.exit6: ; preds = %bb.h, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r
  %.sroa.11.0.i3 = phi i64 [ 1, %bb.r ], [ 1, %bb.j ], [ 1, %bb.k ], [ 1, %bb.l ], [ 1, %bb.m ], [ 2, %bb.n ], [ 2, %bb.o ], [ 1, %bb.p ], [ 1, %bb.q ], [ 1, %bb.h ]
  %.sroa.0.0.i4 = phi ptr [ @88, %bb.r ], [ @80, %bb.j ], [ @81, %bb.k ], [ @82, %bb.l ], [ @83, %bb.m ], [ @84, %bb.n ], [ @85, %bb.o ], [ @86, %bb.p ], [ @87, %bb.q ], [ @79, %bb.h ]
  %i.t = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i4, i64 noundef %.sroa.11.0.i3), !noalias !484
  br i1 %i.t, label %bb.i, label %bb.s

bb.s:                                             ; preds = %bb.h, %_RNvXs_NtNtCsjJXvCMGntp8_6syntax3ast9operatorsNtB4_7ArithOpNtNtCshzWfHUSfYae_4core3fmt7Display3fmt.exit6
  %i.u = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 1)
  br label %bb.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 !guid !485 {
switch.lookup:
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9
  %.val = load i8, ptr %i.a, align 1, !range !486, !noundef !9 ; 2 uses
  %i.b = zext nneg i8 %.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCsjJXvCMGntp8_6syntax, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %.val to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCsjJXvCMGntp8_6syntax.138, i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, ptr } @_RNvXs5_NtCscFGNKo4Sl5v_9itertools10merge_joinINtB5_7MergeByINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtBY_9generated5nodes12GenericParamEBV_NCNvNtBY_4make16merge_gen_params0ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB10_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #2 personality ptr @rust_eh_personality !guid !495 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !range !12, !noundef !9 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %.not = icmp eq i64 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.d, align 8
  store i64 -1, ptr %i.b, align 8
  br label %_RNvXs8_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB11_9generated5nodes12GenericParamEEINtB5_8FuseImplBY_E4nextB13_.exit

bb.c:                                             ; preds = %bb.a
  %i.f = load i64, ptr %0, align 8, !range !10, !alias.scope !496, !noundef !9
  %i.g = trunc nuw i64 %i.f to i1
  br i1 %i.g, label %bb.d, label %_RNvXs8_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB11_9generated5nodes12GenericParamEEINtB5_8FuseImplBY_E4nextB13_.exit

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = tail call { i64, ptr } @_RNvXs_NtCsjJXvCMGntp8_6syntax3astINtB4_11AstChildrenNtNtNtB4_9generated5nodes12GenericParamENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB6_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h) ; 2 uses
  %i.j = extractvalue { i64, ptr } %i.i, 0        ; 2 uses
  %i.k = extractvalue { i64, ptr } %i.i, 1        ; 2 uses
  %.not.i.i = icmp eq i64 %i.j, -1
  br i1 %.not.i.i, label %bb.e, label %_RNvXs8_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB11_9generated5nodes12GenericParamEEINtB5_8FuseImplBY_E4nextB13_.exit

bb.e:                                             ; preds = %bb.d
  %.val5.i.i = load i64, ptr %0, align 8, !range !10, !alias.scope !496, !noundef !9
  %.val6.i.i = load ptr, ptr %i.h, align 8, !alias.scope !496 ; 3 uses
  %i.l = icmp eq i64 %.val5.i.i, 0
  %i.m = icmp eq ptr %.val6.i.i, null
  %or.cond.i.i.i = select i1 %i.l, i1 true, i1 %i.m
  br i1 %or.cond.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes12GenericParamEEEB12_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 48 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !noundef !9
  %i.p = add i32 %i.o, -1                         ; 2 uses
  store i32 %i.p, ptr %i.n, align 4
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.g, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes12GenericParamEEEB12_.exit.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val6.i.i) #22
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes12GenericParamEEEB12_.exit.i.i unwind label %bb.h

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes12GenericParamEEEB12_.exit.i.i: ; preds = %bb.g, %bb.f, %bb.e
  store i64 0, ptr %0, align 8, !alias.scope !496
  br label %_RNvXs8_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB11_9generated5nodes12GenericParamEEINtB5_8FuseImplBY_E4nextB13_.exit

common.resume:                                    ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamEBJ_.exit.sink.split.i, %bb.aa, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamEBJ_.exit.sink.split.i.i, %.body, %bb.q, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.r, %bb.h ], [ %eh.lpad-body, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamEBJ_.exit.sink.split.i.i ], [ %eh.lpad-body, %bb.q ], [ %eh.lpad-body, %.body ], [ %i.bn, %bb.aa ], [ %i.bn, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamEBJ_.exit.sink.split.i ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          cleanup
  store i64 0, ptr %0, align 8, !alias.scope !496
  br label %common.resume

_RNvXs8_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB11_9generated5nodes12GenericParamEEINtB5_8FuseImplBY_E4nextB13_.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes12GenericParamEEEB12_.exit.i.i, %bb.d, %bb.c, %bb.b
  %.sroa.6.070 = phi ptr [ %i.e, %bb.b ], [ undef, %bb.c ], [ %i.k, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes12GenericParamEEEB12_.exit.i.i ], [ %i.k, %bb.d ] ; 5 uses
  %.sroa.0.069 = phi i64 [ %i.c, %bb.b ], [ -1, %bb.c ], [ -1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes12GenericParamEEEB12_.exit.i.i ], [ %i.j, %bb.d ] ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.t = load i64, ptr %i.s, align 8, !range !12, !noundef !9 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %.not18 = icmp eq i64 %i.t, -1
  br i1 %.not18, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RNvXs8_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB11_9generated5nodes12GenericParamEEINtB5_8FuseImplBY_E4nextB13_.exit
  %i.v = load ptr, ptr %i.u, align 8
  store i64 -1, ptr %i.s, align 8
  br label %bb.r

bb.j:                                             ; preds = %_RNvXs8_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB11_9generated5nodes12GenericParamEEINtB5_8FuseImplBY_E4nextB13_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.x = load i64, ptr %i.w, align 8, !range !10, !alias.scope !497, !noundef !9
  %i.y = trunc nuw i64 %i.x to i1
  br i1 %i.y, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.aa = invoke { i64, ptr } @_RNvXs_NtCsjJXvCMGntp8_6syntax3astINtB4_11AstChildrenNtNtNtB4_9generated5nodes12GenericParamENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB6_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.z)
          to label %.noexc unwind label %bb.p     ; 2 uses

.noexc:                                           ; preds = %bb.k
  %i.ab = extractvalue { i64, ptr } %i.aa, 0      ; 2 uses
  %i.ac = extractvalue { i64, ptr } %i.aa, 1      ; 2 uses
  %.not.i.i38 = icmp eq i64 %i.ab, -1
  br i1 %.not.i.i38, label %bb.l, label %bb.r

bb.l:                                             ; preds = %.noexc
  %.val5.i.i39 = load i64, ptr %i.w, align 8, !range !10, !alias.scope !497, !noundef !9
  %.val6.i.i40 = load ptr, ptr %i.z, align 8, !alias.scope !497 ; 3 uses
  %i.ad = icmp eq i64 %.val5.i.i39, 0
  %i.ae = icmp eq ptr %.val6.i.i40, null
  %or.cond.i.i.i41 = select i1 %i.ad, i1 true, i1 %i.ae
  br i1 %or.cond.i.i.i41, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes12GenericParamEEEB12_.exit.i.i42, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.af = getelementptr inbounds nuw i8, ptr %.val6.i.i40, i64 48 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !noundef !9
  %i.ah = add i32 %i.ag, -1                       ; 2 uses
  store i32 %i.ah, ptr %i.af, align 4
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.n, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes12GenericParamEEEB12_.exit.i.i42

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val6.i.i40) #22
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes12GenericParamEEEB12_.exit.i.i42 unwind label %bb.o

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes12GenericParamEEEB12_.exit.i.i42: ; preds = %bb.n, %bb.m, %bb.l
  store i64 0, ptr %i.w, align 8, !alias.scope !497
  br label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.aj = landingpad { ptr, i32 }
          cleanup
  store i64 0, ptr %i.w, align 8, !alias.scope !497
  br label %.body

bb.p:                                             ; preds = %bb.k
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.o, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.ak, %bb.p ], [ %i.aj, %bb.o ] ; 3 uses
  %i.al = icmp eq i64 %.sroa.0.069, -1
  br i1 %i.al, label %common.resume, label %bb.q

bb.q:                                             ; preds = %.body
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.070) ]
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.6.070, i64 48 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !noundef !9
  %i.ao = add i32 %i.an, -1                       ; 2 uses
  store i32 %i.ao, ptr %i.am, align 4
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamEBJ_.exit.sink.split.i.i, label %common.resume

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamEBJ_.exit.sink.split.i.i: ; preds = %bb.q
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.sroa.6.070) #22
          to label %common.resume unwind label %bb.s

bb.r:                                             ; preds = %bb.j, %.noexc, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes12GenericParamEEEB12_.exit.i.i42, %bb.i
  %.sroa.6.0 = phi ptr [ %i.v, %bb.i ], [ undef, %bb.j ], [ %i.ac, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes12GenericParamEEEB12_.exit.i.i42 ], [ %i.ac, %.noexc ] ; 2 uses
  %.sroa.01.0 = phi i64 [ %i.t, %bb.i ], [ -1, %bb.j ], [ -1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes12GenericParamEEEB12_.exit.i.i42 ], [ %i.ab, %.noexc ] ; 3 uses
  %.not19 = icmp eq i64 %.sroa.0.069, -1
  %.not20 = icmp eq i64 %.sroa.01.0, -1           ; 2 uses
  br i1 %.not19, label %bb.u, label %bb.t

bb.s:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamEBJ_.exit.sink.split.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamEBJ_.exit.sink.split.i.i
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.t:                                             ; preds = %bb.r
  br i1 %.not20, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamEEB15_.exit50, label %bb.v

bb.u:                                             ; preds = %bb.r
  %spec.select = select i1 %.not20, ptr undef, ptr %.sroa.6.0
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamEEB15_.exit50

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamEEB15_.exit50: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamEBJ_.exit.sink.split.i.i48.invoke, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z
  %.sroa.5.0 = phi ptr [ %spec.select, %bb.u ], [ %i.ax, %bb.w ], [ %.sroa.6.070, %bb.t ], [ %i.ax, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamEBJ_.exit.sink.split.i.i48.invoke ], [ %i.ax, %bb.v ], [ %i.ax, %bb.z ], [ %i.ax, %bb.y ], [ %i.ax, %bb.x ]
  %.sroa.0.0 = phi i64 [ %.sroa.01.0, %bb.u ], [ %i.av, %bb.w ], [ %.sroa.0.069, %bb.t ], [ %i.av, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamEBJ_.exit.sink.split.i.i48.invoke ], [ %i.av, %bb.v ], [ %i.av, %bb.z ], [ %i.av, %bb.y ], [ %i.av, %bb.x ]
  %i.ar = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.as = insertvalue { i64, ptr } %i.ar, ptr %.sroa.5.0, 1
  ret { i64, ptr } %i.as

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @_RNvXs1_NtCscFGNKo4Sl5v_9itertools10merge_joinNCNvNtNtCsjJXvCMGntp8_6syntax3ast4make16merge_gen_params0INtB5_14OrderingOrBoolNtNtNtBN_9generated5nodes12GenericParamB1Y_E5mergeBP_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull %i.at, i64 noundef %.sroa.0.069, ptr noundef %.sroa.6.070, i64 noundef %.sroa.01.0, ptr noundef %.sroa.6.0)
  %.sroa.059.0.copyload = load i64, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.av = load i64, ptr %i.au, align 8, !range !13, !noundef !9 ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !noundef !9 ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  switch i64 %.sroa.059.0.copyload, label %bb.w [
    i64 2, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamEEB15_.exit50
    i64 0, label %bb.y
  ]

bb.w:                                             ; preds = %bb.v
  %i.ay = load i64, ptr %i.s, align 8, !range !12, !noundef !9
  %i.az = load ptr, ptr %i.u, align 8             ; 3 uses
  store i64 %.sroa.5.0.copyload, ptr %i.s, align 8
  store ptr %.sroa.9.0.copyload, ptr %i.u, align 8
  %i.ba = icmp eq i64 %i.ay, -1
  br i1 %i.ba, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamEEB15_.exit50, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.az) ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 48 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !noundef !9
  %i.bd = add i32 %i.bc, -1                       ; 2 uses
  store i32 %i.bd, ptr %i.bb, align 4
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamEBJ_.exit.sink.split.i.i48.invoke, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamEEB15_.exit50

bb.y:                                             ; preds = %bb.v
  %i.bf = load i64, ptr %i.b, align 8, !range !12, !noundef !9
  %i.bg = load ptr, ptr %i.d, align 8             ; 3 uses
  store i64 %.sroa.5.0.copyload, ptr %i.b, align 8
  store ptr %.sroa.9.0.copyload, ptr %i.d, align 8
  %i.bh = icmp eq i64 %i.bf, -1
  br i1 %i.bh, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamEEB15_.exit50, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bg) ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 48 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !noundef !9
  %i.bk = add i32 %i.bj, -1                       ; 2 uses
  store i32 %i.bk, ptr %i.bi, align 4
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamEBJ_.exit.sink.split.i.i48.invoke, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamEEB15_.exit50

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamEBJ_.exit.sink.split.i.i48.invoke: ; preds = %bb.z, %bb.x
  %i.bm = phi ptr [ %i.az, %bb.x ], [ %i.bg, %bb.z ]
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.bm) #22
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamEEB15_.exit50 unwind label %bb.aa

bb.aa:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamEBJ_.exit.sink.split.i.i48.invoke
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ax) ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ax, i64 48 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !noundef !9
  %i.bq = add i32 %i.bp, -1                       ; 2 uses
  store i32 %i.bq, ptr %i.bo, align 4
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamEBJ_.exit.sink.split.i, label %common.resume

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9TypeParamEBJ_.exit.sink.split.i: ; preds = %bb.aa
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.ax) #22
          to label %common.resume unwind label %bb.s
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtNtCsbSS6DM8SDEO_5alloc3vec5drainINtB5_5DrainNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5waker5EntryENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0) unnamed_addr #2 personality ptr @rust_eh_personality !guid !516 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !9, !noundef !9 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %0, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 24                  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !9, !noundef !9 ; 4 uses
  %i.j = icmp eq ptr %i.c, %i.a
  br i1 %i.j, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load i64, ptr %i.k, align 8, !noundef !9 ; 3 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNvXs5_NtNtCsbSS6DM8SDEO_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5waker5EntryNtNtBO_5alloc6GlobalEECsjJXvCMGntp8_6syntax.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !noundef !9 ; 4 uses
  %i.o = icmp ult i64 %i.n, 384307168202282326
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i64, ptr %i.p, align 8, !noundef !9 ; 2 uses
  %.not3.i.i = icmp eq i64 %i.q, %i.n
  br i1 %.not3.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.r = add i64 %i.n, %i.l
  store i64 %i.r, ptr %i.m, align 8
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNvXs5_NtNtCsbSS6DM8SDEO_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5waker5EntryNtNtBO_5alloc6GlobalEECsjJXvCMGntp8_6syntax.exit

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.q
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.n
  %i.w = mul nuw nsw i64 %i.l, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.v, ptr nonnull align 8 %i.u, i64 %i.w, i1 false)
  br label %bb.d

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNvXs5_NtNtCsbSS6DM8SDEO_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5waker5EntryNtNtBO_5alloc6GlobalEECsjJXvCMGntp8_6syntax.exit: ; preds = %bb.m, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5waker5EntryECsjJXvCMGntp8_6syntax.exit, %bb.d, %bb.b
  ret void

.body:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5waker5EntryECsjJXvCMGntp8_6syntax.exit8.i, %bb.i
  tail call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNvXs5_NtNtCsbSS6DM8SDEO_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5waker5EntryNtNtBO_5alloc6GlobalEECsjJXvCMGntp8_6syntax(ptr nonnull %0) #24
  resume { ptr, i32 } %i.ai

bb.f:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub nuw i64 %i.e, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aa ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5waker5EntryECsjJXvCMGntp8_6syntax.exit.i, %bb.f
  %.sroa.0.09.i = phi i64 [ 0, %bb.f ], [ %i.ad, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5waker5EntryECsjJXvCMGntp8_6syntax.exit.i ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %.sroa.0.09.i ; 2 uses
  %i.ad = add nuw nsw i64 %.sroa.0.09.i, 1        ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !517)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !518)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !519)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !520)
  %i.ae = load ptr, ptr %i.ac, align 8, !alias.scope !521, !nonnull !9, !noundef !9
  %i.af = atomicrmw add ptr %i.ae, i64 -1 release, align 8, !noalias !522
  %i.ag = icmp eq i64 %i.af, 1
  br i1 %i.ag, label %bb.h, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5waker5EntryECsjJXvCMGntp8_6syntax.exit.i

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context5InnerE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac) #22
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5waker5EntryECsjJXvCMGntp8_6syntax.exit.i unwind label %bb.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5waker5EntryECsjJXvCMGntp8_6syntax.exit.i: ; preds = %bb.h, %bb.g
  %i.ah = icmp eq i64 %i.ad, %i.g
  br i1 %i.ah, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5waker5EntryECsjJXvCMGntp8_6syntax.exit, label %bb.g

bb.i:                                             ; preds = %bb.h
  %i.ai = landingpad { ptr, i32 }
          cleanup
  %i.aj = icmp eq i64 %i.ad, %i.g
  br i1 %i.aj, label %.body, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5waker5EntryECsjJXvCMGntp8_6syntax.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.al, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5waker5EntryECsjJXvCMGntp8_6syntax.exit8.i ], [ %i.ad, %bb.i ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %.sroa.0.110.i ; 2 uses
  %i.al = add nuw nsw i64 %.sroa.0.110.i, 1       ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !523)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !524)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !525)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !526)
  %i.am = load ptr, ptr %i.ak, align 8, !alias.scope !527, !nonnull !9, !noundef !9
  %i.an = atomicrmw add ptr %i.am, i64 -1 release, align 8, !noalias !528
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.j, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5waker5EntryECsjJXvCMGntp8_6syntax.exit8.i

bb.j:                                             ; preds = %.lr.ph.i
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context5InnerE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ak) #22
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5waker5EntryECsjJXvCMGntp8_6syntax.exit8.i unwind label %bb.k

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5waker5EntryECsjJXvCMGntp8_6syntax.exit8.i: ; preds = %bb.j, %.lr.ph.i
  %i.ap = icmp eq i64 %i.al, %i.g
  br i1 %i.ap, label %.body, label %.lr.ph.i

bb.k:                                             ; preds = %bb.j
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5waker5EntryECsjJXvCMGntp8_6syntax.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc5waker5EntryECsjJXvCMGntp8_6syntax.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32
end_hunk_0
