inline.NumInlined: 451
inline.NumDeleted: 193
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN13ast_fast_markILj1EED2Ev:bb.a
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !12   ; 2 uses
  %i.d = zext i32 %i.c to i64
  %.idx.i = shl nuw nsw i64 %i.d, 3               ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx.i
  %.not8.i = icmp eq i32 %i.c, 0
  br i1 %.not8.i, label %.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.f = add nsw i64 %.idx.i, -8                  ; 2 uses
  %i.g = lshr exact i64 %i.f, 3
  %i.h = add nuw nsw i64 %i.g, 1
  %xtraiter = and i64 %i.h, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.09.i.prol = phi ptr [ %i.m, %.lr.ph.i.prol ], [ %i.a, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.i = load ptr, ptr %.09.i.prol, align 8, !tbaa !19
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4
  %i.l = and i32 %i.k, -65537
  store i32 %i.l, ptr %i.j, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %.09.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !66

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.09.i.unr = phi ptr [ %i.a, %.lr.ph.i.preheader ], [ %i.m, %.lr.ph.i.prol ]
  %i.n = icmp ult i64 %i.f, 24
  br i1 %i.n, label %.loopexit.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.09.i = phi ptr [ %i.ah, %.lr.ph.i ], [ %.09.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.o = load ptr, ptr %.09.i, align 8, !tbaa !19
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4
  %i.r = and i32 %i.q, -65537
  store i32 %i.r, ptr %i.p, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %.09.i, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !19
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4
  %i.w = and i32 %i.v, -65537
  store i32 %i.w, ptr %i.u, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %.09.i, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !19
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = and i32 %i.aa, -65537
  store i32 %i.ab, ptr %i.z, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %.09.i, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !19
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = and i32 %i.af, -65537
  store i32 %i.ag, ptr %i.ae, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %.09.i, i64 32 ; 2 uses
  %.not.i.3 = icmp eq ptr %i.ah, %i.e
  br i1 %.not.i.3, label %.loopexit.loopexit, label %.lr.ph.i

.loopexit.loopexit:                               ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %.pre = load ptr, ptr %0, align 8, !tbaa !18
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.a
  %i.ai = phi ptr [ %.pre, %.loopexit.loopexit ], [ %i.a, %bb.a ] ; 3 uses
  store i32 0, ptr %i.b, align 8, !tbaa !12
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not.i.i.i = icmp eq ptr %i.ai, %i.aj
  %i.ak = icmp eq ptr %i.ai, null
  %or.cond.i.i.i = or i1 %.not.i.i.i, %i.ak
  br i1 %or.cond.i.i.i, label %_ZN6bufferIP3astLb0ELj16EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %.loopexit
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ai)
          to label %_ZN6bufferIP3astLb0ELj16EED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  tail call void @__clang_call_terminate(ptr %i.am) #22
  unreachable

_ZN6bufferIP3astLb0ELj16EED2Ev.exit:              ; preds = %.loopexit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z22get_num_internal_exprsR7svectorIjjER10ptr_vectorI4exprEPS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::allocator", align 1    ; 4 uses
  %i.a = load i32, ptr %2, align 4, !tbaa !67
  %i.b = add i32 %i.a, 1                          ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !68     ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i:                ; preds = %bb.a
  %.not.i = icmp ne i32 %i.b, 0
  tail call void @llvm.assume(i1 %.not.i)
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.preheader

_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i:         ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 -4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !71   ; 2 uses
  %i.g = icmp ugt i32 %i.b, %i.f
  br i1 %i.g, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.preheader, label %_ZN6vectorIjLb0EjE7reserveEj.exit

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.preheader:    ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i
  %.ph93 = phi ptr [ %i.c, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i ], [ null, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i ]
  %.0.i16.i.i.ph = phi i32 [ %i.f, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i ], [ 0, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i ] ; 2 uses
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i:              ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.preheader, %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i
  %i.h = phi ptr [ %.pr.pre.i.i, %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i ], [ %.ph93, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.preheader ] ; 6 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i

_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i:          ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 -8
  %i.k = load i32, ptr %i.j, align 4, !tbaa !71
  %i.l = icmp ugt i32 %i.b, %i.k
  br i1 %i.l, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i, label %bb.b

_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i:   ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i
  tail call void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %.pr.pre.i.i = load ptr, ptr %0, align 8, !tbaa !68
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i, !llvm.loop !72

bb.b:                                             ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i
  %i.m = getelementptr inbounds i8, ptr %i.h, i64 -4
  store i32 %i.b, ptr %i.m, align 4, !tbaa !71
  %.not1218.i.i = icmp eq i32 %.0.i16.i.i.ph, %i.b
  br i1 %.not1218.i.i, label %_ZN6vectorIjLb0EjE7reserveEj.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.b
  %i.n = zext i32 %i.b to i64
  %i.o = zext i32 %.0.i16.i.i.ph to i64           ; 2 uses
  %i.p = getelementptr [4 x i8], ptr %i.h, i64 %i.o
  %i.q = sub nsw i64 %i.n, %i.o
  %i.r = shl nsw i64 %i.q, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %i.r, i1 false), !tbaa !71
  br label %_ZN6vectorIjLb0EjE7reserveEj.exit

_ZN6vectorIjLb0EjE7reserveEj.exit:                ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i, %bb.b, %.lr.ph.preheader.i.i
  %i.s = phi ptr [ %i.h, %.lr.ph.preheader.i.i ], [ %i.c, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i ], [ %i.h, %bb.b ]
  %i.t = load i32, ptr %2, align 4, !tbaa !67
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.u ; 3 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !71   ; 2 uses
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN6vectorIjLb0EjE7reserveEj.exit
  %i.x = add i32 %i.w, -1
  store i32 %i.x, ptr %i.v, align 4, !tbaa !71
  br label %.critedge

bb.d:                                             ; preds = %_ZN6vectorIjLb0EjE7reserveEj.exit
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.z = load i32, ptr %i.y, align 4, !tbaa !10
  %i.aa = add i32 %i.z, -1
  store i32 %i.aa, ptr %i.v, align 4, !tbaa !71
  %i.ab = load ptr, ptr %1, align 8, !tbaa !73    ; 4 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds i8, ptr %i.ab, i64 -4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !71 ; 4 uses
  %i.af = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !71
  %i.ah = icmp eq i32 %i.ae, %i.ag
  br i1 %i.ah, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit33.preheader

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread:      ; preds = %bb.d, %bb.e
  %.0.i62 = phi i32 [ %i.ae, %bb.e ], [ 0, %bb.d ]
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !73  ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !71
  br label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit33.preheader

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit33.preheader: ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread, %bb.e
  %.0.i61 = phi i32 [ %.0.i62, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread ], [ %i.ae, %bb.e ]
  %i.ai = phi i32 [ %.pre2.i, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread ], [ %i.ae, %bb.e ] ; 2 uses
  %i.aj = phi ptr [ %.pre.i, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread ], [ %i.ab, %bb.e ] ; 3 uses
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -4
  %i.al = zext i32 %i.ai to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.al
  store ptr %2, ptr %i.am, align 8, !tbaa !42
  %i.an = add i32 %i.ai, 1
  store i32 %i.an, ptr %i.ak, align 4, !tbaa !71
  br label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit33

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit33:           ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit33.preheader, %.loopexit
  %i.ao = phi ptr [ %i.eb, %.loopexit ], [ %i.aj, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit33.preheader ] ; 4 uses
  %.02665 = phi i32 [ %6, %.loopexit ], [ %.0.i61, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit33.preheader ] ; 3 uses
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !71
  %i.ar = icmp ult i32 %.02665, %i.aq
  br i1 %i.ar, label %bb.f, label %.critedge

bb.f:                                             ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit33
  %5 = zext i32 %.02665 to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %5
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !42 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = and i32 %i.av, 65535
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 32 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !36 ; 2 uses
  %i.bb = zext i32 %i.ba to i64
  %.idx = shl nuw nsw i64 %i.bb, 3
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.idx
  %.not3063 = icmp eq i32 %i.ba, 0
  br i1 %.not3063, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %bb.w
  %.064 = phi ptr [ %i.ea, %bb.w ], [ %i.ay, %bb.g ] ; 2 uses
  %i.bd = load ptr, ptr %.064, align 8, !tbaa !42 ; 3 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !67 ; 2 uses
  %i.bf = add i32 %i.be, 1                        ; 6 uses
  %i.bg = load ptr, ptr %0, align 8, !tbaa !68    ; 4 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i45, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i34

_ZNK6vectorIjLb0EjE4sizeEv.exit.i45:              ; preds = %.lr.ph
  %.not.i46 = icmp ne i32 %i.bf, 0
  tail call void @llvm.assume(i1 %.not.i46)
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i38.preheader

_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i34:       ; preds = %.lr.ph
  %i.bi = getelementptr inbounds i8, ptr %i.bg, i64 -4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !71 ; 2 uses
  %i.bk = icmp ugt i32 %i.bf, %i.bj
  br i1 %i.bk, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i38.preheader, label %_ZN6vectorIjLb0EjE7reserveEj.exit47

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i38.preheader:  ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i45, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i34
  %.ph = phi ptr [ %i.bg, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i34 ], [ null, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i45 ]
  %.0.i16.i.i39.ph = phi i32 [ %i.bj, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i34 ], [ 0, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i45 ] ; 2 uses
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i38

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i38:            ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i38.backedge, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i38.preheader
  %i.bl = phi ptr [ %.ph, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i38.preheader ], [ %.be, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i38.backedge ] ; 7 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %bb.h, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i40

_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i40:        ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i38
  %i.bn = getelementptr inbounds i8, ptr %i.bl, i64 -8
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !71
  %i.bp = icmp ugt i32 %i.bf, %i.bo
  br i1 %i.bp, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i43, label %bb.r

bb.h:                                             ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i38
  %i.bq = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 16) ; 3 uses
  store i32 2, ptr %i.bq, align 4, !tbaa !71
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  store i32 0, ptr %i.br, align 4, !tbaa !71
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  store ptr %i.bs, ptr %0, align 8, !tbaa !68
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i38.backedge

_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i43: ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i40
  %i.bt = getelementptr inbounds i8, ptr %i.bl, i64 -8 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !71 ; 3 uses
  %i.bv = mul i32 %i.bu, 3
  %i.bw = add i32 %i.bv, 1
  %i.bx = lshr i32 %i.bw, 1                       ; 3 uses
  %i.by = shl i32 %i.bx, 2
  %i.bz = add i32 %i.by, 8                        ; 2 uses
  %.not.i52 = icmp ugt i32 %i.bx, %i.bu
  br i1 %.not.i52, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i43
  %i.ca = shl i32 %i.bu, 2
  %i.cb = add i32 %i.ca, 8
  %.not27.i = icmp ugt i32 %i.bz, %i.cb
  br i1 %.not27.i, label %bb.p, label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i43
  %i.cc = tail call ptr @__cxa_allocate_exception(i64 40) #21 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %bb.j
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.cc, align 8, !tbaa !76
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 24 ; 3 uses
  store ptr %i.ce, ptr %i.cd, align 8, !tbaa !78
  %i.cf = load ptr, ptr %3, align 8, !tbaa !80    ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !83 ; 3 uses
  %i.ck = icmp ult i64 %i.cj, 16
  call void @llvm.assume(i1 %i.ck)
  %i.cl = add nuw nsw i64 %i.cj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ce, ptr noundef nonnull align 8 dereferenceable(1) %i.cg, i64 %i.cl, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.k
  store ptr %i.cf, ptr %i.cd, align 8, !tbaa !80
  %i.cm = load i64, ptr %i.cg, align 8, !tbaa !84
  store i64 %i.cm, ptr %i.ce, align 8, !tbaa !84
  %.phi.trans.insert.i53 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre.i54 = load i64, ptr %.phi.trans.insert.i53, align 8, !tbaa !83
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.l
  %i.cn = phi i64 [ %i.cj, %bb.l ], [ %.pre.i54, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store i64 %i.cn, ptr %i.cp, align 8, !tbaa !83
  store ptr %i.cg, ptr %3, align 8, !tbaa !80
  store i64 0, ptr %i.co, align 8, !tbaa !83
  store i8 0, ptr %i.cg, align 8, !tbaa !84
  invoke void @__cxa_throw(ptr nonnull %i.cc, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #23
          to label %bb.q unwind label %bb.m

bb.m:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.cq = landingpad { ptr, i32 }
          cleanup
  %i.cr = load ptr, ptr %3, align 8, !tbaa !80    ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.cg
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i: ; preds = %bb.m
  %i.ct = load i64, ptr %i.cg, align 8, !tbaa !84
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cu) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  %i.cv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @__cxa_free_exception(ptr %i.cc) #21
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn32.i = phi { ptr, i32 } [ %i.cq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.cv, %bb.n ]
  resume { ptr, i32 } %.pn32.i

bb.p:                                             ; preds = %bb.i
  %i.cw = zext i32 %i.bz to i64
  %i.cx = tail call noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.bt, i64 noundef %i.cw) ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8 ; 2 uses
  store ptr %i.cy, ptr %0, align 8, !tbaa !68
  store i32 %i.bx, ptr %i.cx, align 4, !tbaa !71
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i38.backedge

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i38.backedge:   ; preds = %bb.p, %bb.h
  %.be = phi ptr [ %i.bs, %bb.h ], [ %i.cy, %bb.p ]
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i38, !llvm.loop !72

bb.q:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  unreachable

bb.r:                                             ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i40
  %i.cz = getelementptr inbounds i8, ptr %i.bl, i64 -4
  store i32 %i.bf, ptr %i.cz, align 4, !tbaa !71
  %.not1218.i.i41 = icmp eq i32 %.0.i16.i.i39.ph, %i.bf
  br i1 %.not1218.i.i41, label %_ZN6vectorIjLb0EjE7reserveEj.exit47, label %.lr.ph.preheader.i.i42

.lr.ph.preheader.i.i42:                           ; preds = %bb.r
  %i.da = zext i32 %i.bf to i64
  %i.db = zext i32 %.0.i16.i.i39.ph to i64        ; 2 uses
  %i.dc = getelementptr [4 x i8], ptr %i.bl, i64 %i.db
  %i.dd = sub nsw i64 %i.da, %i.db
  %i.de = shl nsw i64 %i.dd, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.dc, i8 0, i64 %i.de, i1 false), !tbaa !71
  br label %_ZN6vectorIjLb0EjE7reserveEj.exit47

_ZN6vectorIjLb0EjE7reserveEj.exit47:              ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i34, %bb.r, %.lr.ph.preheader.i.i42
  %i.df = phi ptr [ %i.bl, %.lr.ph.preheader.i.i42 ], [ %i.bg, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i34 ], [ %i.bl, %bb.r ]
  %i.dg = zext i32 %i.be to i64
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.dg ; 3 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !71 ; 2 uses
  %.not31 = icmp eq i32 %i.di, 0
  br i1 %.not31, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZN6vectorIjLb0EjE7reserveEj.exit47
  %i.dj = add i32 %i.di, -1
  store i32 %i.dj, ptr %i.dh, align 4, !tbaa !71
  br label %bb.w

bb.t:                                             ; preds = %_ZN6vectorIjLb0EjE7reserveEj.exit47
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !10
  %i.dm = add i32 %i.dl, -1
  store i32 %i.dm, ptr %i.dh, align 4, !tbaa !71
  %i.dn = load ptr, ptr %1, align 8, !tbaa !73    ; 4 uses
  %i.do = icmp eq ptr %i.dn, null
  br i1 %i.do, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dp = getelementptr inbounds i8, ptr %i.dn, i64 -4
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !71 ; 2 uses
  %i.dr = getelementptr inbounds i8, ptr %i.dn, i64 -8
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !71
  %i.dt = icmp eq i32 %i.dq, %i.ds
  br i1 %i.dt, label %bb.v, label %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit51

bb.v:                                             ; preds = %bb.u, %bb.t
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %.pre.i48 = load ptr, ptr %1, align 8, !tbaa !73 ; 2 uses
  %.phi.trans.insert.i49 = getelementptr inbounds i8, ptr %.pre.i48, i64 -4
  %.pre2.i50 = load i32, ptr %.phi.trans.insert.i49, align 4, !tbaa !71
  br label %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit51

_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit51:   ; preds = %bb.u, %bb.v
  %i.du = phi i32 [ %.pre2.i50, %bb.v ], [ %i.dq, %bb.u ] ; 2 uses
  %i.dv = phi ptr [ %.pre.i48, %bb.v ], [ %i.dn, %bb.u ] ; 2 uses
  %i.dw = getelementptr inbounds i8, ptr %i.dv, i64 -4
  %i.dx = zext i32 %i.du to i64
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.dx
  store ptr %i.bd, ptr %i.dy, align 8, !tbaa !42
  %i.dz = add i32 %i.du, 1
  store i32 %i.dz, ptr %i.dw, align 4, !tbaa !71
  br label %bb.w

bb.w:                                             ; preds = %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit51, %bb.s
  %i.ea = getelementptr inbounds nuw i8, ptr %.064, i64 8 ; 2 uses
  %.not30 = icmp eq ptr %i.ea, %i.bc
  br i1 %.not30, label %.loopexit.loopexit, label %.lr.ph

.loopexit.loopexit:                               ; preds = %bb.w
  %.pre = load ptr, ptr %1, align 8, !tbaa !73
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.g, %bb.f
  %i.eb = phi ptr [ %.pre, %.loopexit.loopexit ], [ %i.ao, %bb.g ], [ %i.ao, %bb.f ] ; 2 uses
  %6 = add i32 %.02665, 1
  %i.ec = icmp eq ptr %i.eb, null
  br i1 %i.ec, label %.critedge, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit33, !llvm.loop !85

.critedge:                                        ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit33, %.loopexit, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i32 @_Z20count_internal_nodesR7svectorIjjER10ptr_vectorI4exprE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !73     ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZN6vectorIP4exprLb0EjE5resetEv.exit, label %_ZN6vectorIP4exprLb0EjE3endEv.exit

_ZN6vectorIP4exprLb0EjE3endEv.exit:               ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.a, i64 -4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !71   ; 2 uses
  %.not14 = icmp eq i32 %i.d, 0
  br i1 %.not14, label %._crit_edge.thread23, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6vectorIP4exprLb0EjE3endEv.exit
  %i.e = zext i32 %i.d to i64
  %i.f = load ptr, ptr %0, align 8, !tbaa !68     ; 3 uses
  %i.g = add nuw nsw i64 %i.e, 2305843009213693951 ; 2 uses
  %i.h = and i64 %i.g, 2305843009213693951        ; 2 uses
  %i.i = add nuw nsw i64 %i.h, 1                  ; 2 uses
  %i.j = icmp eq i64 %i.h, 0
  br i1 %i.j, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.i, 4611686018427387902
  br label %bb.d

._crit_edge.thread23.loopexit.unr-lcssa:          ; preds = %bb.j
  %i.k = and i64 %i.g, 1
  %lcmp.mod.not.not = icmp eq i64 %i.k, 0
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %._crit_edge.thread23

.epil.preheader:                                  ; preds = %._crit_edge.thread23.loopexit.unr-lcssa, %.lr.ph
  %.016.epil.init = phi ptr [ %i.a, %.lr.ph ], [ %i.ai, %._crit_edge.thread23.loopexit.unr-lcssa ]
  %.01315.epil.init = phi i32 [ 0, %.lr.ph ], [ %.1.1, %._crit_edge.thread23.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod27 = trunc i64 %i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod27)
  %i.l = load ptr, ptr %.016.epil.init, align 8, !tbaa !42
  %i.m = load i32, ptr %i.l, align 4, !tbaa !67
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.n ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !71
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.epil.preheader
  store i32 0, ptr %i.o, align 4, !tbaa !71
  br label %._crit_edge.thread23

bb.c:                                             ; preds = %.epil.preheader
  %i.r = add i32 %.01315.epil.init, 1
  br label %._crit_edge.thread23

._crit_edge.thread23:                             ; preds = %._crit_edge.thread23.loopexit.unr-lcssa, %bb.c, %bb.b, %_ZN6vectorIP4exprLb0EjE3endEv.exit
  %.013.lcssa25 = phi i32 [ 0, %_ZN6vectorIP4exprLb0EjE3endEv.exit ], [ %.1.1, %._crit_edge.thread23.loopexit.unr-lcssa ], [ %i.r, %bb.c ], [ %.01315.epil.init, %bb.b ]
  %i.s = getelementptr inbounds i8, ptr %i.a, i64 -4
  store i32 0, ptr %i.s, align 4, !tbaa !71
  br label %_ZN6vectorIP4exprLb0EjE5resetEv.exit

_ZN6vectorIP4exprLb0EjE5resetEv.exit:             ; preds = %bb.a, %._crit_edge.thread23
  %.013.lcssa22 = phi i32 [ %.013.lcssa25, %._crit_edge.thread23 ], [ 0, %bb.a ]
  ret i32 %.013.lcssa22

bb.d:                                             ; preds = %bb.j, %.lr.ph.new
  %.016 = phi ptr [ %i.a, %.lr.ph.new ], [ %i.ai, %bb.j ] ; 3 uses
  %.01315 = phi i32 [ 0, %.lr.ph.new ], [ %.1.1, %bb.j ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.j ]
  %i.t = load ptr, ptr %.016, align 8, !tbaa !42
  %i.u = load i32, ptr %i.t, align 4, !tbaa !67
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.v ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !71
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = add i32 %.01315, 1
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  store i32 0, ptr %i.w, align 4, !tbaa !71
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1 = phi i32 [ %i.z, %bb.e ], [ %.01315, %bb.f ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.016, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !42
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !67
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ad ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !71
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.ae, align 4, !tbaa !71
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ah = add i32 %.1, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.1.1 = phi i32 [ %i.ah, %bb.i ], [ %.1, %bb.h ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.016, i64 16 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.thread23.loopexit.unr-lcssa, label %bb.d
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_Z20has_skolem_functionsP4expr(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.obj_mark, align 8            ; 7 uses
  %2 = alloca %"struct.has_skolem_functions_ns::proc", align 1 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  invoke void @_Z18for_each_expr_coreIN23has_skolem_functions_ns4procE8obj_markI4expr10bit_vector14default_t2uintIS3_EELb0ELb0EEvRT_RT0_PS3_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %0)
          to label %bb.b unwind label %.body

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !86   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_Z13for_each_exprIN23has_skolem_functions_ns4procEEvRT_P4expr.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.c)
          to label %_Z13for_each_exprIN23has_skolem_functions_ns4procEEvRT_P4expr.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  call void @__clang_call_terminate(ptr %i.f) #22
  unreachable

.body:                                            ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN23has_skolem_functions_ns5foundE ; 3 uses
  call void @_ZN8obj_markI4expr10bit_vector14default_t2uintIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  %i.h = extractvalue { ptr, i32 } %i.g, 1
  %i.i = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN23has_skolem_functions_ns5foundE) #21
  %i.j = icmp eq i32 %i.h, %i.i
  br i1 %i.j, label %bb.e, label %bb.g

_Z13for_each_exprIN23has_skolem_functions_ns4procEEvRT_P4expr.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %bb.f

bb.e:                                             ; preds = %.body
  %i.k = extractvalue { ptr, i32 } %i.g, 0
  %i.l = call ptr @__cxa_begin_catch(ptr %i.k) #21 ; 0 uses
  call void @__cxa_end_catch()
  br label %bb.f

bb.f:                                             ; preds = %_Z13for_each_exprIN23has_skolem_functions_ns4procEEvRT_P4expr.exit, %bb.e
  %.0 = phi i1 [ true, %bb.e ], [ false, %_Z13for_each_exprIN23has_skolem_functions_ns4procEEvRT_P4expr.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret i1 %.0

bb.g:                                             ; preds = %.body
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %i.g
}

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #4

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8subtermsC2ERK10ref_vectorI4expr11ast_managerEbP10ptr_vectorIS1_EP8obj_markIS1_10bit_vector14default_t2uintIS1_EE(ptr noundef nonnull align 8 dereferenceable(40) initializes((0, 1), (8, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i1 noundef zeroext %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i1 %2 to i8
  store i8 %i.a, ptr %0, align 8, !tbaa !88
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !97, !nonnull !98, !align !99
  %i.d = ptrtoint ptr %i.c to i64
  store i64 %i.d, ptr %i.b, align 8, !tbaa !100
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr null, ptr %i.e, align 8, !tbaa !73
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !73   ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_ZN10ref_vectorI4expr11ast_managerEC2ERKS2_.exit, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.i

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i.i: ; preds = %bb.a, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i
end_hunk_0
