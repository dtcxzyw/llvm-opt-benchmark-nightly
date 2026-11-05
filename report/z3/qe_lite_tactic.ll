Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/qe_lite_tactic?download=true
inline.NumInlined: 5152
inline.NumDeleted: 1470
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 63
loop-unroll.NumUnrolled: 69
begin_hunk_0_@_ZN3qel2fm2fm6is_occEP4expr:bb.a
  %i.bl = tail call noundef zeroext i1 @_ZNK3qel2fm2fm14is_linear_ineqEP4expr(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef %1)
  br label %select.unfold

select.unfold:                                    ; preds = %bb.d, %select.unfold.loopexit, %_ZNK11ast_manager5is_orEPK4expr.exit.thread
  %.4 = phi i1 [ %i.bl, %_ZNK11ast_manager5is_orEPK4expr.exit.thread ], [ false, %bb.d ], [ %i.bk, %select.unfold.loopexit ]
  ret i1 %.4
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK3qel2fm2fm14is_linear_ineqEP4expr(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4              ; 5 uses
  %i.c = and i32 %i.b, 65535
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZNK11ast_manager6is_notEPK4exprRPS0_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !242
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !387  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i, label %_ZNK11ast_manager6is_notEPK4exprRPS0_.exit, label %_ZNK11ast_manager6is_notEPK4expr.exit.i

_ZNK11ast_manager6is_notEPK4expr.exit.i:          ; preds = %bb.b
  %i.i = load i32, ptr %i.h, align 8, !tbaa !391
  %i.j = icmp eq i32 %i.i, 0
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.l = load i32, ptr %i.k, align 4
  %i.m = icmp eq i32 %i.l, 8
  %i.n = select i1 %i.j, i1 %i.m, i1 false
  br i1 %i.n, label %bb.c, label %_ZNK11ast_manager6is_notEPK4exprRPS0_.exit

bb.c:                                             ; preds = %_ZNK11ast_manager6is_notEPK4expr.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !55
  %i.q = icmp eq i32 %i.p, 1
  br i1 %i.q, label %bb.d, label %_ZNK11ast_manager6is_notEPK4exprRPS0_.exit

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !42   ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %.pre = load i32, ptr %.phi.trans.insert, align 4
  br label %_ZNK11ast_manager6is_notEPK4exprRPS0_.exit

_ZNK11ast_manager6is_notEPK4exprRPS0_.exit:       ; preds = %bb.a, %bb.b, %_ZNK11ast_manager6is_notEPK4expr.exit.i, %bb.c, %bb.d
  %i.t = phi i32 [ %i.b, %bb.b ], [ %.pre, %bb.d ], [ %i.b, %bb.c ], [ %i.b, %_ZNK11ast_manager6is_notEPK4expr.exit.i ], [ %i.b, %bb.a ]
  %.013 = phi ptr [ %1, %bb.b ], [ %i.s, %bb.d ], [ %1, %bb.c ], [ %1, %_ZNK11ast_manager6is_notEPK4expr.exit.i ], [ %1, %bb.a ] ; 5 uses
  %i.u = and i32 %i.t, 65535
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.e, label %_ZNK17arith_recognizers5is_geEPK4exprRPS0_S4_.exit.thread

bb.e:                                             ; preds = %_ZNK11ast_manager6is_notEPK4exprRPS0_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %.013, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !242
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !387  ; 5 uses
  %.not.i.i.i.i.i2 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i2, label %_ZNK17arith_recognizers5is_geEPK4exprRPS0_S4_.exit.thread, label %_ZNK17arith_recognizers5is_leEPK4expr.exit.i

_ZNK17arith_recognizers5is_leEPK4expr.exit.i:     ; preds = %bb.e
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !391
  %i.ab = icmp eq i32 %i.aa, 5
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = icmp eq i32 %i.ad, 2
  %i.af = select i1 %i.ab, i1 %i.ae, i1 false
  br i1 %i.af, label %bb.f, label %_ZNK17arith_recognizers5is_geEPK4expr.exit.i

bb.f:                                             ; preds = %_ZNK17arith_recognizers5is_leEPK4expr.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.013, i64 24
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !55
  %i.ai = icmp eq i32 %i.ah, 2
  br i1 %i.ai, label %_ZNK17arith_recognizers5is_leEPK4exprRPS0_S4_.exit, label %_ZNK17arith_recognizers5is_geEPK4expr.exit.i

_ZNK17arith_recognizers5is_geEPK4expr.exit.i:     ; preds = %bb.f, %_ZNK17arith_recognizers5is_leEPK4expr.exit.i
  %i.aj = load i32, ptr %i.z, align 8, !tbaa !391
  %i.ak = icmp eq i32 %i.aj, 5
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.am = load i32, ptr %i.al, align 4
  %i.an = icmp eq i32 %i.am, 3
  %i.ao = select i1 %i.ak, i1 %i.an, i1 false
  br i1 %i.ao, label %bb.g, label %_ZNK17arith_recognizers5is_geEPK4exprRPS0_S4_.exit.thread

bb.g:                                             ; preds = %_ZNK17arith_recognizers5is_geEPK4expr.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.013, i64 24
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !55
  %i.ar = icmp eq i32 %i.aq, 2
  br i1 %i.ar, label %_ZNK17arith_recognizers5is_leEPK4exprRPS0_S4_.exit, label %_ZNK17arith_recognizers5is_geEPK4exprRPS0_S4_.exit.thread

_ZNK17arith_recognizers5is_leEPK4exprRPS0_S4_.exit: ; preds = %bb.g, %bb.f
  %.09.in = getelementptr inbounds nuw i8, ptr %.013, i64 40
  %.09 = load ptr, ptr %.09.in, align 8, !tbaa !42 ; 2 uses
  %.010.in = getelementptr inbounds nuw i8, ptr %.013, i64 32
  %.010 = load ptr, ptr %.010.in, align 8, !tbaa !42
  %i.as = getelementptr inbounds nuw i8, ptr %.09, i64 4
  %i.at = load i32, ptr %i.as, align 4
  %i.au = and i32 %i.at, 65535
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.h, label %_ZNK17arith_recognizers5is_geEPK4exprRPS0_S4_.exit.thread

bb.h:                                             ; preds = %_ZNK17arith_recognizers5is_leEPK4exprRPS0_S4_.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %.09, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !242
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !387 ; 3 uses
  %.not.i.i.i.i.i5 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i5, label %_ZNK17arith_recognizers5is_geEPK4exprRPS0_S4_.exit.thread, label %_ZNK10arith_util10is_numeralEPK4expr.exit

_ZNK10arith_util10is_numeralEPK4expr.exit:        ; preds = %bb.h
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !391
  %i.bb = icmp eq i32 %i.ba, 5
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = icmp eq i32 %i.bd, 0
  %i.bf = select i1 %i.bb, i1 %i.be, i1 false
  br i1 %i.bf, label %bb.i, label %_ZNK17arith_recognizers5is_geEPK4exprRPS0_S4_.exit.thread

bb.i:                                             ; preds = %_ZNK10arith_util10is_numeralEPK4expr.exit
  %i.bg = tail call noundef zeroext i1 @_ZNK3qel2fm2fm13is_linear_polEP4expr(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef %.010)
  br label %_ZNK17arith_recognizers5is_geEPK4exprRPS0_S4_.exit.thread

_ZNK17arith_recognizers5is_geEPK4exprRPS0_S4_.exit.thread: ; preds = %bb.e, %bb.h, %_ZNK17arith_recognizers5is_leEPK4exprRPS0_S4_.exit, %_ZNK11ast_manager6is_notEPK4exprRPS0_.exit, %_ZNK17arith_recognizers5is_geEPK4expr.exit.i, %bb.g, %_ZNK10arith_util10is_numeralEPK4expr.exit, %bb.i
  %.0 = phi i1 [ false, %_ZNK11ast_manager6is_notEPK4exprRPS0_.exit ], [ false, %_ZNK10arith_util10is_numeralEPK4expr.exit ], [ %i.bg, %bb.i ], [ false, %bb.g ], [ false, %_ZNK17arith_recognizers5is_geEPK4expr.exit.i ], [ false, %bb.h ], [ false, %_ZNK17arith_recognizers5is_leEPK4exprRPS0_S4_.exit ], [ false, %bb.e ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK3qel2fm2fm13is_linear_polEP4expr(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %2 = alloca %class.ast_fast_mark.97, align 8    ; 19 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !42
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = and i32 %i.d, 65535
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %_ZNK17arith_recognizers6is_addEPK4expr.exit.thread.thread

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !242
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !387  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZNK17arith_recognizers6is_addEPK4expr.exit.thread.thread, label %_ZNK17arith_recognizers6is_addEPK4expr.exit

_ZNK17arith_recognizers6is_addEPK4expr.exit:      ; preds = %bb.b
  %i.k = load i32, ptr %i.j, align 8, !tbaa !391
  %i.l = icmp eq i32 %i.k, 5
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.n = load i32, ptr %i.m, align 4
  %i.o = icmp eq i32 %i.n, 6
  %i.p = select i1 %i.l, i1 %i.o, i1 false
  br i1 %i.p, label %_ZNK17arith_recognizers6is_addEPK4expr.exit.thread, label %_ZNK17arith_recognizers6is_addEPK4expr.exit.thread.thread

_ZNK17arith_recognizers6is_addEPK4expr.exit.thread.thread: ; preds = %_ZNK17arith_recognizers6is_addEPK4expr.exit, %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.q, ptr %2, align 8, !tbaa !404
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 0, ptr %i.r, align 8, !tbaa !405
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 16, ptr %i.s, align 4, !tbaa !406
  br label %.lr.ph

_ZNK17arith_recognizers6is_addEPK4expr.exit.thread: ; preds = %_ZNK17arith_recognizers6is_addEPK4expr.exit
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load i32, ptr %i.t, align 8, !tbaa !55   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.w, ptr %2, align 8, !tbaa !404
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i32 0, ptr %i.x, align 8, !tbaa !405
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  store i32 16, ptr %i.y, align 4, !tbaa !406
  %.not38 = icmp eq i32 %i.u, 0
  br i1 %.not38, label %.loopexit.thread, label %.lr.ph

.loopexit.thread:                                 ; preds = %_ZNK17arith_recognizers6is_addEPK4expr.exit.thread
  %i.z = load ptr, ptr %2, align 8, !tbaa !404
  br label %.loopexit.i

.lr.ph:                                           ; preds = %_ZNK17arith_recognizers6is_addEPK4expr.exit.thread.thread, %_ZNK17arith_recognizers6is_addEPK4expr.exit.thread
  %i.aa = phi ptr [ %i.s, %_ZNK17arith_recognizers6is_addEPK4expr.exit.thread.thread ], [ %i.y, %_ZNK17arith_recognizers6is_addEPK4expr.exit.thread ] ; 2 uses
  %i.ab = phi ptr [ %i.r, %_ZNK17arith_recognizers6is_addEPK4expr.exit.thread.thread ], [ %i.x, %_ZNK17arith_recognizers6is_addEPK4expr.exit.thread ] ; 7 uses
  %i.ac = phi ptr [ %i.q, %_ZNK17arith_recognizers6is_addEPK4expr.exit.thread.thread ], [ %i.w, %_ZNK17arith_recognizers6is_addEPK4expr.exit.thread ] ; 3 uses
  %.01256 = phi i32 [ 1, %_ZNK17arith_recognizers6is_addEPK4expr.exit.thread.thread ], [ %i.u, %_ZNK17arith_recognizers6is_addEPK4expr.exit.thread ]
  %.02055 = phi ptr [ %i.a, %_ZNK17arith_recognizers6is_addEPK4expr.exit.thread.thread ], [ %i.v, %_ZNK17arith_recognizers6is_addEPK4expr.exit.thread ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 728
  %wide.trip.count = zext i32 %.01256 to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.m ] ; 2 uses
  %.01639 = phi i1 [ true, %.lr.ph ], [ %.218.ph, %bb.m ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.02055, i64 %indvars.iv
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !42
  %i.ah = invoke noundef zeroext i1 @_ZNK3qel2fm2fm18is_linear_mon_coreEP4exprRS3_(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef %i.ag, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  br i1 %i.ah, label %bb.f, label %bb.l

bb.e:                                             ; preds = %bb.k, %bb.i, %bb.h, %bb.c
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @_ZN13ast_fast_markILj2EED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %i.ai

bb.f:                                             ; preds = %bb.d
  %i.aj = load ptr, ptr %i.b, align 8, !tbaa !42  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4            ; 2 uses
  %i.am = and i32 %i.al, 131072
  %.not30 = icmp eq i32 %i.am, 0
  br i1 %.not30, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.an = or disjoint i32 %i.al, 131072
  store i32 %i.an, ptr %i.ak, align 4
  %i.ao = load i32, ptr %i.ab, align 8, !tbaa !405 ; 2 uses
  %i.ap = load i32, ptr %i.aa, align 4, !tbaa !406 ; 2 uses
  %.not.i.i = icmp ult i32 %i.ao, %i.ap
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.h

._crit_edge.i.i:                                  ; preds = %bb.g
  %.pre.i.i = load ptr, ptr %2, align 8, !tbaa !404
  br label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.aq = shl i32 %i.ap, 1                        ; 2 uses
  %i.ar = zext i32 %i.aq to i64
  %i.as = shl nuw nsw i64 %i.ar, 3
  %i.at = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.as)
          to label %.noexc unwind label %bb.e     ; 9 uses

.noexc:                                           ; preds = %bb.h
  %i.au = load i32, ptr %i.ab, align 8, !tbaa !405 ; 4 uses
  %.not.i.i.i = icmp eq i32 %i.au, 0
  %.pre.i.i.i = load ptr, ptr %2, align 8, !tbaa !404 ; 10 uses
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc
  %.pre.i.i.i68 = ptrtoaddr ptr %.pre.i.i.i to i64
  %i.av = ptrtoaddr ptr %i.at to i64
  %wide.trip.count.i.i.i = zext i32 %i.au to i64  ; 5 uses
  %min.iters.check = icmp ult i32 %i.au, 4
  %i.aw = sub i64 %.pre.i.i.i68, %i.av
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
  %wide.load = load <2 x ptr>, ptr %i.ay, align 8, !tbaa !408
  %wide.load69 = load <2 x ptr>, ptr %i.az, align 8, !tbaa !408
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store <2 x ptr> %wide.load, ptr %i.ax, align 8, !tbaa !408
  store <2 x ptr> %wide.load69, ptr %i.ba, align 8, !tbaa !408
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !706

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
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !408
  store ptr %i.be, ptr %i.bc, align 8, !tbaa !408
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !707

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.bf = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.bg = icmp ugt i64 %i.bf, -4
  br i1 %i.bg, label %._crit_edge.i.i.i, label %scalar.ph

._crit_edge.i.i.i:                                ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.noexc
  %.not.i.i.i.i21 = icmp eq ptr %.pre.i.i.i, %i.ac
  %i.bh = icmp eq ptr %.pre.i.i.i, null
  %or.cond.i.i.i.i = or i1 %.not.i.i.i.i21, %i.bh
  br i1 %or.cond.i.i.i.i, label %_ZN6bufferIP3astLb0ELj16EE6expandEv.exit.i.i, label %bb.i

bb.i:                                             ; preds = %._crit_edge.i.i.i
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %.pre.i.i.i)
          to label %.noexc22 unwind label %bb.e

.noexc22:                                         ; preds = %bb.i
  %.pre2.pre.i.i = load i32, ptr %i.ab, align 8, !tbaa !405
  br label %_ZN6bufferIP3astLb0ELj16EE6expandEv.exit.i.i

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv.i.i.i
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.i.i.i
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !408
  store ptr %i.bk, ptr %i.bi, align 8, !tbaa !408
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv.next.i.i.i
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !408
  store ptr %i.bn, ptr %i.bl, align 8, !tbaa !408
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv.next.i.i.i.1
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !408
  store ptr %i.bq, ptr %i.bo, align 8, !tbaa !408
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv.next.i.i.i.2
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !408
  store ptr %i.bt, ptr %i.br, align 8, !tbaa !408
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.i.i.i, label %scalar.ph, !llvm.loop !708

_ZN6bufferIP3astLb0ELj16EE6expandEv.exit.i.i:     ; preds = %.noexc22, %._crit_edge.i.i.i
  %.pre2.i.i = phi i32 [ %i.au, %._crit_edge.i.i.i ], [ %.pre2.pre.i.i, %.noexc22 ]
  store ptr %i.at, ptr %2, align 8, !tbaa !404
  store i32 %i.aq, ptr %i.aa, align 4, !tbaa !406
  br label %bb.j

bb.j:                                             ; preds = %_ZN6bufferIP3astLb0ELj16EE6expandEv.exit.i.i, %._crit_edge.i.i
  %i.bu = phi i32 [ %i.ao, %._crit_edge.i.i ], [ %.pre2.i.i, %_ZN6bufferIP3astLb0ELj16EE6expandEv.exit.i.i ] ; 2 uses
  %i.bv = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.at, %_ZN6bufferIP3astLb0ELj16EE6expandEv.exit.i.i ]
  %i.bw = zext i32 %i.bu to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bw
  store ptr %i.aj, ptr %i.bx, align 8, !tbaa !408
  %i.by = add i32 %i.bu, 1
  store i32 %i.by, ptr %i.ab, align 8, !tbaa !405
  %i.bz = load ptr, ptr %i.b, align 8, !tbaa !42  ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !51 ; 2 uses
  %i.cc = lshr i32 %i.cb, 5                       ; 2 uses
  %i.cd = load ptr, ptr %i.ad, align 8, !tbaa !279 ; 3 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %_ZNK8uint_set8containsEj.exit.thread, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i:                ; preds = %bb.j
  %i.cf = getelementptr inbounds i8, ptr %i.cd, i64 -4
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !228
  %i.ch = icmp ult i32 %i.cc, %i.cg
  br i1 %i.ch, label %_ZNK8uint_set8containsEj.exit, label %_ZNK8uint_set8containsEj.exit.thread

_ZNK8uint_set8containsEj.exit:                    ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i
  %i.ci = zext nneg i32 %i.cc to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.ci
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !228
  %i.cl = and i32 %i.cb, 31
  %i.cm = shl nuw i32 1, %i.cl
  %i.cn = and i32 %i.ck, %i.cm
  %.not31 = icmp eq i32 %i.cn, 0
  br i1 %.not31, label %_ZNK8uint_set8containsEj.exit.thread, label %bb.m

_ZNK8uint_set8containsEj.exit.thread:             ; preds = %bb.j, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i, %_ZNK8uint_set8containsEj.exit
  %i.co = load i8, ptr %i.ae, align 8, !tbaa !347, !range !277, !noundef !172
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %bb.k, label %_ZNK17arith_recognizers6is_intEPK4expr.exit.thread

bb.k:                                             ; preds = %_ZNK8uint_set8containsEj.exit.thread
  %i.cq = invoke noundef ptr @_ZNK4expr8get_sortEv(ptr noundef nonnull align 4 dereferenceable(16) %i.bz)
          to label %.noexc23 unwind label %bb.e

.noexc23:                                         ; preds = %bb.k
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !387 ; 3 uses
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %_ZNK17arith_recognizers6is_intEPK4expr.exit.thread, label %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i

_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i:   ; preds = %.noexc23
  %i.cu = load i32, ptr %i.cs, align 8, !tbaa !391
  %i.cv = icmp eq i32 %i.cu, 5
  br i1 %i.cv, label %_ZNK17arith_recognizers6is_intEPK4expr.exit, label %_ZNK17arith_recognizers6is_intEPK4expr.exit.thread

_ZNK17arith_recognizers6is_intEPK4expr.exit:      ; preds = %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !441
  %i.cy = icmp eq i32 %i.cx, 1
  br i1 %i.cy, label %bb.m, label %_ZNK17arith_recognizers6is_intEPK4expr.exit.thread

_ZNK17arith_recognizers6is_intEPK4expr.exit.thread: ; preds = %.noexc23, %_ZNK4decl13get_family_idEv.exit.thread.i.i.i.i, %_ZNK17arith_recognizers6is_intEPK4expr.exit, %_ZNK8uint_set8containsEj.exit.thread
  br label %bb.m

bb.l:                                             ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %.loopexit

bb.m:                                             ; preds = %_ZNK17arith_recognizers6is_intEPK4expr.exit.thread, %_ZNK17arith_recognizers6is_intEPK4expr.exit, %_ZNK8uint_set8containsEj.exit
  %.218.ph = phi i1 [ false, %_ZNK17arith_recognizers6is_intEPK4expr.exit.thread ], [ %.01639, %_ZNK17arith_recognizers6is_intEPK4expr.exit ], [ %.01639, %_ZNK8uint_set8containsEj.exit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !709

.loopexit:                                        ; preds = %bb.m, %bb.l
  %.01637.ph = phi i1 [ %.01639, %bb.l ], [ %.218.ph, %bb.m ] ; 2 uses
  %.not34.ph = phi i1 [ false, %bb.l ], [ true, %bb.m ] ; 2 uses
  %.pr = load i32, ptr %i.ab, align 8, !tbaa !405 ; 2 uses
  %i.cz = load ptr, ptr %2, align 8, !tbaa !404   ; 4 uses
  %i.da = zext i32 %.pr to i64
  %.idx.i.i = shl nuw nsw i64 %i.da, 3            ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 %.idx.i.i
  %.not8.i.i = icmp eq i32 %.pr, 0
  br i1 %.not8.i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.loopexit
  %i.dc = add nsw i64 %.idx.i.i, -8               ; 2 uses
  %i.dd = lshr exact i64 %i.dc, 3
  %i.de = add nuw nsw i64 %i.dd, 1
  %xtraiter72 = and i64 %i.de, 3                  ; 2 uses
  %lcmp.mod73.not = icmp eq i64 %xtraiter72, 0
  br i1 %lcmp.mod73.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.09.i.i.prol = phi ptr [ %i.dj, %.lr.ph.i.i.prol ], [ %i.cz, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter74 = phi i64 [ %prol.iter74.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.df = load ptr, ptr %.09.i.i.prol, align 8, !tbaa !408
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 4 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4
  %i.di = and i32 %i.dh, -131073
  store i32 %i.di, ptr %i.dg, align 4
  %i.dj = getelementptr inbounds nuw i8, ptr %.09.i.i.prol, i64 8 ; 2 uses
  %prol.iter74.next = add i64 %prol.iter74, 1     ; 2 uses
  %prol.iter74.cmp.not = icmp eq i64 %prol.iter74.next, %xtraiter72
  br i1 %prol.iter74.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !710

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.09.i.i.unr = phi ptr [ %i.cz, %.lr.ph.i.i.preheader ], [ %i.dj, %.lr.ph.i.i.prol ]
  %i.dk = icmp ult i64 %i.dc, 24
  br i1 %i.dk, label %.loopexit.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.ee, %.lr.ph.i.i ], [ %.09.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %i.dl = load ptr, ptr %.09.i.i, align 8, !tbaa !408
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 4 ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 4
  %i.do = and i32 %i.dn, -131073
  store i32 %i.do, ptr %i.dm, align 4
  %i.dp = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !408
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 4 ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 4
  %i.dt = and i32 %i.ds, -131073
  store i32 %i.dt, ptr %i.dr, align 4
  %i.du = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !408
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 4 ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 4
  %i.dy = and i32 %i.dx, -131073
  store i32 %i.dy, ptr %i.dw, align 4
  %i.dz = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 24
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !408
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 4 ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4
  %i.ed = and i32 %i.ec, -131073
  store i32 %i.ed, ptr %i.eb, align 4
  %i.ee = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 32 ; 2 uses
  %.not.i.i24.3 = icmp eq ptr %i.ee, %i.db
  br i1 %.not.i.i24.3, label %.loopexit.loopexit.i, label %.lr.ph.i.i

.loopexit.loopexit.i:                             ; preds = %.lr.ph.i.i, %.lr.ph.i.i.prol.loopexit
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !404
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.thread, %.loopexit.loopexit.i, %.loopexit
  %.not3462 = phi i1 [ %.not34.ph, %.loopexit.loopexit.i ], [ %.not34.ph, %.loopexit ], [ true, %.loopexit.thread ]
  %.0163761 = phi i1 [ %.01637.ph, %.loopexit.loopexit.i ], [ %.01637.ph, %.loopexit ], [ true, %.loopexit.thread ]
  %i.ef = phi ptr [ %i.ac, %.loopexit.loopexit.i ], [ %i.ac, %.loopexit ], [ %i.w, %.loopexit.thread ]
  %i.eg = phi ptr [ %i.ab, %.loopexit.loopexit.i ], [ %i.ab, %.loopexit ], [ %i.x, %.loopexit.thread ]
  %i.eh = phi ptr [ %.pre.i, %.loopexit.loopexit.i ], [ %i.cz, %.loopexit ], [ %i.z, %.loopexit.thread ] ; 3 uses
  store i32 0, ptr %i.eg, align 8, !tbaa !405
  %.not.i.i.i.i25 = icmp eq ptr %i.eh, %i.ef
  %i.ei = icmp eq ptr %i.eh, null
  %or.cond.i.i.i.i26 = or i1 %.not.i.i.i.i25, %i.ei
  br i1 %or.cond.i.i.i.i26, label %_ZN13ast_fast_markILj2EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %.loopexit.i
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.eh)
          to label %_ZN13ast_fast_markILj2EED2Ev.exit unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ej = landingpad { ptr, i32 }
          catch ptr null
  %i.ek = extractvalue { ptr, i32 } %i.ej, 0
  call void @__clang_call_terminate(ptr %i.ek) #26
  unreachable

_ZN13ast_fast_markILj2EED2Ev.exit:                ; preds = %.loopexit.i, %bb.n
  %3 = xor i1 %.0163761, true
  %.3 = select i1 %.not3462, i1 %3, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret i1 %.3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK3qel2fm2fm18is_linear_mon_coreEP4exprRS3_(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 65535
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZNK17arith_recognizers6is_mulEPK4exprRPS0_S4_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !242
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !387  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i, label %_ZNK17arith_recognizers6is_mulEPK4exprRPS0_S4_.exit.thread, label %_ZNK17arith_recognizers6is_mulEPK4expr.exit.i

_ZNK17arith_recognizers6is_mulEPK4expr.exit.i:    ; preds = %bb.b
  %i.i = load i32, ptr %i.h, align 8, !tbaa !391
  %i.j = icmp eq i32 %i.i, 5
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.l = load i32, ptr %i.k, align 4
  %i.m = icmp eq i32 %i.l, 9
  %i.n = select i1 %i.j, i1 %i.m, i1 false
  br i1 %i.n, label %bb.c, label %_ZNK17arith_recognizers6is_mulEPK4exprRPS0_S4_.exit.thread

bb.c:                                             ; preds = %_ZNK17arith_recognizers6is_mulEPK4expr.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !55
  %i.q = icmp eq i32 %i.p, 2
  br i1 %i.q, label %bb.d, label %_ZNK17arith_recognizers6is_mulEPK4exprRPS0_S4_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !42   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !42   ; 6 uses
  store ptr %i.u, ptr %2, align 8, !tbaa !42
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.w = load i32, ptr %i.v, align 4
  %i.x = and i32 %i.w, 65535
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.e, label %_ZNK17arith_recognizers6is_mulEPK4exprRPS0_S4_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !242
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !387 ; 3 uses
  %.not.i.i.i.i.i8 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i8, label %_ZNK17arith_recognizers6is_mulEPK4exprRPS0_S4_.exit.thread, label %_ZNK10arith_util10is_numeralEPK4expr.exit

_ZNK10arith_util10is_numeralEPK4expr.exit:        ; preds = %bb.e
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !391
  %i.ae = icmp eq i32 %i.ad, 5
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = icmp eq i32 %i.ag, 0
  %i.ai = select i1 %i.ae, i1 %i.ah, i1 false
  br i1 %i.ai, label %bb.f, label %_ZNK17arith_recognizers6is_mulEPK4exprRPS0_S4_.exit.thread

bb.f:                                             ; preds = %_ZNK10arith_util10is_numeralEPK4expr.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !286 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !44
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = tail call noundef zeroext i1 %i.an(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef %i.u), !inline_history !14
  br i1 %i.ao, label %_ZNK3qel2fm2fm6is_varEP4exprRS3_.exit16.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = and i32 %i.aq, 65535
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.h, label %_ZNK17arith_recognizers6is_mulEPK4exprRPS0_S4_.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !242
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !387 ; 3 uses
  %.not.i.i.i.i.i10 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i.i10, label %_ZNK17arith_recognizers6is_mulEPK4exprRPS0_S4_.exit.thread, label %_ZNK17arith_recognizers10is_to_realEPK4expr.exit.i

_ZNK17arith_recognizers10is_to_realEPK4expr.exit.i: ; preds = %bb.h
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !391
  %i.ay = icmp eq i32 %i.ax, 5
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = icmp eq i32 %i.ba, 18
  %i.bc = select i1 %i.ay, i1 %i.bb, i1 false
  br i1 %i.bc, label %bb.i, label %_ZNK17arith_recognizers6is_mulEPK4exprRPS0_S4_.exit.thread

bb.i:                                             ; preds = %_ZNK17arith_recognizers10is_to_realEPK4expr.exit.i
  %i.bd = load ptr, ptr %i.aj, align 8, !tbaa !286 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !42
  %i.bg = load ptr, ptr %i.bd, align 8, !tbaa !44
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = tail call noundef zeroext i1 %i.bi(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef %i.bf), !inline_history !14
  br i1 %i.bj, label %bb.j, label %_ZNK17arith_recognizers6is_mulEPK4exprRPS0_S4_.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.bk = load ptr, ptr %i.be, align 8, !tbaa !42
  br label %_ZNK3qel2fm2fm6is_varEP4exprRS3_.exit16.sink.split

_ZNK17arith_recognizers6is_mulEPK4exprRPS0_S4_.exit.thread: ; preds = %bb.i, %_ZNK17arith_recognizers10is_to_realEPK4expr.exit.i, %bb.h, %bb.g, %bb.e, %bb.d, %bb.b, %bb.a, %_ZNK17arith_recognizers6is_mulEPK4expr.exit.i, %bb.c, %_ZNK10arith_util10is_numeralEPK4expr.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !286 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !44
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = tail call noundef zeroext i1 %i.bp(ptr noundef nonnull align 8 dereferenceable(8) %i.bm, ptr noundef nonnull %1), !inline_history !14
  br i1 %i.bq, label %_ZNK3qel2fm2fm6is_varEP4exprRS3_.exit16.sink.split, label %bb.k

bb.k:                                             ; preds = %_ZNK17arith_recognizers6is_mulEPK4exprRPS0_S4_.exit.thread
  %i.br = load i32, ptr %i.a, align 4
  %i.bs = and i32 %i.br, 65535
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.l, label %_ZNK3qel2fm2fm6is_varEP4exprRS3_.exit16

bb.l:                                             ; preds = %bb.k
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !242
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !387 ; 3 uses
  %.not.i.i.i.i.i12 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i.i.i12, label %_ZNK3qel2fm2fm6is_varEP4exprRS3_.exit16, label %_ZNK17arith_recognizers10is_to_realEPK4expr.exit.i13

_ZNK17arith_recognizers10is_to_realEPK4expr.exit.i13: ; preds = %bb.l
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !391
  %i.bz = icmp eq i32 %i.by, 5
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  %i.cb = load i32, ptr %i.ca, align 4
  %i.cc = icmp eq i32 %i.cb, 18
  %i.cd = select i1 %i.bz, i1 %i.cc, i1 false
  br i1 %i.cd, label %bb.m, label %_ZNK3qel2fm2fm6is_varEP4exprRS3_.exit16

bb.m:                                             ; preds = %_ZNK17arith_recognizers10is_to_realEPK4expr.exit.i13
  %i.ce = load ptr, ptr %i.bl, align 8, !tbaa !286 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !42
  %i.ch = load ptr, ptr %i.ce, align 8, !tbaa !44
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = tail call noundef zeroext i1 %i.cj(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, ptr noundef %i.cg), !inline_history !14
  br i1 %i.ck, label %bb.n, label %_ZNK3qel2fm2fm6is_varEP4exprRS3_.exit16

bb.n:                                             ; preds = %bb.m
  %i.cl = load ptr, ptr %i.cf, align 8, !tbaa !42
  br label %_ZNK3qel2fm2fm6is_varEP4exprRS3_.exit16.sink.split

_ZNK3qel2fm2fm6is_varEP4exprRS3_.exit16.sink.split: ; preds = %_ZNK17arith_recognizers6is_mulEPK4exprRPS0_S4_.exit.thread, %bb.n, %bb.j, %bb.f
  %.sink.i15.sink = phi ptr [ %i.u, %bb.f ], [ %i.bk, %bb.j ], [ %i.cl, %bb.n ], [ %1, %_ZNK17arith_recognizers6is_mulEPK4exprRPS0_S4_.exit.thread ]
  store ptr %.sink.i15.sink, ptr %2, align 8, !tbaa !42
  br label %_ZNK3qel2fm2fm6is_varEP4exprRS3_.exit16

_ZNK3qel2fm2fm6is_varEP4exprRS3_.exit16:          ; preds = %_ZNK3qel2fm2fm6is_varEP4exprRS3_.exit16.sink.split, %bb.m, %_ZNK17arith_recognizers10is_to_realEPK4expr.exit.i13, %bb.l, %bb.k
  %.0 = phi i1 [ false, %bb.m ], [ false, %bb.k ], [ false, %bb.l ], [ false, %_ZNK17arith_recognizers10is_to_realEPK4expr.exit.i13 ], [ true, %_ZNK3qel2fm2fm6is_varEP4exprRS3_.exit16.sink.split ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z18for_each_expr_coreIN3qel2fm2fm14forbidden_procE13ast_fast_markILj1EELb0ELb0EEvRT_RT0_P4expr(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::allocator", align 1    ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.std::allocator", align 1    ; 4 uses
  %7 = alloca %class.sbuffer, align 8             ; 20 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !231
  %i.c = icmp ugt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = and i32 %i.e, 65536
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.bv

bb.c:                                             ; preds = %bb.b
  %i.g = or disjoint i32 %i.e, 65536
  store i32 %i.g, ptr %i.d, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !405  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !406  ; 2 uses
  %.not.i.i = icmp ult i32 %i.i, %i.k
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.d

._crit_edge.i.i:                                  ; preds = %bb.c
  %.pre.i.i = load ptr, ptr %1, align 8, !tbaa !404
  br label %_ZN13ast_fast_markILj1EE4markEP3ast.exit

end_hunk_0
