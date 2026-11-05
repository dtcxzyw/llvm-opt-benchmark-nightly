Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/fm_tactic?download=true
inline.NumInlined: 2204
inline.NumDeleted: 951
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 47
loop-unroll.NumUnrolled: 52
begin_hunk_0_@_ZN14parray_managerIN11ast_manager17expr_array_configEE3delEPNS2_4cellE:bb.a
  %.not = icmp eq i32 %i.ah, 0
  br i1 %.not, label %bb.b, label %.loopexit

.loopexit:                                        ; preds = %_ZN14parray_managerIN11ast_manager17expr_array_configEE17deallocate_valuesEPP4expr.exit, %bb.i, %_ZN14parray_managerIN11ast_manager17expr_array_configEE17deallocate_valuesEPP4expr.exit.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK9fm_tactic3imp14is_linear_ineqEP4expr(ptr noundef nonnull align 8 dereferenceable(848) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4              ; 5 uses
  %i.c = and i32 %i.b, 65535
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZNK11ast_manager6is_notEPK4exprRPS0_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !260
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !263  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i, label %_ZNK11ast_manager6is_notEPK4exprRPS0_.exit, label %_ZNK11ast_manager6is_notEPK4expr.exit.i

_ZNK11ast_manager6is_notEPK4expr.exit.i:          ; preds = %bb.b
  %i.i = load i32, ptr %i.h, align 8, !tbaa !267
  %i.j = icmp eq i32 %i.i, 0
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.l = load i32, ptr %i.k, align 4
  %i.m = icmp eq i32 %i.l, 8
  %i.n = select i1 %i.j, i1 %i.m, i1 false
  br i1 %i.n, label %bb.c, label %_ZNK11ast_manager6is_notEPK4exprRPS0_.exit

bb.c:                                             ; preds = %_ZNK11ast_manager6is_notEPK4expr.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !268
  %i.q = icmp eq i32 %i.p, 1
  br i1 %i.q, label %bb.d, label %_ZNK11ast_manager6is_notEPK4exprRPS0_.exit

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !155  ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %.pre = load i32, ptr %.phi.trans.insert, align 4
  br label %_ZNK11ast_manager6is_notEPK4exprRPS0_.exit

_ZNK11ast_manager6is_notEPK4exprRPS0_.exit:       ; preds = %bb.a, %bb.b, %_ZNK11ast_manager6is_notEPK4expr.exit.i, %bb.c, %bb.d
  %i.t = phi i32 [ %i.b, %bb.b ], [ %.pre, %bb.d ], [ %i.b, %bb.c ], [ %i.b, %_ZNK11ast_manager6is_notEPK4expr.exit.i ], [ %i.b, %bb.a ]
  %.014 = phi ptr [ %1, %bb.b ], [ %i.s, %bb.d ], [ %1, %bb.c ], [ %1, %_ZNK11ast_manager6is_notEPK4expr.exit.i ], [ %1, %bb.a ] ; 5 uses
  %i.u = and i32 %i.t, 65535
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.e, label %_ZNK17arith_recognizers5is_geEPK4exprRPS0_S4_.exit.thread

bb.e:                                             ; preds = %_ZNK11ast_manager6is_notEPK4exprRPS0_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %.014, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !260
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !263  ; 5 uses
  %.not.i.i.i.i.i3 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i3, label %_ZNK17arith_recognizers5is_geEPK4exprRPS0_S4_.exit.thread, label %_ZNK17arith_recognizers5is_leEPK4expr.exit.i

_ZNK17arith_recognizers5is_leEPK4expr.exit.i:     ; preds = %bb.e
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !267
  %i.ab = icmp eq i32 %i.aa, 5
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = icmp eq i32 %i.ad, 2
  %i.af = select i1 %i.ab, i1 %i.ae, i1 false
  br i1 %i.af, label %bb.f, label %_ZNK17arith_recognizers5is_geEPK4expr.exit.i

bb.f:                                             ; preds = %_ZNK17arith_recognizers5is_leEPK4expr.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.014, i64 24
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !268
  %i.ai = icmp eq i32 %i.ah, 2
  br i1 %i.ai, label %_ZNK17arith_recognizers5is_leEPK4exprRPS0_S4_.exit, label %_ZNK17arith_recognizers5is_geEPK4expr.exit.i

_ZNK17arith_recognizers5is_geEPK4expr.exit.i:     ; preds = %bb.f, %_ZNK17arith_recognizers5is_leEPK4expr.exit.i
  %i.aj = load i32, ptr %i.z, align 8, !tbaa !267
  %i.ak = icmp eq i32 %i.aj, 5
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.am = load i32, ptr %i.al, align 4
  %i.an = icmp eq i32 %i.am, 3
  %i.ao = select i1 %i.ak, i1 %i.an, i1 false
  br i1 %i.ao, label %bb.g, label %_ZNK17arith_recognizers5is_geEPK4exprRPS0_S4_.exit.thread

bb.g:                                             ; preds = %_ZNK17arith_recognizers5is_geEPK4expr.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.014, i64 24
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !268
  %i.ar = icmp eq i32 %i.aq, 2
  br i1 %i.ar, label %_ZNK17arith_recognizers5is_leEPK4exprRPS0_S4_.exit, label %_ZNK17arith_recognizers5is_geEPK4exprRPS0_S4_.exit.thread

_ZNK17arith_recognizers5is_leEPK4exprRPS0_S4_.exit: ; preds = %bb.g, %bb.f
  %.010.in = getelementptr inbounds nuw i8, ptr %.014, i64 40
  %.010 = load ptr, ptr %.010.in, align 8, !tbaa !155 ; 2 uses
  %.011.in = getelementptr inbounds nuw i8, ptr %.014, i64 32
  %.011 = load ptr, ptr %.011.in, align 8, !tbaa !155
  %i.as = getelementptr inbounds nuw i8, ptr %.010, i64 4
  %i.at = load i32, ptr %i.as, align 4
  %i.au = and i32 %i.at, 65535
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.h, label %_ZNK17arith_recognizers5is_geEPK4exprRPS0_S4_.exit.thread

bb.h:                                             ; preds = %_ZNK17arith_recognizers5is_leEPK4exprRPS0_S4_.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %.010, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !260
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !263 ; 3 uses
  %.not.i.i.i.i.i6 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i6, label %_ZNK17arith_recognizers5is_geEPK4exprRPS0_S4_.exit.thread, label %_ZNK10arith_util10is_numeralEPK4expr.exit

_ZNK10arith_util10is_numeralEPK4expr.exit:        ; preds = %bb.h
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !267
  %i.bb = icmp eq i32 %i.ba, 5
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = icmp eq i32 %i.bd, 0
  %i.bf = select i1 %i.bb, i1 %i.be, i1 false
  br i1 %i.bf, label %bb.i, label %_ZNK17arith_recognizers5is_geEPK4exprRPS0_S4_.exit.thread

bb.i:                                             ; preds = %_ZNK10arith_util10is_numeralEPK4expr.exit
  %i.bg = tail call noundef zeroext i1 @_ZNK9fm_tactic3imp13is_linear_polEP4expr(ptr noundef nonnull align 8 dereferenceable(848) %0, ptr noundef %.011)
  br label %_ZNK17arith_recognizers5is_geEPK4exprRPS0_S4_.exit.thread

_ZNK17arith_recognizers5is_geEPK4exprRPS0_S4_.exit.thread: ; preds = %bb.e, %bb.h, %_ZNK17arith_recognizers5is_leEPK4exprRPS0_S4_.exit, %_ZNK11ast_manager6is_notEPK4exprRPS0_.exit, %_ZNK17arith_recognizers5is_geEPK4expr.exit.i, %bb.g, %_ZNK10arith_util10is_numeralEPK4expr.exit, %bb.i
  %.0 = phi i1 [ %i.bg, %bb.i ], [ false, %_ZNK10arith_util10is_numeralEPK4expr.exit ], [ false, %_ZNK11ast_manager6is_notEPK4exprRPS0_.exit ], [ false, %bb.g ], [ false, %_ZNK17arith_recognizers5is_geEPK4expr.exit.i ], [ false, %bb.h ], [ false, %_ZNK17arith_recognizers5is_leEPK4exprRPS0_S4_.exit ], [ false, %bb.e ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK9fm_tactic3imp13is_linear_polEP4expr(ptr noundef nonnull align 8 dereferenceable(848) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %2 = alloca %class.ast_fast_mark.58, align 8    ; 19 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !155
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = and i32 %i.d, 65535
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %_ZNK17arith_recognizers6is_addEPK4expr.exit.thread.thread

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !260
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !263  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZNK17arith_recognizers6is_addEPK4expr.exit.thread.thread, label %_ZNK17arith_recognizers6is_addEPK4expr.exit

_ZNK17arith_recognizers6is_addEPK4expr.exit:      ; preds = %bb.b
  %i.k = load i32, ptr %i.j, align 8, !tbaa !267
  %i.l = icmp eq i32 %i.k, 5
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.n = load i32, ptr %i.m, align 4
  %i.o = icmp eq i32 %i.n, 6
  %i.p = select i1 %i.l, i1 %i.o, i1 false
  br i1 %i.p, label %_ZNK17arith_recognizers6is_addEPK4expr.exit.thread, label %_ZNK17arith_recognizers6is_addEPK4expr.exit.thread.thread

_ZNK17arith_recognizers6is_addEPK4expr.exit.thread.thread: ; preds = %_ZNK17arith_recognizers6is_addEPK4expr.exit, %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.q, ptr %2, align 8, !tbaa !252
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 0, ptr %i.r, align 8, !tbaa !253
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 16, ptr %i.s, align 4, !tbaa !254
  br label %.lr.ph

_ZNK17arith_recognizers6is_addEPK4expr.exit.thread: ; preds = %_ZNK17arith_recognizers6is_addEPK4expr.exit
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load i32, ptr %i.t, align 8, !tbaa !268  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.w, ptr %2, align 8, !tbaa !252
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i32 0, ptr %i.x, align 8, !tbaa !253
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 16, ptr %i.y, align 4, !tbaa !254
  %.not51 = icmp eq i32 %i.u, 0
  br i1 %.not51, label %.loopexit44.thread, label %.lr.ph

.loopexit44.thread:                               ; preds = %_ZNK17arith_recognizers6is_addEPK4expr.exit.thread
  %i.z = load ptr, ptr %2, align 8, !tbaa !252
  br label %.loopexit.i

.lr.ph:                                           ; preds = %_ZNK17arith_recognizers6is_addEPK4expr.exit.thread.thread, %_ZNK17arith_recognizers6is_addEPK4expr.exit.thread
  %i.aa = phi ptr [ %i.s, %_ZNK17arith_recognizers6is_addEPK4expr.exit.thread.thread ], [ %i.y, %_ZNK17arith_recognizers6is_addEPK4expr.exit.thread ] ; 2 uses
  %i.ab = phi ptr [ %i.r, %_ZNK17arith_recognizers6is_addEPK4expr.exit.thread.thread ], [ %i.x, %_ZNK17arith_recognizers6is_addEPK4expr.exit.thread ] ; 7 uses
  %i.ac = phi ptr [ %i.q, %_ZNK17arith_recognizers6is_addEPK4expr.exit.thread.thread ], [ %i.w, %_ZNK17arith_recognizers6is_addEPK4expr.exit.thread ] ; 3 uses
  %.01975 = phi ptr [ %i.a, %_ZNK17arith_recognizers6is_addEPK4expr.exit.thread.thread ], [ %i.v, %_ZNK17arith_recognizers6is_addEPK4expr.exit.thread ]
  %.02074 = phi i32 [ 1, %_ZNK17arith_recognizers6is_addEPK4expr.exit.thread.thread ], [ %i.u, %_ZNK17arith_recognizers6is_addEPK4expr.exit.thread ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 737
  %wide.trip.count = zext i32 %.02074 to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %.01752 = phi i1 [ true, %.lr.ph ], [ %.2.ph, %.loopexit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.01975, i64 %indvars.iv
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !155
  %i.ai = invoke noundef zeroext i1 @_ZNK9fm_tactic3imp18is_linear_mon_coreEP4exprRS2_(ptr noundef nonnull align 8 dereferenceable(848) %0, ptr noundef %i.ah, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.q

bb.d:                                             ; preds = %bb.c
  br i1 %i.ai, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.aj = load ptr, ptr %i.b, align 8, !tbaa !155 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4            ; 2 uses
  %i.am = and i32 %i.al, 131072
  %.not40 = icmp eq i32 %i.am, 0
  br i1 %.not40, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.an = or disjoint i32 %i.al, 131072
  store i32 %i.an, ptr %i.ak, align 4
  %i.ao = load i32, ptr %i.ab, align 8, !tbaa !253 ; 2 uses
  %i.ap = load i32, ptr %i.aa, align 4, !tbaa !254 ; 2 uses
  %.not.i.i = icmp ult i32 %i.ao, %i.ap
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.g

._crit_edge.i.i:                                  ; preds = %bb.f
  %.pre.i.i = load ptr, ptr %2, align 8, !tbaa !252
  br label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.aq = shl i32 %i.ap, 1                        ; 2 uses
  %i.ar = zext i32 %i.aq to i64
  %i.as = shl nuw nsw i64 %i.ar, 3
  %i.at = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.as)
          to label %.noexc unwind label %bb.q     ; 9 uses

.noexc:                                           ; preds = %bb.g
  %i.au = load i32, ptr %i.ab, align 8, !tbaa !253 ; 4 uses
  %.not.i.i.i = icmp eq i32 %i.au, 0
  %.pre.i.i.i = load ptr, ptr %2, align 8, !tbaa !252 ; 10 uses
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc
  %.pre.i.i.i91 = ptrtoaddr ptr %.pre.i.i.i to i64
  %i.av = ptrtoaddr ptr %i.at to i64
  %wide.trip.count.i.i.i = zext i32 %i.au to i64  ; 5 uses
  %min.iters.check = icmp ult i32 %i.au, 4
  %i.aw = sub i64 %.pre.i.i.i91, %i.av
  %diff.check = icmp ugt i64 %i.aw, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 4294967292 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %index ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i, i64 %index ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %wide.load = load <2 x ptr>, ptr %i.ay, align 8, !tbaa !256
  %wide.load92 = load <2 x ptr>, ptr %i.az, align 8, !tbaa !256
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store <2 x ptr> %wide.load, ptr %i.ax, align 8, !tbaa !256
  store <2 x ptr> %wide.load92, ptr %i.ba, align 8, !tbaa !256
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !380

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv.i.i.i.prol
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.i.i.i.prol
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !256
  store ptr %i.be, ptr %i.bc, align 8, !tbaa !256
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !381

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.bf = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.bg = icmp ugt i64 %i.bf, -4
  br i1 %i.bg, label %._crit_edge.i.i.i, label %scalar.ph

._crit_edge.i.i.i:                                ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.noexc
  %.not.i.i.i.i26 = icmp eq ptr %.pre.i.i.i, %i.ac
  %i.bh = icmp eq ptr %.pre.i.i.i, null
  %or.cond.i.i.i.i = or i1 %.not.i.i.i.i26, %i.bh
  br i1 %or.cond.i.i.i.i, label %_ZN6bufferIP3astLb0ELj16EE6expandEv.exit.i.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge.i.i.i
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %.pre.i.i.i)
          to label %.noexc27 unwind label %bb.q

.noexc27:                                         ; preds = %bb.h
  %.pre2.pre.i.i = load i32, ptr %i.ab, align 8, !tbaa !253
  br label %_ZN6bufferIP3astLb0ELj16EE6expandEv.exit.i.i

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv.i.i.i
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.i.i.i
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !256
  store ptr %i.bk, ptr %i.bi, align 8, !tbaa !256
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv.next.i.i.i
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !256
  store ptr %i.bn, ptr %i.bl, align 8, !tbaa !256
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv.next.i.i.i.1
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !256
  store ptr %i.bq, ptr %i.bo, align 8, !tbaa !256
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv.next.i.i.i.2
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !256
  store ptr %i.bt, ptr %i.br, align 8, !tbaa !256
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.i.i.i, label %scalar.ph, !llvm.loop !382

_ZN6bufferIP3astLb0ELj16EE6expandEv.exit.i.i:     ; preds = %.noexc27, %._crit_edge.i.i.i
  %.pre2.i.i = phi i32 [ %i.au, %._crit_edge.i.i.i ], [ %.pre2.pre.i.i, %.noexc27 ]
  store ptr %i.at, ptr %2, align 8, !tbaa !252
  store i32 %i.aq, ptr %i.aa, align 4, !tbaa !254
  br label %bb.i

bb.i:                                             ; preds = %_ZN6bufferIP3astLb0ELj16EE6expandEv.exit.i.i, %._crit_edge.i.i
  %i.bu = phi i32 [ %i.ao, %._crit_edge.i.i ], [ %.pre2.i.i, %_ZN6bufferIP3astLb0ELj16EE6expandEv.exit.i.i ] ; 2 uses
  %i.bv = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.at, %_ZN6bufferIP3astLb0ELj16EE6expandEv.exit.i.i ]
  %i.bw = zext i32 %i.bu to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bw
  store ptr %i.aj, ptr %i.bx, align 8, !tbaa !256
  %i.by = add i32 %i.bu, 1
  store i32 %i.by, ptr %i.ab, align 8, !tbaa !253
  %i.bz = load ptr, ptr %i.b, align 8, !tbaa !155 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !260 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 12
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !275 ; 3 uses
  %i.ce = load i32, ptr %i.ae, align 8, !tbaa !106 ; 3 uses
  %i.cf = add i32 %i.ce, -1
  %i.cg = and i32 %i.cf, %i.cd                    ; 3 uses
  %i.ch = load ptr, ptr %i.ad, align 8, !tbaa !112 ; 3 uses
  %i.ci = zext i32 %i.cg to i64
  %.idx.i.i = shl nuw nsw i64 %i.ci, 3
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.idx.i.i ; 3 uses
  %i.ck = zext i32 %i.ce to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.ck
  %.not34.i.i = icmp eq i32 %i.cg, %i.ce
  br i1 %.not34.i.i, label %.preheader.i.i, label %.lr.ph.i.i

.preheader.i.i:                                   ; preds = %bb.l, %bb.i
  %.not2736.i.i = icmp eq i32 %i.cg, 0
  br i1 %.not2736.i.i, label %.loopexit41, label %.lr.ph38.i.i

.lr.ph.i.i:                                       ; preds = %bb.i, %bb.l
  %.035.i.i = phi ptr [ %i.cs, %bb.l ], [ %i.cj, %bb.i ] ; 2 uses
  %i.cm = load ptr, ptr %.035.i.i, align 8, !tbaa !111 ; 4 uses
  %.not.i28 = icmp ult ptr %i.cm, inttoptr (i64 2 to ptr)
  br i1 %.not.i28, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 12
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !275
  %i.cp = icmp eq i32 %i.co, %i.cd
  %i.cq = icmp eq ptr %i.cm, %i.cb
  %or.cond.i.i = and i1 %i.cq, %i.cp
  br i1 %or.cond.i.i, label %.loopexit, label %bb.l

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.cr = icmp eq ptr %i.cm, null
  br i1 %i.cr, label %.loopexit41, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.cs = getelementptr inbounds nuw i8, ptr %.035.i.i, i64 8 ; 2 uses
  %.not.i.i29 = icmp eq ptr %i.cs, %i.cl
  br i1 %.not.i.i29, label %.preheader.i.i, label %.lr.ph.i.i, !llvm.loop !9

.lr.ph38.i.i:                                     ; preds = %.preheader.i.i, %.lr.ph38.i.i.backedge
  %.137.i.i = phi ptr [ %.137.i.i.be, %.lr.ph38.i.i.backedge ], [ %i.ch, %.preheader.i.i ] ; 3 uses
  %i.ct = load ptr, ptr %.137.i.i, align 8, !tbaa !111 ; 4 uses
  %i.cu = icmp ult ptr %i.ct, inttoptr (i64 2 to ptr)
  br i1 %i.cu, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph38.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 12
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !275
  %i.cx = icmp eq i32 %i.cw, %i.cd
  %i.cy = icmp eq ptr %i.ct, %i.cb
  %or.cond31.i.i = and i1 %i.cy, %i.cx
  br i1 %or.cond31.i.i, label %.loopexit, label %bb.o

bb.n:                                             ; preds = %.lr.ph38.i.i
  %i.cz = icmp eq ptr %i.ct, null
  %i.da = getelementptr inbounds nuw i8, ptr %.137.i.i, i64 8 ; 2 uses
  %.not27.i.i = icmp eq ptr %i.da, %i.cj
  %or.cond43.i.i = select i1 %i.cz, i1 true, i1 %.not27.i.i
  br i1 %or.cond43.i.i, label %.loopexit41, label %.lr.ph38.i.i.backedge

bb.o:                                             ; preds = %bb.m
  %.old.i.i = getelementptr inbounds nuw i8, ptr %.137.i.i, i64 8 ; 2 uses
  %.not27.old.i.i = icmp eq ptr %.old.i.i, %i.cj
  br i1 %.not27.old.i.i, label %.loopexit41, label %.lr.ph38.i.i.backedge

.lr.ph38.i.i.backedge:                            ; preds = %bb.o, %bb.n
  %.137.i.i.be = phi ptr [ %i.da, %bb.n ], [ %.old.i.i, %bb.o ]
  br label %.lr.ph38.i.i, !llvm.loop !10

.loopexit41:                                      ; preds = %bb.k, %bb.o, %bb.n, %.preheader.i.i
  %i.db = load i8, ptr %i.af, align 1, !tbaa !116, !range !182, !noundef !89
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %bb.p, label %.critedge3

bb.p:                                             ; preds = %.loopexit41
  %i.dd = invoke noundef ptr @_ZNK4expr8get_sortEv(ptr noundef nonnull align 4 dereferenceable(16) %i.bz)
          to label %.noexc30 unwind label %bb.q

.noexc30:                                         ; preds = %bb.p
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !263 ; 3 uses
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %.critedge3, label %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i

_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i:   ; preds = %.noexc30
  %i.dh = load i32, ptr %i.df, align 8, !tbaa !267
  %i.di = icmp eq i32 %i.dh, 5
  br i1 %i.di, label %_ZNK17arith_recognizers6is_intEPK4expr.exit, label %.critedge3

_ZNK17arith_recognizers6is_intEPK4expr.exit:      ; preds = %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !276
  %i.dl = icmp eq i32 %i.dk, 1
  br i1 %i.dl, label %.loopexit, label %.critedge3

.critedge3:                                       ; preds = %.noexc30, %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i, %.loopexit41, %_ZNK17arith_recognizers6is_intEPK4expr.exit
  br label %.loopexit

bb.q:                                             ; preds = %bb.c, %bb.g, %bb.h, %bb.p
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @_ZN13ast_fast_markILj2EED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  resume { ptr, i32 } %i.dm

.critedge:                                        ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %.loopexit44

.loopexit:                                        ; preds = %bb.j, %bb.m, %_ZNK17arith_recognizers6is_intEPK4expr.exit, %.critedge3
  %.2.ph = phi i1 [ %.01752, %_ZNK17arith_recognizers6is_intEPK4expr.exit ], [ %.01752, %bb.m ], [ false, %.critedge3 ], [ %.01752, %bb.j ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit44, label %bb.c, !llvm.loop !383

.loopexit44:                                      ; preds = %.loopexit, %.critedge
  %.01750.ph = phi i1 [ %.01752, %.critedge ], [ %.2.ph, %.loopexit ] ; 2 uses
  %.not47.ph = phi i1 [ false, %.critedge ], [ true, %.loopexit ] ; 2 uses
  %.pr = load i32, ptr %i.ab, align 8, !tbaa !253 ; 2 uses
  %i.dn = load ptr, ptr %2, align 8, !tbaa !252   ; 4 uses
  %i.do = zext i32 %.pr to i64
  %.idx.i.i31 = shl nuw nsw i64 %i.do, 3          ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 %.idx.i.i31
  %.not8.i.i = icmp eq i32 %.pr, 0
  br i1 %.not8.i.i, label %.loopexit.i, label %.lr.ph.i.i32.preheader

.lr.ph.i.i32.preheader:                           ; preds = %.loopexit44
  %i.dq = add nsw i64 %.idx.i.i31, -8             ; 2 uses
  %i.dr = lshr exact i64 %i.dq, 3
  %i.ds = add nuw nsw i64 %i.dr, 1
  %xtraiter97 = and i64 %i.ds, 3                  ; 2 uses
  %lcmp.mod98.not = icmp eq i64 %xtraiter97, 0
  br i1 %lcmp.mod98.not, label %.lr.ph.i.i32.prol.loopexit, label %.lr.ph.i.i32.prol

.lr.ph.i.i32.prol:                                ; preds = %.lr.ph.i.i32.preheader, %.lr.ph.i.i32.prol
  %.09.i.i.prol = phi ptr [ %i.dx, %.lr.ph.i.i32.prol ], [ %i.dn, %.lr.ph.i.i32.preheader ] ; 2 uses
  %prol.iter99 = phi i64 [ %prol.iter99.next, %.lr.ph.i.i32.prol ], [ 0, %.lr.ph.i.i32.preheader ]
  %i.dt = load ptr, ptr %.09.i.i.prol, align 8, !tbaa !256
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 4 ; 2 uses
  %i.dv = load i32, ptr %i.du, align 4
  %i.dw = and i32 %i.dv, -131073
  store i32 %i.dw, ptr %i.du, align 4
  %i.dx = getelementptr inbounds nuw i8, ptr %.09.i.i.prol, i64 8 ; 2 uses
  %prol.iter99.next = add i64 %prol.iter99, 1     ; 2 uses
  %prol.iter99.cmp.not = icmp eq i64 %prol.iter99.next, %xtraiter97
  br i1 %prol.iter99.cmp.not, label %.lr.ph.i.i32.prol.loopexit, label %.lr.ph.i.i32.prol, !llvm.loop !384

.lr.ph.i.i32.prol.loopexit:                       ; preds = %.lr.ph.i.i32.prol, %.lr.ph.i.i32.preheader
  %.09.i.i.unr = phi ptr [ %i.dn, %.lr.ph.i.i32.preheader ], [ %i.dx, %.lr.ph.i.i32.prol ]
  %i.dy = icmp ult i64 %i.dq, 24
  br i1 %i.dy, label %.loopexit.loopexit.i, label %.lr.ph.i.i32

.lr.ph.i.i32:                                     ; preds = %.lr.ph.i.i32.prol.loopexit, %.lr.ph.i.i32
  %.09.i.i = phi ptr [ %i.es, %.lr.ph.i.i32 ], [ %.09.i.i.unr, %.lr.ph.i.i32.prol.loopexit ] ; 5 uses
  %i.dz = load ptr, ptr %.09.i.i, align 8, !tbaa !256
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 4 ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 4
  %i.ec = and i32 %i.eb, -131073
  store i32 %i.ec, ptr %i.ea, align 4
  %i.ed = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !256
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 4 ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 4
  %i.eh = and i32 %i.eg, -131073
  store i32 %i.eh, ptr %i.ef, align 4
  %i.ei = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !256
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 4 ; 2 uses
  %i.el = load i32, ptr %i.ek, align 4
  %i.em = and i32 %i.el, -131073
  store i32 %i.em, ptr %i.ek, align 4
  %i.en = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 24
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !256
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 4 ; 2 uses
  %i.eq = load i32, ptr %i.ep, align 4
  %i.er = and i32 %i.eq, -131073
  store i32 %i.er, ptr %i.ep, align 4
  %i.es = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 32 ; 2 uses
  %.not.i.i33.3 = icmp eq ptr %i.es, %i.dp
  br i1 %.not.i.i33.3, label %.loopexit.loopexit.i, label %.lr.ph.i.i32

.loopexit.loopexit.i:                             ; preds = %.lr.ph.i.i32, %.lr.ph.i.i32.prol.loopexit
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !252
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit44.thread, %.loopexit.loopexit.i, %.loopexit44
  %.not4781 = phi i1 [ %.not47.ph, %.loopexit.loopexit.i ], [ %.not47.ph, %.loopexit44 ], [ true, %.loopexit44.thread ]
  %.0175080 = phi i1 [ %.01750.ph, %.loopexit.loopexit.i ], [ %.01750.ph, %.loopexit44 ], [ true, %.loopexit44.thread ]
  %i.et = phi ptr [ %i.ac, %.loopexit.loopexit.i ], [ %i.ac, %.loopexit44 ], [ %i.w, %.loopexit44.thread ]
  %i.eu = phi ptr [ %i.ab, %.loopexit.loopexit.i ], [ %i.ab, %.loopexit44 ], [ %i.x, %.loopexit44.thread ]
  %i.ev = phi ptr [ %.pre.i, %.loopexit.loopexit.i ], [ %i.dn, %.loopexit44 ], [ %i.z, %.loopexit44.thread ] ; 3 uses
  store i32 0, ptr %i.eu, align 8, !tbaa !253
  %.not.i.i.i.i34 = icmp eq ptr %i.ev, %i.et
  %i.ew = icmp eq ptr %i.ev, null
  %or.cond.i.i.i.i35 = or i1 %.not.i.i.i.i34, %i.ew
  br i1 %or.cond.i.i.i.i35, label %_ZN13ast_fast_markILj2EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %.loopexit.i
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ev)
          to label %_ZN13ast_fast_markILj2EED2Ev.exit unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ex = landingpad { ptr, i32 }
          catch ptr null
  %i.ey = extractvalue { ptr, i32 } %i.ex, 0
  call void @__clang_call_terminate(ptr %i.ey) #21
  unreachable

_ZN13ast_fast_markILj2EED2Ev.exit:                ; preds = %.loopexit.i, %bb.r
  %3 = xor i1 %.0175080, true
  %.324 = select i1 %.not4781, i1 %3, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret i1 %.324
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK9fm_tactic3imp18is_linear_mon_coreEP4exprRS2_(ptr noundef nonnull align 8 dereferenceable(848) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 65535
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZNK9fm_tactic3imp6is_varEP4exprRS2_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !260
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !263  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i, label %_ZNK9fm_tactic3imp6is_varEP4exprRS2_.exit, label %_ZNK17arith_recognizers6is_mulEPK4expr.exit.i

_ZNK17arith_recognizers6is_mulEPK4expr.exit.i:    ; preds = %bb.b
  %i.i = load i32, ptr %i.h, align 8, !tbaa !267
  %i.j = icmp eq i32 %i.i, 5
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.l = load i32, ptr %i.k, align 4
  %i.m = icmp eq i32 %i.l, 9
  %i.n = select i1 %i.j, i1 %i.m, i1 false
  br i1 %i.n, label %bb.c, label %_ZNK9fm_tactic3imp6is_varEP4exprRS2_.exit

bb.c:                                             ; preds = %_ZNK17arith_recognizers6is_mulEPK4expr.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !268
  %i.q = icmp eq i32 %i.p, 2
  br i1 %i.q, label %bb.d, label %_ZNK9fm_tactic3imp6is_varEP4exprRS2_.exit

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !155  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !155  ; 5 uses
  store ptr %i.u, ptr %2, align 8, !tbaa !155
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.w = load i32, ptr %i.v, align 4
  %i.x = and i32 %i.w, 65535
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.e, label %_ZNK9fm_tactic3imp6is_varEP4exprRS2_.exit

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !260
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !263 ; 3 uses
  %.not.i.i.i.i.i8 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i8, label %_ZNK9fm_tactic3imp6is_varEP4exprRS2_.exit, label %_ZNK10arith_util10is_numeralEPK4expr.exit

_ZNK10arith_util10is_numeralEPK4expr.exit:        ; preds = %bb.e
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !267
  %i.ae = icmp eq i32 %i.ad, 5
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = icmp eq i32 %i.ag, 0
  %i.ai = select i1 %i.ae, i1 %i.ah, i1 false
  br i1 %i.ai, label %bb.f, label %_ZNK9fm_tactic3imp6is_varEP4exprRS2_.exit

bb.f:                                             ; preds = %_ZNK10arith_util10is_numeralEPK4expr.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = and i32 %i.ak, 65535
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.g, label %_ZNK9fm_tactic3imp6is_varEP4exprRS2_.exit

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !268 ; 2 uses
  %i.ap = icmp eq i32 %i.ao, 0
  %i.aq = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !260
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !263 ; 4 uses
  %i.au = icmp eq ptr %i.at, null                 ; 2 uses
  br i1 %i.ap, label %bb.h, label %.thread10.i

bb.h:                                             ; preds = %bb.g
  br i1 %i.au, label %_ZNK9fm_tactic3imp6is_varEP4exprRS2_.exit18, label %_Z17is_uninterp_constPK4expr.exit.i

_Z17is_uninterp_constPK4expr.exit.i:              ; preds = %bb.h
  %i.av = load i32, ptr %i.at, align 8, !tbaa !267
  %i.aw = icmp eq i32 %i.av, -1
  br i1 %i.aw, label %_ZNK9fm_tactic3imp6is_varEP4exprRS2_.exit18, label %_ZNK9fm_tactic3imp6is_varEP4exprRS2_.exit

.thread10.i:                                      ; preds = %bb.g
  br i1 %i.au, label %_ZNK9fm_tactic3imp6is_varEP4exprRS2_.exit, label %_ZNK17arith_recognizers10is_to_realEPK4expr.exit.i.i

_ZNK17arith_recognizers10is_to_realEPK4expr.exit.i.i: ; preds = %.thread10.i
  %i.ax = load i32, ptr %i.at, align 8, !tbaa !267
  %i.ay = icmp eq i32 %i.ax, 5
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = icmp eq i32 %i.ba, 18
  %i.bc = select i1 %i.ay, i1 %i.bb, i1 false
  %i.bd = icmp eq i32 %i.ao, 1
  %or.cond.i = and i1 %i.bd, %i.bc
  br i1 %or.cond.i, label %bb.i, label %_ZNK9fm_tactic3imp6is_varEP4exprRS2_.exit

bb.i:                                             ; preds = %_ZNK17arith_recognizers10is_to_realEPK4expr.exit.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !155 ; 4 uses
  store ptr %i.bf, ptr %2, align 8, !tbaa !155
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.bh = load i32, ptr %i.bg, align 4
  %i.bi = and i32 %i.bh, 65535
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %bb.j, label %_ZNK9fm_tactic3imp6is_varEP4exprRS2_.exit

bb.j:                                             ; preds = %bb.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !268
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.k, label %_ZNK9fm_tactic3imp6is_varEP4exprRS2_.exit

bb.k:                                             ; preds = %bb.j
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !260
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !263 ; 2 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %_ZNK9fm_tactic3imp6is_varEP4exprRS2_.exit18, label %_Z17is_uninterp_constPK4expr.exit8.i

_Z17is_uninterp_constPK4expr.exit8.i:             ; preds = %bb.k
  %i.bs = load i32, ptr %i.bq, align 8, !tbaa !267
  %i.bt = icmp eq i32 %i.bs, -1
  br i1 %i.bt, label %_ZNK9fm_tactic3imp6is_varEP4exprRS2_.exit18, label %_ZNK9fm_tactic3imp6is_varEP4exprRS2_.exit

_ZNK9fm_tactic3imp6is_varEP4exprRS2_.exit:        ; preds = %bb.e, %bb.d, %bb.b, %bb.a, %_ZNK17arith_recognizers6is_mulEPK4expr.exit.i, %bb.c, %_Z17is_uninterp_constPK4expr.exit8.i, %bb.j, %bb.i, %_ZNK17arith_recognizers10is_to_realEPK4expr.exit.i.i, %.thread10.i, %_Z17is_uninterp_constPK4expr.exit.i, %bb.f, %_ZNK10arith_util10is_numeralEPK4expr.exit
  %i.bu = load i32, ptr %i.a, align 4
  %i.bv = and i32 %i.bu, 65535
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.l, label %_ZNK17arith_recognizers10is_to_realEPK4exprRPS0_.exit.thread.i10

bb.l:                                             ; preds = %_ZNK9fm_tactic3imp6is_varEP4exprRS2_.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !268 ; 2 uses
  %i.bz = icmp eq i32 %i.by, 0
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !260
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !263 ; 4 uses
  %i.ce = icmp eq ptr %i.cd, null                 ; 2 uses
  br i1 %i.bz, label %bb.m, label %.thread10.i12

bb.m:                                             ; preds = %bb.l
  br i1 %i.ce, label %_Z17is_uninterp_constPK4expr.exit.thread9.i17, label %_Z17is_uninterp_constPK4expr.exit.i16

_Z17is_uninterp_constPK4expr.exit.i16:            ; preds = %bb.m
  %i.cf = load i32, ptr %i.cd, align 8, !tbaa !267
  %i.cg = icmp eq i32 %i.cf, -1
  br i1 %i.cg, label %_Z17is_uninterp_constPK4expr.exit.thread9.i17, label %_ZNK17arith_recognizers10is_to_realEPK4exprRPS0_.exit.thread.i10

_Z17is_uninterp_constPK4expr.exit.thread9.i17:    ; preds = %_Z17is_uninterp_constPK4expr.exit.i16, %bb.m
  store ptr %1, ptr %2, align 8, !tbaa !155
  br label %_ZNK9fm_tactic3imp6is_varEP4exprRS2_.exit18

.thread10.i12:                                    ; preds = %bb.l
  br i1 %i.ce, label %_ZNK17arith_recognizers10is_to_realEPK4exprRPS0_.exit.thread.i10, label %_ZNK17arith_recognizers10is_to_realEPK4expr.exit.i.i13

_ZNK17arith_recognizers10is_to_realEPK4expr.exit.i.i13: ; preds = %.thread10.i12
  %i.ch = load i32, ptr %i.cd, align 8, !tbaa !267
  %i.ci = icmp eq i32 %i.ch, 5
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  %i.ck = load i32, ptr %i.cj, align 4
  %i.cl = icmp eq i32 %i.ck, 18
  %i.cm = select i1 %i.ci, i1 %i.cl, i1 false
  %i.cn = icmp eq i32 %i.by, 1
  %or.cond.i14 = and i1 %i.cn, %i.cm
  br i1 %or.cond.i14, label %bb.n, label %_ZNK17arith_recognizers10is_to_realEPK4exprRPS0_.exit.thread.i10

bb.n:                                             ; preds = %_ZNK17arith_recognizers10is_to_realEPK4expr.exit.i.i13
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !155 ; 4 uses
  store ptr %i.cp, ptr %2, align 8, !tbaa !155
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  %i.cr = load i32, ptr %i.cq, align 4
  %i.cs = and i32 %i.cr, 65535
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %bb.o, label %_ZNK17arith_recognizers10is_to_realEPK4exprRPS0_.exit.thread.i10

bb.o:                                             ; preds = %bb.n
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !268
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %bb.p, label %_ZNK17arith_recognizers10is_to_realEPK4exprRPS0_.exit.thread.i10

bb.p:                                             ; preds = %bb.o
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !260
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !263 ; 2 uses
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %_ZNK9fm_tactic3imp6is_varEP4exprRS2_.exit18, label %_Z17is_uninterp_constPK4expr.exit8.i15

_Z17is_uninterp_constPK4expr.exit8.i15:           ; preds = %bb.p
end_hunk_0
