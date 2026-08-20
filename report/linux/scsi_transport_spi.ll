inline.NumInlined: 76
inline.NumDeleted: 29
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@spi_dv_retrain:bb.a
  %i.h = getelementptr i8, ptr %i.c, i64 376      ; 8 uses
  %i.i = getelementptr i8, ptr %i.e, i64 864      ; 2 uses
  %i.j = getelementptr i8, ptr %i.e, i64 40       ; 4 uses
  %i.k = getelementptr i8, ptr %i.e, i64 848
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.u
  %.05693 = phi i32 [ 0, %.lr.ph ], [ %.2, %bb.u ] ; 5 uses
  %.05792 = phi i32 [ 0, %.lr.ph ], [ %.3, %bb.u ] ; 5 uses
  %i.l = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 48
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void %i.n(ptr noundef %i.e) #15
  %.pre = load ptr, ptr %i.h, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %.pre, %bb.c ], [ %i.l, %bb.b ] ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 80
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not72 = icmp eq ptr %i.q, null
  br i1 %.not72, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void %i.q(ptr noundef %i.e) #15
  %.pre94 = load ptr, ptr %i.h, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.r = phi ptr [ %.pre94, %bb.e ], [ %i.o, %bb.d ] ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %.not73 = icmp eq ptr %i.s, null
  br i1 %.not73, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.d, align 8
  tail call void %i.s(ptr noundef %i.t) #15
  %.pre95 = load ptr, ptr %i.h, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.u = phi ptr [ %.pre95, %bb.g ], [ %i.r, %bb.f ] ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 56
  %i.w = load ptr, ptr %i.v, align 8
  %.not74 = icmp eq ptr %i.w, null
  br i1 %.not74, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = load i16, ptr %i.i, align 8
  %i.y = and i16 %i.x, 4
  %.not75 = icmp eq i16 %i.y, 0
  br i1 %.not75, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.40, ptr noundef %i.j, ptr noundef nonnull @.str.46) #17
  %i.z = load ptr, ptr %i.h, align 8
  %i.aa = getelementptr i8, ptr %i.z, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %.not81 = icmp eq ptr %i.ab, null
  br i1 %.not81, label %bb.u, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = load ptr, ptr %i.d, align 8
  tail call void %i.ab(ptr noundef %i.ac, i32 noundef 0) #15
  br label %bb.u

bb.l:                                             ; preds = %bb.i, %bb.h
  %i.ad = getelementptr i8, ptr %i.u, i64 88
  %i.ae = load ptr, ptr %i.ad, align 8
  %.not76 = icmp eq ptr %i.ae, null
  br i1 %.not76, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.af = load i16, ptr %i.i, align 8
  %i.ag = and i16 %i.af, 32
  %.not77 = icmp eq i16 %i.ag, 0
  br i1 %.not77, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.40, ptr noundef %i.j, ptr noundef nonnull @.str.47) #17
  %i.ah = load ptr, ptr %i.h, align 8
  %i.ai = getelementptr i8, ptr %i.ah, i64 88
  %i.aj = load ptr, ptr %i.ai, align 8            ; 2 uses
  %.not80 = icmp eq ptr %i.aj, null
  br i1 %.not80, label %bb.u, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ak = load ptr, ptr %i.d, align 8
  tail call void %i.aj(ptr noundef %i.ak, i32 noundef 0) #15
  br label %bb.u

bb.p:                                             ; preds = %bb.m, %bb.l
  %i.al = load i32, ptr %i.k, align 8
  %i.am = tail call i32 @llvm.smax.i32(i32 %i.al, i32 %.05792) ; 3 uses
  %i.an = icmp slt i32 %i.am, 13
  %i.ao = lshr i32 %i.am, 1
  %.158.v = select i1 %i.an, i32 1, i32 %i.ao
  %.158 = add i32 %.158.v, %i.am                  ; 7 uses
  %i.ap = icmp sgt i32 %.158, 255
  %i.aq = icmp eq i32 %.158, %.05693
  %i.ar = select i1 %i.ap, i1 true, i1 %i.aq, !prof !11
  br i1 %i.ar, label %bb.q, label %bb.s, !prof !11

bb.q:                                             ; preds = %bb.p
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.40, ptr noundef %i.j, ptr noundef nonnull @.str.48) #17
  %i.as = load ptr, ptr %i.h, align 8
  %i.at = getelementptr i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %.not79 = icmp eq ptr %i.au, null
  br i1 %.not79, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.av = load ptr, ptr %i.d, align 8
  tail call void %i.au(ptr noundef %i.av, i32 noundef 0) #15
  br label %.thread

bb.s:                                             ; preds = %bb.p
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.40, ptr noundef %i.j, ptr noundef nonnull @.str.49) #17
  %i.aw = load ptr, ptr %i.h, align 8
  %i.ax = getelementptr i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  %.not78 = icmp eq ptr %i.ay, null
  br i1 %.not78, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.az = load ptr, ptr %i.d, align 8
  tail call void %i.ay(ptr noundef %i.az, i32 noundef %.158) #15
  br label %bb.u

bb.u:                                             ; preds = %bb.k, %bb.j, %bb.n, %bb.o, %bb.t, %bb.s
  %.3 = phi i32 [ %.05792, %bb.n ], [ %.158, %bb.t ], [ %.158, %bb.s ], [ %.05792, %bb.k ], [ %.05792, %bb.j ], [ %.05792, %bb.o ]
  %.2 = phi i32 [ %.05693, %bb.n ], [ %.158, %bb.t ], [ %.158, %bb.s ], [ %.05693, %bb.k ], [ %.05693, %bb.j ], [ %.05693, %bb.o ]
  %i.ba = tail call i32 %3(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 3) #15, !callees !31 ; 2 uses
  %i.bb = and i32 %i.ba, -3
  %or.cond = icmp eq i32 %i.bb, 0
  br i1 %or.cond, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.u, %bb.a, %bb.r, %bb.q
  %.262 = phi i32 [ 1, %bb.r ], [ 1, %bb.q ], [ %i.f, %bb.a ], [ %i.ba, %bb.u ]
  ret i32 %.262
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 0, 3) i32 @spi_dv_device_echo_buffer(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 align 16 prefalign(16) {
bb.a:
  %4 = alloca [2 x %struct.scsi_failure], align 16 ; 4 uses
  %5 = alloca %struct.scsi_failures, align 8      ; 5 uses
  %6 = alloca %struct.scsi_exec_args, align 8     ; 8 uses
  %7 = alloca [2 x %struct.scsi_failure], align 16 ; 4 uses
  %8 = alloca %struct.scsi_failures, align 8      ; 5 uses
  %9 = alloca %struct.scsi_exec_args, align 8     ; 9 uses
  %10 = alloca %struct.scsi_sense_hdr, align 8    ; 8 uses
  %i.a = alloca [10 x i8], align 1                ; 9 uses
  %i.b = alloca [10 x i8], align 1                ; 9 uses
  %i.c = ptrtoint ptr %2 to i64
  %i.d = ptrtoint ptr %1 to i64
  %i.e = sub i64 %i.c, %i.d                       ; 4 uses
  %i.f = trunc i64 %i.e to i32                    ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i8 59, ptr %i.a, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 10, ptr %i.g, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.j = lshr i64 %i.e, 8
  %i.k = trunc i64 %i.j to i8                     ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.h, i8 0, i64 5, i1 false)
  store i8 %i.k, ptr %i.i, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = trunc i64 %i.e to i8                     ; 2 uses
  store i8 %i.m, ptr %i.l, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  store i8 0, ptr %i.n, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i8 60, ptr %i.b, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 10, ptr %i.o, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.p, i8 0, i64 5, i1 false)
  store i8 %i.k, ptr %i.q, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %i.m, ptr %i.r, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  store i8 0, ptr %i.s, align 1
  %i.t = icmp sgt i32 %i.f, 0
  br i1 %i.t, label %.preheader128.lr.ph, label %.preheader

.preheader128.lr.ph:                              ; preds = %bb.a
  %i.u = tail call i32 @llvm.umin.i32(i32 %i.f, i32 32) ; 4 uses
  %wide.trip.count = zext nneg i32 %i.u to i64    ; 3 uses
  br label %.preheader128

.loopexit125:                                     ; preds = %.lr.ph139, %.preheader124
  %.1115.lcssa = phi i32 [ %.0114142, %.preheader124 ], [ %i.bu, %.lr.ph139 ]
  %.4.lcssa = phi i32 [ %.3.lcssa, %.preheader124 ], [ %indvars166, %.lr.ph139 ] ; 2 uses
  %i.v = icmp slt i32 %.4.lcssa, %i.f
  br i1 %i.v, label %.preheader128, label %.preheader, !llvm.loop !32

.preheader128:                                    ; preds = %.preheader128.lr.ph, %.loopexit125
  %.0112143 = phi i32 [ 0, %.preheader128.lr.ph ], [ %.4.lcssa, %.loopexit125 ] ; 3 uses
  %.0114142 = phi i32 [ 65535, %.preheader128.lr.ph ], [ %.1115.lcssa, %.loopexit125 ] ; 2 uses
  %i.w = icmp slt i32 %.0112143, %i.u
  br i1 %i.w, label %.lr.ph.preheader, label %.preheader127

.lr.ph.preheader:                                 ; preds = %.preheader128
  %i.x = zext i32 %.0112143 to i64                ; 4 uses
  %i.y = sub nsw i64 %wide.trip.count, %i.x
  %xtraiter = and i64 %i.y, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %i.x, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.z = trunc i64 %indvars.iv.prol to i8
  %i.aa = getelementptr i8, ptr %1, i64 %indvars.iv.prol
  store i8 %i.z, ptr %i.aa, align 1
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !33

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.x, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.ab = sub nsw i64 %i.x, %wide.trip.count
  %i.ac = icmp ugt i64 %i.ab, -8
  br i1 %i.ac, label %.preheader127, label %.lr.ph

.preheader:                                       ; preds = %.loopexit125, %bb.a
  %i.ad = icmp sgt i32 %3, 0
  br i1 %i.ad, label %.lr.ph145, label %.loopexit

.lr.ph145:                                        ; preds = %.preheader
  store i64 0, ptr %10, align 8, !annotation !17
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 28
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.ak = getelementptr i8, ptr %0, i64 2088
  %sext = shl i64 %i.e, 32
  %i.al = ashr exact i64 %sext, 32                ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 40
  br label %bb.c

.preheader127:                                    ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.preheader128
  %.1.lcssa = phi i32 [ %.0112143, %.preheader128 ], [ %i.u, %.lr.ph ], [ %i.u, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.ar = add nuw i32 %.1.lcssa, 32
  %i.as = tail call i32 @llvm.smin.i32(i32 %i.ar, i32 %i.f) ; 3 uses
  %i.at = icmp slt i32 %.1.lcssa, %i.as
  br i1 %i.at, label %.lr.ph132.preheader, label %.preheader126

.lr.ph132.preheader:                              ; preds = %.preheader127
  %11 = zext nneg i32 %.1.lcssa to i64
  br label %.lr.ph132

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 10 uses
  %i.au = trunc i64 %indvars.iv to i8
  %i.av = getelementptr i8, ptr %1, i64 %indvars.iv
  store i8 %i.au, ptr %i.av, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aw = trunc i64 %indvars.iv.next to i8
  %i.ax = getelementptr i8, ptr %1, i64 %indvars.iv.next
  store i8 %i.aw, ptr %i.ax, align 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ay = trunc i64 %indvars.iv.next.1 to i8
  %i.az = getelementptr i8, ptr %1, i64 %indvars.iv.next.1
  store i8 %i.ay, ptr %i.az, align 1
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ba = trunc i64 %indvars.iv.next.2 to i8
  %i.bb = getelementptr i8, ptr %1, i64 %indvars.iv.next.2
  store i8 %i.ba, ptr %i.bb, align 1
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.bc = trunc i64 %indvars.iv.next.3 to i8
  %i.bd = getelementptr i8, ptr %1, i64 %indvars.iv.next.3
  store i8 %i.bc, ptr %i.bd, align 1
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv, 5 ; 2 uses
  %i.be = trunc i64 %indvars.iv.next.4 to i8
  %i.bf = getelementptr i8, ptr %1, i64 %indvars.iv.next.4
  store i8 %i.be, ptr %i.bf, align 1
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv, 6 ; 2 uses
  %i.bg = trunc i64 %indvars.iv.next.5 to i8
  %i.bh = getelementptr i8, ptr %1, i64 %indvars.iv.next.5
  store i8 %i.bg, ptr %i.bh, align 1
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv, 7 ; 2 uses
  %i.bi = trunc i64 %indvars.iv.next.6 to i8
  %i.bj = getelementptr i8, ptr %1, i64 %indvars.iv.next.6
  store i8 %i.bi, ptr %i.bj, align 1
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7, %wide.trip.count
  br i1 %exitcond.not.7, label %.preheader127, label %.lr.ph, !llvm.loop !35

.preheader126.loopexit:                           ; preds = %.lr.ph132
  %.pre = add nuw i32 %indvars, 32
  %.pre158 = tail call i32 @llvm.smin.i32(i32 %.pre, i32 %i.f)
  br label %.preheader126

.preheader126:                                    ; preds = %.preheader126.loopexit, %.preheader127
  %.pre-phi159 = phi i32 [ %.pre158, %.preheader126.loopexit ], [ %i.as, %.preheader127 ] ; 3 uses
  %.2.lcssa = phi i32 [ %indvars, %.preheader126.loopexit ], [ %.1.lcssa, %.preheader127 ] ; 3 uses
  %i.bk = icmp slt i32 %.2.lcssa, %.pre-phi159
  br i1 %i.bk, label %.lr.ph135.preheader, label %.preheader124

.lr.ph135.preheader:                              ; preds = %.preheader126
  %12 = zext nneg i32 %.2.lcssa to i64
  br label %.lr.ph135

.lr.ph132:                                        ; preds = %.lr.ph132.preheader, %.lr.ph132
  %indvars.iv157 = phi i64 [ %11, %.lr.ph132.preheader ], [ %indvars.iv.next158, %.lr.ph132 ] ; 3 uses
  %i.bl = getelementptr i8, ptr %1, i64 %indvars.iv157
  %i.bm = trunc i64 %indvars.iv157 to i16
  %i.bn = lshr i16 %i.bm, 1
  %i.bo = and i16 %i.bn, 1
  %i.bp = add nsw i16 %i.bo, -1
  store i16 %i.bp, ptr %i.bl, align 2
  %indvars.iv.next158 = add nuw nsw i64 %indvars.iv157, 2 ; 2 uses
  %indvars = trunc i64 %indvars.iv.next158 to i32 ; 3 uses
  %13 = icmp sgt i32 %i.as, %indvars
  br i1 %13, label %.lr.ph132, label %.preheader126.loopexit, !llvm.loop !36

.preheader124.loopexit:                           ; preds = %.lr.ph135
  %.pre160 = add nuw i32 %indvars162, 32
  %.pre162 = tail call i32 @llvm.smin.i32(i32 %.pre160, i32 %i.f)
  br label %.preheader124

.preheader124:                                    ; preds = %.preheader124.loopexit, %.preheader126
  %.pre-phi163 = phi i32 [ %.pre162, %.preheader124.loopexit ], [ %.pre-phi159, %.preheader126 ] ; 2 uses
  %.3.lcssa = phi i32 [ %indvars162, %.preheader124.loopexit ], [ %.2.lcssa, %.preheader126 ] ; 3 uses
  %i.bq = icmp slt i32 %.3.lcssa, %.pre-phi163
  br i1 %i.bq, label %.lr.ph139.preheader, label %.loopexit125

.lr.ph139.preheader:                              ; preds = %.preheader124
  %14 = zext nneg i32 %.3.lcssa to i64
  br label %.lr.ph139

.lr.ph135:                                        ; preds = %.lr.ph135.preheader, %.lr.ph135
  %indvars.iv160 = phi i64 [ %12, %.lr.ph135.preheader ], [ %indvars.iv.next161, %.lr.ph135 ] ; 3 uses
  %i.br = getelementptr i8, ptr %1, i64 %indvars.iv160
  %15 = and i64 %indvars.iv160, 2
  %.not120 = icmp eq i64 %15, 0
  %i.bs = select i1 %.not120, i16 -21846, i16 21845
  store i16 %i.bs, ptr %i.br, align 2
  %indvars.iv.next161 = add nuw nsw i64 %indvars.iv160, 2 ; 2 uses
  %indvars162 = trunc i64 %indvars.iv.next161 to i32 ; 3 uses
  %16 = icmp sgt i32 %.pre-phi159, %indvars162
  br i1 %16, label %.lr.ph135, label %.preheader124.loopexit, !llvm.loop !37

.lr.ph139:                                        ; preds = %.lr.ph139.preheader, %.lr.ph139
  %indvars.iv164 = phi i64 [ %14, %.lr.ph139.preheader ], [ %indvars.iv.next165, %.lr.ph139 ] ; 2 uses
  %.1115137 = phi i32 [ %.0114142, %.lr.ph139.preheader ], [ %i.bu, %.lr.ph139 ] ; 3 uses
  %i.bt = getelementptr i8, ptr %1, i64 %indvars.iv164
  store i32 %.1115137, ptr %i.bt, align 4
  %i.bu = tail call i32 @llvm.fshl.i32(i32 %.1115137, i32 %.1115137, i32 1) ; 2 uses
  %indvars.iv.next165 = add nuw nsw i64 %indvars.iv164, 4 ; 2 uses
  %indvars166 = trunc i64 %indvars.iv.next165 to i32 ; 2 uses
  %17 = icmp sgt i32 %.pre-phi163, %indvars166
  br i1 %17, label %.lr.ph139, label %.loopexit125, !llvm.loop !38

bb.b:                                             ; preds = %bb.h
  %i.bv = add nuw nsw i32 %.0113144, 1            ; 2 uses
  %exitcond157.not = icmp eq i32 %i.bv, %3
  br i1 %exitcond157.not, label %.loopexit, label %bb.c, !llvm.loop !39

bb.c:                                             ; preds = %.lr.ph145, %bb.b
  %.0113144 = phi i32 [ 0, %.lr.ph145 ], [ %i.bv, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %7, ptr noundef nonnull align 16 dereferenceable(24) @__const.spi_execute.failure_defs, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  store i64 0, ptr %8, align 8
  store ptr %7, ptr %i.ae, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  store ptr %10, ptr %i.af, align 8
  store i32 4, ptr %i.ag, align 8
  store i32 0, ptr %i.ah, align 4
  store ptr null, ptr %i.ai, align 8
  store ptr %8, ptr %i.aj, align 8
  %i.bw = call i32 @scsi_execute_cmd(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 1827, ptr noundef %1, i32 noundef %i.f, i32 noundef 10000, i32 noundef 1, ptr noundef nonnull %9) #15 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %.not = icmp eq i32 %i.bw, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.val = load i32, ptr %i.ak, align 8
  switch i32 %.val, label %bb.h [
    i32 7, label %.thread
    i32 6, label %.thread
    i32 4, label %.thread
  ]

.thread:                                          ; preds = %bb.d, %bb.d, %bb.d
  %i.bx = call i32 @scsi_device_set_state(ptr noundef %0, i32 noundef 5) #15 ; 0 uses
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.by = call i32 @scsi_device_set_state(ptr noundef %0, i32 noundef 5) #15 ; 0 uses
  %i.bz = icmp sgt i32 %i.bw, 0
  br i1 %i.bz, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ca = load i8, ptr %10, align 8
  %i.cb = and i8 %i.ca, 112
  %i.cc = icmp eq i8 %i.cb, 112
  %i.cd = getelementptr inbounds nuw i8, ptr %10, i64 1
  %i.ce = load i8, ptr %i.cd, align 1
  %i.cf = icmp eq i8 %i.ce, 5
  %or.cond = select i1 %i.cc, i1 %i.cf, i1 false
  %i.cg = getelementptr inbounds nuw i8, ptr %10, i64 2
  %i.ch = load i8, ptr %i.cg, align 2
  %i.ci = icmp eq i8 %i.ch, 36
  %or.cond7 = select i1 %or.cond, i1 %i.ci, i1 false
  %i.cj = getelementptr inbounds nuw i8, ptr %10, i64 3
  %i.ck = load i8, ptr %i.cj, align 1
  %i.cl = icmp eq i8 %i.ck, 0
  %or.cond11 = select i1 %or.cond7, i1 %i.cl, i1 false
  br i1 %or.cond11, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %.thread, %bb.f, %bb.e
  call void (ptr, ptr, ptr, ptr, ...) @sdev_prefix_printk(ptr noundef nonnull @.str.40, ptr noundef %0, ptr noundef null, ptr noundef nonnull @.str.50, i32 noundef %i.bw) #15
  br label %.loopexit

bb.h:                                             ; preds = %bb.d
  call void @llvm.memset.p0.i64(ptr align 1 %2, i8 0, i64 %i.al, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, ptr noundef nonnull align 16 dereferenceable(24) @__const.spi_execute.failure_defs, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store i64 0, ptr %5, align 8
  store ptr %4, ptr %i.am, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  store i32 4, ptr %i.an, align 8
  store i32 0, ptr %i.ao, align 4
  store ptr null, ptr %i.ap, align 8
  store ptr %5, ptr %i.aq, align 8
  %i.cm = call i32 @scsi_execute_cmd(ptr noundef %0, ptr noundef nonnull %i.b, i32 noundef 1826, ptr noundef %2, i32 noundef %i.f, i32 noundef 10000, i32 noundef 1, ptr noundef nonnull %6) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.cn = call i32 @scsi_device_set_state(ptr noundef %0, i32 noundef 5) #15 ; 0 uses
  %bcmp = call i32 @bcmp(ptr %1, ptr %2, i64 %i.al)
  %.not118 = icmp eq i32 %bcmp, 0
  br i1 %.not118, label %bb.b, label %.loopexit

.loopexit:                                        ; preds = %bb.h, %bb.b, %.preheader, %bb.f, %bb.g
  %.0 = phi i32 [ 2, %bb.f ], [ 1, %bb.g ], [ 0, %.preheader ], [ 1, %bb.h ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @scsi_device_set_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @scsi_execute_cmd(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @sdev_prefix_printk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @__kmalloc_cache_noprof(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noredzone nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #10

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef i32 @spi_setup_transport_attrs(ptr nofree readnone captures(none) %0, ptr noundef initializes((808, 824)) %1, ptr nofree readnone captures(none) %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 808
  store i32 -1, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %1, i64 812
  store i32 0, ptr %i.b, align 4
  %i.c = getelementptr i8, ptr %1, i64 816
  store i32 0, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %1, i64 820
  store i32 255, ptr %i.d, align 4
  %i.e = getelementptr i8, ptr %1, i64 824        ; 2 uses
  %i.f = load i16, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %1, i64 856        ; 2 uses
  %i.h = load i8, ptr %i.g, align 8
  %i.i = and i8 %i.h, -4
  store i8 %i.i, ptr %i.g, align 8
  %i.j = and i16 %i.f, -8192
  %i.k = or disjoint i16 %i.j, 74
  store i16 %i.k, ptr %i.e, align 8
  %i.l = getelementptr i8, ptr %1, i64 864
  tail call void @mutex_init_generic(ptr noundef %i.l) #15
  ret i32 0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef i32 @spi_target_configure(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @sysfs_update_group(ptr noundef %2, ptr noundef nonnull @target_attribute_group) #15 ; 0 uses
  ret i32 0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_init_generic(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @sysfs_update_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext range(i16 0, 512) i16 @target_attribute_is_visible(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(address) %1, i32 %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8              ; 17 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.07.i = phi ptr [ %i.b, %bb.a ], [ %i.e, %bb.c ] ; 3 uses
  %i.c = tail call i32 @scsi_is_host_device(ptr noundef %.07.i) #15
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %.07.i, i64 64
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not9.i = icmp eq ptr %i.e, null
  br i1 %.not9.i, label %dev_to_shost.exit, label %bb.b, !llvm.loop !26

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %.07.i, i64 -632
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.f, %bb.d ], [ null, %bb.c ]
  %i.g = getelementptr i8, ptr %.0.i, i64 168
  %i.h = load ptr, ptr %i.g, align 8              ; 16 uses
  %i.i = icmp eq ptr %1, @dev_attr_period
  br i1 %i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %dev_to_shost.exit
  %i.j = getelementptr i8, ptr %i.b, i64 840
  %i.k = load i8, ptr %i.j, align 8
  %i.l = and i8 %i.k, 1
  %.not = icmp eq i8 %i.l, 0
  br i1 %.not, label %.thread141, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr i8, ptr %i.h, i64 376
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 200
  %i.p = load i16, ptr %i.o, align 8
  %i.q = and i16 %i.p, 1
  %.not120 = icmp eq i16 %i.q, 0
  %i.r = select i1 %.not120, i16 0, i16 292
  %i.s = getelementptr i8, ptr %i.n, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  %.not121 = icmp eq ptr %i.t, null
end_hunk_0
