Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/array_axioms?download=true
inline.NumInlined: 1186
inline.NumDeleted: 535
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN5array6solver28assert_select_as_array_axiomEP3appS2_:.lr.ph.preheader.i.i
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i, label %.lr.ph.i.i, !llvm.loop !0

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i:           ; preds = %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit.i.i
  store ptr %2, ptr %i.q, align 8, !tbaa !162
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.x = getelementptr inbounds i8, ptr %i.q, i64 -4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !30
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !164, !nonnull !58, !align !59
  %i.ab = load i32, ptr %i.f, align 8, !tbaa !84
  %i.ac = invoke noundef ptr @_ZN11ast_manager6mk_appEiijPK9parameterjPKP4exprP4sort(ptr noundef nonnull align 8 dereferenceable(952) %i.aa, i32 noundef %i.ab, i32 noundef 1, i32 noundef 0, ptr noundef null, i32 noundef %i.y, ptr noundef nonnull %i.q, ptr noundef null)
          to label %_ZNK10array_util9mk_selectERK10ptr_vectorI4exprE.exit unwind label %bb.p ; 6 uses

_ZNK10array_util9mk_selectERK10ptr_vectorI4exprE.exit: ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !165, !nonnull !58, !align !59 ; 3 uses
  store ptr %i.ac, ptr %4, align 8, !tbaa !167
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !168
  %.not.i.i16 = icmp eq ptr %i.ac, null           ; 2 uses
  br i1 %.not.i.i16, label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i

_ZN11ast_manager7inc_refEP3ast.exit.i.i:          ; preds = %_ZNK10array_util9mk_selectERK10ptr_vectorI4exprE.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !169
  %i.ai = add i32 %i.ah, 1
  store i32 %i.ai, ptr %i.ag, align 4, !tbaa !169
  br label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit

_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit:  ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i, %_ZNK10array_util9mk_selectERK10ptr_vectorI4exprE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.aj = load ptr, ptr %3, align 8, !tbaa !161   ; 3 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 -4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !30
  %i.an = add i32 %i.am, -1
  br label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit:             ; preds = %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit, %bb.c
  %.0.i = phi i32 [ %i.an, %bb.c ], [ -1, %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.ap = invoke noundef ptr @_ZN11ast_manager6mk_appEP9func_decljPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.ae, ptr noundef %i.g, i32 noundef %.0.i, ptr noundef nonnull %i.ao)
          to label %bb.d unwind label %bb.q       ; 6 uses

bb.d:                                             ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit
  %i.aq = load ptr, ptr %i.ad, align 8, !tbaa !165, !nonnull !58, !align !59 ; 2 uses
  store ptr %i.ap, ptr %5, align 8, !tbaa !167
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !168
  %.not.i.i17 = icmp eq ptr %i.ap, null           ; 2 uses
  br i1 %.not.i.i17, label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit19, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i18

_ZN11ast_manager7inc_refEP3ast.exit.i.i18:        ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !169
  %i.au = add i32 %i.at, 1
  store i32 %i.au, ptr %i.as, align 4, !tbaa !169
  br label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit19

_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit19: ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i18, %bb.d
  %i.av = invoke noundef ptr @_ZN3euf13th_euf_solver13e_internalizeEP4expr(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef %i.ac)
          to label %bb.e unwind label %bb.r

bb.e:                                             ; preds = %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit19
  %i.aw = invoke noundef ptr @_ZN3euf13th_euf_solver13e_internalizeEP4expr(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef %i.ap)
          to label %bb.f unwind label %bb.r

bb.f:                                             ; preds = %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !57, !nonnull !58, !align !59
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !170
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = invoke noundef zeroext i1 @_ZN3euf6solver9propagateEPNS_5enodeES2_m(ptr noundef nonnull align 8 dereferenceable(8528) %i.ay, ptr noundef %i.av, ptr noundef %i.aw, i64 noundef %i.bb)
          to label %bb.g unwind label %bb.r

bb.g:                                             ; preds = %bb.f
  br i1 %.not.i.i17, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !169
  %i.bf = add i32 %i.be, -1                       ; 2 uses
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !169
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.i, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.aq, ptr noundef nonnull %i.ap)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  call void @__clang_call_terminate(ptr %i.bi) #17
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit:         ; preds = %bb.g, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br i1 %.not.i.i16, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit22, label %bb.k

bb.k:                                             ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !169
  %i.bl = add i32 %i.bk, -1                       ; 2 uses
  store i32 %i.bl, ptr %i.bj, align 4, !tbaa !169
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.l, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit22

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ae, ptr noundef nonnull %i.ac)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit22 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  call void @__clang_call_terminate(ptr %i.bo) #17
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit22:       ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.bp = load ptr, ptr %3, align 8, !tbaa !161   ; 2 uses
  %.not.i.i23 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i23, label %_ZN6vectorIP4exprLb0EjED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit22
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.bq)
          to label %_ZN6vectorIP4exprLb0EjED2Ev.exit unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #17
  unreachable

_ZN6vectorIP4exprLb0EjED2Ev.exit:                 ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit22, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret i1 %i.bc

bb.p:                                             ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.q:                                             ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.r:                                             ; preds = %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit19, %bb.f, %bb.e
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #16
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %i.bv, %bb.r ], [ %i.bu, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #16
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.p
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.s ], [ %i.bt, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @_ZN6vectorIP4exprLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN5array6solver25assert_select_store_axiomEP3appS2_(ptr noundef nonnull align 8 dereferenceable(544) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.ptr_buffer, align 8          ; 16 uses
  %4 = alloca %class.ptr_buffer, align 8          ; 16 uses
  %5 = alloca %class.obj_ref, align 8             ; 6 uses
  %6 = alloca %class.obj_ref, align 8             ; 6 uses
  %7 = alloca %class.obj_ref, align 8             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !206
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 10 uses
  store i32 0, ptr %i.b, align 8, !tbaa !207
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 5 uses
  store i32 16, ptr %i.c, align 4, !tbaa !208
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.d, ptr %4, align 8, !tbaa !206
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 10 uses
  store i32 0, ptr %i.e, align 8, !tbaa !207
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 5 uses
  store i32 16, ptr %i.f, align 4, !tbaa !208
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i32, ptr %i.g, align 8, !tbaa !160  ; 3 uses
  %i.i = icmp ugt i32 %i.h, 1
  br i1 %i.i, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %wide.trip.count = zext i32 %i.h to i64         ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d
  br i1 %i.w, label %bb.e, label %.critedge

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %.061241 = phi i1 [ false, %.lr.ph ], [ %i.w, %bb.d ]
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !162
  %i.n = invoke noundef ptr @_ZNK3euf13th_euf_solver10expr2enodeEP4expr(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef %i.m)
          to label %bb.c unwind label %.loopexit.split-lp228.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !175
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !162
  %i.s = invoke noundef ptr @_ZNK3euf13th_euf_solver10expr2enodeEP4expr(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef %i.r)
          to label %bb.d unwind label %.loopexit.split-lp228.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !175
  %i.v = icmp ne ptr %i.p, %i.u
  %i.w = or i1 %.061241, %i.v                     ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !292

bb.e:                                             ; preds = %._crit_edge
  %i.x = load i32, ptr %i.b, align 8, !tbaa !207  ; 2 uses
  %i.y = load i32, ptr %i.c, align 4, !tbaa !208  ; 2 uses
  %.not.i = icmp ult i32 %i.x, %i.y
  br i1 %.not.i, label %._crit_edge.i, label %bb.f

._crit_edge.i:                                    ; preds = %bb.e
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !206
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.z = shl i32 %i.y, 1                          ; 2 uses
  %i.aa = zext i32 %i.z to i64
  %i.ab = shl nuw nsw i64 %i.aa, 3
  %i.ac = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.ab)
          to label %.noexc unwind label %.loopexit.split-lp228.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 9 uses

.noexc:                                           ; preds = %bb.f
  %i.ad = load i32, ptr %i.b, align 8, !tbaa !207 ; 4 uses
  %.not.i.i = icmp eq i32 %i.ad, 0
  %.pre.i.i = load ptr, ptr %3, align 8, !tbaa !206 ; 10 uses
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc
  %.pre.i.i314 = ptrtoaddr ptr %.pre.i.i to i64
  %i.ae = ptrtoaddr ptr %i.ac to i64
  %wide.trip.count.i.i = zext i32 %i.ad to i64    ; 5 uses
  %min.iters.check = icmp ult i32 %i.ad, 8
  %i.af = sub i64 %.pre.i.i314, %i.ae
  %diff.check = icmp ugt i64 %i.af, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 4294967292 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %index ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %index ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %wide.load = load <2 x ptr>, ptr %i.ah, align 8, !tbaa !162
  %wide.load315 = load <2 x ptr>, ptr %i.ai, align 8, !tbaa !162
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store <2 x ptr> %wide.load, ptr %i.ag, align 8, !tbaa !162
  store <2 x ptr> %wide.load315, ptr %i.aj, align 8, !tbaa !162
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !293

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %._crit_edge.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.i.i.prol
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i.prol
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !162
  store ptr %i.an, ptr %i.al, align 8, !tbaa !162
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !294

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ]
  %i.ao = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.ap = icmp ugt i64 %i.ao, -4
  br i1 %i.ap, label %._crit_edge.i.i, label %scalar.ph

._crit_edge.i.i:                                  ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.noexc
  %.not.i.i.i = icmp eq ptr %.pre.i.i, %i.a
  %i.aq = icmp eq ptr %.pre.i.i, null
  %or.cond.i.i.i = or i1 %.not.i.i.i, %i.aq
  br i1 %or.cond.i.i.i, label %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i, label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %.pre.i.i)
          to label %.noexc83 unwind label %.loopexit.split-lp228.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc83:                                         ; preds = %bb.g
  %.pre2.pre.i = load i32, ptr %i.b, align 8, !tbaa !207
  br label %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.i.i
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !162
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !162
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.next.i.i
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !162
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !162
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.next.i.i.1
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.1
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !162
  store ptr %i.az, ptr %i.ax, align 8, !tbaa !162
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.next.i.i.2
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.2
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !162
  store ptr %i.bc, ptr %i.ba, align 8, !tbaa !162
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.i.i, label %scalar.ph, !llvm.loop !295

_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i:      ; preds = %.noexc83, %._crit_edge.i.i
  %.pre2.i = phi i32 [ %i.ad, %._crit_edge.i.i ], [ %.pre2.pre.i, %.noexc83 ]
  store ptr %i.ac, ptr %3, align 8, !tbaa !206
  store i32 %i.z, ptr %i.c, align 4, !tbaa !208
  br label %bb.h

bb.h:                                             ; preds = %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i, %._crit_edge.i
  %i.bd = phi i32 [ %i.x, %._crit_edge.i ], [ %.pre2.i, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i ] ; 2 uses
  %i.be = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.ac, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i ]
  %i.bf = zext i32 %i.bd to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bf
  store ptr %2, ptr %i.bg, align 8, !tbaa !162
  %i.bh = add i32 %i.bd, 1
  store i32 %i.bh, ptr %i.b, align 8, !tbaa !207
  %i.bi = load ptr, ptr %i.k, align 8, !tbaa !162
  %i.bj = load i32, ptr %i.e, align 8, !tbaa !207 ; 2 uses
  %i.bk = load i32, ptr %i.f, align 4, !tbaa !208 ; 3 uses
  %.not.i84 = icmp ult i32 %i.bj, %i.bk
  br i1 %.not.i84, label %._crit_edge.i98, label %bb.i

._crit_edge.i98:                                  ; preds = %bb.h
  %.pre.i99 = load ptr, ptr %4, align 8, !tbaa !206
  br label %.lr.ph244

bb.i:                                             ; preds = %bb.h
  %i.bl = shl i32 %i.bk, 1                        ; 3 uses
  %i.bm = zext i32 %i.bl to i64
  %i.bn = shl nuw nsw i64 %i.bm, 3
  %i.bo = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.bn)
          to label %.noexc100 unwind label %.loopexit.split-lp228.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 9 uses

.noexc100:                                        ; preds = %bb.i
  %i.bp = load i32, ptr %i.e, align 8, !tbaa !207 ; 4 uses
  %.not.i.i85 = icmp eq i32 %i.bp, 0
  %.pre.i.i86 = load ptr, ptr %4, align 8, !tbaa !206 ; 10 uses
  br i1 %.not.i.i85, label %._crit_edge.i.i92, label %.lr.ph.i.i87

.lr.ph.i.i87:                                     ; preds = %.noexc100
  %.pre.i.i86319 = ptrtoaddr ptr %.pre.i.i86 to i64
  %i.bq = ptrtoaddr ptr %i.bo to i64
  %wide.trip.count.i.i88 = zext i32 %i.bp to i64  ; 5 uses
  %min.iters.check321 = icmp ult i32 %i.bp, 8
  %i.br = sub i64 %.pre.i.i86319, %i.bq
  %diff.check323 = icmp ugt i64 %i.br, -32
  %or.cond364.a = select i1 %min.iters.check321, i1 true, i1 %diff.check323
  br i1 %or.cond364.a, label %scalar.ph320.preheader, label %vector.ph324

vector.ph324:                                     ; preds = %.lr.ph.i.i87
  %n.vec325 = and i64 %wide.trip.count.i.i88, 4294967292 ; 3 uses
  br label %vector.body326

vector.body326:                                   ; preds = %vector.body326, %vector.ph324
  %index327 = phi i64 [ 0, %vector.ph324 ], [ %index.next330, %vector.body326 ] ; 3 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %index327 ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i86, i64 %index327 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %wide.load328.a = load <2 x ptr>, ptr %i.bt, align 8, !tbaa !162
  %wide.load329 = load <2 x ptr>, ptr %i.bu, align 8, !tbaa !162
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store <2 x ptr> %wide.load328.a, ptr %i.bs, align 8, !tbaa !162
  store <2 x ptr> %wide.load329, ptr %i.bv, align 8, !tbaa !162
  %index.next330 = add nuw i64 %index327, 4       ; 2 uses
  %i.bw = icmp eq i64 %index.next330, %n.vec325
  br i1 %i.bw, label %middle.block331, label %vector.body326, !llvm.loop !296

middle.block331:                                  ; preds = %vector.body326
  %cmp.n332 = icmp eq i64 %n.vec325, %wide.trip.count.i.i88
  br i1 %cmp.n332, label %._crit_edge.i.i92, label %scalar.ph320.preheader

scalar.ph320.preheader:                           ; preds = %.lr.ph.i.i87, %middle.block331
  %indvars.iv.i.i89.ph = phi i64 [ 0, %.lr.ph.i.i87 ], [ %n.vec325, %middle.block331 ] ; 3 uses
  %xtraiter377 = and i64 %wide.trip.count.i.i88, 3 ; 2 uses
  %lcmp.mod378.not = icmp eq i64 %xtraiter377, 0
  br i1 %lcmp.mod378.not, label %scalar.ph320.prol.loopexit, label %scalar.ph320.prol

scalar.ph320.prol:                                ; preds = %scalar.ph320.preheader, %scalar.ph320.prol
  %indvars.iv.i.i89.prol = phi i64 [ %indvars.iv.next.i.i90.prol, %scalar.ph320.prol ], [ %indvars.iv.i.i89.ph, %scalar.ph320.preheader ] ; 3 uses
  %prol.iter379 = phi i64 [ %prol.iter379.next, %scalar.ph320.prol ], [ 0, %scalar.ph320.preheader ]
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.i.i89.prol
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i86, i64 %indvars.iv.i.i89.prol
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !162
  store ptr %i.bz, ptr %i.bx, align 8, !tbaa !162
  %indvars.iv.next.i.i90.prol = add nuw nsw i64 %indvars.iv.i.i89.prol, 1 ; 2 uses
  %prol.iter379.next = add i64 %prol.iter379, 1   ; 2 uses
  %prol.iter379.cmp.not = icmp eq i64 %prol.iter379.next, %xtraiter377
  br i1 %prol.iter379.cmp.not, label %scalar.ph320.prol.loopexit, label %scalar.ph320.prol, !llvm.loop !297

scalar.ph320.prol.loopexit:                       ; preds = %scalar.ph320.prol, %scalar.ph320.preheader
  %indvars.iv.i.i89.unr = phi i64 [ %indvars.iv.i.i89.ph, %scalar.ph320.preheader ], [ %indvars.iv.next.i.i90.prol, %scalar.ph320.prol ]
  %i.ca = sub nsw i64 %indvars.iv.i.i89.ph, %wide.trip.count.i.i88
  %i.cb = icmp ugt i64 %i.ca, -4
  br i1 %i.cb, label %._crit_edge.i.i92, label %scalar.ph320

._crit_edge.i.i92:                                ; preds = %scalar.ph320.prol.loopexit, %scalar.ph320, %middle.block331, %.noexc100
  %.not.i.i.i93 = icmp eq ptr %.pre.i.i86, %i.d
  %i.cc = icmp eq ptr %.pre.i.i86, null
  %or.cond.i.i.i94 = or i1 %.not.i.i.i93, %i.cc
  br i1 %or.cond.i.i.i94, label %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i96, label %bb.j

bb.j:                                             ; preds = %._crit_edge.i.i92
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %.pre.i.i86)
          to label %.noexc101 unwind label %.loopexit.split-lp228.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc101:                                        ; preds = %bb.j
  %.pre2.pre.i95 = load i32, ptr %i.e, align 8, !tbaa !207
  br label %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i96

scalar.ph320:                                     ; preds = %scalar.ph320.prol.loopexit, %scalar.ph320
  %indvars.iv.i.i89 = phi i64 [ %indvars.iv.next.i.i90.3, %scalar.ph320 ], [ %indvars.iv.i.i89.unr, %scalar.ph320.prol.loopexit ] ; 6 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.i.i89
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i86, i64 %indvars.iv.i.i89
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !162
  store ptr %i.cf, ptr %i.cd, align 8, !tbaa !162
  %indvars.iv.next.i.i90 = add nuw nsw i64 %indvars.iv.i.i89, 1 ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.next.i.i90
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i86, i64 %indvars.iv.next.i.i90
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !162
  store ptr %i.ci, ptr %i.cg, align 8, !tbaa !162
  %indvars.iv.next.i.i90.1 = add nuw nsw i64 %indvars.iv.i.i89, 2 ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.next.i.i90.1
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i86, i64 %indvars.iv.next.i.i90.1
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !162
  store ptr %i.cl, ptr %i.cj, align 8, !tbaa !162
  %indvars.iv.next.i.i90.2 = add nuw nsw i64 %indvars.iv.i.i89, 3 ; 2 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.next.i.i90.2
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i86, i64 %indvars.iv.next.i.i90.2
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !162
  store ptr %i.co, ptr %i.cm, align 8, !tbaa !162
  %indvars.iv.next.i.i90.3 = add nuw nsw i64 %indvars.iv.i.i89, 4 ; 2 uses
  %exitcond.not.i.i91.3 = icmp eq i64 %indvars.iv.next.i.i90.3, %wide.trip.count.i.i88
  br i1 %exitcond.not.i.i91.3, label %._crit_edge.i.i92, label %scalar.ph320, !llvm.loop !298

_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i96:    ; preds = %.noexc101, %._crit_edge.i.i92
  %.pre2.i97 = phi i32 [ %i.bp, %._crit_edge.i.i92 ], [ %.pre2.pre.i95, %.noexc101 ]
  store ptr %i.bo, ptr %4, align 8, !tbaa !206
  store i32 %i.bl, ptr %i.f, align 4, !tbaa !208
  br label %.lr.ph244

.lr.ph244:                                        ; preds = %._crit_edge.i98, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i96
  %i.cp = phi i32 [ %i.bk, %._crit_edge.i98 ], [ %i.bl, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i96 ]
  %i.cq = phi i32 [ %i.bj, %._crit_edge.i98 ], [ %.pre2.i97, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i96 ] ; 2 uses
  %i.cr = phi ptr [ %.pre.i99, %._crit_edge.i98 ], [ %i.bo, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i96 ]
  %i.cs = zext i32 %i.cq to i64
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.cs
  store ptr %i.bi, ptr %i.ct, align 8, !tbaa !162
  %i.cu = add i32 %i.cq, 1                        ; 2 uses
  store i32 %i.cu, ptr %i.e, align 8, !tbaa !207
  br label %bb.k

._crit_edge245:                                   ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.cw = load i32, ptr %i.b, align 8, !tbaa !207
  %i.cx = load ptr, ptr %3, align 8, !tbaa !206
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !164, !nonnull !58, !align !59
  %i.da = load i32, ptr %i.cv, align 8, !tbaa !84
  %i.db = invoke noundef ptr @_ZN11ast_manager6mk_appEiijPK9parameterjPKP4exprP4sort(ptr noundef nonnull align 8 dereferenceable(952) %i.cz, i32 noundef %i.da, i32 noundef 1, i32 noundef 0, ptr noundef null, i32 noundef %i.cw, ptr noundef %i.cx, ptr noundef null)
          to label %_ZNK10array_util9mk_selectERK10ptr_bufferI4exprLj16EE.exit unwind label %bb.s ; 8 uses

bb.k:                                             ; preds = %.lr.ph244, %bb.q
  %i.dc = phi i32 [ %i.cp, %.lr.ph244 ], [ %i.fy, %bb.q ]
  %i.dd = phi i32 [ %i.cu, %.lr.ph244 ], [ %i.gd, %bb.q ]
  %indvars.iv262 = phi i64 [ 1, %.lr.ph244 ], [ %indvars.iv.next263, %bb.q ] ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv262 ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !162
  %i.dg = load i32, ptr %i.b, align 8, !tbaa !207 ; 2 uses
  %i.dh = load i32, ptr %i.c, align 4, !tbaa !208 ; 2 uses
  %.not.i104 = icmp ult i32 %i.dg, %i.dh
  br i1 %.not.i104, label %._crit_edge.i118, label %bb.l

._crit_edge.i118:                                 ; preds = %bb.k
  %.pre.i119 = load ptr, ptr %3, align 8, !tbaa !206
  br label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.di = shl i32 %i.dh, 1                        ; 2 uses
  %i.dj = zext i32 %i.di to i64
  %i.dk = shl nuw nsw i64 %i.dj, 3
  %i.dl = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.dk)
          to label %.noexc120 unwind label %.loopexit.split-lp228.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 9 uses

.noexc120:                                        ; preds = %bb.l
  %i.dm = load i32, ptr %i.b, align 8, !tbaa !207 ; 4 uses
  %.not.i.i105 = icmp eq i32 %i.dm, 0
  %.pre.i.i106 = load ptr, ptr %3, align 8, !tbaa !206 ; 10 uses
  br i1 %.not.i.i105, label %._crit_edge.i.i112, label %.lr.ph.i.i107

.lr.ph.i.i107:                                    ; preds = %.noexc120
  %.pre.i.i106350 = ptrtoaddr ptr %.pre.i.i106 to i64
  %i.dn = ptrtoaddr ptr %i.dl to i64
  %wide.trip.count.i.i108 = zext i32 %i.dm to i64 ; 5 uses
  %min.iters.check353 = icmp ult i32 %i.dm, 4
  %i.do = sub i64 %.pre.i.i106350, %i.dn
  %diff.check351 = icmp ugt i64 %i.do, -32
  %or.cond365.a = select i1 %min.iters.check353, i1 true, i1 %diff.check351
  br i1 %or.cond365.a, label %scalar.ph352.preheader, label %vector.ph354

vector.ph354:                                     ; preds = %.lr.ph.i.i107
  %n.vec355 = and i64 %wide.trip.count.i.i108, 4294967292 ; 3 uses
  br label %vector.body356

vector.body356:                                   ; preds = %vector.body356, %vector.ph354
  %index357 = phi i64 [ 0, %vector.ph354 ], [ %index.next360, %vector.body356 ] ; 3 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %index357 ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i106, i64 %index357 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %wide.load358.a = load <2 x ptr>, ptr %i.dq, align 8, !tbaa !162
  %wide.load359 = load <2 x ptr>, ptr %i.dr, align 8, !tbaa !162
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  store <2 x ptr> %wide.load358.a, ptr %i.dp, align 8, !tbaa !162
  store <2 x ptr> %wide.load359, ptr %i.ds, align 8, !tbaa !162
  %index.next360 = add nuw i64 %index357, 4       ; 2 uses
  %i.dt = icmp eq i64 %index.next360, %n.vec355
  br i1 %i.dt, label %middle.block361, label %vector.body356, !llvm.loop !299

middle.block361:                                  ; preds = %vector.body356
  %cmp.n362 = icmp eq i64 %n.vec355, %wide.trip.count.i.i108
  br i1 %cmp.n362, label %._crit_edge.i.i112, label %scalar.ph352.preheader

scalar.ph352.preheader:                           ; preds = %.lr.ph.i.i107, %middle.block361
  %indvars.iv.i.i109.ph = phi i64 [ 0, %.lr.ph.i.i107 ], [ %n.vec355, %middle.block361 ] ; 3 uses
  %xtraiter380 = and i64 %wide.trip.count.i.i108, 3 ; 2 uses
  %lcmp.mod381.not = icmp eq i64 %xtraiter380, 0
  br i1 %lcmp.mod381.not, label %scalar.ph352.prol.loopexit, label %scalar.ph352.prol

scalar.ph352.prol:                                ; preds = %scalar.ph352.preheader, %scalar.ph352.prol
  %indvars.iv.i.i109.prol = phi i64 [ %indvars.iv.next.i.i110.prol, %scalar.ph352.prol ], [ %indvars.iv.i.i109.ph, %scalar.ph352.preheader ] ; 3 uses
  %prol.iter382 = phi i64 [ %prol.iter382.next, %scalar.ph352.prol ], [ 0, %scalar.ph352.preheader ]
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %indvars.iv.i.i109.prol
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i106, i64 %indvars.iv.i.i109.prol
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !162
  store ptr %i.dw, ptr %i.du, align 8, !tbaa !162
  %indvars.iv.next.i.i110.prol = add nuw nsw i64 %indvars.iv.i.i109.prol, 1 ; 2 uses
  %prol.iter382.next = add i64 %prol.iter382, 1   ; 2 uses
  %prol.iter382.cmp.not = icmp eq i64 %prol.iter382.next, %xtraiter380
  br i1 %prol.iter382.cmp.not, label %scalar.ph352.prol.loopexit, label %scalar.ph352.prol, !llvm.loop !300

scalar.ph352.prol.loopexit:                       ; preds = %scalar.ph352.prol, %scalar.ph352.preheader
  %indvars.iv.i.i109.unr = phi i64 [ %indvars.iv.i.i109.ph, %scalar.ph352.preheader ], [ %indvars.iv.next.i.i110.prol, %scalar.ph352.prol ]
  %i.dx = sub nsw i64 %indvars.iv.i.i109.ph, %wide.trip.count.i.i108
  %i.dy = icmp ugt i64 %i.dx, -4
  br i1 %i.dy, label %._crit_edge.i.i112, label %scalar.ph352

._crit_edge.i.i112:                               ; preds = %scalar.ph352.prol.loopexit, %scalar.ph352, %middle.block361, %.noexc120
  %.not.i.i.i113 = icmp eq ptr %.pre.i.i106, %i.a
  %i.dz = icmp eq ptr %.pre.i.i106, null
  %or.cond.i.i.i114 = or i1 %.not.i.i.i113, %i.dz
  br i1 %or.cond.i.i.i114, label %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i116, label %bb.m

bb.m:                                             ; preds = %._crit_edge.i.i112
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %.pre.i.i106)
          to label %.noexc121 unwind label %.loopexit.split-lp228.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc121:                                        ; preds = %bb.m
  %.pre2.pre.i115 = load i32, ptr %i.b, align 8, !tbaa !207
  br label %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i116

scalar.ph352:                                     ; preds = %scalar.ph352.prol.loopexit, %scalar.ph352
  %indvars.iv.i.i109 = phi i64 [ %indvars.iv.next.i.i110.3, %scalar.ph352 ], [ %indvars.iv.i.i109.unr, %scalar.ph352.prol.loopexit ] ; 6 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %indvars.iv.i.i109
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i106, i64 %indvars.iv.i.i109
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !162
  store ptr %i.ec, ptr %i.ea, align 8, !tbaa !162
  %indvars.iv.next.i.i110 = add nuw nsw i64 %indvars.iv.i.i109, 1 ; 2 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %indvars.iv.next.i.i110
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i106, i64 %indvars.iv.next.i.i110
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !162
  store ptr %i.ef, ptr %i.ed, align 8, !tbaa !162
  %indvars.iv.next.i.i110.1 = add nuw nsw i64 %indvars.iv.i.i109, 2 ; 2 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %indvars.iv.next.i.i110.1
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i106, i64 %indvars.iv.next.i.i110.1
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !162
  store ptr %i.ei, ptr %i.eg, align 8, !tbaa !162
  %indvars.iv.next.i.i110.2 = add nuw nsw i64 %indvars.iv.i.i109, 3 ; 2 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %indvars.iv.next.i.i110.2
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i106, i64 %indvars.iv.next.i.i110.2
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !162
  store ptr %i.el, ptr %i.ej, align 8, !tbaa !162
  %indvars.iv.next.i.i110.3 = add nuw nsw i64 %indvars.iv.i.i109, 4 ; 2 uses
  %exitcond.not.i.i111.3 = icmp eq i64 %indvars.iv.next.i.i110.3, %wide.trip.count.i.i108
  br i1 %exitcond.not.i.i111.3, label %._crit_edge.i.i112, label %scalar.ph352, !llvm.loop !301

_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i116:   ; preds = %.noexc121, %._crit_edge.i.i112
  %.pre2.i117 = phi i32 [ %i.dm, %._crit_edge.i.i112 ], [ %.pre2.pre.i115, %.noexc121 ]
  store ptr %i.dl, ptr %3, align 8, !tbaa !206
  store i32 %i.di, ptr %i.c, align 4, !tbaa !208
  %.pre = load i32, ptr %i.e, align 8, !tbaa !207
  %.pre272 = load i32, ptr %i.f, align 4, !tbaa !208
  br label %bb.n

bb.n:                                             ; preds = %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i116, %._crit_edge.i118
  %i.em = phi i32 [ %i.dc, %._crit_edge.i118 ], [ %.pre272, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i116 ] ; 3 uses
  %i.en = phi i32 [ %i.dd, %._crit_edge.i118 ], [ %.pre, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i116 ] ; 2 uses
  %i.eo = phi i32 [ %i.dg, %._crit_edge.i118 ], [ %.pre2.i117, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i116 ] ; 2 uses
  %i.ep = phi ptr [ %.pre.i119, %._crit_edge.i118 ], [ %i.dl, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i116 ]
  %i.eq = zext i32 %i.eo to i64
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %i.eq
  store ptr %i.df, ptr %i.er, align 8, !tbaa !162
  %i.es = add i32 %i.eo, 1
  store i32 %i.es, ptr %i.b, align 8, !tbaa !207
  %i.et = load ptr, ptr %i.de, align 8, !tbaa !162
  %.not.i123 = icmp ult i32 %i.en, %i.em
  br i1 %.not.i123, label %._crit_edge.i137, label %bb.o

._crit_edge.i137:                                 ; preds = %bb.n
  %.pre.i138 = load ptr, ptr %4, align 8, !tbaa !206
  br label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.eu = shl i32 %i.em, 1                        ; 3 uses
  %i.ev = zext i32 %i.eu to i64
  %i.ew = shl nuw nsw i64 %i.ev, 3
  %i.ex = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.ew)
          to label %.noexc139 unwind label %.loopexit.split-lp228.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 9 uses

.noexc139:                                        ; preds = %bb.o
  %i.ey = load i32, ptr %i.e, align 8, !tbaa !207 ; 4 uses
  %.not.i.i124 = icmp eq i32 %i.ey, 0
  %.pre.i.i125 = load ptr, ptr %4, align 8, !tbaa !206 ; 10 uses
  br i1 %.not.i.i124, label %._crit_edge.i.i131, label %.lr.ph.i.i126

.lr.ph.i.i126:                                    ; preds = %.noexc139
  %.pre.i.i125335 = ptrtoaddr ptr %.pre.i.i125 to i64
  %i.ez = ptrtoaddr ptr %i.ex to i64
  %wide.trip.count.i.i127 = zext i32 %i.ey to i64 ; 5 uses
  %min.iters.check338 = icmp ult i32 %i.ey, 4
  %i.fa = sub i64 %.pre.i.i125335, %i.ez
  %diff.check336 = icmp ugt i64 %i.fa, -32
  %or.cond366 = select i1 %min.iters.check338, i1 true, i1 %diff.check336
  br i1 %or.cond366, label %scalar.ph337.preheader, label %vector.ph339

vector.ph339:                                     ; preds = %.lr.ph.i.i126
  %n.vec340 = and i64 %wide.trip.count.i.i127, 4294967292 ; 3 uses
  br label %vector.body341

vector.body341:                                   ; preds = %vector.body341, %vector.ph339
  %index342 = phi i64 [ 0, %vector.ph339 ], [ %index.next345, %vector.body341 ] ; 3 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %index342 ; 2 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i125, i64 %index342 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %wide.load343.a = load <2 x ptr>, ptr %i.fc, align 8, !tbaa !162
  %wide.load344 = load <2 x ptr>, ptr %i.fd, align 8, !tbaa !162
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  store <2 x ptr> %wide.load343.a, ptr %i.fb, align 8, !tbaa !162
  store <2 x ptr> %wide.load344, ptr %i.fe, align 8, !tbaa !162
  %index.next345 = add nuw i64 %index342, 4       ; 2 uses
  %i.ff = icmp eq i64 %index.next345, %n.vec340
  br i1 %i.ff, label %middle.block346, label %vector.body341, !llvm.loop !302

middle.block346:                                  ; preds = %vector.body341
  %cmp.n347 = icmp eq i64 %n.vec340, %wide.trip.count.i.i127
  br i1 %cmp.n347, label %._crit_edge.i.i131, label %scalar.ph337.preheader

scalar.ph337.preheader:                           ; preds = %.lr.ph.i.i126, %middle.block346
  %indvars.iv.i.i128.ph = phi i64 [ 0, %.lr.ph.i.i126 ], [ %n.vec340, %middle.block346 ] ; 3 uses
  %xtraiter383 = and i64 %wide.trip.count.i.i127, 3 ; 2 uses
  %lcmp.mod384.not = icmp eq i64 %xtraiter383, 0
  br i1 %lcmp.mod384.not, label %scalar.ph337.prol.loopexit, label %scalar.ph337.prol

scalar.ph337.prol:                                ; preds = %scalar.ph337.preheader, %scalar.ph337.prol
  %indvars.iv.i.i128.prol = phi i64 [ %indvars.iv.next.i.i129.prol, %scalar.ph337.prol ], [ %indvars.iv.i.i128.ph, %scalar.ph337.preheader ] ; 3 uses
  %prol.iter385 = phi i64 [ %prol.iter385.next, %scalar.ph337.prol ], [ 0, %scalar.ph337.preheader ]
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %indvars.iv.i.i128.prol
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i125, i64 %indvars.iv.i.i128.prol
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !162
  store ptr %i.fi, ptr %i.fg, align 8, !tbaa !162
  %indvars.iv.next.i.i129.prol = add nuw nsw i64 %indvars.iv.i.i128.prol, 1 ; 2 uses
  %prol.iter385.next = add i64 %prol.iter385, 1   ; 2 uses
  %prol.iter385.cmp.not = icmp eq i64 %prol.iter385.next, %xtraiter383
  br i1 %prol.iter385.cmp.not, label %scalar.ph337.prol.loopexit, label %scalar.ph337.prol, !llvm.loop !303

scalar.ph337.prol.loopexit:                       ; preds = %scalar.ph337.prol, %scalar.ph337.preheader
  %indvars.iv.i.i128.unr = phi i64 [ %indvars.iv.i.i128.ph, %scalar.ph337.preheader ], [ %indvars.iv.next.i.i129.prol, %scalar.ph337.prol ]
  %i.fj = sub nsw i64 %indvars.iv.i.i128.ph, %wide.trip.count.i.i127
  %i.fk = icmp ugt i64 %i.fj, -4
  br i1 %i.fk, label %._crit_edge.i.i131, label %scalar.ph337

._crit_edge.i.i131:                               ; preds = %scalar.ph337.prol.loopexit, %scalar.ph337, %middle.block346, %.noexc139
  %.not.i.i.i132 = icmp eq ptr %.pre.i.i125, %i.d
  %i.fl = icmp eq ptr %.pre.i.i125, null
  %or.cond.i.i.i133 = or i1 %.not.i.i.i132, %i.fl
  br i1 %or.cond.i.i.i133, label %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i135, label %bb.p

bb.p:                                             ; preds = %._crit_edge.i.i131
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %.pre.i.i125)
          to label %.noexc140 unwind label %.loopexit.split-lp228.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc140:                                        ; preds = %bb.p
  %.pre2.pre.i134 = load i32, ptr %i.e, align 8, !tbaa !207
  br label %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i135

scalar.ph337:                                     ; preds = %scalar.ph337.prol.loopexit, %scalar.ph337
  %indvars.iv.i.i128 = phi i64 [ %indvars.iv.next.i.i129.3, %scalar.ph337 ], [ %indvars.iv.i.i128.unr, %scalar.ph337.prol.loopexit ] ; 6 uses
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %indvars.iv.i.i128
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i125, i64 %indvars.iv.i.i128
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !162
  store ptr %i.fo, ptr %i.fm, align 8, !tbaa !162
  %indvars.iv.next.i.i129 = add nuw nsw i64 %indvars.iv.i.i128, 1 ; 2 uses
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %indvars.iv.next.i.i129
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i125, i64 %indvars.iv.next.i.i129
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !162
  store ptr %i.fr, ptr %i.fp, align 8, !tbaa !162
  %indvars.iv.next.i.i129.1 = add nuw nsw i64 %indvars.iv.i.i128, 2 ; 2 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %indvars.iv.next.i.i129.1
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i125, i64 %indvars.iv.next.i.i129.1
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !162
  store ptr %i.fu, ptr %i.fs, align 8, !tbaa !162
  %indvars.iv.next.i.i129.2 = add nuw nsw i64 %indvars.iv.i.i128, 3 ; 2 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %indvars.iv.next.i.i129.2
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i125, i64 %indvars.iv.next.i.i129.2
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !162
  store ptr %i.fx, ptr %i.fv, align 8, !tbaa !162
  %indvars.iv.next.i.i129.3 = add nuw nsw i64 %indvars.iv.i.i128, 4 ; 2 uses
  %exitcond.not.i.i130.3 = icmp eq i64 %indvars.iv.next.i.i129.3, %wide.trip.count.i.i127
  br i1 %exitcond.not.i.i130.3, label %._crit_edge.i.i131, label %scalar.ph337, !llvm.loop !304

_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i135:   ; preds = %.noexc140, %._crit_edge.i.i131
  %.pre2.i136 = phi i32 [ %i.ey, %._crit_edge.i.i131 ], [ %.pre2.pre.i134, %.noexc140 ]
  store ptr %i.ex, ptr %4, align 8, !tbaa !206
  store i32 %i.eu, ptr %i.f, align 4, !tbaa !208
  br label %bb.q

bb.q:                                             ; preds = %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i135, %._crit_edge.i137
  %i.fy = phi i32 [ %i.em, %._crit_edge.i137 ], [ %i.eu, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i135 ]
  %i.fz = phi i32 [ %i.en, %._crit_edge.i137 ], [ %.pre2.i136, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i135 ] ; 2 uses
  %i.ga = phi ptr [ %.pre.i138, %._crit_edge.i137 ], [ %i.ex, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i135 ]
  %i.gb = zext i32 %i.fz to i64
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %i.gb
  store ptr %i.et, ptr %i.gc, align 8, !tbaa !162
  %i.gd = add i32 %i.fz, 1                        ; 2 uses
  store i32 %i.gd, ptr %i.e, align 8, !tbaa !207
  %indvars.iv.next263 = add nuw nsw i64 %indvars.iv262, 1 ; 2 uses
  %exitcond266.not = icmp eq i64 %indvars.iv.next263, %wide.trip.count
  br i1 %exitcond266.not, label %._crit_edge245, label %bb.k, !llvm.loop !305

.loopexit.split-lp228.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.l, %bb.m, %bb.p, %bb.o, %bb.c, %bb.b, %bb.g, %bb.f, %bb.j, %bb.i
  %lpad.loopexit.split-lp375 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp228.loopexit.split-lp

_ZNK10array_util9mk_selectERK10ptr_bufferI4exprLj16EE.exit: ; preds = %._crit_edge245
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !165, !nonnull !58, !align !59 ; 2 uses
  store ptr %i.db, ptr %5, align 8, !tbaa !167
  %i.gg = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.gf, ptr %i.gg, align 8, !tbaa !168
  %.not.i.i142 = icmp eq ptr %i.db, null
  br i1 %.not.i.i142, label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i

_ZN11ast_manager7inc_refEP3ast.exit.i.i:          ; preds = %_ZNK10array_util9mk_selectERK10ptr_bufferI4exprLj16EE.exit
  %i.gh = getelementptr inbounds nuw i8, ptr %i.db, i64 8 ; 2 uses
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !169
  %i.gj = add i32 %i.gi, 1
  store i32 %i.gj, ptr %i.gh, align 4, !tbaa !169
  br label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit

_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit:  ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i, %_ZNK10array_util9mk_selectERK10ptr_bufferI4exprLj16EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.gk = load i32, ptr %i.e, align 8, !tbaa !207
  %i.gl = load ptr, ptr %4, align 8, !tbaa !206
  %i.gm = load ptr, ptr %i.cy, align 8, !tbaa !164, !nonnull !58, !align !59
  %i.gn = load i32, ptr %i.cv, align 8, !tbaa !84
  %i.go = invoke noundef ptr @_ZN11ast_manager6mk_appEiijPK9parameterjPKP4exprP4sort(ptr noundef nonnull align 8 dereferenceable(952) %i.gm, i32 noundef %i.gn, i32 noundef 1, i32 noundef 0, ptr noundef null, i32 noundef %i.gk, ptr noundef %i.gl, ptr noundef null)
          to label %_ZNK10array_util9mk_selectERK10ptr_bufferI4exprLj16EE.exit144 unwind label %bb.t ; 8 uses

_ZNK10array_util9mk_selectERK10ptr_bufferI4exprLj16EE.exit144: ; preds = %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit
  %i.gp = load ptr, ptr %i.ge, align 8, !tbaa !165, !nonnull !58, !align !59 ; 3 uses
  store ptr %i.go, ptr %6, align 8, !tbaa !167
  %i.gq = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.gp, ptr %i.gq, align 8, !tbaa !168
  %.not.i.i145 = icmp eq ptr %i.go, null
  br i1 %.not.i.i145, label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit147, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i146

_ZN11ast_manager7inc_refEP3ast.exit.i.i146:       ; preds = %_ZNK10array_util9mk_selectERK10ptr_bufferI4exprLj16EE.exit144
  %i.gr = getelementptr inbounds nuw i8, ptr %i.go, i64 8 ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !169
  %i.gt = add i32 %i.gs, 1
  store i32 %i.gt, ptr %i.gr, align 4, !tbaa !169
  br label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit147

_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit147: ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i146, %_ZNK10array_util9mk_selectERK10ptr_bufferI4exprLj16EE.exit144
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.gu = invoke noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.gp, i32 noundef 0, i32 noundef 2, ptr noundef %i.db, ptr noundef %i.go)
          to label %_ZN11ast_manager5mk_eqEP4exprS1_.exit unwind label %bb.u ; 7 uses

_ZN11ast_manager5mk_eqEP4exprS1_.exit:            ; preds = %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit147
  %i.gv = load ptr, ptr %i.ge, align 8, !tbaa !165, !nonnull !58, !align !59 ; 2 uses
  store ptr %i.gu, ptr %7, align 8, !tbaa !167
  %i.gw = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.gv, ptr %i.gw, align 8, !tbaa !168
  %.not.i.i149 = icmp eq ptr %i.gu, null          ; 2 uses
  br i1 %.not.i.i149, label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit151, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i150

_ZN11ast_manager7inc_refEP3ast.exit.i.i150:       ; preds = %_ZN11ast_manager5mk_eqEP4exprS1_.exit
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gu, i64 8 ; 2 uses
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !169
  %i.gz = add i32 %i.gy, 1
  store i32 %i.gz, ptr %i.gx, align 4, !tbaa !169
  br label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit151

_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit151: ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i150, %_ZN11ast_manager5mk_eqEP4exprS1_.exit
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 8 uses
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !57, !nonnull !58, !align !59 ; 2 uses
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !61
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 440
  %i.he = load ptr, ptr %i.hd, align 8
  %i.hf = invoke noundef nonnull align 8 dereferenceable(536) ptr %i.he(ptr noundef nonnull align 8 dereferenceable(8528) %i.hb)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit151
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 128
  %i.hh = load i32, ptr %i.db, align 4, !tbaa !200 ; 2 uses
  %i.hi = load ptr, ptr %i.hg, align 8, !tbaa !201 ; 3 uses
  %i.hj = icmp eq ptr %i.hi, null
  br i1 %i.hj, label %_ZNK3euf6egraph4findEP4expr.exit.thread, label %_ZNK6vectorIPN3euf5enodeELb0EjE4sizeEv.exit.i.i

_ZNK6vectorIPN3euf5enodeELb0EjE4sizeEv.exit.i.i:  ; preds = %bb.r
  %i.hk = getelementptr inbounds i8, ptr %i.hi, i64 -4
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !30
  %.not.i.i152 = icmp ult i32 %i.hh, %i.hl
  br i1 %.not.i.i152, label %_ZNK3euf6egraph4findEP4expr.exit, label %_ZNK3euf6egraph4findEP4expr.exit.thread

_ZNK3euf6egraph4findEP4expr.exit:                 ; preds = %_ZNK6vectorIPN3euf5enodeELb0EjE4sizeEv.exit.i.i
  %i.hm = zext i32 %i.hh to i64
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %i.hm
  %.0.i.sroa.speculate.load..i = load ptr, ptr %i.hn, align 8, !tbaa !34
  %.not = icmp eq ptr %.0.i.sroa.speculate.load..i, null
  br i1 %.not, label %_ZNK3euf6egraph4findEP4expr.exit.thread, label %bb.v

_ZNK3euf6egraph4findEP4expr.exit.thread:          ; preds = %bb.r, %_ZNK6vectorIPN3euf5enodeELb0EjE4sizeEv.exit.i.i, %_ZNK3euf6egraph4findEP4expr.exit
  br label %bb.v

bb.s:                                             ; preds = %._crit_edge245
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.t:                                             ; preds = %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit
  %i.hp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.u:                                             ; preds = %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit147
  %i.hq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.v:                                             ; preds = %_ZNK3euf6egraph4findEP4expr.exit.thread, %_ZNK3euf6egraph4findEP4expr.exit
  %.0205 = phi i1 [ true, %_ZNK3euf6egraph4findEP4expr.exit.thread ], [ false, %_ZNK3euf6egraph4findEP4expr.exit ]
  %i.hr = load ptr, ptr %i.ha, align 8, !tbaa !57, !nonnull !58, !align !59 ; 2 uses
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !61
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 440
  %i.hu = load ptr, ptr %i.ht, align 8
  %i.hv = invoke noundef nonnull align 8 dereferenceable(536) ptr %i.hu(ptr noundef nonnull align 8 dereferenceable(8528) %i.hr)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %bb.v
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 128
  %i.hx = load i32, ptr %i.go, align 4, !tbaa !200 ; 2 uses
  %i.hy = load ptr, ptr %i.hw, align 8, !tbaa !201 ; 3 uses
  %i.hz = icmp eq ptr %i.hy, null
  br i1 %i.hz, label %_ZNK3euf6egraph4findEP4expr.exit157.thread, label %_ZNK6vectorIPN3euf5enodeELb0EjE4sizeEv.exit.i.i153

_ZNK6vectorIPN3euf5enodeELb0EjE4sizeEv.exit.i.i153: ; preds = %bb.w
  %i.ia = getelementptr inbounds i8, ptr %i.hy, i64 -4
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !30
  %.not.i.i154 = icmp ult i32 %i.hx, %i.ib
  br i1 %.not.i.i154, label %_ZNK3euf6egraph4findEP4expr.exit157, label %_ZNK3euf6egraph4findEP4expr.exit157.thread

_ZNK3euf6egraph4findEP4expr.exit157:              ; preds = %_ZNK6vectorIPN3euf5enodeELb0EjE4sizeEv.exit.i.i153
  %i.ic = zext i32 %i.hx to i64
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.hy, i64 %i.ic
  %.0.i.sroa.speculate.load..i156 = load ptr, ptr %i.id, align 8, !tbaa !34
  %.not70 = icmp eq ptr %.0.i.sroa.speculate.load..i156, null
  br i1 %.not70, label %_ZNK3euf6egraph4findEP4expr.exit157.thread, label %bb.x

_ZNK3euf6egraph4findEP4expr.exit157.thread:       ; preds = %bb.w, %_ZNK6vectorIPN3euf5enodeELb0EjE4sizeEv.exit.i.i153, %_ZNK3euf6egraph4findEP4expr.exit157
  br label %bb.x

bb.x:                                             ; preds = %_ZNK3euf6egraph4findEP4expr.exit157.thread, %_ZNK3euf6egraph4findEP4expr.exit157
  %.1206 = phi i1 [ true, %_ZNK3euf6egraph4findEP4expr.exit157.thread ], [ %.0205, %_ZNK3euf6egraph4findEP4expr.exit157 ] ; 2 uses
  %i.ie = invoke noundef ptr @_ZN3euf13th_euf_solver13e_internalizeEP4expr(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef nonnull %i.db)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.y:                                             ; preds = %bb.x
  %i.if = invoke noundef ptr @_ZN3euf13th_euf_solver13e_internalizeEP4expr(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef nonnull %i.go)
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.z:                                             ; preds = %bb.y
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ie, i64 64
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !175
  %i.ii = getelementptr inbounds nuw i8, ptr %i.if, i64 64
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !175
  %i.ik = icmp eq ptr %i.ih, %i.ij
  br i1 %i.ik, label %bb.as, label %.lr.ph249

.lr.ph249:                                        ; preds = %bb.z
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %umax269 = call i32 @llvm.umax.i32(i32 %i.h, i32 2)
  %wide.trip.count270 = zext i32 %umax269 to i64
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph249, %bb.ar
  %indvars.iv267 = phi i64 [ 1, %.lr.ph249 ], [ %indvars.iv.next268, %bb.ar ] ; 3 uses
  %.sroa.0198.0247 = phi i32 [ -2, %.lr.ph249 ], [ %.sroa.0198.1, %bb.ar ] ; 6 uses
  %.2246 = phi i1 [ %.1206, %.lr.ph249 ], [ %.4, %bb.ar ] ; 4 uses
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv267
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !162 ; 2 uses
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv267
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !162 ; 2 uses
  %i.iq = invoke noundef ptr @_ZNK3euf13th_euf_solver10expr2enodeEP4expr(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef %i.in)
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ab:                                            ; preds = %bb.aa
  %i.ir = invoke noundef ptr @_ZNK3euf13th_euf_solver10expr2enodeEP4expr(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef %i.ip)
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ac:                                            ; preds = %bb.ab
  %i.is = icmp eq ptr %i.iq, %i.ir
  br i1 %i.is, label %bb.ar, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.it = load ptr, ptr %i.ge, align 8, !tbaa !165, !nonnull !58, !align !59
  %i.iu = load ptr, ptr %i.iq, align 8, !tbaa !82
  %i.iv = load ptr, ptr %i.ir, align 8, !tbaa !82
  %i.iw = invoke noundef zeroext i1 @_ZNK11ast_manager12are_distinctEP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.it, ptr noundef %i.iu, ptr noundef %i.iv)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ae:                                            ; preds = %bb.ad
  br i1 %i.iw, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %.not.i158 = icmp eq i32 %.sroa.0198.0247, -2
end_hunk_0
