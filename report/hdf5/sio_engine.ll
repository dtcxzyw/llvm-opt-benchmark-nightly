Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/sio_engine?download=true
inline.NumInlined: 8
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 8
begin_hunk_0_@dset_write:bb.a

.lr.ph54.preheader:                               ; preds = %.preheader
  %i.ab = zext nneg i32 %i.z to i64
  %i.ac = shl nuw nsw i64 %i.ab, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 16 @buf_offset, i8 0, i64 %i.ac, i1 false), !tbaa !16
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph54.preheader, %.preheader
  store ptr %3, ptr @buf_p, align 8, !tbaa !22
  call fastcc void @posix_buffer_write(i32 noundef 0, ptr noundef %1, ptr noundef nonnull %2)
  br label %bb.q

bb.b:                                             ; preds = %.lr.ph57.split
  %i.ad = load i32, ptr %i.n, align 8, !tbaa !24
  %.not = icmp eq i32 %i.ad, 0
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ae = load i32, ptr %i.o, align 4, !tbaa !60
  %.not48 = icmp eq i32 %i.ae, 0
  br i1 %.not48, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = load i64, ptr @h5dset_space_id, align 8, !tbaa !16
  %i.ag = call i32 @H5Sget_simple_extent_dims(i64 noundef %i.af, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #17
  %i.ah = icmp sgt i32 %i.ag, -1
  br i1 %i.ah, label %.preheader50, label %bb.e

.preheader50:                                     ; preds = %bb.d
  %i.ai = load i32, ptr %i.p, align 4, !tbaa !17  ; 2 uses
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %.lr.ph, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.ak = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.al = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ak, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.37, i32 noundef 649, ptr noundef nonnull @.str.9) #18 ; 0 uses
  br label %.loopexit51

.lr.ph:                                           ; preds = %.preheader50, %bb.j
  %i.am = phi i32 [ %i.be, %bb.j ], [ %i.ai, %.preheader50 ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.j ], [ 0, %.preheader50 ] ; 4 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !16 ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr @h5offset, i64 %indvars.iv
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !16
  %.not49 = icmp ugt i64 %i.ao, %i.aq
  br i1 %.not49, label %bb.j, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr @h5count, i64 %indvars.iv
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !16
  %i.at = add i64 %i.as, %i.ao
  store i64 %i.at, ptr %i.an, align 8, !tbaa !16
  %i.au = load i64, ptr @h5dset_space_id, align 8, !tbaa !16
  %i.av = call i32 @H5Sset_extent_simple(i64 noundef %i.au, i32 noundef %i.am, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #17
  %i.aw = icmp sgt i32 %i.av, -1
  br i1 %i.aw, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ax = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.ay = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ax, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.38, i32 noundef 657, ptr noundef nonnull @.str.9) #18 ; 0 uses
  br label %.loopexit51

bb.h:                                             ; preds = %bb.f
  %i.az = load i64, ptr @h5ds_id, align 8, !tbaa !16
  %i.ba = call i32 @H5Dset_extent(i64 noundef %i.az, ptr noundef nonnull %i.a) #17
  %i.bb = icmp sgt i32 %i.ba, -1
  br i1 %i.bb, label %._crit_edge64, label %bb.i

._crit_edge64:                                    ; preds = %bb.h
  %.pre = load i32, ptr %i.p, align 4, !tbaa !17
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bc = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.bd = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bc, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.39, i32 noundef 659, ptr noundef nonnull @.str.9) #18 ; 0 uses
  br label %.loopexit51

bb.j:                                             ; preds = %._crit_edge64, %.lr.ph
  %i.be = phi i32 [ %.pre, %._crit_edge64 ], [ %i.am, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bf = sext i32 %i.be to i64
  %i.bg = icmp slt i64 %indvars.iv.next, %i.bf
  br i1 %i.bg, label %.lr.ph, label %.loopexit, !llvm.loop !59

.loopexit:                                        ; preds = %bb.j, %.preheader50, %bb.c, %bb.b
  %i.bh = load i64, ptr @h5dset_space_id, align 8, !tbaa !16
  %i.bi = call i32 @H5Soffset_simple(i64 noundef %i.bh, ptr noundef nonnull @h5offset) #17
  %i.bj = icmp sgt i32 %i.bi, -1
  br i1 %i.bj, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.loopexit
  %i.bk = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.bl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bk, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.40, i32 noundef 665, ptr noundef nonnull @.str.9) #18 ; 0 uses
  br label %.loopexit51

bb.l:                                             ; preds = %.loopexit
  %i.bm = load i64, ptr @h5dset_space_id, align 8, !tbaa !16
  %i.bn = call i32 @H5Sget_simple_extent_dims(i64 noundef %i.bm, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #17 ; 0 uses
  %i.bo = load i64, ptr @h5ds_id, align 8, !tbaa !16
  %i.bp = load i8, ptr @H5_libinit_g, align 1, !tbaa !26, !range !27, !noundef !28
  %i.bq = trunc nuw i8 %i.bp to i1
  %i.br = load i8, ptr @H5_libterm_g, align 1, !range !27
  %i.bs = trunc nuw i8 %i.br to i1
  %i.bt = select i1 %i.bq, i1 true, i1 %i.bs
  br i1 %i.bt, label %bb.n, label %bb.m, !prof !29

bb.m:                                             ; preds = %bb.l
  %i.bu = call i32 @H5open() #17                  ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.bv = load i64, ptr @H5T_NATIVE_UCHAR_g, align 8, !tbaa !16
  %i.bw = load i64, ptr @h5mem_space_id, align 8, !tbaa !16
  %i.bx = load i64, ptr @h5dset_space_id, align 8, !tbaa !16
  %i.by = load i64, ptr @h5dxpl, align 8, !tbaa !16
  %i.bz = call i32 @H5Dwrite(i64 noundef %i.bo, i64 noundef %i.bv, i64 noundef %i.bw, i64 noundef %i.bx, i64 noundef %i.by, ptr noundef nonnull %3) #17
  %i.ca = icmp sgt i32 %i.bz, -1
  br i1 %i.ca, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cb = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.cc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cb, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.41, i32 noundef 670, ptr noundef nonnull @.str.9) #18 ; 0 uses
  br label %.loopexit51

bb.p:                                             ; preds = %.lr.ph57.split
  %i.cd = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.ce = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cd, ptr noundef nonnull @.str, i32 noundef %i.y) #18 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.p, %._crit_edge
  %i.cf = load i64, ptr %i.s, align 8, !tbaa !16
  %i.cg = add i64 %i.cf, %.04355                  ; 2 uses
  %i.ch = load i64, ptr %i.i, align 8, !tbaa !16
  %i.ci = icmp ult i64 %i.cg, %i.ch
  br i1 %i.ci, label %.lr.ph57.split, label %.loopexit51, !llvm.loop !58

.loopexit51:                                      ; preds = %bb.q, %.lr.ph57.split.us, %bb.a, %bb.o, %bb.k, %bb.i, %bb.g, %bb.e
  %.045 = phi i32 [ -1, %bb.i ], [ -1, %bb.g ], [ -1, %bb.o ], [ -1, %bb.k ], [ -1, %bb.e ], [ 0, %bb.a ], [ 0, %.lr.ph57.split.us ], [ 0, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 %.045
}

declare i32 @H5Dclose(i64 noundef) local_unnamed_addr #2

declare i32 @H5Sclose(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @posix_buffer_write(i32 noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.b = load i32, ptr %i.a, align 4, !tbaa !17   ; 4 uses
  %i.c = add nsw i32 %i.b, -1
  %i.d = icmp sge i32 %0, %i.c
  %i.e = load i32, ptr @cont_dim, align 4
  %.not = icmp eq i32 %0, %i.e
  %or.cond = select i1 %i.d, i1 true, i1 %.not
  %i.f = sext i32 %0 to i64                       ; 2 uses
  %i.g = getelementptr inbounds [8 x i8], ptr @buf_offset, i64 %i.f ; 2 uses
  br i1 %or.cond, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 296
  %i.i = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.f ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !16
  %.not12 = icmp eq i64 %i.j, 0
  br i1 %.not12, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.k = add nsw i32 %0, 1                        ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.l = add nuw i64 %.0401, 1                    ; 2 uses
  %i.m = load i64, ptr %i.i, align 8, !tbaa !16
  %i.n = icmp ult i64 %i.l, %i.m
  br i1 %i.n, label %bb.c, label %.loopexit, !llvm.loop !61

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.0401 = phi i64 [ 0, %.lr.ph ], [ %i.l, %bb.b ] ; 2 uses
  store i64 %.0401, ptr %i.g, align 8, !tbaa !16
  tail call fastcc void @posix_buffer_write(i32 noundef %i.k, ptr noundef %1, ptr noundef nonnull %2)
  %i.o = load i32, ptr @cont_dim, align 4, !tbaa !18
  %i.p = icmp eq i32 %i.k, %i.o
  br i1 %i.p, label %.loopexit, label %bb.b

bb.d:                                             ; preds = %bb.a
  store i64 0, ptr %i.g, align 8, !tbaa !16
  %i.q = icmp sgt i32 %i.b, 0
  br i1 %i.q, label %.lr.ph9, label %._crit_edge10

.lr.ph9:                                          ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 9 uses
  %i.s = zext nneg i32 %i.b to i64
  %wide.trip.count20 = zext nneg i32 %i.b to i64  ; 3 uses
  %i.t = add nsw i64 %wide.trip.count20, -2
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph9, %._crit_edge
  %indvars.iv.a = phi i64 [ 0, %.lr.ph9 ], [ %indvars.iv.next18, %._crit_edge ] ; 5 uses
  %.0386 = phi i64 [ 0, %.lr.ph9 ], [ %indvars.iv.next, %._crit_edge ]
  %i.u = xor i64 %indvars.iv.a, -1
  %i.v = add nsw i64 %i.u, %wide.trip.count20     ; 2 uses
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv.a, 1 ; 5 uses
  %i.w = icmp samesign ult i64 %indvars.iv.next18, %i.s
  br i1 %i.w, label %.lr.ph5.preheader, label %._crit_edge

.lr.ph5.preheader:                                ; preds = %bb.e
  %i.x = sub i64 %i.t, %indvars.iv.a
  %xtraiter = and i64 %i.v, 7                     ; 3 uses
  %i.y = icmp ult i64 %i.x, 7
  br i1 %i.y, label %.lr.ph5.epil.preheader, label %.lr.ph5.preheader.new

.lr.ph5.preheader.new:                            ; preds = %.lr.ph5.preheader
  %unroll_iter = and i64 %i.v, -8
  br label %.lr.ph5

.lr.ph5:                                          ; preds = %.lr.ph5, %.lr.ph5.preheader.new
  %indvars.iv14 = phi i64 [ %indvars.iv.next18, %.lr.ph5.preheader.new ], [ %indvars.iv.next15.7, %.lr.ph5 ] ; 9 uses
  %.0393 = phi i64 [ 1, %.lr.ph5.preheader.new ], [ %i.bd, %.lr.ph5 ]
  %niter = phi i64 [ 0, %.lr.ph5.preheader.new ], [ %niter.next.7, %.lr.ph5 ]
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv14
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !16
  %i.ab = mul nsw i64 %i.aa, %.0393
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv14
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !16
  %i.af = mul nsw i64 %i.ae, %i.ab
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv14
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !16
  %i.aj = mul nsw i64 %i.ai, %i.af
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv14
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load i64, ptr %i.al, align 8, !tbaa !16
  %i.an = mul nsw i64 %i.am, %i.aj
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv14
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !16
  %i.ar = mul nsw i64 %i.aq, %i.an
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv14
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.au = load i64, ptr %i.at, align 8, !tbaa !16
  %i.av = mul nsw i64 %i.au, %i.ar
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv14
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !16
  %i.az = mul nsw i64 %i.ay, %i.av
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv14
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 56
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !16
  %i.bd = mul nsw i64 %i.bc, %i.az                ; 3 uses
  %indvars.iv.next15.7 = add nuw nsw i64 %indvars.iv14, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph5, !llvm.loop !62

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph5
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph5.epil.preheader

.lr.ph5.epil.preheader:                           ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph5.preheader
  %indvars.iv14.epil.init = phi i64 [ %indvars.iv.next18, %.lr.ph5.preheader ], [ %indvars.iv.next15.7, %._crit_edge.loopexit.unr-lcssa ]
  %.0393.epil.init = phi i64 [ 1, %.lr.ph5.preheader ], [ %i.bd, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod4 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod4)
  br label %.lr.ph5.epil

.lr.ph5.epil:                                     ; preds = %.lr.ph5.epil, %.lr.ph5.epil.preheader
  %indvars.iv14.epil = phi i64 [ %indvars.iv.next15.epil, %.lr.ph5.epil ], [ %indvars.iv14.epil.init, %.lr.ph5.epil.preheader ] ; 2 uses
  %.0393.epil = phi i64 [ %i.bg, %.lr.ph5.epil ], [ %.0393.epil.init, %.lr.ph5.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph5.epil ], [ 0, %.lr.ph5.epil.preheader ]
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv14.epil
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !16
  %i.bg = mul nsw i64 %i.bf, %.0393.epil          ; 2 uses
  %indvars.iv.next15.epil = add nuw nsw i64 %indvars.iv14.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph5.epil, !llvm.loop !63

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph5.epil, %bb.e
  %.039.lcssa = phi i64 [ 1, %bb.e ], [ %i.bd, %._crit_edge.loopexit.unr-lcssa ], [ %i.bg, %.lr.ph5.epil ]
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr @offset, i64 %indvars.iv.a
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !16
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr @buf_offset, i64 %indvars.iv.a
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !16
  %i.bl = add nsw i64 %i.bk, %i.bi
  %i.bm = mul nsw i64 %i.bl, %.039.lcssa
  %indvars.iv.next = add nsw i64 %i.bm, %.0386    ; 2 uses
  %exitcond21.not = icmp eq i64 %indvars.iv.next18, %wide.trip.count20
  br i1 %exitcond21.not, label %._crit_edge10, label %bb.e, !llvm.loop !64

._crit_edge10:                                    ; preds = %._crit_edge, %bb.d
  %.038.lcssa = phi i64 [ 0, %bb.d ], [ %indvars.iv.next, %._crit_edge ]
  %i.bn = load i32, ptr %1, align 8, !tbaa !12
  %i.bo = tail call i64 @lseek64(i32 noundef %i.bn, i64 noundef %.038.lcssa, i32 noundef 0) #17
  %i.bp = icmp sgt i64 %i.bo, -1
  br i1 %i.bp, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge10
  %i.bq = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.br = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bq, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.42, i32 noundef 732, ptr noundef nonnull @.str.9) #18 ; 0 uses
  br label %.loopexit

bb.g:                                             ; preds = %._crit_edge10
  %i.bs = load i64, ptr @cont_size, align 8, !tbaa !16 ; 2 uses
  %i.bt = load i32, ptr %1, align 8, !tbaa !12
  %i.bu = load ptr, ptr @buf_p, align 8, !tbaa !22
  %i.bv = tail call i64 @write(i32 noundef %i.bt, ptr noundef %i.bu, i64 noundef %i.bs) #17
  %i.bw = icmp eq i64 %i.bs, %i.bv
  br i1 %i.bw, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bx = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.by = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bx, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.43, i32 noundef 735, ptr noundef nonnull @.str.9) #18 ; 0 uses
  br label %.loopexit

bb.i:                                             ; preds = %bb.g
  %i.bz = load i64, ptr @cont_size, align 8, !tbaa !16
  %i.ca = load ptr, ptr @buf_p, align 8, !tbaa !22
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.bz
  store ptr %i.cb, ptr @buf_p, align 8, !tbaa !22
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.c, %.preheader, %bb.i, %bb.h, %bb.f
  ret void
}

declare i32 @H5Sget_simple_extent_dims(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @H5Sset_extent_simple(i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @H5Dset_extent(i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @H5Soffset_simple(i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @H5Dwrite(i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek64(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #13

declare i64 @H5Dopen2(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @dset_read(i32 noundef range(i32 -2147483648, 2147483647) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef nonnull %3) unnamed_addr #0 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = getelementptr inbounds [4 x i8], ptr @order, i64 %i.a
  %i.c = load i32, ptr %i.b, align 4, !tbaa !18
  %i.d = add nsw i32 %i.c, -1
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.f = sext i32 %i.d to i64                     ; 4 uses
  %i.g = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.f ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !16
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %.loopexit, label %.lr.ph7

.lr.ph7:                                          ; preds = %bb.a
  %i.i = getelementptr inbounds [8 x i8], ptr @h5offset, i64 %i.f ; 2 uses
  %i.j = getelementptr inbounds [8 x i8], ptr @offset, i64 %i.f ; 2 uses
  %i.k = icmp sgt i32 %0, 0
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.m = add nsw i32 %0, -1
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 296
  %i.o = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.f ; 2 uses
  br i1 %i.k, label %.lr.ph7.split.us, label %.lr.ph7.split

.lr.ph7.split.us:                                 ; preds = %.lr.ph7, %.lr.ph7.split.us
  %.0314.us = phi i64 [ %i.r, %.lr.ph7.split.us ], [ 0, %.lr.ph7 ] ; 3 uses
  store i64 %.0314.us, ptr %i.i, align 8, !tbaa !16
  store i64 %.0314.us, ptr %i.j, align 8, !tbaa !16
  %i.p = tail call fastcc i32 @dset_read(i32 noundef %i.m, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3)
  %i.q = load i64, ptr %i.o, align 8, !tbaa !16
  %i.r = add i64 %i.q, %.0314.us                  ; 2 uses
  %i.s = load i64, ptr %i.g, align 8, !tbaa !16
  %i.t = icmp ult i64 %i.r, %i.s
  br i1 %i.t, label %.lr.ph7.split.us, label %.loopexit, !llvm.loop !65

.lr.ph7.split:                                    ; preds = %.lr.ph7, %bb.i
  %.0314 = phi i64 [ %i.ax, %bb.i ], [ 0, %.lr.ph7 ] ; 3 uses
  store i64 %.0314, ptr %i.i, align 8, !tbaa !16
  store i64 %.0314, ptr %i.j, align 8, !tbaa !16
  %i.u = load i32, ptr %2, align 8, !tbaa !11     ; 2 uses
  switch i32 %i.u, label %bb.h [
    i32 0, label %.preheader
    i32 1, label %bb.b
  ]

.preheader:                                       ; preds = %.lr.ph7.split
  %i.v = load i32, ptr %i.l, align 4, !tbaa !17   ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.x = zext nneg i32 %i.v to i64
  %i.y = shl nuw nsw i64 %i.x, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 16 @buf_offset, i8 0, i64 %i.y, i1 false), !tbaa !16
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %.preheader
  store ptr %3, ptr @buf_p, align 8, !tbaa !22
  %i.z = tail call fastcc i32 @posix_buffer_read(i32 noundef 0, ptr noundef %1, ptr noundef nonnull %2) ; 0 uses
  br label %bb.i

bb.b:                                             ; preds = %.lr.ph7.split
  %i.aa = load i64, ptr @h5dset_space_id, align 8, !tbaa !16
  %i.ab = tail call i32 @H5Soffset_simple(i64 noundef %i.aa, ptr noundef nonnull @h5offset) #17
  %i.ac = icmp sgt i32 %i.ab, -1
  br i1 %i.ac, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.ae = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ad, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.40, i32 noundef 963, ptr noundef nonnull @.str.9) #18 ; 0 uses
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.af = load i64, ptr @h5ds_id, align 8, !tbaa !16
  %i.ag = load i8, ptr @H5_libinit_g, align 1, !tbaa !26, !range !27, !noundef !28
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = load i8, ptr @H5_libterm_g, align 1, !range !27
  %i.aj = trunc nuw i8 %i.ai to i1
  %i.ak = select i1 %i.ah, i1 true, i1 %i.aj
  br i1 %i.ak, label %bb.f, label %bb.e, !prof !29

bb.e:                                             ; preds = %bb.d
  %i.al = tail call i32 @H5open() #17             ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.am = load i64, ptr @H5T_NATIVE_UCHAR_g, align 8, !tbaa !16
  %i.an = load i64, ptr @h5mem_space_id, align 8, !tbaa !16
  %i.ao = load i64, ptr @h5dset_space_id, align 8, !tbaa !16
  %i.ap = load i64, ptr @h5dxpl, align 8, !tbaa !16
  %i.aq = tail call i32 @H5Dread(i64 noundef %i.af, i64 noundef %i.am, i64 noundef %i.an, i64 noundef %i.ao, i64 noundef %i.ap, ptr noundef nonnull %3) #17
  %i.ar = icmp sgt i32 %i.aq, -1
  br i1 %i.ar, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.at = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.as, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.47, i32 noundef 966, ptr noundef nonnull @.str.9) #18 ; 0 uses
  br label %.loopexit

bb.h:                                             ; preds = %.lr.ph7.split
  %i.au = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.av = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.au, ptr noundef nonnull @.str, i32 noundef %i.u) #18 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h, %._crit_edge
  %i.aw = load i64, ptr %i.o, align 8, !tbaa !16
  %i.ax = add i64 %i.aw, %.0314                   ; 2 uses
  %i.ay = load i64, ptr %i.g, align 8, !tbaa !16
  %i.az = icmp ult i64 %i.ax, %i.ay
  br i1 %i.az, label %.lr.ph7.split, label %.loopexit, !llvm.loop !65

.loopexit:                                        ; preds = %bb.i, %.lr.ph7.split.us, %bb.a, %bb.g, %bb.c
  %.2 = phi i32 [ -1, %bb.g ], [ -1, %bb.c ], [ 0, %bb.a ], [ %i.p, %.lr.ph7.split.us ], [ 0, %bb.i ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @posix_buffer_read(i32 noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.b = load i32, ptr %i.a, align 4, !tbaa !17   ; 4 uses
  %i.c = add nsw i32 %i.b, -1
  %i.d = icmp sge i32 %0, %i.c
  %i.e = load i32, ptr @cont_dim, align 4
  %.not = icmp eq i32 %0, %i.e
  %or.cond = select i1 %i.d, i1 true, i1 %.not
  %i.f = sext i32 %0 to i64                       ; 2 uses
  %i.g = getelementptr inbounds [8 x i8], ptr @buf_offset, i64 %i.f ; 2 uses
  br i1 %or.cond, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 296
  %i.i = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.f ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !16
  %.not14 = icmp eq i64 %i.j, 0
  br i1 %.not14, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.k = add nsw i32 %0, 1                        ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.l = add nuw i64 %.0401, 1                    ; 2 uses
  %i.m = load i64, ptr %i.i, align 8, !tbaa !16
  %i.n = icmp ult i64 %i.l, %i.m
  br i1 %i.n, label %bb.c, label %.loopexit, !llvm.loop !66

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.0401 = phi i64 [ 0, %.lr.ph ], [ %i.l, %bb.b ] ; 2 uses
  store i64 %.0401, ptr %i.g, align 8, !tbaa !16
  %i.o = tail call fastcc i32 @posix_buffer_read(i32 noundef %i.k, ptr noundef %1, ptr noundef nonnull %2) ; 2 uses
  %i.p = load i32, ptr @cont_dim, align 4, !tbaa !18
  %i.q = icmp eq i32 %i.k, %i.p
  br i1 %i.q, label %.loopexit, label %bb.b

bb.d:                                             ; preds = %bb.a
  store i64 0, ptr %i.g, align 8, !tbaa !16
  %i.r = icmp sgt i32 %i.b, 0
  br i1 %i.r, label %.lr.ph11, label %._crit_edge12

.lr.ph11:                                         ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 9 uses
  %i.t = zext nneg i32 %i.b to i64
  %wide.trip.count23 = zext nneg i32 %i.b to i64  ; 3 uses
  %i.u = add nsw i64 %wide.trip.count23, -2
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph11, %._crit_edge
  %indvars.iv.a = phi i64 [ 0, %.lr.ph11 ], [ %indvars.iv.next21, %._crit_edge ] ; 5 uses
  %.0388 = phi i64 [ 0, %.lr.ph11 ], [ %indvars.iv.next, %._crit_edge ]
  %i.v = xor i64 %indvars.iv.a, -1
  %i.w = add nsw i64 %i.v, %wide.trip.count23     ; 2 uses
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv.a, 1 ; 5 uses
  %i.x = icmp samesign ult i64 %indvars.iv.next21, %i.t
  br i1 %i.x, label %.lr.ph6.preheader, label %._crit_edge

.lr.ph6.preheader:                                ; preds = %bb.e
  %i.y = sub i64 %i.u, %indvars.iv.a
  %xtraiter = and i64 %i.w, 7                     ; 3 uses
  %i.z = icmp ult i64 %i.y, 7
  br i1 %i.z, label %.lr.ph6.epil.preheader, label %.lr.ph6.preheader.new

.lr.ph6.preheader.new:                            ; preds = %.lr.ph6.preheader
  %unroll_iter = and i64 %i.w, -8
  br label %.lr.ph6

.lr.ph6:                                          ; preds = %.lr.ph6, %.lr.ph6.preheader.new
  %indvars.iv17 = phi i64 [ %indvars.iv.next21, %.lr.ph6.preheader.new ], [ %indvars.iv.next18.7, %.lr.ph6 ] ; 9 uses
  %.0394 = phi i64 [ 1, %.lr.ph6.preheader.new ], [ %i.be, %.lr.ph6 ]
  %niter = phi i64 [ 0, %.lr.ph6.preheader.new ], [ %niter.next.7, %.lr.ph6 ]
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv17
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !16
  %i.ac = mul nsw i64 %i.ab, %.0394
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv17
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !16
  %i.ag = mul nsw i64 %i.af, %i.ac
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv17
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !16
  %i.ak = mul nsw i64 %i.aj, %i.ag
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv17
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load i64, ptr %i.am, align 8, !tbaa !16
  %i.ao = mul nsw i64 %i.an, %i.ak
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv17
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !16
  %i.as = mul nsw i64 %i.ar, %i.ao
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv17
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.av = load i64, ptr %i.au, align 8, !tbaa !16
  %i.aw = mul nsw i64 %i.av, %i.as
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv17
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !16
  %i.ba = mul nsw i64 %i.az, %i.aw
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv17
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 56
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !16
  %i.be = mul nsw i64 %i.bd, %i.ba                ; 3 uses
  %indvars.iv.next18.7 = add nuw nsw i64 %indvars.iv17, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph6, !llvm.loop !67

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph6
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph6.epil.preheader

.lr.ph6.epil.preheader:                           ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph6.preheader
  %indvars.iv17.epil.init = phi i64 [ %indvars.iv.next21, %.lr.ph6.preheader ], [ %indvars.iv.next18.7, %._crit_edge.loopexit.unr-lcssa ]
  %.0394.epil.init = phi i64 [ 1, %.lr.ph6.preheader ], [ %i.be, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod34 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod34)
  br label %.lr.ph6.epil

.lr.ph6.epil:                                     ; preds = %.lr.ph6.epil, %.lr.ph6.epil.preheader
  %indvars.iv17.epil = phi i64 [ %indvars.iv.next18.epil, %.lr.ph6.epil ], [ %indvars.iv17.epil.init, %.lr.ph6.epil.preheader ] ; 2 uses
  %.0394.epil = phi i64 [ %i.bh, %.lr.ph6.epil ], [ %.0394.epil.init, %.lr.ph6.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph6.epil ], [ 0, %.lr.ph6.epil.preheader ]
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv17.epil
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !16
  %i.bh = mul nsw i64 %i.bg, %.0394.epil          ; 2 uses
  %indvars.iv.next18.epil = add nuw nsw i64 %indvars.iv17.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph6.epil, !llvm.loop !68

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph6.epil, %bb.e
  %.039.lcssa = phi i64 [ 1, %bb.e ], [ %i.be, %._crit_edge.loopexit.unr-lcssa ], [ %i.bh, %.lr.ph6.epil ]
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr @offset, i64 %indvars.iv.a
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !16
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr @buf_offset, i64 %indvars.iv.a
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !16
  %i.bm = add nsw i64 %i.bl, %i.bj
  %i.bn = mul nsw i64 %i.bm, %.039.lcssa
  %indvars.iv.next = add nsw i64 %i.bn, %.0388    ; 2 uses
  %exitcond24.not = icmp eq i64 %indvars.iv.next21, %wide.trip.count23
  br i1 %exitcond24.not, label %._crit_edge12, label %bb.e, !llvm.loop !69

._crit_edge12:                                    ; preds = %._crit_edge, %bb.d
  %.038.lcssa = phi i64 [ 0, %bb.d ], [ %indvars.iv.next, %._crit_edge ]
  %i.bo = load i32, ptr %1, align 8, !tbaa !12
  %i.bp = tail call i64 @lseek64(i32 noundef %i.bo, i64 noundef %.038.lcssa, i32 noundef 0) #17
  %i.bq = icmp sgt i64 %i.bp, -1
  br i1 %i.bq, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge12
  %i.br = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.bs = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.br, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.42, i32 noundef 1022, ptr noundef nonnull @.str.9) #18 ; 0 uses
  br label %.loopexit

bb.g:                                             ; preds = %._crit_edge12
  %i.bt = load i64, ptr @cont_size, align 8, !tbaa !16 ; 2 uses
  %i.bu = load i32, ptr %1, align 8, !tbaa !12
  %i.bv = load ptr, ptr @buf_p, align 8, !tbaa !22
  %i.bw = tail call i64 @read(i32 noundef %i.bu, ptr noundef %i.bv, i64 noundef %i.bt) #17
  %i.bx = icmp eq i64 %i.bt, %i.bw
  br i1 %i.bx, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.by = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.bz = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.by, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.48, i32 noundef 1025, ptr noundef nonnull @.str.9) #18 ; 0 uses
  br label %.loopexit

bb.i:                                             ; preds = %bb.g
  %i.ca = load i64, ptr @cont_size, align 8, !tbaa !16
  %i.cb = load ptr, ptr @buf_p, align 8, !tbaa !22
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.ca
  store ptr %i.cc, ptr @buf_p, align 8, !tbaa !22
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.c, %.preheader, %bb.i, %bb.h, %bb.f
  %.3 = phi i32 [ -1, %bb.h ], [ -1, %bb.f ], [ 0, %bb.i ], [ 0, %.preheader ], [ %i.o, %bb.c ], [ %i.o, %bb.b ]
  ret i32 %.3
}

declare i32 @H5Dread(i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #13

; Function Attrs: nofree
declare noundef i32 @open64(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #13

declare i32 @H5Pset_file_space_strategy(i64 noundef, i32 noundef, i1 noundef zeroext, i64 noundef) local_unnamed_addr #2

declare i32 @H5Pset_file_space_page_size(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @H5Pset_page_buffer_size(i64 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i64 @H5Fcreate(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @H5Fopen(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @close(i32 noundef) local_unnamed_addr #2

declare i32 @H5Fclose(i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @remove(ptr noundef readonly captures(none)) local_unnamed_addr #3

declare i64 @H5Pget_driver(i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @access(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #3

declare i32 @H5Pget_fapl_core(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nounwind }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(0,1) }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { nounwind willreturn memory(none) }
attributes #22 = { nounwind willreturn memory(read) }
attributes #23 = { cold }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"long", !5, i64 0}
!10 = !{!"parameters_", !6, i64 0, !6, i64 4, !9, i64 8, !9, i64 16, !9, i64 24, !6, i64 32, !6, i64 36, !5, i64 40, !5, i64 296, !5, i64 552, !5, i64 808, !9, i64 936, !9, i64 944, !6, i64 952, !6, i64 956, !6, i64 960, !6, i64 964, !9, i64 968, !9, i64 976}
!11 = !{!10, !6, i64 0}
!12 = !{!5, !5, i64 0}
!13 = !{!"any pointer", !5, i64 0}
!14 = !{!"p1 _ZTS8_IO_FILE", !13, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!9, !9, i64 0}
!17 = !{!10, !6, i64 36}
!18 = !{!6, !6, i64 0}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!10, !6, i64 4}
!21 = !{!"p1 omnipotent char", !13, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!"llvm.loop.unroll.disable"}
!24 = !{!10, !6, i64 952}
!25 = !{!"_Bool", !5, i64 0}
!26 = !{!25, !25, i64 0}
!27 = !{i8 0, i8 2}
!28 = !{}
!29 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!30 = distinct !{!30, !19}
!31 = distinct !{!31, !19}
!32 = distinct !{!32, !19}
!33 = distinct !{!33, !19}
!34 = distinct !{!34, !19, !50, !51}
!35 = distinct !{!35, !19, !50, !51}
!36 = distinct !{!36, !19, !51, !50}
!37 = distinct !{!37, !19, !50, !51}
!38 = distinct !{!38, !19}
!39 = distinct !{!39, !23}
!40 = distinct !{!40, !19}
!41 = distinct !{!41, !19, !51, !50}
!42 = distinct !{!42, !19, !50, !51}
!43 = distinct !{!43, !19}
!44 = distinct !{!44, !23}
!45 = distinct !{!45, !19}
!46 = distinct !{!46, !19, !51, !50}
!47 = !{!"p1 _ZTS9io_time_t", !13, i64 0}
!48 = !{!"results_", !6, i64 0, !47, i64 8}
!49 = !{!48, !47, i64 8}
!50 = !{!"llvm.loop.isvectorized", i32 1}
!51 = !{!"llvm.loop.unroll.runtime.disable"}
!52 = !{!"branch_weights", i32 8, i32 24}
!53 = !{!10, !9, i64 24}
!54 = !{!10, !6, i64 960}
!55 = !{!48, !6, i64 0}
!56 = !{!10, !9, i64 968}
!57 = !{!10, !9, i64 976}
!58 = distinct !{!58, !19}
!59 = distinct !{!59, !19}
!60 = !{!10, !6, i64 956}
!61 = distinct !{!61, !19}
!62 = distinct !{!62, !19}
!63 = distinct !{!63, !23}
!64 = distinct !{!64, !19}
!65 = distinct !{!65, !19}
!66 = distinct !{!66, !19}
!67 = distinct !{!67, !19}
!68 = distinct !{!68, !23}
!69 = distinct !{!69, !19}
end_hunk_0
