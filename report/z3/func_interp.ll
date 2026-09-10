Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/func_interp?download=true
inline.NumInlined: 655
inline.NumDeleted: 282
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZNK11func_interp15get_interp_coreEv:bb.a
bb.ae:                                            ; preds = %bb.ad
  %i.ex = landingpad { ptr, i32 }
          catch ptr null
  %i.ey = extractvalue { ptr, i32 } %i.ex, 0
  call void @__clang_call_terminate(ptr %i.ey) #18
  unreachable

_ZN6bufferIP4exprLb0ELj16EED2Ev.exit87:           ; preds = %_ZN11ast_manager5mk_orEP4exprS1_.exit, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.af

bb.af:                                            ; preds = %bb.e, %_ZN6bufferIP4exprLb0ELj16EED2Ev.exit87
  %.248 = phi ptr [ %.147, %_ZN6bufferIP4exprLb0ELj16EED2Ev.exit87 ], [ %.04699, %bb.e ] ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.045100, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ez, %i.n
  br i1 %.not, label %._crit_edge102, label %bb.e

bb.ag:                                            ; preds = %bb.v, %bb.aa, %bb.w, %bb.r
  %.pn54 = phi { ptr, i32 } [ %i.dz, %bb.r ], [ %i.ej, %bb.v ], [ %i.ek, %bb.w ], [ %i.es, %bb.aa ]
  call void @_ZN6bufferIP4exprLb0ELj16EED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.m
  %.pn56 = phi { ptr, i32 } [ %i.bx, %bb.m ], [ %.pn54, %bb.ag ]
  call void @_ZN6bufferIP4exprLb0ELj16EED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %1) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  resume { ptr, i32 } %.pn56

bb.ai:                                            ; preds = %bb.a, %_ZN6bufferIP4exprLb0ELj16EED2Ev.exit
  %.049 = phi ptr [ %.046.lcssa126, %_ZN6bufferIP4exprLb0ELj16EED2Ev.exit ], [ null, %bb.a ]
  ret ptr %.049
}

declare noundef ptr @_Z6mk_andR11ast_managerjPKP4expr(ptr noundef nonnull align 8 dereferenceable(952), i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6bufferIP4exprLb0ELj16EED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !136    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not.i.i = icmp eq ptr %i.a, %i.b
  %i.c = icmp eq ptr %i.a, null
  %or.cond.i.i = or i1 %.not.i.i, %i.c
  br i1 %or.cond.i.i, label %_ZN6bufferIP4exprLb0ELj16EE7destroyEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.a)
          to label %_ZN6bufferIP4exprLb0ELj16EE7destroyEv.exit unwind label %bb.c

_ZN6bufferIP4exprLb0ELj16EE7destroyEv.exit:       ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #18
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK11func_interp21get_array_interp_coreEP9func_decl(ptr dead_on_unwind noalias writable sret(%class.obj_ref) align 8 initializes((0, 16)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1, ptr nofree noundef readonly captures(address) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::allocator", align 1    ; 4 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %class.parameter, align 8           ; 8 uses
  %6 = alloca %class.ptr_vector.47, align 8       ; 10 uses
  %7 = alloca %class.ref_vector.49, align 8       ; 7 uses
  %8 = alloca %class.ref_vector, align 8          ; 7 uses
  %9 = alloca %class.svector.4, align 8           ; 10 uses
  %10 = alloca %class.var_subst, align 8          ; 11 uses
  %11 = alloca %class.obj_ref, align 8            ; 8 uses
  %12 = alloca %class.ref_vector, align 8         ; 8 uses
  %13 = alloca %class.array_util, align 8         ; 8 uses
  %14 = alloca %class.obj_ref.52, align 8         ; 7 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !47, !nonnull !48, !align !49
  store ptr null, ptr %0, align 8, !tbaa !117
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store ptr %i.b, ptr %i.c, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !50   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.db, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  store ptr null, ptr %6, align 8, !tbaa !143
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !250  ; 2 uses
  %i.j = zext i32 %i.i to i64
  %.idx = shl nuw nsw i64 %i.j, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx
  %.not211 = icmp eq i32 %i.i, 0
  br i1 %.not211, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.f
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !50
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.l = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.e, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4
  %i.o = and i32 %i.n, 65535
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.c, label %_Z9is_groundPK4expr.exit

bb.c:                                             ; preds = %._crit_edge
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 30
  %i.r = load i8, ptr %i.q, align 2
  br label %_Z9is_groundPK4expr.exit

.lr.ph:                                           ; preds = %bb.b, %bb.f
  %i.s = phi ptr [ %i.aa, %bb.f ], [ null, %bb.b ] ; 4 uses
  %.065212 = phi ptr [ %i.ag, %bb.f ], [ %i.g, %bb.b ] ; 2 uses
  %i.t = load ptr, ptr %.065212, align 8, !tbaa !144
  %i.u = icmp eq ptr %i.s, null
  br i1 %i.u, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.v = getelementptr inbounds i8, ptr %i.s, i64 -4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !46   ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.s, i64 -8
  %i.y = load i32, ptr %i.x, align 4, !tbaa !46
  %i.z = icmp eq i32 %i.w, %i.y
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %.lr.ph
  invoke void @_ZN6vectorIP4sortLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.e
  %.pre.i = load ptr, ptr %6, align 8, !tbaa !143 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !46
  br label %bb.f

bb.f:                                             ; preds = %.noexc, %bb.d
  %i.aa = phi ptr [ %.pre.i, %.noexc ], [ %i.s, %bb.d ] ; 3 uses
  %i.ab = phi i32 [ %.pre2.i, %.noexc ], [ %i.w, %bb.d ] ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 -4
  %i.ad = zext i32 %i.ab to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ad
  store ptr %i.t, ptr %i.ae, align 8, !tbaa !144
  %i.af = add i32 %i.ab, 1
  store i32 %i.af, ptr %i.ac, align 4, !tbaa !46
  %i.ag = getelementptr inbounds nuw i8, ptr %.065212, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ag, %i.k
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph

bb.g:                                             ; preds = %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

_Z9is_groundPK4expr.exit:                         ; preds = %bb.c, %._crit_edge
  %i.ai = phi i8 [ 0, %._crit_edge ], [ %i.r, %bb.c ] ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !45 ; 7 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %._crit_edge221, label %_ZNK6vectorIP10func_entryLb0EjE3endEv.exit

_ZNK6vectorIP10func_entryLb0EjE3endEv.exit:       ; preds = %_Z9is_groundPK4expr.exit
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 -4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !46 ; 2 uses
  %i.ao = zext i32 %i.an to i64
  %i.ap = shl nuw nsw i64 %i.ao, 3                ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ap ; 2 uses
  %.not70217 = icmp eq i32 %i.an, 0
  br i1 %.not70217, label %._crit_edge221, label %.lr.ph220

.lr.ph220:                                        ; preds = %_ZNK6vectorIP10func_entryLb0EjE3endEv.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !37 ; 4 uses
  %.not234 = icmp eq i32 %i.as, 0
  br i1 %.not234, label %.lr.ph220.split.preheader, label %.lr.ph220.split.us.preheader

.lr.ph220.split.preheader:                        ; preds = %.lr.ph220
  %i.at = add nsw i64 %i.ap, -8                   ; 2 uses
  %i.au = and i64 %i.at, 8
  %lcmp.mod332.not.not = icmp eq i64 %i.au, 0
  br i1 %lcmp.mod332.not.not, label %.lr.ph220.split.prol, label %.lr.ph220.split.prol.loopexit

.lr.ph220.split.prol:                             ; preds = %.lr.ph220.split.preheader
  %i.av = load ptr, ptr %i.ak, align 8, !tbaa !51
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !23 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.az = load i32, ptr %i.ay, align 4
  %i.ba = and i32 %i.az, 65535
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %_Z9is_groundPK4expr.exit90.prol, label %_Z9is_groundPK4expr.exit90.thread.prol

_Z9is_groundPK4expr.exit90.prol:                  ; preds = %.lr.ph220.split.prol
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 30
  %i.bd = load i8, ptr %i.bc, align 2
  %.fr.prol = freeze i8 %i.bd
  %spec.select.prol = and i8 %i.ai, %.fr.prol
  br label %_Z9is_groundPK4expr.exit90.thread.prol

_Z9is_groundPK4expr.exit90.thread.prol:           ; preds = %_Z9is_groundPK4expr.exit90.prol, %.lr.ph220.split.prol
  %i.be = phi i8 [ 0, %.lr.ph220.split.prol ], [ %spec.select.prol, %_Z9is_groundPK4expr.exit90.prol ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  br label %.lr.ph220.split.prol.loopexit

.lr.ph220.split.prol.loopexit:                    ; preds = %_Z9is_groundPK4expr.exit90.thread.prol, %.lr.ph220.split.preheader
  %.lcssa326.unr = phi i8 [ poison, %.lr.ph220.split.preheader ], [ %i.be, %_Z9is_groundPK4expr.exit90.thread.prol ]
  %.046219.unr = phi ptr [ %i.ak, %.lr.ph220.split.preheader ], [ %i.bf, %_Z9is_groundPK4expr.exit90.thread.prol ]
  %.047218.unr = phi i8 [ %i.ai, %.lr.ph220.split.preheader ], [ %i.be, %_Z9is_groundPK4expr.exit90.thread.prol ]
  %i.bg = icmp eq i64 %i.at, 0
  br i1 %i.bg, label %._crit_edge221, label %.lr.ph220.split

.lr.ph220.split.us.preheader:                     ; preds = %.lr.ph220
  %wide.trip.count = zext i32 %i.as to i64        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.bh = icmp eq i32 %i.as, 1
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod330 = trunc i32 %i.as to i1
  br label %.lr.ph220.split.us

.lr.ph220.split.us:                               ; preds = %.lr.ph220.split.us.preheader, %._crit_edge216.us
  %.046219.us = phi ptr [ %i.cu, %._crit_edge216.us ], [ %i.ak, %.lr.ph220.split.us.preheader ] ; 2 uses
  %.047218.us = phi i8 [ %.lcssa328, %._crit_edge216.us ], [ %i.ai, %.lr.ph220.split.us.preheader ]
  %i.bi = load ptr, ptr %.046219.us, align 8, !tbaa !51 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !23 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %i.bm = load i32, ptr %i.bl, align 4
  %i.bn = and i32 %i.bm, 65535
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %_Z9is_groundPK4expr.exit90.us, label %_Z9is_groundPK4expr.exit90.thread.us

_Z9is_groundPK4expr.exit90.us:                    ; preds = %.lr.ph220.split.us
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 30
  %i.bq = load i8, ptr %i.bp, align 2
  %.fr.us = freeze i8 %i.bq
  %spec.select.us = and i8 %.047218.us, %.fr.us
  br label %_Z9is_groundPK4expr.exit90.thread.us

_Z9is_groundPK4expr.exit90.thread.us:             ; preds = %_Z9is_groundPK4expr.exit90.us, %.lr.ph220.split.us
  %i.br = phi i8 [ 0, %.lr.ph220.split.us ], [ %spec.select.us, %_Z9is_groundPK4expr.exit90.us ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 3 uses
  br i1 %i.bh, label %.epil.preheader, label %_Z9is_groundPK4expr.exit90.thread.us.new

_Z9is_groundPK4expr.exit90.thread.us.new:         ; preds = %_Z9is_groundPK4expr.exit90.thread.us, %_Z9is_groundPK4expr.exit91.thread.us.1
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %_Z9is_groundPK4expr.exit91.thread.us.1 ], [ 0, %_Z9is_groundPK4expr.exit90.thread.us ] ; 3 uses
  %.1213.us = phi i8 [ %i.cl, %_Z9is_groundPK4expr.exit91.thread.us.1 ], [ %i.br, %_Z9is_groundPK4expr.exit90.thread.us ]
  %niter = phi i64 [ %niter.next.1, %_Z9is_groundPK4expr.exit91.thread.us.1 ], [ 0, %_Z9is_groundPK4expr.exit90.thread.us ]
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !26 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %i.bw = load i32, ptr %i.bv, align 4
  %i.bx = and i32 %i.bw, 65535
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %_Z9is_groundPK4expr.exit91.us, label %_Z9is_groundPK4expr.exit91.thread.us

_Z9is_groundPK4expr.exit91.us:                    ; preds = %_Z9is_groundPK4expr.exit90.thread.us.new
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 30
  %i.ca = load i8, ptr %i.bz, align 2
  %.fr210.us = freeze i8 %i.ca
  %spec.select209.us = and i8 %.1213.us, %.fr210.us
  br label %_Z9is_groundPK4expr.exit91.thread.us

_Z9is_groundPK4expr.exit91.thread.us:             ; preds = %_Z9is_groundPK4expr.exit91.us, %_Z9is_groundPK4expr.exit90.thread.us.new
  %i.cb = phi i8 [ 0, %_Z9is_groundPK4expr.exit90.thread.us.new ], [ %spec.select209.us, %_Z9is_groundPK4expr.exit91.us ]
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !26 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  %i.cg = load i32, ptr %i.cf, align 4
  %i.ch = and i32 %i.cg, 65535
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %_Z9is_groundPK4expr.exit91.us.1, label %_Z9is_groundPK4expr.exit91.thread.us.1

_Z9is_groundPK4expr.exit91.us.1:                  ; preds = %_Z9is_groundPK4expr.exit91.thread.us
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 30
  %i.ck = load i8, ptr %i.cj, align 2
  %.fr210.us.1 = freeze i8 %i.ck
  %spec.select209.us.1 = and i8 %i.cb, %.fr210.us.1
  br label %_Z9is_groundPK4expr.exit91.thread.us.1

_Z9is_groundPK4expr.exit91.thread.us.1:           ; preds = %_Z9is_groundPK4expr.exit91.us.1, %_Z9is_groundPK4expr.exit91.thread.us
  %i.cl = phi i8 [ 0, %_Z9is_groundPK4expr.exit91.thread.us ], [ %spec.select209.us.1, %_Z9is_groundPK4expr.exit91.us.1 ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge216.us.unr-lcssa, label %_Z9is_groundPK4expr.exit90.thread.us.new, !llvm.loop !244

._crit_edge216.us.unr-lcssa:                      ; preds = %_Z9is_groundPK4expr.exit91.thread.us.1
  br i1 %lcmp.mod.not, label %._crit_edge216.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge216.us.unr-lcssa, %_Z9is_groundPK4expr.exit90.thread.us
  %indvars.iv.epil.init = phi i64 [ 0, %_Z9is_groundPK4expr.exit90.thread.us ], [ %indvars.iv.next.1, %._crit_edge216.us.unr-lcssa ]
  %.1213.us.epil.init = phi i8 [ %i.br, %_Z9is_groundPK4expr.exit90.thread.us ], [ %i.cl, %._crit_edge216.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod330)
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.epil.init
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !26 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  %i.cp = load i32, ptr %i.co, align 4
  %i.cq = and i32 %i.cp, 65535
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %_Z9is_groundPK4expr.exit91.us.epil, label %._crit_edge216.us

_Z9is_groundPK4expr.exit91.us.epil:               ; preds = %.epil.preheader
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 30
  %i.ct = load i8, ptr %i.cs, align 2
  %.fr210.us.epil = freeze i8 %i.ct
  %spec.select209.us.epil = and i8 %.1213.us.epil.init, %.fr210.us.epil
  br label %._crit_edge216.us

._crit_edge216.us:                                ; preds = %.epil.preheader, %_Z9is_groundPK4expr.exit91.us.epil, %._crit_edge216.us.unr-lcssa
  %.lcssa328 = phi i8 [ %i.cl, %._crit_edge216.us.unr-lcssa ], [ 0, %.epil.preheader ], [ %spec.select209.us.epil, %_Z9is_groundPK4expr.exit91.us.epil ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.046219.us, i64 8 ; 2 uses
  %.not70.us = icmp eq ptr %i.cu, %i.aq
  br i1 %.not70.us, label %._crit_edge221, label %.lr.ph220.split.us

._crit_edge221:                                   ; preds = %._crit_edge216.us, %.lr.ph220.split.prol.loopexit, %_Z9is_groundPK4expr.exit90.thread.1, %_Z9is_groundPK4expr.exit, %_ZNK6vectorIP10func_entryLb0EjE3endEv.exit
  %.047.lcssa = phi i8 [ %i.ai, %_ZNK6vectorIP10func_entryLb0EjE3endEv.exit ], [ %i.dr, %_Z9is_groundPK4expr.exit90.thread.1 ], [ %i.ai, %_Z9is_groundPK4expr.exit ], [ %.lcssa326.unr, %.lr.ph220.split.prol.loopexit ], [ %.lcssa328, %._crit_edge216.us ]
  %i.cv = trunc i8 %.047.lcssa to i1
  br i1 %i.cv, label %bb.bc, label %bb.i

bb.h:                                             ; preds = %bb.j
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

.lr.ph220.split:                                  ; preds = %.lr.ph220.split.prol.loopexit, %_Z9is_groundPK4expr.exit90.thread.1
  %.046219 = phi ptr [ %i.ds, %_Z9is_groundPK4expr.exit90.thread.1 ], [ %.046219.unr, %.lr.ph220.split.prol.loopexit ] ; 3 uses
  %.047218 = phi i8 [ %i.dr, %_Z9is_groundPK4expr.exit90.thread.1 ], [ %.047218.unr, %.lr.ph220.split.prol.loopexit ]
  %i.cx = load ptr, ptr %.046219, align 8, !tbaa !51
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !23 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  %i.db = load i32, ptr %i.da, align 4
  %i.dc = and i32 %i.db, 65535
  %i.dd = icmp eq i32 %i.dc, 0
  br i1 %i.dd, label %_Z9is_groundPK4expr.exit90, label %_Z9is_groundPK4expr.exit90.thread

_Z9is_groundPK4expr.exit90:                       ; preds = %.lr.ph220.split
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 30
  %i.df = load i8, ptr %i.de, align 2
  %.fr = freeze i8 %i.df
  %spec.select = and i8 %.047218, %.fr
  br label %_Z9is_groundPK4expr.exit90.thread

_Z9is_groundPK4expr.exit90.thread:                ; preds = %_Z9is_groundPK4expr.exit90, %.lr.ph220.split
  %i.dg = phi i8 [ 0, %.lr.ph220.split ], [ %spec.select, %_Z9is_groundPK4expr.exit90 ]
  %i.dh = getelementptr inbounds nuw i8, ptr %.046219, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !51
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !23 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 4
  %i.dm = load i32, ptr %i.dl, align 4
  %i.dn = and i32 %i.dm, 65535
  %i.do = icmp eq i32 %i.dn, 0
  br i1 %i.do, label %_Z9is_groundPK4expr.exit90.1, label %_Z9is_groundPK4expr.exit90.thread.1

_Z9is_groundPK4expr.exit90.1:                     ; preds = %_Z9is_groundPK4expr.exit90.thread
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 30
  %i.dq = load i8, ptr %i.dp, align 2
  %.fr.1 = freeze i8 %i.dq
  %spec.select.1 = and i8 %i.dg, %.fr.1
  br label %_Z9is_groundPK4expr.exit90.thread.1

_Z9is_groundPK4expr.exit90.thread.1:              ; preds = %_Z9is_groundPK4expr.exit90.1, %_Z9is_groundPK4expr.exit90.thread
  %i.dr = phi i8 [ 0, %_Z9is_groundPK4expr.exit90.thread ], [ %spec.select.1, %_Z9is_groundPK4expr.exit90.1 ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.046219, i64 16 ; 2 uses
  %.not70.1 = icmp eq ptr %i.ds, %i.aq
  br i1 %.not70.1, label %._crit_edge221, label %.lr.ph220.split

bb.i:                                             ; preds = %._crit_edge221
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !52 ; 3 uses
  %.not.i = icmp eq ptr %i.du, null
  br i1 %.not.i, label %bb.j, label %._ZN11ast_manager7inc_refEP3ast.exit.i94_crit_edge

._ZN11ast_manager7inc_refEP3ast.exit.i94_crit_edge: ; preds = %bb.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %.pre246 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !25
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.dv = invoke noundef ptr @_ZNK11func_interp15get_interp_coreEv(ptr noundef nonnull align 8 dereferenceable(72) %1)
          to label %.noexc92 unwind label %bb.h   ; 4 uses

.noexc92:                                         ; preds = %bb.j
  %.not7.i = icmp eq ptr %i.dv, null
  br i1 %.not7.i, label %_ZNK11func_interp10get_interpEv.exit.thread, label %_ZN11ast_manager7inc_refEP3ast.exit.i

_ZNK11func_interp10get_interpEv.exit.thread:      ; preds = %.noexc92
  store ptr null, ptr %0, align 8, !tbaa !117
  br label %bb.cx

_ZN11ast_manager7inc_refEP3ast.exit.i:            ; preds = %.noexc92
  store ptr %i.dv, ptr %i.dt, align 8, !tbaa !52
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8 ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !25
  %i.dy = add i32 %i.dx, 1                        ; 2 uses
  store i32 %i.dy, ptr %i.dw, align 4, !tbaa !25
  br label %bb.k

bb.k:                                             ; preds = %._ZN11ast_manager7inc_refEP3ast.exit.i94_crit_edge, %_ZN11ast_manager7inc_refEP3ast.exit.i
  %i.dz = phi i32 [ %i.dy, %_ZN11ast_manager7inc_refEP3ast.exit.i ], [ %.pre246, %._ZN11ast_manager7inc_refEP3ast.exit.i94_crit_edge ]
  %.0.i.ph = phi ptr [ %i.dv, %_ZN11ast_manager7inc_refEP3ast.exit.i ], [ %i.du, %._ZN11ast_manager7inc_refEP3ast.exit.i94_crit_edge ] ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.0.i.ph, i64 8
  %i.eb = add i32 %i.dz, 1
  store i32 %i.eb, ptr %i.ea, align 4, !tbaa !25
  store ptr %.0.i.ph, ptr %0, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.ec = load ptr, ptr %1, align 8, !tbaa !47, !nonnull !48, !align !49 ; 2 uses
  %i.ed = ptrtoint ptr %i.ec to i64               ; 2 uses
  store i64 %i.ed, ptr %7, align 8, !tbaa !29
  %i.ee = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 7 uses
  store ptr null, ptr %i.ee, align 8, !tbaa !143
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  store i64 %i.ed, ptr %8, align 8, !tbaa !29
  %i.ef = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 7 uses
  store ptr null, ptr %i.ef, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  store ptr null, ptr %9, align 8, !tbaa !145
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV12beta_reducer, i64 16), ptr %10, align 8, !tbaa !77
  %i.eg = getelementptr inbounds nuw i8, ptr %10, i64 536
  invoke void @_ZN12rewriter_tplI16beta_reducer_cfgEC2ER11ast_managerbRS0_(ptr noundef nonnull align 8 dereferenceable(545) %10, ptr noundef nonnull align 8 dereferenceable(952) %i.ec, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %i.eg)
          to label %_ZN9var_substC2ER11ast_managerb.exit unwind label %bb.m

_ZN9var_substC2ER11ast_managerb.exit:             ; preds = %bb.k
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV12beta_reducer, i64 16), ptr %10, align 8, !tbaa !77
  %i.eh = getelementptr inbounds nuw i8, ptr %10, i64 544
  store i8 0, ptr %i.eh, align 8, !tbaa !116
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !37
  %.not235 = icmp eq i32 %i.ej, 0
  br i1 %.not235, label %._crit_edge225, label %.lr.ph224

._crit_edge225:                                   ; preds = %bb.y, %_ZN9var_substC2ER11ast_managerb.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  %i.ek = load ptr, ptr %i.ef, align 8, !tbaa !63, !noalias !251 ; 3 uses
  %i.el = icmp eq ptr %i.ek, null
  br i1 %i.el, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i, label %bb.l

bb.l:                                             ; preds = %._crit_edge225
  %i.em = getelementptr inbounds i8, ptr %i.ek, i64 -4
  %i.en = load i32, ptr %i.em, align 4, !tbaa !46, !noalias !251
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i: ; preds = %bb.l, %._crit_edge225
  %.0.i.i.i = phi i32 [ %i.en, %bb.l ], [ 0, %._crit_edge225 ]
  invoke void @_ZN9var_substclEP4exprjPKS1_(ptr dead_on_unwind nonnull writable sret(%class.obj_ref) align 8 %11, ptr noundef nonnull align 8 dereferenceable(545) %10, ptr noundef nonnull %.0.i.ph, i32 noundef %.0.i.i.i, ptr noundef %i.ek)
          to label %_ZN9var_substclEP4exprRK10ref_vectorIS0_11ast_managerE.exit unwind label %bb.ay

bb.m:                                             ; preds = %bb.k
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

.lr.ph224:                                        ; preds = %_ZN9var_substC2ER11ast_managerb.exit, %bb.y
  %indvars.iv240 = phi i64 [ %indvars.iv.next241, %bb.y ], [ 0, %_ZN9var_substC2ER11ast_managerb.exit ] ; 4 uses
  %i.ep = shl nuw nsw i64 %indvars.iv240, 3
  %i.eq = or disjoint i64 %i.ep, 1
  %i.er = load ptr, ptr %9, align 8, !tbaa !145   ; 4 uses
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph224
  %i.et = getelementptr inbounds i8, ptr %i.er, i64 -4
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !46 ; 2 uses
  %i.ev = getelementptr inbounds i8, ptr %i.er, i64 -8
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !46
  %i.ex = icmp eq i32 %i.eu, %i.ew
  br i1 %i.ex, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n, %.lr.ph224
  invoke void @_ZN6vectorI6symbolLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %.noexc101 unwind label %bb.z

.noexc101:                                        ; preds = %bb.o
  %.pre.i98 = load ptr, ptr %9, align 8, !tbaa !145 ; 2 uses
  %.phi.trans.insert.i99 = getelementptr inbounds i8, ptr %.pre.i98, i64 -4
  %.pre2.i100 = load i32, ptr %.phi.trans.insert.i99, align 4, !tbaa !46
  br label %bb.p

bb.p:                                             ; preds = %.noexc101, %bb.n
  %i.ey = phi i32 [ %.pre2.i100, %.noexc101 ], [ %i.eu, %bb.n ] ; 2 uses
  %i.ez = phi ptr [ %.pre.i98, %.noexc101 ], [ %i.er, %bb.n ] ; 2 uses
  %i.fa = getelementptr inbounds i8, ptr %i.ez, i64 -4
  %i.fb = zext i32 %i.ey to i64
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.fb
  store i64 %i.eq, ptr %i.fc, align 8, !tbaa !252
  %i.fd = add i32 %i.ey, 1
  store i32 %i.fd, ptr %i.fa, align 4, !tbaa !46
  %i.fe = load ptr, ptr %6, align 8, !tbaa !143
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %indvars.iv240
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !144 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.fg, null
  br i1 %.not.i.i.i.i, label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8 ; 2 uses
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !25
  %i.fj = add i32 %i.fi, 1
  store i32 %i.fj, ptr %i.fh, align 4, !tbaa !25
  br label %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i

_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i: ; preds = %bb.q, %bb.p
  %i.fk = load ptr, ptr %i.ee, align 8, !tbaa !143 ; 4 uses
  %i.fl = icmp eq ptr %i.fk, null
  br i1 %i.fl, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.fm = getelementptr inbounds i8, ptr %i.fk, i64 -4
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !46 ; 2 uses
  %i.fo = getelementptr inbounds i8, ptr %i.fk, i64 -8
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !46
  %i.fq = icmp eq i32 %i.fn, %i.fp
  br i1 %i.fq, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r, %_ZN15ref_vector_coreI4sort19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  invoke void @_ZN6vectorIP4sortLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ee)
          to label %.noexc102 unwind label %bb.aa

.noexc102:                                        ; preds = %bb.s
  %.pre.i.i = load ptr, ptr %i.ee, align 8, !tbaa !143 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !46
  br label %bb.t

bb.t:                                             ; preds = %.noexc102, %bb.r
  %i.fr = phi i32 [ %.pre2.i.i, %.noexc102 ], [ %i.fn, %bb.r ] ; 2 uses
  %i.fs = phi ptr [ %.pre.i.i, %.noexc102 ], [ %i.fk, %bb.r ] ; 2 uses
  %i.ft = getelementptr inbounds i8, ptr %i.fs, i64 -4
  %i.fu = zext i32 %i.fr to i64
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %i.fu
  store ptr %i.fg, ptr %i.fv, align 8, !tbaa !144
  %i.fw = add i32 %i.fr, 1
  store i32 %i.fw, ptr %i.ft, align 4, !tbaa !46
  %i.fx = load ptr, ptr %1, align 8, !tbaa !47, !nonnull !48, !align !49
  %i.fy = load i32, ptr %i.ei, align 8, !tbaa !37
  %i.fz = trunc nuw i64 %indvars.iv240 to i32
  %i.ga = xor i32 %i.fz, -1
  %i.gb = add i32 %i.fy, %i.ga
  %i.gc = invoke noundef ptr @_ZN11ast_manager6mk_varEjP4sort(ptr noundef nonnull align 8 dereferenceable(952) %i.fx, i32 noundef %i.gb, ptr noundef %i.fg)
          to label %bb.u unwind label %bb.aa      ; 3 uses

bb.u:                                             ; preds = %bb.t
  %.not.i.i.i.i104 = icmp eq ptr %i.gc, null
  br i1 %.not.i.i.i.i104, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8 ; 2 uses
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !25
  %i.gf = add i32 %i.ge, 1
  store i32 %i.gf, ptr %i.gd, align 4, !tbaa !25
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i: ; preds = %bb.v, %bb.u
  %i.gg = load ptr, ptr %i.ef, align 8, !tbaa !63 ; 4 uses
  %i.gh = icmp eq ptr %i.gg, null
  br i1 %i.gh, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.gi = getelementptr inbounds i8, ptr %i.gg, i64 -4
end_hunk_0
