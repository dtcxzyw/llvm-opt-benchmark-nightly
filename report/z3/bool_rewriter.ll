Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/bool_rewriter?download=true
inline.NumInlined: 2334
inline.NumDeleted: 457
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 44
begin_hunk_0_@_ZN13bool_rewriter16mk_flat_and_coreEjPKP4exprR7obj_refIS0_11ast_managerE:bb.a
  %prol.iter201.next = add i64 %prol.iter201, 1   ; 2 uses
  %prol.iter201.cmp.not = icmp eq i64 %prol.iter201.next, %xtraiter199
  br i1 %prol.iter201.cmp.not, label %scalar.ph155.prol.loopexit, label %scalar.ph155.prol, !llvm.loop !284

scalar.ph155.prol.loopexit:                       ; preds = %scalar.ph155.prol, %scalar.ph155.preheader
  %indvars.iv.i.i52.unr = phi i64 [ %indvars.iv.i.i52.ph, %scalar.ph155.preheader ], [ %indvars.iv.next.i.i53.prol, %scalar.ph155.prol ]
  %i.ep = sub nsw i64 %indvars.iv.i.i52.ph, %wide.trip.count.i.i51
  %i.eq = icmp ugt i64 %i.ep, -4
  br i1 %i.eq, label %._crit_edge.i.i55, label %scalar.ph155

._crit_edge.i.i55:                                ; preds = %scalar.ph155.prol.loopexit, %scalar.ph155, %middle.block164, %.noexc63
  %.not.i.i.i56 = icmp eq ptr %.pre.i.i49, %i.r
  %i.er = icmp eq ptr %.pre.i.i49, null
  %or.cond.i.i.i57 = or i1 %.not.i.i.i56, %i.er
  br i1 %or.cond.i.i.i57, label %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i59, label %bb.k

bb.k:                                             ; preds = %._crit_edge.i.i55
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %.pre.i.i49)
          to label %.noexc64 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc64:                                         ; preds = %bb.k
  %.pre2.pre.i58 = load i32, ptr %i.s, align 8, !tbaa !154
  br label %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i59

scalar.ph155:                                     ; preds = %scalar.ph155.prol.loopexit, %scalar.ph155
  %indvars.iv.i.i52 = phi i64 [ %indvars.iv.next.i.i53.3, %scalar.ph155 ], [ %indvars.iv.i.i52.unr, %scalar.ph155.prol.loopexit ] ; 6 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %indvars.iv.i.i52
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i49, i64 %indvars.iv.i.i52
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !65
  store ptr %i.eu, ptr %i.es, align 8, !tbaa !65
  %indvars.iv.next.i.i53 = add nuw nsw i64 %indvars.iv.i.i52, 1 ; 2 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %indvars.iv.next.i.i53
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i49, i64 %indvars.iv.next.i.i53
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !65
  store ptr %i.ex, ptr %i.ev, align 8, !tbaa !65
  %indvars.iv.next.i.i53.1 = add nuw nsw i64 %indvars.iv.i.i52, 2 ; 2 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %indvars.iv.next.i.i53.1
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i49, i64 %indvars.iv.next.i.i53.1
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !65
  store ptr %i.fa, ptr %i.ey, align 8, !tbaa !65
  %indvars.iv.next.i.i53.2 = add nuw nsw i64 %indvars.iv.i.i52, 3 ; 2 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %indvars.iv.next.i.i53.2
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i49, i64 %indvars.iv.next.i.i53.2
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !65
  store ptr %i.fd, ptr %i.fb, align 8, !tbaa !65
  %indvars.iv.next.i.i53.3 = add nuw nsw i64 %indvars.iv.i.i52, 4 ; 2 uses
  %exitcond.not.i.i54.3 = icmp eq i64 %indvars.iv.next.i.i53.3, %wide.trip.count.i.i51
  br i1 %exitcond.not.i.i54.3, label %._crit_edge.i.i55, label %scalar.ph155, !llvm.loop !285

_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i59:    ; preds = %.noexc64, %._crit_edge.i.i55
  %.pre2.i60 = phi i32 [ %i.ee, %._crit_edge.i.i55 ], [ %.pre2.pre.i58, %.noexc64 ]
  store ptr %i.ed, ptr %4, align 8, !tbaa !153
  store i32 %i.ea, ptr %i.t, align 4, !tbaa !155
  br label %_ZN6bufferIP4exprLb0ELj16EE9push_backERKS1_.exit65

_ZN6bufferIP4exprLb0ELj16EE9push_backERKS1_.exit65: ; preds = %_ZNK11ast_manager6is_andEPK4expr.exit41.thread, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i59
  %.pre.i62114 = phi ptr [ %i.ed, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i59 ], [ %.pre.i62, %_ZNK11ast_manager6is_andEPK4expr.exit41.thread ] ; 3 uses
  %i.fe = phi i32 [ %i.ea, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i59 ], [ %i.bn, %_ZNK11ast_manager6is_andEPK4expr.exit41.thread ] ; 2 uses
  %i.ff = phi i32 [ %.pre2.i60, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i59 ], [ %i.bp, %_ZNK11ast_manager6is_andEPK4expr.exit41.thread ] ; 2 uses
  %i.fg = zext i32 %i.ff to i64
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %.pre.i62114, i64 %i.fg
  store ptr %i.br, ptr %i.fh, align 8, !tbaa !65
  %i.fi = add i32 %i.ff, 1                        ; 2 uses
  store i32 %i.fi, ptr %i.s, align 8, !tbaa !154
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge.i, %bb.g, %_ZN6bufferIP4exprLb0ELj16EE9push_backERKS1_.exit65
  %.pre.i62113 = phi ptr [ %.pre.i62114, %_ZN6bufferIP4exprLb0ELj16EE9push_backERKS1_.exit65 ], [ %.pre.i62, %bb.g ], [ %.pre.i62110, %._crit_edge.i ] ; 2 uses
  %i.fj = phi i32 [ %i.fe, %_ZN6bufferIP4exprLb0ELj16EE9push_backERKS1_.exit65 ], [ %i.bn, %bb.g ], [ %i.dt, %._crit_edge.i ]
  %.pre.i108 = phi ptr [ %.pre.i62114, %_ZN6bufferIP4exprLb0ELj16EE9push_backERKS1_.exit65 ], [ %.pre.i107, %bb.g ], [ %.pre.i105, %._crit_edge.i ]
  %i.fk = phi i32 [ %i.fe, %_ZN6bufferIP4exprLb0ELj16EE9push_backERKS1_.exit65 ], [ %i.bo, %bb.g ], [ %i.du, %._crit_edge.i ]
  %i.fl = phi i32 [ %i.fi, %_ZN6bufferIP4exprLb0ELj16EE9push_backERKS1_.exit65 ], [ %i.bp, %bb.g ], [ %i.dy, %._crit_edge.i ] ; 2 uses
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1 ; 2 uses
  %exitcond102.not = icmp eq i64 %indvars.iv.next99, %wide.trip.count
  br i1 %exitcond102.not, label %._crit_edge, label %.lr.ph86, !llvm.loop !286

._crit_edge:                                      ; preds = %.loopexit, %_ZN10ptr_bufferI4exprLj16EE6appendEjPKPS0_.exit
  %i.fm = phi ptr [ %.pre.i109, %_ZN10ptr_bufferI4exprLj16EE6appendEjPKPS0_.exit ], [ %.pre.i62113, %.loopexit ]
  %i.fn = phi i32 [ %i.bl, %_ZN10ptr_bufferI4exprLj16EE6appendEjPKPS0_.exit ], [ %i.fl, %.loopexit ]
  %i.fo = invoke noundef i32 @_ZN13bool_rewriter17mk_nflat_and_coreEjPKP4exprR7obj_refIS0_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(368) %0, i32 noundef %i.fn, ptr noundef %i.fm, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.l:                                             ; preds = %._crit_edge
  %i.fp = icmp eq i32 %i.fo, 5
  br i1 %i.fp, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.fq = load ptr, ptr %0, align 8, !tbaa !67, !nonnull !18, !align !19
  %i.fr = load ptr, ptr %4, align 8, !tbaa !153
  %i.fs = load i32, ptr %i.s, align 8, !tbaa !154
  %i.ft = zext i32 %i.fs to i64
  %i.fu = invoke noundef ptr @_ZN11ast_manager6mk_appEiiSt4spanIKP4exprLm18446744073709551615EE(ptr noundef nonnull align 8 dereferenceable(952) %i.fq, i32 noundef 0, i32 noundef 5, ptr %i.fr, i64 %i.ft)
          to label %_ZN11ast_manager6mk_andERK10ptr_bufferI4exprLj16EE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

_ZN11ast_manager6mk_andERK10ptr_bufferI4exprLj16EE.exit: ; preds = %bb.m
  %.not.i67 = icmp eq ptr %i.fu, null
  br i1 %.not.i67, label %bb.n, label %_ZN11ast_manager7inc_refEP3ast.exit.i

_ZN11ast_manager7inc_refEP3ast.exit.i:            ; preds = %_ZN11ast_manager6mk_andERK10ptr_bufferI4exprLj16EE.exit
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8 ; 2 uses
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !124
  %i.fx = add i32 %i.fw, 1
  store i32 %i.fx, ptr %i.fv, align 4, !tbaa !124
  br label %bb.n

bb.n:                                             ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i, %_ZN11ast_manager6mk_andERK10ptr_bufferI4exprLj16EE.exit
  %i.fy = load ptr, ptr %3, align 8, !tbaa !126   ; 3 uses
  %.not.i4.i = icmp eq ptr %i.fy, null
  br i1 %.not.i4.i, label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fz = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !127, !nonnull !18, !align !19
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 8 ; 2 uses
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !124
  %i.gd = add i32 %i.gc, -1                       ; 2 uses
  store i32 %i.gd, ptr %i.gb, align 4, !tbaa !124
  %i.ge = icmp eq i32 %i.gd, 0
  br i1 %i.ge, label %bb.p, label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ga, ptr noundef nonnull %i.fy)
          to label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit:      ; preds = %bb.p, %bb.n, %bb.o
  store ptr %i.fu, ptr %3, align 8, !tbaa !126
  br label %bb.q

bb.q:                                             ; preds = %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit, %bb.l
  %i.gf = load ptr, ptr %4, align 8, !tbaa !153   ; 3 uses
  %.not.i.i.i69 = icmp eq ptr %i.gf, %i.r
  %i.gg = icmp eq ptr %i.gf, null
  %or.cond.i.i.i70 = or i1 %.not.i.i.i69, %i.gg
  br i1 %or.cond.i.i.i70, label %_ZN6bufferIP4exprLb0ELj16EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.gf)
          to label %_ZN6bufferIP4exprLb0ELj16EED2Ev.exit unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gh = landingpad { ptr, i32 }
          catch ptr null
  %i.gi = extractvalue { ptr, i32 } %i.gh, 0
  call void @__clang_call_terminate(ptr %i.gi) #21
  unreachable

_ZN6bufferIP4exprLb0ELj16EED2Ev.exit:             ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.t

.critedge:                                        ; preds = %_ZNK11ast_manager6is_andEPK4expr.exit.thread, %bb.a
  %i.gj = tail call noundef i32 @_ZN13bool_rewriter17mk_nflat_and_coreEjPKP4exprR7obj_refIS0_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(368) %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br label %bb.t

bb.t:                                             ; preds = %.critedge, %_ZN6bufferIP4exprLb0ELj16EED2Ev.exit
  %.033 = phi i32 [ 0, %_ZN6bufferIP4exprLb0ELj16EED2Ev.exit ], [ %i.gj, %.critedge ]
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

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ah
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.ah ] ; 2 uses
  %.031204 = phi ptr [ null, %.lr.ph.preheader ], [ %.233.ph, %bb.ah ] ; 5 uses
  %.034203 = phi i1 [ false, %.lr.ph.preheader ], [ %.236.ph, %bb.ah ]
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !65   ; 10 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !67, !nonnull !18, !align !19 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 832
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !128
  %i.o = icmp eq ptr %i.k, %i.n
  br i1 %i.o, label %bb.b, label %bb.f

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
  %xtraiter303 = and i64 %i.v, 3                  ; 2 uses
  %lcmp.mod304.not = icmp eq i64 %xtraiter303, 0
  br i1 %lcmp.mod304.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.09.i.prol = phi ptr [ %i.aa, %.lr.ph.i.prol ], [ %i.p, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter305 = phi i64 [ %prol.iter305.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.w = load ptr, ptr %.09.i.prol, align 8, !tbaa !146
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4
  %i.z = and i32 %i.y, -65537
  store i32 %i.z, ptr %i.x, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %.09.i.prol, i64 8 ; 2 uses
  %prol.iter305.next = add i64 %prol.iter305, 1   ; 2 uses
  %prol.iter305.cmp.not = icmp eq i64 %prol.iter305.next, %xtraiter303
  br i1 %prol.iter305.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !287

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
  %xtraiter306 = and i64 %i.bc, 3                 ; 2 uses
  %lcmp.mod307.not = icmp eq i64 %xtraiter306, 0
  br i1 %lcmp.mod307.not, label %.lr.ph.i49.prol.loopexit, label %.lr.ph.i49.prol

.lr.ph.i49.prol:                                  ; preds = %.lr.ph.i49.preheader, %.lr.ph.i49.prol
  %.09.i50.prol = phi ptr [ %i.bh, %.lr.ph.i49.prol ], [ %i.aw, %.lr.ph.i49.preheader ] ; 2 uses
  %prol.iter308 = phi i64 [ %prol.iter308.next, %.lr.ph.i49.prol ], [ 0, %.lr.ph.i49.preheader ]
  %i.bd = load ptr, ptr %.09.i50.prol, align 8, !tbaa !146
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4
  %i.bg = and i32 %i.bf, -131073
  store i32 %i.bg, ptr %i.be, align 4
  %i.bh = getelementptr inbounds nuw i8, ptr %.09.i50.prol, i64 8 ; 2 uses
  %prol.iter308.next = add i64 %prol.iter308, 1   ; 2 uses
  %prol.iter308.cmp.not = icmp eq i64 %prol.iter308.next, %xtraiter306
  br i1 %prol.iter308.cmp.not, label %.lr.ph.i49.prol.loopexit, label %.lr.ph.i49.prol, !llvm.loop !288

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
          to label %.thread184.sink.split unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %.lr.ph
  %i.cq = getelementptr inbounds nuw i8, ptr %i.l, i64 840
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !123
  %i.cs = icmp eq ptr %i.k, %i.cr
  br i1 %i.cs, label %bb.ah, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ct = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4            ; 4 uses
  %i.cv = and i32 %i.cu, 65535
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %bb.h, label %bb.s

bb.h:                                             ; preds = %bb.g
  %i.cx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !133
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !59 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.da, null
  br i1 %.not.i.i.i.i.i, label %bb.s, label %_ZNK11ast_manager6is_notEPK4expr.exit.i

_ZNK11ast_manager6is_notEPK4expr.exit.i:          ; preds = %bb.h
  %i.db = load i32, ptr %i.da, align 8, !tbaa !134
  %i.dc = icmp eq i32 %i.db, 0
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  %i.de = load i32, ptr %i.dd, align 4
  %i.df = icmp eq i32 %i.de, 8
  %i.dg = select i1 %i.dc, i1 %i.df, i1 false
  br i1 %i.dg, label %bb.i, label %bb.s
end_hunk_0
begin_hunk_1_@_ZN13bool_rewriter16mk_nflat_or_coreEjPKP4exprR7obj_refIS0_11ast_managerE:bb.a
  %i.ly = sub nsw i64 %indvars.iv.i.i.i96.ph, %wide.trip.count.i.i.i95
  %i.lz = icmp ugt i64 %i.ly, -4
  br i1 %i.lz, label %._crit_edge.i.i.i99, label %scalar.ph249

._crit_edge.i.i.i99:                              ; preds = %scalar.ph249.prol.loopexit, %scalar.ph249, %middle.block258, %.noexc108
  %.not.i.i.i.i100 = icmp eq ptr %.pre.i.i.i93, %i.g
  %i.ma = icmp eq ptr %.pre.i.i.i93, null
  %or.cond.i.i.i.i101 = or i1 %.not.i.i.i.i100, %i.ma
  br i1 %or.cond.i.i.i.i101, label %_ZN6bufferIP3astLb0ELj16EE6expandEv.exit.i.i103, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge.i.i.i99
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %.pre.i.i.i93)
          to label %.noexc109 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc109:                                        ; preds = %bb.aa
  %.pre2.pre.i.i102 = load i32, ptr %i.h, align 8, !tbaa !143
  br label %_ZN6bufferIP3astLb0ELj16EE6expandEv.exit.i.i103

scalar.ph249:                                     ; preds = %scalar.ph249.prol.loopexit, %scalar.ph249
  %indvars.iv.i.i.i96 = phi i64 [ %indvars.iv.next.i.i.i97.3, %scalar.ph249 ], [ %indvars.iv.i.i.i96.unr, %scalar.ph249.prol.loopexit ] ; 6 uses
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.lm, i64 %indvars.iv.i.i.i96
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i93, i64 %indvars.iv.i.i.i96
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !146
  store ptr %i.md, ptr %i.mb, align 8, !tbaa !146
  %indvars.iv.next.i.i.i97 = add nuw nsw i64 %indvars.iv.i.i.i96, 1 ; 2 uses
  %i.me = getelementptr inbounds nuw [8 x i8], ptr %i.lm, i64 %indvars.iv.next.i.i.i97
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i93, i64 %indvars.iv.next.i.i.i97
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !146
  store ptr %i.mg, ptr %i.me, align 8, !tbaa !146
  %indvars.iv.next.i.i.i97.1 = add nuw nsw i64 %indvars.iv.i.i.i96, 2 ; 2 uses
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %i.lm, i64 %indvars.iv.next.i.i.i97.1
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i93, i64 %indvars.iv.next.i.i.i97.1
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !146
  store ptr %i.mj, ptr %i.mh, align 8, !tbaa !146
  %indvars.iv.next.i.i.i97.2 = add nuw nsw i64 %indvars.iv.i.i.i96, 3 ; 2 uses
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.lm, i64 %indvars.iv.next.i.i.i97.2
  %i.ml = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i93, i64 %indvars.iv.next.i.i.i97.2
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !146
  store ptr %i.mm, ptr %i.mk, align 8, !tbaa !146
  %indvars.iv.next.i.i.i97.3 = add nuw nsw i64 %indvars.iv.i.i.i96, 4 ; 2 uses
  %exitcond.not.i.i.i98.3 = icmp eq i64 %indvars.iv.next.i.i.i97.3, %wide.trip.count.i.i.i95
  br i1 %exitcond.not.i.i.i98.3, label %._crit_edge.i.i.i99, label %scalar.ph249, !llvm.loop !298

_ZN6bufferIP3astLb0ELj16EE6expandEv.exit.i.i103:  ; preds = %.noexc109, %._crit_edge.i.i.i99
  %.pre2.i.i104 = phi i32 [ %i.ln, %._crit_edge.i.i.i99 ], [ %.pre2.pre.i.i102, %.noexc109 ]
  store ptr %i.lm, ptr %6, align 8, !tbaa !142
  store i32 %i.lj, ptr %i.i, align 4, !tbaa !144
  br label %_ZN13ast_fast_markILj2EE4markEP3ast.exit

_ZN13ast_fast_markILj2EE4markEP3ast.exit:         ; preds = %._crit_edge.i.i106, %_ZN6bufferIP3astLb0ELj16EE6expandEv.exit.i.i103
  %i.mn = phi i32 [ %i.lh, %._crit_edge.i.i106 ], [ %.pre2.i.i104, %_ZN6bufferIP3astLb0ELj16EE6expandEv.exit.i.i103 ] ; 2 uses
  %i.mo = phi ptr [ %.pre.i.i107, %._crit_edge.i.i106 ], [ %i.lm, %_ZN6bufferIP3astLb0ELj16EE6expandEv.exit.i.i103 ]
  %i.mp = zext i32 %i.mn to i64
  %i.mq = getelementptr inbounds nuw [8 x i8], ptr %i.mo, i64 %i.mp
  store ptr %i.k, ptr %i.mq, align 8, !tbaa !146
  %i.mr = add i32 %i.mn, 1
  store i32 %i.mr, ptr %i.h, align 8, !tbaa !143
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN13ast_fast_markILj2EE4markEP3ast.exit, %_ZN13ast_fast_markILj1EE4markEP3ast.exit
  %i.ms = load i32, ptr %i.b, align 8, !tbaa !154 ; 2 uses
  %i.mt = load i32, ptr %i.c, align 4, !tbaa !155 ; 2 uses
  %.not.i110 = icmp ult i32 %i.ms, %i.mt
  br i1 %.not.i110, label %._crit_edge.i, label %bb.ac

._crit_edge.i:                                    ; preds = %bb.ab
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !153
  br label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.mu = shl i32 %i.mt, 1                        ; 2 uses
  %i.mv = zext i32 %i.mu to i64
  %i.mw = shl nuw nsw i64 %i.mv, 3
  %i.mx = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.mw)
          to label %.noexc115 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 9 uses

.noexc115:                                        ; preds = %bb.ac
  %i.my = load i32, ptr %i.b, align 8, !tbaa !154 ; 4 uses
  %.not.i.i111 = icmp eq i32 %i.my, 0
  %.pre.i.i112 = load ptr, ptr %4, align 8, !tbaa !153 ; 10 uses
  br i1 %.not.i.i111, label %._crit_edge.i.i113, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc115
  %.pre.i.i112244 = ptrtoaddr ptr %.pre.i.i112 to i64
  %i.mz = ptrtoaddr ptr %i.mx to i64
  %wide.trip.count.i.i = zext i32 %i.my to i64    ; 5 uses
  %min.iters.check = icmp ult i32 %i.my, 4
  %i.na = sub i64 %.pre.i.i112244, %i.mz
  %diff.check = icmp ugt i64 %i.na, -32
  %or.cond277 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond277, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 4294967292 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %i.mx, i64 %index ; 2 uses
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i112, i64 %index ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 16
  %wide.load = load <2 x ptr>, ptr %i.nc, align 8, !tbaa !65
  %wide.load245 = load <2 x ptr>, ptr %i.nd, align 8, !tbaa !65
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nb, i64 16
  store <2 x ptr> %wide.load, ptr %i.nb, align 8, !tbaa !65
  store <2 x ptr> %wide.load245, ptr %i.ne, align 8, !tbaa !65
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.nf = icmp eq i64 %index.next, %n.vec
  br i1 %i.nf, label %middle.block, label %vector.body, !llvm.loop !299

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %._crit_edge.i.i113, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter282 = and i64 %wide.trip.count.i.i, 3  ; 2 uses
  %lcmp.mod283.not = icmp eq i64 %xtraiter282, 0
  br i1 %lcmp.mod283.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter284 = phi i64 [ %prol.iter284.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %i.mx, i64 %indvars.iv.i.i.prol
  %i.nh = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i112, i64 %indvars.iv.i.i.prol
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !65
  store ptr %i.ni, ptr %i.ng, align 8, !tbaa !65
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter284.next = add i64 %prol.iter284, 1   ; 2 uses
  %prol.iter284.cmp.not = icmp eq i64 %prol.iter284.next, %xtraiter282
  br i1 %prol.iter284.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !300

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ]
  %i.nj = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.nk = icmp ugt i64 %i.nj, -4
  br i1 %i.nk, label %._crit_edge.i.i113, label %scalar.ph

._crit_edge.i.i113:                               ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.noexc115
  %.not.i.i.i114 = icmp eq ptr %.pre.i.i112, %i.a
  %i.nl = icmp eq ptr %.pre.i.i112, null
  %or.cond.i.i.i = or i1 %.not.i.i.i114, %i.nl
  br i1 %or.cond.i.i.i, label %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge.i.i113
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %.pre.i.i112)
          to label %.noexc116 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc116:                                        ; preds = %bb.ad
  %.pre2.pre.i = load i32, ptr %i.b, align 8, !tbaa !154
  br label %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr %i.mx, i64 %indvars.iv.i.i
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i112, i64 %indvars.iv.i.i
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !65
  store ptr %i.no, ptr %i.nm, align 8, !tbaa !65
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.np = getelementptr inbounds nuw [8 x i8], ptr %i.mx, i64 %indvars.iv.next.i.i
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i112, i64 %indvars.iv.next.i.i
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !65
  store ptr %i.nr, ptr %i.np, align 8, !tbaa !65
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.ns = getelementptr inbounds nuw [8 x i8], ptr %i.mx, i64 %indvars.iv.next.i.i.1
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i112, i64 %indvars.iv.next.i.i.1
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !65
  store ptr %i.nu, ptr %i.ns, align 8, !tbaa !65
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr %i.mx, i64 %indvars.iv.next.i.i.2
  %i.nw = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i112, i64 %indvars.iv.next.i.i.2
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !65
  store ptr %i.nx, ptr %i.nv, align 8, !tbaa !65
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.i.i113, label %scalar.ph, !llvm.loop !301

_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i:      ; preds = %.noexc116, %._crit_edge.i.i113
  %.pre2.i = phi i32 [ %i.my, %._crit_edge.i.i113 ], [ %.pre2.pre.i, %.noexc116 ]
  store ptr %i.mx, ptr %4, align 8, !tbaa !153
  store i32 %i.mu, ptr %i.c, align 4, !tbaa !155
  br label %bb.ae

bb.ae:                                            ; preds = %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i, %._crit_edge.i
  %i.ny = phi i32 [ %i.ms, %._crit_edge.i ], [ %.pre2.i, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i ] ; 2 uses
  %i.nz = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.mx, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i ]
  %i.oa = zext i32 %i.ny to i64
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %i.nz, i64 %i.oa
  store ptr %i.k, ptr %i.ob, align 8, !tbaa !65
  %i.oc = add i32 %i.ny, 1
  store i32 %i.oc, ptr %i.b, align 8, !tbaa !154
  %.not = icmp eq ptr %.031204, null
  br i1 %.not, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.od = invoke noundef zeroext i1 @_Z2ltP3astS0_(ptr noundef nonnull %i.k, ptr noundef nonnull %.031204)
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.oe = phi i1 [ false, %bb.ae ], [ %i.od, %bb.af ]
  %7 = or i1 %.034203, %i.oe
  br label %bb.ah

bb.ah:                                            ; preds = %bb.f, %bb.s, %bb.j, %bb.ag
  %.236.ph = phi i1 [ %7, %bb.ag ], [ true, %bb.j ], [ true, %bb.s ], [ true, %bb.f ] ; 4 uses
  %.233.ph = phi ptr [ %i.k, %bb.ag ], [ %.031204, %bb.j ], [ %.031204, %bb.s ], [ %.031204, %bb.f ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !302

._crit_edge:                                      ; preds = %bb.ah
  %.pre = load ptr, ptr %5, align 8, !tbaa !142   ; 3 uses
  %.pre207 = load i32, ptr %i.e, align 8, !tbaa !143 ; 2 uses
  %i.of = zext i32 %.pre207 to i64
  %.idx.i117 = shl nuw nsw i64 %i.of, 3           ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx.i117
  %.not8.i118 = icmp eq i32 %.pre207, 0
  br i1 %.not8.i118, label %.loopexit196, label %.lr.ph.i119.preheader

.lr.ph.i119.preheader:                            ; preds = %._crit_edge
  %i.oh = add nsw i64 %.idx.i117, -8              ; 2 uses
  %i.oi = lshr exact i64 %i.oh, 3
  %i.oj = add nuw nsw i64 %i.oi, 1
  %xtraiter297 = and i64 %i.oj, 3                 ; 2 uses
  %lcmp.mod298.not = icmp eq i64 %xtraiter297, 0
  br i1 %lcmp.mod298.not, label %.lr.ph.i119.prol.loopexit, label %.lr.ph.i119.prol

.lr.ph.i119.prol:                                 ; preds = %.lr.ph.i119.preheader, %.lr.ph.i119.prol
  %.09.i120.prol = phi ptr [ %i.oo, %.lr.ph.i119.prol ], [ %.pre, %.lr.ph.i119.preheader ] ; 2 uses
  %prol.iter299 = phi i64 [ %prol.iter299.next, %.lr.ph.i119.prol ], [ 0, %.lr.ph.i119.preheader ]
  %i.ok = load ptr, ptr %.09.i120.prol, align 8, !tbaa !146
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 4 ; 2 uses
  %i.om = load i32, ptr %i.ol, align 4
  %i.on = and i32 %i.om, -65537
  store i32 %i.on, ptr %i.ol, align 4
  %i.oo = getelementptr inbounds nuw i8, ptr %.09.i120.prol, i64 8 ; 2 uses
  %prol.iter299.next = add i64 %prol.iter299, 1   ; 2 uses
  %prol.iter299.cmp.not = icmp eq i64 %prol.iter299.next, %xtraiter297
  br i1 %prol.iter299.cmp.not, label %.lr.ph.i119.prol.loopexit, label %.lr.ph.i119.prol, !llvm.loop !303

.lr.ph.i119.prol.loopexit:                        ; preds = %.lr.ph.i119.prol, %.lr.ph.i119.preheader
  %.09.i120.unr = phi ptr [ %.pre, %.lr.ph.i119.preheader ], [ %i.oo, %.lr.ph.i119.prol ]
  %i.op = icmp ult i64 %i.oh, 24
  br i1 %i.op, label %.loopexit196, label %.lr.ph.i119

.lr.ph.i119:                                      ; preds = %.lr.ph.i119.prol.loopexit, %.lr.ph.i119
  %.09.i120 = phi ptr [ %i.pj, %.lr.ph.i119 ], [ %.09.i120.unr, %.lr.ph.i119.prol.loopexit ] ; 5 uses
  %i.oq = load ptr, ptr %.09.i120, align 8, !tbaa !146
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 4 ; 2 uses
  %i.os = load i32, ptr %i.or, align 4
  %i.ot = and i32 %i.os, -65537
  store i32 %i.ot, ptr %i.or, align 4
  %i.ou = getelementptr inbounds nuw i8, ptr %.09.i120, i64 8
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !146
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 4 ; 2 uses
  %i.ox = load i32, ptr %i.ow, align 4
  %i.oy = and i32 %i.ox, -65537
  store i32 %i.oy, ptr %i.ow, align 4
  %i.oz = getelementptr inbounds nuw i8, ptr %.09.i120, i64 16
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !146
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 4 ; 2 uses
  %i.pc = load i32, ptr %i.pb, align 4
  %i.pd = and i32 %i.pc, -65537
  store i32 %i.pd, ptr %i.pb, align 4
  %i.pe = getelementptr inbounds nuw i8, ptr %.09.i120, i64 24
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !146
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 4 ; 2 uses
  %i.ph = load i32, ptr %i.pg, align 4
  %i.pi = and i32 %i.ph, -65537
  store i32 %i.pi, ptr %i.pg, align 4
  %i.pj = getelementptr inbounds nuw i8, ptr %.09.i120, i64 32 ; 2 uses
  %.not.i121.3 = icmp eq ptr %i.pj, %i.og
  br i1 %.not.i121.3, label %.loopexit196, label %.lr.ph.i119

.loopexit196:                                     ; preds = %.lr.ph.i119.prol.loopexit, %.lr.ph.i119, %._crit_edge
  %.pr = load i32, ptr %i.h, align 8, !tbaa !143  ; 2 uses
  store i32 0, ptr %i.e, align 8, !tbaa !143
  %i.pk = load ptr, ptr %6, align 8, !tbaa !142   ; 3 uses
  %i.pl = zext i32 %.pr to i64
  %.idx.i124 = shl nuw nsw i64 %i.pl, 3           ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pk, i64 %.idx.i124
  %.not8.i125 = icmp eq i32 %.pr, 0
  br i1 %.not8.i125, label %.loopexit195, label %.lr.ph.i126.preheader

.lr.ph.i126.preheader:                            ; preds = %.loopexit196
  %i.pn = add nsw i64 %.idx.i124, -8              ; 2 uses
  %i.po = lshr exact i64 %i.pn, 3
  %i.pp = add nuw nsw i64 %i.po, 1
  %xtraiter300 = and i64 %i.pp, 3                 ; 2 uses
  %lcmp.mod301.not = icmp eq i64 %xtraiter300, 0
  br i1 %lcmp.mod301.not, label %.lr.ph.i126.prol.loopexit, label %.lr.ph.i126.prol

.lr.ph.i126.prol:                                 ; preds = %.lr.ph.i126.preheader, %.lr.ph.i126.prol
  %.09.i127.prol = phi ptr [ %i.pu, %.lr.ph.i126.prol ], [ %i.pk, %.lr.ph.i126.preheader ] ; 2 uses
  %prol.iter302 = phi i64 [ %prol.iter302.next, %.lr.ph.i126.prol ], [ 0, %.lr.ph.i126.preheader ]
  %i.pq = load ptr, ptr %.09.i127.prol, align 8, !tbaa !146
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 4 ; 2 uses
  %i.ps = load i32, ptr %i.pr, align 4
  %i.pt = and i32 %i.ps, -131073
  store i32 %i.pt, ptr %i.pr, align 4
  %i.pu = getelementptr inbounds nuw i8, ptr %.09.i127.prol, i64 8 ; 2 uses
  %prol.iter302.next = add i64 %prol.iter302, 1   ; 2 uses
  %prol.iter302.cmp.not = icmp eq i64 %prol.iter302.next, %xtraiter300
  br i1 %prol.iter302.cmp.not, label %.lr.ph.i126.prol.loopexit, label %.lr.ph.i126.prol, !llvm.loop !304

.lr.ph.i126.prol.loopexit:                        ; preds = %.lr.ph.i126.prol, %.lr.ph.i126.preheader
  %.09.i127.unr = phi ptr [ %i.pk, %.lr.ph.i126.preheader ], [ %i.pu, %.lr.ph.i126.prol ]
  %i.pv = icmp ult i64 %i.pn, 24
  br i1 %i.pv, label %.loopexit195, label %.lr.ph.i126

.lr.ph.i126:                                      ; preds = %.lr.ph.i126.prol.loopexit, %.lr.ph.i126
  %.09.i127 = phi ptr [ %i.qp, %.lr.ph.i126 ], [ %.09.i127.unr, %.lr.ph.i126.prol.loopexit ] ; 5 uses
  %i.pw = load ptr, ptr %.09.i127, align 8, !tbaa !146
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 4 ; 2 uses
  %i.py = load i32, ptr %i.px, align 4
  %i.pz = and i32 %i.py, -131073
  store i32 %i.pz, ptr %i.px, align 4
  %i.qa = getelementptr inbounds nuw i8, ptr %.09.i127, i64 8
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !146
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 4 ; 2 uses
  %i.qd = load i32, ptr %i.qc, align 4
  %i.qe = and i32 %i.qd, -131073
  store i32 %i.qe, ptr %i.qc, align 4
  %i.qf = getelementptr inbounds nuw i8, ptr %.09.i127, i64 16
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !146
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 4 ; 2 uses
  %i.qi = load i32, ptr %i.qh, align 4
  %i.qj = and i32 %i.qi, -131073
  store i32 %i.qj, ptr %i.qh, align 4
  %i.qk = getelementptr inbounds nuw i8, ptr %.09.i127, i64 24
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !146
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 4 ; 2 uses
  %i.qn = load i32, ptr %i.qm, align 4
  %i.qo = and i32 %i.qn, -131073
  store i32 %i.qo, ptr %i.qm, align 4
  %i.qp = getelementptr inbounds nuw i8, ptr %.09.i127, i64 32 ; 2 uses
  %.not.i128.3 = icmp eq ptr %i.qp, %i.pm
  br i1 %.not.i128.3, label %.loopexit195, label %.lr.ph.i126

.loopexit195:                                     ; preds = %.lr.ph.i126.prol.loopexit, %.lr.ph.i126, %.loopexit196.thread, %.loopexit196
  %.034.lcssa239243 = phi i1 [ false, %.loopexit196.thread ], [ %.236.ph, %.loopexit196 ], [ %.236.ph, %.lr.ph.i126 ], [ %.236.ph, %.lr.ph.i126.prol.loopexit ] ; 2 uses
  store i32 0, ptr %i.h, align 8, !tbaa !143
  %i.qq = load i32, ptr %i.b, align 8, !tbaa !154 ; 3 uses
  switch i32 %i.qq, label %bb.aq [
    i32 0, label %bb.ai
    i32 1, label %bb.am
  ]

bb.ai:                                            ; preds = %.loopexit195
  %i.qr = load ptr, ptr %0, align 8, !tbaa !67, !nonnull !18, !align !19
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 840
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !123 ; 5 uses
  %.not.i131 = icmp eq ptr %i.qt, null
  br i1 %.not.i131, label %bb.aj, label %_ZN11ast_manager7inc_refEP3ast.exit.i132

_ZN11ast_manager7inc_refEP3ast.exit.i132:         ; preds = %bb.ai
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 8 ; 2 uses
  %i.qv = load i32, ptr %i.qu, align 4, !tbaa !124
  %i.qw = add i32 %i.qv, 1
  store i32 %i.qw, ptr %i.qu, align 4, !tbaa !124
  br label %bb.aj

bb.aj:                                            ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i132, %bb.ai
  %i.qx = load ptr, ptr %3, align 8, !tbaa !126   ; 3 uses
  %.not.i4.i133 = icmp eq ptr %i.qx, null
  br i1 %.not.i4.i133, label %.thread184.sink.split, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.qy = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !127, !nonnull !18, !align !19
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qx, i64 8 ; 2 uses
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !124
  %i.rc = add i32 %i.rb, -1                       ; 2 uses
  store i32 %i.rc, ptr %i.ra, align 4, !tbaa !124
  %i.rd = icmp eq i32 %i.rc, 0
  br i1 %i.rd, label %bb.al, label %.thread184.sink.split

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.qz, ptr noundef nonnull %i.qx)
          to label %.thread184.sink.split unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.am:                                            ; preds = %.loopexit195
  %i.re = load ptr, ptr %4, align 8, !tbaa !153
  %i.rf = load ptr, ptr %i.re, align 8, !tbaa !65 ; 5 uses
  %.not.i136 = icmp eq ptr %i.rf, null
  br i1 %.not.i136, label %bb.an, label %_ZN11ast_manager7inc_refEP3ast.exit.i137

_ZN11ast_manager7inc_refEP3ast.exit.i137:         ; preds = %bb.am
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 8 ; 2 uses
  %i.rh = load i32, ptr %i.rg, align 4, !tbaa !124
  %i.ri = add i32 %i.rh, 1
  store i32 %i.ri, ptr %i.rg, align 4, !tbaa !124
  br label %bb.an

bb.an:                                            ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i137, %bb.am
  %i.rj = load ptr, ptr %3, align 8, !tbaa !126   ; 3 uses
  %.not.i4.i138 = icmp eq ptr %i.rj, null
  br i1 %.not.i4.i138, label %.thread184.sink.split, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.rk = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !127, !nonnull !18, !align !19
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rj, i64 8 ; 2 uses
  %i.rn = load i32, ptr %i.rm, align 4, !tbaa !124
  %i.ro = add i32 %i.rn, -1                       ; 2 uses
  store i32 %i.ro, ptr %i.rm, align 4, !tbaa !124
  %i.rp = icmp eq i32 %i.ro, 0
  br i1 %i.rp, label %bb.ap, label %.thread184.sink.split

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.rl, ptr noundef nonnull %i.rj)
          to label %.thread184.sink.split unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aq:                                            ; preds = %.loopexit195
  %i.rq = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.rr = load i8, ptr %i.rq, align 2, !tbaa !49, !range !66, !noundef !18
  %i.rs = trunc nuw i8 %i.rr to i1
  br i1 %i.rs, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %bb.aq
  %i.rt = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ru = load i32, ptr %i.rt, align 4, !tbaa !158
  %i.rv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.rw = load i32, ptr %i.rv, align 8, !tbaa !50
  %.not43 = icmp ugt i32 %i.ru, %i.rw
  br i1 %.not43, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.rx = load ptr, ptr %4, align 8, !tbaa !153
  %i.ry = invoke noundef zeroext i1 @_ZN13bool_rewriter14local_ctx_simpEjPKP4exprR7obj_refIS0_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(368) %0, i32 noundef %i.qq, ptr noundef %i.rx, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.at unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.at:                                            ; preds = %bb.as
  %.034.not = xor i1 %.034.lcssa239243, true
  %brmerge = select i1 %i.ry, i1 true, i1 %.034.not
  %.mux = select i1 %i.ry, i32 4, i32 5
  br i1 %brmerge, label %.thread184, label %bb.av

bb.au:                                            ; preds = %bb.ar, %bb.aq
  br i1 %.034.lcssa239243, label %bb.av, label %.thread184

bb.av:                                            ; preds = %bb.at, %bb.au
  %i.rz = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.sa = load i8, ptr %i.rz, align 1, !tbaa !46, !range !66, !noundef !18
  %i.sb = trunc nuw i8 %i.sa to i1
  %.pre209 = load ptr, ptr %4, align 8, !tbaa !153 ; 3 uses
  br i1 %i.sb, label %bb.aw, label %_ZSt11stable_sortIPP4expr6ast_ltEvT_S4_T0_.exit

bb.aw:                                            ; preds = %bb.av
  %i.sc = load i32, ptr %i.b, align 8, !tbaa !154
  %i.sd = zext i32 %i.sc to i64
  %i.se = getelementptr inbounds nuw [8 x i8], ptr %.pre209, i64 %i.sd
  invoke void @_ZSt13__stable_sortIPP4exprN9__gnu_cxx5__ops15_Iter_comp_iterI6ast_ltEEEvT_S8_T0_(ptr noundef %.pre209, ptr noundef %i.se)
          to label %._ZSt11stable_sortIPP4expr6ast_ltEvT_S4_T0_.exit_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._ZSt11stable_sortIPP4expr6ast_ltEvT_S4_T0_.exit_crit_edge: ; preds = %bb.aw
  %.pre208 = load ptr, ptr %4, align 8, !tbaa !153
  br label %_ZSt11stable_sortIPP4expr6ast_ltEvT_S4_T0_.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.af, %bb.q, %bb.r, %bb.z, %bb.aa, %bb.ac, %bb.ad, %bb.o, %bb.x, %bb.e, %bb.az, %_ZSt11stable_sortIPP4expr6ast_ltEvT_S4_T0_.exit, %bb.aw, %bb.ap, %bb.al, %bb.as
  %lpad.loopexit.split-lp278 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN13ast_fast_markILj2EED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @_ZN13ast_fast_markILj1EED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @_ZN6bufferIP4exprLb0ELj16EED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  resume { ptr, i32 } %lpad.loopexit.split-lp278

_ZSt11stable_sortIPP4expr6ast_ltEvT_S4_T0_.exit:  ; preds = %._ZSt11stable_sortIPP4expr6ast_ltEvT_S4_T0_.exit_crit_edge, %bb.av
  %i.sf = phi ptr [ %.pre208, %._ZSt11stable_sortIPP4expr6ast_ltEvT_S4_T0_.exit_crit_edge ], [ %.pre209, %bb.av ]
  %i.sg = load ptr, ptr %0, align 8, !tbaa !67, !nonnull !18, !align !19
  %i.sh = invoke noundef ptr @_ZN11ast_manager6mk_appEiijPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.sg, i32 noundef 0, i32 noundef 6, i32 noundef %i.qq, ptr noundef %i.sf)
          to label %_ZN11ast_manager5mk_orEjPKP4expr.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

_ZN11ast_manager5mk_orEjPKP4expr.exit:            ; preds = %_ZSt11stable_sortIPP4expr6ast_ltEvT_S4_T0_.exit
  %.not.i143 = icmp eq ptr %i.sh, null
  br i1 %.not.i143, label %bb.ax, label %_ZN11ast_manager7inc_refEP3ast.exit.i144

_ZN11ast_manager7inc_refEP3ast.exit.i144:         ; preds = %_ZN11ast_manager5mk_orEjPKP4expr.exit
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 8 ; 2 uses
  %i.sj = load i32, ptr %i.si, align 4, !tbaa !124
  %i.sk = add i32 %i.sj, 1
  store i32 %i.sk, ptr %i.si, align 4, !tbaa !124
  br label %bb.ax

bb.ax:                                            ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i144, %_ZN11ast_manager5mk_orEjPKP4expr.exit
  %i.sl = load ptr, ptr %3, align 8, !tbaa !126   ; 3 uses
  %.not.i4.i145 = icmp eq ptr %i.sl, null
  br i1 %.not.i4.i145, label %.thread184.sink.split, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.sm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !127, !nonnull !18, !align !19
  %i.so = getelementptr inbounds nuw i8, ptr %i.sl, i64 8 ; 2 uses
  %i.sp = load i32, ptr %i.so, align 4, !tbaa !124
  %i.sq = add i32 %i.sp, -1                       ; 2 uses
  store i32 %i.sq, ptr %i.so, align 4, !tbaa !124
  %i.sr = icmp eq i32 %i.sq, 0
  br i1 %i.sr, label %bb.az, label %.thread184.sink.split

bb.az:                                            ; preds = %bb.ay
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.sn, ptr noundef nonnull %i.sl)
          to label %.thread184.sink.split unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread184.sink.split:                            ; preds = %bb.ay, %bb.ax, %bb.az, %bb.ao, %bb.an, %bb.ap, %bb.ak, %bb.aj, %bb.al, %bb.w, %bb.v, %bb.x, %bb.n, %bb.m, %bb.o, %bb.d, %bb.c, %bb.e
  %.sink = phi ptr [ %i.cf, %bb.d ], [ %i.gg, %bb.n ], [ %i.kv, %bb.w ], [ %i.rf, %bb.ao ], [ %i.qt, %bb.ak ], [ %i.cf, %bb.e ], [ %i.cf, %bb.c ], [ %i.gg, %bb.o ], [ %i.gg, %bb.m ], [ %i.kv, %bb.x ], [ %i.kv, %bb.v ], [ %i.qt, %bb.al ], [ %i.qt, %bb.aj ], [ %i.rf, %bb.ap ], [ %i.rf, %bb.an ], [ %i.sh, %bb.az ], [ %i.sh, %bb.ax ], [ %i.sh, %bb.ay ]
  store ptr %.sink, ptr %3, align 8, !tbaa !126
  br label %.thread184

.thread184:                                       ; preds = %.thread184.sink.split, %bb.at, %bb.au
  %.5 = phi i32 [ 5, %bb.au ], [ %.mux, %bb.at ], [ 4, %.thread184.sink.split ]
  %i.ss = load ptr, ptr %6, align 8, !tbaa !142   ; 4 uses
  %i.st = load i32, ptr %i.h, align 8, !tbaa !143 ; 2 uses
  %i.su = zext i32 %i.st to i64
  %.idx.i.i = shl nuw nsw i64 %i.su, 3            ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %i.ss, i64 %.idx.i.i
  %.not8.i.i = icmp eq i32 %i.st, 0
  br i1 %.not8.i.i, label %.loopexit.i, label %.lr.ph.i.i148.preheader

.lr.ph.i.i148.preheader:                          ; preds = %.thread184
  %i.sw = add nsw i64 %.idx.i.i, -8               ; 2 uses
  %i.sx = lshr exact i64 %i.sw, 3
  %i.sy = add nuw nsw i64 %i.sx, 1
  %xtraiter309 = and i64 %i.sy, 3                 ; 2 uses
  %lcmp.mod310.not = icmp eq i64 %xtraiter309, 0
  br i1 %lcmp.mod310.not, label %.lr.ph.i.i148.prol.loopexit, label %.lr.ph.i.i148.prol

.lr.ph.i.i148.prol:                               ; preds = %.lr.ph.i.i148.preheader, %.lr.ph.i.i148.prol
  %.09.i.i.prol = phi ptr [ %i.td, %.lr.ph.i.i148.prol ], [ %i.ss, %.lr.ph.i.i148.preheader ] ; 2 uses
  %prol.iter311 = phi i64 [ %prol.iter311.next, %.lr.ph.i.i148.prol ], [ 0, %.lr.ph.i.i148.preheader ]
  %i.sz = load ptr, ptr %.09.i.i.prol, align 8, !tbaa !146
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 4 ; 2 uses
  %i.tb = load i32, ptr %i.ta, align 4
  %i.tc = and i32 %i.tb, -131073
  store i32 %i.tc, ptr %i.ta, align 4
  %i.td = getelementptr inbounds nuw i8, ptr %.09.i.i.prol, i64 8 ; 2 uses
  %prol.iter311.next = add i64 %prol.iter311, 1   ; 2 uses
  %prol.iter311.cmp.not = icmp eq i64 %prol.iter311.next, %xtraiter309
  br i1 %prol.iter311.cmp.not, label %.lr.ph.i.i148.prol.loopexit, label %.lr.ph.i.i148.prol, !llvm.loop !305
end_hunk_1
begin_hunk_2_@_ZN13bool_rewriter15mk_flat_or_coreEjPKP4exprR7obj_refIS0_11ast_managerE:bb.a
bb.a:
  %4 = alloca %class.ptr_buffer, align 8          ; 20 uses
  %.not105 = icmp eq i32 %1, 0
  br i1 %.not105, label %.critedge, label %.lr.ph.preheader

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
  %.pre.i.i.i = phi ptr [ %.pre.i.i.i120, %_ZN6bufferIP4exprLb0ELj16EE9push_backERKS1_.exit.i.i ], [ %i.r, %bb.c ]
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
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 9 uses

.noexc:                                           ; preds = %bb.d
  %i.ad = load i32, ptr %i.s, align 8, !tbaa !154 ; 4 uses
  %.not.i.i.i.i49 = icmp eq i32 %i.ad, 0
  %.pre.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !153 ; 10 uses
  br i1 %.not.i.i.i.i49, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc
  %.pre.i.i.i.i148 = ptrtoaddr ptr %.pre.i.i.i.i to i64
  %i.ae = ptrtoaddr ptr %i.ac to i64
  %wide.trip.count.i.i.i.i = zext i32 %i.ad to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.ad, 4
  %i.af = sub i64 %.pre.i.i.i.i148, %i.ae
  %diff.check = icmp ugt i64 %i.af, -32
  %or.cond180 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond180, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i.i, 4294967292 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %index ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i, i64 %index ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %wide.load = load <2 x ptr>, ptr %i.ah, align 8, !tbaa !65
  %wide.load149 = load <2 x ptr>, ptr %i.ai, align 8, !tbaa !65
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store <2 x ptr> %wide.load, ptr %i.ag, align 8, !tbaa !65
  store <2 x ptr> %wide.load149, ptr %i.aj, align 8, !tbaa !65
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
          to label %.noexc50 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

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
  %.pre.i.i.i120 = phi ptr [ %i.ac, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i.i.i ], [ %.pre.i.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.bd = phi i32 [ %i.z, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i.i.i ], [ %i.w, %.lr.ph.i.i ]
  %i.be = phi i32 [ %.pre2.i.i.i, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i.i.i ], [ %i.x, %.lr.ph.i.i ] ; 2 uses
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i120, i64 %i.bf
  store ptr %i.y, ptr %i.bg, align 8, !tbaa !65
  %i.bh = add i32 %i.be, 1                        ; 3 uses
  store i32 %i.bh, ptr %i.s, align 8, !tbaa !154
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i.i, i64 8 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.u
  br i1 %i.bj, label %_ZN10ptr_bufferI4exprLj16EE6appendEjPKPS0_.exit, label %.lr.ph.i.i

_ZN10ptr_bufferI4exprLj16EE6appendEjPKPS0_.exit:  ; preds = %_ZN6bufferIP4exprLb0ELj16EE9push_backERKS1_.exit.i.i, %bb.c
  %i.bk = phi ptr [ %i.r, %bb.c ], [ %.pre.i.i.i120, %_ZN6bufferIP4exprLb0ELj16EE9push_backERKS1_.exit.i.i ]
  %i.bl = phi i32 [ 0, %bb.c ], [ %i.bh, %_ZN6bufferIP4exprLb0ELj16EE9push_backERKS1_.exit.i.i ]
  %i.bm = icmp ugt i32 %1, %i.q
  br i1 %i.bm, label %.lr.ph104, label %._crit_edge

.lr.ph104:                                        ; preds = %_ZN10ptr_bufferI4exprLj16EE6appendEjPKPS0_.exit, %.loopexit
  %indvars.iv116 = phi i64 [ %indvars.iv.next117, %.loopexit ], [ %indvars.iv, %_ZN10ptr_bufferI4exprLj16EE6appendEjPKPS0_.exit ] ; 2 uses
  %.036103 = phi ptr [ %.137, %.loopexit ], [ null, %_ZN10ptr_bufferI4exprLj16EE6appendEjPKPS0_.exit ] ; 4 uses
  %.038102 = phi i1 [ %.139, %.loopexit ], [ true, %_ZN10ptr_bufferI4exprLj16EE6appendEjPKPS0_.exit ] ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv116
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !65 ; 8 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.bq = load i32, ptr %i.bp, align 4
  %i.br = and i32 %i.bq, 65535
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %bb.f, label %_ZNK11ast_manager5is_orEPK4expr.exit52.thread

bb.f:                                             ; preds = %.lr.ph104
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
  %.not4698 = icmp eq i32 %i.cf, 0
  br i1 %.not4698, label %.loopexit, label %.lr.ph100.preheader

.lr.ph100.preheader:                              ; preds = %bb.g
  %.pre = load i32, ptr %i.s, align 8, !tbaa !154
  %.pre122 = load i32, ptr %i.t, align 4, !tbaa !155
  br label %.lr.ph100

.lr.ph100:                                        ; preds = %.lr.ph100.preheader, %bb.j
  %i.ci = phi i32 [ %i.dp, %bb.j ], [ %.pre122, %.lr.ph100.preheader ] ; 3 uses
  %i.cj = phi i32 [ %i.du, %bb.j ], [ %.pre, %.lr.ph100.preheader ] ; 2 uses
  %.099 = phi ptr [ %i.dv, %bb.j ], [ %i.cd, %.lr.ph100.preheader ] ; 2 uses
  %i.ck = load ptr, ptr %.099, align 8, !tbaa !65
  %.not.i = icmp ult i32 %i.cj, %i.ci
  br i1 %.not.i, label %._crit_edge.i, label %bb.h

._crit_edge.i:                                    ; preds = %.lr.ph100
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !153
  br label %bb.j

bb.h:                                             ; preds = %.lr.ph100
  %i.cl = shl i32 %i.ci, 1                        ; 3 uses
  %i.cm = zext i32 %i.cl to i64
  %i.cn = shl nuw nsw i64 %i.cm, 3
  %i.co = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.cn)
          to label %.noexc56 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 9 uses

.noexc56:                                         ; preds = %bb.h
  %i.cp = load i32, ptr %i.s, align 8, !tbaa !154 ; 4 uses
  %.not.i.i = icmp eq i32 %i.cp, 0
  %.pre.i.i53 = load ptr, ptr %4, align 8, !tbaa !153 ; 10 uses
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i54

.lr.ph.i.i54:                                     ; preds = %.noexc56
  %.pre.i.i53166 = ptrtoaddr ptr %.pre.i.i53 to i64
  %i.cq = ptrtoaddr ptr %i.co to i64
  %wide.trip.count.i.i = zext i32 %i.cp to i64    ; 5 uses
  %min.iters.check169 = icmp ult i32 %i.cp, 4
  %i.cr = sub i64 %.pre.i.i53166, %i.cq
  %diff.check167 = icmp ugt i64 %i.cr, -32
  %or.cond181 = select i1 %min.iters.check169, i1 true, i1 %diff.check167
  br i1 %or.cond181, label %scalar.ph168.preheader, label %vector.ph170

vector.ph170:                                     ; preds = %.lr.ph.i.i54
  %n.vec171 = and i64 %wide.trip.count.i.i, 4294967292 ; 3 uses
  br label %vector.body172

vector.body172:                                   ; preds = %vector.body172, %vector.ph170
  %index173 = phi i64 [ 0, %vector.ph170 ], [ %index.next176, %vector.body172 ] ; 3 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %index173 ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i53, i64 %index173 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %wide.load174 = load <2 x ptr>, ptr %i.ct, align 8, !tbaa !65
  %wide.load175 = load <2 x ptr>, ptr %i.cu, align 8, !tbaa !65
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  store <2 x ptr> %wide.load174, ptr %i.cs, align 8, !tbaa !65
  store <2 x ptr> %wide.load175, ptr %i.cv, align 8, !tbaa !65
  %index.next176 = add nuw i64 %index173, 4       ; 2 uses
  %i.cw = icmp eq i64 %index.next176, %n.vec171
  br i1 %i.cw, label %middle.block177, label %vector.body172, !llvm.loop !319

middle.block177:                                  ; preds = %vector.body172
  %cmp.n178 = icmp eq i64 %n.vec171, %wide.trip.count.i.i
  br i1 %cmp.n178, label %._crit_edge.i.i, label %scalar.ph168.preheader

scalar.ph168.preheader:                           ; preds = %.lr.ph.i.i54, %middle.block177
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i54 ], [ %n.vec171, %middle.block177 ] ; 3 uses
  %xtraiter190 = and i64 %wide.trip.count.i.i, 3  ; 2 uses
  %lcmp.mod191.not = icmp eq i64 %xtraiter190, 0
  br i1 %lcmp.mod191.not, label %scalar.ph168.prol.loopexit, label %scalar.ph168.prol

scalar.ph168.prol:                                ; preds = %scalar.ph168.preheader, %scalar.ph168.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %scalar.ph168.prol ], [ %indvars.iv.i.i.ph, %scalar.ph168.preheader ] ; 3 uses
  %prol.iter192 = phi i64 [ %prol.iter192.next, %scalar.ph168.prol ], [ 0, %scalar.ph168.preheader ]
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %indvars.iv.i.i.prol
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i53, i64 %indvars.iv.i.i.prol
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !65
  store ptr %i.cz, ptr %i.cx, align 8, !tbaa !65
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter192.next = add i64 %prol.iter192, 1   ; 2 uses
  %prol.iter192.cmp.not = icmp eq i64 %prol.iter192.next, %xtraiter190
  br i1 %prol.iter192.cmp.not, label %scalar.ph168.prol.loopexit, label %scalar.ph168.prol, !llvm.loop !320

scalar.ph168.prol.loopexit:                       ; preds = %scalar.ph168.prol, %scalar.ph168.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %scalar.ph168.preheader ], [ %indvars.iv.next.i.i.prol, %scalar.ph168.prol ]
  %i.da = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.db = icmp ugt i64 %i.da, -4
  br i1 %i.db, label %._crit_edge.i.i, label %scalar.ph168

._crit_edge.i.i:                                  ; preds = %scalar.ph168.prol.loopexit, %scalar.ph168, %middle.block177, %.noexc56
  %.not.i.i.i55 = icmp eq ptr %.pre.i.i53, %i.r
  %i.dc = icmp eq ptr %.pre.i.i53, null
  %or.cond.i.i.i = or i1 %.not.i.i.i55, %i.dc
  br i1 %or.cond.i.i.i, label %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i, label %bb.i

bb.i:                                             ; preds = %._crit_edge.i.i
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %.pre.i.i53)
          to label %.noexc57 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc57:                                         ; preds = %bb.i
  %.pre2.pre.i = load i32, ptr %i.s, align 8, !tbaa !154
  br label %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i

scalar.ph168:                                     ; preds = %scalar.ph168.prol.loopexit, %scalar.ph168
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %scalar.ph168 ], [ %indvars.iv.i.i.unr, %scalar.ph168.prol.loopexit ] ; 6 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %indvars.iv.i.i
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i53, i64 %indvars.iv.i.i
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !65
  store ptr %i.df, ptr %i.dd, align 8, !tbaa !65
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %indvars.iv.next.i.i
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i53, i64 %indvars.iv.next.i.i
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !65
  store ptr %i.di, ptr %i.dg, align 8, !tbaa !65
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %indvars.iv.next.i.i.1
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i53, i64 %indvars.iv.next.i.i.1
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !65
  store ptr %i.dl, ptr %i.dj, align 8, !tbaa !65
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %indvars.iv.next.i.i.2
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i53, i64 %indvars.iv.next.i.i.2
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !65
  store ptr %i.do, ptr %i.dm, align 8, !tbaa !65
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.i.i, label %scalar.ph168, !llvm.loop !321

_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i:      ; preds = %.noexc57, %._crit_edge.i.i
  %.pre2.i = phi i32 [ %i.cp, %._crit_edge.i.i ], [ %.pre2.pre.i, %.noexc57 ]
  store ptr %i.co, ptr %4, align 8, !tbaa !153
  store i32 %i.cl, ptr %i.t, align 4, !tbaa !155
  br label %bb.j

bb.j:                                             ; preds = %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i, %._crit_edge.i
  %i.dp = phi i32 [ %i.ci, %._crit_edge.i ], [ %i.cl, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i ]
  %i.dq = phi i32 [ %i.cj, %._crit_edge.i ], [ %.pre2.i, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i ] ; 2 uses
  %i.dr = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.co, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i ]
  %i.ds = zext i32 %i.dq to i64
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.ds
  store ptr %i.ck, ptr %i.dt, align 8, !tbaa !65
  %i.du = add i32 %i.dq, 1                        ; 2 uses
  store i32 %i.du, ptr %i.s, align 8, !tbaa !154
  %i.dv = getelementptr inbounds nuw i8, ptr %.099, i64 8 ; 2 uses
  %.not46 = icmp eq ptr %i.dv, %i.ch
  br i1 %.not46, label %.loopexit, label %.lr.ph100

_ZNK11ast_manager5is_orEPK4expr.exit52.thread:    ; preds = %bb.f, %.lr.ph104, %_ZNK11ast_manager5is_orEPK4expr.exit52
  %i.dw = load i32, ptr %i.s, align 8, !tbaa !154 ; 2 uses
  %i.dx = load i32, ptr %i.t, align 4, !tbaa !155 ; 2 uses
  %.not.i58 = icmp ult i32 %i.dw, %i.dx
  br i1 %.not.i58, label %._crit_edge.i72, label %bb.k

._crit_edge.i72:                                  ; preds = %_ZNK11ast_manager5is_orEPK4expr.exit52.thread
  %.pre.i73 = load ptr, ptr %4, align 8, !tbaa !153
  br label %bb.m

bb.k:                                             ; preds = %_ZNK11ast_manager5is_orEPK4expr.exit52.thread
  %i.dy = shl i32 %i.dx, 1                        ; 2 uses
  %i.dz = zext i32 %i.dy to i64
  %i.ea = shl nuw nsw i64 %i.dz, 3
  %i.eb = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.ea)
          to label %.noexc74 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 9 uses

.noexc74:                                         ; preds = %bb.k
  %i.ec = load i32, ptr %i.s, align 8, !tbaa !154 ; 4 uses
  %.not.i.i59 = icmp eq i32 %i.ec, 0
  %.pre.i.i60 = load ptr, ptr %4, align 8, !tbaa !153 ; 10 uses
  br i1 %.not.i.i59, label %._crit_edge.i.i66, label %.lr.ph.i.i61

.lr.ph.i.i61:                                     ; preds = %.noexc74
  %.pre.i.i60151 = ptrtoaddr ptr %.pre.i.i60 to i64
  %i.ed = ptrtoaddr ptr %i.eb to i64
  %wide.trip.count.i.i62 = zext i32 %i.ec to i64  ; 5 uses
  %min.iters.check154 = icmp ult i32 %i.ec, 4
  %i.ee = sub i64 %.pre.i.i60151, %i.ed
  %diff.check152 = icmp ugt i64 %i.ee, -32
  %or.cond182 = select i1 %min.iters.check154, i1 true, i1 %diff.check152
  br i1 %or.cond182, label %scalar.ph153.preheader, label %vector.ph155

vector.ph155:                                     ; preds = %.lr.ph.i.i61
  %n.vec156 = and i64 %wide.trip.count.i.i62, 4294967292 ; 3 uses
  br label %vector.body157

vector.body157:                                   ; preds = %vector.body157, %vector.ph155
  %index158 = phi i64 [ 0, %vector.ph155 ], [ %index.next161, %vector.body157 ] ; 3 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %index158 ; 2 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i60, i64 %index158 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %wide.load159 = load <2 x ptr>, ptr %i.eg, align 8, !tbaa !65
  %wide.load160 = load <2 x ptr>, ptr %i.eh, align 8, !tbaa !65
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  store <2 x ptr> %wide.load159, ptr %i.ef, align 8, !tbaa !65
  store <2 x ptr> %wide.load160, ptr %i.ei, align 8, !tbaa !65
  %index.next161 = add nuw i64 %index158, 4       ; 2 uses
  %i.ej = icmp eq i64 %index.next161, %n.vec156
  br i1 %i.ej, label %middle.block162, label %vector.body157, !llvm.loop !322

middle.block162:                                  ; preds = %vector.body157
  %cmp.n163 = icmp eq i64 %n.vec156, %wide.trip.count.i.i62
  br i1 %cmp.n163, label %._crit_edge.i.i66, label %scalar.ph153.preheader

scalar.ph153.preheader:                           ; preds = %.lr.ph.i.i61, %middle.block162
  %indvars.iv.i.i63.ph = phi i64 [ 0, %.lr.ph.i.i61 ], [ %n.vec156, %middle.block162 ] ; 3 uses
  %xtraiter193 = and i64 %wide.trip.count.i.i62, 3 ; 2 uses
  %lcmp.mod194.not = icmp eq i64 %xtraiter193, 0
  br i1 %lcmp.mod194.not, label %scalar.ph153.prol.loopexit, label %scalar.ph153.prol

scalar.ph153.prol:                                ; preds = %scalar.ph153.preheader, %scalar.ph153.prol
  %indvars.iv.i.i63.prol = phi i64 [ %indvars.iv.next.i.i64.prol, %scalar.ph153.prol ], [ %indvars.iv.i.i63.ph, %scalar.ph153.preheader ] ; 3 uses
  %prol.iter195 = phi i64 [ %prol.iter195.next, %scalar.ph153.prol ], [ 0, %scalar.ph153.preheader ]
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv.i.i63.prol
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i60, i64 %indvars.iv.i.i63.prol
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !65
  store ptr %i.em, ptr %i.ek, align 8, !tbaa !65
  %indvars.iv.next.i.i64.prol = add nuw nsw i64 %indvars.iv.i.i63.prol, 1 ; 2 uses
  %prol.iter195.next = add i64 %prol.iter195, 1   ; 2 uses
  %prol.iter195.cmp.not = icmp eq i64 %prol.iter195.next, %xtraiter193
  br i1 %prol.iter195.cmp.not, label %scalar.ph153.prol.loopexit, label %scalar.ph153.prol, !llvm.loop !323

scalar.ph153.prol.loopexit:                       ; preds = %scalar.ph153.prol, %scalar.ph153.preheader
  %indvars.iv.i.i63.unr = phi i64 [ %indvars.iv.i.i63.ph, %scalar.ph153.preheader ], [ %indvars.iv.next.i.i64.prol, %scalar.ph153.prol ]
  %i.en = sub nsw i64 %indvars.iv.i.i63.ph, %wide.trip.count.i.i62
  %i.eo = icmp ugt i64 %i.en, -4
  br i1 %i.eo, label %._crit_edge.i.i66, label %scalar.ph153

._crit_edge.i.i66:                                ; preds = %scalar.ph153.prol.loopexit, %scalar.ph153, %middle.block162, %.noexc74
  %.not.i.i.i67 = icmp eq ptr %.pre.i.i60, %i.r
  %i.ep = icmp eq ptr %.pre.i.i60, null
  %or.cond.i.i.i68 = or i1 %.not.i.i.i67, %i.ep
  br i1 %or.cond.i.i.i68, label %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i70, label %bb.l

bb.l:                                             ; preds = %._crit_edge.i.i66
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %.pre.i.i60)
          to label %.noexc75 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc75:                                         ; preds = %bb.l
  %.pre2.pre.i69 = load i32, ptr %i.s, align 8, !tbaa !154
  br label %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i70

scalar.ph153:                                     ; preds = %scalar.ph153.prol.loopexit, %scalar.ph153
  %indvars.iv.i.i63 = phi i64 [ %indvars.iv.next.i.i64.3, %scalar.ph153 ], [ %indvars.iv.i.i63.unr, %scalar.ph153.prol.loopexit ] ; 6 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv.i.i63
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i60, i64 %indvars.iv.i.i63
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !65
  store ptr %i.es, ptr %i.eq, align 8, !tbaa !65
  %indvars.iv.next.i.i64 = add nuw nsw i64 %indvars.iv.i.i63, 1 ; 2 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv.next.i.i64
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i60, i64 %indvars.iv.next.i.i64
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !65
  store ptr %i.ev, ptr %i.et, align 8, !tbaa !65
  %indvars.iv.next.i.i64.1 = add nuw nsw i64 %indvars.iv.i.i63, 2 ; 2 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv.next.i.i64.1
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i60, i64 %indvars.iv.next.i.i64.1
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !65
  store ptr %i.ey, ptr %i.ew, align 8, !tbaa !65
  %indvars.iv.next.i.i64.2 = add nuw nsw i64 %indvars.iv.i.i63, 3 ; 2 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv.next.i.i64.2
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i60, i64 %indvars.iv.next.i.i64.2
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !65
  store ptr %i.fb, ptr %i.ez, align 8, !tbaa !65
  %indvars.iv.next.i.i64.3 = add nuw nsw i64 %indvars.iv.i.i63, 4 ; 2 uses
  %exitcond.not.i.i65.3 = icmp eq i64 %indvars.iv.next.i.i64.3, %wide.trip.count.i.i62
  br i1 %exitcond.not.i.i65.3, label %._crit_edge.i.i66, label %scalar.ph153, !llvm.loop !324

_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i70:    ; preds = %.noexc75, %._crit_edge.i.i66
  %.pre2.i71 = phi i32 [ %i.ec, %._crit_edge.i.i66 ], [ %.pre2.pre.i69, %.noexc75 ]
  store ptr %i.eb, ptr %4, align 8, !tbaa !153
  store i32 %i.dy, ptr %i.t, align 4, !tbaa !155
  br label %bb.m

bb.m:                                             ; preds = %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i70, %._crit_edge.i72
  %i.fc = phi i32 [ %i.dw, %._crit_edge.i72 ], [ %.pre2.i71, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i70 ] ; 2 uses
  %i.fd = phi ptr [ %.pre.i73, %._crit_edge.i72 ], [ %i.eb, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i70 ]
  %i.fe = zext i32 %i.fc to i64
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.fe
  store ptr %i.bo, ptr %i.ff, align 8, !tbaa !65
  %i.fg = add i32 %i.fc, 1
  store i32 %i.fg, ptr %i.s, align 8, !tbaa !154
  %.not45 = icmp eq ptr %.036103, null
  br i1 %.not45, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fh = invoke noundef zeroext i1 @_Z2ltP3astS0_(ptr noundef nonnull %i.bo, ptr noundef nonnull %.036103)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.n
  %i.fi = xor i1 %i.fh, true
  %5 = and i1 %.038102, %i.fi
  br label %.loopexit

.loopexit:                                        ; preds = %bb.j, %bb.m, %bb.o, %bb.g
  %.139 = phi i1 [ %5, %bb.o ], [ false, %bb.g ], [ %.038102, %bb.m ], [ false, %bb.j ] ; 2 uses
  %.137 = phi ptr [ %i.bo, %bb.o ], [ %.036103, %bb.g ], [ %i.bo, %bb.m ], [ %.036103, %bb.j ]
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1 ; 2 uses
  %exitcond119.not = icmp eq i64 %indvars.iv.next117, %wide.trip.count
  br i1 %exitcond119.not, label %._crit_edge.loopexit, label %.lr.ph104, !llvm.loop !325

._crit_edge.loopexit:                             ; preds = %.loopexit
  %.pre123 = load i32, ptr %i.s, align 8, !tbaa !154
  %.pre124 = load ptr, ptr %4, align 8, !tbaa !153
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN10ptr_bufferI4exprLj16EE6appendEjPKPS0_.exit
  %i.fj = phi ptr [ %i.bk, %_ZN10ptr_bufferI4exprLj16EE6appendEjPKPS0_.exit ], [ %.pre124, %._crit_edge.loopexit ]
  %i.fk = phi i32 [ %i.bl, %_ZN10ptr_bufferI4exprLj16EE6appendEjPKPS0_.exit ], [ %.pre123, %._crit_edge.loopexit ]
  %.038.lcssa = phi i1 [ true, %_ZN10ptr_bufferI4exprLj16EE6appendEjPKPS0_.exit ], [ %.139, %._crit_edge.loopexit ]
  %i.fl = invoke noundef i32 @_ZN13bool_rewriter16mk_nflat_or_coreEjPKP4exprR7obj_refIS0_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(368) %0, i32 noundef %i.fk, ptr noundef %i.fj, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %._crit_edge
  %i.fm = icmp eq i32 %i.fl, 5
  br i1 %i.fm, label %bb.q, label %bb.y

bb.q:                                             ; preds = %bb.p
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !46, !range !66, !noundef !18
  %i.fp = trunc nuw i8 %i.fo to i1
  %.not = xor i1 %i.fp, true
  %or.cond = select i1 %.not, i1 true, i1 %.038.lcssa
  br i1 %or.cond, label %_ZSt11stable_sortIPP4expr6ast_ltEvT_S4_T0_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fq = load ptr, ptr %4, align 8, !tbaa !153   ; 2 uses
  %i.fr = load i32, ptr %i.s, align 8, !tbaa !154
  %i.fs = zext i32 %i.fr to i64
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %i.fs
  invoke void @_ZSt13__stable_sortIPP4exprN9__gnu_cxx5__ops15_Iter_comp_iterI6ast_ltEEEvT_S8_T0_(ptr noundef %i.fq, ptr noundef %i.ft)
          to label %_ZSt11stable_sortIPP4expr6ast_ltEvT_S4_T0_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.l, %bb.k, %bb.n, %bb.h, %bb.i, %bb.e, %bb.d, %bb.x, %bb.u, %bb.r, %._crit_edge
  %lpad.loopexit.split-lp187 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6bufferIP4exprLb0ELj16EED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  resume { ptr, i32 } %lpad.loopexit.split-lp187

_ZSt11stable_sortIPP4expr6ast_ltEvT_S4_T0_.exit:  ; preds = %bb.r, %bb.q
  %i.fu = load i32, ptr %i.s, align 8, !tbaa !154 ; 2 uses
  %i.fv = load ptr, ptr %4, align 8, !tbaa !153   ; 2 uses
  switch i32 %i.fu, label %bb.u [
    i32 0, label %bb.s
    i32 1, label %bb.t
  ]

bb.s:                                             ; preds = %_ZSt11stable_sortIPP4expr6ast_ltEvT_S4_T0_.exit
  %i.fw = load ptr, ptr %0, align 8, !tbaa !67, !nonnull !18, !align !19
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 840
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !123
  br label %_ZN13bool_rewriter9mk_or_appEjPKP4expr.exit

bb.t:                                             ; preds = %_ZSt11stable_sortIPP4expr6ast_ltEvT_S4_T0_.exit
  %i.fz = load ptr, ptr %i.fv, align 8, !tbaa !65
  br label %_ZN13bool_rewriter9mk_or_appEjPKP4expr.exit

bb.u:                                             ; preds = %_ZSt11stable_sortIPP4expr6ast_ltEvT_S4_T0_.exit
  %i.ga = load ptr, ptr %0, align 8, !tbaa !67, !nonnull !18, !align !19
  %i.gb = invoke noundef ptr @_ZN11ast_manager6mk_appEiijPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.ga, i32 noundef 0, i32 noundef 6, i32 noundef %i.fu, ptr noundef %i.fv)
          to label %_ZN13bool_rewriter9mk_or_appEjPKP4expr.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN13bool_rewriter9mk_or_appEjPKP4expr.exit:      ; preds = %bb.t, %bb.s, %bb.u
  %.0.i = phi ptr [ %i.fz, %bb.t ], [ %i.fy, %bb.s ], [ %i.gb, %bb.u ] ; 3 uses
  %.not.i79 = icmp eq ptr %.0.i, null
  br i1 %.not.i79, label %bb.v, label %_ZN11ast_manager7inc_refEP3ast.exit.i

_ZN11ast_manager7inc_refEP3ast.exit.i:            ; preds = %_ZN13bool_rewriter9mk_or_appEjPKP4expr.exit
  %i.gc = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 2 uses
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !124
  %i.ge = add i32 %i.gd, 1
  store i32 %i.ge, ptr %i.gc, align 4, !tbaa !124
  br label %bb.v

bb.v:                                             ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i, %_ZN13bool_rewriter9mk_or_appEjPKP4expr.exit
  %i.gf = load ptr, ptr %3, align 8, !tbaa !126   ; 3 uses
  %.not.i4.i = icmp eq ptr %i.gf, null
  br i1 %.not.i4.i, label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !127, !nonnull !18, !align !19
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gf, i64 8 ; 2 uses
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !124
  %i.gk = add i32 %i.gj, -1                       ; 2 uses
  store i32 %i.gk, ptr %i.gi, align 4, !tbaa !124
  %i.gl = icmp eq i32 %i.gk, 0
  br i1 %i.gl, label %bb.x, label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.gh, ptr noundef nonnull %i.gf)
          to label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit:      ; preds = %bb.x, %bb.v, %bb.w
  store ptr %.0.i, ptr %3, align 8, !tbaa !126
  br label %bb.y

bb.y:                                             ; preds = %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit, %bb.p
  %i.gm = load ptr, ptr %4, align 8, !tbaa !153   ; 3 uses
  %.not.i.i.i81 = icmp eq ptr %i.gm, %i.r
  %i.gn = icmp eq ptr %i.gm, null
  %or.cond.i.i.i82 = or i1 %.not.i.i.i81, %i.gn
  br i1 %or.cond.i.i.i82, label %_ZN6bufferIP4exprLb0ELj16EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.gm)
          to label %_ZN6bufferIP4exprLb0ELj16EED2Ev.exit unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.go = landingpad { ptr, i32 }
          catch ptr null
  %i.gp = extractvalue { ptr, i32 } %i.go, 0
  call void @__clang_call_terminate(ptr %i.gp) #21
  unreachable

_ZN6bufferIP4exprLb0ELj16EED2Ev.exit:             ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.ab

.critedge:                                        ; preds = %_ZNK11ast_manager5is_orEPK4expr.exit.thread, %bb.a
  %i.gq = tail call noundef i32 @_ZN13bool_rewriter16mk_nflat_or_coreEjPKP4exprR7obj_refIS0_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(368) %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br label %bb.ab

bb.ab:                                            ; preds = %.critedge, %_ZN6bufferIP4exprLb0ELj16EED2Ev.exit
  %.042 = phi i32 [ 4, %_ZN6bufferIP4exprLb0ELj16EED2Ev.exit ], [ %i.gq, %.critedge ]
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
  %.pre.i = phi ptr [ %i.a, %.lr.ph.preheader ], [ %i.cp, %.thread74 ] ; 3 uses
  %i.g = phi i32 [ 16, %.lr.ph.preheader ], [ %i.cq, %.thread74 ] ; 5 uses
  %i.h = phi i32 [ 0, %.lr.ph.preheader ], [ %i.cr, %.thread74 ] ; 4 uses
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

bb.c:                                             ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i, %bb.b
  %i.t = load ptr, ptr %5, align 8, !tbaa !126    ; 3 uses
  %.not.i4.i = icmp eq ptr %i.t, null
end_hunk_2
