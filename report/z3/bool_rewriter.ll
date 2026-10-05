Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/bool_rewriter?download=true
inline.NumInlined: 2334
inline.NumDeleted: 457
loop-unroll.NumRuntimeUnrolled: 46
loop-unroll.NumUnrolled: 46
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
  %.not82 = icmp eq i32 %1, 0
  br i1 %.not82, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %1 to i64           ; 2 uses
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
  %.pre.i.i.i = phi ptr [ %.pre.i.i.i92, %_ZN6bufferIP4exprLb0ELj16EE9push_backERKS1_.exit.i.i ], [ %i.r, %bb.c ]
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
          to label %.noexc unwind label %.loopexit74 ; 9 uses

.noexc:                                           ; preds = %bb.d
  %i.ad = load i32, ptr %i.s, align 8, !tbaa !154 ; 4 uses
  %.not.i.i.i.i38 = icmp eq i32 %i.ad, 0
  %.pre.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !153 ; 10 uses
  br i1 %.not.i.i.i.i38, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc
  %.pre.i.i.i.i134 = ptrtoaddr ptr %.pre.i.i.i.i to i64
  %i.ae = ptrtoaddr ptr %i.ac to i64
  %wide.trip.count.i.i.i.i = zext i32 %i.ad to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.ad, 4
  %i.af = sub i64 %.pre.i.i.i.i134, %i.ae
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
  %wide.load135 = load <2 x ptr>, ptr %i.ai, align 8, !tbaa !65
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store <2 x ptr> %wide.load, ptr %i.ag, align 8, !tbaa !65
  store <2 x ptr> %wide.load135, ptr %i.aj, align 8, !tbaa !65
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
          to label %.noexc39 unwind label %.loopexit74

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
  %.pre.i.i.i92 = phi ptr [ %i.ac, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i.i.i ], [ %.pre.i.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.bd = phi i32 [ %i.z, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i.i.i ], [ %i.w, %.lr.ph.i.i ] ; 2 uses
  %i.be = phi i32 [ %.pre2.i.i.i, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i.i.i ], [ %i.x, %.lr.ph.i.i ] ; 2 uses
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i92, i64 %i.bf
  store ptr %i.y, ptr %i.bg, align 8, !tbaa !65
  %i.bh = add i32 %i.be, 1                        ; 3 uses
  store i32 %i.bh, ptr %i.s, align 8, !tbaa !154
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i.i, i64 8 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.u
  br i1 %i.bj, label %_ZN10ptr_bufferI4exprLj16EE6appendEjPKPS0_.exit, label %.lr.ph.i.i

_ZN10ptr_bufferI4exprLj16EE6appendEjPKPS0_.exit:  ; preds = %_ZN6bufferIP4exprLb0ELj16EE9push_backERKS1_.exit.i.i, %bb.c
  %.pre.i98 = phi ptr [ %i.r, %bb.c ], [ %.pre.i.i.i92, %_ZN6bufferIP4exprLb0ELj16EE9push_backERKS1_.exit.i.i ] ; 3 uses
  %i.bk = phi i32 [ 16, %bb.c ], [ %i.bd, %_ZN6bufferIP4exprLb0ELj16EE9push_backERKS1_.exit.i.i ] ; 2 uses
  %i.bl = phi i32 [ 0, %bb.c ], [ %i.bh, %_ZN6bufferIP4exprLb0ELj16EE9push_backERKS1_.exit.i.i ] ; 2 uses
  %i.bm = icmp ugt i32 %1, %i.q
  br i1 %i.bm, label %.lr.ph81, label %._crit_edge

.lr.ph81:                                         ; preds = %_ZN10ptr_bufferI4exprLj16EE6appendEjPKPS0_.exit, %.loopexit
  %.pre.i62 = phi ptr [ %.pre.i62102, %.loopexit ], [ %.pre.i98, %_ZN10ptr_bufferI4exprLj16EE6appendEjPKPS0_.exit ] ; 3 uses
  %i.bn = phi i32 [ %i.fl, %.loopexit ], [ %i.bk, %_ZN10ptr_bufferI4exprLj16EE6appendEjPKPS0_.exit ] ; 5 uses
  %.pre.i96.a = phi ptr [ %.pre.i97, %.loopexit ], [ %.pre.i98, %_ZN10ptr_bufferI4exprLj16EE6appendEjPKPS0_.exit ] ; 2 uses
  %i.bo = phi i32 [ %i.fm, %.loopexit ], [ %i.bk, %_ZN10ptr_bufferI4exprLj16EE6appendEjPKPS0_.exit ] ; 2 uses
  %i.bp = phi i32 [ %i.fn, %.loopexit ], [ %i.bl, %_ZN10ptr_bufferI4exprLj16EE6appendEjPKPS0_.exit ] ; 4 uses
  %indvars.iv87 = phi i64 [ %indvars.iv.next88, %.loopexit ], [ %indvars.iv, %_ZN10ptr_bufferI4exprLj16EE6appendEjPKPS0_.exit ] ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv87
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !65 ; 5 uses
end_hunk_0
begin_hunk_1_@_ZN13bool_rewriter16mk_flat_and_coreEjPKP4exprR7obj_refIS0_11ast_managerE:bb.a
  %.not.i.i.i44 = icmp eq ptr %.pre.i.i42, %i.r
  %i.dh = icmp eq ptr %.pre.i.i42, null
  %or.cond.i.i.i = or i1 %.not.i.i.i44, %i.dh
  br i1 %or.cond.i.i.i, label %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i, label %bb.j

bb.j:                                             ; preds = %._crit_edge.i.i
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %.pre.i.i42)
          to label %.noexc46 unwind label %bb.k

.noexc46:                                         ; preds = %bb.j
  %.pre2.pre.i = load i32, ptr %i.s, align 8, !tbaa !154
  br label %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i

scalar.ph154:                                     ; preds = %scalar.ph154.prol.loopexit, %scalar.ph154
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %scalar.ph154 ], [ %indvars.iv.i.i.unr, %scalar.ph154.prol.loopexit ] ; 6 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv.i.i
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i42, i64 %indvars.iv.i.i
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !65
  store ptr %i.dk, ptr %i.di, align 8, !tbaa !65
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv.next.i.i
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i42, i64 %indvars.iv.next.i.i
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !65
  store ptr %i.dn, ptr %i.dl, align 8, !tbaa !65
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv.next.i.i.1
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i42, i64 %indvars.iv.next.i.i.1
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !65
  store ptr %i.dq, ptr %i.do, align 8, !tbaa !65
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv.next.i.i.2
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i42, i64 %indvars.iv.next.i.i.2
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !65
  store ptr %i.dt, ptr %i.dr, align 8, !tbaa !65
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.i.i, label %scalar.ph154, !llvm.loop !282

_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i:      ; preds = %.noexc46, %._crit_edge.i.i
  %.pre2.i = phi i32 [ %i.cu, %._crit_edge.i.i ], [ %.pre2.pre.i, %.noexc46 ]
  store ptr %i.ct, ptr %4, align 8, !tbaa !153
  store i32 %i.cq, ptr %i.t, align 4, !tbaa !155
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph79, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i
  %.pre.i6299 = phi ptr [ %i.ct, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i ], [ %.pre.i62100, %.lr.ph79 ] ; 2 uses
  %i.du = phi i32 [ %i.cq, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i ], [ %i.cm, %.lr.ph79 ] ; 2 uses
  %.pre.i94 = phi ptr [ %i.ct, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i ], [ %.pre.i, %.lr.ph79 ] ; 3 uses
  %i.dv = phi i32 [ %i.cq, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i ], [ %i.cn, %.lr.ph79 ] ; 2 uses
  %i.dw = phi i32 [ %.pre2.i, %_ZN6bufferIP4exprLb0ELj16EE6expandEv.exit.i ], [ %i.co, %.lr.ph79 ] ; 2 uses
  %i.dx = zext i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %.pre.i94, i64 %i.dx
  store ptr %i.cp, ptr %i.dy, align 8, !tbaa !65
  %i.dz = add i32 %i.dw, 1                        ; 3 uses
  store i32 %i.dz, ptr %i.s, align 8, !tbaa !154
  %i.ea = getelementptr inbounds nuw i8, ptr %.078, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ea, %i.ck
  br i1 %.not, label %.loopexit, label %.lr.ph79

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

_ZNK11ast_manager6is_andEPK4expr.exit41.thread:   ; preds = %bb.f, %.lr.ph81, %_ZNK11ast_manager6is_andEPK4expr.exit41
  %.not.i47 = icmp ult i32 %i.bp, %i.bn
  br i1 %.not.i47, label %_ZN6bufferIP4exprLb0ELj16EE9push_backERKS1_.exit65, label %bb.l

bb.l:                                             ; preds = %_ZNK11ast_manager6is_andEPK4expr.exit41.thread
  %i.ec = shl i32 %i.bn, 1                        ; 3 uses
  %i.ed = zext i32 %i.ec to i64
  %i.ee = shl nuw nsw i64 %i.ed, 3
  %i.ef = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.ee)
          to label %.noexc63 unwind label %bb.h   ; 9 uses

.noexc63:                                         ; preds = %bb.l
  %i.eg = load i32, ptr %i.s, align 8, !tbaa !154 ; 4 uses
  %.not.i.i48 = icmp eq i32 %i.eg, 0
  %.pre.i.i49 = load ptr, ptr %4, align 8, !tbaa !153 ; 10 uses
  br i1 %.not.i.i48, label %._crit_edge.i.i55, label %.lr.ph.i.i50

.lr.ph.i.i50:                                     ; preds = %.noexc63
  %.pre.i.i49137 = ptrtoaddr ptr %.pre.i.i49 to i64
  %i.eh = ptrtoaddr ptr %i.ef to i64
  %wide.trip.count.i.i51 = zext i32 %i.eg to i64  ; 5 uses
  %min.iters.check140 = icmp ult i32 %i.eg, 4
  %i.ei = sub i64 %.pre.i.i49137, %i.eh
  %diff.check138 = icmp ugt i64 %i.ei, -32
  %or.cond167 = select i1 %min.iters.check140, i1 true, i1 %diff.check138
  br i1 %or.cond167, label %scalar.ph139.preheader, label %vector.ph141

vector.ph141:                                     ; preds = %.lr.ph.i.i50
  %n.vec142 = and i64 %wide.trip.count.i.i51, 4294967292 ; 3 uses
  br label %vector.body143

vector.body143:                                   ; preds = %vector.body143, %vector.ph141
  %index144 = phi i64 [ 0, %vector.ph141 ], [ %index.next147, %vector.body143 ] ; 3 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %index144 ; 2 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i49, i64 %index144 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %wide.load145.a = load <2 x ptr>, ptr %i.ek, align 8, !tbaa !65
  %wide.load146 = load <2 x ptr>, ptr %i.el, align 8, !tbaa !65
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  store <2 x ptr> %wide.load145.a, ptr %i.ej, align 8, !tbaa !65
  store <2 x ptr> %wide.load146, ptr %i.em, align 8, !tbaa !65
  %index.next147 = add nuw i64 %index144, 4       ; 2 uses
  %i.en = icmp eq i64 %index.next147, %n.vec142
  br i1 %i.en, label %middle.block148, label %vector.body143, !llvm.loop !283

middle.block148:                                  ; preds = %vector.body143
  %cmp.n149 = icmp eq i64 %n.vec142, %wide.trip.count.i.i51
  br i1 %cmp.n149, label %._crit_edge.i.i55, label %scalar.ph139.preheader

scalar.ph139.preheader:                           ; preds = %.lr.ph.i.i50, %middle.block148
  %indvars.iv.i.i52.ph = phi i64 [ 0, %.lr.ph.i.i50 ], [ %n.vec142, %middle.block148 ] ; 3 uses
  %xtraiter177 = and i64 %wide.trip.count.i.i51, 3 ; 2 uses
  %lcmp.mod178.not = icmp eq i64 %xtraiter177, 0
  br i1 %lcmp.mod178.not, label %scalar.ph139.prol.loopexit, label %scalar.ph139.prol

scalar.ph139.prol:                                ; preds = %scalar.ph139.preheader, %scalar.ph139.prol
  %indvars.iv.i.i52.prol = phi i64 [ %indvars.iv.next.i.i53.prol, %scalar.ph139.prol ], [ %indvars.iv.i.i52.ph, %scalar.ph139.preheader ] ; 3 uses
  %prol.iter179 = phi i64 [ %prol.iter179.next, %scalar.ph139.prol ], [ 0, %scalar.ph139.preheader ]
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %indvars.iv.i.i52.prol
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i49, i64 %indvars.iv.i.i52.prol
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !65
  store ptr %i.eq, ptr %i.eo, align 8, !tbaa !65
  %indvars.iv.next.i.i53.prol = add nuw nsw i64 %indvars.iv.i.i52.prol, 1 ; 2 uses
  %prol.iter179.next = add i64 %prol.iter179, 1   ; 2 uses
  %prol.iter179.cmp.not = icmp eq i64 %prol.iter179.next, %xtraiter177
  br i1 %prol.iter179.cmp.not, label %scalar.ph139.prol.loopexit, label %scalar.ph139.prol, !llvm.loop !284

scalar.ph139.prol.loopexit:                       ; preds = %scalar.ph139.prol, %scalar.ph139.preheader
  %indvars.iv.i.i52.unr = phi i64 [ %indvars.iv.i.i52.ph, %scalar.ph139.preheader ], [ %indvars.iv.next.i.i53.prol, %scalar.ph139.prol ]
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
  %.pre.i97 = phi ptr [ %.pre.i62103, %_ZN6bufferIP4exprLb0ELj16EE9push_backERKS1_.exit65 ], [ %.pre.i96.a, %bb.g ], [ %.pre.i94, %._crit_edge.i ]
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
end_hunk_1
begin_hunk_2_@_ZN13bool_rewriter14local_ctx_simpEjPKP4exprR7obj_refIS0_11ast_managerE:bb.a
  br label %.loopexit.i160

.loopexit.i160:                                   ; preds = %.loopexit.loopexit.i158, %_ZN13ast_fast_markILj2EED2Ev.exit
  %i.ne = phi ptr [ %.pre.i159, %.loopexit.loopexit.i158 ], [ %i.lx, %_ZN13ast_fast_markILj2EED2Ev.exit ] ; 3 uses
  store i32 0, ptr %i.g, align 8, !tbaa !143
  %.not.i.i.i.i161 = icmp eq ptr %i.ne, %i.f
  %i.nf = icmp eq ptr %i.ne, null
  %or.cond.i.i.i.i162 = or i1 %.not.i.i.i.i161, %i.nf
  br i1 %or.cond.i.i.i.i162, label %_ZN13ast_fast_markILj1EED2Ev.exit, label %bb.bd

bb.bd:                                            ; preds = %.loopexit.i160
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ne)
          to label %_ZN13ast_fast_markILj1EED2Ev.exit unwind label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ng = landingpad { ptr, i32 }
          catch ptr null
  %i.nh = extractvalue { ptr, i32 } %i.ng, 0
  call void @__clang_call_terminate(ptr %i.nh) #21
  unreachable

_ZN13ast_fast_markILj1EED2Ev.exit:                ; preds = %.loopexit.i160, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.ni = load ptr, ptr %6, align 8, !tbaa !126   ; 3 uses
  %.not.i.i163 = icmp eq ptr %i.ni, null
  br i1 %.not.i.i163, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit, label %bb.bf

bb.bf:                                            ; preds = %_ZN13ast_fast_markILj1EED2Ev.exit
  %i.nj = load ptr, ptr %i.e, align 8, !tbaa !127, !nonnull !18, !align !19
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ni, i64 8 ; 2 uses
  %i.nl = load i32, ptr %i.nk, align 4, !tbaa !124
  %i.nm = add i32 %i.nl, -1                       ; 2 uses
  store i32 %i.nm, ptr %i.nk, align 4, !tbaa !124
  %i.nn = icmp eq i32 %i.nm, 0
  br i1 %i.nn, label %bb.bg, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit

bb.bg:                                            ; preds = %bb.bf
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.nj, ptr noundef nonnull %i.ni)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.no = landingpad { ptr, i32 }
          catch ptr null
  %i.np = extractvalue { ptr, i32 } %i.no, 0
  call void @__clang_call_terminate(ptr %i.np) #21
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit:         ; preds = %_ZN13ast_fast_markILj1EED2Ev.exit, %bb.bf, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  %i.nq = load ptr, ptr %i.d, align 8, !tbaa !136 ; 5 uses
  %i.nr = icmp eq ptr %i.nq, null
  br i1 %i.nr, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i164

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i164:        ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit
  %i.ns = getelementptr inbounds i8, ptr %i.nq, i64 -4
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !137 ; 2 uses
  %i.nu = zext i32 %i.nt to i64
  %i.nv = shl nuw nsw i64 %i.nu, 3
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nq, i64 %i.nv
  %.not.i165 = icmp eq i32 %i.nt, 0
  br i1 %.not.i165, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i172, label %.lr.ph.i.i166

.lr.ph.i.i166:                                    ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i164, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i169
  %.06.i.i167 = phi ptr [ %i.od, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i169 ], [ %i.nq, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i164 ] ; 2 uses
  %i.nx = load ptr, ptr %.06.i.i167, align 8, !tbaa !65 ; 3 uses
  %i.ny = load ptr, ptr %5, align 8, !tbaa !156, !nonnull !18, !align !19
  %.not.i.i.i.i.i168 = icmp eq ptr %i.nx, null
  br i1 %.not.i.i.i.i.i168, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i169, label %bb.bi

bb.bi:                                            ; preds = %.lr.ph.i.i166
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nx, i64 8 ; 2 uses
  %i.oa = load i32, ptr %i.nz, align 4, !tbaa !124
  %i.ob = add i32 %i.oa, -1                       ; 2 uses
  store i32 %i.ob, ptr %i.nz, align 4, !tbaa !124
  %i.oc = icmp eq i32 %i.ob, 0
  br i1 %i.oc, label %bb.bj, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i169

bb.bj:                                            ; preds = %bb.bi
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ny, ptr noundef nonnull %i.nx)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i169 unwind label %bb.bl

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i169: ; preds = %bb.bj, %bb.bi, %.lr.ph.i.i166
  %i.od = getelementptr inbounds nuw i8, ptr %.06.i.i167, i64 8 ; 2 uses
  %i.oe = icmp ult ptr %i.od, %i.nw
  br i1 %i.oe, label %.lr.ph.i.i166, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i170, !llvm.loop !1

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i170: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i169
  %.pre.i171 = load ptr, ptr %i.d, align 8, !tbaa !136 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pre.i171, null
  br i1 %.not.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i172

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i172: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i170, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i164
  %i.of = phi ptr [ %.pre.i171, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i170 ], [ %i.nq, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i164 ]
  %i.og = getelementptr inbounds i8, ptr %i.of, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.og)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit unwind label %bb.bk

bb.bk:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i172
  %i.oh = landingpad { ptr, i32 }
          catch ptr null
  %i.oi = extractvalue { ptr, i32 } %i.oh, 0
  call void @__clang_call_terminate(ptr %i.oi) #21
  unreachable

bb.bl:                                            ; preds = %bb.bj
  %i.oj = landingpad { ptr, i32 }
          catch ptr null
  %i.ok = extractvalue { ptr, i32 } %i.oj, 0
  call void @__clang_call_terminate(ptr %i.ok) #21
  unreachable

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit: ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i170, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i172
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.ol = icmp eq ptr %i.n, null
  br i1 %i.ol, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit183, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i173

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i173:        ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit
  %i.om = getelementptr inbounds i8, ptr %i.n, i64 -4
  %i.on = load i32, ptr %i.om, align 4, !tbaa !137 ; 2 uses
  %i.oo = zext i32 %i.on to i64
  %i.op = shl nuw nsw i64 %i.oo, 3
  %i.oq = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.op
  %.not.i174 = icmp eq i32 %i.on, 0
  br i1 %.not.i174, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i182, label %.lr.ph.i.i175

.lr.ph.i.i175:                                    ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i173, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i178
  %.06.i.i176 = phi ptr [ %i.ow, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i178 ], [ %i.n, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i173 ] ; 2 uses
  %i.or = load ptr, ptr %.06.i.i176, align 8, !tbaa !65 ; 3 uses
  %.not.i.i.i.i.i177 = icmp eq ptr %i.or, null
  br i1 %.not.i.i.i.i.i177, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i178, label %bb.bm

bb.bm:                                            ; preds = %.lr.ph.i.i175
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 8 ; 2 uses
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !124
  %i.ou = add i32 %i.ot, -1                       ; 2 uses
  store i32 %i.ou, ptr %i.os, align 4, !tbaa !124
  %i.ov = icmp eq i32 %i.ou, 0
  br i1 %i.ov, label %bb.bn, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i178

bb.bn:                                            ; preds = %bb.bm
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.a, ptr noundef nonnull %i.or)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i178 unwind label %bb.bp

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i178: ; preds = %bb.bn, %bb.bm, %.lr.ph.i.i175
  %i.ow = getelementptr inbounds nuw i8, ptr %.06.i.i176, i64 8 ; 2 uses
  %i.ox = icmp ult ptr %i.ow, %i.oq
  br i1 %i.ox, label %.lr.ph.i.i175, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i179, !llvm.loop !1

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i179: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i178
  %.pre.i180 = load ptr, ptr %i.c, align 8, !tbaa !136 ; 2 uses
  %.not.i.i.i181 = icmp eq ptr %.pre.i180, null
  br i1 %.not.i.i.i181, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit183, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i182

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i182: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i179, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i173
  %i.oy = phi ptr [ %.pre.i180, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i179 ], [ %i.n, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i173 ]
  %i.oz = getelementptr inbounds i8, ptr %i.oy, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.oz)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit183 unwind label %bb.bo

bb.bo:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i182
  %i.pa = landingpad { ptr, i32 }
          catch ptr null
  %i.pb = extractvalue { ptr, i32 } %i.pa, 0
  call void @__clang_call_terminate(ptr %i.pb) #21
  unreachable

bb.bp:                                            ; preds = %bb.bn
  %i.pc = landingpad { ptr, i32 }
          catch ptr null
  %i.pd = extractvalue { ptr, i32 } %i.pc, 0
  call void @__clang_call_terminate(ptr %i.pd) #21
  unreachable

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit183: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i179, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i182
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  ret i1 %.8100

bb.bq:                                            ; preds = %.loopexit227, %.loopexit.split-lp228, %.loopexit224, %.loopexit.split-lp, %bb.av, %bb.am, %bb.t, %bb.ba
  %.pn110 = phi { ptr, i32 } [ %i.kl, %bb.ba ], [ %i.cw, %bb.t ], [ %i.gc, %bb.am ], [ %i.gt, %bb.av ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit224 ], [ %lpad.loopexit229, %.loopexit227 ], [ %lpad.loopexit.split-lp230, %.loopexit.split-lp228 ]
  call void @_ZN13ast_fast_markILj2EED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @_ZN13ast_fast_markILj1EED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  resume { ptr, i32 } %.pn110
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 4, 6) i32 @_ZN13bool_rewriter15mk_flat_or_coreEjPKP4exprR7obj_refIS0_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(368) %0, i32 noundef %1, ptr nofree noundef readonly captures(address) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
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
  %or.cond164.a = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond164.a, label %scalar.ph.preheader, label %vector.ph

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
end_hunk_2
begin_hunk_3_@_ZN13bool_rewriter15mk_flat_or_coreEjPKP4exprR7obj_refIS0_11ast_managerE:bb.a
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
  %wide.load143.a = load <2 x ptr>, ptr %i.ei, align 8, !tbaa !65
  %wide.load144 = load <2 x ptr>, ptr %i.ej, align 8, !tbaa !65
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  store <2 x ptr> %wide.load143.a, ptr %i.eh, align 8, !tbaa !65
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
  %i.fl = and i1 %.03897, %i.fk
  br label %.loopexit

.loopexit:                                        ; preds = %bb.k, %bb.o, %bb.q, %bb.g
  %.139 = phi i1 [ %i.fl, %bb.q ], [ false, %bb.g ], [ %.03897, %bb.o ], [ false, %bb.k ] ; 2 uses
  %.137 = phi ptr [ %i.bo, %bb.q ], [ %.03698, %bb.g ], [ %i.bo, %bb.o ], [ %.03698, %bb.k ]
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1 ; 2 uses
  %exitcond108.not = icmp eq i64 %indvars.iv.next106, %wide.trip.count
  br i1 %exitcond108.not, label %._crit_edge.loopexit, label %.lr.ph99, !llvm.loop !325

._crit_edge.loopexit:                             ; preds = %.loopexit
  %.pre112.a = load i32, ptr %i.s, align 8, !tbaa !154
  %.pre113 = load ptr, ptr %4, align 8, !tbaa !153
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN10ptr_bufferI4exprLj16EE6appendEjPKPS0_.exit
  %i.fm = phi ptr [ %i.bk, %_ZN10ptr_bufferI4exprLj16EE6appendEjPKPS0_.exit ], [ %.pre113, %._crit_edge.loopexit ]
  %i.fn = phi i32 [ %i.bl, %_ZN10ptr_bufferI4exprLj16EE6appendEjPKPS0_.exit ], [ %.pre112.a, %._crit_edge.loopexit ]
  %.038.lcssa = phi i1 [ true, %_ZN10ptr_bufferI4exprLj16EE6appendEjPKPS0_.exit ], [ %.139, %._crit_edge.loopexit ]
  %i.fo = invoke noundef i32 @_ZN13bool_rewriter16mk_nflat_or_coreEjPKP4exprR7obj_refIS0_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(368) %0, i32 noundef %i.fn, ptr noundef %i.fm, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.r unwind label %.loopexit.split-lp

bb.r:                                             ; preds = %._crit_edge
  %i.fp = icmp eq i32 %i.fo, 5
  br i1 %i.fp, label %bb.s, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !46, !range !66, !noundef !18
  %i.fs = trunc nuw i8 %i.fr to i1
  %.not = xor i1 %i.fs, true
  %or.cond = select i1 %.not, i1 true, i1 %.038.lcssa
  br i1 %or.cond, label %_ZSt11stable_sortIPP4expr6ast_ltEvT_S4_T0_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ft = load ptr, ptr %4, align 8, !tbaa !153   ; 2 uses
  %i.fu = load i32, ptr %i.s, align 8, !tbaa !154
  %i.fv = zext i32 %i.fu to i64
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %i.fv
  invoke void @_ZSt13__stable_sortIPP4exprN9__gnu_cxx5__ops15_Iter_comp_iterI6ast_ltEEEvT_S8_T0_(ptr noundef %i.ft, ptr noundef %i.fw)
          to label %_ZSt11stable_sortIPP4expr6ast_ltEvT_S4_T0_.exit unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

_ZSt11stable_sortIPP4expr6ast_ltEvT_S4_T0_.exit:  ; preds = %bb.t, %bb.s
  %i.fy = load i32, ptr %i.s, align 8, !tbaa !154 ; 2 uses
  %i.fz = load ptr, ptr %4, align 8, !tbaa !153   ; 2 uses
  switch i32 %i.fy, label %bb.x [
    i32 0, label %bb.v
    i32 1, label %bb.w
  ]

bb.v:                                             ; preds = %_ZSt11stable_sortIPP4expr6ast_ltEvT_S4_T0_.exit
  %i.ga = load ptr, ptr %0, align 8, !tbaa !67, !nonnull !18, !align !19
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 840
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !123
  br label %_ZN13bool_rewriter9mk_or_appEjPKP4expr.exit

bb.w:                                             ; preds = %_ZSt11stable_sortIPP4expr6ast_ltEvT_S4_T0_.exit
  %i.gd = load ptr, ptr %i.fz, align 8, !tbaa !65
  br label %_ZN13bool_rewriter9mk_or_appEjPKP4expr.exit

bb.x:                                             ; preds = %_ZSt11stable_sortIPP4expr6ast_ltEvT_S4_T0_.exit
  %i.ge = load ptr, ptr %0, align 8, !tbaa !67, !nonnull !18, !align !19
  %i.gf = invoke noundef ptr @_ZN11ast_manager6mk_appEiijPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.ge, i32 noundef 0, i32 noundef 6, i32 noundef %i.fy, ptr noundef %i.fz)
          to label %_ZN13bool_rewriter9mk_or_appEjPKP4expr.exit unwind label %.loopexit.split-lp

_ZN13bool_rewriter9mk_or_appEjPKP4expr.exit:      ; preds = %bb.w, %bb.v, %bb.x
  %.0.i = phi ptr [ %i.gd, %bb.w ], [ %i.gc, %bb.v ], [ %i.gf, %bb.x ] ; 3 uses
  %.not.i79 = icmp eq ptr %.0.i, null
  br i1 %.not.i79, label %bb.y, label %_ZN11ast_manager7inc_refEP3ast.exit.i

_ZN11ast_manager7inc_refEP3ast.exit.i:            ; preds = %_ZN13bool_rewriter9mk_or_appEjPKP4expr.exit
  %i.gg = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 2 uses
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !124
  %i.gi = add i32 %i.gh, 1
  store i32 %i.gi, ptr %i.gg, align 4, !tbaa !124
  br label %bb.y

bb.y:                                             ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i, %_ZN13bool_rewriter9mk_or_appEjPKP4expr.exit
  %i.gj = load ptr, ptr %3, align 8, !tbaa !126   ; 3 uses
  %.not.i4.i = icmp eq ptr %i.gj, null
  br i1 %.not.i4.i, label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gk = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !127, !nonnull !18, !align !19
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gj, i64 8 ; 2 uses
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !124
  %i.go = add i32 %i.gn, -1                       ; 2 uses
  store i32 %i.go, ptr %i.gm, align 4, !tbaa !124
  %i.gp = icmp eq i32 %i.go, 0
  br i1 %i.gp, label %bb.aa, label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.gl, ptr noundef nonnull %i.gj)
          to label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit unwind label %.loopexit.split-lp

_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit:      ; preds = %bb.aa, %bb.y, %bb.z
  store ptr %.0.i, ptr %3, align 8, !tbaa !126
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit, %bb.r
  %i.gq = load ptr, ptr %4, align 8, !tbaa !153   ; 3 uses
  %.not.i.i.i81 = icmp eq ptr %i.gq, %i.r
  %i.gr = icmp eq ptr %i.gq, null
  %or.cond.i.i.i82 = or i1 %.not.i.i.i81, %i.gr
  br i1 %or.cond.i.i.i82, label %_ZN6bufferIP4exprLb0ELj16EED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.gq)
          to label %_ZN6bufferIP4exprLb0ELj16EED2Ev.exit unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gs = landingpad { ptr, i32 }
          catch ptr null
  %i.gt = extractvalue { ptr, i32 } %i.gs, 0
  call void @__clang_call_terminate(ptr %i.gt) #21
  unreachable

_ZN6bufferIP4exprLb0ELj16EED2Ev.exit:             ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.af

bb.ae:                                            ; preds = %.loopexit88, %.loopexit.split-lp, %bb.h, %bb.l, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %i.fx, %bb.u ], [ %i.ci, %bb.h ], [ %i.dx, %bb.l ], [ %lpad.loopexit, %.loopexit88 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN6bufferIP4exprLb0ELj16EED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  resume { ptr, i32 } %.pn.pn

.critedge:                                        ; preds = %_ZNK11ast_manager5is_orEPK4expr.exit.thread, %bb.a
  %i.gu = tail call noundef i32 @_ZN13bool_rewriter16mk_nflat_or_coreEjPKP4exprR7obj_refIS0_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(368) %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br label %bb.af

bb.af:                                            ; preds = %.critedge, %_ZN6bufferIP4exprLb0ELj16EED2Ev.exit
  %.042 = phi i32 [ 4, %_ZN6bufferIP4exprLb0ELj16EED2Ev.exit ], [ %i.gu, %.critedge ]
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
end_hunk_3
