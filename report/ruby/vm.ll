inline.NumInlined: 3274
inline.NumDeleted: 574
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 39
begin_hunk_0_@vm_call_iseq_setup_kwparm_kwarg:vm_ci_kwarg.exit
  %i.i = getelementptr i8, ptr %.val35, i64 16    ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !124  ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !720  ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.b, i64 2) ]
  %i.m = getelementptr i8, ptr %i.b, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !238  ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !7    ; 4 uses
  %i.p = getelementptr i8, ptr %i.n, i64 8
  %i.q = getelementptr i8, ptr %1, i64 8          ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !73
  %i.s = getelementptr i8, ptr %2, i64 32         ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !230
  %i.u = sext i32 %i.t to i64
  %i.v = sub nsw i64 0, %i.u
  %i.w = getelementptr [8 x i8], ptr %i.r, i64 %i.v ; 2 uses
  %i.x = getelementptr i8, ptr %i.l, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !721
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr [8 x i8], ptr %i.w, i64 %i.z
  %i.ab = load i32, ptr %i.l, align 8, !tbaa !723
  %i.ac = sext i32 %i.ab to i64
  %i.ad = sub nsw i64 0, %i.ac
  %i.ae = getelementptr [8 x i8], ptr %i.aa, i64 %i.ad
  %i.af = sext i32 %i.o to i64                    ; 2 uses
  %i.ag = icmp slt i32 %i.o, 0
  br i1 %i.ag, label %bb.a, label %rbimpl_size_mul_or_raise.exit36, !prof !177

bb.a:                                             ; preds = %vm_ci_kwarg.exit
  tail call void @ruby_malloc_size_overflow(i64 noundef 8, i64 noundef %i.af) #42
  unreachable

rbimpl_size_mul_or_raise.exit36:                  ; preds = %vm_ci_kwarg.exit
  %i.ah = shl nuw nsw i64 %i.af, 3                ; 2 uses
  %i.ai = alloca i8, i64 %i.ah, align 16          ; 2 uses
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %ruby_nonempty_memcpy.exit, label %bb.b

bb.b:                                             ; preds = %rbimpl_size_mul_or_raise.exit36
  %i.aj = getelementptr i8, ptr %i.j, i64 24
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !175
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr [8 x i8], ptr %i.w, i64 %i.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 %i.ai, ptr noundef nonnull readonly align 1 %i.am, i64 noundef %i.ah, i1 noundef false) #23
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %rbimpl_size_mul_or_raise.exit36, %bb.b
  call fastcc void @args_setup_kw_parameters(ptr noundef %0, ptr noundef nonnull %.val35, ptr noundef nonnull %.val33, ptr noundef nonnull %i.ai, i32 noundef %i.o, ptr noundef %i.p, ptr noundef %i.ae)
  %i.an = load ptr, ptr %i.i, align 8, !tbaa !124 ; 2 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 20
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !191 ; 2 uses
  %i.aq = getelementptr i8, ptr %i.an, i64 240
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !190
  %.val = load ptr, ptr %i.e, align 8, !tbaa !187 ; 2 uses
  %i.as = getelementptr i8, ptr %.val, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !83
  %i.au = getelementptr i8, ptr %i.at, i64 8
  %.val34 = load ptr, ptr %i.au, align 8, !tbaa !27 ; 2 uses
  %i.av = load ptr, ptr %i.q, align 8, !tbaa !73
  %i.aw = load i32, ptr %i.s, align 8, !tbaa !230
  %i.ax = sext i32 %i.aw to i64
  %i.ay = sub nsw i64 0, %i.ax
  %i.az = getelementptr [8 x i8], ptr %i.av, i64 %i.ay ; 2 uses
  %i.ba = sext i32 %i.ap to i64
  %i.bb = getelementptr [8 x i8], ptr %i.az, i64 %i.ba ; 5 uses
  %i.bc = getelementptr i8, ptr %i.az, i64 -8
  store ptr %i.bc, ptr %i.q, align 8, !tbaa !73
  %i.bd = getelementptr i8, ptr %2, i64 24
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !229
  %i.bf = getelementptr i8, ptr %2, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !228
  %i.bh = getelementptr i8, ptr %.val34, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !124 ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !147
  %i.bl = sub i32 %i.ar, %i.ap                    ; 5 uses
  %i.bm = getelementptr i8, ptr %i.bi, i64 264
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !355
  %i.bo = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !70 ; 6 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 -56    ; 3 uses
  %i.br = add i32 %i.bn, %i.bl
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr [8 x i8], ptr %i.bb, i64 %i.bs
  %i.bu = getelementptr i8, ptr %i.bt, i64 56
  %.not.i38 = icmp ugt ptr %i.bq, %i.bu
  br i1 %.not.i38, label %.preheader.i, label %bb.c, !prof !72

.preheader.i:                                     ; preds = %ruby_nonempty_memcpy.exit
  %i.bv = icmp sgt i32 %i.bl, 0
  br i1 %i.bv, label %.lr.ph.i.preheader, label %vm_push_frame.exit

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %i.bw = zext nneg i32 %i.bl to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.bl, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader42, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.bw, 2147483644              ; 4 uses
  %i.bx = shl nuw nsw i64 %n.vec, 3
  %i.by = getelementptr i8, ptr %i.bb, i64 %i.bx  ; 2 uses
  %i.bz = trunc nuw nsw i64 %n.vec to i32
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ca = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.bb, i64 %i.ca ; 2 uses
  %i.cb = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> splat (i64 4), ptr %next.gep, align 8, !tbaa !11
  store <2 x i64> splat (i64 4), ptr %i.cb, align 8, !tbaa !11
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !737

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.bw
  br i1 %cmp.n, label %vm_push_frame.exit, label %.lr.ph.i.preheader42

.lr.ph.i.preheader42:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.026.i.ph = phi ptr [ %i.bb, %.lr.ph.i.preheader ], [ %i.by, %middle.block ]
  %.02325.i.ph = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.bz, %middle.block ]
  br label %.lr.ph.i

bb.c:                                             ; preds = %ruby_nonempty_memcpy.exit
  tail call fastcc void @vm_stackoverflow() #58
  unreachable

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader42, %.lr.ph.i
  %.026.i = phi ptr [ %i.cd, %.lr.ph.i ], [ %.026.i.ph, %.lr.ph.i.preheader42 ] ; 2 uses
  %.02325.i = phi i32 [ %i.ce, %.lr.ph.i ], [ %.02325.i.ph, %.lr.ph.i.preheader42 ]
  %i.cd = getelementptr i8, ptr %.026.i, i64 8    ; 2 uses
  store i64 4, ptr %.026.i, align 8, !tbaa !11
  %i.ce = add nuw nsw i32 %.02325.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ce, %i.bl
  br i1 %exitcond.not.i, label %vm_push_frame.exit, label %.lr.ph.i, !llvm.loop !738

vm_push_frame.exit:                               ; preds = %.lr.ph.i, %middle.block, %.preheader.i
  %.0.lcssa.i = phi ptr [ %i.bb, %.preheader.i ], [ %i.by, %middle.block ], [ %i.cd, %.lr.ph.i ] ; 4 uses
  %i.cf = ptrtoint ptr %.val to i64
  %i.cg = getelementptr i8, ptr %.0.lcssa.i, i64 8
  store i64 %i.cf, ptr %.0.lcssa.i, align 8, !tbaa !11
  %i.ch = getelementptr i8, ptr %.0.lcssa.i, i64 16 ; 2 uses
  store i64 %i.bg, ptr %i.cg, align 8, !tbaa !11
  %i.ci = getelementptr i8, ptr %.0.lcssa.i, i64 24
  store i64 286326787, ptr %i.ch, align 8, !tbaa !11
  store ptr %i.bk, ptr %i.bq, align 8, !tbaa !75
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.bp, i64 -48
  store ptr %i.ci, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !75
  %.sroa.3.0..sroa_idx.i = getelementptr i8, ptr %i.bp, i64 -40
  store ptr %.val34, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !76
  %.sroa.4.0..sroa_idx.i = getelementptr i8, ptr %i.bp, i64 -32
  store i64 %i.be, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !11
  %.sroa.5.0..sroa_idx.i = getelementptr i8, ptr %i.bp, i64 -24
  store ptr %i.ch, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !75
  %.sroa.6.0..sroa_idx.i = getelementptr i8, ptr %i.bp, i64 -16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false)
  fence syncscope("singlethread") seq_cst
  store ptr %i.bq, ptr %i.bo, align 8, !tbaa !70
  ret i64 36
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @vm_call_iseq_setup_kwparm_nokwarg(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !233
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %.val25 = load ptr, ptr %i.c, align 8, !tbaa !187 ; 2 uses
  %i.d = getelementptr i8, ptr %.val25, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !83
  %i.f = getelementptr i8, ptr %i.e, i64 8        ; 2 uses
  %.val27 = load ptr, ptr %i.f, align 8, !tbaa !27
  %i.g = getelementptr i8, ptr %.val27, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !124  ; 3 uses
  %i.i = getelementptr i8, ptr %i.h, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !720  ; 3 uses
  %i.k = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !73   ; 2 uses
  %i.m = ptrtoaddr ptr %i.l to i64
  %i.n = getelementptr i8, ptr %2, i64 32
  %i.o = load i32, ptr %i.n, align 8, !tbaa !230
  %i.p = sext i32 %i.o to i64                     ; 2 uses
  %i.q = sub nsw i64 0, %i.p
  %i.r = getelementptr [8 x i8], ptr %i.l, i64 %i.q ; 3 uses
  %i.s = getelementptr i8, ptr %i.j, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !721
  %i.u = sext i32 %i.t to i64                     ; 2 uses
  %i.v = getelementptr [8 x i8], ptr %i.r, i64 %i.u
  %i.w = load i32, ptr %i.j, align 8, !tbaa !723  ; 5 uses
  %i.x = sext i32 %i.w to i64                     ; 2 uses
  %i.y = sub nsw i64 0, %i.x
  %i.z = getelementptr [8 x i8], ptr %i.v, i64 %i.y ; 7 uses
  %i.aa = icmp sgt i32 %i.w, 0
  br i1 %i.aa, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.ab = getelementptr i8, ptr %i.j, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !731 ; 7 uses
  %wide.trip.count = zext nneg i32 %i.w to i64    ; 5 uses
  %min.iters.check = icmp ult i32 %i.w, 24
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.ad = ptrtoaddr ptr %i.ac to i64
  %i.ae = shl nsw i64 %i.u, 3
  %i.af = add i64 %i.ae, %i.m
  %i.ag = add nsw i64 %i.p, %i.x
  %i.ah = shl nsw i64 %i.ag, 3
  %i.ai = add i64 %i.ah, %i.ad
  %i.aj = sub i64 %i.ai, %i.af
  %diff.check = icmp ugt i64 %i.aj, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ak = getelementptr [8 x i8], ptr %i.ac, i64 %index ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 16
  %wide.load = load <2 x i64>, ptr %i.ak, align 8, !tbaa !11
  %wide.load33 = load <2 x i64>, ptr %i.al, align 8, !tbaa !11
  %i.am = getelementptr [8 x i8], ptr %i.z, i64 %index ; 2 uses
  %i.an = getelementptr i8, ptr %i.am, i64 16
  store <2 x i64> %wide.load, ptr %i.am, align 8, !tbaa !11
  store <2 x i64> %wide.load33, ptr %i.an, align 8, !tbaa !11
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !739

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ap = getelementptr [8 x i8], ptr %i.ac, i64 %indvars.iv.prol
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !11
  %i.ar = getelementptr [8 x i8], ptr %i.z, i64 %indvars.iv.prol
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !11
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !740

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.as = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.at = icmp ugt i64 %i.as, -4
  br i1 %i.at, label %._crit_edge.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.au = getelementptr [8 x i8], ptr %i.ac, i64 %indvars.iv
  %i.av = load i64, ptr %i.au, align 8, !tbaa !11
  %i.aw = getelementptr [8 x i8], ptr %i.z, i64 %indvars.iv
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ax = getelementptr [8 x i8], ptr %i.ac, i64 %indvars.iv.next
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !11
  %i.az = getelementptr [8 x i8], ptr %i.z, i64 %indvars.iv.next
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !11
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ba = getelementptr [8 x i8], ptr %i.ac, i64 %indvars.iv.next.1
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !11
  %i.bc = getelementptr [8 x i8], ptr %i.z, i64 %indvars.iv.next.1
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !11
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.bd = getelementptr [8 x i8], ptr %i.ac, i64 %indvars.iv.next.2
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !11
  %i.bf = getelementptr [8 x i8], ptr %i.z, i64 %indvars.iv.next.2
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !11
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge.loopexit, label %scalar.ph, !llvm.loop !741

._crit_edge.loopexit:                             ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.bg = zext nneg i32 %i.w to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %._crit_edge.loopexit
  %.0.lcssa = phi i64 [ %i.bg, %._crit_edge.loopexit ], [ 0, %bb.a ]
  %i.bh = getelementptr [8 x i8], ptr %i.z, i64 %.0.lcssa
  store i64 1, ptr %i.bh, align 8, !tbaa !11
  %i.bi = getelementptr i8, ptr %i.h, i64 20
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !191 ; 2 uses
  %i.bk = getelementptr i8, ptr %i.h, i64 240
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !190
  %.val26 = load ptr, ptr %i.f, align 8, !tbaa !27 ; 2 uses
  %i.bm = sext i32 %i.bj to i64
  %i.bn = getelementptr [8 x i8], ptr %i.r, i64 %i.bm ; 5 uses
  %i.bo = getelementptr i8, ptr %i.r, i64 -8
  store ptr %i.bo, ptr %i.k, align 8, !tbaa !73
  %i.bp = getelementptr i8, ptr %2, i64 24
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !229
  %i.br = getelementptr i8, ptr %2, i64 16
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !228
  %i.bt = getelementptr i8, ptr %.val26, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !124 ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bu, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !147
  %i.bx = sub i32 %i.bl, %i.bj                    ; 5 uses
  %i.by = getelementptr i8, ptr %i.bu, i64 264
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !355
  %i.ca = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !70 ; 6 uses
  %i.cc = getelementptr i8, ptr %i.cb, i64 -56    ; 3 uses
  %i.cd = add i32 %i.bz, %i.bx
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr [8 x i8], ptr %i.bn, i64 %i.ce
  %i.cg = getelementptr i8, ptr %i.cf, i64 56
  %.not.i = icmp ugt ptr %i.cc, %i.cg
  br i1 %.not.i, label %.preheader.i, label %bb.b, !prof !72

.preheader.i:                                     ; preds = %._crit_edge
  %i.ch = icmp sgt i32 %i.bx, 0
  br i1 %i.ch, label %.lr.ph.i.preheader, label %vm_push_frame.exit

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %i.ci = zext nneg i32 %i.bx to i64              ; 2 uses
  %min.iters.check35 = icmp ult i32 %i.bx, 4
  br i1 %min.iters.check35, label %.lr.ph.i.preheader46, label %vector.ph36

vector.ph36:                                      ; preds = %.lr.ph.i.preheader
  %n.vec38 = and i64 %i.ci, 2147483644            ; 4 uses
  %i.cj = shl nuw nsw i64 %n.vec38, 3
  %i.ck = getelementptr i8, ptr %i.bn, i64 %i.cj  ; 2 uses
  %i.cl = trunc nuw nsw i64 %n.vec38 to i32
  br label %vector.body39

vector.body39:                                    ; preds = %vector.body39, %vector.ph36
  %index40 = phi i64 [ 0, %vector.ph36 ], [ %index.next41, %vector.body39 ] ; 2 uses
  %i.cm = shl i64 %index40, 3
  %next.gep = getelementptr i8, ptr %i.bn, i64 %i.cm ; 2 uses
  %i.cn = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> splat (i64 4), ptr %next.gep, align 8, !tbaa !11
  store <2 x i64> splat (i64 4), ptr %i.cn, align 8, !tbaa !11
  %index.next41 = add nuw i64 %index40, 4         ; 2 uses
  %i.co = icmp eq i64 %index.next41, %n.vec38
  br i1 %i.co, label %middle.block42, label %vector.body39, !llvm.loop !742

middle.block42:                                   ; preds = %vector.body39
  %cmp.n43 = icmp eq i64 %n.vec38, %i.ci
  br i1 %cmp.n43, label %vm_push_frame.exit, label %.lr.ph.i.preheader46

.lr.ph.i.preheader46:                             ; preds = %.lr.ph.i.preheader, %middle.block42
  %.026.i.ph = phi ptr [ %i.bn, %.lr.ph.i.preheader ], [ %i.ck, %middle.block42 ]
  %.02325.i.ph = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.cl, %middle.block42 ]
  br label %.lr.ph.i

bb.b:                                             ; preds = %._crit_edge
  tail call fastcc void @vm_stackoverflow() #58
  unreachable

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader46, %.lr.ph.i
  %.026.i = phi ptr [ %i.cp, %.lr.ph.i ], [ %.026.i.ph, %.lr.ph.i.preheader46 ] ; 2 uses
  %.02325.i = phi i32 [ %i.cq, %.lr.ph.i ], [ %.02325.i.ph, %.lr.ph.i.preheader46 ]
  %i.cp = getelementptr i8, ptr %.026.i, i64 8    ; 2 uses
  store i64 4, ptr %.026.i, align 8, !tbaa !11
  %i.cq = add nuw nsw i32 %.02325.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.cq, %i.bx
  br i1 %exitcond.not.i, label %vm_push_frame.exit, label %.lr.ph.i, !llvm.loop !743

vm_push_frame.exit:                               ; preds = %.lr.ph.i, %middle.block42, %.preheader.i
  %.0.lcssa.i = phi ptr [ %i.bn, %.preheader.i ], [ %i.ck, %middle.block42 ], [ %i.cp, %.lr.ph.i ] ; 4 uses
  %i.cr = ptrtoint ptr %.val25 to i64
  %i.cs = getelementptr i8, ptr %.0.lcssa.i, i64 8
  store i64 %i.cr, ptr %.0.lcssa.i, align 8, !tbaa !11
  %i.ct = getelementptr i8, ptr %.0.lcssa.i, i64 16 ; 2 uses
  store i64 %i.bs, ptr %i.cs, align 8, !tbaa !11
  %i.cu = getelementptr i8, ptr %.0.lcssa.i, i64 24
  store i64 286326787, ptr %i.ct, align 8, !tbaa !11
  store ptr %i.bw, ptr %i.cc, align 8, !tbaa !75
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.cb, i64 -48
  store ptr %i.cu, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !75
  %.sroa.3.0..sroa_idx.i = getelementptr i8, ptr %i.cb, i64 -40
  store ptr %.val26, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !76
  %.sroa.4.0..sroa_idx.i = getelementptr i8, ptr %i.cb, i64 -32
  store i64 %i.bq, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !11
  %.sroa.5.0..sroa_idx.i = getelementptr i8, ptr %i.cb, i64 -24
  store ptr %i.ct, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !75
  %.sroa.6.0..sroa_idx.i = getelementptr i8, ptr %i.cb, i64 -16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false)
  fence syncscope("singlethread") seq_cst
  store ptr %i.cc, ptr %i.ca, align 8, !tbaa !70
  ret i64 36
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc ptr @vm_ci_new_runtime_(i64 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #11 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %.not.i = icmp ugt i64 %0, 4294967295
  %i.c = icmp ugt i32 %1, 65535
  %or.cond13.i = or i1 %.not.i, %i.c
  br i1 %or.cond13.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i32 %2, 32767
  %i.e = icmp ne ptr %3, null
  %or.cond.i = or i1 %i.d, %i.e
  br i1 %or.cond.i, label %bb.d, label %bb.c
end_hunk_0
begin_hunk_1_@setup_parameters_complex:bb.a
bb.ah:                                            ; preds = %bb.ag, %RHASH_EMPTY_P.exit.i
  %i.eu = and i32 %.6659, 2048
  %.not23.i = icmp eq i32 %i.eu, 0
  br i1 %.not23.i, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.ev = getelementptr i8, ptr %.pre793.pre, i64 16
  %i.ew = load i16, ptr %i.ev, align 8
  %i.ex = and i16 %i.ew, 544
  %or.cond.i = icmp eq i16 %i.ex, 0
  br i1 %or.cond.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ey = or disjoint i32 %.6659, 2048
  %i.ez = call i64 @rb_hash_dup(i64 noundef %.019.i) #23
  %.pre792 = load ptr, ptr %i.c, align 8, !tbaa !124
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.fa = phi ptr [ %.pre793.pre, %bb.ai ], [ %.pre792, %bb.aj ], [ %.pre793.pre, %bb.ah ]
  %.7660 = phi i32 [ %.6659, %bb.ai ], [ %i.ey, %bb.aj ], [ %.6659, %bb.ah ] ; 8 uses
  %.1.i = phi i64 [ %.019.i, %bb.ai ], [ %i.ez, %bb.aj ], [ %.019.i, %bb.ah ] ; 7 uses
  %i.fb = getelementptr i8, ptr %i.fa, i64 16
  %i.fc = load i16, ptr %i.fb, align 8            ; 4 uses
  %i.fd = and i16 %i.fc, 48
  %or.cond28.i = icmp eq i16 %i.fd, 0
  br i1 %or.cond28.i, label %bb.al, label %.thread846

bb.al:                                            ; preds = %bb.ak
  %i.fe = inttoptr i64 %.1.i to ptr
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !77 ; 2 uses
  %i.fg = and i64 %i.ff, 32768
  %.not.i.i.i29.i = icmp eq i64 %i.fg, 0
  br i1 %.not.i.i.i29.i, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.fh = lshr i64 %i.ff, 16
  %i.fi = and i64 %i.fh, 15
  br label %RHASH_EMPTY_P.exit31.i

bb.an:                                            ; preds = %bb.al
  %i.fj = add i64 %.1.i, 24
  %i.fk = inttoptr i64 %i.fj to ptr
  %i.fl = getelementptr i8, ptr %i.fk, i64 16
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !315
  br label %RHASH_EMPTY_P.exit31.i

RHASH_EMPTY_P.exit31.i:                           ; preds = %bb.an, %bb.am
  %.0.i.i30.i = phi i64 [ %i.fi, %bb.am ], [ %i.fm, %bb.an ]
  %i.fn = icmp eq i64 %.0.i.i30.i, 0
  br i1 %i.fn, label %ignore_keyword_hash_p.exit, label %bb.ao

ignore_keyword_hash_p.exit:                       ; preds = %bb.z, %bb.ag, %RHASH_EMPTY_P.exit31.i
  %.8 = phi i32 [ %.0653, %bb.z ], [ %.6659, %bb.ag ], [ %.7660, %RHASH_EMPTY_P.exit31.i ]
  %i.fo = and i32 %.8, -2113
  br label %.thread848

bb.ao:                                            ; preds = %RHASH_EMPTY_P.exit31.i
  %i.fp = and i16 %i.fc, 512
  %.not412 = icmp eq i16 %i.fp, 0
  br i1 %.not412, label %bb.as, label %bb.ap, !prof !72

.thread846:                                       ; preds = %bb.ak
  %i.fq = and i16 %i.fc, 512
  %.not412847 = icmp eq i16 %i.fq, 0
  br i1 %.not412847, label %.thread848, label %bb.ap, !prof !72

bb.ap:                                            ; preds = %.thread846, %bb.ao
  %i.fr = and i32 %.7660, 2048
  %.not.i476 = icmp eq i32 %i.fr, 0
  br i1 %.not.i476, label %bb.aq, label %check_kwrestarg.exit

bb.aq:                                            ; preds = %bb.ap
  %i.fs = or disjoint i32 %.7660, 2048
  %i.ft = call i64 @rb_hash_dup(i64 noundef %.1.i) #23
  br label %check_kwrestarg.exit

check_kwrestarg.exit:                             ; preds = %bb.ap, %bb.aq
  %.10 = phi i32 [ %i.fs, %bb.aq ], [ %.7660, %bb.ap ]
  %.0.i477 = phi i64 [ %i.ft, %bb.aq ], [ %.1.i, %bb.ap ] ; 2 uses
  %i.fu = load i32, ptr %i.au, align 8, !tbaa !752
  %.not.i478 = icmp eq i32 %i.fu, 0
  %.pre794 = load i64, ptr %i.dr, align 8, !tbaa !757 ; 2 uses
  br i1 %.not.i478, label %bb.ar, label %arg_rest_dup.exit

bb.ar:                                            ; preds = %check_kwrestarg.exit
  %i.fv = call i64 @rb_ary_dup(i64 noundef %.pre794) #23 ; 2 uses
  store i64 %i.fv, ptr %i.dr, align 8, !tbaa !757
  store i32 1, ptr %i.au, align 8, !tbaa !752
  br label %arg_rest_dup.exit

arg_rest_dup.exit:                                ; preds = %check_kwrestarg.exit, %bb.ar
  %i.fw = phi i64 [ %.pre794, %check_kwrestarg.exit ], [ %i.fv, %bb.ar ]
  %i.fx = call i64 @rb_ary_push(i64 noundef %i.fw, i64 noundef %.0.i477) #23 ; 0 uses
  br label %.thread848

bb.as:                                            ; preds = %bb.ao
  %i.fy = and i32 %.7660, 2048
  %.not.i479 = icmp eq i32 %i.fy, 0
  br i1 %.not.i479, label %bb.at, label %check_kwrestarg.exit481

bb.at:                                            ; preds = %bb.as
  %i.fz = or disjoint i32 %.7660, 2048
  %i.ga = call i64 @rb_hash_dup(i64 noundef %.1.i) #23
  %.pre795 = load ptr, ptr %i.c, align 8, !tbaa !124
  %.phi.trans.insert796 = getelementptr i8, ptr %.pre795, i64 16
  %.pre797 = load i16, ptr %.phi.trans.insert796, align 8
  br label %check_kwrestarg.exit481

check_kwrestarg.exit481:                          ; preds = %bb.as, %bb.at
  %i.gb = phi i16 [ %.pre797, %bb.at ], [ %i.fc, %bb.as ]
  %.11 = phi i32 [ %i.fz, %bb.at ], [ %.7660, %bb.as ] ; 2 uses
  %.0.i480 = phi i64 [ %i.ga, %bb.at ], [ %.1.i, %bb.as ] ; 2 uses
  %i.gc = and i16 %i.gb, 4
  %.not415 = icmp eq i16 %i.gc, 0
  br i1 %.not415, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %check_kwrestarg.exit481
  %i.gd = load i32, ptr %i.au, align 8, !tbaa !752
  %.not.i482 = icmp eq i32 %i.gd, 0
  %.pre798 = load i64, ptr %i.dr, align 8, !tbaa !757 ; 2 uses
  br i1 %.not.i482, label %bb.av, label %arg_rest_dup.exit483

bb.av:                                            ; preds = %bb.au
  %i.ge = call i64 @rb_ary_dup(i64 noundef %.pre798) #23 ; 2 uses
  store i64 %i.ge, ptr %i.dr, align 8, !tbaa !757
  store i32 1, ptr %i.au, align 8, !tbaa !752
  br label %arg_rest_dup.exit483

arg_rest_dup.exit483:                             ; preds = %bb.au, %bb.av
  %i.gf = phi i64 [ %.pre798, %bb.au ], [ %i.ge, %bb.av ]
  %i.gg = call i64 @rb_ary_push(i64 noundef %i.gf, i64 noundef %.0.i480) #23 ; 0 uses
  br label %.thread848

bb.aw:                                            ; preds = %check_kwrestarg.exit481
  %i.gh = load i64, ptr %i.dr, align 8, !tbaa !757
  %i.gi = inttoptr i64 %i.gh to ptr               ; 4 uses
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !77 ; 2 uses
  %i.gk = and i64 %i.gj, 8192
  %.not.i484 = icmp eq i64 %i.gk, 0
  br i1 %.not.i484, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gl = getelementptr i8, ptr %i.gi, i64 16
  %i.gm = load i32, ptr %i.as, align 8, !tbaa !749
  %i.gn = lshr i64 %i.gj, 15
  %i.go = and i64 %i.gn, 127
  br label %rb_array_len.exit.i

bb.ay:                                            ; preds = %bb.aw
  %i.gp = getelementptr i8, ptr %i.gi, i64 32
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !27
  %i.gr = load i32, ptr %i.as, align 8, !tbaa !749
  %i.gs = getelementptr i8, ptr %i.gi, i64 16
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !27
  br label %rb_array_len.exit.i

rb_array_len.exit.i:                              ; preds = %bb.ay, %bb.ax
  %i.gu = phi i32 [ %i.gm, %bb.ax ], [ %i.gr, %bb.ay ] ; 12 uses
  %.0.i485670 = phi ptr [ %i.gl, %bb.ax ], [ %i.gq, %bb.ay ] ; 7 uses
  %.0.i.i487 = phi i64 [ %i.go, %bb.ax ], [ %i.gt, %bb.ay ] ; 7 uses
  %.0.i485670867 = ptrtoaddr ptr %.0.i485670 to i64
  %i.gv = add i64 %.0.i.i487, 2147483648
  %.not.i1.i = icmp ult i64 %i.gv, 4294967296
  br i1 %.not.i1.i, label %RARRAY_LENINT.exit, label %bb.az

bb.az:                                            ; preds = %rb_array_len.exit.i
  call void @rb_out_of_int(i64 noundef %.0.i.i487) #57
  unreachable

RARRAY_LENINT.exit:                               ; preds = %rb_array_len.exit.i
  %i.gw = trunc i64 %.0.i.i487 to i32             ; 3 uses
  %.not416 = icmp eq i64 %.0.i.i487, 0
  br i1 %.not416, label %.thread686.thread849, label %bb.ba

bb.ba:                                            ; preds = %RARRAY_LENINT.exit
  %i.gx = load ptr, ptr %i.y, align 8, !tbaa !70  ; 2 uses
  %i.gy = getelementptr i8, ptr %i.gx, i64 8
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !73
  %i.ha = shl nsw i64 %.0.i.i487, 32
  %sext = add i64 %i.ha, 4294967296
  %i.hb = ashr exact i64 %sext, 29
  %i.hc = getelementptr i8, ptr %i.gz, i64 %i.hb
  %i.hd = getelementptr i8, ptr %i.hc, i64 56
  %.not417 = icmp ugt ptr %i.gx, %i.hd
  br i1 %.not417, label %bb.bc, label %bb.bb, !prof !72

bb.bb:                                            ; preds = %bb.ba
  call fastcc void @vm_stackoverflow() #58
  unreachable

bb.bc:                                            ; preds = %bb.ba
  %i.he = add i32 %i.dg, %i.gw                    ; 4 uses
  %i.hf = add i32 %i.gu, %i.gw                    ; 4 uses
  %i.hg = icmp sgt i64 %.0.i.i487, 0
  br i1 %i.hg, label %.lr.ph761.preheader, label %.thread686.thread849

.lr.ph761.preheader:                              ; preds = %bb.bc
  %i.hh = call i32 @llvm.smax.i32(i32 %i.gw, i32 1)
  %wide.trip.count771 = zext nneg i32 %i.hh to i64 ; 6 uses
  %min.iters.check869 = icmp slt i64 %.0.i.i487, 20
  br i1 %min.iters.check869, label %.lr.ph761.preheader942, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph761.preheader
  %i.hi = add nsw i64 %wide.trip.count771, -1     ; 2 uses
  %i.hj = trunc nsw i64 %i.hi to i32
  %i.hk = add i32 %i.gu, %i.hj
  %i.hl = icmp slt i32 %i.hk, %i.gu
  %i.hm = icmp ugt i64 %i.hi, 4294967295
  %i.hn = or i1 %i.hl, %i.hm
  br i1 %i.hn, label %.lr.ph761.preheader942, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.ho = sext i32 %i.gu to i64
  %i.hp = shl nsw i64 %i.ho, 3
  %i.hq = add i64 %i.hp, %i.a
  %i.hr = sub i64 %.0.i485670867, %i.hq
  %diff.check = icmp ugt i64 %i.hr, -32
  br i1 %diff.check, label %.lr.ph761.preheader942, label %vector.ph870

vector.ph870:                                     ; preds = %vector.memcheck
  %n.vec872 = and i64 %wide.trip.count771, 2147483644 ; 4 uses
  %i.hs = trunc nuw nsw i64 %n.vec872 to i32
  %i.ht = add i32 %i.gu, %i.hs                    ; 2 uses
  br label %vector.body873

vector.body873:                                   ; preds = %vector.body873, %vector.ph870
  %index874 = phi i64 [ 0, %vector.ph870 ], [ %index.next876, %vector.body873 ] ; 3 uses
  %i.hu = trunc i64 %index874 to i32
  %i.hv = add i32 %i.gu, %i.hu
  %i.hw = getelementptr [8 x i8], ptr %.0.i485670, i64 %index874 ; 2 uses
  %i.hx = getelementptr i8, ptr %i.hw, i64 16
  %wide.load = load <2 x i64>, ptr %i.hw, align 8, !tbaa !11
  %wide.load875 = load <2 x i64>, ptr %i.hx, align 8, !tbaa !11
  %i.hy = sext i32 %i.hv to i64
  %i.hz = getelementptr [8 x i8], ptr %4, i64 %i.hy ; 2 uses
  %i.ia = getelementptr i8, ptr %i.hz, i64 16
  store <2 x i64> %wide.load, ptr %i.hz, align 8, !tbaa !11
  store <2 x i64> %wide.load875, ptr %i.ia, align 8, !tbaa !11
  %index.next876 = add nuw i64 %index874, 4       ; 2 uses
  %i.ib = icmp eq i64 %index.next876, %n.vec872
  br i1 %i.ib, label %middle.block877, label %vector.body873, !llvm.loop !758

middle.block877:                                  ; preds = %vector.body873
  %cmp.n878 = icmp eq i64 %n.vec872, %wide.trip.count771
  br i1 %cmp.n878, label %.thread686.thread849, label %.lr.ph761.preheader942

.lr.ph761.preheader942:                           ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph761.preheader, %middle.block877
  %indvars.iv768.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph761.preheader ], [ %n.vec872, %middle.block877 ] ; 3 uses
  %.0359757.ph = phi i32 [ %i.gu, %vector.memcheck ], [ %i.gu, %vector.scevcheck ], [ %i.gu, %.lr.ph761.preheader ], [ %i.ht, %middle.block877 ] ; 2 uses
  %xtraiter = and i64 %wide.trip.count771, 3      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph761.prol.loopexit, label %.lr.ph761.prol

.lr.ph761.prol:                                   ; preds = %.lr.ph761.preheader942, %.lr.ph761.prol
  %indvars.iv768.prol = phi i64 [ %indvars.iv.next769.prol, %.lr.ph761.prol ], [ %indvars.iv768.ph, %.lr.ph761.preheader942 ] ; 2 uses
  %.0359757.prol = phi i32 [ %i.ig, %.lr.ph761.prol ], [ %.0359757.ph, %.lr.ph761.preheader942 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph761.prol ], [ 0, %.lr.ph761.preheader942 ]
  %i.ic = getelementptr [8 x i8], ptr %.0.i485670, i64 %indvars.iv768.prol
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !11
  %i.ie = sext i32 %.0359757.prol to i64
  %i.if = getelementptr [8 x i8], ptr %4, i64 %i.ie
  store i64 %i.id, ptr %i.if, align 8, !tbaa !11
  %i.ig = add i32 %.0359757.prol, 1               ; 3 uses
  %indvars.iv.next769.prol = add nuw nsw i64 %indvars.iv768.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph761.prol.loopexit, label %.lr.ph761.prol, !llvm.loop !759

.lr.ph761.prol.loopexit:                          ; preds = %.lr.ph761.prol, %.lr.ph761.preheader942
  %.lcssa.unr = phi i32 [ poison, %.lr.ph761.preheader942 ], [ %i.ig, %.lr.ph761.prol ]
  %indvars.iv768.unr = phi i64 [ %indvars.iv768.ph, %.lr.ph761.preheader942 ], [ %indvars.iv.next769.prol, %.lr.ph761.prol ]
  %.0359757.unr = phi i32 [ %.0359757.ph, %.lr.ph761.preheader942 ], [ %i.ig, %.lr.ph761.prol ]
  %i.ih = sub nsw i64 %indvars.iv768.ph, %wide.trip.count771
  %i.ii = icmp ugt i64 %i.ih, -4
  br i1 %i.ii, label %.thread686.thread849, label %.lr.ph761

.lr.ph761:                                        ; preds = %.lr.ph761.prol.loopexit, %.lr.ph761
  %indvars.iv768 = phi i64 [ %indvars.iv.next769.3, %.lr.ph761 ], [ %indvars.iv768.unr, %.lr.ph761.prol.loopexit ] ; 5 uses
  %.0359757 = phi i32 [ %i.jf, %.lr.ph761 ], [ %.0359757.unr, %.lr.ph761.prol.loopexit ] ; 5 uses
  %i.ij = getelementptr [8 x i8], ptr %.0.i485670, i64 %indvars.iv768
  %i.ik = load i64, ptr %i.ij, align 8, !tbaa !11
  %i.il = sext i32 %.0359757 to i64
  %i.im = getelementptr [8 x i8], ptr %4, i64 %i.il
  store i64 %i.ik, ptr %i.im, align 8, !tbaa !11
  %i.in = add i32 %.0359757, 1
  %i.io = getelementptr [8 x i8], ptr %.0.i485670, i64 %indvars.iv768
  %i.ip = getelementptr i8, ptr %i.io, i64 8
  %i.iq = load i64, ptr %i.ip, align 8, !tbaa !11
  %i.ir = sext i32 %i.in to i64
  %i.is = getelementptr [8 x i8], ptr %4, i64 %i.ir
  store i64 %i.iq, ptr %i.is, align 8, !tbaa !11
  %i.it = add i32 %.0359757, 2
  %i.iu = getelementptr [8 x i8], ptr %.0.i485670, i64 %indvars.iv768
  %i.iv = getelementptr i8, ptr %i.iu, i64 16
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !11
  %i.ix = sext i32 %i.it to i64
  %i.iy = getelementptr [8 x i8], ptr %4, i64 %i.ix
  store i64 %i.iw, ptr %i.iy, align 8, !tbaa !11
  %i.iz = add i32 %.0359757, 3
  %i.ja = getelementptr [8 x i8], ptr %.0.i485670, i64 %indvars.iv768
  %i.jb = getelementptr i8, ptr %i.ja, i64 24
  %i.jc = load i64, ptr %i.jb, align 8, !tbaa !11
  %i.jd = sext i32 %i.iz to i64
  %i.je = getelementptr [8 x i8], ptr %4, i64 %i.jd
  store i64 %i.jc, ptr %i.je, align 8, !tbaa !11
  %i.jf = add i32 %.0359757, 4                    ; 2 uses
  %indvars.iv.next769.3 = add nuw nsw i64 %indvars.iv768, 4 ; 2 uses
  %exitcond772.not.3 = icmp eq i64 %indvars.iv.next769.3, %wide.trip.count771
  br i1 %exitcond772.not.3, label %.thread686.thread849, label %.lr.ph761, !llvm.loop !760

.thread686.thread849:                             ; preds = %.lr.ph761.prol.loopexit, %.lr.ph761, %middle.block877, %RARRAY_LENINT.exit, %bb.bc
  %i.jg = phi i32 [ %i.gu, %RARRAY_LENINT.exit ], [ %i.hf, %bb.bc ], [ %i.hf, %middle.block877 ], [ %i.hf, %.lr.ph761 ], [ %i.hf, %.lr.ph761.prol.loopexit ]
  %.1360 = phi i32 [ %i.gu, %RARRAY_LENINT.exit ], [ %i.gu, %bb.bc ], [ %i.ht, %middle.block877 ], [ %.lcssa.unr, %.lr.ph761.prol.loopexit ], [ %i.jf, %.lr.ph761 ]
  %.1 = phi i32 [ %i.dg, %RARRAY_LENINT.exit ], [ %i.he, %bb.bc ], [ %i.he, %middle.block877 ], [ %i.he, %.lr.ph761 ], [ %i.he, %.lr.ph761.prol.loopexit ]
  %i.jh = sext i32 %.1360 to i64
  %i.ji = getelementptr [8 x i8], ptr %4, i64 %i.jh
  store i64 %.0.i480, ptr %i.ji, align 8, !tbaa !11
  %i.jj = add i32 %.1, -1
  %i.jk = add i32 %i.jg, 1
  store i32 %i.jk, ptr %i.as, align 8, !tbaa !749
  store i64 0, ptr %i.dr, align 8, !tbaa !757
  %i.jl = and i32 %.0.i468, -66
  store i32 %i.jl, ptr %i.b, align 4, !tbaa !7
  br label %.thread686.thread738

.thread848:                                       ; preds = %.thread846, %ignore_keyword_hash_p.exit, %arg_rest_dup.exit, %arg_rest_dup.exit483
  %.1654 = phi i32 [ %.11, %arg_rest_dup.exit483 ], [ %i.fo, %ignore_keyword_hash_p.exit ], [ %.10, %arg_rest_dup.exit ], [ %.7660, %.thread846 ]
  %.0344 = phi i64 [ 0, %arg_rest_dup.exit483 ], [ 0, %ignore_keyword_hash_p.exit ], [ %.0.i477, %arg_rest_dup.exit ], [ 0, %.thread846 ]
  %.0336 = phi i64 [ 4, %arg_rest_dup.exit483 ], [ 4, %ignore_keyword_hash_p.exit ], [ 4, %arg_rest_dup.exit ], [ %.1.i, %.thread846 ]
  %i.jm = load i64, ptr %i.dr, align 8, !tbaa !757
  %i.jn = inttoptr i64 %i.jm to ptr               ; 2 uses
  %i.jo = load i64, ptr %i.jn, align 8, !tbaa !77 ; 2 uses
  %i.jp = and i64 %i.jo, 8192
  %.not.i.i488 = icmp eq i64 %i.jp, 0
  br i1 %.not.i.i488, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %.thread848
  %i.jq = lshr i64 %i.jo, 15
  %i.jr = and i64 %i.jq, 127
  br label %rb_array_len.exit.i489

bb.be:                                            ; preds = %.thread848
  %i.js = getelementptr i8, ptr %i.jn, i64 16
  %i.jt = load i64, ptr %i.js, align 8, !tbaa !27
  br label %rb_array_len.exit.i489

rb_array_len.exit.i489:                           ; preds = %bb.be, %bb.bd
  %.0.i.i490 = phi i64 [ %i.jr, %bb.bd ], [ %i.jt, %bb.be ] ; 3 uses
  %i.ju = add i64 %.0.i.i490, 2147483648
  %.not.i1.i491 = icmp ult i64 %i.ju, 4294967296
  br i1 %.not.i1.i491, label %RARRAY_LENINT.exit492, label %bb.bf

bb.bf:                                            ; preds = %rb_array_len.exit.i489
  call void @rb_out_of_int(i64 noundef %.0.i.i490) #57
  unreachable

RARRAY_LENINT.exit492:                            ; preds = %rb_array_len.exit.i489
  %i.jv = trunc nsw i64 %.0.i.i490 to i32
  %i.jw = add i32 %i.dn, %i.jv
  br label %bb.dp

bb.bg:                                            ; preds = %ruby_nonempty_memcpy.exit
  %i.jx = and i32 %.0.i468, 1
  %.not387 = icmp eq i32 %i.jx, 0
  br i1 %.not387, label %bb.cr, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.jy = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 0, ptr %i.jy, align 4, !tbaa !756
  %i.jz = add i32 %i.dg, -1                       ; 2 uses
  store i32 %i.jz, ptr %i.as, align 8, !tbaa !749
  %i.ka = sext i32 %i.jz to i64
  %i.kb = getelementptr [8 x i8], ptr %4, i64 %i.ka
  %i.kc = load i64, ptr %i.kb, align 8, !tbaa !11 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 7 uses
  store i64 %i.kc, ptr %i.kd, align 8, !tbaa !757
  %i.ke = inttoptr i64 %i.kc to ptr               ; 4 uses
  %i.kf = load i64, ptr %i.ke, align 8, !tbaa !77 ; 2 uses
  %i.kg = and i64 %i.kf, 8192
  %.not.i.i493 = icmp eq i64 %i.kg, 0             ; 2 uses
  br i1 %.not.i.i493, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.kh = lshr i64 %i.kf, 15
  %i.ki = and i64 %i.kh, 127
  br label %rb_array_len.exit.i494

bb.bj:                                            ; preds = %bb.bh
  %i.kj = getelementptr i8, ptr %i.ke, i64 16
  %i.kk = load i64, ptr %i.kj, align 8, !tbaa !27
  br label %rb_array_len.exit.i494

rb_array_len.exit.i494:                           ; preds = %bb.bj, %bb.bi
  %.0.i.i495 = phi i64 [ %i.ki, %bb.bi ], [ %i.kk, %bb.bj ] ; 4 uses
  %i.kl = add i64 %.0.i.i495, 2147483648
  %.not.i1.i496 = icmp ult i64 %i.kl, 4294967296
  br i1 %.not.i1.i496, label %RARRAY_LENINT.exit497, label %bb.bk

bb.bk:                                            ; preds = %rb_array_len.exit.i494
  call void @rb_out_of_int(i64 noundef %.0.i.i495) #57
  unreachable

RARRAY_LENINT.exit497:                            ; preds = %rb_array_len.exit.i494
  %i.km = trunc nsw i64 %.0.i.i495 to i32
  %i.kn = add i32 %i.km, -1                       ; 2 uses
  %i.ko = add i32 %i.kn, %i.dg                    ; 9 uses
  %i.kp = icmp eq i32 %.0653, 0
  %i.kq = icmp sgt i64 %.0.i.i495, 0
  %or.cond = and i1 %i.kp, %i.kq
  br i1 %or.cond, label %bb.bl, label %.thread686

bb.bl:                                            ; preds = %RARRAY_LENINT.exit497
  %i.kr = zext nneg i32 %i.kn to i64              ; 2 uses
  br i1 %.not.i.i493, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ks = getelementptr i8, ptr %i.ke, i64 16
end_hunk_1
begin_hunk_2_@setup_parameters_complex:bb.a
  %i.tw = add i32 %i.tm, %i.tv                    ; 2 uses
  %i.tx = icmp slt i32 %i.tw, %i.j
  br i1 %i.tx, label %.lr.ph.i563, label %args_extend.exit

.lr.ph.i563:                                      ; preds = %RARRAY_LENINT.exit.i, %.lr.ph.i563
  %.014.i564 = phi i32 [ %i.ua, %.lr.ph.i563 ], [ %i.tw, %RARRAY_LENINT.exit.i ]
  %i.ty = load i64, ptr %i.th, align 8, !tbaa !757
  %i.tz = call i64 @rb_ary_push(i64 noundef %i.ty, i64 noundef 4) #23 ; 0 uses
  %i.ua = add nsw i32 %.014.i564, 1               ; 2 uses
  %i.ub = icmp slt i32 %i.ua, %i.j
  br i1 %i.ub, label %.lr.ph.i563, label %args_extend.exit, !llvm.loop !761

bb.eq:                                            ; preds = %bb.ek
  %i.uc = load i32, ptr %i.as, align 8, !tbaa !749 ; 3 uses
  %i.ud = icmp slt i32 %i.uc, %i.j
  br i1 %i.ud, label %.lr.ph16.i, label %args_extend.exit

.lr.ph16.i:                                       ; preds = %bb.eq
  %i.ue = load ptr, ptr %6, align 8, !tbaa !751   ; 2 uses
  %i.uf = sext i32 %i.uc to i64                   ; 3 uses
  %i.ug = add i32 %i.i, %i.g
  %i.uh = xor i32 %i.uc, -1
  %i.ui = add i32 %i.ug, %i.uh                    ; 2 uses
  %i.uj = zext i32 %i.ui to i64
  %i.uk = add nuw nsw i64 %i.uj, 1                ; 2 uses
  %min.iters.check882 = icmp ult i32 %i.ui, 3
  br i1 %min.iters.check882, label %scalar.ph881.preheader, label %vector.ph883

vector.ph883:                                     ; preds = %.lr.ph16.i
  %n.vec885 = and i64 %i.uk, 8589934588           ; 3 uses
  %i.ul = add nsw i64 %n.vec885, %i.uf
  %invariant.gep951 = getelementptr [8 x i8], ptr %i.ue, i64 %i.uf
  br label %vector.body886

vector.body886:                                   ; preds = %vector.body886, %vector.ph883
  %index887 = phi i64 [ 0, %vector.ph883 ], [ %index.next888, %vector.body886 ] ; 2 uses
  %gep952 = getelementptr [8 x i8], ptr %invariant.gep951, i64 %index887 ; 2 uses
  %i.um = getelementptr i8, ptr %gep952, i64 16
  store <2 x i64> splat (i64 4), ptr %gep952, align 8, !tbaa !11
  store <2 x i64> splat (i64 4), ptr %i.um, align 8, !tbaa !11
  %index.next888 = add nuw i64 %index887, 4       ; 2 uses
  %i.un = icmp eq i64 %index.next888, %n.vec885
  br i1 %i.un, label %middle.block889, label %vector.body886, !llvm.loop !762

middle.block889:                                  ; preds = %vector.body886
  %cmp.n890 = icmp eq i64 %i.uk, %n.vec885
  br i1 %cmp.n890, label %..loopexit_crit_edge.i, label %scalar.ph881.preheader

scalar.ph881.preheader:                           ; preds = %.lr.ph16.i, %middle.block889
  %indvars.iv773.ph = phi i64 [ %i.uf, %.lr.ph16.i ], [ %i.ul, %middle.block889 ]
  br label %scalar.ph881

scalar.ph881:                                     ; preds = %scalar.ph881.preheader, %scalar.ph881
  %indvars.iv773 = phi i64 [ %indvars.iv.next774, %scalar.ph881 ], [ %indvars.iv773.ph, %scalar.ph881.preheader ] ; 2 uses
  %indvars.iv.next774 = add nsw i64 %indvars.iv773, 1 ; 2 uses
  %indvars776 = trunc i64 %indvars.iv.next774 to i32
  %i.uo = getelementptr [8 x i8], ptr %i.ue, i64 %indvars.iv773
  store i64 4, ptr %i.uo, align 8, !tbaa !11
  %exitcond.not.i565 = icmp eq i32 %i.j, %indvars776
  br i1 %exitcond.not.i565, label %..loopexit_crit_edge.i, label %scalar.ph881, !llvm.loop !763

..loopexit_crit_edge.i:                           ; preds = %scalar.ph881, %middle.block889
  store i32 %i.j, ptr %i.as, align 8, !tbaa !749
  br label %args_extend.exit

.thread713:                                       ; preds = %.thread710
  call fastcc void @argument_arity_error(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %i.af, i32 noundef %.5732, i32 noundef %i.j, i32 noundef %i.q) #58
  unreachable

args_extend.exit:                                 ; preds = %.lr.ph.i563, %..loopexit_crit_edge.i, %bb.eq, %RARRAY_LENINT.exit.i, %args_check_block_arg0.exit.thread
  %.7 = phi i32 [ %i.j, %..loopexit_crit_edge.i ], [ %.6, %args_check_block_arg0.exit.thread ], [ %i.j, %RARRAY_LENINT.exit.i ], [ %i.j, %bb.eq ], [ %i.j, %.lr.ph.i563 ] ; 2 uses
  %i.up = icmp sgt i32 %.7, %i.q
  %i.uq = icmp ne i32 %i.q, -1
  %or.cond13 = and i1 %i.uq, %i.up
  br i1 %or.cond13, label %bb.er, label %args_reduce.exit

args_extend.exit.thread:                          ; preds = %.thread710
  %i.ur = icmp sgt i32 %.5732, %i.q
  %i.us = icmp ne i32 %i.q, -1
  %or.cond13717 = and i1 %i.us, %i.ur
  br i1 %or.cond13717, label %.thread719, label %args_reduce.exit

bb.er:                                            ; preds = %args_extend.exit
  %i.ut = sub i32 %.7, %i.q                       ; 3 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 3 uses
  %i.uv = load i64, ptr %i.uu, align 8, !tbaa !757 ; 4 uses
  %.not.i566 = icmp eq i64 %i.uv, 0
  br i1 %.not.i566, label %bb.ey, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.uw = inttoptr i64 %i.uv to ptr               ; 2 uses
  %i.ux = load i64, ptr %i.uw, align 8, !tbaa !77 ; 2 uses
  %i.uy = and i64 %i.ux, 8192
  %.not.i.i567 = icmp eq i64 %i.uy, 0
  br i1 %.not.i.i567, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.uz = lshr i64 %i.ux, 15
  %i.va = and i64 %i.uz, 127
  br label %rb_array_len.exit.i568

bb.eu:                                            ; preds = %bb.es
  %i.vb = getelementptr i8, ptr %i.uw, i64 16
  %i.vc = load i64, ptr %i.vb, align 8, !tbaa !27
  br label %rb_array_len.exit.i568

rb_array_len.exit.i568:                           ; preds = %bb.eu, %bb.et
  %.0.i.i569 = phi i64 [ %i.va, %bb.et ], [ %i.vc, %bb.eu ] ; 3 uses
  %i.vd = sext i32 %i.ut to i64                   ; 2 uses
  %i.ve = icmp sgt i64 %.0.i.i569, %i.vd
  br i1 %i.ve, label %bb.ev, label %.thread.i570

bb.ev:                                            ; preds = %rb_array_len.exit.i568
  %i.vf = load i32, ptr %i.au, align 8, !tbaa !752
  %.not.i19.i = icmp eq i32 %i.vf, 0
  br i1 %.not.i19.i, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  %i.vg = call i64 @rb_ary_dup(i64 noundef %i.uv) #23 ; 2 uses
  store i64 %i.vg, ptr %i.uu, align 8, !tbaa !757
  store i32 1, ptr %i.au, align 8, !tbaa !752
  br label %bb.ex

.thread.i570:                                     ; preds = %rb_array_len.exit.i568
  store i64 0, ptr %i.uu, align 8, !tbaa !757
  %i.vh = trunc i64 %.0.i.i569 to i32
  %i.vi = sub i32 %i.ut, %i.vh
  br label %bb.ey

bb.ex:                                            ; preds = %bb.ew, %bb.ev
  %i.vj = phi i64 [ %i.vg, %bb.ew ], [ %i.uv, %bb.ev ]
  %i.vk = sub i64 %.0.i.i569, %i.vd
  %i.vl = call i64 @rb_ary_resize(i64 noundef %i.vj, i64 noundef %i.vk) #23 ; 0 uses
  br label %args_reduce.exit

bb.ey:                                            ; preds = %.thread.i570, %bb.er
  %.1.i571 = phi i32 [ %i.vi, %.thread.i570 ], [ %i.ut, %bb.er ]
  %i.vm = load i32, ptr %i.as, align 8, !tbaa !749
  %i.vn = sub i32 %i.vm, %.1.i571
  store i32 %i.vn, ptr %i.as, align 8, !tbaa !749
  br label %args_reduce.exit

.thread719:                                       ; preds = %args_extend.exit.thread
  call fastcc void @argument_arity_error(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %i.af, i32 noundef %.5732, i32 noundef %i.j, i32 noundef %i.q) #58
  unreachable

args_reduce.exit:                                 ; preds = %bb.ey, %bb.ex, %args_extend.exit.thread, %args_extend.exit
  %i.vo = load ptr, ptr %i.c, align 8, !tbaa !124 ; 2 uses
  %i.vp = getelementptr i8, ptr %i.vo, i64 16     ; 2 uses
  %i.vq = load i16, ptr %i.vp, align 8
  %i.vr = and i16 %i.vq, 1
  %.not427 = icmp eq i16 %i.vr, 0
  br i1 %.not427, label %args_setup_lead_parameters.exit, label %bb.ez

bb.ez:                                            ; preds = %args_reduce.exit
  %i.vs = getelementptr i8, ptr %i.vo, i64 24
  %i.vt = load i32, ptr %i.vs, align 8, !tbaa !175 ; 8 uses
  %i.vu = load i32, ptr %i.as, align 8, !tbaa !749 ; 8 uses
  %.not.i572 = icmp slt i32 %i.vu, %i.vt
  br i1 %.not.i572, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.vv = sub i32 %i.vu, %i.vt
  store i32 %i.vv, ptr %i.as, align 8, !tbaa !749
  %i.vw = load ptr, ptr %6, align 8, !tbaa !751
  %i.vx = sext i32 %i.vt to i64
  %i.vy = getelementptr [8 x i8], ptr %i.vw, i64 %i.vx
  store ptr %i.vy, ptr %6, align 8, !tbaa !751
  br label %args_setup_lead_parameters.exit

bb.fb:                                            ; preds = %bb.ez
  %i.vz = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.wa = load i64, ptr %i.vz, align 8, !tbaa !757
  %i.wb = inttoptr i64 %i.wa to ptr               ; 3 uses
  %i.wc = load i64, ptr %i.wb, align 8, !tbaa !77
  %i.wd = and i64 %i.wc, 8192
  %.not.i.i.i573 = icmp eq i64 %i.wd, 0
  br i1 %.not.i.i.i573, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.we = getelementptr i8, ptr %i.wb, i64 16
  br label %.lr.ph.preheader.i574

bb.fd:                                            ; preds = %bb.fb
  %i.wf = getelementptr i8, ptr %i.wb, i64 32
  %i.wg = load ptr, ptr %i.wf, align 8, !tbaa !27
  br label %.lr.ph.preheader.i574

.lr.ph.preheader.i574:                            ; preds = %bb.fd, %bb.fc
  %.0.i.i.i575 = phi ptr [ %i.we, %bb.fc ], [ %i.wg, %bb.fd ] ; 2 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %i.wi = load i32, ptr %i.wh, align 4, !tbaa !756 ; 2 uses
  %i.wj = sext i32 %i.wi to i64                   ; 2 uses
  %i.wk = getelementptr [8 x i8], ptr %.0.i.i.i575, i64 %i.wj ; 6 uses
  %i.wl = sext i32 %i.vu to i64                   ; 5 uses
  %i.wm = sub i32 %i.vt, %i.vu                    ; 2 uses
  %i.wn = xor i32 %i.vu, -1
  %i.wo = add i32 %i.vt, %i.wn                    ; 2 uses
  %i.wp = zext i32 %i.wo to i64
  %i.wq = add nuw nsw i64 %i.wp, 1                ; 2 uses
  %min.iters.check897 = icmp ult i32 %i.wo, 17
  %i.wr = sub i32 %i.vu, %i.vt
  %i.ws = icmp sgt i32 %i.wr, -1
  %or.cond939 = or i1 %min.iters.check897, %i.ws
  br i1 %or.cond939, label %.lr.ph.i576.preheader, label %vector.memcheck893

vector.memcheck893:                               ; preds = %.lr.ph.preheader.i574
  %.0.i.i.i575894 = ptrtoaddr ptr %.0.i.i.i575 to i64
  %i.wt = shl nsw i64 %i.wl, 3
  %i.wu = add i64 %i.wt, %i.a
  %i.wv = shl nsw i64 %i.wj, 3
  %i.ww = add i64 %i.wv, %.0.i.i.i575894
  %i.wx = sub i64 %i.ww, %i.wu
  %diff.check895 = icmp ugt i64 %i.wx, -32
  br i1 %diff.check895, label %.lr.ph.i576.preheader, label %vector.ph898

vector.ph898:                                     ; preds = %vector.memcheck893
  %n.vec900 = and i64 %i.wq, 8589934588           ; 4 uses
  %i.wy = add nsw i64 %n.vec900, %i.wl
  %i.wz = trunc i64 %n.vec900 to i32
  %invariant.gep953 = getelementptr [8 x i8], ptr %4, i64 %i.wl
  br label %vector.body901

vector.body901:                                   ; preds = %vector.body901, %vector.ph898
  %index902 = phi i64 [ 0, %vector.ph898 ], [ %index.next905, %vector.body901 ] ; 3 uses
  %sext937 = shl i64 %index902, 32
  %i.xa = ashr exact i64 %sext937, 29
  %i.xb = getelementptr i8, ptr %i.wk, i64 %i.xa  ; 2 uses
  %i.xc = getelementptr i8, ptr %i.xb, i64 16
  %wide.load903 = load <2 x i64>, ptr %i.xb, align 8, !tbaa !11
  %wide.load904 = load <2 x i64>, ptr %i.xc, align 8, !tbaa !11
  %gep954 = getelementptr [8 x i8], ptr %invariant.gep953, i64 %index902 ; 2 uses
  %i.xd = getelementptr i8, ptr %gep954, i64 16
  store <2 x i64> %wide.load903, ptr %gep954, align 8, !tbaa !11
  store <2 x i64> %wide.load904, ptr %i.xd, align 8, !tbaa !11
  %index.next905 = add nuw i64 %index902, 4       ; 2 uses
  %i.xe = icmp eq i64 %index.next905, %n.vec900
  br i1 %i.xe, label %middle.block906, label %vector.body901, !llvm.loop !764

middle.block906:                                  ; preds = %vector.body901
  %cmp.n907 = icmp eq i64 %i.wq, %n.vec900
  br i1 %cmp.n907, label %._crit_edge.i, label %.lr.ph.i576.preheader

.lr.ph.i576.preheader:                            ; preds = %vector.memcheck893, %.lr.ph.preheader.i574, %middle.block906
  %indvars.iv.i577.ph = phi i64 [ %i.wl, %vector.memcheck893 ], [ %i.wl, %.lr.ph.preheader.i574 ], [ %i.wy, %middle.block906 ] ; 2 uses
  %.01922.i.ph = phi i32 [ 0, %vector.memcheck893 ], [ 0, %.lr.ph.preheader.i574 ], [ %i.wz, %middle.block906 ] ; 4 uses
  %i.xf = add i32 %.01922.i.ph, %i.vu
  %i.xg = sub i32 %i.vt, %i.xf
  %xtraiter944 = and i32 %i.xg, 3                 ; 2 uses
  %lcmp.mod945.not = icmp eq i32 %xtraiter944, 0
  br i1 %lcmp.mod945.not, label %.lr.ph.i576.prol.loopexit, label %.lr.ph.i576.prol

.lr.ph.i576.prol:                                 ; preds = %.lr.ph.i576.preheader, %.lr.ph.i576.prol
  %indvars.iv.i577.prol = phi i64 [ %indvars.iv.next.i578.prol, %.lr.ph.i576.prol ], [ %indvars.iv.i577.ph, %.lr.ph.i576.preheader ] ; 2 uses
  %.01922.i.prol = phi i32 [ %i.xl, %.lr.ph.i576.prol ], [ %.01922.i.ph, %.lr.ph.i576.preheader ] ; 2 uses
  %prol.iter946 = phi i32 [ %prol.iter946.next, %.lr.ph.i576.prol ], [ 0, %.lr.ph.i576.preheader ]
  %i.xh = sext i32 %.01922.i.prol to i64
  %i.xi = getelementptr [8 x i8], ptr %i.wk, i64 %i.xh
  %i.xj = load i64, ptr %i.xi, align 8, !tbaa !11
  %i.xk = getelementptr [8 x i8], ptr %4, i64 %indvars.iv.i577.prol
  store i64 %i.xj, ptr %i.xk, align 8, !tbaa !11
  %indvars.iv.next.i578.prol = add nsw i64 %indvars.iv.i577.prol, 1 ; 2 uses
  %i.xl = add i32 %.01922.i.prol, 1               ; 2 uses
  %prol.iter946.next = add i32 %prol.iter946, 1   ; 2 uses
  %prol.iter946.cmp.not = icmp eq i32 %prol.iter946.next, %xtraiter944
  br i1 %prol.iter946.cmp.not, label %.lr.ph.i576.prol.loopexit, label %.lr.ph.i576.prol, !llvm.loop !765

.lr.ph.i576.prol.loopexit:                        ; preds = %.lr.ph.i576.prol, %.lr.ph.i576.preheader
  %indvars.iv.i577.unr = phi i64 [ %indvars.iv.i577.ph, %.lr.ph.i576.preheader ], [ %indvars.iv.next.i578.prol, %.lr.ph.i576.prol ]
  %.01922.i.unr = phi i32 [ %.01922.i.ph, %.lr.ph.i576.preheader ], [ %i.xl, %.lr.ph.i576.prol ]
  %i.xm = sub i32 %.01922.i.ph, %i.vt
  %i.xn = add i32 %i.xm, %i.vu
  %i.xo = icmp ugt i32 %i.xn, -4
  br i1 %i.xo, label %._crit_edge.i, label %.lr.ph.i576

.lr.ph.i576:                                      ; preds = %.lr.ph.i576.prol.loopexit, %.lr.ph.i576
  %indvars.iv.i577 = phi i64 [ %indvars.iv.next.i578.3, %.lr.ph.i576 ], [ %indvars.iv.i577.unr, %.lr.ph.i576.prol.loopexit ] ; 5 uses
  %.01922.i = phi i32 [ %i.yl, %.lr.ph.i576 ], [ %.01922.i.unr, %.lr.ph.i576.prol.loopexit ] ; 5 uses
  %i.xp = sext i32 %.01922.i to i64
  %i.xq = getelementptr [8 x i8], ptr %i.wk, i64 %i.xp
  %i.xr = load i64, ptr %i.xq, align 8, !tbaa !11
  %i.xs = getelementptr [8 x i8], ptr %4, i64 %indvars.iv.i577
  store i64 %i.xr, ptr %i.xs, align 8, !tbaa !11
  %i.xt = add i32 %.01922.i, 1
  %i.xu = sext i32 %i.xt to i64
  %i.xv = getelementptr [8 x i8], ptr %i.wk, i64 %i.xu
  %i.xw = load i64, ptr %i.xv, align 8, !tbaa !11
  %i.xx = getelementptr [8 x i8], ptr %4, i64 %indvars.iv.i577
  %i.xy = getelementptr i8, ptr %i.xx, i64 8
  store i64 %i.xw, ptr %i.xy, align 8, !tbaa !11
  %i.xz = add i32 %.01922.i, 2
  %i.ya = sext i32 %i.xz to i64
  %i.yb = getelementptr [8 x i8], ptr %i.wk, i64 %i.ya
  %i.yc = load i64, ptr %i.yb, align 8, !tbaa !11
  %i.yd = getelementptr [8 x i8], ptr %4, i64 %indvars.iv.i577
  %i.ye = getelementptr i8, ptr %i.yd, i64 16
  store i64 %i.yc, ptr %i.ye, align 8, !tbaa !11
  %i.yf = add i32 %.01922.i, 3
  %i.yg = sext i32 %i.yf to i64
  %i.yh = getelementptr [8 x i8], ptr %i.wk, i64 %i.yg
  %i.yi = load i64, ptr %i.yh, align 8, !tbaa !11
  %i.yj = getelementptr [8 x i8], ptr %4, i64 %indvars.iv.i577
  %i.yk = getelementptr i8, ptr %i.yj, i64 24
  store i64 %i.yi, ptr %i.yk, align 8, !tbaa !11
  %indvars.iv.next.i578.3 = add nsw i64 %indvars.iv.i577, 4
  %i.yl = add i32 %.01922.i, 4                    ; 2 uses
  %exitcond.not.i579.3 = icmp eq i32 %i.yl, %i.wm
  br i1 %exitcond.not.i579.3, label %._crit_edge.i, label %.lr.ph.i576, !llvm.loop !766

._crit_edge.i:                                    ; preds = %.lr.ph.i576.prol.loopexit, %.lr.ph.i576, %middle.block906
  %i.ym = add i32 %i.wi, %i.wm
  store i32 %i.ym, ptr %i.wh, align 4, !tbaa !756
  store i32 0, ptr %i.as, align 8, !tbaa !749
  br label %args_setup_lead_parameters.exit

args_setup_lead_parameters.exit:                  ; preds = %._crit_edge.i, %bb.fa, %args_reduce.exit
  %i.yn = load i16, ptr %i.vp, align 8
  %i.yo = and i16 %i.yn, 12
  %or.cond457 = icmp eq i16 %i.yo, 0
  br i1 %or.cond457, label %args_copy.exit, label %bb.fe

bb.fe:                                            ; preds = %args_setup_lead_parameters.exit
  %i.yp = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 5 uses
  %i.yq = load i64, ptr %i.yp, align 8, !tbaa !757 ; 2 uses
  %.not.i580 = icmp eq i64 %i.yq, 0
  %i.yr = load i32, ptr %i.as, align 8, !tbaa !749 ; 5 uses
  br i1 %.not.i580, label %bb.fi, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  store i32 0, ptr %i.as, align 8, !tbaa !749
  %i.ys = load i32, ptr %i.au, align 8, !tbaa !752
  %.not.i.i581 = icmp eq i32 %i.ys, 0
  br i1 %.not.i.i581, label %bb.fg, label %arg_rest_dup.exit.i582

bb.fg:                                            ; preds = %bb.ff
  %i.yt = call i64 @rb_ary_dup(i64 noundef %i.yq) #23
  store i64 %i.yt, ptr %i.yp, align 8, !tbaa !757
  store i32 1, ptr %i.au, align 8, !tbaa !752
  br label %arg_rest_dup.exit.i582

arg_rest_dup.exit.i582:                           ; preds = %bb.fg, %bb.ff
  %i.yu = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 3 uses
  %i.yv = load i32, ptr %i.yu, align 4, !tbaa !756 ; 2 uses
  %i.yw = icmp sgt i32 %i.yv, 0
  %i.yx = icmp sgt i32 %i.yr, 0
  %i.yy = select i1 %i.yw, i1 %i.yx, i1 false
  br i1 %i.yy, label %.lr.ph.preheader.i583, label %.preheader.i

.lr.ph.preheader.i583:                            ; preds = %arg_rest_dup.exit.i582
  %i.yz = zext nneg i32 %i.yr to i64
  br label %.lr.ph.i584

.preheader.loopexit.i:                            ; preds = %RARRAY_ASET.exit.i
  %i.za = trunc nuw nsw i64 %indvars.iv.next.i586 to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %arg_rest_dup.exit.i582
  %.0.lcssa.i = phi i32 [ %i.yr, %arg_rest_dup.exit.i582 ], [ %i.za, %.preheader.loopexit.i ] ; 2 uses
  %i.zb = icmp sgt i32 %.0.lcssa.i, 0
  br i1 %i.zb, label %.lr.ph24.preheader.i, label %args_copy.exit

.lr.ph24.preheader.i:                             ; preds = %.preheader.i
  %i.zc = zext nneg i32 %.0.lcssa.i to i64
  br label %.lr.ph24.i

.lr.ph.i584:                                      ; preds = %RARRAY_ASET.exit.i, %.lr.ph.preheader.i583
  %indvars.iv.i585 = phi i64 [ %i.yz, %.lr.ph.preheader.i583 ], [ %indvars.iv.next.i586, %RARRAY_ASET.exit.i ] ; 2 uses
  %i.zd = phi i32 [ %i.yv, %.lr.ph.preheader.i583 ], [ %i.zq, %RARRAY_ASET.exit.i ]
  %i.ze = load i64, ptr %i.yp, align 8, !tbaa !757 ; 3 uses
  %i.zf = add nsw i32 %i.zd, -1                   ; 2 uses
  store i32 %i.zf, ptr %i.yu, align 4, !tbaa !756
  %i.zg = zext nneg i32 %i.zf to i64
  %i.zh = load ptr, ptr %6, align 8, !tbaa !751
  %indvars.iv.next.i586 = add nsw i64 %indvars.iv.i585, -1 ; 3 uses
  %i.zi = getelementptr [8 x i8], ptr %i.zh, i64 %indvars.iv.next.i586
  %i.zj = load i64, ptr %i.zi, align 8, !tbaa !11 ; 4 uses
  %i.zk = call ptr @rb_ary_ptr_use_start(i64 noundef %i.ze) #23
  %i.zl = getelementptr [8 x i8], ptr %i.zk, i64 %i.zg
  store i64 %i.zj, ptr %i.zl, align 8, !tbaa !11
  %i.zm = icmp eq i64 %i.zj, 0
  %i.zn = and i64 %i.zj, 7
  %i.zo = icmp ne i64 %i.zn, 0
  %i.zp = or i1 %i.zm, %i.zo
  br i1 %i.zp, label %RARRAY_ASET.exit.i, label %bb.fh

bb.fh:                                            ; preds = %.lr.ph.i584
  call void @rb_gc_writebarrier(i64 noundef %i.ze, i64 noundef %i.zj) #23
  br label %RARRAY_ASET.exit.i

RARRAY_ASET.exit.i:                               ; preds = %bb.fh, %.lr.ph.i584
  call void @rb_ary_ptr_use_end(i64 noundef %i.ze) #23
  %i.zq = load i32, ptr %i.yu, align 4, !tbaa !756 ; 2 uses
  %i.zr = icmp sgt i32 %i.zq, 0
  %i.zs = icmp samesign ugt i64 %indvars.iv.i585, 1
  %i.zt = and i1 %i.zs, %i.zr
  br i1 %i.zt, label %.lr.ph.i584, label %.preheader.loopexit.i, !llvm.loop !767

.lr.ph24.i:                                       ; preds = %.lr.ph24.i, %.lr.ph24.preheader.i
  %indvars.iv26.i = phi i64 [ %i.zc, %.lr.ph24.preheader.i ], [ %indvars.iv.next27.i, %.lr.ph24.i ] ; 2 uses
  %i.zu = load i64, ptr %i.yp, align 8, !tbaa !757
  %i.zv = load ptr, ptr %6, align 8, !tbaa !751
  %indvars.iv.next27.i = add nsw i64 %indvars.iv26.i, -1 ; 2 uses
  %i.zw = getelementptr [8 x i8], ptr %i.zv, i64 %indvars.iv.next27.i
  %i.zx = load i64, ptr %i.zw, align 8, !tbaa !11
  %i.zy = call i64 @rb_ary_unshift(i64 noundef %i.zu, i64 noundef %i.zx) #23 ; 0 uses
  %i.zz = icmp samesign ugt i64 %indvars.iv26.i, 1
  br i1 %i.zz, label %.lr.ph24.i, label %args_copy.exit, !llvm.loop !768

bb.fi:                                            ; preds = %bb.fe
  %i.aaa = icmp sgt i32 %i.yr, 0
  br i1 %i.aaa, label %bb.fj, label %args_copy.exit

bb.fj:                                            ; preds = %bb.fi
  %i.aab = zext nneg i32 %i.yr to i64
  %i.aac = load ptr, ptr %6, align 8, !tbaa !751
  %i.aad = call i64 @rb_ary_new_from_values(i64 noundef %i.aab, ptr noundef %i.aac) #23
  store i64 %i.aad, ptr %i.yp, align 8, !tbaa !757
  %i.aae = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 0, ptr %i.aae, align 4, !tbaa !756
  store i32 1, ptr %i.au, align 8, !tbaa !752
  store i32 0, ptr %i.as, align 8, !tbaa !749
  br label %args_copy.exit

args_copy.exit:                                   ; preds = %.lr.ph24.i, %bb.fj, %bb.fi, %.preheader.i, %args_setup_lead_parameters.exit
  %i.aaf = load ptr, ptr %i.c, align 8, !tbaa !124 ; 4 uses
  %i.aag = getelementptr i8, ptr %i.aaf, i64 16
  %i.aah = load i16, ptr %i.aag, align 8          ; 2 uses
  %i.aai = and i16 %i.aah, 8
  %.not430 = icmp eq i16 %i.aai, 0
  br i1 %.not430, label %bb.fp, label %bb.fk

bb.fk:                                            ; preds = %args_copy.exit
  %i.aaj = getelementptr i8, ptr %i.aaf, i64 40
  %i.aak = load i32, ptr %i.aaj, align 8, !tbaa !746 ; 3 uses
  %i.aal = getelementptr i8, ptr %i.aaf, i64 36
  %i.aam = load i32, ptr %i.aal, align 4, !tbaa !769
  %i.aan = sext i32 %i.aam to i64
  %i.aao = getelementptr [8 x i8], ptr %4, i64 %i.aan
  %i.aap = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.aaq = load i64, ptr %i.aap, align 8, !tbaa !757 ; 2 uses
  %i.aar = inttoptr i64 %i.aaq to ptr             ; 4 uses
  %i.aas = load i64, ptr %i.aar, align 8, !tbaa !77 ; 2 uses
  %i.aat = and i64 %i.aas, 8192
  %.not.i.i587 = icmp eq i64 %i.aat, 0
  br i1 %.not.i.i587, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.aau = lshr i64 %i.aas, 15
  %i.aav = and i64 %i.aau, 127
  %i.aaw = getelementptr i8, ptr %i.aar, i64 16
  br label %rb_array_const_ptr.exit.i

bb.fm:                                            ; preds = %bb.fk
  %i.aax = getelementptr i8, ptr %i.aar, i64 16
  %i.aay = load i64, ptr %i.aax, align 8, !tbaa !27
  %i.aaz = getelementptr i8, ptr %i.aar, i64 32
  %i.aba = load ptr, ptr %i.aaz, align 8, !tbaa !27
  br label %rb_array_const_ptr.exit.i

rb_array_const_ptr.exit.i:                        ; preds = %bb.fm, %bb.fl
  %.0.i13.i = phi i64 [ %i.aav, %bb.fl ], [ %i.aay, %bb.fm ] ; 2 uses
  %.0.i9.i = phi ptr [ %i.aaw, %bb.fl ], [ %i.aba, %bb.fm ]
  %i.abb = getelementptr [8 x i8], ptr %.0.i9.i, i64 %.0.i13.i
  %i.abc = sext i32 %i.aak to i64                 ; 4 uses
  %i.abd = sub nsw i64 0, %i.abc
  %i.abe = getelementptr [8 x i8], ptr %i.abb, i64 %i.abd
  %i.abf = icmp slt i32 %i.aak, 0
  br i1 %i.abf, label %bb.fn, label %rbimpl_size_mul_or_raise.exit.i, !prof !177

bb.fn:                                            ; preds = %rb_array_const_ptr.exit.i
  call void @ruby_malloc_size_overflow(i64 noundef 8, i64 noundef %i.abc) #42
  unreachable

rbimpl_size_mul_or_raise.exit.i:                  ; preds = %rb_array_const_ptr.exit.i
  %.not.i10.i = icmp eq i32 %i.aak, 0
  br i1 %.not.i10.i, label %args_setup_post_parameters.exit, label %bb.fo

bb.fo:                                            ; preds = %rbimpl_size_mul_or_raise.exit.i
  %i.abg = shl nuw nsw i64 %i.abc, 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.aao, ptr noundef nonnull readonly align 1 %i.abe, i64 noundef %i.abg, i1 noundef false) #23
  br label %args_setup_post_parameters.exit

args_setup_post_parameters.exit:                  ; preds = %rbimpl_size_mul_or_raise.exit.i, %bb.fo
  %i.abh = sub i64 %.0.i13.i, %i.abc
  %i.abi = call i64 @rb_ary_resize(i64 noundef %i.aaq, i64 noundef %i.abh) #23 ; 0 uses
  %.pre800 = load ptr, ptr %i.c, align 8, !tbaa !124 ; 2 uses
  %.phi.trans.insert801 = getelementptr i8, ptr %.pre800, i64 16
  %.pre802 = load i16, ptr %.phi.trans.insert801, align 8
  br label %bb.fp

bb.fp:                                            ; preds = %args_setup_post_parameters.exit, %args_copy.exit
  %i.abj = phi i16 [ %.pre802, %args_setup_post_parameters.exit ], [ %i.aah, %args_copy.exit ] ; 2 uses
  %i.abk = phi ptr [ %.pre800, %args_setup_post_parameters.exit ], [ %i.aaf, %args_copy.exit ] ; 8 uses
  %i.abl = getelementptr i8, ptr %i.abk, i64 16
  %i.abm = and i16 %i.abj, 2
  %.not431 = icmp eq i16 %i.abm, 0
  br i1 %.not431, label %bb.fx, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.abn = getelementptr i8, ptr %i.abk, i64 28
  %i.abo = load i32, ptr %i.abn, align 4, !tbaa !714 ; 9 uses
  %i.abp = getelementptr i8, ptr %i.abk, i64 24
  %i.abq = load i32, ptr %i.abp, align 8, !tbaa !175
  %i.abr = sext i32 %i.abq to i64                 ; 2 uses
  %i.abs = getelementptr [8 x i8], ptr %4, i64 %i.abr ; 4 uses
  %i.abt = load i32, ptr %i.as, align 8, !tbaa !749 ; 5 uses
  %.not.i589 = icmp slt i32 %i.abt, %i.abo
  br i1 %.not.i589, label %bb.fs, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.abu = sub i32 %i.abt, %i.abo
  store i32 %i.abu, ptr %i.as, align 8, !tbaa !749
  %i.abv = load ptr, ptr %6, align 8, !tbaa !751
  %i.abw = sext i32 %i.abo to i64
  %i.abx = getelementptr [8 x i8], ptr %i.abv, i64 %i.abw
  store ptr %i.abx, ptr %6, align 8, !tbaa !751
  br label %args_setup_opt_parameters.exit

bb.fs:                                            ; preds = %bb.fq
  store i32 0, ptr %i.as, align 8, !tbaa !749
  %i.aby = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.abz = load i64, ptr %i.aby, align 8, !tbaa !757 ; 2 uses
  %.not35.i = icmp eq i64 %i.abz, 0
  br i1 %.not35.i, label %.critedge.i, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.aca = inttoptr i64 %i.abz to ptr             ; 4 uses
  %i.acb = load i64, ptr %i.aca, align 8, !tbaa !77 ; 2 uses
  %i.acc = and i64 %i.acb, 8192
  %.not.i.i.i590 = icmp eq i64 %i.acc, 0
  br i1 %.not.i.i.i590, label %rb_array_len.exit.i.i598, label %rb_array_len.exit.i.thread.i

rb_array_len.exit.i.i598:                         ; preds = %bb.ft
  %i.acd = getelementptr i8, ptr %i.aca, i64 16
  %i.ace = load i64, ptr %i.acd, align 8, !tbaa !27 ; 3 uses
  %i.acf = add i64 %i.ace, 2147483648
  %.not.i1.i.i599 = icmp ult i64 %i.acf, 4294967296
  br i1 %.not.i1.i.i599, label %bb.fv, label %bb.fu

rb_array_len.exit.i.thread.i:                     ; preds = %bb.ft
  %i.acg = trunc i64 %i.acb to i32
  %i.ach = lshr i32 %i.acg, 15
  %i.aci = and i32 %i.ach, 127
  %i.acj = getelementptr i8, ptr %i.aca, i64 16
  br label %.lr.ph.i591

bb.fu:                                            ; preds = %rb_array_len.exit.i.i598
  call void @rb_out_of_int(i64 noundef %i.ace) #57
  unreachable

bb.fv:                                            ; preds = %rb_array_len.exit.i.i598
  %i.ack = trunc nsw i64 %i.ace to i32
  %i.acl = getelementptr i8, ptr %i.aca, i64 32
  %i.acm = load ptr, ptr %i.acl, align 8, !tbaa !27
  br label %.lr.ph.i591

.lr.ph.i591:                                      ; preds = %bb.fv, %rb_array_len.exit.i.thread.i
  %i.acn = phi i32 [ %i.aci, %rb_array_len.exit.i.thread.i ], [ %i.ack, %bb.fv ]
  %.0.i.i592 = phi ptr [ %i.acj, %rb_array_len.exit.i.thread.i ], [ %i.acm, %bb.fv ] ; 3 uses
  %i.aco = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 3 uses
  %.promoted.i = load i32, ptr %i.aco, align 4, !tbaa !756 ; 2 uses
  %i.acp = sext i32 %.promoted.i to i64           ; 7 uses
  %i.acq = sext i32 %i.abt to i64                 ; 5 uses
  %smax.i = call i32 @llvm.smax.i32(i32 %i.acn, i32 %.promoted.i)
  %wide.trip.count.i593 = sext i32 %smax.i to i64 ; 2 uses
  %i.acr = sub nsw i64 %wide.trip.count.i593, %i.acp
  %i.acs = xor i32 %i.abt, -1
  %i.act = add i32 %i.abo, %i.acs
  %i.acu = zext i32 %i.act to i64
  %umin = call i64 @llvm.umin.i64(i64 %i.acr, i64 %i.acu) ; 2 uses
  %i.acv = add nuw nsw i64 %umin, 1               ; 2 uses
  %min.iters.check914 = icmp samesign ult i64 %umin, 14
  br i1 %min.iters.check914, label %scalar.ph913.preheader, label %vector.memcheck910

vector.memcheck910:                               ; preds = %.lr.ph.i591
  %.0.i.i592911 = ptrtoaddr ptr %.0.i.i592 to i64
  %i.acw = add nsw i64 %i.acq, %i.abr
  %i.acx = shl nsw i64 %i.acw, 3
  %i.acy = add i64 %i.acx, %i.a
  %i.acz = shl nsw i64 %i.acp, 3
  %i.ada = add i64 %i.acz, %.0.i.i592911
  %i.adb = sub i64 %i.ada, %i.acy
  %diff.check912 = icmp ugt i64 %i.adb, -32
  br i1 %diff.check912, label %scalar.ph913.preheader, label %vector.ph915

vector.ph915:                                     ; preds = %vector.memcheck910
  %n.mod.vf916 = and i64 %i.acv, 3                ; 2 uses
  %i.adc = icmp eq i64 %n.mod.vf916, 0
  %i.add = select i1 %i.adc, i64 4, i64 %n.mod.vf916
  %n.vec917 = sub nsw i64 %i.acv, %i.add          ; 3 uses
  %i.ade = add nsw i64 %n.vec917, %i.acq
  %i.adf = add nsw i64 %n.vec917, %i.acp
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.acp, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %induction = add nsw <2 x i64> %broadcast.splat, <i64 0, i64 1>
  %invariant.gep955 = getelementptr [8 x i8], ptr %.0.i.i592, i64 %i.acp
  %invariant.gep957 = getelementptr [8 x i8], ptr %i.abs, i64 %i.acq
  br label %vector.body918

vector.body918:                                   ; preds = %vector.body918, %vector.ph915
  %index919 = phi i64 [ 0, %vector.ph915 ], [ %index.next922, %vector.body918 ] ; 3 uses
  %vec.ind = phi <2 x i64> [ %induction, %vector.ph915 ], [ %vec.ind.next, %vector.body918 ] ; 2 uses
  %gep956 = getelementptr [8 x i8], ptr %invariant.gep955, i64 %index919 ; 2 uses
  %i.adg = getelementptr i8, ptr %gep956, i64 16
  %wide.load920 = load <2 x i64>, ptr %gep956, align 8, !tbaa !11
  %wide.load921 = load <2 x i64>, ptr %i.adg, align 8, !tbaa !11
  %gep958 = getelementptr [8 x i8], ptr %invariant.gep957, i64 %index919 ; 2 uses
  %i.adh = getelementptr i8, ptr %gep958, i64 16
  store <2 x i64> %wide.load920, ptr %gep958, align 8, !tbaa !11
  store <2 x i64> %wide.load921, ptr %i.adh, align 8, !tbaa !11
  %i.adi = bitcast <2 x i64> %vec.ind to <4 x i32>
  %i.adj = extractelement <4 x i32> %i.adi, i64 2
  %i.adk = add i32 %i.adj, 3
  %index.next922 = add nuw i64 %index919, 4       ; 2 uses
  %vec.ind.next = add nsw <2 x i64> %vec.ind, splat (i64 4)
  %i.adl = icmp eq i64 %index.next922, %n.vec917
  br i1 %i.adl, label %scalar.ph913.preheader.loopexit, label %vector.body918, !llvm.loop !770

scalar.ph913.preheader.loopexit:                  ; preds = %vector.body918
  store i32 %i.adk, ptr %i.aco, align 4, !tbaa !756
  br label %scalar.ph913.preheader

scalar.ph913.preheader:                           ; preds = %scalar.ph913.preheader.loopexit, %vector.memcheck910, %.lr.ph.i591
  %indvars.iv46.i.ph = phi i64 [ %i.acq, %vector.memcheck910 ], [ %i.acq, %.lr.ph.i591 ], [ %i.ade, %scalar.ph913.preheader.loopexit ]
  %indvars.iv.i594.ph = phi i64 [ %i.acp, %vector.memcheck910 ], [ %i.acp, %.lr.ph.i591 ], [ %i.adf, %scalar.ph913.preheader.loopexit ]
  br label %scalar.ph913

scalar.ph913:                                     ; preds = %scalar.ph913.preheader, %bb.fw
  %indvars.iv46.i = phi i64 [ %indvars.iv.next47.i, %bb.fw ], [ %indvars.iv46.i.ph, %scalar.ph913.preheader ] ; 3 uses
  %indvars.iv.i594 = phi i64 [ %indvars.iv.next.i596, %bb.fw ], [ %indvars.iv.i594.ph, %scalar.ph913.preheader ] ; 3 uses
  %exitcond.not.i595 = icmp eq i64 %indvars.iv.i594, %wide.trip.count.i593
  br i1 %exitcond.not.i595, label %.critedge.loopexit.i, label %bb.fw

bb.fw:                                            ; preds = %scalar.ph913
  %i.adm = getelementptr [8 x i8], ptr %.0.i.i592, i64 %indvars.iv.i594
  %i.adn = load i64, ptr %i.adm, align 8, !tbaa !11
  %i.ado = getelementptr [8 x i8], ptr %i.abs, i64 %indvars.iv46.i
  store i64 %i.adn, ptr %i.ado, align 8, !tbaa !11
  %indvars.iv.next47.i = add nsw i64 %indvars.iv46.i, 1 ; 2 uses
  %indvars49.i = trunc i64 %indvars.iv.next47.i to i32
  %indvars.iv.next.i596 = add nsw i64 %indvars.iv.i594, 1 ; 2 uses
  %i.adp = trunc nsw i64 %indvars.iv.next.i596 to i32
  store i32 %i.adp, ptr %i.aco, align 4, !tbaa !756
  %exitcond51.not.i = icmp eq i32 %i.abo, %indvars49.i
  br i1 %exitcond51.not.i, label %args_setup_opt_parameters.exit, label %scalar.ph913, !llvm.loop !771

.critedge.loopexit.i:                             ; preds = %scalar.ph913
  %i.adq = trunc nsw i64 %indvars.iv46.i to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %bb.fs
  %.1.i597 = phi i32 [ %i.abt, %bb.fs ], [ %i.adq, %.critedge.loopexit.i ] ; 5 uses
  %i.adr = icmp slt i32 %.1.i597, %i.abo
  br i1 %i.adr, label %.lr.ph45.preheader.i, label %args_setup_opt_parameters.exit

.lr.ph45.preheader.i:                             ; preds = %.critedge.i
  %i.ads = sext i32 %.1.i597 to i64               ; 4 uses
  %wide.trip.count55.i = sext i32 %i.abo to i64   ; 2 uses
  %i.adt = sub nsw i64 %wide.trip.count55.i, %i.ads ; 3 uses
  %min.iters.check927 = icmp ult i64 %i.adt, 4
  br i1 %min.iters.check927, label %.lr.ph45.i.preheader, label %vector.ph928

vector.ph928:                                     ; preds = %.lr.ph45.preheader.i
  %n.vec930 = and i64 %i.adt, -4                  ; 3 uses
  %i.adu = add nsw i64 %n.vec930, %i.ads
  %invariant.gep960 = getelementptr [8 x i8], ptr %i.abs, i64 %i.ads
  br label %vector.body931

vector.body931:                                   ; preds = %vector.body931, %vector.ph928
  %index932 = phi i64 [ 0, %vector.ph928 ], [ %index.next933, %vector.body931 ] ; 2 uses
  %gep961 = getelementptr [8 x i8], ptr %invariant.gep960, i64 %index932 ; 2 uses
  %i.adv = getelementptr i8, ptr %gep961, i64 16
  store <2 x i64> splat (i64 4), ptr %gep961, align 8, !tbaa !11
  store <2 x i64> splat (i64 4), ptr %i.adv, align 8, !tbaa !11
  %index.next933 = add nuw i64 %index932, 4       ; 2 uses
  %i.adw = icmp eq i64 %index.next933, %n.vec930
  br i1 %i.adw, label %middle.block934, label %vector.body931, !llvm.loop !772

middle.block934:                                  ; preds = %vector.body931
  %cmp.n935 = icmp eq i64 %i.adt, %n.vec930
  br i1 %cmp.n935, label %args_setup_opt_parameters.exit, label %.lr.ph45.i.preheader

.lr.ph45.i.preheader:                             ; preds = %.lr.ph45.preheader.i, %middle.block934
  %indvars.iv52.i.ph = phi i64 [ %i.ads, %.lr.ph45.preheader.i ], [ %i.adu, %middle.block934 ]
  br label %.lr.ph45.i

.lr.ph45.i:                                       ; preds = %.lr.ph45.i.preheader, %.lr.ph45.i
  %indvars.iv52.i = phi i64 [ %indvars.iv.next53.i, %.lr.ph45.i ], [ %indvars.iv52.i.ph, %.lr.ph45.i.preheader ] ; 2 uses
  %i.adx = getelementptr [8 x i8], ptr %i.abs, i64 %indvars.iv52.i
  store i64 4, ptr %i.adx, align 8, !tbaa !11
  %indvars.iv.next53.i = add nsw i64 %indvars.iv52.i, 1 ; 2 uses
  %exitcond56.not.i = icmp eq i64 %indvars.iv.next53.i, %wide.trip.count55.i
  br i1 %exitcond56.not.i, label %args_setup_opt_parameters.exit, label %.lr.ph45.i, !llvm.loop !773

args_setup_opt_parameters.exit:                   ; preds = %bb.fw, %.lr.ph45.i, %middle.block934, %bb.fr, %.critedge.i
  %.2.i = phi i32 [ %i.abo, %bb.fr ], [ %.1.i597, %.critedge.i ], [ %.1.i597, %middle.block934 ], [ %.1.i597, %.lr.ph45.i ], [ %i.abo, %bb.fw ]
  %i.ady = getelementptr i8, ptr %i.abk, i64 48
  %i.adz = load ptr, ptr %i.ady, align 8, !tbaa !718
  %i.aea = sext i32 %.2.i to i64
  %i.aeb = getelementptr [8 x i8], ptr %i.adz, i64 %i.aea
  %i.aec = load i64, ptr %i.aeb, align 8, !tbaa !11
  %i.aed = trunc i64 %i.aec to i32
  %.pre803 = load i16, ptr %i.abl, align 8
  br label %bb.fx

bb.fx:                                            ; preds = %args_setup_opt_parameters.exit, %bb.fp
  %i.aee = phi i16 [ %.pre803, %args_setup_opt_parameters.exit ], [ %i.abj, %bb.fp ] ; 3 uses
  %.0335 = phi i32 [ %i.aed, %args_setup_opt_parameters.exit ], [ 0, %bb.fp ]
  %i.aef = and i16 %i.aee, 4
  %.not432 = icmp eq i16 %i.aef, 0
  br i1 %.not432, label %bb.gk, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.aeg = and i16 %i.aee, 1024
  %.not433 = icmp ne i16 %i.aeg, 0
  %i.aeh = load i32, ptr %i.as, align 8
  %i.aei = icmp eq i32 %i.aeh, 0
  %or.cond459 = select i1 %.not433, i1 %i.aei, i1 false
  %i.aej = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 3 uses
  %i.aek = load i64, ptr %i.aej, align 8          ; 2 uses
  %.not434 = icmp eq i64 %i.aek, 0                ; 2 uses
  %or.cond461 = select i1 %or.cond459, i1 %.not434, i1 false
  %i.ael = and i16 %i.aee, 8
  %.not435 = icmp eq i16 %i.ael, 0
  %or.cond464 = and i1 %.not435, %or.cond461
  br i1 %or.cond464, label %bb.fz, label %.critedge, !prof !774

bb.fz:                                            ; preds = %bb.fy
  %i.aem = load i64, ptr @rb_cArray_empty_frozen, align 8, !tbaa !11 ; 2 uses
  store i64 %i.aem, ptr %i.aej, align 8, !tbaa !757
  %i.aen = getelementptr i8, ptr %i.abk, i64 32
  %i.aeo = load i32, ptr %i.aen, align 8, !tbaa !775
  %i.aep = sext i32 %i.aeo to i64
  %i.aeq = getelementptr [8 x i8], ptr %4, i64 %i.aep
  store i64 %i.aem, ptr %i.aeq, align 8, !tbaa !11
  %i.aer = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 0, ptr %i.aer, align 4, !tbaa !756
  br label %bb.gk

.critedge:                                        ; preds = %bb.fy
  %i.aes = getelementptr i8, ptr %i.abk, i64 32
  %i.aet = load i32, ptr %i.aes, align 8, !tbaa !775
  %i.aeu = sext i32 %i.aet to i64
  %i.aev = getelementptr [8 x i8], ptr %4, i64 %i.aeu
  br i1 %.not434, label %bb.gb, label %bb.ga

bb.ga:                                            ; preds = %.critedge
  %i.aew = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %i.aex = load i32, ptr %i.aew, align 4, !tbaa !756
  %i.aey = sext i32 %i.aex to i64
  %i.aez = call i64 @rb_ary_behead(i64 noundef %i.aek, i64 noundef %i.aey) #23
  store i32 0, ptr %i.aew, align 4, !tbaa !756
  store i64 0, ptr %i.aej, align 8, !tbaa !757
  br label %args_setup_rest_parameter.exit

bb.gb:                                            ; preds = %.critedge
  %i.afa = call i64 @rb_ary_new() #23
  br label %args_setup_rest_parameter.exit

args_setup_rest_parameter.exit:                   ; preds = %bb.ga, %bb.gb
  %.0.i.i601 = phi i64 [ %i.aez, %bb.ga ], [ %i.afa, %bb.gb ]
  store i64 %.0.i.i601, ptr %i.aev, align 8, !tbaa !11
  %i.afb = load ptr, ptr %i.c, align 8, !tbaa !124 ; 5 uses
  %i.afc = getelementptr i8, ptr %i.afb, i64 32
  %i.afd = load i32, ptr %i.afc, align 8, !tbaa !775
  %i.afe = sext i32 %i.afd to i64
  %i.aff = getelementptr [8 x i8], ptr %4, i64 %i.afe
  %i.afg = load i64, ptr %i.aff, align 8, !tbaa !11 ; 4 uses
  %i.afh = inttoptr i64 %i.afg to ptr             ; 4 uses
  %i.afi = load i64, ptr %i.afh, align 8, !tbaa !77 ; 2 uses
  %i.afj = and i64 %i.afi, 8192
  %.not.i602 = icmp eq i64 %i.afj, 0              ; 2 uses
  br i1 %.not.i602, label %bb.gd, label %bb.gc

bb.gc:                                            ; preds = %args_setup_rest_parameter.exit
  %i.afk = lshr i64 %i.afi, 15
  %i.afl = and i64 %i.afk, 127
  br label %rb_array_len.exit

bb.gd:                                            ; preds = %args_setup_rest_parameter.exit
  %i.afm = getelementptr i8, ptr %i.afh, i64 16
  %i.afn = load i64, ptr %i.afm, align 8, !tbaa !27
  br label %rb_array_len.exit
end_hunk_2
begin_hunk_3_@vm_call_iseq_setup_normal_0start:bb.a
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !233
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %.val9 = load ptr, ptr %i.c, align 8, !tbaa !187 ; 2 uses
  %i.d = getelementptr i8, ptr %.val9, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !83
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %.val11 = load ptr, ptr %i.f, align 8, !tbaa !27 ; 2 uses
  %i.g = getelementptr i8, ptr %.val11, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !124  ; 4 uses
  %i.i = getelementptr i8, ptr %i.h, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !191  ; 2 uses
  %i.k = getelementptr i8, ptr %i.h, i64 240
  %i.l = load i32, ptr %i.k, align 8, !tbaa !190
  %i.m = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !73
  %i.o = getelementptr i8, ptr %2, i64 32
  %i.p = load i32, ptr %i.o, align 8, !tbaa !230
  %i.q = sext i32 %i.p to i64
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr [8 x i8], ptr %i.n, i64 %i.r ; 2 uses
  %i.t = sext i32 %i.j to i64
  %i.u = getelementptr [8 x i8], ptr %i.s, i64 %i.t ; 5 uses
  %i.v = getelementptr i8, ptr %i.s, i64 -8
  store ptr %i.v, ptr %i.m, align 8, !tbaa !73
  %i.w = getelementptr i8, ptr %2, i64 24
  %i.x = load i64, ptr %i.w, align 8, !tbaa !229
  %i.y = getelementptr i8, ptr %2, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !228
  %i.aa = getelementptr i8, ptr %i.h, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !147
  %i.ac = sub i32 %i.l, %i.j                      ; 5 uses
  %i.ad = getelementptr i8, ptr %i.h, i64 264
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !355
  %i.af = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !70 ; 6 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 -56    ; 3 uses
  %i.ai = add i32 %i.ae, %i.ac
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr [8 x i8], ptr %i.u, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.ak, i64 56
  %.not.i = icmp ugt ptr %i.ah, %i.al
  br i1 %.not.i, label %.preheader.i, label %bb.b, !prof !72

.preheader.i:                                     ; preds = %bb.a
  %i.am = icmp sgt i32 %i.ac, 0
  br i1 %i.am, label %.lr.ph.i.preheader, label %vm_push_frame.exit

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %i.an = zext nneg i32 %i.ac to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.ac, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader14, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.an, 2147483644              ; 4 uses
  %i.ao = shl nuw nsw i64 %n.vec, 3
  %i.ap = getelementptr i8, ptr %i.u, i64 %i.ao   ; 2 uses
  %i.aq = trunc nuw nsw i64 %n.vec to i32
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ar = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.ar ; 2 uses
  %i.as = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> splat (i64 4), ptr %next.gep, align 8, !tbaa !11
  store <2 x i64> splat (i64 4), ptr %i.as, align 8, !tbaa !11
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !778

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.an
  br i1 %cmp.n, label %vm_push_frame.exit, label %.lr.ph.i.preheader14

.lr.ph.i.preheader14:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.026.i.ph = phi ptr [ %i.u, %.lr.ph.i.preheader ], [ %i.ap, %middle.block ]
  %.02325.i.ph = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.aq, %middle.block ]
  br label %.lr.ph.i

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @vm_stackoverflow() #58
  unreachable

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader14, %.lr.ph.i
  %.026.i = phi ptr [ %i.au, %.lr.ph.i ], [ %.026.i.ph, %.lr.ph.i.preheader14 ] ; 2 uses
  %.02325.i = phi i32 [ %i.av, %.lr.ph.i ], [ %.02325.i.ph, %.lr.ph.i.preheader14 ]
  %i.au = getelementptr i8, ptr %.026.i, i64 8    ; 2 uses
  store i64 4, ptr %.026.i, align 8, !tbaa !11
  %i.av = add nuw nsw i32 %.02325.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.av, %i.ac
  br i1 %exitcond.not.i, label %vm_push_frame.exit, label %.lr.ph.i, !llvm.loop !779

vm_push_frame.exit:                               ; preds = %.lr.ph.i, %middle.block, %.preheader.i
  %.0.lcssa.i = phi ptr [ %i.u, %.preheader.i ], [ %i.ap, %middle.block ], [ %i.au, %.lr.ph.i ] ; 4 uses
  %i.aw = ptrtoint ptr %.val9 to i64
  %i.ax = getelementptr i8, ptr %.0.lcssa.i, i64 8
  store i64 %i.aw, ptr %.0.lcssa.i, align 8, !tbaa !11
  %i.ay = getelementptr i8, ptr %.0.lcssa.i, i64 16 ; 2 uses
  store i64 %i.z, ptr %i.ax, align 8, !tbaa !11
  %i.az = getelementptr i8, ptr %.0.lcssa.i, i64 24
  store i64 286326787, ptr %i.ay, align 8, !tbaa !11
  store ptr %i.ab, ptr %i.ah, align 8, !tbaa !75
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.ag, i64 -48
  store ptr %i.az, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !75
  %.sroa.3.0..sroa_idx.i = getelementptr i8, ptr %i.ag, i64 -40
  store ptr %.val11, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !76
  %.sroa.4.0..sroa_idx.i = getelementptr i8, ptr %i.ag, i64 -32
  store i64 %i.x, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !11
  %.sroa.5.0..sroa_idx.i = getelementptr i8, ptr %i.ag, i64 -24
  store ptr %i.ay, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !75
  %.sroa.6.0..sroa_idx.i = getelementptr i8, ptr %i.ag, i64 -16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false)
  fence syncscope("singlethread") seq_cst
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !70
  ret i64 36
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @vm_call_iseq_setup_tailcall(ptr nofree noundef captures(address) %0, ptr noundef %1, ptr nofree noundef captures(none) %2, i32 noundef %3) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !233
  %i.c = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !73   ; 2 uses
  %i.e = ptrtoaddr ptr %i.d to i64
  %i.f = getelementptr i8, ptr %2, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !230
  %i.h = sext i32 %i.g to i64                     ; 2 uses
  %i.i = sub nsw i64 0, %i.h
  %i.j = getelementptr [8 x i8], ptr %i.d, i64 %i.i ; 10 uses
  %i.k = getelementptr i8, ptr %i.b, i64 16
  %.val = load ptr, ptr %i.k, align 8, !tbaa !187 ; 2 uses
  %i.l = getelementptr i8, ptr %.val, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !83
  %i.n = getelementptr i8, ptr %i.m, i64 8
  %.val49 = load ptr, ptr %i.n, align 8, !tbaa !27 ; 2 uses
  %i.o = getelementptr i8, ptr %1, i64 32         ; 2 uses
  %.val50 = load ptr, ptr %i.o, align 8, !tbaa !15
  %.val50.val = load i64, ptr %.val50, align 8, !tbaa !11
  %i.p = getelementptr i8, ptr %2, i64 16         ; 4 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !228
  %i.r = getelementptr i8, ptr %1, i64 24         ; 2 uses
  %i.s = and i64 %i.q, -4
  %i.t = inttoptr i64 %i.s to ptr                 ; 2 uses
  %.not51 = icmp eq ptr %i.r, %i.t
  br i1 %.not51, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr i8, ptr %1, i64 80
  %i.v = getelementptr i8, ptr %i.t, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !27
  %i.x = getelementptr i8, ptr %1, i64 96
  store i64 %i.w, ptr %i.x, align 8, !tbaa !27
  %i.y = load i64, ptr %i.p, align 8, !tbaa !228
  %i.z = and i64 %i.y, 3
  %.not52 = icmp eq i64 %i.z, 1
  %i.aa = ptrtoint ptr %i.u to i64
  %storemerge.v = select i1 %.not52, i64 1, i64 3
  %storemerge = or i64 %storemerge.v, %i.aa
  store i64 %storemerge, ptr %i.p, align 8, !tbaa !228
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ab = getelementptr i8, ptr %0, i64 32
  %i.ac = load atomic volatile i32, ptr %i.ab monotonic, align 4
  %i.ad = getelementptr i8, ptr %0, i64 36
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !71
  %i.af = xor i32 %i.ae, -1
  %i.ag = and i32 %i.ac, %i.af
  %.not.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i.i, label %vm_pop_frame.exit, label %bb.d, !prof !72

bb.d:                                             ; preds = %bb.c
  %i.ah = getelementptr i8, ptr %0, i64 48
  %.val.i.i = load ptr, ptr %i.ah, align 8, !tbaa !30
  %i.ai = tail call i32 @rb_threadptr_execute_interrupts(ptr noundef %.val.i.i, i32 noundef 0) #23 ; 0 uses
  br label %vm_pop_frame.exit

vm_pop_frame.exit:                                ; preds = %bb.c, %bb.d
  %i.aj = getelementptr i8, ptr %1, i64 56
  %i.ak = getelementptr i8, ptr %0, i64 16        ; 2 uses
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !70
  %i.al = getelementptr i8, ptr %1, i64 64        ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !73 ; 4 uses
  %i.an = ptrtoaddr ptr %i.am to i64
  %i.ao = getelementptr i8, ptr %2, i64 24        ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !229 ; 2 uses
  store i64 %i.ap, ptr %i.am, align 8, !tbaa !11
  %i.aq = getelementptr i8, ptr %.val49, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !124 ; 4 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 20
  %i.at = load i32, ptr %i.as, align 4, !tbaa !191 ; 4 uses
  %.04555 = getelementptr i8, ptr %i.am, i64 8    ; 5 uses
  %.not = icmp eq i32 %i.at, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vm_pop_frame.exit
  %wide.trip.count = zext i32 %i.at to i64        ; 5 uses
  %min.iters.check = icmp ult i32 %i.at, 16
  br i1 %min.iters.check, label %.lr.ph.preheader18, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.au = shl nsw i64 %i.h, 3
  %i.av = add i64 %i.au, %i.an
  %4 = sub i64 %i.av, %i.e
  %5 = add i64 %4, 7
  %diff.check = icmp ult i64 %5, 31
  br i1 %diff.check, label %.lr.ph.preheader18, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 4 uses
  %i.aw = shl nuw nsw i64 %n.vec, 3
  %i.ax = getelementptr i8, ptr %.04555, i64 %i.aw ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ay = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %.04555, i64 %i.ay ; 2 uses
  %i.az = getelementptr [8 x i8], ptr %i.j, i64 %index ; 2 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 16
  %wide.load = load <2 x i64>, ptr %i.az, align 8, !tbaa !11
  %wide.load2 = load <2 x i64>, ptr %i.ba, align 8, !tbaa !11
  %i.bb = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !11
  store <2 x i64> %wide.load2, ptr %i.bb, align 8, !tbaa !11
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !780

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge.loopexit, label %.lr.ph.preheader18

.lr.ph.preheader18:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 4 uses
  %.04557.ph = phi ptr [ %.04555, %vector.memcheck ], [ %.04555, %.lr.ph.preheader ], [ %i.ax, %middle.block ] ; 2 uses
  %i.bd = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.bd, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader18, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader18 ] ; 2 uses
  %.04557.prol = phi ptr [ %.045.prol, %.lr.ph.prol ], [ %.04557.ph, %.lr.ph.preheader18 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader18 ]
  %i.be = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv.prol
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !11
  store i64 %i.bf, ptr %.04557.prol, align 8, !tbaa !11
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %.045.prol = getelementptr i8, ptr %.04557.prol, i64 8 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !781

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader18
  %.045.lcssa19.unr = phi ptr [ poison, %.lr.ph.preheader18 ], [ %.045.prol, %.lr.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader18 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.04557.unr = phi ptr [ %.04557.ph, %.lr.ph.preheader18 ], [ %.045.prol, %.lr.ph.prol ]
  %i.bg = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.bh = icmp ugt i64 %i.bg, -8
  br i1 %i.bh, label %._crit_edge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.04557 = phi ptr [ %.045.7, %.lr.ph ], [ %.04557.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.bi = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !11
  store i64 %i.bj, ptr %.04557, align 8, !tbaa !11
  %.045 = getelementptr i8, ptr %.04557, i64 8
  %i.bk = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.bl = getelementptr i8, ptr %i.bk, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !11
  store i64 %i.bm, ptr %.045, align 8, !tbaa !11
  %.045.1 = getelementptr i8, ptr %.04557, i64 16
  %i.bn = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.bo = getelementptr i8, ptr %i.bn, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !11
  store i64 %i.bp, ptr %.045.1, align 8, !tbaa !11
  %.045.2 = getelementptr i8, ptr %.04557, i64 24
  %i.bq = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.br = getelementptr i8, ptr %i.bq, i64 24
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !11
  store i64 %i.bs, ptr %.045.2, align 8, !tbaa !11
  %.045.3 = getelementptr i8, ptr %.04557, i64 32
  %i.bt = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.bu = getelementptr i8, ptr %i.bt, i64 32
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !11
  store i64 %i.bv, ptr %.045.3, align 8, !tbaa !11
  %.045.4 = getelementptr i8, ptr %.04557, i64 40
  %i.bw = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.bx = getelementptr i8, ptr %i.bw, i64 40
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !11
  store i64 %i.by, ptr %.045.4, align 8, !tbaa !11
  %.045.5 = getelementptr i8, ptr %.04557, i64 48
  %i.bz = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.ca = getelementptr i8, ptr %i.bz, i64 48
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !11
  store i64 %i.cb, ptr %.045.5, align 8, !tbaa !11
  %.045.6 = getelementptr i8, ptr %.04557, i64 56
  %i.cc = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.cd = getelementptr i8, ptr %i.cc, i64 56
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !11
  store i64 %i.ce, ptr %.045.6, align 8, !tbaa !11
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %.045.7 = getelementptr i8, ptr %.04557, i64 64 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7, %wide.trip.count
  br i1 %exitcond.not.7, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !782

._crit_edge.loopexit:                             ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block
  %.045.lcssa1 = phi ptr [ %i.ax, %middle.block ], [ %.045.lcssa19.unr, %.lr.ph.prol.loopexit ], [ %.045.7, %.lr.ph ]
  %.pre = load i64, ptr %i.ao, align 8, !tbaa !229
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %vm_pop_frame.exit
  %i.cf = phi i64 [ %i.ap, %vm_pop_frame.exit ], [ %.pre, %._crit_edge.loopexit ]
  %.045.lcssa = phi ptr [ %.04555, %vm_pop_frame.exit ], [ %.045.lcssa1, %._crit_edge.loopexit ] ; 5 uses
  %i.cg = load i64, ptr %i.p, align 8, !tbaa !228
  %i.ch = getelementptr i8, ptr %i.ar, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !147
  %i.cj = getelementptr i8, ptr %i.ar, i64 240
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !190
  %i.cl = sub i32 %i.ck, %i.at                    ; 5 uses
  %i.cm = getelementptr i8, ptr %i.ar, i64 264
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !355
  %i.co = add i32 %i.cn, %i.cl
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr [8 x i8], ptr %.045.lcssa, i64 %i.cp
  %i.cr = getelementptr i8, ptr %i.cq, i64 56
  %.not.i = icmp ugt ptr %1, %i.cr
  br i1 %.not.i, label %.preheader.i, label %bb.e, !prof !72

.preheader.i:                                     ; preds = %._crit_edge
  %i.cs = icmp sgt i32 %i.cl, 0
  br i1 %i.cs, label %.lr.ph.i.preheader, label %vm_push_frame.exit

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %i.ct = zext nneg i32 %i.cl to i64              ; 2 uses
  %min.iters.check5 = icmp ult i32 %i.cl, 4
  br i1 %min.iters.check5, label %.lr.ph.i.preheader17, label %vector.ph6

vector.ph6:                                       ; preds = %.lr.ph.i.preheader
  %n.vec8 = and i64 %i.ct, 2147483644             ; 4 uses
  %i.cu = shl nuw nsw i64 %n.vec8, 3
  %i.cv = getelementptr i8, ptr %.045.lcssa, i64 %i.cu ; 2 uses
  %i.cw = trunc nuw nsw i64 %n.vec8 to i32
  br label %vector.body9

vector.body9:                                     ; preds = %vector.body9, %vector.ph6
  %index10 = phi i64 [ 0, %vector.ph6 ], [ %index.next12, %vector.body9 ] ; 2 uses
  %i.cx = shl i64 %index10, 3
  %next.gep11 = getelementptr i8, ptr %.045.lcssa, i64 %i.cx ; 2 uses
  %i.cy = getelementptr i8, ptr %next.gep11, i64 16
  store <2 x i64> splat (i64 4), ptr %next.gep11, align 8, !tbaa !11
  store <2 x i64> splat (i64 4), ptr %i.cy, align 8, !tbaa !11
  %index.next12 = add nuw i64 %index10, 4         ; 2 uses
  %i.cz = icmp eq i64 %index.next12, %n.vec8
  br i1 %i.cz, label %middle.block13, label %vector.body9, !llvm.loop !783

middle.block13:                                   ; preds = %vector.body9
  %cmp.n14 = icmp eq i64 %n.vec8, %i.ct
  br i1 %cmp.n14, label %vm_push_frame.exit, label %.lr.ph.i.preheader17

.lr.ph.i.preheader17:                             ; preds = %.lr.ph.i.preheader, %middle.block13
  %.026.i.ph = phi ptr [ %.045.lcssa, %.lr.ph.i.preheader ], [ %i.cv, %middle.block13 ]
  %.02325.i.ph = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.cw, %middle.block13 ]
  br label %.lr.ph.i

bb.e:                                             ; preds = %._crit_edge
  tail call fastcc void @vm_stackoverflow() #58
  unreachable

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader17, %.lr.ph.i
  %.026.i = phi ptr [ %i.da, %.lr.ph.i ], [ %.026.i.ph, %.lr.ph.i.preheader17 ] ; 2 uses
  %.02325.i = phi i32 [ %i.db, %.lr.ph.i ], [ %.02325.i.ph, %.lr.ph.i.preheader17 ]
  %i.da = getelementptr i8, ptr %.026.i, i64 8    ; 2 uses
  store i64 4, ptr %.026.i, align 8, !tbaa !11
  %i.db = add nuw nsw i32 %.02325.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.db, %i.cl
  br i1 %exitcond.not.i, label %vm_push_frame.exit, label %.lr.ph.i, !llvm.loop !784

vm_push_frame.exit:                               ; preds = %.lr.ph.i, %middle.block13, %.preheader.i
  %.0.lcssa.i = phi ptr [ %.045.lcssa, %.preheader.i ], [ %i.cv, %middle.block13 ], [ %i.da, %.lr.ph.i ] ; 4 uses
  %i.dc = sext i32 %3 to i64
  %i.dd = getelementptr [8 x i8], ptr %i.ci, i64 %i.dc
  %i.de = ptrtoint ptr %.val to i64
  %i.df = and i64 %.val50.val, 32
  %i.dg = or disjoint i64 %i.df, 286326787
  %i.dh = getelementptr i8, ptr %.0.lcssa.i, i64 8
  store i64 %i.de, ptr %.0.lcssa.i, align 8, !tbaa !11
  %i.di = getelementptr i8, ptr %.0.lcssa.i, i64 16 ; 2 uses
  store i64 %i.cg, ptr %i.dh, align 8, !tbaa !11
  %i.dj = getelementptr i8, ptr %.0.lcssa.i, i64 24
  store i64 %i.dg, ptr %i.di, align 8, !tbaa !11
  store ptr %i.dd, ptr %1, align 8, !tbaa !75
  store ptr %i.dj, ptr %i.c, align 8, !tbaa !75
  %.sroa.3.0..sroa_idx.i = getelementptr i8, ptr %1, i64 16
  store ptr %.val49, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !76
  store i64 %i.cf, ptr %i.r, align 8, !tbaa !11
  store ptr %i.di, ptr %i.o, align 8, !tbaa !75
  %.sroa.6.0..sroa_idx.i = getelementptr i8, ptr %1, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false)
  fence syncscope("singlethread") seq_cst
  store ptr %1, ptr %i.ak, align 8, !tbaa !70
  store ptr %i.am, ptr %i.al, align 8, !tbaa !73
  ret void
}
end_hunk_3
begin_hunk_4_@vm_call_iseq_setup_normal_0start_3params_4locals:bb.a
  store ptr %i.v, ptr %i.t, align 8, !tbaa !70
  ret i64 36

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @vm_stackoverflow() #58
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @vm_call_iseq_setup_normal_0start_3params_5locals(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !233
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %.val = load ptr, ptr %i.c, align 8, !tbaa !187 ; 2 uses
  %i.d = getelementptr i8, ptr %.val, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !83
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %.val4 = load ptr, ptr %i.f, align 8, !tbaa !27 ; 2 uses
  %i.g = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !73
  %i.i = getelementptr i8, ptr %2, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !230
  %i.k = sext i32 %i.j to i64
  %i.l = sub nsw i64 0, %i.k
  %i.m = getelementptr [8 x i8], ptr %i.h, i64 %i.l ; 7 uses
  %i.n = getelementptr i8, ptr %i.m, i64 24       ; 2 uses
  %i.o = getelementptr i8, ptr %i.m, i64 -8
  store ptr %i.o, ptr %i.g, align 8, !tbaa !73
  %i.p = getelementptr i8, ptr %.val4, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !124  ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 264
  %i.s = load i32, ptr %i.r, align 8, !tbaa !355
  %i.t = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !70   ; 6 uses
  %i.v = getelementptr i8, ptr %i.u, i64 -56      ; 3 uses
  %i.w = add i32 %i.s, 2
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr [8 x i8], ptr %i.n, i64 %i.x
  %i.z = getelementptr i8, ptr %i.y, i64 56
  %.not.i = icmp ugt ptr %i.v, %i.z
  br i1 %.not.i, label %.lr.ph.i.preheader, label %bb.b, !prof !72

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.aa = getelementptr i8, ptr %i.q, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !147
  %i.ac = getelementptr i8, ptr %2, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !228
  %i.ae = getelementptr i8, ptr %2, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !229
  %i.ag = getelementptr i8, ptr %i.m, i64 32
  store i64 4, ptr %i.n, align 8, !tbaa !11
  %i.ah = getelementptr i8, ptr %i.m, i64 40
  store i64 4, ptr %i.ag, align 8, !tbaa !11
  %i.ai = ptrtoint ptr %.val to i64
  %i.aj = getelementptr i8, ptr %i.m, i64 48
  store i64 %i.ai, ptr %i.ah, align 8, !tbaa !11
  %i.ak = getelementptr i8, ptr %i.m, i64 56      ; 2 uses
  store i64 %i.ad, ptr %i.aj, align 8, !tbaa !11
  %i.al = getelementptr i8, ptr %i.m, i64 64
  store i64 286326787, ptr %i.ak, align 8, !tbaa !11
  store ptr %i.ab, ptr %i.v, align 8, !tbaa !75
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -48
  store ptr %i.al, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !75
  %.sroa.3.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -40
  store ptr %.val4, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !76
  %.sroa.4.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -32
  store i64 %i.af, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !11
  %.sroa.5.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -24
  store ptr %i.ak, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !75
  %.sroa.6.0..sroa_idx.i = getelementptr i8, ptr %i.u, i64 -16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false)
  fence syncscope("singlethread") seq_cst
  store ptr %i.v, ptr %i.t, align 8, !tbaa !70
  ret i64 36

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @vm_stackoverflow() #58
  unreachable
}

declare i64 @rb_ary_hidden_new(i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal fastcc void @argument_kw_error(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) unnamed_addr #6 {
bb.a:
  %i.a = tail call i64 @rb_keyword_error_new(ptr noundef %3, i64 noundef %4) #23
  tail call fastcc void @raise_argument_error(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.a) #58
  unreachable
}

declare i64 @rb_hash_new() local_unnamed_addr #4

declare i64 @rb_hash_aset(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @make_unknown_kw_hash(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #2 {
bb.a:
  %i.a = tail call i64 @rb_ary_hidden_new(i64 noundef 1) #23 ; 2 uses
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.c = getelementptr [8 x i8], ptr %2, i64 %indvars.iv
  %i.d = load i64, ptr %i.c, align 8, !tbaa !11
  %i.e = icmp eq i64 %i.d, 36
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr [8 x i8], ptr %0, i64 %indvars.iv
  %i.g = load i64, ptr %i.f, align 8, !tbaa !11
  %i.h = tail call i64 @rb_ary_push(i64 noundef %i.a, i64 noundef %i.g) #23 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !785

._crit_edge:                                      ; preds = %bb.c, %bb.a
  ret i64 %i.a
}

declare i64 @rb_keyword_error_new(ptr noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_hash_new_with_size(i64 noundef) local_unnamed_addr #4

declare i64 @rb_hash_dup(i64 noundef) local_unnamed_addr #4

declare i64 @rb_ary_pop(i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @flatten_rest_args(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef nonnull captures(none) %3) unnamed_addr #2 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = getelementptr i8, ptr %1, i64 40         ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !757
  %i.d = inttoptr i64 %i.c to ptr                 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !77   ; 2 uses
  %i.f = and i64 %i.e, 8192
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.d, i64 16
  %i.h = lshr i64 %i.e, 15
  %i.i = and i64 %i.h, 127
  br label %rb_array_len.exit.i

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %i.d, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !27
  %i.l = getelementptr i8, ptr %i.d, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !27
  br label %rb_array_len.exit.i

rb_array_len.exit.i:                              ; preds = %bb.c, %bb.b
  %.0.i24 = phi ptr [ %i.g, %bb.b ], [ %i.k, %bb.c ] ; 7 uses
  %.0.i.i = phi i64 [ %i.i, %bb.b ], [ %i.m, %bb.c ] ; 4 uses
  %.0.i2430 = ptrtoaddr ptr %.0.i24 to i64
  %i.n = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !749  ; 9 uses
  %i.p = add i64 %.0.i.i, 2147483648
  %.not.i1.i = icmp ult i64 %i.p, 4294967296
  br i1 %.not.i1.i, label %RARRAY_LENINT.exit, label %bb.d

bb.d:                                             ; preds = %rb_array_len.exit.i
  tail call void @rb_out_of_int(i64 noundef %.0.i.i) #57
  unreachable

RARRAY_LENINT.exit:                               ; preds = %rb_array_len.exit.i
  %i.q = trunc nsw i64 %.0.i.i to i32
  %i.r = add i32 %i.q, -1                         ; 5 uses
  %i.s = add i32 %i.r, %i.o
  store i32 %i.s, ptr %i.n, align 8, !tbaa !749
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %RARRAY_LENINT.exit
  %i.t = getelementptr i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !70   ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !73
  %i.x = shl nsw i64 %.0.i.i, 3
  %i.y = getelementptr i8, ptr %i.w, i64 %i.x
  %i.z = getelementptr i8, ptr %i.y, i64 56
  %.not22 = icmp ugt ptr %i.u, %i.z
  br i1 %.not22, label %.preheader, label %bb.f, !prof !72

.preheader:                                       ; preds = %bb.e
  %i.aa = icmp sgt i32 %i.r, 0
  br i1 %i.aa, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.r to i64    ; 6 uses
  %min.iters.check = icmp ult i32 %i.r, 18
  br i1 %min.iters.check, label %.lr.ph.preheader33, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.preheader
  %i.ab = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %i.ac = trunc nsw i64 %i.ab to i32
  %i.ad = add i32 %i.o, %i.ac
  %i.ae = icmp slt i32 %i.ad, %i.o
  %i.af = icmp ugt i64 %i.ab, 4294967295
  %i.ag = or i1 %i.ae, %i.af
  br i1 %i.ag, label %.lr.ph.preheader33, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.ah = sext i32 %i.o to i64
  %i.ai = shl nsw i64 %i.ah, 3
  %i.aj = add i64 %i.ai, %i.a
  %i.ak = sub i64 %.0.i2430, %i.aj
  %diff.check = icmp ugt i64 %i.ak, -32
  br i1 %diff.check, label %.lr.ph.preheader33, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 4 uses
  %i.al = trunc nuw nsw i64 %n.vec to i32
  %i.am = add i32 %i.o, %i.al
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.an = trunc i64 %index to i32
  %i.ao = add i32 %i.o, %i.an
  %i.ap = getelementptr [8 x i8], ptr %.0.i24, i64 %index ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 16
  %wide.load = load <2 x i64>, ptr %i.ap, align 8, !tbaa !11
  %wide.load31 = load <2 x i64>, ptr %i.aq, align 8, !tbaa !11
  %i.ar = sext i32 %i.ao to i64
  %i.as = getelementptr [8 x i8], ptr %2, i64 %i.ar ; 2 uses
  %i.at = getelementptr i8, ptr %i.as, i64 16
  store <2 x i64> %wide.load, ptr %i.as, align 8, !tbaa !11
  store <2 x i64> %wide.load31, ptr %i.at, align 8, !tbaa !11
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !786

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader33

.lr.ph.preheader33:                               ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.02026.ph = phi i32 [ %i.o, %vector.memcheck ], [ %i.o, %vector.scevcheck ], [ %i.o, %.lr.ph.preheader ], [ %i.am, %middle.block ] ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader33, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader33 ] ; 2 uses
  %.02026.prol = phi i32 [ %i.az, %.lr.ph.prol ], [ %.02026.ph, %.lr.ph.preheader33 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader33 ]
  %i.av = getelementptr [8 x i8], ptr %.0.i24, i64 %indvars.iv.prol
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !11
  %i.ax = sext i32 %.02026.prol to i64
  %i.ay = getelementptr [8 x i8], ptr %2, i64 %i.ax
  store i64 %i.aw, ptr %i.ay, align 8, !tbaa !11
  %i.az = add i32 %.02026.prol, 1                 ; 2 uses
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !787

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader33
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader33 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.02026.unr = phi i32 [ %.02026.ph, %.lr.ph.preheader33 ], [ %i.az, %.lr.ph.prol ]
  %i.ba = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.bb = icmp ugt i64 %i.ba, -4
  br i1 %i.bb, label %.loopexit, label %.lr.ph

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @vm_stackoverflow() #58
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.02026 = phi i32 [ %i.by, %.lr.ph ], [ %.02026.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.bc = getelementptr [8 x i8], ptr %.0.i24, i64 %indvars.iv
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !11
  %i.be = sext i32 %.02026 to i64
  %i.bf = getelementptr [8 x i8], ptr %2, i64 %i.be
  store i64 %i.bd, ptr %i.bf, align 8, !tbaa !11
  %i.bg = add i32 %.02026, 1
  %i.bh = getelementptr [8 x i8], ptr %.0.i24, i64 %indvars.iv
  %i.bi = getelementptr i8, ptr %i.bh, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !11
  %i.bk = sext i32 %i.bg to i64
  %i.bl = getelementptr [8 x i8], ptr %2, i64 %i.bk
  store i64 %i.bj, ptr %i.bl, align 8, !tbaa !11
  %i.bm = add i32 %.02026, 2
  %i.bn = getelementptr [8 x i8], ptr %.0.i24, i64 %indvars.iv
  %i.bo = getelementptr i8, ptr %i.bn, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !11
  %i.bq = sext i32 %i.bm to i64
  %i.br = getelementptr [8 x i8], ptr %2, i64 %i.bq
  store i64 %i.bp, ptr %i.br, align 8, !tbaa !11
  %i.bs = add i32 %.02026, 3
  %i.bt = getelementptr [8 x i8], ptr %.0.i24, i64 %indvars.iv
  %i.bu = getelementptr i8, ptr %i.bt, i64 24
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !11
  %i.bw = sext i32 %i.bs to i64
  %i.bx = getelementptr [8 x i8], ptr %2, i64 %i.bw
  store i64 %i.bv, ptr %i.bx, align 8, !tbaa !11
  %i.by = add i32 %.02026, 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit, label %.lr.ph, !llvm.loop !788

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %.preheader, %RARRAY_LENINT.exit
  store i64 0, ptr %i.b, align 8, !tbaa !757
  %i.bz = load i32, ptr %3, align 4, !tbaa !7
  %i.ca = and i32 %i.bz, -2
  store i32 %i.ca, ptr %3, align 4, !tbaa !7
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @RARRAY_ASET(i64 noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #11 {
bb.a:
  %i.a = tail call ptr @rb_ary_ptr_use_start(i64 noundef %0) #23
  %i.b = getelementptr [8 x i8], ptr %i.a, i64 %1
  store i64 %2, ptr %i.b, align 8, !tbaa !11
  %i.c = icmp eq i64 %2, 0
  %i.d = and i64 %2, 7
  %i.e = icmp ne i64 %i.d, 0
  %i.f = or i1 %i.c, %i.e
  br i1 %i.f, label %rb_obj_write.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @rb_gc_writebarrier(i64 noundef %0, i64 noundef %2) #23
  br label %rb_obj_write.exit

rb_obj_write.exit:                                ; preds = %bb.a, %bb.b
  tail call void @rb_ary_ptr_use_end(i64 noundef %0) #23
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @args_setup_kw_parameters_from_kwsplat(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, i1 noundef zeroext %5) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !124
  %i.c = getelementptr i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !720  ; 4 uses
  %i.e = getelementptr i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !726  ; 2 uses
  %i.g = getelementptr i8, ptr %i.d, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !725  ; 3 uses
  %i.i = load i32, ptr %i.d, align 8, !tbaa !723  ; 4 uses
  %i.j = getelementptr i8, ptr %i.d, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !731
  %i.l = inttoptr i64 %3 to ptr                   ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !77   ; 2 uses
  %i.n = and i64 %i.m, 32768
  %.not.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = lshr i64 %i.m, 16
  %i.p = and i64 %i.o, 15
  br label %RHASH_SIZE.exit

bb.c:                                             ; preds = %bb.a
  %i.q = add i64 %3, 24
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = getelementptr i8, ptr %i.r, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !315
  br label %RHASH_SIZE.exit

RHASH_SIZE.exit:                                  ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.p, %bb.b ], [ %i.t, %bb.c ] ; 2 uses
  %i.u = icmp sgt i32 %i.h, 0
  br i1 %i.u, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %RHASH_SIZE.exit
  %wide.trip.count = zext nneg i32 %i.h to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.k, %.lr.ph.preheader
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.k ] ; 3 uses
  %.0128 = phi i64 [ 0, %.lr.ph.preheader ], [ %.2, %bb.k ] ; 3 uses
  %.0111126 = phi i64 [ %.0.i, %.lr.ph.preheader ], [ %.1112, %bb.k ] ; 2 uses
  %i.v = getelementptr [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.w = load i64, ptr %i.v, align 8, !tbaa !11
  %i.x = tail call i64 @rb_id2sym(i64 noundef %i.w) #23 ; 3 uses
  br i1 %5, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.y = tail call i64 @rb_hash_delete_entry(i64 noundef %3, i64 noundef %i.x) #23
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.z = tail call i64 @rb_hash_lookup2(i64 noundef %3, i64 noundef %i.x, i64 noundef 36) #23
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0108 = phi i64 [ %i.y, %bb.d ], [ %i.z, %bb.e ] ; 2 uses
  %i.aa = icmp eq i64 %.0108, 36
  br i1 %i.aa, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = add i64 %.0111126, -1
  %i.ac = getelementptr [8 x i8], ptr %4, i64 %indvars.iv
  store i64 %.0108, ptr %i.ac, align 8, !tbaa !11
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %.not124 = icmp eq i64 %.0128, 0
  br i1 %.not124, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ad = tail call i64 @rb_ary_hidden_new(i64 noundef 1) #23
end_hunk_4
begin_hunk_5_@args_setup_kw_parameters_from_kwsplat:bb.a
  br label %bb.ai

bb.ab:                                            ; preds = %._crit_edge138
  br i1 %5, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.not120 = icmp eq i64 %.2113.lcssa, 0
  br i1 %.not120, label %bb.ai, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bu = tail call i64 @rb_hash_dup(i64 noundef %3) #23
  tail call fastcc void @args_setup_kw_parameters_from_kwsplat(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i64 noundef %i.bu, ptr noundef %4, i1 noundef zeroext true)
  br label %bb.ai

bb.ae:                                            ; preds = %bb.ab
  %i.bv = load i64, ptr %i.l, align 8, !tbaa !77  ; 2 uses
  %i.bw = and i64 %i.bv, 32768
  %.not.i.i.i = icmp eq i64 %i.bw, 0
  br i1 %.not.i.i.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.bx = lshr i64 %i.bv, 16
  %i.by = and i64 %i.bx, 15
  br label %RHASH_EMPTY_P.exit

bb.ag:                                            ; preds = %bb.ae
  %i.bz = add i64 %3, 24
  %i.ca = inttoptr i64 %i.bz to ptr
  %i.cb = getelementptr i8, ptr %i.ca, i64 16
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !315
  br label %RHASH_EMPTY_P.exit

RHASH_EMPTY_P.exit:                               ; preds = %bb.af, %bb.ag
  %.0.i.i = phi i64 [ %i.by, %bb.af ], [ %i.cc, %bb.ag ]
  %i.cd = icmp eq i64 %.0.i.i, 0
  br i1 %i.cd, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %RHASH_EMPTY_P.exit
  %i.ce = tail call i64 @rb_hash_keys(i64 noundef %3) #23
  tail call fastcc void @argument_kw_error(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull @.str.155, i64 noundef %i.ce) #58
  unreachable

bb.ai:                                            ; preds = %bb.ad, %bb.ac, %RHASH_EMPTY_P.exit, %bb.aa
  %i.cf = icmp eq i64 %.0114.lcssa, 4
  %.3117 = select i1 %i.cf, i64 %.0109.lcssa, i64 %.0114.lcssa
  %i.cg = sext i32 %i.i to i64
  %i.ch = getelementptr [8 x i8], ptr %4, i64 %i.cg
  store i64 %.3117, ptr %i.ch, align 8, !tbaa !11
  ret void
}

declare i64 @rb_hash_keys(i64 noundef) local_unnamed_addr #4

declare i64 @rb_to_hash_type(i64 noundef) local_unnamed_addr #4

declare i64 @rb_ary_dup(i64 noundef) local_unnamed_addr #4

declare ptr @rb_ary_ptr_use_start(i64 noundef) local_unnamed_addr #4

declare void @rb_ary_ptr_use_end(i64 noundef) local_unnamed_addr #4

declare i64 @rb_ary_resize(i64 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_ary_unshift(i64 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_ary_behead(i64 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_hash_delete_entry(i64 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_hash_lookup2(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal i64 @vm_call_cfunc_only_splat(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2) #11 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73   ; 4 uses
  %i.c = ptrtoaddr ptr %i.b to i64
  %i.d = getelementptr i8, ptr %i.b, i64 -8       ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !11
  %i.f = inttoptr i64 %i.e to ptr                 ; 7 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !77   ; 3 uses
  %i.h = and i64 %i.g, 8192
  %.not.i.i = icmp eq i64 %i.h, 0                 ; 4 uses
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = lshr i64 %i.g, 15
  %i.j = and i64 %i.i, 127
  br label %rb_array_len.exit.i

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %i.f, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !27
  br label %rb_array_len.exit.i

rb_array_len.exit.i:                              ; preds = %bb.c, %bb.b
  %.0.i.i = phi i64 [ %i.j, %bb.b ], [ %i.l, %bb.c ] ; 4 uses
  %i.m = add i64 %.0.i.i, 2147483648
  %.not.i1.i = icmp ult i64 %i.m, 4294967296
  br i1 %.not.i1.i, label %RARRAY_LENINT.exit, label %bb.d

bb.d:                                             ; preds = %rb_array_len.exit.i
  tail call void @rb_out_of_int(i64 noundef %.0.i.i) #57
  unreachable

RARRAY_LENINT.exit:                               ; preds = %rb_array_len.exit.i
  %i.n = icmp sgt i64 %.0.i.i, 0
  br i1 %i.n, label %bb.e, label %.split18

bb.e:                                             ; preds = %RARRAY_LENINT.exit
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr i8, ptr %i.f, i64 16
  br label %rb_array_const_ptr.exit

bb.g:                                             ; preds = %bb.e
  %i.p = getelementptr i8, ptr %i.f, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !27
  br label %rb_array_const_ptr.exit

rb_array_const_ptr.exit:                          ; preds = %bb.f, %bb.g
  %.0.i19 = phi ptr [ %i.o, %bb.f ], [ %i.q, %bb.g ]
  %i.r = getelementptr [8 x i8], ptr %.0.i19, i64 %.0.i.i
  %i.s = getelementptr i8, ptr %i.r, i64 -8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !11   ; 4 uses
  %i.u = icmp eq i64 %i.t, 0
  %i.v = and i64 %i.t, 7
  %i.w = icmp ne i64 %i.v, 0
  %i.x = or i1 %i.u, %i.w
  br i1 %i.x, label %.split18, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %rb_array_const_ptr.exit
  %i.y = inttoptr i64 %i.t to ptr
  %i.z = load i64, ptr %i.y, align 8, !tbaa !77   ; 3 uses
  %i.aa = and i64 %i.z, 8223
  %or.cond.not = icmp eq i64 %i.aa, 8200
  br i1 %or.cond.not, label %bb.p, label %.split18, !prof !774

.split18:                                         ; preds = %rb_array_const_ptr.exit, %rbimpl_RB_TYPE_P_fastpath.exit, %RARRAY_LENINT.exit
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.split18
  %i.ab = lshr i64 %i.g, 15
  %i.ac = and i64 %i.ab, 127
  br label %rb_array_len.exit.i.i

bb.i:                                             ; preds = %.split18
  %i.ad = getelementptr i8, ptr %i.f, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !27
  br label %rb_array_len.exit.i.i

rb_array_len.exit.i.i:                            ; preds = %bb.i, %bb.h
  %.0.i.i.i = phi i64 [ %i.ac, %bb.h ], [ %i.ae, %bb.i ] ; 12 uses
  %i.af = add i64 %.0.i.i.i, 2147483648
  %.not.i1.i.i = icmp ult i64 %i.af, 4294967296
  br i1 %.not.i1.i.i, label %RARRAY_LENINT.exit.i, label %bb.j

bb.j:                                             ; preds = %rb_array_len.exit.i.i
  tail call void @rb_out_of_int(i64 noundef %.0.i.i.i) #57
  unreachable

RARRAY_LENINT.exit.i:                             ; preds = %rb_array_len.exit.i.i
  %i.ag = trunc nsw i64 %.0.i.i.i to i32
  %i.ah = icmp sgt i64 %.0.i.i.i, 128
  br i1 %i.ah, label %bb.k, label %bb.l, !prof !177

bb.k:                                             ; preds = %RARRAY_LENINT.exit.i
  %i.ai = tail call i64 @vm_call_cfunc_other(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2)
  br label %vm_call_cfunc_array_argv.exit

bb.l:                                             ; preds = %RARRAY_LENINT.exit.i
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = getelementptr i8, ptr %i.f, i64 16
  br label %rb_array_const_ptr.exit.i

bb.n:                                             ; preds = %bb.l
  %i.ak = getelementptr i8, ptr %i.f, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !27
  br label %rb_array_const_ptr.exit.i

rb_array_const_ptr.exit.i:                        ; preds = %bb.n, %bb.m
  %.0.i.i20 = phi ptr [ %i.aj, %bb.m ], [ %i.al, %bb.n ] ; 11 uses
  %.0.i.i2027 = ptrtoaddr ptr %.0.i.i20 to i64
  %i.am = getelementptr i8, ptr %2, i64 36
  store i8 0, ptr %i.am, align 4, !tbaa !231
  %i.an = getelementptr i8, ptr %i.b, i64 -16     ; 6 uses
  %i.ao = shl nsw i64 %.0.i.i.i, 3
  %i.ap = getelementptr i8, ptr %i.b, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.ap, i64 56
  %.not.i21 = icmp ugt ptr %1, %i.aq
  br i1 %.not.i21, label %.preheader.i, label %bb.o, !prof !72

.preheader.i:                                     ; preds = %rb_array_const_ptr.exit.i
  %i.ar = icmp sgt i64 %.0.i.i.i, 0
  br i1 %i.ar, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %min.iters.check = icmp ult i64 %.0.i.i.i, 10
  br i1 %min.iters.check, label %.lr.ph.i.preheader30, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %3 = sub i64 %i.c, %.0.i.i2027
  %4 = add i64 %3, -9
  %diff.check = icmp ult i64 %4, 31
  br i1 %diff.check, label %.lr.ph.i.preheader30, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %.0.i.i.i, 9223372036854775804 ; 4 uses
  %i.as = shl i64 %n.vec, 3
  %i.at = getelementptr i8, ptr %i.an, i64 %i.as  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.au = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.an, i64 %i.au ; 2 uses
  %i.av = getelementptr [8 x i8], ptr %.0.i.i20, i64 %index ; 2 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 16
  %wide.load = load <2 x i64>, ptr %i.av, align 8, !tbaa !11
  %wide.load28 = load <2 x i64>, ptr %i.aw, align 8, !tbaa !11
  %i.ax = getelementptr i8, ptr %next.gep, i64 8
  %i.ay = getelementptr i8, ptr %next.gep, i64 24
  store <2 x i64> %wide.load, ptr %i.ax, align 8, !tbaa !11
  store <2 x i64> %wide.load28, ptr %i.ay, align 8, !tbaa !11
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !792

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.0.i.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader30

.lr.ph.i.preheader30:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ] ; 4 uses
  %.03136.i.ph = phi ptr [ %i.an, %vector.memcheck ], [ %i.an, %.lr.ph.i.preheader ], [ %i.at, %middle.block ] ; 2 uses
  %i.ba = sub nsw i64 %.0.i.i.i, %indvars.iv.i.ph
  %xtraiter = and i64 %i.ba, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader30, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader30 ] ; 2 uses
  %.03136.i.prol = phi ptr [ %i.bd, %.lr.ph.i.prol ], [ %.03136.i.ph, %.lr.ph.i.preheader30 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader30 ]
  %i.bb = getelementptr [8 x i8], ptr %.0.i.i20, i64 %indvars.iv.i.prol
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !11
  %i.bd = getelementptr i8, ptr %.03136.i.prol, i64 8 ; 4 uses
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !11
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !793

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader30
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader30 ], [ %i.bd, %.lr.ph.i.prol ]
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader30 ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %.03136.i.unr = phi ptr [ %.03136.i.ph, %.lr.ph.i.preheader30 ], [ %i.bd, %.lr.ph.i.prol ]
  %i.be = sub nsw i64 %indvars.iv.i.ph, %.0.i.i.i
  %i.bf = icmp ugt i64 %i.be, -8
  br i1 %i.bf, label %._crit_edge.i, label %.lr.ph.i

bb.o:                                             ; preds = %rb_array_const_ptr.exit.i
  tail call fastcc void @vm_stackoverflow() #58
  unreachable

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.7, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.03136.i = phi ptr [ %i.ck, %.lr.ph.i ], [ %.03136.i.unr, %.lr.ph.i.prol.loopexit ] ; 8 uses
  %i.bg = getelementptr [8 x i8], ptr %.0.i.i20, i64 %indvars.iv.i
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !11
  %i.bi = getelementptr i8, ptr %.03136.i, i64 8
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !11
  %i.bj = getelementptr [8 x i8], ptr %.0.i.i20, i64 %indvars.iv.i
  %i.bk = getelementptr i8, ptr %i.bj, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !11
  %i.bm = getelementptr i8, ptr %.03136.i, i64 16
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !11
  %i.bn = getelementptr [8 x i8], ptr %.0.i.i20, i64 %indvars.iv.i
  %i.bo = getelementptr i8, ptr %i.bn, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !11
  %i.bq = getelementptr i8, ptr %.03136.i, i64 24
  store i64 %i.bp, ptr %i.bq, align 8, !tbaa !11
  %i.br = getelementptr [8 x i8], ptr %.0.i.i20, i64 %indvars.iv.i
  %i.bs = getelementptr i8, ptr %i.br, i64 24
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !11
  %i.bu = getelementptr i8, ptr %.03136.i, i64 32
  store i64 %i.bt, ptr %i.bu, align 8, !tbaa !11
  %i.bv = getelementptr [8 x i8], ptr %.0.i.i20, i64 %indvars.iv.i
  %i.bw = getelementptr i8, ptr %i.bv, i64 32
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !11
  %i.by = getelementptr i8, ptr %.03136.i, i64 40
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !11
  %i.bz = getelementptr [8 x i8], ptr %.0.i.i20, i64 %indvars.iv.i
  %i.ca = getelementptr i8, ptr %i.bz, i64 40
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !11
  %i.cc = getelementptr i8, ptr %.03136.i, i64 48
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !11
  %i.cd = getelementptr [8 x i8], ptr %.0.i.i20, i64 %indvars.iv.i
  %i.ce = getelementptr i8, ptr %i.cd, i64 48
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !11
  %i.cg = getelementptr i8, ptr %.03136.i, i64 56
  store i64 %i.cf, ptr %i.cg, align 8, !tbaa !11
  %i.ch = getelementptr [8 x i8], ptr %.0.i.i20, i64 %indvars.iv.i
  %i.ci = getelementptr i8, ptr %i.ch, i64 56
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !11
  %i.ck = getelementptr i8, ptr %.03136.i, i64 64 ; 3 uses
  store i64 %i.cj, ptr %i.ck, align 8, !tbaa !11
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %indvars.iv.next.i.7, %.0.i.i.i
  br i1 %exitcond.not.i.7, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !794

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %.preheader.i
  %.031.lcssa.i = phi ptr [ %i.an, %.preheader.i ], [ %i.at, %middle.block ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.ck, %.lr.ph.i ]
  %i.cl = getelementptr i8, ptr %.031.lcssa.i, i64 8
  store ptr %i.cl, ptr %i.a, align 8, !tbaa !73
  %i.cm = tail call fastcc i64 @vm_call_cfunc_with_frame_(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef %i.ag, ptr noundef nonnull %i.d, ptr noundef %i.an)
  br label %vm_call_cfunc_array_argv.exit

bb.p:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.cn = and i64 %i.z, 32768
  %.not.i.i.i23 = icmp eq i64 %i.cn, 0
  br i1 %.not.i.i.i23, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.co = lshr i64 %i.z, 16
  %i.cp = and i64 %i.co, 15
  br label %RHASH_EMPTY_P.exit

bb.r:                                             ; preds = %bb.p
  %i.cq = add i64 %i.t, 24
  %i.cr = inttoptr i64 %i.cq to ptr
  %i.cs = getelementptr i8, ptr %i.cr, i64 16
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !315
  br label %RHASH_EMPTY_P.exit

RHASH_EMPTY_P.exit:                               ; preds = %bb.q, %bb.r
  %.0.i.i24 = phi i64 [ %i.cp, %bb.q ], [ %i.ct, %bb.r ]
  %i.cu = icmp eq i64 %.0.i.i24, 0
  br i1 %i.cu, label %.split, label %bb.s

bb.s:                                             ; preds = %RHASH_EMPTY_P.exit
  %i.cv = tail call i64 @vm_call_cfunc_other(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2)
  br label %vm_call_cfunc_array_argv.exit

.split:                                           ; preds = %RHASH_EMPTY_P.exit
  %i.cw = tail call fastcc i64 @vm_call_cfunc_array_argv(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef 0, i32 noundef 1)
  br label %vm_call_cfunc_array_argv.exit

vm_call_cfunc_array_argv.exit:                    ; preds = %._crit_edge.i, %bb.k, %.split, %bb.s
  %.017 = phi i64 [ %i.cv, %bb.s ], [ %i.cw, %.split ], [ %i.ai, %bb.k ], [ %i.cm, %._crit_edge.i ]
  ret i64 %.017
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal i64 @vm_call_cfunc_only_splat_kw(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2) #11 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73   ; 5 uses
  %i.c = ptrtoaddr ptr %i.b to i64
  %i.d = getelementptr i8, ptr %i.b, i64 -8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !11   ; 5 uses
  %i.f = icmp eq i64 %i.e, 4
  br i1 %i.f, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %i.e, 0
  %i.h = and i64 %i.e, 7
  %i.i = icmp ne i64 %i.h, 0
  %i.j = or i1 %i.g, %i.i
  br i1 %i.j, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.b
  %i.k = inttoptr i64 %i.e to ptr
  %i.l = load i64, ptr %i.k, align 8, !tbaa !77   ; 3 uses
  %i.m = and i64 %i.l, 31
  %i.n = icmp eq i64 %i.m, 8
  br i1 %i.n, label %bb.c, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.o = and i64 %i.l, 32768
  %.not.i.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = lshr i64 %i.l, 16
  %i.q = and i64 %i.p, 15
  br label %RHASH_EMPTY_P.exit

bb.e:                                             ; preds = %bb.c
  %i.r = add i64 %i.e, 24
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = getelementptr i8, ptr %i.s, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !315
  br label %RHASH_EMPTY_P.exit

RHASH_EMPTY_P.exit:                               ; preds = %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.q, %bb.d ], [ %i.u, %bb.e ]
  %i.v = icmp eq i64 %.0.i.i, 0
  br i1 %i.v, label %bb.f, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

bb.f:                                             ; preds = %RHASH_EMPTY_P.exit, %bb.a
  %i.w = getelementptr i8, ptr %i.b, i64 -16      ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !11
  %i.y = inttoptr i64 %i.x to ptr                 ; 4 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !77   ; 2 uses
  %i.aa = and i64 %i.z, 8192
  %.not.i.i.i11 = icmp eq i64 %i.aa, 0            ; 2 uses
  br i1 %.not.i.i.i11, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = lshr i64 %i.z, 15
  %i.ac = and i64 %i.ab, 127
  br label %rb_array_len.exit.i.i

bb.h:                                             ; preds = %bb.f
  %i.ad = getelementptr i8, ptr %i.y, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !27
  br label %rb_array_len.exit.i.i

rb_array_len.exit.i.i:                            ; preds = %bb.h, %bb.g
  %.0.i.i.i = phi i64 [ %i.ac, %bb.g ], [ %i.ae, %bb.h ] ; 12 uses
  %i.af = add i64 %.0.i.i.i, 2147483648
  %.not.i1.i.i = icmp ult i64 %i.af, 4294967296
  br i1 %.not.i1.i.i, label %RARRAY_LENINT.exit.i, label %bb.i

bb.i:                                             ; preds = %rb_array_len.exit.i.i
  tail call void @rb_out_of_int(i64 noundef %.0.i.i.i) #57
  unreachable

RARRAY_LENINT.exit.i:                             ; preds = %rb_array_len.exit.i.i
  %i.ag = trunc nsw i64 %.0.i.i.i to i32
  %i.ah = icmp sgt i64 %.0.i.i.i, 128
  br i1 %i.ah, label %bb.j, label %bb.k, !prof !177

bb.j:                                             ; preds = %RARRAY_LENINT.exit.i
  %i.ai = tail call i64 @vm_call_cfunc_other(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2)
  br label %vm_call_cfunc_array_argv.exit

bb.k:                                             ; preds = %RARRAY_LENINT.exit.i
  br i1 %.not.i.i.i11, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr i8, ptr %i.y, i64 16
  br label %rb_array_const_ptr.exit.i

bb.m:                                             ; preds = %bb.k
  %i.ak = getelementptr i8, ptr %i.y, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !27
  br label %rb_array_const_ptr.exit.i

rb_array_const_ptr.exit.i:                        ; preds = %bb.m, %bb.l
  %.0.i.i12 = phi ptr [ %i.aj, %bb.l ], [ %i.al, %bb.m ] ; 11 uses
  %.0.i.i1217 = ptrtoaddr ptr %.0.i.i12 to i64
  %i.am = getelementptr i8, ptr %2, i64 36
  store i8 0, ptr %i.am, align 4, !tbaa !231
  %i.an = getelementptr i8, ptr %i.b, i64 -24     ; 6 uses
  %i.ao = shl nsw i64 %.0.i.i.i, 3
  %i.ap = getelementptr i8, ptr %i.b, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.ap, i64 56
  %.not.i = icmp ugt ptr %1, %i.aq
  br i1 %.not.i, label %.preheader.i, label %bb.n, !prof !72

.preheader.i:                                     ; preds = %rb_array_const_ptr.exit.i
  %i.ar = icmp sgt i64 %.0.i.i.i, 0
  br i1 %i.ar, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %min.iters.check = icmp ult i64 %.0.i.i.i, 10
  br i1 %min.iters.check, label %.lr.ph.i.preheader20, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %3 = sub i64 %i.c, %.0.i.i1217
  %4 = add i64 %3, -17
  %diff.check = icmp ult i64 %4, 31
  br i1 %diff.check, label %.lr.ph.i.preheader20, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %.0.i.i.i, 9223372036854775804 ; 4 uses
  %i.as = shl i64 %n.vec, 3
  %i.at = getelementptr i8, ptr %i.an, i64 %i.as  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.au = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.an, i64 %i.au ; 2 uses
  %i.av = getelementptr [8 x i8], ptr %.0.i.i12, i64 %index ; 2 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 16
  %wide.load = load <2 x i64>, ptr %i.av, align 8, !tbaa !11
  %wide.load18 = load <2 x i64>, ptr %i.aw, align 8, !tbaa !11
  %i.ax = getelementptr i8, ptr %next.gep, i64 8
  %i.ay = getelementptr i8, ptr %next.gep, i64 24
  store <2 x i64> %wide.load, ptr %i.ax, align 8, !tbaa !11
  store <2 x i64> %wide.load18, ptr %i.ay, align 8, !tbaa !11
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !795

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.0.i.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader20

.lr.ph.i.preheader20:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ] ; 4 uses
  %.03136.i.ph = phi ptr [ %i.an, %vector.memcheck ], [ %i.an, %.lr.ph.i.preheader ], [ %i.at, %middle.block ] ; 2 uses
  %i.ba = sub nsw i64 %.0.i.i.i, %indvars.iv.i.ph
  %xtraiter = and i64 %i.ba, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader20, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader20 ] ; 2 uses
  %.03136.i.prol = phi ptr [ %i.bd, %.lr.ph.i.prol ], [ %.03136.i.ph, %.lr.ph.i.preheader20 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader20 ]
  %i.bb = getelementptr [8 x i8], ptr %.0.i.i12, i64 %indvars.iv.i.prol
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !11
  %i.bd = getelementptr i8, ptr %.03136.i.prol, i64 8 ; 4 uses
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !11
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !796

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader20
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader20 ], [ %i.bd, %.lr.ph.i.prol ]
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader20 ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %.03136.i.unr = phi ptr [ %.03136.i.ph, %.lr.ph.i.preheader20 ], [ %i.bd, %.lr.ph.i.prol ]
  %i.be = sub nsw i64 %indvars.iv.i.ph, %.0.i.i.i
  %i.bf = icmp ugt i64 %i.be, -8
  br i1 %i.bf, label %._crit_edge.i, label %.lr.ph.i

bb.n:                                             ; preds = %rb_array_const_ptr.exit.i
  tail call fastcc void @vm_stackoverflow() #58
  unreachable

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.7, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.03136.i = phi ptr [ %i.ck, %.lr.ph.i ], [ %.03136.i.unr, %.lr.ph.i.prol.loopexit ] ; 8 uses
  %i.bg = getelementptr [8 x i8], ptr %.0.i.i12, i64 %indvars.iv.i
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !11
  %i.bi = getelementptr i8, ptr %.03136.i, i64 8
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !11
  %i.bj = getelementptr [8 x i8], ptr %.0.i.i12, i64 %indvars.iv.i
  %i.bk = getelementptr i8, ptr %i.bj, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !11
  %i.bm = getelementptr i8, ptr %.03136.i, i64 16
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !11
  %i.bn = getelementptr [8 x i8], ptr %.0.i.i12, i64 %indvars.iv.i
  %i.bo = getelementptr i8, ptr %i.bn, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !11
  %i.bq = getelementptr i8, ptr %.03136.i, i64 24
  store i64 %i.bp, ptr %i.bq, align 8, !tbaa !11
  %i.br = getelementptr [8 x i8], ptr %.0.i.i12, i64 %indvars.iv.i
  %i.bs = getelementptr i8, ptr %i.br, i64 24
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !11
  %i.bu = getelementptr i8, ptr %.03136.i, i64 32
  store i64 %i.bt, ptr %i.bu, align 8, !tbaa !11
  %i.bv = getelementptr [8 x i8], ptr %.0.i.i12, i64 %indvars.iv.i
  %i.bw = getelementptr i8, ptr %i.bv, i64 32
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !11
  %i.by = getelementptr i8, ptr %.03136.i, i64 40
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !11
  %i.bz = getelementptr [8 x i8], ptr %.0.i.i12, i64 %indvars.iv.i
  %i.ca = getelementptr i8, ptr %i.bz, i64 40
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !11
  %i.cc = getelementptr i8, ptr %.03136.i, i64 48
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !11
  %i.cd = getelementptr [8 x i8], ptr %.0.i.i12, i64 %indvars.iv.i
  %i.ce = getelementptr i8, ptr %i.cd, i64 48
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !11
  %i.cg = getelementptr i8, ptr %.03136.i, i64 56
  store i64 %i.cf, ptr %i.cg, align 8, !tbaa !11
  %i.ch = getelementptr [8 x i8], ptr %.0.i.i12, i64 %indvars.iv.i
  %i.ci = getelementptr i8, ptr %i.ch, i64 56
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !11
  %i.ck = getelementptr i8, ptr %.03136.i, i64 64 ; 3 uses
  store i64 %i.cj, ptr %i.ck, align 8, !tbaa !11
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %indvars.iv.next.i.7, %.0.i.i.i
  br i1 %exitcond.not.i.7, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !797

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %.preheader.i
  %.031.lcssa.i = phi ptr [ %i.an, %.preheader.i ], [ %i.at, %middle.block ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.ck, %.lr.ph.i ]
  %i.cl = getelementptr i8, ptr %.031.lcssa.i, i64 8
  store ptr %i.cl, ptr %i.a, align 8, !tbaa !73
  %i.cm = tail call fastcc i64 @vm_call_cfunc_with_frame_(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef %i.ag, ptr noundef nonnull %i.w, ptr noundef %i.an)
  br label %vm_call_cfunc_array_argv.exit

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.b, %RHASH_EMPTY_P.exit, %rbimpl_RB_TYPE_P_fastpath.exit
  %i.cn = tail call i64 @vm_call_cfunc_other(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2)
  br label %vm_call_cfunc_array_argv.exit

vm_call_cfunc_array_argv.exit:                    ; preds = %._crit_edge.i, %bb.j, %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %.0 = phi i64 [ %i.cn, %rbimpl_RB_TYPE_P_fastpath.exit.thread ], [ %i.ai, %bb.j ], [ %i.cm, %._crit_edge.i ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @vm_call_cfunc_other(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2) #2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !226
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !225  ; 4 uses
  tail call fastcc void @CALLER_SETUP_ARG(ptr noundef %1, ptr noundef nonnull %2, ptr noundef %i.b, i32 noundef -3)
  %i.c = getelementptr i8, ptr %2, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !573  ; 3 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.b, !prof !72

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc i32 @RARRAY_LENINT(i64 noundef %i.d)
  %i.f = inttoptr i64 %i.d to ptr                 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !77
  %i.h = and i64 %i.g, 8192
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.f, i64 16
  br label %rb_array_const_ptr.exit

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %i.f, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !27
  br label %rb_array_const_ptr.exit

rb_array_const_ptr.exit:                          ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.i, %bb.c ], [ %i.k, %bb.d ]
  %i.l = getelementptr i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !73
  %i.n = getelementptr i8, ptr %i.m, i64 -16
  %i.o = tail call fastcc i64 @vm_call_cfunc_with_frame_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %i.e, ptr noundef %.0.i, ptr noundef %i.n)
  br label %bb.m

bb.e:                                             ; preds = %bb.a
  %i.p = getelementptr i8, ptr %2, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !233
  %i.r = ptrtoint ptr %i.b to i64                 ; 4 uses
  %.not.i.i.i = trunc i64 %i.r to i1              ; 2 uses
  br i1 %.not.i.i.i, label %vm_ci_flag.exit.i, label %vm_ci_flag.exit.thread.i

vm_ci_flag.exit.i:                                ; preds = %bb.e
  %i.s = and i64 %i.r, 65536
  %.not.i23 = icmp eq i64 %i.s, 0
  br i1 %.not.i23, label %bb.f, label %CC_SET_FASTPATH.exit

vm_ci_flag.exit.thread.i:                         ; preds = %bb.e
  %i.t = getelementptr i8, ptr %i.b, i64 24
  %i.u = load i64, ptr %i.t, align 8, !tbaa !173, !alias.scope !798 ; 2 uses
  %i.v = and i64 %i.u, 1
  %.not6.i = icmp eq i64 %i.v, 0
  br i1 %.not6.i, label %.thread.i, label %CC_SET_FASTPATH.exit

bb.f:                                             ; preds = %vm_ci_flag.exit.i
  %i.w = trunc i64 %i.r to i32
  %i.x = lshr i32 %i.w, 16
  br label %rb_splat_or_kwargs_p.exit

.thread.i:                                        ; preds = %vm_ci_flag.exit.thread.i
  %i.y = trunc i64 %i.u to i32
  br label %rb_splat_or_kwargs_p.exit

rb_splat_or_kwargs_p.exit:                        ; preds = %bb.f, %.thread.i
  %.0.i3.i = phi i32 [ %i.x, %bb.f ], [ %i.y, %.thread.i ]
  %i.z = and i32 %.0.i3.i, 96
  %.not25 = icmp eq i32 %i.z, 0
  br i1 %.not25, label %bb.g, label %CC_SET_FASTPATH.exit, !prof !168

bb.g:                                             ; preds = %rb_splat_or_kwargs_p.exit
  %i.aa = getelementptr i8, ptr %2, i64 36
  %i.ab = load i8, ptr %i.aa, align 4, !tbaa !231, !range !114, !noundef !64
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %CC_SET_FASTPATH.exit, label %bb.h, !prof !353

bb.h:                                             ; preds = %bb.g
  br i1 %.not.i.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ad = trunc i64 %i.r to i32
  %i.ae = lshr i32 %i.ad, 16
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.af = getelementptr i8, ptr %i.b, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !173
  %i.ah = trunc i64 %i.ag to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0.i24 = phi i32 [ %i.ae, %bb.i ], [ %i.ah, %bb.j ]
  %i.ai = and i32 %.0.i24, 8192
  %.not22 = icmp eq i32 %i.ai, 0
  br i1 %.not22, label %bb.l, label %CC_SET_FASTPATH.exit, !prof !369

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr i8, ptr %i.q, i64 24
  store ptr @vm_call_cfunc_with_frame, ptr %i.aj, align 8, !tbaa !176
  br label %CC_SET_FASTPATH.exit

CC_SET_FASTPATH.exit:                             ; preds = %vm_ci_flag.exit.thread.i, %vm_ci_flag.exit.i, %rb_splat_or_kwargs_p.exit, %bb.g, %bb.k, %bb.l
  %i.ak = getelementptr i8, ptr %2, i64 32
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !230 ; 2 uses
  %i.am = getelementptr i8, ptr %1, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !73
  %i.ao = sext i32 %i.al to i64
  %i.ap = sub nsw i64 0, %i.ao
  %i.aq = getelementptr [8 x i8], ptr %i.an, i64 %i.ap ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 -8
  %i.as = tail call fastcc i64 @vm_call_cfunc_with_frame_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull readonly %2, i32 noundef %i.al, ptr noundef %i.aq, ptr noundef %i.ar)
  br label %bb.m

bb.m:                                             ; preds = %CC_SET_FASTPATH.exit, %rb_array_const_ptr.exit
  %.0 = phi i64 [ %i.o, %rb_array_const_ptr.exit ], [ %i.as, %CC_SET_FASTPATH.exit ]
  ret i64 %.0
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc i64 @vm_call_cfunc_array_argv(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2, i32 noundef range(i32 0, 2) %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73   ; 4 uses
  %i.c = ptrtoaddr ptr %i.b to i64
  %i.d = xor i32 %3, -1
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr [8 x i8], ptr %i.b, i64 %i.e
  %i.g = load i64, ptr %i.f, align 8, !tbaa !11
  %i.h = inttoptr i64 %i.g to ptr                 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !77   ; 2 uses
  %i.j = and i64 %i.i, 8192
  %.not.i.i = icmp eq i64 %i.j, 0                 ; 2 uses
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = lshr i64 %i.i, 15
  %i.l = and i64 %i.k, 127
  br label %rb_array_len.exit.i

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr i8, ptr %i.h, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !27
  br label %rb_array_len.exit.i

rb_array_len.exit.i:                              ; preds = %bb.c, %bb.b
  %.0.i.i = phi i64 [ %i.l, %bb.b ], [ %i.n, %bb.c ] ; 3 uses
  %i.o = add i64 %.0.i.i, 2147483648
  %.not.i1.i = icmp ult i64 %i.o, 4294967296
  br i1 %.not.i1.i, label %RARRAY_LENINT.exit, label %bb.d

bb.d:                                             ; preds = %rb_array_len.exit.i
  tail call void @rb_out_of_int(i64 noundef %.0.i.i) #57
  unreachable

RARRAY_LENINT.exit:                               ; preds = %rb_array_len.exit.i
  %i.p = trunc nsw i64 %.0.i.i to i32
  %i.q = sub i32 %i.p, %4                         ; 6 uses
  %i.r = icmp sgt i32 %i.q, 128
  br i1 %i.r, label %bb.e, label %bb.f, !prof !177

bb.e:                                             ; preds = %RARRAY_LENINT.exit
  %i.s = tail call i64 @vm_call_cfunc_other(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2)
  br label %bb.j

bb.f:                                             ; preds = %RARRAY_LENINT.exit
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr i8, ptr %i.h, i64 16
  br label %rb_array_const_ptr.exit

bb.h:                                             ; preds = %bb.f
  %i.u = getelementptr i8, ptr %i.h, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !27
  br label %rb_array_const_ptr.exit

rb_array_const_ptr.exit:                          ; preds = %bb.g, %bb.h
  %.0.i = phi ptr [ %i.t, %bb.g ], [ %i.v, %bb.h ] ; 11 uses
  %.0.i40 = ptrtoaddr ptr %.0.i to i64
  %i.w = getelementptr i8, ptr %2, i64 36
  store i8 0, ptr %i.w, align 4, !tbaa !231
  %i.x = getelementptr i8, ptr %i.b, i64 -16
  %i.y = zext nneg i32 %3 to i64                  ; 2 uses
  %i.z = sub nsw i64 0, %i.y
  %i.aa = getelementptr [8 x i8], ptr %i.x, i64 %i.z ; 7 uses
  %i.ab = sext i32 %i.q to i64
  %i.ac = getelementptr [8 x i8], ptr %i.b, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.ac, i64 56
  %.not = icmp ugt ptr %1, %i.ad
  br i1 %.not, label %.preheader, label %bb.i, !prof !72

.preheader:                                       ; preds = %rb_array_const_ptr.exit
  %i.ae = icmp sgt i32 %i.q, 0
  br i1 %i.ae, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.q to i64    ; 5 uses
  %min.iters.check = icmp ult i32 %i.q, 16
  br i1 %min.iters.check, label %.lr.ph.preheader43, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.af = shl nuw nsw i64 %i.y, 3
  %i.ag = add i64 %i.af, %.0.i40
  %i.ah = sub i64 %i.c, %i.ag
  %5 = add i64 %i.ah, -9
  %diff.check = icmp ult i64 %5, 31
  br i1 %diff.check, label %.lr.ph.preheader43, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 4 uses
  %i.ai = shl nuw nsw i64 %n.vec, 3
  %i.aj = getelementptr i8, ptr %i.aa, i64 %i.ai  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ak = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.aa, i64 %i.ak ; 2 uses
  %i.al = getelementptr [8 x i8], ptr %.0.i, i64 %index ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 16
  %wide.load = load <2 x i64>, ptr %i.al, align 8, !tbaa !11
  %wide.load41 = load <2 x i64>, ptr %i.am, align 8, !tbaa !11
  %i.an = getelementptr i8, ptr %next.gep, i64 8
  %i.ao = getelementptr i8, ptr %next.gep, i64 24
  store <2 x i64> %wide.load, ptr %i.an, align 8, !tbaa !11
  store <2 x i64> %wide.load41, ptr %i.ao, align 8, !tbaa !11
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !801

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader43

.lr.ph.preheader43:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 4 uses
  %.03136.ph = phi ptr [ %i.aa, %vector.memcheck ], [ %i.aa, %.lr.ph.preheader ], [ %i.aj, %middle.block ] ; 2 uses
  %i.aq = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.aq, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader43, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader43 ] ; 2 uses
  %.03136.prol = phi ptr [ %i.at, %.lr.ph.prol ], [ %.03136.ph, %.lr.ph.preheader43 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader43 ]
  %i.ar = getelementptr [8 x i8], ptr %.0.i, i64 %indvars.iv.prol
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !11
  %i.at = getelementptr i8, ptr %.03136.prol, i64 8 ; 4 uses
  store i64 %i.as, ptr %i.at, align 8, !tbaa !11
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !802

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader43
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader43 ], [ %i.at, %.lr.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader43 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.03136.unr = phi ptr [ %.03136.ph, %.lr.ph.preheader43 ], [ %i.at, %.lr.ph.prol ]
  %i.au = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.av = icmp ugt i64 %i.au, -8
  br i1 %i.av, label %._crit_edge, label %.lr.ph

bb.i:                                             ; preds = %rb_array_const_ptr.exit
  tail call fastcc void @vm_stackoverflow() #58
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.03136 = phi ptr [ %i.ca, %.lr.ph ], [ %.03136.unr, %.lr.ph.prol.loopexit ] ; 8 uses
  %i.aw = getelementptr [8 x i8], ptr %.0.i, i64 %indvars.iv
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !11
  %i.ay = getelementptr i8, ptr %.03136, i64 8
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !11
  %i.az = getelementptr [8 x i8], ptr %.0.i, i64 %indvars.iv
  %i.ba = getelementptr i8, ptr %i.az, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !11
  %i.bc = getelementptr i8, ptr %.03136, i64 16
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !11
  %i.bd = getelementptr [8 x i8], ptr %.0.i, i64 %indvars.iv
  %i.be = getelementptr i8, ptr %i.bd, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !11
  %i.bg = getelementptr i8, ptr %.03136, i64 24
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !11
  %i.bh = getelementptr [8 x i8], ptr %.0.i, i64 %indvars.iv
  %i.bi = getelementptr i8, ptr %i.bh, i64 24
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !11
  %i.bk = getelementptr i8, ptr %.03136, i64 32
  store i64 %i.bj, ptr %i.bk, align 8, !tbaa !11
  %i.bl = getelementptr [8 x i8], ptr %.0.i, i64 %indvars.iv
  %i.bm = getelementptr i8, ptr %i.bl, i64 32
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !11
  %i.bo = getelementptr i8, ptr %.03136, i64 40
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !11
  %i.bp = getelementptr [8 x i8], ptr %.0.i, i64 %indvars.iv
  %i.bq = getelementptr i8, ptr %i.bp, i64 40
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !11
  %i.bs = getelementptr i8, ptr %.03136, i64 48
  store i64 %i.br, ptr %i.bs, align 8, !tbaa !11
  %i.bt = getelementptr [8 x i8], ptr %.0.i, i64 %indvars.iv
  %i.bu = getelementptr i8, ptr %i.bt, i64 48
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !11
  %i.bw = getelementptr i8, ptr %.03136, i64 56
  store i64 %i.bv, ptr %i.bw, align 8, !tbaa !11
  %i.bx = getelementptr [8 x i8], ptr %.0.i, i64 %indvars.iv
  %i.by = getelementptr i8, ptr %i.bx, i64 56
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !11
  %i.ca = getelementptr i8, ptr %.03136, i64 64   ; 3 uses
  store i64 %i.bz, ptr %i.ca, align 8, !tbaa !11
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7, %wide.trip.count
  br i1 %exitcond.not.7, label %._crit_edge, label %.lr.ph, !llvm.loop !803

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %.preheader
  %.031.lcssa = phi ptr [ %i.aa, %.preheader ], [ %i.aj, %middle.block ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.ca, %.lr.ph ]
  %i.cb = getelementptr i8, ptr %.031.lcssa, i64 8
  store ptr %i.cb, ptr %i.a, align 8, !tbaa !73
  %i.cc = getelementptr i8, ptr %i.aa, i64 8
  %i.cd = tail call fastcc i64 @vm_call_cfunc_with_frame_(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef %i.q, ptr noundef %i.cc, ptr noundef %i.aa)
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.e
  %.0 = phi i64 [ %i.s, %bb.e ], [ %i.cd, %._crit_edge ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @vm_call_cfunc_with_frame_(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #2 {
bb.a:
  %6 = alloca %struct.rb_trace_arg_struct, align 8 ; 13 uses
  %7 = alloca %struct.rb_trace_arg_struct, align 8 ; 13 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !226
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !225  ; 4 uses
  %i.c = getelementptr i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !233
  %i.e = getelementptr i8, ptr %i.d, i64 16
  %.val = load ptr, ptr %i.e, align 8, !tbaa !187 ; 4 uses
  %i.f = getelementptr i8, ptr %.val, i64 16      ; 2 uses
  %.val51 = load ptr, ptr %i.f, align 8, !tbaa !83 ; 4 uses
  %i.g = getelementptr i8, ptr %.val51, i64 8
  %i.h = getelementptr i8, ptr %2, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !229  ; 4 uses
  %i.j = getelementptr i8, ptr %2, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !228
  %i.l = getelementptr i8, ptr %2, i64 36
  %i.m = load i8, ptr %i.l, align 4, !tbaa !231, !range !114, !noundef !64
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.b, label %rb_ec_hooks.exit, !prof !177

bb.b:                                             ; preds = %bb.a
  br label %rb_ec_hooks.exit

rb_ec_hooks.exit:                                 ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ 1431635075, %bb.b ], [ 1431634051, %bb.a ]
  %i.o = getelementptr i8, ptr %0, i64 48         ; 3 uses
  %.val53 = load ptr, ptr %i.o, align 8, !tbaa !30, !nonnull !64, !noundef !64
  %i.p = getelementptr i8, ptr %.val53, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !264  ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 16
  %i.s = getelementptr i8, ptr %i.q, i64 24
  %i.t = load i32, ptr %i.s, align 8, !tbaa !527
  %i.u = and i32 %i.t, 32
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %bb.f, label %bb.c, !prof !72

bb.c:                                             ; preds = %rb_ec_hooks.exit
  %i.v = getelementptr i8, ptr %.val51, i64 32
  %i.w = load i64, ptr %i.v, align 8, !tbaa !205
  %i.x = ptrtoint ptr %i.b to i64                 ; 2 uses
  %.not.i.i = trunc i64 %i.x to i1
  br i1 %.not.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.y = lshr i64 %i.x, 32
  br label %vm_ci_mid.exit

bb.e:                                             ; preds = %bb.c
  %i.z = getelementptr i8, ptr %i.b, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !163
  br label %vm_ci_mid.exit

vm_ci_mid.exit:                                   ; preds = %bb.d, %bb.e
  %.0.i = phi i64 [ %i.y, %bb.d ], [ %i.aa, %bb.e ]
  %i.ab = getelementptr i8, ptr %.val, i64 32
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !405
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store i32 32, ptr %7, align 8, !tbaa !528
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %0, ptr %i.ad, align 8, !tbaa !530
  %i.ae = getelementptr i8, ptr %0, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !70
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !531
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 %i.i, ptr %i.ah, align 8, !tbaa !532
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 %i.w, ptr %i.ai, align 8, !tbaa !533
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 %.0.i, ptr %i.aj, align 8, !tbaa !693
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 48
  store i64 %i.ac, ptr %i.ak, align 8, !tbaa !694
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 56
  store i64 36, ptr %i.al, align 8, !tbaa !534
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 72
  store i64 36, ptr %i.am, align 8, !tbaa !535
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 64
end_hunk_5
begin_hunk_6_@vm_call_cfunc_with_frame:bb.a
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !230  ; 2 uses
  %i.c = getelementptr i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !73
  %i.e = sext i32 %i.b to i64
  %i.f = sub nsw i64 0, %i.e
  %i.g = getelementptr [8 x i8], ptr %i.d, i64 %i.f ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -8
  %i.i = tail call fastcc i64 @vm_call_cfunc_with_frame_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %i.b, ptr noundef %i.g, ptr noundef %i.h)
  ret i64 %i.i
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc i64 @vm_caller_setup_keyword_hash(ptr noundef %0, i64 noundef %1) unnamed_addr #11 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %i.b = and i64 %1, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit, !prof !353

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.a
  %i.e = inttoptr i64 %1 to ptr
  %i.f = load i64, ptr %i.e, align 8, !tbaa !77   ; 3 uses
  %i.g = and i64 %i.f, 31
  %i.h = icmp eq i64 %i.g, 8
  br i1 %i.h, label %bb.c, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, !prof !369

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.a, %rbimpl_RB_TYPE_P_fastpath.exit
  %.not7 = icmp eq i64 %1, 4
  br i1 %.not7, label %bb.i, label %bb.b

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %i.i = tail call i64 @rb_to_hash_type(i64 noundef %1) #23
  br label %.sink.split

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.j = ptrtoint ptr %0 to i64                   ; 2 uses
  %.not.i.i = trunc i64 %i.j to i1
  br i1 %.not.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = trunc i64 %i.j to i32
  %i.l = lshr i32 %i.k, 16
  br label %vm_ci_flag.exit

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %0, i64 24
  %i.n = load i64, ptr %i.m, align 8, !tbaa !173
  %i.o = trunc i64 %i.n to i32
  br label %vm_ci_flag.exit

vm_ci_flag.exit:                                  ; preds = %bb.d, %bb.e
  %.0.i8 = phi i32 [ %i.l, %bb.d ], [ %i.o, %bb.e ]
  %i.p = and i32 %.0.i8, 2048
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.f, label %bb.i

bb.f:                                             ; preds = %vm_ci_flag.exit
  %i.q = and i64 %i.f, 32768
  %.not.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = lshr i64 %i.f, 16
  %i.s = and i64 %i.r, 15
  br label %RHASH_EMPTY_P.exit

bb.h:                                             ; preds = %bb.f
  %i.t = add i64 %1, 24
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = getelementptr i8, ptr %i.u, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !315
  br label %RHASH_EMPTY_P.exit

RHASH_EMPTY_P.exit:                               ; preds = %bb.g, %bb.h
  %.0.i.i = phi i64 [ %i.s, %bb.g ], [ %i.w, %bb.h ]
  %i.x = icmp eq i64 %.0.i.i, 0
  br i1 %i.x, label %bb.i, label %.sink.split

.sink.split:                                      ; preds = %RHASH_EMPTY_P.exit, %bb.b
  %.sink = phi i64 [ %i.i, %bb.b ], [ %1, %RHASH_EMPTY_P.exit ]
  %i.y = tail call i64 @rb_hash_dup(i64 noundef %.sink) #23
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %vm_ci_flag.exit, %RHASH_EMPTY_P.exit, %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %.0 = phi i64 [ %1, %RHASH_EMPTY_P.exit ], [ 4, %rbimpl_RB_TYPE_P_fastpath.exit.thread ], [ %1, %vm_ci_flag.exit ], [ %i.y, %.sink.split ]
  ret i64 %.0
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @vm_caller_setup_arg_splat(ptr nofree noundef captures(address) %0, ptr nofree noundef captures(none) %1, i64 noundef %2, i32 noundef %3) unnamed_addr #11 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  store i64 %2, ptr %i.a, align 8, !tbaa !11
  %i.c = icmp eq i64 %2, 4
  br i1 %i.c, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = inttoptr i64 %2 to ptr                   ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !77   ; 2 uses
  %i.f = and i64 %i.e, 8192
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.d, i64 16
  %i.h = lshr i64 %i.e, 15
  %i.i = and i64 %i.h, 127
  br label %rb_array_len.exit

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %i.d, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !27
  %i.l = getelementptr i8, ptr %i.d, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !27
  br label %rb_array_len.exit

rb_array_len.exit:                                ; preds = %bb.c, %bb.d
  %.0.i53 = phi ptr [ %i.g, %bb.c ], [ %i.k, %bb.d ] ; 12 uses
  %.0.i51 = phi i64 [ %i.i, %bb.c ], [ %i.m, %bb.d ] ; 4 uses
  %.0.i5359 = ptrtoaddr ptr %.0.i53 to i64
  %i.n = getelementptr i8, ptr %1, i64 32         ; 4 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !230  ; 5 uses
  %i.p = icmp slt i32 %3, -1
  %i.q = sext i32 %i.o to i64                     ; 3 uses
  %i.r = add i64 %.0.i51, %i.q                    ; 3 uses
  %i.s = icmp sgt i64 %i.r, 128
  %i.t = select i1 %i.p, i1 %i.s, i1 false
  br i1 %i.t, label %bb.e, label %bb.f, !prof !177

bb.e:                                             ; preds = %rb_array_len.exit
  %i.u = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !73
  %i.w = sub nsw i64 0, %i.q
  %i.x = getelementptr [8 x i8], ptr %i.v, i64 %i.w
  %i.y = add nuw i64 %i.r, 1
  %i.z = tail call i64 @rb_ary_hidden_new(i64 noundef %i.y) #23 ; 4 uses
  %i.aa = tail call i64 @rb_ary_cat(i64 noundef %i.z, ptr noundef %i.x, i64 noundef %i.q) #23 ; 0 uses
  %i.ab = tail call i64 @rb_ary_cat(i64 noundef %i.z, ptr noundef %.0.i53, i64 noundef %.0.i51) #23 ; 0 uses
  %i.ac = add i32 %i.o, -1
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !73
  %i.ae = sext i32 %i.ac to i64
  %i.af = sub nsw i64 0, %i.ae
  %i.ag = getelementptr [8 x i8], ptr %i.ad, i64 %i.af ; 2 uses
  store ptr %i.ag, ptr %i.u, align 8, !tbaa !73
  %i.ah = getelementptr i8, ptr %i.ag, i64 -8
  store i64 %i.z, ptr %i.ah, align 8, !tbaa !11
  store i32 1, ptr %i.n, align 8, !tbaa !230
  %i.ai = getelementptr i8, ptr %1, i64 40
  store i64 %i.z, ptr %i.ai, align 8, !tbaa !573
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr %i.a, ptr %i.b, align 8, !tbaa !75
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.b) #23, !srcloc !804
  %i.aj = load ptr, ptr %i.b, align 8, !tbaa !75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.ak = load volatile i64, ptr %i.aj, align 8, !tbaa !11 ; 0 uses
  br label %bb.l

bb.f:                                             ; preds = %rb_array_len.exit
  %i.al = icmp sgt i32 %3, -1
  %i.am = zext nneg i32 %3 to i64
  %i.an = icmp sgt i64 %i.r, %i.am
  %or.cond = select i1 %i.al, i1 %i.an, i1 false  ; 2 uses
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ao = sub i32 %3, %i.o                        ; 2 uses
  %i.ap = add i32 %i.ao, 1
  %i.aq = sext i32 %i.ap to i64
  %i.ar = trunc i64 %.0.i51 to i32
  %.neg = xor i32 %i.ao, -1
  %i.as = add i32 %i.o, %i.ar
  %i.at = add i32 %i.as, %.neg                    ; 2 uses
  store i32 %i.at, ptr %i.n, align 8, !tbaa !230
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.au = getelementptr i8, ptr %1, i64 40
  store i64 0, ptr %i.au, align 8, !tbaa !573
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.av = phi i32 [ %i.at, %bb.g ], [ %i.o, %bb.h ]
  %.046 = phi i64 [ %i.aq, %bb.g ], [ %.0.i51, %bb.h ] ; 9 uses
  %i.aw = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !73 ; 5 uses
  %i.ay = ptrtoaddr ptr %i.ax to i64
  %i.az = getelementptr [8 x i8], ptr %i.ax, i64 %.046
  %i.ba = getelementptr i8, ptr %i.az, i64 56
  %.not = icmp ugt ptr %0, %i.ba
  br i1 %.not, label %.preheader, label %bb.j, !prof !72

.preheader:                                       ; preds = %bb.i
  %i.bb = icmp sgt i64 %.046, 0
  br i1 %i.bb, label %.lr.ph.preheader, label %bb.k

.lr.ph.preheader:                                 ; preds = %.preheader
  %min.iters.check = icmp ult i64 %.046, 8
  %i.bc = sub i64 %.0.i5359, %i.ay
  %diff.check = icmp ugt i64 %i.bc, -32
  %or.cond62 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond62, label %.lr.ph.preheader63, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %.046, 9223372036854775804     ; 4 uses
  %i.bd = shl i64 %n.vec, 3
  %i.be = getelementptr i8, ptr %i.ax, i64 %i.bd  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bf = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.ax, i64 %i.bf ; 2 uses
  %i.bg = getelementptr [8 x i8], ptr %.0.i53, i64 %index ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 16
  %wide.load = load <2 x i64>, ptr %i.bg, align 8, !tbaa !11
  %wide.load60 = load <2 x i64>, ptr %i.bh, align 8, !tbaa !11
  %i.bi = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !11
  store <2 x i64> %wide.load60, ptr %i.bi, align 8, !tbaa !11
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !805

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.046, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader63

.lr.ph.preheader63:                               ; preds = %.lr.ph.preheader, %middle.block
  %.ph = phi ptr [ %i.ax, %.lr.ph.preheader ], [ %i.be, %middle.block ] ; 2 uses
  %.04555.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 4 uses
  %i.bk = sub nsw i64 %.046, %.04555.ph
  %xtraiter = and i64 %i.bk, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader63, %.lr.ph.prol
  %i.bl = phi ptr [ %i.bo, %.lr.ph.prol ], [ %.ph, %.lr.ph.preheader63 ] ; 2 uses
  %.04555.prol = phi i64 [ %i.bp, %.lr.ph.prol ], [ %.04555.ph, %.lr.ph.preheader63 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader63 ]
  %i.bm = getelementptr [8 x i8], ptr %.0.i53, i64 %.04555.prol
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !11
  %i.bo = getelementptr i8, ptr %i.bl, i64 8      ; 3 uses
  store i64 %i.bn, ptr %i.bl, align 8, !tbaa !11
  %i.bp = add nuw nsw i64 %.04555.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !806

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader63
  %.lcssa64.unr = phi ptr [ poison, %.lr.ph.preheader63 ], [ %i.bo, %.lr.ph.prol ]
  %.unr = phi ptr [ %.ph, %.lr.ph.preheader63 ], [ %i.bo, %.lr.ph.prol ]
  %.04555.unr = phi i64 [ %.04555.ph, %.lr.ph.preheader63 ], [ %i.bp, %.lr.ph.prol ]
  %i.bq = sub nsw i64 %.04555.ph, %.046
  %i.br = icmp ugt i64 %i.bq, -8
  br i1 %i.br, label %._crit_edge, label %.lr.ph

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @vm_stackoverflow() #58
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %i.bs = phi ptr [ %i.cx, %.lr.ph ], [ %.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.04555 = phi i64 [ %i.cy, %.lr.ph ], [ %.04555.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.bt = getelementptr [8 x i8], ptr %.0.i53, i64 %.04555
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !11
  %i.bv = getelementptr i8, ptr %i.bs, i64 8
  store i64 %i.bu, ptr %i.bs, align 8, !tbaa !11
  %i.bw = getelementptr [8 x i8], ptr %.0.i53, i64 %.04555
  %i.bx = getelementptr i8, ptr %i.bw, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !11
  %i.bz = getelementptr i8, ptr %i.bs, i64 16
  store i64 %i.by, ptr %i.bv, align 8, !tbaa !11
  %i.ca = getelementptr [8 x i8], ptr %.0.i53, i64 %.04555
  %i.cb = getelementptr i8, ptr %i.ca, i64 16
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !11
  %i.cd = getelementptr i8, ptr %i.bs, i64 24
  store i64 %i.cc, ptr %i.bz, align 8, !tbaa !11
  %i.ce = getelementptr [8 x i8], ptr %.0.i53, i64 %.04555
  %i.cf = getelementptr i8, ptr %i.ce, i64 24
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !11
  %i.ch = getelementptr i8, ptr %i.bs, i64 32
  store i64 %i.cg, ptr %i.cd, align 8, !tbaa !11
  %i.ci = getelementptr [8 x i8], ptr %.0.i53, i64 %.04555
  %i.cj = getelementptr i8, ptr %i.ci, i64 32
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !11
  %i.cl = getelementptr i8, ptr %i.bs, i64 40
  store i64 %i.ck, ptr %i.ch, align 8, !tbaa !11
  %i.cm = getelementptr [8 x i8], ptr %.0.i53, i64 %.04555
  %i.cn = getelementptr i8, ptr %i.cm, i64 40
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !11
  %i.cp = getelementptr i8, ptr %i.bs, i64 48
  store i64 %i.co, ptr %i.cl, align 8, !tbaa !11
  %i.cq = getelementptr [8 x i8], ptr %.0.i53, i64 %.04555
  %i.cr = getelementptr i8, ptr %i.cq, i64 48
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !11
  %i.ct = getelementptr i8, ptr %i.bs, i64 56
  store i64 %i.cs, ptr %i.cp, align 8, !tbaa !11
  %i.cu = getelementptr [8 x i8], ptr %.0.i53, i64 %.04555
  %i.cv = getelementptr i8, ptr %i.cu, i64 56
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !11
  %i.cx = getelementptr i8, ptr %i.bs, i64 64     ; 2 uses
  store i64 %i.cw, ptr %i.ct, align 8, !tbaa !11
  %i.cy = add nuw nsw i64 %.04555, 8              ; 2 uses
  %exitcond.not.7 = icmp eq i64 %i.cy, %.046
  br i1 %exitcond.not.7, label %._crit_edge, label %.lr.ph, !llvm.loop !807

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block
  %.lcssa = phi ptr [ %i.be, %middle.block ], [ %.lcssa64.unr, %.lr.ph.prol.loopexit ], [ %i.cx, %.lr.ph ]
  store ptr %.lcssa, ptr %i.aw, align 8, !tbaa !73
  %i.cz = trunc i64 %.046 to i32
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %.preheader
  %.045.lcssa = phi i32 [ %i.cz, %._crit_edge ], [ 0, %.preheader ]
  %i.da = add i32 %i.av, %.045.lcssa
  store i32 %i.da, ptr %i.n, align 8, !tbaa !230
  br label %bb.l

bb.l:                                             ; preds = %bb.e, %bb.k, %bb.a
  %.2 = phi i1 [ false, %bb.a ], [ false, %bb.e ], [ %or.cond, %bb.k ]
  ret i1 %.2
}

declare i64 @rb_ary_last(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @vm_caller_setup_arg_kw(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #11 {
vm_ci_kwarg.exit23:
  call void @llvm.assume(i1 true) [ "align"(ptr %2, i64 2) ]
  %i.a = getelementptr i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !238  ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.b, align 8, !tbaa !7    ; 4 uses
  %i.e = sext i32 %i.d to i64                     ; 2 uses
  %i.f = tail call i64 @rb_hash_new_with_size(i64 noundef %i.e) #23 ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !73   ; 3 uses
  %i.i = icmp sgt i32 %i.d, 0
  %i.j = sub nsw i64 0, %i.e                      ; 2 uses
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %vm_ci_kwarg.exit23
  %i.k = getelementptr [8 x i8], ptr %i.h, i64 %i.j
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph, %bb.a
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.a ] ; 3 uses
  %i.l = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.m = load i64, ptr %i.l, align 8, !tbaa !11
  %i.n = getelementptr [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.o = load i64, ptr %i.n, align 8, !tbaa !11
  %i.p = tail call i64 @rb_hash_aset(i64 noundef %i.f, i64 noundef %i.m, i64 noundef %i.o) #23 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.a, !llvm.loop !808

._crit_edge.loopexit:                             ; preds = %bb.a
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !73
  br label %._crit_edge

._crit_edge:                                      ; preds = %vm_ci_kwarg.exit23, %._crit_edge.loopexit
  %i.q = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.h, %vm_ci_kwarg.exit23 ]
  %i.r = getelementptr [8 x i8], ptr %i.h, i64 %i.j
  store i64 %i.f, ptr %i.r, align 8, !tbaa !11
  %i.s = add i32 %i.d, -1                         ; 2 uses
  %i.t = sext i32 %i.s to i64
  %i.u = sub nsw i64 0, %i.t
  %i.v = getelementptr [8 x i8], ptr %i.q, i64 %i.u
  store ptr %i.v, ptr %i.g, align 8, !tbaa !73
  %i.w = getelementptr i8, ptr %1, i64 32         ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !230
  %i.y = sub i32 %i.x, %i.s
  store i32 %i.y, ptr %i.w, align 8, !tbaa !230
  %i.z = getelementptr i8, ptr %1, i64 36
  store i8 1, ptr %i.z, align 4, !tbaa !231
  ret void
}

declare i64 @rb_ary_cat(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind sspstrong uwtable
define internal fastcc noundef i64 @vm_setivar_slowpath_attr(i64 noundef %0, i64 noundef %1, i64 noundef returned %2, ptr nofree noundef captures(none) %3) unnamed_addr #30 {
bb.a:
  %i.a = icmp ne i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp eq i64 %i.b, 0
  %.not3.i.i = and i1 %i.a, %i.c
  br i1 %.not3.i.i, label %RB_OBJ_FROZEN.exit.i, label %RB_OBJ_FROZEN.exit.thread.i, !prof !168

RB_OBJ_FROZEN.exit.i:                             ; preds = %bb.a
  %i.d = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !77   ; 3 uses
  %i.f = and i64 %i.e, 2048
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, label %RB_OBJ_FROZEN.exit.thread.i, !prof !369

RB_OBJ_FROZEN.exit.thread.i:                      ; preds = %RB_OBJ_FROZEN.exit.i, %bb.a
  tail call void @rb_error_frozen_object(i64 noundef %0) #42
end_hunk_6
begin_hunk_7_@check_definition_visibility:bb.a
bb.j:                                             ; preds = %bb.i
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !11
  %i.ac = inttoptr i64 %i.ab to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i

RCLASS_EXT_READABLE_LOOKUP.exit17.i:              ; preds = %bb.j, %bb.i, %RCLASS_CLASSEXT_TBL.exit.i.i11.i, %.split7.i
  %.0.i.i14.i = phi ptr [ %i.ac, %bb.j ], [ null, %bb.i ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i ], [ null, %.split7.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %.not.i15.i = icmp eq ptr %.0.i.i14.i, null
  %i.ad = getelementptr i8, ptr %i.k, i64 24
  %.0.i16.i = select i1 %.not.i15.i, ptr %i.ad, ptr %.0.i.i14.i
  br label %RCLASS_EXT_READABLE.exit

bb.k:                                             ; preds = %bb.h
  %i.ae = getelementptr i8, ptr %i.k, i64 24
  br label %RCLASS_EXT_READABLE.exit

RCLASS_EXT_READABLE.exit:                         ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, %.split.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i, %bb.k
  %.0.i = phi ptr [ %i.q, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i ], [ %i.ae, %bb.k ], [ %i.s, %.split.i ], [ %.0.i16.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i ]
  %i.af = getelementptr i8, ptr %.0.i, i64 96
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !406
  br label %bb.l

bb.l:                                             ; preds = %bb.e, %RCLASS_EXT_READABLE.exit
  %.016 = phi i64 [ %i.ag, %RCLASS_EXT_READABLE.exit ], [ %0, %bb.e ]
  %i.ah = call fastcc ptr @search_method0(i64 noundef %.016, i64 noundef %i.j, ptr noundef null, i1 noundef zeroext false) ; 4 uses
  %.not.i.i.i22 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i22, label %rb_method_entry_without_refinements.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = getelementptr i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !418 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not9.i.i.i, label %rb_method_entry_without_refinements.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ak = load i8, ptr %i.aj, align 8
  %i.al = and i8 %i.ak, 15                        ; 2 uses
  switch i8 %i.al, label %rb_method_entry_without_refinements.exit [
    i8 7, label %rb_method_entry_without_refinements.exit.thread
    i8 11, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  %i.am = call fastcc ptr @resolve_refined_method(i64 noundef 4, ptr noundef nonnull %i.ah, ptr noundef null) ; 3 uses
  %.not22.i.i = icmp eq ptr %i.am, null
  br i1 %.not22.i.i, label %rb_method_entry_without_refinements.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.an = getelementptr i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !418 ; 2 uses
  %.not23.i.i = icmp eq ptr %i.ao, null
  br i1 %.not23.i.i, label %rb_method_entry_without_refinements.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ap = load i8, ptr %i.ao, align 8
  %i.aq = and i8 %i.ap, 15                        ; 2 uses
  %i.ar = icmp eq i8 %i.aq, 7
  br i1 %i.ar, label %rb_method_entry_without_refinements.exit.thread, label %rb_method_entry_without_refinements.exit

rb_method_entry_without_refinements.exit:         ; preds = %bb.n, %bb.q
  %.pre-phi = phi i8 [ %i.al, %bb.n ], [ %i.aq, %bb.q ]
  %.1.i.i = phi ptr [ %i.ah, %bb.n ], [ %i.am, %bb.q ] ; 2 uses
  %i.as = icmp eq i8 %.pre-phi, 8
  br i1 %i.as, label %rb_method_entry_without_refinements.exit.thread, label %bb.r

bb.r:                                             ; preds = %rb_method_entry_without_refinements.exit
  br i1 %brmerge, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.at = getelementptr i8, ptr %.1.i.i, i64 32
  %i.au = load i64, ptr %i.at, align 8, !tbaa !201
  %.not20 = icmp eq i64 %i.au, %0
  br i1 %.not20, label %bb.t, label %rb_method_entry_without_refinements.exit.thread

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.av = load i64, ptr %.1.i.i, align 8, !tbaa !217
  %i.aw = trunc i64 %i.av to i32
  %i.ax = lshr i32 %i.aw, 16
  %i.ay = and i32 %i.ax, 3
  br label %rb_method_entry_without_refinements.exit.thread

rb_method_entry_without_refinements.exit.thread:  ; preds = %bb.o, %bb.p, %bb.q, %bb.m, %bb.l, %bb.n, %bb.s, %rb_method_entry_without_refinements.exit, %rb_scan_args_set.exit, %bb.t
  %.0 = phi i32 [ 0, %rb_scan_args_set.exit ], [ %i.ay, %bb.t ], [ 0, %rb_method_entry_without_refinements.exit ], [ 0, %bb.s ], [ 0, %bb.n ], [ 0, %bb.l ], [ 0, %bb.m ], [ 0, %bb.q ], [ 0, %bb.p ], [ 0, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  ret i32 %.0
}

declare i64 @rb_top_main_class(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef nonnull ptr @vm_argv_ruby_array(ptr nofree noundef nonnull returned writeonly captures(ret: address, provenance) initializes((0, 16)) %0, ptr noundef %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull captures(none) %3, i32 noundef %4) unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !7
  %i.b = or i32 %i.a, 1
  store i32 %i.b, ptr %2, align 4, !tbaa !7
  %i.c = load i32, ptr %3, align 4, !tbaa !7
  %i.d = sext i32 %i.c to i64
  %i.e = tail call i64 @rb_ary_hidden_new(i64 noundef %i.d) #23 ; 3 uses
  %i.f = load i32, ptr %3, align 4, !tbaa !7
  %i.g = sext i32 %i.f to i64
  %i.h = tail call i64 @rb_ary_cat(i64 noundef %i.e, ptr noundef %1, i64 noundef %i.g) #23 ; 0 uses
  store i32 2, ptr %3, align 4, !tbaa !7
  store i64 %i.e, ptr %0, align 8, !tbaa !11
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i64 @rb_ary_pop(i64 noundef %i.e) #23
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = load i32, ptr %2, align 4, !tbaa !7
  %i.k = or i32 %i.j, 64
  store i32 %i.k, ptr %2, align 4, !tbaa !7
  %i.l = tail call i64 @rb_hash_new() #23
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i64 [ %i.l, %bb.c ], [ %i.i, %bb.b ]
  %i.m = getelementptr i8, ptr %0, i64 8
  store i64 %.sink, ptr %i.m, align 8, !tbaa !11
  ret ptr %0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @vm_call0_body(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %3 = alloca %struct.rb_trace_arg_struct, align 8 ; 13 uses
  %4 = alloca %struct.rb_trace_arg_struct, align 8 ; 13 uses
  %5 = alloca %struct.rb_trace_arg_struct, align 8 ; 13 uses
  %6 = alloca %struct.rb_trace_arg_struct, align 8 ; 13 uses
  %7 = alloca %struct.rb_callcache, align 8       ; 8 uses
  %8 = alloca %struct.rb_callcache, align 8       ; 8 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %9 = alloca %struct.rb_trace_arg_struct, align 8 ; 13 uses
  %10 = alloca %struct.rb_trace_arg_struct, align 8 ; 13 uses
  %11 = alloca %struct.rb_trace_arg_struct, align 8 ; 13 uses
  %12 = alloca %struct.rb_trace_arg_struct, align 8 ; 13 uses
  %13 = alloca %struct.rb_trace_arg_struct, align 8 ; 13 uses
  %14 = alloca %struct.rb_trace_arg_struct, align 8 ; 13 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !226
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !225  ; 18 uses
  %i.e = getelementptr i8, ptr %1, i64 8          ; 8 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !233  ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 16       ; 8 uses
  %.val228.pre = load ptr, ptr %i.g, align 8, !tbaa !187
  br label %bb.b

bb.b:                                             ; preds = %bb.ca, %bb.a
  %.val228 = phi ptr [ %i.rp, %bb.ca ], [ %.val228.pre, %bb.a ] ; 9 uses
  %i.h = getelementptr i8, ptr %.val228, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !83   ; 12 uses
  %i.j = load i8, ptr %i.i, align 8
  %i.k = and i8 %i.j, 15                          ; 2 uses
  switch i8 %i.k, label %bb.dw [
    i8 0, label %bb.c
    i8 8, label %bb.j
    i8 1, label %bb.j
    i8 2, label %bb.ab
    i8 3, label %bb.ao
    i8 4, label %bb.bb
    i8 5, label %bb.bk
    i8 11, label %bb.bq
    i8 6, label %bb.bx
    i8 10, label %bb.cb
    i8 9, label %bb.ce
  ]

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !70   ; 4 uses
  %i.n = getelementptr i8, ptr %i.m, i64 8        ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !73   ; 4 uses
  %i.p = ptrtoaddr ptr %i.o to i64
  %i.q = getelementptr i8, ptr %1, i64 32
  %i.r = load i32, ptr %i.q, align 8, !tbaa !230  ; 4 uses
  %i.s = add i32 %i.r, 1
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr [8 x i8], ptr %i.o, i64 %i.t
  %i.v = getelementptr i8, ptr %i.u, i64 56
  %.not200 = icmp ugt ptr %i.m, %i.v
  br i1 %.not200, label %bb.e, label %bb.d, !prof !72

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @vm_stackoverflow() #58
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr i8, ptr %1, i64 24
  %i.x = load i64, ptr %i.w, align 8, !tbaa !229
  %i.y = getelementptr i8, ptr %i.o, i64 8        ; 5 uses
  store ptr %i.y, ptr %i.n, align 8, !tbaa !73
  store i64 %i.x, ptr %i.o, align 8, !tbaa !11
  %i.z = icmp sgt i32 %i.r, 0
  br i1 %i.z, label %.lr.ph, label %bb.f

.lr.ph:                                           ; preds = %bb.e
  %wide.trip.count = zext nneg i32 %i.r to i64    ; 5 uses
  %min.iters.check = icmp ult i32 %i.r, 10
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %15 = sub i64 %i.p, %i.a
  %16 = add i64 %15, 7
  %diff.check = icmp ult i64 %16, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 4 uses
  %i.aa = shl nuw nsw i64 %n.vec, 3
  %i.ab = getelementptr i8, ptr %i.y, i64 %i.aa   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ac = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.y, i64 %i.ac ; 2 uses
  %i.ad = getelementptr [8 x i8], ptr %2, i64 %index ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 16
  %wide.load = load <2 x i64>, ptr %i.ad, align 8, !tbaa !11
  %wide.load557 = load <2 x i64>, ptr %i.ae, align 8, !tbaa !11
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !11
  store <2 x i64> %wide.load557, ptr %i.af, align 8, !tbaa !11
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !848

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 4 uses
  %.ph = phi ptr [ %i.y, %vector.memcheck ], [ %i.y, %.lr.ph ], [ %i.ab, %middle.block ] ; 2 uses
  %i.ah = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.ah, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ai = phi ptr [ %i.al, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.aj = getelementptr [8 x i8], ptr %2, i64 %indvars.iv.prol
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !11
  %i.al = getelementptr i8, ptr %i.ai, i64 8      ; 3 uses
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !11
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !849

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa559.unr = phi ptr [ poison, %scalar.ph.preheader ], [ %i.al, %scalar.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %.unr = phi ptr [ %.ph, %scalar.ph.preheader ], [ %i.al, %scalar.ph.prol ]
  %i.am = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.an = icmp ugt i64 %i.am, -8
  br i1 %i.an, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %i.ao = phi ptr [ %i.bt, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %i.ap = getelementptr [8 x i8], ptr %2, i64 %indvars.iv
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !11
  %i.ar = getelementptr i8, ptr %i.ao, i64 8
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !11
  %i.as = getelementptr [8 x i8], ptr %2, i64 %indvars.iv
  %i.at = getelementptr i8, ptr %i.as, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !11
  %i.av = getelementptr i8, ptr %i.ao, i64 16
  store i64 %i.au, ptr %i.ar, align 8, !tbaa !11
  %i.aw = getelementptr [8 x i8], ptr %2, i64 %indvars.iv
  %i.ax = getelementptr i8, ptr %i.aw, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !11
  %i.az = getelementptr i8, ptr %i.ao, i64 24
  store i64 %i.ay, ptr %i.av, align 8, !tbaa !11
  %i.ba = getelementptr [8 x i8], ptr %2, i64 %indvars.iv
  %i.bb = getelementptr i8, ptr %i.ba, i64 24
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !11
  %i.bd = getelementptr i8, ptr %i.ao, i64 32
  store i64 %i.bc, ptr %i.az, align 8, !tbaa !11
  %i.be = getelementptr [8 x i8], ptr %2, i64 %indvars.iv
  %i.bf = getelementptr i8, ptr %i.be, i64 32
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !11
  %i.bh = getelementptr i8, ptr %i.ao, i64 40
  store i64 %i.bg, ptr %i.bd, align 8, !tbaa !11
  %i.bi = getelementptr [8 x i8], ptr %2, i64 %indvars.iv
  %i.bj = getelementptr i8, ptr %i.bi, i64 40
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !11
  %i.bl = getelementptr i8, ptr %i.ao, i64 48
  store i64 %i.bk, ptr %i.bh, align 8, !tbaa !11
  %i.bm = getelementptr [8 x i8], ptr %2, i64 %indvars.iv
  %i.bn = getelementptr i8, ptr %i.bm, i64 48
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !11
  %i.bp = getelementptr i8, ptr %i.ao, i64 56
  store i64 %i.bo, ptr %i.bl, align 8, !tbaa !11
  %i.bq = getelementptr [8 x i8], ptr %2, i64 %indvars.iv
  %i.br = getelementptr i8, ptr %i.bq, i64 56
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !11
  %i.bt = getelementptr i8, ptr %i.ao, i64 64     ; 2 uses
  store i64 %i.bs, ptr %i.bp, align 8, !tbaa !11
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7, %wide.trip.count
  br i1 %exitcond.not.7, label %._crit_edge, label %scalar.ph, !llvm.loop !850

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa = phi ptr [ %i.ab, %middle.block ], [ %.lcssa559.unr, %scalar.ph.prol.loopexit ], [ %i.bt, %scalar.ph ]
  store ptr %.lcssa, ptr %i.n, align 8, !tbaa !73
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.e
  %i.bu = getelementptr i8, ptr %i.i, i64 8
  %.val229 = load ptr, ptr %i.bu, align 8, !tbaa !27
  %i.bv = getelementptr i8, ptr %.val229, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !124
  %i.bx = getelementptr i8, ptr %i.bw, i64 16
  %i.by = load i16, ptr %i.bx, align 8
  %i.bz = and i16 %i.by, 8192
  %.not201 = icmp eq i16 %i.bz, 0
  br i1 %.not201, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ca = tail call i64 @vm_call_iseq_fwd_setup(ptr noundef nonnull %0, ptr noundef nonnull %i.m, ptr noundef nonnull %1) ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.cb = tail call i64 @vm_call_iseq_setup(ptr noundef nonnull %0, ptr noundef nonnull %i.m, ptr noundef nonnull %1) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.cc = load ptr, ptr %i.l, align 8, !tbaa !70
  %i.cd = getelementptr i8, ptr %i.cc, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !15 ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !11
  %i.cg = or i64 %i.cf, 32
  store i64 %i.cg, ptr %i.ce, align 8, !tbaa !11
  %i.ch = tail call i64 @rb_vm_exec(ptr noundef nonnull %0)
  br label %rb_vm_check_ints.exit

bb.j:                                             ; preds = %bb.b, %bb.b
  %i.ci = load ptr, ptr %1, align 8, !tbaa !226
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !225 ; 2 uses
  %i.ck = load ptr, ptr %i.e, align 8, !tbaa !233
  %i.cl = getelementptr i8, ptr %i.ck, i64 16
  %.val.i.i = load ptr, ptr %i.cl, align 8, !tbaa !187 ; 4 uses
  %i.cm = getelementptr i8, ptr %.val.i.i, i64 16 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !83 ; 4 uses
  %i.co = getelementptr i8, ptr %i.cn, i64 8
  %i.cp = getelementptr i8, ptr %i.cn, i64 24
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !411 ; 7 uses
  %i.cr = getelementptr i8, ptr %1, i64 24
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !229 ; 4 uses
  %i.ct = getelementptr i8, ptr %1, i64 32
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !230 ; 7 uses
  %i.cv = ptrtoint ptr %i.cj to i64               ; 2 uses
  %.not.i.i.i.i = trunc i64 %i.cv to i1
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cw = lshr i64 %i.cv, 32
  br label %vm_ci_mid.exit.i.i

bb.l:                                             ; preds = %bb.j
  %i.cx = getelementptr i8, ptr %i.cj, i64 16
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !163
  br label %vm_ci_mid.exit.i.i

vm_ci_mid.exit.i.i:                               ; preds = %bb.l, %bb.k
  %.0.i64.i.i = phi i64 [ %i.cw, %bb.k ], [ %i.cy, %bb.l ] ; 2 uses
  %i.cz = getelementptr i8, ptr %1, i64 16
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !228
  %i.db = getelementptr i8, ptr %1, i64 36
  %i.dc = load i8, ptr %i.db, align 4, !tbaa !231, !range !114, !noundef !64
  %i.dd = trunc nuw i8 %i.dc to i1
  br i1 %i.dd, label %bb.m, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i

bb.m:                                             ; preds = %vm_ci_mid.exit.i.i
  %i.de = icmp sgt i32 %i.cu, 0
  br i1 %i.de, label %bb.n, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i

bb.n:                                             ; preds = %bb.m
  %i.df = zext nneg i32 %i.cu to i64
  %i.dg = getelementptr [8 x i8], ptr %2, i64 %i.df
  %i.dh = getelementptr i8, ptr %i.dg, i64 -8
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !11 ; 4 uses
  %i.dj = icmp eq i64 %i.di, 0
  %i.dk = and i64 %i.di, 7
  %i.dl = icmp ne i64 %i.dk, 0
  %i.dm = or i1 %i.dj, %i.dl
  br i1 %i.dm, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.n
  %i.dn = inttoptr i64 %i.di to ptr
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !77 ; 3 uses
  %i.dp = and i64 %i.do, 31
  %i.dq = icmp eq i64 %i.dp, 8
  br i1 %i.dq, label %bb.o, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i

bb.o:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.dr = and i64 %i.do, 32768
  %.not.i.i.i.i.i = icmp eq i64 %i.dr, 0
  br i1 %.not.i.i.i.i.i, label %bb.p, label %bb.q

end_hunk_7
