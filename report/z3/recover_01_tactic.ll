Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/recover_01_tactic?download=true
inline.NumInlined: 786
inline.NumDeleted: 413
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN17recover_01_tactic3imp7processEP9func_declR10ptr_vectorI3appE:bb.a

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !132  ; 2 uses
  %i.f = add i32 %i.e, -1
  %i.g = zext i32 %i.f to i64
  br label %_ZNK6vectorIP3appLb0EjE4sizeEv.exit

_ZNK6vectorIP3appLb0EjE4sizeEv.exit:              ; preds = %._ZNK6vectorIP3appLb0EjE4sizeEv.exit_crit_edge, %bb.b
  %i.h = phi i32 [ %i.e, %bb.b ], [ %.pre, %._ZNK6vectorIP3appLb0EjE4sizeEv.exit_crit_edge ]
  %.0.i.i = phi i64 [ %i.g, %bb.b ], [ 4294967295, %._ZNK6vectorIP3appLb0EjE4sizeEv.exit_crit_edge ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.0.i.i
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !133
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !159  ; 3 uses
  %i.m = add i32 %i.l, -1                         ; 3 uses
  %i.n = shl nuw i32 1, %i.m                      ; 7 uses
  %i.o = icmp ult i32 %i.h, %i.n
  br i1 %i.o, label %bb.bv, label %bb.c

bb.c:                                             ; preds = %_ZNK6vectorIP3appLb0EjE4sizeEv.exit
  %i.p = tail call noundef ptr @_ZN17recover_01_tactic3imp13find_zero_clsEP9func_declR10ptr_vectorI3appE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.bv, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.r, ptr %3, align 8, !tbaa !162
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i32 0, ptr %i.s, align 8, !tbaa !165
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  store i32 16, ptr %i.t, align 4, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.u, ptr %4, align 8, !tbaa !167
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  store i32 0, ptr %i.v, align 8, !tbaa !170
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 16, ptr %i.w, align 4, !tbaa !171
  br label %bb.d

bb.d:                                             ; preds = %_ZN6bufferIbLb1ELj16EE9push_backERKb.exit.i, %.preheader.i
  %.pre.i.i = phi ptr [ %i.r, %.preheader.i ], [ %.pre.i.i181, %_ZN6bufferIbLb1ELj16EE9push_backERKb.exit.i ]
  %i.x = phi i32 [ 16, %.preheader.i ], [ %i.bg, %_ZN6bufferIbLb1ELj16EE9push_backERKb.exit.i ] ; 3 uses
  %i.y = phi i32 [ 0, %.preheader.i ], [ %i.bk, %_ZN6bufferIbLb1ELj16EE9push_backERKb.exit.i ] ; 2 uses
  %.01320.i = phi i32 [ 0, %.preheader.i ], [ %i.bl, %_ZN6bufferIbLb1ELj16EE9push_backERKb.exit.i ]
  %.not.i.i = icmp ult i32 %i.y, %i.x
  br i1 %.not.i.i, label %_ZN6bufferIbLb1ELj16EE9push_backERKb.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = shl i32 %i.x, 1                          ; 3 uses
  %i.aa = zext i32 %i.z to i64
  %i.ab = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.aa)
          to label %.noexc unwind label %bb.j     ; 10 uses

.noexc:                                           ; preds = %bb.e
  %i.ac = load i32, ptr %i.s, align 8, !tbaa !165 ; 5 uses
  %.not.i.i.i = icmp eq i32 %i.ac, 0
  %.pre.i.i.i = load ptr, ptr %3, align 8, !tbaa !162 ; 11 uses
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %iter.check

iter.check:                                       ; preds = %.noexc
  %.pre.i.i.i234 = ptrtoaddr ptr %.pre.i.i.i to i64
  %i.ad = ptrtoaddr ptr %i.ab to i64
  %wide.trip.count.i.i.i = zext i32 %i.ac to i64  ; 8 uses
  %min.iters.check = icmp ult i32 %i.ac, 4
  %i.ae = sub i64 %.pre.i.i.i234, %i.ad
  %diff.check = icmp ugt i64 %i.ae, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check235 = icmp ult i32 %i.ac, 32
  br i1 %min.iters.check235, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.af = and i64 %wide.trip.count.i.i.i, 28
  %n.vec = and i64 %wide.trip.count.i.i.i, 4294967264 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 %index ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 %index ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %wide.load = load <16 x i8>, ptr %i.ah, align 1, !tbaa !172
  %wide.load236 = load <16 x i8>, ptr %i.ai, align 1, !tbaa !172
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store <16 x i8> %wide.load, ptr %i.ag, align 1, !tbaa !172
  store <16 x i8> %wide.load236, ptr %i.aj, align 1, !tbaa !172
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !173

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.af, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !174

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec237 = and i64 %wide.trip.count.i.i.i, 4294967292 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index238 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next240, %vec.epilog.vector.body ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 %index238
  %i.am = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 %index238
  %wide.load239 = load <4 x i8>, ptr %i.am, align 1, !tbaa !172
  store <4 x i8> %wide.load239, ptr %i.al, align 1, !tbaa !172
  %index.next240 = add nuw i64 %index238, 4       ; 2 uses
  %i.an = icmp eq i64 %index.next240, %n.vec237
  br i1 %i.an, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !175

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n241 = icmp eq i64 %n.vec237, %wide.trip.count.i.i.i
  br i1 %cmp.n241, label %._crit_edge.i.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec237, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 %indvars.iv.i.i.i.prol
  %i.ap = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 %indvars.iv.i.i.i.prol
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !172, !range !111, !noundef !43
  store i8 %i.aq, ptr %i.ao, align 1, !tbaa !172
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !176

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.ar = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.as = icmp ugt i64 %i.ar, -4
  br i1 %i.as, label %._crit_edge.i.i.i, label %vec.epilog.scalar.ph

._crit_edge.i.i.i:                                ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.noexc
  %.not.i.i.i.i = icmp eq ptr %.pre.i.i.i, %i.r
  %i.at = icmp eq ptr %.pre.i.i.i, null
  %or.cond.i.i.i.i = or i1 %.not.i.i.i.i, %i.at
  br i1 %or.cond.i.i.i.i, label %_ZN6bufferIbLb1ELj16EE6expandEv.exit.i.i, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i.i
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %.pre.i.i.i)
          to label %.noexc100 unwind label %bb.j

.noexc100:                                        ; preds = %bb.f
  %.pre2.pre.i.i = load i32, ptr %i.s, align 8, !tbaa !165
  br label %_ZN6bufferIbLb1ELj16EE6expandEv.exit.i.i

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %vec.epilog.scalar.ph ], [ %indvars.iv.i.i.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ab, i64 %indvars.iv.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 %indvars.iv.i.i.i
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !172, !range !111, !noundef !43
  store i8 %i.aw, ptr %i.au, align 1, !tbaa !172
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ab, i64 %indvars.iv.next.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !172, !range !111, !noundef !43
  store i8 %i.az, ptr %i.ax, align 1, !tbaa !172
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ab, i64 %indvars.iv.next.i.i.i.1
  %i.bb = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !172, !range !111, !noundef !43
  store i8 %i.bc, ptr %i.ba, align 1, !tbaa !172
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ab, i64 %indvars.iv.next.i.i.i.2
  %i.be = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !172, !range !111, !noundef !43
  store i8 %i.bf, ptr %i.bd, align 1, !tbaa !172
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.i.i.i, label %vec.epilog.scalar.ph, !llvm.loop !177

_ZN6bufferIbLb1ELj16EE6expandEv.exit.i.i:         ; preds = %.noexc100, %._crit_edge.i.i.i
  %.pre2.i.i = phi i32 [ %i.ac, %._crit_edge.i.i.i ], [ %.pre2.pre.i.i, %.noexc100 ]
  store ptr %i.ab, ptr %3, align 8, !tbaa !162
  store i32 %i.z, ptr %i.t, align 4, !tbaa !166
  br label %_ZN6bufferIbLb1ELj16EE9push_backERKb.exit.i

_ZN6bufferIbLb1ELj16EE9push_backERKb.exit.i:      ; preds = %bb.d, %_ZN6bufferIbLb1ELj16EE6expandEv.exit.i.i
  %.pre.i.i181 = phi ptr [ %i.ab, %_ZN6bufferIbLb1ELj16EE6expandEv.exit.i.i ], [ %.pre.i.i, %bb.d ] ; 2 uses
  %i.bg = phi i32 [ %i.z, %_ZN6bufferIbLb1ELj16EE6expandEv.exit.i.i ], [ %i.x, %bb.d ]
  %i.bh = phi i32 [ %.pre2.i.i, %_ZN6bufferIbLb1ELj16EE6expandEv.exit.i.i ], [ %i.y, %bb.d ] ; 2 uses
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %.pre.i.i181, i64 %i.bi
  store i8 0, ptr %i.bj, align 1, !tbaa !172
  %i.bk = add i32 %i.bh, 1                        ; 2 uses
  store i32 %i.bk, ptr %i.s, align 8, !tbaa !165
  %i.bl = add i32 %.01320.i, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.bl, %i.n
  br i1 %exitcond.not.i, label %_ZN6bufferIbLb1ELj16EE6resizeEjRKb.exit, label %bb.d, !llvm.loop !178

_ZN6bufferIbLb1ELj16EE6resizeEjRKb.exit:          ; preds = %_ZN6bufferIbLb1ELj16EE9push_backERKb.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  store i32 1, ptr %i.bm, align 8, !tbaa !179
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr null, ptr %i.bn, align 8, !tbaa !182
  %i.bo = load i32, ptr %i.v, align 8, !tbaa !170 ; 5 uses
  %i.bp = icmp ugt i32 %i.n, %i.bo
  br i1 %i.bp, label %.preheader.i103, label %bb.g

.preheader.i103:                                  ; preds = %_ZN6bufferIbLb1ELj16EE6resizeEjRKb.exit, %.noexc105
  %.01320.i104 = phi i32 [ %i.bq, %.noexc105 ], [ %i.bo, %_ZN6bufferIbLb1ELj16EE6resizeEjRKb.exit ]
  invoke void @_ZN6bufferI8rationalLb1ELj16EE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(528) %4, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %.noexc105 unwind label %bb.k

.noexc105:                                        ; preds = %.preheader.i103
  %i.bq = add i32 %.01320.i104, 1                 ; 2 uses
  %exitcond22.not.i = icmp eq i32 %i.bq, %i.n
  br i1 %exitcond22.not.i, label %_ZN6bufferI8rationalLb1ELj16EE6resizeEjRKS0_.exit, label %.preheader.i103, !llvm.loop !183

bb.g:                                             ; preds = %_ZN6bufferIbLb1ELj16EE6resizeEjRKb.exit
  %i.br = icmp ult i32 %i.n, %i.bo
  br i1 %i.br, label %.preheader17.i101, label %_ZN6bufferI8rationalLb1ELj16EE6resizeEjRKS0_.exit

.preheader17.i101:                                ; preds = %bb.g, %_ZN6bufferI8rationalLb1ELj16EE8pop_backEv.exit.i
  %i.bs = phi i32 [ %i.cc, %_ZN6bufferI8rationalLb1ELj16EE8pop_backEv.exit.i ], [ %i.bo, %bb.g ]
  %.019.i = phi i32 [ %i.cd, %_ZN6bufferI8rationalLb1ELj16EE8pop_backEv.exit.i ], [ %i.n, %bb.g ]
  %i.bt = load ptr, ptr %4, align 8, !tbaa !167
  %i.bu = add i32 %i.bs, -1
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [32 x i8], ptr %i.bt, i64 %i.bv ; 2 uses
  %i.bx = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !184 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.bx, ptr noundef nonnull align 8 dereferenceable(32) %i.bw)
          to label %.noexc.i.i.i unwind label %bb.h

.noexc.i.i.i:                                     ; preds = %.preheader17.i101
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.bx, ptr noundef nonnull align 8 dereferenceable(16) %i.by)
          to label %_ZN6bufferI8rationalLb1ELj16EE8pop_backEv.exit.i unwind label %bb.h

bb.h:                                             ; preds = %.noexc.i.i.i, %.preheader17.i101
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  call void @__clang_call_terminate(ptr %i.ca) #17
  unreachable

_ZN6bufferI8rationalLb1ELj16EE8pop_backEv.exit.i: ; preds = %.noexc.i.i.i
  %i.cb = load i32, ptr %i.v, align 8, !tbaa !170
  %i.cc = add i32 %i.cb, -1                       ; 2 uses
  store i32 %i.cc, ptr %i.v, align 8, !tbaa !170
  %i.cd = add i32 %.019.i, 1                      ; 2 uses
  %exitcond.not.i102 = icmp eq i32 %i.cd, %i.bo
  br i1 %exitcond.not.i102, label %_ZN6bufferI8rationalLb1ELj16EE6resizeEjRKS0_.exit, label %.preheader17.i101, !llvm.loop !186

_ZN6bufferI8rationalLb1ELj16EE6resizeEjRKS0_.exit: ; preds = %_ZN6bufferI8rationalLb1ELj16EE8pop_backEv.exit.i, %.noexc105, %bb.g
  %i.ce = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !184 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ce, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %.noexc.i unwind label %bb.i

.noexc.i:                                         ; preds = %_ZN6bufferI8rationalLb1ELj16EE6resizeEjRKS0_.exit
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.ce, ptr noundef nonnull align 8 dereferenceable(16) %i.bm)
          to label %_ZN8rationalD2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %.noexc.i, %_ZN6bufferI8rationalLb1ELj16EE6resizeEjRKS0_.exit
  %i.cf = landingpad { ptr, i32 }
          catch ptr null
  %i.cg = extractvalue { ptr, i32 } %i.cf, 0
  call void @__clang_call_terminate(ptr %i.cg) #17
  unreachable

_ZN8rationalD2Ev.exit:                            ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %i.ch = load ptr, ptr %2, align 8, !tbaa !77    ; 4 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %.critedge97.preheader, label %_ZN6vectorIP3appLb0EjE3endEv.exit

_ZN6vectorIP3appLb0EjE3endEv.exit:                ; preds = %_ZN8rationalD2Ev.exit
  %i.cj = getelementptr inbounds i8, ptr %i.ch, i64 -4
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !132 ; 2 uses
  %i.cl = zext i32 %i.ck to i64
  %i.cm = shl nuw nsw i64 %i.cl, 3
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cm
  %.not160 = icmp eq i32 %i.ck, 0
  br i1 %.not160, label %.critedge97.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6vectorIP3appLb0EjE3endEv.exit
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %6, i64 24
  br label %bb.l

.critedge97.preheader:                            ; preds = %_ZN8rationalD2Ev.exit112, %_ZN8rationalD2Ev.exit, %_ZN6vectorIP3appLb0EjE3endEv.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %7, i64 24
  %.not171 = icmp eq i32 %i.m, 0
  %wide.trip.count = zext i32 %i.n to i64
  br label %bb.ac

bb.j:                                             ; preds = %bb.f, %bb.e
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.k:                                             ; preds = %.preheader.i103
  %i.cz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.bu

bb.l:                                             ; preds = %.lr.ph, %_ZN8rationalD2Ev.exit112
  %.066161 = phi ptr [ %i.ch, %.lr.ph ], [ %i.fk, %_ZN8rationalD2Ev.exit112 ] ; 2 uses
  %i.da = load ptr, ptr %.066161, align 8, !tbaa !133
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  store i32 0, ptr %6, align 8, !tbaa !179
  %i.db = load i8, ptr %i.co, align 4
  %i.dc = and i8 %i.db, -4
  store i8 %i.dc, ptr %i.co, align 4
  store ptr null, ptr %i.cp, align 8, !tbaa !182
  store i32 1, ptr %i.cq, align 8, !tbaa !179
  %i.dd = load i8, ptr %i.cr, align 4
  %i.de = and i8 %i.dd, -4
  store i8 %i.de, ptr %i.cr, align 4
  store ptr null, ptr %i.cs, align 8, !tbaa !182
  %i.df = invoke noundef zeroext i1 @_ZN17recover_01_tactic3imp10find_coeffEP3appS2_RjR8rational(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %i.da, ptr noundef nonnull %i.p, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  %.pre192 = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !184 ; 5 uses
  br i1 %i.df, label %bb.o, label %.critedge

bb.n:                                             ; preds = %bb.z, %bb.x, %bb.t, %_ZN11mpq_managerILb1EE2eqERK3mpzS3_.exit.i.i.i, %bb.l
  %i.dg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.bu

bb.o:                                             ; preds = %bb.m
  %i.dh = load i32, ptr %i.a, align 4, !tbaa !132
  %i.di = load ptr, ptr %3, align 8, !tbaa !162   ; 2 uses
  %i.dj = zext i32 %i.dh to i64                   ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dj
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !172, !range !111, !noundef !43
  %i.dm = trunc nuw i8 %i.dl to i1
  %.pre187 = load ptr, ptr %4, align 8, !tbaa !167 ; 2 uses
  br i1 %i.dm, label %bb.p, label %bb.v

bb.p:                                             ; preds = %bb.o
  %i.dn = getelementptr inbounds nuw [32 x i8], ptr %.pre187, i64 %i.dj ; 5 uses
  %i.do = load i8, ptr %i.co, align 4
  %i.dp = and i8 %i.do, 1
  %i.dq = icmp eq i8 %i.dp, 0
  br i1 %i.dq, label %bb.q, label %_ZN11mpq_managerILb1EE2eqERK3mpzS3_.exit.i.i.i

bb.q:                                             ; preds = %bb.p
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  %i.ds = load i8, ptr %i.dr, align 4
  %i.dt = and i8 %i.ds, 1
  %i.du = icmp eq i8 %i.dt, 0
  br i1 %i.du, label %.split.i.i.i, label %_ZN11mpq_managerILb1EE2eqERK3mpzS3_.exit.i.i.i

.split.i.i.i:                                     ; preds = %bb.q
  %i.dv = load i32, ptr %6, align 8, !tbaa !179
  %i.dw = load i32, ptr %i.dn, align 8, !tbaa !179
  %i.dx = icmp eq i32 %i.dv, %i.dw
  br i1 %i.dx, label %bb.r, label %.critedge

_ZN11mpq_managerILb1EE2eqERK3mpzS3_.exit.i.i.i:   ; preds = %bb.q, %bb.p
  %i.dy = invoke noundef i32 @_ZN11mpz_managerILb1EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(728) %.pre192, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.dn)
          to label %.noexc107 unwind label %bb.n

.noexc107:                                        ; preds = %_ZN11mpq_managerILb1EE2eqERK3mpzS3_.exit.i.i.i
  %i.dz = icmp eq i32 %i.dy, 0
  br i1 %i.dz, label %bb.r, label %.noexc107..critedge_crit_edge

.noexc107..critedge_crit_edge:                    ; preds = %.noexc107
  %.pre190 = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !184
  br label %.critedge

bb.r:                                             ; preds = %.noexc107, %.split.i.i.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dn, i64 16 ; 2 uses
  %i.eb = load i8, ptr %i.cr, align 4
  %i.ec = and i8 %i.eb, 1
  %i.ed = icmp eq i8 %i.ec, 0
  br i1 %i.ed, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dn, i64 20
  %i.ef = load i8, ptr %i.ee, align 4
  %i.eg = and i8 %i.ef, 1
  %i.eh = icmp eq i8 %i.eg, 0
  br i1 %i.eh, label %.split, label %bb.t

.split:                                           ; preds = %bb.s
  %i.ei = load i32, ptr %i.cq, align 8, !tbaa !179
  %i.ej = load i32, ptr %i.ea, align 8, !tbaa !179
  %i.ek = icmp eq i32 %i.ei, %i.ej
  %.pre191228 = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !184 ; 2 uses
  br i1 %i.ek, label %._crit_edge183, label %.critedge

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.el = invoke noundef i32 @_ZN11mpz_managerILb1EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(728) %.pre192, ptr noundef nonnull align 8 dereferenceable(16) %i.cq, ptr noundef nonnull align 8 dereferenceable(16) %i.ea)
          to label %bb.u unwind label %bb.n

bb.u:                                             ; preds = %bb.t
  %i.em = icmp eq i32 %i.el, 0
  %.pre191 = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !184 ; 2 uses
  br i1 %i.em, label %._crit_edge183, label %.critedge

._crit_edge183:                                   ; preds = %.split, %bb.u
  %.pre191229 = phi ptr [ %.pre191228, %.split ], [ %.pre191, %bb.u ]
  %.pre184 = load i32, ptr %i.a, align 4, !tbaa !132
  %.pre185 = load ptr, ptr %3, align 8, !tbaa !162
  %.pre186 = load ptr, ptr %4, align 8, !tbaa !167
  %.pre193 = zext i32 %.pre184 to i64
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge183, %bb.o
  %.pre-phi = phi i64 [ %.pre193, %._crit_edge183 ], [ %i.dj, %bb.o ] ; 2 uses
  %i.en = phi ptr [ %.pre191229, %._crit_edge183 ], [ %.pre192, %bb.o ] ; 2 uses
  %i.eo = phi ptr [ %.pre186, %._crit_edge183 ], [ %.pre187, %bb.o ]
  %i.ep = phi ptr [ %.pre185, %._crit_edge183 ], [ %i.di, %bb.o ]
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 %.pre-phi
  store i8 1, ptr %i.eq, align 1, !tbaa !172
  %i.er = getelementptr inbounds nuw [32 x i8], ptr %i.eo, i64 %.pre-phi ; 5 uses
  %i.es = load i8, ptr %i.co, align 4
  %i.et = and i8 %i.es, 1
  %i.eu = icmp eq i8 %i.et, 0
  br i1 %i.eu, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ev = load i32, ptr %6, align 8, !tbaa !179
  store i32 %i.ev, ptr %i.er, align 8, !tbaa !179
  %i.ew = getelementptr inbounds nuw i8, ptr %i.er, i64 4 ; 2 uses
  %i.ex = load i8, ptr %i.ew, align 4
  %i.ey = and i8 %i.ex, -2
  store i8 %i.ey, ptr %i.ew, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i

bb.x:                                             ; preds = %bb.v
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.en, ptr noundef nonnull align 8 dereferenceable(32) %i.er, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i unwind label %bb.n

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i:   ; preds = %bb.x, %bb.w
  %i.ez = getelementptr inbounds nuw i8, ptr %i.er, i64 16 ; 2 uses
  %i.fa = load i8, ptr %i.cr, align 4
  %i.fb = and i8 %i.fa, 1
  %i.fc = icmp eq i8 %i.fb, 0
  br i1 %i.fc, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i
  %i.fd = load i32, ptr %i.cq, align 8, !tbaa !179
  store i32 %i.fd, ptr %i.ez, align 8, !tbaa !179
  %i.fe = getelementptr inbounds nuw i8, ptr %i.er, i64 20 ; 2 uses
  %i.ff = load i8, ptr %i.fe, align 4
  %i.fg = and i8 %i.ff, -2
  store i8 %i.fg, ptr %i.fe, align 4
  br label %_ZN8rationalaSERKS_.exit

bb.z:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.en, ptr noundef nonnull align 8 dereferenceable(16) %i.ez, ptr noundef nonnull align 8 dereferenceable(16) %i.cq)
          to label %_ZN8rationalaSERKS_.exit unwind label %bb.n

_ZN8rationalaSERKS_.exit:                         ; preds = %bb.y, %bb.z
  %i.fh = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !184 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.fh, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %.noexc.i111 unwind label %bb.aa

.noexc.i111:                                      ; preds = %_ZN8rationalaSERKS_.exit
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.fh, ptr noundef nonnull align 8 dereferenceable(16) %i.cq)
          to label %_ZN8rationalD2Ev.exit112 unwind label %bb.aa

bb.aa:                                            ; preds = %.noexc.i111, %_ZN8rationalaSERKS_.exit
  %i.fi = landingpad { ptr, i32 }
          catch ptr null
  %i.fj = extractvalue { ptr, i32 } %i.fi, 0
  call void @__clang_call_terminate(ptr %i.fj) #17
  unreachable

_ZN8rationalD2Ev.exit112:                         ; preds = %.noexc.i111
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.fk = getelementptr inbounds nuw i8, ptr %.066161, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.fk, %i.cn
  br i1 %.not, label %.critedge97.preheader, label %bb.l

.critedge:                                        ; preds = %.split.i.i.i, %bb.u, %bb.m, %.split, %.noexc107..critedge_crit_edge
  %i.fl = phi ptr [ %.pre190, %.noexc107..critedge_crit_edge ], [ %.pre191228, %.split ], [ %.pre192, %.split.i.i.i ], [ %.pre191, %bb.u ], [ %.pre192, %bb.m ] ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.fl, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %.noexc.i113 unwind label %bb.ab

.noexc.i113:                                      ; preds = %.critedge
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.fl, ptr noundef nonnull align 8 dereferenceable(16) %i.cq)
          to label %_ZN8rationalD2Ev.exit114 unwind label %bb.ab

bb.ab:                                            ; preds = %.noexc.i113, %.critedge
  %i.fm = landingpad { ptr, i32 }
          catch ptr null
  %i.fn = extractvalue { ptr, i32 } %i.fm, 0
  call void @__clang_call_terminate(ptr %i.fn) #17
  unreachable

_ZN8rationalD2Ev.exit114:                         ; preds = %.noexc.i113
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %.loopexit

.critedge97:                                      ; preds = %_ZN8rationalD2Ev.exit122
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond175.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond175.not, label %bb.ap, label %bb.ac, !llvm.loop !187

bb.ac:                                            ; preds = %.critedge97.preheader, %.critedge97
  %indvars.iv = phi i64 [ 0, %.critedge97.preheader ], [ %indvars.iv.next, %.critedge97 ] ; 4 uses
  %i.fo = load ptr, ptr %3, align 8, !tbaa !162
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 %indvars.iv
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !172, !range !111, !noundef !43
  %i.fr = trunc nuw i8 %i.fq to i1
  br i1 %i.fr, label %bb.ad, label %.loopexit

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  store i32 0, ptr %7, align 8, !tbaa !179
  %i.fs = load i8, ptr %i.ct, align 4
  %i.ft = and i8 %i.fs, -4
  store i8 %i.ft, ptr %i.ct, align 4
  store ptr null, ptr %i.cu, align 8, !tbaa !182
  store i32 1, ptr %i.cv, align 8, !tbaa !179
  %i.fu = load i8, ptr %i.cw, align 4
  %i.fv = and i8 %i.fu, -4
  store i8 %i.fv, ptr %i.cw, align 4
  store ptr null, ptr %i.cx, align 8, !tbaa !182
  br i1 %.not171, label %._crit_edge, label %.lr.ph165.preheader

.lr.ph165.preheader:                              ; preds = %bb.ad
  %i.fw = trunc nuw i64 %indvars.iv to i32
  br label %.lr.ph165

._crit_edge:                                      ; preds = %_ZN8rationalpLERKS_.exit, %bb.ad
  %i.fx = load ptr, ptr %4, align 8, !tbaa !167
  %i.fy = getelementptr inbounds nuw [32 x i8], ptr %i.fx, i64 %indvars.iv ; 5 uses
  %i.fz = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !184 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 4
  %i.gb = load i8, ptr %i.ga, align 4
  %i.gc = and i8 %i.gb, 1
  %i.gd = icmp eq i8 %i.gc, 0
  br i1 %i.gd, label %bb.ae, label %_ZN11mpq_managerILb1EE2eqERK3mpzS3_.exit.i.i.i115

bb.ae:                                            ; preds = %._crit_edge
  %i.ge = load i8, ptr %i.ct, align 4
  %i.gf = and i8 %i.ge, 1
  %i.gg = icmp eq i8 %i.gf, 0
  br i1 %i.gg, label %.split.i.i.i116, label %_ZN11mpq_managerILb1EE2eqERK3mpzS3_.exit.i.i.i115

.split.i.i.i116:                                  ; preds = %bb.ae
  %i.gh = load i32, ptr %i.fy, align 8, !tbaa !179
  %i.gi = load i32, ptr %7, align 8, !tbaa !179
  %i.gj = icmp eq i32 %i.gh, %i.gi
  br i1 %i.gj, label %bb.af, label %bb.am

_ZN11mpq_managerILb1EE2eqERK3mpzS3_.exit.i.i.i115: ; preds = %bb.ae, %._crit_edge
  %i.gk = invoke noundef i32 @_ZN11mpz_managerILb1EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.fz, ptr noundef nonnull align 8 dereferenceable(32) %i.fy, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %.noexc117 unwind label %bb.al

.noexc117:                                        ; preds = %_ZN11mpq_managerILb1EE2eqERK3mpzS3_.exit.i.i.i115
  %i.gl = icmp eq i32 %i.gk, 0
  br i1 %i.gl, label %bb.af, label %bb.am

bb.af:                                            ; preds = %.noexc117, %.split.i.i.i116
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fy, i64 16 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fy, i64 20
  %i.go = load i8, ptr %i.gn, align 4
  %i.gp = and i8 %i.go, 1
  %i.gq = icmp eq i8 %i.gp, 0
  br i1 %i.gq, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.gr = load i8, ptr %i.cw, align 4
  %i.gs = and i8 %i.gr, 1
  %i.gt = icmp eq i8 %i.gs, 0
  br i1 %i.gt, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.gu = load i32, ptr %i.gm, align 8, !tbaa !179
  %i.gv = load i32, ptr %i.cv, align 8, !tbaa !179
  %i.gw = icmp eq i32 %i.gu, %i.gv
  br label %bb.am

bb.ai:                                            ; preds = %bb.ag, %bb.af
  %i.gx = invoke noundef i32 @_ZN11mpz_managerILb1EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.fz, ptr noundef nonnull align 8 dereferenceable(16) %i.gm, ptr noundef nonnull align 8 dereferenceable(16) %i.cv)
          to label %.noexc118 unwind label %bb.al

.noexc118:                                        ; preds = %bb.ai
  %i.gy = icmp eq i32 %i.gx, 0
  br label %bb.am

.lr.ph165:                                        ; preds = %.lr.ph165.preheader, %_ZN8rationalpLERKS_.exit
  %.062164 = phi i32 [ %i.hh, %_ZN8rationalpLERKS_.exit ], [ 0, %.lr.ph165.preheader ]
  %.063163 = phi i32 [ %i.hg, %_ZN8rationalpLERKS_.exit ], [ 1, %.lr.ph165.preheader ] ; 2 uses
  %.064162 = phi i32 [ %i.hf, %_ZN8rationalpLERKS_.exit ], [ %i.fw, %.lr.ph165.preheader ] ; 2 uses
  %i.gz = and i32 %.064162, 1
  %.not91 = icmp eq i32 %i.gz, 0
  br i1 %.not91, label %_ZN8rationalpLERKS_.exit, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph165
  %i.ha = load ptr, ptr %4, align 8, !tbaa !167
  %i.hb = zext i32 %.063163 to i64
  %i.hc = getelementptr inbounds nuw [32 x i8], ptr %i.ha, i64 %i.hb
  %i.hd = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !184
  invoke void @_ZN11mpq_managerILb1EE3addERK3mpqS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.hd, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.hc, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZN8rationalpLERKS_.exit unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.he = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

_ZN8rationalpLERKS_.exit:                         ; preds = %bb.aj, %.lr.ph165
  %i.hf = lshr i32 %.064162, 1
  %i.hg = shl i32 %.063163, 1
  %i.hh = add nuw i32 %.062164, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.hh, %i.m
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph165, !llvm.loop !188

bb.al:                                            ; preds = %bb.ai, %_ZN11mpq_managerILb1EE2eqERK3mpzS3_.exit.i.i.i115
  %i.hi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.am:                                            ; preds = %.noexc118, %bb.ah, %.noexc117, %.split.i.i.i116
  %i.hj = phi i1 [ false, %.noexc117 ], [ false, %.split.i.i.i116 ], [ %i.gw, %bb.ah ], [ %i.gy, %.noexc118 ]
  %i.hk = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !184 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.hk, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %.noexc.i121 unwind label %bb.an

.noexc.i121:                                      ; preds = %bb.am
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.hk, ptr noundef nonnull align 8 dereferenceable(16) %i.cv)
          to label %_ZN8rationalD2Ev.exit122 unwind label %bb.an

bb.an:                                            ; preds = %.noexc.i121, %bb.am
  %i.hl = landingpad { ptr, i32 }
          catch ptr null
  %i.hm = extractvalue { ptr, i32 } %i.hl, 0
  call void @__clang_call_terminate(ptr %i.hm) #17
  unreachable

_ZN8rationalD2Ev.exit122:                         ; preds = %.noexc.i121
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br i1 %i.hj, label %.critedge97, label %.loopexit

bb.ao:                                            ; preds = %bb.al, %bb.ak
  %.pn92 = phi { ptr, i32 } [ %i.he, %bb.ak ], [ %i.hi, %bb.al ]
  call void @_ZN8rationalD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %bb.bu

bb.ap:                                            ; preds = %.critedge97
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  %i.hn = load ptr, ptr %0, align 8, !tbaa !28, !nonnull !43, !align !44 ; 2 uses
  %i.ho = ptrtoint ptr %i.hn to i64
  store i64 %i.ho, ptr %8, align 8, !tbaa !20
  %i.hp = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 6 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 5 uses
  store ptr %i.hq, ptr %i.hp, align 8, !tbaa !189
  %i.hr = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store i32 0, ptr %i.hr, align 8, !tbaa !192
  %i.hs = getelementptr inbounds nuw i8, ptr %8, i64 20 ; 3 uses
  store i32 16, ptr %i.hs, align 4, !tbaa !193
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  store ptr null, ptr %9, align 8, !tbaa !138
  %i.ht = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr %i.hn, ptr %i.ht, align 8, !tbaa !20
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !194
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 24
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !151 ; 3 uses
  %i.hz = icmp eq ptr %i.hy, null
  br i1 %i.hz, label %_ZNK17arith_recognizers7is_realEPK4sort.exit, label %_ZNK4decl13get_family_idEv.exit.thread.i.i.i

_ZNK4decl13get_family_idEv.exit.thread.i.i.i:     ; preds = %bb.ap
  %i.ia = load i32, ptr %i.hy, align 8, !tbaa !155
  %i.ib = icmp eq i32 %i.ia, 5
  br i1 %i.ib, label %bb.aq, label %_ZNK17arith_recognizers7is_realEPK4sort.exit

bb.aq:                                            ; preds = %_ZNK4decl13get_family_idEv.exit.thread.i.i.i
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hy, i64 4
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !197
  %i.ie = icmp eq i32 %i.id, 0
  br label %_ZNK17arith_recognizers7is_realEPK4sort.exit

_ZNK17arith_recognizers7is_realEPK4sort.exit:     ; preds = %bb.ap, %_ZNK4decl13get_family_idEv.exit.thread.i.i.i, %bb.aq
  %i.if = phi i1 [ false, %_ZNK4decl13get_family_idEv.exit.thread.i.i.i ], [ %i.ie, %bb.aq ], [ false, %bb.ap ] ; 2 uses
  %.not172 = icmp eq i32 %i.l, 0
  br i1 %.not172, label %._crit_edge170.thread, label %.lr.ph169

.lr.ph169:                                        ; preds = %_ZNK17arith_recognizers7is_realEPK4sort.exit
  %i.ig = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.ih = xor i1 %i.if, true
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %wide.trip.count179 = zext i32 %i.l to i64
  br label %bb.ar

bb.ar:                                            ; preds = %.lr.ph169, %bb.ba
  %i.ij = phi ptr [ %i.hq, %.lr.ph169 ], [ %i.la, %bb.ba ]
  %i.ik = phi i32 [ 0, %.lr.ph169 ], [ %i.lb, %bb.ba ]
  %indvars.iv176 = phi i64 [ 0, %.lr.ph169 ], [ %indvars.iv.next177, %bb.ba ] ; 2 uses
  %.061167 = phi i32 [ 1, %.lr.ph169 ], [ %.1, %bb.ba ] ; 3 uses
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %indvars.iv176
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !160 ; 3 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 4
  %i.io = load i32, ptr %i.in, align 4
  %i.ip = and i32 %i.io, 65535
  %i.iq = icmp eq i32 %i.ip, 0
  br i1 %i.iq, label %bb.as, label %_ZNK11ast_manager5is_eqEPK4expr.exit.thread

bb.as:                                            ; preds = %bb.ar
  %i.ir = getelementptr inbounds nuw i8, ptr %i.im, i64 16
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !147
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 24
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !151 ; 3 uses
  %.not.i.i.i.i123 = icmp eq ptr %i.iu, null
  br i1 %.not.i.i.i.i123, label %_ZNK11ast_manager5is_eqEPK4expr.exit.thread, label %_ZNK11ast_manager5is_eqEPK4expr.exit

_ZNK11ast_manager5is_eqEPK4expr.exit:             ; preds = %bb.as
  %i.iv = load i32, ptr %i.iu, align 8, !tbaa !155
  %i.iw = icmp eq i32 %i.iv, 0
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iu, i64 4
  %i.iy = load i32, ptr %i.ix, align 4
  %i.iz = icmp eq i32 %i.iy, 2
  %i.ja = select i1 %i.iw, i1 %i.iz, i1 false
  br i1 %i.ja, label %bb.ba, label %_ZNK11ast_manager5is_eqEPK4expr.exit.thread

bb.at:                                            ; preds = %bb.ay, %bb.ax, %_ZNK10arith_util10mk_numeralERK8rationalb.exit, %_ZNK10arith_util6pluginEv.exit.i, %bb.av, %_ZNK11ast_manager5is_eqEPK4expr.exit.thread
  %i.jb = landingpad { ptr, i32 }
          cleanup
end_hunk_0
