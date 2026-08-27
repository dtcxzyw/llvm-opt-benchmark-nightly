Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/seq_decl_plugin?download=true
inline.NumInlined: 2960
inline.NumDeleted: 901
loop-unroll.NumCompletelyUnrolled: 51
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 64
begin_hunk_0_@_ZN15seq_decl_plugin9mk_reglanEv:bb.a
  %i.ac = add i32 %i.ab, 1
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !33
  br label %_ZN11ast_manager7inc_refEP3ast.exit

_ZN11ast_manager7inc_refEP3ast.exit:              ; preds = %bb.h, %_ZN9decl_infoD2Ev.exit
  call void @_ZN9parameterD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %1) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !36
  br label %bb.n

bb.i:                                             ; preds = %bb.b
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.j:                                             ; preds = %bb.c
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.f, %bb.e
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9decl_infoD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #27
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.af, %bb.k ], [ %i.ae, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.l ], [ %i.ad, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @_ZN9parameterD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %1) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  resume { ptr, i32 } %.pn.pn

bb.n:                                             ; preds = %_ZN11ast_manager7inc_refEP3ast.exit, %bb.a
  %i.ag = phi ptr [ %.pre, %_ZN11ast_manager7inc_refEP3ast.exit ], [ %i.b, %bb.a ]
  ret ptr %i.ag
}

; Function Attrs: nounwind
declare void @_ZN9parameterD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40)) unnamed_addr #7

; Function Attrs: mustprogress uwtable
define hidden void @_ZN15seq_decl_plugin4initEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %1 = alloca %class.array_util, align 8          ; 5 uses
  %2 = alloca %class.symbol, align 8              ; 4 uses
  %3 = alloca %class.parameter, align 8           ; 8 uses
  %4 = alloca %class.parameter, align 8           ; 8 uses
  %5 = alloca %class.parameter, align 8           ; 8 uses
  %6 = alloca %class.arith_util, align 8          ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !126, !range !127, !noundef !85
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.ix, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !8    ; 67 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  call void @_ZN10array_utilC1ER11ast_manager(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(952) %i.f)
  store i8 1, ptr %i.b, align 8, !tbaa !126
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  store ptr inttoptr (i64 1 to ptr), ptr %2, align 8, !tbaa !39
  %i.g = call noundef ptr @_ZN11ast_manager21mk_uninterpreted_sortERK6symboljPK9parameter(ptr noundef nonnull align 8 dereferenceable(952) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0, ptr noundef null) ; 13 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !32   ; 66 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store ptr %i.g, ptr %3, align 8, !tbaa !101
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 1, ptr %i.j, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store ptr %i.i, ptr %4, align 8, !tbaa !101
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i8 1, ptr %i.k, align 8, !tbaa !52
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !12
  %i.n = invoke noundef ptr @_ZN11ast_manager7mk_sortEiijPK9parameter(ptr noundef nonnull align 8 dereferenceable(952) %i.f, i32 noundef %i.m, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %3)
          to label %bb.c unwind label %bb.iy      ; 84 uses

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr %i.n, ptr %5, align 8, !tbaa !101
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 1, ptr %i.o, align 8, !tbaa !52
  %i.p = load i32, ptr %i.l, align 8, !tbaa !12
  %i.q = invoke noundef ptr @_ZN11ast_manager7mk_sortEiijPK9parameter(ptr noundef nonnull align 8 dereferenceable(952) %i.f, i32 noundef %i.p, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %5)
          to label %bb.d unwind label %bb.iz      ; 81 uses

bb.d:                                             ; preds = %bb.c
  %i.r = load i32, ptr %i.l, align 8, !tbaa !12
  %i.s = invoke noundef ptr @_ZN11ast_manager7mk_sortEiijPK9parameter(ptr noundef nonnull align 8 dereferenceable(952) %i.f, i32 noundef %i.r, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %4)
          to label %bb.e unwind label %bb.ja      ; 9 uses

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 816
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !128  ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  invoke void @_ZN10arith_utilC1ER11ast_manager(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(952) %i.f)
          to label %bb.f unwind label %bb.jb

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %6, align 8, !tbaa !186, !nonnull !85, !align !86
  %i.w = invoke noundef ptr @_ZN11ast_manager7mk_sortEiijPK9parameter(ptr noundef nonnull align 8 dereferenceable(952) %i.v, i32 noundef 5, i32 noundef 1, i32 noundef 0, ptr noundef null)
          to label %_ZN10arith_util6mk_intEv.exit unwind label %bb.jb ; 41 uses

_ZN10arith_util6mk_intEv.exit:                    ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.g, ptr %i.a, align 8, !tbaa !42
  %i.x = invoke noundef ptr @_ZN10array_util13mk_array_sortEjPKP4sortS1_(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 1, ptr noundef nonnull %i.a, ptr noundef %i.u)
          to label %bb.g unwind label %bb.jc      ; 3 uses

bb.g:                                             ; preds = %_ZN10arith_util6mk_intEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 62 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !30   ; 3 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %_ZNK6vectorIPN15seq_decl_plugin4psigELb0EjE4sizeEv.exit.i.preheader, label %_ZNK6vectorIPN15seq_decl_plugin4psigELb0EjE4sizeEv.exit.thread.i

_ZNK6vectorIPN15seq_decl_plugin4psigELb0EjE4sizeEv.exit.thread.i: ; preds = %bb.g
  %i.ab = getelementptr inbounds i8, ptr %i.z, i64 -4 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !31 ; 2 uses
  %.not15.i = icmp ult i32 %i.ac, 68
  br i1 %.not15.i, label %_ZNK6vectorIPN15seq_decl_plugin4psigELb0EjE4sizeEv.exit.i.preheader, label %bb.h

_ZNK6vectorIPN15seq_decl_plugin4psigELb0EjE4sizeEv.exit.i.preheader: ; preds = %bb.g, %_ZNK6vectorIPN15seq_decl_plugin4psigELb0EjE4sizeEv.exit.thread.i
  %.ph = phi ptr [ %i.z, %_ZNK6vectorIPN15seq_decl_plugin4psigELb0EjE4sizeEv.exit.thread.i ], [ null, %bb.g ]
  %.0.i16.i.ph = phi i32 [ %i.ac, %_ZNK6vectorIPN15seq_decl_plugin4psigELb0EjE4sizeEv.exit.thread.i ], [ 0, %bb.g ]
  br label %_ZNK6vectorIPN15seq_decl_plugin4psigELb0EjE4sizeEv.exit.i

bb.h:                                             ; preds = %_ZNK6vectorIPN15seq_decl_plugin4psigELb0EjE4sizeEv.exit.thread.i
  store i32 68, ptr %i.ab, align 4, !tbaa !31
  br label %_ZN6vectorIPN15seq_decl_plugin4psigELb0EjE6resizeEj.exit

_ZNK6vectorIPN15seq_decl_plugin4psigELb0EjE4sizeEv.exit.i: ; preds = %_ZNK6vectorIPN15seq_decl_plugin4psigELb0EjE4sizeEv.exit.i.preheader, %.noexc
  %i.ad = phi ptr [ %.pr.pre.i, %.noexc ], [ %.ph, %_ZNK6vectorIPN15seq_decl_plugin4psigELb0EjE4sizeEv.exit.i.preheader ] ; 4 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_ZNK6vectorIPN15seq_decl_plugin4psigELb0EjE8capacityEv.exit.thread.i, label %_ZNK6vectorIPN15seq_decl_plugin4psigELb0EjE8capacityEv.exit.i

_ZNK6vectorIPN15seq_decl_plugin4psigELb0EjE8capacityEv.exit.i: ; preds = %_ZNK6vectorIPN15seq_decl_plugin4psigELb0EjE4sizeEv.exit.i
  %i.af = getelementptr inbounds i8, ptr %i.ad, i64 -8
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !31
  %i.ah = icmp ult i32 %i.ag, 68
  br i1 %i.ah, label %_ZNK6vectorIPN15seq_decl_plugin4psigELb0EjE8capacityEv.exit.thread.i, label %.lr.ph.preheader.i

_ZNK6vectorIPN15seq_decl_plugin4psigELb0EjE8capacityEv.exit.thread.i: ; preds = %_ZNK6vectorIPN15seq_decl_plugin4psigELb0EjE8capacityEv.exit.i, %_ZNK6vectorIPN15seq_decl_plugin4psigELb0EjE4sizeEv.exit.i
  invoke void @_ZN6vectorIPN15seq_decl_plugin4psigELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.y)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %_ZNK6vectorIPN15seq_decl_plugin4psigELb0EjE8capacityEv.exit.thread.i
  %.pr.pre.i = load ptr, ptr %i.y, align 8, !tbaa !30
  br label %_ZNK6vectorIPN15seq_decl_plugin4psigELb0EjE4sizeEv.exit.i, !llvm.loop !189

.lr.ph.preheader.i:                               ; preds = %_ZNK6vectorIPN15seq_decl_plugin4psigELb0EjE8capacityEv.exit.i
  %i.ai = getelementptr inbounds i8, ptr %i.ad, i64 -4
  store i32 68, ptr %i.ai, align 4, !tbaa !31
  %i.aj = zext nneg i32 %.0.i16.i.ph to i64       ; 2 uses
  %i.ak = getelementptr [8 x i8], ptr %i.ad, i64 %i.aj
  %i.al = shl nuw nsw i64 %i.aj, 3
  %i.am = sub nuw nsw i64 544, %i.al
  call void @llvm.memset.p0.i64(ptr align 8 %i.ak, i8 0, i64 %i.am, i1 false), !tbaa !37
  br label %_ZN6vectorIPN15seq_decl_plugin4psigELb0EjE6resizeEj.exit

_ZN6vectorIPN15seq_decl_plugin4psigELb0EjE6resizeEj.exit: ; preds = %.lr.ph.preheader.i, %bb.h
  %i.an = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 48)
          to label %bb.i unwind label %.loopexit.split-lp ; 7 uses

bb.i:                                             ; preds = %_ZN6vectorIPN15seq_decl_plugin4psigELb0EjE6resizeEj.exit
  invoke void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.an, ptr noundef nonnull @.str.9)
          to label %.noexc94 unwind label %.loopexit.split-lp

.noexc94:                                         ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i32 1, ptr %i.ao, align 8, !tbaa !190
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %i.aq = ptrtoint ptr %i.f to i64                ; 59 uses
  store i64 %i.aq, ptr %i.ap, align 8, !tbaa !195
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 24 ; 3 uses
  store ptr null, ptr %i.ar, align 8, !tbaa !29
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 32 ; 2 uses
  store ptr %i.n, ptr %i.as, align 8, !tbaa !71
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  store ptr %i.f, ptr %i.at, align 8, !tbaa !195
  %.not.i.i.i = icmp eq ptr %i.n, null            ; 34 uses
  br i1 %.not.i.i.i, label %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i

_ZN11ast_manager7inc_refEP3ast.exit.i.i.i:        ; preds = %.noexc94
  %i.au = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !33
  %i.aw = add i32 %i.av, 1
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !33
  br label %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i

_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i: ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i, %.noexc94
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.g, null    ; 5 uses
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !33
  %i.az = add i32 %i.ay, 1
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !33
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i: ; preds = %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i, %bb.j
  invoke void @_ZN6vectorIP4sortLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ar)
          to label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i unwind label %bb.k

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i: ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i
  %.pre.i.i.i.i.i = load ptr, ptr %i.ar, align 8, !tbaa !29 ; 3 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i, i64 -4
  %.pre2.i.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i.i.i, align 4, !tbaa !31 ; 2 uses
  %7 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i, i64 -4
  %i.ba = zext i32 %.pre2.i.i.i.i.i to i64
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i.i, i64 %i.ba
  store ptr %i.g, ptr %i.bb, align 8, !tbaa !42
  %i.bc = add i32 %.pre2.i.i.i.i.i, 1
  store i32 %i.bc, ptr %7, align 4, !tbaa !31
  %i.bd = load ptr, ptr %i.y, align 8, !tbaa !30
  store ptr %i.an, ptr %i.bd, align 8, !tbaa !37
  %i.be = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 48)
          to label %bb.l unwind label %.loopexit.split-lp ; 7 uses

bb.k:                                             ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4sort11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.as) #27
  call void @_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.ap) #27
  br label %.body

bb.l:                                             ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i
  invoke void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.be, ptr noundef nonnull @.str.10)
          to label %.noexc98 unwind label %.loopexit.split-lp

.noexc98:                                         ; preds = %bb.l
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i32 1, ptr %i.bg, align 8, !tbaa !190
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i64 %i.aq, ptr %i.bh, align 8, !tbaa !195
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store ptr null, ptr %i.bi, align 8, !tbaa !29
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  store ptr %i.n, ptr %i.bj, align 8, !tbaa !71
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  store ptr %i.f, ptr %i.bk, align 8, !tbaa !195
  br i1 %.not.i.i.i, label %_ZN15seq_decl_plugin4psigC2ER11ast_managerPKcjjPKP4sortS6_.exit99, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i96

_ZN11ast_manager7inc_refEP3ast.exit.i.i.i96:      ; preds = %.noexc98
  %i.bl = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !33
  %i.bn = add i32 %i.bm, 1
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !33
  br label %_ZN15seq_decl_plugin4psigC2ER11ast_managerPKcjjPKP4sortS6_.exit99

_ZN15seq_decl_plugin4psigC2ER11ast_managerPKcjjPKP4sortS6_.exit99: ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i96, %.noexc98
  %i.bo = load ptr, ptr %i.y, align 8, !tbaa !30
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr %i.be, ptr %i.bp, align 8, !tbaa !37
  %i.bq = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 48)
          to label %bb.m unwind label %.loopexit.split-lp ; 7 uses

bb.m:                                             ; preds = %_ZN15seq_decl_plugin4psigC2ER11ast_managerPKcjjPKP4sortS6_.exit99
  invoke void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.bq, ptr noundef nonnull @.str.11)
          to label %.noexc112 unwind label %.loopexit.split-lp

.noexc112:                                        ; preds = %bb.m
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store i32 1, ptr %i.br, align 8, !tbaa !190
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 2 uses
  store i64 %i.aq, ptr %i.bs, align 8, !tbaa !195
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 24 ; 5 uses
  store ptr null, ptr %i.bt, align 8, !tbaa !29
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 32 ; 2 uses
  store ptr %i.n, ptr %i.bu, align 8, !tbaa !71
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  store ptr %i.f, ptr %i.bv, align 8, !tbaa !195
  br i1 %.not.i.i.i, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i106, label %bb.n

bb.n:                                             ; preds = %.noexc112
  %i.bw = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !33
  %i.by = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.bz = add i32 %i.bx, 2
  store i32 %i.bz, ptr %i.by, align 4, !tbaa !33
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i106

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i106: ; preds = %.noexc112, %bb.n
  invoke void @_ZN6vectorIP4sortLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bt)
          to label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i107 unwind label %bb.q

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i107: ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i106
  %.pre.i.i.i.i.i109 = load ptr, ptr %i.bt, align 8, !tbaa !29 ; 5 uses
  %.phi.trans.insert.i.i.i.i.i110 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i109, i64 -4
  %.pre2.i.i.i.i.i111 = load i32, ptr %.phi.trans.insert.i.i.i.i.i110, align 4, !tbaa !31 ; 2 uses
  %i.ca = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i109, i64 -4 ; 2 uses
  %i.cb = zext i32 %.pre2.i.i.i.i.i111 to i64
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i.i109, i64 %i.cb
  store ptr %i.n, ptr %i.cc, align 8, !tbaa !42
  %i.cd = add i32 %.pre2.i.i.i.i.i111, 1
  store i32 %i.cd, ptr %i.ca, align 4, !tbaa !31
  br i1 %.not.i.i.i, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i106.1, label %bb.o

bb.o:                                             ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i107
  %i.ce = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !33
  %i.cg = add i32 %i.cf, 1
  store i32 %i.cg, ptr %i.ce, align 4, !tbaa !33
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i106.1

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i106.1: ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i107, %bb.o
  %i.ch = load i32, ptr %i.ca, align 4, !tbaa !31 ; 2 uses
  %i.ci = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i109, i64 -8
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !31
  %i.ck = icmp eq i32 %i.ch, %i.cj
  br i1 %i.ck, label %bb.p, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i107.1

bb.p:                                             ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i106.1
  invoke void @_ZN6vectorIP4sortLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bt)
          to label %.noexc.i108.1 unwind label %bb.q

.noexc.i108.1:                                    ; preds = %bb.p
  %.pre.i.i.i.i.i109.1 = load ptr, ptr %i.bt, align 8, !tbaa !29 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i110.1 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i109.1, i64 -4
  %.pre2.i.i.i.i.i111.1 = load i32, ptr %.phi.trans.insert.i.i.i.i.i110.1, align 4, !tbaa !31
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i107.1

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i107.1: ; preds = %.noexc.i108.1, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i106.1
  %i.cl = phi ptr [ %.pre.i.i.i.i.i109.1, %.noexc.i108.1 ], [ %.pre.i.i.i.i.i109, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i106.1 ] ; 2 uses
  %i.cm = phi i32 [ %.pre2.i.i.i.i.i111.1, %.noexc.i108.1 ], [ %i.ch, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i106.1 ] ; 2 uses
  %i.cn = getelementptr inbounds i8, ptr %i.cl, i64 -4
  %i.co = zext i32 %i.cm to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.co
  store ptr %i.n, ptr %i.cp, align 8, !tbaa !42
  %i.cq = add i32 %i.cm, 1
  store i32 %i.cq, ptr %i.cn, align 4, !tbaa !31
  %i.cr = load ptr, ptr %i.y, align 8, !tbaa !30
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store ptr %i.bq, ptr %i.cs, align 8, !tbaa !37
  %i.ct = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 48)
          to label %bb.r unwind label %.loopexit.split-lp ; 7 uses

bb.q:                                             ; preds = %bb.p, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i106
  %i.cu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4sort11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.bu) #27
  call void @_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.bs) #27
  br label %.body

bb.r:                                             ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i107.1
  invoke void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.ct, ptr noundef nonnull @.str.12)
          to label %.noexc128 unwind label %.loopexit.split-lp

.noexc128:                                        ; preds = %bb.r
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store i32 1, ptr %i.cv, align 8, !tbaa !190
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 16 ; 2 uses
  store i64 %i.aq, ptr %i.cw, align 8, !tbaa !195
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 24 ; 5 uses
  store ptr null, ptr %i.cx, align 8, !tbaa !29
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 32 ; 2 uses
  store ptr %i.u, ptr %i.cy, align 8, !tbaa !71
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ct, i64 40
  store ptr %i.f, ptr %i.cz, align 8, !tbaa !195
  %.not.i.i.i116 = icmp eq ptr %i.u, null         ; 11 uses
  br i1 %.not.i.i.i116, label %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i118, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i117

_ZN11ast_manager7inc_refEP3ast.exit.i.i.i117:     ; preds = %.noexc128
  %i.da = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !33
  %i.dc = add i32 %i.db, 1
  store i32 %i.dc, ptr %i.da, align 4, !tbaa !33
  br label %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i118

_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i118: ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i117, %.noexc128
  br i1 %.not.i.i.i, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i122, label %bb.s

bb.s:                                             ; preds = %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i118
  %i.dd = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !33
  %i.df = add i32 %i.de, 1
  store i32 %i.df, ptr %i.dd, align 4, !tbaa !33
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i122

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i122: ; preds = %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i118, %bb.s
  invoke void @_ZN6vectorIP4sortLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cx)
          to label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i123 unwind label %bb.v

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i123: ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i122
  %.pre.i.i.i.i.i125 = load ptr, ptr %i.cx, align 8, !tbaa !29 ; 5 uses
  %.phi.trans.insert.i.i.i.i.i126 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i125, i64 -4
  %.pre2.i.i.i.i.i127 = load i32, ptr %.phi.trans.insert.i.i.i.i.i126, align 4, !tbaa !31 ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i125, i64 -4 ; 2 uses
  %i.dh = zext i32 %.pre2.i.i.i.i.i127 to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i.i125, i64 %i.dh
  store ptr %i.n, ptr %i.di, align 8, !tbaa !42
  %i.dj = add i32 %.pre2.i.i.i.i.i127, 1
  store i32 %i.dj, ptr %i.dg, align 4, !tbaa !31
  br i1 %.not.i.i.i, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i122.1, label %bb.t

bb.t:                                             ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i123
  %i.dk = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !33
  %i.dm = add i32 %i.dl, 1
  store i32 %i.dm, ptr %i.dk, align 4, !tbaa !33
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i122.1

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i122.1: ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i123, %bb.t
  %i.dn = load i32, ptr %i.dg, align 4, !tbaa !31 ; 2 uses
  %i.do = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i125, i64 -8
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !31
  %i.dq = icmp eq i32 %i.dn, %i.dp
  br i1 %i.dq, label %bb.u, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i123.1

bb.u:                                             ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i122.1
  invoke void @_ZN6vectorIP4sortLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cx)
          to label %.noexc.i124.1 unwind label %bb.v

.noexc.i124.1:                                    ; preds = %bb.u
end_hunk_0
begin_hunk_1_@_ZN15seq_decl_plugin4initEv:bb.a

_ZN11ast_manager7inc_refEP3ast.exit.i.i.i261:     ; preds = %.noexc272
  %i.pj = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.pk = load i32, ptr %i.pj, align 4, !tbaa !33
  %i.pl = add i32 %i.pk, 1
  store i32 %i.pl, ptr %i.pj, align 4, !tbaa !33
  br label %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i262

_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i262: ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i261, %.noexc272
  br i1 %.not.i.i.i, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i266, label %bb.br

bb.br:                                            ; preds = %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i262
  %i.pm = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.pn = load i32, ptr %i.pm, align 4, !tbaa !33
  %i.po = add i32 %i.pn, 1
  store i32 %i.po, ptr %i.pm, align 4, !tbaa !33
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i266

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i266: ; preds = %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i262, %bb.br
  invoke void @_ZN6vectorIP4sortLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.pg)
          to label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i267 unwind label %bb.bu

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i267: ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i266
  %.pre.i.i.i.i.i269 = load ptr, ptr %i.pg, align 8, !tbaa !29 ; 5 uses
  %.phi.trans.insert.i.i.i.i.i270 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i269, i64 -4
  %.pre2.i.i.i.i.i271 = load i32, ptr %.phi.trans.insert.i.i.i.i.i270, align 4, !tbaa !31 ; 2 uses
  %i.pp = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i269, i64 -4 ; 2 uses
  %i.pq = zext i32 %.pre2.i.i.i.i.i271 to i64
  %i.pr = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i.i269, i64 %i.pq
  store ptr %i.n, ptr %i.pr, align 8, !tbaa !42
  %i.ps = add i32 %.pre2.i.i.i.i.i271, 1
  store i32 %i.ps, ptr %i.pp, align 4, !tbaa !31
  br i1 %.not.i.i.i.i.i.i.i169.1, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i266.1, label %bb.bs

bb.bs:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i267
  %i.pt = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.pu = load i32, ptr %i.pt, align 4, !tbaa !33
  %i.pv = add i32 %i.pu, 1
  store i32 %i.pv, ptr %i.pt, align 4, !tbaa !33
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i266.1

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i266.1: ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i267, %bb.bs
  %i.pw = load i32, ptr %i.pp, align 4, !tbaa !31 ; 2 uses
  %i.px = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i269, i64 -8
  %i.py = load i32, ptr %i.px, align 4, !tbaa !31
  %i.pz = icmp eq i32 %i.pw, %i.py
  br i1 %i.pz, label %bb.bt, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i267.1

bb.bt:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i266.1
  invoke void @_ZN6vectorIP4sortLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.pg)
          to label %.noexc.i268.1 unwind label %bb.bu

.noexc.i268.1:                                    ; preds = %bb.bt
  %.pre.i.i.i.i.i269.1 = load ptr, ptr %i.pg, align 8, !tbaa !29 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i270.1 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i269.1, i64 -4
  %.pre2.i.i.i.i.i271.1 = load i32, ptr %.phi.trans.insert.i.i.i.i.i270.1, align 4, !tbaa !31
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i267.1

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i267.1: ; preds = %.noexc.i268.1, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i266.1
  %i.qa = phi ptr [ %.pre.i.i.i.i.i269.1, %.noexc.i268.1 ], [ %.pre.i.i.i.i.i269, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i266.1 ] ; 2 uses
  %i.qb = phi i32 [ %.pre2.i.i.i.i.i271.1, %.noexc.i268.1 ], [ %i.pw, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i266.1 ] ; 2 uses
  %i.qc = getelementptr inbounds i8, ptr %i.qa, i64 -4
  %i.qd = zext i32 %i.qb to i64
  %i.qe = getelementptr inbounds nuw [8 x i8], ptr %i.qa, i64 %i.qd
  store ptr %i.w, ptr %i.qe, align 8, !tbaa !42
  %i.qf = add i32 %i.qb, 1
  store i32 %i.qf, ptr %i.qc, align 4, !tbaa !31
  %i.qg = load ptr, ptr %i.y, align 8, !tbaa !30
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 80
  store ptr %i.pc, ptr %i.qh, align 8, !tbaa !37
  %i.qi = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 48)
          to label %bb.bv unwind label %.loopexit.split-lp ; 7 uses

bb.bu:                                            ; preds = %bb.bt, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i266
  %i.qj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4sort11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.ph) #27
  call void @_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.pf) #27
  br label %.body

bb.bv:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i267.1
  invoke void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.qi, ptr noundef nonnull @.str.22)
          to label %.noexc288 unwind label %.loopexit.split-lp

.noexc288:                                        ; preds = %bb.bv
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qi, i64 8
  store i32 1, ptr %i.qk, align 8, !tbaa !190
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qi, i64 16 ; 2 uses
  store i64 %i.aq, ptr %i.ql, align 8, !tbaa !195
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qi, i64 24 ; 5 uses
  store ptr null, ptr %i.qm, align 8, !tbaa !29
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qi, i64 32 ; 2 uses
  store ptr %i.g, ptr %i.qn, align 8, !tbaa !71
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qi, i64 40
  store ptr %i.f, ptr %i.qo, align 8, !tbaa !195
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i278, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i277

_ZN11ast_manager7inc_refEP3ast.exit.i.i.i277:     ; preds = %.noexc288
  %i.qp = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.qq = load i32, ptr %i.qp, align 4, !tbaa !33
  %i.qr = add i32 %i.qq, 1
  store i32 %i.qr, ptr %i.qp, align 4, !tbaa !33
  br label %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i278

_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i278: ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i277, %.noexc288
  br i1 %.not.i.i.i, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i282, label %bb.bw

bb.bw:                                            ; preds = %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i278
  %i.qs = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.qt = load i32, ptr %i.qs, align 4, !tbaa !33
  %i.qu = add i32 %i.qt, 1
  store i32 %i.qu, ptr %i.qs, align 4, !tbaa !33
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i282

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i282: ; preds = %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i278, %bb.bw
  invoke void @_ZN6vectorIP4sortLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.qm)
          to label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i283 unwind label %bb.bz

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i283: ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i282
  %.pre.i.i.i.i.i285 = load ptr, ptr %i.qm, align 8, !tbaa !29 ; 5 uses
  %.phi.trans.insert.i.i.i.i.i286 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i285, i64 -4
  %.pre2.i.i.i.i.i287 = load i32, ptr %.phi.trans.insert.i.i.i.i.i286, align 4, !tbaa !31 ; 2 uses
  %i.qv = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i285, i64 -4 ; 2 uses
  %i.qw = zext i32 %.pre2.i.i.i.i.i287 to i64
  %i.qx = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i.i285, i64 %i.qw
  store ptr %i.n, ptr %i.qx, align 8, !tbaa !42
  %i.qy = add i32 %.pre2.i.i.i.i.i287, 1
  store i32 %i.qy, ptr %i.qv, align 4, !tbaa !31
  br i1 %.not.i.i.i.i.i.i.i169.1, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i282.1, label %bb.bx

bb.bx:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i283
  %i.qz = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.ra = load i32, ptr %i.qz, align 4, !tbaa !33
  %i.rb = add i32 %i.ra, 1
  store i32 %i.rb, ptr %i.qz, align 4, !tbaa !33
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i282.1

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i282.1: ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i283, %bb.bx
  %i.rc = load i32, ptr %i.qv, align 4, !tbaa !31 ; 2 uses
  %i.rd = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i285, i64 -8
  %i.re = load i32, ptr %i.rd, align 4, !tbaa !31
  %i.rf = icmp eq i32 %i.rc, %i.re
  br i1 %i.rf, label %bb.by, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i283.1

bb.by:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i282.1
  invoke void @_ZN6vectorIP4sortLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.qm)
          to label %.noexc.i284.1 unwind label %bb.bz

.noexc.i284.1:                                    ; preds = %bb.by
  %.pre.i.i.i.i.i285.1 = load ptr, ptr %i.qm, align 8, !tbaa !29 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i286.1 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i285.1, i64 -4
  %.pre2.i.i.i.i.i287.1 = load i32, ptr %.phi.trans.insert.i.i.i.i.i286.1, align 4, !tbaa !31
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i283.1

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i283.1: ; preds = %.noexc.i284.1, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i282.1
  %i.rg = phi ptr [ %.pre.i.i.i.i.i285.1, %.noexc.i284.1 ], [ %.pre.i.i.i.i.i285, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i282.1 ] ; 2 uses
  %i.rh = phi i32 [ %.pre2.i.i.i.i.i287.1, %.noexc.i284.1 ], [ %i.rc, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i282.1 ] ; 2 uses
  %i.ri = getelementptr inbounds i8, ptr %i.rg, i64 -4
  %i.rj = zext i32 %i.rh to i64
  %i.rk = getelementptr inbounds nuw [8 x i8], ptr %i.rg, i64 %i.rj
  store ptr %i.w, ptr %i.rk, align 8, !tbaa !42
  %i.rl = add i32 %i.rh, 1
  store i32 %i.rl, ptr %i.ri, align 4, !tbaa !31
  %i.rm = load ptr, ptr %i.y, align 8, !tbaa !30
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 88
  store ptr %i.qi, ptr %i.rn, align 8, !tbaa !37
  %i.ro = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 48)
          to label %bb.ca unwind label %.loopexit.split-lp ; 7 uses

bb.bz:                                            ; preds = %bb.by, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i282
  %i.rp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4sort11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.qn) #27
  call void @_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.ql) #27
  br label %.body

bb.ca:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i283.1
  invoke void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.ro, ptr noundef nonnull @.str.23)
          to label %.noexc304 unwind label %.loopexit.split-lp

.noexc304:                                        ; preds = %bb.ca
  %i.rq = getelementptr inbounds nuw i8, ptr %i.ro, i64 8
  store i32 1, ptr %i.rq, align 8, !tbaa !190
  %i.rr = getelementptr inbounds nuw i8, ptr %i.ro, i64 16 ; 2 uses
  store i64 %i.aq, ptr %i.rr, align 8, !tbaa !195
  %i.rs = getelementptr inbounds nuw i8, ptr %i.ro, i64 24 ; 3 uses
  store ptr null, ptr %i.rs, align 8, !tbaa !29
  %i.rt = getelementptr inbounds nuw i8, ptr %i.ro, i64 32 ; 2 uses
  store ptr %i.w, ptr %i.rt, align 8, !tbaa !71
  %i.ru = getelementptr inbounds nuw i8, ptr %i.ro, i64 40
  store ptr %i.f, ptr %i.ru, align 8, !tbaa !195
  br i1 %.not.i.i.i.i.i.i.i169.1, label %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i294, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i293

_ZN11ast_manager7inc_refEP3ast.exit.i.i.i293:     ; preds = %.noexc304
  %i.rv = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.rw = load i32, ptr %i.rv, align 4, !tbaa !33
  %i.rx = add i32 %i.rw, 1
  store i32 %i.rx, ptr %i.rv, align 4, !tbaa !33
  br label %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i294

_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i294: ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i293, %.noexc304
  br i1 %.not.i.i.i, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i298, label %bb.cb

bb.cb:                                            ; preds = %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i294
  %i.ry = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.rz = load i32, ptr %i.ry, align 4, !tbaa !33
  %i.sa = add i32 %i.rz, 1
  store i32 %i.sa, ptr %i.ry, align 4, !tbaa !33
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i298

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i298: ; preds = %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i294, %bb.cb
  invoke void @_ZN6vectorIP4sortLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.rs)
          to label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i299 unwind label %bb.cc

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i299: ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i298
  %.pre.i.i.i.i.i301 = load ptr, ptr %i.rs, align 8, !tbaa !29 ; 3 uses
  %.phi.trans.insert.i.i.i.i.i302 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i301, i64 -4
  %.pre2.i.i.i.i.i303 = load i32, ptr %.phi.trans.insert.i.i.i.i.i302, align 4, !tbaa !31 ; 2 uses
  %8 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i301, i64 -4
  %i.sb = zext i32 %.pre2.i.i.i.i.i303 to i64
  %i.sc = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i.i301, i64 %i.sb
  store ptr %i.n, ptr %i.sc, align 8, !tbaa !42
  %i.sd = add i32 %.pre2.i.i.i.i.i303, 1
  store i32 %i.sd, ptr %8, align 4, !tbaa !31
  %i.se = load ptr, ptr %i.y, align 8, !tbaa !30
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 96
  store ptr %i.ro, ptr %i.sf, align 8, !tbaa !37
  %i.sg = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 48)
          to label %bb.cd unwind label %.loopexit.split-lp ; 7 uses

bb.cc:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i298
  %i.sh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4sort11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.rt) #27
  call void @_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.rr) #27
  br label %.body

bb.cd:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i299
  invoke void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.sg, ptr noundef nonnull @.str.24)
          to label %.noexc320 unwind label %.loopexit.split-lp

.noexc320:                                        ; preds = %bb.cd
  %i.si = getelementptr inbounds nuw i8, ptr %i.sg, i64 8
  store i32 1, ptr %i.si, align 8, !tbaa !190
  %i.sj = getelementptr inbounds nuw i8, ptr %i.sg, i64 16 ; 2 uses
  store i64 %i.aq, ptr %i.sj, align 8, !tbaa !195
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sg, i64 24 ; 3 uses
  store ptr null, ptr %i.sk, align 8, !tbaa !29
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sg, i64 32 ; 2 uses
  store ptr %i.q, ptr %i.sl, align 8, !tbaa !71
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sg, i64 40
  store ptr %i.f, ptr %i.sm, align 8, !tbaa !195
  %.not.i.i.i308 = icmp eq ptr %i.q, null         ; 28 uses
  br i1 %.not.i.i.i308, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i314, label %bb.ce

bb.ce:                                            ; preds = %.noexc320
  %i.sn = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.so = load i32, ptr %i.sn, align 4, !tbaa !33
  %i.sp = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.sq = add i32 %i.so, 2
  store i32 %i.sq, ptr %i.sp, align 4, !tbaa !33
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i314

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i314: ; preds = %.noexc320, %bb.ce
  invoke void @_ZN6vectorIP4sortLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.sk)
          to label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i315 unwind label %bb.cf

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i315: ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i314
  %.pre.i.i.i.i.i317 = load ptr, ptr %i.sk, align 8, !tbaa !29 ; 3 uses
  %.phi.trans.insert.i.i.i.i.i318 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i317, i64 -4
  %.pre2.i.i.i.i.i319 = load i32, ptr %.phi.trans.insert.i.i.i.i.i318, align 4, !tbaa !31 ; 2 uses
  %9 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i317, i64 -4
  %i.sr = zext i32 %.pre2.i.i.i.i.i319 to i64
  %i.ss = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i.i317, i64 %i.sr
  store ptr %i.q, ptr %i.ss, align 8, !tbaa !42
  %i.st = add i32 %.pre2.i.i.i.i.i319, 1
  store i32 %i.st, ptr %9, align 4, !tbaa !31
  %i.su = load ptr, ptr %i.y, align 8, !tbaa !30
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 192
  store ptr %i.sg, ptr %i.sv, align 8, !tbaa !37
  %i.sw = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 48)
          to label %bb.cg unwind label %.loopexit.split-lp ; 7 uses

bb.cf:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i314
  %i.sx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4sort11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.sl) #27
  call void @_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.sj) #27
  br label %.body

bb.cg:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i315
  invoke void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.sw, ptr noundef nonnull @.str.25)
          to label %.noexc336 unwind label %.loopexit.split-lp

.noexc336:                                        ; preds = %bb.cg
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sw, i64 8
  store i32 1, ptr %i.sy, align 8, !tbaa !190
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sw, i64 16 ; 2 uses
  store i64 %i.aq, ptr %i.sz, align 8, !tbaa !195
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sw, i64 24 ; 3 uses
  store ptr null, ptr %i.ta, align 8, !tbaa !29
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sw, i64 32 ; 2 uses
  store ptr %i.q, ptr %i.tb, align 8, !tbaa !71
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sw, i64 40
  store ptr %i.f, ptr %i.tc, align 8, !tbaa !195
  br i1 %.not.i.i.i308, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i330, label %bb.ch

bb.ch:                                            ; preds = %.noexc336
  %i.td = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.te = load i32, ptr %i.td, align 4, !tbaa !33
  %i.tf = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.tg = add i32 %i.te, 2
  store i32 %i.tg, ptr %i.tf, align 4, !tbaa !33
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i330

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i330: ; preds = %.noexc336, %bb.ch
  invoke void @_ZN6vectorIP4sortLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ta)
          to label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i331 unwind label %bb.ci

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i331: ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i330
  %.pre.i.i.i.i.i333 = load ptr, ptr %i.ta, align 8, !tbaa !29 ; 3 uses
  %.phi.trans.insert.i.i.i.i.i334 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i333, i64 -4
  %.pre2.i.i.i.i.i335 = load i32, ptr %.phi.trans.insert.i.i.i.i.i334, align 4, !tbaa !31 ; 2 uses
  %10 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i333, i64 -4
  %i.th = zext i32 %.pre2.i.i.i.i.i335 to i64
  %i.ti = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i.i333, i64 %i.th
  store ptr %i.q, ptr %i.ti, align 8, !tbaa !42
  %i.tj = add i32 %.pre2.i.i.i.i.i335, 1
  store i32 %i.tj, ptr %10, align 4, !tbaa !31
  %i.tk = load ptr, ptr %i.y, align 8, !tbaa !30
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 200
  store ptr %i.sw, ptr %i.tl, align 8, !tbaa !37
  %i.tm = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 48)
          to label %bb.cj unwind label %.loopexit.split-lp ; 7 uses

bb.ci:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i330
  %i.tn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4sort11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.tb) #27
  call void @_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.sz) #27
  br label %.body

bb.cj:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i331
  invoke void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.tm, ptr noundef nonnull @.str.26)
          to label %.noexc352 unwind label %.loopexit.split-lp

.noexc352:                                        ; preds = %bb.cj
  %i.to = getelementptr inbounds nuw i8, ptr %i.tm, i64 8
  store i32 1, ptr %i.to, align 8, !tbaa !190
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tm, i64 16 ; 2 uses
  store i64 %i.aq, ptr %i.tp, align 8, !tbaa !195
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tm, i64 24 ; 3 uses
  store ptr null, ptr %i.tq, align 8, !tbaa !29
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tm, i64 32 ; 2 uses
  store ptr %i.q, ptr %i.tr, align 8, !tbaa !71
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tm, i64 40
  store ptr %i.f, ptr %i.ts, align 8, !tbaa !195
  br i1 %.not.i.i.i308, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i346, label %bb.ck

bb.ck:                                            ; preds = %.noexc352
  %i.tt = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.tu = load i32, ptr %i.tt, align 4, !tbaa !33
  %i.tv = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.tw = add i32 %i.tu, 2
  store i32 %i.tw, ptr %i.tv, align 4, !tbaa !33
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i346

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i346: ; preds = %.noexc352, %bb.ck
  invoke void @_ZN6vectorIP4sortLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.tq)
          to label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i347 unwind label %bb.cl

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i347: ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i346
  %.pre.i.i.i.i.i349 = load ptr, ptr %i.tq, align 8, !tbaa !29 ; 3 uses
  %.phi.trans.insert.i.i.i.i.i350 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i349, i64 -4
  %.pre2.i.i.i.i.i351 = load i32, ptr %.phi.trans.insert.i.i.i.i.i350, align 4, !tbaa !31 ; 2 uses
  %11 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i349, i64 -4
  %i.tx = zext i32 %.pre2.i.i.i.i.i351 to i64
  %i.ty = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i.i349, i64 %i.tx
  store ptr %i.q, ptr %i.ty, align 8, !tbaa !42
  %i.tz = add i32 %.pre2.i.i.i.i.i351, 1
  store i32 %i.tz, ptr %11, align 4, !tbaa !31
  %i.ua = load ptr, ptr %i.y, align 8, !tbaa !30
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 208
  store ptr %i.tm, ptr %i.ub, align 8, !tbaa !37
  %i.uc = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 48)
          to label %bb.cm unwind label %.loopexit.split-lp ; 7 uses

bb.cl:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i346
  %i.ud = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4sort11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.tr) #27
  call void @_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.tp) #27
  br label %.body

bb.cm:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i347
  invoke void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.uc, ptr noundef nonnull @.str.27)
          to label %.noexc368 unwind label %.loopexit.split-lp

.noexc368:                                        ; preds = %bb.cm
  %i.ue = getelementptr inbounds nuw i8, ptr %i.uc, i64 8
  store i32 1, ptr %i.ue, align 8, !tbaa !190
  %i.uf = getelementptr inbounds nuw i8, ptr %i.uc, i64 16 ; 2 uses
  store i64 %i.aq, ptr %i.uf, align 8, !tbaa !195
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uc, i64 24 ; 5 uses
  store ptr null, ptr %i.ug, align 8, !tbaa !29
  %i.uh = getelementptr inbounds nuw i8, ptr %i.uc, i64 32 ; 2 uses
  store ptr %i.q, ptr %i.uh, align 8, !tbaa !71
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uc, i64 40
  store ptr %i.f, ptr %i.ui, align 8, !tbaa !195
  br i1 %.not.i.i.i308, label %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i358, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i357

_ZN11ast_manager7inc_refEP3ast.exit.i.i.i357:     ; preds = %.noexc368
  %i.uj = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.uk = load i32, ptr %i.uj, align 4, !tbaa !33
  %i.ul = add i32 %i.uk, 1
  store i32 %i.ul, ptr %i.uj, align 4, !tbaa !33
  br label %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i358

_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i358: ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i357, %.noexc368
  br i1 %.not.i.i.i, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i362, label %bb.cn

bb.cn:                                            ; preds = %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i358
  %i.um = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.un = load i32, ptr %i.um, align 4, !tbaa !33
  %i.uo = add i32 %i.un, 1
  store i32 %i.uo, ptr %i.um, align 4, !tbaa !33
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i362

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i362: ; preds = %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i358, %bb.cn
  invoke void @_ZN6vectorIP4sortLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ug)
          to label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i363 unwind label %bb.cq

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i363: ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i362
  %.pre.i.i.i.i.i365 = load ptr, ptr %i.ug, align 8, !tbaa !29 ; 5 uses
  %.phi.trans.insert.i.i.i.i.i366 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i365, i64 -4
  %.pre2.i.i.i.i.i367 = load i32, ptr %.phi.trans.insert.i.i.i.i.i366, align 4, !tbaa !31 ; 2 uses
  %i.up = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i365, i64 -4 ; 2 uses
  %i.uq = zext i32 %.pre2.i.i.i.i.i367 to i64
  %i.ur = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i.i365, i64 %i.uq
  store ptr %i.n, ptr %i.ur, align 8, !tbaa !42
  %i.us = add i32 %.pre2.i.i.i.i.i367, 1
  store i32 %i.us, ptr %i.up, align 4, !tbaa !31
  br i1 %.not.i.i.i, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i362.1, label %bb.co

bb.co:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i363
  %i.ut = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.uu = load i32, ptr %i.ut, align 4, !tbaa !33
  %i.uv = add i32 %i.uu, 1
  store i32 %i.uv, ptr %i.ut, align 4, !tbaa !33
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i362.1

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i362.1: ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i363, %bb.co
  %i.uw = load i32, ptr %i.up, align 4, !tbaa !31 ; 2 uses
  %i.ux = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i365, i64 -8
  %i.uy = load i32, ptr %i.ux, align 4, !tbaa !31
  %i.uz = icmp eq i32 %i.uw, %i.uy
  br i1 %i.uz, label %bb.cp, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i363.1

bb.cp:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i362.1
  invoke void @_ZN6vectorIP4sortLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ug)
          to label %.noexc.i364.1 unwind label %bb.cq

.noexc.i364.1:                                    ; preds = %bb.cp
  %.pre.i.i.i.i.i365.1 = load ptr, ptr %i.ug, align 8, !tbaa !29 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i366.1 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i365.1, i64 -4
  %.pre2.i.i.i.i.i367.1 = load i32, ptr %.phi.trans.insert.i.i.i.i.i366.1, align 4, !tbaa !31
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i363.1

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i363.1: ; preds = %.noexc.i364.1, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i362.1
  %i.va = phi ptr [ %.pre.i.i.i.i.i365.1, %.noexc.i364.1 ], [ %.pre.i.i.i.i.i365, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i362.1 ] ; 2 uses
  %i.vb = phi i32 [ %.pre2.i.i.i.i.i367.1, %.noexc.i364.1 ], [ %i.uw, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i362.1 ] ; 2 uses
  %i.vc = getelementptr inbounds i8, ptr %i.va, i64 -4
  %i.vd = zext i32 %i.vb to i64
  %i.ve = getelementptr inbounds nuw [8 x i8], ptr %i.va, i64 %i.vd
  store ptr %i.n, ptr %i.ve, align 8, !tbaa !42
  %i.vf = add i32 %i.vb, 1
  store i32 %i.vf, ptr %i.vc, align 4, !tbaa !31
  %i.vg = load ptr, ptr %i.y, align 8, !tbaa !30
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 216
  store ptr %i.uc, ptr %i.vh, align 8, !tbaa !37
  %i.vi = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 48)
          to label %bb.cr unwind label %.loopexit.split-lp ; 7 uses

bb.cq:                                            ; preds = %bb.cp, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i362
  %i.vj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4sort11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.uh) #27
  call void @_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.uf) #27
  br label %.body

bb.cr:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i363.1
  invoke void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.vi, ptr noundef nonnull @.str.28)
          to label %.noexc384 unwind label %.loopexit.split-lp

.noexc384:                                        ; preds = %bb.cr
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vi, i64 8
  store i32 1, ptr %i.vk, align 8, !tbaa !190
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vi, i64 16 ; 2 uses
  store i64 %i.aq, ptr %i.vl, align 8, !tbaa !195
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vi, i64 24 ; 5 uses
  store ptr null, ptr %i.vm, align 8, !tbaa !29
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vi, i64 32 ; 2 uses
  store ptr %i.q, ptr %i.vn, align 8, !tbaa !71
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vi, i64 40
  store ptr %i.f, ptr %i.vo, align 8, !tbaa !195
  br i1 %.not.i.i.i308, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i378, label %bb.cs

bb.cs:                                            ; preds = %.noexc384
  %i.vp = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.vq = load i32, ptr %i.vp, align 4, !tbaa !33
  %i.vr = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.vs = add i32 %i.vq, 2
  store i32 %i.vs, ptr %i.vr, align 4, !tbaa !33
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i378

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i378: ; preds = %.noexc384, %bb.cs
  invoke void @_ZN6vectorIP4sortLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.vm)
          to label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i379 unwind label %bb.cv

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i379: ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i378
  %.pre.i.i.i.i.i381 = load ptr, ptr %i.vm, align 8, !tbaa !29 ; 5 uses
  %.phi.trans.insert.i.i.i.i.i382 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i381, i64 -4
  %.pre2.i.i.i.i.i383 = load i32, ptr %.phi.trans.insert.i.i.i.i.i382, align 4, !tbaa !31 ; 2 uses
  %i.vt = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i381, i64 -4 ; 2 uses
  %i.vu = zext i32 %.pre2.i.i.i.i.i383 to i64
  %i.vv = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i.i381, i64 %i.vu
  store ptr %i.q, ptr %i.vv, align 8, !tbaa !42
  %i.vw = add i32 %.pre2.i.i.i.i.i383, 1
  store i32 %i.vw, ptr %i.vt, align 4, !tbaa !31
  br i1 %.not.i.i.i308, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i378.1, label %bb.ct

bb.ct:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i379
  %i.vx = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.vy = load i32, ptr %i.vx, align 4, !tbaa !33
  %i.vz = add i32 %i.vy, 1
  store i32 %i.vz, ptr %i.vx, align 4, !tbaa !33
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i378.1

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i378.1: ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i379, %bb.ct
  %i.wa = load i32, ptr %i.vt, align 4, !tbaa !31 ; 2 uses
  %i.wb = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i381, i64 -8
  %i.wc = load i32, ptr %i.wb, align 4, !tbaa !31
  %i.wd = icmp eq i32 %i.wa, %i.wc
  br i1 %i.wd, label %bb.cu, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i379.1

bb.cu:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i378.1
  invoke void @_ZN6vectorIP4sortLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.vm)
          to label %.noexc.i380.1 unwind label %bb.cv

.noexc.i380.1:                                    ; preds = %bb.cu
  %.pre.i.i.i.i.i381.1 = load ptr, ptr %i.vm, align 8, !tbaa !29 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i382.1 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i381.1, i64 -4
  %.pre2.i.i.i.i.i383.1 = load i32, ptr %.phi.trans.insert.i.i.i.i.i382.1, align 4, !tbaa !31
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i379.1

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i379.1: ; preds = %.noexc.i380.1, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i378.1
  %i.we = phi ptr [ %.pre.i.i.i.i.i381.1, %.noexc.i380.1 ], [ %.pre.i.i.i.i.i381, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i378.1 ] ; 2 uses
  %i.wf = phi i32 [ %.pre2.i.i.i.i.i383.1, %.noexc.i380.1 ], [ %i.wa, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i378.1 ] ; 2 uses
  %i.wg = getelementptr inbounds i8, ptr %i.we, i64 -4
  %i.wh = zext i32 %i.wf to i64
  %i.wi = getelementptr inbounds nuw [8 x i8], ptr %i.we, i64 %i.wh
  store ptr %i.q, ptr %i.wi, align 8, !tbaa !42
  %i.wj = add i32 %i.wf, 1
  store i32 %i.wj, ptr %i.wg, align 4, !tbaa !31
  %i.wk = load ptr, ptr %i.y, align 8, !tbaa !30
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 224
  store ptr %i.vi, ptr %i.wl, align 8, !tbaa !37
  %i.wm = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 48)
          to label %bb.cw unwind label %.loopexit.split-lp ; 7 uses

bb.cv:                                            ; preds = %bb.cu, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i378
  %i.wn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4sort11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.vn) #27
  call void @_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.vl) #27
  br label %.body

bb.cw:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i379.1
  invoke void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.wm, ptr noundef nonnull @.str.29)
          to label %.noexc400 unwind label %.loopexit.split-lp

end_hunk_1
begin_hunk_2_@_ZN15seq_decl_plugin4initEv:bb.a
.noexc432:                                        ; preds = %bb.dg
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yu, i64 8
  store i32 1, ptr %i.yw, align 8, !tbaa !190
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yu, i64 16 ; 2 uses
  store i64 %i.aq, ptr %i.yx, align 8, !tbaa !195
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yu, i64 24 ; 5 uses
  store ptr null, ptr %i.yy, align 8, !tbaa !29
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yu, i64 32 ; 2 uses
  store ptr %i.q, ptr %i.yz, align 8, !tbaa !71
  %i.za = getelementptr inbounds nuw i8, ptr %i.yu, i64 40
  store ptr %i.f, ptr %i.za, align 8, !tbaa !195
  br i1 %.not.i.i.i308, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i426, label %bb.dh

bb.dh:                                            ; preds = %.noexc432
  %i.zb = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.zc = load i32, ptr %i.zb, align 4, !tbaa !33
  %i.zd = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ze = add i32 %i.zc, 2
  store i32 %i.ze, ptr %i.zd, align 4, !tbaa !33
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i426

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i426: ; preds = %.noexc432, %bb.dh
  invoke void @_ZN6vectorIP4sortLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.yy)
          to label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i427 unwind label %bb.dk

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i427: ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i426
  %.pre.i.i.i.i.i429 = load ptr, ptr %i.yy, align 8, !tbaa !29 ; 5 uses
  %.phi.trans.insert.i.i.i.i.i430 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i429, i64 -4
  %.pre2.i.i.i.i.i431 = load i32, ptr %.phi.trans.insert.i.i.i.i.i430, align 4, !tbaa !31 ; 2 uses
  %i.zf = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i429, i64 -4 ; 2 uses
  %i.zg = zext i32 %.pre2.i.i.i.i.i431 to i64
  %i.zh = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i.i429, i64 %i.zg
  store ptr %i.q, ptr %i.zh, align 8, !tbaa !42
  %i.zi = add i32 %.pre2.i.i.i.i.i431, 1
  store i32 %i.zi, ptr %i.zf, align 4, !tbaa !31
  br i1 %.not.i.i.i308, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i426.1, label %bb.di

bb.di:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i427
  %i.zj = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.zk = load i32, ptr %i.zj, align 4, !tbaa !33
  %i.zl = add i32 %i.zk, 1
  store i32 %i.zl, ptr %i.zj, align 4, !tbaa !33
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i426.1

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i426.1: ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i427, %bb.di
  %i.zm = load i32, ptr %i.zf, align 4, !tbaa !31 ; 2 uses
  %i.zn = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i429, i64 -8
  %i.zo = load i32, ptr %i.zn, align 4, !tbaa !31
  %i.zp = icmp eq i32 %i.zm, %i.zo
  br i1 %i.zp, label %bb.dj, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i427.1

bb.dj:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i426.1
  invoke void @_ZN6vectorIP4sortLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.yy)
          to label %.noexc.i428.1 unwind label %bb.dk

.noexc.i428.1:                                    ; preds = %bb.dj
  %.pre.i.i.i.i.i429.1 = load ptr, ptr %i.yy, align 8, !tbaa !29 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i430.1 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i429.1, i64 -4
  %.pre2.i.i.i.i.i431.1 = load i32, ptr %.phi.trans.insert.i.i.i.i.i430.1, align 4, !tbaa !31
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i427.1

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i427.1: ; preds = %.noexc.i428.1, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i426.1
  %i.zq = phi ptr [ %.pre.i.i.i.i.i429.1, %.noexc.i428.1 ], [ %.pre.i.i.i.i.i429, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i426.1 ] ; 2 uses
  %i.zr = phi i32 [ %.pre2.i.i.i.i.i431.1, %.noexc.i428.1 ], [ %i.zm, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i426.1 ] ; 2 uses
  %i.zs = getelementptr inbounds i8, ptr %i.zq, i64 -4
  %i.zt = zext i32 %i.zr to i64
  %i.zu = getelementptr inbounds nuw [8 x i8], ptr %i.zq, i64 %i.zt
  store ptr %i.q, ptr %i.zu, align 8, !tbaa !42
  %i.zv = add i32 %i.zr, 1
  store i32 %i.zv, ptr %i.zs, align 4, !tbaa !31
  %i.zw = load ptr, ptr %i.y, align 8, !tbaa !30
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zw, i64 240
  store ptr %i.yu, ptr %i.zx, align 8, !tbaa !37
  %i.zy = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 48)
          to label %bb.dl unwind label %.loopexit.split-lp ; 7 uses

bb.dk:                                            ; preds = %bb.dj, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i426
  %i.zz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4sort11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.yz) #27
  call void @_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.yx) #27
  br label %.body

bb.dl:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i427.1
  invoke void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.zy, ptr noundef nonnull @.str.32)
          to label %.noexc448 unwind label %.loopexit.split-lp

.noexc448:                                        ; preds = %bb.dl
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zy, i64 8
  store i32 1, ptr %i.aaa, align 8, !tbaa !190
  %i.aab = getelementptr inbounds nuw i8, ptr %i.zy, i64 16 ; 2 uses
  store i64 %i.aq, ptr %i.aab, align 8, !tbaa !195
  %i.aac = getelementptr inbounds nuw i8, ptr %i.zy, i64 24 ; 5 uses
  store ptr null, ptr %i.aac, align 8, !tbaa !29
  %i.aad = getelementptr inbounds nuw i8, ptr %i.zy, i64 32 ; 2 uses
  store ptr %i.q, ptr %i.aad, align 8, !tbaa !71
  %i.aae = getelementptr inbounds nuw i8, ptr %i.zy, i64 40
  store ptr %i.f, ptr %i.aae, align 8, !tbaa !195
  br i1 %.not.i.i.i308, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i442, label %bb.dm

bb.dm:                                            ; preds = %.noexc448
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.aag = load i32, ptr %i.aaf, align 4, !tbaa !33
  %i.aah = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.aai = add i32 %i.aag, 2
  store i32 %i.aai, ptr %i.aah, align 4, !tbaa !33
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i442

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i442: ; preds = %.noexc448, %bb.dm
  invoke void @_ZN6vectorIP4sortLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aac)
          to label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i443 unwind label %bb.dp

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i443: ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i442
  %.pre.i.i.i.i.i445 = load ptr, ptr %i.aac, align 8, !tbaa !29 ; 5 uses
  %.phi.trans.insert.i.i.i.i.i446 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i445, i64 -4
  %.pre2.i.i.i.i.i447 = load i32, ptr %.phi.trans.insert.i.i.i.i.i446, align 4, !tbaa !31 ; 2 uses
  %i.aaj = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i445, i64 -4 ; 2 uses
  %i.aak = zext i32 %.pre2.i.i.i.i.i447 to i64
  %i.aal = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i.i445, i64 %i.aak
  store ptr %i.q, ptr %i.aal, align 8, !tbaa !42
  %i.aam = add i32 %.pre2.i.i.i.i.i447, 1
  store i32 %i.aam, ptr %i.aaj, align 4, !tbaa !31
  br i1 %.not.i.i.i308, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i442.1, label %bb.dn

bb.dn:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i443
  %i.aan = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.aao = load i32, ptr %i.aan, align 4, !tbaa !33
  %i.aap = add i32 %i.aao, 1
  store i32 %i.aap, ptr %i.aan, align 4, !tbaa !33
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i442.1

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i442.1: ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i443, %bb.dn
  %i.aaq = load i32, ptr %i.aaj, align 4, !tbaa !31 ; 2 uses
  %i.aar = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i445, i64 -8
  %i.aas = load i32, ptr %i.aar, align 4, !tbaa !31
  %i.aat = icmp eq i32 %i.aaq, %i.aas
  br i1 %i.aat, label %bb.do, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i443.1

bb.do:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i442.1
  invoke void @_ZN6vectorIP4sortLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aac)
          to label %.noexc.i444.1 unwind label %bb.dp

.noexc.i444.1:                                    ; preds = %bb.do
  %.pre.i.i.i.i.i445.1 = load ptr, ptr %i.aac, align 8, !tbaa !29 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i446.1 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i445.1, i64 -4
  %.pre2.i.i.i.i.i447.1 = load i32, ptr %.phi.trans.insert.i.i.i.i.i446.1, align 4, !tbaa !31
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i443.1

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i443.1: ; preds = %.noexc.i444.1, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i442.1
  %i.aau = phi ptr [ %.pre.i.i.i.i.i445.1, %.noexc.i444.1 ], [ %.pre.i.i.i.i.i445, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i442.1 ] ; 2 uses
  %i.aav = phi i32 [ %.pre2.i.i.i.i.i447.1, %.noexc.i444.1 ], [ %i.aaq, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i442.1 ] ; 2 uses
  %i.aaw = getelementptr inbounds i8, ptr %i.aau, i64 -4
  %i.aax = zext i32 %i.aav to i64
  %i.aay = getelementptr inbounds nuw [8 x i8], ptr %i.aau, i64 %i.aax
  store ptr %i.q, ptr %i.aay, align 8, !tbaa !42
  %i.aaz = add i32 %i.aav, 1
  store i32 %i.aaz, ptr %i.aaw, align 4, !tbaa !31
  %i.aba = load ptr, ptr %i.y, align 8, !tbaa !30
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aba, i64 256
  store ptr %i.zy, ptr %i.abb, align 8, !tbaa !37
  %i.abc = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 48)
          to label %bb.dq unwind label %.loopexit.split-lp ; 7 uses

bb.dp:                                            ; preds = %bb.do, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i442
  %i.abd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4sort11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.aad) #27
  call void @_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.aab) #27
  br label %.body

bb.dq:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i443.1
  invoke void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.abc, ptr noundef nonnull @.str.33)
          to label %.noexc464 unwind label %.loopexit.split-lp

.noexc464:                                        ; preds = %bb.dq
  %i.abe = getelementptr inbounds nuw i8, ptr %i.abc, i64 8
  store i32 1, ptr %i.abe, align 8, !tbaa !190
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abc, i64 16 ; 2 uses
  store i64 %i.aq, ptr %i.abf, align 8, !tbaa !195
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abc, i64 24 ; 3 uses
  store ptr null, ptr %i.abg, align 8, !tbaa !29
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abc, i64 32 ; 2 uses
  store ptr %i.q, ptr %i.abh, align 8, !tbaa !71
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abc, i64 40
  store ptr %i.f, ptr %i.abi, align 8, !tbaa !195
  br i1 %.not.i.i.i308, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i458, label %bb.dr

bb.dr:                                            ; preds = %.noexc464
  %i.abj = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.abk = load i32, ptr %i.abj, align 4, !tbaa !33
  %i.abl = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.abm = add i32 %i.abk, 2
  store i32 %i.abm, ptr %i.abl, align 4, !tbaa !33
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i458

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i458: ; preds = %.noexc464, %bb.dr
  invoke void @_ZN6vectorIP4sortLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.abg)
          to label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i459 unwind label %bb.ds

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i459: ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i458
  %.pre.i.i.i.i.i461 = load ptr, ptr %i.abg, align 8, !tbaa !29 ; 3 uses
  %.phi.trans.insert.i.i.i.i.i462 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i461, i64 -4
  %.pre2.i.i.i.i.i463 = load i32, ptr %.phi.trans.insert.i.i.i.i.i462, align 4, !tbaa !31 ; 2 uses
  %12 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i461, i64 -4
  %i.abn = zext i32 %.pre2.i.i.i.i.i463 to i64
  %i.abo = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i.i461, i64 %i.abn
  store ptr %i.q, ptr %i.abo, align 8, !tbaa !42
  %i.abp = add i32 %.pre2.i.i.i.i.i463, 1
  store i32 %i.abp, ptr %12, align 4, !tbaa !31
  %i.abq = load ptr, ptr %i.y, align 8, !tbaa !30
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abq, i64 264
  store ptr %i.abc, ptr %i.abr, align 8, !tbaa !37
  %i.abs = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 48)
          to label %bb.dt unwind label %.loopexit.split-lp ; 7 uses

bb.ds:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i458
  %i.abt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4sort11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.abh) #27
  call void @_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.abf) #27
  br label %.body

bb.dt:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i459
  invoke void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.abs, ptr noundef nonnull @.str.34)
          to label %.noexc480 unwind label %.loopexit.split-lp

.noexc480:                                        ; preds = %bb.dt
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abs, i64 8
  store i32 1, ptr %i.abu, align 8, !tbaa !190
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abs, i64 16 ; 2 uses
  store i64 %i.aq, ptr %i.abv, align 8, !tbaa !195
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abs, i64 24 ; 3 uses
  store ptr null, ptr %i.abw, align 8, !tbaa !29
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abs, i64 32 ; 2 uses
  store ptr %i.q, ptr %i.abx, align 8, !tbaa !71
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abs, i64 40
  store ptr %i.f, ptr %i.aby, align 8, !tbaa !195
  br i1 %.not.i.i.i308, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i474, label %bb.du

bb.du:                                            ; preds = %.noexc480
  %i.abz = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.aca = load i32, ptr %i.abz, align 4, !tbaa !33
  %i.acb = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.acc = add i32 %i.aca, 2
  store i32 %i.acc, ptr %i.acb, align 4, !tbaa !33
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i474

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i474: ; preds = %.noexc480, %bb.du
  invoke void @_ZN6vectorIP4sortLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.abw)
          to label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i475 unwind label %bb.dv

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i475: ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i474
  %.pre.i.i.i.i.i477 = load ptr, ptr %i.abw, align 8, !tbaa !29 ; 3 uses
  %.phi.trans.insert.i.i.i.i.i478 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i477, i64 -4
  %.pre2.i.i.i.i.i479 = load i32, ptr %.phi.trans.insert.i.i.i.i.i478, align 4, !tbaa !31 ; 2 uses
  %13 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i477, i64 -4
  %i.acd = zext i32 %.pre2.i.i.i.i.i479 to i64
  %i.ace = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i.i477, i64 %i.acd
  store ptr %i.q, ptr %i.ace, align 8, !tbaa !42
  %i.acf = add i32 %.pre2.i.i.i.i.i479, 1
  store i32 %i.acf, ptr %13, align 4, !tbaa !31
  %i.acg = load ptr, ptr %i.y, align 8, !tbaa !30
  %i.ach = getelementptr inbounds nuw i8, ptr %i.acg, i64 272
  store ptr %i.abs, ptr %i.ach, align 8, !tbaa !37
  %i.aci = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 48)
          to label %bb.dw unwind label %.loopexit.split-lp ; 7 uses

bb.dv:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i474
  %i.acj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4sort11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.abx) #27
  call void @_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.abv) #27
  br label %.body

bb.dw:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i475
  invoke void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.aci, ptr noundef nonnull @.str.35)
          to label %.noexc496 unwind label %.loopexit.split-lp

.noexc496:                                        ; preds = %bb.dw
  %i.ack = getelementptr inbounds nuw i8, ptr %i.aci, i64 8
  store i32 1, ptr %i.ack, align 8, !tbaa !190
  %i.acl = getelementptr inbounds nuw i8, ptr %i.aci, i64 16 ; 2 uses
  store i64 %i.aq, ptr %i.acl, align 8, !tbaa !195
  %i.acm = getelementptr inbounds nuw i8, ptr %i.aci, i64 24 ; 3 uses
  store ptr null, ptr %i.acm, align 8, !tbaa !29
  %i.acn = getelementptr inbounds nuw i8, ptr %i.aci, i64 32 ; 2 uses
  store ptr %i.q, ptr %i.acn, align 8, !tbaa !71
  %i.aco = getelementptr inbounds nuw i8, ptr %i.aci, i64 40
  store ptr %i.f, ptr %i.aco, align 8, !tbaa !195
  br i1 %.not.i.i.i308, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i490, label %bb.dx

bb.dx:                                            ; preds = %.noexc496
  %i.acp = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.acq = load i32, ptr %i.acp, align 4, !tbaa !33
  %i.acr = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.acs = add i32 %i.acq, 2
  store i32 %i.acs, ptr %i.acr, align 4, !tbaa !33
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i490

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i490: ; preds = %.noexc496, %bb.dx
  invoke void @_ZN6vectorIP4sortLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.acm)
          to label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i491 unwind label %bb.dy

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i491: ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i490
  %.pre.i.i.i.i.i493 = load ptr, ptr %i.acm, align 8, !tbaa !29 ; 3 uses
  %.phi.trans.insert.i.i.i.i.i494 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i493, i64 -4
  %.pre2.i.i.i.i.i495 = load i32, ptr %.phi.trans.insert.i.i.i.i.i494, align 4, !tbaa !31 ; 2 uses
  %14 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i493, i64 -4
  %i.act = zext i32 %.pre2.i.i.i.i.i495 to i64
  %i.acu = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i.i493, i64 %i.act
  store ptr %i.q, ptr %i.acu, align 8, !tbaa !42
  %i.acv = add i32 %.pre2.i.i.i.i.i495, 1
  store i32 %i.acv, ptr %14, align 4, !tbaa !31
  %i.acw = load ptr, ptr %i.y, align 8, !tbaa !30
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acw, i64 280
  store ptr %i.aci, ptr %i.acx, align 8, !tbaa !37
  %i.acy = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 48)
          to label %bb.dz unwind label %.loopexit.split-lp ; 7 uses

bb.dy:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i490
  %i.acz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4sort11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.acn) #27
  call void @_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.acl) #27
  br label %.body

bb.dz:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i491
  invoke void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.acy, ptr noundef nonnull @.str.36)
          to label %.noexc503 unwind label %.loopexit.split-lp

.noexc503:                                        ; preds = %bb.dz
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acy, i64 8
  store i32 1, ptr %i.ada, align 8, !tbaa !190
  %i.adb = getelementptr inbounds nuw i8, ptr %i.acy, i64 16
  store i64 %i.aq, ptr %i.adb, align 8, !tbaa !195
  %i.adc = getelementptr inbounds nuw i8, ptr %i.acy, i64 24
  store ptr null, ptr %i.adc, align 8, !tbaa !29
  %i.add = getelementptr inbounds nuw i8, ptr %i.acy, i64 32
  store ptr %i.q, ptr %i.add, align 8, !tbaa !71
  %i.ade = getelementptr inbounds nuw i8, ptr %i.acy, i64 40
  store ptr %i.f, ptr %i.ade, align 8, !tbaa !195
  br i1 %.not.i.i.i308, label %_ZN15seq_decl_plugin4psigC2ER11ast_managerPKcjjPKP4sortS6_.exit504, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i501

_ZN11ast_manager7inc_refEP3ast.exit.i.i.i501:     ; preds = %.noexc503
  %i.adf = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.adg = load i32, ptr %i.adf, align 4, !tbaa !33
  %i.adh = add i32 %i.adg, 1
  store i32 %i.adh, ptr %i.adf, align 4, !tbaa !33
  br label %_ZN15seq_decl_plugin4psigC2ER11ast_managerPKcjjPKP4sortS6_.exit504

_ZN15seq_decl_plugin4psigC2ER11ast_managerPKcjjPKP4sortS6_.exit504: ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i501, %.noexc503
  %i.adi = load ptr, ptr %i.y, align 8, !tbaa !30
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adi, i64 288
  store ptr %i.acy, ptr %i.adj, align 8, !tbaa !37
  %i.adk = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 48)
          to label %bb.ea unwind label %.loopexit.split-lp ; 7 uses

bb.ea:                                            ; preds = %_ZN15seq_decl_plugin4psigC2ER11ast_managerPKcjjPKP4sortS6_.exit504
  invoke void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.adk, ptr noundef nonnull @.str.37)
          to label %.noexc508 unwind label %.loopexit.split-lp

.noexc508:                                        ; preds = %bb.ea
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adk, i64 8
  store i32 1, ptr %i.adl, align 8, !tbaa !190
  %i.adm = getelementptr inbounds nuw i8, ptr %i.adk, i64 16
  store i64 %i.aq, ptr %i.adm, align 8, !tbaa !195
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adk, i64 24
  store ptr null, ptr %i.adn, align 8, !tbaa !29
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adk, i64 32
  store ptr %i.q, ptr %i.ado, align 8, !tbaa !71
  %i.adp = getelementptr inbounds nuw i8, ptr %i.adk, i64 40
  store ptr %i.f, ptr %i.adp, align 8, !tbaa !195
  br i1 %.not.i.i.i308, label %_ZN15seq_decl_plugin4psigC2ER11ast_managerPKcjjPKP4sortS6_.exit509, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i506

_ZN11ast_manager7inc_refEP3ast.exit.i.i.i506:     ; preds = %.noexc508
  %i.adq = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.adr = load i32, ptr %i.adq, align 4, !tbaa !33
  %i.ads = add i32 %i.adr, 1
  store i32 %i.ads, ptr %i.adq, align 4, !tbaa !33
  br label %_ZN15seq_decl_plugin4psigC2ER11ast_managerPKcjjPKP4sortS6_.exit509

_ZN15seq_decl_plugin4psigC2ER11ast_managerPKcjjPKP4sortS6_.exit509: ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i506, %.noexc508
  %i.adt = load ptr, ptr %i.y, align 8, !tbaa !30
  %i.adu = getelementptr inbounds nuw i8, ptr %i.adt, i64 296
  store ptr %i.adk, ptr %i.adu, align 8, !tbaa !37
  %i.adv = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 48)
          to label %bb.eb unwind label %.loopexit.split-lp ; 7 uses

bb.eb:                                            ; preds = %_ZN15seq_decl_plugin4psigC2ER11ast_managerPKcjjPKP4sortS6_.exit509
  invoke void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.adv, ptr noundef nonnull @.str.38)
          to label %.noexc513 unwind label %.loopexit.split-lp

.noexc513:                                        ; preds = %bb.eb
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adv, i64 8
  store i32 1, ptr %i.adw, align 8, !tbaa !190
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adv, i64 16
  store i64 %i.aq, ptr %i.adx, align 8, !tbaa !195
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adv, i64 24
  store ptr null, ptr %i.ady, align 8, !tbaa !29
  %i.adz = getelementptr inbounds nuw i8, ptr %i.adv, i64 32
  store ptr %i.q, ptr %i.adz, align 8, !tbaa !71
  %i.aea = getelementptr inbounds nuw i8, ptr %i.adv, i64 40
  store ptr %i.f, ptr %i.aea, align 8, !tbaa !195
  br i1 %.not.i.i.i308, label %_ZN15seq_decl_plugin4psigC2ER11ast_managerPKcjjPKP4sortS6_.exit514, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i511

_ZN11ast_manager7inc_refEP3ast.exit.i.i.i511:     ; preds = %.noexc513
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.aec = load i32, ptr %i.aeb, align 4, !tbaa !33
  %i.aed = add i32 %i.aec, 1
  store i32 %i.aed, ptr %i.aeb, align 4, !tbaa !33
  br label %_ZN15seq_decl_plugin4psigC2ER11ast_managerPKcjjPKP4sortS6_.exit514

_ZN15seq_decl_plugin4psigC2ER11ast_managerPKcjjPKP4sortS6_.exit514: ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i511, %.noexc513
  %i.aee = load ptr, ptr %i.y, align 8, !tbaa !30
  %i.aef = getelementptr inbounds nuw i8, ptr %i.aee, i64 304
  store ptr %i.adv, ptr %i.aef, align 8, !tbaa !37
  %i.aeg = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 48)
          to label %bb.ec unwind label %.loopexit.split-lp ; 7 uses

bb.ec:                                            ; preds = %_ZN15seq_decl_plugin4psigC2ER11ast_managerPKcjjPKP4sortS6_.exit514
  invoke void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.aeg, ptr noundef nonnull @.str.39)
          to label %.noexc527 unwind label %.loopexit.split-lp

.noexc527:                                        ; preds = %bb.ec
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aeg, i64 8
  store i32 1, ptr %i.aeh, align 8, !tbaa !190
  %i.aei = getelementptr inbounds nuw i8, ptr %i.aeg, i64 16 ; 2 uses
  store i64 %i.aq, ptr %i.aei, align 8, !tbaa !195
  %i.aej = getelementptr inbounds nuw i8, ptr %i.aeg, i64 24 ; 3 uses
  store ptr null, ptr %i.aej, align 8, !tbaa !29
  %i.aek = getelementptr inbounds nuw i8, ptr %i.aeg, i64 32 ; 2 uses
  store ptr %i.q, ptr %i.aek, align 8, !tbaa !71
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aeg, i64 40
  store ptr %i.f, ptr %i.ael, align 8, !tbaa !195
  br i1 %.not.i.i.i308, label %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i517, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i516

_ZN11ast_manager7inc_refEP3ast.exit.i.i.i516:     ; preds = %.noexc527
  %i.aem = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.aen = load i32, ptr %i.aem, align 4, !tbaa !33
  %i.aeo = add i32 %i.aen, 1
  store i32 %i.aeo, ptr %i.aem, align 4, !tbaa !33
  br label %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i517

_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i517: ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i516, %.noexc527
  %.not.i.i.i.i.i.i.i520 = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i.i.i520, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i521, label %bb.ed

bb.ed:                                            ; preds = %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i517
  %i.aep = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.aeq = load i32, ptr %i.aep, align 4, !tbaa !33
  %i.aer = add i32 %i.aeq, 1
  store i32 %i.aer, ptr %i.aep, align 4, !tbaa !33
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i521

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i521: ; preds = %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i517, %bb.ed
  invoke void @_ZN6vectorIP4sortLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aej)
          to label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i522 unwind label %bb.ee

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i522: ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i521
  %.pre.i.i.i.i.i524 = load ptr, ptr %i.aej, align 8, !tbaa !29 ; 3 uses
  %.phi.trans.insert.i.i.i.i.i525 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i524, i64 -4
  %.pre2.i.i.i.i.i526 = load i32, ptr %.phi.trans.insert.i.i.i.i.i525, align 4, !tbaa !31 ; 2 uses
  %15 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i524, i64 -4
  %i.aes = zext i32 %.pre2.i.i.i.i.i526 to i64
  %i.aet = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i.i524, i64 %i.aes
  store ptr %i.x, ptr %i.aet, align 8, !tbaa !42
  %i.aeu = add i32 %.pre2.i.i.i.i.i526, 1
  store i32 %i.aeu, ptr %15, align 4, !tbaa !31
  %i.aev = load ptr, ptr %i.y, align 8, !tbaa !30
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aev, i64 312
  store ptr %i.aeg, ptr %i.aew, align 8, !tbaa !37
  %i.aex = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 48)
          to label %bb.ef unwind label %.loopexit.split-lp ; 7 uses

bb.ee:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i521
  %i.aey = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4sort11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.aek) #27
  call void @_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.aei) #27
  br label %.body

bb.ef:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i522
  invoke void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.aex, ptr noundef nonnull @.str.40)
          to label %.noexc543 unwind label %.loopexit.split-lp

.noexc543:                                        ; preds = %bb.ef
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aex, i64 8
  store i32 1, ptr %i.aez, align 8, !tbaa !190
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aex, i64 16 ; 2 uses
  store i64 %i.aq, ptr %i.afa, align 8, !tbaa !195
  %i.afb = getelementptr inbounds nuw i8, ptr %i.aex, i64 24 ; 3 uses
  store ptr null, ptr %i.afb, align 8, !tbaa !29
  %i.afc = getelementptr inbounds nuw i8, ptr %i.aex, i64 32 ; 2 uses
  store ptr %i.q, ptr %i.afc, align 8, !tbaa !71
  %i.afd = getelementptr inbounds nuw i8, ptr %i.aex, i64 40
  store ptr %i.f, ptr %i.afd, align 8, !tbaa !195
  br i1 %.not.i.i.i308, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i537, label %bb.eg

bb.eg:                                            ; preds = %.noexc543
  %i.afe = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.aff = load i32, ptr %i.afe, align 4, !tbaa !33
  %i.afg = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.afh = add i32 %i.aff, 2
  store i32 %i.afh, ptr %i.afg, align 4, !tbaa !33
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i537

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i537: ; preds = %.noexc543, %bb.eg
  invoke void @_ZN6vectorIP4sortLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.afb)
          to label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i538 unwind label %bb.eh

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i538: ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i537
  %.pre.i.i.i.i.i540 = load ptr, ptr %i.afb, align 8, !tbaa !29 ; 3 uses
  %.phi.trans.insert.i.i.i.i.i541 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i540, i64 -4
  %.pre2.i.i.i.i.i542 = load i32, ptr %.phi.trans.insert.i.i.i.i.i541, align 4, !tbaa !31 ; 2 uses
  %16 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i540, i64 -4
  %i.afi = zext i32 %.pre2.i.i.i.i.i542 to i64
  %i.afj = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i.i540, i64 %i.afi
  store ptr %i.q, ptr %i.afj, align 8, !tbaa !42
  %i.afk = add i32 %.pre2.i.i.i.i.i542, 1
  store i32 %i.afk, ptr %16, align 4, !tbaa !31
  %i.afl = load ptr, ptr %i.y, align 8, !tbaa !30
  %i.afm = getelementptr inbounds nuw i8, ptr %i.afl, i64 320
  store ptr %i.aex, ptr %i.afm, align 8, !tbaa !37
  %i.afn = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 48)
          to label %bb.ei unwind label %.loopexit.split-lp ; 7 uses

bb.eh:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i537
  %i.afo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4sort11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.afc) #27
  call void @_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.afa) #27
  br label %.body

bb.ei:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i538
  invoke void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.afn, ptr noundef nonnull @.str.41)
          to label %.noexc559 unwind label %.loopexit.split-lp

.noexc559:                                        ; preds = %bb.ei
  %i.afp = getelementptr inbounds nuw i8, ptr %i.afn, i64 8
  store i32 1, ptr %i.afp, align 8, !tbaa !190
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afn, i64 16 ; 2 uses
  store i64 %i.aq, ptr %i.afq, align 8, !tbaa !195
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afn, i64 24 ; 5 uses
  store ptr null, ptr %i.afr, align 8, !tbaa !29
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afn, i64 32 ; 2 uses
  store ptr %i.q, ptr %i.afs, align 8, !tbaa !71
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afn, i64 40
  store ptr %i.f, ptr %i.aft, align 8, !tbaa !195
  br i1 %.not.i.i.i308, label %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i549, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i548

_ZN11ast_manager7inc_refEP3ast.exit.i.i.i548:     ; preds = %.noexc559
  %i.afu = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.afv = load i32, ptr %i.afu, align 4, !tbaa !33
  %i.afw = add i32 %i.afv, 1
  store i32 %i.afw, ptr %i.afu, align 4, !tbaa !33
  br label %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i549

_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i549: ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i548, %.noexc559
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i553, label %bb.ej

bb.ej:                                            ; preds = %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i549
  %i.afx = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.afy = load i32, ptr %i.afx, align 4, !tbaa !33
  %i.afz = add i32 %i.afy, 1
  store i32 %i.afz, ptr %i.afx, align 4, !tbaa !33
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i553

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i553: ; preds = %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i549, %bb.ej
  invoke void @_ZN6vectorIP4sortLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.afr)
          to label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i554 unwind label %bb.em

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i554: ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i553
  %.pre.i.i.i.i.i556 = load ptr, ptr %i.afr, align 8, !tbaa !29 ; 5 uses
  %.phi.trans.insert.i.i.i.i.i557 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i556, i64 -4
  %.pre2.i.i.i.i.i558 = load i32, ptr %.phi.trans.insert.i.i.i.i.i557, align 4, !tbaa !31 ; 2 uses
  %i.aga = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i556, i64 -4 ; 2 uses
  %i.agb = zext i32 %.pre2.i.i.i.i.i558 to i64
  %i.agc = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i.i556, i64 %i.agb
  store ptr %i.g, ptr %i.agc, align 8, !tbaa !42
  %i.agd = add i32 %.pre2.i.i.i.i.i558, 1
  store i32 %i.agd, ptr %i.aga, align 4, !tbaa !31
  br i1 %.not.i.i.i308, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i553.1, label %bb.ek

bb.ek:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i554
  %i.age = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.agf = load i32, ptr %i.age, align 4, !tbaa !33
  %i.agg = add i32 %i.agf, 1
  store i32 %i.agg, ptr %i.age, align 4, !tbaa !33
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i553.1

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i553.1: ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i554, %bb.ek
  %i.agh = load i32, ptr %i.aga, align 4, !tbaa !31 ; 2 uses
  %i.agi = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i556, i64 -8
  %i.agj = load i32, ptr %i.agi, align 4, !tbaa !31
  %i.agk = icmp eq i32 %i.agh, %i.agj
  br i1 %i.agk, label %bb.el, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i554.1

bb.el:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i553.1
  invoke void @_ZN6vectorIP4sortLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.afr)
          to label %.noexc.i555.1 unwind label %bb.em

.noexc.i555.1:                                    ; preds = %bb.el
  %.pre.i.i.i.i.i556.1 = load ptr, ptr %i.afr, align 8, !tbaa !29 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i557.1 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i556.1, i64 -4
  %.pre2.i.i.i.i.i558.1 = load i32, ptr %.phi.trans.insert.i.i.i.i.i557.1, align 4, !tbaa !31
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i554.1

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i554.1: ; preds = %.noexc.i555.1, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i553.1
  %i.agl = phi ptr [ %.pre.i.i.i.i.i556.1, %.noexc.i555.1 ], [ %.pre.i.i.i.i.i556, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i553.1 ] ; 2 uses
  %i.agm = phi i32 [ %.pre2.i.i.i.i.i558.1, %.noexc.i555.1 ], [ %i.agh, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i553.1 ] ; 2 uses
  %i.agn = getelementptr inbounds i8, ptr %i.agl, i64 -4
  %i.ago = zext i32 %i.agm to i64
  %i.agp = getelementptr inbounds nuw [8 x i8], ptr %i.agl, i64 %i.ago
  store ptr %i.q, ptr %i.agp, align 8, !tbaa !42
  %i.agq = add i32 %i.agm, 1
  store i32 %i.agq, ptr %i.agn, align 4, !tbaa !31
  %i.agr = load ptr, ptr %i.y, align 8, !tbaa !30
  %i.ags = getelementptr inbounds nuw i8, ptr %i.agr, i64 328
  store ptr %i.afn, ptr %i.ags, align 8, !tbaa !37
  %i.agt = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 48)
          to label %bb.en unwind label %.loopexit.split-lp ; 7 uses

bb.em:                                            ; preds = %bb.el, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i553
  %i.agu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4sort11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.afs) #27
  call void @_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.afq) #27
  br label %.body

bb.en:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i554.1
  invoke void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.agt, ptr noundef nonnull @.str.42)
          to label %.noexc575 unwind label %.loopexit.split-lp

.noexc575:                                        ; preds = %bb.en
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agt, i64 8
  store i32 1, ptr %i.agv, align 8, !tbaa !190
  %i.agw = getelementptr inbounds nuw i8, ptr %i.agt, i64 16 ; 2 uses
  store i64 %i.aq, ptr %i.agw, align 8, !tbaa !195
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agt, i64 24 ; 3 uses
  store ptr null, ptr %i.agx, align 8, !tbaa !29
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agt, i64 32 ; 2 uses
  store ptr %i.q, ptr %i.agy, align 8, !tbaa !71
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agt, i64 40
  store ptr %i.f, ptr %i.agz, align 8, !tbaa !195
  br i1 %.not.i.i.i308, label %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i565, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i564

_ZN11ast_manager7inc_refEP3ast.exit.i.i.i564:     ; preds = %.noexc575
  %i.aha = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.ahb = load i32, ptr %i.aha, align 4, !tbaa !33
  %i.ahc = add i32 %i.ahb, 1
  store i32 %i.ahc, ptr %i.aha, align 4, !tbaa !33
  br label %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i565

_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i565: ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i564, %.noexc575
  br i1 %.not.i.i.i, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i569, label %bb.eo

bb.eo:                                            ; preds = %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i565
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.ahe = load i32, ptr %i.ahd, align 4, !tbaa !33
  %i.ahf = add i32 %i.ahe, 1
  store i32 %i.ahf, ptr %i.ahd, align 4, !tbaa !33
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i569

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i569: ; preds = %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i565, %bb.eo
  invoke void @_ZN6vectorIP4sortLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.agx)
          to label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i570 unwind label %bb.ep

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i570: ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i569
  %.pre.i.i.i.i.i572 = load ptr, ptr %i.agx, align 8, !tbaa !29 ; 3 uses
  %.phi.trans.insert.i.i.i.i.i573 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i572, i64 -4
  %.pre2.i.i.i.i.i574 = load i32, ptr %.phi.trans.insert.i.i.i.i.i573, align 4, !tbaa !31 ; 2 uses
  %17 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i572, i64 -4
  %i.ahg = zext i32 %.pre2.i.i.i.i.i574 to i64
  %i.ahh = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i.i572, i64 %i.ahg
  store ptr %i.n, ptr %i.ahh, align 8, !tbaa !42
  %i.ahi = add i32 %.pre2.i.i.i.i.i574, 1
  store i32 %i.ahi, ptr %17, align 4, !tbaa !31
  %i.ahj = load ptr, ptr %i.y, align 8, !tbaa !30
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.ahj, i64 120
  store ptr %i.agt, ptr %i.ahk, align 8, !tbaa !37
  %i.ahl = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 48)
          to label %bb.eq unwind label %.loopexit.split-lp ; 7 uses

bb.ep:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i569
  %i.ahm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4sort11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.agy) #27
  call void @_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.agw) #27
  br label %.body

bb.eq:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i570
  invoke void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.ahl, ptr noundef nonnull @.str.43)
          to label %.noexc591 unwind label %.loopexit.split-lp

.noexc591:                                        ; preds = %bb.eq
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ahl, i64 8
  store i32 1, ptr %i.ahn, align 8, !tbaa !190
  %i.aho = getelementptr inbounds nuw i8, ptr %i.ahl, i64 16 ; 2 uses
  store i64 %i.aq, ptr %i.aho, align 8, !tbaa !195
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.ahl, i64 24 ; 5 uses
  store ptr null, ptr %i.ahp, align 8, !tbaa !29
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.ahl, i64 32 ; 2 uses
  store ptr %i.u, ptr %i.ahq, align 8, !tbaa !71
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahl, i64 40
  store ptr %i.f, ptr %i.ahr, align 8, !tbaa !195
  br i1 %.not.i.i.i116, label %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i581, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i580

_ZN11ast_manager7inc_refEP3ast.exit.i.i.i580:     ; preds = %.noexc591
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.aht = load i32, ptr %i.ahs, align 4, !tbaa !33
  %i.ahu = add i32 %i.aht, 1
  store i32 %i.ahu, ptr %i.ahs, align 4, !tbaa !33
  br label %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i581

_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i581: ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i580, %.noexc591
  br i1 %.not.i.i.i, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i585, label %bb.er

bb.er:                                            ; preds = %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i581
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.ahw = load i32, ptr %i.ahv, align 4, !tbaa !33
  %i.ahx = add i32 %i.ahw, 1
  store i32 %i.ahx, ptr %i.ahv, align 4, !tbaa !33
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i585

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i585: ; preds = %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i581, %bb.er
  invoke void @_ZN6vectorIP4sortLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ahp)
          to label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i586 unwind label %bb.eu

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i586: ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i585
  %.pre.i.i.i.i.i588 = load ptr, ptr %i.ahp, align 8, !tbaa !29 ; 5 uses
  %.phi.trans.insert.i.i.i.i.i589 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i588, i64 -4
  %.pre2.i.i.i.i.i590 = load i32, ptr %.phi.trans.insert.i.i.i.i.i589, align 4, !tbaa !31 ; 2 uses
  %i.ahy = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i588, i64 -4 ; 2 uses
  %i.ahz = zext i32 %.pre2.i.i.i.i.i590 to i64
  %i.aia = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i.i588, i64 %i.ahz
  store ptr %i.n, ptr %i.aia, align 8, !tbaa !42
  %i.aib = add i32 %.pre2.i.i.i.i.i590, 1
  store i32 %i.aib, ptr %i.ahy, align 4, !tbaa !31
  br i1 %.not.i.i.i308, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i585.1, label %bb.es

bb.es:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i586
  %i.aic = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.aid = load i32, ptr %i.aic, align 4, !tbaa !33
  %i.aie = add i32 %i.aid, 1
  store i32 %i.aie, ptr %i.aic, align 4, !tbaa !33
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i585.1

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i585.1: ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i586, %bb.es
  %i.aif = load i32, ptr %i.ahy, align 4, !tbaa !31 ; 2 uses
  %i.aig = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i588, i64 -8
  %i.aih = load i32, ptr %i.aig, align 4, !tbaa !31
  %i.aii = icmp eq i32 %i.aif, %i.aih
  br i1 %i.aii, label %bb.et, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i586.1

bb.et:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i585.1
  invoke void @_ZN6vectorIP4sortLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ahp)
          to label %.noexc.i587.1 unwind label %bb.eu

.noexc.i587.1:                                    ; preds = %bb.et
  %.pre.i.i.i.i.i588.1 = load ptr, ptr %i.ahp, align 8, !tbaa !29 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i589.1 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i588.1, i64 -4
  %.pre2.i.i.i.i.i590.1 = load i32, ptr %.phi.trans.insert.i.i.i.i.i589.1, align 4, !tbaa !31
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i586.1

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i586.1: ; preds = %.noexc.i587.1, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i585.1
  %i.aij = phi ptr [ %.pre.i.i.i.i.i588.1, %.noexc.i587.1 ], [ %.pre.i.i.i.i.i588, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i585.1 ] ; 2 uses
  %i.aik = phi i32 [ %.pre2.i.i.i.i.i590.1, %.noexc.i587.1 ], [ %i.aif, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i585.1 ] ; 2 uses
  %i.ail = getelementptr inbounds i8, ptr %i.aij, i64 -4
  %i.aim = zext i32 %i.aik to i64
  %i.ain = getelementptr inbounds nuw [8 x i8], ptr %i.aij, i64 %i.aim
  store ptr %i.q, ptr %i.ain, align 8, !tbaa !42
  %i.aio = add i32 %i.aik, 1
  store i32 %i.aio, ptr %i.ail, align 4, !tbaa !31
  %i.aip = load ptr, ptr %i.y, align 8, !tbaa !30
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.aip, i64 128
  store ptr %i.ahl, ptr %i.aiq, align 8, !tbaa !37
  %i.air = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 48)
          to label %bb.ev unwind label %.loopexit.split-lp ; 7 uses

bb.eu:                                            ; preds = %bb.et, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i585
  %i.ais = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4sort11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.ahq) #27
  call void @_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.aho) #27
  br label %.body

bb.ev:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i586.1
  invoke void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.air, ptr noundef nonnull @.str.44)
          to label %.noexc607 unwind label %.loopexit.split-lp

.noexc607:                                        ; preds = %bb.ev
  %i.ait = getelementptr inbounds nuw i8, ptr %i.air, i64 8
  store i32 1, ptr %i.ait, align 8, !tbaa !190
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.air, i64 16 ; 2 uses
  store i64 %i.aq, ptr %i.aiu, align 8, !tbaa !195
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.air, i64 24 ; 7 uses
  store ptr null, ptr %i.aiv, align 8, !tbaa !29
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.air, i64 32 ; 2 uses
  store ptr %i.n, ptr %i.aiw, align 8, !tbaa !71
  %i.aix = getelementptr inbounds nuw i8, ptr %i.air, i64 40
  store ptr %i.f, ptr %i.aix, align 8, !tbaa !195
  br i1 %.not.i.i.i, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i601, label %bb.ew

bb.ew:                                            ; preds = %.noexc607
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.aiz = load i32, ptr %i.aiy, align 4, !tbaa !33
  %i.aja = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.ajb = add i32 %i.aiz, 2
  store i32 %i.ajb, ptr %i.aja, align 4, !tbaa !33
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i601

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i601: ; preds = %.noexc607, %bb.ew
  invoke void @_ZN6vectorIP4sortLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aiv)
          to label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i602 unwind label %bb.fb

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i602: ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i601
  %.pre.i.i.i.i.i604 = load ptr, ptr %i.aiv, align 8, !tbaa !29 ; 5 uses
  %.phi.trans.insert.i.i.i.i.i605 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i604, i64 -4
  %.pre2.i.i.i.i.i606 = load i32, ptr %.phi.trans.insert.i.i.i.i.i605, align 4, !tbaa !31 ; 2 uses
  %i.ajc = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i604, i64 -4 ; 2 uses
  %i.ajd = zext i32 %.pre2.i.i.i.i.i606 to i64
  %i.aje = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i.i604, i64 %i.ajd
  store ptr %i.n, ptr %i.aje, align 8, !tbaa !42
  %i.ajf = add i32 %.pre2.i.i.i.i.i606, 1
  store i32 %i.ajf, ptr %i.ajc, align 4, !tbaa !31
  br i1 %.not.i.i.i308, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i601.1, label %bb.ex

bb.ex:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i602
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.ajh = load i32, ptr %i.ajg, align 4, !tbaa !33
  %i.aji = add i32 %i.ajh, 1
  store i32 %i.aji, ptr %i.ajg, align 4, !tbaa !33
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i601.1

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i601.1: ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i602, %bb.ex
  %i.ajj = load i32, ptr %i.ajc, align 4, !tbaa !31 ; 2 uses
  %i.ajk = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i604, i64 -8
  %i.ajl = load i32, ptr %i.ajk, align 4, !tbaa !31
  %i.ajm = icmp eq i32 %i.ajj, %i.ajl
  br i1 %i.ajm, label %bb.ey, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i602.1

bb.ey:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i601.1
  invoke void @_ZN6vectorIP4sortLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aiv)
          to label %.noexc.i603.1 unwind label %bb.fb

.noexc.i603.1:                                    ; preds = %bb.ey
  %.pre.i.i.i.i.i604.1 = load ptr, ptr %i.aiv, align 8, !tbaa !29 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i605.1 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i604.1, i64 -4
  %.pre2.i.i.i.i.i606.1 = load i32, ptr %.phi.trans.insert.i.i.i.i.i605.1, align 4, !tbaa !31
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i602.1

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i602.1: ; preds = %.noexc.i603.1, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i601.1
  %i.ajn = phi ptr [ %.pre.i.i.i.i.i604.1, %.noexc.i603.1 ], [ %.pre.i.i.i.i.i604, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i601.1 ] ; 4 uses
  %i.ajo = phi i32 [ %.pre2.i.i.i.i.i606.1, %.noexc.i603.1 ], [ %i.ajj, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i601.1 ] ; 2 uses
  %i.ajp = getelementptr inbounds i8, ptr %i.ajn, i64 -4 ; 2 uses
  %i.ajq = zext i32 %i.ajo to i64
  %i.ajr = getelementptr inbounds nuw [8 x i8], ptr %i.ajn, i64 %i.ajq
  store ptr %i.q, ptr %i.ajr, align 8, !tbaa !42
  %i.ajs = add i32 %i.ajo, 1
  store i32 %i.ajs, ptr %i.ajp, align 4, !tbaa !31
  br i1 %.not.i.i.i, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i601.2, label %bb.ez

bb.ez:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i602.1
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.aju = load i32, ptr %i.ajt, align 4, !tbaa !33
  %i.ajv = add i32 %i.aju, 1
  store i32 %i.ajv, ptr %i.ajt, align 4, !tbaa !33
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i601.2

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i601.2: ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i602.1, %bb.ez
  %i.ajw = load i32, ptr %i.ajp, align 4, !tbaa !31 ; 2 uses
  %i.ajx = getelementptr inbounds i8, ptr %i.ajn, i64 -8
  %i.ajy = load i32, ptr %i.ajx, align 4, !tbaa !31
  %i.ajz = icmp eq i32 %i.ajw, %i.ajy
  br i1 %i.ajz, label %bb.fa, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i602.2

bb.fa:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i601.2
end_hunk_2
begin_hunk_3_@_ZN15seq_decl_plugin4initEv:bb.a

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i650.2: ; preds = %.noexc.i651.2, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i649.2
  %i.apc = phi ptr [ %.pre.i.i.i.i.i652.2, %.noexc.i651.2 ], [ %i.aop, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i649.2 ] ; 2 uses
  %i.apd = phi i32 [ %.pre2.i.i.i.i.i654.2, %.noexc.i651.2 ], [ %i.aoy, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i649.2 ] ; 2 uses
  %i.ape = getelementptr inbounds i8, ptr %i.apc, i64 -4
  %i.apf = zext i32 %i.apd to i64
  %i.apg = getelementptr inbounds nuw [8 x i8], ptr %i.apc, i64 %i.apf
  store ptr %i.w, ptr %i.apg, align 8, !tbaa !42
  %i.aph = add i32 %i.apd, 1
  store i32 %i.aph, ptr %i.ape, align 4, !tbaa !31
  %i.api = load ptr, ptr %i.y, align 8, !tbaa !30
  %i.apj = getelementptr inbounds nuw i8, ptr %i.api, i64 504
  store ptr %i.anr, ptr %i.apj, align 8, !tbaa !37
  %i.apk = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 48)
          to label %bb.fx unwind label %.loopexit.split-lp ; 7 uses

bb.fw:                                            ; preds = %bb.fv, %bb.ft, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i649
  %i.apl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4sort11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.anw) #27
  call void @_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.anu) #27
  br label %.body

bb.fx:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i650.2
  invoke void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.apk, ptr noundef nonnull @.str.48)
          to label %.noexc671 unwind label %.loopexit.split-lp

.noexc671:                                        ; preds = %bb.fx
  %i.apm = getelementptr inbounds nuw i8, ptr %i.apk, i64 8
  store i32 0, ptr %i.apm, align 8, !tbaa !190
  %i.apn = getelementptr inbounds nuw i8, ptr %i.apk, i64 16 ; 2 uses
  store i64 %i.aq, ptr %i.apn, align 8, !tbaa !195
  %i.apo = getelementptr inbounds nuw i8, ptr %i.apk, i64 24 ; 7 uses
  store ptr null, ptr %i.apo, align 8, !tbaa !29
  %i.app = getelementptr inbounds nuw i8, ptr %i.apk, i64 32 ; 2 uses
  store ptr %i.i, ptr %i.app, align 8, !tbaa !71
  %i.apq = getelementptr inbounds nuw i8, ptr %i.apk, i64 40
  store ptr %i.f, ptr %i.apq, align 8, !tbaa !195
  br i1 %.not.i.i.i.i.i.i.i648, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i665, label %bb.fy

bb.fy:                                            ; preds = %.noexc671
  %i.apr = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.aps = load i32, ptr %i.apr, align 4, !tbaa !33
  %i.apt = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.apu = add i32 %i.aps, 2
  store i32 %i.apu, ptr %i.apt, align 4, !tbaa !33
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i665

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i665: ; preds = %.noexc671, %bb.fy
  invoke void @_ZN6vectorIP4sortLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.apo)
          to label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i666 unwind label %bb.gd

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i666: ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i665
  %.pre.i.i.i.i.i668 = load ptr, ptr %i.apo, align 8, !tbaa !29 ; 5 uses
  %.phi.trans.insert.i.i.i.i.i669 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i668, i64 -4
  %.pre2.i.i.i.i.i670 = load i32, ptr %.phi.trans.insert.i.i.i.i.i669, align 4, !tbaa !31 ; 2 uses
  %i.apv = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i668, i64 -4 ; 2 uses
  %i.apw = zext i32 %.pre2.i.i.i.i.i670 to i64
  %i.apx = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i.i668, i64 %i.apw
  store ptr %i.i, ptr %i.apx, align 8, !tbaa !42
  %i.apy = add i32 %.pre2.i.i.i.i.i670, 1
  store i32 %i.apy, ptr %i.apv, align 4, !tbaa !31
  br i1 %.not.i.i.i.i.i.i.i648, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i665.1, label %bb.fz

bb.fz:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i666
  %i.apz = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.aqa = load i32, ptr %i.apz, align 4, !tbaa !33
  %i.aqb = add i32 %i.aqa, 1
  store i32 %i.aqb, ptr %i.apz, align 4, !tbaa !33
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i665.1

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i665.1: ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i666, %bb.fz
  %i.aqc = load i32, ptr %i.apv, align 4, !tbaa !31 ; 2 uses
  %i.aqd = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i668, i64 -8
  %i.aqe = load i32, ptr %i.aqd, align 4, !tbaa !31
  %i.aqf = icmp eq i32 %i.aqc, %i.aqe
  br i1 %i.aqf, label %bb.ga, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i666.1

bb.ga:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i665.1
  invoke void @_ZN6vectorIP4sortLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.apo)
          to label %.noexc.i667.1 unwind label %bb.gd

.noexc.i667.1:                                    ; preds = %bb.ga
  %.pre.i.i.i.i.i668.1 = load ptr, ptr %i.apo, align 8, !tbaa !29 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i669.1 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i668.1, i64 -4
  %.pre2.i.i.i.i.i670.1 = load i32, ptr %.phi.trans.insert.i.i.i.i.i669.1, align 4, !tbaa !31
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i666.1

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i666.1: ; preds = %.noexc.i667.1, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i665.1
  %i.aqg = phi ptr [ %.pre.i.i.i.i.i668.1, %.noexc.i667.1 ], [ %.pre.i.i.i.i.i668, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i665.1 ] ; 4 uses
  %i.aqh = phi i32 [ %.pre2.i.i.i.i.i670.1, %.noexc.i667.1 ], [ %i.aqc, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i665.1 ] ; 2 uses
  %i.aqi = getelementptr inbounds i8, ptr %i.aqg, i64 -4 ; 2 uses
  %i.aqj = zext i32 %i.aqh to i64
  %i.aqk = getelementptr inbounds nuw [8 x i8], ptr %i.aqg, i64 %i.aqj
  store ptr %i.i, ptr %i.aqk, align 8, !tbaa !42
  %i.aql = add i32 %i.aqh, 1
  store i32 %i.aql, ptr %i.aqi, align 4, !tbaa !31
  br i1 %.not.i.i.i.i.i.i.i648, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i665.2, label %bb.gb

bb.gb:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i666.1
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.aqn = load i32, ptr %i.aqm, align 4, !tbaa !33
  %i.aqo = add i32 %i.aqn, 1
  store i32 %i.aqo, ptr %i.aqm, align 4, !tbaa !33
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i665.2

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i665.2: ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i666.1, %bb.gb
  %i.aqp = load i32, ptr %i.aqi, align 4, !tbaa !31 ; 2 uses
  %i.aqq = getelementptr inbounds i8, ptr %i.aqg, i64 -8
  %i.aqr = load i32, ptr %i.aqq, align 4, !tbaa !31
  %i.aqs = icmp eq i32 %i.aqp, %i.aqr
  br i1 %i.aqs, label %bb.gc, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i666.2

bb.gc:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i665.2
  invoke void @_ZN6vectorIP4sortLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.apo)
          to label %.noexc.i667.2 unwind label %bb.gd

.noexc.i667.2:                                    ; preds = %bb.gc
  %.pre.i.i.i.i.i668.2 = load ptr, ptr %i.apo, align 8, !tbaa !29 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i669.2 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i668.2, i64 -4
  %.pre2.i.i.i.i.i670.2 = load i32, ptr %.phi.trans.insert.i.i.i.i.i669.2, align 4, !tbaa !31
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i666.2

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i666.2: ; preds = %.noexc.i667.2, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i665.2
  %i.aqt = phi ptr [ %.pre.i.i.i.i.i668.2, %.noexc.i667.2 ], [ %i.aqg, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i665.2 ] ; 2 uses
  %i.aqu = phi i32 [ %.pre2.i.i.i.i.i670.2, %.noexc.i667.2 ], [ %i.aqp, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i665.2 ] ; 2 uses
  %i.aqv = getelementptr inbounds i8, ptr %i.aqt, i64 -4
  %i.aqw = zext i32 %i.aqu to i64
  %i.aqx = getelementptr inbounds nuw [8 x i8], ptr %i.aqt, i64 %i.aqw
  store ptr %i.i, ptr %i.aqx, align 8, !tbaa !42
  %i.aqy = add i32 %i.aqu, 1
  store i32 %i.aqy, ptr %i.aqv, align 4, !tbaa !31
  %i.aqz = load ptr, ptr %i.y, align 8, !tbaa !30
  %i.ara = getelementptr inbounds nuw i8, ptr %i.aqz, i64 424
  store ptr %i.apk, ptr %i.ara, align 8, !tbaa !37
  %i.arb = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 48)
          to label %bb.ge unwind label %.loopexit.split-lp ; 7 uses

bb.gd:                                            ; preds = %bb.gc, %bb.ga, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i665
  %i.arc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4sort11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.app) #27
  call void @_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.apn) #27
  br label %.body

bb.ge:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i666.2
  invoke void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.arb, ptr noundef nonnull @.str.49)
          to label %.noexc678 unwind label %.loopexit.split-lp

.noexc678:                                        ; preds = %bb.ge
  %i.ard = getelementptr inbounds nuw i8, ptr %i.arb, i64 8
  store i32 1, ptr %i.ard, align 8, !tbaa !190
  %i.are = getelementptr inbounds nuw i8, ptr %i.arb, i64 16
  store i64 %i.aq, ptr %i.are, align 8, !tbaa !195
  %i.arf = getelementptr inbounds nuw i8, ptr %i.arb, i64 24
  store ptr null, ptr %i.arf, align 8, !tbaa !29
  %i.arg = getelementptr inbounds nuw i8, ptr %i.arb, i64 32
  store ptr %i.i, ptr %i.arg, align 8, !tbaa !71
  %i.arh = getelementptr inbounds nuw i8, ptr %i.arb, i64 40
  store ptr %i.f, ptr %i.arh, align 8, !tbaa !195
  br i1 %.not.i.i.i.i.i.i.i648, label %_ZN15seq_decl_plugin4psigC2ER11ast_managerPKcjjPKP4sortS6_.exit679, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i676

_ZN11ast_manager7inc_refEP3ast.exit.i.i.i676:     ; preds = %.noexc678
  %i.ari = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.arj = load i32, ptr %i.ari, align 4, !tbaa !33
  %i.ark = add i32 %i.arj, 1
  store i32 %i.ark, ptr %i.ari, align 4, !tbaa !33
  br label %_ZN15seq_decl_plugin4psigC2ER11ast_managerPKcjjPKP4sortS6_.exit679

_ZN15seq_decl_plugin4psigC2ER11ast_managerPKcjjPKP4sortS6_.exit679: ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i676, %.noexc678
  %i.arl = load ptr, ptr %i.y, align 8, !tbaa !30
  %i.arm = getelementptr inbounds nuw i8, ptr %i.arl, i64 416
  store ptr %i.arb, ptr %i.arm, align 8, !tbaa !37
  %i.arn = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 48)
          to label %bb.gf unwind label %.loopexit.split-lp ; 7 uses

bb.gf:                                            ; preds = %_ZN15seq_decl_plugin4psigC2ER11ast_managerPKcjjPKP4sortS6_.exit679
  invoke void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.arn, ptr noundef nonnull @.str.50)
          to label %.noexc692 unwind label %.loopexit.split-lp

.noexc692:                                        ; preds = %bb.gf
  %i.aro = getelementptr inbounds nuw i8, ptr %i.arn, i64 8
  store i32 0, ptr %i.aro, align 8, !tbaa !190
  %i.arp = getelementptr inbounds nuw i8, ptr %i.arn, i64 16 ; 2 uses
  store i64 %i.aq, ptr %i.arp, align 8, !tbaa !195
  %i.arq = getelementptr inbounds nuw i8, ptr %i.arn, i64 24 ; 3 uses
  store ptr null, ptr %i.arq, align 8, !tbaa !29
  %i.arr = getelementptr inbounds nuw i8, ptr %i.arn, i64 32 ; 2 uses
  store ptr %i.i, ptr %i.arr, align 8, !tbaa !71
  %i.ars = getelementptr inbounds nuw i8, ptr %i.arn, i64 40
  store ptr %i.f, ptr %i.ars, align 8, !tbaa !195
  br i1 %.not.i.i.i.i.i.i.i648, label %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i682, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i681

_ZN11ast_manager7inc_refEP3ast.exit.i.i.i681:     ; preds = %.noexc692
  %i.art = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.aru = load i32, ptr %i.art, align 4, !tbaa !33
  %i.arv = add i32 %i.aru, 1
  store i32 %i.arv, ptr %i.art, align 4, !tbaa !33
  br label %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i682

_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i682: ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i681, %.noexc692
  br i1 %.not.i.i.i.i.i.i.i169.1, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i686, label %bb.gg

bb.gg:                                            ; preds = %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i682
  %i.arw = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.arx = load i32, ptr %i.arw, align 4, !tbaa !33
  %i.ary = add i32 %i.arx, 1
  store i32 %i.ary, ptr %i.arw, align 4, !tbaa !33
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i686

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i686: ; preds = %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i682, %bb.gg
  invoke void @_ZN6vectorIP4sortLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.arq)
          to label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i687 unwind label %bb.gh

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i687: ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i686
  %.pre.i.i.i.i.i689 = load ptr, ptr %i.arq, align 8, !tbaa !29 ; 3 uses
  %.phi.trans.insert.i.i.i.i.i690 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i689, i64 -4
  %.pre2.i.i.i.i.i691 = load i32, ptr %.phi.trans.insert.i.i.i.i.i690, align 4, !tbaa !31 ; 2 uses
  %18 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i689, i64 -4
  %i.arz = zext i32 %.pre2.i.i.i.i.i691 to i64
  %i.asa = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i.i689, i64 %i.arz
  store ptr %i.w, ptr %i.asa, align 8, !tbaa !42
  %i.asb = add i32 %.pre2.i.i.i.i.i691, 1
  store i32 %i.asb, ptr %18, align 4, !tbaa !31
  %i.asc = load ptr, ptr %i.y, align 8, !tbaa !30
  %i.asd = getelementptr inbounds nuw i8, ptr %i.asc, i64 344
  store ptr %i.arn, ptr %i.asd, align 8, !tbaa !37
  %i.ase = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 48)
          to label %bb.gi unwind label %.loopexit.split-lp ; 7 uses

bb.gh:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i686
  %i.asf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4sort11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.arr) #27
  call void @_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.arp) #27
  br label %.body

bb.gi:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i687
  invoke void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.ase, ptr noundef nonnull @.str.51)
          to label %.noexc708 unwind label %.loopexit.split-lp

.noexc708:                                        ; preds = %bb.gi
  %i.asg = getelementptr inbounds nuw i8, ptr %i.ase, i64 8
  store i32 0, ptr %i.asg, align 8, !tbaa !190
  %i.ash = getelementptr inbounds nuw i8, ptr %i.ase, i64 16 ; 2 uses
  store i64 %i.aq, ptr %i.ash, align 8, !tbaa !195
  %i.asi = getelementptr inbounds nuw i8, ptr %i.ase, i64 24 ; 3 uses
  store ptr null, ptr %i.asi, align 8, !tbaa !29
  %i.asj = getelementptr inbounds nuw i8, ptr %i.ase, i64 32 ; 2 uses
  store ptr %i.w, ptr %i.asj, align 8, !tbaa !71
  %i.ask = getelementptr inbounds nuw i8, ptr %i.ase, i64 40
  store ptr %i.f, ptr %i.ask, align 8, !tbaa !195
  br i1 %.not.i.i.i.i.i.i.i169.1, label %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i698, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i697

_ZN11ast_manager7inc_refEP3ast.exit.i.i.i697:     ; preds = %.noexc708
  %i.asl = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.asm = load i32, ptr %i.asl, align 4, !tbaa !33
  %i.asn = add i32 %i.asm, 1
  store i32 %i.asn, ptr %i.asl, align 4, !tbaa !33
  br label %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i698

_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i698: ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i697, %.noexc708
  br i1 %.not.i.i.i.i.i.i.i648, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i702, label %bb.gj

bb.gj:                                            ; preds = %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i698
  %i.aso = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.asp = load i32, ptr %i.aso, align 4, !tbaa !33
  %i.asq = add i32 %i.asp, 1
  store i32 %i.asq, ptr %i.aso, align 4, !tbaa !33
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i702

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i702: ; preds = %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i698, %bb.gj
  invoke void @_ZN6vectorIP4sortLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.asi)
          to label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i703 unwind label %bb.gk

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i703: ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i702
  %.pre.i.i.i.i.i705 = load ptr, ptr %i.asi, align 8, !tbaa !29 ; 3 uses
  %.phi.trans.insert.i.i.i.i.i706 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i705, i64 -4
  %.pre2.i.i.i.i.i707 = load i32, ptr %.phi.trans.insert.i.i.i.i.i706, align 4, !tbaa !31 ; 2 uses
  %19 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i705, i64 -4
  %i.asr = zext i32 %.pre2.i.i.i.i.i707 to i64
  %i.ass = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i.i705, i64 %i.asr
  store ptr %i.i, ptr %i.ass, align 8, !tbaa !42
  %i.ast = add i32 %.pre2.i.i.i.i.i707, 1
  store i32 %i.ast, ptr %19, align 4, !tbaa !31
  %i.asu = load ptr, ptr %i.y, align 8, !tbaa !30
  %i.asv = getelementptr inbounds nuw i8, ptr %i.asu, i64 352
  store ptr %i.ase, ptr %i.asv, align 8, !tbaa !37
  %i.asw = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 48)
          to label %bb.gl unwind label %.loopexit.split-lp ; 7 uses

bb.gk:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i702
  %i.asx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4sort11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.asj) #27
  call void @_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.ash) #27
  br label %.body

bb.gl:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i703
  invoke void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.asw, ptr noundef nonnull @.str.52)
          to label %.noexc724 unwind label %.loopexit.split-lp

.noexc724:                                        ; preds = %bb.gl
  %i.asy = getelementptr inbounds nuw i8, ptr %i.asw, i64 8
  store i32 0, ptr %i.asy, align 8, !tbaa !190
  %i.asz = getelementptr inbounds nuw i8, ptr %i.asw, i64 16 ; 2 uses
  store i64 %i.aq, ptr %i.asz, align 8, !tbaa !195
  %i.ata = getelementptr inbounds nuw i8, ptr %i.asw, i64 24 ; 5 uses
  store ptr null, ptr %i.ata, align 8, !tbaa !29
  %i.atb = getelementptr inbounds nuw i8, ptr %i.asw, i64 32 ; 2 uses
  store ptr %i.u, ptr %i.atb, align 8, !tbaa !71
  %i.atc = getelementptr inbounds nuw i8, ptr %i.asw, i64 40
  store ptr %i.f, ptr %i.atc, align 8, !tbaa !195
  br i1 %.not.i.i.i116, label %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i714, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i713

_ZN11ast_manager7inc_refEP3ast.exit.i.i.i713:     ; preds = %.noexc724
  %i.atd = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.ate = load i32, ptr %i.atd, align 4, !tbaa !33
  %i.atf = add i32 %i.ate, 1
  store i32 %i.atf, ptr %i.atd, align 4, !tbaa !33
  br label %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i714

_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i714: ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i713, %.noexc724
  br i1 %.not.i.i.i.i.i.i.i648, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i718, label %bb.gm

bb.gm:                                            ; preds = %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i714
  %i.atg = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.ath = load i32, ptr %i.atg, align 4, !tbaa !33
  %i.ati = add i32 %i.ath, 1
  store i32 %i.ati, ptr %i.atg, align 4, !tbaa !33
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i718

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i718: ; preds = %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i714, %bb.gm
  invoke void @_ZN6vectorIP4sortLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ata)
          to label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i719 unwind label %bb.gp

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i719: ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i718
  %.pre.i.i.i.i.i721 = load ptr, ptr %i.ata, align 8, !tbaa !29 ; 5 uses
  %.phi.trans.insert.i.i.i.i.i722 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i721, i64 -4
  %.pre2.i.i.i.i.i723 = load i32, ptr %.phi.trans.insert.i.i.i.i.i722, align 4, !tbaa !31 ; 2 uses
  %i.atj = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i721, i64 -4 ; 2 uses
  %i.atk = zext i32 %.pre2.i.i.i.i.i723 to i64
  %i.atl = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i.i721, i64 %i.atk
  store ptr %i.i, ptr %i.atl, align 8, !tbaa !42
  %i.atm = add i32 %.pre2.i.i.i.i.i723, 1
  store i32 %i.atm, ptr %i.atj, align 4, !tbaa !31
  br i1 %.not.i.i.i.i.i.i.i648, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i718.1, label %bb.gn

bb.gn:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i719
  %i.atn = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.ato = load i32, ptr %i.atn, align 4, !tbaa !33
  %i.atp = add i32 %i.ato, 1
  store i32 %i.atp, ptr %i.atn, align 4, !tbaa !33
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i718.1

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i718.1: ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i719, %bb.gn
  %i.atq = load i32, ptr %i.atj, align 4, !tbaa !31 ; 2 uses
  %i.atr = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i721, i64 -8
  %i.ats = load i32, ptr %i.atr, align 4, !tbaa !31
  %i.att = icmp eq i32 %i.atq, %i.ats
  br i1 %i.att, label %bb.go, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i719.1

bb.go:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i718.1
  invoke void @_ZN6vectorIP4sortLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ata)
          to label %.noexc.i720.1 unwind label %bb.gp

.noexc.i720.1:                                    ; preds = %bb.go
  %.pre.i.i.i.i.i721.1 = load ptr, ptr %i.ata, align 8, !tbaa !29 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i722.1 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i721.1, i64 -4
  %.pre2.i.i.i.i.i723.1 = load i32, ptr %.phi.trans.insert.i.i.i.i.i722.1, align 4, !tbaa !31
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i719.1

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i719.1: ; preds = %.noexc.i720.1, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i718.1
  %i.atu = phi ptr [ %.pre.i.i.i.i.i721.1, %.noexc.i720.1 ], [ %.pre.i.i.i.i.i721, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i718.1 ] ; 2 uses
  %i.atv = phi i32 [ %.pre2.i.i.i.i.i723.1, %.noexc.i720.1 ], [ %i.atq, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i718.1 ] ; 2 uses
  %i.atw = getelementptr inbounds i8, ptr %i.atu, i64 -4
  %i.atx = zext i32 %i.atv to i64
  %i.aty = getelementptr inbounds nuw [8 x i8], ptr %i.atu, i64 %i.atx
  store ptr %i.i, ptr %i.aty, align 8, !tbaa !42
  %i.atz = add i32 %i.atv, 1
  store i32 %i.atz, ptr %i.atw, align 4, !tbaa !31
  %i.aua = load ptr, ptr %i.y, align 8, !tbaa !30
  %i.aub = getelementptr inbounds nuw i8, ptr %i.aua, i64 376
  store ptr %i.asw, ptr %i.aub, align 8, !tbaa !37
  %i.auc = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 48)
          to label %bb.gq unwind label %.loopexit.split-lp ; 7 uses

bb.gp:                                            ; preds = %bb.go, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i718
  %i.aud = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4sort11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.atb) #27
  call void @_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.asz) #27
  br label %.body

bb.gq:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i719.1
  invoke void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.auc, ptr noundef nonnull @.str.53)
          to label %.noexc740 unwind label %.loopexit.split-lp

.noexc740:                                        ; preds = %bb.gq
  %i.aue = getelementptr inbounds nuw i8, ptr %i.auc, i64 8
  store i32 0, ptr %i.aue, align 8, !tbaa !190
  %i.auf = getelementptr inbounds nuw i8, ptr %i.auc, i64 16 ; 2 uses
  store i64 %i.aq, ptr %i.auf, align 8, !tbaa !195
  %i.aug = getelementptr inbounds nuw i8, ptr %i.auc, i64 24 ; 5 uses
  store ptr null, ptr %i.aug, align 8, !tbaa !29
  %i.auh = getelementptr inbounds nuw i8, ptr %i.auc, i64 32 ; 2 uses
  store ptr %i.u, ptr %i.auh, align 8, !tbaa !71
  %i.aui = getelementptr inbounds nuw i8, ptr %i.auc, i64 40
  store ptr %i.f, ptr %i.aui, align 8, !tbaa !195
  br i1 %.not.i.i.i116, label %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i730, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i729

_ZN11ast_manager7inc_refEP3ast.exit.i.i.i729:     ; preds = %.noexc740
  %i.auj = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.auk = load i32, ptr %i.auj, align 4, !tbaa !33
  %i.aul = add i32 %i.auk, 1
  store i32 %i.aul, ptr %i.auj, align 4, !tbaa !33
  br label %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i730

_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i730: ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i729, %.noexc740
  br i1 %.not.i.i.i.i.i.i.i648, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i734, label %bb.gr

bb.gr:                                            ; preds = %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i730
  %i.aum = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.aun = load i32, ptr %i.aum, align 4, !tbaa !33
  %i.auo = add i32 %i.aun, 1
  store i32 %i.auo, ptr %i.aum, align 4, !tbaa !33
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i734

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i734: ; preds = %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i730, %bb.gr
  invoke void @_ZN6vectorIP4sortLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aug)
          to label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i735 unwind label %bb.gu

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i735: ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i734
  %.pre.i.i.i.i.i737 = load ptr, ptr %i.aug, align 8, !tbaa !29 ; 5 uses
  %.phi.trans.insert.i.i.i.i.i738 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i737, i64 -4
  %.pre2.i.i.i.i.i739 = load i32, ptr %.phi.trans.insert.i.i.i.i.i738, align 4, !tbaa !31 ; 2 uses
  %i.aup = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i737, i64 -4 ; 2 uses
  %i.auq = zext i32 %.pre2.i.i.i.i.i739 to i64
  %i.aur = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i.i737, i64 %i.auq
  store ptr %i.i, ptr %i.aur, align 8, !tbaa !42
  %i.aus = add i32 %.pre2.i.i.i.i.i739, 1
  store i32 %i.aus, ptr %i.aup, align 4, !tbaa !31
  br i1 %.not.i.i.i.i.i.i.i648, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i734.1, label %bb.gs

bb.gs:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i735
  %i.aut = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.auu = load i32, ptr %i.aut, align 4, !tbaa !33
  %i.auv = add i32 %i.auu, 1
  store i32 %i.auv, ptr %i.aut, align 4, !tbaa !33
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i734.1

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i734.1: ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i735, %bb.gs
  %i.auw = load i32, ptr %i.aup, align 4, !tbaa !31 ; 2 uses
  %i.aux = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i737, i64 -8
  %i.auy = load i32, ptr %i.aux, align 4, !tbaa !31
  %i.auz = icmp eq i32 %i.auw, %i.auy
  br i1 %i.auz, label %bb.gt, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i735.1

bb.gt:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i734.1
  invoke void @_ZN6vectorIP4sortLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aug)
          to label %.noexc.i736.1 unwind label %bb.gu

.noexc.i736.1:                                    ; preds = %bb.gt
  %.pre.i.i.i.i.i737.1 = load ptr, ptr %i.aug, align 8, !tbaa !29 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i738.1 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i737.1, i64 -4
  %.pre2.i.i.i.i.i739.1 = load i32, ptr %.phi.trans.insert.i.i.i.i.i738.1, align 4, !tbaa !31
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i735.1

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i735.1: ; preds = %.noexc.i736.1, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i734.1
  %i.ava = phi ptr [ %.pre.i.i.i.i.i737.1, %.noexc.i736.1 ], [ %.pre.i.i.i.i.i737, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i734.1 ] ; 2 uses
  %i.avb = phi i32 [ %.pre2.i.i.i.i.i739.1, %.noexc.i736.1 ], [ %i.auw, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i734.1 ] ; 2 uses
  %i.avc = getelementptr inbounds i8, ptr %i.ava, i64 -4
  %i.avd = zext i32 %i.avb to i64
  %i.ave = getelementptr inbounds nuw [8 x i8], ptr %i.ava, i64 %i.avd
  store ptr %i.i, ptr %i.ave, align 8, !tbaa !42
  %i.avf = add i32 %i.avb, 1
  store i32 %i.avf, ptr %i.avc, align 4, !tbaa !31
  %i.avg = load ptr, ptr %i.y, align 8, !tbaa !30
  %i.avh = getelementptr inbounds nuw i8, ptr %i.avg, i64 384
  store ptr %i.auc, ptr %i.avh, align 8, !tbaa !37
  %i.avi = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 48)
          to label %bb.gv unwind label %.loopexit.split-lp ; 7 uses

bb.gu:                                            ; preds = %bb.gt, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i734
  %i.avj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4sort11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.auh) #27
  call void @_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.auf) #27
  br label %.body

bb.gv:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i735.1
  invoke void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.avi, ptr noundef nonnull @.str.54)
          to label %.noexc756 unwind label %.loopexit.split-lp

.noexc756:                                        ; preds = %bb.gv
  %i.avk = getelementptr inbounds nuw i8, ptr %i.avi, i64 8
  store i32 0, ptr %i.avk, align 8, !tbaa !190
  %i.avl = getelementptr inbounds nuw i8, ptr %i.avi, i64 16 ; 2 uses
  store i64 %i.aq, ptr %i.avl, align 8, !tbaa !195
  %i.avm = getelementptr inbounds nuw i8, ptr %i.avi, i64 24 ; 3 uses
  store ptr null, ptr %i.avm, align 8, !tbaa !29
  %i.avn = getelementptr inbounds nuw i8, ptr %i.avi, i64 32 ; 2 uses
  store ptr %i.u, ptr %i.avn, align 8, !tbaa !71
  %i.avo = getelementptr inbounds nuw i8, ptr %i.avi, i64 40
  store ptr %i.f, ptr %i.avo, align 8, !tbaa !195
  br i1 %.not.i.i.i116, label %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i746, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i745

_ZN11ast_manager7inc_refEP3ast.exit.i.i.i745:     ; preds = %.noexc756
  %i.avp = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.avq = load i32, ptr %i.avp, align 4, !tbaa !33
  %i.avr = add i32 %i.avq, 1
  store i32 %i.avr, ptr %i.avp, align 4, !tbaa !33
  br label %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i746

_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i746: ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i745, %.noexc756
  br i1 %.not.i.i.i.i.i.i.i648, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i750, label %bb.gw

bb.gw:                                            ; preds = %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i746
  %i.avs = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.avt = load i32, ptr %i.avs, align 4, !tbaa !33
  %i.avu = add i32 %i.avt, 1
  store i32 %i.avu, ptr %i.avs, align 4, !tbaa !33
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i750

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i750: ; preds = %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i746, %bb.gw
  invoke void @_ZN6vectorIP4sortLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.avm)
          to label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i751 unwind label %bb.gx

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i751: ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i750
  %.pre.i.i.i.i.i753 = load ptr, ptr %i.avm, align 8, !tbaa !29 ; 3 uses
  %.phi.trans.insert.i.i.i.i.i754 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i753, i64 -4
  %.pre2.i.i.i.i.i755 = load i32, ptr %.phi.trans.insert.i.i.i.i.i754, align 4, !tbaa !31 ; 2 uses
  %20 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i753, i64 -4
  %i.avv = zext i32 %.pre2.i.i.i.i.i755 to i64
  %i.avw = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i.i753, i64 %i.avv
  store ptr %i.i, ptr %i.avw, align 8, !tbaa !42
  %i.avx = add i32 %.pre2.i.i.i.i.i755, 1
  store i32 %i.avx, ptr %20, align 4, !tbaa !31
  %i.avy = load ptr, ptr %i.y, align 8, !tbaa !30
  %i.avz = getelementptr inbounds nuw i8, ptr %i.avy, i64 392
  store ptr %i.avi, ptr %i.avz, align 8, !tbaa !37
  %i.awa = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 48)
          to label %bb.gy unwind label %.loopexit.split-lp ; 7 uses

bb.gx:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i750
  %i.awb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4sort11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.avn) #27
  call void @_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.avl) #27
  br label %.body

bb.gy:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i751
  invoke void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.awa, ptr noundef nonnull @.str.55)
          to label %.noexc772 unwind label %.loopexit.split-lp

.noexc772:                                        ; preds = %bb.gy
  %i.awc = getelementptr inbounds nuw i8, ptr %i.awa, i64 8
  store i32 0, ptr %i.awc, align 8, !tbaa !190
  %i.awd = getelementptr inbounds nuw i8, ptr %i.awa, i64 16 ; 2 uses
  store i64 %i.aq, ptr %i.awd, align 8, !tbaa !195
  %i.awe = getelementptr inbounds nuw i8, ptr %i.awa, i64 24 ; 3 uses
  store ptr null, ptr %i.awe, align 8, !tbaa !29
  %i.awf = getelementptr inbounds nuw i8, ptr %i.awa, i64 32 ; 2 uses
  store ptr %i.w, ptr %i.awf, align 8, !tbaa !71
  %i.awg = getelementptr inbounds nuw i8, ptr %i.awa, i64 40
  store ptr %i.f, ptr %i.awg, align 8, !tbaa !195
  br i1 %.not.i.i.i.i.i.i.i169.1, label %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i762, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i761

_ZN11ast_manager7inc_refEP3ast.exit.i.i.i761:     ; preds = %.noexc772
  %i.awh = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.awi = load i32, ptr %i.awh, align 4, !tbaa !33
  %i.awj = add i32 %i.awi, 1
  store i32 %i.awj, ptr %i.awh, align 4, !tbaa !33
  br label %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i762

_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i762: ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i761, %.noexc772
  br i1 %.not.i.i.i.i.i.i.i648, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i766, label %bb.gz

bb.gz:                                            ; preds = %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i762
  %i.awk = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.awl = load i32, ptr %i.awk, align 4, !tbaa !33
  %i.awm = add i32 %i.awl, 1
  store i32 %i.awm, ptr %i.awk, align 4, !tbaa !33
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i766

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i766: ; preds = %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i762, %bb.gz
  invoke void @_ZN6vectorIP4sortLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.awe)
          to label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i767 unwind label %bb.ha

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i767: ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i766
  %.pre.i.i.i.i.i769 = load ptr, ptr %i.awe, align 8, !tbaa !29 ; 3 uses
  %.phi.trans.insert.i.i.i.i.i770 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i769, i64 -4
  %.pre2.i.i.i.i.i771 = load i32, ptr %.phi.trans.insert.i.i.i.i.i770, align 4, !tbaa !31 ; 2 uses
  %21 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i769, i64 -4
  %i.awn = zext i32 %.pre2.i.i.i.i.i771 to i64
  %i.awo = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i.i769, i64 %i.awn
  store ptr %i.i, ptr %i.awo, align 8, !tbaa !42
  %i.awp = add i32 %.pre2.i.i.i.i.i771, 1
  store i32 %i.awp, ptr %21, align 4, !tbaa !31
  %i.awq = load ptr, ptr %i.y, align 8, !tbaa !30
  %i.awr = getelementptr inbounds nuw i8, ptr %i.awq, i64 400
  store ptr %i.awa, ptr %i.awr, align 8, !tbaa !37
  %i.aws = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 48)
          to label %bb.hb unwind label %.loopexit.split-lp ; 7 uses

bb.ha:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i766
  %i.awt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4sort11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.awf) #27
  call void @_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.awd) #27
  br label %.body

bb.hb:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i767
  invoke void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.aws, ptr noundef nonnull @.str.56)
          to label %.noexc788 unwind label %.loopexit.split-lp

.noexc788:                                        ; preds = %bb.hb
  %i.awu = getelementptr inbounds nuw i8, ptr %i.aws, i64 8
  store i32 0, ptr %i.awu, align 8, !tbaa !190
  %i.awv = getelementptr inbounds nuw i8, ptr %i.aws, i64 16 ; 2 uses
  store i64 %i.aq, ptr %i.awv, align 8, !tbaa !195
  %i.aww = getelementptr inbounds nuw i8, ptr %i.aws, i64 24 ; 3 uses
  store ptr null, ptr %i.aww, align 8, !tbaa !29
  %i.awx = getelementptr inbounds nuw i8, ptr %i.aws, i64 32 ; 2 uses
  store ptr %i.i, ptr %i.awx, align 8, !tbaa !71
  %i.awy = getelementptr inbounds nuw i8, ptr %i.aws, i64 40
  store ptr %i.f, ptr %i.awy, align 8, !tbaa !195
  br i1 %.not.i.i.i.i.i.i.i648, label %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i778, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i777

_ZN11ast_manager7inc_refEP3ast.exit.i.i.i777:     ; preds = %.noexc788
  %i.awz = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.axa = load i32, ptr %i.awz, align 4, !tbaa !33
  %i.axb = add i32 %i.axa, 1
  store i32 %i.axb, ptr %i.awz, align 4, !tbaa !33
  br label %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i778

_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i778: ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i777, %.noexc788
  br i1 %.not.i.i.i.i.i.i.i169.1, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i782, label %bb.hc

bb.hc:                                            ; preds = %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i778
  %i.axc = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.axd = load i32, ptr %i.axc, align 4, !tbaa !33
  %i.axe = add i32 %i.axd, 1
  store i32 %i.axe, ptr %i.axc, align 4, !tbaa !33
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i782

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i782: ; preds = %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i778, %bb.hc
  invoke void @_ZN6vectorIP4sortLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aww)
          to label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i783 unwind label %bb.hd

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i783: ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i782
  %.pre.i.i.i.i.i785 = load ptr, ptr %i.aww, align 8, !tbaa !29 ; 3 uses
  %.phi.trans.insert.i.i.i.i.i786 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i785, i64 -4
  %.pre2.i.i.i.i.i787 = load i32, ptr %.phi.trans.insert.i.i.i.i.i786, align 4, !tbaa !31 ; 2 uses
  %22 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i785, i64 -4
  %i.axf = zext i32 %.pre2.i.i.i.i.i787 to i64
  %i.axg = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i.i785, i64 %i.axf
  store ptr %i.w, ptr %i.axg, align 8, !tbaa !42
  %i.axh = add i32 %.pre2.i.i.i.i.i787, 1
  store i32 %i.axh, ptr %22, align 4, !tbaa !31
  %i.axi = load ptr, ptr %i.y, align 8, !tbaa !30
  %i.axj = getelementptr inbounds nuw i8, ptr %i.axi, i64 408
  store ptr %i.aws, ptr %i.axj, align 8, !tbaa !37
  %i.axk = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 48)
          to label %bb.he unwind label %.loopexit.split-lp ; 7 uses

bb.hd:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i782
  %i.axl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4sort11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.awx) #27
  call void @_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.awv) #27
  br label %.body

bb.he:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i783
  invoke void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.axk, ptr noundef nonnull @.str.57)
          to label %.noexc804 unwind label %.loopexit.split-lp

.noexc804:                                        ; preds = %bb.he
  %i.axm = getelementptr inbounds nuw i8, ptr %i.axk, i64 8
  store i32 1, ptr %i.axm, align 8, !tbaa !190
  %i.axn = getelementptr inbounds nuw i8, ptr %i.axk, i64 16 ; 2 uses
  store i64 %i.aq, ptr %i.axn, align 8, !tbaa !195
  %i.axo = getelementptr inbounds nuw i8, ptr %i.axk, i64 24 ; 5 uses
  store ptr null, ptr %i.axo, align 8, !tbaa !29
  %i.axp = getelementptr inbounds nuw i8, ptr %i.axk, i64 32 ; 2 uses
  store ptr %i.i, ptr %i.axp, align 8, !tbaa !71
  %i.axq = getelementptr inbounds nuw i8, ptr %i.axk, i64 40
  store ptr %i.f, ptr %i.axq, align 8, !tbaa !195
  br i1 %.not.i.i.i.i.i.i.i648, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i798, label %bb.hf

bb.hf:                                            ; preds = %.noexc804
  %i.axr = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.axs = load i32, ptr %i.axr, align 4, !tbaa !33
  %i.axt = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.axu = add i32 %i.axs, 2
  store i32 %i.axu, ptr %i.axt, align 4, !tbaa !33
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i798

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i798: ; preds = %.noexc804, %bb.hf
  invoke void @_ZN6vectorIP4sortLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.axo)
          to label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i799 unwind label %bb.hi

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i799: ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i798
  %.pre.i.i.i.i.i801 = load ptr, ptr %i.axo, align 8, !tbaa !29 ; 5 uses
  %.phi.trans.insert.i.i.i.i.i802 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i801, i64 -4
  %.pre2.i.i.i.i.i803 = load i32, ptr %.phi.trans.insert.i.i.i.i.i802, align 4, !tbaa !31 ; 2 uses
  %i.axv = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i801, i64 -4 ; 2 uses
  %i.axw = zext i32 %.pre2.i.i.i.i.i803 to i64
  %i.axx = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i.i801, i64 %i.axw
  store ptr %i.i, ptr %i.axx, align 8, !tbaa !42
  %i.axy = add i32 %.pre2.i.i.i.i.i803, 1
  store i32 %i.axy, ptr %i.axv, align 4, !tbaa !31
  br i1 %.not.i.i.i.i.i.i.i648, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i798.1, label %bb.hg

bb.hg:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i799
  %i.axz = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.aya = load i32, ptr %i.axz, align 4, !tbaa !33
  %i.ayb = add i32 %i.aya, 1
  store i32 %i.ayb, ptr %i.axz, align 4, !tbaa !33
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i798.1

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i798.1: ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i799, %bb.hg
  %i.ayc = load i32, ptr %i.axv, align 4, !tbaa !31 ; 2 uses
  %i.ayd = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i801, i64 -8
  %i.aye = load i32, ptr %i.ayd, align 4, !tbaa !31
  %i.ayf = icmp eq i32 %i.ayc, %i.aye
  br i1 %i.ayf, label %bb.hh, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i799.1

bb.hh:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i798.1
  invoke void @_ZN6vectorIP4sortLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.axo)
          to label %.noexc.i800.1 unwind label %bb.hi

.noexc.i800.1:                                    ; preds = %bb.hh
  %.pre.i.i.i.i.i801.1 = load ptr, ptr %i.axo, align 8, !tbaa !29 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i802.1 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i801.1, i64 -4
  %.pre2.i.i.i.i.i803.1 = load i32, ptr %.phi.trans.insert.i.i.i.i.i802.1, align 4, !tbaa !31
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i799.1

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i799.1: ; preds = %.noexc.i800.1, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i798.1
  %i.ayg = phi ptr [ %.pre.i.i.i.i.i801.1, %.noexc.i800.1 ], [ %.pre.i.i.i.i.i801, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i798.1 ] ; 2 uses
  %i.ayh = phi i32 [ %.pre2.i.i.i.i.i803.1, %.noexc.i800.1 ], [ %i.ayc, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i798.1 ] ; 2 uses
  %i.ayi = getelementptr inbounds i8, ptr %i.ayg, i64 -4
  %i.ayj = zext i32 %i.ayh to i64
  %i.ayk = getelementptr inbounds nuw [8 x i8], ptr %i.ayg, i64 %i.ayj
  store ptr %i.i, ptr %i.ayk, align 8, !tbaa !42
  %i.ayl = add i32 %i.ayh, 1
  store i32 %i.ayl, ptr %i.ayi, align 4, !tbaa !31
  %i.aym = load ptr, ptr %i.y, align 8, !tbaa !30
  %i.ayn = getelementptr inbounds nuw i8, ptr %i.aym, i64 432
  store ptr %i.axk, ptr %i.ayn, align 8, !tbaa !37
  %i.ayo = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 48)
          to label %bb.hj unwind label %.loopexit.split-lp ; 7 uses

bb.hi:                                            ; preds = %bb.hh, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i798
  %i.ayp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4sort11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.axp) #27
  call void @_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.axn) #27
  br label %.body

bb.hj:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i799.1
  invoke void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.ayo, ptr noundef nonnull @.str.58)
          to label %.noexc820 unwind label %.loopexit.split-lp

.noexc820:                                        ; preds = %bb.hj
  %i.ayq = getelementptr inbounds nuw i8, ptr %i.ayo, i64 8
  store i32 0, ptr %i.ayq, align 8, !tbaa !190
  %i.ayr = getelementptr inbounds nuw i8, ptr %i.ayo, i64 16 ; 2 uses
  store i64 %i.aq, ptr %i.ayr, align 8, !tbaa !195
  %i.ays = getelementptr inbounds nuw i8, ptr %i.ayo, i64 24 ; 3 uses
  store ptr null, ptr %i.ays, align 8, !tbaa !29
  %i.ayt = getelementptr inbounds nuw i8, ptr %i.ayo, i64 32 ; 2 uses
  store ptr %i.w, ptr %i.ayt, align 8, !tbaa !71
  %i.ayu = getelementptr inbounds nuw i8, ptr %i.ayo, i64 40
  store ptr %i.f, ptr %i.ayu, align 8, !tbaa !195
  br i1 %.not.i.i.i.i.i.i.i169.1, label %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i810, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i809

_ZN11ast_manager7inc_refEP3ast.exit.i.i.i809:     ; preds = %.noexc820
  %i.ayv = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.ayw = load i32, ptr %i.ayv, align 4, !tbaa !33
  %i.ayx = add i32 %i.ayw, 1
  store i32 %i.ayx, ptr %i.ayv, align 4, !tbaa !33
  br label %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i810

_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i810: ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i809, %.noexc820
  br i1 %.not.i.i.i.i.i.i.i648, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i814, label %bb.hk

bb.hk:                                            ; preds = %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i810
  %i.ayy = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.ayz = load i32, ptr %i.ayy, align 4, !tbaa !33
  %i.aza = add i32 %i.ayz, 1
  store i32 %i.aza, ptr %i.ayy, align 4, !tbaa !33
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i814

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i814: ; preds = %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i810, %bb.hk
  invoke void @_ZN6vectorIP4sortLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ays)
          to label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i815 unwind label %bb.hl

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i815: ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i814
  %.pre.i.i.i.i.i817 = load ptr, ptr %i.ays, align 8, !tbaa !29 ; 3 uses
  %.phi.trans.insert.i.i.i.i.i818 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i817, i64 -4
  %.pre2.i.i.i.i.i819 = load i32, ptr %.phi.trans.insert.i.i.i.i.i818, align 4, !tbaa !31 ; 2 uses
  %23 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i817, i64 -4
  %i.azb = zext i32 %.pre2.i.i.i.i.i819 to i64
  %i.azc = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i.i817, i64 %i.azb
  store ptr %i.i, ptr %i.azc, align 8, !tbaa !42
  %i.azd = add i32 %.pre2.i.i.i.i.i819, 1
  store i32 %i.azd, ptr %23, align 4, !tbaa !31
  %i.aze = load ptr, ptr %i.y, align 8, !tbaa !30
  %i.azf = getelementptr inbounds nuw i8, ptr %i.aze, i64 440
  store ptr %i.ayo, ptr %i.azf, align 8, !tbaa !37
  %i.azg = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 48)
          to label %bb.hm unwind label %.loopexit.split-lp ; 7 uses

bb.hl:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i814
  %i.azh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4sort11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.ayt) #27
  call void @_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.ayr) #27
  br label %.body

bb.hm:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i815
  invoke void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.azg, ptr noundef nonnull @.str.59)
          to label %.noexc836 unwind label %.loopexit.split-lp

.noexc836:                                        ; preds = %bb.hm
  %i.azi = getelementptr inbounds nuw i8, ptr %i.azg, i64 8
  store i32 0, ptr %i.azi, align 8, !tbaa !190
  %i.azj = getelementptr inbounds nuw i8, ptr %i.azg, i64 16 ; 2 uses
  store i64 %i.aq, ptr %i.azj, align 8, !tbaa !195
  %i.azk = getelementptr inbounds nuw i8, ptr %i.azg, i64 24 ; 5 uses
  store ptr null, ptr %i.azk, align 8, !tbaa !29
  %i.azl = getelementptr inbounds nuw i8, ptr %i.azg, i64 32 ; 2 uses
  store ptr %i.u, ptr %i.azl, align 8, !tbaa !71
  %i.azm = getelementptr inbounds nuw i8, ptr %i.azg, i64 40
  store ptr %i.f, ptr %i.azm, align 8, !tbaa !195
  br i1 %.not.i.i.i116, label %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i826, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i825

_ZN11ast_manager7inc_refEP3ast.exit.i.i.i825:     ; preds = %.noexc836
  %i.azn = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.azo = load i32, ptr %i.azn, align 4, !tbaa !33
  %i.azp = add i32 %i.azo, 1
  store i32 %i.azp, ptr %i.azn, align 4, !tbaa !33
  br label %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i826

_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i826: ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i825, %.noexc836
  br i1 %.not.i.i.i.i.i.i.i648, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i830, label %bb.hn

bb.hn:                                            ; preds = %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i826
  %i.azq = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.azr = load i32, ptr %i.azq, align 4, !tbaa !33
  %i.azs = add i32 %i.azr, 1
  store i32 %i.azs, ptr %i.azq, align 4, !tbaa !33
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i830

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i830: ; preds = %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i826, %bb.hn
  invoke void @_ZN6vectorIP4sortLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.azk)
          to label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i831 unwind label %bb.hq

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i831: ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i830
  %.pre.i.i.i.i.i833 = load ptr, ptr %i.azk, align 8, !tbaa !29 ; 5 uses
  %.phi.trans.insert.i.i.i.i.i834 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i833, i64 -4
  %.pre2.i.i.i.i.i835 = load i32, ptr %.phi.trans.insert.i.i.i.i.i834, align 4, !tbaa !31 ; 2 uses
  %i.azt = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i833, i64 -4 ; 2 uses
  %i.azu = zext i32 %.pre2.i.i.i.i.i835 to i64
  %i.azv = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i.i833, i64 %i.azu
  store ptr %i.i, ptr %i.azv, align 8, !tbaa !42
  %i.azw = add i32 %.pre2.i.i.i.i.i835, 1
  store i32 %i.azw, ptr %i.azt, align 4, !tbaa !31
  br i1 %.not.i.i.i.i.i.i.i648, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i830.1, label %bb.ho

bb.ho:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i831
  %i.azx = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.azy = load i32, ptr %i.azx, align 4, !tbaa !33
  %i.azz = add i32 %i.azy, 1
  store i32 %i.azz, ptr %i.azx, align 4, !tbaa !33
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i830.1

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i830.1: ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i831, %bb.ho
  %i.baa = load i32, ptr %i.azt, align 4, !tbaa !31 ; 2 uses
  %i.bab = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i833, i64 -8
  %i.bac = load i32, ptr %i.bab, align 4, !tbaa !31
  %i.bad = icmp eq i32 %i.baa, %i.bac
  br i1 %i.bad, label %bb.hp, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i831.1

bb.hp:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i830.1
  invoke void @_ZN6vectorIP4sortLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.azk)
          to label %.noexc.i832.1 unwind label %bb.hq

.noexc.i832.1:                                    ; preds = %bb.hp
  %.pre.i.i.i.i.i833.1 = load ptr, ptr %i.azk, align 8, !tbaa !29 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i834.1 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i833.1, i64 -4
  %.pre2.i.i.i.i.i835.1 = load i32, ptr %.phi.trans.insert.i.i.i.i.i834.1, align 4, !tbaa !31
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i831.1

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i831.1: ; preds = %.noexc.i832.1, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i830.1
  %i.bae = phi ptr [ %.pre.i.i.i.i.i833.1, %.noexc.i832.1 ], [ %.pre.i.i.i.i.i833, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i830.1 ] ; 2 uses
  %i.baf = phi i32 [ %.pre2.i.i.i.i.i835.1, %.noexc.i832.1 ], [ %i.baa, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i830.1 ] ; 2 uses
  %i.bag = getelementptr inbounds i8, ptr %i.bae, i64 -4
  %i.bah = zext i32 %i.baf to i64
  %i.bai = getelementptr inbounds nuw [8 x i8], ptr %i.bae, i64 %i.bah
  store ptr %i.i, ptr %i.bai, align 8, !tbaa !42
  %i.baj = add i32 %i.baf, 1
  store i32 %i.baj, ptr %i.bag, align 4, !tbaa !31
  %i.bak = load ptr, ptr %i.y, align 8, !tbaa !30
  %i.bal = getelementptr inbounds nuw i8, ptr %i.bak, i64 448
  store ptr %i.azg, ptr %i.bal, align 8, !tbaa !37
  %i.bam = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 48)
          to label %bb.hr unwind label %.loopexit.split-lp ; 7 uses

bb.hq:                                            ; preds = %bb.hp, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i830
  %i.ban = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4sort11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.azl) #27
  call void @_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.azj) #27
  br label %.body

bb.hr:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i831.1
  invoke void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.bam, ptr noundef nonnull @.str.60)
          to label %.noexc852 unwind label %.loopexit.split-lp

.noexc852:                                        ; preds = %bb.hr
  %i.bao = getelementptr inbounds nuw i8, ptr %i.bam, i64 8
  store i32 0, ptr %i.bao, align 8, !tbaa !190
  %i.bap = getelementptr inbounds nuw i8, ptr %i.bam, i64 16 ; 2 uses
  store i64 %i.aq, ptr %i.bap, align 8, !tbaa !195
  %i.baq = getelementptr inbounds nuw i8, ptr %i.bam, i64 24 ; 5 uses
  store ptr null, ptr %i.baq, align 8, !tbaa !29
  %i.bar = getelementptr inbounds nuw i8, ptr %i.bam, i64 32 ; 2 uses
  store ptr %i.i, ptr %i.bar, align 8, !tbaa !71
  %i.bas = getelementptr inbounds nuw i8, ptr %i.bam, i64 40
  store ptr %i.f, ptr %i.bas, align 8, !tbaa !195
  br i1 %.not.i.i.i.i.i.i.i648, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i846, label %bb.hs

bb.hs:                                            ; preds = %.noexc852
  %i.bat = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.bau = load i32, ptr %i.bat, align 4, !tbaa !33
  %i.bav = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.baw = add i32 %i.bau, 2
  store i32 %i.baw, ptr %i.bav, align 4, !tbaa !33
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i846

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i846: ; preds = %.noexc852, %bb.hs
  invoke void @_ZN6vectorIP4sortLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.baq)
          to label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i847 unwind label %bb.hv

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i847: ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i846
  %.pre.i.i.i.i.i849 = load ptr, ptr %i.baq, align 8, !tbaa !29 ; 5 uses
  %.phi.trans.insert.i.i.i.i.i850 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i849, i64 -4
  %.pre2.i.i.i.i.i851 = load i32, ptr %.phi.trans.insert.i.i.i.i.i850, align 4, !tbaa !31 ; 2 uses
  %i.bax = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i849, i64 -4 ; 2 uses
  %i.bay = zext i32 %.pre2.i.i.i.i.i851 to i64
  %i.baz = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i.i849, i64 %i.bay
  store ptr %i.i, ptr %i.baz, align 8, !tbaa !42
  %i.bba = add i32 %.pre2.i.i.i.i.i851, 1
  store i32 %i.bba, ptr %i.bax, align 4, !tbaa !31
  br i1 %.not.i.i.i.i.i.i.i169.1, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i846.1, label %bb.ht

bb.ht:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i847
  %i.bbb = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.bbc = load i32, ptr %i.bbb, align 4, !tbaa !33
  %i.bbd = add i32 %i.bbc, 1
  store i32 %i.bbd, ptr %i.bbb, align 4, !tbaa !33
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i846.1

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i846.1: ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i847, %bb.ht
  %i.bbe = load i32, ptr %i.bax, align 4, !tbaa !31 ; 2 uses
  %i.bbf = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i849, i64 -8
  %i.bbg = load i32, ptr %i.bbf, align 4, !tbaa !31
  %i.bbh = icmp eq i32 %i.bbe, %i.bbg
  br i1 %i.bbh, label %bb.hu, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i847.1

bb.hu:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i846.1
  invoke void @_ZN6vectorIP4sortLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.baq)
          to label %.noexc.i848.1 unwind label %bb.hv

.noexc.i848.1:                                    ; preds = %bb.hu
  %.pre.i.i.i.i.i849.1 = load ptr, ptr %i.baq, align 8, !tbaa !29 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i850.1 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i849.1, i64 -4
  %.pre2.i.i.i.i.i851.1 = load i32, ptr %.phi.trans.insert.i.i.i.i.i850.1, align 4, !tbaa !31
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i847.1

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i847.1: ; preds = %.noexc.i848.1, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i846.1
  %i.bbi = phi ptr [ %.pre.i.i.i.i.i849.1, %.noexc.i848.1 ], [ %.pre.i.i.i.i.i849, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i846.1 ] ; 2 uses
  %i.bbj = phi i32 [ %.pre2.i.i.i.i.i851.1, %.noexc.i848.1 ], [ %i.bbe, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i846.1 ] ; 2 uses
  %i.bbk = getelementptr inbounds i8, ptr %i.bbi, i64 -4
  %i.bbl = zext i32 %i.bbj to i64
  %i.bbm = getelementptr inbounds nuw [8 x i8], ptr %i.bbi, i64 %i.bbl
  store ptr %i.w, ptr %i.bbm, align 8, !tbaa !42
  %i.bbn = add i32 %i.bbj, 1
  store i32 %i.bbn, ptr %i.bbk, align 4, !tbaa !31
  %i.bbo = load ptr, ptr %i.y, align 8, !tbaa !30
  %i.bbp = getelementptr inbounds nuw i8, ptr %i.bbo, i64 488
  store ptr %i.bam, ptr %i.bbp, align 8, !tbaa !37
  %i.bbq = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 48)
          to label %bb.hw unwind label %.loopexit.split-lp ; 7 uses

bb.hv:                                            ; preds = %bb.hu, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i846
  %i.bbr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4sort11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.bar) #27
  call void @_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.bap) #27
  br label %.body

bb.hw:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i847.1
  invoke void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.bbq, ptr noundef nonnull @.str.61)
          to label %.noexc868 unwind label %.loopexit.split-lp

end_hunk_3
begin_hunk_4_@_ZN15seq_decl_plugin4initEv:bb.a
_ZN11ast_manager7inc_refEP3ast.exit.i.i.i873:     ; preds = %.noexc884
  %i.bdd = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.bde = load i32, ptr %i.bdd, align 4, !tbaa !33
  %i.bdf = add i32 %i.bde, 1
  store i32 %i.bdf, ptr %i.bdd, align 4, !tbaa !33
  br label %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i874

_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i874: ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i873, %.noexc884
  br i1 %.not.i.i.i.i.i.i.i648, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i878, label %bb.ic

bb.ic:                                            ; preds = %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i874
  %i.bdg = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.bdh = load i32, ptr %i.bdg, align 4, !tbaa !33
  %i.bdi = add i32 %i.bdh, 1
  store i32 %i.bdi, ptr %i.bdg, align 4, !tbaa !33
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i878

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i878: ; preds = %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i874, %bb.ic
  invoke void @_ZN6vectorIP4sortLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bda)
          to label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i879 unwind label %bb.if

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i879: ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i878
  %.pre.i.i.i.i.i881 = load ptr, ptr %i.bda, align 8, !tbaa !29 ; 5 uses
  %.phi.trans.insert.i.i.i.i.i882 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i881, i64 -4
  %.pre2.i.i.i.i.i883 = load i32, ptr %.phi.trans.insert.i.i.i.i.i882, align 4, !tbaa !31 ; 2 uses
  %i.bdj = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i881, i64 -4 ; 2 uses
  %i.bdk = zext i32 %.pre2.i.i.i.i.i883 to i64
  %i.bdl = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i.i881, i64 %i.bdk
  store ptr %i.i, ptr %i.bdl, align 8, !tbaa !42
  %i.bdm = add i32 %.pre2.i.i.i.i.i883, 1
  store i32 %i.bdm, ptr %i.bdj, align 4, !tbaa !31
  br i1 %.not.i.i.i.i.i.i.i648, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i878.1, label %bb.id

bb.id:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i879
  %i.bdn = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.bdo = load i32, ptr %i.bdn, align 4, !tbaa !33
  %i.bdp = add i32 %i.bdo, 1
  store i32 %i.bdp, ptr %i.bdn, align 4, !tbaa !33
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i878.1

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i878.1: ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i879, %bb.id
  %i.bdq = load i32, ptr %i.bdj, align 4, !tbaa !31 ; 2 uses
  %i.bdr = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i881, i64 -8
  %i.bds = load i32, ptr %i.bdr, align 4, !tbaa !31
  %i.bdt = icmp eq i32 %i.bdq, %i.bds
  br i1 %i.bdt, label %bb.ie, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i879.1

bb.ie:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i878.1
  invoke void @_ZN6vectorIP4sortLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bda)
          to label %.noexc.i880.1 unwind label %bb.if

.noexc.i880.1:                                    ; preds = %bb.ie
  %.pre.i.i.i.i.i881.1 = load ptr, ptr %i.bda, align 8, !tbaa !29 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i882.1 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i881.1, i64 -4
  %.pre2.i.i.i.i.i883.1 = load i32, ptr %.phi.trans.insert.i.i.i.i.i882.1, align 4, !tbaa !31
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i879.1

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i879.1: ; preds = %.noexc.i880.1, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i878.1
  %i.bdu = phi ptr [ %.pre.i.i.i.i.i881.1, %.noexc.i880.1 ], [ %.pre.i.i.i.i.i881, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i878.1 ] ; 2 uses
  %i.bdv = phi i32 [ %.pre2.i.i.i.i.i883.1, %.noexc.i880.1 ], [ %i.bdq, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i878.1 ] ; 2 uses
  %i.bdw = getelementptr inbounds i8, ptr %i.bdu, i64 -4
  %i.bdx = zext i32 %i.bdv to i64
  %i.bdy = getelementptr inbounds nuw [8 x i8], ptr %i.bdu, i64 %i.bdx
  store ptr %i.i, ptr %i.bdy, align 8, !tbaa !42
  %i.bdz = add i32 %i.bdv, 1
  store i32 %i.bdz, ptr %i.bdw, align 4, !tbaa !31
  %i.bea = load ptr, ptr %i.y, align 8, !tbaa !30
  %i.beb = getelementptr inbounds nuw i8, ptr %i.bea, i64 464
  store ptr %i.bcw, ptr %i.beb, align 8, !tbaa !37
  %i.bec = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 48)
          to label %bb.ig unwind label %.loopexit.split-lp ; 7 uses

bb.if:                                            ; preds = %bb.ie, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i878
  %i.bed = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4sort11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.bdb) #27
  call void @_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.bcz) #27
  br label %.body

bb.ig:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i879.1
  invoke void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.bec, ptr noundef nonnull @.str.63)
          to label %.noexc900 unwind label %.loopexit.split-lp

.noexc900:                                        ; preds = %bb.ig
  %i.bee = getelementptr inbounds nuw i8, ptr %i.bec, i64 8
  store i32 0, ptr %i.bee, align 8, !tbaa !190
  %i.bef = getelementptr inbounds nuw i8, ptr %i.bec, i64 16 ; 2 uses
  store i64 %i.aq, ptr %i.bef, align 8, !tbaa !195
  %i.beg = getelementptr inbounds nuw i8, ptr %i.bec, i64 24 ; 5 uses
  store ptr null, ptr %i.beg, align 8, !tbaa !29
  %i.beh = getelementptr inbounds nuw i8, ptr %i.bec, i64 32 ; 2 uses
  store ptr %i.u, ptr %i.beh, align 8, !tbaa !71
  %i.bei = getelementptr inbounds nuw i8, ptr %i.bec, i64 40
  store ptr %i.f, ptr %i.bei, align 8, !tbaa !195
  br i1 %.not.i.i.i116, label %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i890, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i889

_ZN11ast_manager7inc_refEP3ast.exit.i.i.i889:     ; preds = %.noexc900
  %i.bej = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.bek = load i32, ptr %i.bej, align 4, !tbaa !33
  %i.bel = add i32 %i.bek, 1
  store i32 %i.bel, ptr %i.bej, align 4, !tbaa !33
  br label %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i890

_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i890: ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i889, %.noexc900
  br i1 %.not.i.i.i.i.i.i.i648, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i894, label %bb.ih

bb.ih:                                            ; preds = %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i890
  %i.bem = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.ben = load i32, ptr %i.bem, align 4, !tbaa !33
  %i.beo = add i32 %i.ben, 1
  store i32 %i.beo, ptr %i.bem, align 4, !tbaa !33
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i894

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i894: ; preds = %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i890, %bb.ih
  invoke void @_ZN6vectorIP4sortLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.beg)
          to label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i895 unwind label %bb.ik

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i895: ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i894
  %.pre.i.i.i.i.i897 = load ptr, ptr %i.beg, align 8, !tbaa !29 ; 5 uses
  %.phi.trans.insert.i.i.i.i.i898 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i897, i64 -4
  %.pre2.i.i.i.i.i899 = load i32, ptr %.phi.trans.insert.i.i.i.i.i898, align 4, !tbaa !31 ; 2 uses
  %i.bep = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i897, i64 -4 ; 2 uses
  %i.beq = zext i32 %.pre2.i.i.i.i.i899 to i64
  %i.ber = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i.i897, i64 %i.beq
  store ptr %i.i, ptr %i.ber, align 8, !tbaa !42
  %i.bes = add i32 %.pre2.i.i.i.i.i899, 1
  store i32 %i.bes, ptr %i.bep, align 4, !tbaa !31
  %.not.i.i.i.i.i.i.i893.1 = icmp eq ptr %i.s, null ; 4 uses
  br i1 %.not.i.i.i.i.i.i.i893.1, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i894.1, label %bb.ii

bb.ii:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i895
  %i.bet = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.beu = load i32, ptr %i.bet, align 4, !tbaa !33
  %i.bev = add i32 %i.beu, 1
  store i32 %i.bev, ptr %i.bet, align 4, !tbaa !33
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i894.1

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i894.1: ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i895, %bb.ii
  %i.bew = load i32, ptr %i.bep, align 4, !tbaa !31 ; 2 uses
  %i.bex = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i897, i64 -8
  %i.bey = load i32, ptr %i.bex, align 4, !tbaa !31
  %i.bez = icmp eq i32 %i.bew, %i.bey
  br i1 %i.bez, label %bb.ij, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i895.1

bb.ij:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i894.1
  invoke void @_ZN6vectorIP4sortLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.beg)
          to label %.noexc.i896.1 unwind label %bb.ik

.noexc.i896.1:                                    ; preds = %bb.ij
  %.pre.i.i.i.i.i897.1 = load ptr, ptr %i.beg, align 8, !tbaa !29 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i898.1 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i897.1, i64 -4
  %.pre2.i.i.i.i.i899.1 = load i32, ptr %.phi.trans.insert.i.i.i.i.i898.1, align 4, !tbaa !31
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i895.1

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i895.1: ; preds = %.noexc.i896.1, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i894.1
  %i.bfa = phi ptr [ %.pre.i.i.i.i.i897.1, %.noexc.i896.1 ], [ %.pre.i.i.i.i.i897, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i894.1 ] ; 2 uses
  %i.bfb = phi i32 [ %.pre2.i.i.i.i.i899.1, %.noexc.i896.1 ], [ %i.bew, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i894.1 ] ; 2 uses
  %i.bfc = getelementptr inbounds i8, ptr %i.bfa, i64 -4
  %i.bfd = zext i32 %i.bfb to i64
  %i.bfe = getelementptr inbounds nuw [8 x i8], ptr %i.bfa, i64 %i.bfd
  store ptr %i.s, ptr %i.bfe, align 8, !tbaa !42
  %i.bff = add i32 %i.bfb, 1
  store i32 %i.bff, ptr %i.bfc, align 4, !tbaa !31
  %i.bfg = load ptr, ptr %i.y, align 8, !tbaa !30
  %i.bfh = getelementptr inbounds nuw i8, ptr %i.bfg, i64 472
  store ptr %i.bec, ptr %i.bfh, align 8, !tbaa !37
  %i.bfi = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 48)
          to label %bb.il unwind label %.loopexit.split-lp ; 7 uses

bb.ik:                                            ; preds = %bb.ij, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i894
  %i.bfj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4sort11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.beh) #27
  call void @_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.bef) #27
  br label %.body

bb.il:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i895.1
  invoke void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.bfi, ptr noundef nonnull @.str.64)
          to label %.noexc916 unwind label %.loopexit.split-lp

.noexc916:                                        ; preds = %bb.il
  %i.bfk = getelementptr inbounds nuw i8, ptr %i.bfi, i64 8
  store i32 0, ptr %i.bfk, align 8, !tbaa !190
  %i.bfl = getelementptr inbounds nuw i8, ptr %i.bfi, i64 16 ; 2 uses
  store i64 %i.aq, ptr %i.bfl, align 8, !tbaa !195
  %i.bfm = getelementptr inbounds nuw i8, ptr %i.bfi, i64 24 ; 3 uses
  store ptr null, ptr %i.bfm, align 8, !tbaa !29
  %i.bfn = getelementptr inbounds nuw i8, ptr %i.bfi, i64 32 ; 2 uses
  store ptr %i.s, ptr %i.bfn, align 8, !tbaa !71
  %i.bfo = getelementptr inbounds nuw i8, ptr %i.bfi, i64 40
  store ptr %i.f, ptr %i.bfo, align 8, !tbaa !195
  br i1 %.not.i.i.i.i.i.i.i893.1, label %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i906, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i905

_ZN11ast_manager7inc_refEP3ast.exit.i.i.i905:     ; preds = %.noexc916
  %i.bfp = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.bfq = load i32, ptr %i.bfp, align 4, !tbaa !33
  %i.bfr = add i32 %i.bfq, 1
  store i32 %i.bfr, ptr %i.bfp, align 4, !tbaa !33
  br label %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i906

_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i906: ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i905, %.noexc916
  br i1 %.not.i.i.i.i.i.i.i648, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i910, label %bb.im

bb.im:                                            ; preds = %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i906
  %i.bfs = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.bft = load i32, ptr %i.bfs, align 4, !tbaa !33
  %i.bfu = add i32 %i.bft, 1
  store i32 %i.bfu, ptr %i.bfs, align 4, !tbaa !33
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i910

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i910: ; preds = %_ZN7obj_refI4sort11ast_managerEC2EPS0_RS1_.exit.i906, %bb.im
  invoke void @_ZN6vectorIP4sortLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bfm)
          to label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i911 unwind label %bb.in

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i911: ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i910
  %.pre.i.i.i.i.i913 = load ptr, ptr %i.bfm, align 8, !tbaa !29 ; 3 uses
  %.phi.trans.insert.i.i.i.i.i914 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i913, i64 -4
  %.pre2.i.i.i.i.i915 = load i32, ptr %.phi.trans.insert.i.i.i.i.i914, align 4, !tbaa !31 ; 2 uses
  %24 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i913, i64 -4
  %i.bfv = zext i32 %.pre2.i.i.i.i.i915 to i64
  %i.bfw = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i.i913, i64 %i.bfv
  store ptr %i.i, ptr %i.bfw, align 8, !tbaa !42
  %i.bfx = add i32 %.pre2.i.i.i.i.i915, 1
  store i32 %i.bfx, ptr %24, align 4, !tbaa !31
  %i.bfy = load ptr, ptr %i.y, align 8, !tbaa !30
  %i.bfz = getelementptr inbounds nuw i8, ptr %i.bfy, i64 480
  store ptr %i.bfi, ptr %i.bfz, align 8, !tbaa !37
  %i.bga = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 48)
          to label %bb.io unwind label %.loopexit.split-lp ; 7 uses

bb.in:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i910
  %i.bgb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4sort11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.bfn) #27
  call void @_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.bfl) #27
  br label %.body

bb.io:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i911
  invoke void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.bga, ptr noundef nonnull @.str.65)
          to label %.noexc923 unwind label %.loopexit.split-lp

.noexc923:                                        ; preds = %bb.io
  %i.bgc = getelementptr inbounds nuw i8, ptr %i.bga, i64 8
  store i32 0, ptr %i.bgc, align 8, !tbaa !190
  %i.bgd = getelementptr inbounds nuw i8, ptr %i.bga, i64 16
  store i64 %i.aq, ptr %i.bgd, align 8, !tbaa !195
  %i.bge = getelementptr inbounds nuw i8, ptr %i.bga, i64 24
  store ptr null, ptr %i.bge, align 8, !tbaa !29
  %i.bgf = getelementptr inbounds nuw i8, ptr %i.bga, i64 32
  store ptr %i.s, ptr %i.bgf, align 8, !tbaa !71
  %i.bgg = getelementptr inbounds nuw i8, ptr %i.bga, i64 40
  store ptr %i.f, ptr %i.bgg, align 8, !tbaa !195
  br i1 %.not.i.i.i.i.i.i.i893.1, label %_ZN15seq_decl_plugin4psigC2ER11ast_managerPKcjjPKP4sortS6_.exit924, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i921

_ZN11ast_manager7inc_refEP3ast.exit.i.i.i921:     ; preds = %.noexc923
  %i.bgh = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.bgi = load i32, ptr %i.bgh, align 4, !tbaa !33
  %i.bgj = add i32 %i.bgi, 1
  store i32 %i.bgj, ptr %i.bgh, align 4, !tbaa !33
  br label %_ZN15seq_decl_plugin4psigC2ER11ast_managerPKcjjPKP4sortS6_.exit924

_ZN15seq_decl_plugin4psigC2ER11ast_managerPKcjjPKP4sortS6_.exit924: ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i921, %.noexc923
  %i.bgk = load ptr, ptr %i.y, align 8, !tbaa !30
  %i.bgl = getelementptr inbounds nuw i8, ptr %i.bgk, i64 512
  store ptr %i.bga, ptr %i.bgl, align 8, !tbaa !37
  %i.bgm = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 48)
          to label %bb.ip unwind label %.loopexit.split-lp ; 7 uses

bb.ip:                                            ; preds = %_ZN15seq_decl_plugin4psigC2ER11ast_managerPKcjjPKP4sortS6_.exit924
  invoke void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.bgm, ptr noundef nonnull @.str.38)
          to label %.noexc928 unwind label %.loopexit.split-lp

.noexc928:                                        ; preds = %bb.ip
  %i.bgn = getelementptr inbounds nuw i8, ptr %i.bgm, i64 8
  store i32 0, ptr %i.bgn, align 8, !tbaa !190
  %i.bgo = getelementptr inbounds nuw i8, ptr %i.bgm, i64 16
  store i64 %i.aq, ptr %i.bgo, align 8, !tbaa !195
  %i.bgp = getelementptr inbounds nuw i8, ptr %i.bgm, i64 24
  store ptr null, ptr %i.bgp, align 8, !tbaa !29
  %i.bgq = getelementptr inbounds nuw i8, ptr %i.bgm, i64 32
  store ptr %i.s, ptr %i.bgq, align 8, !tbaa !71
  %i.bgr = getelementptr inbounds nuw i8, ptr %i.bgm, i64 40
  store ptr %i.f, ptr %i.bgr, align 8, !tbaa !195
  br i1 %.not.i.i.i.i.i.i.i893.1, label %_ZN15seq_decl_plugin4psigC2ER11ast_managerPKcjjPKP4sortS6_.exit929, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i926

_ZN11ast_manager7inc_refEP3ast.exit.i.i.i926:     ; preds = %.noexc928
  %i.bgs = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.bgt = load i32, ptr %i.bgs, align 4, !tbaa !33
  %i.bgu = add i32 %i.bgt, 1
  store i32 %i.bgu, ptr %i.bgs, align 4, !tbaa !33
  br label %_ZN15seq_decl_plugin4psigC2ER11ast_managerPKcjjPKP4sortS6_.exit929

_ZN15seq_decl_plugin4psigC2ER11ast_managerPKcjjPKP4sortS6_.exit929: ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i926, %.noexc928
  %i.bgv = load ptr, ptr %i.y, align 8, !tbaa !30
  %i.bgw = getelementptr inbounds nuw i8, ptr %i.bgv, i64 520
  store ptr %i.bgm, ptr %i.bgw, align 8, !tbaa !37
  %i.bgx = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 48)
          to label %bb.iq unwind label %.loopexit.split-lp ; 7 uses

bb.iq:                                            ; preds = %_ZN15seq_decl_plugin4psigC2ER11ast_managerPKcjjPKP4sortS6_.exit929
  invoke void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.bgx, ptr noundef nonnull @.str.66)
          to label %.noexc942 unwind label %.loopexit.split-lp

.noexc942:                                        ; preds = %bb.iq
  %i.bgy = getelementptr inbounds nuw i8, ptr %i.bgx, i64 8
  store i32 0, ptr %i.bgy, align 8, !tbaa !190
  %i.bgz = getelementptr inbounds nuw i8, ptr %i.bgx, i64 16 ; 2 uses
  store i64 %i.aq, ptr %i.bgz, align 8, !tbaa !195
  %i.bha = getelementptr inbounds nuw i8, ptr %i.bgx, i64 24 ; 7 uses
  store ptr null, ptr %i.bha, align 8, !tbaa !29
  %i.bhb = getelementptr inbounds nuw i8, ptr %i.bgx, i64 32 ; 2 uses
  store ptr %i.i, ptr %i.bhb, align 8, !tbaa !71
  %i.bhc = getelementptr inbounds nuw i8, ptr %i.bgx, i64 40
  store ptr %i.f, ptr %i.bhc, align 8, !tbaa !195
  br i1 %.not.i.i.i.i.i.i.i648, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i936, label %bb.ir

bb.ir:                                            ; preds = %.noexc942
  %i.bhd = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.bhe = load i32, ptr %i.bhd, align 4, !tbaa !33
  %i.bhf = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.bhg = add i32 %i.bhe, 2
  store i32 %i.bhg, ptr %i.bhf, align 4, !tbaa !33
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i936

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i936: ; preds = %.noexc942, %bb.ir
  invoke void @_ZN6vectorIP4sortLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bha)
          to label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i937 unwind label %bb.iw

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i937: ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i936
  %.pre.i.i.i.i.i939 = load ptr, ptr %i.bha, align 8, !tbaa !29 ; 5 uses
  %.phi.trans.insert.i.i.i.i.i940 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i939, i64 -4
  %.pre2.i.i.i.i.i941 = load i32, ptr %.phi.trans.insert.i.i.i.i.i940, align 4, !tbaa !31 ; 2 uses
  %i.bhh = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i939, i64 -4 ; 2 uses
  %i.bhi = zext i32 %.pre2.i.i.i.i.i941 to i64
  %i.bhj = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i.i939, i64 %i.bhi
  store ptr %i.i, ptr %i.bhj, align 8, !tbaa !42
  %i.bhk = add i32 %.pre2.i.i.i.i.i941, 1
  store i32 %i.bhk, ptr %i.bhh, align 4, !tbaa !31
  br i1 %.not.i.i.i.i.i.i.i169.1, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i936.1, label %bb.is

bb.is:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i937
  %i.bhl = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.bhm = load i32, ptr %i.bhl, align 4, !tbaa !33
  %i.bhn = add i32 %i.bhm, 1
  store i32 %i.bhn, ptr %i.bhl, align 4, !tbaa !33
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i936.1

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i936.1: ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i937, %bb.is
  %i.bho = load i32, ptr %i.bhh, align 4, !tbaa !31 ; 2 uses
  %i.bhp = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i939, i64 -8
  %i.bhq = load i32, ptr %i.bhp, align 4, !tbaa !31
  %i.bhr = icmp eq i32 %i.bho, %i.bhq
  br i1 %i.bhr, label %bb.it, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i937.1

bb.it:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i936.1
  invoke void @_ZN6vectorIP4sortLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bha)
          to label %.noexc.i938.1 unwind label %bb.iw

.noexc.i938.1:                                    ; preds = %bb.it
  %.pre.i.i.i.i.i939.1 = load ptr, ptr %i.bha, align 8, !tbaa !29 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i940.1 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i939.1, i64 -4
  %.pre2.i.i.i.i.i941.1 = load i32, ptr %.phi.trans.insert.i.i.i.i.i940.1, align 4, !tbaa !31
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i937.1

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i937.1: ; preds = %.noexc.i938.1, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i936.1
  %i.bhs = phi ptr [ %.pre.i.i.i.i.i939.1, %.noexc.i938.1 ], [ %.pre.i.i.i.i.i939, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i936.1 ] ; 4 uses
  %i.bht = phi i32 [ %.pre2.i.i.i.i.i941.1, %.noexc.i938.1 ], [ %i.bho, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i936.1 ] ; 2 uses
  %i.bhu = getelementptr inbounds i8, ptr %i.bhs, i64 -4 ; 2 uses
  %i.bhv = zext i32 %i.bht to i64
  %i.bhw = getelementptr inbounds nuw [8 x i8], ptr %i.bhs, i64 %i.bhv
  store ptr %i.w, ptr %i.bhw, align 8, !tbaa !42
  %i.bhx = add i32 %i.bht, 1
  store i32 %i.bhx, ptr %i.bhu, align 4, !tbaa !31
  br i1 %.not.i.i.i.i.i.i.i169.1, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i936.2, label %bb.iu

bb.iu:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i937.1
  %i.bhy = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.bhz = load i32, ptr %i.bhy, align 4, !tbaa !33
  %i.bia = add i32 %i.bhz, 1
  store i32 %i.bia, ptr %i.bhy, align 4, !tbaa !33
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i936.2

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i936.2: ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i937.1, %bb.iu
  %i.bib = load i32, ptr %i.bhu, align 4, !tbaa !31 ; 2 uses
  %i.bic = getelementptr inbounds i8, ptr %i.bhs, i64 -8
  %i.bid = load i32, ptr %i.bic, align 4, !tbaa !31
  %i.bie = icmp eq i32 %i.bib, %i.bid
  br i1 %i.bie, label %bb.iv, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i937.2

bb.iv:                                            ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i936.2
  invoke void @_ZN6vectorIP4sortLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bha)
          to label %.noexc.i938.2 unwind label %bb.iw

.noexc.i938.2:                                    ; preds = %bb.iv
  %.pre.i.i.i.i.i939.2 = load ptr, ptr %i.bha, align 8, !tbaa !29 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i940.2 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i939.2, i64 -4
  %.pre2.i.i.i.i.i941.2 = load i32, ptr %.phi.trans.insert.i.i.i.i.i940.2, align 4, !tbaa !31
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i937.2

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i.i937.2: ; preds = %.noexc.i938.2, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i936.2
  %i.bif = phi ptr [ %.pre.i.i.i.i.i939.2, %.noexc.i938.2 ], [ %i.bhs, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i936.2 ] ; 2 uses
  %i.big = phi i32 [ %.pre2.i.i.i.i.i941.2, %.noexc.i938.2 ], [ %i.bib, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i936.2 ] ; 2 uses
  %i.bih = getelementptr inbounds i8, ptr %i.bif, i64 -4
  %i.bii = zext i32 %i.big to i64
  %i.bij = getelementptr inbounds nuw [8 x i8], ptr %i.bif, i64 %i.bii
  store ptr %i.w, ptr %i.bij, align 8, !tbaa !42
  %i.bik = add i32 %i.big, 1
  store i32 %i.bik, ptr %i.bih, align 4, !tbaa !31
  %i.bil = load ptr, ptr %i.y, align 8, !tbaa !30
  %i.bim = getelementptr inbounds nuw i8, ptr %i.bil, i64 496
  store ptr %i.bgx, ptr %i.bim, align 8, !tbaa !37
  call void @_ZN9parameterD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @_ZN9parameterD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @_ZN9parameterD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br label %bb.ix

bb.iw:                                            ; preds = %bb.iv, %bb.it, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i936
  %i.bin = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4sort11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.bhb) #27
end_hunk_4
