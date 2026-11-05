Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_db-6375deef0079f440.ide_db.4a77f52129cf6f1d-cgu.04?download=true
inline.NumInlined: 2237
inline.NumDeleted: 872
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_RNvNtNtCs6oosyzwIepl_6ide_db14syntax_helpers8node_ext11eq_label_lt:bb.a
_RNCNvNtNtCs6oosyzwIepl_6ide_db14syntax_helpers8node_ext11eq_label_lt0B7_.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsjJXvCMGntp8_6syntax10token_text9TokenTextECs6oosyzwIepl_6ide_db.exit.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs9GitHPCrz2Q_5rowan5green5token10GreenTokenECs6oosyzwIepl_6ide_db.exit.i.i10.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1109
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %_RNCNvNtNtCs6oosyzwIepl_6ide_db14syntax_helpers8node_ext11eq_label_lt0B7_.exit
  %.sroa.0.0 = phi i1 [ %.sroa.0.0.i.i, %_RNCNvNtNtCs6oosyzwIepl_6ide_db14syntax_helpers8node_ext11eq_label_lt0B7_.exit ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCs6oosyzwIepl_6ide_db14syntax_helpers8node_ext13preorder_expr(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %2) unnamed_addr #0 !guid !1120 {
bb.a:
  tail call void @_RNvNtNtCs6oosyzwIepl_6ide_db14syntax_helpers8node_ext30preorder_expr_with_ctx_checker(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @65, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvNtNtCs6oosyzwIepl_6ide_db14syntax_helpers8node_ext15is_pattern_cond(i64 noundef range(i64 0, 37) %0, ptr noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !1122 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 2 uses
  store i64 %0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %1, ptr %i.c, align 8
  switch i64 %0, label %bb.o [
    i64 4, label %bb.b
    i64 17, label %.thread59
    i64 24, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = invoke i16 @_RNvMs5_NtNtCsjJXvCMGntp8_6syntax3ast8expr_extNtNtNtB7_9generated5nodes7BinExpr7op_kind(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
          to label %bb.d unwind label %bb.v       ; 2 uses

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.e = invoke fastcc { i64, ptr } @_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes4ExprECs6oosyzwIepl_6ide_db(ptr nonnull %1)
          to label %bb.r unwind label %bb.p       ; 2 uses

bb.d:                                             ; preds = %bb.b
  %.sroa.0.0.extract.trunc = trunc i16 %i.d to i8 ; 2 uses
  %.not9 = icmp eq i8 %.sroa.0.0.extract.trunc, -1
  br i1 %.not9, label %.thread56, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = icmp ne i8 %.sroa.0.0.extract.trunc, 5
  call void @llvm.assume(i1 %i.f)
  %i.g = and i16 %i.d, 511
  %.sroa.0.0.i = icmp eq i16 %i.g, 3
  br i1 %.sroa.0.0.i, label %bb.f, label %.thread56

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %i.h = invoke { i64, ptr } @_RNvMs5_NtNtCsjJXvCMGntp8_6syntax3ast8expr_extNtNtNtB7_9generated5nodes7BinExpr3lhs(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %bb.i unwind label %bb.g       ; 2 uses

bb.g:                                             ; preds = %bb.l, %bb.j, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprE6map_orbNvNtNtCs6oosyzwIepl_6ide_db14syntax_helpers8node_ext15is_pattern_condEB1P_.exit.thread, %bb.f
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !noundef !8
  %i.l = add i32 %i.k, -1                         ; 2 uses
  store i32 %i.l, ptr %i.j, align 4
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.h, label %.thread48

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %1) #39
          to label %.thread48 unwind label %bb.n

bb.i:                                             ; preds = %bb.f
  %i.n = extractvalue { i64, ptr } %i.h, 0        ; 2 uses
  %.not.i = icmp eq i64 %i.n, -1
  br i1 %.not.i, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprE6map_orbNvNtNtCs6oosyzwIepl_6ide_db14syntax_helpers8node_ext15is_pattern_condEB1P_.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = extractvalue { i64, ptr } %i.h, 1
  %i.p = invoke noundef zeroext i1 @_RNvNtNtCs6oosyzwIepl_6ide_db14syntax_helpers8node_ext15is_pattern_cond(i64 noundef range(i64 -1, 37) %i.n, ptr noundef %i.o)
          to label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprE6map_orbNvNtNtCs6oosyzwIepl_6ide_db14syntax_helpers8node_ext15is_pattern_condEB1P_.exit unwind label %bb.g, !inline_history !1121

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprE6map_orbNvNtNtCs6oosyzwIepl_6ide_db14syntax_helpers8node_ext15is_pattern_condEB1P_.exit: ; preds = %bb.j
  br i1 %i.p, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprE6map_orbNvNtNtCs6oosyzwIepl_6ide_db14syntax_helpers8node_ext15is_pattern_condEB1P_.exit27, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprE6map_orbNvNtNtCs6oosyzwIepl_6ide_db14syntax_helpers8node_ext15is_pattern_condEB1P_.exit.thread

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprE6map_orbNvNtNtCs6oosyzwIepl_6ide_db14syntax_helpers8node_ext15is_pattern_condEB1P_.exit.thread: ; preds = %bb.i, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprE6map_orbNvNtNtCs6oosyzwIepl_6ide_db14syntax_helpers8node_ext15is_pattern_condEB1P_.exit
  %i.q = invoke { i64, ptr } @_RNvMs5_NtNtCsjJXvCMGntp8_6syntax3ast8expr_extNtNtNtB7_9generated5nodes7BinExpr3rhs(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %bb.k unwind label %bb.g       ; 2 uses

bb.k:                                             ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprE6map_orbNvNtNtCs6oosyzwIepl_6ide_db14syntax_helpers8node_ext15is_pattern_condEB1P_.exit.thread
  %i.r = extractvalue { i64, ptr } %i.q, 0        ; 2 uses
  %.not.i24 = icmp eq i64 %i.r, -1
  br i1 %.not.i24, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprE6map_orbNvNtNtCs6oosyzwIepl_6ide_db14syntax_helpers8node_ext15is_pattern_condEB1P_.exit27, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.s = extractvalue { i64, ptr } %i.q, 1
  %i.t = invoke noundef zeroext i1 @_RNvNtNtCs6oosyzwIepl_6ide_db14syntax_helpers8node_ext15is_pattern_cond(i64 noundef range(i64 -1, 37) %i.r, ptr noundef %i.s)
          to label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprE6map_orbNvNtNtCs6oosyzwIepl_6ide_db14syntax_helpers8node_ext15is_pattern_condEB1P_.exit27 unwind label %bb.g, !inline_history !1121

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprE6map_orbNvNtNtCs6oosyzwIepl_6ide_db14syntax_helpers8node_ext15is_pattern_condEB1P_.exit27: ; preds = %bb.k, %bb.l, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprE6map_orbNvNtNtCs6oosyzwIepl_6ide_db14syntax_helpers8node_ext15is_pattern_condEB1P_.exit
  %.sroa.0.0 = phi i1 [ true, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprE6map_orbNvNtNtCs6oosyzwIepl_6ide_db14syntax_helpers8node_ext15is_pattern_condEB1P_.exit ], [ false, %bb.k ], [ %i.t, %bb.l ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !noundef !8
  %i.w = add i32 %i.v, -1                         ; 2 uses
  store i32 %i.w, ptr %i.u, align 4
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.m, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7BinExprECs6oosyzwIepl_6ide_db.exit29

bb.m:                                             ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprE6map_orbNvNtNtCs6oosyzwIepl_6ide_db14syntax_helpers8node_ext15is_pattern_condEB1P_.exit27
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %1) #39
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7BinExprECs6oosyzwIepl_6ide_db.exit29

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7BinExprECs6oosyzwIepl_6ide_db.exit29: ; preds = %bb.m, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprE6map_orbNvNtNtCs6oosyzwIepl_6ide_db14syntax_helpers8node_ext15is_pattern_condEB1P_.exit27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECs6oosyzwIepl_6ide_db.exit

.thread59:                                        ; preds = %bb.o, %bb.a
  %.sroa.0.1 = phi i1 [ false, %bb.o ], [ true, %bb.a ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !noundef !8
  %i.aa = add i32 %i.z, -1                        ; 2 uses
  store i32 %i.aa, ptr %i.y, align 4
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECs6oosyzwIepl_6ide_db.exit.sink.split.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECs6oosyzwIepl_6ide_db.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECs6oosyzwIepl_6ide_db.exit.sink.split.i: ; preds = %.thread59
  tail call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %1) #39
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECs6oosyzwIepl_6ide_db.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECs6oosyzwIepl_6ide_db.exit: ; preds = %bb.u, %bb.x, %.thread56, %bb.t, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECs6oosyzwIepl_6ide_db.exit.sink.split.i, %.thread59, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7BinExprECs6oosyzwIepl_6ide_db.exit29
  %.sroa.0.2 = phi i1 [ %.sroa.0.0, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes7BinExprECs6oosyzwIepl_6ide_db.exit29 ], [ %.sroa.0.4, %bb.t ], [ false, %bb.x ], [ %.sroa.0.1, %.thread59 ], [ %.sroa.0.1, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes9YieldExprECs6oosyzwIepl_6ide_db.exit.sink.split.i ], [ %.sroa.0.4, %bb.u ], [ false, %.thread56 ]
  ret i1 %.sroa.0.2

bb.n:                                             ; preds = %bb.w, %bb.q, %bb.h
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.o:                                             ; preds = %bb.a
  br label %.thread59

bb.p:                                             ; preds = %bb.c, %bb.s
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !noundef !8
  %i.ag = add i32 %i.af, -1                       ; 2 uses
  store i32 %i.ag, ptr %i.ae, align 4
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.q, label %.thread48

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %1) #39
          to label %.thread48 unwind label %bb.n

bb.r:                                             ; preds = %bb.c
  %i.ai = extractvalue { i64, ptr } %i.e, 0       ; 2 uses
  %.not = icmp eq i64 %i.ai, -1
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = extractvalue { i64, ptr } %i.e, 1
  %i.ak = invoke noundef zeroext i1 @_RNvNtNtCs6oosyzwIepl_6ide_db14syntax_helpers8node_ext15is_pattern_cond(i64 noundef %i.ai, ptr noundef %i.aj)
          to label %bb.t unwind label %bb.p

bb.t:                                             ; preds = %bb.s, %bb.r
  %.sroa.0.4 = phi i1 [ false, %bb.r ], [ %i.ak, %bb.s ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !noundef !8
  %i.an = add i32 %i.am, -1                       ; 2 uses
  store i32 %i.an, ptr %i.al, align 4
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.u, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECs6oosyzwIepl_6ide_db.exit

bb.u:                                             ; preds = %bb.t
  tail call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %1) #39
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECs6oosyzwIepl_6ide_db.exit

.thread48:                                        ; preds = %bb.h, %bb.g, %bb.v, %bb.w, %bb.q, %bb.p
  %.pn45 = phi { ptr, i32 } [ %lpad.thr_comm67, %bb.v ], [ %i.ad, %bb.q ], [ %i.i, %bb.g ], [ %i.i, %bb.h ], [ %i.ad, %bb.p ], [ %lpad.thr_comm67, %bb.w ]
  resume { ptr, i32 } %.pn45

bb.v:                                             ; preds = %bb.b
  %lpad.thr_comm67 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !noundef !8
  %i.ar = add i32 %i.aq, -1                       ; 2 uses
  store i32 %i.ar, ptr %i.ap, align 4
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.w, label %.thread48

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %1) #39
          to label %.thread48 unwind label %bb.n

.thread56:                                        ; preds = %bb.d, %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !noundef !8
  %i.av = add i32 %i.au, -1                       ; 2 uses
  store i32 %i.av, ptr %i.at, align 4
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.x, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECs6oosyzwIepl_6ide_db.exit

bb.x:                                             ; preds = %.thread56
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %1) #39
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4ExprECs6oosyzwIepl_6ide_db.exit
}

; Function Attrs: nonlazybind uwtable
define noundef ptr @_RNvNtNtCs6oosyzwIepl_6ide_db14syntax_helpers8node_ext16expr_as_name_ref(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !1123 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !21, !noundef !8
  %i.c = icmp eq i64 %i.b, 25
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.val6 = load ptr, ptr %i.d, align 8, !nonnull !8, !noundef !8
  %i.e = tail call fastcc noundef ptr @_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes4PathECs6oosyzwIepl_6ide_db(ptr nonnull %.val6) #37 ; 6 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.e, ptr %i.a, align 8
  %i.f = invoke noundef ptr @_RNvMsf_NtNtCsjJXvCMGntp8_6syntax3ast8node_extNtNtNtB7_9generated5nodes4Path18as_single_name_ref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %bb.g unwind label %bb.e       ; 2 uses

.sink.split:                                      ; preds = %bb.b, %bb.h, %bb.g
  %.sroa.0.0.ph = phi ptr [ %i.f, %bb.h ], [ %i.f, %bb.g ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.a
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %.sroa.0.0.ph, %.sink.split ]
  ret ptr %.sroa.0.0

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !noundef !8
  %i.j = add i32 %i.i, -1                         ; 2 uses
  store i32 %i.j, ptr %i.h, align 4
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.f, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathECs6oosyzwIepl_6ide_db.exit

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.e) #39
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathECs6oosyzwIepl_6ide_db.exit unwind label %bb.i

bb.g:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !noundef !8
  %i.n = add i32 %i.m, -1                         ; 2 uses
  store i32 %i.n, ptr %i.l, align 4
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.h, label %.sink.split

bb.h:                                             ; preds = %bb.g
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.e) #39
  br label %.sink.split

bb.i:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #36
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4PathECs6oosyzwIepl_6ide_db.exit: ; preds = %bb.e, %bb.f
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvNtNtCs6oosyzwIepl_6ide_db14syntax_helpers8node_ext18block_as_lone_tail(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !1146 {
.peel.begin:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 10 uses
  %i.c = alloca [48 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs3_NtNtCsjJXvCMGntp8_6syntax3ast8node_extNtNtNtB7_9generated5nodes9BlockExpr10statements(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1147)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %.pre.i = load i64, ptr %i.d, align 8, !range !14, !alias.scope !1148
  %i.g = trunc nuw i64 %.pre.i to i1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1149)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1150
  br i1 %i.g, label %bb.a, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4StmtEECs6oosyzwIepl_6ide_db.exit.i.peel

bb.a:                                             ; preds = %.peel.begin
  invoke void @_RNvXs_NtCsjJXvCMGntp8_6syntax3astINtB4_11AstChildrenNtNtNtB4_9generated5nodes4StmtENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %.noexc.peel unwind label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4StmtEECs6oosyzwIepl_6ide_db.exit12.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.peel:                                      ; preds = %bb.a
  %i.h = load i64, ptr %i.b, align 8, !range !25, !noalias !1150, !noundef !8
  %.not.i.i.peel = icmp eq i64 %i.h, -1
  br i1 %.not.i.i.peel, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %.noexc.peel
  %.val4.i.i.peel = load i64, ptr %i.d, align 8, !range !14, !alias.scope !1151, !noundef !8
  %.val5.i.i.peel = load ptr, ptr %i.e, align 8, !alias.scope !1151 ; 3 uses
  %i.i = icmp eq i64 %.val4.i.i.peel, 0
  %i.j = icmp eq ptr %.val5.i.i.peel, null
  %or.cond.i.i.i.peel = select i1 %i.i, i1 true, i1 %i.j
  br i1 %or.cond.i.i.i.peel, label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten17and_then_or_clearINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB19_9generated5nodes4StmtEB1N_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs6oosyzwIepl_6ide_db.exit.thread20.i.peel, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.val5.i.i.peel, i64 48 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !noalias !1152, !noundef !8
  %i.m = add i32 %i.l, -1                         ; 2 uses
  store i32 %i.m, ptr %i.k, align 4, !noalias !1152
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.d, label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten17and_then_or_clearINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB19_9generated5nodes4StmtEB1N_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs6oosyzwIepl_6ide_db.exit.thread20.i.peel

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val5.i.i.peel) #39
          to label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten17and_then_or_clearINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB19_9generated5nodes4StmtEB1N_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs6oosyzwIepl_6ide_db.exit.thread20.i.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1152

_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten17and_then_or_clearINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB19_9generated5nodes4StmtEB1N_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs6oosyzwIepl_6ide_db.exit.thread20.i.peel: ; preds = %bb.d, %bb.c, %bb.b
  store i64 0, ptr %i.d, align 8, !alias.scope !1151
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4StmtEECs6oosyzwIepl_6ide_db.exit.i.peel

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4StmtEECs6oosyzwIepl_6ide_db.exit.i.peel: ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten17and_then_or_clearINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB19_9generated5nodes4StmtEB1N_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs6oosyzwIepl_6ide_db.exit.thread20.i.peel, %.peel.begin
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1150
  call void @llvm.experimental.noalias.scope.decl(metadata !1153)
  %i.o = load i64, ptr %i.c, align 8, !range !14, !alias.scope !1154, !noundef !8
  %i.p = trunc nuw i64 %i.o to i1
  br i1 %i.p, label %bb.e, label %.loopexit69

bb.e:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4StmtEECs6oosyzwIepl_6ide_db.exit.i.peel
  call void @llvm.experimental.noalias.scope.decl(metadata !1155)
  %i.q = load ptr, ptr %i.f, align 8, !alias.scope !1156, !noundef !8 ; 6 uses
  store ptr null, ptr %i.f, align 8, !alias.scope !1156
  %.not.i.i.i.peel = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.peel, label %.loopexit69, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 48 ; 6 uses
  %i.s = load i32, ptr %i.r, align 4, !noalias !1157, !noundef !8 ; 2 uses
  %i.t = icmp eq i32 %i.s, -1
  br i1 %i.t, label %.loopexit70, label %bb.g, !prof !7

bb.g:                                             ; preds = %bb.f
  %i.u = add nuw i32 %i.s, 1
  store i32 %i.u, ptr %i.r, align 4, !noalias !1157
  %i.v = invoke noundef ptr @_RNvMsi_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_18SyntaxNodeChildren3new(ptr noundef nonnull %i.q)
          to label %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit.i.i.i.i.peel unwind label %.loopexit.split-lp.i.loopexit.loopexit.split-lp, !noalias !1157 ; 2 uses

_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit.i.i.i.i.peel: ; preds = %bb.g
  %i.w = load i32, ptr %i.r, align 4, !noalias !1157, !noundef !8
  %i.x = add i32 %i.w, -1                         ; 2 uses
  store i32 %i.x, ptr %i.r, align 4, !noalias !1157
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.h, label %.noexc7.peel

bb.h:                                             ; preds = %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit.i.i.i.i.peel
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.q) #39
          to label %.noexc7.peel unwind label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4StmtEECs6oosyzwIepl_6ide_db.exit12.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc7.peel:                                     ; preds = %bb.h, %_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode8children.exit.i.i.i.i.peel
  %.val4.i.peel = load i64, ptr %i.d, align 8, !range !14, !alias.scope !1147, !noundef !8
  %.val5.i.peel = load ptr, ptr %i.e, align 8, !alias.scope !1147 ; 3 uses
  %i.z = icmp eq i64 %.val4.i.peel, 0
  %i.aa = icmp eq ptr %.val5.i.peel, null
  %or.cond.i.i.peel = select i1 %i.z, i1 true, i1 %i.aa
  br i1 %or.cond.i.i.peel, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes4StmtEEECs6oosyzwIepl_6ide_db.exit.i.peel.preheader, label %bb.i

bb.i:                                             ; preds = %.noexc7.peel
  %i.ab = getelementptr inbounds nuw i8, ptr %.val5.i.peel, i64 48 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !noalias !1158, !noundef !8
  %i.ad = add i32 %i.ac, -1                       ; 2 uses
  store i32 %i.ad, ptr %i.ab, align 4, !noalias !1158
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.j, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes4StmtEEECs6oosyzwIepl_6ide_db.exit.i.peel.preheader

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val5.i.peel) #39
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes4StmtEEECs6oosyzwIepl_6ide_db.exit.i.peel.preheader unwind label %.loopexit.split-lp75, !noalias !1158

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes4StmtEEECs6oosyzwIepl_6ide_db.exit.i.peel.preheader: ; preds = %bb.j, %bb.i, %.noexc7.peel
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes4StmtEEECs6oosyzwIepl_6ide_db.exit.i.peel

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes4StmtEEECs6oosyzwIepl_6ide_db.exit.i.peel: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes4StmtEEECs6oosyzwIepl_6ide_db.exit.i.peel.backedge, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes4StmtEEECs6oosyzwIepl_6ide_db.exit.i.peel.preheader
  %storemerge = phi ptr [ %i.v, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes4StmtEEECs6oosyzwIepl_6ide_db.exit.i.peel.preheader ], [ %i.at, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes4StmtEEECs6oosyzwIepl_6ide_db.exit.i.peel.backedge ]
  store i64 1, ptr %i.d, align 8, !alias.scope !1147
  store ptr %storemerge, ptr %i.e, align 8, !alias.scope !1147
  call void @llvm.experimental.noalias.scope.decl(metadata !1159)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1160
  invoke void @_RNvXs_NtCsjJXvCMGntp8_6syntax3astINtB4_11AstChildrenNtNtNtB4_9generated5nodes4StmtENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %.noexc unwind label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4StmtEECs6oosyzwIepl_6ide_db.exit12.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB10_9generated5nodes4StmtEEECs6oosyzwIepl_6ide_db.exit.i.peel
end_hunk_0
