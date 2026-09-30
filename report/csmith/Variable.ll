Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/csmith/original/Variable?download=true
inline.NumInlined: 1390
inline.NumDeleted: 503
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNK8Variable4hashERSo:bb.a
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.ap = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.32, i64 noundef 9) ; 0 uses
  %i.aq = load ptr, ptr %0, align 8, !tbaa !96
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 88
  %i.as = load ptr, ptr %i.ar, align 8
  tail call void %i.as(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.at = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.33, i64 noundef 4) ; 0 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !41
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !34
  %i.ay = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.av, i64 noundef %i.ax) ; 4 uses
  %i.az = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull @.str.34, i64 noundef 21) ; 0 uses
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !96
  %i.bb = getelementptr i8, ptr %i.ba, i64 -24
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds i8, ptr %i.ay, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 240
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !155 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i, label %bb.k, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt16__throw_bad_castv() #26
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.j
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 56
  %i.bh = load i8, ptr %i.bg, align 8, !tbaa !160
  %.not.i1.i.i = icmp eq i8 %i.bh, 0
  br i1 %.not.i1.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 67
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !35
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.m:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bf)
  %i.bk = load ptr, ptr %i.bf, align 8, !tbaa !96
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = tail call noundef signext i8 %i.bm(ptr noundef nonnull align 8 dereferenceable(570) %i.bf, i8 noundef signext 10), !inline_history !261
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.l, %bb.m
  %.0.i.i.i = phi i8 [ %i.bj, %bb.l ], [ %i.bn, %bb.m ]
  %i.bo = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, i8 noundef signext %.0.i.i.i)
  br label %.loopexit.sink.split

bb.n:                                             ; preds = %bb.i
  %i.bp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.35, i64 noundef 20) ; 0 uses
  %i.bq = load ptr, ptr %0, align 8, !tbaa !96
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 88
  %i.bs = load ptr, ptr %i.br, align 8
  tail call void %i.bs(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.bt = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.36, i64 noundef 3) ; 0 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !41
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !34
  %i.by = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.bv, i64 noundef %i.bx) ; 4 uses
  %i.bz = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.by, ptr noundef nonnull @.str.34, i64 noundef 21) ; 0 uses
  %i.ca = load ptr, ptr %i.by, align 8, !tbaa !96
  %i.cb = getelementptr i8, ptr %i.ca, i64 -24
  %i.cc = load i64, ptr %i.cb, align 8
  %i.cd = getelementptr inbounds i8, ptr %i.by, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 240
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !155 ; 6 uses
  %.not.i.i.i17 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i17, label %bb.o, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i18

bb.o:                                             ; preds = %bb.n
  tail call void @_ZSt16__throw_bad_castv() #26
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i18: ; preds = %bb.n
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 56
  %i.ch = load i8, ptr %i.cg, align 8, !tbaa !160
  %.not.i1.i.i19 = icmp eq i8 %i.ch, 0
  br i1 %.not.i1.i.i19, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i18
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 67
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !35
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit21

bb.q:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i18
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.cf)
  %i.ck = load ptr, ptr %i.cf, align 8, !tbaa !96
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 48
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = tail call noundef signext i8 %i.cm(ptr noundef nonnull align 8 dereferenceable(570) %i.cf, i8 noundef signext 10), !inline_history !261
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit21

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit21: ; preds = %bb.p, %bb.q
  %.0.i.i.i20 = phi i8 [ %i.cj, %bb.p ], [ %i.cn, %bb.q ]
  %i.co = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.by, i8 noundef signext %.0.i.i.i20)
  br label %.loopexit.sink.split

bb.r:                                             ; preds = %bb.h
  %i.cp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.37, i64 noundef 4) ; 0 uses
  %i.cq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @_ZN8Variable13sink_var_nameE, i64 noundef 12) ; 0 uses
  %i.cr = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.21, i64 noundef 3) ; 0 uses
  %i.cs = load ptr, ptr %0, align 8, !tbaa !96
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 88
  %i.cu = load ptr, ptr %i.ct, align 8
  tail call void %i.cu(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.cv = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.22, i64 noundef 1) ; 0 uses
  %i.cw = load ptr, ptr %1, align 8, !tbaa !96
  %i.cx = getelementptr i8, ptr %i.cw, i64 -24
  %i.cy = load i64, ptr %i.cx, align 8
  %i.cz = getelementptr inbounds i8, ptr %1, i64 %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 240
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !155 ; 6 uses
  %.not.i.i.i22 = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i22, label %bb.s, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i23

bb.s:                                             ; preds = %bb.r
  tail call void @_ZSt16__throw_bad_castv() #26
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i23: ; preds = %bb.r
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 56
  %i.dd = load i8, ptr %i.dc, align 8, !tbaa !160
  %.not.i1.i.i24 = icmp eq i8 %i.dd, 0
  br i1 %.not.i1.i.i24, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i23
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 67
  %i.df = load i8, ptr %i.de, align 1, !tbaa !35
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit26

bb.u:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i23
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.db)
  %i.dg = load ptr, ptr %i.db, align 8, !tbaa !96
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 48
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = tail call noundef signext i8 %i.di(ptr noundef nonnull align 8 dereferenceable(570) %i.db, i8 noundef signext 10), !inline_history !261
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit26

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit26: ; preds = %bb.t, %bb.u
  %.0.i.i.i25 = phi i8 [ %i.df, %bb.t ], [ %i.dj, %bb.u ]
  %i.dk = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext %.0.i.i.i25)
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit26, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit21, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %.sink = phi ptr [ %i.bo, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ], [ %i.co, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit21 ], [ %i.dk, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit26 ]
  %i.dl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %.sink) ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %.loopexit.sink.split, %bb.b, %bb.g
  ret void
}

declare noundef ptr @_Z21get_fact_mgr_for_funcPK8Function(ptr noundef) local_unnamed_addr #4

declare noundef ptr @_Z16GetFirstFunctionv() local_unnamed_addr #4

declare noundef zeroext i1 @_ZN9FactUnion17is_field_readableEPK8VariableiRKSt6vectorIPK4FactSaIS6_EE(ptr noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN9CGOptions12compute_hashEv() local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local void @_Z12HashVariableP8VariablePSo(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !96
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK8Variable9to_stringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(200) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.105", align 8   ; 12 uses
  %3 = alloca %"class.std::vector.28", align 8    ; 14 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %6 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 17 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 18 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !31
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 16 uses
  store i64 0, ptr %i.b, align 8, !tbaa !34
  store i8 0, ptr %i.a, align 8, !tbaa !35
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %tailrecurse.i, %bb.a
  %.tr.i = phi ptr [ %1, %bb.a ], [ %i.d, %tailrecurse.i ] ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.tr.i, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !89   ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.b, label %tailrecurse.i

bb.b:                                             ; preds = %tailrecurse.i
  %i.e = getelementptr inbounds nuw i8, ptr %.tr.i, i64 96
  %i.f = load i8, ptr %i.e, align 8, !tbaa !97, !range !98, !noundef !99
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZNK8Variable10is_virtualEv.exit, label %_ZNK8Variable10is_virtualEv.exit.thread

_ZNK8Variable10is_virtualEv.exit:                 ; preds = %bb.b
  %8 = getelementptr inbounds nuw i8, ptr %.tr.i, i64 200
  %9 = load ptr, ptr %8, align 8, !tbaa !108
  %10 = icmp eq ptr %9, null
  br i1 %10, label %bb.c, label %_ZNK8Variable10is_virtualEv.exit.thread

bb.c:                                             ; preds = %_ZNK8Variable10is_virtualEv.exit
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.i = load i8, ptr %i.h, align 8, !tbaa !97, !range !98, !noundef !99
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.d, label %_ZNK8Variable10is_virtualEv.exit.thread

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !271)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !138, !noalias !271 ; 2 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !139, !noalias !271 ; 4 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p                       ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !alias.scope !271
  %.not.i.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not.i.i.i.i.i, label %.thread1.i, label %bb.e

.thread1.i:                                       ; preds = %bb.d
  %i.r = getelementptr inbounds i8, ptr null, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %3, align 8
  store ptr %i.r, ptr %i.s, align 8, !tbaa !140, !alias.scope !271
  br label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.t = icmp ugt i64 %i.q, 9223372036854775804
  br i1 %i.t, label %.noexc.i.i.i, label %bb.f, !prof !93

.noexc.i.i.i:                                     ; preds = %bb.e
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.u = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #24
          to label %.noexc40 unwind label %bb.w   ; 4 uses

.noexc40:                                         ; preds = %bb.f
  store ptr %i.u, ptr %3, align 8, !tbaa !139, !alias.scope !271
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.q ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.v, ptr %i.w, align 8, !tbaa !140, !alias.scope !271
  %i.x = icmp samesign ugt i64 %i.q, 4
  br i1 %i.x, label %bb.g, label %bb.h, !prof !141

bb.g:                                             ; preds = %.noexc40
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.u, ptr align 4 %i.n, i64 %i.q, i1 false), !noalias !271
  br label %bb.j

bb.h:                                             ; preds = %.noexc40
  %i.y = icmp eq i64 %i.q, 4
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.z = load i32, ptr %i.n, align 4, !tbaa !117, !noalias !271
  store i32 %i.z, ptr %i.u, align 4, !tbaa !117, !noalias !271
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %.thread1.i
  %i.aa = phi ptr [ %i.v, %bb.g ], [ %i.v, %bb.h ], [ %i.v, %bb.i ], [ %i.r, %.thread1.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !138, !alias.scope !271
  %i.ac = invoke noundef i32 @_Z20expand_within_rangesRKSt6vectorIjSaIjEERS_IS_IiSaIiEESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.k unwind label %bb.x       ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.ad = load ptr, ptr %3, align 8, !tbaa !139   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !140
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = sub i64 %i.ag, %i.ah
  call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ai) #23
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !144 ; 2 uses
  %i.al = load ptr, ptr %2, align 8, !tbaa !145   ; 3 uses
  %.not126 = icmp eq ptr %i.ak, %i.al
  br i1 %.not126, label %._crit_edge, label %.lr.ph123

.lr.ph123:                                        ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.ao = invoke noundef ptr @_ZNK13ArrayVariable7itemizeERKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(288) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %bb.m unwind label %.loopexit.loopexit.split-lp

bb.m:                                             ; preds = %.lr.ph123
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZNK8Variable9to_stringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(200) %i.ao)
          to label %bb.n unwind label %.loopexit.split-lp150

bb.n:                                             ; preds = %bb.m
  %i.ap = load ptr, ptr %4, align 8, !tbaa !41    ; 3 uses
  %i.aq = load i64, ptr %i.am, align 8, !tbaa !34 ; 6 uses
  %i.ar = load i64, ptr %i.b, align 8, !tbaa !34  ; 5 uses
  %i.as = sub i64 9223372036854775807, %i.ar
  %i.at = icmp ult i64 %i.as, %i.aq
  br i1 %i.at, label %.loopexit153, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.peel: ; preds = %bb.n
  %i.au = add i64 %i.ar, %i.aq                    ; 3 uses
  %i.av = load ptr, ptr %0, align 8, !tbaa !41    ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.a
  br i1 %i.aw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.peel
  %i.ax = load i64, ptr %i.a, align 8, !tbaa !35
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.peel
  %i.ay = icmp ult i64 %i.ar, 16
  call void @llvm.assume(i1 %i.ay)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.peel
  %i.az = phi i64 [ %i.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.peel ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.peel ]
  %.not.i.i.i.i.peel = icmp ugt i64 %i.au, %i.az
  br i1 %.not.i.i.i.i.peel, label %bb.s, label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.peel
  %.not8.i.i.i.i.peel = icmp eq i64 %i.aq, 0
  br i1 %.not8.i.i.i.i.peel, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ar ; 2 uses
  %cond.i.i.i.i.peel = icmp eq i64 %i.aq, 1
  br i1 %cond.i.i.i.i.peel, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ba, ptr align 1 %i.ap, i64 %i.aq, i1 false)
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.bb = load i8, ptr %i.ap, align 1, !tbaa !35
  store i8 %i.bb, ptr %i.ba, align 1, !tbaa !35
  br label %bb.t

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.peel
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ar, i64 noundef 0, ptr noundef %i.ap, i64 noundef %i.aq)
          to label %bb.t unwind label %.loopexit90.loopexit.split-lp

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q, %bb.o
  store i64 %i.au, ptr %i.b, align 8, !tbaa !34
  %i.bc = load ptr, ptr %0, align 8, !tbaa !41
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.au
  store i8 0, ptr %i.bd, align 1, !tbaa !35
  %i.be = load ptr, ptr %4, align 8, !tbaa !41    ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.an
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel: ; preds = %bb.t
  %i.bg = load i64, ptr %i.an, align 8, !tbaa !35
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.bi = load ptr, ptr %i.aj, align 8, !tbaa !144 ; 2 uses
  %i.bj = load ptr, ptr %2, align 8, !tbaa !145   ; 3 uses
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = sdiv exact i64 %i.bm, 24
  %i.bo = icmp ugt i64 %i.bn, 1
  br i1 %i.bo, label %.peel.next143, label %._crit_edge

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %_ZNSt6vectorIjSaIjEED2Ev.exit
  %.lcssa111 = phi ptr [ %i.ak, %_ZNSt6vectorIjSaIjEED2Ev.exit ], [ %i.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel ], [ %i.dt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %.lcssa = phi ptr [ %i.al, %_ZNSt6vectorIjSaIjEED2Ev.exit ], [ %i.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel ], [ %i.du, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %.not4.i.i.i = icmp eq ptr %.lcssa, %.lcssa111
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIiSaIiEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bv, %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i ], [ %.lcssa, %._crit_edge ] ; 3 uses
  %i.bp = load ptr, ptr %.05.i.i.i, align 8, !tbaa !146 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !147
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = ptrtoint ptr %i.bp to i64
  %i.bu = sub i64 %i.bs, %i.bt
  call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef %i.bu) #23
  br label %_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIiSaIiEEEvPT_.exit.i.i.i:  ; preds = %bb.u, %.lr.ph.i.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i41 = icmp eq ptr %i.bv, %.lcssa111
end_hunk_0
begin_hunk_1_@_ZNK8Variable9to_stringB5cxx11Ev:bb.a
          to label %bb.z unwind label %.loopexit.loopexit

bb.z:                                             ; preds = %.peel.next143
  %i.cn = load i64, ptr %i.b, align 8, !tbaa !34  ; 5 uses
  %i.co = and i64 %i.cn, -2
  %i.cp = icmp eq i64 %i.co, 9223372036854775806
  br i1 %i.cp, label %.loopexit148, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

.loopexit148:                                     ; preds = %bb.z
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.68) #26
          to label %.noexc45 unwind label %.loopexit.split-lp

.noexc45:                                         ; preds = %.loopexit148
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.z
  %i.cq = add nsw i64 %i.cn, 2                    ; 3 uses
  %i.cr = load ptr, ptr %0, align 8, !tbaa !41    ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.a
  br i1 %i.cs, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.ct = icmp ult i64 %i.cn, 16
  call void @llvm.assume(i1 %i.ct)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.cu = load i64, ptr %i.a, align 8, !tbaa !35
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.cv = phi i64 [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i44 = icmp ugt i64 %i.cq, %i.cv
  br i1 %.not.i.i.i44, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cn
  store i16 8236, ptr %i.cw, align 1
  br label %bb.ac

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.cn, i64 noundef 0, ptr noundef nonnull @.str.25, i64 noundef 2)
          to label %bb.ac unwind label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.ab, %.peel.next143
  %lpad.loopexit145 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.loopexit.split-lp:                      ; preds = %.lr.ph123
  %lpad.loopexit.split-lp146 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.split-lp:                               ; preds = %.loopexit148
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  store i64 %i.cq, ptr %i.b, align 8, !tbaa !34
  %i.cx = load ptr, ptr %0, align 8, !tbaa !41
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cq
  store i8 0, ptr %i.cy, align 1, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZNK8Variable9to_stringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(200) %i.cm)
          to label %bb.ad unwind label %.loopexit149

bb.ad:                                            ; preds = %bb.ac
  %i.cz = load ptr, ptr %4, align 8, !tbaa !41    ; 3 uses
  %i.da = load i64, ptr %i.am, align 8, !tbaa !34 ; 6 uses
  %i.db = load i64, ptr %i.b, align 8, !tbaa !34  ; 5 uses
  %i.dc = sub i64 9223372036854775807, %i.db
  %i.dd = icmp ult i64 %i.dc, %i.da
  br i1 %i.dd, label %.loopexit153, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

.loopexit153:                                     ; preds = %bb.ad, %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.68) #26
          to label %.noexc47 unwind label %.loopexit.split-lp91

.noexc47:                                         ; preds = %.loopexit153
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.ad
  %i.de = add i64 %i.db, %i.da                    ; 3 uses
  %i.df = load ptr, ptr %0, align 8, !tbaa !41    ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.a
  br i1 %i.dg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.dh = icmp ult i64 %i.db, 16
  call void @llvm.assume(i1 %i.dh)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.di = load i64, ptr %i.a, align 8, !tbaa !35
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.dj = phi i64 [ %i.di, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i ]
  %.not.i.i.i.i = icmp ugt i64 %i.de, %i.dj
  br i1 %.not.i.i.i.i, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %.not8.i.i.i.i = icmp eq i64 %i.da, 0
  br i1 %.not8.i.i.i.i, label %bb.aj, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.db ; 2 uses
  %cond.i.i.i.i = icmp eq i64 %i.da, 1
  br i1 %cond.i.i.i.i, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dl = load i8, ptr %i.cz, align 1, !tbaa !35
  store i8 %i.dl, ptr %i.dk, align 1, !tbaa !35
  br label %bb.aj

bb.ah:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dk, ptr align 1 %i.cz, i64 %i.da, i1 false)
  br label %bb.aj

bb.ai:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.db, i64 noundef 0, ptr noundef %i.cz, i64 noundef %i.da)
          to label %bb.aj unwind label %.loopexit90.loopexit

bb.aj:                                            ; preds = %bb.ah, %bb.ag, %bb.ae, %bb.ai
  store i64 %i.de, ptr %i.b, align 8, !tbaa !34
  %i.dm = load ptr, ptr %0, align 8, !tbaa !41
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.de
  store i8 0, ptr %i.dn, align 1, !tbaa !35
  %i.do = load ptr, ptr %4, align 8, !tbaa !41    ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.an
  br i1 %i.dp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.aj
  %i.dq = load i64, ptr %i.an, align 8, !tbaa !35
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.dr) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.ds = add nuw i64 %.015122, 1                 ; 2 uses
  %i.dt = load ptr, ptr %i.aj, align 8, !tbaa !144 ; 2 uses
  %i.du = load ptr, ptr %2, align 8, !tbaa !145   ; 3 uses
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = ptrtoint ptr %i.du to i64
  %i.dx = sub i64 %i.dv, %i.dw
  %i.dy = sdiv exact i64 %i.dx, 24
  %i.dz = icmp ult i64 %i.ds, %i.dy
  br i1 %i.dz, label %.peel.next143, label %._crit_edge, !llvm.loop !265

.loopexit149:                                     ; preds = %bb.ac
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

.loopexit.split-lp150:                            ; preds = %bb.m
  %lpad.loopexit.split-lp151 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

.loopexit90.loopexit:                             ; preds = %bb.ai
  %lpad.loopexit154 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit90

.loopexit90.loopexit.split-lp:                    ; preds = %bb.s
  %lpad.loopexit.split-lp155 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit90

.loopexit.split-lp91:                             ; preds = %.loopexit153
  %lpad.loopexit.split-lp93 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit90

.loopexit90:                                      ; preds = %.loopexit90.loopexit, %.loopexit90.loopexit.split-lp, %.loopexit.split-lp91
  %lpad.phi94 = phi { ptr, i32 } [ %lpad.loopexit.split-lp93, %.loopexit.split-lp91 ], [ %lpad.loopexit154, %.loopexit90.loopexit ], [ %lpad.loopexit.split-lp155, %.loopexit90.loopexit.split-lp ] ; 2 uses
  %i.ea = load ptr, ptr %4, align 8, !tbaa !41    ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.an
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %.loopexit90
  %i.ec = load i64, ptr %i.an, align 8, !tbaa !35
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ed) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %.loopexit90, %.loopexit149, %.loopexit.split-lp150, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49
  %.pn35 = phi { ptr, i32 } [ %lpad.phi94, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49 ], [ %lpad.loopexit.split-lp151, %.loopexit.split-lp150 ], [ %lpad.loopexit, %.loopexit149 ], [ %lpad.phi94, %.loopexit90 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.loopexit.loopexit.split-lp, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, %_ZNSt6vectorIjSaIjEED2Ev.exit43
  %.pn35.pn.pn = phi { ptr, i32 } [ %.pn32, %_ZNSt6vectorIjSaIjEED2Ev.exit43 ], [ %.pn35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit145, %.loopexit.loopexit ], [ %lpad.loopexit.split-lp146, %.loopexit.loopexit.split-lp ]
  call void @_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.bs

_ZNK8Variable10is_virtualEv.exit.thread:          ; preds = %bb.b, %bb.c, %_ZNK8Variable10is_virtualEv.exit
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !65
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !88
  %i.eh = and i32 %i.eg, -2
  %switch = icmp eq i32 %i.eh, 2
  br i1 %switch, label %.preheader, label %bb.bc

.preheader:                                       ; preds = %_ZNK8Variable10is_virtualEv.exit.thread
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !90
  %i.el = load ptr, ptr %i.ei, align 8, !tbaa !91 ; 2 uses
  %.not125 = icmp eq ptr %i.ek, %i.el
  br i1 %.not125, label %.loopexit95, label %bb.ak

bb.ak:                                            ; preds = %.preheader
  %i.em = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.eo = load ptr, ptr %i.el, align 8, !tbaa !48
  invoke void @_ZNK8Variable9to_stringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(200) %i.eo)
          to label %bb.al unwind label %.loopexit.split-lp134

bb.al:                                            ; preds = %bb.ak
  %i.ep = load ptr, ptr %5, align 8, !tbaa !41    ; 3 uses
  %i.eq = load i64, ptr %i.em, align 8, !tbaa !34 ; 6 uses
  %i.er = load i64, ptr %i.b, align 8, !tbaa !34  ; 5 uses
  %i.es = sub i64 9223372036854775807, %i.er
  %i.et = icmp ult i64 %i.es, %i.eq
  br i1 %i.et, label %.loopexit138, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i62.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i62.peel: ; preds = %bb.al
  %i.eu = add i64 %i.er, %i.eq                    ; 3 uses
  %i.ev = load ptr, ptr %0, align 8, !tbaa !41    ; 2 uses
  %i.ew = icmp eq ptr %i.ev, %i.a
  br i1 %i.ew, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i68.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i63.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i63.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i62.peel
  %i.ex = load i64, ptr %i.a, align 8, !tbaa !35
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i64.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i68.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i62.peel
  %i.ey = icmp ult i64 %i.er, 16
  call void @llvm.assume(i1 %i.ey)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i64.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i64.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i68.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i63.peel
  %i.ez = phi i64 [ %i.ex, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i63.peel ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i68.peel ]
  %.not.i.i.i.i65.peel = icmp ugt i64 %i.eu, %i.ez
  br i1 %.not.i.i.i.i65.peel, label %bb.aq, label %bb.am

bb.am:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i64.peel
  %.not8.i.i.i.i66.peel = icmp eq i64 %i.eq, 0
  br i1 %.not8.i.i.i.i66.peel, label %bb.ar, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.er ; 2 uses
  %cond.i.i.i.i67.peel = icmp eq i64 %i.eq, 1
  br i1 %cond.i.i.i.i67.peel, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fa, ptr align 1 %i.ep, i64 %i.eq, i1 false)
  br label %bb.ar

bb.ap:                                            ; preds = %bb.an
  %i.fb = load i8, ptr %i.ep, align 1, !tbaa !35
  store i8 %i.fb, ptr %i.fa, align 1, !tbaa !35
  br label %bb.ar

bb.aq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i64.peel
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.er, i64 noundef 0, ptr noundef %i.ep, i64 noundef %i.eq)
          to label %bb.ar unwind label %.loopexit101.loopexit.split-lp

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.am
  store i64 %i.eu, ptr %i.b, align 8, !tbaa !34
  %i.fc = load ptr, ptr %0, align 8, !tbaa !41
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.eu
  store i8 0, ptr %i.fd, align 1, !tbaa !35
  %i.fe = load ptr, ptr %5, align 8, !tbaa !41    ; 2 uses
  %i.ff = icmp eq ptr %i.fe, %i.en
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.peel: ; preds = %bb.ar
  %i.fg = load i64, ptr %i.en, align 8, !tbaa !35
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fh) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.peel: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.fi = load ptr, ptr %i.ej, align 8, !tbaa !90
  %i.fj = load ptr, ptr %i.ei, align 8, !tbaa !91
  %i.fk = ptrtoint ptr %i.fi to i64
  %i.fl = ptrtoint ptr %i.fj to i64
  %i.fm = sub i64 %i.fk, %i.fl
  %i.fn = icmp ugt i64 %i.fm, 8
  br i1 %i.fn, label %.peel.next, label %.loopexit95

.peel.next:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74
  %.0121 = phi i64 [ %i.gv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74 ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.peel ] ; 2 uses
  %i.fo = load i64, ptr %i.b, align 8, !tbaa !34  ; 5 uses
  %i.fp = and i64 %i.fo, -2
  %i.fq = icmp eq i64 %i.fp, 9223372036854775806
  br i1 %i.fq, label %.loopexit130, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i52

.loopexit130:                                     ; preds = %.peel.next
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.68) #26
          to label %.noexc59 unwind label %.loopexit.split-lp97

.noexc59:                                         ; preds = %.loopexit130
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i52: ; preds = %.peel.next
  %i.fr = add nsw i64 %i.fo, 2                    ; 3 uses
  %i.fs = load ptr, ptr %0, align 8, !tbaa !41    ; 2 uses
  %i.ft = icmp eq ptr %i.fs, %i.a
  br i1 %i.ft, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i58: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i52
  %i.fu = icmp ult i64 %i.fo, 16
  call void @llvm.assume(i1 %i.fu)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i53: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i52
  %i.fv = load i64, ptr %i.a, align 8, !tbaa !35
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i54: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i53, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i58
  %i.fw = phi i64 [ %i.fv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i53 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i58 ]
  %.not.i.i.i55 = icmp ugt i64 %i.fr, %i.fw
  br i1 %.not.i.i.i55, label %bb.at, label %bb.as

bb.as:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i54
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.fo
  store i16 8236, ptr %i.fx, align 1
  br label %bb.au

bb.at:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i54
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.fo, i64 noundef 0, ptr noundef nonnull @.str.25, i64 noundef 2)
          to label %bb.au unwind label %.loopexit96

.loopexit96:                                      ; preds = %bb.at
  %lpad.loopexit131 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

.loopexit.split-lp97:                             ; preds = %.loopexit130
  %lpad.loopexit.split-lp99 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.au:                                            ; preds = %bb.as, %bb.at
  store i64 %i.fr, ptr %i.b, align 8, !tbaa !34
  %i.fy = load ptr, ptr %0, align 8, !tbaa !41
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.fr
  store i8 0, ptr %i.fz, align 1, !tbaa !35
  %.pre = load ptr, ptr %i.ei, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %.0121
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !48
  invoke void @_ZNK8Variable9to_stringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(200) %i.gb)
          to label %bb.av unwind label %.loopexit133

bb.av:                                            ; preds = %bb.au
  %i.gc = load ptr, ptr %5, align 8, !tbaa !41    ; 3 uses
  %i.gd = load i64, ptr %i.em, align 8, !tbaa !34 ; 6 uses
  %i.ge = load i64, ptr %i.b, align 8, !tbaa !34  ; 5 uses
  %i.gf = sub i64 9223372036854775807, %i.ge
  %i.gg = icmp ult i64 %i.gf, %i.gd
  br i1 %i.gg, label %.loopexit138, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i62

.loopexit138:                                     ; preds = %bb.av, %bb.al
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.68) #26
          to label %.noexc69 unwind label %.loopexit.split-lp102

.noexc69:                                         ; preds = %.loopexit138
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i62: ; preds = %bb.av
  %i.gh = add i64 %i.ge, %i.gd                    ; 3 uses
  %i.gi = load ptr, ptr %0, align 8, !tbaa !41    ; 2 uses
  %i.gj = icmp eq ptr %i.gi, %i.a
  br i1 %i.gj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i68: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i62
  %i.gk = icmp ult i64 %i.ge, 16
  call void @llvm.assume(i1 %i.gk)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i63: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i62
  %i.gl = load i64, ptr %i.a, align 8, !tbaa !35
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i64: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i63, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i68
  %i.gm = phi i64 [ %i.gl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i63 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i68 ]
  %.not.i.i.i.i65 = icmp ugt i64 %i.gh, %i.gm
  br i1 %.not.i.i.i.i65, label %bb.ba, label %bb.aw

bb.aw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i64
  %.not8.i.i.i.i66 = icmp eq i64 %i.gd, 0
end_hunk_1
