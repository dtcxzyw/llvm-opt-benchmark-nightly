Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/bool_rewriter?download=true
inline.NumInlined: 2334
inline.NumDeleted: 457
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 44
begin_hunk_0_@_ZN13bool_rewriter16mk_flat_and_coreEjPKP4exprR7obj_refIS0_11ast_managerE:bb.a
  %i.er = sub nsw i64 %indvars.iv.i.i52.ph, %wide.trip.count.i.i51
  %i.es = icmp ugt i64 %i.er, -4
  br i1 %i.es, label %._crit_edge.i.i55, label %scalar.ph139

._crit_edge.i.i55:                                ; preds = %scalar.ph139.prol.loopexit, %scalar.ph139, %middle.block148, %.noexc63
  %.not.i.i.i56 = icmp eq ptr %.pre.i.i49, %i.r
  %i.et = icmp eq ptr %.pre.i.i49, null
  %or.cond.i.i.i57 = or i1 %.not.i.i.i56, %i.et
  br i1 %or.cond.i.i.i57, label %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i59, label %bb.m

bb.m:                                             ; preds = %._crit_edge.i.i55
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %.pre.i.i49)
          to label %.noexc64 unwind label %bb.h

.noexc64:                                         ; preds = %bb.m
  %.pre2.pre.i58 = load i32, ptr %i.s, align 8, !tbaa !154
  br label %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i59

scalar.ph139:                                     ; preds = %scalar.ph139.prol.loopexit, %scalar.ph139
  %indvars.iv.i.i52 = phi i64 [ %indvars.iv.next.i.i53.3, %scalar.ph139 ], [ %indvars.iv.i.i52.unr, %scalar.ph139.prol.loopexit ] ; 6 uses
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %indvars.iv.i.i52
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i49, i64 %indvars.iv.i.i52
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !65
  store ptr %i.ew, ptr %i.eu, align 8, !tbaa !65
  %indvars.iv.next.i.i53 = add nuw nsw i64 %indvars.iv.i.i52, 1 ; 2 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %indvars.iv.next.i.i53
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i49, i64 %indvars.iv.next.i.i53
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !65
  store ptr %i.ez, ptr %i.ex, align 8, !tbaa !65
  %indvars.iv.next.i.i53.1 = add nuw nsw i64 %indvars.iv.i.i52, 2 ; 2 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %indvars.iv.next.i.i53.1
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i49, i64 %indvars.iv.next.i.i53.1
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !65
  store ptr %i.fc, ptr %i.fa, align 8, !tbaa !65
  %indvars.iv.next.i.i53.2 = add nuw nsw i64 %indvars.iv.i.i52, 3 ; 2 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %indvars.iv.next.i.i53.2
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i49, i64 %indvars.iv.next.i.i53.2
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !65
  store ptr %i.ff, ptr %i.fd, align 8, !tbaa !65
  %indvars.iv.next.i.i53.3 = add nuw nsw i64 %indvars.iv.i.i52, 4 ; 2 uses
  %exitcond.not.i.i54.3 = icmp eq i64 %indvars.iv.next.i.i53.3, %wide.trip.count.i.i51
  br i1 %exitcond.not.i.i54.3, label %._crit_edge.i.i55, label %scalar.ph139, !llvm.loop !285

_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i59:    ; preds = %.noexc64, %._crit_edge.i.i55
  %.pre2.i60 = phi i32 [ %i.eg, %._crit_edge.i.i55 ], [ %.pre2.pre.i58, %.noexc64 ]
  store ptr %i.ef, ptr %4, align 8, !tbaa !153
  store i32 %i.ec, ptr %i.t, align 4, !tbaa !155
  br label %_ZN6bufferIP4exprLb0ELj16EE9push_backERKS1_.exit65

_ZN6bufferIP4exprLb0ELj16EE9push_backERKS1_.exit65: ; preds = %_ZNK11ast_manager6is_andEPK4expr.exit41.thread, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i59
  %.pre.i62103 = phi ptr [ %i.ef, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i59 ], [ %.pre.i62, %_ZNK11ast_manager6is_andEPK4expr.exit41.thread ] ; 3 uses
  %i.fg = phi i32 [ %i.ec, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i59 ], [ %i.bn, %_ZNK11ast_manager6is_andEPK4expr.exit41.thread ] ; 2 uses
  %i.fh = phi i32 [ %.pre2.i60, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i59 ], [ %i.bp, %_ZNK11ast_manager6is_andEPK4expr.exit41.thread ] ; 2 uses
  %i.fi = zext i32 %i.fh to i64
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %.pre.i62103, i64 %i.fi
  store ptr %i.br, ptr %i.fj, align 8, !tbaa !65
  %i.fk = add i32 %i.fh, 1                        ; 2 uses
  store i32 %i.fk, ptr %i.s, align 8, !tbaa !154
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge.i, %bb.g, %_ZN6bufferIP4exprLb0ELj16EE9push_backERKS1_.exit65
  %.pre.i62102 = phi ptr [ %.pre.i62103, %_ZN6bufferIP4exprLb0ELj16EE9push_backERKS1_.exit65 ], [ %.pre.i62, %bb.g ], [ %.pre.i6299, %._crit_edge.i ] ; 2 uses
  %i.fl = phi i32 [ %i.fg, %_ZN6bufferIP4exprLb0ELj16EE9push_backERKS1_.exit65 ], [ %i.bn, %bb.g ], [ %i.du, %._crit_edge.i ]
  %.pre.i97 = phi ptr [ %.pre.i62103, %_ZN6bufferIP4exprLb0ELj16EE9push_backERKS1_.exit65 ], [ %.pre.i96, %bb.g ], [ %.pre.i94, %._crit_edge.i ]
  %i.fm = phi i32 [ %i.fg, %_ZN6bufferIP4exprLb0ELj16EE9push_backERKS1_.exit65 ], [ %i.bo, %bb.g ], [ %i.dv, %._crit_edge.i ]
  %i.fn = phi i32 [ %i.fk, %_ZN6bufferIP4exprLb0ELj16EE9push_backERKS1_.exit65 ], [ %i.bp, %bb.g ], [ %i.dz, %._crit_edge.i ] ; 2 uses
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1 ; 2 uses
  %exitcond91.not = icmp eq i64 %indvars.iv.next88, %wide.trip.count
  br i1 %exitcond91.not, label %._crit_edge, label %.lr.ph81, !llvm.loop !286

._crit_edge:                                      ; preds = %.loopexit, %_ZN10ptr_bufferI4exprLj16EE6appendEjPKPS0_.exit
  %i.fo = phi ptr [ %.pre.i98, %_ZN10ptr_bufferI4exprLj16EE6appendEjPKPS0_.exit ], [ %.pre.i62102, %.loopexit ]
  %i.fp = phi i32 [ %i.bl, %_ZN10ptr_bufferI4exprLj16EE6appendEjPKPS0_.exit ], [ %i.fn, %.loopexit ]
  %i.fq = invoke noundef i32 @_ZN13bool_rewriter17mk_nflat_and_coreEjPKP4exprR7obj_refIS0_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(368) %0, i32 noundef %i.fp, ptr noundef %i.fo, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.n unwind label %.loopexit.split-lp

bb.n:                                             ; preds = %._crit_edge
  %i.fr = icmp eq i32 %i.fq, 5
  br i1 %i.fr, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.fs = load ptr, ptr %0, align 8, !tbaa !67, !nonnull !18, !align !19
  %i.ft = load ptr, ptr %4, align 8, !tbaa !153
  %i.fu = load i32, ptr %i.s, align 8, !tbaa !154
  %i.fv = zext i32 %i.fu to i64
  %i.fw = invoke noundef ptr @_ZN11ast_manager6mk_appEiiSt4spanIKP4exprLm18446744073709551615EE(ptr noundef nonnull align 8 dereferenceable(952) %i.fs, i32 noundef 0, i32 noundef 5, ptr %i.ft, i64 %i.fv)
          to label %_ZN11ast_manager6mk_andERK10ptr_bufferI4exprLj16EE.exit unwind label %.loopexit.split-lp ; 3 uses

_ZN11ast_manager6mk_andERK10ptr_bufferI4exprLj16EE.exit: ; preds = %bb.o
  %.not.i67 = icmp eq ptr %i.fw, null
  br i1 %.not.i67, label %bb.p, label %_ZN11ast_manager7inc_refEP3ast.exit.i

_ZN11ast_manager7inc_refEP3ast.exit.i:            ; preds = %_ZN11ast_manager6mk_andERK10ptr_bufferI4exprLj16EE.exit
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8 ; 2 uses
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !124
  %i.fz = add i32 %i.fy, 1
  store i32 %i.fz, ptr %i.fx, align 4, !tbaa !124
  br label %bb.p

bb.p:                                             ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i, %_ZN11ast_manager6mk_andERK10ptr_bufferI4exprLj16EE.exit
  %i.ga = load ptr, ptr %3, align 8, !tbaa !126   ; 3 uses
  %.not.i4.i = icmp eq ptr %i.ga, null
  br i1 %.not.i4.i, label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.gb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !127, !nonnull !18, !align !19
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 8 ; 2 uses
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !124
  %i.gf = add i32 %i.ge, -1                       ; 2 uses
  store i32 %i.gf, ptr %i.gd, align 4, !tbaa !124
  %i.gg = icmp eq i32 %i.gf, 0
  br i1 %i.gg, label %bb.r, label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.gc, ptr noundef nonnull %i.ga)
          to label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit unwind label %.loopexit.split-lp

_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit:      ; preds = %bb.r, %bb.p, %bb.q
  store ptr %i.fw, ptr %3, align 8, !tbaa !126
  br label %bb.s

bb.s:                                             ; preds = %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit, %bb.n
  %i.gh = load ptr, ptr %4, align 8, !tbaa !153   ; 3 uses
  %.not.i.i.i69 = icmp eq ptr %i.gh, %i.r
  %i.gi = icmp eq ptr %i.gh, null
  %or.cond.i.i.i70 = or i1 %.not.i.i.i69, %i.gi
  br i1 %or.cond.i.i.i70, label %_ZN6bufferIP4exprLb0ELj16EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.gh)
          to label %_ZN6bufferIP4exprLb0ELj16EED2Ev.exit unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gj = landingpad { ptr, i32 }
          catch ptr null
  %i.gk = extractvalue { ptr, i32 } %i.gj, 0
  call void @__clang_call_terminate(ptr %i.gk) #21
  unreachable

_ZN6bufferIP4exprLb0ELj16EED2Ev.exit:             ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.w

bb.v:                                             ; preds = %.loopexit74, %.loopexit.split-lp, %bb.h, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %i.cl, %bb.h ], [ %i.eb, %bb.k ], [ %lpad.loopexit, %.loopexit74 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN6bufferIP4exprLb0ELj16EED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  resume { ptr, i32 } %.pn.pn

.critedge:                                        ; preds = %_ZNK11ast_manager6is_andEPK4expr.exit.thread, %bb.a
  %i.gl = tail call noundef i32 @_ZN13bool_rewriter17mk_nflat_and_coreEjPKP4exprR7obj_refIS0_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(368) %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br label %bb.w

bb.w:                                             ; preds = %.critedge, %_ZN6bufferIP4exprLb0ELj16EED2Ev.exit
  %.033 = phi i32 [ 0, %_ZN6bufferIP4exprLb0ELj16EED2Ev.exit ], [ %i.gl, %.critedge ]
  ret i32 %.033
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 4, 6) i32 @_ZN13bool_rewriter16mk_nflat_or_coreEjPKP4exprR7obj_refIS0_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(368) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.ptr_buffer, align 8          ; 16 uses
  %5 = alloca %class.ast_fast_mark, align 8       ; 17 uses
  %6 = alloca %class.ast_fast_mark.27, align 8    ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !153
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 7 uses
  store i32 0, ptr %i.b, align 8, !tbaa !154
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 3 uses
  store i32 16, ptr %i.c, align 4, !tbaa !155
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.d, ptr %5, align 8, !tbaa !142
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 16 uses
  store i32 0, ptr %i.e, align 8, !tbaa !143
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 3 uses
  store i32 16, ptr %i.f, align 4, !tbaa !144
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.g, ptr %6, align 8, !tbaa !142
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 15 uses
  store i32 0, ptr %i.h, align 8, !tbaa !143
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 3 uses
  store i32 16, ptr %i.i, align 4, !tbaa !144
  %.not42202.not = icmp eq i32 %1, 0
  br i1 %.not42202.not, label %.loopexit196.thread, label %.lr.ph.preheader

.loopexit196.thread:                              ; preds = %bb.a
  store i32 0, ptr %i.e, align 8, !tbaa !143
  br label %.loopexit195

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ai
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.ai ] ; 2 uses
  %.031204 = phi ptr [ null, %.lr.ph.preheader ], [ %.233.ph, %bb.ai ] ; 5 uses
  %.034203 = phi i1 [ false, %.lr.ph.preheader ], [ %.236.ph, %bb.ai ]
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !65   ; 10 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !67, !nonnull !18, !align !19 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 832
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !128
  %i.o = icmp eq ptr %i.k, %i.n
  br i1 %i.o, label %bb.b, label %bb.g

bb.b:                                             ; preds = %.lr.ph
  %i.p = load ptr, ptr %5, align 8, !tbaa !142    ; 3 uses
  %i.q = load i32, ptr %i.e, align 8, !tbaa !143  ; 2 uses
  %i.r = zext i32 %i.q to i64
  %.idx.i = shl nuw nsw i64 %i.r, 3               ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i
  %.not8.i = icmp eq i32 %i.q, 0
  br i1 %.not8.i, label %.loopexit190, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.t = add nsw i64 %.idx.i, -8                  ; 2 uses
  %i.u = lshr exact i64 %i.t, 3
  %i.v = add nuw nsw i64 %i.u, 1
  %xtraiter301 = and i64 %i.v, 3                  ; 2 uses
  %lcmp.mod302.not = icmp eq i64 %xtraiter301, 0
  br i1 %lcmp.mod302.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.09.i.prol = phi ptr [ %i.aa, %.lr.ph.i.prol ], [ %i.p, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter303 = phi i64 [ %prol.iter303.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.w = load ptr, ptr %.09.i.prol, align 8, !tbaa !146
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4
  %i.z = and i32 %i.y, -65537
  store i32 %i.z, ptr %i.x, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %.09.i.prol, i64 8 ; 2 uses
  %prol.iter303.next = add i64 %prol.iter303, 1   ; 2 uses
  %prol.iter303.cmp.not = icmp eq i64 %prol.iter303.next, %xtraiter301
  br i1 %prol.iter303.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !287

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.09.i.unr = phi ptr [ %i.p, %.lr.ph.i.preheader ], [ %i.aa, %.lr.ph.i.prol ]
  %i.ab = icmp ult i64 %i.t, 24
  br i1 %i.ab, label %.loopexit190, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.09.i = phi ptr [ %i.av, %.lr.ph.i ], [ %.09.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.ac = load ptr, ptr %.09.i, align 8, !tbaa !146
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = and i32 %i.ae, -65537
  store i32 %i.af, ptr %i.ad, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %.09.i, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !146
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = and i32 %i.aj, -65537
  store i32 %i.ak, ptr %i.ai, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %.09.i, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !146
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = and i32 %i.ao, -65537
  store i32 %i.ap, ptr %i.an, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %.09.i, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !146
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4
  %i.au = and i32 %i.at, -65537
  store i32 %i.au, ptr %i.as, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %.09.i, i64 32 ; 2 uses
  %.not.i.3 = icmp eq ptr %i.av, %i.s
  br i1 %.not.i.3, label %.loopexit190, label %.lr.ph.i

.loopexit190:                                     ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.b
  store i32 0, ptr %i.e, align 8, !tbaa !143
  %i.aw = load ptr, ptr %6, align 8, !tbaa !142   ; 3 uses
  %i.ax = load i32, ptr %i.h, align 8, !tbaa !143 ; 2 uses
  %i.ay = zext i32 %i.ax to i64
  %.idx.i47 = shl nuw nsw i64 %i.ay, 3            ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.idx.i47
  %.not8.i48 = icmp eq i32 %i.ax, 0
  br i1 %.not8.i48, label %.loopexit, label %.lr.ph.i49.preheader

.lr.ph.i49.preheader:                             ; preds = %.loopexit190
  %i.ba = add nsw i64 %.idx.i47, -8               ; 2 uses
  %i.bb = lshr exact i64 %i.ba, 3
  %i.bc = add nuw nsw i64 %i.bb, 1
  %xtraiter304 = and i64 %i.bc, 3                 ; 2 uses
  %lcmp.mod305.not = icmp eq i64 %xtraiter304, 0
  br i1 %lcmp.mod305.not, label %.lr.ph.i49.prol.loopexit, label %.lr.ph.i49.prol

.lr.ph.i49.prol:                                  ; preds = %.lr.ph.i49.preheader, %.lr.ph.i49.prol
  %.09.i50.prol = phi ptr [ %i.bh, %.lr.ph.i49.prol ], [ %i.aw, %.lr.ph.i49.preheader ] ; 2 uses
  %prol.iter306 = phi i64 [ %prol.iter306.next, %.lr.ph.i49.prol ], [ 0, %.lr.ph.i49.preheader ]
  %i.bd = load ptr, ptr %.09.i50.prol, align 8, !tbaa !146
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4
  %i.bg = and i32 %i.bf, -131073
  store i32 %i.bg, ptr %i.be, align 4
  %i.bh = getelementptr inbounds nuw i8, ptr %.09.i50.prol, i64 8 ; 2 uses
  %prol.iter306.next = add i64 %prol.iter306, 1   ; 2 uses
  %prol.iter306.cmp.not = icmp eq i64 %prol.iter306.next, %xtraiter304
  br i1 %prol.iter306.cmp.not, label %.lr.ph.i49.prol.loopexit, label %.lr.ph.i49.prol, !llvm.loop !288

.lr.ph.i49.prol.loopexit:                         ; preds = %.lr.ph.i49.prol, %.lr.ph.i49.preheader
  %.09.i50.unr = phi ptr [ %i.aw, %.lr.ph.i49.preheader ], [ %i.bh, %.lr.ph.i49.prol ]
  %i.bi = icmp ult i64 %i.ba, 24
  br i1 %i.bi, label %.loopexit, label %.lr.ph.i49

.lr.ph.i49:                                       ; preds = %.lr.ph.i49.prol.loopexit, %.lr.ph.i49
  %.09.i50 = phi ptr [ %i.cc, %.lr.ph.i49 ], [ %.09.i50.unr, %.lr.ph.i49.prol.loopexit ] ; 5 uses
  %i.bj = load ptr, ptr %.09.i50, align 8, !tbaa !146
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 4 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4
  %i.bm = and i32 %i.bl, -131073
  store i32 %i.bm, ptr %i.bk, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %.09.i50, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !146
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4
  %i.br = and i32 %i.bq, -131073
  store i32 %i.br, ptr %i.bp, align 4
  %i.bs = getelementptr inbounds nuw i8, ptr %.09.i50, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !146
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4
  %i.bw = and i32 %i.bv, -131073
  store i32 %i.bw, ptr %i.bu, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %.09.i50, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !146
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4
  %i.cb = and i32 %i.ca, -131073
  store i32 %i.cb, ptr %i.bz, align 4
  %i.cc = getelementptr inbounds nuw i8, ptr %.09.i50, i64 32 ; 2 uses
  %.not.i51.3 = icmp eq ptr %i.cc, %i.az
  br i1 %.not.i51.3, label %.loopexit, label %.lr.ph.i49

.loopexit:                                        ; preds = %.lr.ph.i49.prol.loopexit, %.lr.ph.i49, %.loopexit190
  store i32 0, ptr %i.h, align 8, !tbaa !143
  %i.cd = load ptr, ptr %0, align 8, !tbaa !67, !nonnull !18, !align !19
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 832
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !128 ; 5 uses
  %.not.i52 = icmp eq ptr %i.cf, null
  br i1 %.not.i52, label %bb.c, label %_ZN11ast_manager7inc_refEP3ast.exit.i

_ZN11ast_manager7inc_refEP3ast.exit.i:            ; preds = %.loopexit
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !124
  %i.ci = add i32 %i.ch, 1
  store i32 %i.ci, ptr %i.cg, align 4, !tbaa !124
  br label %bb.c

bb.c:                                             ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i, %.loopexit
  %i.cj = load ptr, ptr %3, align 8, !tbaa !126   ; 3 uses
  %.not.i4.i = icmp eq ptr %i.cj, null
  br i1 %.not.i4.i, label %.thread184.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !127, !nonnull !18, !align !19
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !124
  %i.co = add i32 %i.cn, -1                       ; 2 uses
  store i32 %i.co, ptr %i.cm, align 4, !tbaa !124
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %bb.e, label %.thread184.sink.split

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.cl, ptr noundef nonnull %i.cj)
          to label %.thread184.sink.split unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.g:                                             ; preds = %.lr.ph
  %i.cr = getelementptr inbounds nuw i8, ptr %i.l, i64 840
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !123
  %i.ct = icmp eq ptr %i.k, %i.cs
  br i1 %i.ct, label %bb.ai, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cu = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4            ; 4 uses
  %i.cw = and i32 %i.cv, 65535
  %i.cx = icmp eq i32 %i.cw, 0
  br i1 %i.cx, label %bb.i, label %bb.t

bb.i:                                             ; preds = %bb.h
  %i.cy = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !133
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !59 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i.i.i, label %bb.t, label %_ZNK11ast_manager6is_notEPK4expr.exit.i

_ZNK11ast_manager6is_notEPK4expr.exit.i:          ; preds = %bb.i
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !134
  %i.dd = icmp eq i32 %i.dc, 0
end_hunk_0
begin_hunk_1_@_ZN13bool_rewriter16mk_nflat_or_coreEjPKP4exprR7obj_refIS0_11ast_managerE:bb.a
  %i.lz = sub nsw i64 %indvars.iv.i.i.i96.ph, %wide.trip.count.i.i.i95
  %i.ma = icmp ugt i64 %i.lz, -4
  br i1 %i.ma, label %._crit_edge.i.i.i99, label %scalar.ph248

._crit_edge.i.i.i99:                              ; preds = %scalar.ph248.prol.loopexit, %scalar.ph248, %middle.block257, %.noexc108
  %.not.i.i.i.i100 = icmp eq ptr %.pre.i.i.i93, %i.g
  %i.mb = icmp eq ptr %.pre.i.i.i93, null
  %or.cond.i.i.i.i101 = or i1 %.not.i.i.i.i100, %i.mb
  br i1 %or.cond.i.i.i.i101, label %_ZN6bufferIP3astLb0ELj16EE6expandEv.exit.i.i103, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge.i.i.i99
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %.pre.i.i.i93)
          to label %.noexc109 unwind label %.loopexit197

.noexc109:                                        ; preds = %bb.ab
  %.pre2.pre.i.i102 = load i32, ptr %i.h, align 8, !tbaa !143
  br label %_ZN6bufferIP3astLb0ELj16EE6expandEv.exit.i.i103

scalar.ph248:                                     ; preds = %scalar.ph248.prol.loopexit, %scalar.ph248
  %indvars.iv.i.i.i96 = phi i64 [ %indvars.iv.next.i.i.i97.3, %scalar.ph248 ], [ %indvars.iv.i.i.i96.unr, %scalar.ph248.prol.loopexit ] ; 6 uses
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %i.ln, i64 %indvars.iv.i.i.i96
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i93, i64 %indvars.iv.i.i.i96
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !146
  store ptr %i.me, ptr %i.mc, align 8, !tbaa !146
  %indvars.iv.next.i.i.i97 = add nuw nsw i64 %indvars.iv.i.i.i96, 1 ; 2 uses
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %i.ln, i64 %indvars.iv.next.i.i.i97
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i93, i64 %indvars.iv.next.i.i.i97
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !146
  store ptr %i.mh, ptr %i.mf, align 8, !tbaa !146
  %indvars.iv.next.i.i.i97.1 = add nuw nsw i64 %indvars.iv.i.i.i96, 2 ; 2 uses
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.ln, i64 %indvars.iv.next.i.i.i97.1
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i93, i64 %indvars.iv.next.i.i.i97.1
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !146
  store ptr %i.mk, ptr %i.mi, align 8, !tbaa !146
  %indvars.iv.next.i.i.i97.2 = add nuw nsw i64 %indvars.iv.i.i.i96, 3 ; 2 uses
  %i.ml = getelementptr inbounds nuw [8 x i8], ptr %i.ln, i64 %indvars.iv.next.i.i.i97.2
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i93, i64 %indvars.iv.next.i.i.i97.2
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !146
  store ptr %i.mn, ptr %i.ml, align 8, !tbaa !146
  %indvars.iv.next.i.i.i97.3 = add nuw nsw i64 %indvars.iv.i.i.i96, 4 ; 2 uses
  %exitcond.not.i.i.i98.3 = icmp eq i64 %indvars.iv.next.i.i.i97.3, %wide.trip.count.i.i.i95
  br i1 %exitcond.not.i.i.i98.3, label %._crit_edge.i.i.i99, label %scalar.ph248, !llvm.loop !298

_ZN6bufferIP3astLb0ELj16EE6expandEv.exit.i.i103:  ; preds = %.noexc109, %._crit_edge.i.i.i99
  %.pre2.i.i104 = phi i32 [ %i.lo, %._crit_edge.i.i.i99 ], [ %.pre2.pre.i.i102, %.noexc109 ]
  store ptr %i.ln, ptr %6, align 8, !tbaa !142
  store i32 %i.lk, ptr %i.i, align 4, !tbaa !144
  br label %_ZN13ast_fast_markILj2EE4markEP3ast.exit

_ZN13ast_fast_markILj2EE4markEP3ast.exit:         ; preds = %._crit_edge.i.i106, %_ZN6bufferIP3astLb0ELj16EE6expandEv.exit.i.i103
  %i.mo = phi i32 [ %i.li, %._crit_edge.i.i106 ], [ %.pre2.i.i104, %_ZN6bufferIP3astLb0ELj16EE6expandEv.exit.i.i103 ] ; 2 uses
  %i.mp = phi ptr [ %.pre.i.i107, %._crit_edge.i.i106 ], [ %i.ln, %_ZN6bufferIP3astLb0ELj16EE6expandEv.exit.i.i103 ]
  %i.mq = zext i32 %i.mo to i64
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %i.mp, i64 %i.mq
  store ptr %i.k, ptr %i.mr, align 8, !tbaa !146
  %i.ms = add i32 %i.mo, 1
  store i32 %i.ms, ptr %i.h, align 8, !tbaa !143
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN13ast_fast_markILj2EE4markEP3ast.exit, %_ZN13ast_fast_markILj1EE4markEP3ast.exit
  %i.mt = load i32, ptr %i.b, align 8, !tbaa !154 ; 2 uses
  %i.mu = load i32, ptr %i.c, align 4, !tbaa !155 ; 2 uses
  %.not.i110 = icmp ult i32 %i.mt, %i.mu
  br i1 %.not.i110, label %._crit_edge.i, label %bb.ad

._crit_edge.i:                                    ; preds = %bb.ac
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !153
  br label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.mv = shl i32 %i.mu, 1                        ; 2 uses
  %i.mw = zext i32 %i.mv to i64
  %i.mx = shl nuw nsw i64 %i.mw, 3
  %i.my = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.mx)
          to label %.noexc115 unwind label %.loopexit197 ; 9 uses

.noexc115:                                        ; preds = %bb.ad
  %i.mz = load i32, ptr %i.b, align 8, !tbaa !154 ; 4 uses
  %.not.i.i111 = icmp eq i32 %i.mz, 0
  %.pre.i.i112 = load ptr, ptr %4, align 8, !tbaa !153 ; 10 uses
  br i1 %.not.i.i111, label %._crit_edge.i.i113, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc115
  %.pre.i.i112243 = ptrtoaddr ptr %.pre.i.i112 to i64
  %i.na = ptrtoaddr ptr %i.my to i64
  %wide.trip.count.i.i = zext i32 %i.mz to i64    ; 5 uses
  %min.iters.check = icmp ult i32 %i.mz, 4
  %i.nb = sub i64 %.pre.i.i112243, %i.na
  %diff.check = icmp ugt i64 %i.nb, -32
  %or.cond276 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond276, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 4294967292 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %i.my, i64 %index ; 2 uses
  %i.nd = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i112, i64 %index ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 16
  %wide.load = load <2 x ptr>, ptr %i.nd, align 8, !tbaa !65
  %wide.load244 = load <2 x ptr>, ptr %i.ne, align 8, !tbaa !65
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nc, i64 16
  store <2 x ptr> %wide.load, ptr %i.nc, align 8, !tbaa !65
  store <2 x ptr> %wide.load244, ptr %i.nf, align 8, !tbaa !65
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ng = icmp eq i64 %index.next, %n.vec
  br i1 %i.ng, label %middle.block, label %vector.body, !llvm.loop !299

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %._crit_edge.i.i113, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter280 = and i64 %wide.trip.count.i.i, 3  ; 2 uses
  %lcmp.mod281.not = icmp eq i64 %xtraiter280, 0
  br i1 %lcmp.mod281.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter282 = phi i64 [ %prol.iter282.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.nh = getelementptr inbounds nuw [8 x i8], ptr %i.my, i64 %indvars.iv.i.i.prol
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i112, i64 %indvars.iv.i.i.prol
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !65
  store ptr %i.nj, ptr %i.nh, align 8, !tbaa !65
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter282.next = add i64 %prol.iter282, 1   ; 2 uses
  %prol.iter282.cmp.not = icmp eq i64 %prol.iter282.next, %xtraiter280
  br i1 %prol.iter282.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !300

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ]
  %i.nk = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.nl = icmp ugt i64 %i.nk, -4
  br i1 %i.nl, label %._crit_edge.i.i113, label %scalar.ph

._crit_edge.i.i113:                               ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.noexc115
  %.not.i.i.i114 = icmp eq ptr %.pre.i.i112, %i.a
  %i.nm = icmp eq ptr %.pre.i.i112, null
  %or.cond.i.i.i = or i1 %.not.i.i.i114, %i.nm
  br i1 %or.cond.i.i.i, label %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i, label %bb.ae

bb.ae:                                            ; preds = %._crit_edge.i.i113
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %.pre.i.i112)
          to label %.noexc116 unwind label %.loopexit197

.noexc116:                                        ; preds = %bb.ae
  %.pre2.pre.i = load i32, ptr %i.b, align 8, !tbaa !154
  br label %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %i.my, i64 %indvars.iv.i.i
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i112, i64 %indvars.iv.i.i
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !65
  store ptr %i.np, ptr %i.nn, align 8, !tbaa !65
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %i.my, i64 %indvars.iv.next.i.i
  %i.nr = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i112, i64 %indvars.iv.next.i.i
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !65
  store ptr %i.ns, ptr %i.nq, align 8, !tbaa !65
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %i.my, i64 %indvars.iv.next.i.i.1
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i112, i64 %indvars.iv.next.i.i.1
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !65
  store ptr %i.nv, ptr %i.nt, align 8, !tbaa !65
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.nw = getelementptr inbounds nuw [8 x i8], ptr %i.my, i64 %indvars.iv.next.i.i.2
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i112, i64 %indvars.iv.next.i.i.2
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !65
  store ptr %i.ny, ptr %i.nw, align 8, !tbaa !65
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.i.i113, label %scalar.ph, !llvm.loop !301

_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i:      ; preds = %.noexc116, %._crit_edge.i.i113
  %.pre2.i = phi i32 [ %i.mz, %._crit_edge.i.i113 ], [ %.pre2.pre.i, %.noexc116 ]
  store ptr %i.my, ptr %4, align 8, !tbaa !153
  store i32 %i.mv, ptr %i.c, align 4, !tbaa !155
  br label %bb.af

bb.af:                                            ; preds = %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i, %._crit_edge.i
  %i.nz = phi i32 [ %i.mt, %._crit_edge.i ], [ %.pre2.i, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i ] ; 2 uses
  %i.oa = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.my, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i ]
  %i.ob = zext i32 %i.nz to i64
  %i.oc = getelementptr inbounds nuw [8 x i8], ptr %i.oa, i64 %i.ob
  store ptr %i.k, ptr %i.oc, align 8, !tbaa !65
  %i.od = add i32 %i.nz, 1
  store i32 %i.od, ptr %i.b, align 8, !tbaa !154
  %.not = icmp eq ptr %.031204, null
  br i1 %.not, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.oe = invoke noundef zeroext i1 @_Z2ltP3astS0_(ptr noundef nonnull %i.k, ptr noundef nonnull %.031204)
          to label %bb.ah unwind label %.loopexit197

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.of = phi i1 [ false, %bb.af ], [ %i.oe, %bb.ag ]
  %7 = or i1 %.034203, %i.of
  br label %bb.ai

bb.ai:                                            ; preds = %bb.g, %bb.t, %bb.k, %bb.ah
  %.236.ph = phi i1 [ %7, %bb.ah ], [ true, %bb.k ], [ true, %bb.t ], [ true, %bb.g ] ; 4 uses
  %.233.ph = phi ptr [ %i.k, %bb.ah ], [ %.031204, %bb.k ], [ %.031204, %bb.t ], [ %.031204, %bb.g ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !302

._crit_edge:                                      ; preds = %bb.ai
  %.pre = load ptr, ptr %5, align 8, !tbaa !142   ; 3 uses
  %.pre206 = load i32, ptr %i.e, align 8, !tbaa !143 ; 2 uses
  %i.og = zext i32 %.pre206 to i64
  %.idx.i117 = shl nuw nsw i64 %i.og, 3           ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx.i117
  %.not8.i118 = icmp eq i32 %.pre206, 0
  br i1 %.not8.i118, label %.loopexit196, label %.lr.ph.i119.preheader

.lr.ph.i119.preheader:                            ; preds = %._crit_edge
  %i.oi = add nsw i64 %.idx.i117, -8              ; 2 uses
  %i.oj = lshr exact i64 %i.oi, 3
  %i.ok = add nuw nsw i64 %i.oj, 1
  %xtraiter295 = and i64 %i.ok, 3                 ; 2 uses
  %lcmp.mod296.not = icmp eq i64 %xtraiter295, 0
  br i1 %lcmp.mod296.not, label %.lr.ph.i119.prol.loopexit, label %.lr.ph.i119.prol

.lr.ph.i119.prol:                                 ; preds = %.lr.ph.i119.preheader, %.lr.ph.i119.prol
  %.09.i120.prol = phi ptr [ %i.op, %.lr.ph.i119.prol ], [ %.pre, %.lr.ph.i119.preheader ] ; 2 uses
  %prol.iter297 = phi i64 [ %prol.iter297.next, %.lr.ph.i119.prol ], [ 0, %.lr.ph.i119.preheader ]
  %i.ol = load ptr, ptr %.09.i120.prol, align 8, !tbaa !146
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 4 ; 2 uses
  %i.on = load i32, ptr %i.om, align 4
  %i.oo = and i32 %i.on, -65537
  store i32 %i.oo, ptr %i.om, align 4
  %i.op = getelementptr inbounds nuw i8, ptr %.09.i120.prol, i64 8 ; 2 uses
  %prol.iter297.next = add i64 %prol.iter297, 1   ; 2 uses
  %prol.iter297.cmp.not = icmp eq i64 %prol.iter297.next, %xtraiter295
  br i1 %prol.iter297.cmp.not, label %.lr.ph.i119.prol.loopexit, label %.lr.ph.i119.prol, !llvm.loop !303

.lr.ph.i119.prol.loopexit:                        ; preds = %.lr.ph.i119.prol, %.lr.ph.i119.preheader
  %.09.i120.unr = phi ptr [ %.pre, %.lr.ph.i119.preheader ], [ %i.op, %.lr.ph.i119.prol ]
  %i.oq = icmp ult i64 %i.oi, 24
  br i1 %i.oq, label %.loopexit196, label %.lr.ph.i119

.lr.ph.i119:                                      ; preds = %.lr.ph.i119.prol.loopexit, %.lr.ph.i119
  %.09.i120 = phi ptr [ %i.pk, %.lr.ph.i119 ], [ %.09.i120.unr, %.lr.ph.i119.prol.loopexit ] ; 5 uses
  %i.or = load ptr, ptr %.09.i120, align 8, !tbaa !146
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 4 ; 2 uses
  %i.ot = load i32, ptr %i.os, align 4
  %i.ou = and i32 %i.ot, -65537
  store i32 %i.ou, ptr %i.os, align 4
  %i.ov = getelementptr inbounds nuw i8, ptr %.09.i120, i64 8
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !146
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 4 ; 2 uses
  %i.oy = load i32, ptr %i.ox, align 4
  %i.oz = and i32 %i.oy, -65537
  store i32 %i.oz, ptr %i.ox, align 4
  %i.pa = getelementptr inbounds nuw i8, ptr %.09.i120, i64 16
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !146
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 4 ; 2 uses
  %i.pd = load i32, ptr %i.pc, align 4
  %i.pe = and i32 %i.pd, -65537
  store i32 %i.pe, ptr %i.pc, align 4
  %i.pf = getelementptr inbounds nuw i8, ptr %.09.i120, i64 24
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !146
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 4 ; 2 uses
  %i.pi = load i32, ptr %i.ph, align 4
  %i.pj = and i32 %i.pi, -65537
  store i32 %i.pj, ptr %i.ph, align 4
  %i.pk = getelementptr inbounds nuw i8, ptr %.09.i120, i64 32 ; 2 uses
  %.not.i121.3 = icmp eq ptr %i.pk, %i.oh
  br i1 %.not.i121.3, label %.loopexit196, label %.lr.ph.i119

.loopexit196:                                     ; preds = %.lr.ph.i119.prol.loopexit, %.lr.ph.i119, %._crit_edge
  %.pr = load i32, ptr %i.h, align 8, !tbaa !143  ; 2 uses
  store i32 0, ptr %i.e, align 8, !tbaa !143
  %i.pl = load ptr, ptr %6, align 8, !tbaa !142   ; 3 uses
  %i.pm = zext i32 %.pr to i64
  %.idx.i124 = shl nuw nsw i64 %i.pm, 3           ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pl, i64 %.idx.i124
  %.not8.i125 = icmp eq i32 %.pr, 0
  br i1 %.not8.i125, label %.loopexit195, label %.lr.ph.i126.preheader

.lr.ph.i126.preheader:                            ; preds = %.loopexit196
  %i.po = add nsw i64 %.idx.i124, -8              ; 2 uses
  %i.pp = lshr exact i64 %i.po, 3
  %i.pq = add nuw nsw i64 %i.pp, 1
  %xtraiter298 = and i64 %i.pq, 3                 ; 2 uses
  %lcmp.mod299.not = icmp eq i64 %xtraiter298, 0
  br i1 %lcmp.mod299.not, label %.lr.ph.i126.prol.loopexit, label %.lr.ph.i126.prol

.lr.ph.i126.prol:                                 ; preds = %.lr.ph.i126.preheader, %.lr.ph.i126.prol
  %.09.i127.prol = phi ptr [ %i.pv, %.lr.ph.i126.prol ], [ %i.pl, %.lr.ph.i126.preheader ] ; 2 uses
  %prol.iter300 = phi i64 [ %prol.iter300.next, %.lr.ph.i126.prol ], [ 0, %.lr.ph.i126.preheader ]
  %i.pr = load ptr, ptr %.09.i127.prol, align 8, !tbaa !146
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 4 ; 2 uses
  %i.pt = load i32, ptr %i.ps, align 4
  %i.pu = and i32 %i.pt, -131073
  store i32 %i.pu, ptr %i.ps, align 4
  %i.pv = getelementptr inbounds nuw i8, ptr %.09.i127.prol, i64 8 ; 2 uses
  %prol.iter300.next = add i64 %prol.iter300, 1   ; 2 uses
  %prol.iter300.cmp.not = icmp eq i64 %prol.iter300.next, %xtraiter298
  br i1 %prol.iter300.cmp.not, label %.lr.ph.i126.prol.loopexit, label %.lr.ph.i126.prol, !llvm.loop !304

.lr.ph.i126.prol.loopexit:                        ; preds = %.lr.ph.i126.prol, %.lr.ph.i126.preheader
  %.09.i127.unr = phi ptr [ %i.pl, %.lr.ph.i126.preheader ], [ %i.pv, %.lr.ph.i126.prol ]
  %i.pw = icmp ult i64 %i.po, 24
  br i1 %i.pw, label %.loopexit195, label %.lr.ph.i126

.lr.ph.i126:                                      ; preds = %.lr.ph.i126.prol.loopexit, %.lr.ph.i126
  %.09.i127 = phi ptr [ %i.qq, %.lr.ph.i126 ], [ %.09.i127.unr, %.lr.ph.i126.prol.loopexit ] ; 5 uses
  %i.px = load ptr, ptr %.09.i127, align 8, !tbaa !146
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 4 ; 2 uses
  %i.pz = load i32, ptr %i.py, align 4
  %i.qa = and i32 %i.pz, -131073
  store i32 %i.qa, ptr %i.py, align 4
  %i.qb = getelementptr inbounds nuw i8, ptr %.09.i127, i64 8
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !146
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 4 ; 2 uses
  %i.qe = load i32, ptr %i.qd, align 4
  %i.qf = and i32 %i.qe, -131073
  store i32 %i.qf, ptr %i.qd, align 4
  %i.qg = getelementptr inbounds nuw i8, ptr %.09.i127, i64 16
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !146
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 4 ; 2 uses
  %i.qj = load i32, ptr %i.qi, align 4
  %i.qk = and i32 %i.qj, -131073
  store i32 %i.qk, ptr %i.qi, align 4
  %i.ql = getelementptr inbounds nuw i8, ptr %.09.i127, i64 24
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !146
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 4 ; 2 uses
  %i.qo = load i32, ptr %i.qn, align 4
  %i.qp = and i32 %i.qo, -131073
  store i32 %i.qp, ptr %i.qn, align 4
  %i.qq = getelementptr inbounds nuw i8, ptr %.09.i127, i64 32 ; 2 uses
  %.not.i128.3 = icmp eq ptr %i.qq, %i.pn
  br i1 %.not.i128.3, label %.loopexit195, label %.lr.ph.i126

.loopexit195:                                     ; preds = %.lr.ph.i126.prol.loopexit, %.lr.ph.i126, %.loopexit196.thread, %.loopexit196
  %.034.lcssa238242 = phi i1 [ false, %.loopexit196.thread ], [ %.236.ph, %.loopexit196 ], [ %.236.ph, %.lr.ph.i126 ], [ %.236.ph, %.lr.ph.i126.prol.loopexit ] ; 2 uses
  store i32 0, ptr %i.h, align 8, !tbaa !143
  %i.qr = load i32, ptr %i.b, align 8, !tbaa !154 ; 3 uses
  switch i32 %i.qr, label %bb.as [
    i32 0, label %bb.ak
    i32 1, label %bb.ao
  ]

bb.aj:                                            ; preds = %bb.bc, %_ZSt11stable_sortIPP4expr6ast_ltEvT_S4_T0_.exit, %bb.ar, %bb.an, %bb.au
  %i.qs = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.ak:                                            ; preds = %.loopexit195
  %i.qt = load ptr, ptr %0, align 8, !tbaa !67, !nonnull !18, !align !19
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 840
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !123 ; 5 uses
  %.not.i131 = icmp eq ptr %i.qv, null
  br i1 %.not.i131, label %bb.al, label %_ZN11ast_manager7inc_refEP3ast.exit.i132

_ZN11ast_manager7inc_refEP3ast.exit.i132:         ; preds = %bb.ak
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 8 ; 2 uses
  %i.qx = load i32, ptr %i.qw, align 4, !tbaa !124
  %i.qy = add i32 %i.qx, 1
  store i32 %i.qy, ptr %i.qw, align 4, !tbaa !124
  br label %bb.al

bb.al:                                            ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i132, %bb.ak
  %i.qz = load ptr, ptr %3, align 8, !tbaa !126   ; 3 uses
  %.not.i4.i133 = icmp eq ptr %i.qz, null
  br i1 %.not.i4.i133, label %.thread184.sink.split, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ra = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !127, !nonnull !18, !align !19
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qz, i64 8 ; 2 uses
  %i.rd = load i32, ptr %i.rc, align 4, !tbaa !124
  %i.re = add i32 %i.rd, -1                       ; 2 uses
  store i32 %i.re, ptr %i.rc, align 4, !tbaa !124
  %i.rf = icmp eq i32 %i.re, 0
  br i1 %i.rf, label %bb.an, label %.thread184.sink.split

bb.an:                                            ; preds = %bb.am
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.rb, ptr noundef nonnull %i.qz)
          to label %.thread184.sink.split unwind label %bb.aj

bb.ao:                                            ; preds = %.loopexit195
  %i.rg = load ptr, ptr %4, align 8, !tbaa !153
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !65 ; 5 uses
  %.not.i136 = icmp eq ptr %i.rh, null
  br i1 %.not.i136, label %bb.ap, label %_ZN11ast_manager7inc_refEP3ast.exit.i137

_ZN11ast_manager7inc_refEP3ast.exit.i137:         ; preds = %bb.ao
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 8 ; 2 uses
  %i.rj = load i32, ptr %i.ri, align 4, !tbaa !124
  %i.rk = add i32 %i.rj, 1
  store i32 %i.rk, ptr %i.ri, align 4, !tbaa !124
  br label %bb.ap

bb.ap:                                            ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i137, %bb.ao
  %i.rl = load ptr, ptr %3, align 8, !tbaa !126   ; 3 uses
  %.not.i4.i138 = icmp eq ptr %i.rl, null
  br i1 %.not.i4.i138, label %.thread184.sink.split, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.rm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.rn = load ptr, ptr %i.rm, align 8, !tbaa !127, !nonnull !18, !align !19
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rl, i64 8 ; 2 uses
  %i.rp = load i32, ptr %i.ro, align 4, !tbaa !124
  %i.rq = add i32 %i.rp, -1                       ; 2 uses
  store i32 %i.rq, ptr %i.ro, align 4, !tbaa !124
  %i.rr = icmp eq i32 %i.rq, 0
  br i1 %i.rr, label %bb.ar, label %.thread184.sink.split

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.rn, ptr noundef nonnull %i.rl)
          to label %.thread184.sink.split unwind label %bb.aj

bb.as:                                            ; preds = %.loopexit195
  %i.rs = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.rt = load i8, ptr %i.rs, align 2, !tbaa !49, !range !66, !noundef !18
  %i.ru = trunc nuw i8 %i.rt to i1
  br i1 %i.ru, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %bb.as
  %i.rv = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.rw = load i32, ptr %i.rv, align 4, !tbaa !158
  %i.rx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ry = load i32, ptr %i.rx, align 8, !tbaa !50
  %.not43 = icmp ugt i32 %i.rw, %i.ry
  br i1 %.not43, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.rz = load ptr, ptr %4, align 8, !tbaa !153
  %i.sa = invoke noundef zeroext i1 @_ZN13bool_rewriter14local_ctx_simpEjPKP4exprR7obj_refIS0_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(368) %0, i32 noundef %i.qr, ptr noundef %i.rz, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.av unwind label %bb.aj     ; 2 uses

bb.av:                                            ; preds = %bb.au
  %.034.not = xor i1 %.034.lcssa238242, true
  %brmerge = select i1 %i.sa, i1 true, i1 %.034.not
  %.mux = select i1 %i.sa, i32 4, i32 5
  br i1 %brmerge, label %.thread184, label %bb.ax

bb.aw:                                            ; preds = %bb.at, %bb.as
  br i1 %.034.lcssa238242, label %bb.ax, label %.thread184

bb.ax:                                            ; preds = %bb.av, %bb.aw
  %i.sb = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.sc = load i8, ptr %i.sb, align 1, !tbaa !46, !range !66, !noundef !18
  %i.sd = trunc nuw i8 %i.sc to i1
  %.pre208 = load ptr, ptr %4, align 8, !tbaa !153 ; 3 uses
  br i1 %i.sd, label %bb.ay, label %_ZSt11stable_sortIPP4expr6ast_ltEvT_S4_T0_.exit

bb.ay:                                            ; preds = %bb.ax
  %i.se = load i32, ptr %i.b, align 8, !tbaa !154
  %i.sf = zext i32 %i.se to i64
  %i.sg = getelementptr inbounds nuw [8 x i8], ptr %.pre208, i64 %i.sf
  invoke void @_ZSt13__stable_sortIPP4exprN9__gnu_cxx5__ops15_Iter_comp_iterI6ast_ltEEEvT_S8_T0_(ptr noundef %.pre208, ptr noundef %i.sg)
          to label %._ZSt11stable_sortIPP4expr6ast_ltEvT_S4_T0_.exit_crit_edge unwind label %bb.az

._ZSt11stable_sortIPP4expr6ast_ltEvT_S4_T0_.exit_crit_edge: ; preds = %bb.ay
  %.pre207 = load ptr, ptr %4, align 8, !tbaa !153
  br label %_ZSt11stable_sortIPP4expr6ast_ltEvT_S4_T0_.exit

bb.az:                                            ; preds = %bb.ay
  %i.sh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

_ZSt11stable_sortIPP4expr6ast_ltEvT_S4_T0_.exit:  ; preds = %._ZSt11stable_sortIPP4expr6ast_ltEvT_S4_T0_.exit_crit_edge, %bb.ax
  %i.si = phi ptr [ %.pre207, %._ZSt11stable_sortIPP4expr6ast_ltEvT_S4_T0_.exit_crit_edge ], [ %.pre208, %bb.ax ]
  %i.sj = load ptr, ptr %0, align 8, !tbaa !67, !nonnull !18, !align !19
  %i.sk = invoke noundef ptr @_ZN11ast_manager6mk_appEiijPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.sj, i32 noundef 0, i32 noundef 6, i32 noundef %i.qr, ptr noundef %i.si)
          to label %_ZN11ast_manager5mk_orEjPKP4expr.exit unwind label %bb.aj ; 5 uses

_ZN11ast_manager5mk_orEjPKP4expr.exit:            ; preds = %_ZSt11stable_sortIPP4expr6ast_ltEvT_S4_T0_.exit
  %.not.i143 = icmp eq ptr %i.sk, null
  br i1 %.not.i143, label %bb.ba, label %_ZN11ast_manager7inc_refEP3ast.exit.i144

_ZN11ast_manager7inc_refEP3ast.exit.i144:         ; preds = %_ZN11ast_manager5mk_orEjPKP4expr.exit
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 8 ; 2 uses
  %i.sm = load i32, ptr %i.sl, align 4, !tbaa !124
  %i.sn = add i32 %i.sm, 1
  store i32 %i.sn, ptr %i.sl, align 4, !tbaa !124
  br label %bb.ba

bb.ba:                                            ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i144, %_ZN11ast_manager5mk_orEjPKP4expr.exit
  %i.so = load ptr, ptr %3, align 8, !tbaa !126   ; 3 uses
  %.not.i4.i145 = icmp eq ptr %i.so, null
  br i1 %.not.i4.i145, label %.thread184.sink.split, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.sp = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !127, !nonnull !18, !align !19
  %i.sr = getelementptr inbounds nuw i8, ptr %i.so, i64 8 ; 2 uses
  %i.ss = load i32, ptr %i.sr, align 4, !tbaa !124
  %i.st = add i32 %i.ss, -1                       ; 2 uses
  store i32 %i.st, ptr %i.sr, align 4, !tbaa !124
  %i.su = icmp eq i32 %i.st, 0
  br i1 %i.su, label %bb.bc, label %.thread184.sink.split

bb.bc:                                            ; preds = %bb.bb
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.sq, ptr noundef nonnull %i.so)
          to label %.thread184.sink.split unwind label %bb.aj

.thread184.sink.split:                            ; preds = %bb.bb, %bb.ba, %bb.bc, %bb.aq, %bb.ap, %bb.ar, %bb.am, %bb.al, %bb.an, %bb.x, %bb.w, %bb.y, %bb.o, %bb.n, %bb.p, %bb.d, %bb.c, %bb.e
  %.sink = phi ptr [ %i.cf, %bb.d ], [ %i.gh, %bb.o ], [ %i.kw, %bb.x ], [ %i.rh, %bb.aq ], [ %i.qv, %bb.am ], [ %i.cf, %bb.e ], [ %i.cf, %bb.c ], [ %i.gh, %bb.p ], [ %i.gh, %bb.n ], [ %i.kw, %bb.y ], [ %i.kw, %bb.w ], [ %i.qv, %bb.an ], [ %i.qv, %bb.al ], [ %i.rh, %bb.ar ], [ %i.rh, %bb.ap ], [ %i.sk, %bb.bc ], [ %i.sk, %bb.ba ], [ %i.sk, %bb.bb ]
  store ptr %.sink, ptr %3, align 8, !tbaa !126
  br label %.thread184

.thread184:                                       ; preds = %.thread184.sink.split, %bb.av, %bb.aw
  %.5 = phi i32 [ 5, %bb.aw ], [ %.mux, %bb.av ], [ 4, %.thread184.sink.split ]
  %i.sv = load ptr, ptr %6, align 8, !tbaa !142   ; 4 uses
  %i.sw = load i32, ptr %i.h, align 8, !tbaa !143 ; 2 uses
  %i.sx = zext i32 %i.sw to i64
  %.idx.i.i = shl nuw nsw i64 %i.sx, 3            ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sv, i64 %.idx.i.i
  %.not8.i.i = icmp eq i32 %i.sw, 0
  br i1 %.not8.i.i, label %.loopexit.i, label %.lr.ph.i.i148.preheader

.lr.ph.i.i148.preheader:                          ; preds = %.thread184
  %i.sz = add nsw i64 %.idx.i.i, -8               ; 2 uses
  %i.ta = lshr exact i64 %i.sz, 3
  %i.tb = add nuw nsw i64 %i.ta, 1
  %xtraiter307 = and i64 %i.tb, 3                 ; 2 uses
  %lcmp.mod308.not = icmp eq i64 %xtraiter307, 0
  br i1 %lcmp.mod308.not, label %.lr.ph.i.i148.prol.loopexit, label %.lr.ph.i.i148.prol

.lr.ph.i.i148.prol:                               ; preds = %.lr.ph.i.i148.preheader, %.lr.ph.i.i148.prol
  %.09.i.i.prol = phi ptr [ %i.tg, %.lr.ph.i.i148.prol ], [ %i.sv, %.lr.ph.i.i148.preheader ] ; 2 uses
  %prol.iter309 = phi i64 [ %prol.iter309.next, %.lr.ph.i.i148.prol ], [ 0, %.lr.ph.i.i148.preheader ]
  %i.tc = load ptr, ptr %.09.i.i.prol, align 8, !tbaa !146
  %i.td = getelementptr inbounds nuw i8, ptr %i.tc, i64 4 ; 2 uses
  %i.te = load i32, ptr %i.td, align 4
  %i.tf = and i32 %i.te, -131073
  store i32 %i.tf, ptr %i.td, align 4
  %i.tg = getelementptr inbounds nuw i8, ptr %.09.i.i.prol, i64 8 ; 2 uses
  %prol.iter309.next = add i64 %prol.iter309, 1   ; 2 uses
  %prol.iter309.cmp.not = icmp eq i64 %prol.iter309.next, %xtraiter307
  br i1 %prol.iter309.cmp.not, label %.lr.ph.i.i148.prol.loopexit, label %.lr.ph.i.i148.prol, !llvm.loop !305

end_hunk_1
begin_hunk_2_@_ZN13bool_rewriter15mk_flat_or_coreEjPKP4exprR7obj_refIS0_11ast_managerE:bb.a
bb.a:
  %4 = alloca %class.ptr_buffer, align 8          ; 20 uses
  %.not100 = icmp eq i32 %1, 0
  br i1 %.not100, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %1 to i64           ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNK11ast_manager5is_orEPK4expr.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZNK11ast_manager5is_orEPK4expr.exit.thread ] ; 6 uses
  %i.a = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = and i32 %i.d, 65535
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %_ZNK11ast_manager5is_orEPK4expr.exit.thread

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !133
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !59   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZNK11ast_manager5is_orEPK4expr.exit.thread, label %_ZNK11ast_manager5is_orEPK4expr.exit

_ZNK11ast_manager5is_orEPK4expr.exit:             ; preds = %bb.b
  %i.k = load i32, ptr %i.j, align 8, !tbaa !134
  %i.l = icmp eq i32 %i.k, 0
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.n = load i32, ptr %i.m, align 4
  %i.o = icmp eq i32 %i.n, 6
  %i.p = select i1 %i.l, i1 %i.o, i1 false
  br i1 %i.p, label %bb.c, label %_ZNK11ast_manager5is_orEPK4expr.exit.thread

_ZNK11ast_manager5is_orEPK4expr.exit.thread:      ; preds = %bb.b, %.lr.ph, %_ZNK11ast_manager5is_orEPK4expr.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !315

bb.c:                                             ; preds = %_ZNK11ast_manager5is_orEPK4expr.exit
  %i.q = trunc nuw i64 %indvars.iv to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.r, ptr %4, align 8, !tbaa !153
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 15 uses
  store i32 0, ptr %i.s, align 8, !tbaa !154
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 6 uses
  store i32 16, ptr %i.t, align 4, !tbaa !155
  %.idx.i.i = shl nuw nsw i64 %indvars.iv, 3
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i.i
  %i.v = icmp eq i64 %indvars.iv, 0
  br i1 %i.v, label %_ZN10ptr_bufferI4exprLj16EE6appendEjPKPS0_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %_ZN6bufferIP4exprLb0ELj16EE9push_backERKS1_.exit.i.i
  %.pre.i.i.i = phi ptr [ %.pre.i.i.i109, %_ZN6bufferIP4exprLb0ELj16EE9push_backERKS1_.exit.i.i ], [ %i.r, %bb.c ]
  %i.w = phi i32 [ %i.bd, %_ZN6bufferIP4exprLb0ELj16EE9push_backERKS1_.exit.i.i ], [ 16, %bb.c ] ; 3 uses
  %i.x = phi i32 [ %i.bh, %_ZN6bufferIP4exprLb0ELj16EE9push_backERKS1_.exit.i.i ], [ 0, %bb.c ] ; 2 uses
  %.sroa.03.08.i.i = phi ptr [ %i.bi, %_ZN6bufferIP4exprLb0ELj16EE9push_backERKS1_.exit.i.i ], [ %2, %bb.c ] ; 2 uses
  %i.y = load ptr, ptr %.sroa.03.08.i.i, align 8, !tbaa !65
  %.not.i.i.i = icmp ult i32 %i.x, %i.w
  br i1 %.not.i.i.i, label %_ZN6bufferIP4exprLb0ELj16EE9push_backERKS1_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.z = shl i32 %i.w, 1                          ; 3 uses
  %i.aa = zext i32 %i.z to i64
  %i.ab = shl nuw nsw i64 %i.aa, 3
  %i.ac = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.ab)
          to label %.noexc unwind label %.loopexit88 ; 9 uses

.noexc:                                           ; preds = %bb.d
  %i.ad = load i32, ptr %i.s, align 8, !tbaa !154 ; 4 uses
  %.not.i.i.i.i49 = icmp eq i32 %i.ad, 0
  %.pre.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !153 ; 10 uses
  br i1 %.not.i.i.i.i49, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc
  %.pre.i.i.i.i132 = ptrtoaddr ptr %.pre.i.i.i.i to i64
  %i.ae = ptrtoaddr ptr %i.ac to i64
  %wide.trip.count.i.i.i.i = zext i32 %i.ad to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.ad, 4
  %i.af = sub i64 %.pre.i.i.i.i132, %i.ae
  %diff.check = icmp ugt i64 %i.af, -32
  %or.cond164 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond164, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i.i, 4294967292 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %index ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i, i64 %index ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %wide.load = load <2 x ptr>, ptr %i.ah, align 8, !tbaa !65
  %wide.load133 = load <2 x ptr>, ptr %i.ai, align 8, !tbaa !65
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store <2 x ptr> %wide.load, ptr %i.ag, align 8, !tbaa !65
  store <2 x ptr> %wide.load133, ptr %i.aj, align 8, !tbaa !65
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !316

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i.i
  br i1 %cmp.n, label %._crit_edge.i.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i.i, %middle.block
  %indvars.iv.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i.i, 3 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.i.i.i.i.prol
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i, i64 %indvars.iv.i.i.i.i.prol
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !65
  store ptr %i.an, ptr %i.al, align 8, !tbaa !65
  %indvars.iv.next.i.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !317

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.i.prol, %scalar.ph.prol ]
  %i.ao = sub nsw i64 %indvars.iv.i.i.i.i.ph, %wide.trip.count.i.i.i.i
  %i.ap = icmp ugt i64 %i.ao, -4
  br i1 %i.ap, label %._crit_edge.i.i.i.i, label %scalar.ph

._crit_edge.i.i.i.i:                              ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.noexc
  %.not.i.i.i.i.i = icmp eq ptr %.pre.i.i.i.i, %i.r
  %i.aq = icmp eq ptr %.pre.i.i.i.i, null
  %or.cond.i.i.i.i.i = or i1 %.not.i.i.i.i.i, %i.aq
  br i1 %or.cond.i.i.i.i.i, label %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %.pre.i.i.i.i)
          to label %.noexc50 unwind label %.loopexit88

.noexc50:                                         ; preds = %bb.e
  %.pre2.pre.i.i.i = load i32, ptr %i.s, align 8, !tbaa !154
  br label %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i.i.i

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.i.i.i.i
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i, i64 %indvars.iv.i.i.i.i
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !65
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !65
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.next.i.i.i.i
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i, i64 %indvars.iv.next.i.i.i.i
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !65
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !65
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i, 2 ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.next.i.i.i.i.1
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i, i64 %indvars.iv.next.i.i.i.i.1
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !65
  store ptr %i.az, ptr %i.ax, align 8, !tbaa !65
  %indvars.iv.next.i.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i.i, 3 ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.next.i.i.i.i.2
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i, i64 %indvars.iv.next.i.i.i.i.2
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !65
  store ptr %i.bc, ptr %i.ba, align 8, !tbaa !65
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.3, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge.i.i.i.i, label %scalar.ph, !llvm.loop !318

_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i.i.i:  ; preds = %.noexc50, %._crit_edge.i.i.i.i
  %.pre2.i.i.i = phi i32 [ %i.ad, %._crit_edge.i.i.i.i ], [ %.pre2.pre.i.i.i, %.noexc50 ]
  store ptr %i.ac, ptr %4, align 8, !tbaa !153
  store i32 %i.z, ptr %i.t, align 4, !tbaa !155
  br label %_ZN6bufferIP4exprLb0ELj16EE9push_backERKS1_.exit.i.i

_ZN6bufferIP4exprLb0ELj16EE9push_backERKS1_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i.i.i
  %.pre.i.i.i109 = phi ptr [ %i.ac, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i.i.i ], [ %.pre.i.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.bd = phi i32 [ %i.z, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i.i.i ], [ %i.w, %.lr.ph.i.i ]
  %i.be = phi i32 [ %.pre2.i.i.i, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i.i.i ], [ %i.x, %.lr.ph.i.i ] ; 2 uses
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i109, i64 %i.bf
  store ptr %i.y, ptr %i.bg, align 8, !tbaa !65
  %i.bh = add i32 %i.be, 1                        ; 3 uses
  store i32 %i.bh, ptr %i.s, align 8, !tbaa !154
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i.i, i64 8 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.u
  br i1 %i.bj, label %_ZN10ptr_bufferI4exprLj16EE6appendEjPKPS0_.exit, label %.lr.ph.i.i

_ZN10ptr_bufferI4exprLj16EE6appendEjPKPS0_.exit:  ; preds = %_ZN6bufferIP4exprLb0ELj16EE9push_backERKS1_.exit.i.i, %bb.c
  %i.bk = phi ptr [ %i.r, %bb.c ], [ %.pre.i.i.i109, %_ZN6bufferIP4exprLb0ELj16EE9push_backERKS1_.exit.i.i ]
  %i.bl = phi i32 [ 0, %bb.c ], [ %i.bh, %_ZN6bufferIP4exprLb0ELj16EE9push_backERKS1_.exit.i.i ]
  %i.bm = icmp ugt i32 %1, %i.q
  br i1 %i.bm, label %.lr.ph99, label %._crit_edge

.lr.ph99:                                         ; preds = %_ZN10ptr_bufferI4exprLj16EE6appendEjPKPS0_.exit, %.loopexit
  %indvars.iv105 = phi i64 [ %indvars.iv.next106, %.loopexit ], [ %indvars.iv, %_ZN10ptr_bufferI4exprLj16EE6appendEjPKPS0_.exit ] ; 2 uses
  %.03698 = phi ptr [ %.137, %.loopexit ], [ null, %_ZN10ptr_bufferI4exprLj16EE6appendEjPKPS0_.exit ] ; 4 uses
  %.03897 = phi i1 [ %.139, %.loopexit ], [ true, %_ZN10ptr_bufferI4exprLj16EE6appendEjPKPS0_.exit ] ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv105
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !65 ; 8 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.bq = load i32, ptr %i.bp, align 4
  %i.br = and i32 %i.bq, 65535
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %bb.f, label %_ZNK11ast_manager5is_orEPK4expr.exit52.thread

bb.f:                                             ; preds = %.lr.ph99
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !133
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !59 ; 3 uses
  %.not.i.i.i.i51 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i.i51, label %_ZNK11ast_manager5is_orEPK4expr.exit52.thread, label %_ZNK11ast_manager5is_orEPK4expr.exit52

_ZNK11ast_manager5is_orEPK4expr.exit52:           ; preds = %bb.f
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !134
  %i.by = icmp eq i32 %i.bx, 0
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.ca = load i32, ptr %i.bz, align 4
  %i.cb = icmp eq i32 %i.ca, 6
  %i.cc = select i1 %i.by, i1 %i.cb, i1 false
  br i1 %i.cc, label %bb.g, label %_ZNK11ast_manager5is_orEPK4expr.exit52.thread

bb.g:                                             ; preds = %_ZNK11ast_manager5is_orEPK4expr.exit52
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bo, i64 32 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !157 ; 2 uses
  %i.cg = zext i32 %i.cf to i64
  %.idx = shl nuw nsw i64 %i.cg, 3
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx
  %.not4693 = icmp eq i32 %i.cf, 0
  br i1 %.not4693, label %.loopexit, label %.lr.ph95.preheader

.lr.ph95.preheader:                               ; preds = %bb.g
  %.pre = load i32, ptr %i.s, align 8, !tbaa !154
  %.pre111 = load i32, ptr %i.t, align 4, !tbaa !155
  br label %.lr.ph95

.loopexit88:                                      ; preds = %bb.d, %bb.e
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

.loopexit.split-lp:                               ; preds = %._crit_edge, %bb.x, %bb.aa
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.h:                                             ; preds = %bb.n, %bb.m, %bb.p
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

.lr.ph95:                                         ; preds = %.lr.ph95.preheader, %bb.k
  %i.cj = phi i32 [ %i.dq, %bb.k ], [ %.pre111, %.lr.ph95.preheader ] ; 3 uses
  %i.ck = phi i32 [ %i.dv, %bb.k ], [ %.pre, %.lr.ph95.preheader ] ; 2 uses
  %.094 = phi ptr [ %i.dw, %bb.k ], [ %i.cd, %.lr.ph95.preheader ] ; 2 uses
  %i.cl = load ptr, ptr %.094, align 8, !tbaa !65
  %.not.i = icmp ult i32 %i.ck, %i.cj
  br i1 %.not.i, label %._crit_edge.i, label %bb.i

._crit_edge.i:                                    ; preds = %.lr.ph95
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !153
  br label %bb.k

bb.i:                                             ; preds = %.lr.ph95
  %i.cm = shl i32 %i.cj, 1                        ; 3 uses
  %i.cn = zext i32 %i.cm to i64
  %i.co = shl nuw nsw i64 %i.cn, 3
  %i.cp = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.co)
          to label %.noexc56 unwind label %bb.l   ; 9 uses

.noexc56:                                         ; preds = %bb.i
  %i.cq = load i32, ptr %i.s, align 8, !tbaa !154 ; 4 uses
  %.not.i.i = icmp eq i32 %i.cq, 0
  %.pre.i.i53 = load ptr, ptr %4, align 8, !tbaa !153 ; 10 uses
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i54

.lr.ph.i.i54:                                     ; preds = %.noexc56
  %.pre.i.i53150 = ptrtoaddr ptr %.pre.i.i53 to i64
  %i.cr = ptrtoaddr ptr %i.cp to i64
  %wide.trip.count.i.i = zext i32 %i.cq to i64    ; 5 uses
  %min.iters.check153 = icmp ult i32 %i.cq, 4
  %i.cs = sub i64 %.pre.i.i53150, %i.cr
  %diff.check151 = icmp ugt i64 %i.cs, -32
  %or.cond165 = select i1 %min.iters.check153, i1 true, i1 %diff.check151
  br i1 %or.cond165, label %scalar.ph152.preheader, label %vector.ph154

vector.ph154:                                     ; preds = %.lr.ph.i.i54
  %n.vec155 = and i64 %wide.trip.count.i.i, 4294967292 ; 3 uses
  br label %vector.body156

vector.body156:                                   ; preds = %vector.body156, %vector.ph154
  %index157 = phi i64 [ 0, %vector.ph154 ], [ %index.next160, %vector.body156 ] ; 3 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %index157 ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i53, i64 %index157 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %wide.load158 = load <2 x ptr>, ptr %i.cu, align 8, !tbaa !65
  %wide.load159 = load <2 x ptr>, ptr %i.cv, align 8, !tbaa !65
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  store <2 x ptr> %wide.load158, ptr %i.ct, align 8, !tbaa !65
  store <2 x ptr> %wide.load159, ptr %i.cw, align 8, !tbaa !65
  %index.next160 = add nuw i64 %index157, 4       ; 2 uses
  %i.cx = icmp eq i64 %index.next160, %n.vec155
  br i1 %i.cx, label %middle.block161, label %vector.body156, !llvm.loop !319

middle.block161:                                  ; preds = %vector.body156
  %cmp.n162 = icmp eq i64 %n.vec155, %wide.trip.count.i.i
  br i1 %cmp.n162, label %._crit_edge.i.i, label %scalar.ph152.preheader

scalar.ph152.preheader:                           ; preds = %.lr.ph.i.i54, %middle.block161
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i54 ], [ %n.vec155, %middle.block161 ] ; 3 uses
  %xtraiter168 = and i64 %wide.trip.count.i.i, 3  ; 2 uses
  %lcmp.mod169.not = icmp eq i64 %xtraiter168, 0
  br i1 %lcmp.mod169.not, label %scalar.ph152.prol.loopexit, label %scalar.ph152.prol

scalar.ph152.prol:                                ; preds = %scalar.ph152.preheader, %scalar.ph152.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %scalar.ph152.prol ], [ %indvars.iv.i.i.ph, %scalar.ph152.preheader ] ; 3 uses
  %prol.iter170 = phi i64 [ %prol.iter170.next, %scalar.ph152.prol ], [ 0, %scalar.ph152.preheader ]
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %indvars.iv.i.i.prol
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i53, i64 %indvars.iv.i.i.prol
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !65
  store ptr %i.da, ptr %i.cy, align 8, !tbaa !65
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter170.next = add i64 %prol.iter170, 1   ; 2 uses
  %prol.iter170.cmp.not = icmp eq i64 %prol.iter170.next, %xtraiter168
  br i1 %prol.iter170.cmp.not, label %scalar.ph152.prol.loopexit, label %scalar.ph152.prol, !llvm.loop !320

scalar.ph152.prol.loopexit:                       ; preds = %scalar.ph152.prol, %scalar.ph152.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %scalar.ph152.preheader ], [ %indvars.iv.next.i.i.prol, %scalar.ph152.prol ]
  %i.db = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.dc = icmp ugt i64 %i.db, -4
  br i1 %i.dc, label %._crit_edge.i.i, label %scalar.ph152

._crit_edge.i.i:                                  ; preds = %scalar.ph152.prol.loopexit, %scalar.ph152, %middle.block161, %.noexc56
  %.not.i.i.i55 = icmp eq ptr %.pre.i.i53, %i.r
  %i.dd = icmp eq ptr %.pre.i.i53, null
  %or.cond.i.i.i = or i1 %.not.i.i.i55, %i.dd
  br i1 %or.cond.i.i.i, label %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i, label %bb.j

bb.j:                                             ; preds = %._crit_edge.i.i
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %.pre.i.i53)
          to label %.noexc57 unwind label %bb.l

.noexc57:                                         ; preds = %bb.j
  %.pre2.pre.i = load i32, ptr %i.s, align 8, !tbaa !154
  br label %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i

scalar.ph152:                                     ; preds = %scalar.ph152.prol.loopexit, %scalar.ph152
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %scalar.ph152 ], [ %indvars.iv.i.i.unr, %scalar.ph152.prol.loopexit ] ; 6 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %indvars.iv.i.i
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i53, i64 %indvars.iv.i.i
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !65
  store ptr %i.dg, ptr %i.de, align 8, !tbaa !65
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %indvars.iv.next.i.i
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i53, i64 %indvars.iv.next.i.i
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !65
  store ptr %i.dj, ptr %i.dh, align 8, !tbaa !65
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %indvars.iv.next.i.i.1
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i53, i64 %indvars.iv.next.i.i.1
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !65
  store ptr %i.dm, ptr %i.dk, align 8, !tbaa !65
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %indvars.iv.next.i.i.2
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i53, i64 %indvars.iv.next.i.i.2
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !65
  store ptr %i.dp, ptr %i.dn, align 8, !tbaa !65
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.i.i, label %scalar.ph152, !llvm.loop !321

_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i:      ; preds = %.noexc57, %._crit_edge.i.i
  %.pre2.i = phi i32 [ %i.cq, %._crit_edge.i.i ], [ %.pre2.pre.i, %.noexc57 ]
  store ptr %i.cp, ptr %4, align 8, !tbaa !153
  store i32 %i.cm, ptr %i.t, align 4, !tbaa !155
  br label %bb.k

bb.k:                                             ; preds = %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i, %._crit_edge.i
  %i.dq = phi i32 [ %i.cj, %._crit_edge.i ], [ %i.cm, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i ]
  %i.dr = phi i32 [ %i.ck, %._crit_edge.i ], [ %.pre2.i, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i ] ; 2 uses
  %i.ds = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.cp, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i ]
  %i.dt = zext i32 %i.dr to i64
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.dt
  store ptr %i.cl, ptr %i.du, align 8, !tbaa !65
  %i.dv = add i32 %i.dr, 1                        ; 2 uses
  store i32 %i.dv, ptr %i.s, align 8, !tbaa !154
  %i.dw = getelementptr inbounds nuw i8, ptr %.094, i64 8 ; 2 uses
  %.not46 = icmp eq ptr %i.dw, %i.ch
  br i1 %.not46, label %.loopexit, label %.lr.ph95

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

_ZNK11ast_manager5is_orEPK4expr.exit52.thread:    ; preds = %bb.f, %.lr.ph99, %_ZNK11ast_manager5is_orEPK4expr.exit52
  %i.dy = load i32, ptr %i.s, align 8, !tbaa !154 ; 2 uses
  %i.dz = load i32, ptr %i.t, align 4, !tbaa !155 ; 2 uses
  %.not.i58 = icmp ult i32 %i.dy, %i.dz
  br i1 %.not.i58, label %._crit_edge.i72, label %bb.m

._crit_edge.i72:                                  ; preds = %_ZNK11ast_manager5is_orEPK4expr.exit52.thread
  %.pre.i73 = load ptr, ptr %4, align 8, !tbaa !153
  br label %bb.o

bb.m:                                             ; preds = %_ZNK11ast_manager5is_orEPK4expr.exit52.thread
  %i.ea = shl i32 %i.dz, 1                        ; 2 uses
  %i.eb = zext i32 %i.ea to i64
  %i.ec = shl nuw nsw i64 %i.eb, 3
  %i.ed = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.ec)
          to label %.noexc74 unwind label %bb.h   ; 9 uses

.noexc74:                                         ; preds = %bb.m
  %i.ee = load i32, ptr %i.s, align 8, !tbaa !154 ; 4 uses
  %.not.i.i59 = icmp eq i32 %i.ee, 0
  %.pre.i.i60 = load ptr, ptr %4, align 8, !tbaa !153 ; 10 uses
  br i1 %.not.i.i59, label %._crit_edge.i.i66, label %.lr.ph.i.i61

.lr.ph.i.i61:                                     ; preds = %.noexc74
  %.pre.i.i60135 = ptrtoaddr ptr %.pre.i.i60 to i64
  %i.ef = ptrtoaddr ptr %i.ed to i64
  %wide.trip.count.i.i62 = zext i32 %i.ee to i64  ; 5 uses
  %min.iters.check138 = icmp ult i32 %i.ee, 4
  %i.eg = sub i64 %.pre.i.i60135, %i.ef
  %diff.check136 = icmp ugt i64 %i.eg, -32
  %or.cond166 = select i1 %min.iters.check138, i1 true, i1 %diff.check136
  br i1 %or.cond166, label %scalar.ph137.preheader, label %vector.ph139

vector.ph139:                                     ; preds = %.lr.ph.i.i61
  %n.vec140 = and i64 %wide.trip.count.i.i62, 4294967292 ; 3 uses
  br label %vector.body141

vector.body141:                                   ; preds = %vector.body141, %vector.ph139
  %index142 = phi i64 [ 0, %vector.ph139 ], [ %index.next145, %vector.body141 ] ; 3 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %index142 ; 2 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i60, i64 %index142 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %wide.load143 = load <2 x ptr>, ptr %i.ei, align 8, !tbaa !65
  %wide.load144 = load <2 x ptr>, ptr %i.ej, align 8, !tbaa !65
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  store <2 x ptr> %wide.load143, ptr %i.eh, align 8, !tbaa !65
  store <2 x ptr> %wide.load144, ptr %i.ek, align 8, !tbaa !65
  %index.next145 = add nuw i64 %index142, 4       ; 2 uses
  %i.el = icmp eq i64 %index.next145, %n.vec140
  br i1 %i.el, label %middle.block146, label %vector.body141, !llvm.loop !322

middle.block146:                                  ; preds = %vector.body141
  %cmp.n147 = icmp eq i64 %n.vec140, %wide.trip.count.i.i62
  br i1 %cmp.n147, label %._crit_edge.i.i66, label %scalar.ph137.preheader

scalar.ph137.preheader:                           ; preds = %.lr.ph.i.i61, %middle.block146
  %indvars.iv.i.i63.ph = phi i64 [ 0, %.lr.ph.i.i61 ], [ %n.vec140, %middle.block146 ] ; 3 uses
  %xtraiter171 = and i64 %wide.trip.count.i.i62, 3 ; 2 uses
  %lcmp.mod172.not = icmp eq i64 %xtraiter171, 0
  br i1 %lcmp.mod172.not, label %scalar.ph137.prol.loopexit, label %scalar.ph137.prol

scalar.ph137.prol:                                ; preds = %scalar.ph137.preheader, %scalar.ph137.prol
  %indvars.iv.i.i63.prol = phi i64 [ %indvars.iv.next.i.i64.prol, %scalar.ph137.prol ], [ %indvars.iv.i.i63.ph, %scalar.ph137.preheader ] ; 3 uses
  %prol.iter173 = phi i64 [ %prol.iter173.next, %scalar.ph137.prol ], [ 0, %scalar.ph137.preheader ]
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %indvars.iv.i.i63.prol
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i60, i64 %indvars.iv.i.i63.prol
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !65
  store ptr %i.eo, ptr %i.em, align 8, !tbaa !65
  %indvars.iv.next.i.i64.prol = add nuw nsw i64 %indvars.iv.i.i63.prol, 1 ; 2 uses
  %prol.iter173.next = add i64 %prol.iter173, 1   ; 2 uses
  %prol.iter173.cmp.not = icmp eq i64 %prol.iter173.next, %xtraiter171
  br i1 %prol.iter173.cmp.not, label %scalar.ph137.prol.loopexit, label %scalar.ph137.prol, !llvm.loop !323

scalar.ph137.prol.loopexit:                       ; preds = %scalar.ph137.prol, %scalar.ph137.preheader
  %indvars.iv.i.i63.unr = phi i64 [ %indvars.iv.i.i63.ph, %scalar.ph137.preheader ], [ %indvars.iv.next.i.i64.prol, %scalar.ph137.prol ]
  %i.ep = sub nsw i64 %indvars.iv.i.i63.ph, %wide.trip.count.i.i62
  %i.eq = icmp ugt i64 %i.ep, -4
  br i1 %i.eq, label %._crit_edge.i.i66, label %scalar.ph137

._crit_edge.i.i66:                                ; preds = %scalar.ph137.prol.loopexit, %scalar.ph137, %middle.block146, %.noexc74
  %.not.i.i.i67 = icmp eq ptr %.pre.i.i60, %i.r
  %i.er = icmp eq ptr %.pre.i.i60, null
  %or.cond.i.i.i68 = or i1 %.not.i.i.i67, %i.er
  br i1 %or.cond.i.i.i68, label %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i70, label %bb.n

bb.n:                                             ; preds = %._crit_edge.i.i66
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %.pre.i.i60)
          to label %.noexc75 unwind label %bb.h

.noexc75:                                         ; preds = %bb.n
  %.pre2.pre.i69 = load i32, ptr %i.s, align 8, !tbaa !154
  br label %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i70

scalar.ph137:                                     ; preds = %scalar.ph137.prol.loopexit, %scalar.ph137
  %indvars.iv.i.i63 = phi i64 [ %indvars.iv.next.i.i64.3, %scalar.ph137 ], [ %indvars.iv.i.i63.unr, %scalar.ph137.prol.loopexit ] ; 6 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %indvars.iv.i.i63
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i60, i64 %indvars.iv.i.i63
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !65
  store ptr %i.eu, ptr %i.es, align 8, !tbaa !65
  %indvars.iv.next.i.i64 = add nuw nsw i64 %indvars.iv.i.i63, 1 ; 2 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %indvars.iv.next.i.i64
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i60, i64 %indvars.iv.next.i.i64
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !65
  store ptr %i.ex, ptr %i.ev, align 8, !tbaa !65
  %indvars.iv.next.i.i64.1 = add nuw nsw i64 %indvars.iv.i.i63, 2 ; 2 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %indvars.iv.next.i.i64.1
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i60, i64 %indvars.iv.next.i.i64.1
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !65
  store ptr %i.fa, ptr %i.ey, align 8, !tbaa !65
  %indvars.iv.next.i.i64.2 = add nuw nsw i64 %indvars.iv.i.i63, 3 ; 2 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %indvars.iv.next.i.i64.2
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i60, i64 %indvars.iv.next.i.i64.2
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !65
  store ptr %i.fd, ptr %i.fb, align 8, !tbaa !65
  %indvars.iv.next.i.i64.3 = add nuw nsw i64 %indvars.iv.i.i63, 4 ; 2 uses
  %exitcond.not.i.i65.3 = icmp eq i64 %indvars.iv.next.i.i64.3, %wide.trip.count.i.i62
  br i1 %exitcond.not.i.i65.3, label %._crit_edge.i.i66, label %scalar.ph137, !llvm.loop !324

_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i70:    ; preds = %.noexc75, %._crit_edge.i.i66
  %.pre2.i71 = phi i32 [ %i.ee, %._crit_edge.i.i66 ], [ %.pre2.pre.i69, %.noexc75 ]
  store ptr %i.ed, ptr %4, align 8, !tbaa !153
  store i32 %i.ea, ptr %i.t, align 4, !tbaa !155
  br label %bb.o

bb.o:                                             ; preds = %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i70, %._crit_edge.i72
  %i.fe = phi i32 [ %i.dy, %._crit_edge.i72 ], [ %.pre2.i71, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i70 ] ; 2 uses
  %i.ff = phi ptr [ %.pre.i73, %._crit_edge.i72 ], [ %i.ed, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i70 ]
  %i.fg = zext i32 %i.fe to i64
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %i.fg
  store ptr %i.bo, ptr %i.fh, align 8, !tbaa !65
  %i.fi = add i32 %i.fe, 1
  store i32 %i.fi, ptr %i.s, align 8, !tbaa !154
  %.not45 = icmp eq ptr %.03698, null
  br i1 %.not45, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fj = invoke noundef zeroext i1 @_Z2ltP3astS0_(ptr noundef nonnull %i.bo, ptr noundef nonnull %.03698)
          to label %bb.q unwind label %bb.h

bb.q:                                             ; preds = %bb.p
  %i.fk = xor i1 %i.fj, true
  %5 = and i1 %.03897, %i.fk
  br label %.loopexit

.loopexit:                                        ; preds = %bb.k, %bb.o, %bb.q, %bb.g
  %.139 = phi i1 [ %5, %bb.q ], [ false, %bb.g ], [ %.03897, %bb.o ], [ false, %bb.k ] ; 2 uses
  %.137 = phi ptr [ %i.bo, %bb.q ], [ %.03698, %bb.g ], [ %i.bo, %bb.o ], [ %.03698, %bb.k ]
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1 ; 2 uses
  %exitcond108.not = icmp eq i64 %indvars.iv.next106, %wide.trip.count
  br i1 %exitcond108.not, label %._crit_edge.loopexit, label %.lr.ph99, !llvm.loop !325

._crit_edge.loopexit:                             ; preds = %.loopexit
  %.pre112 = load i32, ptr %i.s, align 8, !tbaa !154
  %.pre113 = load ptr, ptr %4, align 8, !tbaa !153
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN10ptr_bufferI4exprLj16EE6appendEjPKPS0_.exit
  %i.fl = phi ptr [ %i.bk, %_ZN10ptr_bufferI4exprLj16EE6appendEjPKPS0_.exit ], [ %.pre113, %._crit_edge.loopexit ]
  %i.fm = phi i32 [ %i.bl, %_ZN10ptr_bufferI4exprLj16EE6appendEjPKPS0_.exit ], [ %.pre112, %._crit_edge.loopexit ]
  %.038.lcssa = phi i1 [ true, %_ZN10ptr_bufferI4exprLj16EE6appendEjPKPS0_.exit ], [ %.139, %._crit_edge.loopexit ]
  %i.fn = invoke noundef i32 @_ZN13bool_rewriter16mk_nflat_or_coreEjPKP4exprR7obj_refIS0_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(368) %0, i32 noundef %i.fm, ptr noundef %i.fl, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.r unwind label %.loopexit.split-lp

bb.r:                                             ; preds = %._crit_edge
  %i.fo = icmp eq i32 %i.fn, 5
  br i1 %i.fo, label %bb.s, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !46, !range !66, !noundef !18
  %i.fr = trunc nuw i8 %i.fq to i1
  %.not = xor i1 %i.fr, true
  %or.cond = select i1 %.not, i1 true, i1 %.038.lcssa
  br i1 %or.cond, label %_ZSt11stable_sortIPP4expr6ast_ltEvT_S4_T0_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fs = load ptr, ptr %4, align 8, !tbaa !153   ; 2 uses
  %i.ft = load i32, ptr %i.s, align 8, !tbaa !154
  %i.fu = zext i32 %i.ft to i64
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %i.fu
  invoke void @_ZSt13__stable_sortIPP4exprN9__gnu_cxx5__ops15_Iter_comp_iterI6ast_ltEEEvT_S8_T0_(ptr noundef %i.fs, ptr noundef %i.fv)
          to label %_ZSt11stable_sortIPP4expr6ast_ltEvT_S4_T0_.exit unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

_ZSt11stable_sortIPP4expr6ast_ltEvT_S4_T0_.exit:  ; preds = %bb.t, %bb.s
  %i.fx = load i32, ptr %i.s, align 8, !tbaa !154 ; 2 uses
  %i.fy = load ptr, ptr %4, align 8, !tbaa !153   ; 2 uses
  switch i32 %i.fx, label %bb.x [
    i32 0, label %bb.v
    i32 1, label %bb.w
  ]

bb.v:                                             ; preds = %_ZSt11stable_sortIPP4expr6ast_ltEvT_S4_T0_.exit
  %i.fz = load ptr, ptr %0, align 8, !tbaa !67, !nonnull !18, !align !19
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 840
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !123
  br label %_ZN13bool_rewriter9mk_or_appEjPKP4expr.exit

bb.w:                                             ; preds = %_ZSt11stable_sortIPP4expr6ast_ltEvT_S4_T0_.exit
  %i.gc = load ptr, ptr %i.fy, align 8, !tbaa !65
  br label %_ZN13bool_rewriter9mk_or_appEjPKP4expr.exit

bb.x:                                             ; preds = %_ZSt11stable_sortIPP4expr6ast_ltEvT_S4_T0_.exit
  %i.gd = load ptr, ptr %0, align 8, !tbaa !67, !nonnull !18, !align !19
  %i.ge = invoke noundef ptr @_ZN11ast_manager6mk_appEiijPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.gd, i32 noundef 0, i32 noundef 6, i32 noundef %i.fx, ptr noundef %i.fy)
          to label %_ZN13bool_rewriter9mk_or_appEjPKP4expr.exit unwind label %.loopexit.split-lp

_ZN13bool_rewriter9mk_or_appEjPKP4expr.exit:      ; preds = %bb.w, %bb.v, %bb.x
  %.0.i = phi ptr [ %i.gc, %bb.w ], [ %i.gb, %bb.v ], [ %i.ge, %bb.x ] ; 3 uses
  %.not.i79 = icmp eq ptr %.0.i, null
  br i1 %.not.i79, label %bb.y, label %_ZN11ast_manager7inc_refEP3ast.exit.i

_ZN11ast_manager7inc_refEP3ast.exit.i:            ; preds = %_ZN13bool_rewriter9mk_or_appEjPKP4expr.exit
  %i.gf = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 2 uses
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !124
  %i.gh = add i32 %i.gg, 1
  store i32 %i.gh, ptr %i.gf, align 4, !tbaa !124
  br label %bb.y

bb.y:                                             ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i, %_ZN13bool_rewriter9mk_or_appEjPKP4expr.exit
  %i.gi = load ptr, ptr %3, align 8, !tbaa !126   ; 3 uses
  %.not.i4.i = icmp eq ptr %i.gi, null
  br i1 %.not.i4.i, label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !127, !nonnull !18, !align !19
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gi, i64 8 ; 2 uses
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !124
  %i.gn = add i32 %i.gm, -1                       ; 2 uses
  store i32 %i.gn, ptr %i.gl, align 4, !tbaa !124
  %i.go = icmp eq i32 %i.gn, 0
  br i1 %i.go, label %bb.aa, label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.gk, ptr noundef nonnull %i.gi)
          to label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit unwind label %.loopexit.split-lp

_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit:      ; preds = %bb.aa, %bb.y, %bb.z
  store ptr %.0.i, ptr %3, align 8, !tbaa !126
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit, %bb.r
  %i.gp = load ptr, ptr %4, align 8, !tbaa !153   ; 3 uses
  %.not.i.i.i81 = icmp eq ptr %i.gp, %i.r
  %i.gq = icmp eq ptr %i.gp, null
  %or.cond.i.i.i82 = or i1 %.not.i.i.i81, %i.gq
  br i1 %or.cond.i.i.i82, label %_ZN6bufferIP4exprLb0ELj16EED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.gp)
          to label %_ZN6bufferIP4exprLb0ELj16EED2Ev.exit unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gr = landingpad { ptr, i32 }
          catch ptr null
  %i.gs = extractvalue { ptr, i32 } %i.gr, 0
  call void @__clang_call_terminate(ptr %i.gs) #21
  unreachable

_ZN6bufferIP4exprLb0ELj16EED2Ev.exit:             ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.af

bb.ae:                                            ; preds = %.loopexit88, %.loopexit.split-lp, %bb.h, %bb.l, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %i.fw, %bb.u ], [ %i.ci, %bb.h ], [ %i.dx, %bb.l ], [ %lpad.loopexit, %.loopexit88 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN6bufferIP4exprLb0ELj16EED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  resume { ptr, i32 } %.pn.pn

.critedge:                                        ; preds = %_ZNK11ast_manager5is_orEPK4expr.exit.thread, %bb.a
  %i.gt = tail call noundef i32 @_ZN13bool_rewriter16mk_nflat_or_coreEjPKP4exprR7obj_refIS0_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(368) %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br label %bb.af

bb.af:                                            ; preds = %.critedge, %_ZN6bufferIP4exprLb0ELj16EED2Ev.exit
  %.042 = phi i32 [ 4, %_ZN6bufferIP4exprLb0ELj16EED2Ev.exit ], [ %i.gt, %.critedge ]
  ret i32 %.042
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN13bool_rewriter9mk_or_appEjPKP4expr(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(368) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  switch i32 %1, label %bb.d [
    i32 0, label %bb.b
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !67, !nonnull !18, !align !19
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 840
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !123
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !65
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !67, !nonnull !18, !align !19
  %i.f = tail call noundef ptr @_ZN11ast_manager6mk_appEiijPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.e, i32 noundef 0, i32 noundef 6, i32 noundef %1, ptr noundef %2)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.0 = phi ptr [ %i.f, %bb.d ], [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN13bool_rewriter18simp_nested_not_orEjPKP4exprR13ast_fast_markILj1EERS4_ILj2EER7obj_refIS0_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(368) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree nonnull readnone align 8 captures(none) %3, ptr nofree nonnull readnone align 8 captures(none) %4, ptr noundef nonnull align 8 dereferenceable(16) %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %class.ptr_buffer, align 8          ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.a, ptr %6, align 8, !tbaa !153
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store i32 0, ptr %i.b, align 8, !tbaa !154
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  store i32 16, ptr %i.c, align 4, !tbaa !155
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !158
  %i.f = add i32 %i.e, %1
  store i32 %i.f, ptr %i.d, align 4, !tbaa !158
  %.not93.not = icmp eq i32 %1, 0
  br i1 %.not93.not, label %_ZN13bool_rewriter6mk_notEP4exprR7obj_refIS0_11ast_managerE.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.thread74
  %.pre.i = phi ptr [ %i.a, %.lr.ph.preheader ], [ %i.cq, %.thread74 ] ; 3 uses
  %i.g = phi i32 [ 16, %.lr.ph.preheader ], [ %i.cr, %.thread74 ] ; 5 uses
  %i.h = phi i32 [ 0, %.lr.ph.preheader ], [ %i.cs, %.thread74 ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.thread74 ] ; 2 uses
  %.03094 = phi i1 [ false, %.lr.ph.preheader ], [ %.377, %.thread74 ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !65   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.l = load i32, ptr %i.k, align 4              ; 3 uses
  %i.m = and i32 %i.l, 65536
  %.not86 = icmp eq i32 %i.m, 0
  br i1 %.not86, label %bb.f, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.n = load ptr, ptr %0, align 8, !tbaa !67, !nonnull !18, !align !19
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 840
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !123  ; 5 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.c, label %_ZN11ast_manager7inc_refEP3ast.exit.i

_ZN11ast_manager7inc_refEP3ast.exit.i:            ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !124
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.q, align 4, !tbaa !124
  br label %bb.c
end_hunk_2
