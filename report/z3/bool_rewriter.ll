Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/bool_rewriter?download=true
inline.NumInlined: 2334
inline.NumDeleted: 457
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 44
begin_hunk_0_@_ZN13ast_fast_markILj2EED2Ev:bb.a
  %i.i = load ptr, ptr %.09.i.prol, align 8, !tbaa !146
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4
  %i.l = and i32 %i.k, -131073
  store i32 %i.l, ptr %i.j, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %.09.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !274

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.09.i.unr = phi ptr [ %i.a, %.lr.ph.i.preheader ], [ %i.m, %.lr.ph.i.prol ]
  %i.n = icmp ult i64 %i.f, 24
  br i1 %i.n, label %.loopexit.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.09.i = phi ptr [ %i.ah, %.lr.ph.i ], [ %.09.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.o = load ptr, ptr %.09.i, align 8, !tbaa !146
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4
  %i.r = and i32 %i.q, -131073
  store i32 %i.r, ptr %i.p, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %.09.i, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !146
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4
  %i.w = and i32 %i.v, -131073
  store i32 %i.w, ptr %i.u, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %.09.i, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !146
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = and i32 %i.aa, -131073
  store i32 %i.ab, ptr %i.z, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %.09.i, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !146
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = and i32 %i.af, -131073
  store i32 %i.ag, ptr %i.ae, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %.09.i, i64 32 ; 2 uses
  %.not.i.3 = icmp eq ptr %i.ah, %i.e
  br i1 %.not.i.3, label %.loopexit.loopexit, label %.lr.ph.i

.loopexit.loopexit:                               ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %.pre = load ptr, ptr %0, align 8, !tbaa !142
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.a
  %i.ai = phi ptr [ %.pre, %.loopexit.loopexit ], [ %i.a, %bb.a ] ; 3 uses
  store i32 0, ptr %i.b, align 8, !tbaa !143
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
  tail call void @__clang_call_terminate(ptr %i.am) #21
  unreachable

_ZN6bufferIP3astLb0ELj16EED2Ev.exit:              ; preds = %.loopexit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN13ast_fast_markILj1EED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !142    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !143  ; 2 uses
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
  %i.i = load ptr, ptr %.09.i.prol, align 8, !tbaa !146
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4
  %i.l = and i32 %i.k, -65537
  store i32 %i.l, ptr %i.j, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %.09.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !275

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.09.i.unr = phi ptr [ %i.a, %.lr.ph.i.preheader ], [ %i.m, %.lr.ph.i.prol ]
  %i.n = icmp ult i64 %i.f, 24
  br i1 %i.n, label %.loopexit.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.09.i = phi ptr [ %i.ah, %.lr.ph.i ], [ %.09.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.o = load ptr, ptr %.09.i, align 8, !tbaa !146
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4
  %i.r = and i32 %i.q, -65537
  store i32 %i.r, ptr %i.p, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %.09.i, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !146
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4
  %i.w = and i32 %i.v, -65537
  store i32 %i.w, ptr %i.u, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %.09.i, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !146
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = and i32 %i.aa, -65537
  store i32 %i.ab, ptr %i.z, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %.09.i, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !146
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = and i32 %i.af, -65537
  store i32 %i.ag, ptr %i.ae, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %.09.i, i64 32 ; 2 uses
  %.not.i.3 = icmp eq ptr %i.ah, %i.e
  br i1 %.not.i.3, label %.loopexit.loopexit, label %.lr.ph.i

.loopexit.loopexit:                               ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %.pre = load ptr, ptr %0, align 8, !tbaa !142
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.a
  %i.ai = phi ptr [ %.pre, %.loopexit.loopexit ], [ %i.a, %bb.a ] ; 3 uses
  store i32 0, ptr %i.b, align 8, !tbaa !143
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
  tail call void @__clang_call_terminate(ptr %i.am) #21
  unreachable

_ZN6bufferIP3astLb0ELj16EED2Ev.exit:              ; preds = %.loopexit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6bufferIP4exprLb0ELj16EED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !153    ; 3 uses
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
  tail call void @__clang_call_terminate(ptr %i.e) #21
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 0, 6) i32 @_ZN13bool_rewriter16mk_flat_and_coreEjPKP4exprR7obj_refIS0_11ast_managerE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(368) %0, i32 noundef %1, ptr nofree noundef readonly captures(address) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.ptr_buffer, align 8          ; 16 uses
  %.not87 = icmp eq i32 %1, 0
  br i1 %.not87, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNK11ast_manager6is_andEPK4expr.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZNK11ast_manager6is_andEPK4expr.exit.thread ] ; 6 uses
  %i.a = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = and i32 %i.d, 65535
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %_ZNK11ast_manager6is_andEPK4expr.exit.thread

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !133
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !59   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZNK11ast_manager6is_andEPK4expr.exit.thread, label %_ZNK11ast_manager6is_andEPK4expr.exit

_ZNK11ast_manager6is_andEPK4expr.exit:            ; preds = %bb.b
  %i.k = load i32, ptr %i.j, align 8, !tbaa !134
  %i.l = icmp eq i32 %i.k, 0
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.n = load i32, ptr %i.m, align 4
  %i.o = icmp eq i32 %i.n, 5
  %i.p = select i1 %i.l, i1 %i.o, i1 false
  br i1 %i.p, label %bb.c, label %_ZNK11ast_manager6is_andEPK4expr.exit.thread

_ZNK11ast_manager6is_andEPK4expr.exit.thread:     ; preds = %bb.b, %.lr.ph, %_ZNK11ast_manager6is_andEPK4expr.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !276

bb.c:                                             ; preds = %_ZNK11ast_manager6is_andEPK4expr.exit
  %i.q = trunc nuw i64 %indvars.iv to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.r, ptr %4, align 8, !tbaa !153
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 11 uses
  store i32 0, ptr %i.s, align 8, !tbaa !154
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 4 uses
  store i32 16, ptr %i.t, align 4, !tbaa !155
  %.idx.i.i = shl nuw nsw i64 %indvars.iv, 3
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i.i
  %i.v = icmp eq i64 %indvars.iv, 0
  br i1 %i.v, label %_ZN10ptr_bufferI4exprLj16EE6appendEjPKPS0_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %_ZN6bufferIP4exprLb0ELj16EE9push_backERKS1_.exit.i.i
  %.pre.i.i.i = phi ptr [ %.pre.i.i.i103, %_ZN6bufferIP4exprLb0ELj16EE9push_backERKS1_.exit.i.i ], [ %i.r, %bb.c ]
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
  %.not.i.i.i.i38 = icmp eq i32 %i.ad, 0
  %.pre.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !153 ; 10 uses
  br i1 %.not.i.i.i.i38, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc
  %.pre.i.i.i.i150 = ptrtoaddr ptr %.pre.i.i.i.i to i64
  %i.ae = ptrtoaddr ptr %i.ac to i64
  %wide.trip.count.i.i.i.i = zext i32 %i.ad to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.ad, 4
  %i.af = sub i64 %.pre.i.i.i.i150, %i.ae
  %diff.check = icmp ugt i64 %i.af, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i.i, 4294967292 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %index ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i, i64 %index ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %wide.load = load <2 x ptr>, ptr %i.ah, align 8, !tbaa !65
  %wide.load151 = load <2 x ptr>, ptr %i.ai, align 8, !tbaa !65
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store <2 x ptr> %wide.load, ptr %i.ag, align 8, !tbaa !65
  store <2 x ptr> %wide.load151, ptr %i.aj, align 8, !tbaa !65
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !277

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
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !278

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
          to label %.noexc39 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc39:                                         ; preds = %bb.e
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
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge.i.i.i.i, label %scalar.ph, !llvm.loop !279

_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i.i.i:  ; preds = %.noexc39, %._crit_edge.i.i.i.i
  %.pre2.i.i.i = phi i32 [ %i.ad, %._crit_edge.i.i.i.i ], [ %.pre2.pre.i.i.i, %.noexc39 ]
  store ptr %i.ac, ptr %4, align 8, !tbaa !153
  store i32 %i.z, ptr %i.t, align 4, !tbaa !155
  br label %_ZN6bufferIP4exprLb0ELj16EE9push_backERKS1_.exit.i.i

_ZN6bufferIP4exprLb0ELj16EE9push_backERKS1_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i.i.i
  %.pre.i.i.i103 = phi ptr [ %i.ac, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i.i.i ], [ %.pre.i.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.bd = phi i32 [ %i.z, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i.i.i ], [ %i.w, %.lr.ph.i.i ] ; 2 uses
  %i.be = phi i32 [ %.pre2.i.i.i, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i.i.i ], [ %i.x, %.lr.ph.i.i ] ; 2 uses
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i103, i64 %i.bf
  store ptr %i.y, ptr %i.bg, align 8, !tbaa !65
  %i.bh = add i32 %i.be, 1                        ; 3 uses
  store i32 %i.bh, ptr %i.s, align 8, !tbaa !154
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i.i, i64 8 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.u
  br i1 %i.bj, label %_ZN10ptr_bufferI4exprLj16EE6appendEjPKPS0_.exit, label %.lr.ph.i.i

_ZN10ptr_bufferI4exprLj16EE6appendEjPKPS0_.exit:  ; preds = %_ZN6bufferIP4exprLb0ELj16EE9push_backERKS1_.exit.i.i, %bb.c
  %.pre.i109 = phi ptr [ %i.r, %bb.c ], [ %.pre.i.i.i103, %_ZN6bufferIP4exprLb0ELj16EE9push_backERKS1_.exit.i.i ] ; 3 uses
  %i.bk = phi i32 [ 16, %bb.c ], [ %i.bd, %_ZN6bufferIP4exprLb0ELj16EE9push_backERKS1_.exit.i.i ] ; 2 uses
  %i.bl = phi i32 [ 0, %bb.c ], [ %i.bh, %_ZN6bufferIP4exprLb0ELj16EE9push_backERKS1_.exit.i.i ] ; 2 uses
  %i.bm = icmp ugt i32 %1, %i.q
  br i1 %i.bm, label %.lr.ph86, label %._crit_edge

.lr.ph86:                                         ; preds = %_ZN10ptr_bufferI4exprLj16EE6appendEjPKPS0_.exit, %.loopexit
  %.pre.i62 = phi ptr [ %.pre.i62113, %.loopexit ], [ %.pre.i109, %_ZN10ptr_bufferI4exprLj16EE6appendEjPKPS0_.exit ] ; 3 uses
  %i.bn = phi i32 [ %i.fj, %.loopexit ], [ %i.bk, %_ZN10ptr_bufferI4exprLj16EE6appendEjPKPS0_.exit ] ; 5 uses
  %.pre.i107.a = phi ptr [ %.pre.i108, %.loopexit ], [ %.pre.i109, %_ZN10ptr_bufferI4exprLj16EE6appendEjPKPS0_.exit ] ; 2 uses
  %i.bo = phi i32 [ %i.fk, %.loopexit ], [ %i.bk, %_ZN10ptr_bufferI4exprLj16EE6appendEjPKPS0_.exit ] ; 2 uses
  %i.bp = phi i32 [ %i.fl, %.loopexit ], [ %i.bl, %_ZN10ptr_bufferI4exprLj16EE6appendEjPKPS0_.exit ] ; 4 uses
  %indvars.iv98 = phi i64 [ %indvars.iv.next99, %.loopexit ], [ %indvars.iv, %_ZN10ptr_bufferI4exprLj16EE6appendEjPKPS0_.exit ] ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv98
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !65 ; 5 uses
end_hunk_0
begin_hunk_1_@_ZN13bool_rewriter16mk_flat_and_coreEjPKP4exprR7obj_refIS0_11ast_managerE:bb.a
  %or.cond.i.i.i = or i1 %.not.i.i.i44, %i.dg
  br i1 %or.cond.i.i.i, label %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i, label %bb.i

bb.i:                                             ; preds = %._crit_edge.i.i
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %.pre.i.i42)
          to label %.noexc46 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc46:                                         ; preds = %bb.i
  %.pre2.pre.i = load i32, ptr %i.s, align 8, !tbaa !154
  br label %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i

scalar.ph170:                                     ; preds = %scalar.ph170.prol.loopexit, %scalar.ph170
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %scalar.ph170 ], [ %indvars.iv.i.i.unr, %scalar.ph170.prol.loopexit ] ; 6 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv.i.i
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i42, i64 %indvars.iv.i.i
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !65
  store ptr %i.dj, ptr %i.dh, align 8, !tbaa !65
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv.next.i.i
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i42, i64 %indvars.iv.next.i.i
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !65
  store ptr %i.dm, ptr %i.dk, align 8, !tbaa !65
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv.next.i.i.1
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i42, i64 %indvars.iv.next.i.i.1
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !65
  store ptr %i.dp, ptr %i.dn, align 8, !tbaa !65
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv.next.i.i.2
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i42, i64 %indvars.iv.next.i.i.2
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !65
  store ptr %i.ds, ptr %i.dq, align 8, !tbaa !65
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.i.i, label %scalar.ph170, !llvm.loop !282

_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i:      ; preds = %.noexc46, %._crit_edge.i.i
  %.pre2.i = phi i32 [ %i.ct, %._crit_edge.i.i ], [ %.pre2.pre.i, %.noexc46 ]
  store ptr %i.cs, ptr %4, align 8, !tbaa !153
  store i32 %i.cp, ptr %i.t, align 4, !tbaa !155
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph84, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i
  %.pre.i62110 = phi ptr [ %i.cs, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i ], [ %.pre.i62111, %.lr.ph84 ] ; 2 uses
  %i.dt = phi i32 [ %i.cp, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i ], [ %i.cl, %.lr.ph84 ] ; 2 uses
  %.pre.i105 = phi ptr [ %i.cs, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i ], [ %.pre.i, %.lr.ph84 ] ; 3 uses
  %i.du = phi i32 [ %i.cp, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i ], [ %i.cm, %.lr.ph84 ] ; 2 uses
  %i.dv = phi i32 [ %.pre2.i, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i ], [ %i.cn, %.lr.ph84 ] ; 2 uses
  %i.dw = zext i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %.pre.i105, i64 %i.dw
  store ptr %i.co, ptr %i.dx, align 8, !tbaa !65
  %i.dy = add i32 %i.dv, 1                        ; 3 uses
  store i32 %i.dy, ptr %i.s, align 8, !tbaa !154
  %i.dz = getelementptr inbounds nuw i8, ptr %.083, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.dz, %i.ck
  br i1 %.not, label %.loopexit, label %.lr.ph84

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.j, %bb.k, %bb.i, %bb.h, %bb.e, %bb.d, %bb.p, %bb.m, %._crit_edge
  %lpad.loopexit.split-lp191 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6bufferIP4exprLb0ELj16EED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  resume { ptr, i32 } %lpad.loopexit.split-lp191

_ZNK11ast_manager6is_andEPK4expr.exit41.thread:   ; preds = %bb.f, %.lr.ph86, %_ZNK11ast_manager6is_andEPK4expr.exit41
  %.not.i47 = icmp ult i32 %i.bp, %i.bn
  br i1 %.not.i47, label %_ZN6bufferIP4exprLb0ELj16EE9push_backERKS1_.exit65, label %bb.j

bb.j:                                             ; preds = %_ZNK11ast_manager6is_andEPK4expr.exit41.thread
  %i.ea = shl i32 %i.bn, 1                        ; 3 uses
  %i.eb = zext i32 %i.ea to i64
  %i.ec = shl nuw nsw i64 %i.eb, 3
  %i.ed = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.ec)
          to label %.noexc63 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 9 uses

.noexc63:                                         ; preds = %bb.j
  %i.ee = load i32, ptr %i.s, align 8, !tbaa !154 ; 4 uses
  %.not.i.i48 = icmp eq i32 %i.ee, 0
  %.pre.i.i49 = load ptr, ptr %4, align 8, !tbaa !153 ; 10 uses
  br i1 %.not.i.i48, label %._crit_edge.i.i55, label %.lr.ph.i.i50

.lr.ph.i.i50:                                     ; preds = %.noexc63
  %.pre.i.i49153 = ptrtoaddr ptr %.pre.i.i49 to i64
  %i.ef = ptrtoaddr ptr %i.ed to i64
  %wide.trip.count.i.i51 = zext i32 %i.ee to i64  ; 5 uses
  %min.iters.check156 = icmp ult i32 %i.ee, 4
  %i.eg = sub i64 %.pre.i.i49153, %i.ef
  %diff.check154 = icmp ugt i64 %i.eg, -32
  %or.cond183 = select i1 %min.iters.check156, i1 true, i1 %diff.check154
  br i1 %or.cond183, label %scalar.ph155.preheader, label %vector.ph157

vector.ph157:                                     ; preds = %.lr.ph.i.i50
  %n.vec158 = and i64 %wide.trip.count.i.i51, 4294967292 ; 3 uses
  br label %vector.body159

vector.body159:                                   ; preds = %vector.body159, %vector.ph157
  %index160 = phi i64 [ 0, %vector.ph157 ], [ %index.next163, %vector.body159 ] ; 3 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %index160 ; 2 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i49, i64 %index160 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %wide.load161.a = load <2 x ptr>, ptr %i.ei, align 8, !tbaa !65
  %wide.load162 = load <2 x ptr>, ptr %i.ej, align 8, !tbaa !65
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  store <2 x ptr> %wide.load161.a, ptr %i.eh, align 8, !tbaa !65
  store <2 x ptr> %wide.load162, ptr %i.ek, align 8, !tbaa !65
  %index.next163 = add nuw i64 %index160, 4       ; 2 uses
  %i.el = icmp eq i64 %index.next163, %n.vec158
  br i1 %i.el, label %middle.block164, label %vector.body159, !llvm.loop !283

middle.block164:                                  ; preds = %vector.body159
  %cmp.n165 = icmp eq i64 %n.vec158, %wide.trip.count.i.i51
  br i1 %cmp.n165, label %._crit_edge.i.i55, label %scalar.ph155.preheader

scalar.ph155.preheader:                           ; preds = %.lr.ph.i.i50, %middle.block164
  %indvars.iv.i.i52.ph = phi i64 [ 0, %.lr.ph.i.i50 ], [ %n.vec158, %middle.block164 ] ; 3 uses
  %xtraiter199 = and i64 %wide.trip.count.i.i51, 3 ; 2 uses
  %lcmp.mod200.not = icmp eq i64 %xtraiter199, 0
  br i1 %lcmp.mod200.not, label %scalar.ph155.prol.loopexit, label %scalar.ph155.prol

scalar.ph155.prol:                                ; preds = %scalar.ph155.preheader, %scalar.ph155.prol
  %indvars.iv.i.i52.prol = phi i64 [ %indvars.iv.next.i.i53.prol, %scalar.ph155.prol ], [ %indvars.iv.i.i52.ph, %scalar.ph155.preheader ] ; 3 uses
  %prol.iter201 = phi i64 [ %prol.iter201.next, %scalar.ph155.prol ], [ 0, %scalar.ph155.preheader ]
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %indvars.iv.i.i52.prol
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i49, i64 %indvars.iv.i.i52.prol
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !65
  store ptr %i.eo, ptr %i.em, align 8, !tbaa !65
  %indvars.iv.next.i.i53.prol = add nuw nsw i64 %indvars.iv.i.i52.prol, 1 ; 2 uses
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
  %.pre.i108 = phi ptr [ %.pre.i62114, %_ZN6bufferIP4exprLb0ELj16EE9push_backERKS1_.exit65 ], [ %.pre.i107.a, %bb.g ], [ %.pre.i105, %._crit_edge.i ]
  %i.fk = phi i32 [ %i.fe, %_ZN6bufferIP4exprLb0ELj16EE9push_backERKS1_.exit65 ], [ %i.bo, %bb.g ], [ %i.du, %._crit_edge.i ]
  %i.fl = phi i32 [ %i.fi, %_ZN6bufferIP4exprLb0ELj16EE9push_backERKS1_.exit65 ], [ %i.bp, %bb.g ], [ %i.dy, %._crit_edge.i ] ; 2 uses
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next99 to i32
  %exitcond102.not = icmp eq i32 %1, %lftr.wideiv
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
end_hunk_1
begin_hunk_2_@_ZN13bool_rewriter14local_ctx_simpEjPKP4exprR7obj_refIS0_11ast_managerE:bb.a
  %i.mt = and i32 %i.ms, -65537
  store i32 %i.mt, ptr %i.mr, align 4
  %i.mu = getelementptr inbounds nuw i8, ptr %.09.i.i156, i64 24
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !146
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 4 ; 2 uses
  %i.mx = load i32, ptr %i.mw, align 4
  %i.my = and i32 %i.mx, -65537
  store i32 %i.my, ptr %i.mw, align 4
  %i.mz = getelementptr inbounds nuw i8, ptr %.09.i.i156, i64 32 ; 2 uses
  %.not.i.i157.3 = icmp eq ptr %i.mz, %i.lw
  br i1 %.not.i.i157.3, label %.loopexit.loopexit.i158, label %.lr.ph.i.i155

.loopexit.loopexit.i158:                          ; preds = %.lr.ph.i.i155, %.lr.ph.i.i155.prol.loopexit
  %.pre.i159 = load ptr, ptr %7, align 8, !tbaa !142
  br label %.loopexit.i160

.loopexit.i160:                                   ; preds = %.loopexit.loopexit.i158, %_ZN13ast_fast_markILj2EED2Ev.exit
  %i.na = phi ptr [ %.pre.i159, %.loopexit.loopexit.i158 ], [ %i.lt, %_ZN13ast_fast_markILj2EED2Ev.exit ] ; 3 uses
  store i32 0, ptr %i.g, align 8, !tbaa !143
  %.not.i.i.i.i161 = icmp eq ptr %i.na, %i.f
  %i.nb = icmp eq ptr %i.na, null
  %or.cond.i.i.i.i162 = or i1 %.not.i.i.i.i161, %i.nb
  br i1 %or.cond.i.i.i.i162, label %_ZN13ast_fast_markILj1EED2Ev.exit, label %bb.az

bb.az:                                            ; preds = %.loopexit.i160
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.na)
          to label %_ZN13ast_fast_markILj1EED2Ev.exit unwind label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.nc = landingpad { ptr, i32 }
          catch ptr null
  %i.nd = extractvalue { ptr, i32 } %i.nc, 0
  call void @__clang_call_terminate(ptr %i.nd) #21
  unreachable

_ZN13ast_fast_markILj1EED2Ev.exit:                ; preds = %.loopexit.i160, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.ne = load ptr, ptr %6, align 8, !tbaa !126   ; 3 uses
  %.not.i.i163 = icmp eq ptr %i.ne, null
  br i1 %.not.i.i163, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit, label %bb.bb

bb.bb:                                            ; preds = %_ZN13ast_fast_markILj1EED2Ev.exit
  %i.nf = load ptr, ptr %i.e, align 8, !tbaa !127, !nonnull !18, !align !19
  %i.ng = getelementptr inbounds nuw i8, ptr %i.ne, i64 8 ; 2 uses
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !124
  %i.ni = add i32 %i.nh, -1                       ; 2 uses
  store i32 %i.ni, ptr %i.ng, align 4, !tbaa !124
  %i.nj = icmp eq i32 %i.ni, 0
  br i1 %i.nj, label %bb.bc, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit

bb.bc:                                            ; preds = %bb.bb
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.nf, ptr noundef nonnull %i.ne)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.nk = landingpad { ptr, i32 }
          catch ptr null
  %i.nl = extractvalue { ptr, i32 } %i.nk, 0
  call void @__clang_call_terminate(ptr %i.nl) #21
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit:         ; preds = %_ZN13ast_fast_markILj1EED2Ev.exit, %bb.bb, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.nm = load ptr, ptr %i.d, align 8, !tbaa !136 ; 5 uses
  %i.nn = icmp eq ptr %i.nm, null
  br i1 %i.nn, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i164

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i164:        ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit
  %i.no = getelementptr inbounds i8, ptr %i.nm, i64 -4
  %i.np = load i32, ptr %i.no, align 4, !tbaa !137 ; 2 uses
  %i.nq = zext i32 %i.np to i64
  %i.nr = shl nuw nsw i64 %i.nq, 3
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nm, i64 %i.nr
  %.not.i165 = icmp eq i32 %i.np, 0
  br i1 %.not.i165, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i172, label %.lr.ph.i.i166

.lr.ph.i.i166:                                    ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i164, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i169
  %.06.i.i167 = phi ptr [ %i.nz, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i169 ], [ %i.nm, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i164 ] ; 2 uses
  %i.nt = load ptr, ptr %.06.i.i167, align 8, !tbaa !65 ; 3 uses
  %i.nu = load ptr, ptr %5, align 8, !tbaa !156, !nonnull !18, !align !19
  %.not.i.i.i.i.i168 = icmp eq ptr %i.nt, null
  br i1 %.not.i.i.i.i.i168, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i169, label %bb.be

bb.be:                                            ; preds = %.lr.ph.i.i166
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nt, i64 8 ; 2 uses
  %i.nw = load i32, ptr %i.nv, align 4, !tbaa !124
  %i.nx = add i32 %i.nw, -1                       ; 2 uses
  store i32 %i.nx, ptr %i.nv, align 4, !tbaa !124
  %i.ny = icmp eq i32 %i.nx, 0
  br i1 %i.ny, label %bb.bf, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i169

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.nu, ptr noundef nonnull %i.nt)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i169 unwind label %bb.bh

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i169: ; preds = %bb.bf, %bb.be, %.lr.ph.i.i166
  %i.nz = getelementptr inbounds nuw i8, ptr %.06.i.i167, i64 8 ; 2 uses
  %i.oa = icmp ult ptr %i.nz, %i.ns
  br i1 %i.oa, label %.lr.ph.i.i166, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i170, !llvm.loop !1

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i170: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i169
  %.pre.i171 = load ptr, ptr %i.d, align 8, !tbaa !136 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pre.i171, null
  br i1 %.not.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i172

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i172: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i170, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i164
  %i.ob = phi ptr [ %.pre.i171, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i170 ], [ %i.nm, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i164 ]
  %i.oc = getelementptr inbounds i8, ptr %i.ob, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.oc)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit unwind label %bb.bg

bb.bg:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i172
  %i.od = landingpad { ptr, i32 }
          catch ptr null
  %i.oe = extractvalue { ptr, i32 } %i.od, 0
  call void @__clang_call_terminate(ptr %i.oe) #21
  unreachable

bb.bh:                                            ; preds = %bb.bf
  %i.of = landingpad { ptr, i32 }
          catch ptr null
  %i.og = extractvalue { ptr, i32 } %i.of, 0
  call void @__clang_call_terminate(ptr %i.og) #21
  unreachable

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit: ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i170, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i172
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.oh = icmp eq ptr %i.n, null
  br i1 %i.oh, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit183, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i173

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i173:        ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit
  %i.oi = getelementptr inbounds i8, ptr %i.n, i64 -4
  %i.oj = load i32, ptr %i.oi, align 4, !tbaa !137 ; 2 uses
  %i.ok = zext i32 %i.oj to i64
  %i.ol = shl nuw nsw i64 %i.ok, 3
  %i.om = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ol
  %.not.i174 = icmp eq i32 %i.oj, 0
  br i1 %.not.i174, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i182, label %.lr.ph.i.i175

.lr.ph.i.i175:                                    ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i173, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i178
  %.06.i.i176 = phi ptr [ %i.os, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i178 ], [ %i.n, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i173 ] ; 2 uses
  %i.on = load ptr, ptr %.06.i.i176, align 8, !tbaa !65 ; 3 uses
  %.not.i.i.i.i.i177 = icmp eq ptr %i.on, null
  br i1 %.not.i.i.i.i.i177, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i178, label %bb.bi

bb.bi:                                            ; preds = %.lr.ph.i.i175
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 8 ; 2 uses
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !124
  %i.oq = add i32 %i.op, -1                       ; 2 uses
  store i32 %i.oq, ptr %i.oo, align 4, !tbaa !124
  %i.or = icmp eq i32 %i.oq, 0
  br i1 %i.or, label %bb.bj, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i178

bb.bj:                                            ; preds = %bb.bi
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.a, ptr noundef nonnull %i.on)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i178 unwind label %bb.bl

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i178: ; preds = %bb.bj, %bb.bi, %.lr.ph.i.i175
  %i.os = getelementptr inbounds nuw i8, ptr %.06.i.i176, i64 8 ; 2 uses
  %i.ot = icmp ult ptr %i.os, %i.om
  br i1 %i.ot, label %.lr.ph.i.i175, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i179, !llvm.loop !1

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i179: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i178
  %.pre.i180 = load ptr, ptr %i.c, align 8, !tbaa !136 ; 2 uses
  %.not.i.i.i181 = icmp eq ptr %.pre.i180, null
  br i1 %.not.i.i.i181, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit183, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i182

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i182: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i179, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i173
  %i.ou = phi ptr [ %.pre.i180, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i179 ], [ %i.n, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i173 ]
  %i.ov = getelementptr inbounds i8, ptr %i.ou, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ov)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit183 unwind label %bb.bk

bb.bk:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i182
  %i.ow = landingpad { ptr, i32 }
          catch ptr null
  %i.ox = extractvalue { ptr, i32 } %i.ow, 0
  call void @__clang_call_terminate(ptr %i.ox) #21
  unreachable

bb.bl:                                            ; preds = %bb.bj
  %i.oy = landingpad { ptr, i32 }
          catch ptr null
  %i.oz = extractvalue { ptr, i32 } %i.oy, 0
  call void @__clang_call_terminate(ptr %i.oz) #21
  unreachable

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit183: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i179, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i182
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  ret i1 %.8100
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 4, 6) i32 @_ZN13bool_rewriter15mk_flat_or_coreEjPKP4exprR7obj_refIS0_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(368) %0, i32 noundef %1, ptr nofree noundef readonly captures(address) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.ptr_buffer, align 8          ; 20 uses
  %.not105 = icmp eq i32 %1, 0
  br i1 %.not105, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %1 to i64
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
  %or.cond180.a = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond180.a, label %scalar.ph.preheader, label %vector.ph

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
end_hunk_2
begin_hunk_3_@_ZN13bool_rewriter15mk_flat_or_coreEjPKP4exprR7obj_refIS0_11ast_managerE:bb.a
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
  %wide.load159.a = load <2 x ptr>, ptr %i.eg, align 8, !tbaa !65
  %wide.load160 = load <2 x ptr>, ptr %i.eh, align 8, !tbaa !65
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  store <2 x ptr> %wide.load159.a, ptr %i.ef, align 8, !tbaa !65
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
  %i.fj = and i1 %.038102, %i.fi
  br label %.loopexit

.loopexit:                                        ; preds = %bb.j, %bb.m, %bb.o, %bb.g
  %.139 = phi i1 [ %i.fj, %bb.o ], [ false, %bb.g ], [ %.038102, %bb.m ], [ false, %bb.j ] ; 2 uses
  %.137 = phi ptr [ %i.bo, %bb.o ], [ %.036103, %bb.g ], [ %i.bo, %bb.m ], [ %.036103, %bb.j ]
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next117 to i32
  %exitcond119.not = icmp eq i32 %1, %lftr.wideiv
  br i1 %exitcond119.not, label %._crit_edge.loopexit, label %.lr.ph104, !llvm.loop !325

._crit_edge.loopexit:                             ; preds = %.loopexit
  %.pre123.a = load i32, ptr %i.s, align 8, !tbaa !154
  %.pre124 = load ptr, ptr %4, align 8, !tbaa !153
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN10ptr_bufferI4exprLj16EE6appendEjPKPS0_.exit
  %i.fk = phi ptr [ %i.bk, %_ZN10ptr_bufferI4exprLj16EE6appendEjPKPS0_.exit ], [ %.pre124, %._crit_edge.loopexit ]
  %i.fl = phi i32 [ %i.bl, %_ZN10ptr_bufferI4exprLj16EE6appendEjPKPS0_.exit ], [ %.pre123.a, %._crit_edge.loopexit ]
  %.038.lcssa = phi i1 [ true, %_ZN10ptr_bufferI4exprLj16EE6appendEjPKPS0_.exit ], [ %.139, %._crit_edge.loopexit ]
  %i.fm = invoke noundef i32 @_ZN13bool_rewriter16mk_nflat_or_coreEjPKP4exprR7obj_refIS0_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(368) %0, i32 noundef %i.fl, ptr noundef %i.fk, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %._crit_edge
  %i.fn = icmp eq i32 %i.fm, 5
  br i1 %i.fn, label %bb.q, label %bb.y

bb.q:                                             ; preds = %bb.p
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !46, !range !66, !noundef !18
  %i.fq = trunc nuw i8 %i.fp to i1
  %.not = xor i1 %i.fq, true
  %or.cond = select i1 %.not, i1 true, i1 %.038.lcssa
  br i1 %or.cond, label %_ZSt11stable_sortIPP4expr6ast_ltEvT_S4_T0_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fr = load ptr, ptr %4, align 8, !tbaa !153   ; 2 uses
  %i.fs = load i32, ptr %i.s, align 8, !tbaa !154
  %i.ft = zext i32 %i.fs to i64
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.ft
  invoke void @_ZSt13__stable_sortIPP4exprN9__gnu_cxx5__ops15_Iter_comp_iterI6ast_ltEEEvT_S8_T0_(ptr noundef %i.fr, ptr noundef %i.fu)
          to label %_ZSt11stable_sortIPP4expr6ast_ltEvT_S4_T0_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.l, %bb.k, %bb.n, %bb.h, %bb.i, %bb.e, %bb.d, %bb.x, %bb.u, %bb.r, %._crit_edge
  %lpad.loopexit.split-lp187 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6bufferIP4exprLb0ELj16EED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  resume { ptr, i32 } %lpad.loopexit.split-lp187

_ZSt11stable_sortIPP4expr6ast_ltEvT_S4_T0_.exit:  ; preds = %bb.r, %bb.q
  %i.fv = load i32, ptr %i.s, align 8, !tbaa !154 ; 2 uses
  %i.fw = load ptr, ptr %4, align 8, !tbaa !153   ; 2 uses
  switch i32 %i.fv, label %bb.u [
    i32 0, label %bb.s
    i32 1, label %bb.t
  ]

bb.s:                                             ; preds = %_ZSt11stable_sortIPP4expr6ast_ltEvT_S4_T0_.exit
  %i.fx = load ptr, ptr %0, align 8, !tbaa !67, !nonnull !18, !align !19
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 840
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !123
  br label %_ZN13bool_rewriter9mk_or_appEjPKP4expr.exit

bb.t:                                             ; preds = %_ZSt11stable_sortIPP4expr6ast_ltEvT_S4_T0_.exit
  %i.ga = load ptr, ptr %i.fw, align 8, !tbaa !65
  br label %_ZN13bool_rewriter9mk_or_appEjPKP4expr.exit

bb.u:                                             ; preds = %_ZSt11stable_sortIPP4expr6ast_ltEvT_S4_T0_.exit
  %i.gb = load ptr, ptr %0, align 8, !tbaa !67, !nonnull !18, !align !19
  %i.gc = invoke noundef ptr @_ZN11ast_manager6mk_appEiijPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.gb, i32 noundef 0, i32 noundef 6, i32 noundef %i.fv, ptr noundef %i.fw)
          to label %_ZN13bool_rewriter9mk_or_appEjPKP4expr.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN13bool_rewriter9mk_or_appEjPKP4expr.exit:      ; preds = %bb.t, %bb.s, %bb.u
  %.0.i = phi ptr [ %i.ga, %bb.t ], [ %i.fz, %bb.s ], [ %i.gc, %bb.u ] ; 3 uses
  %.not.i79 = icmp eq ptr %.0.i, null
  br i1 %.not.i79, label %bb.v, label %_ZN11ast_manager7inc_refEP3ast.exit.i

_ZN11ast_manager7inc_refEP3ast.exit.i:            ; preds = %_ZN13bool_rewriter9mk_or_appEjPKP4expr.exit
  %i.gd = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 2 uses
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !124
  %i.gf = add i32 %i.ge, 1
  store i32 %i.gf, ptr %i.gd, align 4, !tbaa !124
  br label %bb.v

bb.v:                                             ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i, %_ZN13bool_rewriter9mk_or_appEjPKP4expr.exit
  %i.gg = load ptr, ptr %3, align 8, !tbaa !126   ; 3 uses
  %.not.i4.i = icmp eq ptr %i.gg, null
  br i1 %.not.i4.i, label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gh = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !127, !nonnull !18, !align !19
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gg, i64 8 ; 2 uses
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !124
  %i.gl = add i32 %i.gk, -1                       ; 2 uses
  store i32 %i.gl, ptr %i.gj, align 4, !tbaa !124
  %i.gm = icmp eq i32 %i.gl, 0
  br i1 %i.gm, label %bb.x, label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.gi, ptr noundef nonnull %i.gg)
          to label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit:      ; preds = %bb.x, %bb.v, %bb.w
  store ptr %.0.i, ptr %3, align 8, !tbaa !126
  br label %bb.y

bb.y:                                             ; preds = %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit, %bb.p
  %i.gn = load ptr, ptr %4, align 8, !tbaa !153   ; 3 uses
  %.not.i.i.i81 = icmp eq ptr %i.gn, %i.r
  %i.go = icmp eq ptr %i.gn, null
  %or.cond.i.i.i82 = or i1 %.not.i.i.i81, %i.go
  br i1 %or.cond.i.i.i82, label %_ZN6bufferIP4exprLb0ELj16EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.gn)
          to label %_ZN6bufferIP4exprLb0ELj16EED2Ev.exit unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gp = landingpad { ptr, i32 }
          catch ptr null
  %i.gq = extractvalue { ptr, i32 } %i.gp, 0
  call void @__clang_call_terminate(ptr %i.gq) #21
  unreachable

_ZN6bufferIP4exprLb0ELj16EED2Ev.exit:             ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.ab

.critedge:                                        ; preds = %_ZNK11ast_manager5is_orEPK4expr.exit.thread, %bb.a
  %i.gr = tail call noundef i32 @_ZN13bool_rewriter16mk_nflat_or_coreEjPKP4exprR7obj_refIS0_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(368) %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br label %bb.ab

bb.ab:                                            ; preds = %.critedge, %_ZN6bufferIP4exprLb0ELj16EED2Ev.exit
  %.042 = phi i32 [ 4, %_ZN6bufferIP4exprLb0ELj16EED2Ev.exit ], [ %i.gr, %.critedge ]
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
end_hunk_3
