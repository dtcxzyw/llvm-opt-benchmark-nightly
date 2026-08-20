inline.NumInlined: 2334
inline.NumDeleted: 457
loop-unroll.NumRuntimeUnrolled: 46
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZN13bool_rewriter10mk_eq_coreEP4exprS1_R7obj_refIS0_11ast_managerE:bb.a
  br label %.sink.split

bb.bp:                                            ; preds = %bb.bm, %bb.bk, %bb.bj, %bb.bo
  %i.iz = load ptr, ptr %0, align 8, !tbaa !64, !nonnull !15, !align !16
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 840
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !65
  %i.jc = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN7obj_refI4expr11ast_managerEaSEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.jb) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %.thread124

.sink.split:                                      ; preds = %bb.bg, %bb.bh, %.thread132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %bb.bq

bb.bq:                                            ; preds = %.sink.split, %.thread120
  %.3111 = phi ptr [ %2, %.thread120 ], [ %.1, %.sink.split ] ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !135, !range !63, !noundef !15
  %i.jf = trunc nuw i8 %i.je to i1
  br i1 %i.jf, label %bb.br, label %.thread124

bb.br:                                            ; preds = %bb.bq
  %i.jg = load ptr, ptr %i.a, align 8, !tbaa !61  ; 2 uses
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !136
  %i.ji = load i32, ptr %.3111, align 4, !tbaa !136
  %i.jj = icmp ugt i32 %i.jh, %i.ji
  br i1 %i.jj, label %bb.bs, label %.thread124

bb.bs:                                            ; preds = %bb.br
  %i.jk = load ptr, ptr %0, align 8, !tbaa !64, !nonnull !15, !align !16
  %i.jl = call noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.jk, i32 noundef 0, i32 noundef 2, ptr noundef nonnull %.3111, ptr noundef nonnull %i.jg)
  %i.jm = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN7obj_refI4expr11ast_managerEaSEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.jl) ; 0 uses
  br label %.thread124

.thread124:                                       ; preds = %bb.bf, %bb.bd, %bb.az, %bb.ax, %bb.av, %bb.at, %bb.ar, %bb.bp, %.thread, %bb.bs, %bb.al, %bb.k, %bb.l, %bb.br, %bb.bq, %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit46, %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit
  %.7 = phi i32 [ 4, %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit ], [ 4, %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit46 ], [ %.036, %bb.al ], [ 0, %bb.k ], [ 4, %bb.bs ], [ 0, %bb.l ], [ 4, %bb.bp ], [ 5, %bb.br ], [ 5, %bb.bq ], [ 3, %.thread ], [ 0, %bb.bf ], [ 1, %bb.bd ], [ 4, %bb.az ], [ 4, %bb.ax ], [ 4, %bb.av ], [ 4, %bb.at ], [ 4, %bb.ar ]
  ret i32 %.7
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 1, 6) i32 @_ZN13bool_rewriter16mk_distinct_coreEjPKP4exprR7obj_refIS0_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(368) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.obj_ref, align 8             ; 9 uses
  %5 = alloca %class.ast_fast_mark, align 8       ; 13 uses
  %6 = alloca %class.ref_vector, align 8          ; 7 uses
  %i.a = icmp ult i32 %1, 2
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !64, !nonnull !15, !align !16
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 832
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !125  ; 3 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.c, label %_ZN11ast_manager7inc_refEP3ast.exit.i

_ZN11ast_manager7inc_refEP3ast.exit.i:            ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !121
  %i.g = add i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 4, !tbaa !121
  br label %bb.c

bb.c:                                             ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i, %bb.b
  %i.h = load ptr, ptr %3, align 8, !tbaa !122    ; 3 uses
  %.not.i4.i = icmp eq ptr %i.h, null
  br i1 %.not.i4.i, label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !124, !nonnull !15, !align !16
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !121
  %i.m = add i32 %i.l, -1                         ; 2 uses
  store i32 %i.m, ptr %i.k, align 4, !tbaa !121
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.e, label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.j, ptr noundef nonnull %i.h)
  br label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit

_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit:      ; preds = %bb.c, %bb.d, %bb.e
  store ptr %i.d, ptr %3, align 8, !tbaa !122
  br label %bb.bn

bb.f:                                             ; preds = %bb.a
  %i.o = icmp eq i32 %1, 2
  br i1 %i.o, label %bb.g, label %bb.q

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.p = load ptr, ptr %0, align 8, !tbaa !64, !nonnull !15, !align !16
  store ptr null, ptr %4, align 8, !tbaa !122
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !132
  %i.r = load ptr, ptr %2, align 8, !tbaa !61
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !61
  invoke void @_ZN13bool_rewriter5mk_eqEP4exprS1_R7obj_refIS0_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef %i.r, ptr noundef %i.t, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.h unwind label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.u = load ptr, ptr %4, align 8, !tbaa !122    ; 2 uses
  %i.v = invoke noundef i32 @_ZN13bool_rewriter11mk_not_coreEP4exprR7obj_refIS0_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef %i.u, ptr noundef nonnull align 8 dereferenceable(16) %3) #20
          to label %.noexc unwind label %bb.p, !inline_history !137

.noexc:                                           ; preds = %bb.h
  %i.w = icmp eq i32 %i.v, 5
  br i1 %i.w, label %bb.i, label %_ZN13bool_rewriter6mk_notEP4exprR7obj_refIS0_11ast_managerE.exit

bb.i:                                             ; preds = %.noexc
  %i.x = load ptr, ptr %0, align 8, !tbaa !64, !nonnull !15, !align !16
  %i.y = invoke noundef ptr @_ZN11ast_manager6mk_appEiiP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.x, i32 noundef 0, i32 noundef 8, ptr noundef %i.u)
          to label %.noexc92 unwind label %bb.p, !inline_history !137 ; 3 uses

.noexc92:                                         ; preds = %bb.i
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %bb.j, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i

_ZN11ast_manager7inc_refEP3ast.exit.i.i:          ; preds = %.noexc92
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !121
  %i.ab = add i32 %i.aa, 1
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !121
  br label %bb.j

bb.j:                                             ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i, %.noexc92
  %i.ac = load ptr, ptr %3, align 8, !tbaa !122   ; 3 uses
  %.not.i4.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i4.i.i, label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !124, !nonnull !15, !align !16
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !121
  %i.ah = add i32 %i.ag, -1                       ; 2 uses
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !121
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.l, label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ae, ptr noundef nonnull %i.ac)
          to label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit.i unwind label %bb.p, !inline_history !137

_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit.i:    ; preds = %bb.l, %bb.k, %bb.j
  store ptr %i.y, ptr %3, align 8, !tbaa !122
  br label %_ZN13bool_rewriter6mk_notEP4exprR7obj_refIS0_11ast_managerE.exit

_ZN13bool_rewriter6mk_notEP4exprR7obj_refIS0_11ast_managerE.exit: ; preds = %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit.i, %.noexc
  %i.aj = load ptr, ptr %4, align 8, !tbaa !122   ; 3 uses
  %.not.i.i94 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i94, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN13bool_rewriter6mk_notEP4exprR7obj_refIS0_11ast_managerE.exit
  %i.ak = load ptr, ptr %i.q, align 8, !tbaa !124, !nonnull !15, !align !16
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !121
  %i.an = add i32 %i.am, -1                       ; 2 uses
  store i32 %i.an, ptr %i.al, align 4, !tbaa !121
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.n, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ak, ptr noundef nonnull %i.aj)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  call void @__clang_call_terminate(ptr %i.aq) #21
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit:         ; preds = %_ZN13bool_rewriter6mk_notEP4exprR7obj_refIS0_11ast_managerE.exit, %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.bn

bb.p:                                             ; preds = %bb.l, %bb.i, %bb.h, %bb.g
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.bo

bb.q:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.as, ptr %5, align 8, !tbaa !138
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 7 uses
  store i32 0, ptr %i.at, align 8, !tbaa !141
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 3 uses
  store i32 16, ptr %i.au, align 4, !tbaa !142
  %wide.trip.count = zext i32 %1 to i64           ; 4 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.thread
  %indvars.iv171 = phi i64 [ 0, %bb.q ], [ %indvars.iv.next172, %.thread ] ; 4 uses
  %.059163 = phi i8 [ 1, %bb.q ], [ %.4133, %.thread ] ; 2 uses
  %.062162 = phi i1 [ true, %bb.q ], [ %spec.select, %.thread ]
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv171
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !61 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4            ; 2 uses
  %i.az = and i32 %i.ay, 65536
  %.not148 = icmp eq i32 %i.az, 0
  br i1 %.not148, label %bb.w, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ba = load ptr, ptr %0, align 8, !tbaa !64, !nonnull !15, !align !16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 840
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !65 ; 3 uses
  %.not.i95 = icmp eq ptr %i.bc, null
  br i1 %.not.i95, label %bb.t, label %_ZN11ast_manager7inc_refEP3ast.exit.i96

_ZN11ast_manager7inc_refEP3ast.exit.i96:          ; preds = %bb.s
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !121
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !121
  br label %bb.t

bb.t:                                             ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i96, %bb.s
  %i.bg = load ptr, ptr %3, align 8, !tbaa !122   ; 3 uses
  %.not.i4.i97 = icmp eq ptr %i.bg, null
  br i1 %.not.i4.i97, label %.thread141, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !124, !nonnull !15, !align !16
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !121
  %i.bl = add i32 %i.bk, -1                       ; 2 uses
  store i32 %i.bl, ptr %i.bj, align 4, !tbaa !121
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.v, label %.thread141

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.bi, ptr noundef nonnull %i.bg)
          to label %.thread141 unwind label %.loopexit.split-lp151

.thread141:                                       ; preds = %bb.v, %bb.t, %bb.u
  store ptr %i.bc, ptr %3, align 8, !tbaa !122
  br label %bb.bk

.loopexit150:                                     ; preds = %bb.z, %bb.x, %bb.y
  %lpad.loopexit152 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit149

.loopexit.split-lp151:                            ; preds = %bb.v
  %lpad.loopexit.split-lp153 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit149

bb.w:                                             ; preds = %bb.r
  %i.bn = or disjoint i32 %i.ay, 65536
  store i32 %i.bn, ptr %i.ax, align 4
  %i.bo = load i32, ptr %i.at, align 8, !tbaa !141 ; 2 uses
  %i.bp = load i32, ptr %i.au, align 4, !tbaa !142 ; 2 uses
  %.not.i.i101 = icmp ult i32 %i.bo, %i.bp
  br i1 %.not.i.i101, label %._crit_edge.i.i, label %bb.x

._crit_edge.i.i:                                  ; preds = %bb.w
  %.pre.i.i = load ptr, ptr %5, align 8, !tbaa !138
  br label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.bq = shl i32 %i.bp, 1                        ; 2 uses
  %i.br = zext i32 %i.bq to i64
  %i.bs = shl nuw nsw i64 %i.br, 3
  %i.bt = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.bs)
          to label %.noexc102 unwind label %.loopexit150 ; 9 uses

.noexc102:                                        ; preds = %bb.x
  %i.bu = load i32, ptr %i.at, align 8, !tbaa !141 ; 4 uses
  %.not.i.i.i = icmp eq i32 %i.bu, 0
  %.pre.i.i.i = load ptr, ptr %5, align 8, !tbaa !138 ; 10 uses
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc102
  %.pre.i.i.i216 = ptrtoaddr ptr %.pre.i.i.i to i64
  %i.bv = ptrtoaddr ptr %i.bt to i64
  %wide.trip.count.i.i.i = zext i32 %i.bu to i64  ; 5 uses
  %min.iters.check = icmp ult i32 %i.bu, 4
  %i.bw = sub i64 %.pre.i.i.i216, %i.bv
  %diff.check = icmp ugt i64 %i.bw, -32
  %or.cond218 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond218, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 4294967292 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %index ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i, i64 %index ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %wide.load = load <2 x ptr>, ptr %i.by, align 8, !tbaa !143
  %wide.load217 = load <2 x ptr>, ptr %i.bz, align 8, !tbaa !143
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store <2 x ptr> %wide.load, ptr %i.bx, align 8, !tbaa !143
  store <2 x ptr> %wide.load217, ptr %i.ca, align 8, !tbaa !143
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec
  br i1 %i.cb, label %middle.block, label %vector.body, !llvm.loop !145

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
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.i.i.i.prol
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.i.i.i.prol
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !143
  store ptr %i.ce, ptr %i.cc, align 8, !tbaa !143
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !149

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.cf = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.cg = icmp ugt i64 %i.cf, -4
  br i1 %i.cg, label %._crit_edge.i.i.i, label %scalar.ph

._crit_edge.i.i.i:                                ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.noexc102
  %.not.i.i.i.i = icmp eq ptr %.pre.i.i.i, %i.as
  %i.ch = icmp eq ptr %.pre.i.i.i, null
  %or.cond.i.i.i.i = or i1 %.not.i.i.i.i, %i.ch
  br i1 %or.cond.i.i.i.i, label %_ZN6bufferIP3astLb0ELj16EE6expandEv.exit.i.i, label %bb.y

bb.y:                                             ; preds = %._crit_edge.i.i.i
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %.pre.i.i.i)
          to label %.noexc103 unwind label %.loopexit150

.noexc103:                                        ; preds = %bb.y
  %.pre2.pre.i.i = load i32, ptr %i.at, align 8, !tbaa !141
  br label %_ZN6bufferIP3astLb0ELj16EE6expandEv.exit.i.i

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.i.i.i
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.i.i.i
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !143
  store ptr %i.ck, ptr %i.ci, align 8, !tbaa !143
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.next.i.i.i
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !143
  store ptr %i.cn, ptr %i.cl, align 8, !tbaa !143
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.next.i.i.i.1
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !143
  store ptr %i.cq, ptr %i.co, align 8, !tbaa !143
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.next.i.i.i.2
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !143
  store ptr %i.ct, ptr %i.cr, align 8, !tbaa !143
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.i.i.i, label %scalar.ph, !llvm.loop !151

_ZN6bufferIP3astLb0ELj16EE6expandEv.exit.i.i:     ; preds = %.noexc103, %._crit_edge.i.i.i
  %.pre2.i.i = phi i32 [ %i.bu, %._crit_edge.i.i.i ], [ %.pre2.pre.i.i, %.noexc103 ]
  store ptr %i.bt, ptr %5, align 8, !tbaa !138
  store i32 %i.bq, ptr %i.au, align 4, !tbaa !142
  br label %bb.z

bb.z:                                             ; preds = %_ZN6bufferIP3astLb0ELj16EE6expandEv.exit.i.i, %._crit_edge.i.i
  %i.cu = phi i32 [ %i.bo, %._crit_edge.i.i ], [ %.pre2.i.i, %_ZN6bufferIP3astLb0ELj16EE6expandEv.exit.i.i ] ; 2 uses
  %i.cv = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.bt, %_ZN6bufferIP3astLb0ELj16EE6expandEv.exit.i.i ]
  %i.cw = zext i32 %i.cu to i64
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.cw
  store ptr %i.aw, ptr %i.cx, align 8, !tbaa !143
  %i.cy = add i32 %i.cu, 1
  store i32 %i.cy, ptr %i.at, align 8, !tbaa !141
  %i.cz = load ptr, ptr %0, align 8, !tbaa !64, !nonnull !15, !align !16
  %i.da = invoke noundef zeroext i1 @_ZNK11ast_manager15is_unique_valueEP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.cz, ptr noundef nonnull %i.aw)
          to label %bb.aa unwind label %.loopexit150

bb.aa:                                            ; preds = %bb.z
end_hunk_0
begin_hunk_1_@_ZN13bool_rewriter16mk_distinct_coreEjPKP4exprR7obj_refIS0_11ast_managerE:bb.a
  br i1 %i.dy, label %bb.al, label %.thread146

bb.al:                                            ; preds = %bb.ak
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 832
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !125 ; 3 uses
  %.not.i109 = icmp eq ptr %i.eb, null
  br i1 %.not.i109, label %bb.am, label %_ZN11ast_manager7inc_refEP3ast.exit.i110

_ZN11ast_manager7inc_refEP3ast.exit.i110:         ; preds = %bb.al
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8 ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !121
  %i.ee = add i32 %i.ed, 1
  store i32 %i.ee, ptr %i.ec, align 4, !tbaa !121
  br label %bb.am

bb.am:                                            ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i110, %bb.al
  %i.ef = load ptr, ptr %3, align 8, !tbaa !122   ; 3 uses
  %.not.i4.i111 = icmp eq ptr %i.ef, null
  br i1 %.not.i4.i111, label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit113, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !124, !nonnull !15, !align !16
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 8 ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !121
  %i.ek = add i32 %i.ej, -1                       ; 2 uses
  store i32 %i.ek, ptr %i.ei, align 4, !tbaa !121
  %i.el = icmp eq i32 %i.ek, 0
  br i1 %i.el, label %bb.ao, label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit113

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.eh, ptr noundef nonnull %i.ef)
          to label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit113 unwind label %bb.ap

_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit113:   ; preds = %bb.ao, %bb.am, %bb.an
  store ptr %i.eb, ptr %3, align 8, !tbaa !122
  br label %bb.bk

bb.ap:                                            ; preds = %bb.au, %bb.ao, %.thread146
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit149

.thread146:                                       ; preds = %bb.ak
  %i.en = load ptr, ptr %2, align 8, !tbaa !61
  %i.eo = invoke noundef zeroext i1 @_ZNK11ast_manager7is_boolEPK4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.dz, ptr noundef %i.en)
          to label %bb.aq unwind label %bb.ap

bb.aq:                                            ; preds = %.thread146
  br i1 %i.eo, label %bb.ar, label %bb.av

bb.ar:                                            ; preds = %bb.aq
  %i.ep = load ptr, ptr %0, align 8, !tbaa !64, !nonnull !15, !align !16
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 840
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !65 ; 3 uses
  %.not.i114 = icmp eq ptr %i.er, null
  br i1 %.not.i114, label %bb.as, label %_ZN11ast_manager7inc_refEP3ast.exit.i115

_ZN11ast_manager7inc_refEP3ast.exit.i115:         ; preds = %bb.ar
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8 ; 2 uses
  %i.et = load i32, ptr %i.es, align 4, !tbaa !121
  %i.eu = add i32 %i.et, 1
  store i32 %i.eu, ptr %i.es, align 4, !tbaa !121
  br label %bb.as

bb.as:                                            ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i115, %bb.ar
  %i.ev = load ptr, ptr %3, align 8, !tbaa !122   ; 3 uses
  %.not.i4.i116 = icmp eq ptr %i.ev, null
  br i1 %.not.i4.i116, label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit118, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ew = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !124, !nonnull !15, !align !16
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 8 ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !121
  %i.fa = add i32 %i.ez, -1                       ; 2 uses
  store i32 %i.fa, ptr %i.ey, align 4, !tbaa !121
  %i.fb = icmp eq i32 %i.fa, 0
  br i1 %i.fb, label %bb.au, label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit118

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ex, ptr noundef nonnull %i.ev)
          to label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit118 unwind label %bb.ap

_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit118:   ; preds = %bb.au, %bb.as, %bb.at
  store ptr %i.er, ptr %3, align 8, !tbaa !122
  br label %bb.bk

bb.av:                                            ; preds = %bb.aq
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.fd = load i8, ptr %i.fc, align 4, !tbaa !48, !range !63, !noundef !15
  %i.fe = trunc nuw i8 %i.fd to i1
  br i1 %i.fe, label %bb.aw, label %bb.bk

bb.aw:                                            ; preds = %bb.av
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !49
  %i.fh = icmp ult i32 %1, %i.fg
  br i1 %i.fh, label %bb.ax, label %bb.bk

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.fi = load ptr, ptr %0, align 8, !tbaa !64, !nonnull !15, !align !16
  %i.fj = ptrtoint ptr %i.fi to i64
  store i64 %i.fj, ptr %6, align 8, !tbaa !132
  %i.fk = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store ptr null, ptr %i.fk, align 8, !tbaa !133
  br label %bb.ba

.loopexit:                                        ; preds = %bb.bf, %bb.ba
  %i.fl = phi ptr [ %i.fs, %bb.ba ], [ %i.gm, %bb.bf ] ; 4 uses
  %indvars.iv.next174 = add nuw nsw i64 %indvars.iv173, 1
  %exitcond183.not = icmp eq i64 %indvars.iv.next180, %wide.trip.count
  br i1 %exitcond183.not, label %bb.ay, label %bb.ba, !llvm.loop !154

bb.ay:                                            ; preds = %.loopexit
  %i.fm = load ptr, ptr %0, align 8, !tbaa !64, !nonnull !15, !align !16
  %i.fn = icmp eq ptr %i.fl, null
  br i1 %i.fn, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fo = getelementptr inbounds i8, ptr %i.fl, i64 -4
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !134
  %i.fq = zext i32 %i.fp to i64
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i: ; preds = %bb.az, %bb.ay
  %.0.i.i.i = phi i64 [ %i.fq, %bb.az ], [ 0, %bb.ay ]
  %i.fr = invoke noundef ptr @_ZN11ast_manager6mk_appEiiSt4spanIKP4exprLm18446744073709551615EE(ptr noundef nonnull align 8 dereferenceable(952) %i.fm, i32 noundef 0, i32 noundef 5, ptr %i.fl, i64 %.0.i.i.i)
          to label %_ZN11ast_manager6mk_andERK10ref_vectorI4exprS_E.exit unwind label %bb.bi

bb.ba:                                            ; preds = %bb.ax, %.loopexit
  %i.fs = phi ptr [ null, %bb.ax ], [ %i.fl, %.loopexit ]
  %indvars.iv179 = phi i64 [ 0, %bb.ax ], [ %indvars.iv.next180, %.loopexit ] ; 2 uses
  %indvars.iv173 = phi i64 [ 1, %bb.ax ], [ %indvars.iv.next174, %.loopexit ] ; 2 uses
  %indvars.iv.next180 = add nuw nsw i64 %indvars.iv179, 1 ; 3 uses
  %i.ft = icmp samesign ult i64 %indvars.iv.next180, %wide.trip.count
  br i1 %i.ft, label %.lr.ph166, label %.loopexit

.lr.ph166:                                        ; preds = %bb.ba
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv179
  br label %bb.bb

bb.bb:                                            ; preds = %.lr.ph166, %bb.bf
  %indvars.iv175 = phi i64 [ %indvars.iv173, %.lr.ph166 ], [ %indvars.iv.next176, %bb.bf ] ; 2 uses
  %i.fv = load ptr, ptr %0, align 8, !tbaa !64, !nonnull !15, !align !16 ; 2 uses
  %i.fw = load ptr, ptr %i.fu, align 8, !tbaa !61
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv175
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !61
  %i.fz = invoke noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.fv, i32 noundef 0, i32 noundef 2, ptr noundef %i.fw, ptr noundef %i.fy)
          to label %_ZN11ast_manager5mk_eqEP4exprS1_.exit unwind label %bb.bg

_ZN11ast_manager5mk_eqEP4exprS1_.exit:            ; preds = %bb.bb
  %i.ga = invoke noundef ptr @_ZN11ast_manager6mk_appEiiP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.fv, i32 noundef 0, i32 noundef 8, ptr noundef %i.fz)
          to label %_ZN11ast_manager6mk_notEP4expr.exit unwind label %bb.bg ; 3 uses

_ZN11ast_manager6mk_notEP4expr.exit:              ; preds = %_ZN11ast_manager5mk_eqEP4exprS1_.exit
  %.not.i.i.i.i122 = icmp eq ptr %i.ga, null
  br i1 %.not.i.i.i.i122, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i, label %bb.bc

bb.bc:                                            ; preds = %_ZN11ast_manager6mk_notEP4expr.exit
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8 ; 2 uses
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !121
  %i.gd = add i32 %i.gc, 1
  store i32 %i.gd, ptr %i.gb, align 4, !tbaa !121
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i: ; preds = %bb.bc, %_ZN11ast_manager6mk_notEP4expr.exit
  %i.ge = load ptr, ptr %i.fk, align 8, !tbaa !133 ; 4 uses
  %i.gf = icmp eq ptr %i.ge, null
  br i1 %i.gf, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.gg = getelementptr inbounds i8, ptr %i.ge, i64 -4
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !134 ; 2 uses
  %i.gi = getelementptr inbounds i8, ptr %i.ge, i64 -8
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !134
  %i.gk = icmp eq i32 %i.gh, %i.gj
  br i1 %i.gk, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fk)
          to label %.noexc125 unwind label %bb.bg

.noexc125:                                        ; preds = %bb.be
  %.pre.i.i123 = load ptr, ptr %i.fk, align 8, !tbaa !133 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i123, i64 -4
  %.pre2.i.i124 = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !134
  br label %bb.bf

bb.bf:                                            ; preds = %.noexc125, %bb.bd
  %i.gl = phi i32 [ %.pre2.i.i124, %.noexc125 ], [ %i.gh, %bb.bd ] ; 2 uses
  %i.gm = phi ptr [ %.pre.i.i123, %.noexc125 ], [ %i.ge, %bb.bd ] ; 3 uses
  %i.gn = getelementptr inbounds i8, ptr %i.gm, i64 -4
  %i.go = zext i32 %i.gl to i64
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %i.go
  store ptr %i.ga, ptr %i.gp, align 8, !tbaa !61
  %i.gq = add i32 %i.gl, 1
  store i32 %i.gq, ptr %i.gn, align 4, !tbaa !134
  %indvars.iv.next176 = add nuw nsw i64 %indvars.iv175, 1 ; 2 uses
  %exitcond178.not = icmp eq i64 %indvars.iv.next176, %wide.trip.count
  br i1 %exitcond178.not, label %.loopexit, label %bb.bb, !llvm.loop !155

bb.bg:                                            ; preds = %bb.be, %_ZN11ast_manager5mk_eqEP4exprS1_.exit, %bb.bb
  %i.gr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

_ZN11ast_manager6mk_andERK10ref_vectorI4exprS_E.exit: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i
  %i.gs = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7obj_refI4expr11ast_managerEaSEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.fr)
          to label %bb.bh unwind label %bb.bi     ; 0 uses

bb.bh:                                            ; preds = %_ZN11ast_manager6mk_andERK10ref_vectorI4exprS_E.exit
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.bk

bb.bi:                                            ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i, %_ZN11ast_manager6mk_andERK10ref_vectorI4exprS_E.exit
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bg
  %.pn84 = phi { ptr, i32 } [ %i.gr, %bb.bg ], [ %i.gt, %bb.bi ]
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %.loopexit149

bb.bk:                                            ; preds = %bb.aj, %.thread141, %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit118, %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit113, %bb.av, %bb.aw, %bb.bh
  %.580 = phi i32 [ 4, %bb.aj ], [ 4, %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit113 ], [ 2, %bb.bh ], [ 4, %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit118 ], [ 5, %bb.aw ], [ 5, %bb.av ], [ 4, %.thread141 ]
  %i.gu = load ptr, ptr %5, align 8, !tbaa !138   ; 4 uses
  %i.gv = load i32, ptr %i.at, align 8, !tbaa !141 ; 2 uses
  %i.gw = zext i32 %i.gv to i64
  %.idx.i.i = shl nuw nsw i64 %i.gw, 3            ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gu, i64 %.idx.i.i
  %.not8.i.i = icmp eq i32 %i.gv, 0
  br i1 %.not8.i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.bk
  %i.gy = add nsw i64 %.idx.i.i, -8               ; 2 uses
  %i.gz = lshr exact i64 %i.gy, 3
  %i.ha = add nuw nsw i64 %i.gz, 1
  %xtraiter222 = and i64 %i.ha, 3                 ; 2 uses
  %lcmp.mod223.not = icmp eq i64 %xtraiter222, 0
  br i1 %lcmp.mod223.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.09.i.i.prol = phi ptr [ %i.hf, %.lr.ph.i.i.prol ], [ %i.gu, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter224 = phi i64 [ %prol.iter224.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.hb = load ptr, ptr %.09.i.i.prol, align 8, !tbaa !143
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 4 ; 2 uses
  %i.hd = load i32, ptr %i.hc, align 4
  %i.he = and i32 %i.hd, -65537
  store i32 %i.he, ptr %i.hc, align 4
  %i.hf = getelementptr inbounds nuw i8, ptr %.09.i.i.prol, i64 8 ; 2 uses
  %prol.iter224.next = add i64 %prol.iter224, 1   ; 2 uses
  %prol.iter224.cmp.not = icmp eq i64 %prol.iter224.next, %xtraiter222
  br i1 %prol.iter224.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !156

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.09.i.i.unr = phi ptr [ %i.gu, %.lr.ph.i.i.preheader ], [ %i.hf, %.lr.ph.i.i.prol ]
  %i.hg = icmp ult i64 %i.gy, 24
  br i1 %i.hg, label %.loopexit.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.ia, %.lr.ph.i.i ], [ %.09.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %i.hh = load ptr, ptr %.09.i.i, align 8, !tbaa !143
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 4 ; 2 uses
  %i.hj = load i32, ptr %i.hi, align 4
  %i.hk = and i32 %i.hj, -65537
  store i32 %i.hk, ptr %i.hi, align 4
  %i.hl = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !143
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 4 ; 2 uses
  %i.ho = load i32, ptr %i.hn, align 4
  %i.hp = and i32 %i.ho, -65537
  store i32 %i.hp, ptr %i.hn, align 4
  %i.hq = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !143
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 4 ; 2 uses
  %i.ht = load i32, ptr %i.hs, align 4
  %i.hu = and i32 %i.ht, -65537
  store i32 %i.hu, ptr %i.hs, align 4
  %i.hv = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 24
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !143
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 4 ; 2 uses
  %i.hy = load i32, ptr %i.hx, align 4
  %i.hz = and i32 %i.hy, -65537
  store i32 %i.hz, ptr %i.hx, align 4
  %i.ia = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 32 ; 2 uses
  %.not.i.i126.3 = icmp eq ptr %i.ia, %i.gx
  br i1 %.not.i.i126.3, label %.loopexit.loopexit.i, label %.lr.ph.i.i

.loopexit.loopexit.i:                             ; preds = %.lr.ph.i.i, %.lr.ph.i.i.prol.loopexit
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !138
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %bb.bk
  %i.ib = phi ptr [ %.pre.i, %.loopexit.loopexit.i ], [ %i.gu, %bb.bk ] ; 3 uses
  store i32 0, ptr %i.at, align 8, !tbaa !141
  %.not.i.i.i.i127 = icmp eq ptr %i.ib, %i.as
  %i.ic = icmp eq ptr %i.ib, null
  %or.cond.i.i.i.i128 = or i1 %.not.i.i.i.i127, %i.ic
  br i1 %or.cond.i.i.i.i128, label %_ZN13ast_fast_markILj1EED2Ev.exit, label %bb.bl

bb.bl:                                            ; preds = %.loopexit.i
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ib)
          to label %_ZN13ast_fast_markILj1EED2Ev.exit unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.id = landingpad { ptr, i32 }
          catch ptr null
  %i.ie = extractvalue { ptr, i32 } %i.id, 0
  call void @__clang_call_terminate(ptr %i.ie) #21
  unreachable

_ZN13ast_fast_markILj1EED2Ev.exit:                ; preds = %.loopexit.i, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.bn

.loopexit149:                                     ; preds = %.loopexit149.loopexit, %.loopexit149.loopexit.split-lp, %.loopexit.split-lp, %.loopexit150, %.loopexit.split-lp151, %bb.bj, %bb.ap
  %.pn87 = phi { ptr, i32 } [ %i.em, %bb.ap ], [ %.pn84, %bb.bj ], [ %lpad.loopexit.split-lp153, %.loopexit.split-lp151 ], [ %lpad.loopexit152, %.loopexit150 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit207, %.loopexit149.loopexit ], [ %lpad.loopexit.split-lp208, %.loopexit149.loopexit.split-lp ]
  call void @_ZN13ast_fast_markILj1EED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.bo

bb.bn:                                            ; preds = %_ZN13ast_fast_markILj1EED2Ev.exit, %_ZN7obj_refI4expr11ast_managerED2Ev.exit, %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit
  %.6 = phi i32 [ 4, %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit ], [ 1, %_ZN7obj_refI4expr11ast_managerED2Ev.exit ], [ %.580, %_ZN13ast_fast_markILj1EED2Ev.exit ]
  ret i32 %.6

bb.bo:                                            ; preds = %.loopexit149, %bb.p
  %.pn89 = phi { ptr, i32 } [ %i.ar, %bb.p ], [ %.pn87, %.loopexit149 ]
  resume { ptr, i32 } %.pn89
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 4, 6) i32 @_ZN13bool_rewriter11mk_not_coreEP4exprR7obj_refIS0_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr nofree noundef readonly captures(address) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.obj_ref, align 8             ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 65535
  %i.d = icmp eq i32 %i.c, 0                      ; 2 uses
  br i1 %i.d, label %bb.b, label %_ZNK11ast_manager6is_notEPK4expr.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !126
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !51   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZNK11ast_manager6is_notEPK4expr.exit.thread, label %_ZNK11ast_manager6is_notEPK4expr.exit

_ZNK11ast_manager6is_notEPK4expr.exit:            ; preds = %bb.b
  %i.i = load i32, ptr %i.h, align 8, !tbaa !131
  %i.j = icmp eq i32 %i.i, 0
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.l = load i32, ptr %i.k, align 4
  %i.m = icmp eq i32 %i.l, 8
  %i.n = select i1 %i.j, i1 %i.m, i1 false
  br i1 %i.n, label %bb.c, label %_ZNK11ast_manager6is_notEPK4expr.exit.thread

bb.c:                                             ; preds = %_ZNK11ast_manager6is_notEPK4expr.exit
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !61   ; 3 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.d, label %_ZN11ast_manager7inc_refEP3ast.exit.i

_ZN11ast_manager7inc_refEP3ast.exit.i:            ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !121
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.q, align 4, !tbaa !121
  br label %bb.d

bb.d:                                             ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i, %bb.c
  %i.t = load ptr, ptr %2, align 8, !tbaa !122    ; 3 uses
  %.not.i4.i = icmp eq ptr %i.t, null
  br i1 %.not.i4.i, label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !124, !nonnull !15, !align !16
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !121
  %i.y = add i32 %i.x, -1                         ; 2 uses
  store i32 %i.y, ptr %i.w, align 4, !tbaa !121
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.f, label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.v, ptr noundef nonnull %i.t)
  br label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit

_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit:      ; preds = %bb.d, %bb.e, %bb.f
  store ptr %i.p, ptr %2, align 8, !tbaa !122
  br label %_ZNK13bool_rewriter5is_eqEP4expr.exit.thread

_ZNK11ast_manager6is_notEPK4expr.exit.thread:     ; preds = %bb.b, %bb.a, %_ZNK11ast_manager6is_notEPK4expr.exit
  %i.aa = load ptr, ptr %0, align 8, !tbaa !64, !nonnull !15, !align !16 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 832
end_hunk_1
