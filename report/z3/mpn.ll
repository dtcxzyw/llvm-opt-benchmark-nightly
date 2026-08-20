inline.NumInlined: 115
inline.NumDeleted: 25
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZNK11mpn_manager9to_stringEPKjjPcj:bb.a
middle.block176:                                  ; preds = %vector.body171
  %cmp.n177 = icmp eq i64 %n.vec170, %wide.trip.count.i.i.i.i52
  br i1 %cmp.n177, label %._crit_edge.i.i.i.i56, label %scalar.ph167.preheader

scalar.ph167.preheader:                           ; preds = %.lr.ph.i.i.i.i51, %middle.block176
  %indvars.iv.i.i.i.i53.ph = phi i64 [ 0, %.lr.ph.i.i.i.i51 ], [ %n.vec170, %middle.block176 ] ; 3 uses
  %xtraiter199 = and i64 %wide.trip.count.i.i.i.i52, 3 ; 2 uses
  %lcmp.mod200.not = icmp eq i64 %xtraiter199, 0
  br i1 %lcmp.mod200.not, label %scalar.ph167.prol.loopexit, label %scalar.ph167.prol

scalar.ph167.prol:                                ; preds = %scalar.ph167.preheader, %scalar.ph167.prol
  %indvars.iv.i.i.i.i53.prol = phi i64 [ %indvars.iv.next.i.i.i.i54.prol, %scalar.ph167.prol ], [ %indvars.iv.i.i.i.i53.ph, %scalar.ph167.preheader ] ; 3 uses
  %prol.iter201 = phi i64 [ %prol.iter201.next, %scalar.ph167.prol ], [ 0, %scalar.ph167.preheader ]
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv.i.i.i.i53.prol
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i.i50, i64 %indvars.iv.i.i.i.i53.prol
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !8
  store i32 %i.bx, ptr %i.bv, align 4, !tbaa !8
  %indvars.iv.next.i.i.i.i54.prol = add nuw nsw i64 %indvars.iv.i.i.i.i53.prol, 1 ; 2 uses
  %prol.iter201.next = add i64 %prol.iter201, 1   ; 2 uses
  %prol.iter201.cmp.not = icmp eq i64 %prol.iter201.next, %xtraiter199
  br i1 %prol.iter201.cmp.not, label %scalar.ph167.prol.loopexit, label %scalar.ph167.prol, !llvm.loop !81

scalar.ph167.prol.loopexit:                       ; preds = %scalar.ph167.prol, %scalar.ph167.preheader
  %indvars.iv.i.i.i.i53.unr = phi i64 [ %indvars.iv.i.i.i.i53.ph, %scalar.ph167.preheader ], [ %indvars.iv.next.i.i.i.i54.prol, %scalar.ph167.prol ]
  %i.by = sub nsw i64 %indvars.iv.i.i.i.i53.ph, %wide.trip.count.i.i.i.i52
  %i.bz = icmp ugt i64 %i.by, -4
  br i1 %i.bz, label %._crit_edge.i.i.i.i56, label %scalar.ph167

._crit_edge.i.i.i.i56:                            ; preds = %scalar.ph167.prol.loopexit, %scalar.ph167, %middle.block176, %.noexc
  %.not.i.i.i.i.i57 = icmp eq ptr %.pre.i.i.i.i50, %i.bg
  %i.ca = icmp eq ptr %.pre.i.i.i.i50, null
  %or.cond.i.i.i.i.i58 = or i1 %.not.i.i.i.i.i57, %i.ca
  br i1 %or.cond.i.i.i.i.i58, label %_ZN6bufferIjLb0ELj16EE6expandEv.exit.i.i.i60, label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i.i.i56
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %.pre.i.i.i.i50)
          to label %.noexc65 unwind label %bb.h

.noexc65:                                         ; preds = %bb.g
  %.pre2.pre.i.i.i59 = load i32, ptr %i.bf, align 8, !tbaa !29
  br label %_ZN6bufferIjLb0ELj16EE6expandEv.exit.i.i.i60

scalar.ph167:                                     ; preds = %scalar.ph167.prol.loopexit, %scalar.ph167
  %indvars.iv.i.i.i.i53 = phi i64 [ %indvars.iv.next.i.i.i.i54.3, %scalar.ph167 ], [ %indvars.iv.i.i.i.i53.unr, %scalar.ph167.prol.loopexit ] ; 6 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv.i.i.i.i53
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i.i50, i64 %indvars.iv.i.i.i.i53
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !8
  store i32 %i.cd, ptr %i.cb, align 4, !tbaa !8
  %indvars.iv.next.i.i.i.i54 = add nuw nsw i64 %indvars.iv.i.i.i.i53, 1 ; 2 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv.next.i.i.i.i54
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i.i50, i64 %indvars.iv.next.i.i.i.i54
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !8
  store i32 %i.cg, ptr %i.ce, align 4, !tbaa !8
  %indvars.iv.next.i.i.i.i54.1 = add nuw nsw i64 %indvars.iv.i.i.i.i53, 2 ; 2 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv.next.i.i.i.i54.1
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i.i50, i64 %indvars.iv.next.i.i.i.i54.1
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !8
  store i32 %i.cj, ptr %i.ch, align 4, !tbaa !8
  %indvars.iv.next.i.i.i.i54.2 = add nuw nsw i64 %indvars.iv.i.i.i.i53, 3 ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv.next.i.i.i.i54.2
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i.i50, i64 %indvars.iv.next.i.i.i.i54.2
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !8
  store i32 %i.cm, ptr %i.ck, align 4, !tbaa !8
  %indvars.iv.next.i.i.i.i54.3 = add nuw nsw i64 %indvars.iv.i.i.i.i53, 4 ; 2 uses
  %exitcond.not.i.i.i.i55.3 = icmp eq i64 %indvars.iv.next.i.i.i.i54.3, %wide.trip.count.i.i.i.i52
  br i1 %exitcond.not.i.i.i.i55.3, label %._crit_edge.i.i.i.i56, label %scalar.ph167, !llvm.loop !82

_ZN6bufferIjLb0ELj16EE6expandEv.exit.i.i.i60:     ; preds = %.noexc65, %._crit_edge.i.i.i.i56
  %.pre2.i.i.i61 = phi i32 [ %i.bn, %._crit_edge.i.i.i.i56 ], [ %.pre2.pre.i.i.i59, %.noexc65 ]
  store ptr %i.bm, ptr %6, align 8, !tbaa !25
  store i32 %i.bj, ptr %i.be, align 4, !tbaa !30
  br label %_ZN6bufferIjLb0ELj16EE9push_backERKj.exit.i.i62

_ZN6bufferIjLb0ELj16EE9push_backERKj.exit.i.i62:  ; preds = %_ZN6bufferIjLb0ELj16EE6expandEv.exit.i.i.i60, %.lr.ph.i.i45
  %.pre.i5.i.i63 = phi ptr [ %i.bm, %_ZN6bufferIjLb0ELj16EE6expandEv.exit.i.i.i60 ], [ %.pre.i.i.i46, %.lr.ph.i.i45 ] ; 2 uses
  %i.cn = phi i32 [ %.pre2.i.i.i61, %_ZN6bufferIjLb0ELj16EE6expandEv.exit.i.i.i60 ], [ %i.bh, %.lr.ph.i.i45 ]
  %i.co = zext i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %.pre.i5.i.i63, i64 %i.co
  store i32 0, ptr %i.cp, align 4, !tbaa !8
  %i.cq = load i32, ptr %i.bf, align 8, !tbaa !29
  %i.cr = add i32 %i.cq, 1                        ; 2 uses
  store i32 %i.cr, ptr %i.bf, align 8, !tbaa !29
  %i.cs = add nuw i32 %.04.i.i47, 1
  %exitcond.not.i.i64 = icmp eq i32 %.04.i.i47, %2
  br i1 %exitcond.not.i.i64, label %_ZN6bufferIjLb0ELj16EE9push_backERKj.exit.i.i84, label %.lr.ph.i.i45, !llvm.loop !79

_ZN6bufferIjLb0ELj16EE9push_backERKj.exit.i.i84:  ; preds = %_ZN6bufferIjLb0ELj16EE9push_backERKj.exit.i.i62
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.ct, ptr %7, align 8, !tbaa !25
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 16, ptr %i.cv, align 4, !tbaa !30
  store i32 0, ptr %i.ct, align 8, !tbaa !8
  store i32 1, ptr %i.cu, align 8, !tbaa !29
  br i1 %.not.i.i, label %_ZN7sbufferIjLj16EEC2EjRKj.exit89._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6bufferIjLb0ELj16EE9push_backERKj.exit.i.i84.thread, %_ZN6bufferIjLb0ELj16EE9push_backERKj.exit.i.i84
  %i.cw = phi ptr [ %i.bc, %_ZN6bufferIjLb0ELj16EE9push_backERKj.exit.i.i84.thread ], [ %i.cu, %_ZN6bufferIjLb0ELj16EE9push_backERKj.exit.i.i84 ] ; 3 uses
  %i.cx = phi ptr [ %i.bb, %_ZN6bufferIjLb0ELj16EE9push_backERKj.exit.i.i84.thread ], [ %i.ct, %_ZN6bufferIjLb0ELj16EE9push_backERKj.exit.i.i84 ] ; 3 uses
  %i.cy = phi ptr [ %i.ay, %_ZN6bufferIjLb0ELj16EE9push_backERKj.exit.i.i84.thread ], [ %i.bg, %_ZN6bufferIjLb0ELj16EE9push_backERKj.exit.i.i84 ] ; 3 uses
  %i.cz = phi ptr [ %i.az, %_ZN6bufferIjLb0ELj16EE9push_backERKj.exit.i.i84.thread ], [ %i.bf, %_ZN6bufferIjLb0ELj16EE9push_backERKj.exit.i.i84 ] ; 3 uses
  %i.da = load ptr, ptr %5, align 8, !tbaa !25    ; 7 uses
  %wide.trip.count = zext i32 %2 to i64           ; 5 uses
  %min.iters.check182 = icmp ult i32 %2, 8
  %i.db = ptrtoaddr ptr %i.da to i64
  %i.dc = sub i64 %i.a, %i.db
  %diff.check180 = icmp ugt i64 %i.dc, -32
  %or.cond195 = select i1 %min.iters.check182, i1 true, i1 %diff.check180
  br i1 %or.cond195, label %_ZN7sbufferIjLj16EEC2EjRKj.exit89.preheader, label %vector.ph183

vector.ph183:                                     ; preds = %.lr.ph
  %n.vec184 = and i64 %wide.trip.count, 4294967288 ; 3 uses
  br label %vector.body185

vector.body185:                                   ; preds = %vector.body185, %vector.ph183
  %index186 = phi i64 [ 0, %vector.ph183 ], [ %index.next189, %vector.body185 ] ; 3 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index186 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %wide.load187 = load <4 x i32>, ptr %i.dd, align 4, !tbaa !8
  %wide.load188 = load <4 x i32>, ptr %i.de, align 4, !tbaa !8
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %index186 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  store <4 x i32> %wide.load187, ptr %i.df, align 4, !tbaa !8
  store <4 x i32> %wide.load188, ptr %i.dg, align 4, !tbaa !8
  %index.next189 = add nuw i64 %index186, 8       ; 2 uses
  %i.dh = icmp eq i64 %index.next189, %n.vec184
  br i1 %i.dh, label %middle.block190, label %vector.body185, !llvm.loop !83

middle.block190:                                  ; preds = %vector.body185
  %cmp.n191 = icmp eq i64 %n.vec184, %wide.trip.count
  br i1 %cmp.n191, label %_ZN7sbufferIjLj16EEC2EjRKj.exit89._crit_edge, label %_ZN7sbufferIjLj16EEC2EjRKj.exit89.preheader

_ZN7sbufferIjLj16EEC2EjRKj.exit89.preheader:      ; preds = %.lr.ph, %middle.block190
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec184, %middle.block190 ] ; 3 uses
  %xtraiter202 = and i64 %wide.trip.count, 3      ; 2 uses
  %lcmp.mod203.not = icmp eq i64 %xtraiter202, 0
  br i1 %lcmp.mod203.not, label %_ZN7sbufferIjLj16EEC2EjRKj.exit89.prol.loopexit, label %_ZN7sbufferIjLj16EEC2EjRKj.exit89.prol

_ZN7sbufferIjLj16EEC2EjRKj.exit89.prol:           ; preds = %_ZN7sbufferIjLj16EEC2EjRKj.exit89.preheader, %_ZN7sbufferIjLj16EEC2EjRKj.exit89.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %_ZN7sbufferIjLj16EEC2EjRKj.exit89.prol ], [ %indvars.iv.ph, %_ZN7sbufferIjLj16EEC2EjRKj.exit89.preheader ] ; 3 uses
  %prol.iter204 = phi i64 [ %prol.iter204.next, %_ZN7sbufferIjLj16EEC2EjRKj.exit89.prol ], [ 0, %_ZN7sbufferIjLj16EEC2EjRKj.exit89.preheader ]
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.prol
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !8
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv.prol
  store i32 %i.dj, ptr %i.dk, align 4, !tbaa !8
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter204.next = add i64 %prol.iter204, 1   ; 2 uses
  %prol.iter204.cmp.not = icmp eq i64 %prol.iter204.next, %xtraiter202
  br i1 %prol.iter204.cmp.not, label %_ZN7sbufferIjLj16EEC2EjRKj.exit89.prol.loopexit, label %_ZN7sbufferIjLj16EEC2EjRKj.exit89.prol, !llvm.loop !84

_ZN7sbufferIjLj16EEC2EjRKj.exit89.prol.loopexit:  ; preds = %_ZN7sbufferIjLj16EEC2EjRKj.exit89.prol, %_ZN7sbufferIjLj16EEC2EjRKj.exit89.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %_ZN7sbufferIjLj16EEC2EjRKj.exit89.preheader ], [ %indvars.iv.next.prol, %_ZN7sbufferIjLj16EEC2EjRKj.exit89.prol ]
  %i.dl = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.dm = icmp ugt i64 %i.dl, -4
  br i1 %i.dm, label %_ZN7sbufferIjLj16EEC2EjRKj.exit89._crit_edge, label %_ZN7sbufferIjLj16EEC2EjRKj.exit89

_ZN7sbufferIjLj16EEC2EjRKj.exit89._crit_edge:     ; preds = %_ZN7sbufferIjLj16EEC2EjRKj.exit89.prol.loopexit, %_ZN7sbufferIjLj16EEC2EjRKj.exit89, %middle.block190, %_ZN6bufferIjLb0ELj16EE9push_backERKj.exit.i.i84
  %i.dn = phi ptr [ %i.cu, %_ZN6bufferIjLb0ELj16EE9push_backERKj.exit.i.i84 ], [ %i.cw, %middle.block190 ], [ %i.cw, %_ZN7sbufferIjLj16EEC2EjRKj.exit89 ], [ %i.cw, %_ZN7sbufferIjLj16EEC2EjRKj.exit89.prol.loopexit ]
  %i.do = phi ptr [ %i.ct, %_ZN6bufferIjLb0ELj16EE9push_backERKj.exit.i.i84 ], [ %i.cx, %middle.block190 ], [ %i.cx, %_ZN7sbufferIjLj16EEC2EjRKj.exit89 ], [ %i.cx, %_ZN7sbufferIjLj16EEC2EjRKj.exit89.prol.loopexit ]
  %i.dp = phi ptr [ %i.bg, %_ZN6bufferIjLb0ELj16EE9push_backERKj.exit.i.i84 ], [ %i.cy, %middle.block190 ], [ %i.cy, %_ZN7sbufferIjLj16EEC2EjRKj.exit89 ], [ %i.cy, %_ZN7sbufferIjLj16EEC2EjRKj.exit89.prol.loopexit ]
  %i.dq = phi ptr [ %i.bf, %_ZN6bufferIjLb0ELj16EE9push_backERKj.exit.i.i84 ], [ %i.cz, %middle.block190 ], [ %i.cz, %_ZN7sbufferIjLj16EEC2EjRKj.exit89 ], [ %i.cz, %_ZN7sbufferIjLj16EEC2EjRKj.exit89.prol.loopexit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i32 10, ptr %i.b, align 4, !tbaa !8
  %.pre = load i32, ptr %i.h, align 8, !tbaa !29
  br label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

_ZN7sbufferIjLj16EEC2EjRKj.exit89:                ; preds = %_ZN7sbufferIjLj16EEC2EjRKj.exit89.prol.loopexit, %_ZN7sbufferIjLj16EEC2EjRKj.exit89
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %_ZN7sbufferIjLj16EEC2EjRKj.exit89 ], [ %indvars.iv.unr, %_ZN7sbufferIjLj16EEC2EjRKj.exit89.prol.loopexit ] ; 6 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !8
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv
  store i32 %i.dt, ptr %i.du, align 4, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !8
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv.next
  store i32 %i.dw, ptr %i.dx, align 4, !tbaa !8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.1
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !8
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv.next.1
  store i32 %i.dz, ptr %i.ea, align 4, !tbaa !8
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.2
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !8
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv.next.2
  store i32 %i.ec, ptr %i.ed, align 4, !tbaa !8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %_ZN7sbufferIjLj16EEC2EjRKj.exit89._crit_edge, label %_ZN7sbufferIjLj16EEC2EjRKj.exit89, !llvm.loop !85

bb.i:                                             ; preds = %.critedge4, %_ZN7sbufferIjLj16EEC2EjRKj.exit89._crit_edge
  %i.ee = phi i32 [ %.pre, %_ZN7sbufferIjLj16EEC2EjRKj.exit89._crit_edge ], [ %i.gu, %.critedge4 ] ; 2 uses
  %.0 = phi i32 [ undef, %_ZN7sbufferIjLj16EEC2EjRKj.exit89._crit_edge ], [ %.1, %.critedge4 ]
  %.035 = phi i32 [ 0, %_ZN7sbufferIjLj16EEC2EjRKj.exit89._crit_edge ], [ %i.gf, %.critedge4 ] ; 5 uses
  switch i32 %i.ee, label %..critedge2_crit_edge [
    i32 0, label %.critedge
    i32 1, label %bb.j
  ]

..critedge2_crit_edge:                            ; preds = %bb.i
  %.pre135 = load ptr, ptr %5, align 8, !tbaa !25
  br label %.critedge2

bb.j:                                             ; preds = %bb.i
  %i.ef = load ptr, ptr %5, align 8, !tbaa !25    ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !8
  %.not = icmp eq i32 %i.eg, 0
  br i1 %.not, label %.critedge, label %.critedge2

.critedge2:                                       ; preds = %..critedge2_crit_edge, %bb.j
  %i.eh = phi ptr [ %.pre135, %..critedge2_crit_edge ], [ %i.ef, %bb.j ]
  %i.ei = invoke noundef i32 @_ZNK11mpn_manager13div_normalizeEPKjjS1_jR7sbufferIjLj16EES4_(ptr nonnull align 1 poison, ptr noundef nonnull %i.eh, i32 noundef %i.ee, ptr noundef nonnull %i.b, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(80) %6, ptr noundef nonnull align 8 dereferenceable(80) %7)
          to label %bb.k unwind label %.loopexit.split-lp ; 2 uses

bb.k:                                             ; preds = %.critedge2
  %i.ej = load ptr, ptr %7, align 8, !tbaa !25
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !8  ; 2 uses
  %i.el = load ptr, ptr %5, align 8, !tbaa !25
  %i.em = load i32, ptr %i.dq, align 8, !tbaa !29 ; 2 uses
  %.031.i = add i32 %i.em, -1                     ; 2 uses
  %.not32.i = icmp eq i32 %.031.i, 0
  br i1 %.not32.i, label %_ZNK11mpn_manager5div_1ER7sbufferIjLj16EEjPj.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k
  %i.en = zext i32 %i.ek to i64                   ; 3 uses
  %i.eo = zext i32 %.031.i to i64
  %.pre.i = load ptr, ptr %6, align 8, !tbaa !25
  br label %bb.l

bb.l:                                             ; preds = %bb.p, %.lr.ph.i
  %i.ep = phi ptr [ %.pre.i, %.lr.ph.i ], [ %i.fc, %bb.p ] ; 3 uses
  %indvars.iv.i = phi i64 [ %i.eo, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.p ] ; 4 uses
  %.0.in33.i = phi i32 [ %i.em, %.lr.ph.i ], [ %i.fq, %bb.p ]
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %indvars.iv.i
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !8
  %i.es = zext i32 %i.er to i64
  %i.et = shl nuw i64 %i.es, 32
  %i.eu = add i32 %.0.in33.i, -2
  %i.ev = zext i32 %i.eu to i64                   ; 3 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %i.ev
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !8
  %i.ey = zext i32 %i.ex to i64
  %i.ez = or disjoint i64 %i.et, %i.ey            ; 3 uses
  %i.fa = udiv i64 %i.ez, %i.en                   ; 3 uses
  %.recomposed = urem i64 %i.ez, %i.en            ; 2 uses
  %i.fb = icmp ugt i64 %i.fa, 4294967295
  br i1 %i.fb, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  invoke void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.5, i32 noundef 260, ptr noundef nonnull @.str.6)
          to label %.noexc90 unwind label %.loopexit

.noexc90:                                         ; preds = %bb.m
  invoke void @_Z18invoke_exit_actionj(i32 noundef 114)
          to label %.noexc91 unwind label %.loopexit

.noexc91:                                         ; preds = %.noexc90
  %.pre36.i = load ptr, ptr %6, align 8, !tbaa !25
  br label %bb.n

bb.n:                                             ; preds = %.noexc91, %bb.l
  %i.fc = phi ptr [ %.pre36.i, %.noexc91 ], [ %i.ep, %bb.l ] ; 3 uses
  %i.fd = mul i64 %i.fa, %i.en
  %i.fe = icmp ugt i64 %i.fd, %i.ez
  %i.ff = trunc i64 %.recomposed to i32
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %i.ev ; 2 uses
  store i32 %i.ff, ptr %i.fg, align 4, !tbaa !8
  %i.fh = lshr i64 %.recomposed, 32
  %i.fi = trunc nuw i64 %i.fh to i32
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %indvars.iv.i ; 2 uses
  store i32 %i.fi, ptr %i.fj, align 4, !tbaa !8
  %i.fk = trunc i64 %i.fa to i32                  ; 2 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %i.ev ; 2 uses
  store i32 %i.fk, ptr %i.fl, align 4, !tbaa !8
  br i1 %i.fe, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.fm = add i32 %i.fk, -1
  store i32 %i.fm, ptr %i.fl, align 4, !tbaa !8
  %i.fn = load i32, ptr %i.fg, align 4, !tbaa !8
  %i.fo = add i32 %i.fn, %i.ek
  store i32 %i.fo, ptr %i.fj, align 4, !tbaa !8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.fp = and i64 %indvars.iv.next.i, 4294967295
  %.not.i = icmp eq i64 %i.fp, 0
  %i.fq = trunc nuw i64 %indvars.iv.i to i32
  br i1 %.not.i, label %_ZNK11mpn_manager5div_1ER7sbufferIjLj16EEjPj.exit, label %bb.l, !llvm.loop !31

_ZNK11mpn_manager5div_1ER7sbufferIjLj16EEjPj.exit: ; preds = %bb.p, %bb.k
  %i.fr = icmp eq i32 %i.ei, 0
  %i.fs = load i32, ptr %i.dn, align 8, !tbaa !29 ; 3 uses
  br i1 %i.fr, label %.preheader.i, label %.preheader27.i

.preheader27.i:                                   ; preds = %_ZNK11mpn_manager5div_1ER7sbufferIjLj16EEjPj.exit
  %.pre.i93 = load ptr, ptr %6, align 8, !tbaa !25
  %i.ft = add i32 %i.fs, -1
  %i.fu = zext i32 %i.ft to i64
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %.pre.i93, i64 %i.fu
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !8
  %i.fx = lshr i32 %i.fw, %i.ei
  br label %_ZNK11mpn_manager15div_unnormalizeER7sbufferIjLj16EES2_jPj.exit

.preheader.i:                                     ; preds = %_ZNK11mpn_manager5div_1ER7sbufferIjLj16EEjPj.exit
  %.not31.i = icmp eq i32 %i.fs, 0
  br i1 %.not31.i, label %_ZNK11mpn_manager15div_unnormalizeER7sbufferIjLj16EES2_jPj.exit, label %.lr.ph30.i

.lr.ph30.i:                                       ; preds = %.preheader.i
  %i.fy = load ptr, ptr %6, align 8, !tbaa !25
  %i.fz = zext i32 %i.fs to i64
  %i.ga = getelementptr [4 x i8], ptr %i.fy, i64 %i.fz
  %i.gb = getelementptr i8, ptr %i.ga, i64 -4
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !8
  br label %_ZNK11mpn_manager15div_unnormalizeER7sbufferIjLj16EES2_jPj.exit

_ZNK11mpn_manager15div_unnormalizeER7sbufferIjLj16EES2_jPj.exit: ; preds = %.lr.ph30.i, %.preheader27.i, %.preheader.i
  %.1 = phi i32 [ %.0, %.preheader.i ], [ %i.gc, %.lr.ph30.i ], [ %i.fx, %.preheader27.i ] ; 2 uses
  %i.gd = trunc i32 %.1 to i8
  %i.ge = add i8 %i.gd, 48
  %i.gf = add i32 %.035, 1
  %i.gg = zext i32 %.035 to i64
  %i.gh = getelementptr inbounds nuw i8, ptr %3, i64 %i.gg
  store i8 %i.ge, ptr %i.gh, align 1, !tbaa !86
  %.pr = load i32, ptr %i.h, align 8, !tbaa !29   ; 3 uses
  %i.gi = icmp eq i32 %.pr, 0
  br i1 %i.gi, label %.critedge4, label %.lr.ph119

.lr.ph119:                                        ; preds = %_ZNK11mpn_manager15div_unnormalizeER7sbufferIjLj16EES2_jPj.exit
  %i.gj = load ptr, ptr %5, align 8, !tbaa !25    ; 2 uses
  %i.gk = zext i32 %.pr to i64
  %indvars.iv.next129157 = add nsw i64 %i.gk, -1  ; 2 uses
  %i.gl = and i64 %indvars.iv.next129157, 4294967295
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %i.gl
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !8
  %i.go = icmp eq i32 %i.gn, 0
  br i1 %i.go, label %.lr.ph159, label %.critedge4

bb.q:                                             ; preds = %.lr.ph159
  %indvars.iv.next129 = add nsw i64 %indvars.iv.next129158, -1 ; 2 uses
  %i.gp = and i64 %indvars.iv.next129, 4294967295
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %i.gp
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !8
  %i.gs = icmp eq i32 %i.gr, 0
  br i1 %i.gs, label %.lr.ph159, label %.critedge4, !llvm.loop !87

.lr.ph159:                                        ; preds = %.lr.ph119, %bb.q
  %indvars.iv.next129158 = phi i64 [ %indvars.iv.next129, %bb.q ], [ %indvars.iv.next129157, %.lr.ph119 ] ; 2 uses
  %indvars = trunc i64 %indvars.iv.next129158 to i32 ; 3 uses
  store i32 %indvars, ptr %i.h, align 8, !tbaa !29
  %i.gt = icmp eq i32 %indvars, 0
  br i1 %i.gt, label %..critedge4.loopexit_crit_edge, label %bb.q, !llvm.loop !87

.loopexit:                                        ; preds = %bb.m, %.noexc90
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

.loopexit.split-lp:                               ; preds = %.critedge2
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

..critedge4.loopexit_crit_edge:                   ; preds = %.lr.ph159
  br label %.critedge4, !llvm.loop !87

.critedge4:                                       ; preds = %bb.q, %.lr.ph119, %..critedge4.loopexit_crit_edge, %_ZNK11mpn_manager15div_unnormalizeER7sbufferIjLj16EES2_jPj.exit
  %i.gu = phi i32 [ 0, %_ZNK11mpn_manager15div_unnormalizeER7sbufferIjLj16EES2_jPj.exit ], [ 0, %..critedge4.loopexit_crit_edge ], [ %.pr, %.lr.ph119 ], [ %indvars, %bb.q ]
  br label %bb.i, !llvm.loop !88

.critedge:                                        ; preds = %bb.i, %bb.j
  %i.gv = zext i32 %.035 to i64
  %i.gw = getelementptr inbounds nuw i8, ptr %3, i64 %i.gv
  store i8 0, ptr %i.gw, align 1, !tbaa !86
  %i.gx = add i32 %.035, -1                       ; 6 uses
  %i.gy = lshr i32 %i.gx, 1
  %i.gz = and i32 %i.gx, 1
  %i.ha = add nuw i32 %i.gy, %i.gz                ; 3 uses
  %.not124 = icmp eq i32 %i.ha, 0
  br i1 %.not124, label %._crit_edge, label %.lr.ph122.preheader

.lr.ph122.preheader:                              ; preds = %.critedge
  %i.hb = zext i32 %i.ha to i64                   ; 2 uses
  %8 = lshr i32 %i.gx, 1
  %9 = zext nneg i32 %8 to i64
  %10 = add nsw i64 %9, -1
  %11 = and i32 %.035, 1
  %12 = xor i32 %11, 1
  %13 = zext nneg i32 %12 to i64
  %xtraiter205 = and i64 %i.hb, 1
  %14 = sub nsw i64 0, %13
  %i.hc = icmp eq i64 %10, %14
  br i1 %i.hc, label %.lr.ph122.epil.preheader, label %.lr.ph122.preheader.new

.lr.ph122.preheader.new:                          ; preds = %.lr.ph122.preheader
  %unroll_iter = and i64 %i.hb, 4294967294
  br label %.lr.ph122

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph122
  %lcmp.mod206.not = icmp eq i64 %xtraiter205, 0
  br i1 %lcmp.mod206.not, label %._crit_edge, label %.lr.ph122.epil.preheader

.lr.ph122.epil.preheader:                         ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph122.preheader
  %indvars.iv131.epil.init = phi i64 [ 0, %.lr.ph122.preheader ], [ %indvars.iv.next132.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod207 = trunc i32 %i.ha to i1
  call void @llvm.assume(i1 %lcmp.mod207)
  %i.hd = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv131.epil.init ; 2 uses
  %i.he = trunc nuw nsw i64 %indvars.iv131.epil.init to i32
  %i.hf = sub i32 %i.gx, %i.he
  %i.hg = zext i32 %i.hf to i64
  %i.hh = getelementptr inbounds nuw i8, ptr %3, i64 %i.hg ; 2 uses
  %i.hi = load i8, ptr %i.hd, align 1, !tbaa !86
  %i.hj = load i8, ptr %i.hh, align 1, !tbaa !86
  store i8 %i.hj, ptr %i.hd, align 1, !tbaa !86
  store i8 %i.hi, ptr %i.hh, align 1, !tbaa !86
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph122.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  %i.hk = load ptr, ptr %7, align 8, !tbaa !25    ; 3 uses
  %.not.i.i.i97 = icmp eq ptr %i.hk, %i.do
  %i.hl = icmp eq ptr %i.hk, null
  %or.cond.i.i.i = or i1 %.not.i.i.i97, %i.hl
  br i1 %or.cond.i.i.i, label %_ZN6bufferIjLb0ELj16EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %._crit_edge
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.hk)
          to label %_ZN6bufferIjLb0ELj16EED2Ev.exit unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.hm = landingpad { ptr, i32 }
          catch ptr null
  %i.hn = extractvalue { ptr, i32 } %i.hm, 0
  call void @__clang_call_terminate(ptr %i.hn) #15
  unreachable

_ZN6bufferIjLb0ELj16EED2Ev.exit:                  ; preds = %._crit_edge, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  %i.ho = load ptr, ptr %6, align 8, !tbaa !25    ; 3 uses
  %.not.i.i.i98 = icmp eq ptr %i.ho, %i.dp
  %i.hp = icmp eq ptr %i.ho, null
  %or.cond.i.i.i99 = or i1 %.not.i.i.i98, %i.hp
  br i1 %or.cond.i.i.i99, label %_ZN6bufferIjLb0ELj16EED2Ev.exit100, label %bb.t

bb.t:                                             ; preds = %_ZN6bufferIjLb0ELj16EED2Ev.exit
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ho)
          to label %_ZN6bufferIjLb0ELj16EED2Ev.exit100 unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.hq = landingpad { ptr, i32 }
          catch ptr null
  %i.hr = extractvalue { ptr, i32 } %i.hq, 0
  call void @__clang_call_terminate(ptr %i.hr) #15
  unreachable

_ZN6bufferIjLb0ELj16EED2Ev.exit100:               ; preds = %_ZN6bufferIjLb0ELj16EED2Ev.exit, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  %i.hs = load ptr, ptr %5, align 8, !tbaa !25    ; 3 uses
  %.not.i.i.i101 = icmp eq ptr %i.hs, %i.g
  %i.ht = icmp eq ptr %i.hs, null
  %or.cond.i.i.i102 = or i1 %.not.i.i.i101, %i.ht
  br i1 %or.cond.i.i.i102, label %_ZN6bufferIjLb0ELj16EED2Ev.exit103, label %bb.v

bb.v:                                             ; preds = %_ZN6bufferIjLb0ELj16EED2Ev.exit100
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.hs)
          to label %_ZN6bufferIjLb0ELj16EED2Ev.exit103 unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.hu = landingpad { ptr, i32 }
          catch ptr null
  %i.hv = extractvalue { ptr, i32 } %i.hu, 0
  call void @__clang_call_terminate(ptr %i.hv) #15
  unreachable

_ZN6bufferIjLb0ELj16EED2Ev.exit103:               ; preds = %_ZN6bufferIjLb0ELj16EED2Ev.exit100, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %bb.z

.lr.ph122:                                        ; preds = %.lr.ph122, %.lr.ph122.preheader.new
  %indvars.iv131 = phi i64 [ 0, %.lr.ph122.preheader.new ], [ %indvars.iv.next132.1, %.lr.ph122 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph122.preheader.new ], [ %niter.next.1, %.lr.ph122 ]
  %i.hw = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv131 ; 2 uses
  %i.hx = trunc nuw nsw i64 %indvars.iv131 to i32
  %i.hy = sub i32 %i.gx, %i.hx
  %i.hz = zext i32 %i.hy to i64
  %i.ia = getelementptr inbounds nuw i8, ptr %3, i64 %i.hz ; 2 uses
  %i.ib = load i8, ptr %i.hw, align 1, !tbaa !86
  %i.ic = load i8, ptr %i.ia, align 1, !tbaa !86
  store i8 %i.ic, ptr %i.hw, align 1, !tbaa !86
  store i8 %i.ib, ptr %i.ia, align 1, !tbaa !86
  %indvars.iv.next132 = or disjoint i64 %indvars.iv131, 1 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.next132 ; 2 uses
  %i.ie = trunc nuw nsw i64 %indvars.iv.next132 to i32
  %i.if = sub i32 %i.gx, %i.ie
  %i.ig = zext i32 %i.if to i64
  %i.ih = getelementptr inbounds nuw i8, ptr %3, i64 %i.ig ; 2 uses
  %i.ii = load i8, ptr %i.id, align 1, !tbaa !86
  %i.ij = load i8, ptr %i.ih, align 1, !tbaa !86
  store i8 %i.ij, ptr %i.id, align 1, !tbaa !86
  store i8 %i.ii, ptr %i.ih, align 1, !tbaa !86
  %indvars.iv.next132.1 = add nuw nsw i64 %indvars.iv131, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph122, !llvm.loop !89

bb.x:                                             ; preds = %.loopexit, %.loopexit.split-lp
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @_ZN6bufferIjLb0ELj16EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @_ZN6bufferIjLb0ELj16EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %6) #14
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %lpad.phi, %bb.x ], [ %i.dr, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @_ZN6bufferIjLb0ELj16EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  resume { ptr, i32 } %.pn.pn

bb.z:                                             ; preds = %_ZN6bufferIjLb0ELj16EED2Ev.exit103, %bb.b
  ret ptr %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK11mpn_manager11display_rawERSoPKjj(ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.8, i64 noundef 1) ; 0 uses
  %.not9 = icmp eq i32 %3, 0
  br i1 %.not9, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = zext i32 %3 to i64
  %i.c = add nsw i64 %i.b, -1                     ; 3 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !8
  %i.f = zext i32 %i.e to i64
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.f) ; 0 uses
  %.not8.wide12 = icmp eq i64 %i.c, 0
  br i1 %.not8.wide12, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph.preheader, %bb.a
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.10, i64 noundef 1) ; 0 uses
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.i = phi i64 [ %i.k, %.lr.ph ], [ %i.c, %.lr.ph.preheader ]
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.9, i64 noundef 1) ; 0 uses
  %i.k = add nsw i64 %i.i, -1                     ; 3 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !8
  %i.n = zext i32 %i.m to i64
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.n) ; 0 uses
  %.not8.wide = icmp eq i64 %i.k, 0
  br i1 %.not8.wide, label %._crit_edge, label %.lr.ph, !llvm.loop !90
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #14 ; 0 uses
  tail call void @_ZSt9terminatev() #15
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #10

declare void @_ZN6memory10deallocateEPv(ptr noundef) local_unnamed_addr #7

declare noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12
end_hunk_0
