Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/sendrecv?download=true
inline.NumInlined: 22
inline.NumDeleted: 14
begin_hunk_0_@PMPI_Sendrecv:bb.a
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %.0103 = phi i32 [ 2, %bb.e ], [ 3, %bb.d ], [ %spec.select, %bb.g ], [ 3, %bb.f ]
  %i.m = icmp eq ptr %7, null
  %i.n = icmp eq ptr %7, @ompi_mpi_datatype_null
  %or.cond3 = or i1 %i.m, %i.n
  br i1 %or.cond3, label %.thread161, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = icmp slt i32 %6, 0
  br i1 %i.o, label %.thread161, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = getelementptr i8, ptr %7, i64 16
  %.val = load i16, ptr %i.p, align 8, !tbaa !27  ; 3 uses
  %i.q = and i16 %.val, 4
  %.not117 = icmp eq i16 %i.q, 0
  br i1 %.not117, label %.thread161, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = and i16 %.val, 1
  %.not118.not = icmp eq i16 %i.r, 0
  %spec.select131 = select i1 %.not118.not, i32 %.0103, i32 3 ; 2 uses
  %i.s = icmp eq ptr %0, null
  %i.t = icmp sgt i32 %1, 0
  %or.cond5 = and i1 %i.s, %i.t
  %i.u = icmp eq i32 %spec.select131, 0
  %or.cond7 = and i1 %or.cond5, %i.u
  br i1 %or.cond7, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = load i16, ptr %i.v, align 8, !tbaa !30
  %i.x = and i16 %i.w, 2
  %.not119 = icmp eq i16 %i.x, 0
  br i1 %.not119, label %bb.m, label %.thread161

bb.m:                                             ; preds = %bb.l
  %i.y = getelementptr i8, ptr %2, i64 24
  %.val143 = load i64, ptr %i.y, align 8, !tbaa !31
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !32
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !33
  %i.ad = icmp ne i64 %.val143, 0
  %i.ae = icmp eq i64 %i.ac, %i.aa
  %or.cond9 = select i1 %i.ad, i1 %i.ae, i1 false
  %spec.select132 = zext i1 %or.cond9 to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.m
  %.3 = phi i32 [ %spec.select131, %bb.k ], [ %spec.select132, %bb.m ] ; 2 uses
  %i.af = icmp eq ptr %5, null
  %i.ag = icmp ne i32 %6, 0
  %or.cond11 = and i1 %i.af, %i.ag
  %i.ah = icmp eq i32 %.3, 0
  %or.cond13 = and i1 %or.cond11, %i.ah
  br i1 %or.cond13, label %bb.o, label %.thread161

bb.o:                                             ; preds = %bb.n
  %i.ai = and i16 %.val, 2
  %.not120 = icmp eq i16 %i.ai, 0
  br i1 %.not120, label %bb.p, label %.thread161

bb.p:                                             ; preds = %bb.o
  %i.aj = getelementptr i8, ptr %7, i64 24
  %.val142 = load i64, ptr %i.aj, align 8, !tbaa !31
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !32
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.an = load i64, ptr %i.am, align 8, !tbaa !33
  %i.ao = icmp ne i64 %.val142, 0
  %i.ap = icmp eq i64 %i.an, %i.al
  %or.cond15 = select i1 %i.ao, i1 %i.ap, i1 false
  %spec.select133 = zext i1 %or.cond15 to i32
  br label %.thread161

.thread161:                                       ; preds = %bb.j, %bb.h, %bb.i, %bb.l, %bb.o, %bb.p, %bb.n
  %.5 = phi i32 [ %.3, %bb.n ], [ %spec.select133, %bb.p ], [ 1, %bb.o ], [ 1, %bb.l ], [ 3, %bb.j ], [ 3, %bb.h ], [ 2, %bb.i ] ; 2 uses
  %i.aq = icmp eq ptr %10, null
  %i.ar = icmp eq ptr %10, @ompi_mpi_comm_null
  %or.cond.i = or i1 %i.aq, %i.ar
  br i1 %or.cond.i, label %ompi_comm_invalid.exit.thread, label %ompi_comm_invalid.exit

ompi_comm_invalid.exit:                           ; preds = %.thread161
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 224
  %i.at = load i32, ptr %i.as, align 8, !tbaa !54
  %i.au = and i32 %i.at, 48
  %or.cond7.i.not = icmp eq i32 %i.au, 0
  br i1 %or.cond7.i.not, label %bb.q, label %ompi_comm_invalid.exit.thread

ompi_comm_invalid.exit.thread:                    ; preds = %.thread161, %ompi_comm_invalid.exit
  %i.av = tail call i32 @ompi_errhandler_invoke(ptr noundef null, ptr noundef null, i32 noundef -1, i32 noundef 5, ptr noundef nonnull @FUNC_NAME) #6
  br label %bb.ak

bb.q:                                             ; preds = %ompi_comm_invalid.exit
  %.not122 = icmp eq i32 %3, -2
  br i1 %.not122, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aw = icmp slt i32 %3, 0
  br i1 %i.aw, label %.thread170, label %ompi_comm_peer_invalid.exit

ompi_comm_peer_invalid.exit:                      ; preds = %bb.r
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 272
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !55
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !58
  %.not.i.not = icmp slt i32 %3, %i.ba
  br i1 %.not.i.not, label %bb.s, label %.thread170

bb.s:                                             ; preds = %ompi_comm_peer_invalid.exit, %bb.q
  %i.bb = icmp slt i32 %4, 0
  %i.bc = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 172), align 4 ; 2 uses
  %i.bd = icmp sgt i32 %4, %i.bc
  %or.cond135 = select i1 %i.bb, i1 true, i1 %i.bd
  br i1 %or.cond135, label %.thread170, label %bb.t

bb.t:                                             ; preds = %bb.s
  %or.cond17 = icmp ult i32 %8, -2
  br i1 %or.cond17, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.be = icmp slt i32 %8, 0
  br i1 %i.be, label %.thread170, label %ompi_comm_peer_invalid.exit148

ompi_comm_peer_invalid.exit148:                   ; preds = %bb.u
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 272
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !55
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !58
  %.not.i146.not = icmp slt i32 %8, %i.bi
  br i1 %.not.i146.not, label %bb.v, label %.thread170

bb.v:                                             ; preds = %ompi_comm_peer_invalid.exit148, %bb.t
  %or.cond19 = icmp slt i32 %9, -1
  %i.bj = icmp sgt i32 %9, %i.bc
  %or.cond137 = select i1 %or.cond19, i1 true, i1 %i.bj
  br i1 %or.cond137, label %.thread170, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.not123 = icmp eq i32 %.5, 0
  br i1 %.not123, label %bb.x, label %.thread170, !prof !20

.thread170:                                       ; preds = %bb.v, %bb.u, %bb.r, %ompi_comm_peer_invalid.exit148, %bb.s, %ompi_comm_peer_invalid.exit, %bb.w
  %.6173 = phi i32 [ %.5, %bb.w ], [ 6, %bb.u ], [ 6, %bb.r ], [ 6, %ompi_comm_peer_invalid.exit ], [ 6, %ompi_comm_peer_invalid.exit148 ], [ 4, %bb.s ], [ 4, %bb.v ]
  %i.bk = tail call fastcc i32 @ompi_errcode_get_mpi_code(i32 noundef %.6173) ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %10, i64 312
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !59
  %i.bn = getelementptr inbounds nuw i8, ptr %10, i64 320
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !60
  %i.bp = tail call i32 @ompi_errhandler_invoke(ptr noundef %i.bm, ptr noundef nonnull %10, i32 noundef %i.bo, i32 noundef %i.bk, ptr noundef nonnull @FUNC_NAME) #6 ; 0 uses
  br label %bb.ak

bb.x:                                             ; preds = %bb.w, %bb.a
  %.not124 = icmp eq i32 %8, -2                   ; 2 uses
  br i1 %.not124, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 64), align 8, !tbaa !62
  %i.br = sext i32 %6 to i64
  %i.bs = call i32 %i.bq(ptr noundef %5, i64 noundef %i.br, ptr noundef %7, i32 noundef %8, i32 noundef %9, ptr noundef %10, ptr noundef nonnull %i.a) #6 ; 2 uses
  %.not125 = icmp eq i32 %i.bs, 0
  br i1 %.not125, label %bb.aa, label %bb.z, !prof !63

bb.z:                                             ; preds = %bb.y
  %i.bt = call fastcc i32 @ompi_errcode_get_mpi_code(i32 noundef %i.bs) ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %10, i64 312
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !59
  %i.bw = getelementptr inbounds nuw i8, ptr %10, i64 320
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !60
  %i.by = call i32 @ompi_errhandler_invoke(ptr noundef %i.bv, ptr noundef %10, i32 noundef %i.bx, i32 noundef %i.bt, ptr noundef nonnull @FUNC_NAME) #6 ; 0 uses
  br label %bb.ak

bb.aa:                                            ; preds = %bb.y, %bb.x
  %.not126 = icmp eq i32 %3, -2
  br i1 %.not126, label %ompi_request_cancel.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 96), align 8, !tbaa !64
  %i.ca = sext i32 %1 to i64
  %i.cb = call i32 %i.bz(ptr noundef %0, i64 noundef %i.ca, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef 4, ptr noundef %10) #6 ; 5 uses
  switch i32 %i.cb, label %bb.ac [
    i32 0, label %ompi_request_cancel.exit
    i32 75, label %ompi_request_cancel.exit
  ], !prof !65

bb.ac:                                            ; preds = %bb.ab
  %i.cc = load ptr, ptr %i.a, align 8, !tbaa !67  ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 128
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !74 ; 2 uses
  %.not.i149 = icmp eq ptr %i.ce, null
  br i1 %.not.i149, label %ompi_request_cancel.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cf = call i32 %i.ce(ptr noundef nonnull %i.cc, i32 noundef 1) #6, !inline_history !21 ; 0 uses
  br label %ompi_request_cancel.exit

ompi_request_cancel.exit:                         ; preds = %bb.ab, %bb.ad, %bb.ac, %bb.ab, %bb.aa
  %.0104 = phi i32 [ %i.cb, %bb.ad ], [ 0, %bb.aa ], [ %i.cb, %bb.ab ], [ %i.cb, %bb.ac ], [ %i.cb, %bb.ab ] ; 2 uses
  br i1 %.not124, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %ompi_request_cancel.exit
  %i.cg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_request_functions, i64 32), align 8, !tbaa !76
  %i.ch = call i32 %i.cg(ptr noundef nonnull %i.a, ptr noundef %11) #6 ; 2 uses
  %i.ci = icmp eq i32 %i.ch, 76
  br i1 %i.ci, label %bb.af, label %bb.aj, !prof !13

bb.af:                                            ; preds = %bb.ae
  %i.cj = load ptr, ptr %i.a, align 8, !tbaa !67  ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 128
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !74 ; 2 uses
  %.not.i151 = icmp eq ptr %i.cl, null
  br i1 %.not.i151, label %.thread174, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cm = call i32 %i.cl(ptr noundef nonnull %i.cj, i32 noundef 1) #6, !inline_history !21 ; 0 uses
  br label %.thread174

.thread174:                                       ; preds = %bb.ag, %bb.af
  %i.cn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_request_functions, i64 32), align 8, !tbaa !76
  %i.co = call i32 %i.cn(ptr noundef nonnull %i.a, ptr noundef null) #6 ; 0 uses
  br label %.thread177

bb.ah:                                            ; preds = %ompi_request_cancel.exit
  %.not129 = icmp eq ptr %11, null
  br i1 %.not129, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cp = load <2 x i32>, ptr getelementptr inbounds nuw (i8, ptr @ompi_request_empty, i64 64), align 8, !tbaa !12
  store <2 x i32> %i.cp, ptr %11, align 8, !tbaa !12
  %i.cq = load i64, ptr getelementptr inbounds nuw (i8, ptr @ompi_request_empty, i64 80), align 8, !tbaa !77
  %i.cr = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 %i.cq, ptr %i.cr, align 8, !tbaa !78
  %i.cs = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_request_empty, i64 76), align 4, !tbaa !79
  %i.ct = getelementptr inbounds nuw i8, ptr %11, i64 12
  store i32 %i.cs, ptr %i.ct, align 4, !tbaa !80
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai, %bb.ae
  %.7 = phi i32 [ 0, %bb.ah ], [ %i.ch, %bb.ae ], [ 0, %bb.ai ] ; 2 uses
  %i.cu = icmp ne i32 %.0104, 0                   ; 2 uses
  %i.cv = icmp eq i32 %.7, 0                      ; 2 uses
  %i.cw = and i1 %i.cu, %i.cv
  %.not194 = xor i1 %i.cv, true
  %brmerge = or i1 %i.cu, %.not194
  %.0104.mux = select i1 %i.cw, i32 %.0104, i32 %.7, !prof !81
  br i1 %brmerge, label %.thread177, label %bb.ak, !prof !82

.thread177:                                       ; preds = %bb.aj, %.thread174
  %.8180 = phi i32 [ %.0104.mux, %bb.aj ], [ 75, %.thread174 ]
  %i.cx = call fastcc i32 @ompi_errcode_get_mpi_code(i32 noundef %.8180) ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %10, i64 312
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !59
  %i.da = getelementptr inbounds nuw i8, ptr %10, i64 320
  %i.db = load i32, ptr %i.da, align 8, !tbaa !60
  %i.dc = call i32 @ompi_errhandler_invoke(ptr noundef %i.cz, ptr noundef %10, i32 noundef %i.db, i32 noundef %i.cx, ptr noundef nonnull @FUNC_NAME) #6 ; 0 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.thread177, %bb.z, %.thread170, %ompi_comm_invalid.exit.thread
  %.0 = phi i32 [ %i.av, %ompi_comm_invalid.exit.thread ], [ %i.bk, %.thread170 ], [ %i.bt, %bb.z ], [ %i.cx, %.thread177 ], [ 0, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @ompi_errhandler_invoke(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @ompi_errcode_get_mpi_code(i32 noundef %0) unnamed_addr #3 {
bb.a:
  %i.a = icmp sgt i32 %0, -1
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = load i32, ptr @ompi_errcode_intern_lastused, align 4, !tbaa !12 ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.d = load i8, ptr @opal_uses_threads, align 1, !tbaa !9, !range !10, !noundef !11
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %.lr.ph.split, label %.lr.ph.split.us, !prof !13

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 88), align 8
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 112), align 8, !tbaa !86
  %i.h = sext i32 %i.f to i64
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %.thread.i.us

.thread.i.us:                                     ; preds = %bb.b, %.lr.ph.split.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %.lr.ph.split.us ] ; 3 uses
  %.not.us = icmp slt i64 %indvars.iv, %i.h
  tail call void @llvm.assume(i1 %.not.us)
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !87   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !89
  %i.m = icmp eq i32 %i.l, %0
  br i1 %i.m, label %.split.us, label %bb.b

bb.b:                                             ; preds = %.thread.i.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.thread.i.us, !llvm.loop !83

bb.c:                                             ; preds = %opal_pointer_array_get_item.exit
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1 ; 2 uses
  %i.n = load i32, ptr @ompi_errcode_intern_lastused, align 4, !tbaa !12
  %i.o = sext i32 %i.n to i64
  %i.p = icmp slt i64 %indvars.iv.next19, %i.o
  br i1 %i.p, label %.lr.ph.split, label %.loopexit, !llvm.loop !84

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.c
  %i.q = phi i8 [ %i.ad, %bb.c ], [ 1, %.lr.ph ]
  %indvars.iv18 = phi i64 [ %indvars.iv.next19, %bb.c ], [ 0, %.lr.ph ] ; 4 uses
  %i.r = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 88), align 8
  %i.s = sext i32 %i.r to i64
  %.not = icmp slt i64 %indvars.iv18, %i.s
  tail call void @llvm.assume(i1 %.not)
  %i.t = trunc nuw i8 %i.q to i1
  br i1 %i.t, label %bb.d, label %.thread.i, !prof !13

.thread.i:                                        ; preds = %.lr.ph.split
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 112), align 8, !tbaa !86
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv18
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !87
  br label %opal_pointer_array_get_item.exit

bb.d:                                             ; preds = %.lr.ph.split
  %i.x = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 32)) #6 ; 0 uses
  %.pre.i = load i8, ptr @opal_uses_threads, align 1, !tbaa !9, !range !10
  %i.y = trunc nuw i8 %.pre.i to i1
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 112), align 8, !tbaa !86
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv18
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !87 ; 2 uses
  br i1 %i.y, label %bb.e, label %opal_pointer_array_get_item.exit, !prof !20

bb.e:                                             ; preds = %bb.d
  %i.ac = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ompi_errcodes_intern, i64 32)) #6 ; 0 uses
  %.pre = load i8, ptr @opal_uses_threads, align 1, !tbaa !9, !range !10
  br label %opal_pointer_array_get_item.exit

opal_pointer_array_get_item.exit:                 ; preds = %.thread.i, %bb.d, %bb.e
  %i.ad = phi i8 [ 0, %.thread.i ], [ %.pre, %bb.e ], [ 0, %bb.d ]
  %.0.i = phi ptr [ %i.w, %.thread.i ], [ %i.ab, %bb.e ], [ %i.ab, %bb.d ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !89
  %i.ag = icmp eq i32 %i.af, %0
  br i1 %i.ag, label %.split.us, label %bb.c

.split.us:                                        ; preds = %.thread.i.us, %opal_pointer_array_get_item.exit
  %.us-phi = phi ptr [ %.0.i, %opal_pointer_array_get_item.exit ], [ %i.j, %.thread.i.us ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.us-phi, i64 20
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !92
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.c, %.preheader, %.split.us, %bb.a
  %.010 = phi i32 [ %0, %bb.a ], [ %i.ai, %.split.us ], [ 14, %bb.c ], [ 14, %.preheader ], [ 14, %bb.b ]
  ret i32 %.010
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"_Bool", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{i8 0, i8 2}
!11 = !{}
!12 = !{!5, !5, i64 0}
!13 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!14 = !{!"any pointer", !4, i64 0}
!15 = !{!"p1 _ZTS12opal_class_t", !14, i64 0}
!16 = !{!"opal_object_t", !15, i64 0, !5, i64 8}
!17 = !{!"p1 long", !14, i64 0}
!18 = !{!"opal_mutex_t", !16, i64 0, !4, i64 16, !5, i64 56}
!19 = !{!"any p2 pointer", !14, i64 0}
!20 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!21 = distinct !{null}
!22 = !{!"short", !4, i64 0}
!23 = !{!"long", !4, i64 0}
!24 = !{!"p1 _ZTS12dt_elem_desc", !14, i64 0}
!25 = !{!"dt_type_desc_t", !23, i64 0, !23, i64 8, !24, i64 16}
!26 = !{!"opal_datatype_t", !16, i64 0, !22, i64 16, !22, i64 18, !5, i64 20, !23, i64 24, !23, i64 32, !23, i64 40, !23, i64 48, !23, i64 56, !23, i64 64, !5, i64 72, !5, i64 76, !4, i64 80, !25, i64 144, !25, i64 168, !17, i64 192}
!27 = !{!26, !22, i64 16}
!28 = !{!"p1 _ZTS17opal_hash_table_t", !14, i64 0}
!29 = !{!"ompi_datatype_t", !26, i64 0, !5, i64 200, !5, i64 204, !28, i64 208, !14, i64 216, !23, i64 224, !23, i64 232, !4, i64 240}
!30 = !{!29, !22, i64 16}
!31 = !{!26, !23, i64 24}
!32 = !{!26, !23, i64 32}
!33 = !{!26, !23, i64 40}
!34 = !{!"p1 _ZTS19opal_hash_element_t", !14, i64 0}
!35 = !{!"p1 _ZTS24opal_hash_type_methods_t", !14, i64 0}
!36 = !{!"opal_hash_table_t", !16, i64 0, !34, i64 16, !23, i64 24, !23, i64 32, !23, i64 40, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !35, i64 64}
!37 = !{!"p1 _ZTS11opal_info_t", !14, i64 0}
!38 = !{!"opal_infosubscriber_t", !16, i64 0, !36, i64 16, !37, i64 88}
!39 = !{!"p1 omnipotent char", !14, i64 0}
!40 = !{!"ompi_comm_extended_cid_t", !23, i64 0, !4, i64 8}
!41 = !{!"ompi_comm_extended_cid_block_t", !40, i64 0, !23, i64 16, !4, i64 24, !4, i64 25}
!42 = !{!"p1 int", !14, i64 0}
!43 = !{!"p1 _ZTS12ompi_group_t", !14, i64 0}
!44 = !{!"p1 _ZTS19ompi_communicator_t", !14, i64 0}
!45 = !{!"p1 _ZTS22mca_topo_base_module_t", !14, i64 0}
!46 = !{!"p2 _ZTS20ompi_peruse_handle_t", !19, i64 0}
!47 = !{!"p1 _ZTS17ompi_errhandler_t", !14, i64 0}
!48 = !{!"p1 _ZTS14mca_pml_comm_t", !14, i64 0}
!49 = !{!"p1 _ZTS14mca_mtl_comm_t", !14, i64 0}
!50 = !{!"p1 _ZTS25mca_coll_base_comm_coll_t", !14, i64 0}
!51 = !{!"p1 _ZTS15ompi_instance_t", !14, i64 0}
!52 = !{!"p1 _ZTS13opal_object_t", !14, i64 0}
!53 = !{!"ompi_communicator_t", !38, i64 0, !18, i64 96, !39, i64 160, !40, i64 168, !41, i64 184, !5, i64 216, !5, i64 220, !5, i64 224, !5, i64 228, !5, i64 232, !42, i64 240, !5, i64 248, !5, i64 252, !5, i64 256, !43, i64 264, !43, i64 272, !44, i64 280, !28, i64 288, !45, i64 296, !46, i64 304, !47, i64 312, !5, i64 320, !48, i64 328, !49, i64 336, !50, i64 344, !51, i64 352, !52, i64 360, !5, i64 368, !5, i64 372, !8, i64 376, !8, i64 377, !8, i64 378}
!54 = !{!53, !5, i64 224}
!55 = !{!53, !43, i64 272}
!56 = !{!"p2 _ZTS11ompi_proc_t", !19, i64 0}
!57 = !{!"ompi_group_t", !16, i64 0, !5, i64 16, !5, i64 20, !5, i64 24, !56, i64 32, !5, i64 40, !43, i64 48, !4, i64 56, !51, i64 72}
!58 = !{!57, !5, i64 16}
!59 = !{!53, !47, i64 312}
!60 = !{!53, !5, i64 320}
!61 = !{!"mca_pml_base_module_2_1_0_t", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !14, i64 96, !14, i64 104, !14, i64 112, !14, i64 120, !14, i64 128, !14, i64 136, !14, i64 144, !14, i64 152, !14, i64 160, !5, i64 168, !5, i64 172, !5, i64 176, !14, i64 184}
!62 = !{!61, !14, i64 64}
!63 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!64 = !{!61, !14, i64 96}
!65 = !{!"branch_weights", i32 1, i32 4002000, i32 2000}
!66 = !{!"p1 _ZTS14ompi_request_t", !14, i64 0}
!67 = !{!66, !66, i64 0}
!68 = !{!"p1 _ZTS16opal_list_item_t", !14, i64 0}
!69 = !{!"opal_list_item_t", !16, i64 0, !68, i64 16, !68, i64 24, !5, i64 32}
!70 = !{!"p1 _ZTS30mca_rcache_base_registration_t", !14, i64 0}
!71 = !{!"opal_free_list_item_t", !69, i64 0, !70, i64 40, !14, i64 48}
!72 = !{!"ompi_status_public_t", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !23, i64 16}
!73 = !{!"ompi_request_t", !71, i64 0, !5, i64 56, !72, i64 64, !14, i64 88, !5, i64 96, !8, i64 100, !5, i64 104, !14, i64 112, !14, i64 120, !14, i64 128, !14, i64 136, !14, i64 144, !4, i64 152}
!74 = !{!73, !14, i64 128}
!75 = !{!"ompi_request_fns_t", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56}
!76 = !{!75, !14, i64 32}
!77 = !{!73, !23, i64 80}
!78 = !{!72, !23, i64 16}
!79 = !{!73, !5, i64 76}
!80 = !{!72, !5, i64 12}
!81 = !{!"branch_weights", i32 1073472, i32 2146410176}
!82 = !{!"branch_weights", i32 2146944, i32 -2146944}
!83 = distinct !{!83, !90}
!84 = distinct !{!84, !90, !91}
!85 = !{!"opal_pointer_array_t", !16, i64 0, !18, i64 16, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !17, i64 104, !19, i64 112}
!86 = !{!85, !19, i64 112}
!87 = !{!14, !14, i64 0}
!88 = !{!"ompi_errcode_intern_t", !16, i64 0, !5, i64 16, !5, i64 20, !5, i64 24, !4, i64 28}
!89 = !{!88, !5, i64 16}
!90 = !{!"llvm.loop.mustprogress"}
!91 = !{!"llvm.loop.unswitch.partial.disable"}
!92 = !{!88, !5, i64 20}
end_hunk_0
