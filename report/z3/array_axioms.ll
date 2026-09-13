Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/array_axioms?download=true
inline.NumInlined: 1186
inline.NumDeleted: 535
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN5array6solver28assert_select_as_array_axiomEP3appS2_:.lr.ph.preheader.i.i
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
          to label %bb.f unwind label %bb.s

bb.f:                                             ; preds = %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !57, !nonnull !58, !align !59
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !170
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = invoke noundef zeroext i1 @_ZN3euf6solver9propagateEPNS_5enodeES2_m(ptr noundef nonnull align 8 dereferenceable(8528) %i.ay, ptr noundef %i.av, ptr noundef %i.aw, i64 noundef %i.bb)
          to label %bb.g unwind label %bb.s

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
  br label %bb.v

bb.q:                                             ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.r:                                             ; preds = %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit19
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.s:                                             ; preds = %bb.f, %bb.e
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pn = phi { ptr, i32 } [ %i.bw, %bb.s ], [ %i.bv, %bb.r ]
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #16
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.t ], [ %i.bu, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #16
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.p
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.u ], [ %i.bt, %bb.p ]
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
  br i1 %i.w, label %bb.f, label %.critedge

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %.061237 = phi i1 [ false, %.lr.ph ], [ %i.w, %bb.d ]
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !162
  %i.n = invoke noundef ptr @_ZNK3euf13th_euf_solver10expr2enodeEP4expr(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef %i.m)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !175
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !162
  %i.s = invoke noundef ptr @_ZNK3euf13th_euf_solver10expr2enodeEP4expr(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef %i.r)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !175
  %i.v = icmp ne ptr %i.p, %i.u
  %i.w = or i1 %.061237, %i.v                     ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !292

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.f:                                             ; preds = %._crit_edge
  %i.y = load i32, ptr %i.b, align 8, !tbaa !207  ; 2 uses
  %i.z = load i32, ptr %i.c, align 4, !tbaa !208  ; 2 uses
  %.not.i = icmp ult i32 %i.y, %i.z
  br i1 %.not.i, label %._crit_edge.i, label %bb.g

._crit_edge.i:                                    ; preds = %bb.f
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !206
  br label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.aa = shl i32 %i.z, 1                         ; 2 uses
  %i.ab = zext i32 %i.aa to i64
  %i.ac = shl nuw nsw i64 %i.ab, 3
  %i.ad = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.ac)
          to label %.noexc unwind label %bb.l     ; 9 uses

.noexc:                                           ; preds = %bb.g
  %i.ae = load i32, ptr %i.b, align 8, !tbaa !207 ; 4 uses
  %.not.i.i = icmp eq i32 %i.ae, 0
  %.pre.i.i = load ptr, ptr %3, align 8, !tbaa !206 ; 10 uses
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc
  %.pre.i.i309 = ptrtoaddr ptr %.pre.i.i to i64
  %i.af = ptrtoaddr ptr %i.ad to i64
  %wide.trip.count.i.i = zext i32 %i.ae to i64    ; 5 uses
  %min.iters.check = icmp ult i32 %i.ae, 8
  %i.ag = sub i64 %.pre.i.i309, %i.af
  %diff.check = icmp ugt i64 %i.ag, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 4294967292 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %index ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %index ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %wide.load = load <2 x ptr>, ptr %i.ai, align 8, !tbaa !162
  %wide.load310 = load <2 x ptr>, ptr %i.aj, align 8, !tbaa !162
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store <2 x ptr> %wide.load, ptr %i.ah, align 8, !tbaa !162
  store <2 x ptr> %wide.load310, ptr %i.ak, align 8, !tbaa !162
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !293

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
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.i.i.prol
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i.prol
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !162
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !162
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !294

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ]
  %i.ap = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.aq = icmp ugt i64 %i.ap, -4
  br i1 %i.aq, label %._crit_edge.i.i, label %scalar.ph

._crit_edge.i.i:                                  ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.noexc
  %.not.i.i.i = icmp eq ptr %.pre.i.i, %i.a
  %i.ar = icmp eq ptr %.pre.i.i, null
  %or.cond.i.i.i = or i1 %.not.i.i.i, %i.ar
  br i1 %or.cond.i.i.i, label %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge.i.i
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %.pre.i.i)
          to label %.noexc83 unwind label %bb.l

.noexc83:                                         ; preds = %bb.h
  %.pre2.pre.i = load i32, ptr %i.b, align 8, !tbaa !207
  br label %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.i.i
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !162
  store ptr %i.au, ptr %i.as, align 8, !tbaa !162
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.next.i.i
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !162
  store ptr %i.ax, ptr %i.av, align 8, !tbaa !162
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.next.i.i.1
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.1
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !162
  store ptr %i.ba, ptr %i.ay, align 8, !tbaa !162
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.next.i.i.2
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.2
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !162
  store ptr %i.bd, ptr %i.bb, align 8, !tbaa !162
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.i.i, label %scalar.ph, !llvm.loop !295

_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i:      ; preds = %.noexc83, %._crit_edge.i.i
  %.pre2.i = phi i32 [ %i.ae, %._crit_edge.i.i ], [ %.pre2.pre.i, %.noexc83 ]
  store ptr %i.ad, ptr %3, align 8, !tbaa !206
  store i32 %i.aa, ptr %i.c, align 4, !tbaa !208
  br label %bb.i

bb.i:                                             ; preds = %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i, %._crit_edge.i
  %i.be = phi i32 [ %i.y, %._crit_edge.i ], [ %.pre2.i, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i ] ; 2 uses
  %i.bf = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.ad, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i ]
  %i.bg = zext i32 %i.be to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bg
  store ptr %2, ptr %i.bh, align 8, !tbaa !162
  %i.bi = add i32 %i.be, 1
  store i32 %i.bi, ptr %i.b, align 8, !tbaa !207
  %i.bj = load ptr, ptr %i.k, align 8, !tbaa !162
  %i.bk = load i32, ptr %i.e, align 8, !tbaa !207 ; 2 uses
  %i.bl = load i32, ptr %i.f, align 4, !tbaa !208 ; 3 uses
  %.not.i84 = icmp ult i32 %i.bk, %i.bl
  br i1 %.not.i84, label %._crit_edge.i98, label %bb.j

._crit_edge.i98:                                  ; preds = %bb.i
  %.pre.i99 = load ptr, ptr %4, align 8, !tbaa !206
  br label %.lr.ph240

bb.j:                                             ; preds = %bb.i
  %i.bm = shl i32 %i.bl, 1                        ; 3 uses
  %i.bn = zext i32 %i.bm to i64
  %i.bo = shl nuw nsw i64 %i.bn, 3
  %i.bp = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.bo)
          to label %.noexc100 unwind label %bb.m  ; 9 uses

.noexc100:                                        ; preds = %bb.j
  %i.bq = load i32, ptr %i.e, align 8, !tbaa !207 ; 4 uses
  %.not.i.i85 = icmp eq i32 %i.bq, 0
  %.pre.i.i86 = load ptr, ptr %4, align 8, !tbaa !206 ; 10 uses
  br i1 %.not.i.i85, label %._crit_edge.i.i92, label %.lr.ph.i.i87

.lr.ph.i.i87:                                     ; preds = %.noexc100
  %.pre.i.i86312 = ptrtoaddr ptr %.pre.i.i86 to i64
  %i.br = ptrtoaddr ptr %i.bp to i64
  %wide.trip.count.i.i88 = zext i32 %i.bq to i64  ; 5 uses
  %min.iters.check315 = icmp ult i32 %i.bq, 8
  %i.bs = sub i64 %.pre.i.i86312, %i.br
  %diff.check313 = icmp ugt i64 %i.bs, -32
  %or.cond356.a = select i1 %min.iters.check315, i1 true, i1 %diff.check313
  br i1 %or.cond356.a, label %scalar.ph314.preheader, label %vector.ph316

vector.ph316:                                     ; preds = %.lr.ph.i.i87
  %n.vec317 = and i64 %wide.trip.count.i.i88, 4294967292 ; 3 uses
  br label %vector.body318

vector.body318:                                   ; preds = %vector.body318, %vector.ph316
  %index319 = phi i64 [ 0, %vector.ph316 ], [ %index.next322, %vector.body318 ] ; 3 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %index319 ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i86, i64 %index319 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %wide.load320.a = load <2 x ptr>, ptr %i.bu, align 8, !tbaa !162
  %wide.load321 = load <2 x ptr>, ptr %i.bv, align 8, !tbaa !162
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store <2 x ptr> %wide.load320.a, ptr %i.bt, align 8, !tbaa !162
  store <2 x ptr> %wide.load321, ptr %i.bw, align 8, !tbaa !162
  %index.next322 = add nuw i64 %index319, 4       ; 2 uses
  %i.bx = icmp eq i64 %index.next322, %n.vec317
  br i1 %i.bx, label %middle.block323, label %vector.body318, !llvm.loop !296

middle.block323:                                  ; preds = %vector.body318
  %cmp.n324 = icmp eq i64 %n.vec317, %wide.trip.count.i.i88
  br i1 %cmp.n324, label %._crit_edge.i.i92, label %scalar.ph314.preheader

scalar.ph314.preheader:                           ; preds = %.lr.ph.i.i87, %middle.block323
  %indvars.iv.i.i89.ph = phi i64 [ 0, %.lr.ph.i.i87 ], [ %n.vec317, %middle.block323 ] ; 3 uses
  %xtraiter367 = and i64 %wide.trip.count.i.i88, 3 ; 2 uses
  %lcmp.mod368.not = icmp eq i64 %xtraiter367, 0
  br i1 %lcmp.mod368.not, label %scalar.ph314.prol.loopexit, label %scalar.ph314.prol

scalar.ph314.prol:                                ; preds = %scalar.ph314.preheader, %scalar.ph314.prol
  %indvars.iv.i.i89.prol = phi i64 [ %indvars.iv.next.i.i90.prol, %scalar.ph314.prol ], [ %indvars.iv.i.i89.ph, %scalar.ph314.preheader ] ; 3 uses
  %prol.iter369 = phi i64 [ %prol.iter369.next, %scalar.ph314.prol ], [ 0, %scalar.ph314.preheader ]
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv.i.i89.prol
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i86, i64 %indvars.iv.i.i89.prol
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !162
  store ptr %i.ca, ptr %i.by, align 8, !tbaa !162
  %indvars.iv.next.i.i90.prol = add nuw nsw i64 %indvars.iv.i.i89.prol, 1 ; 2 uses
  %prol.iter369.next = add i64 %prol.iter369, 1   ; 2 uses
  %prol.iter369.cmp.not = icmp eq i64 %prol.iter369.next, %xtraiter367
  br i1 %prol.iter369.cmp.not, label %scalar.ph314.prol.loopexit, label %scalar.ph314.prol, !llvm.loop !297

scalar.ph314.prol.loopexit:                       ; preds = %scalar.ph314.prol, %scalar.ph314.preheader
  %indvars.iv.i.i89.unr = phi i64 [ %indvars.iv.i.i89.ph, %scalar.ph314.preheader ], [ %indvars.iv.next.i.i90.prol, %scalar.ph314.prol ]
  %i.cb = sub nsw i64 %indvars.iv.i.i89.ph, %wide.trip.count.i.i88
  %i.cc = icmp ugt i64 %i.cb, -4
  br i1 %i.cc, label %._crit_edge.i.i92, label %scalar.ph314

._crit_edge.i.i92:                                ; preds = %scalar.ph314.prol.loopexit, %scalar.ph314, %middle.block323, %.noexc100
  %.not.i.i.i93 = icmp eq ptr %.pre.i.i86, %i.d
  %i.cd = icmp eq ptr %.pre.i.i86, null
  %or.cond.i.i.i94 = or i1 %.not.i.i.i93, %i.cd
  br i1 %or.cond.i.i.i94, label %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i96, label %bb.k

bb.k:                                             ; preds = %._crit_edge.i.i92
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %.pre.i.i86)
          to label %.noexc101 unwind label %bb.m

.noexc101:                                        ; preds = %bb.k
  %.pre2.pre.i95 = load i32, ptr %i.e, align 8, !tbaa !207
  br label %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i96

scalar.ph314:                                     ; preds = %scalar.ph314.prol.loopexit, %scalar.ph314
  %indvars.iv.i.i89 = phi i64 [ %indvars.iv.next.i.i90.3, %scalar.ph314 ], [ %indvars.iv.i.i89.unr, %scalar.ph314.prol.loopexit ] ; 6 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv.i.i89
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i86, i64 %indvars.iv.i.i89
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !162
  store ptr %i.cg, ptr %i.ce, align 8, !tbaa !162
  %indvars.iv.next.i.i90 = add nuw nsw i64 %indvars.iv.i.i89, 1 ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv.next.i.i90
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i86, i64 %indvars.iv.next.i.i90
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !162
  store ptr %i.cj, ptr %i.ch, align 8, !tbaa !162
  %indvars.iv.next.i.i90.1 = add nuw nsw i64 %indvars.iv.i.i89, 2 ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv.next.i.i90.1
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i86, i64 %indvars.iv.next.i.i90.1
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !162
  store ptr %i.cm, ptr %i.ck, align 8, !tbaa !162
  %indvars.iv.next.i.i90.2 = add nuw nsw i64 %indvars.iv.i.i89, 3 ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv.next.i.i90.2
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i86, i64 %indvars.iv.next.i.i90.2
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !162
  store ptr %i.cp, ptr %i.cn, align 8, !tbaa !162
  %indvars.iv.next.i.i90.3 = add nuw nsw i64 %indvars.iv.i.i89, 4 ; 2 uses
  %exitcond.not.i.i91.3 = icmp eq i64 %indvars.iv.next.i.i90.3, %wide.trip.count.i.i88
  br i1 %exitcond.not.i.i91.3, label %._crit_edge.i.i92, label %scalar.ph314, !llvm.loop !298

_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i96:    ; preds = %.noexc101, %._crit_edge.i.i92
  %.pre2.i97 = phi i32 [ %i.bq, %._crit_edge.i.i92 ], [ %.pre2.pre.i95, %.noexc101 ]
  store ptr %i.bp, ptr %4, align 8, !tbaa !206
  store i32 %i.bm, ptr %i.f, align 4, !tbaa !208
  br label %.lr.ph240

.lr.ph240:                                        ; preds = %._crit_edge.i98, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i96
  %i.cq = phi i32 [ %i.bl, %._crit_edge.i98 ], [ %i.bm, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i96 ]
  %i.cr = phi i32 [ %i.bk, %._crit_edge.i98 ], [ %.pre2.i97, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i96 ] ; 2 uses
  %i.cs = phi ptr [ %.pre.i99, %._crit_edge.i98 ], [ %i.bp, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i96 ]
  %i.ct = zext i32 %i.cr to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.ct
  store ptr %i.bj, ptr %i.cu, align 8, !tbaa !162
  %i.cv = add i32 %i.cr, 1                        ; 2 uses
  store i32 %i.cv, ptr %i.e, align 8, !tbaa !207
  br label %bb.n

._crit_edge241:                                   ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.cx = load i32, ptr %i.b, align 8, !tbaa !207
  %i.cy = load ptr, ptr %3, align 8, !tbaa !206
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !164, !nonnull !58, !align !59
  %i.db = load i32, ptr %i.cw, align 8, !tbaa !84
  %i.dc = invoke noundef ptr @_ZN11ast_manager6mk_appEiijPK9parameterjPKP4exprP4sort(ptr noundef nonnull align 8 dereferenceable(952) %i.da, i32 noundef %i.db, i32 noundef 1, i32 noundef 0, ptr noundef null, i32 noundef %i.cx, ptr noundef %i.cy, ptr noundef null)
          to label %_ZNK10array_util9mk_selectERK10ptr_bufferI4exprLj16EE.exit unwind label %bb.x ; 8 uses

bb.l:                                             ; preds = %bb.h, %bb.g
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.n:                                             ; preds = %.lr.ph240, %bb.t
  %i.df = phi i32 [ %i.cq, %.lr.ph240 ], [ %i.gb, %bb.t ]
  %i.dg = phi i32 [ %i.cv, %.lr.ph240 ], [ %i.gg, %bb.t ]
  %indvars.iv256 = phi i64 [ 1, %.lr.ph240 ], [ %indvars.iv.next257, %bb.t ] ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv256 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !162
  %i.dj = load i32, ptr %i.b, align 8, !tbaa !207 ; 2 uses
  %i.dk = load i32, ptr %i.c, align 4, !tbaa !208 ; 2 uses
  %.not.i104 = icmp ult i32 %i.dj, %i.dk
  br i1 %.not.i104, label %._crit_edge.i118, label %bb.o

._crit_edge.i118:                                 ; preds = %bb.n
  %.pre.i119 = load ptr, ptr %3, align 8, !tbaa !206
  br label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.dl = shl i32 %i.dk, 1                        ; 2 uses
  %i.dm = zext i32 %i.dl to i64
  %i.dn = shl nuw nsw i64 %i.dm, 3
  %i.do = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.dn)
          to label %.noexc120 unwind label %bb.u  ; 9 uses

.noexc120:                                        ; preds = %bb.o
  %i.dp = load i32, ptr %i.b, align 8, !tbaa !207 ; 4 uses
  %.not.i.i105 = icmp eq i32 %i.dp, 0
  %.pre.i.i106 = load ptr, ptr %3, align 8, !tbaa !206 ; 10 uses
  br i1 %.not.i.i105, label %._crit_edge.i.i112, label %.lr.ph.i.i107

.lr.ph.i.i107:                                    ; preds = %.noexc120
  %.pre.i.i106342 = ptrtoaddr ptr %.pre.i.i106 to i64
  %i.dq = ptrtoaddr ptr %i.do to i64
  %wide.trip.count.i.i108 = zext i32 %i.dp to i64 ; 5 uses
  %min.iters.check345 = icmp ult i32 %i.dp, 4
  %i.dr = sub i64 %.pre.i.i106342, %i.dq
  %diff.check343 = icmp ugt i64 %i.dr, -32
  %or.cond357.a = select i1 %min.iters.check345, i1 true, i1 %diff.check343
  br i1 %or.cond357.a, label %scalar.ph344.preheader, label %vector.ph346

vector.ph346:                                     ; preds = %.lr.ph.i.i107
  %n.vec347 = and i64 %wide.trip.count.i.i108, 4294967292 ; 3 uses
  br label %vector.body348

vector.body348:                                   ; preds = %vector.body348, %vector.ph346
  %index349 = phi i64 [ 0, %vector.ph346 ], [ %index.next352, %vector.body348 ] ; 3 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %index349 ; 2 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i106, i64 %index349 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %wide.load350.a = load <2 x ptr>, ptr %i.dt, align 8, !tbaa !162
  %wide.load351 = load <2 x ptr>, ptr %i.du, align 8, !tbaa !162
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  store <2 x ptr> %wide.load350.a, ptr %i.ds, align 8, !tbaa !162
  store <2 x ptr> %wide.load351, ptr %i.dv, align 8, !tbaa !162
  %index.next352 = add nuw i64 %index349, 4       ; 2 uses
  %i.dw = icmp eq i64 %index.next352, %n.vec347
  br i1 %i.dw, label %middle.block353, label %vector.body348, !llvm.loop !299

middle.block353:                                  ; preds = %vector.body348
  %cmp.n354 = icmp eq i64 %n.vec347, %wide.trip.count.i.i108
  br i1 %cmp.n354, label %._crit_edge.i.i112, label %scalar.ph344.preheader

scalar.ph344.preheader:                           ; preds = %.lr.ph.i.i107, %middle.block353
  %indvars.iv.i.i109.ph = phi i64 [ 0, %.lr.ph.i.i107 ], [ %n.vec347, %middle.block353 ] ; 3 uses
  %xtraiter370 = and i64 %wide.trip.count.i.i108, 3 ; 2 uses
  %lcmp.mod371.not = icmp eq i64 %xtraiter370, 0
  br i1 %lcmp.mod371.not, label %scalar.ph344.prol.loopexit, label %scalar.ph344.prol

scalar.ph344.prol:                                ; preds = %scalar.ph344.preheader, %scalar.ph344.prol
  %indvars.iv.i.i109.prol = phi i64 [ %indvars.iv.next.i.i110.prol, %scalar.ph344.prol ], [ %indvars.iv.i.i109.ph, %scalar.ph344.preheader ] ; 3 uses
  %prol.iter372 = phi i64 [ %prol.iter372.next, %scalar.ph344.prol ], [ 0, %scalar.ph344.preheader ]
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv.i.i109.prol
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i106, i64 %indvars.iv.i.i109.prol
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !162
  store ptr %i.dz, ptr %i.dx, align 8, !tbaa !162
  %indvars.iv.next.i.i110.prol = add nuw nsw i64 %indvars.iv.i.i109.prol, 1 ; 2 uses
  %prol.iter372.next = add i64 %prol.iter372, 1   ; 2 uses
  %prol.iter372.cmp.not = icmp eq i64 %prol.iter372.next, %xtraiter370
  br i1 %prol.iter372.cmp.not, label %scalar.ph344.prol.loopexit, label %scalar.ph344.prol, !llvm.loop !300

scalar.ph344.prol.loopexit:                       ; preds = %scalar.ph344.prol, %scalar.ph344.preheader
  %indvars.iv.i.i109.unr = phi i64 [ %indvars.iv.i.i109.ph, %scalar.ph344.preheader ], [ %indvars.iv.next.i.i110.prol, %scalar.ph344.prol ]
  %i.ea = sub nsw i64 %indvars.iv.i.i109.ph, %wide.trip.count.i.i108
  %i.eb = icmp ugt i64 %i.ea, -4
  br i1 %i.eb, label %._crit_edge.i.i112, label %scalar.ph344

._crit_edge.i.i112:                               ; preds = %scalar.ph344.prol.loopexit, %scalar.ph344, %middle.block353, %.noexc120
  %.not.i.i.i113 = icmp eq ptr %.pre.i.i106, %i.a
  %i.ec = icmp eq ptr %.pre.i.i106, null
  %or.cond.i.i.i114 = or i1 %.not.i.i.i113, %i.ec
  br i1 %or.cond.i.i.i114, label %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i116, label %bb.p

bb.p:                                             ; preds = %._crit_edge.i.i112
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %.pre.i.i106)
          to label %.noexc121 unwind label %bb.u

.noexc121:                                        ; preds = %bb.p
  %.pre2.pre.i115 = load i32, ptr %i.b, align 8, !tbaa !207
  br label %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i116

scalar.ph344:                                     ; preds = %scalar.ph344.prol.loopexit, %scalar.ph344
  %indvars.iv.i.i109 = phi i64 [ %indvars.iv.next.i.i110.3, %scalar.ph344 ], [ %indvars.iv.i.i109.unr, %scalar.ph344.prol.loopexit ] ; 6 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv.i.i109
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i106, i64 %indvars.iv.i.i109
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !162
  store ptr %i.ef, ptr %i.ed, align 8, !tbaa !162
  %indvars.iv.next.i.i110 = add nuw nsw i64 %indvars.iv.i.i109, 1 ; 2 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv.next.i.i110
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i106, i64 %indvars.iv.next.i.i110
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !162
  store ptr %i.ei, ptr %i.eg, align 8, !tbaa !162
  %indvars.iv.next.i.i110.1 = add nuw nsw i64 %indvars.iv.i.i109, 2 ; 2 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv.next.i.i110.1
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i106, i64 %indvars.iv.next.i.i110.1
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !162
  store ptr %i.el, ptr %i.ej, align 8, !tbaa !162
  %indvars.iv.next.i.i110.2 = add nuw nsw i64 %indvars.iv.i.i109, 3 ; 2 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv.next.i.i110.2
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i106, i64 %indvars.iv.next.i.i110.2
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !162
  store ptr %i.eo, ptr %i.em, align 8, !tbaa !162
  %indvars.iv.next.i.i110.3 = add nuw nsw i64 %indvars.iv.i.i109, 4 ; 2 uses
  %exitcond.not.i.i111.3 = icmp eq i64 %indvars.iv.next.i.i110.3, %wide.trip.count.i.i108
  br i1 %exitcond.not.i.i111.3, label %._crit_edge.i.i112, label %scalar.ph344, !llvm.loop !301

_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i116:   ; preds = %.noexc121, %._crit_edge.i.i112
  %.pre2.i117 = phi i32 [ %i.dp, %._crit_edge.i.i112 ], [ %.pre2.pre.i115, %.noexc121 ]
  store ptr %i.do, ptr %3, align 8, !tbaa !206
  store i32 %i.dl, ptr %i.c, align 4, !tbaa !208
  %.pre = load i32, ptr %i.e, align 8, !tbaa !207
  %.pre266 = load i32, ptr %i.f, align 4, !tbaa !208
  br label %bb.q

bb.q:                                             ; preds = %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i116, %._crit_edge.i118
  %i.ep = phi i32 [ %i.df, %._crit_edge.i118 ], [ %.pre266, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i116 ] ; 3 uses
  %i.eq = phi i32 [ %i.dg, %._crit_edge.i118 ], [ %.pre, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i116 ] ; 2 uses
  %i.er = phi i32 [ %i.dj, %._crit_edge.i118 ], [ %.pre2.i117, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i116 ] ; 2 uses
  %i.es = phi ptr [ %.pre.i119, %._crit_edge.i118 ], [ %i.do, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i116 ]
  %i.et = zext i32 %i.er to i64
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %i.et
  store ptr %i.di, ptr %i.eu, align 8, !tbaa !162
  %i.ev = add i32 %i.er, 1
  store i32 %i.ev, ptr %i.b, align 8, !tbaa !207
  %i.ew = load ptr, ptr %i.dh, align 8, !tbaa !162
  %.not.i123 = icmp ult i32 %i.eq, %i.ep
  br i1 %.not.i123, label %._crit_edge.i137, label %bb.r

._crit_edge.i137:                                 ; preds = %bb.q
  %.pre.i138 = load ptr, ptr %4, align 8, !tbaa !206
  br label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.ex = shl i32 %i.ep, 1                        ; 3 uses
  %i.ey = zext i32 %i.ex to i64
  %i.ez = shl nuw nsw i64 %i.ey, 3
  %i.fa = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.ez)
          to label %.noexc139 unwind label %bb.v  ; 9 uses

.noexc139:                                        ; preds = %bb.r
  %i.fb = load i32, ptr %i.e, align 8, !tbaa !207 ; 4 uses
  %.not.i.i124 = icmp eq i32 %i.fb, 0
  %.pre.i.i125 = load ptr, ptr %4, align 8, !tbaa !206 ; 10 uses
  br i1 %.not.i.i124, label %._crit_edge.i.i131, label %.lr.ph.i.i126

.lr.ph.i.i126:                                    ; preds = %.noexc139
  %.pre.i.i125327 = ptrtoaddr ptr %.pre.i.i125 to i64
  %i.fc = ptrtoaddr ptr %i.fa to i64
  %wide.trip.count.i.i127 = zext i32 %i.fb to i64 ; 5 uses
  %min.iters.check330 = icmp ult i32 %i.fb, 4
  %i.fd = sub i64 %.pre.i.i125327, %i.fc
  %diff.check328 = icmp ugt i64 %i.fd, -32
  %or.cond358 = select i1 %min.iters.check330, i1 true, i1 %diff.check328
  br i1 %or.cond358, label %scalar.ph329.preheader, label %vector.ph331

vector.ph331:                                     ; preds = %.lr.ph.i.i126
  %n.vec332 = and i64 %wide.trip.count.i.i127, 4294967292 ; 3 uses
  br label %vector.body333

vector.body333:                                   ; preds = %vector.body333, %vector.ph331
  %index334 = phi i64 [ 0, %vector.ph331 ], [ %index.next337, %vector.body333 ] ; 3 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %index334 ; 2 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i125, i64 %index334 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %wide.load335.a = load <2 x ptr>, ptr %i.ff, align 8, !tbaa !162
  %wide.load336 = load <2 x ptr>, ptr %i.fg, align 8, !tbaa !162
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  store <2 x ptr> %wide.load335.a, ptr %i.fe, align 8, !tbaa !162
  store <2 x ptr> %wide.load336, ptr %i.fh, align 8, !tbaa !162
  %index.next337 = add nuw i64 %index334, 4       ; 2 uses
  %i.fi = icmp eq i64 %index.next337, %n.vec332
  br i1 %i.fi, label %middle.block338, label %vector.body333, !llvm.loop !302

middle.block338:                                  ; preds = %vector.body333
  %cmp.n339 = icmp eq i64 %n.vec332, %wide.trip.count.i.i127
  br i1 %cmp.n339, label %._crit_edge.i.i131, label %scalar.ph329.preheader

scalar.ph329.preheader:                           ; preds = %.lr.ph.i.i126, %middle.block338
  %indvars.iv.i.i128.ph = phi i64 [ 0, %.lr.ph.i.i126 ], [ %n.vec332, %middle.block338 ] ; 3 uses
  %xtraiter373 = and i64 %wide.trip.count.i.i127, 3 ; 2 uses
  %lcmp.mod374.not = icmp eq i64 %xtraiter373, 0
  br i1 %lcmp.mod374.not, label %scalar.ph329.prol.loopexit, label %scalar.ph329.prol

scalar.ph329.prol:                                ; preds = %scalar.ph329.preheader, %scalar.ph329.prol
  %indvars.iv.i.i128.prol = phi i64 [ %indvars.iv.next.i.i129.prol, %scalar.ph329.prol ], [ %indvars.iv.i.i128.ph, %scalar.ph329.preheader ] ; 3 uses
  %prol.iter375 = phi i64 [ %prol.iter375.next, %scalar.ph329.prol ], [ 0, %scalar.ph329.preheader ]
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %indvars.iv.i.i128.prol
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i125, i64 %indvars.iv.i.i128.prol
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !162
  store ptr %i.fl, ptr %i.fj, align 8, !tbaa !162
  %indvars.iv.next.i.i129.prol = add nuw nsw i64 %indvars.iv.i.i128.prol, 1 ; 2 uses
  %prol.iter375.next = add i64 %prol.iter375, 1   ; 2 uses
  %prol.iter375.cmp.not = icmp eq i64 %prol.iter375.next, %xtraiter373
  br i1 %prol.iter375.cmp.not, label %scalar.ph329.prol.loopexit, label %scalar.ph329.prol, !llvm.loop !303

scalar.ph329.prol.loopexit:                       ; preds = %scalar.ph329.prol, %scalar.ph329.preheader
  %indvars.iv.i.i128.unr = phi i64 [ %indvars.iv.i.i128.ph, %scalar.ph329.preheader ], [ %indvars.iv.next.i.i129.prol, %scalar.ph329.prol ]
  %i.fm = sub nsw i64 %indvars.iv.i.i128.ph, %wide.trip.count.i.i127
  %i.fn = icmp ugt i64 %i.fm, -4
  br i1 %i.fn, label %._crit_edge.i.i131, label %scalar.ph329

._crit_edge.i.i131:                               ; preds = %scalar.ph329.prol.loopexit, %scalar.ph329, %middle.block338, %.noexc139
  %.not.i.i.i132 = icmp eq ptr %.pre.i.i125, %i.d
  %i.fo = icmp eq ptr %.pre.i.i125, null
  %or.cond.i.i.i133 = or i1 %.not.i.i.i132, %i.fo
  br i1 %or.cond.i.i.i133, label %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i135, label %bb.s

bb.s:                                             ; preds = %._crit_edge.i.i131
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %.pre.i.i125)
          to label %.noexc140 unwind label %bb.v

.noexc140:                                        ; preds = %bb.s
  %.pre2.pre.i134 = load i32, ptr %i.e, align 8, !tbaa !207
  br label %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i135

scalar.ph329:                                     ; preds = %scalar.ph329.prol.loopexit, %scalar.ph329
  %indvars.iv.i.i128 = phi i64 [ %indvars.iv.next.i.i129.3, %scalar.ph329 ], [ %indvars.iv.i.i128.unr, %scalar.ph329.prol.loopexit ] ; 6 uses
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %indvars.iv.i.i128
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i125, i64 %indvars.iv.i.i128
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !162
  store ptr %i.fr, ptr %i.fp, align 8, !tbaa !162
  %indvars.iv.next.i.i129 = add nuw nsw i64 %indvars.iv.i.i128, 1 ; 2 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %indvars.iv.next.i.i129
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i125, i64 %indvars.iv.next.i.i129
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !162
  store ptr %i.fu, ptr %i.fs, align 8, !tbaa !162
  %indvars.iv.next.i.i129.1 = add nuw nsw i64 %indvars.iv.i.i128, 2 ; 2 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %indvars.iv.next.i.i129.1
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i125, i64 %indvars.iv.next.i.i129.1
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !162
  store ptr %i.fx, ptr %i.fv, align 8, !tbaa !162
  %indvars.iv.next.i.i129.2 = add nuw nsw i64 %indvars.iv.i.i128, 3 ; 2 uses
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %indvars.iv.next.i.i129.2
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i125, i64 %indvars.iv.next.i.i129.2
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !162
  store ptr %i.ga, ptr %i.fy, align 8, !tbaa !162
  %indvars.iv.next.i.i129.3 = add nuw nsw i64 %indvars.iv.i.i128, 4 ; 2 uses
  %exitcond.not.i.i130.3 = icmp eq i64 %indvars.iv.next.i.i129.3, %wide.trip.count.i.i127
  br i1 %exitcond.not.i.i130.3, label %._crit_edge.i.i131, label %scalar.ph329, !llvm.loop !304

_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i135:   ; preds = %.noexc140, %._crit_edge.i.i131
  %.pre2.i136 = phi i32 [ %i.fb, %._crit_edge.i.i131 ], [ %.pre2.pre.i134, %.noexc140 ]
  store ptr %i.fa, ptr %4, align 8, !tbaa !206
  store i32 %i.ex, ptr %i.f, align 4, !tbaa !208
  br label %bb.t

bb.t:                                             ; preds = %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i135, %._crit_edge.i137
  %i.gb = phi i32 [ %i.ep, %._crit_edge.i137 ], [ %i.ex, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i135 ]
  %i.gc = phi i32 [ %i.eq, %._crit_edge.i137 ], [ %.pre2.i136, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i135 ] ; 2 uses
  %i.gd = phi ptr [ %.pre.i138, %._crit_edge.i137 ], [ %i.fa, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i135 ]
  %i.ge = zext i32 %i.gc to i64
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %i.ge
  store ptr %i.ew, ptr %i.gf, align 8, !tbaa !162
  %i.gg = add i32 %i.gc, 1                        ; 2 uses
  store i32 %i.gg, ptr %i.e, align 8, !tbaa !207
  %indvars.iv.next257 = add nuw nsw i64 %indvars.iv256, 1 ; 2 uses
  %exitcond260.not = icmp eq i64 %indvars.iv.next257, %wide.trip.count
  br i1 %exitcond260.not, label %._crit_edge241, label %bb.n, !llvm.loop !305

bb.u:                                             ; preds = %bb.p, %bb.o
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.v:                                             ; preds = %bb.s, %bb.r
  %i.gi = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

_ZNK10array_util9mk_selectERK10ptr_bufferI4exprLj16EE.exit: ; preds = %._crit_edge241
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !165, !nonnull !58, !align !59 ; 2 uses
  store ptr %i.dc, ptr %5, align 8, !tbaa !167
  %i.gl = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.gk, ptr %i.gl, align 8, !tbaa !168
  %.not.i.i142 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i142, label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i

_ZN11ast_manager7inc_refEP3ast.exit.i.i:          ; preds = %_ZNK10array_util9mk_selectERK10ptr_bufferI4exprLj16EE.exit
  %i.gm = getelementptr inbounds nuw i8, ptr %i.dc, i64 8 ; 2 uses
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !169
  %i.go = add i32 %i.gn, 1
  store i32 %i.go, ptr %i.gm, align 4, !tbaa !169
  br label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit

_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit:  ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i, %_ZNK10array_util9mk_selectERK10ptr_bufferI4exprLj16EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.gp = load i32, ptr %i.e, align 8, !tbaa !207
  %i.gq = load ptr, ptr %4, align 8, !tbaa !206
  %i.gr = load ptr, ptr %i.cz, align 8, !tbaa !164, !nonnull !58, !align !59
  %i.gs = load i32, ptr %i.cw, align 8, !tbaa !84
  %i.gt = invoke noundef ptr @_ZN11ast_manager6mk_appEiijPK9parameterjPKP4exprP4sort(ptr noundef nonnull align 8 dereferenceable(952) %i.gr, i32 noundef %i.gs, i32 noundef 1, i32 noundef 0, ptr noundef null, i32 noundef %i.gp, ptr noundef %i.gq, ptr noundef null)
          to label %_ZNK10array_util9mk_selectERK10ptr_bufferI4exprLj16EE.exit144 unwind label %bb.y ; 8 uses

_ZNK10array_util9mk_selectERK10ptr_bufferI4exprLj16EE.exit144: ; preds = %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit
  %i.gu = load ptr, ptr %i.gj, align 8, !tbaa !165, !nonnull !58, !align !59 ; 3 uses
  store ptr %i.gt, ptr %6, align 8, !tbaa !167
  %i.gv = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.gu, ptr %i.gv, align 8, !tbaa !168
  %.not.i.i145 = icmp eq ptr %i.gt, null
  br i1 %.not.i.i145, label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit147, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i146

_ZN11ast_manager7inc_refEP3ast.exit.i.i146:       ; preds = %_ZNK10array_util9mk_selectERK10ptr_bufferI4exprLj16EE.exit144
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gt, i64 8 ; 2 uses
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !169
  %i.gy = add i32 %i.gx, 1
  store i32 %i.gy, ptr %i.gw, align 4, !tbaa !169
  br label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit147

_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit147: ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i146, %_ZNK10array_util9mk_selectERK10ptr_bufferI4exprLj16EE.exit144
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.gz = invoke noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.gu, i32 noundef 0, i32 noundef 2, ptr noundef %i.dc, ptr noundef %i.gt)
          to label %_ZN11ast_manager5mk_eqEP4exprS1_.exit unwind label %bb.z ; 7 uses

_ZN11ast_manager5mk_eqEP4exprS1_.exit:            ; preds = %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit147
  %i.ha = load ptr, ptr %i.gj, align 8, !tbaa !165, !nonnull !58, !align !59 ; 2 uses
  store ptr %i.gz, ptr %7, align 8, !tbaa !167
  %i.hb = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.ha, ptr %i.hb, align 8, !tbaa !168
  %.not.i.i149 = icmp eq ptr %i.gz, null          ; 2 uses
  br i1 %.not.i.i149, label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit151, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i150

_ZN11ast_manager7inc_refEP3ast.exit.i.i150:       ; preds = %_ZN11ast_manager5mk_eqEP4exprS1_.exit
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gz, i64 8 ; 2 uses
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !169
  %i.he = add i32 %i.hd, 1
  store i32 %i.he, ptr %i.hc, align 4, !tbaa !169
  br label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit151

_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit151: ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i150, %_ZN11ast_manager5mk_eqEP4exprS1_.exit
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 8 uses
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !57, !nonnull !58, !align !59 ; 2 uses
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !61
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 440
  %i.hj = load ptr, ptr %i.hi, align 8
  %i.hk = invoke noundef nonnull align 8 dereferenceable(536) ptr %i.hj(ptr noundef nonnull align 8 dereferenceable(8528) %i.hg)
          to label %bb.w unwind label %bb.aa

bb.w:                                             ; preds = %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit151
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 128
  %i.hm = load i32, ptr %i.dc, align 4, !tbaa !200 ; 2 uses
  %i.hn = load ptr, ptr %i.hl, align 8, !tbaa !201 ; 3 uses
  %i.ho = icmp eq ptr %i.hn, null
  br i1 %i.ho, label %_ZNK3euf6egraph4findEP4expr.exit.thread, label %_ZNK6vectorIPN3euf5enodeELb0EjE4sizeEv.exit.i.i

_ZNK6vectorIPN3euf5enodeELb0EjE4sizeEv.exit.i.i:  ; preds = %bb.w
  %i.hp = getelementptr inbounds i8, ptr %i.hn, i64 -4
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !30
  %.not.i.i152 = icmp ult i32 %i.hm, %i.hq
  br i1 %.not.i.i152, label %_ZNK3euf6egraph4findEP4expr.exit, label %_ZNK3euf6egraph4findEP4expr.exit.thread

_ZNK3euf6egraph4findEP4expr.exit:                 ; preds = %_ZNK6vectorIPN3euf5enodeELb0EjE4sizeEv.exit.i.i
  %i.hr = zext i32 %i.hm to i64
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %i.hr
  %.0.i.sroa.speculate.load..i = load ptr, ptr %i.hs, align 8, !tbaa !34
  %.not = icmp eq ptr %.0.i.sroa.speculate.load..i, null
  br i1 %.not, label %_ZNK3euf6egraph4findEP4expr.exit.thread, label %bb.ab

_ZNK3euf6egraph4findEP4expr.exit.thread:          ; preds = %bb.w, %_ZNK6vectorIPN3euf5enodeELb0EjE4sizeEv.exit.i.i, %_ZNK3euf6egraph4findEP4expr.exit
  br label %bb.ab

bb.x:                                             ; preds = %._crit_edge241
  %i.ht = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.y:                                             ; preds = %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit
  %i.hu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.z:                                             ; preds = %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit147
  %i.hv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.aa:                                            ; preds = %bb.ab, %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit151
  %i.hw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.ab:                                            ; preds = %_ZNK3euf6egraph4findEP4expr.exit.thread, %_ZNK3euf6egraph4findEP4expr.exit
  %.0205 = phi i1 [ true, %_ZNK3euf6egraph4findEP4expr.exit.thread ], [ false, %_ZNK3euf6egraph4findEP4expr.exit ]
  %i.hx = load ptr, ptr %i.hf, align 8, !tbaa !57, !nonnull !58, !align !59 ; 2 uses
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !61
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 440
  %i.ia = load ptr, ptr %i.hz, align 8
  %i.ib = invoke noundef nonnull align 8 dereferenceable(536) ptr %i.ia(ptr noundef nonnull align 8 dereferenceable(8528) %i.hx)
          to label %bb.ac unwind label %bb.aa

bb.ac:                                            ; preds = %bb.ab
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 128
  %i.id = load i32, ptr %i.gt, align 4, !tbaa !200 ; 2 uses
  %i.ie = load ptr, ptr %i.ic, align 8, !tbaa !201 ; 3 uses
  %i.if = icmp eq ptr %i.ie, null
  br i1 %i.if, label %_ZNK3euf6egraph4findEP4expr.exit157.thread, label %_ZNK6vectorIPN3euf5enodeELb0EjE4sizeEv.exit.i.i153

_ZNK6vectorIPN3euf5enodeELb0EjE4sizeEv.exit.i.i153: ; preds = %bb.ac
  %i.ig = getelementptr inbounds i8, ptr %i.ie, i64 -4
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !30
  %.not.i.i154 = icmp ult i32 %i.id, %i.ih
  br i1 %.not.i.i154, label %_ZNK3euf6egraph4findEP4expr.exit157, label %_ZNK3euf6egraph4findEP4expr.exit157.thread

_ZNK3euf6egraph4findEP4expr.exit157:              ; preds = %_ZNK6vectorIPN3euf5enodeELb0EjE4sizeEv.exit.i.i153
  %i.ii = zext i32 %i.id to i64
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %i.ii
  %.0.i.sroa.speculate.load..i156 = load ptr, ptr %i.ij, align 8, !tbaa !34
  %.not70 = icmp eq ptr %.0.i.sroa.speculate.load..i156, null
  br i1 %.not70, label %_ZNK3euf6egraph4findEP4expr.exit157.thread, label %bb.ad

_ZNK3euf6egraph4findEP4expr.exit157.thread:       ; preds = %bb.ac, %_ZNK6vectorIPN3euf5enodeELb0EjE4sizeEv.exit.i.i153, %_ZNK3euf6egraph4findEP4expr.exit157
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNK3euf6egraph4findEP4expr.exit157.thread, %_ZNK3euf6egraph4findEP4expr.exit157
  %.1206 = phi i1 [ true, %_ZNK3euf6egraph4findEP4expr.exit157.thread ], [ %.0205, %_ZNK3euf6egraph4findEP4expr.exit157 ] ; 2 uses
  %i.ik = invoke noundef ptr @_ZN3euf13th_euf_solver13e_internalizeEP4expr(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef nonnull %i.dc)
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.il = invoke noundef ptr @_ZN3euf13th_euf_solver13e_internalizeEP4expr(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef nonnull %i.gt)
          to label %bb.af unwind label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.im = getelementptr inbounds nuw i8, ptr %i.ik, i64 64
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !175
  %i.io = getelementptr inbounds nuw i8, ptr %i.il, i64 64
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !175
  %i.iq = icmp eq ptr %i.in, %i.ip
  br i1 %i.iq, label %bb.bc, label %.lr.ph245

.lr.ph245:                                        ; preds = %bb.af
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %umax263 = call i32 @llvm.umax.i32(i32 %i.h, i32 2)
  %wide.trip.count264 = zext i32 %umax263 to i64
  br label %bb.ai

bb.ag:                                            ; preds = %bb.ad
  %i.is = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.ah:                                            ; preds = %bb.ae
  %i.it = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.ai:                                            ; preds = %.lr.ph245, %bb.bb
  %indvars.iv261 = phi i64 [ 1, %.lr.ph245 ], [ %indvars.iv.next262, %bb.bb ] ; 3 uses
  %.sroa.0198.0243 = phi i32 [ -2, %.lr.ph245 ], [ %.sroa.0198.1, %bb.bb ] ; 6 uses
  %.2242 = phi i1 [ %.1206, %.lr.ph245 ], [ %.4, %bb.bb ] ; 4 uses
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv261
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !162 ; 2 uses
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv261
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !162 ; 2 uses
  %i.iy = invoke noundef ptr @_ZNK3euf13th_euf_solver10expr2enodeEP4expr(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef %i.iv)
          to label %bb.aj unwind label %bb.al     ; 2 uses

end_hunk_0
