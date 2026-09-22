Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/cmd_context?download=true
inline.NumInlined: 4635
inline.NumDeleted: 2326
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 55
begin_hunk_0_@_ZN11cmd_context18display_sat_resultE5lbool:bb.a
bb.i:                                             ; preds = %bb.d
  %i.ae = load ptr, ptr %0, align 8, !tbaa !167
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.ag(ptr noundef nonnull align 8 dereferenceable(936) %0) ; 4 uses
  %i.ai = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull @.str.68, i64 noundef 5) ; 0 uses
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !167
  %i.ak = getelementptr i8, ptr %i.aj, i64 -24
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = getelementptr inbounds i8, ptr %i.ah, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 240
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !764 ; 6 uses
  %.not.i.i.i1 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i1, label %bb.j, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt16__throw_bad_castv() #29
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2: ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 56
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !769
  %.not.i1.i.i3 = icmp eq i8 %i.aq, 0
  br i1 %.not.i1.i.i3, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 67
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !504
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit5

bb.l:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ao)
  %i.at = load ptr, ptr %i.ao, align 8, !tbaa !167
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = tail call noundef signext i8 %i.av(ptr noundef nonnull align 8 dereferenceable(570) %i.ao, i8 noundef signext 10), !inline_history !60
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit5

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit5: ; preds = %bb.k, %bb.l
  %.0.i.i.i4 = phi i8 [ %i.as, %bb.k ], [ %i.aw, %bb.l ]
  %i.ax = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, i8 noundef signext %.0.i.i.i4)
  br label %.sink.split

bb.m:                                             ; preds = %bb.d
  %i.ay = load ptr, ptr %0, align 8, !tbaa !167
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = tail call noundef nonnull align 8 dereferenceable(8) ptr %i.ba(ptr noundef nonnull align 8 dereferenceable(936) %0) ; 4 uses
  %i.bc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, ptr noundef nonnull @.str.60, i64 noundef 7) ; 0 uses
  %i.bd = load ptr, ptr %i.bb, align 8, !tbaa !167
  %i.be = getelementptr i8, ptr %i.bd, i64 -24
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = getelementptr inbounds i8, ptr %i.bb, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 240
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !764 ; 6 uses
  %.not.i.i.i6 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i6, label %bb.n, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i7

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt16__throw_bad_castv() #29
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i7: ; preds = %bb.m
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 56
  %i.bk = load i8, ptr %i.bj, align 8, !tbaa !769
  %.not.i1.i.i8 = icmp eq i8 %i.bk, 0
  br i1 %.not.i1.i.i8, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i7
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 67
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !504
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit10

bb.p:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i7
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bi)
  %i.bn = load ptr, ptr %i.bi, align 8, !tbaa !167
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = tail call noundef signext i8 %i.bp(ptr noundef nonnull align 8 dereferenceable(570) %i.bi, i8 noundef signext 10), !inline_history !60
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit10

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit10: ; preds = %bb.o, %bb.p
  %.0.i.i.i9 = phi i8 [ %i.bm, %bb.o ], [ %i.bq, %bb.p ]
  %i.br = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, i8 noundef signext %.0.i.i.i9)
  br label %.sink.split

.sink.split:                                      ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit5, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit10
  %.sink = phi ptr [ %i.br, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit10 ], [ %i.ax, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit5 ], [ %i.ad, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ]
  %i.bs = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %.sink) ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %.sink.split, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11cmd_context14validate_modelEv(ptr noundef nonnull align 8 dereferenceable(936) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.obj_mark, align 8            ; 7 uses
  %2 = alloca %class.obj_mark, align 8            ; 7 uses
  %3 = alloca %class.ref.296, align 8             ; 10 uses
  %4 = alloca %class.params_ref, align 8          ; 10 uses
  %5 = alloca %class.model_evaluator, align 8     ; 9 uses
  %6 = alloca %struct.contains_underspecified_op_proc, align 8 ; 10 uses
  %7 = alloca %class.cancel_eh, align 8           ; 12 uses
  %8 = alloca %class.obj_ref.48, align 8          ; 14 uses
  %9 = alloca %struct.scoped_ctrl_c, align 8      ; 6 uses
  %10 = alloca %class.obj_mark, align 8           ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store ptr null, ptr %3, align 8, !tbaa !773
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 190
  %i.b = load i8, ptr %i.a, align 2, !tbaa !603, !range !192, !noundef !193
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN3refI5modelED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = invoke noundef zeroext i1 @_ZNK11cmd_context18is_model_availableER3refI5modelE(ptr noundef nonnull align 8 dereferenceable(936) %0, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %i.d, label %bb.e, label %bb.cd

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store ptr null, ptr %4, align 8, !tbaa !598
  invoke void @_ZN10params_ref8set_uintEPKcj(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.72, i32 noundef -1)
          to label %bb.f unwind label %bb.q

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN10params_ref8set_uintEPKcj(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.73, i32 noundef 1)
          to label %bb.g unwind label %bb.q

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN10params_ref8set_boolEPKcb(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.74, i1 noundef zeroext true)
          to label %bb.h unwind label %bb.q

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.f = load ptr, ptr %3, align 8, !tbaa !773
  invoke void @_ZN15model_evaluatorC1ER10model_coreRK10params_ref(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(96) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.i unwind label %bb.r

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN15model_evaluator27set_expand_array_equalitiesEb(ptr noundef nonnull align 8 dereferenceable(8) %5, i1 noundef zeroext false)
          to label %bb.j unwind label %bb.s

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.g = invoke noundef nonnull align 8 dereferenceable(952) ptr @_ZNK11cmd_context1mEv(ptr noundef nonnull align 8 dereferenceable(936) %0)
          to label %bb.k unwind label %bb.t

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN31contains_underspecified_op_procC2ER11ast_manager(ptr noundef nonnull align 8 dereferenceable(196) %6, ptr noundef nonnull align 8 dereferenceable(952) %i.g)
          to label %bb.l unwind label %bb.t

bb.l:                                             ; preds = %bb.k
  %i.h = invoke noundef nonnull align 8 dereferenceable(952) ptr @_ZNK11cmd_context1mEv(ptr noundef nonnull align 8 dereferenceable(936) %0)
          to label %bb.m unwind label %bb.u       ; 3 uses

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN8reslimit4pushEj(ptr noundef nonnull align 8 dereferenceable(40) %i.h, i32 noundef 0)
          to label %_ZN13scoped_rlimitC2ER8reslimitj.exit unwind label %bb.u

_ZN13scoped_rlimitC2ER8reslimitj.exit:            ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.i = invoke noundef nonnull align 8 dereferenceable(952) ptr @_ZNK11cmd_context1mEv(ptr noundef nonnull align 8 dereferenceable(936) %0)
          to label %bb.n unwind label %bb.v

bb.n:                                             ; preds = %_ZN13scoped_rlimitC2ER8reslimitj.exit
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 0, ptr %i.j, align 8, !tbaa !733
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV9cancel_ehI8reslimitE, i64 16), ptr %7, align 8, !tbaa !167
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(42) %i.k, i8 0, i64 42, i1 false)
  store ptr %i.i, ptr %i.l, align 8, !tbaa !735
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %i.m = invoke noundef nonnull align 8 dereferenceable(952) ptr @_ZNK11cmd_context1mEv(ptr noundef nonnull align 8 dereferenceable(936) %0)
          to label %bb.o unwind label %bb.w

bb.o:                                             ; preds = %bb.n
  store ptr null, ptr %8, align 8, !tbaa !183
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !139
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  invoke void @_ZN13scoped_ctrl_cC1ER13event_handlerb(ptr noundef nonnull align 8 dereferenceable(9) %9, ptr noundef nonnull align 8 dereferenceable(12) %7, i1 noundef zeroext true)
          to label %bb.p unwind label %bb.x

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !170  ; 4 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_ZN8obj_markI4expr10bit_vector14default_t2uintIS0_EED2Ev.exit, label %_ZNK6vectorIP4exprLb0EjE3endEv.exit

_ZNK6vectorIP4exprLb0EjE3endEv.exit:              ; preds = %bb.p
  %i.s = getelementptr inbounds i8, ptr %i.q, i64 -4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !195  ; 2 uses
  %i.u = zext i32 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.v
  %.not59 = icmp eq i32 %i.t, 0
  br i1 %.not59, label %_ZN8obj_markI4expr10bit_vector14default_t2uintIS0_EED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK6vectorIP4exprLb0EjE3endEv.exit
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  br label %bb.y

._crit_edge:                                      ; preds = %_Z9is_groundPK4expr.exit.thread
  br i1 %.2, label %bb.bj, label %.critedge

bb.q:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

bb.r:                                             ; preds = %bb.h
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.s:                                             ; preds = %bb.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.t:                                             ; preds = %bb.k, %bb.j
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.u:                                             ; preds = %bb.m, %bb.l
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %_ZN13scoped_rlimitD2Ev.exit48

bb.v:                                             ; preds = %_ZN13scoped_rlimitC2ER8reslimitj.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.w:                                             ; preds = %bb.n
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.x:                                             ; preds = %bb.o
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.y:                                             ; preds = %.lr.ph, %_Z9is_groundPK4expr.exit.thread
  %.061 = phi ptr [ %i.q, %.lr.ph ], [ %i.cs, %_Z9is_groundPK4expr.exit.thread ] ; 2 uses
  %.01660 = phi i1 [ false, %.lr.ph ], [ %.2, %_Z9is_groundPK4expr.exit.thread ] ; 7 uses
  %i.ak = load ptr, ptr %.061, align 8, !tbaa !215 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.am = load i32, ptr %i.al, align 4
  %i.an = and i32 %i.am, 65535
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %_Z9is_groundPK4expr.exit, label %_Z9is_groundPK4expr.exit.thread

_Z9is_groundPK4expr.exit:                         ; preds = %bb.y
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 30
  %i.aq = load i8, ptr %i.ap, align 2
  %i.ar = trunc i8 %i.aq to i1
  br i1 %i.ar, label %bb.z, label %_Z9is_groundPK4expr.exit.thread

bb.z:                                             ; preds = %_Z9is_groundPK4expr.exit
  %i.as = load ptr, ptr %8, align 8, !tbaa !183   ; 3 uses
  %.not.i4.i = icmp eq ptr %i.as, null
  br i1 %.not.i4.i, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.at = load ptr, ptr %i.n, align 8, !tbaa !200, !nonnull !193, !align !201
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !109
  %i.aw = add i32 %i.av, -1                       ; 2 uses
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !109
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.at, ptr noundef nonnull %i.as)
          to label %bb.ac unwind label %bb.af

bb.ac:                                            ; preds = %bb.aa, %bb.z, %bb.ab
  store ptr null, ptr %8, align 8, !tbaa !183
  invoke void @_ZN15model_evaluatorclEP4exprR7obj_refIS0_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.ay = invoke noundef nonnull align 8 dereferenceable(952) ptr @_ZNK11cmd_context1mEv(ptr noundef nonnull align 8 dereferenceable(936) %0)
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.az = load ptr, ptr %8, align 8, !tbaa !183   ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 832
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !786
  %i.bc = icmp eq ptr %i.az, %i.bb
  br i1 %i.bc, label %_Z9is_groundPK4expr.exit.thread, label %bb.ag

bb.af:                                            ; preds = %bb.ab, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.az, %bb.ax, %bb.aw, %bb.ad, %bb.ac
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.ag:                                            ; preds = %bb.ae
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bf = load i32, ptr %i.be, align 4
  %trunc = trunc i32 %i.bf to i16
  switch i16 %trunc, label %bb.ah [
    i16 0, label %.split
    i16 2, label %_Z9is_groundPK4expr.exit.thread
  ]

.split:                                           ; preds = %bb.ag
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 30
  %i.bh = load i8, ptr %i.bg, align 2
  %i.bi = and i8 %i.bh, 2
  %.not52 = icmp eq i8 %i.bi, 0
  br i1 %.not52, label %bb.ah, label %_Z9is_groundPK4expr.exit.thread

bb.ah:                                            ; preds = %bb.ag, %.split
  %i.bj = invoke noundef nonnull align 8 dereferenceable(952) ptr @_ZNK11cmd_context1mEv(ptr noundef nonnull align 8 dereferenceable(936) %0)
          to label %bb.ai unwind label %bb.ao

bb.ai:                                            ; preds = %bb.ah
  %i.bk = load ptr, ptr %8, align 8, !tbaa !183   ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 840
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !787
  %i.bn = icmp eq ptr %i.bk, %i.bm
  br i1 %i.bn, label %bb.aq, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  invoke void @_Z18for_each_expr_coreI31contains_underspecified_op_proc8obj_markI4expr10bit_vector14default_t2uintIS2_EELb0ELb0EEvRT_RT0_PS2_(ptr noundef nonnull align 8 dereferenceable(196) %6, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %i.ak)
          to label %bb.ak unwind label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.bo = load ptr, ptr %i.y, align 8, !tbaa !789 ; 2 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %_Z13for_each_exprI31contains_underspecified_op_procEvRT_P4expr.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.bo)
          to label %_Z13for_each_exprI31contains_underspecified_op_procEvRT_P4expr.exit unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  %i.br = extractvalue { ptr, i32 } %i.bq, 0
  call void @__clang_call_terminate(ptr %i.br) #26
  unreachable

bb.an:                                            ; preds = %bb.aj
  %i.bs = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN31contains_underspecified_op_proc5foundE
  call void @_ZN8obj_markI4expr10bit_vector14default_t2uintIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %.body

_Z13for_each_exprI31contains_underspecified_op_procEvRT_P4expr.exit: ; preds = %bb.ak, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %.pre = load ptr, ptr %8, align 8, !tbaa !183
  br label %bb.aq

bb.ao:                                            ; preds = %bb.ah
  %i.bt = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN31contains_underspecified_op_proc5foundE
  br label %.body

.body:                                            ; preds = %bb.ao, %bb.au, %bb.an
  %eh.lpad-body = phi { ptr, i32 } [ %i.bs, %bb.an ], [ %i.bt, %bb.ao ], [ %i.ce, %bb.au ] ; 3 uses
  %i.bu = extractvalue { ptr, i32 } %eh.lpad-body, 1
  %i.bv = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN31contains_underspecified_op_proc5foundE) #27
  %i.bw = icmp eq i32 %i.bu, %i.bv
  br i1 %i.bw, label %bb.ap, label %.loopexit

bb.ap:                                            ; preds = %.body
  %i.bx = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.by = call ptr @__cxa_begin_catch(ptr %i.bx) #27 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %_Z9is_groundPK4expr.exit.thread unwind label %bb.av

bb.aq:                                            ; preds = %_Z13for_each_exprI31contains_underspecified_op_procEvRT_P4expr.exit, %bb.ai
  %i.bz = phi ptr [ %.pre, %_Z13for_each_exprI31contains_underspecified_op_procEvRT_P4expr.exit ], [ %i.bk, %bb.ai ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  invoke void @_Z18for_each_expr_coreI31contains_underspecified_op_proc8obj_markI4expr10bit_vector14default_t2uintIS2_EELb0ELb0EEvRT_RT0_PS2_(ptr noundef nonnull align 8 dereferenceable(196) %6, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %i.bz)
          to label %bb.ar unwind label %bb.au

bb.ar:                                            ; preds = %bb.aq
  %i.ca = load ptr, ptr %i.aa, align 8, !tbaa !789 ; 2 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %bb.aw, label %bb.as

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ca)
          to label %bb.aw unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  call void @__clang_call_terminate(ptr %i.cd) #26
  unreachable

bb.au:                                            ; preds = %bb.aq
  %i.ce = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN31contains_underspecified_op_proc5foundE
  call void @_ZN8obj_markI4expr10bit_vector14default_t2uintIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br label %.body

bb.av:                                            ; preds = %bb.ap
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.aw:                                            ; preds = %bb.as, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  invoke void @_ZN11cmd_context15analyze_failureER8obj_markI4expr10bit_vector14default_t2uintIS1_EER15model_evaluatorPS1_b(ptr noundef nonnull align 8 dereferenceable(936) %0, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %i.ak, i1 noundef zeroext true)
          to label %bb.ax unwind label %bb.af

bb.ax:                                            ; preds = %bb.aw
  %i.cg = invoke noundef i32 @_Z19get_verbosity_levelv()
          to label %bb.ay unwind label %bb.af

bb.ay:                                            ; preds = %bb.ax
  %i.ch = icmp ugt i32 %i.cg, 10
  br i1 %i.ch, label %bb.az, label %bb.bh

bb.az:                                            ; preds = %bb.ay
  %i.ci = invoke noundef zeroext i1 @_Z11is_threadedv()
          to label %bb.ba unwind label %bb.af

bb.ba:                                            ; preds = %bb.az
  br i1 %i.ci, label %bb.bb, label %bb.bf

bb.bb:                                            ; preds = %bb.ba
  invoke void @_Z12verbose_lockv()
          to label %bb.bc unwind label %bb.af

bb.bc:                                            ; preds = %bb.bb
  %i.cj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv()
          to label %bb.bd unwind label %bb.af

bb.bd:                                            ; preds = %bb.bc
  %i.ck = load ptr, ptr %3, align 8, !tbaa !773
  invoke void @_Z13model_smt2_ppRSoR19ast_printer_contextRK10model_corej(ptr noundef nonnull align 8 dereferenceable(8) %i.cj, ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull align 8 dereferenceable(96) %i.ck, i32 noundef 0)
          to label %bb.be unwind label %bb.af

bb.be:                                            ; preds = %bb.bd
  invoke void @_Z14verbose_unlockv()
          to label %bb.bh unwind label %bb.af

bb.bf:                                            ; preds = %bb.ba
  %i.cl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv()
          to label %bb.bg unwind label %bb.af

bb.bg:                                            ; preds = %bb.bf
  %i.cm = load ptr, ptr %3, align 8, !tbaa !773
  invoke void @_Z13model_smt2_ppRSoR19ast_printer_contextRK10model_corej(ptr noundef nonnull align 8 dereferenceable(8) %i.cl, ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull align 8 dereferenceable(96) %i.cm, i32 noundef 0)
          to label %bb.bh unwind label %bb.af

bb.bh:                                            ; preds = %bb.be, %bb.bg, %bb.ay
  %i.cn = invoke noundef nonnull align 8 dereferenceable(952) ptr @_ZNK11cmd_context1mEv(ptr noundef nonnull align 8 dereferenceable(936) %0)
          to label %bb.bi unwind label %bb.af

bb.bi:                                            ; preds = %bb.bh
  %i.co = load ptr, ptr %8, align 8, !tbaa !183
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 840
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !787
  %i.cr = icmp eq ptr %i.co, %i.cq
  %11 = or i1 %.01660, %i.cr
  br label %_Z9is_groundPK4expr.exit.thread

_Z9is_groundPK4expr.exit.thread:                  ; preds = %bb.ag, %bb.y, %.split, %_Z9is_groundPK4expr.exit, %bb.bi, %bb.ap, %bb.ae
  %.2 = phi i1 [ %.01660, %bb.ag ], [ %.01660, %bb.ae ], [ %.01660, %bb.ap ], [ %11, %bb.bi ], [ %.01660, %_Z9is_groundPK4expr.exit ], [ %.01660, %.split ], [ %.01660, %bb.y ] ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.061, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.cs, %i.w
  br i1 %.not, label %._crit_edge, label %bb.y

bb.bj:                                            ; preds = %._crit_edge
  %i.ct = call ptr @__cxa_allocate_exception(i64 48) #27 ; 3 uses
  invoke void @_ZN13cmd_exceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.ct, ptr noundef nonnull @.str.77)
          to label %bb.bk unwind label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  invoke void @__cxa_throw(ptr nonnull %i.ct, ptr nonnull @_ZTI13cmd_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #29
          to label %bb.cq unwind label %bb.bm

bb.bl:                                            ; preds = %bb.bj
  %i.cu = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ct) #27
  br label %.loopexit

bb.bm:                                            ; preds = %bb.bk
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.critedge:                                        ; preds = %._crit_edge
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %10, i64 16
  %.pre63 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !789 ; 2 uses
  %i.cw = icmp eq ptr %.pre63, null
  br i1 %i.cw, label %_ZN8obj_markI4expr10bit_vector14default_t2uintIS0_EED2Ev.exit, label %bb.bn

bb.bn:                                            ; preds = %.critedge
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %.pre63)
          to label %_ZN8obj_markI4expr10bit_vector14default_t2uintIS0_EED2Ev.exit unwind label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.cx = landingpad { ptr, i32 }
          catch ptr null
  %i.cy = extractvalue { ptr, i32 } %i.cx, 0
  call void @__clang_call_terminate(ptr %i.cy) #26
  unreachable

_ZN8obj_markI4expr10bit_vector14default_t2uintIS0_EED2Ev.exit: ; preds = %bb.p, %_ZNK6vectorIP4exprLb0EjE3endEv.exit, %.critedge, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  call void @_ZN13scoped_ctrl_cD1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  %i.cz = load ptr, ptr %8, align 8, !tbaa !183   ; 3 uses
  %.not.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.i.i, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit, label %bb.bp

bb.bp:                                            ; preds = %_ZN8obj_markI4expr10bit_vector14default_t2uintIS0_EED2Ev.exit
  %i.da = load ptr, ptr %i.n, align 8, !tbaa !200, !nonnull !193, !align !201
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !109
  %i.dd = add i32 %i.dc, -1                       ; 2 uses
  store i32 %i.dd, ptr %i.db, align 4, !tbaa !109
  %i.de = icmp eq i32 %i.dd, 0
  br i1 %i.de, label %bb.bq, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit

bb.bq:                                            ; preds = %bb.bp
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.da, ptr noundef nonnull %i.cz)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit unwind label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.df = landingpad { ptr, i32 }
          catch ptr null
  %i.dg = extractvalue { ptr, i32 } %i.df, 0
  call void @__clang_call_terminate(ptr %i.dg) #26
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit:         ; preds = %_ZN8obj_markI4expr10bit_vector14default_t2uintIS0_EED2Ev.exit, %bb.bp, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV9cancel_ehI8reslimitE, i64 16), ptr %7, align 8, !tbaa !167
  %i.dh = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.di = load atomic i8, ptr %i.dh seq_cst, align 8, !range !192, !noundef !193
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit
  %i.dk = load ptr, ptr %i.l, align 8, !tbaa !743, !nonnull !193, !align !201
  invoke void @_ZN8reslimit10dec_cancelEv(ptr noundef nonnull align 8 dereferenceable(40) %i.dk)
          to label %bb.bt unwind label %bb.bv, !inline_history !744

bb.bt:                                            ; preds = %bb.bs, %_ZN7obj_refI4expr11ast_managerED2Ev.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %7, i64 57
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !745, !range !192, !noundef !193
  %i.dn = trunc nuw i8 %i.dm to i1
  br i1 %i.dn, label %bb.bu, label %_ZN9cancel_ehI8reslimitED2Ev.exit

bb.bu:                                            ; preds = %bb.bt
  %i.do = load ptr, ptr %i.l, align 8, !tbaa !743, !nonnull !193, !align !201
  invoke void @_ZN8reslimit11auto_cancelEv(ptr noundef nonnull align 8 dereferenceable(40) %i.do)
          to label %_ZN9cancel_ehI8reslimitED2Ev.exit unwind label %bb.bv, !inline_history !744

bb.bv:                                            ; preds = %bb.bu, %bb.bs
  %i.dp = landingpad { ptr, i32 }
          catch ptr null
  %i.dq = extractvalue { ptr, i32 } %i.dp, 0
  call void @__clang_call_terminate(ptr %i.dq) #26, !inline_history !744
  unreachable

_ZN9cancel_ehI8reslimitED2Ev.exit:                ; preds = %bb.bt, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  invoke void @_ZN8reslimit3popEv(ptr noundef nonnull align 8 dereferenceable(40) %i.h)
          to label %_ZN13scoped_rlimitD2Ev.exit unwind label %bb.bw

bb.bw:                                            ; preds = %_ZN9cancel_ehI8reslimitED2Ev.exit
  %i.dr = landingpad { ptr, i32 }
          catch ptr null
  %i.ds = extractvalue { ptr, i32 } %i.dr, 0
  call void @__clang_call_terminate(ptr %i.ds) #26
  unreachable

_ZN13scoped_rlimitD2Ev.exit:                      ; preds = %_ZN9cancel_ehI8reslimitED2Ev.exit
  %i.dt = getelementptr inbounds nuw i8, ptr %6, i64 136
  %i.du = getelementptr inbounds nuw i8, ptr %6, i64 144 ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !170 ; 5 uses
  %i.dw = icmp eq ptr %i.dv, null
  br i1 %i.dw, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit.i.i.i, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i.i

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i.i:     ; preds = %_ZN13scoped_rlimitD2Ev.exit
  %i.dx = getelementptr inbounds i8, ptr %i.dv, i64 -4
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !195 ; 2 uses
  %i.dz = zext i32 %i.dy to i64
  %i.ea = shl nuw nsw i64 %i.dz, 3
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.ea
  %.not.i.i.i.i = icmp eq i32 %i.dy, 0
  br i1 %.not.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.ei, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i.i.i.i ], [ %i.dv, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i.i ] ; 2 uses
  %i.ec = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !215 ; 3 uses
  %i.ed = load ptr, ptr %i.dt, align 8, !tbaa !481, !nonnull !193, !align !201
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ec, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i.i.i.i, label %bb.bx

bb.bx:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 8 ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !109
  %i.eg = add i32 %i.ef, -1                       ; 2 uses
  store i32 %i.eg, ptr %i.ee, align 4, !tbaa !109
  %i.eh = icmp eq i32 %i.eg, 0
  br i1 %i.eh, label %bb.by, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i.i.i.i

bb.by:                                            ; preds = %bb.bx
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ed, ptr noundef nonnull %i.ec)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i.i.i.i unwind label %bb.ca

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i.i.i.i: ; preds = %bb.by, %bb.bx, %.lr.ph.i.i.i.i.i
  %i.ei = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8 ; 2 uses
  %i.ej = icmp ult ptr %i.ei, %i.eb
  br i1 %i.ej, label %.lr.ph.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i.i.i.i, !llvm.loop !14

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i.i.i.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i.i.i.i
  %.pre.i.i.i.i = load ptr, ptr %i.du, align 8, !tbaa !170 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.pre.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i.i.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i.i.i.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i.i.i.i, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i.i
  %i.ek = phi ptr [ %.pre.i.i.i.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i.i.i.i ], [ %i.dv, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i.i.i ]
  %i.el = getelementptr inbounds i8, ptr %i.ek, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.el)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit.i.i.i unwind label %bb.bz

bb.bz:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i.i.i.i
  %i.em = landingpad { ptr, i32 }
          catch ptr null
  %i.en = extractvalue { ptr, i32 } %i.em, 0
  call void @__clang_call_terminate(ptr %i.en) #26
  unreachable

bb.ca:                                            ; preds = %bb.by
  %i.eo = landingpad { ptr, i32 }
          catch ptr null
  %i.ep = extractvalue { ptr, i32 } %i.eo, 0
  call void @__clang_call_terminate(ptr %i.ep) #26
  unreachable

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit.i.i.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i.i.i.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i.i.i.i, %_ZN13scoped_rlimitD2Ev.exit
  %i.eq = getelementptr inbounds nuw i8, ptr %6, i64 128
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !792 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.er, null
  br i1 %.not.i.i.i.i.i, label %_ZN31contains_underspecified_op_procD2Ev.exit, label %bb.cb

bb.cb:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit.i.i.i
  %i.es = getelementptr inbounds i8, ptr %i.er, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.es)
          to label %_ZN31contains_underspecified_op_procD2Ev.exit unwind label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.et = landingpad { ptr, i32 }
          catch ptr null
  %i.eu = extractvalue { ptr, i32 } %i.et, 0
  call void @__clang_call_terminate(ptr %i.eu) #26
  unreachable

_ZN31contains_underspecified_op_procD2Ev.exit:    ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit.i.i.i, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @_ZN15model_evaluatorD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.cd

bb.cd:                                            ; preds = %bb.c, %_ZN31contains_underspecified_op_procD2Ev.exit
  %.pr = load ptr, ptr %3, align 8, !tbaa !773    ; 5 uses
  %.not.i.i47 = icmp eq ptr %.pr, null
  br i1 %.not.i.i47, label %_ZN3refI5modelED2Ev.exit, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ev = getelementptr inbounds nuw i8, ptr %.pr, i64 16 ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !784
  %i.ex = add i32 %i.ew, -1                       ; 2 uses
  store i32 %i.ex, ptr %i.ev, align 8, !tbaa !784
  %i.ey = icmp eq i32 %i.ex, 0
  br i1 %i.ey, label %bb.cf, label %_ZN3refI5modelED2Ev.exit

bb.cf:                                            ; preds = %bb.ce
  %i.ez = load ptr, ptr %.pr, align 8, !tbaa !167
  %i.fa = load ptr, ptr %i.ez, align 8
  call void %i.fa(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %.pr) #27, !inline_history !62
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull align 8 dereferenceable(96) %.pr)
          to label %_ZN3refI5modelED2Ev.exit unwind label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.fb = landingpad { ptr, i32 }
          catch ptr null
  %i.fc = extractvalue { ptr, i32 } %i.fb, 0
  call void @__clang_call_terminate(ptr %i.fc) #26
  unreachable

_ZN3refI5modelED2Ev.exit:                         ; preds = %bb.a, %bb.cd, %bb.ce, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

.loopexit:                                        ; preds = %.body, %bb.af, %bb.av, %bb.bm, %bb.bl
  %.merged42 = phi { ptr, i32 } [ %i.cu, %bb.bl ], [ %i.cv, %bb.bm ], [ %i.bd, %bb.af ], [ %i.cf, %bb.av ], [ %eh.lpad-body, %.body ]
  call void @_ZN8obj_markI4expr10bit_vector14default_t2uintIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  call void @_ZN13scoped_ctrl_cD1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %9) #27
  br label %bb.ch

bb.ch:                                            ; preds = %.loopexit, %bb.x
end_hunk_0
