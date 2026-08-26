Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/finite_set_decl_plugin?download=true
inline.NumInlined: 458
inline.NumDeleted: 276
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN22finite_set_decl_plugin4initEv
define hidden void @_ZN22finite_set_decl_plugin4initEv(ptr noundef nonnull align 8 dereferenceable(41) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %1 = alloca %class.array_util, align 8          ; 6 uses
  %2 = alloca %class.symbol, align 8              ; 4 uses
  %3 = alloca %class.symbol, align 8              ; 4 uses
  %4 = alloca %class.parameter, align 8           ; 8 uses
  %5 = alloca %class.parameter, align 8           ; 8 uses
  %6 = alloca %class.arith_util, align 8          ; 5 uses
  %7 = alloca %class.parameter, align 8           ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !27, !range !32, !noundef !33
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.bv, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !8    ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  call void @_ZN10array_utilC1ER11ast_manager(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(952) %i.g)
  store i8 1, ptr %i.c, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.14)
  %i.h = call noundef ptr @_ZN11ast_manager11mk_type_varERK6symbol(ptr noundef nonnull align 8 dereferenceable(952) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 12 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.15)
  %i.i = call noundef ptr @_ZN11ast_manager11mk_type_varERK6symbol(ptr noundef nonnull align 8 dereferenceable(952) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %3) ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  store ptr %i.h, ptr %4, align 8, !tbaa !34
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i8 1, ptr %i.j, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  store ptr %i.i, ptr %5, align 8, !tbaa !34
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 1, ptr %i.k, align 8, !tbaa !37
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !12
  %i.n = invoke noundef ptr @_ZN11ast_manager7mk_sortEiijPK9parameter(ptr noundef nonnull align 8 dereferenceable(952) %i.g, i32 noundef %i.m, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %4)
          to label %bb.c unwind label %bb.bw      ; 45 uses

bb.c:                                             ; preds = %bb.b
  %i.o = load i32, ptr %i.l, align 8, !tbaa !12
  %i.p = invoke noundef ptr @_ZN11ast_manager7mk_sortEiijPK9parameter(ptr noundef nonnull align 8 dereferenceable(952) %i.g, i32 noundef %i.o, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %5)
          to label %bb.d unwind label %bb.bx      ; 3 uses

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 816
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !39   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  invoke void @_ZN10arith_utilC1ER11ast_manager(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(952) %i.g)
          to label %bb.e unwind label %bb.by

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %6, align 8, !tbaa !100, !nonnull !33, !align !103
  %i.t = invoke noundef ptr @_ZN11ast_manager7mk_sortEiijPK9parameter(ptr noundef nonnull align 8 dereferenceable(952) %i.s, i32 noundef 5, i32 noundef 1, i32 noundef 0, ptr noundef null)
          to label %_ZN10arith_util6mk_intEv.exit unwind label %bb.by ; 12 uses

_ZN10arith_util6mk_intEv.exit:                    ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  store ptr %i.t, ptr %7, align 8, !tbaa !34
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i8 1, ptr %i.u, align 8, !tbaa !37
  %i.v = load i32, ptr %i.l, align 8, !tbaa !12
  %i.w = invoke noundef ptr @_ZN11ast_manager7mk_sortEiijPK9parameter(ptr noundef nonnull align 8 dereferenceable(952) %i.g, i32 noundef %i.v, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %7)
          to label %bb.f unwind label %bb.bz      ; 3 uses

bb.f:                                             ; preds = %_ZN10arith_util6mk_intEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.h, ptr %i.b, align 8, !tbaa !104
  %i.x = invoke noundef ptr @_ZN10array_util13mk_array_sortEjPKP4sortS1_(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 1, ptr noundef nonnull %i.b, ptr noundef %i.i)
          to label %bb.g unwind label %bb.ca      ; 5 uses

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.h, ptr %i.a, align 8, !tbaa !104
  %i.y = invoke noundef ptr @_ZN10array_util13mk_array_sortEjPKP4sortS1_(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 1, ptr noundef nonnull %i.a, ptr noundef %i.r)
          to label %bb.h unwind label %bb.cb      ; 3 uses

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 17 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !22  ; 3 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %_ZNK6vectorIPN12polymorphism4psigELb0EjE4sizeEv.exit.i.preheader, label %_ZNK6vectorIPN12polymorphism4psigELb0EjE4sizeEv.exit.thread.i

_ZNK6vectorIPN12polymorphism4psigELb0EjE4sizeEv.exit.thread.i: ; preds = %bb.h
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 -4 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !19 ; 2 uses
  %.not15.i = icmp ult i32 %i.ad, 14
  br i1 %.not15.i, label %_ZNK6vectorIPN12polymorphism4psigELb0EjE4sizeEv.exit.i.preheader, label %bb.i

_ZNK6vectorIPN12polymorphism4psigELb0EjE4sizeEv.exit.i.preheader: ; preds = %bb.h, %_ZNK6vectorIPN12polymorphism4psigELb0EjE4sizeEv.exit.thread.i
  %.ph = phi ptr [ %i.aa, %_ZNK6vectorIPN12polymorphism4psigELb0EjE4sizeEv.exit.thread.i ], [ null, %bb.h ]
  %.0.i16.i.ph = phi i32 [ %i.ad, %_ZNK6vectorIPN12polymorphism4psigELb0EjE4sizeEv.exit.thread.i ], [ 0, %bb.h ]
  br label %_ZNK6vectorIPN12polymorphism4psigELb0EjE4sizeEv.exit.i

bb.i:                                             ; preds = %_ZNK6vectorIPN12polymorphism4psigELb0EjE4sizeEv.exit.thread.i
  store i32 14, ptr %i.ac, align 4, !tbaa !19
  br label %_ZN6vectorIPN12polymorphism4psigELb0EjE6resizeEj.exit

_ZNK6vectorIPN12polymorphism4psigELb0EjE4sizeEv.exit.i: ; preds = %_ZNK6vectorIPN12polymorphism4psigELb0EjE4sizeEv.exit.i.preheader, %.noexc
  %i.ae = phi ptr [ %.pr.pre.i, %.noexc ], [ %.ph, %_ZNK6vectorIPN12polymorphism4psigELb0EjE4sizeEv.exit.i.preheader ] ; 4 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %_ZNK6vectorIPN12polymorphism4psigELb0EjE8capacityEv.exit.thread.i, label %_ZNK6vectorIPN12polymorphism4psigELb0EjE8capacityEv.exit.i

_ZNK6vectorIPN12polymorphism4psigELb0EjE8capacityEv.exit.i: ; preds = %_ZNK6vectorIPN12polymorphism4psigELb0EjE4sizeEv.exit.i
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !19
  %i.ai = icmp ult i32 %i.ah, 14
  br i1 %i.ai, label %_ZNK6vectorIPN12polymorphism4psigELb0EjE8capacityEv.exit.thread.i, label %.lr.ph.preheader.i

_ZNK6vectorIPN12polymorphism4psigELb0EjE8capacityEv.exit.thread.i: ; preds = %_ZNK6vectorIPN12polymorphism4psigELb0EjE8capacityEv.exit.i, %_ZNK6vectorIPN12polymorphism4psigELb0EjE4sizeEv.exit.i
  invoke void @_ZN6vectorIPN12polymorphism4psigELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.z)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %_ZNK6vectorIPN12polymorphism4psigELb0EjE8capacityEv.exit.thread.i
  %.pr.pre.i = load ptr, ptr %i.z, align 8, !tbaa !22
  br label %_ZNK6vectorIPN12polymorphism4psigELb0EjE4sizeEv.exit.i, !llvm.loop !105

.lr.ph.preheader.i:                               ; preds = %_ZNK6vectorIPN12polymorphism4psigELb0EjE8capacityEv.exit.i
  %i.aj = getelementptr inbounds i8, ptr %i.ae, i64 -4
  store i32 14, ptr %i.aj, align 4, !tbaa !19
  %i.ak = zext nneg i32 %.0.i16.i.ph to i64       ; 2 uses
  %i.al = getelementptr [8 x i8], ptr %i.ae, i64 %i.ak
  %i.am = shl nuw nsw i64 %i.ak, 3
  %i.an = sub nuw nsw i64 112, %i.am
  call void @llvm.memset.p0.i64(ptr align 8 %i.al, i8 0, i64 %i.an, i1 false), !tbaa !25
  br label %_ZN6vectorIPN12polymorphism4psigELb0EjE6resizeEj.exit

_ZN6vectorIPN12polymorphism4psigELb0EjE6resizeEj.exit: ; preds = %.lr.ph.preheader.i, %bb.i
  %i.ao = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 48)
          to label %bb.j unwind label %.loopexit.split-lp ; 7 uses

bb.j:                                             ; preds = %_ZN6vectorIPN12polymorphism4psigELb0EjE6resizeEj.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 14 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !15
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !20
  invoke void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.ao, ptr noundef %i.ar)
          to label %.noexc52 unwind label %.loopexit.split-lp

.noexc52:                                         ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i32 1, ptr %i.as, align 8, !tbaa !107
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.au = ptrtoint ptr %i.g to i64                ; 14 uses
  store i64 %i.au, ptr %i.at, align 8, !tbaa !116
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store ptr null, ptr %i.av, align 8, !tbaa !117
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  store ptr %i.n, ptr %i.aw, align 8, !tbaa !118
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  store ptr %i.g, ptr %i.ax, align 8, !tbaa !116
  %.not.i.i.i = icmp eq ptr %i.n, null            ; 19 uses
  br i1 %.not.i.i.i, label %_ZN12polymorphism4psigC2ER11ast_managerPKcjjPKP4sortS6_.exit, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i

_ZN11ast_manager7inc_refEP3ast.exit.i.i.i:        ; preds = %.noexc52
  %i.ay = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !119
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr %i.ay, align 4, !tbaa !119
  br label %_ZN12polymorphism4psigC2ER11ast_managerPKcjjPKP4sortS6_.exit

_ZN12polymorphism4psigC2ER11ast_managerPKcjjPKP4sortS6_.exit: ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i, %.noexc52
  %i.bb = load ptr, ptr %i.z, align 8, !tbaa !22
  store ptr %i.ao, ptr %i.bb, align 8, !tbaa !25
  %i.bc = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 48)
          to label %bb.k unwind label %.loopexit.split-lp ; 7 uses

bb.k:                                             ; preds = %_ZN12polymorphism4psigC2ER11ast_managerPKcjjPKP4sortS6_.exit
  %i.bd = load ptr, ptr %i.ap, align 8, !tbaa !15
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !20
  invoke void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.bc, ptr noundef %i.bf)
          to label %.noexc55 unwind label %.loopexit.split-lp

.noexc55:                                         ; preds = %bb.k
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i32 1, ptr %i.bg, align 8, !tbaa !107
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  store i64 %i.au, ptr %i.bh, align 8, !tbaa !116
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 24 ; 3 uses
  store ptr null, ptr %i.bi, align 8, !tbaa !117
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 32 ; 2 uses
  store ptr %i.n, ptr %i.bj, align 8, !tbaa !118
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  store ptr %i.g, ptr %i.bk, align 8, !tbaa !116
  br i1 %.not.i.i.i, label %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i54

_ZN11ast_manager7inc_refEP3ast.exit.i.i.i54:      ; preds = %.noexc55
  %i.bl = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !119
  %i.bn = add i32 %i.bm, 1
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !119
  br label %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i

_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i: ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i54, %.noexc55
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.h, null    ; 4 uses
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !119
  %i.bq = add i32 %i.bp, 1
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !119
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i: ; preds = %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i, %bb.l
  invoke void @_ZN6vectorIP4sortLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bi)
          to label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i unwind label %bb.m

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i: ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i
  %.pre.i.i.i.i.i = load ptr, ptr %i.bi, align 8, !tbaa !117 ; 3 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i, i64 -4
  %.pre2.i.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i.i.i, align 4, !tbaa !19 ; 2 uses
  %8 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i, i64 -4
  %i.br = zext i32 %.pre2.i.i.i.i.i to i64
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i.i, i64 %i.br
  store ptr %i.h, ptr %i.bs, align 8, !tbaa !104
  %i.bt = add i32 %.pre2.i.i.i.i.i, 1
  store i32 %i.bt, ptr %8, align 4, !tbaa !19
  %i.bu = load ptr, ptr %i.z, align 8, !tbaa !22
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store ptr %i.bc, ptr %i.bv, align 8, !tbaa !25
  %i.bw = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 48)
          to label %bb.n unwind label %.loopexit.split-lp ; 7 uses

bb.m:                                             ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4sort11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.bj) #16
  call void @_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.bh) #16
  br label %.body

bb.n:                                             ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i
  %i.by = load ptr, ptr %i.ap, align 8, !tbaa !15
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !20
  invoke void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.bw, ptr noundef %i.ca)
          to label %.noexc69 unwind label %.loopexit.split-lp

.noexc69:                                         ; preds = %bb.n
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store i32 1, ptr %i.cb, align 8, !tbaa !107
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 16 ; 2 uses
  store i64 %i.au, ptr %i.cc, align 8, !tbaa !116
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bw, i64 24 ; 5 uses
  store ptr null, ptr %i.cd, align 8, !tbaa !117
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bw, i64 32 ; 2 uses
  store ptr %i.n, ptr %i.ce, align 8, !tbaa !118
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  store ptr %i.g, ptr %i.cf, align 8, !tbaa !116
  br i1 %.not.i.i.i, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i63, label %bb.o

bb.o:                                             ; preds = %.noexc69
  %i.cg = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !119
  %i.ci = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.cj = add i32 %i.ch, 2
  store i32 %i.cj, ptr %i.ci, align 4, !tbaa !119
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i63

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i63: ; preds = %.noexc69, %bb.o
  invoke void @_ZN6vectorIP4sortLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cd)
          to label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i64 unwind label %bb.r

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i64: ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i63
  %.pre.i.i.i.i.i66 = load ptr, ptr %i.cd, align 8, !tbaa !117 ; 5 uses
  %.phi.trans.insert.i.i.i.i.i67 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i66, i64 -4
  %.pre2.i.i.i.i.i68 = load i32, ptr %.phi.trans.insert.i.i.i.i.i67, align 4, !tbaa !19 ; 2 uses
  %i.ck = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i66, i64 -4 ; 2 uses
  %i.cl = zext i32 %.pre2.i.i.i.i.i68 to i64
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i.i66, i64 %i.cl
  store ptr %i.n, ptr %i.cm, align 8, !tbaa !104
  %i.cn = add i32 %.pre2.i.i.i.i.i68, 1
  store i32 %i.cn, ptr %i.ck, align 4, !tbaa !19
  br i1 %.not.i.i.i, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i63.1, label %bb.p

bb.p:                                             ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i64
  %i.co = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !119
  %i.cq = add i32 %i.cp, 1
  store i32 %i.cq, ptr %i.co, align 4, !tbaa !119
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i63.1

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i63.1: ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i64, %bb.p
  %i.cr = load i32, ptr %i.ck, align 4, !tbaa !19 ; 2 uses
  %i.cs = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i66, i64 -8
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !19
  %i.cu = icmp eq i32 %i.cr, %i.ct
  br i1 %i.cu, label %bb.q, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i64.1

bb.q:                                             ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i63.1
  invoke void @_ZN6vectorIP4sortLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cd)
          to label %.noexc.i65.1 unwind label %bb.r

.noexc.i65.1:                                     ; preds = %bb.q
  %.pre.i.i.i.i.i66.1 = load ptr, ptr %i.cd, align 8, !tbaa !117 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i67.1 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i66.1, i64 -4
  %.pre2.i.i.i.i.i68.1 = load i32, ptr %.phi.trans.insert.i.i.i.i.i67.1, align 4, !tbaa !19
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i64.1

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i64.1: ; preds = %.noexc.i65.1, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i63.1
  %i.cv = phi ptr [ %.pre.i.i.i.i.i66.1, %.noexc.i65.1 ], [ %.pre.i.i.i.i.i66, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i63.1 ] ; 2 uses
  %i.cw = phi i32 [ %.pre2.i.i.i.i.i68.1, %.noexc.i65.1 ], [ %i.cr, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i63.1 ] ; 2 uses
  %i.cx = getelementptr inbounds i8, ptr %i.cv, i64 -4
  %i.cy = zext i32 %i.cw to i64
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.cy
  store ptr %i.n, ptr %i.cz, align 8, !tbaa !104
  %i.da = add i32 %i.cw, 1
  store i32 %i.da, ptr %i.cx, align 4, !tbaa !19
  %i.db = load ptr, ptr %i.z, align 8, !tbaa !22
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  store ptr %i.bw, ptr %i.dc, align 8, !tbaa !25
  %i.dd = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 48)
          to label %bb.s unwind label %.loopexit.split-lp ; 7 uses

bb.r:                                             ; preds = %bb.q, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i63
  %i.de = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4sort11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.ce) #16
  call void @_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.cc) #16
  br label %.body

bb.s:                                             ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i64.1
  %i.df = load ptr, ptr %i.ap, align 8, !tbaa !15
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !20
  invoke void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.dd, ptr noundef %i.dh)
          to label %.noexc85 unwind label %.loopexit.split-lp

.noexc85:                                         ; preds = %bb.s
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store i32 1, ptr %i.di, align 8, !tbaa !107
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dd, i64 16 ; 2 uses
  store i64 %i.au, ptr %i.dj, align 8, !tbaa !116
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dd, i64 24 ; 5 uses
  store ptr null, ptr %i.dk, align 8, !tbaa !117
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dd, i64 32 ; 2 uses
  store ptr %i.n, ptr %i.dl, align 8, !tbaa !118
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dd, i64 40
  store ptr %i.g, ptr %i.dm, align 8, !tbaa !116
  br i1 %.not.i.i.i, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i79, label %bb.t

bb.t:                                             ; preds = %.noexc85
  %i.dn = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !119
  %i.dp = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.dq = add i32 %i.do, 2
  store i32 %i.dq, ptr %i.dp, align 4, !tbaa !119
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i79

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i79: ; preds = %.noexc85, %bb.t
  invoke void @_ZN6vectorIP4sortLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dk)
          to label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i80 unwind label %bb.w

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i80: ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i79
  %.pre.i.i.i.i.i82 = load ptr, ptr %i.dk, align 8, !tbaa !117 ; 5 uses
  %.phi.trans.insert.i.i.i.i.i83 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i82, i64 -4
  %.pre2.i.i.i.i.i84 = load i32, ptr %.phi.trans.insert.i.i.i.i.i83, align 4, !tbaa !19 ; 2 uses
  %i.dr = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i82, i64 -4 ; 2 uses
  %i.ds = zext i32 %.pre2.i.i.i.i.i84 to i64
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i.i82, i64 %i.ds
  store ptr %i.n, ptr %i.dt, align 8, !tbaa !104
  %i.du = add i32 %.pre2.i.i.i.i.i84, 1
  store i32 %i.du, ptr %i.dr, align 4, !tbaa !19
  br i1 %.not.i.i.i, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i79.1, label %bb.u

bb.u:                                             ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i80
  %i.dv = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !119
  %i.dx = add i32 %i.dw, 1
  store i32 %i.dx, ptr %i.dv, align 4, !tbaa !119
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i79.1

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i79.1: ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i80, %bb.u
  %i.dy = load i32, ptr %i.dr, align 4, !tbaa !19 ; 2 uses
  %i.dz = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i82, i64 -8
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !19
  %i.eb = icmp eq i32 %i.dy, %i.ea
  br i1 %i.eb, label %bb.v, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i80.1

bb.v:                                             ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i79.1
  invoke void @_ZN6vectorIP4sortLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dk)
          to label %.noexc.i81.1 unwind label %bb.w

.noexc.i81.1:                                     ; preds = %bb.v
  %.pre.i.i.i.i.i82.1 = load ptr, ptr %i.dk, align 8, !tbaa !117 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i83.1 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i82.1, i64 -4
  %.pre2.i.i.i.i.i84.1 = load i32, ptr %.phi.trans.insert.i.i.i.i.i83.1, align 4, !tbaa !19
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i80.1

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i80.1: ; preds = %.noexc.i81.1, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i79.1
  %i.ec = phi ptr [ %.pre.i.i.i.i.i82.1, %.noexc.i81.1 ], [ %.pre.i.i.i.i.i82, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i79.1 ] ; 2 uses
  %i.ed = phi i32 [ %.pre2.i.i.i.i.i84.1, %.noexc.i81.1 ], [ %i.dy, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i79.1 ] ; 2 uses
  %i.ee = getelementptr inbounds i8, ptr %i.ec, i64 -4
  %i.ef = zext i32 %i.ed to i64
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.ef
  store ptr %i.n, ptr %i.eg, align 8, !tbaa !104
  %i.eh = add i32 %i.ed, 1
  store i32 %i.eh, ptr %i.ee, align 4, !tbaa !19
  %i.ei = load ptr, ptr %i.z, align 8, !tbaa !22
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  store ptr %i.dd, ptr %i.ej, align 8, !tbaa !25
  %i.ek = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 48)
          to label %bb.x unwind label %.loopexit.split-lp ; 7 uses

bb.w:                                             ; preds = %bb.v, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i79
  %i.el = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4sort11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.dl) #16
  call void @_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.dj) #16
  br label %.body

bb.x:                                             ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i80.1
  %i.em = load ptr, ptr %i.ap, align 8, !tbaa !15
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 32
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !20
  invoke void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.ek, ptr noundef %i.eo)
          to label %.noexc101 unwind label %.loopexit.split-lp

end_hunk_0
begin_hunk_1_@_ZN22finite_set_decl_plugin4initEv:bb.a
  br i1 %.not.i.i.i, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i95, label %bb.y

bb.y:                                             ; preds = %.noexc101
  %i.eu = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !119
  %i.ew = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.ex = add i32 %i.ev, 2
  store i32 %i.ex, ptr %i.ew, align 4, !tbaa !119
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i95

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i95: ; preds = %.noexc101, %bb.y
  invoke void @_ZN6vectorIP4sortLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.er)
          to label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i96 unwind label %bb.ab

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i96: ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i95
  %.pre.i.i.i.i.i98 = load ptr, ptr %i.er, align 8, !tbaa !117 ; 5 uses
  %.phi.trans.insert.i.i.i.i.i99 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i98, i64 -4
  %.pre2.i.i.i.i.i100 = load i32, ptr %.phi.trans.insert.i.i.i.i.i99, align 4, !tbaa !19 ; 2 uses
  %i.ey = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i98, i64 -4 ; 2 uses
  %i.ez = zext i32 %.pre2.i.i.i.i.i100 to i64
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i.i98, i64 %i.ez
  store ptr %i.n, ptr %i.fa, align 8, !tbaa !104
  %i.fb = add i32 %.pre2.i.i.i.i.i100, 1
  store i32 %i.fb, ptr %i.ey, align 4, !tbaa !19
  br i1 %.not.i.i.i, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i95.1, label %bb.z

bb.z:                                             ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i96
  %i.fc = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !119
  %i.fe = add i32 %i.fd, 1
  store i32 %i.fe, ptr %i.fc, align 4, !tbaa !119
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i95.1

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i95.1: ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i96, %bb.z
  %i.ff = load i32, ptr %i.ey, align 4, !tbaa !19 ; 2 uses
  %i.fg = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i98, i64 -8
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !19
  %i.fi = icmp eq i32 %i.ff, %i.fh
  br i1 %i.fi, label %bb.aa, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i96.1

bb.aa:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i95.1
  invoke void @_ZN6vectorIP4sortLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.er)
          to label %.noexc.i97.1 unwind label %bb.ab

.noexc.i97.1:                                     ; preds = %bb.aa
  %.pre.i.i.i.i.i98.1 = load ptr, ptr %i.er, align 8, !tbaa !117 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i99.1 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i98.1, i64 -4
  %.pre2.i.i.i.i.i100.1 = load i32, ptr %.phi.trans.insert.i.i.i.i.i99.1, align 4, !tbaa !19
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i96.1

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i96.1: ; preds = %.noexc.i97.1, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i95.1
  %i.fj = phi ptr [ %.pre.i.i.i.i.i98.1, %.noexc.i97.1 ], [ %.pre.i.i.i.i.i98, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i95.1 ] ; 2 uses
  %i.fk = phi i32 [ %.pre2.i.i.i.i.i100.1, %.noexc.i97.1 ], [ %i.ff, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i95.1 ] ; 2 uses
  %i.fl = getelementptr inbounds i8, ptr %i.fj, i64 -4
  %i.fm = zext i32 %i.fk to i64
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.fm
  store ptr %i.n, ptr %i.fn, align 8, !tbaa !104
  %i.fo = add i32 %i.fk, 1
  store i32 %i.fo, ptr %i.fl, align 4, !tbaa !19
  %i.fp = load ptr, ptr %i.z, align 8, !tbaa !22
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 32
  store ptr %i.ek, ptr %i.fq, align 8, !tbaa !25
  %i.fr = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 48)
          to label %bb.ac unwind label %.loopexit.split-lp ; 7 uses

bb.ab:                                            ; preds = %bb.aa, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i95
  %i.fs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4sort11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.es) #16
  call void @_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.eq) #16
  br label %.body

bb.ac:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i96.1
  %i.ft = load ptr, ptr %i.ap, align 8, !tbaa !15
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 40
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !20
  invoke void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.fr, ptr noundef %i.fv)
          to label %.noexc117 unwind label %.loopexit.split-lp

.noexc117:                                        ; preds = %bb.ac
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  store i32 1, ptr %i.fw, align 8, !tbaa !107
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fr, i64 16 ; 2 uses
  store i64 %i.au, ptr %i.fx, align 8, !tbaa !116
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fr, i64 24 ; 5 uses
  store ptr null, ptr %i.fy, align 8, !tbaa !117
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fr, i64 32 ; 2 uses
  store ptr %i.r, ptr %i.fz, align 8, !tbaa !118
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fr, i64 40
  store ptr %i.g, ptr %i.ga, align 8, !tbaa !116
  %.not.i.i.i105 = icmp eq ptr %i.r, null         ; 2 uses
  br i1 %.not.i.i.i105, label %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i107, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i106

_ZN11ast_manager7inc_refEP3ast.exit.i.i.i106:     ; preds = %.noexc117
  %i.gb = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !119
  %i.gd = add i32 %i.gc, 1
  store i32 %i.gd, ptr %i.gb, align 4, !tbaa !119
  br label %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i107

_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i107: ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i106, %.noexc117
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i111, label %bb.ad

bb.ad:                                            ; preds = %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i107
  %i.ge = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !119
  %i.gg = add i32 %i.gf, 1
  store i32 %i.gg, ptr %i.ge, align 4, !tbaa !119
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i111

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i111: ; preds = %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i107, %bb.ad
  invoke void @_ZN6vectorIP4sortLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fy)
          to label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i112 unwind label %bb.ag

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i112: ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i111
  %.pre.i.i.i.i.i114 = load ptr, ptr %i.fy, align 8, !tbaa !117 ; 5 uses
  %.phi.trans.insert.i.i.i.i.i115 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i114, i64 -4
  %.pre2.i.i.i.i.i116 = load i32, ptr %.phi.trans.insert.i.i.i.i.i115, align 4, !tbaa !19 ; 2 uses
  %i.gh = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i114, i64 -4 ; 2 uses
  %i.gi = zext i32 %.pre2.i.i.i.i.i116 to i64
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i.i114, i64 %i.gi
  store ptr %i.h, ptr %i.gj, align 8, !tbaa !104
  %i.gk = add i32 %.pre2.i.i.i.i.i116, 1
  store i32 %i.gk, ptr %i.gh, align 4, !tbaa !19
  br i1 %.not.i.i.i, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i111.1, label %bb.ae

bb.ae:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i112
  %i.gl = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !119
  %i.gn = add i32 %i.gm, 1
  store i32 %i.gn, ptr %i.gl, align 4, !tbaa !119
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i111.1

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i111.1: ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i112, %bb.ae
  %i.go = load i32, ptr %i.gh, align 4, !tbaa !19 ; 2 uses
  %i.gp = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i114, i64 -8
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !19
  %i.gr = icmp eq i32 %i.go, %i.gq
  br i1 %i.gr, label %bb.af, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i112.1

bb.af:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i111.1
  invoke void @_ZN6vectorIP4sortLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fy)
          to label %.noexc.i113.1 unwind label %bb.ag

.noexc.i113.1:                                    ; preds = %bb.af
  %.pre.i.i.i.i.i114.1 = load ptr, ptr %i.fy, align 8, !tbaa !117 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i115.1 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i114.1, i64 -4
  %.pre2.i.i.i.i.i116.1 = load i32, ptr %.phi.trans.insert.i.i.i.i.i115.1, align 4, !tbaa !19
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i112.1

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i112.1: ; preds = %.noexc.i113.1, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i111.1
  %i.gs = phi ptr [ %.pre.i.i.i.i.i114.1, %.noexc.i113.1 ], [ %.pre.i.i.i.i.i114, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i111.1 ] ; 2 uses
  %i.gt = phi i32 [ %.pre2.i.i.i.i.i116.1, %.noexc.i113.1 ], [ %i.go, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i111.1 ] ; 2 uses
  %i.gu = getelementptr inbounds i8, ptr %i.gs, i64 -4
  %i.gv = zext i32 %i.gt to i64
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %i.gv
  store ptr %i.n, ptr %i.gw, align 8, !tbaa !104
  %i.gx = add i32 %i.gt, 1
  store i32 %i.gx, ptr %i.gu, align 4, !tbaa !19
  %i.gy = load ptr, ptr %i.z, align 8, !tbaa !22
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 40
  store ptr %i.fr, ptr %i.gz, align 8, !tbaa !25
  %i.ha = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 48)
          to label %bb.ah unwind label %.loopexit.split-lp ; 7 uses

bb.ag:                                            ; preds = %bb.af, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i111
  %i.hb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4sort11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.fz) #16
  call void @_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.fx) #16
  br label %.body

bb.ah:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i112.1
  %i.hc = load ptr, ptr %i.ap, align 8, !tbaa !15
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 48
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !20
  invoke void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.ha, ptr noundef %i.he)
          to label %.noexc133 unwind label %.loopexit.split-lp

.noexc133:                                        ; preds = %bb.ah
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  store i32 1, ptr %i.hf, align 8, !tbaa !107
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ha, i64 16 ; 2 uses
  store i64 %i.au, ptr %i.hg, align 8, !tbaa !116
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ha, i64 24 ; 3 uses
  store ptr null, ptr %i.hh, align 8, !tbaa !117
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ha, i64 32 ; 2 uses
  store ptr %i.t, ptr %i.hi, align 8, !tbaa !118
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ha, i64 40
  store ptr %i.g, ptr %i.hj, align 8, !tbaa !116
  %.not.i.i.i121 = icmp eq ptr %i.t, null         ; 5 uses
  br i1 %.not.i.i.i121, label %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i123, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i122

_ZN11ast_manager7inc_refEP3ast.exit.i.i.i122:     ; preds = %.noexc133
  %i.hk = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !119
  %i.hm = add i32 %i.hl, 1
  store i32 %i.hm, ptr %i.hk, align 4, !tbaa !119
  br label %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i123

_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i123: ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i122, %.noexc133
  br i1 %.not.i.i.i, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i127, label %bb.ai

bb.ai:                                            ; preds = %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i123
  %i.hn = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !119
  %i.hp = add i32 %i.ho, 1
  store i32 %i.hp, ptr %i.hn, align 4, !tbaa !119
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i127

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i127: ; preds = %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i123, %bb.ai
  invoke void @_ZN6vectorIP4sortLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hh)
          to label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i128 unwind label %bb.aj

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i128: ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i127
  %.pre.i.i.i.i.i130 = load ptr, ptr %i.hh, align 8, !tbaa !117 ; 3 uses
  %.phi.trans.insert.i.i.i.i.i131 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i130, i64 -4
  %.pre2.i.i.i.i.i132 = load i32, ptr %.phi.trans.insert.i.i.i.i.i131, align 4, !tbaa !19 ; 2 uses
  %9 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i130, i64 -4
  %i.hq = zext i32 %.pre2.i.i.i.i.i132 to i64
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i.i130, i64 %i.hq
  store ptr %i.n, ptr %i.hr, align 8, !tbaa !104
  %i.hs = add i32 %.pre2.i.i.i.i.i132, 1
  store i32 %i.hs, ptr %9, align 4, !tbaa !19
  %i.ht = load ptr, ptr %i.z, align 8, !tbaa !22
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 48
  store ptr %i.ha, ptr %i.hu, align 8, !tbaa !25
  %i.hv = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 48)
          to label %bb.ak unwind label %.loopexit.split-lp ; 7 uses

bb.aj:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i127
  %i.hw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4sort11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.hi) #16
  call void @_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.hg) #16
  br label %.body

bb.ak:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i128
  %i.hx = load ptr, ptr %i.ap, align 8, !tbaa !15
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 56
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !20
  invoke void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.hv, ptr noundef %i.hz)
          to label %.noexc149 unwind label %.loopexit.split-lp

.noexc149:                                        ; preds = %bb.ak
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  store i32 1, ptr %i.ia, align 8, !tbaa !107
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hv, i64 16 ; 2 uses
  store i64 %i.au, ptr %i.ib, align 8, !tbaa !116
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hv, i64 24 ; 5 uses
  store ptr null, ptr %i.ic, align 8, !tbaa !117
  %i.id = getelementptr inbounds nuw i8, ptr %i.hv, i64 32 ; 2 uses
  store ptr %i.r, ptr %i.id, align 8, !tbaa !118
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hv, i64 40
  store ptr %i.g, ptr %i.ie, align 8, !tbaa !116
  br i1 %.not.i.i.i105, label %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i139, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i138

_ZN11ast_manager7inc_refEP3ast.exit.i.i.i138:     ; preds = %.noexc149
  %i.if = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !119
  %i.ih = add i32 %i.ig, 1
  store i32 %i.ih, ptr %i.if, align 4, !tbaa !119
  br label %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i139

_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i139: ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i138, %.noexc149
  br i1 %.not.i.i.i, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i143, label %bb.al

bb.al:                                            ; preds = %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i139
  %i.ii = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !119
  %i.ik = add i32 %i.ij, 1
  store i32 %i.ik, ptr %i.ii, align 4, !tbaa !119
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i143

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i143: ; preds = %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i139, %bb.al
  invoke void @_ZN6vectorIP4sortLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ic)
          to label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i144 unwind label %bb.ao

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i144: ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i143
  %.pre.i.i.i.i.i146 = load ptr, ptr %i.ic, align 8, !tbaa !117 ; 5 uses
  %.phi.trans.insert.i.i.i.i.i147 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i146, i64 -4
  %.pre2.i.i.i.i.i148 = load i32, ptr %.phi.trans.insert.i.i.i.i.i147, align 4, !tbaa !19 ; 2 uses
  %i.il = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i146, i64 -4 ; 2 uses
  %i.im = zext i32 %.pre2.i.i.i.i.i148 to i64
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i.i146, i64 %i.im
  store ptr %i.n, ptr %i.in, align 8, !tbaa !104
  %i.io = add i32 %.pre2.i.i.i.i.i148, 1
  store i32 %i.io, ptr %i.il, align 4, !tbaa !19
  br i1 %.not.i.i.i, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i143.1, label %bb.am

bb.am:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i144
  %i.ip = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !119
  %i.ir = add i32 %i.iq, 1
  store i32 %i.ir, ptr %i.ip, align 4, !tbaa !119
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i143.1

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i143.1: ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i144, %bb.am
  %i.is = load i32, ptr %i.il, align 4, !tbaa !19 ; 2 uses
  %i.it = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i146, i64 -8
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !19
  %i.iv = icmp eq i32 %i.is, %i.iu
  br i1 %i.iv, label %bb.an, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i144.1

bb.an:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i143.1
  invoke void @_ZN6vectorIP4sortLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ic)
          to label %.noexc.i145.1 unwind label %bb.ao

.noexc.i145.1:                                    ; preds = %bb.an
  %.pre.i.i.i.i.i146.1 = load ptr, ptr %i.ic, align 8, !tbaa !117 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i147.1 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i146.1, i64 -4
  %.pre2.i.i.i.i.i148.1 = load i32, ptr %.phi.trans.insert.i.i.i.i.i147.1, align 4, !tbaa !19
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i144.1

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i144.1: ; preds = %.noexc.i145.1, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i143.1
  %i.iw = phi ptr [ %.pre.i.i.i.i.i146.1, %.noexc.i145.1 ], [ %.pre.i.i.i.i.i146, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i143.1 ] ; 2 uses
  %i.ix = phi i32 [ %.pre2.i.i.i.i.i148.1, %.noexc.i145.1 ], [ %i.is, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i143.1 ] ; 2 uses
  %i.iy = getelementptr inbounds i8, ptr %i.iw, i64 -4
  %i.iz = zext i32 %i.ix to i64
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %i.iz
  store ptr %i.n, ptr %i.ja, align 8, !tbaa !104
  %i.jb = add i32 %i.ix, 1
  store i32 %i.jb, ptr %i.iy, align 4, !tbaa !19
  %i.jc = load ptr, ptr %i.z, align 8, !tbaa !22
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 56
  store ptr %i.hv, ptr %i.jd, align 8, !tbaa !25
  %i.je = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 48)
          to label %bb.ap unwind label %.loopexit.split-lp ; 7 uses

bb.ao:                                            ; preds = %bb.an, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i143
  %i.jf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4sort11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.id) #16
  call void @_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.ib) #16
  br label %.body

bb.ap:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i144.1
  %i.jg = load ptr, ptr %i.ap, align 8, !tbaa !15
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 64
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !20
  invoke void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.je, ptr noundef %i.ji)
          to label %.noexc165 unwind label %.loopexit.split-lp

.noexc165:                                        ; preds = %bb.ap
  %i.jj = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  store i32 2, ptr %i.jj, align 8, !tbaa !107
  %i.jk = getelementptr inbounds nuw i8, ptr %i.je, i64 16 ; 2 uses
  store i64 %i.au, ptr %i.jk, align 8, !tbaa !116
  %i.jl = getelementptr inbounds nuw i8, ptr %i.je, i64 24 ; 5 uses
  store ptr null, ptr %i.jl, align 8, !tbaa !117
  %i.jm = getelementptr inbounds nuw i8, ptr %i.je, i64 32 ; 2 uses
  store ptr %i.p, ptr %i.jm, align 8, !tbaa !118
  %i.jn = getelementptr inbounds nuw i8, ptr %i.je, i64 40
  store ptr %i.g, ptr %i.jn, align 8, !tbaa !116
  %.not.i.i.i153 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i153, label %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i155, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i154

_ZN11ast_manager7inc_refEP3ast.exit.i.i.i154:     ; preds = %.noexc165
  %i.jo = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !119
  %i.jq = add i32 %i.jp, 1
  store i32 %i.jq, ptr %i.jo, align 4, !tbaa !119
  br label %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i155

_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i155: ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i154, %.noexc165
  %.not.i.i.i.i.i.i.i158 = icmp eq ptr %i.x, null ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i158, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i159, label %bb.aq

bb.aq:                                            ; preds = %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i155
  %i.jr = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !119
  %i.jt = add i32 %i.js, 1
  store i32 %i.jt, ptr %i.jr, align 4, !tbaa !119
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i159

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i159: ; preds = %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i155, %bb.aq
  invoke void @_ZN6vectorIP4sortLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.jl)
          to label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i160 unwind label %bb.at

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i160: ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i159
  %.pre.i.i.i.i.i162 = load ptr, ptr %i.jl, align 8, !tbaa !117 ; 5 uses
  %.phi.trans.insert.i.i.i.i.i163 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i162, i64 -4
  %.pre2.i.i.i.i.i164 = load i32, ptr %.phi.trans.insert.i.i.i.i.i163, align 4, !tbaa !19 ; 2 uses
  %i.ju = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i162, i64 -4 ; 2 uses
  %i.jv = zext i32 %.pre2.i.i.i.i.i164 to i64
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i.i162, i64 %i.jv
  store ptr %i.x, ptr %i.jw, align 8, !tbaa !104
  %i.jx = add i32 %.pre2.i.i.i.i.i164, 1
  store i32 %i.jx, ptr %i.ju, align 4, !tbaa !19
  br i1 %.not.i.i.i, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i159.1, label %bb.ar

bb.ar:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i160
  %i.jy = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !119
  %i.ka = add i32 %i.jz, 1
  store i32 %i.ka, ptr %i.jy, align 4, !tbaa !119
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i159.1

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i159.1: ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i160, %bb.ar
  %i.kb = load i32, ptr %i.ju, align 4, !tbaa !19 ; 2 uses
  %i.kc = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i162, i64 -8
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !19
  %i.ke = icmp eq i32 %i.kb, %i.kd
  br i1 %i.ke, label %bb.as, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i160.1

bb.as:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i159.1
  invoke void @_ZN6vectorIP4sortLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.jl)
          to label %.noexc.i161.1 unwind label %bb.at

.noexc.i161.1:                                    ; preds = %bb.as
  %.pre.i.i.i.i.i162.1 = load ptr, ptr %i.jl, align 8, !tbaa !117 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i163.1 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i162.1, i64 -4
  %.pre2.i.i.i.i.i164.1 = load i32, ptr %.phi.trans.insert.i.i.i.i.i163.1, align 4, !tbaa !19
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i160.1

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i160.1: ; preds = %.noexc.i161.1, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i159.1
  %i.kf = phi ptr [ %.pre.i.i.i.i.i162.1, %.noexc.i161.1 ], [ %.pre.i.i.i.i.i162, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i159.1 ] ; 2 uses
  %i.kg = phi i32 [ %.pre2.i.i.i.i.i164.1, %.noexc.i161.1 ], [ %i.kb, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i159.1 ] ; 2 uses
  %i.kh = getelementptr inbounds i8, ptr %i.kf, i64 -4
  %i.ki = zext i32 %i.kg to i64
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.kf, i64 %i.ki
  store ptr %i.n, ptr %i.kj, align 8, !tbaa !104
  %i.kk = add i32 %i.kg, 1
  store i32 %i.kk, ptr %i.kh, align 4, !tbaa !19
end_hunk_1
