inline.NumInlined: 318
inline.NumDeleted: 102
begin_hunk_0_@_PyCfg_FromInstructionSequence:bb.a
  %.not.i = icmp eq ptr %.0.i93, null
  %i.ev = add i32 %.05.i, 1
  br i1 %.not.i, label %bb.t, label %.thread109, !llvm.loop !27

bb.t:                                             ; preds = %.thread109
  %i.ew = icmp slt i32 %.05.i, 0
  br i1 %i.ew, label %_PyCfgBuilder_CheckSize.exit.thread, label %_PyCfgBuilder_CheckSize.exit

_PyCfgBuilder_CheckSize.exit.thread:              ; preds = %bb.t
  %i.ex = call ptr @PyErr_NoMemory() #8           ; 0 uses
  br label %.thread111

.thread111:                                       ; preds = %bb.q, %bb.r, %basicblock_next_instr.exit.i.i88, %.lr.ph123, %basicblock_next_instr.exit.i.i, %basicblock_next_instr.exit.thread.i.i, %basicblock_next_instr.exit.thread.i.i91, %_PyCfgBuilder_CheckSize.exit.thread
  %i.ey = load ptr, ptr %i.i, align 8, !tbaa !11  ; 2 uses
  %.not12.i = icmp eq ptr %i.ey, null
  br i1 %.not12.i, label %_PyCfgBuilder_Free.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.thread111, %bb.v
  %.013.i = phi ptr [ %i.fb, %bb.v ], [ %i.ey, %.thread111 ] ; 3 uses
  %i.ez = getelementptr i8, ptr %.013.i, i64 24
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !23 ; 2 uses
  %.not11.i = icmp eq ptr %i.fa, null
  br i1 %.not11.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i
  call void @PyMem_Free(ptr noundef nonnull %i.fa) #8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph.i
  %i.fb = load ptr, ptr %.013.i, align 8, !tbaa !16 ; 2 uses
  call void @PyMem_Free(ptr noundef nonnull %.013.i) #8
  %.not.i94 = icmp eq ptr %i.fb, null
  br i1 %.not.i94, label %_PyCfgBuilder_Free.exit, label %.lr.ph.i, !llvm.loop !24

_PyCfgBuilder_Free.exit:                          ; preds = %bb.v, %.thread111
  call void @PyMem_Free(ptr noundef nonnull %i.c) #8
  br label %_PyCfgBuilder_CheckSize.exit

_PyCfgBuilder_CheckSize.exit:                     ; preds = %bb.e, %bb.c, %bb.t, %_PyCfgBuilder_Free.exit, %bb.a
  %.2 = phi ptr [ null, %bb.a ], [ %i.c, %bb.t ], [ null, %bb.e ], [ null, %_PyCfgBuilder_Free.exit ], [ null, %bb.c ]
  ret ptr %.2
}

declare i32 @_PyInstructionSequence_ApplyLabelMap(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @_PyCfg_ToInstructionSequence(ptr noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %.04865 = load ptr, ptr %0, align 8, !tbaa !26  ; 3 uses
  %.not66 = icmp eq ptr %.04865, null
  br i1 %.not66, label %.critedge60, label %.lr.ph

.lr.ph75:                                         ; preds = %.lr.ph
  %i.a = getelementptr i8, ptr %1, i64 16
  %i.b = getelementptr i8, ptr %1, i64 28
  br label %bb.b

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.04868 = phi ptr [ %.048, %.lr.ph ], [ %.04865, %bb.a ] ; 2 uses
  %.04267 = phi i32 [ %i.d, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %i.c = getelementptr i8, ptr %.04868, i64 8
  store i32 %.04267, ptr %i.c, align 8, !tbaa !7
  %i.d = add i32 %.04267, 1
  %i.e = getelementptr i8, ptr %.04868, i64 32
  %.048 = load ptr, ptr %i.e, align 8, !tbaa !26  ; 2 uses
  %.not = icmp eq ptr %.048, null
  br i1 %.not, label %.lr.ph75, label %.lr.ph, !llvm.loop !172

bb.b:                                             ; preds = %.lr.ph75, %.critedge58
  %.04774 = phi ptr [ %.04865, %.lr.ph75 ], [ %.047, %.critedge58 ] ; 4 uses
  %i.f = getelementptr i8, ptr %.04774, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !35
  %i.h = tail call i32 @_PyInstructionSequence_UseLabel(ptr noundef %1, i32 noundef %i.g) #8
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.j = getelementptr i8, ptr %.04774, i64 40    ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !28
  %.not5569 = icmp sgt i32 %i.k, 0
  br i1 %.not5569, label %.lr.ph71, label %.critedge58

.lr.ph71:                                         ; preds = %.preheader
  %i.l = getelementptr i8, ptr %.04774, i64 24
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph71, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph71 ], [ %indvars.iv.next, %bb.i ] ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !23
  %i.n = getelementptr [40 x i8], ptr %i.m, i64 %indvars.iv ; 7 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !29   ; 3 uses
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr [8 x i8], ptr @_PyOpcode_opcode_metadata, i64 %i.p
  %i.r = getelementptr i8, ptr %i.q, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !32
  %.fr62 = freeze i32 %i.s
  %i.t = and i32 %.fr62, 8
  %.not52 = icmp ne i32 %i.t, 0
  %i.u = add i32 %i.o, -263
  %i.v = icmp ult i32 %i.u, 3
  %or.cond = or i1 %i.v, %.not52
  br i1 %or.cond, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c
  %.phi.trans.insert = getelementptr i8, ptr %i.n, i64 4
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !43
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr i8, ptr %i.n, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !45
  %i.y = getelementptr i8, ptr %i.x, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !35   ; 2 uses
  %i.aa = getelementptr i8, ptr %i.n, i64 4
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !43
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %i.ab = phi i32 [ %.pre, %._crit_edge ], [ %i.z, %bb.d ]
  %i.ac = getelementptr i8, ptr %i.n, i64 8
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = getelementptr i8, ptr %i.n, i64 16
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %1, i32 noundef %i.o, i32 noundef %i.ab, i64 %i.ad, i64 %i.af) #8
  %.not54 = icmp eq i32 %i.ag, -1
  br i1 %.not54, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !160
  %i.ai = load i32, ptr %i.b, align 4, !tbaa !156
  %i.aj = add i32 %i.ai, -1
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr [44 x i8], ptr %i.ah, i64 %i.ak ; 3 uses
  %i.am = getelementptr i8, ptr %i.al, i64 24     ; 2 uses
  %i.an = getelementptr i8, ptr %i.n, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !148 ; 4 uses
  %.not53 = icmp eq ptr %i.ao, null
  br i1 %.not53, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr i8, ptr %i.ao, i64 8
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !35
  store i32 %i.aq, ptr %i.am, align 4, !tbaa !173
  %i.ar = getelementptr i8, ptr %i.ao, i64 60
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !174
  %i.at = getelementptr i8, ptr %i.al, i64 28
  store i32 %i.as, ptr %i.at, align 4, !tbaa !175
  %i.au = getelementptr i8, ptr %i.ao, i64 64
  %i.av = load i8, ptr %i.au, align 8
  %i.aw = and i8 %i.av, 1
  %i.ax = zext nneg i8 %i.aw to i32
  %i.ay = getelementptr i8, ptr %i.al, i64 32
  store i32 %i.ax, ptr %i.ay, align 4, !tbaa !176
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  store i32 -1, ptr %i.am, align 4, !tbaa !173
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.az = load i32, ptr %i.j, align 8, !tbaa !28
  %i.ba = sext i32 %i.az to i64
  %.not55 = icmp slt i64 %indvars.iv.next, %i.ba
  br i1 %.not55, label %bb.c, label %.critedge58, !llvm.loop !177

.critedge58:                                      ; preds = %bb.i, %.preheader
  %i.bb = getelementptr i8, ptr %.04774, i64 32
  %.047 = load ptr, ptr %i.bb, align 8, !tbaa !26 ; 2 uses
  %.not51 = icmp eq ptr %.047, null
  br i1 %.not51, label %.critedge60, label %bb.b, !llvm.loop !178

.critedge60:                                      ; preds = %.critedge58, %bb.a
  %i.bc = tail call i32 @_PyInstructionSequence_ApplyLabelMap(ptr noundef %1) #8
  %.lobit = ashr i32 %i.bc, 31
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.e, %.critedge60
  %.5 = phi i32 [ %.lobit, %.critedge60 ], [ -1, %bb.e ], [ -1, %bb.b ]
  ret i32 %.5
}

declare i32 @_PyInstructionSequence_UseLabel(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @_PyInstructionSequence_Addop(ptr noundef, i32 noundef, i32 noundef, i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @_PyCfg_OptimizedCfgToInstructionSequence(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef writeonly captures(none) %2, ptr noundef writeonly captures(none) %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct._Py_c_array_t, align 8      ; 11 uses
  %6 = alloca %struct._Py_c_array_t, align 8      ; 11 uses
  %7 = alloca %struct._Py_c_array_t, align 8      ; 11 uses
  %8 = alloca %struct._Py_c_array_t, align 8      ; 11 uses
  %9 = alloca %struct._Py_c_array_t, align 8      ; 11 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %10 = alloca %struct._Py_c_array_t, align 8     ; 11 uses
  %11 = alloca %struct._Py_c_array_t, align 8     ; 11 uses
  %.02875.i = load ptr, ptr %0, align 8, !tbaa !26 ; 2 uses
  %.not76.not.i = icmp eq ptr %.02875.i, null
  br i1 %.not76.not.i, label %.loopexit, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %11, i64 12
  %i.g = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 28
  %i.j = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %10, i64 12
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 28
  br label %.preheader.i

.preheader.i:                                     ; preds = %.critedge40.i, %.preheader.lr.ph.i
  %.02877.i = phi ptr [ %.02875.i, %.preheader.lr.ph.i ], [ %.028.i, %.critedge40.i ] ; 4 uses
  %i.o = getelementptr i8, ptr %.02877.i, i64 40  ; 8 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !28   ; 2 uses
  %.not3973.i = icmp sgt i32 %i.p, 0
  br i1 %.not3973.i, label %.lr.ph.i, label %.critedge40.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.q = getelementptr i8, ptr %.02877.i, i64 24  ; 12 uses
  %i.r = getelementptr i8, ptr %.02877.i, i64 44  ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.h, %.lr.ph.i
  %i.s = phi i32 [ %i.p, %.lr.ph.i ], [ %i.cx, %bb.h ]
  %.02974.i = phi i32 [ 0, %.lr.ph.i ], [ %i.cy, %bb.h ] ; 5 uses
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !23   ; 2 uses
  %i.u = sext i32 %.02974.i to i64                ; 5 uses
  %i.v = getelementptr [40 x i8], ptr %i.t, i64 %i.u ; 4 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !29   ; 2 uses
  %i.x = and i32 %i.w, -2
  %switch.i = icmp eq i32 %i.x, 258
  br i1 %switch.i, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.y = icmp eq i32 %i.w, 258
  %i.z = select i1 %i.y, i32 100, i32 103
  store i32 %i.z, ptr %i.v, align 8, !tbaa !29
  %i.aa = getelementptr i8, ptr %i.v, i64 8
  %.sroa.0.0.copyload = load <4 x i32>, ptr %i.aa, align 8 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.v, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !148 ; 2 uses
  %i.ad = add nsw i32 %.02974.i, 1                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #8
  store ptr %i.t, ptr %11, align 8, !tbaa !37
  %i.ae = load i32, ptr %i.r, align 4, !tbaa !39
  store i32 %i.ae, ptr %i.e, align 8, !tbaa !40
  store i32 0, ptr %i.f, align 4
  store i64 40, ptr %i.g, align 8, !tbaa !41
  store i32 16, ptr %i.h, align 8, !tbaa !42
  store i32 0, ptr %i.i, align 4
  %i.af = load i32, ptr %i.o, align 8, !tbaa !28
  %i.ag = add i32 %i.af, 1
  %i.ah = call i32 @_Py_CArray_EnsureCapacity(ptr noundef nonnull %11, i32 noundef %i.ag) #8
  %i.ai = icmp eq i32 %i.ah, -1
  br i1 %i.ai, label %basicblock_next_instr.exit.thread.i.i, label %basicblock_next_instr.exit.i.i

basicblock_next_instr.exit.thread.i.i:            ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #8
  br label %normalize_jumps.exit.thread

basicblock_next_instr.exit.i.i:                   ; preds = %bb.c
  %i.aj = load ptr, ptr %11, align 8, !tbaa !37   ; 2 uses
  store ptr %i.aj, ptr %i.q, align 8, !tbaa !23
  %i.ak = load i32, ptr %i.e, align 8, !tbaa !40
  store i32 %i.ak, ptr %i.r, align 4, !tbaa !39
  %i.al = load i32, ptr %i.o, align 8, !tbaa !28  ; 6 uses
  %i.am = add i32 %i.al, 1                        ; 2 uses
  store i32 %i.am, ptr %i.o, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #8
  %i.an = icmp eq i32 %i.al, -1
  br i1 %i.an, label %normalize_jumps.exit.thread, label %bb.d

bb.d:                                             ; preds = %basicblock_next_instr.exit.i.i
  %i.ao = icmp sgt i32 %i.al, %.02974.i
  br i1 %i.ao, label %.lr.ph.preheader.i.i, label %bb.e

.lr.ph.preheader.i.i:                             ; preds = %bb.d
  %i.ap = sext i32 %i.al to i64                   ; 5 uses
  %i.aq = sub nsw i64 %i.ap, %i.u
  %xtraiter = and i64 %i.aq, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.preheader.i.i
  %i.ar = load ptr, ptr %i.q, align 8, !tbaa !23  ; 2 uses
  %i.as = getelementptr [40 x i8], ptr %i.ar, i64 %i.ap
  %i.at = add i32 %i.al, -1
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr [40 x i8], ptr %i.ar, i64 %i.au
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.as, ptr noundef nonnull align 8 dereferenceable(40) %i.av, i64 40, i1 false), !tbaa.struct !53
  %indvars.iv.next.i.i.prol = add nsw i64 %i.ap, -1
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.preheader.i.i
  %indvars.iv.i.i.unr = phi i64 [ %i.ap, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ]
  %.0.in16.i.i.unr = phi i32 [ %i.am, %.lr.ph.preheader.i.i ], [ %i.al, %.lr.ph.i.i.prol ]
  %i.aw = add nsw i64 %i.ap, -1
  %i.ax = icmp eq i64 %i.aw, %i.u
  br i1 %i.ax, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i, %.lr.ph.i.i.prol.loopexit
  %.pre.i.i = load ptr, ptr %i.q, align 8, !tbaa !23
  br label %bb.e

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %.lr.ph.i.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  %.0.in16.i.i = phi i32 [ %i.bj, %.lr.ph.i.i ], [ %.0.in16.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.ay = load ptr, ptr %i.q, align 8, !tbaa !23  ; 2 uses
  %i.az = getelementptr [40 x i8], ptr %i.ay, i64 %indvars.iv.i.i
  %i.ba = add i32 %.0.in16.i.i, -2
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr [40 x i8], ptr %i.ay, i64 %i.bb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.az, ptr noundef nonnull align 8 dereferenceable(40) %i.bc, i64 40, i1 false), !tbaa.struct !53
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 2 uses
  %i.bd = load ptr, ptr %i.q, align 8, !tbaa !23  ; 2 uses
  %i.be = getelementptr [40 x i8], ptr %i.bd, i64 %indvars.iv.next.i.i
  %i.bf = shl i64 %indvars.iv.i.i, 32
  %sext = add i64 %i.bf, -8589934592
  %i.bg = ashr exact i64 %sext, 32
  %i.bh = getelementptr [40 x i8], ptr %i.bd, i64 %i.bg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.be, ptr noundef nonnull align 8 dereferenceable(40) %i.bh, i64 40, i1 false), !tbaa.struct !53
  %indvars.iv.next.i.i.1 = add nsw i64 %indvars.iv.i.i, -2 ; 2 uses
  %i.bi = icmp sgt i64 %indvars.iv.next.i.i.1, %i.u
  %i.bj = trunc nsw i64 %indvars.iv.next.i.i to i32
  br i1 %i.bi, label %.lr.ph.i.i, label %._crit_edge.loopexit.i.i, !llvm.loop !179

bb.e:                                             ; preds = %._crit_edge.loopexit.i.i, %bb.d
  %i.bk = phi ptr [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.aj, %bb.d ]
  %i.bl = getelementptr [40 x i8], ptr %i.bk, i64 %i.u ; 5 uses
  store i32 59, ptr %i.bl, align 8, !tbaa !7
  %.sroa.457.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  store i32 1, ptr %.sroa.457.0..sroa_idx.i, align 4, !tbaa !7
  %.sroa.558.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store <4 x i32> %.sroa.0.0.copyload, ptr %.sroa.558.0..sroa_idx.i, align 8
  %.sroa.659.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  store ptr null, ptr %.sroa.659.0..sroa_idx.i, align 8, !tbaa !26
  %.sroa.760.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  store ptr %i.ac, ptr %.sroa.760.0..sroa_idx.i, align 8, !tbaa !26
  %i.bm = add i32 %.02974.i, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #8
  %i.bn = load ptr, ptr %i.q, align 8, !tbaa !23
  store ptr %i.bn, ptr %10, align 8, !tbaa !37
  %i.bo = load i32, ptr %i.r, align 4, !tbaa !39
  store i32 %i.bo, ptr %i.j, align 8, !tbaa !40
  store i32 0, ptr %i.k, align 4
  store i64 40, ptr %i.l, align 8, !tbaa !41
  store i32 16, ptr %i.m, align 8, !tbaa !42
  store i32 0, ptr %i.n, align 4
  %i.bp = load i32, ptr %i.o, align 8, !tbaa !28
  %i.bq = add i32 %i.bp, 1
  %i.br = call i32 @_Py_CArray_EnsureCapacity(ptr noundef nonnull %10, i32 noundef %i.bq) #8
  %i.bs = icmp eq i32 %i.br, -1
  br i1 %i.bs, label %basicblock_next_instr.exit.thread.i54.i, label %basicblock_next_instr.exit.i41.i

basicblock_next_instr.exit.thread.i54.i:          ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #8
  br label %normalize_jumps.exit.thread

basicblock_next_instr.exit.i41.i:                 ; preds = %bb.e
  %i.bt = load ptr, ptr %10, align 8, !tbaa !37   ; 2 uses
  store ptr %i.bt, ptr %i.q, align 8, !tbaa !23
  %i.bu = load i32, ptr %i.j, align 8, !tbaa !40
  store i32 %i.bu, ptr %i.r, align 4, !tbaa !39
  %i.bv = load i32, ptr %i.o, align 8, !tbaa !28  ; 6 uses
  %i.bw = add i32 %i.bv, 1                        ; 2 uses
  store i32 %i.bw, ptr %i.o, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #8
  %i.bx = icmp eq i32 %i.bv, -1
  br i1 %i.bx, label %normalize_jumps.exit.thread, label %bb.f

bb.f:                                             ; preds = %basicblock_next_instr.exit.i41.i
  %i.by = icmp sgt i32 %i.bv, %i.ad
  br i1 %i.by, label %.lr.ph.preheader.i47.i, label %.._crit_edge_crit_edge.i42.i

.._crit_edge_crit_edge.i42.i:                     ; preds = %bb.f
  %.pre19.i43.i = sext i32 %i.ad to i64
  br label %bb.g

.lr.ph.preheader.i47.i:                           ; preds = %bb.f
  %i.bz = sext i32 %i.bv to i64                   ; 5 uses
  %i.ca = sext i32 %i.ad to i64                   ; 4 uses
  %i.cb = sub nsw i64 %i.bz, %i.ca
  %xtraiter68 = and i64 %i.cb, 1
  %lcmp.mod69.not = icmp eq i64 %xtraiter68, 0
  br i1 %lcmp.mod69.not, label %.lr.ph.i48.i.prol.loopexit, label %.lr.ph.i48.i.prol

.lr.ph.i48.i.prol:                                ; preds = %.lr.ph.preheader.i47.i
  %i.cc = load ptr, ptr %i.q, align 8, !tbaa !23  ; 2 uses
  %i.cd = getelementptr [40 x i8], ptr %i.cc, i64 %i.bz
  %i.ce = add i32 %i.bv, -1
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr [40 x i8], ptr %i.cc, i64 %i.cf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cd, ptr noundef nonnull align 8 dereferenceable(40) %i.cg, i64 40, i1 false), !tbaa.struct !53
  %indvars.iv.next.i51.i.prol = add nsw i64 %i.bz, -1
  br label %.lr.ph.i48.i.prol.loopexit

.lr.ph.i48.i.prol.loopexit:                       ; preds = %.lr.ph.i48.i.prol, %.lr.ph.preheader.i47.i
  %indvars.iv.i49.i.unr = phi i64 [ %i.bz, %.lr.ph.preheader.i47.i ], [ %indvars.iv.next.i51.i.prol, %.lr.ph.i48.i.prol ]
  %.0.in16.i50.i.unr = phi i32 [ %i.bw, %.lr.ph.preheader.i47.i ], [ %i.bv, %.lr.ph.i48.i.prol ]
  %i.ch = add nsw i64 %i.bz, -1
  %i.ci = icmp eq i64 %i.ch, %i.ca
  br i1 %i.ci, label %._crit_edge.loopexit.i52.i, label %.lr.ph.i48.i

._crit_edge.loopexit.i52.i:                       ; preds = %.lr.ph.i48.i, %.lr.ph.i48.i.prol.loopexit
  %.pre.i53.i = load ptr, ptr %i.q, align 8, !tbaa !23
  br label %bb.g

.lr.ph.i48.i:                                     ; preds = %.lr.ph.i48.i.prol.loopexit, %.lr.ph.i48.i
  %indvars.iv.i49.i = phi i64 [ %indvars.iv.next.i51.i.1, %.lr.ph.i48.i ], [ %indvars.iv.i49.i.unr, %.lr.ph.i48.i.prol.loopexit ] ; 4 uses
  %.0.in16.i50.i = phi i32 [ %i.cu, %.lr.ph.i48.i ], [ %.0.in16.i50.i.unr, %.lr.ph.i48.i.prol.loopexit ]
  %i.cj = load ptr, ptr %i.q, align 8, !tbaa !23  ; 2 uses
  %i.ck = getelementptr [40 x i8], ptr %i.cj, i64 %indvars.iv.i49.i
  %i.cl = add i32 %.0.in16.i50.i, -2
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr [40 x i8], ptr %i.cj, i64 %i.cm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ck, ptr noundef nonnull align 8 dereferenceable(40) %i.cn, i64 40, i1 false), !tbaa.struct !53
  %indvars.iv.next.i51.i = add nsw i64 %indvars.iv.i49.i, -1 ; 2 uses
  %i.co = load ptr, ptr %i.q, align 8, !tbaa !23  ; 2 uses
  %i.cp = getelementptr [40 x i8], ptr %i.co, i64 %indvars.iv.next.i51.i
  %i.cq = shl i64 %indvars.iv.i49.i, 32
  %sext90 = add i64 %i.cq, -8589934592
  %i.cr = ashr exact i64 %sext90, 32
  %i.cs = getelementptr [40 x i8], ptr %i.co, i64 %i.cr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cp, ptr noundef nonnull align 8 dereferenceable(40) %i.cs, i64 40, i1 false), !tbaa.struct !53
  %indvars.iv.next.i51.i.1 = add nsw i64 %indvars.iv.i49.i, -2 ; 2 uses
  %i.ct = icmp sgt i64 %indvars.iv.next.i51.i.1, %i.ca
  %i.cu = trunc nsw i64 %indvars.iv.next.i51.i to i32
  br i1 %i.ct, label %.lr.ph.i48.i, label %._crit_edge.loopexit.i52.i, !llvm.loop !179

bb.g:                                             ; preds = %._crit_edge.loopexit.i52.i, %.._crit_edge_crit_edge.i42.i
  %.pre-phi.i45.i = phi i64 [ %.pre19.i43.i, %.._crit_edge_crit_edge.i42.i ], [ %i.ca, %._crit_edge.loopexit.i52.i ]
  %i.cv = phi ptr [ %i.bt, %.._crit_edge_crit_edge.i42.i ], [ %.pre.i53.i, %._crit_edge.loopexit.i52.i ]
  %i.cw = getelementptr [40 x i8], ptr %i.cv, i64 %.pre-phi.i45.i ; 5 uses
  store i32 39, ptr %i.cw, align 8, !tbaa !7
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  store i32 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !7
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store <4 x i32> %.sroa.0.0.copyload, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  store ptr null, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !26
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  store ptr %i.ac, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !26
  %.pre.i = load i32, ptr %i.o, align 8, !tbaa !28
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b
  %i.cx = phi i32 [ %i.s, %bb.b ], [ %.pre.i, %bb.g ] ; 2 uses
  %.332.i = phi i32 [ %.02974.i, %bb.b ], [ %i.bm, %bb.g ]
  %i.cy = add i32 %.332.i, 1                      ; 2 uses
  %.not39.i = icmp slt i32 %i.cy, %i.cx
  br i1 %.not39.i, label %bb.b, label %.critedge40.i, !llvm.loop !180

.critedge40.i:                                    ; preds = %bb.h, %.preheader.i
  %i.cz = getelementptr i8, ptr %.02877.i, i64 32
  %.028.i = load ptr, ptr %i.cz, align 8, !tbaa !26 ; 2 uses
  %.not.not.i = icmp eq ptr %.028.i, null
  br i1 %.not.not.i, label %.loopexit.loopexit, label %.preheader.i, !llvm.loop !181

.loopexit.loopexit:                               ; preds = %.critedge40.i
  %.val.pre = load ptr, ptr %0, align 8, !tbaa !21
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.a
  %.val = phi ptr [ %.val.pre, %.loopexit.loopexit ], [ null, %bb.a ]
  %i.da = call fastcc i32 @calculate_stackdepth(ptr %.val) ; 2 uses
  store i32 %i.da, ptr %2, align 4, !tbaa !7
  %i.db = icmp slt i32 %i.da, 0
  br i1 %i.db, label %normalize_jumps.exit.thread, label %bb.i

bb.i:                                             ; preds = %.loopexit
  %i.dc = getelementptr i8, ptr %1, i64 32        ; 4 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !182
  %i.de = getelementptr i8, ptr %i.dd, i64 16
  %.val24.i = load i64, ptr %i.de, align 8, !tbaa !184
  %i.df = trunc i64 %.val24.i to i32              ; 3 uses
  %i.dg = getelementptr i8, ptr %1, i64 40        ; 5 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !188
  %i.di = getelementptr i8, ptr %i.dh, i64 16
  %.val23.i = load i64, ptr %i.di, align 8, !tbaa !184
  %i.dj = trunc i64 %.val23.i to i32
  %i.dk = getelementptr i8, ptr %1, i64 48        ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !189
  %i.dm = getelementptr i8, ptr %i.dl, i64 16
  %.val.i = load i64, ptr %i.dm, align 8, !tbaa !184
  %i.dn = trunc i64 %.val.i to i32                ; 3 uses
  %i.do = add i32 %i.dn, %i.dj                    ; 5 uses
  %i.dp = icmp slt i32 %i.do, 0
  br i1 %i.dp, label %build_cellfixedoffsets.exit.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dq = zext nneg i32 %i.do to i64              ; 4 uses
  %i.dr = shl nuw nsw i64 %i.dq, 2
  %i.ds = call ptr @PyMem_Malloc(i64 noundef %i.dr) #8 ; 18 uses
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %build_cellfixedoffsets.exit.thread.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.j
  %.not42.i.i = icmp eq i32 %i.do, 0
  br i1 %.not42.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i14.preheader

.lr.ph.i.i14.preheader:                           ; preds = %.preheader.i.i
  %min.iters.check = icmp ult i32 %i.do, 8
  br i1 %min.iters.check, label %.lr.ph.i.i14.preheader67, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i14.preheader
  %n.vec = and i64 %i.dq, 2147483640              ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.df, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op = add <4 x i32> splat (i32 4), %broadcast.splat
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.du = add <4 x i32> %vec.ind, %broadcast.splat
  %.reass = add <4 x i32> %vec.ind, %invariant.op
  %i.dv = getelementptr [4 x i8], ptr %i.ds, i64 %index ; 2 uses
  %i.dw = getelementptr i8, ptr %i.dv, i64 16
  store <4 x i32> %i.du, ptr %i.dv, align 4, !tbaa !7
  store <4 x i32> %.reass, ptr %i.dw, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.dx = icmp eq i64 %index.next, %n.vec
  br i1 %i.dx, label %middle.block, label %vector.body, !llvm.loop !190

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.dq
  br i1 %cmp.n, label %._crit_edge.i.i, label %.lr.ph.i.i14.preheader67

.lr.ph.i.i14.preheader67:                         ; preds = %.lr.ph.i.i14.preheader, %middle.block
  %indvars.iv.i.i15.ph = phi i64 [ 0, %.lr.ph.i.i14.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i14

build_cellfixedoffsets.exit.thread.i:             ; preds = %bb.j, %bb.i
  %i.dy = call ptr @PyErr_NoMemory() #8           ; 0 uses
  br label %prepare_localsplus.exit.thread

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i14, %middle.block, %.preheader.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i64 0, ptr %i.c, align 8, !tbaa !91
  %i.dz = load ptr, ptr %i.dg, align 8, !tbaa !188
  %i.ea = call i32 @PyDict_Next(ptr noundef %i.dz, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #8
  %.not39.i.i = icmp eq i32 %i.ea, 0
  br i1 %.not39.i.i, label %build_cellfixedoffsets.exit.thread49.i, label %.lr.ph41.i.i

.lr.ph.i.i14:                                     ; preds = %.lr.ph.i.i14.preheader67, %.lr.ph.i.i14
  %indvars.iv.i.i15 = phi i64 [ %indvars.iv.next.i.i16, %.lr.ph.i.i14 ], [ %indvars.iv.i.i15.ph, %.lr.ph.i.i14.preheader67 ] ; 3 uses
  %i.eb = trunc nuw nsw i64 %indvars.iv.i.i15 to i32
  %i.ec = add i32 %i.eb, %i.df
  %i.ed = getelementptr [4 x i8], ptr %i.ds, i64 %indvars.iv.i.i15
  store i32 %i.ec, ptr %i.ed, align 4, !tbaa !7
  %indvars.iv.next.i.i16 = add nuw nsw i64 %indvars.iv.i.i15, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i16, %i.dq
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i14, !llvm.loop !191

.lr.ph41.i.i:                                     ; preds = %._crit_edge.i.i, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.ee = load ptr, ptr %i.dc, align 8, !tbaa !182
  %i.ef = load ptr, ptr %i.a, align 8, !tbaa !49
  %i.eg = call i32 @PyDict_GetItemRef(ptr noundef %i.ee, ptr noundef %i.ef, ptr noundef nonnull %i.d) #8
  %i.eh = icmp slt i32 %i.eg, 0
  br i1 %i.eh, label %build_cellfixedoffsets.exit.thread47.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph41.i.i
  %i.ei = load ptr, ptr %i.d, align 8, !tbaa !49  ; 2 uses
  %i.ej = icmp eq ptr %i.ei, null
  br i1 %i.ej, label %bb.s, label %bb.l, !llvm.loop !192

bb.l:                                             ; preds = %bb.k
  %i.ek = call i32 @PyLong_AsInt(ptr noundef nonnull %i.ei) #8 ; 2 uses
  %i.el = load ptr, ptr %i.d, align 8, !tbaa !49  ; 3 uses
  %i.em = load i32, ptr %i.el, align 8, !tbaa !64 ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.em, -1
  br i1 %.not.i.i.i, label %bb.m, label %Py_DECREF.exit.i.i

bb.m:                                             ; preds = %bb.l
  %i.en = add nsw i32 %i.em, -1                   ; 2 uses
  store i32 %i.en, ptr %i.el, align 8, !tbaa !64
  %i.eo = icmp eq i32 %i.en, 0
  br i1 %i.eo, label %bb.n, label %Py_DECREF.exit.i.i

bb.n:                                             ; preds = %bb.m
  call void @_Py_Dealloc(ptr noundef nonnull %i.el) #8
  br label %Py_DECREF.exit.i.i

Py_DECREF.exit.i.i:                               ; preds = %bb.n, %bb.m, %bb.l
  %i.ep = icmp eq i32 %i.ek, -1
  br i1 %i.ep, label %bb.o, label %bb.p

bb.o:                                             ; preds = %Py_DECREF.exit.i.i
  %i.eq = call ptr @PyErr_Occurred() #8
  %.not31.i.i = icmp eq ptr %i.eq, null
  br i1 %.not31.i.i, label %bb.p, label %build_cellfixedoffsets.exit.thread47.i

bb.p:                                             ; preds = %bb.o, %Py_DECREF.exit.i.i
  %i.er = load ptr, ptr %i.b, align 8, !tbaa !49
  %i.es = call i32 @PyLong_AsInt(ptr noundef %i.er) #8 ; 2 uses
  %i.et = icmp eq i32 %i.es, -1
  br i1 %i.et, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.eu = call ptr @PyErr_Occurred() #8
  %.not32.i.i = icmp eq ptr %i.eu, null
  br i1 %.not32.i.i, label %bb.r, label %build_cellfixedoffsets.exit.thread47.i

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ev = sext i32 %i.es to i64
  %i.ew = getelementptr [4 x i8], ptr %i.ds, i64 %i.ev
  store i32 %i.ek, ptr %i.ew, align 4, !tbaa !7
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  %i.ex = load ptr, ptr %i.dg, align 8, !tbaa !188
  %i.ey = call i32 @PyDict_Next(ptr noundef %i.ex, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #8
  %.not.i.i = icmp eq i32 %i.ey, 0
  br i1 %.not.i.i, label %build_cellfixedoffsets.exit.thread49.i, label %.lr.ph41.i.i

build_cellfixedoffsets.exit.thread47.i:           ; preds = %bb.q, %bb.o, %.lr.ph41.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @PyMem_Free(ptr noundef nonnull %i.ds) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %prepare_localsplus.exit.thread

build_cellfixedoffsets.exit.thread49.i:           ; preds = %bb.s, %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.ez = load ptr, ptr %0, align 8, !tbaa !21    ; 6 uses
  %i.fa = load ptr, ptr %i.dg, align 8, !tbaa !188
  %i.fb = getelementptr i8, ptr %i.fa, i64 16
  %.val50.i.i = load i64, ptr %i.fb, align 8, !tbaa !184 ; 5 uses
  %i.fc = trunc i64 %.val50.i.i to i32            ; 3 uses
  %.not.i25.i = icmp eq i32 %i.fc, 0
  br i1 %.not.i25.i, label %bb.z, label %bb.t

bb.t:                                             ; preds = %build_cellfixedoffsets.exit.thread49.i
  %i.fd = load ptr, ptr %i.dc, align 8, !tbaa !182
  %i.fe = getelementptr i8, ptr %i.fd, i64 16
  %.val.i26.i = load i64, ptr %i.fe, align 8, !tbaa !184
  %i.ff = add i64 %.val.i26.i, %.val50.i.i
  %sext.i.i = shl i64 %i.ff, 32
  %i.fg = ashr exact i64 %sext.i.i, 32
  %i.fh = call ptr @PyMem_RawCalloc(i64 noundef %i.fg, i64 noundef 4) #8 ; 9 uses
  %i.fi = icmp eq ptr %i.fh, null
  br i1 %i.fi, label %bb.u, label %.preheader86.i.i

.preheader86.i.i:                                 ; preds = %bb.t
  %i.fj = icmp sgt i32 %i.fc, 0
  br i1 %i.fj, label %.lr.ph.preheader.i.i17, label %._crit_edge.i27.i

.lr.ph.preheader.i.i17:                           ; preds = %.preheader86.i.i
  %wide.trip.count.i.i = and i64 %.val50.i.i, 2147483647
  %i.fk = add nsw i64 %wide.trip.count.i.i, -1
  %xtraiter70 = and i64 %.val50.i.i, 3            ; 3 uses
  %i.fl = icmp ult i64 %i.fk, 3
  br i1 %i.fl, label %.lr.ph.i28.i.epil.preheader, label %.lr.ph.preheader.i.i17.new

.lr.ph.preheader.i.i17.new:                       ; preds = %.lr.ph.preheader.i.i17
  %unroll_iter = and i64 %.val50.i.i, 2147483644
  br label %.lr.ph.i28.i

bb.u:                                             ; preds = %bb.t
  %i.fm = call ptr @PyErr_NoMemory() #8           ; 0 uses
  br label %bb.ac

.lr.ph90.i.i.unr-lcssa:                           ; preds = %.lr.ph.i28.i
  %lcmp.mod71.not = icmp eq i64 %xtraiter70, 0
  br i1 %lcmp.mod71.not, label %.lr.ph90.i.i, label %.lr.ph.i28.i.epil.preheader

.lr.ph.i28.i.epil.preheader:                      ; preds = %.lr.ph90.i.i.unr-lcssa, %.lr.ph.preheader.i.i17
  %indvars.iv.i29.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i17 ], [ %indvars.iv.next.i30.i.3, %.lr.ph90.i.i.unr-lcssa ]
  %lcmp.mod72 = icmp ne i64 %xtraiter70, 0
  call void @llvm.assume(i1 %lcmp.mod72)
  br label %.lr.ph.i28.i.epil

.lr.ph.i28.i.epil:                                ; preds = %.lr.ph.i28.i.epil, %.lr.ph.i28.i.epil.preheader
  %indvars.iv.i29.i.epil = phi i64 [ %indvars.iv.i29.i.epil.init, %.lr.ph.i28.i.epil.preheader ], [ %indvars.iv.next.i30.i.epil, %.lr.ph.i28.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i28.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i28.i.epil ]
  %indvars.iv.next.i30.i.epil = add nuw nsw i64 %indvars.iv.i29.i.epil, 1 ; 2 uses
  %i.fn = getelementptr [4 x i8], ptr %i.ds, i64 %indvars.iv.i29.i.epil
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !7
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr [4 x i8], ptr %i.fh, i64 %i.fp
  %i.fr = trunc nuw nsw i64 %indvars.iv.next.i30.i.epil to i32
  store i32 %i.fr, ptr %i.fq, align 4, !tbaa !7
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter70
  br i1 %epil.iter.cmp.not, label %.lr.ph90.i.i, label %.lr.ph.i28.i.epil, !llvm.loop !193

.lr.ph90.i.i:                                     ; preds = %.lr.ph.i28.i.epil, %.lr.ph90.i.i.unr-lcssa
  %i.fs = getelementptr i8, ptr %i.ez, i64 24     ; 6 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.fu = getelementptr i8, ptr %i.ez, i64 44     ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %9, i64 12
  %i.fw = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.fx = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.fy = getelementptr inbounds nuw i8, ptr %9, i64 28
  %i.fz = getelementptr i8, ptr %i.ez, i64 40     ; 3 uses
  br label %bb.v

.lr.ph.i28.i:                                     ; preds = %.lr.ph.i28.i, %.lr.ph.preheader.i.i17.new
  %indvars.iv.i29.i = phi i64 [ 0, %.lr.ph.preheader.i.i17.new ], [ %indvars.iv.next.i30.i.3, %.lr.ph.i28.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i17.new ], [ %niter.next.3, %.lr.ph.i28.i ]
  %indvars.iv.next.i30.i = or disjoint i64 %indvars.iv.i29.i, 1 ; 2 uses
  %i.ga = getelementptr [4 x i8], ptr %i.ds, i64 %indvars.iv.i29.i
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !7
  %i.gc = sext i32 %i.gb to i64
  %i.gd = getelementptr [4 x i8], ptr %i.fh, i64 %i.gc
  %i.ge = trunc nuw nsw i64 %indvars.iv.next.i30.i to i32
  store i32 %i.ge, ptr %i.gd, align 4, !tbaa !7
  %indvars.iv.next.i30.i.1 = or disjoint i64 %indvars.iv.i29.i, 2 ; 2 uses
  %i.gf = getelementptr [4 x i8], ptr %i.ds, i64 %indvars.iv.next.i30.i
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !7
  %i.gh = sext i32 %i.gg to i64
  %i.gi = getelementptr [4 x i8], ptr %i.fh, i64 %i.gh
  %i.gj = trunc nuw nsw i64 %indvars.iv.next.i30.i.1 to i32
  store i32 %i.gj, ptr %i.gi, align 4, !tbaa !7
  %indvars.iv.next.i30.i.2 = or disjoint i64 %indvars.iv.i29.i, 3 ; 2 uses
  %i.gk = getelementptr [4 x i8], ptr %i.ds, i64 %indvars.iv.next.i30.i.1
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !7
  %i.gm = sext i32 %i.gl to i64
  %i.gn = getelementptr [4 x i8], ptr %i.fh, i64 %i.gm
  %i.go = trunc nuw nsw i64 %indvars.iv.next.i30.i.2 to i32
  store i32 %i.go, ptr %i.gn, align 4, !tbaa !7
  %indvars.iv.next.i30.i.3 = add nuw nsw i64 %indvars.iv.i29.i, 4 ; 3 uses
  %i.gp = getelementptr [4 x i8], ptr %i.ds, i64 %indvars.iv.next.i30.i.2
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !7
  %i.gr = sext i32 %i.gq to i64
  %i.gs = getelementptr [4 x i8], ptr %i.fh, i64 %i.gr
  %i.gt = trunc nuw nsw i64 %indvars.iv.next.i30.i.3 to i32
  store i32 %i.gt, ptr %i.gs, align 4, !tbaa !7
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph90.i.i.unr-lcssa, label %.lr.ph.i28.i, !llvm.loop !194

bb.v:                                             ; preds = %.thread.i32.i, %.lr.ph90.i.i
  %.03489.i.i = phi i32 [ 0, %.lr.ph90.i.i ], [ %.23673.i.i, %.thread.i32.i ] ; 5 uses
  %.03788.i.i = phi i32 [ 0, %.lr.ph90.i.i ], [ %i.ik, %.thread.i32.i ] ; 2 uses
  %i.gu = sext i32 %.03788.i.i to i64
  %i.gv = getelementptr [4 x i8], ptr %i.fh, i64 %i.gu
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !7  ; 2 uses
  %i.gx = icmp eq i32 %i.gw, 0
  br i1 %i.gx, label %.thread.i32.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gy = add i32 %i.gw, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #8
  %i.gz = load ptr, ptr %i.fs, align 8, !tbaa !23
  store ptr %i.gz, ptr %9, align 8, !tbaa !37
  %i.ha = load i32, ptr %i.fu, align 4, !tbaa !39
  store i32 %i.ha, ptr %i.ft, align 8, !tbaa !40
  store i32 0, ptr %i.fv, align 4
  store i64 40, ptr %i.fw, align 8, !tbaa !41
  store i32 16, ptr %i.fx, align 8, !tbaa !42
  store i32 0, ptr %i.fy, align 4
  %i.hb = load i32, ptr %i.fz, align 8, !tbaa !28
  %i.hc = add i32 %i.hb, 1
  %i.hd = call i32 @_Py_CArray_EnsureCapacity(ptr noundef nonnull %9, i32 noundef %i.hc) #8
  %i.he = icmp eq i32 %i.hd, -1
  br i1 %i.he, label %basicblock_next_instr.exit.thread.i.i.i, label %basicblock_next_instr.exit.i.i.i

basicblock_next_instr.exit.thread.i.i.i:          ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  br label %.loopexit.i33.i

basicblock_next_instr.exit.i.i.i:                 ; preds = %bb.w
  %i.hf = load ptr, ptr %9, align 8, !tbaa !37    ; 2 uses
  store ptr %i.hf, ptr %i.fs, align 8, !tbaa !23
  %i.hg = load i32, ptr %i.ft, align 8, !tbaa !40
  store i32 %i.hg, ptr %i.fu, align 4, !tbaa !39
  %i.hh = load i32, ptr %i.fz, align 8, !tbaa !28 ; 6 uses
  %i.hi = add i32 %i.hh, 1                        ; 2 uses
  store i32 %i.hi, ptr %i.fz, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  %i.hj = icmp eq i32 %i.hh, -1
  br i1 %i.hj, label %.loopexit.i33.i, label %bb.x

bb.x:                                             ; preds = %basicblock_next_instr.exit.i.i.i
  %i.hk = icmp sgt i32 %i.hh, %.03489.i.i
  br i1 %i.hk, label %.lr.ph.preheader.i.i.i, label %.._crit_edge_crit_edge.i.i.i

.._crit_edge_crit_edge.i.i.i:                     ; preds = %bb.x
  %.pre19.i.i.i = sext i32 %.03489.i.i to i64
  br label %bb.y

.lr.ph.preheader.i.i.i:                           ; preds = %bb.x
  %i.hl = sext i32 %i.hh to i64                   ; 5 uses
  %i.hm = sext i32 %.03489.i.i to i64             ; 4 uses
  %i.hn = sub nsw i64 %i.hl, %i.hm
  %xtraiter73 = and i64 %i.hn, 1
  %lcmp.mod74.not = icmp eq i64 %xtraiter73, 0
  br i1 %lcmp.mod74.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.preheader.i.i.i
  %i.ho = load ptr, ptr %i.fs, align 8, !tbaa !23 ; 2 uses
  %i.hp = getelementptr [40 x i8], ptr %i.ho, i64 %i.hl
  %i.hq = add i32 %i.hh, -1
  %i.hr = sext i32 %i.hq to i64
  %i.hs = getelementptr [40 x i8], ptr %i.ho, i64 %i.hr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.hp, ptr noundef nonnull align 8 dereferenceable(40) %i.hs, i64 40, i1 false), !tbaa.struct !53
  %indvars.iv.next.i.i.i.prol = add nsw i64 %i.hl, -1
  br label %.lr.ph.i.i.i.prol.loopexit

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i.unr = phi i64 [ %i.hl, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i.prol, %.lr.ph.i.i.i.prol ]
  %.0.in16.i.i.i.unr = phi i32 [ %i.hi, %.lr.ph.preheader.i.i.i ], [ %i.hh, %.lr.ph.i.i.i.prol ]
  %i.ht = add nsw i64 %i.hl, -1
  %i.hu = icmp eq i64 %i.ht, %i.hm
  br i1 %i.hu, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.pre.i.i.i = load ptr, ptr %i.fs, align 8, !tbaa !23
  br label %bb.y

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.1, %.lr.ph.i.i.i ], [ %indvars.iv.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 4 uses
  %.0.in16.i.i.i = phi i32 [ %i.ig, %.lr.ph.i.i.i ], [ %.0.in16.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.hv = load ptr, ptr %i.fs, align 8, !tbaa !23 ; 2 uses
  %i.hw = getelementptr [40 x i8], ptr %i.hv, i64 %indvars.iv.i.i.i
  %i.hx = add i32 %.0.in16.i.i.i, -2
  %i.hy = sext i32 %i.hx to i64
  %i.hz = getelementptr [40 x i8], ptr %i.hv, i64 %i.hy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.hw, ptr noundef nonnull align 8 dereferenceable(40) %i.hz, i64 40, i1 false), !tbaa.struct !53
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, -1 ; 2 uses
  %i.ia = load ptr, ptr %i.fs, align 8, !tbaa !23 ; 2 uses
  %i.ib = getelementptr [40 x i8], ptr %i.ia, i64 %indvars.iv.next.i.i.i
  %i.ic = shl i64 %indvars.iv.i.i.i, 32
  %sext91 = add i64 %i.ic, -8589934592
  %i.id = ashr exact i64 %sext91, 32
  %i.ie = getelementptr [40 x i8], ptr %i.ia, i64 %i.id
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ib, ptr noundef nonnull align 8 dereferenceable(40) %i.ie, i64 40, i1 false), !tbaa.struct !53
  %indvars.iv.next.i.i.i.1 = add nsw i64 %indvars.iv.i.i.i, -2 ; 2 uses
  %i.if = icmp sgt i64 %indvars.iv.next.i.i.i.1, %i.hm
  %i.ig = trunc nsw i64 %indvars.iv.next.i.i.i to i32
  br i1 %i.if, label %.lr.ph.i.i.i, label %._crit_edge.loopexit.i.i.i, !llvm.loop !179

bb.y:                                             ; preds = %._crit_edge.loopexit.i.i.i, %.._crit_edge_crit_edge.i.i.i
  %.pre-phi.i.i.i = phi i64 [ %.pre19.i.i.i, %.._crit_edge_crit_edge.i.i.i ], [ %i.hm, %._crit_edge.loopexit.i.i.i ]
  %i.ih = phi ptr [ %i.hf, %.._crit_edge_crit_edge.i.i.i ], [ %.pre.i.i.i, %._crit_edge.loopexit.i.i.i ]
  %i.ii = getelementptr [40 x i8], ptr %i.ih, i64 %.pre-phi.i.i.i ; 4 uses
  store i32 97, ptr %i.ii, align 8, !tbaa !7
  %.sroa.466.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ii, i64 4
  store i32 %i.gy, ptr %.sroa.466.0..sroa_idx.i.i, align 4, !tbaa !7
  %.sroa.567.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.567.0..sroa_idx.i.i, i8 -1, i64 16, i1 false)
  %.sroa.668.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ii, i64 24
  %i.ij = add nsw i32 %.03489.i.i, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.668.0..sroa_idx.i.i, i8 0, i64 16, i1 false)
  br label %.thread.i32.i

.thread.i32.i:                                    ; preds = %bb.y, %bb.v
  %.23673.i.i = phi i32 [ %i.ij, %bb.y ], [ %.03489.i.i, %bb.v ] ; 2 uses
  %i.ik = add i32 %.03788.i.i, 1
  %i.il = icmp slt i32 %.23673.i.i, %i.fc
  br i1 %i.il, label %bb.v, label %._crit_edge.i27.i, !llvm.loop !195

.loopexit.i33.i:                                  ; preds = %basicblock_next_instr.exit.i.i.i, %basicblock_next_instr.exit.thread.i.i.i
  call void @PyMem_RawFree(ptr noundef nonnull %i.fh) #8
  br label %bb.ac

._crit_edge.i27.i:                                ; preds = %.thread.i32.i, %.preheader86.i.i
  call void @PyMem_RawFree(ptr noundef nonnull %i.fh) #8
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge.i27.i, %build_cellfixedoffsets.exit.thread49.i
  %.not48.i.i = icmp eq i32 %i.dn, 0
  br i1 %.not48.i.i, label %insert_prefix_instructions.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  %i.im = getelementptr i8, ptr %i.ez, i64 24     ; 6 uses
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !23
  store ptr %i.in, ptr %8, align 8, !tbaa !37
  %i.io = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ip = getelementptr i8, ptr %i.ez, i64 44     ; 2 uses
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !39
  store i32 %i.iq, ptr %i.io, align 8, !tbaa !40
  %i.ir = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 0, ptr %i.ir, align 4
  %i.is = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 40, ptr %i.is, align 8, !tbaa !41
  %i.it = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i32 16, ptr %i.it, align 8, !tbaa !42
  %i.iu = getelementptr inbounds nuw i8, ptr %8, i64 28
  store i32 0, ptr %i.iu, align 4
  %i.iv = getelementptr i8, ptr %i.ez, i64 40     ; 3 uses
  %i.iw = load i32, ptr %i.iv, align 8, !tbaa !28
  %i.ix = add i32 %i.iw, 1
  %i.iy = call i32 @_Py_CArray_EnsureCapacity(ptr noundef nonnull %8, i32 noundef %i.ix) #8
  %i.iz = icmp eq i32 %i.iy, -1
  br i1 %i.iz, label %basicblock_next_instr.exit.thread.i63.i.i, label %basicblock_next_instr.exit.i51.i.i

basicblock_next_instr.exit.thread.i63.i.i:        ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  br label %bb.ac

basicblock_next_instr.exit.i51.i.i:               ; preds = %bb.aa
  %i.ja = load ptr, ptr %8, align 8, !tbaa !37    ; 2 uses
  store ptr %i.ja, ptr %i.im, align 8, !tbaa !23
  %i.jb = load i32, ptr %i.io, align 8, !tbaa !40
  store i32 %i.jb, ptr %i.ip, align 4, !tbaa !39
  %i.jc = load i32, ptr %i.iv, align 8, !tbaa !28 ; 7 uses
  %i.jd = add i32 %i.jc, 1                        ; 2 uses
  store i32 %i.jd, ptr %i.iv, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  %i.je = icmp eq i32 %i.jc, -1
  br i1 %i.je, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %basicblock_next_instr.exit.i51.i.i
  %i.jf = icmp sgt i32 %i.jc, 0
  br i1 %i.jf, label %.lr.ph.preheader.i56.i.i, label %basicblock_insert_instruction.exit64.i.i

.lr.ph.preheader.i56.i.i:                         ; preds = %bb.ab
  %i.jg = zext nneg i32 %i.jc to i64              ; 4 uses
  %xtraiter75 = and i64 %i.jg, 1
  %lcmp.mod76.not = icmp eq i64 %xtraiter75, 0
  br i1 %lcmp.mod76.not, label %.lr.ph.i57.i.i.prol.loopexit, label %.lr.ph.i57.i.i.prol

.lr.ph.i57.i.i.prol:                              ; preds = %.lr.ph.preheader.i56.i.i
  %i.jh = load ptr, ptr %i.im, align 8, !tbaa !23 ; 2 uses
  %i.ji = getelementptr [40 x i8], ptr %i.jh, i64 %i.jg
  %i.jj = zext nneg i32 %i.jc to i64
  %i.jk = getelementptr [40 x i8], ptr %i.jh, i64 %i.jj
  %i.jl = getelementptr i8, ptr %i.jk, i64 -40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ji, ptr noundef nonnull align 8 dereferenceable(40) %i.jl, i64 40, i1 false), !tbaa.struct !53
  %indvars.iv.next.i60.i.i.prol = add nsw i64 %i.jg, -1
  br label %.lr.ph.i57.i.i.prol.loopexit

.lr.ph.i57.i.i.prol.loopexit:                     ; preds = %.lr.ph.i57.i.i.prol, %.lr.ph.preheader.i56.i.i
  %indvars.iv.i58.i.i.unr = phi i64 [ %i.jg, %.lr.ph.preheader.i56.i.i ], [ %indvars.iv.next.i60.i.i.prol, %.lr.ph.i57.i.i.prol ]
  %.0.in16.i59.i.i.unr = phi i32 [ %i.jd, %.lr.ph.preheader.i56.i.i ], [ %i.jc, %.lr.ph.i57.i.i.prol ]
  %i.jm = icmp eq i32 %i.jc, 1
  br i1 %i.jm, label %._crit_edge.loopexit.i61.i.i, label %.lr.ph.i57.i.i

._crit_edge.loopexit.i61.i.i:                     ; preds = %.lr.ph.i57.i.i, %.lr.ph.i57.i.i.prol.loopexit
  %.pre.i62.i.i = load ptr, ptr %i.im, align 8, !tbaa !23
  br label %basicblock_insert_instruction.exit64.i.i

.lr.ph.i57.i.i:                                   ; preds = %.lr.ph.i57.i.i.prol.loopexit, %.lr.ph.i57.i.i
  %indvars.iv.i58.i.i = phi i64 [ %indvars.iv.next.i60.i.i.1, %.lr.ph.i57.i.i ], [ %indvars.iv.i58.i.i.unr, %.lr.ph.i57.i.i.prol.loopexit ] ; 4 uses
  %.0.in16.i59.i.i = phi i32 [ %i.jx, %.lr.ph.i57.i.i ], [ %.0.in16.i59.i.i.unr, %.lr.ph.i57.i.i.prol.loopexit ]
  %i.jn = load ptr, ptr %i.im, align 8, !tbaa !23 ; 2 uses
  %i.jo = getelementptr [40 x i8], ptr %i.jn, i64 %indvars.iv.i58.i.i
  %i.jp = add i32 %.0.in16.i59.i.i, -2
  %i.jq = sext i32 %i.jp to i64
  %i.jr = getelementptr [40 x i8], ptr %i.jn, i64 %i.jq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.jo, ptr noundef nonnull align 8 dereferenceable(40) %i.jr, i64 40, i1 false), !tbaa.struct !53
  %indvars.iv.next.i60.i.i = add nsw i64 %indvars.iv.i58.i.i, -1 ; 2 uses
  %i.js = load ptr, ptr %i.im, align 8, !tbaa !23 ; 2 uses
  %i.jt = getelementptr [40 x i8], ptr %i.js, i64 %indvars.iv.next.i60.i.i
  %i.ju = shl i64 %indvars.iv.i58.i.i, 32
  %sext92 = add i64 %i.ju, -8589934592
  %i.jv = ashr exact i64 %sext92, 32
  %i.jw = getelementptr [40 x i8], ptr %i.js, i64 %i.jv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.jt, ptr noundef nonnull align 8 dereferenceable(40) %i.jw, i64 40, i1 false), !tbaa.struct !53
  %indvars.iv.next.i60.i.i.1 = add nsw i64 %indvars.iv.i58.i.i, -2 ; 2 uses
  %.not85.i.i.1 = icmp eq i64 %indvars.iv.next.i60.i.i.1, 0
  %i.jx = trunc nsw i64 %indvars.iv.next.i60.i.i to i32
  br i1 %.not85.i.i.1, label %._crit_edge.loopexit.i61.i.i, label %.lr.ph.i57.i.i, !llvm.loop !179

basicblock_insert_instruction.exit64.i.i:         ; preds = %._crit_edge.loopexit.i61.i.i, %bb.ab
  %i.jy = phi ptr [ %.pre.i62.i.i, %._crit_edge.loopexit.i61.i.i ], [ %i.ja, %bb.ab ] ; 4 uses
  store i32 60, ptr %i.jy, align 8, !tbaa !7
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.jy, i64 4
  store i32 %i.dn, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !7
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i, i8 -1, i64 16, i1 false)
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.jy, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i.i, i8 0, i64 16, i1 false)
  br label %insert_prefix_instructions.exit.i

bb.ac:                                            ; preds = %basicblock_next_instr.exit.i51.i.i, %basicblock_next_instr.exit.thread.i63.i.i, %.loopexit.i33.i, %bb.u
  call void @PyMem_Free(ptr noundef nonnull %i.ds) #8
  br label %prepare_localsplus.exit.thread

insert_prefix_instructions.exit.i:                ; preds = %basicblock_insert_instruction.exit64.i.i, %bb.z
  %i.jz = load ptr, ptr %0, align 8, !tbaa !21    ; 2 uses
  %i.ka = load ptr, ptr %i.dc, align 8, !tbaa !182
  %i.kb = getelementptr i8, ptr %i.ka, i64 16
  %.val34.i34.i = load i64, ptr %i.kb, align 8, !tbaa !184
  %i.kc = trunc i64 %.val34.i34.i to i32          ; 3 uses
  %i.kd = load ptr, ptr %i.dg, align 8, !tbaa !188
  %i.ke = getelementptr i8, ptr %i.kd, i64 16
  %.val33.i.i = load i64, ptr %i.ke, align 8, !tbaa !184
  %i.kf = trunc i64 %.val33.i.i to i32
  %i.kg = load ptr, ptr %i.dk, align 8, !tbaa !189
  %i.kh = getelementptr i8, ptr %i.kg, i64 16
  %.val.i35.i = load i64, ptr %i.kh, align 8, !tbaa !184
  %i.ki = trunc i64 %.val.i35.i to i32
  %i.kj = add i32 %i.ki, %i.kf                    ; 4 uses
  %i.kk = icmp sgt i32 %i.kj, 0
  br i1 %i.kk, label %.lr.ph.preheader.i39.i, label %.preheader35.i.i

.lr.ph.preheader.i39.i:                           ; preds = %insert_prefix_instructions.exit.i
  %wide.trip.count.i40.i = zext nneg i32 %i.kj to i64 ; 2 uses
  %xtraiter77 = and i64 %wide.trip.count.i40.i, 1
  %i.kl = icmp eq i32 %i.kj, 1
  br i1 %i.kl, label %.lr.ph.i41.i.epil.preheader, label %.lr.ph.preheader.i39.i.new

.lr.ph.preheader.i39.i.new:                       ; preds = %.lr.ph.preheader.i39.i
  %unroll_iter82 = and i64 %wide.trip.count.i40.i, 2147483646
  br label %.lr.ph.i41.i

.preheader35.i.i.loopexit.unr-lcssa:              ; preds = %bb.aj
  %lcmp.mod79.not = icmp eq i64 %xtraiter77, 0
  br i1 %lcmp.mod79.not, label %.preheader35.i.i, label %.lr.ph.i41.i.epil.preheader

.lr.ph.i41.i.epil.preheader:                      ; preds = %.preheader35.i.i.loopexit.unr-lcssa, %.lr.ph.preheader.i39.i
  %indvars.iv.i42.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i39.i ], [ %indvars.iv.next.i44.i.1, %.preheader35.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.037.i.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i39.i ], [ %.1.i43.i.1, %.preheader35.i.i.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod81 = trunc i32 %i.kj to i1
  call void @llvm.assume(i1 %lcmp.mod81)
  %indvars43.i.i.epil = trunc i64 %indvars.iv.i42.i.epil.init to i32
  %i.km = getelementptr [4 x i8], ptr %i.ds, i64 %indvars.iv.i42.i.epil.init ; 2 uses
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !7  ; 2 uses
  %i.ko = add i32 %indvars43.i.i.epil, %i.kc
  %i.kp = icmp eq i32 %i.kn, %i.ko
  br i1 %i.kp, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i41.i.epil.preheader
  %i.kq = add i32 %.037.i.i.epil.init, 1
  br label %.preheader35.i.i

bb.ae:                                            ; preds = %.lr.ph.i41.i.epil.preheader
  %i.kr = sub i32 %i.kn, %.037.i.i.epil.init
  store i32 %i.kr, ptr %i.km, align 4, !tbaa !7
  br label %.preheader35.i.i

.preheader35.i.i:                                 ; preds = %.preheader35.i.i.loopexit.unr-lcssa, %bb.ae, %bb.ad, %insert_prefix_instructions.exit.i
  %.0.lcssa.i.i = phi i32 [ 0, %insert_prefix_instructions.exit.i ], [ %.1.i43.i.1, %.preheader35.i.i.loopexit.unr-lcssa ], [ %.037.i.i.epil.init, %bb.ae ], [ %i.kq, %bb.ad ] ; 2 uses
  %.not40.i.i = icmp eq ptr %i.jz, null
  br i1 %.not40.i.i, label %fix_cell_offsets.exit.i, label %.preheader.i36.i

.lr.ph.i41.i:                                     ; preds = %bb.aj, %.lr.ph.preheader.i39.i.new
  %indvars.iv.i42.i = phi i64 [ 0, %.lr.ph.preheader.i39.i.new ], [ %indvars.iv.next.i44.i.1, %bb.aj ] ; 4 uses
  %.037.i.i = phi i32 [ 0, %.lr.ph.preheader.i39.i.new ], [ %.1.i43.i.1, %bb.aj ] ; 3 uses
  %niter83 = phi i64 [ 0, %.lr.ph.preheader.i39.i.new ], [ %niter83.next.1, %bb.aj ]
  %indvars43.i.i = trunc i64 %indvars.iv.i42.i to i32
  %i.ks = getelementptr [4 x i8], ptr %i.ds, i64 %indvars.iv.i42.i ; 2 uses
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !7  ; 2 uses
  %i.ku = add i32 %indvars43.i.i, %i.kc
  %i.kv = icmp eq i32 %i.kt, %i.ku
  br i1 %i.kv, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.lr.ph.i41.i
  %i.kw = sub i32 %i.kt, %.037.i.i
  store i32 %i.kw, ptr %i.ks, align 4, !tbaa !7
  br label %.lr.ph.i41.i.1

bb.ag:                                            ; preds = %.lr.ph.i41.i
  %i.kx = add i32 %.037.i.i, 1
  br label %.lr.ph.i41.i.1

.lr.ph.i41.i.1:                                   ; preds = %bb.ag, %bb.af
  %.1.i43.i = phi i32 [ %.037.i.i, %bb.af ], [ %i.kx, %bb.ag ] ; 3 uses
  %indvars.iv.next.i44.i = or disjoint i64 %indvars.iv.i42.i, 1 ; 2 uses
  %indvars43.i.i.1 = trunc i64 %indvars.iv.next.i44.i to i32
  %i.ky = getelementptr [4 x i8], ptr %i.ds, i64 %indvars.iv.next.i44.i ; 2 uses
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !7  ; 2 uses
  %i.la = add i32 %indvars43.i.i.1, %i.kc
  %i.lb = icmp eq i32 %i.kz, %i.la
  br i1 %i.lb, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i41.i.1
  %i.lc = add i32 %.1.i43.i, 1
  br label %bb.aj

bb.ai:                                            ; preds = %.lr.ph.i41.i.1
  %i.ld = sub i32 %i.kz, %.1.i43.i
  store i32 %i.ld, ptr %i.ky, align 4, !tbaa !7
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.1.i43.i.1 = phi i32 [ %.1.i43.i, %bb.ai ], [ %i.lc, %bb.ah ] ; 3 uses
  %indvars.iv.next.i44.i.1 = add nuw nsw i64 %indvars.iv.i42.i, 2 ; 2 uses
  %niter83.next.1 = add i64 %niter83, 2           ; 2 uses
  %niter83.ncmp.1 = icmp eq i64 %niter83.next.1, %unroll_iter82
  br i1 %niter83.ncmp.1, label %.preheader35.i.i.loopexit.unr-lcssa, label %.lr.ph.i41.i, !llvm.loop !196

.preheader.i36.i:                                 ; preds = %.preheader35.i.i, %._crit_edge.i37.i
  %.03141.i.i = phi ptr [ %i.ls, %._crit_edge.i37.i ], [ %i.jz, %.preheader35.i.i ] ; 3 uses
  %i.le = getelementptr i8, ptr %.03141.i.i, i64 40
  %i.lf = load i32, ptr %i.le, align 8, !tbaa !28 ; 4 uses
  %i.lg = icmp sgt i32 %i.lf, 0
  br i1 %i.lg, label %.lr.ph39.i.i, label %._crit_edge.i37.i

.lr.ph39.i.i:                                     ; preds = %.preheader.i36.i
  %i.lh = getelementptr i8, ptr %.03141.i.i, i64 24
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !23 ; 3 uses
  %wide.trip.count47.i.i = zext nneg i32 %i.lf to i64 ; 2 uses
  %xtraiter84 = and i64 %wide.trip.count47.i.i, 1
  %i.lj = icmp eq i32 %i.lf, 1
  br i1 %i.lj, label %.epil.preheader, label %.lr.ph39.i.i.new

.lr.ph39.i.i.new:                                 ; preds = %.lr.ph39.i.i
  %unroll_iter88 = and i64 %wide.trip.count47.i.i, 2147483646
  br label %bb.al

._crit_edge.i37.i.loopexit.unr-lcssa:             ; preds = %bb.ap
  %lcmp.mod86.not = icmp eq i64 %xtraiter84, 0
  br i1 %lcmp.mod86.not, label %._crit_edge.i37.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i37.i.loopexit.unr-lcssa, %.lr.ph39.i.i
  %indvars.iv44.i.i.epil.init = phi i64 [ 0, %.lr.ph39.i.i ], [ %indvars.iv.next45.i.i.1, %._crit_edge.i37.i.loopexit.unr-lcssa ]
  %lcmp.mod87 = trunc i32 %i.lf to i1
  call void @llvm.assume(i1 %lcmp.mod87)
  %i.lk = getelementptr [40 x i8], ptr %i.li, i64 %indvars.iv44.i.i.epil.init ; 2 uses
  %i.ll = load i32, ptr %i.lk, align 8, !tbaa !29
  switch i32 %i.ll, label %._crit_edge.i37.i [
    i32 97, label %bb.ak
    i32 261, label %bb.ak
    i32 83, label %bb.ak
    i32 111, label %bb.ak
    i32 62, label %bb.ak
    i32 90, label %bb.ak
  ]

bb.ak:                                            ; preds = %.epil.preheader, %.epil.preheader, %.epil.preheader, %.epil.preheader, %.epil.preheader, %.epil.preheader
  %i.lm = getelementptr i8, ptr %i.lk, i64 4      ; 2 uses
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !43
  %i.lo = sext i32 %i.ln to i64
  %i.lp = getelementptr [4 x i8], ptr %i.ds, i64 %i.lo
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !7
  store i32 %i.lq, ptr %i.lm, align 4, !tbaa !43
  br label %._crit_edge.i37.i

._crit_edge.i37.i:                                ; preds = %._crit_edge.i37.i.loopexit.unr-lcssa, %bb.ak, %.epil.preheader, %.preheader.i36.i
  %i.lr = getelementptr i8, ptr %.03141.i.i, i64 32
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !36 ; 2 uses
  %.not.i38.i = icmp eq ptr %i.ls, null
  br i1 %.not.i38.i, label %fix_cell_offsets.exit.i, label %.preheader.i36.i, !llvm.loop !197

bb.al:                                            ; preds = %bb.ap, %.lr.ph39.i.i.new
  %indvars.iv44.i.i = phi i64 [ 0, %.lr.ph39.i.i.new ], [ %indvars.iv.next45.i.i.1, %bb.ap ] ; 3 uses
  %niter89 = phi i64 [ 0, %.lr.ph39.i.i.new ], [ %niter89.next.1, %bb.ap ]
  %i.lt = getelementptr [40 x i8], ptr %i.li, i64 %indvars.iv44.i.i ; 2 uses
  %i.lu = load i32, ptr %i.lt, align 8, !tbaa !29
  switch i32 %i.lu, label %bb.an [
    i32 97, label %bb.am
    i32 261, label %bb.am
    i32 83, label %bb.am
    i32 111, label %bb.am
    i32 62, label %bb.am
    i32 90, label %bb.am
  ]

bb.am:                                            ; preds = %bb.al, %bb.al, %bb.al, %bb.al, %bb.al, %bb.al
  %i.lv = getelementptr i8, ptr %i.lt, i64 4      ; 2 uses
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !43
  %i.lx = sext i32 %i.lw to i64
  %i.ly = getelementptr [4 x i8], ptr %i.ds, i64 %i.lx
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !7
  store i32 %i.lz, ptr %i.lv, align 4, !tbaa !43
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.ma = getelementptr [40 x i8], ptr %i.li, i64 %indvars.iv44.i.i ; 2 uses
  %i.mb = getelementptr i8, ptr %i.ma, i64 40
  %i.mc = load i32, ptr %i.mb, align 8, !tbaa !29
  switch i32 %i.mc, label %bb.ap [
    i32 97, label %bb.ao
    i32 261, label %bb.ao
    i32 83, label %bb.ao
    i32 111, label %bb.ao
    i32 62, label %bb.ao
    i32 90, label %bb.ao
  ]

bb.ao:                                            ; preds = %bb.an, %bb.an, %bb.an, %bb.an, %bb.an, %bb.an
  %i.md = getelementptr i8, ptr %i.ma, i64 44     ; 2 uses
  %i.me = load i32, ptr %i.md, align 4, !tbaa !43
  %i.mf = sext i32 %i.me to i64
  %i.mg = getelementptr [4 x i8], ptr %i.ds, i64 %i.mf
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !7
  store i32 %i.mh, ptr %i.md, align 4, !tbaa !43
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %indvars.iv.next45.i.i.1 = add nuw nsw i64 %indvars.iv44.i.i, 2 ; 2 uses
  %niter89.next.1 = add i64 %niter89, 2           ; 2 uses
  %niter89.ncmp.1 = icmp eq i64 %niter89.next.1, %unroll_iter88
  br i1 %niter89.ncmp.1, label %._crit_edge.i37.i.loopexit.unr-lcssa, label %bb.al, !llvm.loop !198

fix_cell_offsets.exit.i:                          ; preds = %._crit_edge.i37.i, %.preheader35.i.i
  call void @PyMem_Free(ptr noundef nonnull %i.ds) #8
  %.inv.i = icmp sgt i32 %.0.lcssa.i.i, -1
  br i1 %.inv.i, label %prepare_localsplus.exit, label %prepare_localsplus.exit.thread

prepare_localsplus.exit.thread:                   ; preds = %fix_cell_offsets.exit.i, %bb.ac, %build_cellfixedoffsets.exit.thread47.i, %build_cellfixedoffsets.exit.thread.i
  store i32 -1, ptr %3, align 4, !tbaa !7
  br label %normalize_jumps.exit.thread

prepare_localsplus.exit:                          ; preds = %fix_cell_offsets.exit.i
  %i.mi = add i32 %i.do, %i.df
  %i.mj = sub i32 %i.mi, %.0.lcssa.i.i            ; 2 uses
  store i32 %i.mj, ptr %3, align 4, !tbaa !7
  %i.mk = icmp slt i32 %i.mj, 0
  br i1 %i.mk, label %normalize_jumps.exit.thread, label %bb.aq

bb.aq:                                            ; preds = %prepare_localsplus.exit
  %.021.i = load ptr, ptr %0, align 8, !tbaa !26  ; 2 uses
  %.not22.i = icmp eq ptr %.021.i, null
  br i1 %.not22.i, label %convert_pseudo_ops.exit, label %.preheader.i18

.preheader.i18:                                   ; preds = %bb.aq, %._crit_edge.i
  %.023.i = phi ptr [ %.0.i19, %._crit_edge.i ], [ %.021.i, %bb.aq ] ; 3 uses
  %i.ml = getelementptr i8, ptr %.023.i, i64 40
  %i.mm = load i32, ptr %i.ml, align 8, !tbaa !28 ; 2 uses
  %i.mn = icmp sgt i32 %i.mm, 0
  br i1 %i.mn, label %.lr.ph.i20, label %._crit_edge.i

.lr.ph.i20:                                       ; preds = %.preheader.i18
  %i.mo = getelementptr i8, ptr %.023.i, i64 24
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !23
  %wide.trip.count.i = zext nneg i32 %i.mm to i64
  br label %bb.ar

._crit_edge.i:                                    ; preds = %bb.aw, %.preheader.i18
  %i.mq = getelementptr i8, ptr %.023.i, i64 32
  %.0.i19 = load ptr, ptr %i.mq, align 8, !tbaa !26 ; 2 uses
  %.not.i = icmp eq ptr %.0.i19, null
  br i1 %.not.i, label %convert_pseudo_ops.exit, label %.preheader.i18, !llvm.loop !199

bb.ar:                                            ; preds = %bb.aw, %.lr.ph.i20
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i20 ], [ %indvars.iv.next.i, %bb.aw ] ; 2 uses
  %i.mr = getelementptr [40 x i8], ptr %i.mp, i64 %indvars.iv.i ; 5 uses
  %.val.i21 = load i32, ptr %i.mr, align 8, !tbaa !29 ; 2 uses
  %i.ms = add i32 %.val.i21, -266
  %narrow.i.i = icmp ult i32 %i.ms, -3
  br i1 %narrow.i.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  store i32 27, ptr %i.mr, align 8, !tbaa !29
  %i.mt = getelementptr i8, ptr %i.mr, i64 4
  store i32 0, ptr %i.mt, align 4, !tbaa !43
  br label %bb.aw

bb.at:                                            ; preds = %bb.ar
  switch i32 %.val.i21, label %bb.aw [
    i32 261, label %bb.au
    i32 266, label %bb.av
  ]

bb.au:                                            ; preds = %bb.at
  store i32 84, ptr %i.mr, align 8, !tbaa !29
  br label %bb.aw

bb.av:                                            ; preds = %bb.at
  store i32 112, ptr %i.mr, align 8, !tbaa !29
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %bb.at, %bb.as
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.ar, !llvm.loop !200

convert_pseudo_ops.exit:                          ; preds = %._crit_edge.i, %bb.aq
  %i.mu = call fastcc range(i32 -1, 1) i32 @remove_redundant_nops_and_jumps(ptr noundef nonnull readonly %0)
  %i.mv = icmp eq i32 %i.mu, -1
  br i1 %i.mv, label %normalize_jumps.exit.thread, label %bb.ax

bb.ax:                                            ; preds = %convert_pseudo_ops.exit
  %i.mw = load ptr, ptr %0, align 8, !tbaa !21    ; 3 uses
  %.not22.i22 = icmp eq ptr %i.mw, null
  br i1 %.not22.i22, label %normalize_jumps.exit, label %.lr.ph.i23

.lr.ph27.i:                                       ; preds = %.lr.ph.i23
  %i.mx = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.na = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.nb = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.nc = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.nd = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.nf = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ng = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.nh = getelementptr inbounds nuw i8, ptr %5, i64 28
  %i.ni = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.nk = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.nl = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.nm = getelementptr inbounds nuw i8, ptr %7, i64 28
  br label %bb.ay

.lr.ph.i23:                                       ; preds = %bb.ax, %.lr.ph.i23
  %.01323.i = phi ptr [ %i.nr, %.lr.ph.i23 ], [ %i.mw, %bb.ax ] ; 2 uses
  %i.nn = getelementptr i8, ptr %.01323.i, i64 64 ; 2 uses
  %i.no = load i8, ptr %i.nn, align 8
  %i.np = and i8 %i.no, -3
  store i8 %i.np, ptr %i.nn, align 8
  %i.nq = getelementptr i8, ptr %.01323.i, i64 32
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !36 ; 2 uses
  %.not.i24 = icmp eq ptr %i.nr, null
  br i1 %.not.i24, label %.lr.ph27.i, label %.lr.ph.i23, !llvm.loop !201

bb.ay:                                            ; preds = %normalize_jumps_in_block.exit.i, %.lr.ph27.i
  %.01225.i = phi ptr [ %i.mw, %.lr.ph27.i ], [ %i.rw, %normalize_jumps_in_block.exit.i ] ; 6 uses
  %i.ns = getelementptr i8, ptr %.01225.i, i64 64 ; 3 uses
  %i.nt = load i8, ptr %i.ns, align 8
  %i.nu = or i8 %i.nt, 2
  store i8 %i.nu, ptr %i.ns, align 8
  %i.nv = getelementptr i8, ptr %.01225.i, i64 40 ; 3 uses
  %i.nw = load i32, ptr %i.nv, align 8, !tbaa !28 ; 3 uses
  %i.nx = icmp sgt i32 %i.nw, 0
  br i1 %i.nx, label %basicblock_last_instr.exit.i.i, label %normalize_jumps_in_block.exit.i

basicblock_last_instr.exit.i.i:                   ; preds = %bb.ay
  %i.ny = getelementptr i8, ptr %.01225.i, i64 24 ; 2 uses
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !23 ; 2 uses
  %i.oa = zext nneg i32 %i.nw to i64
  %i.ob = getelementptr [40 x i8], ptr %i.nz, i64 %i.oa ; 4 uses
  %i.oc = getelementptr i8, ptr %i.ob, i64 -40    ; 3 uses
  %i.od = icmp eq ptr %i.oc, null
  br i1 %i.od, label %normalize_jumps_in_block.exit.i, label %bb.az

bb.az:                                            ; preds = %basicblock_last_instr.exit.i.i
  %i.oe = load i32, ptr %i.oc, align 8, !tbaa !29 ; 2 uses
  %i.of = and i32 %i.oe, -4
  %switch.i.i = icmp eq i32 %i.of, 100
  br i1 %switch.i.i, label %bb.ba, label %normalize_jumps_in_block.exit.i

bb.ba:                                            ; preds = %bb.az
  %i.og = getelementptr i8, ptr %i.ob, i64 -16    ; 2 uses
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !45 ; 4 uses
  %i.oi = getelementptr i8, ptr %i.oh, i64 64
  %i.oj = load i8, ptr %i.oi, align 8
  %i.ok = and i8 %i.oj, 2
  %i.ol = icmp eq i8 %i.ok, 0
  br i1 %i.ol, label %bb.bb, label %switch.lookup.i.i

bb.bb:                                            ; preds = %bb.ba
  %i.om = getelementptr i8, ptr %i.ob, i64 -32
  %i.on = load <2 x i64>, ptr %i.om, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  store ptr %i.nz, ptr %7, align 8, !tbaa !37
  %i.oo = getelementptr i8, ptr %.01225.i, i64 44 ; 2 uses
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !39
  store i32 %i.op, ptr %i.ni, align 8, !tbaa !40
  store i32 0, ptr %i.nj, align 4
  store i64 40, ptr %i.nk, align 8, !tbaa !41
  store i32 16, ptr %i.nl, align 8, !tbaa !42
  store i32 0, ptr %i.nm, align 4
  %i.oq = add nuw i32 %i.nw, 1
  %i.or = call i32 @_Py_CArray_EnsureCapacity(ptr noundef nonnull %7, i32 noundef %i.oq) #8
  %i.os = icmp eq i32 %i.or, -1
  br i1 %i.os, label %basicblock_next_instr.exit.thread.i.i.i27, label %basicblock_next_instr.exit.i.i.i26

basicblock_next_instr.exit.thread.i.i.i27:        ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  br label %normalize_jumps.exit.thread

basicblock_next_instr.exit.i.i.i26:               ; preds = %bb.bb
  %i.ot = load ptr, ptr %7, align 8, !tbaa !37    ; 2 uses
  store ptr %i.ot, ptr %i.ny, align 8, !tbaa !23
  %i.ou = load i32, ptr %i.ni, align 8, !tbaa !40
  store i32 %i.ou, ptr %i.oo, align 4, !tbaa !39
  %i.ov = load i32, ptr %i.nv, align 8, !tbaa !28 ; 3 uses
  %i.ow = add i32 %i.ov, 1
  store i32 %i.ow, ptr %i.nv, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  %i.ox = icmp slt i32 %i.ov, 0
  br i1 %i.ox, label %normalize_jumps.exit.thread, label %basicblock_addop.exit.i.i

basicblock_addop.exit.i.i:                        ; preds = %basicblock_next_instr.exit.i.i.i26
  %i.oy = zext nneg i32 %i.ov to i64
  %i.oz = getelementptr [40 x i8], ptr %i.ot, i64 %i.oy ; 3 uses
  store i32 28, ptr %i.oz, align 8, !tbaa !29
  %i.pa = getelementptr i8, ptr %i.oz, i64 4
  store i32 0, ptr %i.pa, align 4, !tbaa !43
  %i.pb = getelementptr i8, ptr %i.oz, i64 8
  store <2 x i64> %i.on, ptr %i.pb, align 8
  br label %normalize_jumps_in_block.exit.i

switch.lookup.i.i:                                ; preds = %bb.ba
  %switch.offset.i.i = sub nuw nsw i32 203, %i.oe
  %i.pc = call ptr @PyMem_Calloc(i64 noundef 1, i64 noundef 72) #8 ; 11 uses
  %i.pd = icmp eq ptr %i.pc, null
  br i1 %i.pd, label %cfg_builder_new_block.exit.thread.i.i, label %bb.bc

cfg_builder_new_block.exit.thread.i.i:            ; preds = %switch.lookup.i.i
  %i.pe = call ptr @PyErr_NoMemory() #8           ; 0 uses
  br label %normalize_jumps.exit.thread

bb.bc:                                            ; preds = %switch.lookup.i.i
  %i.pf = load ptr, ptr %i.mx, align 8, !tbaa !11
  store ptr %i.pf, ptr %i.pc, align 8, !tbaa !16
  store ptr %i.pc, ptr %i.mx, align 8, !tbaa !11
  %i.pg = getelementptr i8, ptr %i.pc, i64 8
  store i32 -1, ptr %i.pg, align 8, !tbaa !7
  %i.ph = getelementptr i8, ptr %i.ob, i64 -32    ; 2 uses
  %i.pi = load <2 x i64>, ptr %i.ph, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  %i.pj = getelementptr i8, ptr %i.pc, i64 24     ; 5 uses
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !23
  store ptr %i.pk, ptr %6, align 8, !tbaa !37
  %i.pl = getelementptr i8, ptr %i.pc, i64 44     ; 4 uses
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !39
  store i32 %i.pm, ptr %i.my, align 8, !tbaa !40
  store i32 0, ptr %i.mz, align 4
  store i64 40, ptr %i.na, align 8, !tbaa !41
  store i32 16, ptr %i.nb, align 8, !tbaa !42
  store i32 0, ptr %i.nc, align 4
  %i.pn = getelementptr i8, ptr %i.pc, i64 40     ; 7 uses
  %i.po = load i32, ptr %i.pn, align 8, !tbaa !28
  %i.pp = add i32 %i.po, 1
  %i.pq = call i32 @_Py_CArray_EnsureCapacity(ptr noundef nonnull %6, i32 noundef %i.pp) #8
  %i.pr = icmp eq i32 %i.pq, -1
  br i1 %i.pr, label %basicblock_next_instr.exit.thread.i39.i.i, label %basicblock_next_instr.exit.i36.i.i

basicblock_next_instr.exit.thread.i39.i.i:        ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  br label %normalize_jumps.exit.thread

basicblock_next_instr.exit.i36.i.i:               ; preds = %bb.bc
  %i.ps = load ptr, ptr %6, align 8, !tbaa !37    ; 2 uses
  store ptr %i.ps, ptr %i.pj, align 8, !tbaa !23
  %i.pt = load i32, ptr %i.my, align 8, !tbaa !40
  store i32 %i.pt, ptr %i.pl, align 4, !tbaa !39
  %i.pu = load i32, ptr %i.pn, align 8, !tbaa !28 ; 3 uses
  %i.pv = add i32 %i.pu, 1
  store i32 %i.pv, ptr %i.pn, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  %i.pw = icmp slt i32 %i.pu, 0
  br i1 %i.pw, label %normalize_jumps.exit.thread, label %bb.bd

bb.bd:                                            ; preds = %basicblock_next_instr.exit.i36.i.i
  %i.px = zext nneg i32 %i.pu to i64
  %i.py = getelementptr [40 x i8], ptr %i.ps, i64 %i.px ; 3 uses
  store i32 28, ptr %i.py, align 8, !tbaa !29
  %i.pz = getelementptr i8, ptr %i.py, i64 4
  store i32 0, ptr %i.pz, align 4, !tbaa !43
  %i.qa = getelementptr i8, ptr %i.py, i64 8
  store <2 x i64> %i.pi, ptr %i.qa, align 8
  %i.qb = load <2 x i64>, ptr %i.ph, align 8
  %i.qc = load i32, ptr %i.pn, align 8, !tbaa !28 ; 3 uses
  %i.qd = icmp sgt i32 %i.qc, 0
  %i.qe = load ptr, ptr %i.pj, align 8, !tbaa !23 ; 2 uses
  br i1 %i.qd, label %basicblock_last_instr.exit.i.i.i, label %basicblock_last_instr.exit.thread.i.i.i

basicblock_last_instr.exit.i.i.i:                 ; preds = %bb.bd
  %i.qf = zext nneg i32 %i.qc to i64
  %i.qg = getelementptr [40 x i8], ptr %i.qe, i64 %i.qf
  %i.qh = getelementptr i8, ptr %i.qg, i64 -40    ; 2 uses
  %.not.i.i.i25 = icmp eq ptr %i.qh, null
  br i1 %.not.i.i.i25, label %basicblock_last_instr.exit.thread.i.i.i, label %bb.be

bb.be:                                            ; preds = %basicblock_last_instr.exit.i.i.i
  %.val.i.i.i = load i32, ptr %i.qh, align 8, !tbaa !29
  %i.qi = sext i32 %.val.i.i.i to i64
  %i.qj = getelementptr [8 x i8], ptr @_PyOpcode_opcode_metadata, i64 %i.qi
  %i.qk = getelementptr i8, ptr %i.qj, i64 4
  %i.ql = load i32, ptr %i.qk, align 4, !tbaa !32
  %i.qm = and i32 %i.ql, 8
  %.not10.i.i.i = icmp eq i32 %i.qm, 0
  br i1 %.not10.i.i.i, label %basicblock_last_instr.exit.thread.i.i.i, label %normalize_jumps.exit.thread

basicblock_last_instr.exit.thread.i.i.i:          ; preds = %bb.be, %basicblock_last_instr.exit.i.i.i, %bb.bd
  %i.qn = getelementptr i8, ptr %i.oh, i64 8
  %i.qo = load i32, ptr %i.qn, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  store ptr %i.qe, ptr %5, align 8, !tbaa !37
  %i.qp = load i32, ptr %i.pl, align 4, !tbaa !39
  store i32 %i.qp, ptr %i.nd, align 8, !tbaa !40
  store i32 0, ptr %i.ne, align 4
  store i64 40, ptr %i.nf, align 8, !tbaa !41
  store i32 16, ptr %i.ng, align 8, !tbaa !42
  store i32 0, ptr %i.nh, align 4
  %i.qq = add i32 %i.qc, 1
  %i.qr = call i32 @_Py_CArray_EnsureCapacity(ptr noundef nonnull %5, i32 noundef %i.qq) #8
  %i.qs = icmp eq i32 %i.qr, -1
  br i1 %i.qs, label %basicblock_next_instr.exit.thread.i.i.i.i, label %basicblock_next_instr.exit.i.i.i.i

basicblock_next_instr.exit.thread.i.i.i.i:        ; preds = %basicblock_last_instr.exit.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br label %normalize_jumps.exit.thread

basicblock_next_instr.exit.i.i.i.i:               ; preds = %basicblock_last_instr.exit.thread.i.i.i
  %i.qt = load ptr, ptr %5, align 8, !tbaa !37    ; 2 uses
  store ptr %i.qt, ptr %i.pj, align 8, !tbaa !23
  %i.qu = load i32, ptr %i.nd, align 8, !tbaa !40
  store i32 %i.qu, ptr %i.pl, align 4, !tbaa !39
  %i.qv = load i32, ptr %i.pn, align 8, !tbaa !28 ; 3 uses
  %i.qw = add i32 %i.qv, 1
  store i32 %i.qw, ptr %i.pn, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  %i.qx = icmp slt i32 %i.qv, 0
  br i1 %i.qx, label %normalize_jumps.exit.thread, label %bb.bf

bb.bf:                                            ; preds = %basicblock_next_instr.exit.i.i.i.i
  %i.qy = zext nneg i32 %i.qv to i64
  %i.qz = getelementptr [40 x i8], ptr %i.qt, i64 %i.qy ; 3 uses
  store i32 257, ptr %i.qz, align 8, !tbaa !29
  %i.ra = getelementptr i8, ptr %i.qz, i64 4
  store i32 %i.qo, ptr %i.ra, align 4, !tbaa !43
  %i.rb = getelementptr i8, ptr %i.qz, i64 8
  store <2 x i64> %i.qb, ptr %i.rb, align 8
  %i.rc = load i32, ptr %i.pn, align 8, !tbaa !28 ; 2 uses
  %i.rd = icmp sgt i32 %i.rc, 0
  call void @llvm.assume(i1 %i.rd)
  %i.re = load ptr, ptr %i.pj, align 8, !tbaa !23
  %i.rf = zext nneg i32 %i.rc to i64
  %i.rg = getelementptr [40 x i8], ptr %i.re, i64 %i.rf
  %i.rh = getelementptr i8, ptr %i.rg, i64 -16
  store ptr %i.oh, ptr %i.rh, align 8, !tbaa !45
  %i.ri = getelementptr i8, ptr %i.oh, i64 60
  %i.rj = load i32, ptr %i.ri, align 4, !tbaa !174
  %i.rk = getelementptr i8, ptr %i.pc, i64 60
  store i32 %i.rj, ptr %i.rk, align 4, !tbaa !174
  store i32 %switch.offset.i.i, ptr %i.oc, align 8, !tbaa !29
  %i.rl = getelementptr i8, ptr %.01225.i, i64 32 ; 3 uses
  %i.rm = load ptr, ptr %i.rl, align 8, !tbaa !36
  store ptr %i.rm, ptr %i.og, align 8, !tbaa !45
  %i.rn = load i8, ptr %i.ns, align 8
  %i.ro = and i8 %i.rn, 8
  %i.rp = getelementptr i8, ptr %i.pc, i64 64     ; 2 uses
  %i.rq = load i8, ptr %i.rp, align 8
  %i.rr = and i8 %i.rq, -9
  %i.rs = or disjoint i8 %i.rr, %i.ro
  store i8 %i.rs, ptr %i.rp, align 8
  %i.rt = load ptr, ptr %i.rl, align 8, !tbaa !36
  %i.ru = getelementptr i8, ptr %i.pc, i64 32
  store ptr %i.rt, ptr %i.ru, align 8, !tbaa !36
  store ptr %i.pc, ptr %i.rl, align 8, !tbaa !36
  br label %normalize_jumps_in_block.exit.i

normalize_jumps_in_block.exit.i:                  ; preds = %bb.bf, %basicblock_addop.exit.i.i, %bb.az, %basicblock_last_instr.exit.i.i, %bb.ay
  %i.rv = getelementptr i8, ptr %.01225.i, i64 32
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !36 ; 2 uses
  %.not15.not.i = icmp eq ptr %i.rw, null
  br i1 %.not15.not.i, label %normalize_jumps.exit.loopexit, label %bb.ay, !llvm.loop !202

normalize_jumps.exit.loopexit:                    ; preds = %normalize_jumps_in_block.exit.i
  %.val13.pre = load ptr, ptr %0, align 8, !tbaa !21
  br label %normalize_jumps.exit

normalize_jumps.exit:                             ; preds = %normalize_jumps.exit.loopexit, %bb.ax
  %.val13 = phi ptr [ %.val13.pre, %normalize_jumps.exit.loopexit ], [ null, %bb.ax ]
  %i.rx = call fastcc i32 @optimize_load_fast(ptr %.val13)
  %i.ry = icmp eq i32 %i.rx, -1
  br i1 %i.ry, label %normalize_jumps.exit.thread, label %bb.bg

bb.bg:                                            ; preds = %normalize_jumps.exit
  %i.rz = call i32 @_PyCfg_ToInstructionSequence(ptr noundef nonnull %0, ptr noundef %4)
  br label %normalize_jumps.exit.thread

normalize_jumps.exit.thread:                      ; preds = %basicblock_next_instr.exit.i.i.i.i, %bb.be, %basicblock_next_instr.exit.i36.i.i, %basicblock_next_instr.exit.i.i.i26, %basicblock_next_instr.exit.thread.i54.i, %basicblock_next_instr.exit.thread.i.i, %basicblock_next_instr.exit.i41.i, %basicblock_next_instr.exit.i.i, %cfg_builder_new_block.exit.thread.i.i, %basicblock_next_instr.exit.thread.i39.i.i, %basicblock_next_instr.exit.thread.i.i.i.i, %basicblock_next_instr.exit.thread.i.i.i27, %prepare_localsplus.exit.thread, %bb.bg, %normalize_jumps.exit, %convert_pseudo_ops.exit, %prepare_localsplus.exit, %.loopexit
  %.0 = phi i32 [ -1, %normalize_jumps.exit ], [ -1, %basicblock_next_instr.exit.thread.i54.i ], [ -1, %.loopexit ], [ -1, %prepare_localsplus.exit ], [ -1, %convert_pseudo_ops.exit ], [ -1, %prepare_localsplus.exit.thread ], [ %i.rz, %bb.bg ], [ -1, %basicblock_next_instr.exit.thread.i.i.i27 ], [ -1, %basicblock_next_instr.exit.thread.i.i.i.i ], [ -1, %basicblock_next_instr.exit.thread.i39.i.i ], [ -1, %cfg_builder_new_block.exit.thread.i.i ], [ -1, %basicblock_next_instr.exit.i.i ], [ -1, %basicblock_next_instr.exit.i41.i ], [ -1, %basicblock_next_instr.exit.thread.i.i ], [ -1, %basicblock_next_instr.exit.i.i.i26 ], [ -1, %basicblock_next_instr.exit.i36.i.i ], [ -1, %bb.be ], [ -1, %basicblock_next_instr.exit.i.i.i.i ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, -2147483648) i32 @calculate_stackdepth(ptr %.0.val) unnamed_addr #0 {
bb.a:
  %cond = icmp eq ptr %.0.val, null
  br i1 %cond, label %._crit_edge.i, label %.lr.ph

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %i.a = sext i32 %i.g to i64
  %i.b = shl nsw i64 %i.a, 3
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.a, %._crit_edge.loopexit.i
  %.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.b, %._crit_edge.loopexit.i ]
  %i.c = tail call ptr @PyMem_Malloc(i64 noundef %.0.lcssa.i) #8 ; 5 uses
  %.not8.i = icmp eq ptr %i.c, null
  br i1 %.not8.i, label %make_cfg_traversal_stack.exit.thread, label %make_cfg_traversal_stack.exit

.lr.ph.i:                                         ; preds = %.lr.ph, %.lr.ph.i
  %.011.i = phi i32 [ %i.g, %.lr.ph.i ], [ 0, %.lr.ph ]
  %.0710.i = phi ptr [ %i.i, %.lr.ph.i ], [ %.0.val, %.lr.ph ] ; 2 uses
  %i.d = getelementptr i8, ptr %.0710.i, i64 64   ; 2 uses
  %i.e = load i8, ptr %i.d, align 8
  %i.f = and i8 %i.e, -3
  store i8 %i.f, ptr %i.d, align 8
  %i.g = add i32 %.011.i, 1                       ; 2 uses
  %i.h = getelementptr i8, ptr %.0710.i, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !36   ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !122

make_cfg_traversal_stack.exit.thread:             ; preds = %._crit_edge.i
  %i.j = tail call ptr @PyErr_NoMemory() #8       ; 0 uses
  br label %bb.u

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.065109 = phi ptr [ %i.m, %.lr.ph ], [ %.0.val, %bb.a ] ; 2 uses
  %i.k = getelementptr i8, ptr %.065109, i64 60
  store i32 -2147483648, ptr %i.k, align 4, !tbaa !174
  %i.l = getelementptr i8, ptr %.065109, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !36   ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %.lr.ph.i, label %.lr.ph, !llvm.loop !203

make_cfg_traversal_stack.exit:                    ; preds = %._crit_edge.i
  %i.n = getelementptr i8, ptr %.0.val, i64 60    ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !174  ; 2 uses
  %or.cond.i = icmp slt i32 %i.o, 1
  br i1 %or.cond.i, label %bb.b, label %stackdepth_push.exit.thread

stackdepth_push.exit.thread:                      ; preds = %make_cfg_traversal_stack.exit
  %i.p = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !49
  %i.q = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.p, ptr noundef nonnull @.str.7) #8 ; 0 uses
  br label %.thread66

bb.b:                                             ; preds = %make_cfg_traversal_stack.exit
  %i.r = icmp slt i32 %i.o, 0
  br i1 %i.r, label %stackdepth_push.exit, label %.thread66

stackdepth_push.exit:                             ; preds = %bb.b
  store i32 0, ptr %i.n, align 4, !tbaa !174
  %i.s = getelementptr i8, ptr %i.c, i64 8
  store ptr %.0.val, ptr %i.c, align 8, !tbaa !26
  br label %.lr.ph122

.lr.ph122:                                        ; preds = %stackdepth_push.exit, %.thread54
  %.078121 = phi i32 [ %.540, %.thread54 ], [ 0, %stackdepth_push.exit ] ; 2 uses
  %.16120 = phi ptr [ %.9, %.thread54 ], [ %i.s, %stackdepth_push.exit ]
  %i.t = getelementptr i8, ptr %.16120, i64 -8    ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !26   ; 4 uses
  %i.v = getelementptr i8, ptr %i.u, i64 60
  %i.w = load i32, ptr %i.v, align 4, !tbaa !174  ; 2 uses
  %i.x = getelementptr i8, ptr %i.u, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !36   ; 3 uses
  %i.z = getelementptr i8, ptr %i.u, i64 40       ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !28
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph115, label %._crit_edge116

.lr.ph115:                                        ; preds = %.lr.ph122
  %i.ac = getelementptr i8, ptr %i.u, i64 24
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph115, %bb.q
  %indvars.iv = phi i64 [ 0, %.lr.ph115 ], [ %indvars.iv.next, %bb.q ] ; 2 uses
  %.073112 = phi i32 [ %i.w, %.lr.ph115 ], [ %i.az, %bb.q ] ; 3 uses
  %.179111 = phi i32 [ %.078121, %.lr.ph115 ], [ %i.bf, %bb.q ]
  %.27110 = phi ptr [ %i.t, %.lr.ph115 ], [ %.49, %bb.q ] ; 4 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !23
  %i.ae = getelementptr [40 x i8], ptr %i.ad, i64 %indvars.iv ; 8 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !29 ; 10 uses
  %i.ag = getelementptr i8, ptr %i.ae, i64 4      ; 4 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !43 ; 4 uses
  %i.ai = icmp slt i32 %i.af, 0
  br i1 %i.ai, label %split150, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = icmp samesign ult i32 %i.af, 255
  br i1 %i.aj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ak = zext nneg i32 %i.af to i64
  %i.al = getelementptr i8, ptr @_PyOpcode_Deopt, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !64
  %i.an = zext i8 %i.am to i32
  %.not.i98 = icmp eq i32 %i.af, %i.an
  br i1 %.not.i98, label %bb.f, label %split150

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ao = tail call i32 @_PyOpcode_num_popped(i32 noundef %i.af, i32 noundef %i.ah) #8 ; 2 uses
  %i.ap = tail call i32 @_PyOpcode_num_pushed(i32 noundef %i.af, i32 noundef %i.ah) #8 ; 2 uses
  %i.aq = icmp slt i32 %i.ao, 0
  %i.ar = icmp slt i32 %i.ap, 0
  %or.cond.i97 = select i1 %i.aq, i1 true, i1 %i.ar
  br i1 %or.cond.i97, label %._crit_edge149, label %bb.g

._crit_edge149:                                   ; preds = %bb.f
  %.pre151 = load i32, ptr %i.ae, align 8, !tbaa !29
  %.pre152 = load i32, ptr %i.ag, align 4, !tbaa !43
  br label %split150

split150:                                         ; preds = %bb.e, %bb.c, %._crit_edge149
  %i.as = phi i32 [ %.pre152, %._crit_edge149 ], [ %i.ah, %bb.c ], [ %i.ah, %bb.e ]
  %i.at = phi i32 [ %.pre151, %._crit_edge149 ], [ %i.af, %bb.c ], [ %i.af, %bb.e ]
  %i.au = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !49
  %i.av = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.au, ptr noundef nonnull @.str.5, i32 noundef %i.at, i32 noundef %i.as) #8 ; 0 uses
  br label %.thread66

bb.g:                                             ; preds = %bb.f
  %i.aw = and i32 %i.af, 2147483646
  %or.cond3.i = icmp ne i32 %i.aw, 264
  %i.ax = icmp ne i32 %i.af, 263
  %or.cond5.not29.i = and i1 %i.ax, %or.cond3.i
  %i.ay = sub nsw i32 %i.ap, %i.ao
  %.sink.i = select i1 %or.cond5.not29.i, i32 %i.ay, i32 0
  %i.az = add i32 %.sink.i, %.073112              ; 3 uses
  %i.ba = icmp slt i32 %i.az, 0
  br i1 %i.ba, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bb = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !49
  %i.bc = getelementptr i8, ptr %i.ae, i64 8
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !52
  %i.be = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.bb, ptr noundef nonnull @.str.6, i32 noundef %i.bd) #8 ; 0 uses
  br label %.thread66

bb.i:                                             ; preds = %bb.g
  %i.bf = tail call i32 @llvm.smax.i32(i32 %.179111, i32 %.073112) ; 10 uses
  %i.bg = load i32, ptr %i.ae, align 8, !tbaa !29 ; 11 uses
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr [8 x i8], ptr @_PyOpcode_opcode_metadata, i64 %i.bh
  %i.bj = getelementptr i8, ptr %i.bi, i64 4
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !32
  %.fr72 = freeze i32 %i.bk
  %i.bl = and i32 %.fr72, 8
  %.not91 = icmp eq i32 %i.bl, 0
  %i.bm = add i32 %i.bg, -266
  %i.bn = icmp ult i32 %i.bm, -3
  %or.cond.not74 = and i1 %i.bn, %.not91
  %.not92 = icmp eq i32 %i.bg, 68
  %or.cond71 = or i1 %.not92, %or.cond.not74
  br i1 %or.cond71, label %stackdepth_push.exit109.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bo = load i32, ptr %i.ag, align 4, !tbaa !43 ; 4 uses
  %i.bp = icmp slt i32 %i.bg, 0
  br i1 %i.bp, label %split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bq = icmp samesign ult i32 %i.bg, 255
  br i1 %i.bq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.br = zext nneg i32 %i.bg to i64
  %i.bs = getelementptr i8, ptr @_PyOpcode_Deopt, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !64
  %i.bu = zext i8 %i.bt to i32
  %.not.i105 = icmp eq i32 %i.bg, %i.bu
  br i1 %.not.i105, label %bb.m, label %split

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bv = tail call i32 @_PyOpcode_num_popped(i32 noundef %i.bg, i32 noundef %i.bo) #8 ; 2 uses
  %i.bw = tail call i32 @_PyOpcode_num_pushed(i32 noundef %i.bg, i32 noundef %i.bo) #8 ; 2 uses
  %i.bx = icmp slt i32 %i.bv, 0
  %i.by = icmp slt i32 %i.bw, 0
  %or.cond.i99 = select i1 %i.bx, i1 true, i1 %i.by
  br i1 %or.cond.i99, label %._crit_edge147, label %bb.n

._crit_edge147:                                   ; preds = %bb.m
  %.pre = load i32, ptr %i.ae, align 8, !tbaa !29
  %.pre148 = load i32, ptr %i.ag, align 4, !tbaa !43
  br label %split

split:                                            ; preds = %bb.l, %bb.j, %._crit_edge147
  %i.bz = phi i32 [ %.pre148, %._crit_edge147 ], [ %i.bo, %bb.j ], [ %i.bo, %bb.l ]
  %i.ca = phi i32 [ %.pre, %._crit_edge147 ], [ %i.bg, %bb.j ], [ %i.bg, %bb.l ]
  %i.cb = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !49
  %i.cc = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.cb, ptr noundef nonnull @.str.5, i32 noundef %i.ca, i32 noundef %i.bz) #8 ; 0 uses
  br label %.thread66

bb.n:                                             ; preds = %bb.m
  %i.cd = sub nsw i32 %i.bw, %i.bv
  %i.ce = add i32 %i.cd, %.073112                 ; 3 uses
  %i.cf = getelementptr i8, ptr %i.ae, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !45 ; 2 uses
  %i.ch = getelementptr i8, ptr %i.cg, i64 60     ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !174 ; 4 uses
  %i.cj = icmp slt i32 %i.ci, 0
  %i.ck = icmp eq i32 %i.ci, %i.ce
  %or.cond.i107 = or i1 %i.cj, %i.ck
  br i1 %or.cond.i107, label %bb.o, label %stackdepth_push.exit109

bb.o:                                             ; preds = %bb.n
  %i.cl = icmp slt i32 %i.ci, %i.ce
  %i.cm = icmp slt i32 %i.ci, 100
  %or.cond13.i = and i1 %i.cl, %i.cm
  br i1 %or.cond13.i, label %bb.p, label %stackdepth_push.exit109.thread

bb.p:                                             ; preds = %bb.o
  store i32 %i.ce, ptr %i.ch, align 4, !tbaa !174
  %i.cn = getelementptr i8, ptr %.27110, i64 8
  store ptr %i.cg, ptr %.27110, align 8, !tbaa !26
  br label %stackdepth_push.exit109.thread

stackdepth_push.exit109:                          ; preds = %bb.n
  %i.co = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !49
  %i.cp = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.co, ptr noundef nonnull @.str.7) #8 ; 0 uses
  br label %.thread66

stackdepth_push.exit109.thread:                   ; preds = %bb.o, %bb.p, %bb.i
  %.49 = phi ptr [ %i.cn, %bb.p ], [ %.27110, %bb.i ], [ %.27110, %bb.o ] ; 10 uses
  %i.cq = load i32, ptr %i.ae, align 8, !tbaa !29
  switch i32 %i.cq, label %bb.q [
    i32 257, label %.thread54
    i32 260, label %.thread54
    i32 77, label %.thread54
    i32 75, label %.thread54
    i32 76, label %.thread54
    i32 35, label %.thread54
    i32 104, label %.thread54
    i32 105, label %.thread54
  ]

bb.q:                                             ; preds = %stackdepth_push.exit109.thread
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cr = load i32, ptr %i.z, align 8, !tbaa !28
  %i.cs = sext i32 %i.cr to i64
  %i.ct = icmp slt i64 %indvars.iv.next, %i.cs
  br i1 %i.ct, label %bb.c, label %._crit_edge116, !llvm.loop !204

._crit_edge116:                                   ; preds = %bb.q, %.lr.ph122
  %.27.lcssa = phi ptr [ %i.t, %.lr.ph122 ], [ %.49, %bb.q ] ; 4 uses
  %.179.lcssa = phi i32 [ %.078121, %.lr.ph122 ], [ %i.bf, %bb.q ] ; 3 uses
  %.073.lcssa = phi i32 [ %i.w, %.lr.ph122 ], [ %i.az, %bb.q ] ; 3 uses
  %.not93 = icmp eq ptr %i.y, null
  br i1 %.not93, label %.thread54, label %bb.r

bb.r:                                             ; preds = %._crit_edge116
  %i.cu = getelementptr i8, ptr %i.y, i64 60      ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !174 ; 4 uses
  %i.cw = icmp slt i32 %i.cv, 0
  %i.cx = icmp eq i32 %i.cv, %.073.lcssa
  %or.cond.i110 = or i1 %i.cw, %i.cx
  br i1 %or.cond.i110, label %bb.s, label %stackdepth_push.exit113

bb.s:                                             ; preds = %bb.r
  %i.cy = icmp slt i32 %i.cv, %.073.lcssa
  %i.cz = icmp slt i32 %i.cv, 100
  %or.cond13.i112 = and i1 %i.cy, %i.cz
  br i1 %or.cond13.i112, label %bb.t, label %.thread54

bb.t:                                             ; preds = %bb.s
  store i32 %.073.lcssa, ptr %i.cu, align 4, !tbaa !174
  %i.da = getelementptr i8, ptr %.27.lcssa, i64 8
  store ptr %i.y, ptr %.27.lcssa, align 8, !tbaa !26
  br label %.thread54

stackdepth_push.exit113:                          ; preds = %bb.r
  %i.db = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !49
  %i.dc = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.db, ptr noundef nonnull @.str.7) #8 ; 0 uses
  br label %.thread66

.thread54:                                        ; preds = %stackdepth_push.exit109.thread, %stackdepth_push.exit109.thread, %stackdepth_push.exit109.thread, %stackdepth_push.exit109.thread, %stackdepth_push.exit109.thread, %stackdepth_push.exit109.thread, %stackdepth_push.exit109.thread, %stackdepth_push.exit109.thread, %bb.s, %bb.t, %._crit_edge116
  %.540 = phi i32 [ %.179.lcssa, %bb.t ], [ %.179.lcssa, %._crit_edge116 ], [ %.179.lcssa, %bb.s ], [ %i.bf, %stackdepth_push.exit109.thread ], [ %i.bf, %stackdepth_push.exit109.thread ], [ %i.bf, %stackdepth_push.exit109.thread ], [ %i.bf, %stackdepth_push.exit109.thread ], [ %i.bf, %stackdepth_push.exit109.thread ], [ %i.bf, %stackdepth_push.exit109.thread ], [ %i.bf, %stackdepth_push.exit109.thread ], [ %i.bf, %stackdepth_push.exit109.thread ] ; 2 uses
  %.9 = phi ptr [ %i.da, %bb.t ], [ %.27.lcssa, %._crit_edge116 ], [ %.27.lcssa, %bb.s ], [ %.49, %stackdepth_push.exit109.thread ], [ %.49, %stackdepth_push.exit109.thread ], [ %.49, %stackdepth_push.exit109.thread ], [ %.49, %stackdepth_push.exit109.thread ], [ %.49, %stackdepth_push.exit109.thread ], [ %.49, %stackdepth_push.exit109.thread ], [ %.49, %stackdepth_push.exit109.thread ], [ %.49, %stackdepth_push.exit109.thread ] ; 2 uses
  %.not90 = icmp eq ptr %.9, %i.c
  br i1 %.not90, label %.thread66, label %.lr.ph122

.thread66:                                        ; preds = %.thread54, %bb.b, %stackdepth_push.exit109, %split150, %bb.h, %split, %stackdepth_push.exit113, %stackdepth_push.exit.thread
  %.077 = phi i32 [ -1, %stackdepth_push.exit.thread ], [ -1, %stackdepth_push.exit109 ], [ -1, %stackdepth_push.exit113 ], [ -1, %split ], [ -1, %bb.h ], [ -1, %split150 ], [ 0, %bb.b ], [ %.540, %.thread54 ]
  tail call void @PyMem_Free(ptr noundef nonnull %i.c) #8
  br label %bb.u

bb.u:                                             ; preds = %make_cfg_traversal_stack.exit.thread, %.thread66
  %.1 = phi i32 [ %.077, %.thread66 ], [ -1, %make_cfg_traversal_stack.exit.thread ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @optimize_load_fast(ptr %.0.val) unnamed_addr #0 {
bb.a:
  %.not430 = icmp eq ptr %.0.val, null
  br i1 %.not430, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.a
  %i.a = tail call ptr @PyMem_Malloc(i64 noundef 0) #8 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %._crit_edge.i

._crit_edge.thread:                               ; preds = %.lr.ph
  %i.c = zext nneg i32 %.0204. to i64
  %i.d = tail call ptr @PyMem_Malloc(i64 noundef %i.c) #8 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %.lr.ph.i

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0204432 = phi i32 [ %.0204., %.lr.ph ], [ 0, %bb.a ]
  %.0206431 = phi ptr [ %i.i, %.lr.ph ], [ %.0.val, %bb.a ] ; 2 uses
  %i.f = getelementptr i8, ptr %.0206431, i64 40
  %i.g = load i32, ptr %i.f, align 8, !tbaa !28
  %.0204. = tail call i32 @llvm.smax.i32(i32 %.0204432, i32 %i.g) ; 2 uses
  %i.h = getelementptr i8, ptr %.0206431, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !36   ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge.thread, label %.lr.ph, !llvm.loop !205

bb.b:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.j = tail call ptr @PyErr_NoMemory() #8       ; 0 uses
  br label %bb.cn

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %i.k = sext i32 %i.r to i64
  %i.l = shl nsw i64 %i.k, 3
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge, %._crit_edge.loopexit.i
  %i.m = phi ptr [ %i.d, %._crit_edge.loopexit.i ], [ %i.a, %._crit_edge ] ; 26 uses
  %.0.lcssa.i = phi i64 [ %i.l, %._crit_edge.loopexit.i ], [ 0, %._crit_edge ]
  %i.n = tail call ptr @PyMem_Malloc(i64 noundef %.0.lcssa.i) #8 ; 5 uses
  %.not8.i = icmp eq ptr %i.n, null
  br i1 %.not8.i, label %.thread308, label %make_cfg_traversal_stack.exit

.lr.ph.i:                                         ; preds = %._crit_edge.thread, %.lr.ph.i
  %.011.i = phi i32 [ %i.r, %.lr.ph.i ], [ 0, %._crit_edge.thread ]
  %.0710.i = phi ptr [ %i.t, %.lr.ph.i ], [ %.0.val, %._crit_edge.thread ] ; 2 uses
  %i.o = getelementptr i8, ptr %.0710.i, i64 64   ; 2 uses
  %i.p = load i8, ptr %i.o, align 8
  %i.q = and i8 %i.p, -3
  store i8 %i.q, ptr %i.o, align 8
  %i.r = add i32 %.011.i, 1                       ; 2 uses
  %i.s = getelementptr i8, ptr %.0710.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !36   ; 2 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !122

.thread308:                                       ; preds = %._crit_edge.i
  %i.u = tail call ptr @PyErr_NoMemory() #8       ; 0 uses
  br label %ref_stack_fini.exit

make_cfg_traversal_stack.exit:                    ; preds = %._crit_edge.i
  store ptr %.0.val, ptr %i.n, align 8, !tbaa !26
  %i.v = getelementptr i8, ptr %i.n, i64 8
  %i.w = getelementptr i8, ptr %.0.val, i64 60
  store i32 0, ptr %i.w, align 4, !tbaa !174
  %i.x = getelementptr i8, ptr %.0.val, i64 64    ; 2 uses
  %i.y = load i8, ptr %i.x, align 8
  %i.z = or i8 %i.y, 2
  store i8 %i.z, ptr %i.x, align 8
  br label %bb.e

kill_local.exit.thread292.loopexit.loopexit.unr-lcssa: ; preds = %bb.cm
  %lcmp.mod672.not = icmp eq i64 %xtraiter671, 0
  br i1 %lcmp.mod672.not, label %kill_local.exit.thread292.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %kill_local.exit.thread292.loopexit.loopexit.unr-lcssa, %.lr.ph485
  %indvars.iv525.epil.init = phi i64 [ 0, %.lr.ph485 ], [ %indvars.iv.next526.1, %kill_local.exit.thread292.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod673 = trunc i32 %i.ok to i1
  tail call void @llvm.assume(i1 %lcmp.mod673)
  %i.aa = getelementptr i8, ptr %i.m, i64 %indvars.iv525.epil.init
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !64
  %.not238.epil = icmp eq i8 %i.ab, 0
  br i1 %.not238.epil, label %bb.c, label %kill_local.exit.thread292.loopexit

bb.c:                                             ; preds = %.epil.preheader
  %i.ac = load ptr, ptr %i.om, align 8, !tbaa !23
  %i.ad = getelementptr [40 x i8], ptr %i.ac, i64 %indvars.iv525.epil.init ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !29
  switch i32 %i.ae, label %kill_local.exit.thread292.loopexit [
    i32 84, label %.sink.split.epil
    i32 89, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  br label %.sink.split.epil

.sink.split.epil:                                 ; preds = %bb.d, %bb.c
  %.sink.epil = phi i32 [ 87, %bb.d ], [ 86, %bb.c ]
  store i32 %.sink.epil, ptr %i.ad, align 8, !tbaa !29
  br label %kill_local.exit.thread292.loopexit

kill_local.exit.thread292.loopexit:               ; preds = %kill_local.exit.thread292.loopexit.loopexit.unr-lcssa, %.sink.split.epil, %bb.c, %.epil.preheader, %.preheader338
  %.not231 = icmp eq ptr %.10, %i.n
  br i1 %.not231, label %kill_local.exit.thread292.thread, label %bb.e

bb.e:                                             ; preds = %make_cfg_traversal_stack.exit, %kill_local.exit.thread292.loopexit
  %.0488 = phi ptr [ %i.v, %make_cfg_traversal_stack.exit ], [ %.10, %kill_local.exit.thread292.loopexit ]
  %.sroa.180.0487 = phi i64 [ 0, %make_cfg_traversal_stack.exit ], [ %.sroa.180.5.lcssa586, %kill_local.exit.thread292.loopexit ] ; 2 uses
  %.sroa.0.0486 = phi ptr [ null, %make_cfg_traversal_stack.exit ], [ %.sroa.0.5.lcssa582, %kill_local.exit.thread292.loopexit ] ; 2 uses
  %i.af = getelementptr i8, ptr %.0488, i64 -8    ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !26 ; 6 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 40     ; 4 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !28
  %i.aj = sext i32 %i.ai to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.m, i8 0, i64 %i.aj, i1 false)
  %i.ak = getelementptr i8, ptr %i.ag, i64 60     ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !174
  %.not232433 = icmp sgt i32 %i.al, 0
  br i1 %.not232433, label %.lr.ph439, label %.preheader339

.preheader339:                                    ; preds = %bb.g, %bb.e
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.0486, %bb.e ], [ %.sroa.0.2, %bb.g ] ; 2 uses
  %.sroa.63.0.lcssa = phi i64 [ 0, %bb.e ], [ %i.av, %bb.g ] ; 2 uses
  %.sroa.180.1.lcssa = phi i64 [ %.sroa.180.0487, %bb.e ], [ %.sroa.180.2, %bb.g ] ; 2 uses
  %i.am = load i32, ptr %i.ah, align 8, !tbaa !28
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %.lr.ph477, label %basicblock_nofallthrough.exit.thread

.lr.ph477:                                        ; preds = %.preheader339
  %i.ao = getelementptr i8, ptr %i.ag, i64 24
  br label %bb.h

.lr.ph439:                                        ; preds = %bb.e, %bb.g
  %.sroa.180.1436 = phi i64 [ %.sroa.180.2, %bb.g ], [ %.sroa.180.0487, %bb.e ] ; 3 uses
  %.sroa.63.0435 = phi i64 [ %i.av, %bb.g ], [ 0, %bb.e ] ; 3 uses
  %.sroa.0.1434 = phi ptr [ %.sroa.0.2, %bb.g ], [ %.sroa.0.0486, %bb.e ] ; 3 uses
  %i.ap = icmp eq i64 %.sroa.63.0435, %.sroa.180.1436
  br i1 %i.ap, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph439
  %i.aq = shl i64 %.sroa.180.1436, 1
  %spec.select.i = tail call i64 @llvm.smax.i64(i64 %i.aq, i64 32) ; 2 uses
  %i.ar = shl i64 %spec.select.i, 3
  %i.as = tail call ptr @PyMem_Realloc(ptr noundef %.sroa.0.1434, i64 noundef %i.ar) #8 ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %kill_local.exit.thread292.thread.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph439
  %.sroa.0.2 = phi ptr [ %.sroa.0.1434, %.lr.ph439 ], [ %i.as, %bb.f ] ; 3 uses
  %.sroa.180.2 = phi i64 [ %.sroa.180.1436, %.lr.ph439 ], [ %spec.select.i, %bb.f ] ; 2 uses
  %i.au = getelementptr [8 x i8], ptr %.sroa.0.2, i64 %.sroa.63.0435
  store i64 -1, ptr %i.au, align 4
  %i.av = add nuw nsw i64 %.sroa.63.0435, 1       ; 3 uses
  %indvars = trunc i64 %i.av to i32
  %i.aw = load i32, ptr %i.ak, align 4, !tbaa !174
  %.not232 = icmp sgt i32 %i.aw, %indvars
  br i1 %.not232, label %.lr.ph439, label %.preheader339, !llvm.loop !206

bb.h:                                             ; preds = %.lr.ph477, %.thread241
  %indvars.iv = phi i64 [ 0, %.lr.ph477 ], [ %indvars.iv.next, %.thread241 ] ; 14 uses
  %.1182474 = phi ptr [ %i.af, %.lr.ph477 ], [ %.7.ph, %.thread241 ] ; 31 uses
  %.sroa.180.5473 = phi i64 [ %.sroa.180.1.lcssa, %.lr.ph477 ], [ %.sroa.180.48.ph, %.thread241 ] ; 47 uses
  %.sroa.63.3472 = phi i64 [ %.sroa.63.0.lcssa, %.lr.ph477 ], [ %.sroa.63.33.ph, %.thread241 ] ; 58 uses
  %.sroa.0.5471 = phi ptr [ %.sroa.0.1.lcssa, %.lr.ph477 ], [ %.sroa.0.48.ph, %.thread241 ] ; 71 uses
  %i.ax = load ptr, ptr %i.ao, align 8, !tbaa !23
  %i.ay = getelementptr [40 x i8], ptr %i.ax, i64 %indvars.iv ; 7 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !29 ; 8 uses
  %i.ba = getelementptr i8, ptr %i.ay, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !43 ; 22 uses
  switch i32 %i.az, label %bb.bu [
    i32 63, label %bb.i
    i32 84, label %bb.l
    i32 85, label %bb.n
    i32 89, label %bb.r
    i32 112, label %bb.v
    i32 113, label %bb.ab
    i32 114, label %bb.ai
    i32 59, label %bb.at
    i32 117, label %bb.av
    i32 12, label %bb.aw
    i32 15, label %bb.aw
    i32 16, label %bb.aw
    i32 18, label %bb.aw
    i32 19, label %bb.aw
    i32 72, label %bb.aw
    i32 24, label %bb.aw
    i32 25, label %bb.aw
    i32 26, label %bb.aw
    i32 43, label %bb.aw
    i32 66, label %bb.ba
    i32 67, label %bb.ba
    i32 78, label %bb.ba
    i32 79, label %bb.ba
    i32 98, label %bb.ba
    i32 105, label %bb.ba
    i32 107, label %bb.ba
    i32 109, label %bb.ba
    i32 10, label %bb.bb
    i32 108, label %bb.bb
    i32 6, label %bb.bd
    i32 70, label %bb.bf
    i32 80, label %bb.bi
    i32 96, label %bb.bi
    i32 95, label %bb.bn
    i32 32, label %bb.bn
    i32 106, label %bb.br
  ]

bb.i:                                             ; preds = %bb.h
  %i.bc = icmp sgt i64 %.sroa.63.3472, 0
  br i1 %i.bc, label %.lr.ph.i249, label %.thread241

.lr.ph.i249:                                      ; preds = %bb.i, %bb.k
  %i.bd = phi i64 [ %i.bk, %bb.k ], [ %.sroa.63.3472, %bb.i ]
  %.06.i = phi i64 [ %i.bl, %bb.k ], [ 0, %bb.i ] ; 2 uses
  %i.be = getelementptr [8 x i8], ptr %.sroa.0.5471, i64 %.06.i
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.be, align 4 ; 2 uses
  %.sroa.4.0.extract.shift.i = lshr i64 %.sroa.0.0.copyload.i.i, 32
  %.sroa.4.0.extract.trunc.i = trunc nuw i64 %.sroa.4.0.extract.shift.i to i32
  %i.bf = icmp eq i32 %i.bb, %.sroa.4.0.extract.trunc.i
  br i1 %i.bf, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph.i249
  %sext.i = shl i64 %.sroa.0.0.copyload.i.i, 32
  %i.bg = ashr exact i64 %sext.i, 32
  %i.bh = getelementptr i8, ptr %i.m, i64 %i.bg   ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !64
  %i.bj = or i8 %i.bi, 1
  store i8 %i.bj, ptr %i.bh, align 1, !tbaa !64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph.i249
  %i.bk = phi i64 [ %.sroa.63.3472, %bb.j ], [ %i.bd, %.lr.ph.i249 ] ; 2 uses
  %i.bl = add nuw nsw i64 %.06.i, 1               ; 2 uses
  %i.bm = icmp slt i64 %i.bl, %i.bk
  br i1 %i.bm, label %.lr.ph.i249, label %.thread241, !llvm.loop !207

bb.l:                                             ; preds = %bb.h
  %.sroa.289.0.insert.ext = zext i32 %i.bb to i64
  %.sroa.289.0.insert.shift = shl nuw i64 %.sroa.289.0.insert.ext, 32
  %.sroa.088.0.insert.insert = or disjoint i64 %.sroa.289.0.insert.shift, %indvars.iv
  %i.bn = icmp eq i64 %.sroa.63.3472, %.sroa.180.5473
  br i1 %i.bn, label %bb.m, label %ref_stack_push.exit256

bb.m:                                             ; preds = %bb.l
  %i.bo = shl i64 %.sroa.180.5473, 1
  %spec.select.i253 = tail call i64 @llvm.smax.i64(i64 %i.bo, i64 32) ; 2 uses
  %i.bp = shl i64 %spec.select.i253, 3
  %i.bq = tail call ptr @PyMem_Realloc(ptr noundef %.sroa.0.5471, i64 noundef %i.bp) #8 ; 2 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %kill_local.exit.thread292.thread.sink.split, label %ref_stack_push.exit256

ref_stack_push.exit256:                           ; preds = %bb.l, %bb.m
  %.sroa.0.6 = phi ptr [ %.sroa.0.5471, %bb.l ], [ %i.bq, %bb.m ] ; 2 uses
  %.sroa.180.6 = phi i64 [ %.sroa.180.5473, %bb.l ], [ %spec.select.i253, %bb.m ]
  %i.bs = getelementptr [8 x i8], ptr %.sroa.0.6, i64 %.sroa.63.3472
  store i64 %.sroa.088.0.insert.insert, ptr %i.bs, align 4
  %i.bt = add i64 %.sroa.63.3472, 1
  br label %.thread241

bb.n:                                             ; preds = %bb.h
  %i.bu = icmp sgt i64 %.sroa.63.3472, 0
  br i1 %i.bu, label %.lr.ph.i258, label %kill_local.exit266

.lr.ph.i258:                                      ; preds = %bb.n, %bb.p
  %i.bv = phi i64 [ %i.cc, %bb.p ], [ %.sroa.63.3472, %bb.n ]
  %.06.i259 = phi i64 [ %i.cd, %bb.p ], [ 0, %bb.n ] ; 2 uses
  %i.bw = getelementptr [8 x i8], ptr %.sroa.0.5471, i64 %.06.i259
  %.sroa.0.0.copyload.i.i261 = load i64, ptr %i.bw, align 4 ; 2 uses
  %.sroa.4.0.extract.shift.i262 = lshr i64 %.sroa.0.0.copyload.i.i261, 32
  %.sroa.4.0.extract.trunc.i263 = trunc nuw i64 %.sroa.4.0.extract.shift.i262 to i32
  %i.bx = icmp eq i32 %i.bb, %.sroa.4.0.extract.trunc.i263
  br i1 %i.bx, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph.i258
  %sext.i264 = shl i64 %.sroa.0.0.copyload.i.i261, 32
  %i.by = ashr exact i64 %sext.i264, 32
  %i.bz = getelementptr i8, ptr %i.m, i64 %i.by   ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !64
  %i.cb = or i8 %i.ca, 1
  store i8 %i.cb, ptr %i.bz, align 1, !tbaa !64
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph.i258
  %i.cc = phi i64 [ %.sroa.63.3472, %bb.o ], [ %i.bv, %.lr.ph.i258 ] ; 2 uses
  %i.cd = add nuw nsw i64 %.06.i259, 1            ; 2 uses
  %i.ce = icmp slt i64 %i.cd, %i.cc
  br i1 %i.ce, label %.lr.ph.i258, label %kill_local.exit266, !llvm.loop !207

kill_local.exit266:                               ; preds = %bb.p, %bb.n
  %.sroa.287.0.insert.ext = zext i32 %i.bb to i64
  %.sroa.287.0.insert.shift = shl nuw i64 %.sroa.287.0.insert.ext, 32
  %.sroa.086.0.insert.insert = or disjoint i64 %.sroa.287.0.insert.shift, %indvars.iv
  %i.cf = icmp eq i64 %.sroa.63.3472, %.sroa.180.5473
  br i1 %i.cf, label %bb.q, label %ref_stack_push.exit272

bb.q:                                             ; preds = %kill_local.exit266
  %i.cg = shl i64 %.sroa.180.5473, 1
  %spec.select.i269 = tail call i64 @llvm.smax.i64(i64 %i.cg, i64 32) ; 2 uses
  %i.ch = shl i64 %spec.select.i269, 3
  %i.ci = tail call ptr @PyMem_Realloc(ptr noundef %.sroa.0.5471, i64 noundef %i.ch) #8 ; 2 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %kill_local.exit.thread292.thread.sink.split, label %ref_stack_push.exit272

ref_stack_push.exit272:                           ; preds = %kill_local.exit266, %bb.q
  %.sroa.0.8 = phi ptr [ %.sroa.0.5471, %kill_local.exit266 ], [ %i.ci, %bb.q ] ; 2 uses
  %.sroa.180.8 = phi i64 [ %.sroa.180.5473, %kill_local.exit266 ], [ %spec.select.i269, %bb.q ]
  %i.ck = getelementptr [8 x i8], ptr %.sroa.0.8, i64 %.sroa.63.3472
  store i64 %.sroa.086.0.insert.insert, ptr %i.ck, align 4
  %i.cl = add i64 %.sroa.63.3472, 1
  br label %.thread241

bb.r:                                             ; preds = %bb.h
  %i.cm = ashr i32 %i.bb, 4
  %.sroa.285.0.insert.ext = zext i32 %i.cm to i64
  %.sroa.285.0.insert.shift = shl nuw i64 %.sroa.285.0.insert.ext, 32
  %.sroa.084.0.insert.insert = or disjoint i64 %.sroa.285.0.insert.shift, %indvars.iv
  %i.cn = icmp eq i64 %.sroa.63.3472, %.sroa.180.5473
  br i1 %i.cn, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.co = shl i64 %.sroa.180.5473, 1
  %spec.select.i275 = tail call i64 @llvm.smax.i64(i64 %i.co, i64 32) ; 2 uses
  %i.cp = shl i64 %spec.select.i275, 3
  %i.cq = tail call ptr @PyMem_Realloc(ptr noundef %.sroa.0.5471, i64 noundef %i.cp) #8 ; 2 uses
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %kill_local.exit.thread292.thread.sink.split, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.sroa.0.10 = phi ptr [ %.sroa.0.5471, %bb.r ], [ %i.cq, %bb.s ] ; 4 uses
  %.sroa.180.10 = phi i64 [ %.sroa.180.5473, %bb.r ], [ %spec.select.i275, %bb.s ] ; 2 uses
  %i.cs = getelementptr [8 x i8], ptr %.sroa.0.10, i64 %.sroa.63.3472
  store i64 %.sroa.084.0.insert.insert, ptr %i.cs, align 4
  %i.ct = add i64 %.sroa.63.3472, 1               ; 3 uses
  %i.cu = and i32 %i.bb, 15
  %.sroa.283.0.insert.ext = zext nneg i32 %i.cu to i64
  %.sroa.283.0.insert.shift = shl nuw nsw i64 %.sroa.283.0.insert.ext, 32
  %.sroa.082.0.insert.insert = or disjoint i64 %.sroa.283.0.insert.shift, %indvars.iv
  %i.cv = icmp eq i64 %i.ct, %.sroa.180.10
  br i1 %i.cv, label %bb.u, label %ref_stack_push.exit284

bb.u:                                             ; preds = %bb.t
  %i.cw = shl i64 %i.ct, 1
  %spec.select.i281 = tail call i64 @llvm.smax.i64(i64 %i.cw, i64 32) ; 2 uses
  %i.cx = shl i64 %spec.select.i281, 3
  %i.cy = tail call ptr @PyMem_Realloc(ptr noundef nonnull %.sroa.0.10, i64 noundef %i.cx) #8 ; 2 uses
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %kill_local.exit.thread292.thread.thread.sink.split, label %ref_stack_push.exit284

ref_stack_push.exit284:                           ; preds = %bb.t, %bb.u
  %.sroa.0.12 = phi ptr [ %.sroa.0.10, %bb.t ], [ %i.cy, %bb.u ] ; 2 uses
  %.sroa.180.12 = phi i64 [ %.sroa.180.10, %bb.t ], [ %spec.select.i281, %bb.u ]
  %i.da = getelementptr [8 x i8], ptr %.sroa.0.12, i64 %i.ct
  store i64 %.sroa.082.0.insert.insert, ptr %i.da, align 4
  %i.db = add i64 %.sroa.63.3472, 2
  br label %.thread241

bb.v:                                             ; preds = %bb.h
  %i.dc = add i64 %.sroa.63.3472, -1              ; 7 uses
  %i.dd = getelementptr [8 x i8], ptr %.sroa.0.5471, i64 %i.dc
  %.sroa.0.0.copyload.i = load i64, ptr %i.dd, align 4 ; 2 uses
  %i.de = icmp sgt i64 %i.dc, 0
  br i1 %i.de, label %.lr.ph.i.i.preheader, label %kill_local.exit.i

.lr.ph.i.i.preheader:                             ; preds = %bb.v
  %xtraiter661 = and i64 %i.dc, 1
  %i.df = icmp eq i64 %.sroa.63.3472, 2
  br i1 %i.df, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter664 = and i64 %i.dc, 9223372036854775806
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.y, %.lr.ph.i.i.preheader.new
  %.06.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.dt, %bb.y ] ; 3 uses
  %niter665 = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter665.next.1, %bb.y ]
  %i.dg = getelementptr [8 x i8], ptr %.sroa.0.5471, i64 %.06.i.i
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.dg, align 4 ; 2 uses
  %.sroa.4.0.extract.shift.i.i = lshr i64 %.sroa.0.0.copyload.i.i.i, 32
  %.sroa.4.0.extract.trunc.i.i = trunc nuw i64 %.sroa.4.0.extract.shift.i.i to i32
  %i.dh = icmp eq i32 %i.bb, %.sroa.4.0.extract.trunc.i.i
  br i1 %i.dh, label %bb.w, label %.lr.ph.i.i.1

bb.w:                                             ; preds = %.lr.ph.i.i
  %sext.i.i = shl i64 %.sroa.0.0.copyload.i.i.i, 32
  %i.di = ashr exact i64 %sext.i.i, 32
  %i.dj = getelementptr i8, ptr %i.m, i64 %i.di   ; 2 uses
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !64
  %i.dl = or i8 %i.dk, 1
  store i8 %i.dl, ptr %i.dj, align 1, !tbaa !64
  br label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.w, %.lr.ph.i.i
  %i.dm = getelementptr [8 x i8], ptr %.sroa.0.5471, i64 %.06.i.i
  %i.dn = getelementptr i8, ptr %i.dm, i64 8
  %.sroa.0.0.copyload.i.i.i.1 = load i64, ptr %i.dn, align 4 ; 2 uses
  %.sroa.4.0.extract.shift.i.i.1 = lshr i64 %.sroa.0.0.copyload.i.i.i.1, 32
  %.sroa.4.0.extract.trunc.i.i.1 = trunc nuw i64 %.sroa.4.0.extract.shift.i.i.1 to i32
  %i.do = icmp eq i32 %i.bb, %.sroa.4.0.extract.trunc.i.i.1
  br i1 %i.do, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.lr.ph.i.i.1
  %sext.i.i.1 = shl i64 %.sroa.0.0.copyload.i.i.i.1, 32
  %i.dp = ashr exact i64 %sext.i.i.1, 32
  %i.dq = getelementptr i8, ptr %i.m, i64 %i.dp   ; 2 uses
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !64
  %i.ds = or i8 %i.dr, 1
  store i8 %i.ds, ptr %i.dq, align 1, !tbaa !64
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.lr.ph.i.i.1
  %i.dt = add nuw nsw i64 %.06.i.i, 2             ; 2 uses
  %niter665.next.1 = add i64 %niter665, 2         ; 2 uses
  %niter665.ncmp.1 = icmp eq i64 %niter665.next.1, %unroll_iter664
  br i1 %niter665.ncmp.1, label %kill_local.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !207

kill_local.exit.i.loopexit.unr-lcssa:             ; preds = %bb.y
  %lcmp.mod662.not = icmp eq i64 %xtraiter661, 0
  br i1 %lcmp.mod662.not, label %kill_local.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %kill_local.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.06.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.dt, %kill_local.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod663 = trunc i64 %i.dc to i1
  tail call void @llvm.assume(i1 %lcmp.mod663)
  %i.du = getelementptr [8 x i8], ptr %.sroa.0.5471, i64 %.06.i.i.epil.init
  %.sroa.0.0.copyload.i.i.i.epil = load i64, ptr %i.du, align 4 ; 2 uses
  %.sroa.4.0.extract.shift.i.i.epil = lshr i64 %.sroa.0.0.copyload.i.i.i.epil, 32
  %.sroa.4.0.extract.trunc.i.i.epil = trunc nuw i64 %.sroa.4.0.extract.shift.i.i.epil to i32
  %i.dv = icmp eq i32 %i.bb, %.sroa.4.0.extract.trunc.i.i.epil
  br i1 %i.dv, label %bb.z, label %kill_local.exit.i

bb.z:                                             ; preds = %.lr.ph.i.i.epil.preheader
  %sext.i.i.epil = shl i64 %.sroa.0.0.copyload.i.i.i.epil, 32
  %i.dw = ashr exact i64 %sext.i.i.epil, 32
  %i.dx = getelementptr i8, ptr %i.m, i64 %i.dw   ; 2 uses
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !64
  %i.dz = or i8 %i.dy, 1
  store i8 %i.dz, ptr %i.dx, align 1, !tbaa !64
  br label %kill_local.exit.i

kill_local.exit.i:                                ; preds = %kill_local.exit.i.loopexit.unr-lcssa, %bb.z, %.lr.ph.i.i.epil.preheader, %bb.v
  %i.ea = and i64 %.sroa.0.0.copyload.i, 4294967295
  %.not.i285 = icmp eq i64 %i.ea, 4294967295
  br i1 %.not.i285, label %.thread241, label %bb.aa

bb.aa:                                            ; preds = %kill_local.exit.i
  %sext.i286 = shl i64 %.sroa.0.0.copyload.i, 32
  %i.eb = ashr exact i64 %sext.i286, 32
  %i.ec = getelementptr i8, ptr %i.m, i64 %i.eb   ; 2 uses
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !64
  %i.ee = or i8 %i.ed, 2
  store i8 %i.ee, ptr %i.ec, align 1, !tbaa !64
  br label %.thread241

bb.ab:                                            ; preds = %bb.h
  %i.ef = add i64 %.sroa.63.3472, -1              ; 7 uses
  %i.eg = getelementptr [8 x i8], ptr %.sroa.0.5471, i64 %i.ef
  %.sroa.0.0.copyload.i287 = load i64, ptr %i.eg, align 4 ; 2 uses
  %i.eh = ashr i32 %i.bb, 4                       ; 3 uses
  %i.ei = icmp sgt i64 %i.ef, 0
  br i1 %i.ei, label %.lr.ph.i.i291.preheader, label %kill_local.exit.i288

.lr.ph.i.i291.preheader:                          ; preds = %bb.ab
  %xtraiter656 = and i64 %i.ef, 1
  %i.ej = icmp eq i64 %.sroa.63.3472, 2
  br i1 %i.ej, label %.lr.ph.i.i291.epil.preheader, label %.lr.ph.i.i291.preheader.new

.lr.ph.i.i291.preheader.new:                      ; preds = %.lr.ph.i.i291.preheader
  %unroll_iter659 = and i64 %i.ef, 9223372036854775806
  br label %.lr.ph.i.i291

.lr.ph.i.i291:                                    ; preds = %bb.ae, %.lr.ph.i.i291.preheader.new
  %.06.i.i292 = phi i64 [ 0, %.lr.ph.i.i291.preheader.new ], [ %i.ex, %bb.ae ] ; 3 uses
  %niter660 = phi i64 [ 0, %.lr.ph.i.i291.preheader.new ], [ %niter660.next.1, %bb.ae ]
  %i.ek = getelementptr [8 x i8], ptr %.sroa.0.5471, i64 %.06.i.i292
  %.sroa.0.0.copyload.i.i.i294 = load i64, ptr %i.ek, align 4 ; 2 uses
  %.sroa.4.0.extract.shift.i.i295 = lshr i64 %.sroa.0.0.copyload.i.i.i294, 32
  %.sroa.4.0.extract.trunc.i.i296 = trunc nuw i64 %.sroa.4.0.extract.shift.i.i295 to i32
  %i.el = icmp eq i32 %i.eh, %.sroa.4.0.extract.trunc.i.i296
  br i1 %i.el, label %bb.ac, label %.lr.ph.i.i291.1

bb.ac:                                            ; preds = %.lr.ph.i.i291
  %sext.i.i297 = shl i64 %.sroa.0.0.copyload.i.i.i294, 32
  %i.em = ashr exact i64 %sext.i.i297, 32
  %i.en = getelementptr i8, ptr %i.m, i64 %i.em   ; 2 uses
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !64
  %i.ep = or i8 %i.eo, 1
  store i8 %i.ep, ptr %i.en, align 1, !tbaa !64
  br label %.lr.ph.i.i291.1

.lr.ph.i.i291.1:                                  ; preds = %bb.ac, %.lr.ph.i.i291
  %i.eq = getelementptr [8 x i8], ptr %.sroa.0.5471, i64 %.06.i.i292
  %i.er = getelementptr i8, ptr %i.eq, i64 8
  %.sroa.0.0.copyload.i.i.i294.1 = load i64, ptr %i.er, align 4 ; 2 uses
  %.sroa.4.0.extract.shift.i.i295.1 = lshr i64 %.sroa.0.0.copyload.i.i.i294.1, 32
  %.sroa.4.0.extract.trunc.i.i296.1 = trunc nuw i64 %.sroa.4.0.extract.shift.i.i295.1 to i32
  %i.es = icmp eq i32 %i.eh, %.sroa.4.0.extract.trunc.i.i296.1
  br i1 %i.es, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.lr.ph.i.i291.1
  %sext.i.i297.1 = shl i64 %.sroa.0.0.copyload.i.i.i294.1, 32
  %i.et = ashr exact i64 %sext.i.i297.1, 32
  %i.eu = getelementptr i8, ptr %i.m, i64 %i.et   ; 2 uses
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !64
  %i.ew = or i8 %i.ev, 1
  store i8 %i.ew, ptr %i.eu, align 1, !tbaa !64
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.lr.ph.i.i291.1
  %i.ex = add nuw nsw i64 %.06.i.i292, 2          ; 2 uses
  %niter660.next.1 = add i64 %niter660, 2         ; 2 uses
  %niter660.ncmp.1 = icmp eq i64 %niter660.next.1, %unroll_iter659
  br i1 %niter660.ncmp.1, label %kill_local.exit.i288.loopexit.unr-lcssa, label %.lr.ph.i.i291, !llvm.loop !207

kill_local.exit.i288.loopexit.unr-lcssa:          ; preds = %bb.ae
  %lcmp.mod657.not = icmp eq i64 %xtraiter656, 0
  br i1 %lcmp.mod657.not, label %kill_local.exit.i288, label %.lr.ph.i.i291.epil.preheader

.lr.ph.i.i291.epil.preheader:                     ; preds = %kill_local.exit.i288.loopexit.unr-lcssa, %.lr.ph.i.i291.preheader
  %.06.i.i292.epil.init = phi i64 [ 0, %.lr.ph.i.i291.preheader ], [ %i.ex, %kill_local.exit.i288.loopexit.unr-lcssa ]
  %lcmp.mod658 = trunc i64 %i.ef to i1
  tail call void @llvm.assume(i1 %lcmp.mod658)
  %i.ey = getelementptr [8 x i8], ptr %.sroa.0.5471, i64 %.06.i.i292.epil.init
  %.sroa.0.0.copyload.i.i.i294.epil = load i64, ptr %i.ey, align 4 ; 2 uses
  %.sroa.4.0.extract.shift.i.i295.epil = lshr i64 %.sroa.0.0.copyload.i.i.i294.epil, 32
  %.sroa.4.0.extract.trunc.i.i296.epil = trunc nuw i64 %.sroa.4.0.extract.shift.i.i295.epil to i32
  %i.ez = icmp eq i32 %i.eh, %.sroa.4.0.extract.trunc.i.i296.epil
  br i1 %i.ez, label %bb.af, label %kill_local.exit.i288

bb.af:                                            ; preds = %.lr.ph.i.i291.epil.preheader
  %sext.i.i297.epil = shl i64 %.sroa.0.0.copyload.i.i.i294.epil, 32
  %i.fa = ashr exact i64 %sext.i.i297.epil, 32
  %i.fb = getelementptr i8, ptr %i.m, i64 %i.fa   ; 2 uses
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !64
  %i.fd = or i8 %i.fc, 1
  store i8 %i.fd, ptr %i.fb, align 1, !tbaa !64
  br label %kill_local.exit.i288

kill_local.exit.i288:                             ; preds = %kill_local.exit.i288.loopexit.unr-lcssa, %bb.af, %.lr.ph.i.i291.epil.preheader, %bb.ab
  %i.fe = and i64 %.sroa.0.0.copyload.i287, 4294967295
  %.not.i289 = icmp eq i64 %i.fe, 4294967295
  br i1 %.not.i289, label %store_local.exit299, label %bb.ag

bb.ag:                                            ; preds = %kill_local.exit.i288
  %sext.i290 = shl i64 %.sroa.0.0.copyload.i287, 32
  %i.ff = ashr exact i64 %sext.i290, 32
  %i.fg = getelementptr i8, ptr %i.m, i64 %i.ff   ; 2 uses
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !64
  %i.fi = or i8 %i.fh, 2
  store i8 %i.fi, ptr %i.fg, align 1, !tbaa !64
  br label %store_local.exit299

store_local.exit299:                              ; preds = %kill_local.exit.i288, %bb.ag
  %i.fj = and i32 %i.bb, 15
  %.sroa.279.0.insert.ext = zext nneg i32 %i.fj to i64
  %.sroa.279.0.insert.shift = shl nuw nsw i64 %.sroa.279.0.insert.ext, 32
  %.sroa.078.0.insert.insert = or disjoint i64 %.sroa.279.0.insert.shift, %indvars.iv
  %i.fk = icmp eq i64 %i.ef, %.sroa.180.5473
  br i1 %i.fk, label %bb.ah, label %ref_stack_push.exit305.thread

bb.ah:                                            ; preds = %store_local.exit299
  %i.fl = shl i64 %.sroa.180.5473, 1
  %spec.select.i302 = tail call i64 @llvm.smax.i64(i64 %i.fl, i64 32) ; 2 uses
  %i.fm = shl i64 %spec.select.i302, 3
  %i.fn = tail call ptr @PyMem_Realloc(ptr noundef nonnull %.sroa.0.5471, i64 noundef %i.fm) #8 ; 2 uses
  %i.fo = icmp eq ptr %i.fn, null
  br i1 %i.fo, label %kill_local.exit.thread292.thread.thread.sink.split, label %ref_stack_push.exit305.thread

ref_stack_push.exit305.thread:                    ; preds = %store_local.exit299, %bb.ah
  %.sroa.0.14 = phi ptr [ %.sroa.0.5471, %store_local.exit299 ], [ %i.fn, %bb.ah ] ; 2 uses
  %.sroa.180.14 = phi i64 [ %.sroa.180.5473, %store_local.exit299 ], [ %spec.select.i302, %bb.ah ]
  %i.fp = getelementptr [8 x i8], ptr %.sroa.0.14, i64 %i.ef
  store i64 %.sroa.078.0.insert.insert, ptr %i.fp, align 4
  br label %.thread241

bb.ai:                                            ; preds = %bb.h
  %i.fq = add i64 %.sroa.63.3472, -1              ; 5 uses
  %i.fr = getelementptr [8 x i8], ptr %.sroa.0.5471, i64 %i.fq
  %.sroa.0.0.copyload.i306 = load i64, ptr %i.fr, align 4 ; 2 uses
  %i.fs = ashr i32 %i.bb, 4                       ; 3 uses
  %i.ft = icmp sgt i64 %i.fq, 0
  br i1 %i.ft, label %.lr.ph.i.i310.preheader, label %kill_local.exit.i307

.lr.ph.i.i310.preheader:                          ; preds = %bb.ai
  %xtraiter = and i64 %i.fq, 1
  %i.fu = icmp eq i64 %.sroa.63.3472, 2
  br i1 %i.fu, label %.lr.ph.i.i310.epil.preheader, label %.lr.ph.i.i310.preheader.new

.lr.ph.i.i310.preheader.new:                      ; preds = %.lr.ph.i.i310.preheader
  %unroll_iter = and i64 %i.fq, 9223372036854775806
  br label %.lr.ph.i.i310

.lr.ph.i.i310:                                    ; preds = %bb.al, %.lr.ph.i.i310.preheader.new
  %.06.i.i311 = phi i64 [ 0, %.lr.ph.i.i310.preheader.new ], [ %i.gi, %bb.al ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i310.preheader.new ], [ %niter.next.1, %bb.al ]
  %i.fv = getelementptr [8 x i8], ptr %.sroa.0.5471, i64 %.06.i.i311
  %.sroa.0.0.copyload.i.i.i313 = load i64, ptr %i.fv, align 4 ; 2 uses
  %.sroa.4.0.extract.shift.i.i314 = lshr i64 %.sroa.0.0.copyload.i.i.i313, 32
  %.sroa.4.0.extract.trunc.i.i315 = trunc nuw i64 %.sroa.4.0.extract.shift.i.i314 to i32
  %i.fw = icmp eq i32 %i.fs, %.sroa.4.0.extract.trunc.i.i315
  br i1 %i.fw, label %bb.aj, label %.lr.ph.i.i310.1

bb.aj:                                            ; preds = %.lr.ph.i.i310
  %sext.i.i316 = shl i64 %.sroa.0.0.copyload.i.i.i313, 32
  %i.fx = ashr exact i64 %sext.i.i316, 32
  %i.fy = getelementptr i8, ptr %i.m, i64 %i.fx   ; 2 uses
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !64
  %i.ga = or i8 %i.fz, 1
  store i8 %i.ga, ptr %i.fy, align 1, !tbaa !64
  br label %.lr.ph.i.i310.1

.lr.ph.i.i310.1:                                  ; preds = %bb.aj, %.lr.ph.i.i310
  %i.gb = getelementptr [8 x i8], ptr %.sroa.0.5471, i64 %.06.i.i311
  %i.gc = getelementptr i8, ptr %i.gb, i64 8
  %.sroa.0.0.copyload.i.i.i313.1 = load i64, ptr %i.gc, align 4 ; 2 uses
  %.sroa.4.0.extract.shift.i.i314.1 = lshr i64 %.sroa.0.0.copyload.i.i.i313.1, 32
  %.sroa.4.0.extract.trunc.i.i315.1 = trunc nuw i64 %.sroa.4.0.extract.shift.i.i314.1 to i32
  %i.gd = icmp eq i32 %i.fs, %.sroa.4.0.extract.trunc.i.i315.1
  br i1 %i.gd, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.lr.ph.i.i310.1
  %sext.i.i316.1 = shl i64 %.sroa.0.0.copyload.i.i.i313.1, 32
  %i.ge = ashr exact i64 %sext.i.i316.1, 32
  %i.gf = getelementptr i8, ptr %i.m, i64 %i.ge   ; 2 uses
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !64
  %i.gh = or i8 %i.gg, 1
  store i8 %i.gh, ptr %i.gf, align 1, !tbaa !64
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %.lr.ph.i.i310.1
  %i.gi = add nuw nsw i64 %.06.i.i311, 2          ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %kill_local.exit.i307.loopexit.unr-lcssa, label %.lr.ph.i.i310, !llvm.loop !207

kill_local.exit.i307.loopexit.unr-lcssa:          ; preds = %bb.al
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %kill_local.exit.i307, label %.lr.ph.i.i310.epil.preheader

.lr.ph.i.i310.epil.preheader:                     ; preds = %kill_local.exit.i307.loopexit.unr-lcssa, %.lr.ph.i.i310.preheader
  %.06.i.i311.epil.init = phi i64 [ 0, %.lr.ph.i.i310.preheader ], [ %i.gi, %kill_local.exit.i307.loopexit.unr-lcssa ]
  %lcmp.mod650 = trunc i64 %i.fq to i1
  tail call void @llvm.assume(i1 %lcmp.mod650)
  %i.gj = getelementptr [8 x i8], ptr %.sroa.0.5471, i64 %.06.i.i311.epil.init
  %.sroa.0.0.copyload.i.i.i313.epil = load i64, ptr %i.gj, align 4 ; 2 uses
  %.sroa.4.0.extract.shift.i.i314.epil = lshr i64 %.sroa.0.0.copyload.i.i.i313.epil, 32
  %.sroa.4.0.extract.trunc.i.i315.epil = trunc nuw i64 %.sroa.4.0.extract.shift.i.i314.epil to i32
  %i.gk = icmp eq i32 %i.fs, %.sroa.4.0.extract.trunc.i.i315.epil
  br i1 %i.gk, label %bb.am, label %kill_local.exit.i307

bb.am:                                            ; preds = %.lr.ph.i.i310.epil.preheader
  %sext.i.i316.epil = shl i64 %.sroa.0.0.copyload.i.i.i313.epil, 32
  %i.gl = ashr exact i64 %sext.i.i316.epil, 32
  %i.gm = getelementptr i8, ptr %i.m, i64 %i.gl   ; 2 uses
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !64
  %i.go = or i8 %i.gn, 1
  store i8 %i.go, ptr %i.gm, align 1, !tbaa !64
  br label %kill_local.exit.i307

kill_local.exit.i307:                             ; preds = %kill_local.exit.i307.loopexit.unr-lcssa, %bb.am, %.lr.ph.i.i310.epil.preheader, %bb.ai
  %i.gp = and i64 %.sroa.0.0.copyload.i306, 4294967295
  %.not.i308 = icmp eq i64 %i.gp, 4294967295
  br i1 %.not.i308, label %store_local.exit318, label %bb.an

bb.an:                                            ; preds = %kill_local.exit.i307
  %sext.i309 = shl i64 %.sroa.0.0.copyload.i306, 32
  %i.gq = ashr exact i64 %sext.i309, 32
  %i.gr = getelementptr i8, ptr %i.m, i64 %i.gq   ; 2 uses
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !64
  %i.gt = or i8 %i.gs, 2
  store i8 %i.gt, ptr %i.gr, align 1, !tbaa !64
  br label %store_local.exit318

store_local.exit318:                              ; preds = %kill_local.exit.i307, %bb.an
  %i.gu = add i64 %.sroa.63.3472, -2              ; 5 uses
  %i.gv = getelementptr [8 x i8], ptr %.sroa.0.5471, i64 %i.gu
  %.sroa.0.0.copyload.i319 = load i64, ptr %i.gv, align 4 ; 2 uses
  %i.gw = and i32 %i.bb, 15                       ; 3 uses
  %i.gx = icmp sgt i64 %i.gu, 0
  br i1 %i.gx, label %.lr.ph.i.i323.preheader, label %kill_local.exit.i320

.lr.ph.i.i323.preheader:                          ; preds = %store_local.exit318
  %xtraiter651 = and i64 %.sroa.63.3472, 1
  %i.gy = icmp eq i64 %.sroa.63.3472, 3
  br i1 %i.gy, label %.lr.ph.i.i323.epil.preheader, label %.lr.ph.i.i323.preheader.new

.lr.ph.i.i323.preheader.new:                      ; preds = %.lr.ph.i.i323.preheader
  %unroll_iter654 = and i64 %i.gu, 9223372036854775806
  br label %.lr.ph.i.i323

.lr.ph.i.i323:                                    ; preds = %bb.aq, %.lr.ph.i.i323.preheader.new
  %.06.i.i324 = phi i64 [ 0, %.lr.ph.i.i323.preheader.new ], [ %i.hm, %bb.aq ] ; 3 uses
  %niter655 = phi i64 [ 0, %.lr.ph.i.i323.preheader.new ], [ %niter655.next.1, %bb.aq ]
  %i.gz = getelementptr [8 x i8], ptr %.sroa.0.5471, i64 %.06.i.i324
  %.sroa.0.0.copyload.i.i.i326 = load i64, ptr %i.gz, align 4 ; 2 uses
  %.sroa.4.0.extract.shift.i.i327 = lshr i64 %.sroa.0.0.copyload.i.i.i326, 32
  %.sroa.4.0.extract.trunc.i.i328 = trunc nuw i64 %.sroa.4.0.extract.shift.i.i327 to i32
  %i.ha = icmp eq i32 %i.gw, %.sroa.4.0.extract.trunc.i.i328
  br i1 %i.ha, label %bb.ao, label %.lr.ph.i.i323.1

bb.ao:                                            ; preds = %.lr.ph.i.i323
  %sext.i.i329 = shl i64 %.sroa.0.0.copyload.i.i.i326, 32
  %i.hb = ashr exact i64 %sext.i.i329, 32
  %i.hc = getelementptr i8, ptr %i.m, i64 %i.hb   ; 2 uses
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !64
  %i.he = or i8 %i.hd, 1
  store i8 %i.he, ptr %i.hc, align 1, !tbaa !64
  br label %.lr.ph.i.i323.1

.lr.ph.i.i323.1:                                  ; preds = %bb.ao, %.lr.ph.i.i323
  %i.hf = getelementptr [8 x i8], ptr %.sroa.0.5471, i64 %.06.i.i324
  %i.hg = getelementptr i8, ptr %i.hf, i64 8
  %.sroa.0.0.copyload.i.i.i326.1 = load i64, ptr %i.hg, align 4 ; 2 uses
  %.sroa.4.0.extract.shift.i.i327.1 = lshr i64 %.sroa.0.0.copyload.i.i.i326.1, 32
  %.sroa.4.0.extract.trunc.i.i328.1 = trunc nuw i64 %.sroa.4.0.extract.shift.i.i327.1 to i32
  %i.hh = icmp eq i32 %i.gw, %.sroa.4.0.extract.trunc.i.i328.1
  br i1 %i.hh, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.lr.ph.i.i323.1
  %sext.i.i329.1 = shl i64 %.sroa.0.0.copyload.i.i.i326.1, 32
  %i.hi = ashr exact i64 %sext.i.i329.1, 32
  %i.hj = getelementptr i8, ptr %i.m, i64 %i.hi   ; 2 uses
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !64
  %i.hl = or i8 %i.hk, 1
  store i8 %i.hl, ptr %i.hj, align 1, !tbaa !64
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.lr.ph.i.i323.1
  %i.hm = add nuw nsw i64 %.06.i.i324, 2          ; 2 uses
  %niter655.next.1 = add i64 %niter655, 2         ; 2 uses
  %niter655.ncmp.1 = icmp eq i64 %niter655.next.1, %unroll_iter654
  br i1 %niter655.ncmp.1, label %kill_local.exit.i320.loopexit.unr-lcssa, label %.lr.ph.i.i323, !llvm.loop !207

kill_local.exit.i320.loopexit.unr-lcssa:          ; preds = %bb.aq
  %lcmp.mod652.not = icmp eq i64 %xtraiter651, 0
  br i1 %lcmp.mod652.not, label %kill_local.exit.i320, label %.lr.ph.i.i323.epil.preheader

.lr.ph.i.i323.epil.preheader:                     ; preds = %kill_local.exit.i320.loopexit.unr-lcssa, %.lr.ph.i.i323.preheader
  %.06.i.i324.epil.init = phi i64 [ 0, %.lr.ph.i.i323.preheader ], [ %i.hm, %kill_local.exit.i320.loopexit.unr-lcssa ]
  %lcmp.mod653 = trunc i64 %.sroa.63.3472 to i1
  tail call void @llvm.assume(i1 %lcmp.mod653)
  %i.hn = getelementptr [8 x i8], ptr %.sroa.0.5471, i64 %.06.i.i324.epil.init
  %.sroa.0.0.copyload.i.i.i326.epil = load i64, ptr %i.hn, align 4 ; 2 uses
  %.sroa.4.0.extract.shift.i.i327.epil = lshr i64 %.sroa.0.0.copyload.i.i.i326.epil, 32
  %.sroa.4.0.extract.trunc.i.i328.epil = trunc nuw i64 %.sroa.4.0.extract.shift.i.i327.epil to i32
  %i.ho = icmp eq i32 %i.gw, %.sroa.4.0.extract.trunc.i.i328.epil
  br i1 %i.ho, label %bb.ar, label %kill_local.exit.i320

bb.ar:                                            ; preds = %.lr.ph.i.i323.epil.preheader
  %sext.i.i329.epil = shl i64 %.sroa.0.0.copyload.i.i.i326.epil, 32
  %i.hp = ashr exact i64 %sext.i.i329.epil, 32
  %i.hq = getelementptr i8, ptr %i.m, i64 %i.hp   ; 2 uses
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !64
  %i.hs = or i8 %i.hr, 1
  store i8 %i.hs, ptr %i.hq, align 1, !tbaa !64
  br label %kill_local.exit.i320

kill_local.exit.i320:                             ; preds = %kill_local.exit.i320.loopexit.unr-lcssa, %bb.ar, %.lr.ph.i.i323.epil.preheader, %store_local.exit318
  %i.ht = and i64 %.sroa.0.0.copyload.i319, 4294967295
  %.not.i321 = icmp eq i64 %i.ht, 4294967295
  br i1 %.not.i321, label %.thread241, label %bb.as

bb.as:                                            ; preds = %kill_local.exit.i320
  %sext.i322 = shl i64 %.sroa.0.0.copyload.i319, 32
  %i.hu = ashr exact i64 %sext.i322, 32
  %i.hv = getelementptr i8, ptr %i.m, i64 %i.hu   ; 2 uses
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !64
  %i.hx = or i8 %i.hw, 2
  store i8 %i.hx, ptr %i.hv, align 1, !tbaa !64
  br label %.thread241

bb.at:                                            ; preds = %bb.h
  %i.hy = sext i32 %i.bb to i64
  %i.hz = sub i64 %.sroa.63.3472, %i.hy
  %i.ia = getelementptr [8 x i8], ptr %.sroa.0.5471, i64 %i.hz
  %.sroa.0.0.copyload.i332 = load i64, ptr %i.ia, align 4
  %i.ib = icmp eq i64 %.sroa.63.3472, %.sroa.180.5473
  br i1 %i.ib, label %bb.au, label %ref_stack_push.exit338.thread

bb.au:                                            ; preds = %bb.at
  %i.ic = shl i64 %.sroa.180.5473, 1
  %spec.select.i335 = tail call i64 @llvm.smax.i64(i64 %i.ic, i64 32) ; 2 uses
  %i.id = shl i64 %spec.select.i335, 3
  %i.ie = tail call ptr @PyMem_Realloc(ptr noundef nonnull %.sroa.0.5471, i64 noundef %i.id) #8 ; 2 uses
  %i.if = icmp eq ptr %i.ie, null
  br i1 %i.if, label %kill_local.exit.thread292.thread.thread.sink.split, label %ref_stack_push.exit338.thread

ref_stack_push.exit338.thread:                    ; preds = %bb.at, %bb.au
  %.sroa.0.16 = phi ptr [ %.sroa.0.5471, %bb.at ], [ %i.ie, %bb.au ] ; 2 uses
  %.sroa.180.16 = phi i64 [ %.sroa.180.5473, %bb.at ], [ %spec.select.i335, %bb.au ]
  %i.ig = getelementptr [8 x i8], ptr %.sroa.0.16, i64 %.sroa.63.3472
  store i64 %.sroa.0.0.copyload.i332, ptr %i.ig, align 4
  %i.ih = add i64 %.sroa.63.3472, 1
  br label %.thread241

bb.av:                                            ; preds = %bb.h
  %i.ii = sext i32 %i.bb to i64
  %i.ij = sub i64 %.sroa.63.3472, %i.ii
  %i.ik = getelementptr [8 x i8], ptr %.sroa.0.5471, i64 %i.ij ; 2 uses
  %i.il = load i64, ptr %i.ik, align 4
  %i.im = getelementptr [8 x i8], ptr %.sroa.0.5471, i64 %.sroa.63.3472
  %i.in = getelementptr i8, ptr %i.im, i64 -8     ; 2 uses
  %i.io = load i64, ptr %i.in, align 4
  store i64 %i.io, ptr %i.ik, align 4
  store i64 %i.il, ptr %i.in, align 4
  br label %.thread241

bb.aw:                                            ; preds = %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h
  %i.ip = tail call i32 @_PyOpcode_num_popped(i32 noundef %i.az, i32 noundef %i.bb) #8
  %i.iq = tail call i32 @_PyOpcode_num_pushed(i32 noundef %i.az, i32 noundef %i.bb) #8
  %i.ir = sub i32 %i.iq, %i.ip                    ; 2 uses
  %.not234448 = icmp sgt i32 %i.ir, 0
  br i1 %.not234448, label %.lr.ph454, label %.thread241

.lr.ph454:                                        ; preds = %bb.aw
  %.sroa.063.0.insert.insert = or disjoint i64 %indvars.iv, -4294967296
  br label %bb.ax

bb.ax:                                            ; preds = %.lr.ph454, %bb.az
  %.0223452 = phi i32 [ 0, %.lr.ph454 ], [ %i.iz, %bb.az ]
  %.sroa.180.18451 = phi i64 [ %.sroa.180.5473, %.lr.ph454 ], [ %.sroa.180.19, %bb.az ] ; 3 uses
  %.sroa.63.10450 = phi i64 [ %.sroa.63.3472, %.lr.ph454 ], [ %i.iy, %bb.az ] ; 3 uses
  %.sroa.0.18449 = phi ptr [ %.sroa.0.5471, %.lr.ph454 ], [ %.sroa.0.19, %bb.az ] ; 3 uses
  %i.is = icmp eq i64 %.sroa.63.10450, %.sroa.180.18451
  br i1 %i.is, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.it = shl i64 %.sroa.180.18451, 1
  %spec.select.i341 = tail call i64 @llvm.smax.i64(i64 %i.it, i64 32) ; 2 uses
  %i.iu = shl i64 %spec.select.i341, 3
  %i.iv = tail call ptr @PyMem_Realloc(ptr noundef %.sroa.0.18449, i64 noundef %i.iu) #8 ; 2 uses
  %i.iw = icmp eq ptr %i.iv, null
  br i1 %i.iw, label %kill_local.exit.thread292.thread.sink.split, label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.sroa.0.19 = phi ptr [ %.sroa.0.18449, %bb.ax ], [ %i.iv, %bb.ay ] ; 3 uses
  %.sroa.180.19 = phi i64 [ %.sroa.180.18451, %bb.ax ], [ %spec.select.i341, %bb.ay ] ; 2 uses
  %i.ix = getelementptr [8 x i8], ptr %.sroa.0.19, i64 %.sroa.63.10450
  store i64 %.sroa.063.0.insert.insert, ptr %i.ix, align 4
  %i.iy = add i64 %.sroa.63.10450, 1              ; 2 uses
  %i.iz = add nuw nsw i32 %.0223452, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.iz, %i.ir
  br i1 %exitcond.not, label %.thread241, label %bb.ax, !llvm.loop !208

bb.ba:                                            ; preds = %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h
  %i.ja = tail call i32 @_PyOpcode_num_popped(i32 noundef %i.az, i32 noundef %i.bb) #8 ; 2 uses
  %i.jb = tail call i32 @_PyOpcode_num_pushed(i32 noundef %i.az, i32 noundef %i.bb) #8 ; 2 uses
  %i.jc = sub i32 %i.ja, %i.jb
  %i.jd = icmp sgt i32 %i.jc, 0
  br i1 %i.jd, label %.lr.ph446.preheader, label %.thread241

.lr.ph446.preheader:                              ; preds = %bb.ba
  %i.je = xor i32 %i.jb, -1
  %i.jf = add i32 %i.ja, %i.je
  %i.jg = zext i32 %i.jf to i64
  %i.jh = xor i64 %i.jg, -1
  %i.ji = add i64 %.sroa.63.3472, %i.jh
  br label %.thread241

bb.bb:                                            ; preds = %bb.h, %bb.h
  %i.jj = add i64 %.sroa.63.3472, -1              ; 2 uses
  %i.jk = getelementptr [8 x i8], ptr %.sroa.0.5471, i64 %i.jj
  %.sroa.0.0.copyload.i346 = load i64, ptr %i.jk, align 4
  %i.jl = add i64 %.sroa.63.3472, -2              ; 2 uses
  %i.jm = icmp eq i64 %i.jl, %.sroa.180.5473
  br i1 %i.jm, label %bb.bc, label %ref_stack_push.exit353.thread

bb.bc:                                            ; preds = %bb.bb
  %i.jn = shl i64 %.sroa.180.5473, 1
  %spec.select.i350 = tail call i64 @llvm.smax.i64(i64 %i.jn, i64 32) ; 2 uses
  %i.jo = shl i64 %spec.select.i350, 3
  %i.jp = tail call ptr @PyMem_Realloc(ptr noundef nonnull %.sroa.0.5471, i64 noundef %i.jo) #8 ; 2 uses
  %i.jq = icmp eq ptr %i.jp, null
  br i1 %i.jq, label %kill_local.exit.thread292.thread.thread.sink.split, label %ref_stack_push.exit353.thread

ref_stack_push.exit353.thread:                    ; preds = %bb.bb, %bb.bc
  %.sroa.0.22 = phi ptr [ %.sroa.0.5471, %bb.bb ], [ %i.jp, %bb.bc ] ; 2 uses
  %.sroa.180.22 = phi i64 [ %.sroa.180.5473, %bb.bb ], [ %spec.select.i350, %bb.bc ]
  %i.jr = getelementptr [8 x i8], ptr %.sroa.0.22, i64 %i.jl
  store i64 %.sroa.0.0.copyload.i346, ptr %i.jr, align 4
  br label %.thread241

bb.bd:                                            ; preds = %bb.h
  %i.js = add i64 %.sroa.63.3472, -1              ; 2 uses
  %.sroa.049.0.insert.insert = or disjoint i64 %indvars.iv, -4294967296
  %i.jt = icmp eq i64 %i.js, %.sroa.180.5473
  br i1 %i.jt, label %bb.be, label %ref_stack_push.exit360

bb.be:                                            ; preds = %bb.bd
  %i.ju = shl i64 %.sroa.180.5473, 1
  %spec.select.i357 = tail call i64 @llvm.smax.i64(i64 %i.ju, i64 32) ; 2 uses
  %i.jv = shl i64 %spec.select.i357, 3
  %i.jw = tail call ptr @PyMem_Realloc(ptr noundef %.sroa.0.5471, i64 noundef %i.jv) #8 ; 2 uses
  %i.jx = icmp eq ptr %i.jw, null
  br i1 %i.jx, label %kill_local.exit.thread292.thread.sink.split, label %ref_stack_push.exit360

ref_stack_push.exit360:                           ; preds = %bb.bd, %bb.be
  %.sroa.0.24 = phi ptr [ %.sroa.0.5471, %bb.bd ], [ %i.jw, %bb.be ] ; 2 uses
  %.sroa.180.24 = phi i64 [ %.sroa.180.5473, %bb.bd ], [ %spec.select.i357, %bb.be ]
  %i.jy = getelementptr [8 x i8], ptr %.sroa.0.24, i64 %i.js
  store i64 %.sroa.049.0.insert.insert, ptr %i.jy, align 4
  br label %.thread241

bb.bf:                                            ; preds = %bb.h
  %i.jz = getelementptr i8, ptr %i.ay, i64 24
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !45 ; 2 uses
  %i.kb = getelementptr i8, ptr %i.ka, i64 64     ; 2 uses
  %i.kc = load i8, ptr %i.kb, align 8             ; 2 uses
  %i.kd = and i8 %i.kc, 2
  %.not.i361 = icmp eq i8 %i.kd, 0
  br i1 %.not.i361, label %bb.bg, label %load_fast_push_block.exit

bb.bg:                                            ; preds = %bb.bf
  %i.ke = or disjoint i8 %i.kc, 2
  store i8 %i.ke, ptr %i.kb, align 8
  %i.kf = getelementptr i8, ptr %.1182474, i64 8
  store ptr %i.ka, ptr %.1182474, align 8, !tbaa !26
  br label %load_fast_push_block.exit

load_fast_push_block.exit:                        ; preds = %bb.bf, %bb.bg
  %.2 = phi ptr [ %i.kf, %bb.bg ], [ %.1182474, %bb.bf ]
  %.sroa.047.0.insert.insert = or disjoint i64 %indvars.iv, -4294967296
  %i.kg = icmp eq i64 %.sroa.63.3472, %.sroa.180.5473
  br i1 %i.kg, label %bb.bh, label %ref_stack_push.exit367

bb.bh:                                            ; preds = %load_fast_push_block.exit
  %i.kh = shl i64 %.sroa.180.5473, 1
  %spec.select.i364 = tail call i64 @llvm.smax.i64(i64 %i.kh, i64 32) ; 2 uses
  %i.ki = shl i64 %spec.select.i364, 3
  %i.kj = tail call ptr @PyMem_Realloc(ptr noundef %.sroa.0.5471, i64 noundef %i.ki) #8 ; 2 uses
  %i.kk = icmp eq ptr %i.kj, null
  br i1 %i.kk, label %kill_local.exit.thread292.thread.sink.split, label %ref_stack_push.exit367

ref_stack_push.exit367:                           ; preds = %load_fast_push_block.exit, %bb.bh
  %.sroa.0.26 = phi ptr [ %.sroa.0.5471, %load_fast_push_block.exit ], [ %i.kj, %bb.bh ] ; 2 uses
  %.sroa.180.26 = phi i64 [ %.sroa.180.5473, %load_fast_push_block.exit ], [ %spec.select.i364, %bb.bh ]
  %i.kl = getelementptr [8 x i8], ptr %.sroa.0.26, i64 %.sroa.63.3472
  store i64 %.sroa.047.0.insert.insert, ptr %i.kl, align 4
  %i.km = add i64 %.sroa.63.3472, 1
  br label %.thread241

bb.bi:                                            ; preds = %bb.h, %bb.h
  %i.kn = add i64 %.sroa.63.3472, -1              ; 2 uses
  %i.ko = getelementptr [8 x i8], ptr %.sroa.0.5471, i64 %i.kn
  %.sroa.0.0.copyload.i368 = load i64, ptr %i.ko, align 4
  %i.kp = icmp eq i32 %i.az, 96
  %i.kq = add i64 %.sroa.63.3472, -3
  %spec.select = select i1 %i.kp, i64 %i.kq, i64 %i.kn ; 4 uses
  %.sroa.041.0.insert.insert = or disjoint i64 %indvars.iv, -4294967296
  %i.kr = icmp eq i64 %spec.select, %.sroa.180.5473
  br i1 %i.kr, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.ks = shl i64 %.sroa.180.5473, 1
  %spec.select.i373 = tail call i64 @llvm.smax.i64(i64 %i.ks, i64 32) ; 2 uses
  %i.kt = shl i64 %spec.select.i373, 3
  %i.ku = tail call ptr @PyMem_Realloc(ptr noundef nonnull %.sroa.0.5471, i64 noundef %i.kt) #8 ; 2 uses
  %i.kv = icmp eq ptr %i.ku, null
  br i1 %i.kv, label %kill_local.exit.thread292.thread.thread.sink.split, label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.sroa.0.28 = phi ptr [ %.sroa.0.5471, %bb.bi ], [ %i.ku, %bb.bj ] ; 5 uses
  %.sroa.180.28 = phi i64 [ %.sroa.180.5473, %bb.bi ], [ %spec.select.i373, %bb.bj ] ; 4 uses
  %i.kw = getelementptr [8 x i8], ptr %.sroa.0.28, i64 %spec.select
  store i64 %.sroa.041.0.insert.insert, ptr %i.kw, align 4
  %i.kx = add i64 %spec.select, 1                 ; 3 uses
  %i.ky = and i32 %i.bb, 1
  %.not233 = icmp eq i32 %i.ky, 0
  br i1 %.not233, label %.thread241, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.kz = icmp eq i64 %i.kx, %.sroa.180.28
  br i1 %i.kz, label %bb.bm, label %ref_stack_push.exit382

bb.bm:                                            ; preds = %bb.bl
  %i.la = shl i64 %.sroa.180.28, 1
  %spec.select.i379 = tail call i64 @llvm.smax.i64(i64 %i.la, i64 32) ; 2 uses
  %i.lb = shl i64 %spec.select.i379, 3
  %i.lc = tail call ptr @PyMem_Realloc(ptr noundef nonnull %.sroa.0.28, i64 noundef %i.lb) #8 ; 2 uses
  %i.ld = icmp eq ptr %i.lc, null
  br i1 %i.ld, label %kill_local.exit.thread292.thread.thread.sink.split, label %ref_stack_push.exit382

ref_stack_push.exit382:                           ; preds = %bb.bl, %bb.bm
  %.sroa.0.30 = phi ptr [ %.sroa.0.28, %bb.bl ], [ %i.lc, %bb.bm ] ; 2 uses
  %.sroa.180.30 = phi i64 [ %.sroa.180.28, %bb.bl ], [ %spec.select.i379, %bb.bm ]
  %i.le = getelementptr [8 x i8], ptr %.sroa.0.30, i64 %i.kx
  store i64 %.sroa.0.0.copyload.i368, ptr %i.le, align 4
  %i.lf = add i64 %spec.select, 2
  br label %.thread241

bb.bn:                                            ; preds = %bb.h, %bb.h
  %i.lg = add i64 %.sroa.63.3472, -1              ; 3 uses
  %i.lh = getelementptr [8 x i8], ptr %.sroa.0.5471, i64 %i.lg
  %.sroa.0.0.copyload.i383 = load i64, ptr %i.lh, align 4
  %.sroa.036.0.insert.insert = or disjoint i64 %indvars.iv, -4294967296
  %i.li = icmp eq i64 %i.lg, %.sroa.180.5473
  br i1 %i.li, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.lj = shl i64 %.sroa.180.5473, 1
  %spec.select.i386 = tail call i64 @llvm.smax.i64(i64 %i.lj, i64 32) ; 2 uses
  %i.lk = shl i64 %spec.select.i386, 3
  %i.ll = tail call ptr @PyMem_Realloc(ptr noundef nonnull %.sroa.0.5471, i64 noundef %i.lk) #8 ; 2 uses
  %i.lm = icmp eq ptr %i.ll, null
  br i1 %i.lm, label %kill_local.exit.thread292.thread.thread.sink.split, label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.sroa.0.34 = phi ptr [ %.sroa.0.5471, %bb.bn ], [ %i.ll, %bb.bo ] ; 4 uses
  %.sroa.180.34 = phi i64 [ %.sroa.180.5473, %bb.bn ], [ %spec.select.i386, %bb.bo ] ; 2 uses
  %i.ln = getelementptr [8 x i8], ptr %.sroa.0.34, i64 %i.lg
  store i64 %.sroa.036.0.insert.insert, ptr %i.ln, align 4
  %i.lo = icmp eq i64 %.sroa.63.3472, %.sroa.180.34
  br i1 %i.lo, label %bb.bq, label %.thread257

bb.bq:                                            ; preds = %bb.bp
  %i.lp = shl i64 %.sroa.63.3472, 1
  %spec.select.i392 = tail call i64 @llvm.smax.i64(i64 %i.lp, i64 32) ; 2 uses
  %i.lq = shl i64 %spec.select.i392, 3
  %i.lr = tail call ptr @PyMem_Realloc(ptr noundef nonnull %.sroa.0.34, i64 noundef %i.lq) #8 ; 2 uses
  %i.ls = icmp eq ptr %i.lr, null
  br i1 %i.ls, label %kill_local.exit.thread292.thread.thread.sink.split, label %.thread257

.thread257:                                       ; preds = %bb.bp, %bb.bq
  %.sroa.0.36 = phi ptr [ %.sroa.0.34, %bb.bp ], [ %i.lr, %bb.bq ] ; 2 uses
  %.sroa.180.36 = phi i64 [ %.sroa.180.34, %bb.bp ], [ %spec.select.i392, %bb.bq ]
  %i.lt = getelementptr [8 x i8], ptr %.sroa.0.36, i64 %.sroa.63.3472
  store i64 %.sroa.0.0.copyload.i383, ptr %i.lt, align 4
  %i.lu = add i64 %.sroa.63.3472, 1
  br label %.thread241

bb.br:                                            ; preds = %bb.h
  %i.lv = getelementptr i8, ptr %i.ay, i64 24
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !45 ; 2 uses
  %i.lx = getelementptr i8, ptr %i.lw, i64 64     ; 2 uses
  %i.ly = load i8, ptr %i.lx, align 8             ; 2 uses
  %i.lz = and i8 %i.ly, 2
  %.not.i396 = icmp eq i8 %i.lz, 0
  br i1 %.not.i396, label %bb.bs, label %load_fast_push_block.exit397

bb.bs:                                            ; preds = %bb.br
  %i.ma = or disjoint i8 %i.ly, 2
  store i8 %i.ma, ptr %i.lx, align 8
  %i.mb = getelementptr i8, ptr %.1182474, i64 8
  store ptr %i.lw, ptr %.1182474, align 8, !tbaa !26
  br label %load_fast_push_block.exit397

load_fast_push_block.exit397:                     ; preds = %bb.br, %bb.bs
  %.3 = phi ptr [ %i.mb, %bb.bs ], [ %.1182474, %bb.br ]
  %i.mc = add i64 %.sroa.63.3472, -1              ; 2 uses
  %.sroa.031.0.insert.insert = or disjoint i64 %indvars.iv, -4294967296
  %i.md = icmp eq i64 %i.mc, %.sroa.180.5473
  br i1 %i.md, label %bb.bt, label %ref_stack_push.exit404

bb.bt:                                            ; preds = %load_fast_push_block.exit397
  %i.me = shl i64 %.sroa.180.5473, 1
  %spec.select.i401 = tail call i64 @llvm.smax.i64(i64 %i.me, i64 32) ; 2 uses
  %i.mf = shl i64 %spec.select.i401, 3
  %i.mg = tail call ptr @PyMem_Realloc(ptr noundef %.sroa.0.5471, i64 noundef %i.mf) #8 ; 2 uses
  %i.mh = icmp eq ptr %i.mg, null
  br i1 %i.mh, label %kill_local.exit.thread292.thread.sink.split, label %ref_stack_push.exit404

ref_stack_push.exit404:                           ; preds = %load_fast_push_block.exit397, %bb.bt
  %.sroa.0.39 = phi ptr [ %.sroa.0.5471, %load_fast_push_block.exit397 ], [ %i.mg, %bb.bt ] ; 2 uses
  %.sroa.180.39 = phi i64 [ %.sroa.180.5473, %load_fast_push_block.exit397 ], [ %spec.select.i401, %bb.bt ]
  %i.mi = getelementptr [8 x i8], ptr %.sroa.0.39, i64 %i.mc
  store i64 %.sroa.031.0.insert.insert, ptr %i.mi, align 4
  br label %.thread241

bb.bu:                                            ; preds = %bb.h
  %i.mj = tail call i32 @_PyOpcode_num_popped(i32 noundef %i.az, i32 noundef %i.bb) #8 ; 2 uses
  %i.mk = tail call i32 @_PyOpcode_num_pushed(i32 noundef %i.az, i32 noundef %i.bb) #8 ; 2 uses
  %i.ml = load i32, ptr %i.ay, align 8, !tbaa !29 ; 2 uses
  %i.mm = sext i32 %i.ml to i64
  %i.mn = getelementptr [8 x i8], ptr @_PyOpcode_opcode_metadata, i64 %i.mm
  %i.mo = getelementptr i8, ptr %i.mn, i64 4
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !32
  %.fr333 = freeze i32 %i.mp
  %i.mq = and i32 %.fr333, 8
  %.not235 = icmp ne i32 %i.mq, 0
  %i.mr = add i32 %i.ml, -263                     ; 2 uses
  %i.ms = icmp ult i32 %i.mr, 3
  %or.cond = or i1 %i.ms, %.not235
  br i1 %or.cond, label %bb.bv, label %.preheader334

bb.bv:                                            ; preds = %bb.bu
  %i.mt = getelementptr i8, ptr %i.ay, i64 24
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !45 ; 2 uses
  %i.mv = getelementptr i8, ptr %i.mu, i64 64     ; 2 uses
  %i.mw = load i8, ptr %i.mv, align 8             ; 2 uses
  %i.mx = and i8 %i.mw, 2
  %.not.i405 = icmp eq i8 %i.mx, 0
  br i1 %.not.i405, label %bb.bw, label %load_fast_push_block.exit406

bb.bw:                                            ; preds = %bb.bv
  %i.my = or disjoint i8 %i.mw, 2
  store i8 %i.my, ptr %i.mv, align 8
  %i.mz = getelementptr i8, ptr %.1182474, i64 8
  store ptr %i.mu, ptr %.1182474, align 8, !tbaa !26
  %.pre = load i32, ptr %i.ay, align 8, !tbaa !29
  %.pre530 = add i32 %.pre, -263
  br label %load_fast_push_block.exit406

load_fast_push_block.exit406:                     ; preds = %bb.bw, %bb.bv
  %.off.pre-phi = phi i32 [ %.pre530, %bb.bw ], [ %i.mr, %bb.bv ]
  %.5 = phi ptr [ %i.mz, %bb.bw ], [ %.1182474, %bb.bv ] ; 2 uses
  %switch = icmp ult i32 %.off.pre-phi, 3
  br i1 %switch, label %.thread241, label %.preheader334

.preheader334:                                    ; preds = %bb.bu, %load_fast_push_block.exit406
  %.5577 = phi ptr [ %.5, %load_fast_push_block.exit406 ], [ %.1182474, %bb.bu ] ; 2 uses
  %i.na = icmp sgt i32 %i.mj, 0
  %i.nb = sub nsw i32 0, %i.mj
  %narrow = select i1 %i.na, i32 %i.nb, i32 0
  %i.nc = sext i32 %narrow to i64
  %.sroa.63.26.lcssa = add i64 %.sroa.63.3472, %i.nc ; 2 uses
  %.not236462 = icmp sgt i32 %i.mk, 0
  br i1 %.not236462, label %.lr.ph467, label %.thread241

.lr.ph467:                                        ; preds = %.preheader334
  %.sroa.021.0.insert.insert = or disjoint i64 %indvars.iv, -4294967296
  br label %bb.bx

bb.bx:                                            ; preds = %.lr.ph467, %bb.bz
  %.0219466 = phi i32 [ 0, %.lr.ph467 ], [ %i.nk, %bb.bz ]
  %.sroa.180.41465 = phi i64 [ %.sroa.180.5473, %.lr.ph467 ], [ %.sroa.180.42, %bb.bz ] ; 3 uses
  %.sroa.63.27464 = phi i64 [ %.sroa.63.26.lcssa, %.lr.ph467 ], [ %i.nj, %bb.bz ] ; 3 uses
  %.sroa.0.41463 = phi ptr [ %.sroa.0.5471, %.lr.ph467 ], [ %.sroa.0.42, %bb.bz ] ; 3 uses
  %i.nd = icmp eq i64 %.sroa.63.27464, %.sroa.180.41465
  br i1 %i.nd, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.ne = shl i64 %.sroa.180.41465, 1
  %spec.select.i410 = tail call i64 @llvm.smax.i64(i64 %i.ne, i64 32) ; 2 uses
  %i.nf = shl i64 %spec.select.i410, 3
  %i.ng = tail call ptr @PyMem_Realloc(ptr noundef %.sroa.0.41463, i64 noundef %i.nf) #8 ; 2 uses
  %i.nh = icmp eq ptr %i.ng, null
  br i1 %i.nh, label %kill_local.exit.thread292.thread.sink.split, label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.sroa.0.42 = phi ptr [ %.sroa.0.41463, %bb.bx ], [ %i.ng, %bb.by ] ; 3 uses
  %.sroa.180.42 = phi i64 [ %.sroa.180.41465, %bb.bx ], [ %spec.select.i410, %bb.by ] ; 2 uses
  %i.ni = getelementptr [8 x i8], ptr %.sroa.0.42, i64 %.sroa.63.27464
  store i64 %.sroa.021.0.insert.insert, ptr %i.ni, align 4
  %i.nj = add i64 %.sroa.63.27464, 1              ; 2 uses
  %i.nk = add nuw nsw i32 %.0219466, 1            ; 2 uses
  %exitcond521.not = icmp eq i32 %i.nk, %i.mk
  br i1 %exitcond521.not, label %.thread241, label %bb.bx, !llvm.loop !209

.thread241:                                       ; preds = %bb.az, %bb.k, %bb.bz, %.lr.ph446.preheader, %bb.ba, %bb.aw, %.preheader334, %load_fast_push_block.exit406, %bb.bk, %ref_stack_push.exit382, %ref_stack_push.exit404, %.thread257, %ref_stack_push.exit367, %ref_stack_push.exit360, %ref_stack_push.exit353.thread, %ref_stack_push.exit338.thread, %bb.as, %kill_local.exit.i320, %ref_stack_push.exit305.thread, %bb.aa, %kill_local.exit.i, %ref_stack_push.exit284, %ref_stack_push.exit272, %ref_stack_push.exit256, %bb.i, %bb.av
  %.sroa.0.48.ph = phi ptr [ %.sroa.0.5471, %bb.ba ], [ %.sroa.0.5471, %kill_local.exit.i320 ], [ %.sroa.0.5471, %kill_local.exit.i ], [ %.sroa.0.5471, %bb.i ], [ %.sroa.0.36, %.thread257 ], [ %.sroa.0.28, %bb.bk ], [ %.sroa.0.26, %ref_stack_push.exit367 ], [ %.sroa.0.24, %ref_stack_push.exit360 ], [ %.sroa.0.22, %ref_stack_push.exit353.thread ], [ %.sroa.0.5471, %.lr.ph446.preheader ], [ %.sroa.0.5471, %bb.as ], [ %.sroa.0.5471, %bb.av ], [ %.sroa.0.16, %ref_stack_push.exit338.thread ], [ %.sroa.0.5471, %bb.aa ], [ %.sroa.0.14, %ref_stack_push.exit305.thread ], [ %.sroa.0.42, %bb.bz ], [ %.sroa.0.12, %ref_stack_push.exit284 ], [ %.sroa.0.8, %ref_stack_push.exit272 ], [ %.sroa.0.6, %ref_stack_push.exit256 ], [ %.sroa.0.39, %ref_stack_push.exit404 ], [ %.sroa.0.30, %ref_stack_push.exit382 ], [ %.sroa.0.5471, %load_fast_push_block.exit406 ], [ %.sroa.0.5471, %.preheader334 ], [ %.sroa.0.5471, %bb.aw ], [ %.sroa.0.5471, %bb.k ], [ %.sroa.0.19, %bb.az ] ; 12 uses
  %.sroa.63.33.ph = phi i64 [ %.sroa.63.3472, %bb.ba ], [ %i.gu, %kill_local.exit.i320 ], [ %i.dc, %kill_local.exit.i ], [ %.sroa.63.3472, %bb.i ], [ %i.lu, %.thread257 ], [ %i.kx, %bb.bk ], [ %i.km, %ref_stack_push.exit367 ], [ %.sroa.63.3472, %ref_stack_push.exit360 ], [ %i.jj, %ref_stack_push.exit353.thread ], [ %i.ji, %.lr.ph446.preheader ], [ %i.gu, %bb.as ], [ %.sroa.63.3472, %bb.av ], [ %i.ih, %ref_stack_push.exit338.thread ], [ %i.dc, %bb.aa ], [ %.sroa.63.3472, %ref_stack_push.exit305.thread ], [ %i.nj, %bb.bz ], [ %i.db, %ref_stack_push.exit284 ], [ %i.cl, %ref_stack_push.exit272 ], [ %i.bt, %ref_stack_push.exit256 ], [ %.sroa.63.3472, %ref_stack_push.exit404 ], [ %i.lf, %ref_stack_push.exit382 ], [ %.sroa.63.3472, %load_fast_push_block.exit406 ], [ %.sroa.63.26.lcssa, %.preheader334 ], [ %.sroa.63.3472, %bb.aw ], [ %.sroa.63.3472, %bb.k ], [ %i.iy, %bb.az ] ; 12 uses
  %.sroa.180.48.ph = phi i64 [ %.sroa.180.5473, %bb.ba ], [ %.sroa.180.5473, %kill_local.exit.i320 ], [ %.sroa.180.5473, %kill_local.exit.i ], [ %.sroa.180.5473, %bb.i ], [ %.sroa.180.36, %.thread257 ], [ %.sroa.180.28, %bb.bk ], [ %.sroa.180.26, %ref_stack_push.exit367 ], [ %.sroa.180.24, %ref_stack_push.exit360 ], [ %.sroa.180.22, %ref_stack_push.exit353.thread ], [ %.sroa.180.5473, %.lr.ph446.preheader ], [ %.sroa.180.5473, %bb.as ], [ %.sroa.180.5473, %bb.av ], [ %.sroa.180.16, %ref_stack_push.exit338.thread ], [ %.sroa.180.5473, %bb.aa ], [ %.sroa.180.14, %ref_stack_push.exit305.thread ], [ %.sroa.180.42, %bb.bz ], [ %.sroa.180.12, %ref_stack_push.exit284 ], [ %.sroa.180.8, %ref_stack_push.exit272 ], [ %.sroa.180.6, %ref_stack_push.exit256 ], [ %.sroa.180.39, %ref_stack_push.exit404 ], [ %.sroa.180.30, %ref_stack_push.exit382 ], [ %.sroa.180.5473, %load_fast_push_block.exit406 ], [ %.sroa.180.5473, %.preheader334 ], [ %.sroa.180.5473, %bb.aw ], [ %.sroa.180.5473, %bb.k ], [ %.sroa.180.19, %bb.az ] ; 12 uses
  %.7.ph = phi ptr [ %.1182474, %bb.ba ], [ %.1182474, %kill_local.exit.i320 ], [ %.1182474, %kill_local.exit.i ], [ %.1182474, %bb.i ], [ %.1182474, %.thread257 ], [ %.1182474, %bb.bk ], [ %.2, %ref_stack_push.exit367 ], [ %.1182474, %ref_stack_push.exit360 ], [ %.1182474, %ref_stack_push.exit353.thread ], [ %.1182474, %.lr.ph446.preheader ], [ %.1182474, %bb.as ], [ %.1182474, %bb.av ], [ %.1182474, %ref_stack_push.exit338.thread ], [ %.1182474, %bb.aa ], [ %.1182474, %ref_stack_push.exit305.thread ], [ %.5577, %bb.bz ], [ %.1182474, %ref_stack_push.exit284 ], [ %.1182474, %ref_stack_push.exit272 ], [ %.1182474, %ref_stack_push.exit256 ], [ %.3, %ref_stack_push.exit404 ], [ %.1182474, %ref_stack_push.exit382 ], [ %.5, %load_fast_push_block.exit406 ], [ %.5577, %.preheader334 ], [ %.1182474, %bb.aw ], [ %.1182474, %bb.k ], [ %.1182474, %bb.az ] ; 12 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.nl = load i32, ptr %i.ah, align 8, !tbaa !28 ; 3 uses
  %i.nm = sext i32 %i.nl to i64
  %i.nn = icmp slt i64 %indvars.iv.next, %i.nm
  br i1 %i.nn, label %bb.h, label %kill_local.exit, !llvm.loop !210

kill_local.exit:                                  ; preds = %.thread241
  %i.no = icmp sgt i32 %i.nl, 0
  br i1 %i.no, label %basicblock_last_instr.exit.i, label %basicblock_nofallthrough.exit.thread

basicblock_last_instr.exit.i:                     ; preds = %kill_local.exit
  %i.np = getelementptr i8, ptr %i.ag, i64 24
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !23
  %i.nr = zext nneg i32 %i.nl to i64
  %i.ns = getelementptr [40 x i8], ptr %i.nq, i64 %i.nr
  %i.nt = getelementptr i8, ptr %i.ns, i64 -40    ; 2 uses
  %.not.i414 = icmp eq ptr %i.nt, null
  br i1 %.not.i414, label %basicblock_nofallthrough.exit.thread, label %bb.ca

bb.ca:                                            ; preds = %basicblock_last_instr.exit.i
  %i.nu = load i32, ptr %i.nt, align 8, !tbaa !29
  switch i32 %i.nu, label %basicblock_nofallthrough.exit.thread [
    i32 35, label %load_fast_push_block.exit416
    i32 104, label %load_fast_push_block.exit416
    i32 105, label %load_fast_push_block.exit416
    i32 257, label %load_fast_push_block.exit416
    i32 260, label %load_fast_push_block.exit416
    i32 77, label %load_fast_push_block.exit416
    i32 75, label %load_fast_push_block.exit416
    i32 76, label %load_fast_push_block.exit416
  ]

basicblock_nofallthrough.exit.thread:             ; preds = %.preheader339, %bb.ca, %kill_local.exit, %basicblock_last_instr.exit.i
  %.1182.lcssa588 = phi ptr [ %.7.ph, %basicblock_last_instr.exit.i ], [ %.7.ph, %bb.ca ], [ %.7.ph, %kill_local.exit ], [ %i.af, %.preheader339 ] ; 3 uses
  %.sroa.180.5.lcssa587 = phi i64 [ %.sroa.180.48.ph, %basicblock_last_instr.exit.i ], [ %.sroa.180.48.ph, %bb.ca ], [ %.sroa.180.48.ph, %kill_local.exit ], [ %.sroa.180.1.lcssa, %.preheader339 ] ; 2 uses
  %.sroa.63.3.lcssa585 = phi i64 [ %.sroa.63.33.ph, %basicblock_last_instr.exit.i ], [ %.sroa.63.33.ph, %bb.ca ], [ %.sroa.63.33.ph, %kill_local.exit ], [ %.sroa.63.0.lcssa, %.preheader339 ] ; 2 uses
  %.sroa.0.5.lcssa583 = phi ptr [ %.sroa.0.48.ph, %basicblock_last_instr.exit.i ], [ %.sroa.0.48.ph, %bb.ca ], [ %.sroa.0.48.ph, %kill_local.exit ], [ %.sroa.0.1.lcssa, %.preheader339 ] ; 2 uses
  %i.nv = getelementptr i8, ptr %i.ag, i64 32
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !36 ; 2 uses
  %i.nx = getelementptr i8, ptr %i.nw, i64 64     ; 2 uses
  %i.ny = load i8, ptr %i.nx, align 8             ; 2 uses
  %i.nz = and i8 %i.ny, 2
  %.not.i415 = icmp eq i8 %i.nz, 0
  br i1 %.not.i415, label %bb.cb, label %load_fast_push_block.exit416

bb.cb:                                            ; preds = %basicblock_nofallthrough.exit.thread
  %i.oa = or disjoint i8 %i.ny, 2
  store i8 %i.oa, ptr %i.nx, align 8
  %i.ob = getelementptr i8, ptr %.1182.lcssa588, i64 8
  store ptr %i.nw, ptr %.1182.lcssa588, align 8, !tbaa !26
  br label %load_fast_push_block.exit416

load_fast_push_block.exit416:                     ; preds = %bb.ca, %bb.ca, %bb.ca, %bb.ca, %bb.ca, %bb.ca, %bb.ca, %bb.ca, %bb.cb, %basicblock_nofallthrough.exit.thread
  %.sroa.180.5.lcssa586 = phi i64 [ %.sroa.180.5.lcssa587, %basicblock_nofallthrough.exit.thread ], [ %.sroa.180.48.ph, %bb.ca ], [ %.sroa.180.5.lcssa587, %bb.cb ], [ %.sroa.180.48.ph, %bb.ca ], [ %.sroa.180.48.ph, %bb.ca ], [ %.sroa.180.48.ph, %bb.ca ], [ %.sroa.180.48.ph, %bb.ca ], [ %.sroa.180.48.ph, %bb.ca ], [ %.sroa.180.48.ph, %bb.ca ], [ %.sroa.180.48.ph, %bb.ca ]
  %.sroa.63.3.lcssa584 = phi i64 [ %.sroa.63.3.lcssa585, %basicblock_nofallthrough.exit.thread ], [ %.sroa.63.33.ph, %bb.ca ], [ %.sroa.63.3.lcssa585, %bb.cb ], [ %.sroa.63.33.ph, %bb.ca ], [ %.sroa.63.33.ph, %bb.ca ], [ %.sroa.63.33.ph, %bb.ca ], [ %.sroa.63.33.ph, %bb.ca ], [ %.sroa.63.33.ph, %bb.ca ], [ %.sroa.63.33.ph, %bb.ca ], [ %.sroa.63.33.ph, %bb.ca ] ; 5 uses
  %.sroa.0.5.lcssa582 = phi ptr [ %.sroa.0.5.lcssa583, %basicblock_nofallthrough.exit.thread ], [ %.sroa.0.48.ph, %bb.ca ], [ %.sroa.0.5.lcssa583, %bb.cb ], [ %.sroa.0.48.ph, %bb.ca ], [ %.sroa.0.48.ph, %bb.ca ], [ %.sroa.0.48.ph, %bb.ca ], [ %.sroa.0.48.ph, %bb.ca ], [ %.sroa.0.48.ph, %bb.ca ], [ %.sroa.0.48.ph, %bb.ca ], [ %.sroa.0.48.ph, %bb.ca ] ; 5 uses
  %.10 = phi ptr [ %.1182.lcssa588, %basicblock_nofallthrough.exit.thread ], [ %.7.ph, %bb.ca ], [ %i.ob, %bb.cb ], [ %.7.ph, %bb.ca ], [ %.7.ph, %bb.ca ], [ %.7.ph, %bb.ca ], [ %.7.ph, %bb.ca ], [ %.7.ph, %bb.ca ], [ %.7.ph, %bb.ca ], [ %.7.ph, %bb.ca ] ; 2 uses
  %i.oc = icmp sgt i64 %.sroa.63.3.lcssa584, 0
  br i1 %i.oc, label %.lr.ph483.preheader, label %.preheader338

.lr.ph483.preheader:                              ; preds = %load_fast_push_block.exit416
  %xtraiter666 = and i64 %.sroa.63.3.lcssa584, 1
  %i.od = icmp eq i64 %.sroa.63.3.lcssa584, 1
  br i1 %i.od, label %.lr.ph483.epil.preheader, label %.lr.ph483.preheader.new

.lr.ph483.preheader.new:                          ; preds = %.lr.ph483.preheader
  %unroll_iter669 = and i64 %.sroa.63.3.lcssa584, 9223372036854775806
  br label %.lr.ph483

.preheader338.loopexit.unr-lcssa:                 ; preds = %bb.cf
  %lcmp.mod667.not = icmp eq i64 %xtraiter666, 0
  br i1 %lcmp.mod667.not, label %.preheader338, label %.lr.ph483.epil.preheader

.lr.ph483.epil.preheader:                         ; preds = %.preheader338.loopexit.unr-lcssa, %.lr.ph483.preheader
  %.0205482.epil.init = phi i64 [ 0, %.lr.ph483.preheader ], [ %i.pb, %.preheader338.loopexit.unr-lcssa ]
  %lcmp.mod668 = trunc i64 %.sroa.63.3.lcssa584 to i1
  tail call void @llvm.assume(i1 %lcmp.mod668)
  %i.oe = getelementptr [8 x i8], ptr %.sroa.0.5.lcssa582, i64 %.0205482.epil.init
  %.sroa.0.0.copyload.i417.epil = load i64, ptr %i.oe, align 4 ; 2 uses
  %i.of = and i64 %.sroa.0.0.copyload.i417.epil, 4294967295
  %.not239.epil = icmp eq i64 %i.of, 4294967295
  br i1 %.not239.epil, label %.preheader338, label %bb.cc

bb.cc:                                            ; preds = %.lr.ph483.epil.preheader
  %sext.epil = shl i64 %.sroa.0.0.copyload.i417.epil, 32
  %i.og = ashr exact i64 %sext.epil, 32
  %i.oh = getelementptr i8, ptr %i.m, i64 %i.og   ; 2 uses
  %i.oi = load i8, ptr %i.oh, align 1, !tbaa !64
  %i.oj = or i8 %i.oi, 4
  store i8 %i.oj, ptr %i.oh, align 1, !tbaa !64
  br label %.preheader338

.preheader338:                                    ; preds = %.preheader338.loopexit.unr-lcssa, %bb.cc, %.lr.ph483.epil.preheader, %load_fast_push_block.exit416
  %i.ok = load i32, ptr %i.ah, align 8, !tbaa !28 ; 4 uses
  %i.ol = icmp sgt i32 %i.ok, 0
  br i1 %i.ol, label %.lr.ph485, label %kill_local.exit.thread292.loopexit

.lr.ph485:                                        ; preds = %.preheader338
  %i.om = getelementptr i8, ptr %i.ag, i64 24     ; 3 uses
  %wide.trip.count = zext nneg i32 %i.ok to i64   ; 2 uses
  %xtraiter671 = and i64 %wide.trip.count, 1
  %i.on = icmp eq i32 %i.ok, 1
  br i1 %i.on, label %.epil.preheader, label %.lr.ph485.new

.lr.ph485.new:                                    ; preds = %.lr.ph485
  %unroll_iter674 = and i64 %wide.trip.count, 2147483646
  br label %bb.cg

.lr.ph483:                                        ; preds = %bb.cf, %.lr.ph483.preheader.new
  %.0205482 = phi i64 [ 0, %.lr.ph483.preheader.new ], [ %i.pb, %bb.cf ] ; 3 uses
  %niter670 = phi i64 [ 0, %.lr.ph483.preheader.new ], [ %niter670.next.1, %bb.cf ]
  %i.oo = getelementptr [8 x i8], ptr %.sroa.0.5.lcssa582, i64 %.0205482
  %.sroa.0.0.copyload.i417 = load i64, ptr %i.oo, align 4 ; 2 uses
  %i.op = and i64 %.sroa.0.0.copyload.i417, 4294967295
  %.not239 = icmp eq i64 %i.op, 4294967295
  br i1 %.not239, label %.lr.ph483.1, label %bb.cd

bb.cd:                                            ; preds = %.lr.ph483
  %sext = shl i64 %.sroa.0.0.copyload.i417, 32
  %i.oq = ashr exact i64 %sext, 32
  %i.or = getelementptr i8, ptr %i.m, i64 %i.oq   ; 2 uses
  %i.os = load i8, ptr %i.or, align 1, !tbaa !64
  %i.ot = or i8 %i.os, 4
  store i8 %i.ot, ptr %i.or, align 1, !tbaa !64
  br label %.lr.ph483.1

.lr.ph483.1:                                      ; preds = %bb.cd, %.lr.ph483
  %i.ou = getelementptr [8 x i8], ptr %.sroa.0.5.lcssa582, i64 %.0205482
  %i.ov = getelementptr i8, ptr %i.ou, i64 8
  %.sroa.0.0.copyload.i417.1 = load i64, ptr %i.ov, align 4 ; 2 uses
  %i.ow = and i64 %.sroa.0.0.copyload.i417.1, 4294967295
  %.not239.1 = icmp eq i64 %i.ow, 4294967295
  br i1 %.not239.1, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %.lr.ph483.1
  %sext.1 = shl i64 %.sroa.0.0.copyload.i417.1, 32
  %i.ox = ashr exact i64 %sext.1, 32
  %i.oy = getelementptr i8, ptr %i.m, i64 %i.ox   ; 2 uses
  %i.oz = load i8, ptr %i.oy, align 1, !tbaa !64
  %i.pa = or i8 %i.oz, 4
  store i8 %i.pa, ptr %i.oy, align 1, !tbaa !64
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %.lr.ph483.1
  %i.pb = add nuw nsw i64 %.0205482, 2            ; 2 uses
  %niter670.next.1 = add i64 %niter670, 2         ; 2 uses
  %niter670.ncmp.1 = icmp eq i64 %niter670.next.1, %unroll_iter669
  br i1 %niter670.ncmp.1, label %.preheader338.loopexit.unr-lcssa, label %.lr.ph483, !llvm.loop !211

bb.cg:                                            ; preds = %bb.cm, %.lr.ph485.new
  %indvars.iv525 = phi i64 [ 0, %.lr.ph485.new ], [ %indvars.iv.next526.1, %bb.cm ] ; 4 uses
  %niter675 = phi i64 [ 0, %.lr.ph485.new ], [ %niter675.next.1, %bb.cm ]
  %i.pc = getelementptr i8, ptr %i.m, i64 %indvars.iv525
  %i.pd = load i8, ptr %i.pc, align 1, !tbaa !64
  %.not238 = icmp eq i8 %i.pd, 0
  br i1 %.not238, label %bb.ch, label %bb.cj

bb.ch:                                            ; preds = %bb.cg
  %i.pe = load ptr, ptr %i.om, align 8, !tbaa !23
  %i.pf = getelementptr [40 x i8], ptr %i.pe, i64 %indvars.iv525 ; 2 uses
  %i.pg = load i32, ptr %i.pf, align 8, !tbaa !29
  switch i32 %i.pg, label %bb.cj [
    i32 84, label %.sink.split
    i32 89, label %bb.ci
  ]

bb.ci:                                            ; preds = %bb.ch
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ch, %bb.ci
  %.sink = phi i32 [ 87, %bb.ci ], [ 86, %bb.ch ]
  store i32 %.sink, ptr %i.pf, align 8, !tbaa !29
  br label %bb.cj

bb.cj:                                            ; preds = %.sink.split, %bb.ch, %bb.cg
  %indvars.iv.next526 = or disjoint i64 %indvars.iv525, 1 ; 2 uses
  %i.ph = getelementptr i8, ptr %i.m, i64 %indvars.iv.next526
  %i.pi = load i8, ptr %i.ph, align 1, !tbaa !64
  %.not238.1 = icmp eq i8 %i.pi, 0
  br i1 %.not238.1, label %bb.ck, label %bb.cm

bb.ck:                                            ; preds = %bb.cj
  %i.pj = load ptr, ptr %i.om, align 8, !tbaa !23
  %i.pk = getelementptr [40 x i8], ptr %i.pj, i64 %indvars.iv.next526 ; 2 uses
  %i.pl = load i32, ptr %i.pk, align 8, !tbaa !29
  switch i32 %i.pl, label %bb.cm [
    i32 84, label %.sink.split.1
    i32 89, label %bb.cl
  ]

bb.cl:                                            ; preds = %bb.ck
  br label %.sink.split.1

.sink.split.1:                                    ; preds = %bb.cl, %bb.ck
  %.sink.1 = phi i32 [ 87, %bb.cl ], [ 86, %bb.ck ]
  store i32 %.sink.1, ptr %i.pk, align 8, !tbaa !29
  br label %bb.cm

bb.cm:                                            ; preds = %.sink.split.1, %bb.ck, %bb.cj
  %indvars.iv.next526.1 = add nuw nsw i64 %indvars.iv525, 2 ; 2 uses
  %niter675.next.1 = add i64 %niter675, 2         ; 2 uses
  %niter675.ncmp.1 = icmp eq i64 %niter675.next.1, %unroll_iter674
  br i1 %niter675.ncmp.1, label %kill_local.exit.thread292.loopexit.loopexit.unr-lcssa, label %bb.cg, !llvm.loop !212

kill_local.exit.thread292.thread.sink.split:      ; preds = %bb.f, %bb.bt, %bb.bh, %bb.be, %bb.s, %bb.q, %bb.m, %bb.ay, %bb.by
  %.sroa.0.51.ph = phi ptr [ %.sroa.0.41463, %bb.by ], [ %.sroa.0.5471, %bb.bt ], [ %.sroa.0.18449, %bb.ay ], [ %.sroa.0.5471, %bb.m ], [ %.sroa.0.5471, %bb.q ], [ %.sroa.0.5471, %bb.s ], [ %.sroa.0.5471, %bb.be ], [ %.sroa.0.5471, %bb.bh ], [ %.sroa.0.1434, %bb.f ]
  %i.pm = tail call ptr @PyErr_NoMemory() #8      ; 0 uses
  br label %kill_local.exit.thread292.thread

kill_local.exit.thread292.thread:                 ; preds = %kill_local.exit.thread292.loopexit, %kill_local.exit.thread292.thread.sink.split
  %.sroa.0.51 = phi ptr [ %.sroa.0.51.ph, %kill_local.exit.thread292.thread.sink.split ], [ %.sroa.0.5.lcssa582, %kill_local.exit.thread292.loopexit ] ; 2 uses
  %.16 = phi i32 [ -1, %kill_local.exit.thread292.thread.sink.split ], [ 0, %kill_local.exit.thread292.loopexit ] ; 2 uses
  %.not.i418 = icmp eq ptr %.sroa.0.51, null
  br i1 %.not.i418, label %ref_stack_fini.exit, label %kill_local.exit.thread292.thread.thread

kill_local.exit.thread292.thread.thread.sink.split: ; preds = %bb.bq, %bb.bo, %bb.bm, %bb.bj, %bb.bc, %bb.au, %bb.ah, %bb.u
  %.sroa.0.51330.ph = phi ptr [ %.sroa.0.5471, %bb.bo ], [ %.sroa.0.5471, %bb.bj ], [ %.sroa.0.5471, %bb.bc ], [ %.sroa.0.5471, %bb.au ], [ %.sroa.0.5471, %bb.ah ], [ %.sroa.0.10, %bb.u ], [ %.sroa.0.28, %bb.bm ], [ %.sroa.0.34, %bb.bq ]
  %i.pn = tail call ptr @PyErr_NoMemory() #8      ; 0 uses
  br label %kill_local.exit.thread292.thread.thread

kill_local.exit.thread292.thread.thread:          ; preds = %kill_local.exit.thread292.thread.thread.sink.split, %kill_local.exit.thread292.thread
  %.16331 = phi i32 [ %.16, %kill_local.exit.thread292.thread ], [ -1, %kill_local.exit.thread292.thread.thread.sink.split ]
  %.sroa.0.51330 = phi ptr [ %.sroa.0.51, %kill_local.exit.thread292.thread ], [ %.sroa.0.51330.ph, %kill_local.exit.thread292.thread.thread.sink.split ]
  tail call void @PyMem_Free(ptr noundef nonnull %.sroa.0.51330) #8
  br label %ref_stack_fini.exit

ref_stack_fini.exit:                              ; preds = %.thread308, %kill_local.exit.thread292.thread, %kill_local.exit.thread292.thread.thread
  %.16312 = phi i32 [ -1, %.thread308 ], [ %.16, %kill_local.exit.thread292.thread ], [ %.16331, %kill_local.exit.thread292.thread.thread ]
  tail call void @PyMem_Free(ptr noundef nonnull %i.m) #8
  tail call void @PyMem_Free(ptr noundef %i.n) #8
  br label %bb.cn

bb.cn:                                            ; preds = %ref_stack_fini.exit, %bb.b
  %.1 = phi i32 [ -1, %bb.b ], [ %.16312, %ref_stack_fini.exit ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @_PyCfg_JumpLabelsToTargets(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !21
  %i.b = tail call fastcc i32 @translate_jump_labels_to_targets(ptr noundef %i.a)
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !21
  %i.e = tail call fastcc i32 @label_exception_targets(ptr noundef %i.d)
  %i.f = icmp eq i32 %i.e, -1
  %. = sext i1 %i.f to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.a ], [ %., %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483647, -2147483648) i32 @PyCompile_OpcodeStackEffectWithJump(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %0, 0
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i32 %0, 255
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = zext nneg i32 %0 to i64
  %i.d = getelementptr i8, ptr @_PyOpcode_Deopt, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !64
  %i.f = zext i8 %i.e to i32
  %.not.i = icmp eq i32 %0, %i.f
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = tail call i32 @_PyOpcode_num_popped(i32 noundef %0, i32 noundef %1) #8 ; 2 uses
  %i.h = tail call i32 @_PyOpcode_num_pushed(i32 noundef %0, i32 noundef %1) #8 ; 2 uses
  %i.i = icmp slt i32 %i.g, 0
  %i.j = icmp slt i32 %i.h, 0
  %or.cond.i = select i1 %i.i, i1 true, i1 %i.j
  br i1 %or.cond.i, label %bb.e, label %get_stack_effects.exit

get_stack_effects.exit:                           ; preds = %bb.d
  %i.k = and i32 %0, 2147483646
  %or.cond3.i = icmp ne i32 %i.k, 264
  %i.l = icmp ne i32 %0, 263
  %or.cond5.not29.i = and i1 %i.l, %or.cond3.i
  %i.m = icmp ne i32 %2, 0
  %or.cond7.i = or i1 %or.cond5.not29.i, %i.m
  %i.n = sub nsw i32 %i.h, %i.g
  %.sink.i = select i1 %or.cond7.i, i32 %i.n, i32 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a, %bb.c, %get_stack_effects.exit
  %i.o = phi i32 [ %.sink.i, %get_stack_effects.exit ], [ 2147483647, %bb.c ], [ 2147483647, %bb.a ], [ 2147483647, %bb.d ]
  ret i32 %i.o
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483647, -2147483648) i32 @PyCompile_OpcodeStackEffect(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %0, 0
  br i1 %i.a, label %get_stack_effects.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i32 %0, 255
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = zext nneg i32 %0 to i64
  %i.d = getelementptr i8, ptr @_PyOpcode_Deopt, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !64
  %i.f = zext i8 %i.e to i32
  %.not.i = icmp eq i32 %0, %i.f
  br i1 %.not.i, label %bb.d, label %get_stack_effects.exit

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = tail call i32 @_PyOpcode_num_popped(i32 noundef %0, i32 noundef %1) #8 ; 2 uses
  %i.h = tail call i32 @_PyOpcode_num_pushed(i32 noundef %0, i32 noundef %1) #8 ; 2 uses
  %i.i = icmp slt i32 %i.g, 0
  %i.j = icmp slt i32 %i.h, 0
  %or.cond.i = select i1 %i.i, i1 true, i1 %i.j
  %i.k = sub nsw i32 %i.h, %i.g
  %spec.select = select i1 %or.cond.i, i32 2147483647, i32 %i.k
  br label %get_stack_effects.exit

get_stack_effects.exit:                           ; preds = %bb.d, %bb.a, %bb.c
  %i.l = phi i32 [ %spec.select, %bb.d ], [ 2147483647, %bb.c ], [ 2147483647, %bb.a ]
  ret i32 %i.l
}

; Function Attrs: nounwind uwtable
define dso_local ptr @_PyCompile_OptimizeCfg(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !65
  %.not = icmp eq ptr %.val, @_PyInstructionSequence_Type
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !49
  tail call void @PyErr_SetString(ptr noundef %i.b, ptr noundef nonnull @.str) #8
  br label %_PyCfgBuilder_Free.exit

bb.c:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyDict_New() #8           ; 5 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_PyCfgBuilder_Free.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @_PyCfg_FromInstructionSequence(ptr noundef nonnull %0) ; 7 uses
  %i.f = icmp eq ptr %i.e, null                   ; 2 uses
  br i1 %i.f, label %cfg_to_instruction_sequence.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = tail call i32 @_PyCfg_OptimizeCodeUnit(ptr noundef nonnull %i.e, ptr noundef %1, ptr noundef nonnull %i.c, i32 noundef %2, i32 noundef 0, i32 poison)
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %cfg_to_instruction_sequence.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val20 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.i = tail call fastcc i32 @calculate_stackdepth(ptr %.val20)
  %i.j = icmp eq i32 %i.i, -1
  br i1 %i.j, label %cfg_to_instruction_sequence.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val21 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.k = tail call fastcc i32 @optimize_load_fast(ptr %.val21)
  %.not19 = icmp eq i32 %i.k, 0
  br i1 %.not19, label %bb.h, label %cfg_to_instruction_sequence.exit

bb.h:                                             ; preds = %bb.g
  %i.l = tail call ptr @_PyInstructionSequence_New() #8 ; 4 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %cfg_to_instruction_sequence.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = tail call i32 @_PyCfg_ToInstructionSequence(ptr noundef nonnull readonly %i.e, ptr noundef nonnull %i.l)
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %bb.j, label %cfg_to_instruction_sequence.exit

bb.j:                                             ; preds = %bb.i
  tail call void @PyInstructionSequence_Fini(ptr noundef nonnull %i.l) #8
  br label %cfg_to_instruction_sequence.exit

cfg_to_instruction_sequence.exit:                 ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %.016 = phi ptr [ null, %bb.d ], [ null, %bb.e ], [ null, %bb.f ], [ null, %bb.g ], [ null, %bb.h ], [ null, %bb.j ], [ %i.l, %bb.i ] ; 2 uses
  %i.p = load i32, ptr %i.c, align 8, !tbaa !64   ; 2 uses
  %.not.i = icmp sgt i32 %i.p, -1
  br i1 %.not.i, label %bb.k, label %Py_DECREF.exit

bb.k:                                             ; preds = %cfg_to_instruction_sequence.exit
  %i.q = add nsw i32 %i.p, -1                     ; 2 uses
  store i32 %i.q, ptr %i.c, align 8, !tbaa !64
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.l, label %Py_DECREF.exit

bb.l:                                             ; preds = %bb.k
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #8
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %cfg_to_instruction_sequence.exit, %bb.k, %bb.l
  br i1 %i.f, label %_PyCfgBuilder_Free.exit, label %bb.m

bb.m:                                             ; preds = %Py_DECREF.exit
  %i.s = getelementptr i8, ptr %i.e, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !11   ; 2 uses
  %.not12.i = icmp eq ptr %i.t, null
  br i1 %.not12.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m, %bb.o
  %.013.i = phi ptr [ %i.w, %bb.o ], [ %i.t, %bb.m ] ; 3 uses
  %i.u = getelementptr i8, ptr %.013.i, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !23   ; 2 uses
  %.not11.i = icmp eq ptr %i.v, null
  br i1 %.not11.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i
  tail call void @PyMem_Free(ptr noundef nonnull %i.v) #8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.i
  %i.w = load ptr, ptr %.013.i, align 8, !tbaa !16 ; 2 uses
  tail call void @PyMem_Free(ptr noundef nonnull %.013.i) #8
  %.not.i22 = icmp eq ptr %i.w, null
  br i1 %.not.i22, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !24

._crit_edge.i:                                    ; preds = %bb.o, %bb.m
  tail call void @PyMem_Free(ptr noundef nonnull %i.e) #8
  br label %_PyCfgBuilder_Free.exit

_PyCfgBuilder_Free.exit:                          ; preds = %._crit_edge.i, %Py_DECREF.exit, %bb.c, %bb.b
  %.1 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ %.016, %Py_DECREF.exit ], [ %.016, %._crit_edge.i ]
  ret ptr %.1
}

declare void @PyErr_SetString(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PyDict_New() local_unnamed_addr #2

declare ptr @PyMem_Calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @_Py_CArray_EnsureCapacity(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @remove_unreachable(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %cond = icmp eq ptr %0, null                    ; 2 uses
  br i1 %cond, label %._crit_edge.i, label %.lr.ph

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %i.a = sext i32 %i.g to i64
  %i.b = shl nsw i64 %i.a, 3
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.a, %._crit_edge.loopexit.i
  %.0.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.b, %._crit_edge.loopexit.i ]
  %i.c = tail call ptr @PyMem_Malloc(i64 noundef %.0.lcssa.i) #8 ; 7 uses
  %.not8.i = icmp eq ptr %i.c, null
  br i1 %.not8.i, label %make_cfg_traversal_stack.exit.thread, label %make_cfg_traversal_stack.exit

.lr.ph.i:                                         ; preds = %.lr.ph, %.lr.ph.i
  %.011.i = phi i32 [ %i.g, %.lr.ph.i ], [ 0, %.lr.ph ]
  %.0710.i = phi ptr [ %i.i, %.lr.ph.i ], [ %0, %.lr.ph ] ; 2 uses
  %i.d = getelementptr i8, ptr %.0710.i, i64 64   ; 2 uses
  %i.e = load i8, ptr %i.d, align 8
  %i.f = and i8 %i.e, -3
  store i8 %i.f, ptr %i.d, align 8
  %i.g = add i32 %.011.i, 1                       ; 2 uses
  %i.h = getelementptr i8, ptr %.0710.i, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !36   ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !122

make_cfg_traversal_stack.exit.thread:             ; preds = %._crit_edge.i
  %i.j = tail call ptr @PyErr_NoMemory() #8       ; 0 uses
  br label %.loopexit

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.04262 = phi ptr [ %i.m, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %i.k = getelementptr i8, ptr %.04262, i64 56
  store i32 0, ptr %i.k, align 8, !tbaa !55
  %i.l = getelementptr i8, ptr %.04262, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !36   ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %.lr.ph.i, label %.lr.ph, !llvm.loop !213

make_cfg_traversal_stack.exit:                    ; preds = %._crit_edge.i
  %i.n = getelementptr i8, ptr %0, i64 56
  store i32 1, ptr %i.n, align 8, !tbaa !55
  %i.o = getelementptr i8, ptr %i.c, i64 8        ; 2 uses
  store ptr %0, ptr %i.c, align 8, !tbaa !26
  %i.p = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %i.q = load i8, ptr %i.p, align 8
  %i.r = or i8 %i.q, 2
  store i8 %i.r, ptr %i.p, align 8
  %i.s = icmp ugt ptr %i.o, %i.c
  br i1 %i.s, label %.lr.ph67, label %._crit_edge68.thread

._crit_edge68.thread:                             ; preds = %make_cfg_traversal_stack.exit
  tail call void @PyMem_Free(ptr noundef nonnull %i.c) #8
  br label %.lr.ph72.preheader

.loopexit60:                                      ; preds = %bb.j, %basicblock_nofallthrough.exit.thread57
  %.3.lcssa = phi ptr [ %.2, %basicblock_nofallthrough.exit.thread57 ], [ %.5, %bb.j ] ; 2 uses
  %i.t = icmp ugt ptr %.3.lcssa, %i.c
  br i1 %i.t, label %.lr.ph67, label %._crit_edge68, !llvm.loop !214

.lr.ph67:                                         ; preds = %make_cfg_traversal_stack.exit, %.loopexit60
  %.04466 = phi ptr [ %.3.lcssa, %.loopexit60 ], [ %i.o, %make_cfg_traversal_stack.exit ] ; 2 uses
  %i.u = getelementptr i8, ptr %.04466, i64 -8    ; 12 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !26   ; 5 uses
  %i.w = getelementptr i8, ptr %i.v, i64 32       ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !36   ; 4 uses
  %.not47 = icmp eq ptr %i.x, null
  br i1 %.not47, label %basicblock_nofallthrough.exit.thread57, label %bb.b

bb.b:                                             ; preds = %.lr.ph67
  %i.y = getelementptr i8, ptr %i.v, i64 40
  %i.z = load i32, ptr %i.y, align 8, !tbaa !28   ; 2 uses
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %basicblock_last_instr.exit.i, label %basicblock_nofallthrough.exit.thread

basicblock_last_instr.exit.i:                     ; preds = %bb.b
  %i.ab = getelementptr i8, ptr %i.v, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !23
  %i.ad = zext nneg i32 %i.z to i64
  %i.ae = getelementptr [40 x i8], ptr %i.ac, i64 %i.ad
  %i.af = getelementptr i8, ptr %i.ae, i64 -40    ; 2 uses
  %.not.i54 = icmp eq ptr %i.af, null
  br i1 %.not.i54, label %basicblock_nofallthrough.exit.thread, label %bb.c

bb.c:                                             ; preds = %basicblock_last_instr.exit.i
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !29
  switch i32 %i.ag, label %basicblock_nofallthrough.exit.thread [
    i32 35, label %basicblock_nofallthrough.exit.thread57
    i32 104, label %basicblock_nofallthrough.exit.thread57
    i32 105, label %basicblock_nofallthrough.exit.thread57
    i32 257, label %basicblock_nofallthrough.exit.thread57
    i32 260, label %basicblock_nofallthrough.exit.thread57
    i32 77, label %basicblock_nofallthrough.exit.thread57
    i32 75, label %basicblock_nofallthrough.exit.thread57
    i32 76, label %basicblock_nofallthrough.exit.thread57
  ]

basicblock_nofallthrough.exit.thread:             ; preds = %bb.c, %bb.b, %basicblock_last_instr.exit.i
  %i.ah = getelementptr i8, ptr %i.x, i64 64
  %i.ai = load i8, ptr %i.ah, align 8
  %i.aj = and i8 %i.ai, 2
  %.not49 = icmp eq i8 %i.aj, 0
  br i1 %.not49, label %bb.d, label %bb.e

bb.d:                                             ; preds = %basicblock_nofallthrough.exit.thread
  store ptr %i.x, ptr %i.u, align 8, !tbaa !26
  %i.ak = load ptr, ptr %i.w, align 8, !tbaa !36
  %i.al = getelementptr i8, ptr %i.ak, i64 64     ; 2 uses
  %i.am = load i8, ptr %i.al, align 8
  %i.an = or i8 %i.am, 2
  store i8 %i.an, ptr %i.al, align 8
  %.pre = load ptr, ptr %i.w, align 8, !tbaa !36
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %basicblock_nofallthrough.exit.thread
  %i.ao = phi ptr [ %i.x, %basicblock_nofallthrough.exit.thread ], [ %.pre, %bb.d ]
  %.1 = phi ptr [ %i.u, %basicblock_nofallthrough.exit.thread ], [ %.04466, %bb.d ]
  %i.ap = getelementptr i8, ptr %i.ao, i64 56     ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !55
  %i.ar = add i32 %i.aq, 1
  store i32 %i.ar, ptr %i.ap, align 8, !tbaa !55
  br label %basicblock_nofallthrough.exit.thread57

basicblock_nofallthrough.exit.thread57:           ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.e, %.lr.ph67
  %.2 = phi ptr [ %i.u, %bb.c ], [ %.1, %bb.e ], [ %i.u, %.lr.ph67 ], [ %i.u, %bb.c ], [ %i.u, %bb.c ], [ %i.u, %bb.c ], [ %i.u, %bb.c ], [ %i.u, %bb.c ], [ %i.u, %bb.c ], [ %i.u, %bb.c ] ; 2 uses
  %i.as = getelementptr i8, ptr %i.v, i64 40      ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !28 ; 3 uses
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %.lr.ph65, label %.loopexit60

.lr.ph65:                                         ; preds = %basicblock_nofallthrough.exit.thread57
  %i.av = getelementptr i8, ptr %i.v, i64 24
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph65, %bb.j
  %.pre7475 = phi i32 [ %i.at, %.lr.ph65 ], [ %.pre7476, %bb.j ] ; 2 uses
  %i.aw = phi i32 [ %i.at, %.lr.ph65 ], [ %i.bq, %bb.j ]
  %indvars.iv = phi i64 [ 0, %.lr.ph65 ], [ %indvars.iv.next, %bb.j ] ; 2 uses
  %.363 = phi ptr [ %.2, %.lr.ph65 ], [ %.5, %bb.j ] ; 4 uses
  %i.ax = load ptr, ptr %i.av, align 8, !tbaa !23
  %i.ay = getelementptr [40 x i8], ptr %i.ax, i64 %indvars.iv ; 2 uses
  %.val53 = load i32, ptr %i.ay, align 8, !tbaa !29 ; 2 uses
  %i.az = sext i32 %.val53 to i64
  %i.ba = getelementptr [8 x i8], ptr @_PyOpcode_opcode_metadata, i64 %i.az
  %i.bb = getelementptr i8, ptr %i.ba, i64 4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !32
  %i.bd = and i32 %i.bc, 8
  %.not50 = icmp eq i32 %i.bd, 0
  %i.be = add i32 %.val53, -266
  %narrow.i = icmp ult i32 %i.be, -3
  %or.cond = and i1 %narrow.i, %.not50
  br i1 %or.cond, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bf = getelementptr i8, ptr %i.ay, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !45 ; 3 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 64     ; 3 uses
  %i.bi = load i8, ptr %i.bh, align 8
  %i.bj = and i8 %i.bi, 2
  %.not52 = icmp eq i8 %i.bj, 0
  br i1 %.not52, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bk = getelementptr i8, ptr %.363, i64 8
  store ptr %i.bg, ptr %.363, align 8, !tbaa !26
  %i.bl = load i8, ptr %i.bh, align 8
  %i.bm = or i8 %i.bl, 2
  store i8 %i.bm, ptr %i.bh, align 8
  %.pre74.pre = load i32, ptr %i.as, align 8, !tbaa !28
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pre74 = phi i32 [ %.pre7475, %bb.g ], [ %.pre74.pre, %bb.h ] ; 2 uses
  %.4 = phi ptr [ %.363, %bb.g ], [ %i.bk, %bb.h ]
  %i.bn = getelementptr i8, ptr %i.bg, i64 56     ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !55
  %i.bp = add i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bn, align 8, !tbaa !55
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.i
  %.pre7476 = phi i32 [ %.pre74, %bb.i ], [ %.pre7475, %bb.f ]
  %i.bq = phi i32 [ %.pre74, %bb.i ], [ %i.aw, %bb.f ] ; 2 uses
  %.5 = phi ptr [ %.4, %bb.i ], [ %.363, %bb.f ]  ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.br = sext i32 %i.bq to i64
  %i.bs = icmp slt i64 %indvars.iv.next, %i.br
  br i1 %i.bs, label %bb.f, label %.loopexit60, !llvm.loop !215

._crit_edge68:                                    ; preds = %.loopexit60
  tail call void @PyMem_Free(ptr noundef nonnull %i.c) #8
  br i1 %cond, label %.loopexit, label %.lr.ph72.preheader

.lr.ph72.preheader:                               ; preds = %._crit_edge68.thread, %._crit_edge68
  br label %.lr.ph72

.lr.ph72:                                         ; preds = %.lr.ph72.preheader, %bb.l
  %.070 = phi ptr [ %i.cb, %bb.l ], [ %0, %.lr.ph72.preheader ] ; 4 uses
  %i.bt = getelementptr i8, ptr %.070, i64 56
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !55
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph72
  %i.bw = getelementptr i8, ptr %.070, i64 40
  store i32 0, ptr %i.bw, align 8, !tbaa !28
  %i.bx = getelementptr i8, ptr %.070, i64 64     ; 2 uses
  %i.by = load i8, ptr %i.bx, align 8
  %i.bz = and i8 %i.by, -5
  store i8 %i.bz, ptr %i.bx, align 8
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph72, %bb.k
  %i.ca = getelementptr i8, ptr %.070, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !36 ; 2 uses
  %.not46 = icmp eq ptr %i.cb, null
  br i1 %.not46, label %.loopexit, label %.lr.ph72, !llvm.loop !216

.loopexit:                                        ; preds = %bb.l, %._crit_edge68, %make_cfg_traversal_stack.exit.thread
  %.041 = phi i32 [ -1, %make_cfg_traversal_stack.exit.thread ], [ 0, %._crit_edge68 ], [ 0, %bb.l ]
  ret i32 %.041
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @remove_redundant_nops_and_jumps(ptr noundef readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %remove_redundant_jumps.exit.thread9, %bb.a
  %i.a = tail call fastcc i32 @remove_redundant_nops(ptr noundef %0) ; 2 uses
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.03063.i = load ptr, ptr %0, align 8, !tbaa !26 ; 2 uses
  %.not64.i = icmp eq ptr %.03063.i, null
  br i1 %.not64.i, label %remove_redundant_jumps.exit.thread9, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %basicblock_last_instr.exit.thread.i
  %.03066.i = phi ptr [ %.030.i, %basicblock_last_instr.exit.thread.i ], [ %.03063.i, %bb.c ] ; 4 uses
  %.02465.i = phi i32 [ %.428.ph.i, %basicblock_last_instr.exit.thread.i ], [ 0, %bb.c ] ; 6 uses
  %i.c = getelementptr i8, ptr %.03066.i, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !28   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %basicblock_last_instr.exit.i, label %basicblock_last_instr.exit.thread.i

basicblock_last_instr.exit.i:                     ; preds = %.lr.ph.i
  %i.f = getelementptr i8, ptr %.03066.i, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !23
  %i.h = zext nneg i32 %i.d to i64
  %i.i = getelementptr [40 x i8], ptr %i.g, i64 %i.h ; 3 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -40      ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %basicblock_last_instr.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %basicblock_last_instr.exit.i
  %i.l = load i32, ptr %i.j, align 8, !tbaa !29
  switch i32 %i.l, label %basicblock_last_instr.exit.thread.i [
    i32 257, label %bb.e
    i32 260, label %bb.e
    i32 77, label %bb.e
    i32 75, label %bb.e
    i32 76, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d, %bb.d
  %i.m = getelementptr i8, ptr %i.i, i64 -16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !45   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.n, null
  br i1 %.not4.i.i, label %remove_redundant_jumps.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.05.i.i = phi ptr [ %i.s, %bb.f ], [ %i.n, %bb.e ] ; 3 uses
  %i.o = getelementptr i8, ptr %.05.i.i, i64 40
  %i.p = load i32, ptr %i.o, align 8, !tbaa !28
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.f, label %next_nonempty_block.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.r = getelementptr i8, ptr %.05.i.i, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !36   ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %remove_redundant_jumps.exit.thread, label %.lr.ph.i.i, !llvm.loop !106

next_nonempty_block.exit.i:                       ; preds = %.lr.ph.i.i
  %i.t = getelementptr i8, ptr %.03066.i, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !36   ; 2 uses
  %.not4.i39.i = icmp eq ptr %i.u, null
  br i1 %.not4.i39.i, label %basicblock_last_instr.exit.thread.i, label %.lr.ph.i40.i

.lr.ph.i40.i:                                     ; preds = %next_nonempty_block.exit.i, %bb.g
  %.05.i41.i = phi ptr [ %i.z, %bb.g ], [ %i.u, %next_nonempty_block.exit.i ] ; 3 uses
  %i.v = getelementptr i8, ptr %.05.i41.i, i64 40
  %i.w = load i32, ptr %i.v, align 8, !tbaa !28
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.g, label %next_nonempty_block.exit44.i

bb.g:                                             ; preds = %.lr.ph.i40.i
  %i.y = getelementptr i8, ptr %.05.i41.i, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !36   ; 2 uses
  %.not.i43.i = icmp eq ptr %i.z, null
  br i1 %.not.i43.i, label %next_nonempty_block.exit44.i, label %.lr.ph.i40.i, !llvm.loop !106

next_nonempty_block.exit44.i:                     ; preds = %bb.g, %.lr.ph.i40.i
  %.0.lcssa.i42.ph.i = phi ptr [ null, %bb.g ], [ %.05.i41.i, %.lr.ph.i40.i ]
  %i.aa = icmp eq ptr %.05.i.i, %.0.lcssa.i42.ph.i
  br i1 %i.aa, label %bb.h, label %basicblock_last_instr.exit.thread.i

bb.h:                                             ; preds = %next_nonempty_block.exit44.i
  %i.ab = add i32 %.02465.i, 1
  store i32 27, ptr %i.j, align 8, !tbaa !29
  %i.ac = getelementptr i8, ptr %i.i, i64 -36
  store i32 0, ptr %i.ac, align 4, !tbaa !43
  br label %basicblock_last_instr.exit.thread.i

remove_redundant_jumps.exit.thread:               ; preds = %bb.e, %bb.f
  %i.ad = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !49
  tail call void @PyErr_SetString(ptr noundef %i.ad, ptr noundef nonnull @.str.4) #8
  br label %.loopexit

basicblock_last_instr.exit.thread.i:              ; preds = %bb.h, %next_nonempty_block.exit44.i, %next_nonempty_block.exit.i, %bb.d, %basicblock_last_instr.exit.i, %.lr.ph.i
  %.428.ph.i = phi i32 [ %.02465.i, %.lr.ph.i ], [ %.02465.i, %bb.d ], [ %.02465.i, %basicblock_last_instr.exit.i ], [ %.02465.i, %next_nonempty_block.exit44.i ], [ %i.ab, %bb.h ], [ %.02465.i, %next_nonempty_block.exit.i ] ; 3 uses
  %i.ae = getelementptr i8, ptr %.03066.i, i64 32
  %.030.i = load ptr, ptr %i.ae, align 8, !tbaa !26 ; 2 uses
  %.not.i = icmp eq ptr %.030.i, null
  br i1 %.not.i, label %remove_redundant_jumps.exit, label %.lr.ph.i, !llvm.loop !217

remove_redundant_jumps.exit:                      ; preds = %basicblock_last_instr.exit.thread.i
  %i.af = icmp eq i32 %.428.ph.i, -1
  br i1 %i.af, label %.loopexit, label %remove_redundant_jumps.exit.thread9

remove_redundant_jumps.exit.thread9:              ; preds = %bb.c, %remove_redundant_jumps.exit
  %spec.select.i11 = phi i32 [ %.428.ph.i, %remove_redundant_jumps.exit ], [ 0, %bb.c ]
  %i.ag = add i32 %spec.select.i11, %i.a
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %bb.b, label %.loopexit, !llvm.loop !218

.loopexit:                                        ; preds = %remove_redundant_jumps.exit.thread9, %remove_redundant_jumps.exit, %bb.b, %remove_redundant_jumps.exit.thread
  %.0 = phi i32 [ -1, %remove_redundant_jumps.exit.thread ], [ 0, %remove_redundant_jumps.exit.thread9 ], [ -1, %bb.b ], [ -1, %remove_redundant_jumps.exit ]
  ret i32 %.0
}

declare i32 @PyObject_IsTrue(ptr noundef) local_unnamed_addr #2

declare ptr @PyBool_FromLong(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @add_const(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !49
  %i.b = call i32 @_PyCompile_ConstCacheMergeOne(ptr noundef %2, ptr noundef nonnull %i.a) #8
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 16
  %.val21 = load i64, ptr %i.d, align 8, !tbaa !90 ; 5 uses
  %i.e = icmp sgt i64 %.val21, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.f = getelementptr i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !57
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !49
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !49   ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !64   ; 2 uses
  %.not.i16 = icmp sgt i32 %i.j, -1
  br i1 %.not.i16, label %bb.c, label %Py_DECREF.exit17

bb.c:                                             ; preds = %bb.b
  %i.k = add nsw i32 %i.j, -1                     ; 2 uses
  store i32 %i.k, ptr %i.i, align 8, !tbaa !64
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.d, label %Py_DECREF.exit17

bb.d:                                             ; preds = %bb.c
  call void @_Py_Dealloc(ptr noundef nonnull %i.i) #8
  br label %Py_DECREF.exit17

bb.e:                                             ; preds = %.lr.ph, %bb.f
  %.022 = phi i64 [ 0, %.lr.ph ], [ %i.p, %bb.f ] ; 3 uses
  %i.m = getelementptr [8 x i8], ptr %i.g, i64 %.022
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !49
  %i.o = icmp eq ptr %i.n, %i.h
  br i1 %i.o, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = add nuw nsw i64 %.022, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.p, %.val21
  br i1 %exitcond.not, label %._crit_edge.thread, label %bb.e, !llvm.loop !219

._crit_edge:                                      ; preds = %bb.e, %.preheader
  %.0.lcssa = phi i64 [ 0, %.preheader ], [ %.022, %bb.e ] ; 3 uses
  %i.q = icmp eq i64 %.0.lcssa, %.val21
  br i1 %i.q, label %._crit_edge.thread, label %._crit_edge._crit_edge

._crit_edge._crit_edge:                           ; preds = %._crit_edge
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !49
  br label %bb.n

._crit_edge.thread:                               ; preds = %bb.f, %._crit_edge
  %.0.lcssa34 = phi i64 [ %.0.lcssa, %._crit_edge ], [ %.val21, %bb.f ]
  %i.r = icmp samesign ugt i64 %.val21, 2147483645
  br i1 %i.r, label %bb.g, label %bb.j

bb.g:                                             ; preds = %._crit_edge.thread
  %i.s = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !49
  call void @PyErr_SetString(ptr noundef %i.s, ptr noundef nonnull @.str.3) #8
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !49   ; 3 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !64   ; 2 uses
  %.not.i14 = icmp sgt i32 %i.u, -1
  br i1 %.not.i14, label %bb.h, label %Py_DECREF.exit17

bb.h:                                             ; preds = %bb.g
  %i.v = add nsw i32 %i.u, -1                     ; 2 uses
  store i32 %i.v, ptr %i.t, align 8, !tbaa !64
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.i, label %Py_DECREF.exit17

bb.i:                                             ; preds = %bb.h
  call void @_Py_Dealloc(ptr noundef nonnull %i.t) #8
  br label %Py_DECREF.exit17

bb.j:                                             ; preds = %._crit_edge.thread
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !49
  %i.y = call i32 @PyList_Append(ptr noundef nonnull %1, ptr noundef %i.x) #8
  %.not = icmp eq i32 %i.y, 0
  %.pre27 = load ptr, ptr %i.a, align 8, !tbaa !49 ; 4 uses
  br i1 %.not, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = load i32, ptr %.pre27, align 8, !tbaa !64 ; 2 uses
  %.not.i12 = icmp sgt i32 %i.z, -1
  br i1 %.not.i12, label %bb.l, label %Py_DECREF.exit17

bb.l:                                             ; preds = %bb.k
  %i.aa = add nsw i32 %i.z, -1                    ; 2 uses
  store i32 %i.aa, ptr %.pre27, align 8, !tbaa !64
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.m, label %Py_DECREF.exit17

bb.m:                                             ; preds = %bb.l
  call void @_Py_Dealloc(ptr noundef nonnull %.pre27) #8
  br label %Py_DECREF.exit17

bb.n:                                             ; preds = %._crit_edge._crit_edge, %bb.j
  %.0.lcssa33 = phi i64 [ %.0.lcssa, %._crit_edge._crit_edge ], [ %.0.lcssa34, %bb.j ]
  %i.ac = phi ptr [ %.pre, %._crit_edge._crit_edge ], [ %.pre27, %bb.j ] ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !64 ; 2 uses
  %.not.i = icmp sgt i32 %i.ad, -1
  br i1 %.not.i, label %bb.o, label %Py_DECREF.exit

bb.o:                                             ; preds = %bb.n
  %i.ae = add nsw i32 %i.ad, -1                   ; 2 uses
  store i32 %i.ae, ptr %i.ac, align 8, !tbaa !64
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.p, label %Py_DECREF.exit

bb.p:                                             ; preds = %bb.o
  call void @_Py_Dealloc(ptr noundef nonnull %i.ac) #8
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.n, %bb.o, %bb.p
  %i.ag = trunc i64 %.0.lcssa33 to i32
  br label %Py_DECREF.exit17

Py_DECREF.exit17:                                 ; preds = %bb.m, %bb.l, %bb.k, %bb.i, %bb.h, %bb.g, %bb.d, %bb.c, %bb.b, %Py_DECREF.exit
  %.1 = phi i32 [ %i.ag, %Py_DECREF.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ -1, %bb.b ], [ -1, %bb.c ], [ -1, %bb.g ], [ -1, %bb.h ], [ -1, %bb.k ], [ -1, %bb.l ], [ -1, %bb.m ]
  ret i32 %.1
}

declare ptr @PyLong_FromLong(i64 noundef) local_unnamed_addr #2

declare i64 @PyLong_AsLongAndOverflow(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PyErr_Occurred() local_unnamed_addr #2

declare i32 @_PyCompile_ConstCacheMergeOne(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @PyList_Append(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @fold_const_unaryop(ptr captures(none) %.24.val, i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = sext i32 %0 to i64
  %i.c = getelementptr [40 x i8], ptr %.24.val, i64 %i.b ; 4 uses
  %i.d = add i32 %0, -1                           ; 2 uses
  %i.e = icmp sgt i32 %i.d, -1
  br i1 %i.e, label %.lr.ph.i, label %instr_make_load_const.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = zext nneg i32 %i.d to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.f, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 3 uses
  %i.g = getelementptr [40 x i8], ptr %.24.val, i64 %indvars.iv.i ; 5 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !29   ; 3 uses
  %i.i = icmp eq i32 %i.h, 27
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = sext i32 %i.h to i64
  %i.k = getelementptr [8 x i8], ptr @_PyOpcode_opcode_metadata, i64 %i.j
  %i.l = getelementptr i8, ptr %i.k, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !32
  %i.n = and i32 %i.m, 2
  %i.o = icmp eq i32 %i.n, 0
  %i.p = icmp ne i32 %i.h, 94
  %.not22.i = and i1 %i.p, %i.o
  br i1 %.not22.i, label %instr_make_load_const.exit, label %get_const_loading_instrs.exit

bb.d:                                             ; preds = %bb.b
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %.not25 = icmp eq i64 %indvars.iv.i, 0
  br i1 %.not25, label %instr_make_load_const.exit, label %bb.b, !llvm.loop !69

get_const_loading_instrs.exit:                    ; preds = %bb.c
  %i.q = load i32, ptr %i.g, align 8, !tbaa !29
  %i.r = getelementptr i8, ptr %i.g, i64 4        ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !43   ; 2 uses
  switch i32 %i.q, label %get_const_value.exit.thread6 [
    i32 82, label %bb.e
    i32 94, label %get_const_value.exit
  ]

bb.e:                                             ; preds = %get_const_loading_instrs.exit
  %i.t = getelementptr i8, ptr %1, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !57
  %i.v = sext i32 %i.s to i64
  %i.w = getelementptr [8 x i8], ptr %i.u, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !49   ; 5 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %get_const_value.exit.thread6, label %bb.f

get_const_value.exit.thread6:                     ; preds = %get_const_loading_instrs.exit, %bb.e
  %i.z = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !49
  tail call void @PyErr_SetString(ptr noundef %i.z, ptr noundef nonnull @.str.2) #8
  br label %instr_make_load_const.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = load i32, ptr %i.x, align 8, !tbaa !64  ; 2 uses
  %i.ab = icmp ugt i32 %i.aa, -1073741825
  br i1 %i.ab, label %get_const_value.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = add nuw i32 %i.aa, 1
  store i32 %i.ac, ptr %i.x, align 8, !tbaa !64
  br label %get_const_value.exit.thread

get_const_value.exit:                             ; preds = %get_const_loading_instrs.exit
  %i.ad = sext i32 %i.s to i64
  %i.ae = tail call ptr @PyLong_FromLong(i64 noundef %i.ad) #8 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %instr_make_load_const.exit, label %get_const_value.exit.thread

get_const_value.exit.thread:                      ; preds = %bb.g, %bb.f, %get_const_value.exit
  %.07.i5 = phi ptr [ %i.ae, %get_const_value.exit ], [ %i.x, %bb.f ], [ %i.x, %bb.g ] ; 8 uses
  %i.ag = load i32, ptr %i.c, align 8, !tbaa !29
  %i.ah = getelementptr i8, ptr %i.c, i64 4       ; 2 uses
  switch i32 %i.ag, label %bb.n [
    i32 41, label %bb.h
    i32 40, label %bb.i
    i32 42, label %bb.k
    i32 53, label %bb.m
  ]

bb.h:                                             ; preds = %get_const_value.exit.thread
  %i.ai = tail call ptr @PyNumber_Negative(ptr noundef nonnull %.07.i5) #8
  br label %eval_const_unaryop.exit

bb.i:                                             ; preds = %get_const_value.exit.thread
  %i.aj = getelementptr i8, ptr %.07.i5, i64 8
  %.val.i = load ptr, ptr %i.aj, align 8, !tbaa !65
  %.not16.i = icmp eq ptr %.val.i, @PyBool_Type
  br i1 %.not16.i, label %eval_const_unaryop.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = tail call ptr @PyNumber_Invert(ptr noundef nonnull %.07.i5) #8
  br label %eval_const_unaryop.exit

bb.k:                                             ; preds = %get_const_value.exit.thread
  %i.al = tail call i32 @PyObject_IsTrue(ptr noundef nonnull %.07.i5) #8 ; 2 uses
  %i.am = icmp sgt i32 %i.al, -1
  br i1 %i.am, label %bb.l, label %eval_const_unaryop.exit

bb.l:                                             ; preds = %bb.k
  %.not14.i = icmp eq i32 %i.al, 0
  %i.an = zext i1 %.not14.i to i64
  %i.ao = tail call ptr @PyBool_FromLong(i64 noundef %i.an) #8
  br label %eval_const_unaryop.exit

bb.m:                                             ; preds = %get_const_value.exit.thread
  %i.ap = tail call ptr @PyNumber_Positive(ptr noundef nonnull %.07.i5) #8
  br label %eval_const_unaryop.exit

bb.n:                                             ; preds = %get_const_value.exit.thread
  unreachable

eval_const_unaryop.exit:                          ; preds = %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m
  %.1.i = phi ptr [ %i.ao, %bb.l ], [ null, %bb.k ], [ null, %bb.i ], [ %i.ai, %bb.h ], [ %i.ak, %bb.j ], [ %i.ap, %bb.m ] ; 7 uses
  %i.aq = load i32, ptr %.07.i5, align 8, !tbaa !64 ; 2 uses
  %.not.i = icmp sgt i32 %i.aq, -1
  br i1 %.not.i, label %bb.o, label %Py_DECREF.exit

bb.o:                                             ; preds = %eval_const_unaryop.exit
  %i.ar = add nsw i32 %i.aq, -1                   ; 2 uses
  store i32 %i.ar, ptr %.07.i5, align 8, !tbaa !64
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.p, label %Py_DECREF.exit

bb.p:                                             ; preds = %bb.o
  tail call void @_Py_Dealloc(ptr noundef nonnull %.07.i5) #8
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %eval_const_unaryop.exit, %bb.o, %bb.p
  %i.at = icmp eq ptr %.1.i, null
  br i1 %i.at, label %bb.q, label %.lr.ph.i19.preheader

.lr.ph.i19.preheader:                             ; preds = %Py_DECREF.exit
  %i.au = getelementptr i8, ptr %i.g, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, i8 -1, i64 16, i1 false)
  store i32 27, ptr %i.g, align 8, !tbaa !29
  store i32 0, ptr %i.r, align 4, !tbaa !43
  %i.av = getelementptr i8, ptr %.1.i, i64 8
  %.val.i.i = load ptr, ptr %i.av, align 8, !tbaa !65
  %.not.i17.i = icmp eq ptr %.val.i.i, @PyLong_Type
  br i1 %.not.i17.i, label %bb.s, label %.thread.i

bb.q:                                             ; preds = %Py_DECREF.exit
  %i.aw = load ptr, ptr @PyExc_KeyboardInterrupt, align 8, !tbaa !49
  %i.ax = tail call i32 @PyErr_ExceptionMatches(ptr noundef %i.aw) #8
  %.not = icmp eq i32 %i.ax, 0
  br i1 %.not, label %bb.r, label %instr_make_load_const.exit

bb.r:                                             ; preds = %bb.q
  tail call void @PyErr_Clear() #8
  br label %instr_make_load_const.exit

bb.s:                                             ; preds = %.lr.ph.i19.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.ay = call i64 @PyLong_AsLongAndOverflow(ptr noundef nonnull %.1.i, ptr noundef nonnull %i.a) #8 ; 3 uses
  %i.az = icmp eq i64 %i.ay, -1
  br i1 %i.az, label %maybe_instr_make_load_smallint.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ba = load i32, ptr %i.a, align 4, !tbaa !7
  %i.bb = icmp eq i32 %i.ba, 0
  %i.bc = icmp ult i64 %i.ay, 256
  %or.cond3.i.i = and i1 %i.bc, %i.bb
  br i1 %or.cond3.i.i, label %bb.x, label %.thread24.i

.thread24.i:                                      ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %.thread.i

maybe_instr_make_load_smallint.exit.i:            ; preds = %bb.s
  %i.bd = call ptr @PyErr_Occurred() #8
  %.not18.i.not.i = icmp eq ptr %i.bd, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br i1 %.not18.i.not.i, label %.thread.i, label %bb.u

bb.u:                                             ; preds = %maybe_instr_make_load_smallint.exit.i
  %i.be = load i32, ptr %.1.i, align 8, !tbaa !64 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.be, -1
  br i1 %.not.i.i, label %bb.v, label %instr_make_load_const.exit

bb.v:                                             ; preds = %bb.u
  %i.bf = add nsw i32 %i.be, -1                   ; 2 uses
  store i32 %i.bf, ptr %.1.i, align 8, !tbaa !64
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.w, label %instr_make_load_const.exit

bb.w:                                             ; preds = %bb.v
  call void @_Py_Dealloc(ptr noundef nonnull %.1.i) #8
  br label %instr_make_load_const.exit

bb.x:                                             ; preds = %bb.t
  store i32 94, ptr %i.c, align 8, !tbaa !29
  %i.bh = trunc nuw nsw i64 %i.ay to i32
  store i32 %i.bh, ptr %i.ah, align 4, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %instr_make_load_const.exit

.thread.i:                                        ; preds = %maybe_instr_make_load_smallint.exit.i, %.thread24.i, %.lr.ph.i19.preheader
  %i.bi = call fastcc i32 @add_const(ptr noundef nonnull %.1.i, ptr noundef %1, ptr noundef %2) ; 2 uses
  %i.bj = icmp eq i32 %i.bi, -1
  br i1 %i.bj, label %instr_make_load_const.exit, label %bb.y

bb.y:                                             ; preds = %.thread.i
  store i32 82, ptr %i.c, align 8, !tbaa !29
  store i32 %i.bi, ptr %i.ah, align 4, !tbaa !43
  br label %instr_make_load_const.exit

instr_make_load_const.exit:                       ; preds = %bb.d, %bb.c, %bb.a, %bb.y, %.thread.i, %bb.x, %bb.w, %bb.v, %bb.u, %get_const_value.exit.thread6, %get_const_value.exit, %bb.q, %bb.r
  %.2 = phi i32 [ 0, %bb.c ], [ -1, %get_const_value.exit ], [ -1, %get_const_value.exit.thread6 ], [ 0, %bb.r ], [ -1, %bb.q ], [ 0, %bb.a ], [ -1, %bb.w ], [ -1, %.thread.i ], [ 0, %bb.x ], [ 0, %bb.y ], [ -1, %bb.u ], [ -1, %bb.v ], [ 0, %bb.d ]
  ret i32 %.2
}

declare ptr @PyTuple_New(i64 noundef) local_unnamed_addr #2

declare ptr @PyFrozenSet_New(ptr noundef) local_unnamed_addr #2

declare i32 @PyErr_ExceptionMatches(ptr noundef) local_unnamed_addr #2

declare void @PyErr_Clear() local_unnamed_addr #2

declare ptr @PyNumber_Negative(ptr noundef) local_unnamed_addr #2

declare ptr @PyNumber_Invert(ptr noundef) local_unnamed_addr #2

declare ptr @PyNumber_Positive(ptr noundef) local_unnamed_addr #2

declare ptr @PyNumber_Add(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PyNumber_Subtract(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PyNumber_TrueDivide(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PyNumber_FloorDivide(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PyNumber_Rshift(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PyNumber_Or(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PyNumber_Xor(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PyNumber_And(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PyObject_GetItem(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @_PyLong_NumBits(ptr noundef) local_unnamed_addr #2

declare i64 @PyLong_AsLong(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @const_folding_check_complexity(ptr noundef readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !65
  %i.b = getelementptr i8, ptr %.val, i64 168
  %.val20 = load i64, ptr %i.b, align 8, !tbaa !79
  %i.c = and i64 %.val20, 67108864
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 16
  %.val22 = load i64, ptr %i.d, align 8, !tbaa !90 ; 3 uses
  %i.e = sub i64 %1, %.val22                      ; 3 uses
  %i.f = getelementptr i8, ptr %0, i64 32
  %i.g = icmp sgt i64 %i.e, -1
  %i.h = icmp sgt i64 %.val22, 0
  %or.cond27 = and i1 %i.g, %i.h
  br i1 %or.cond27, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.01429 = phi i64 [ %i.m, %.lr.ph ], [ 0, %bb.b ] ; 2 uses
  %.01528 = phi i64 [ %i.k, %.lr.ph ], [ %i.e, %bb.b ]
  %i.i = getelementptr [8 x i8], ptr %i.f, i64 %.01429
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !49
  %i.k = tail call fastcc i64 @const_folding_check_complexity(ptr noundef %i.j, i64 noundef %.01528) ; 3 uses
  %i.l = icmp slt i64 %i.k, 0
  %i.m = add nuw nsw i64 %.01429, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.m, %.val22
  %or.cond = select i1 %i.l, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %.critedge, label %.lr.ph, !llvm.loop !220

.critedge:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %.117 = phi i64 [ %1, %bb.a ], [ %i.e, %bb.b ], [ %i.k, %.lr.ph ]
  ret i64 %.117
}

declare ptr @PyNumber_Multiply(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PyNumber_Remainder(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @PyLong_AsSize_t(ptr noundef) local_unnamed_addr #2

declare ptr @PyNumber_Power(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PyNumber_Lshift(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @remove_redundant_nops(ptr noundef readonly captures(none) %0) unnamed_addr #5 {
bb.a:
  %.01328 = load ptr, ptr %0, align 8, !tbaa !26  ; 2 uses
  %.not29 = icmp eq ptr %.01328, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.m
  %.01331 = phi ptr [ %.013, %bb.m ], [ %.01328, %bb.a ] ; 5 uses
  %.01430 = phi i32 [ %i.az, %bb.m ], [ 0, %bb.a ]
  %i.a = getelementptr i8, ptr %.01331, i64 40    ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !28   ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph87.i, label %basicblock_remove_redundant_nops.exit

.lr.ph87.i:                                       ; preds = %.lr.ph
  %i.d = getelementptr i8, ptr %.01331, i64 24
  %i.e = getelementptr i8, ptr %.01331, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.critedge.i, %.lr.ph87.i
  %indvars.iv94.i = phi i64 [ 0, %.lr.ph87.i ], [ %indvars.iv.next95.i, %.critedge.i ] ; 4 uses
  %i.f = phi i32 [ %i.b, %.lr.ph87.i ], [ %i.ap, %.critedge.i ]
  %.085.i = phi i32 [ 0, %.lr.ph87.i ], [ %.1.i, %.critedge.i ] ; 7 uses
  %.05584.i = phi i32 [ -1, %.lr.ph87.i ], [ %.156.i, %.critedge.i ] ; 5 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !23   ; 2 uses
  %i.h = getelementptr [40 x i8], ptr %i.g, i64 %indvars.iv94.i ; 4 uses
  %i.i = getelementptr i8, ptr %i.h, i64 8        ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !52   ; 5 uses
  %i.k = load i32, ptr %i.h, align 8, !tbaa !29
  %i.l = icmp eq i32 %i.k, 27
  br i1 %i.l, label %bb.c, label %.thread73.i

bb.c:                                             ; preds = %bb.b
  %i.m = icmp slt i32 %i.j, 0
  %i.n = icmp eq i32 %.05584.i, %i.j
  %or.cond.i = select i1 %i.m, i1 true, i1 %i.n
  br i1 %or.cond.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = add nsw i32 %i.f, -1
  %i.p = sext i32 %i.o to i64
  %i.q = icmp slt i64 %indvars.iv94.i, %i.p
  br i1 %i.q, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr i8, ptr %i.h, i64 48       ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !52   ; 2 uses
  %i.t = icmp eq i32 %i.s, %i.j
  br i1 %i.t, label %.critedge.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = icmp slt i32 %i.s, 0
  br i1 %i.u, label %bb.g, label %.thread73.i

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !76
  br label %.critedge.i

bb.h:                                             ; preds = %bb.d
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !36   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.v, null
  br i1 %.not4.i.i, label %.thread73.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h, %bb.i
  %.05.i.i = phi ptr [ %i.ad, %bb.i ], [ %i.v, %bb.h ] ; 3 uses
  %i.w = getelementptr i8, ptr %.05.i.i, i64 40
  %i.x = load i32, ptr %i.w, align 8, !tbaa !28   ; 3 uses
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.i, label %next_nonempty_block.exit.preheader.i

next_nonempty_block.exit.preheader.i:             ; preds = %.lr.ph.i.i
  %i.z = icmp sgt i32 %i.x, 0
  br i1 %i.z, label %.lr.ph.i, label %.thread73.i

.lr.ph.i:                                         ; preds = %next_nonempty_block.exit.preheader.i
  %i.aa = getelementptr i8, ptr %.05.i.i, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !23
  %wide.trip.count.i = zext nneg i32 %i.x to i64
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.ac = getelementptr i8, ptr %.05.i.i, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !36 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %.thread73.i, label %.lr.ph.i.i, !llvm.loop !106

next_nonempty_block.exit.i:                       ; preds = %bb.j
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.thread73.i, label %bb.j, !llvm.loop !107

bb.j:                                             ; preds = %next_nonempty_block.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %next_nonempty_block.exit.i ] ; 2 uses
  %i.ae = getelementptr [40 x i8], ptr %i.ab, i64 %indvars.iv.i ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !29
  %i.ag = icmp eq i32 %i.af, 27
  %i.ah = getelementptr i8, ptr %i.ae, i64 8
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !7  ; 2 uses
  %i.aj = icmp slt i32 %i.ai, 0
  %or.cond = select i1 %i.ag, i1 %i.aj, i1 false
  br i1 %or.cond, label %next_nonempty_block.exit.i, label %split.i

split.i:                                          ; preds = %bb.j
  %i.ak = icmp eq i32 %i.j, %i.ai
  br i1 %i.ak, label %.critedge.i, label %.thread73.i

.thread73.i:                                      ; preds = %bb.i, %next_nonempty_block.exit.i, %split.i, %next_nonempty_block.exit.preheader.i, %bb.h, %bb.f, %bb.b
  %i.al = zext i32 %.085.i to i64
  %.not67.i = icmp eq i64 %indvars.iv94.i, %i.al
  br i1 %.not67.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.thread73.i
  %i.am = sext i32 %.085.i to i64
  %i.an = getelementptr [40 x i8], ptr %i.g, i64 %i.am
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.an, ptr noundef nonnull align 8 dereferenceable(40) %i.h, i64 40, i1 false), !tbaa.struct !53
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.thread73.i
  %i.ao = add i32 %.085.i, 1
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.l, %split.i, %bb.g, %bb.e, %bb.c
  %.156.i = phi i32 [ %.05584.i, %bb.g ], [ %.05584.i, %bb.c ], [ %i.j, %bb.l ], [ %.05584.i, %bb.e ], [ %.05584.i, %split.i ]
  %.1.i = phi i32 [ %.085.i, %bb.g ], [ %.085.i, %bb.c ], [ %i.ao, %bb.l ], [ %.085.i, %bb.e ], [ %.085.i, %split.i ] ; 2 uses
  %indvars.iv.next95.i = add nuw nsw i64 %indvars.iv94.i, 1 ; 2 uses
  %i.ap = load i32, ptr %i.a, align 8, !tbaa !28  ; 3 uses
  %i.aq = sext i32 %i.ap to i64
  %i.ar = icmp slt i64 %indvars.iv.next95.i, %i.aq
  br i1 %i.ar, label %bb.b, label %basicblock_remove_redundant_nops.exit, !llvm.loop !108

basicblock_remove_redundant_nops.exit:            ; preds = %.critedge.i, %.lr.ph
  %.0.lcssa.i = phi i32 [ 0, %.lr.ph ], [ %.1.i, %.critedge.i ] ; 3 uses
  %.lcssa79.i = phi i32 [ %i.b, %.lr.ph ], [ %i.ap, %.critedge.i ]
  %i.as = sub i32 %.lcssa79.i, %.0.lcssa.i        ; 3 uses
  store i32 %.0.lcssa.i, ptr %i.a, align 8, !tbaa !28
  %i.at = getelementptr i8, ptr %.01331, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !23
  %i.av = sext i32 %.0.lcssa.i to i64
  %i.aw = getelementptr [40 x i8], ptr %i.au, i64 %i.av
  %i.ax = sext i32 %i.as to i64
  %i.ay = mul nsw i64 %i.ax, 40
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aw, i8 0, i64 %i.ay, i1 false)
  %.not18 = icmp eq i32 %i.as, -1
  br i1 %.not18, label %._crit_edge, label %bb.m

bb.m:                                             ; preds = %basicblock_remove_redundant_nops.exit
  %i.az = add i32 %i.as, %.01430                  ; 2 uses
  %i.ba = getelementptr i8, ptr %.01331, i64 32
  %.013 = load ptr, ptr %i.ba, align 8, !tbaa !26 ; 2 uses
  %.not = icmp eq ptr %.013, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !221

._crit_edge:                                      ; preds = %basicblock_remove_redundant_nops.exit, %bb.m, %bb.a
  %spec.select = phi i32 [ 0, %bb.a ], [ %i.az, %bb.m ], [ -1, %basicblock_remove_redundant_nops.exit ]
  ret i32 %spec.select
}

declare i32 @PyList_SetItem(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @PyList_SetSlice(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @scan_block_for_locals(ptr noundef readonly captures(none) %0, ptr noundef nonnull captures(none) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !tbaa !126  ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 40         ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !28   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 24
  br label %bb.b

._crit_edge:                                      ; preds = %bb.m, %bb.a
  %.0.lcssa = phi i64 [ %i.b, %bb.a ], [ %.2, %bb.m ] ; 2 uses
  %.lcssa = phi i32 [ %i.d, %bb.a ], [ %i.ak, %bb.m ] ; 13 uses
  %i.g = getelementptr i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !36   ; 4 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %maybe_push.exit46, label %bb.n

bb.b:                                             ; preds = %.lr.ph, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.m ] ; 2 uses
  %.059 = phi i64 [ %i.b, %.lr.ph ], [ %.2, %bb.m ] ; 8 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !23
  %i.j = getelementptr [40 x i8], ptr %i.i, i64 %indvars.iv ; 4 uses
  %i.k = getelementptr i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !148  ; 4 uses
  %.not41 = icmp eq ptr %i.l, null
  br i1 %.not41, label %maybe_push.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %i.l, i64 48       ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !126  ; 2 uses
  %i.o = or i64 %i.n, %.059                       ; 2 uses
  %.not.i = icmp eq i64 %i.n, %i.o
  br i1 %.not.i, label %maybe_push.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 %i.o, ptr %i.m, align 8, !tbaa !126
  %i.p = getelementptr i8, ptr %i.l, i64 64       ; 3 uses
  %i.q = load i8, ptr %i.p, align 8
  %i.r = and i8 %i.q, 2
  %.not9.i = icmp eq i8 %i.r, 0
  br i1 %.not9.i, label %bb.e, label %maybe_push.exit

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %1, align 8, !tbaa !123    ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 8
  store ptr %i.t, ptr %1, align 8, !tbaa !123
  store ptr %i.l, ptr %i.s, align 8, !tbaa !26
  %i.u = load i8, ptr %i.p, align 8
  %i.v = or i8 %i.u, 2
  store i8 %i.v, ptr %i.p, align 8
  br label %maybe_push.exit

maybe_push.exit:                                  ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.w = getelementptr i8, ptr %i.j, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !43   ; 2 uses
  %i.y = icmp sgt i32 %i.x, 63
  br i1 %i.y, label %bb.m, label %bb.f

bb.f:                                             ; preds = %maybe_push.exit
  %i.z = zext nneg i32 %i.x to i64
  %i.aa = shl nuw i64 1, %i.z                     ; 5 uses
  %i.ab = load i32, ptr %i.j, align 8, !tbaa !29
  switch i32 %i.ab, label %bb.m [
    i32 63, label %bb.g
    i32 85, label %bb.g
    i32 266, label %bb.g
    i32 112, label %bb.h
    i32 88, label %bb.i
    i32 84, label %bb.j
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f
  %i.ac = or i64 %i.aa, %.059
  br label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.ad = xor i64 %i.aa, -1
  %i.ae = and i64 %.059, %i.ad
  br label %bb.m

bb.i:                                             ; preds = %bb.f
  %i.af = xor i64 %i.aa, -1
  %i.ag = and i64 %.059, %i.af
  br label %bb.m

bb.j:                                             ; preds = %bb.f
  %i.ah = and i64 %i.aa, %.059
  %.not42 = icmp eq i64 %i.ah, 0
  br i1 %.not42, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 88, ptr %i.j, align 8, !tbaa !29
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ai = xor i64 %i.aa, -1
  %i.aj = and i64 %.059, %i.ai
  br label %bb.m

bb.m:                                             ; preds = %bb.f, %bb.g, %bb.h, %bb.i, %bb.l, %maybe_push.exit
  %.2 = phi i64 [ %.059, %maybe_push.exit ], [ %.059, %bb.f ], [ %i.ac, %bb.g ], [ %i.ae, %bb.h ], [ %i.ag, %bb.i ], [ %i.aj, %bb.l ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ak = load i32, ptr %i.c, align 8, !tbaa !28  ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp slt i64 %indvars.iv.next, %i.al
  br i1 %i.am, label %bb.b, label %._crit_edge, !llvm.loop !222

bb.n:                                             ; preds = %._crit_edge
  %i.an = icmp sgt i32 %.lcssa, 0
  br i1 %i.an, label %basicblock_last_instr.exit.i, label %basicblock_nofallthrough.exit.thread

basicblock_last_instr.exit.i:                     ; preds = %bb.n
  %i.ao = getelementptr i8, ptr %0, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !23
  %i.aq = zext nneg i32 %.lcssa to i64
  %i.ar = getelementptr [40 x i8], ptr %i.ap, i64 %i.aq
  %i.as = getelementptr i8, ptr %i.ar, i64 -40    ; 2 uses
  %.not.i43 = icmp eq ptr %i.as, null
  br i1 %.not.i43, label %basicblock_nofallthrough.exit.thread, label %bb.o

bb.o:                                             ; preds = %basicblock_last_instr.exit.i
  %i.at = load i32, ptr %i.as, align 8, !tbaa !29
  switch i32 %i.at, label %basicblock_nofallthrough.exit.thread [
    i32 35, label %basicblock_last_instr.exit
    i32 104, label %basicblock_last_instr.exit
    i32 105, label %basicblock_last_instr.exit
    i32 257, label %basicblock_last_instr.exit
    i32 260, label %basicblock_last_instr.exit
    i32 77, label %basicblock_last_instr.exit
    i32 75, label %basicblock_last_instr.exit
    i32 76, label %basicblock_last_instr.exit
  ]

basicblock_nofallthrough.exit.thread:             ; preds = %bb.o, %bb.n, %basicblock_last_instr.exit.i
  %i.au = getelementptr i8, ptr %i.h, i64 48      ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !126 ; 2 uses
  %i.aw = or i64 %i.av, %.0.lcssa                 ; 2 uses
  %.not.i44 = icmp eq i64 %i.av, %i.aw
  br i1 %.not.i44, label %maybe_push.exit46, label %bb.p

bb.p:                                             ; preds = %basicblock_nofallthrough.exit.thread
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !126
  %i.ax = getelementptr i8, ptr %i.h, i64 64      ; 3 uses
  %i.ay = load i8, ptr %i.ax, align 8
  %i.az = and i8 %i.ay, 2
  %.not9.i45 = icmp eq i8 %i.az, 0
  br i1 %.not9.i45, label %bb.q, label %maybe_push.exit46

bb.q:                                             ; preds = %bb.p
  %i.ba = load ptr, ptr %1, align 8, !tbaa !123   ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 8
  store ptr %i.bb, ptr %1, align 8, !tbaa !123
  store ptr %i.h, ptr %i.ba, align 8, !tbaa !26
  %i.bc = load i8, ptr %i.ax, align 8
  %i.bd = or i8 %i.bc, 2
  store i8 %i.bd, ptr %i.ax, align 8
  %.pre = load i32, ptr %i.c, align 8, !tbaa !28
  br label %maybe_push.exit46

maybe_push.exit46:                                ; preds = %bb.q, %bb.p, %basicblock_nofallthrough.exit.thread, %._crit_edge
  %i.be = phi i32 [ %.pre, %bb.q ], [ %.lcssa, %bb.p ], [ %.lcssa, %basicblock_nofallthrough.exit.thread ], [ %.lcssa, %._crit_edge ] ; 2 uses
  %i.bf = icmp sgt i32 %i.be, 0
  br i1 %i.bf, label %basicblock_last_instr.exit, label %maybe_push.exit49

basicblock_last_instr.exit:                       ; preds = %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %bb.o, %maybe_push.exit46
  %i.bg = phi i32 [ %i.be, %maybe_push.exit46 ], [ %.lcssa, %bb.o ], [ %.lcssa, %bb.o ], [ %.lcssa, %bb.o ], [ %.lcssa, %bb.o ], [ %.lcssa, %bb.o ], [ %.lcssa, %bb.o ], [ %.lcssa, %bb.o ], [ %.lcssa, %bb.o ]
  %i.bh = getelementptr i8, ptr %0, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !23
  %i.bj = zext nneg i32 %i.bg to i64
  %i.bk = getelementptr [40 x i8], ptr %i.bi, i64 %i.bj ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 -40    ; 2 uses
  %.not39 = icmp eq ptr %i.bl, null
  br i1 %.not39, label %maybe_push.exit49, label %bb.r

bb.r:                                             ; preds = %basicblock_last_instr.exit
  %.val = load i32, ptr %i.bl, align 8, !tbaa !29
  %i.bm = sext i32 %.val to i64
  %i.bn = getelementptr [8 x i8], ptr @_PyOpcode_opcode_metadata, i64 %i.bm
  %i.bo = getelementptr i8, ptr %i.bn, i64 4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !32
  %i.bq = and i32 %i.bp, 8
  %.not40 = icmp eq i32 %i.bq, 0
  br i1 %.not40, label %maybe_push.exit49, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.br = getelementptr i8, ptr %i.bk, i64 -16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !45 ; 3 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 48     ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !126 ; 2 uses
  %i.bv = or i64 %i.bu, %.0.lcssa                 ; 2 uses
  %.not.i47 = icmp eq i64 %i.bu, %i.bv
  br i1 %.not.i47, label %maybe_push.exit49, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i64 %i.bv, ptr %i.bt, align 8, !tbaa !126
  %i.bw = getelementptr i8, ptr %i.bs, i64 64     ; 3 uses
  %i.bx = load i8, ptr %i.bw, align 8
  %i.by = and i8 %i.bx, 2
  %.not9.i48 = icmp eq i8 %i.by, 0
  br i1 %.not9.i48, label %bb.u, label %maybe_push.exit49

bb.u:                                             ; preds = %bb.t
  %i.bz = load ptr, ptr %1, align 8, !tbaa !123   ; 2 uses
  %i.ca = getelementptr i8, ptr %i.bz, i64 8
  store ptr %i.ca, ptr %1, align 8, !tbaa !123
  store ptr %i.bs, ptr %i.bz, align 8, !tbaa !26
  %i.cb = load i8, ptr %i.bw, align 8
  %i.cc = or i8 %i.cb, 2
  store i8 %i.cc, ptr %i.bw, align 8
  br label %maybe_push.exit49

maybe_push.exit49:                                ; preds = %maybe_push.exit46, %bb.u, %bb.t, %bb.s, %bb.r, %basicblock_last_instr.exit
  ret void
}

declare ptr @PyErr_Format(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @PyDict_Next(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @PyDict_GetItemRef(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @PyLong_AsInt(ptr noundef) local_unnamed_addr #2

declare ptr @PyMem_RawCalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @PyMem_RawFree(ptr noundef) local_unnamed_addr #2

declare i32 @_PyOpcode_num_popped(i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @_PyOpcode_num_pushed(i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @PyMem_Realloc(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @_PyInstructionSequence_New() local_unnamed_addr #2

declare void @PyInstructionSequence_Fini(ptr noundef) local_unnamed_addr #2

declare void @_Py_Dealloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !13, i64 8}
!12 = !{!"_PyCfgBuilder", !13, i64 0, !13, i64 8, !13, i64 16, !15, i64 24}
!13 = !{!"p1 _ZTS16_PyCfgBasicblock", !14, i64 0}
!14 = !{!"any pointer", !9, i64 0}
!15 = !{!"", !8, i64 0}
!16 = !{!17, !13, i64 0}
!17 = !{!"_PyCfgBasicblock", !13, i64 0, !15, i64 8, !18, i64 16, !19, i64 24, !13, i64 32, !8, i64 40, !8, i64 44, !20, i64 48, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 64, !8, i64 64, !8, i64 64, !8, i64 64}
!18 = !{!"p1 _ZTS17_PyCfgExceptStack", !14, i64 0}
!19 = !{!"p1 _ZTS17_PyCfgInstruction", !14, i64 0}
!20 = !{!"long", !9, i64 0}
!21 = !{!12, !13, i64 0}
!22 = !{!12, !13, i64 16}
!23 = !{!17, !19, i64 24}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!13, !13, i64 0}
!27 = distinct !{!27, !25}
!28 = !{!17, !8, i64 40}
!29 = !{!30, !8, i64 0}
!30 = !{!"_PyCfgInstruction", !8, i64 0, !8, i64 4, !31, i64 8, !13, i64 24, !13, i64 32}
!31 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12}
!32 = !{!33, !8, i64 4}
!33 = !{!"opcode_metadata", !9, i64 0, !9, i64 1, !8, i64 4}
!34 = !{!12, !8, i64 24}
!35 = !{!17, !8, i64 8}
!36 = !{!17, !13, i64 32}
!37 = !{!38, !14, i64 0}
!38 = !{!"", !14, i64 0, !8, i64 8, !20, i64 16, !8, i64 24}
!39 = !{!17, !8, i64 44}
!40 = !{!38, !8, i64 8}
!41 = !{!38, !20, i64 16}
!42 = !{!38, !8, i64 24}
!43 = !{!30, !8, i64 4}
!44 = distinct !{!44, !25}
!45 = !{!30, !13, i64 24}
!46 = distinct !{!46, !25}
!47 = distinct !{!47, !25}
!48 = distinct !{!48, !25}
!49 = !{!50, !50, i64 0}
!50 = !{!"p1 _ZTS7_object", !14, i64 0}
!51 = distinct !{!51, !25}
!52 = !{!30, !8, i64 8}
!53 = !{i64 0, i64 4, !7, i64 4, i64 4, !7, i64 8, i64 4, !7, i64 12, i64 4, !7, i64 16, i64 4, !7, i64 20, i64 4, !7, i64 24, i64 8, !26, i64 32, i64 8, !26}
!54 = distinct !{!54, !25}
!55 = !{!17, !8, i64 56}
!56 = distinct !{!56, !25}
!57 = !{!58, !62, i64 24}
!58 = !{!"", !59, i64 0, !62, i64 24, !20, i64 32}
!59 = !{!"PyVarObject", !60, i64 0, !20, i64 16}
!60 = !{!"_object", !9, i64 0, !61, i64 8}
!61 = !{!"p1 _ZTS11_typeobject", !14, i64 0}
!62 = !{!"p2 _ZTS7_object", !63, i64 0}
!63 = !{!"any p2 pointer", !14, i64 0}
!64 = !{!9, !9, i64 0}
!65 = !{!60, !61, i64 8}
!66 = distinct !{!66, !25}
!67 = distinct !{!67, !25}
!68 = !{!19, !19, i64 0}
!69 = distinct !{!69, !25}
!70 = distinct !{!70, !25}
!71 = distinct !{!71, !25}
!72 = distinct !{!72, !73}
!73 = !{!"llvm.loop.unroll.disable"}
!74 = distinct !{!74, !25}
!75 = distinct !{!75, !73}
!76 = !{i64 0, i64 4, !7, i64 4, i64 4, !7, i64 8, i64 4, !7, i64 12, i64 4, !7}
!77 = distinct !{!77, !25}
!78 = distinct !{!78, !25}
!79 = !{!80, !20, i64 168}
!80 = !{!"_typeobject", !59, i64 0, !81, i64 24, !20, i64 32, !20, i64 40, !14, i64 48, !20, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !14, i64 96, !14, i64 104, !14, i64 112, !14, i64 120, !14, i64 128, !14, i64 136, !14, i64 144, !14, i64 152, !14, i64 160, !20, i64 168, !81, i64 176, !14, i64 184, !14, i64 192, !14, i64 200, !20, i64 208, !14, i64 216, !14, i64 224, !82, i64 232, !83, i64 240, !84, i64 248, !61, i64 256, !50, i64 264, !14, i64 272, !14, i64 280, !20, i64 288, !14, i64 296, !14, i64 304, !14, i64 312, !14, i64 320, !14, i64 328, !50, i64 336, !50, i64 344, !50, i64 352, !14, i64 360, !50, i64 368, !14, i64 376, !8, i64 384, !14, i64 392, !14, i64 400, !9, i64 408, !85, i64 410}
!81 = !{!"p1 omnipotent char", !14, i64 0}
!82 = !{!"p1 _ZTS11PyMethodDef", !14, i64 0}
!83 = !{!"p1 _ZTS11PyMemberDef", !14, i64 0}
!84 = !{!"p1 _ZTS11PyGetSetDef", !14, i64 0}
!85 = !{!"short", !9, i64 0}
!86 = !{!87, !20, i64 16}
!87 = !{!"_longobject", !60, i64 0, !88, i64 16}
!88 = !{!"_PyLongValue", !20, i64 0, !9, i64 8}
!89 = distinct !{null}
!90 = !{!59, !20, i64 16}
!91 = !{!20, !20, i64 0}
!92 = distinct !{!92, !25}
!93 = distinct !{!93, !25, !94, !95}
!94 = !{!"llvm.loop.isvectorized", i32 1}
!95 = !{!"llvm.loop.unroll.runtime.disable"}
!96 = distinct !{!96, !25, !95, !94}
!97 = distinct !{!97, !25}
!98 = distinct !{!98, !73}
!99 = distinct !{!99, !25}
!100 = distinct !{!100, !25}
!101 = distinct !{!101, !25}
!102 = distinct !{!102, !25}
!103 = distinct !{!103, !25}
!104 = distinct !{!104, !25}
!105 = distinct !{!105, !25}
!106 = distinct !{!106, !25}
!107 = distinct !{!107, !25}
!108 = distinct !{!108, !25}
!109 = distinct !{!109, !25}
!110 = distinct !{!110, !25}
!111 = distinct !{!111, !25}
!112 = distinct !{!112, !25}
!113 = distinct !{!113, !25}
!114 = distinct !{!114, !25}
!115 = distinct !{!115, !25}
!116 = distinct !{!116, !73}
!117 = distinct !{!117, !25}
!118 = distinct !{!118, !25}
!119 = distinct !{!119, !25}
!120 = distinct !{!120, !25}
!121 = distinct !{!121, !25}
!122 = distinct !{!122, !25}
!123 = !{!124, !124, i64 0}
!124 = !{!"p2 _ZTS16_PyCfgBasicblock", !63, i64 0}
!125 = distinct !{!125, !73}
!126 = !{!17, !20, i64 48}
!127 = distinct !{!127, !25}
!128 = distinct !{!128, !25}
!129 = distinct !{!129, !25}
!130 = distinct !{!130, !25}
!131 = distinct !{!131, !25}
!132 = distinct !{!132, !25}
!133 = distinct !{!133, !25}
!134 = distinct !{!134, !25}
!135 = distinct !{!135, !25}
!136 = distinct !{!136, !25}
!137 = distinct !{!137, !25}
!138 = distinct !{!138, !25}
!139 = distinct !{!139, !25}
!140 = distinct !{!140, !25}
!141 = distinct !{!141, !25}
!142 = distinct !{!142, !25}
!143 = distinct !{!143, !25}
!144 = distinct !{!144, !25}
!145 = !{!146, !8, i64 184}
!146 = !{!"_PyCfgExceptStack", !9, i64 0, !8, i64 184}
!147 = !{!17, !18, i64 16}
!148 = !{!30, !13, i64 32}
!149 = distinct !{!149, !25}
!150 = distinct !{!150, !25}
!151 = distinct !{!151, !25}
!152 = distinct !{!152, !25}
!153 = distinct !{!153, !25}
!154 = distinct !{!154, !25}
!155 = distinct !{!155, !25}
!156 = !{!157, !8, i64 28}
!157 = !{!"instruction_sequence", !60, i64 0, !14, i64 16, !8, i64 24, !8, i64 28, !8, i64 32, !158, i64 40, !8, i64 48, !50, i64 56, !159, i64 64}
!158 = !{!"p1 int", !14, i64 0}
!159 = !{!"p1 _ZTS20instruction_sequence", !14, i64 0}
!160 = !{!157, !14, i64 16}
!161 = !{!162, !8, i64 36}
!162 = !{!"", !8, i64 0, !8, i64 4, !31, i64 8, !163, i64 24, !8, i64 36, !8, i64 40}
!163 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8}
!164 = distinct !{!164, !73}
!165 = distinct !{!165, !25}
!166 = !{!162, !8, i64 0}
!167 = !{!162, !8, i64 4}
!168 = distinct !{!168, !25}
!169 = !{!157, !159, i64 64}
!170 = distinct !{!170, !25}
!171 = distinct !{!171, !25}
!172 = distinct !{!172, !25}
!173 = !{!163, !8, i64 0}
!174 = !{!17, !8, i64 60}
!175 = !{!163, !8, i64 4}
!176 = !{!163, !8, i64 8}
!177 = distinct !{!177, !25}
!178 = distinct !{!178, !25}
!179 = distinct !{!179, !25}
!180 = distinct !{!180, !25}
!181 = distinct !{!181, !25}
!182 = !{!183, !50, i64 32}
!183 = !{!"", !50, i64 0, !50, i64 8, !50, i64 16, !50, i64 24, !50, i64 32, !50, i64 40, !50, i64 48, !50, i64 56, !20, i64 64, !20, i64 72, !20, i64 80, !8, i64 88}
!184 = !{!185, !20, i64 16}
!185 = !{!"", !60, i64 0, !20, i64 16, !20, i64 24, !186, i64 32, !187, i64 40}
!186 = !{!"p1 _ZTS15_dictkeysobject", !14, i64 0}
!187 = !{!"p1 _ZTS11_dictvalues", !14, i64 0}
!188 = !{!183, !50, i64 40}
!189 = !{!183, !50, i64 48}
!190 = distinct !{!190, !25, !94, !95}
!191 = distinct !{!191, !25, !95, !94}
!192 = distinct !{!192, !25}
!193 = distinct !{!193, !73}
!194 = distinct !{!194, !25}
!195 = distinct !{!195, !25}
!196 = distinct !{!196, !25}
!197 = distinct !{!197, !25}
!198 = distinct !{!198, !25}
!199 = distinct !{!199, !25}
!200 = distinct !{!200, !25}
!201 = distinct !{!201, !25}
!202 = distinct !{!202, !25}
!203 = distinct !{!203, !25}
!204 = distinct !{!204, !25}
!205 = distinct !{!205, !25}
!206 = distinct !{!206, !25}
!207 = distinct !{!207, !25}
!208 = distinct !{!208, !25}
!209 = distinct !{!209, !25}
!210 = distinct !{!210, !25}
!211 = distinct !{!211, !25}
!212 = distinct !{!212, !25}
!213 = distinct !{!213, !25}
!214 = distinct !{!214, !25}
!215 = distinct !{!215, !25}
!216 = distinct !{!216, !25}
!217 = distinct !{!217, !25}
!218 = distinct !{!218, !25}
!219 = distinct !{!219, !25}
!220 = distinct !{!220, !25}
!221 = distinct !{!221, !25}
!222 = distinct !{!222, !25}
end_hunk_0
