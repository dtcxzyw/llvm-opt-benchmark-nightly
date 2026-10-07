Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/sls_basic_plugin?download=true
inline.NumInlined: 147
inline.NumDeleted: 55
begin_hunk_0_@_ZN3sls12basic_plugin13eval_distinctEP3app:bb.a
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !19, !nonnull !17, !align !18
  %i.m = tail call noundef zeroext i1 @_ZN3sls7context7is_trueEP4expr(ptr noundef nonnull align 8 dereferenceable(321) %i.l, ptr noundef %i.k)
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv25
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !44
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !19, !nonnull !17, !align !18
  %i.q = tail call noundef zeroext i1 @_ZN3sls7context7is_trueEP4expr(ptr noundef nonnull align 8 dereferenceable(321) %i.p, ptr noundef %i.o)
  %i.r = xor i1 %i.m, %i.q
  br i1 %i.r, label %bb.c, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !16, !nonnull !17, !align !18 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 840
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !137  ; 3 uses
  store ptr %i.v, ptr %0, align 8, !tbaa !24
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.t, ptr %i.w, align 8, !tbaa !25
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit17, label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit17.sink.split

_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit._crit_edge: ; preds = %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit.loopexit, %bb.b, %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !16, !nonnull !17, !align !18 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 832
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !105 ; 3 uses
  store ptr %i.aa, ptr %0, align 8, !tbaa !24
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.y, ptr %i.ab, align 8, !tbaa !25
  %.not.i.i15 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i15, label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit17, label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit17.sink.split

_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit17.sink.split: ; preds = %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit._crit_edge, %bb.e
  %.sink40 = phi ptr [ %i.v, %bb.e ], [ %i.aa, %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit._crit_edge ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sink40, i64 8 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !27
  %i.ae = add i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !27
  br label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit17

_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit17: ; preds = %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit17.sink.split, %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit._crit_edge, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3sls12basic_plugin8eval_xorEP3app(ptr dead_on_unwind noalias nofree writable writeonly sret(%class.obj_ref) align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1, ptr nofree noundef readonly captures(address) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !43   ; 2 uses
  %i.d = zext i32 %i.c to i64
  %.idx = shl nuw nsw i64 %i.d, 3
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx
  %.not11 = icmp eq i32 %i.c, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.b
  %i.g = select i1 %i.r, i64 832, i64 840
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi i64 [ 840, %bb.a ], [ %i.g, %._crit_edge.loopexit ]
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !16, !nonnull !17, !align !18 ; 2 uses
  %.in.i = getelementptr inbounds nuw i8, ptr %i.i, i64 %.0.lcssa
  %i.j = load ptr, ptr %.in.i, align 8, !tbaa !21 ; 3 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !24
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %i.k, align 8, !tbaa !25
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i

_ZN11ast_manager7inc_refEP3ast.exit.i.i:          ; preds = %._crit_edge
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !27
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr %i.l, align 4, !tbaa !27
  br label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit

_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit:  ; preds = %._crit_edge, %_ZN11ast_manager7inc_refEP3ast.exit.i.i
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.013 = phi i1 [ false, %.lr.ph ], [ %i.r, %bb.b ]
  %.01012 = phi ptr [ %i.a, %.lr.ph ], [ %i.s, %bb.b ] ; 2 uses
  %i.o = load ptr, ptr %.01012, align 8, !tbaa !44
  %i.p = load ptr, ptr %i.f, align 8, !tbaa !19, !nonnull !17, !align !18
  %i.q = tail call noundef zeroext i1 @_ZN3sls7context7is_trueEP4expr(ptr noundef nonnull align 8 dereferenceable(321) %i.p, ptr noundef %i.o)
  %i.r = xor i1 %.013, %i.q                       ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.01012, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.s, %i.e
  br i1 %.not, label %._crit_edge.loopexit, label %bb.b
}

declare noundef zeroext i1 @_ZN3sls7context7is_trueEP4expr(ptr noundef nonnull align 8 dereferenceable(321), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN3sls12basic_plugin10try_repairEP3appj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !37   ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNK3app13get_decl_kindEv.exit.thread, label %_ZNK3app13get_decl_kindEv.exit

_ZNK3app13get_decl_kindEv.exit:                   ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !138
  switch i32 %i.g, label %_ZNK3app13get_decl_kindEv.exit.thread [
    i32 7, label %bb.b
    i32 4, label %bb.c
    i32 3, label %bb.d
  ]

bb.b:                                             ; preds = %_ZNK3app13get_decl_kindEv.exit
  %i.h = tail call noundef zeroext i1 @_ZN3sls12basic_plugin14try_repair_xorEP3appj(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %1, i32 noundef %2) ; 0 uses
  br label %_ZNK3app13get_decl_kindEv.exit.thread

bb.c:                                             ; preds = %_ZNK3app13get_decl_kindEv.exit
  %i.i = tail call noundef zeroext i1 @_ZN3sls12basic_plugin14try_repair_iteEP3appj(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %1, i32 noundef %2)
  br label %_ZNK3app13get_decl_kindEv.exit.thread

bb.d:                                             ; preds = %_ZNK3app13get_decl_kindEv.exit
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str, i32 noundef 213, ptr noundef nonnull @.str.2)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 107)
  br label %_ZNK3app13get_decl_kindEv.exit.thread

_ZNK3app13get_decl_kindEv.exit.thread:            ; preds = %bb.a, %_ZNK3app13get_decl_kindEv.exit, %bb.d, %bb.c, %bb.b
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.b ], [ %i.i, %bb.c ], [ true, %_ZNK3app13get_decl_kindEv.exit ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN3sls12basic_plugin14try_repair_xorEP3appj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.b = zext i32 %2 to i64                       ; 2 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !44   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !43   ; 2 uses
  %.not17 = icmp eq i32 %i.f, 0
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %.014.lcssa = phi i8 [ 0, %bb.a ], [ %.1, %bb.e ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !19, !nonnull !17, !align !18
  %i.j = tail call noundef zeroext i1 @_ZN3sls7context7is_trueEP4expr(ptr noundef nonnull align 8 dereferenceable(321) %i.i, ptr noundef nonnull %1)
  %i.k = zext i1 %i.j to i8
  %i.l = icmp ne i8 %.014.lcssa, %i.k
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !19, !nonnull !17, !align !18
  %i.n = tail call i32 @_ZN3sls7context10mk_literalEP4expr(ptr noundef nonnull align 8 dereferenceable(321) %i.m, ptr noundef %i.d) ; 2 uses
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !19, !nonnull !17, !align !18
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !133, !nonnull !17, !align !18 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !135
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 80
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef zeroext i1 %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.q, i32 %i.n), !inline_history !0
  %i.v = xor i1 %i.l, %i.u
  br i1 %i.v, label %bb.b, label %_ZN3sls12basic_plugin9set_valueEP4exprb.exit

bb.b:                                             ; preds = %._crit_edge
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !19, !nonnull !17, !align !18
  %i.x = lshr i32 %i.n, 1
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !133, !nonnull !17, !align !18 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !135
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.z, i32 noundef %i.x), !inline_history !1
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !19, !nonnull !17, !align !18
  tail call void @_ZN3sls7context12new_value_ehEP4expr(ptr noundef nonnull align 8 dereferenceable(321) %i.ad, ptr noundef %i.d)
  br label %_ZN3sls12basic_plugin9set_valueEP4exprb.exit

_ZN3sls12basic_plugin9set_valueEP4exprb.exit:     ; preds = %._crit_edge, %bb.b
  ret i1 true

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %i.ae = phi i32 [ %i.f, %.lr.ph ], [ %i.ak, %bb.e ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %.01415 = phi i8 [ 0, %.lr.ph ], [ %.1, %bb.e ] ; 2 uses
  %.not = icmp eq i64 %indvars.iv, %i.b
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !44
  %i.ah = load ptr, ptr %i.g, align 8, !tbaa !19, !nonnull !17, !align !18
  %i.ai = tail call noundef zeroext i1 @_ZN3sls7context7is_trueEP4expr(ptr noundef nonnull align 8 dereferenceable(321) %i.ah, ptr noundef %i.ag)
  %i.aj = zext i1 %i.ai to i8
  %3 = xor i8 %.01415, %i.aj
  %.pre = load i32, ptr %i.e, align 8, !tbaa !43
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.ak = phi i32 [ %.pre, %bb.d ], [ %i.ae, %bb.c ] ; 2 uses
  %.1 = phi i8 [ %3, %bb.d ], [ %.01415, %bb.c ]  ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.al = zext i32 %i.ak to i64
  %i.am = icmp samesign ult i64 %indvars.iv.next, %i.al
  br i1 %i.am, label %bb.c, label %._crit_edge, !llvm.loop !142
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN3sls12basic_plugin14try_repair_iteEP3appj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.obj_ref, align 8             ; 8 uses
  %4 = alloca %class.obj_ref, align 8             ; 8 uses
  %5 = alloca %class.obj_ref, align 8             ; 8 uses
  %6 = alloca %class.obj_ref, align 8             ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16, !nonnull !17, !align !18
  %i.c = tail call noundef zeroext i1 @_ZNK11ast_manager7is_boolEPK4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.b, ptr noundef %1)
  br i1 %i.c, label %bb.ag, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.e = zext i32 %2 to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !44   ; 2 uses
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !44   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 11 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !19, !nonnull !17, !align !18
  %i.k = tail call noundef zeroext i1 @_ZN3sls7context7is_trueEP4expr(ptr noundef nonnull align 8 dereferenceable(321) %i.j, ptr noundef %i.h)
  %i.l = icmp eq i32 %2, 0
  br i1 %i.l, label %bb.c, label %bb.x

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !19, !nonnull !17, !align !18
  call void @_ZN3sls7context9get_valueEP4expr(ptr dead_on_unwind nonnull writable sret(%class.obj_ref) align 8 %3, ptr noundef nonnull align 8 dereferenceable(321) %i.m, ptr noundef nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !19, !nonnull !17, !align !18
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !44
  invoke void @_ZN3sls7context9get_valueEP4expr(ptr dead_on_unwind nonnull writable sret(%class.obj_ref) align 8 %4, ptr noundef nonnull align 8 dereferenceable(321) %i.n, ptr noundef %i.p)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.q = load ptr, ptr %i.i, align 8, !tbaa !19, !nonnull !17, !align !18
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !44
  invoke void @_ZN3sls7context9get_valueEP4expr(ptr dead_on_unwind nonnull writable sret(%class.obj_ref) align 8 %5, ptr noundef nonnull align 8 dereferenceable(321) %i.q, ptr noundef %i.s)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %3, align 8, !tbaa !24     ; 2 uses
  %i.u = load ptr, ptr %4, align 8, !tbaa !24
  %i.v = icmp eq ptr %i.t, %i.u
  %i.w = load ptr, ptr %5, align 8, !tbaa !24     ; 3 uses
  %i.x = icmp eq ptr %i.t, %i.w                   ; 2 uses
  br i1 %i.v, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  br i1 %i.x, label %_ZN3sls12basic_plugin9set_valueEP4exprb.exit, label %bb.j

bb.g:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.h:                                             ; preds = %bb.d
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.i:                                             ; preds = %.invoke, %.noexc35.invoke, %.noexc33, %bb.l, %.noexc, %bb.j
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #10
  br label %bb.v

bb.j:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr %i.i, align 8, !tbaa !19, !nonnull !17, !align !18
  %i.ac = invoke i32 @_ZN3sls7context10mk_literalEP4expr(ptr noundef nonnull align 8 dereferenceable(321) %i.ab, ptr noundef %i.h)
          to label %.noexc unwind label %bb.i     ; 2 uses

.noexc:                                           ; preds = %bb.j
  %i.ad = load ptr, ptr %i.i, align 8, !tbaa !19, !nonnull !17, !align !18
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !133, !nonnull !17, !align !18 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !135
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 80
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = invoke noundef zeroext i1 %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.af, i32 %i.ac)
          to label %.noexc30 unwind label %bb.i, !inline_history !143

.noexc30:                                         ; preds = %.noexc
  br i1 %i.aj, label %_ZN3sls12basic_plugin9set_valueEP4exprb.exitthread-pre-split, label %.invoke

bb.k:                                             ; preds = %bb.e
  br i1 %i.x, label %bb.l, label %_ZN3sls12basic_plugin9set_valueEP4exprb.exit

bb.l:                                             ; preds = %bb.k
  %i.ak = load ptr, ptr %i.i, align 8, !tbaa !19, !nonnull !17, !align !18
  %i.al = invoke i32 @_ZN3sls7context10mk_literalEP4expr(ptr noundef nonnull align 8 dereferenceable(321) %i.ak, ptr noundef %i.h)
          to label %.noexc33 unwind label %bb.i   ; 2 uses

.noexc33:                                         ; preds = %bb.l
  %i.am = load ptr, ptr %i.i, align 8, !tbaa !19, !nonnull !17, !align !18
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !133, !nonnull !17, !align !18 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !135
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 80
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = invoke noundef zeroext i1 %i.ar(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, i32 %i.al)
          to label %.noexc34 unwind label %bb.i, !inline_history !143

.noexc34:                                         ; preds = %.noexc33
  br i1 %i.as, label %.invoke, label %_ZN3sls12basic_plugin9set_valueEP4exprb.exitthread-pre-split

.invoke:                                          ; preds = %.noexc34, %.noexc30
  %.sink53 = phi i32 [ %i.ac, %.noexc30 ], [ %i.al, %.noexc34 ]
  %i.at = load ptr, ptr %i.i, align 8, !tbaa !19, !nonnull !17, !align !18
  %i.au = lshr i32 %.sink53, 1
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !133, !nonnull !17, !align !18 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !135
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.az = load ptr, ptr %i.ay, align 8
  invoke void %i.az(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, i32 noundef %i.au)
          to label %.noexc35.invoke unwind label %bb.i, !inline_history !143

.noexc35.invoke:                                  ; preds = %.invoke
  %i.ba = load ptr, ptr %i.i, align 8, !tbaa !19, !nonnull !17, !align !18
  invoke void @_ZN3sls7context12new_value_ehEP4expr(ptr noundef nonnull align 8 dereferenceable(321) %i.ba, ptr noundef %i.h)
          to label %_ZN3sls12basic_plugin9set_valueEP4exprb.exitthread-pre-split unwind label %bb.i

_ZN3sls12basic_plugin9set_valueEP4exprb.exitthread-pre-split: ; preds = %.noexc35.invoke, %.noexc30, %.noexc34
  %.pr = load ptr, ptr %5, align 8, !tbaa !24
  br label %_ZN3sls12basic_plugin9set_valueEP4exprb.exit

_ZN3sls12basic_plugin9set_valueEP4exprb.exit:     ; preds = %_ZN3sls12basic_plugin9set_valueEP4exprb.exitthread-pre-split, %bb.k, %bb.f
  %i.bb = phi ptr [ %.pr, %_ZN3sls12basic_plugin9set_valueEP4exprb.exitthread-pre-split ], [ %i.w, %bb.k ], [ %i.w, %bb.f ] ; 3 uses
  %.023 = phi i1 [ true, %_ZN3sls12basic_plugin9set_valueEP4exprb.exitthread-pre-split ], [ false, %bb.k ], [ true, %bb.f ]
  %.not.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN3sls12basic_plugin9set_valueEP4exprb.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !45, !nonnull !17, !align !18
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !27
  %i.bg = add i32 %i.bf, -1                       ; 2 uses
  store i32 %i.bg, ptr %i.be, align 4, !tbaa !27
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.n, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.bd, ptr noundef nonnull %i.bb)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  call void @__clang_call_terminate(ptr %i.bj) #11
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit:         ; preds = %_ZN3sls12basic_plugin9set_valueEP4exprb.exit, %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  %i.bk = load ptr, ptr %4, align 8, !tbaa !24    ; 3 uses
  %.not.i.i38 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i38, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit39, label %bb.p

bb.p:                                             ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !45, !nonnull !17, !align !18
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !27
  %i.bp = add i32 %i.bo, -1                       ; 2 uses
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !27
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.q, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit39

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.bm, ptr noundef nonnull %i.bk)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit39 unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #11
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit39:       ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  %i.bt = load ptr, ptr %3, align 8, !tbaa !24    ; 3 uses
  %.not.i.i40 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i40, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit41, label %bb.s

bb.s:                                             ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit39
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !45, !nonnull !17, !align !18
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 2 uses
end_hunk_0
