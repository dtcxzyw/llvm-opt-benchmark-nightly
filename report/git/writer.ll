Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/writer?download=true
inline.NumInlined: 40
inline.NumDeleted: 14
begin_hunk_0_@reftable_writer_add_log:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.s

bb.f:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !86
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.v = load i64, ptr %i.u, align 8, !tbaa !43
  %i.w = icmp ugt i64 %i.t, %i.v
  br i1 %i.w, label %bb.s, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %1, align 8, !tbaa !87
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %bb.s, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !15   ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.ab = load i8, ptr %i.aa, align 4
  %.not25 = trunc i8 %i.ab to i1
  %.not26 = icmp eq ptr %i.z, null
  %or.cond = select i1 %.not25, i1 true, i1 %.not26
  br i1 %or.cond, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = call i32 @reftable_buf_addstr(ptr noundef nonnull %4, ptr noundef nonnull %i.z) #12 ; 2 uses
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %.preheader, %bb.l
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !52 ; 2 uses
  %.not27 = icmp eq i64 %i.ag, 0
  %.pre = load ptr, ptr %i.af, align 8, !tbaa !51 ; 2 uses
  br i1 %.not27, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = add i64 %i.ag, -1                       ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !15
  %i.ak = icmp eq i8 %i.aj, 10
  br i1 %i.ak, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.al = call i32 @reftable_buf_setlen(ptr noundef nonnull %4, i64 noundef %i.ah) #12 ; 2 uses
  %i.am = icmp slt i32 %i.al, 0
  br i1 %i.am, label %.loopexit, label %bb.j, !llvm.loop !82

.critedge:                                        ; preds = %bb.j, %bb.k
  %i.an = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.pre, i32 noundef 10) #14
  %.not28 = icmp eq ptr %i.an, null
  br i1 %.not28, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %.critedge
  %i.ao = call i32 @reftable_buf_addstr(ptr noundef nonnull %4, ptr noundef nonnull @.str) #12 ; 2 uses
  %i.ap = icmp slt i32 %i.ao, 0
  br i1 %i.ap, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = load ptr, ptr %i.af, align 8, !tbaa !51
  store ptr %i.aq, ptr %i.y, align 8, !tbaa !15
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  store i8 103, ptr %2, align 8, !tbaa !48
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.ar, i8 0, i64 7, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.as, ptr noundef nonnull readonly align 8 dereferenceable(144) %1, i64 144, i1 false), !tbaa.struct !85
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !38 ; 2 uses
  %.not.i29 = icmp eq ptr %i.au, null
  br i1 %.not.i29, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = call zeroext i8 @block_writer_type(ptr noundef nonnull %i.au) #12
  %i.aw = icmp eq i8 %i.av, 114
  br i1 %i.aw, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ax = call fastcc i32 @writer_finish_public_section(ptr noundef nonnull %0) ; 2 uses
  %i.ay = icmp sgt i32 %i.ax, -1
  br i1 %i.ay, label %bb.r, label %reftable_writer_add_log_verbatim.exit31

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !57
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !35
  %i.be = sub i64 %i.bd, %i.bb
  store i64 %i.be, ptr %i.bc, align 8, !tbaa !35
  store i32 0, ptr %i.az, align 8, !tbaa !57
  %i.bf = call fastcc i32 @writer_add_record(ptr noundef nonnull %0, ptr noundef %2)
  br label %reftable_writer_add_log_verbatim.exit31

reftable_writer_add_log_verbatim.exit31:          ; preds = %bb.q, %bb.r
  %.1.i30 = phi i32 [ %i.bf, %bb.r ], [ %i.ax, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  store ptr %i.z, ptr %i.y, align 8, !tbaa !15
  br label %.loopexit

.loopexit:                                        ; preds = %bb.l, %.critedge, %bb.m, %bb.i, %reftable_writer_add_log_verbatim.exit31
  %.0 = phi i32 [ %.1.i30, %reftable_writer_add_log_verbatim.exit31 ], [ %i.ac, %bb.i ], [ -6, %.critedge ], [ %i.ao, %bb.m ], [ %i.al, %bb.l ]
  call void @reftable_buf_release(ptr noundef nonnull %4) #12
  br label %bb.s

bb.s:                                             ; preds = %bb.g, %bb.f, %.loopexit, %reftable_writer_add_log_verbatim.exit
  %.019 = phi i32 [ %.1.i, %reftable_writer_add_log_verbatim.exit ], [ -6, %bb.f ], [ %.0, %.loopexit ], [ -6, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  ret i32 %.019
}

declare i32 @reftable_buf_addstr(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @reftable_buf_setlen(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @reftable_buf_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @reftable_writer_add_logs(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  tail call void @qsort(ptr noundef %1, i64 noundef %2, i64 noundef 144, ptr noundef nonnull @reftable_log_record_compare_key) #12
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.010.lcssa = phi i32 [ 0, %bb.a ], [ %i.b, %.lr.ph ]
  ret i32 %.010.lcssa

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.012 = phi i64 [ %i.c, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.a = getelementptr inbounds nuw [144 x i8], ptr %1, i64 %.012
  %i.b = tail call i32 @reftable_writer_add_log(ptr noundef %0, ptr noundef %i.a) ; 2 uses
  %i.c = add nuw i64 %.012, 1                     ; 2 uses
  %i.d = icmp eq i32 %i.b, 0
  %i.e = icmp ult i64 %i.c, %2
  %i.f = select i1 %i.d, i1 %i.e, i1 false
  br i1 %i.f, label %.lr.ph, label %._crit_edge, !llvm.loop !88
}

declare i32 @reftable_log_record_compare_key(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483648, 1) i32 @reftable_writer_close(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [72 x i8], align 16               ; 13 uses
  %i.b = alloca [28 x i8], align 16               ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.c = tail call fastcc i32 @writer_finish_public_section(ptr noundef %0) ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load i64, ptr %i.d, align 8, !tbaa !35
  %i.f = icmp eq i64 %i.e, 0                      ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  store i32 0, ptr %i.g, align 8, !tbaa !57
  br i1 %i.f, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 1413891410, ptr %i.b, align 16
  %i.h = getelementptr i8, ptr %0, i64 116
  %.val18.i = load i32, ptr %i.h, align 4, !tbaa !37 ; 5 uses
  %i.i = icmp eq i32 %.val18.i, 0
  %i.j = icmp eq i32 %.val18.i, 89
  %i.k = or i1 %i.i, %i.j
  %i.l = select i1 %i.k, i8 1, i8 2
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 %i.l, ptr %i.m, align 4, !tbaa !15
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.p = load i32, ptr %i.o, align 4, !tbaa !36   ; 3 uses
  %i.q = lshr i32 %i.p, 16
  %i.r = trunc i32 %i.q to i8
  store i8 %i.r, ptr %i.n, align 1, !tbaa !15
  %i.s = lshr i32 %i.p, 8
  %i.t = trunc i32 %i.s to i8
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  store i8 %i.t, ptr %i.u, align 2, !tbaa !15
  %i.v = trunc i32 %i.p to i8
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 7
  store i8 %i.v, ptr %i.w, align 1, !tbaa !15
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 88
  %1 = load <8 x i8>, ptr %i.y, align 8, !tbaa !42
  %2 = shufflevector <8 x i8> %1, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %2, ptr %i.x, align 8, !tbaa !15
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 96
  %3 = load <8 x i8>, ptr %i.aa, align 8, !tbaa !43
  %4 = shufflevector <8 x i8> %3, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %4, ptr %i.z, align 16, !tbaa !15
  switch i32 %.val18.i, label %padded_write.exit [
    i32 89, label %writer_write_header.exit
    i32 0, label %writer_write_header.exit
    i32 247, label %.thread.i
  ]

.thread.i:                                        ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store <4 x i8> <i8 115, i8 50, i8 53, i8 54>, ptr %i.ab, align 8, !tbaa !15
  br label %writer_write_header.exit

writer_write_header.exit:                         ; preds = %bb.c, %bb.c, %.thread.i
  %i.ac = icmp eq i32 %.val18.i, 0
  %i.ad = icmp eq i32 %.val18.i, 89
  %i.ae = or i1 %i.ac, %i.ad
  %i.af = select i1 %i.ae, i32 1, i32 2
  %i.ag = tail call i64 @header_size(i32 noundef %i.af) #12
  %i.ah = shl i64 %i.ag, 32
  %i.ai = ashr exact i64 %i.ah, 32                ; 2 uses
  %.pre = load i32, ptr %i.g, align 8, !tbaa !57  ; 2 uses
  %i.aj = icmp sgt i32 %.pre, 0
  br i1 %i.aj, label %bb.d, label %padded_write.exit

bb.d:                                             ; preds = %writer_write_header.exit
  %i.ak = zext nneg i32 %.pre to i64
  %i.al = tail call ptr @reftable_calloc(i64 noundef %i.ak, i64 noundef 1) #12 ; 4 uses
  %.not.i = icmp eq ptr %i.al, null
  br i1 %.not.i, label %padded_write.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.am = load ptr, ptr %0, align 8, !tbaa !32
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !33
  %i.ap = load i32, ptr %i.g, align 8, !tbaa !57
  %i.aq = sext i32 %i.ap to i64
  %i.ar = tail call i64 %i.am(ptr noundef %i.ao, ptr noundef nonnull %i.al, i64 noundef %i.aq) #12, !inline_history !89
  %i.as = trunc i64 %i.ar to i32                  ; 2 uses
  %i.at = icmp slt i32 %i.as, 0
  br i1 %i.at, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @reftable_free(ptr noundef nonnull %i.al) #12
  br label %padded_write.exit.thread

bb.g:                                             ; preds = %bb.e
  store i32 0, ptr %i.g, align 8, !tbaa !57
  tail call void @reftable_free(ptr noundef nonnull %i.al) #12
  br label %padded_write.exit

padded_write.exit.thread:                         ; preds = %bb.d, %bb.f
  %.1.i45.ph = phi i32 [ %i.as, %bb.f ], [ -1, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %bb.p

padded_write.exit:                                ; preds = %bb.c, %writer_write_header.exit, %bb.g
  %.1.i66 = phi i64 [ %i.ai, %bb.g ], [ %i.ai, %writer_write_header.exit ], [ -1, %bb.c ]
  store i32 0, ptr %i.g, align 8, !tbaa !57
  %i.au = load ptr, ptr %0, align 8, !tbaa !32
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !33
  %i.ax = call i64 %i.au(ptr noundef %i.aw, ptr noundef nonnull %i.b, i64 noundef %.1.i66) #12, !inline_history !89
  %i.ay = trunc i64 %i.ax to i32                  ; 2 uses
  %i.az = icmp slt i32 %i.ay, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br i1 %i.az, label %bb.p, label %bb.h

bb.h:                                             ; preds = %padded_write.exit, %bb.b
  store i32 1413891410, ptr %i.a, align 16
  %i.ba = getelementptr i8, ptr %0, i64 116       ; 2 uses
  %.val18.i46 = load i32, ptr %i.ba, align 4, !tbaa !37 ; 5 uses
  %i.bb = icmp eq i32 %.val18.i46, 0
  %i.bc = icmp eq i32 %.val18.i46, 89
  %i.bd = or i1 %i.bb, %i.bc
  %i.be = select i1 %i.bd, i8 1, i8 2
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 %i.be, ptr %i.bf, align 4, !tbaa !15
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !36 ; 3 uses
  %i.bj = lshr i32 %i.bi, 16
  %i.bk = trunc i32 %i.bj to i8
  store i8 %i.bk, ptr %i.bg, align 1, !tbaa !15
  %i.bl = lshr i32 %i.bi, 8
  %i.bm = trunc i32 %i.bl to i8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i8 %i.bm, ptr %i.bn, align 2, !tbaa !15
  %i.bo = trunc i32 %i.bi to i8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !15
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 88
  %5 = load <8 x i8>, ptr %i.br, align 8, !tbaa !42
  %6 = shufflevector <8 x i8> %5, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %6, ptr %i.bq, align 8, !tbaa !15
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 96
  %7 = load <8 x i8>, ptr %i.bt, align 8, !tbaa !43
  %8 = shufflevector <8 x i8> %7, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %8, ptr %i.bs, align 16, !tbaa !15
  switch i32 %.val18.i46, label %writer_write_header.exit52 [
    i32 89, label %bb.i
    i32 0, label %bb.i
    i32 247, label %.thread.i48
  ]

.thread.i48:                                      ; preds = %bb.h
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store <4 x i8> <i8 115, i8 50, i8 53, i8 54>, ptr %i.bu, align 8, !tbaa !15
  br label %bb.i

bb.i:                                             ; preds = %.thread.i48, %bb.h, %bb.h
  %i.bv = icmp eq i32 %.val18.i46, 0
  %i.bw = icmp eq i32 %.val18.i46, 89
  %i.bx = or i1 %i.bv, %i.bw
  %i.by = select i1 %i.bx, i32 1, i32 2
  %i.bz = call i64 @header_size(i32 noundef %i.by) #12
  %i.ca = trunc i64 %i.bz to i32
  br label %writer_write_header.exit52

writer_write_header.exit52:                       ; preds = %bb.h, %bb.i
  %.1.i51 = phi i32 [ %i.ca, %bb.i ], [ -1, %bb.h ] ; 2 uses
  %i.cb = sext i32 %.1.i51 to i64
  %i.cc = getelementptr inbounds i8, ptr %i.a, i64 %i.cb ; 9 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 368
  %9 = load <8 x i8>, ptr %i.cd, align 8, !tbaa !90
  %10 = shufflevector <8 x i8> %9, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %10, ptr %i.cc, align 1, !tbaa !15
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !91
  %i.ch = shl i64 %i.cg, 5
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !58
  %i.ck = sext i32 %i.cj to i64
  %i.cl = or i64 %i.ch, %i.ck
  %11 = bitcast i64 %i.cl to <8 x i8>
  %12 = shufflevector <8 x i8> %11, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %12, ptr %i.ce, align 1, !tbaa !15
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 408
  %13 = load <8 x i8>, ptr %i.cn, align 8, !tbaa !92
  %14 = shufflevector <8 x i8> %13, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %14, ptr %i.cm, align 1, !tbaa !15
  %i.co = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 480
  %15 = load <8 x i8>, ptr %i.cp, align 8, !tbaa !93
  %16 = shufflevector <8 x i8> %15, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %16, ptr %i.co, align 1, !tbaa !15
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 488
  %17 = load <8 x i8>, ptr %i.cr, align 8, !tbaa !94
  %18 = shufflevector <8 x i8> %17, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %18, ptr %i.cq, align 1, !tbaa !15
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cc, i64 40
  %i.ct = add i32 %.1.i51, 40
  %i.cu = call i64 @crc32(i64 noundef 0, ptr noundef nonnull %i.a, i32 noundef %i.ct) #12 ; 4 uses
  %i.cv = lshr i64 %i.cu, 24
  %i.cw = trunc i64 %i.cv to i8
  store i8 %i.cw, ptr %i.cs, align 1, !tbaa !15
  %i.cx = lshr i64 %i.cu, 16
  %i.cy = trunc i64 %i.cx to i8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cc, i64 41
  store i8 %i.cy, ptr %i.cz, align 1, !tbaa !15
  %i.da = lshr i64 %i.cu, 8
  %i.db = trunc i64 %i.da to i8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cc, i64 42
  store i8 %i.db, ptr %i.dc, align 1, !tbaa !15
  %i.dd = trunc i64 %i.cu to i8
  %i.de = getelementptr inbounds nuw i8, ptr %i.cc, i64 43
  store i8 %i.dd, ptr %i.de, align 1, !tbaa !15
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !34
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !33
  %i.dj = call i32 %i.dg(ptr noundef %i.di) #12
  %i.dk = icmp slt i32 %i.dj, 0
  br i1 %i.dk, label %bb.p, label %bb.j

bb.j:                                             ; preds = %writer_write_header.exit52
  %.val = load i32, ptr %i.ba, align 4, !tbaa !37 ; 2 uses
  %i.dl = icmp eq i32 %.val, 0
  %i.dm = icmp eq i32 %.val, 89
  %i.dn = or i1 %i.dl, %i.dm
  %i.do = select i1 %i.dn, i32 1, i32 2
  %i.dp = call i64 @footer_size(i32 noundef %i.do) #12
  %i.dq = load i32, ptr %i.g, align 8, !tbaa !57  ; 2 uses
  %i.dr = icmp sgt i32 %i.dq, 0
  br i1 %i.dr, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.ds = zext nneg i32 %i.dq to i64
  %i.dt = call ptr @reftable_calloc(i64 noundef %i.ds, i64 noundef 1) #12 ; 4 uses
  %.not.i56 = icmp eq ptr %i.dt, null
  br i1 %.not.i56, label %padded_write.exit57, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.du = load ptr, ptr %0, align 8, !tbaa !32
  %i.dv = load ptr, ptr %i.dh, align 8, !tbaa !33
  %i.dw = load i32, ptr %i.g, align 8, !tbaa !57
  %i.dx = sext i32 %i.dw to i64
  %i.dy = call i64 %i.du(ptr noundef %i.dv, ptr noundef nonnull %i.dt, i64 noundef %i.dx) #12, !inline_history !89
  %i.dz = trunc i64 %i.dy to i32                  ; 2 uses
  %i.ea = icmp slt i32 %i.dz, 0
  br i1 %i.ea, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @reftable_free(ptr noundef nonnull %i.dt) #12
  br label %padded_write.exit57

bb.n:                                             ; preds = %bb.l
  store i32 0, ptr %i.g, align 8, !tbaa !57
  call void @reftable_free(ptr noundef nonnull %i.dt) #12
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.j
  store i32 0, ptr %i.g, align 8, !tbaa !57
  %i.eb = load ptr, ptr %0, align 8, !tbaa !32
  %i.ec = load ptr, ptr %i.dh, align 8, !tbaa !33
  %i.ed = call i64 %i.eb(ptr noundef %i.ec, ptr noundef nonnull %i.a, i64 noundef %i.dp) #12, !inline_history !89
  %i.ee = trunc i64 %i.ed to i32
  %..i53 = call i32 @llvm.smin.i32(i32 %i.ee, i32 0)
  br label %padded_write.exit57

padded_write.exit57:                              ; preds = %bb.k, %bb.m, %bb.o
  %.1.i55 = phi i32 [ %..i53, %bb.o ], [ -1, %bb.k ], [ %i.dz, %bb.m ] ; 2 uses
  %i.ef = icmp sgt i32 %.1.i55, -1
  %or.cond = select i1 %i.ef, i1 %i.f, i1 false
  %spec.store.select = select i1 %or.cond, i32 -8, i32 %.1.i55
  br label %bb.p

bb.p:                                             ; preds = %padded_write.exit.thread, %padded_write.exit, %writer_write_header.exit52, %padded_write.exit57, %bb.a
  %.041 = phi i32 [ %i.c, %bb.a ], [ %i.ay, %padded_write.exit ], [ %spec.store.select, %padded_write.exit57 ], [ -2, %writer_write_header.exit52 ], [ %.1.i45.ph, %padded_write.exit.thread ]
  call fastcc void @writer_release(ptr noundef nonnull %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.041
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @writer_finish_public_section(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.write_record_arg, align 8   ; 7 uses
  %2 = alloca %struct.common_prefix_arg, align 8  ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call zeroext i8 @block_writer_type(ptr noundef nonnull %i.b) #12
  %i.d = tail call fastcc i32 @writer_finish_section(ptr noundef nonnull %0) ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.p, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp eq i8 %i.c, 114
  br i1 %i.f, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.h = load i8, ptr %i.g, align 8
  %i.i = and i8 %i.h, 1
  %.not20 = icmp eq i8 %i.i, 0
  br i1 %.not20, label %bb.e, label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 348
  %i.k = load i32, ptr %i.j, align 4, !tbaa !95
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  store ptr %0, ptr %1, align 8, !tbaa !60
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i32 0, ptr %i.m, align 8, !tbaa !61
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 0, ptr %i.n, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) @__const.writer_dump_object_index.common, i64 16, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !50   ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @infix_walk(ptr noundef nonnull %i.p, ptr noundef nonnull @update_common, ptr noundef nonnull %2) #12
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !64
  %i.q = trunc i64 %.pre.i to i32
  %i.r = add i32 %i.q, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.s = phi i32 [ %i.r, %bb.g ], [ 2, %bb.f ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 496
  store i32 %i.s, ptr %i.t, align 8, !tbaa !58
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.v = load i64, ptr %i.u, align 8, !tbaa !35
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr i8, ptr %0, i64 116
  %.val.i.i = load i32, ptr %i.x, align 4, !tbaa !37 ; 2 uses
  %i.y = icmp eq i32 %.val.i.i, 0
  %i.z = icmp eq i32 %.val.i.i, 89
  %i.aa = or i1 %i.y, %i.z
  %i.ab = select i1 %i.aa, i32 1, i32 2
  %i.ac = call i64 @header_size(i32 noundef %i.ab) #12
  %i.ad = trunc i64 %i.ac to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0.i.i = phi i32 [ %i.ad, %bb.i ], [ 0, %bb.h ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @reftable_buf_reset(ptr noundef nonnull %i.ae) #12
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !31
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !36
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !37
  %i.am = call i32 @hash_size(i32 noundef %i.al) #12
  %i.an = call i32 @block_writer_init(ptr noundef nonnull %i.af, i8 noundef zeroext 111, ptr noundef %i.ah, i32 noundef %i.aj, i32 noundef %.0.i.i, i32 noundef %i.am) #12 ; 2 uses
  %i.ao = icmp slt i32 %i.an, 0
  br i1 %i.ao, label %writer_dump_object_index.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr %i.af, ptr %i.a, align 8, !tbaa !38
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 114
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !39
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i16 %i.aq, ptr %i.ar, align 8, !tbaa !40
  %i.as = load ptr, ptr %i.o, align 8, !tbaa !50  ; 2 uses
  %.not14.i = icmp eq ptr %i.as, null
  br i1 %.not14.i, label %writer_dump_object_index.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @infix_walk(ptr noundef nonnull %i.as, ptr noundef nonnull @write_object_record, ptr noundef nonnull %1) #12
  %.pre16.i = load i32, ptr %i.m, align 8, !tbaa !61 ; 2 uses
  %i.at = icmp slt i32 %.pre16.i, 0
  br i1 %i.at, label %writer_dump_object_index.exit.thread, label %writer_dump_object_index.exit

writer_dump_object_index.exit.thread:             ; preds = %bb.l, %bb.j
  %.0.i.ph = phi i32 [ %i.an, %bb.j ], [ %.pre16.i, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  br label %bb.p

writer_dump_object_index.exit:                    ; preds = %bb.k, %bb.l
  %i.au = call fastcc i32 @writer_finish_section(ptr noundef nonnull %0) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  %i.av = icmp slt i32 %i.au, 0
  br i1 %i.av, label %bb.p, label %bb.m

bb.m:                                             ; preds = %writer_dump_object_index.exit, %bb.e, %bb.d, %bb.c
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !50 ; 2 uses
  %.not21 = icmp eq ptr %i.ax, null
  br i1 %.not21, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @infix_walk(ptr noundef nonnull %i.ax, ptr noundef nonnull @object_record_free, ptr noundef null) #12
  %i.ay = load ptr, ptr %i.aw, align 8, !tbaa !50
  call void @tree_free(ptr noundef %i.ay) #12
  store ptr null, ptr %i.aw, align 8, !tbaa !50
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  store ptr null, ptr %i.a, align 8, !tbaa !38
  br label %bb.p

bb.p:                                             ; preds = %writer_dump_object_index.exit.thread, %writer_dump_object_index.exit, %bb.b, %bb.a, %bb.o
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.o ], [ %i.d, %bb.b ], [ %i.au, %writer_dump_object_index.exit ], [ %.0.i.ph, %writer_dump_object_index.exit.thread ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @writer_write_header(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 24)) %1) unnamed_addr #0 {
bb.a:
  store i32 1413891410, ptr %1, align 1
  %i.a = getelementptr i8, ptr %0, i64 116        ; 3 uses
  %.val18 = load i32, ptr %i.a, align 4, !tbaa !37 ; 2 uses
  %i.b = icmp eq i32 %.val18, 0
  %i.c = icmp eq i32 %.val18, 89
  %i.d = or i1 %i.b, %i.c
  %i.e = select i1 %i.d, i8 1, i8 2
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 %i.e, ptr %i.f, align 1, !tbaa !15
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.i = load i32, ptr %i.h, align 4, !tbaa !36   ; 3 uses
  %i.j = lshr i32 %i.i, 16
  %i.k = trunc i32 %i.j to i8
  store i8 %i.k, ptr %i.g, align 1, !tbaa !15
  %i.l = lshr i32 %i.i, 8
  %i.m = trunc i32 %i.l to i8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i8 %i.m, ptr %i.n, align 1, !tbaa !15
  %i.o = trunc i32 %i.i to i8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 7
  store i8 %i.o, ptr %i.p, align 1, !tbaa !15
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 88
  %2 = load <8 x i8>, ptr %i.r, align 8, !tbaa !42
  %3 = shufflevector <8 x i8> %2, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %3, ptr %i.q, align 1, !tbaa !15
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96
  %4 = load <8 x i8>, ptr %i.t, align 8, !tbaa !43
  %5 = shufflevector <8 x i8> %4, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %5, ptr %i.s, align 1, !tbaa !15
  %.val17 = load i32, ptr %i.a, align 4, !tbaa !37 ; 3 uses
  switch i32 %.val17, label %bb.c [
    i32 89, label %bb.b
    i32 0, label %bb.b
    i32 247, label %.thread
  ]

.thread:                                          ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  store <4 x i8> <i8 115, i8 50, i8 53, i8 54>, ptr %i.u, align 1, !tbaa !15
  %.val.pre = load i32, ptr %i.a, align 4, !tbaa !37
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.a, %.thread
  %.val = phi i32 [ %.val17, %bb.a ], [ %.val17, %bb.a ], [ %.val.pre, %.thread ] ; 2 uses
  %i.v = icmp eq i32 %.val, 0
  %i.w = icmp eq i32 %.val, 89
  %i.x = or i1 %i.v, %i.w
  %i.y = select i1 %i.x, i32 1, i32 2
  %i.z = tail call i64 @header_size(i32 noundef %i.y) #12 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare i64 @crc32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @footer_size(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local nonnull ptr @reftable_writer_stats(ptr nofree noundef readnone captures(ret: address, provenance) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328
  ret ptr %i.a
}

declare i64 @header_size(i32 noundef) local_unnamed_addr #3

declare i32 @block_writer_init(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @block_writer_release(ptr noundef) local_unnamed_addr #3

declare i32 @reftable_record_key(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @reftable_buf_cmp(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @block_writer_type(ptr noundef) local_unnamed_addr #3

declare i32 @block_writer_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @writer_flush_block(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.reftable_index_record, align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.d = load i32, ptr %i.c, align 8, !tbaa !97
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.u, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  %i.f = tail call zeroext i8 @block_writer_type(ptr noundef nonnull %i.b) #12 ; 2 uses
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.h = tail call i32 @block_writer_finish(ptr noundef %i.g) #12 ; 5 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %writer_flush_nonempty_block.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.k = load i8, ptr %i.j, align 8
  %i.l = and i8 %i.k, 1
  %i.m = icmp eq i8 %i.l, 0
  %i.n = icmp ne i8 %i.f, 103
  %or.cond.i = select i1 %i.m, i1 %i.n, i1 false
  br i1 %or.cond.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.p = load i32, ptr %i.o, align 4, !tbaa !36
  %i.q = sub i32 %i.p, %i.h
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i = phi i32 [ %i.q, %bb.e ], [ 0, %bb.d ]   ; 2 uses
  %switch.tableidx = add i8 %i.f, -103            ; 3 uses
  %i.r = icmp ult i8 %switch.tableidx, 12
  br i1 %i.r, label %switch.hole_check, label %bb.g

bb.g:                                             ; preds = %switch.hole_check, %bb.f
  tail call void @abort() #15
  unreachable

switch.hole_check:                                ; preds = %bb.f
  %switch.maskindex = zext nneg i8 %switch.tableidx to i16
  %switch.shifted = lshr i16 2309, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.g

switch.lookup:                                    ; preds = %switch.hole_check
  %i.s = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.writer_finish_section, i64 %i.s
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i64
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %switch.ext ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !98   ; 2 uses
  %i.w = icmp ne i32 %i.v, 0                      ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !35   ; 2 uses
  %.not.i = icmp eq i64 %i.y, 0                   ; 2 uses
  %brmerge.i = select i1 %i.w, i1 true, i1 %.not.i
  %not..i = xor i1 %i.w, true
  %.not.mux.i = select i1 %not..i, i1 true, i1 %.not.i
  br i1 %brmerge.i, label %.thread.i, label %bb.h

bb.h:                                             ; preds = %switch.lookup
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store i64 %i.y, ptr %i.z, align 8, !tbaa !99
  br label %.thread.i

.thread.i:                                        ; preds = %bb.h, %switch.lookup
  %.not61.i = phi i1 [ %.not.mux.i, %switch.lookup ], [ false, %bb.h ]
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !38  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 120
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !97
  %i.ad = load i32, ptr %i.t, align 8, !tbaa !100
  %i.ae = add nsw i32 %i.ad, %i.ac
  store i32 %i.ae, ptr %i.t, align 8, !tbaa !100
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !101
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 4 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !102
  %i.aj = add i32 %i.ai, %i.ag
  store i32 %i.aj, ptr %i.ah, align 4, !tbaa !102
  %i.ak = add nsw i32 %i.v, 1
  store i32 %i.ak, ptr %i.u, align 8, !tbaa !98
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !103
  %i.an = add nsw i32 %i.am, 1
  store i32 %i.an, ptr %i.al, align 8, !tbaa !103
  br i1 %.not61.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.thread.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !31
  tail call fastcc void @writer_write_header(ptr noundef nonnull %0, ptr noundef %i.ap)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.thread.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !31
  %i.as = zext nneg i32 %i.h to i64
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !57 ; 2 uses
  %i.av = icmp sgt i32 %i.au, 0
  br i1 %i.av, label %bb.k, label %padded_write.exit.i

bb.k:                                             ; preds = %bb.j
  %i.aw = zext nneg i32 %i.au to i64
  %i.ax = tail call ptr @reftable_calloc(i64 noundef %i.aw, i64 noundef 1) #12 ; 4 uses
  %.not.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i, label %writer_flush_nonempty_block.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ay = load ptr, ptr %0, align 8, !tbaa !32
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !33
  %i.bb = load i32, ptr %i.at, align 8, !tbaa !57
  %i.bc = sext i32 %i.bb to i64
  %i.bd = tail call i64 %i.ay(ptr noundef %i.ba, ptr noundef nonnull %i.ax, i64 noundef %i.bc) #12, !inline_history !96
  %i.be = trunc i64 %i.bd to i32                  ; 2 uses
  %i.bf = icmp slt i32 %i.be, 0
  br i1 %i.bf, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @reftable_free(ptr noundef nonnull %i.ax) #12
  br label %writer_flush_nonempty_block.exit

bb.n:                                             ; preds = %bb.l
  store i32 0, ptr %i.at, align 8, !tbaa !57
  tail call void @reftable_free(ptr noundef nonnull %i.ax) #12
  br label %padded_write.exit.i

padded_write.exit.i:                              ; preds = %bb.n, %bb.j
  store i32 %.0.i, ptr %i.at, align 8, !tbaa !57
  %i.bg = load ptr, ptr %0, align 8, !tbaa !32
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !33
  %i.bj = tail call i64 %i.bg(ptr noundef %i.bi, ptr noundef %i.ar, i64 noundef %i.as) #12, !inline_history !96
  %i.bk = trunc i64 %i.bj to i32                  ; 2 uses
  %i.bl = icmp slt i32 %i.bk, 0
  br i1 %i.bl, label %writer_flush_nonempty_block.exit, label %bb.o
end_hunk_0
begin_hunk_1_@writer_finish_section:bb.a
  call void @abort() #15
  unreachable

switch.hole_check:                                ; preds = %writer_clear_index.exit
  %switch.maskindex = zext nneg i8 %switch.tableidx to i16
  %switch.shifted = lshr i16 2309, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.h

switch.lookup:                                    ; preds = %switch.hole_check
  %i.bn = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.writer_finish_section, i64 %i.bn
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 %switch.ext ; 3 uses
  %i.bp = load i32, ptr %i.h, align 8, !tbaa !112
  %i.bq = sub nsw i32 %i.bp, %i.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  store i32 %i.bq, ptr %i.br, align 4, !tbaa !113
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  store i64 %.052.lcssa, ptr %i.bs, align 8, !tbaa !114
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store i32 %.051.lcssa, ptr %i.bt, align 8, !tbaa !115
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @reftable_buf_reset(ptr noundef nonnull %i.bu) #12
  br label %.thread

.thread:                                          ; preds = %bb.d, %._crit_edge, %._crit_edge.thread, %.lr.ph, %bb.a, %switch.lookup
  %.4 = phi i32 [ 0, %switch.lookup ], [ %i.j, %bb.a ], [ %i.as, %.lr.ph ], [ %i.au, %._crit_edge ], [ %i.al, %bb.d ], [ %i.aw, %._crit_edge.thread ]
  ret i32 %.4
}

declare void @infix_walk(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @object_record_free(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56
  tail call void @reftable_free(ptr noundef %i.b) #12
  store ptr null, ptr %i.a, align 8, !tbaa !56
  tail call void @reftable_buf_release(ptr noundef %1) #12
  tail call void @reftable_free(ptr noundef %1) #12
  ret void
}

declare void @tree_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @update_common(ptr nofree noundef captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !116    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @common_prefix_size(ptr noundef %1, ptr noundef nonnull %i.a) #12 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !64
  %i.e = icmp ugt i64 %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 %i.b, ptr %i.c, align 8, !tbaa !64
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !116
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @write_object_record(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %2 = alloca %struct.reftable_record, align 8    ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %2, i8 0, i64 152, i1 false)
  store i8 111, ptr %2, align 8, !tbaa !48
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !117
  store ptr %i.c, ptr %i.a, align 8, !tbaa !119
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load ptr, ptr %0, align 8, !tbaa !60     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 496
  %i.g = load i32, ptr %i.f, align 8, !tbaa !58
  store i32 %i.g, ptr %i.d, align 8, !tbaa !120
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !56
  store ptr %i.j, ptr %i.h, align 8, !tbaa !121
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load i64, ptr %i.l, align 8, !tbaa !55
  %i.n = trunc i64 %i.m to i32
  store i32 %i.n, ptr %i.k, align 8, !tbaa !122
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !61
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 160
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !38
  %i.t = call i32 @block_writer_add(ptr noundef %i.s, ptr noundef nonnull %2) #12 ; 2 uses
  store i32 %i.t, ptr %i.o, align 8, !tbaa !61
  %cond = icmp eq i32 %i.t, -11
  br i1 %cond, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.u = load ptr, ptr %0, align 8, !tbaa !60
  %i.v = call fastcc i32 @writer_flush_block(ptr noundef %i.u) ; 2 uses
  store i32 %i.v, ptr %i.o, align 8, !tbaa !61
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = load ptr, ptr %0, align 8, !tbaa !60     ; 10 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  %i.z = load i64, ptr %i.y, align 8, !tbaa !35
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr i8, ptr %i.x, i64 116
  %.val.i = load i32, ptr %i.ab, align 4, !tbaa !37 ; 2 uses
  %i.ac = icmp eq i32 %.val.i, 0
  %i.ad = icmp eq i32 %.val.i, 89
  %i.ae = or i1 %i.ac, %i.ad
  %i.af = select i1 %i.ae, i32 1, i32 2
  %i.ag = call i64 @header_size(i32 noundef %i.af) #12
  %i.ah = trunc i64 %i.ag to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i = phi i32 [ %i.ah, %bb.e ], [ 0, %bb.d ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  call void @reftable_buf_reset(ptr noundef nonnull %i.ai) #12
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 168 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 152
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !31
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 108
  %i.an = load i32, ptr %i.am, align 4, !tbaa !36
  %i.ao = getelementptr inbounds nuw i8, ptr %i.x, i64 116
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !37
  %i.aq = call i32 @hash_size(i32 noundef %i.ap) #12
  %i.ar = call i32 @block_writer_init(ptr noundef nonnull %i.aj, i8 noundef zeroext 111, ptr noundef %i.al, i32 noundef %i.an, i32 noundef %.0.i, i32 noundef %i.aq) #12 ; 2 uses
  %i.as = icmp slt i32 %i.ar, 0
  br i1 %i.as, label %writer_reinit_block_writer.exit.thread, label %bb.g

writer_reinit_block_writer.exit.thread:           ; preds = %bb.f
  store i32 %i.ar, ptr %i.o, align 8, !tbaa !61
  br label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %i.x, i64 160
  store ptr %i.aj, ptr %i.at, align 8, !tbaa !38
  %i.au = getelementptr inbounds nuw i8, ptr %i.x, i64 114
  %i.av = load i16, ptr %i.au, align 2, !tbaa !39
  %i.aw = getelementptr inbounds nuw i8, ptr %i.x, i64 208
  store i16 %i.av, ptr %i.aw, align 8, !tbaa !40
  store i32 0, ptr %i.o, align 8, !tbaa !61
  %i.ax = load ptr, ptr %0, align 8, !tbaa !60
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 160
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !38
  %i.ba = call i32 @block_writer_add(ptr noundef %i.az, ptr noundef nonnull %2) #12 ; 2 uses
  store i32 %i.ba, ptr %i.o, align 8, !tbaa !61
  %cond26 = icmp eq i32 %i.ba, -11
  br i1 %cond26, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.k, align 8, !tbaa !15
  %i.bb = load ptr, ptr %0, align 8, !tbaa !60
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 160
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !38
  %i.be = call i32 @block_writer_add(ptr noundef %i.bd, ptr noundef nonnull %2) #12 ; 2 uses
  store i32 %i.be, ptr %i.o, align 8, !tbaa !61
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @__assert_fail(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 668, ptr noundef nonnull @__PRETTY_FUNCTION__.write_object_record) #15
  unreachable

bb.j:                                             ; preds = %writer_reinit_block_writer.exit.thread, %bb.g, %bb.b, %bb.h, %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret void
}

declare i64 @common_prefix_size(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(none) }
attributes #14 = { nounwind willreturn memory(read) }
attributes #15 = { noreturn nounwind }

!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !46}
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!10, !10, i64 0}
!14 = !{!"short", !9, i64 0}
!15 = !{!9, !9, i64 0}
!16 = !{!"long", !9, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!"any pointer", !9, i64 0}
!19 = !{!"p1 omnipotent char", !18, i64 0}
!20 = !{!"reftable_buf", !16, i64 0, !16, i64 8, !19, i64 16}
!21 = !{!"reftable_write_options", !10, i64 0, !10, i64 4, !10, i64 8, !14, i64 10, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 20, !9, i64 21, !16, i64 24, !18, i64 32, !18, i64 40}
!22 = !{!"p1 _ZTS12block_writer", !18, i64 0}
!23 = !{!"p1 _ZTS10z_stream_s", !18, i64 0}
!24 = !{!"p1 int", !18, i64 0}
!25 = !{!"block_writer", !23, i64 0, !19, i64 8, !16, i64 16, !19, i64 24, !10, i64 32, !10, i64 36, !14, i64 40, !10, i64 44, !10, i64 48, !24, i64 56, !10, i64 64, !10, i64 68, !20, i64 72, !20, i64 96, !10, i64 120}
!26 = !{!"p1 _ZTS21reftable_index_record", !18, i64 0}
!27 = !{!"p1 _ZTS9tree_node", !18, i64 0}
!28 = !{!"reftable_block_stats", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !16, i64 24, !16, i64 32}
!29 = !{!"reftable_stats", !10, i64 0, !28, i64 8, !28, i64 48, !28, i64 88, !28, i64 128, !10, i64 168}
!30 = !{!"reftable_writer", !18, i64 0, !18, i64 8, !18, i64 16, !10, i64 24, !20, i64 32, !20, i64 56, !16, i64 80, !16, i64 88, !16, i64 96, !21, i64 104, !19, i64 152, !22, i64 160, !25, i64 168, !26, i64 296, !16, i64 304, !16, i64 312, !27, i64 320, !29, i64 328}
!31 = !{!30, !19, i64 152}
!32 = !{!30, !18, i64 0}
!33 = !{!30, !18, i64 16}
!34 = !{!30, !18, i64 8}
!35 = !{!30, !16, i64 80}
!36 = !{!30, !10, i64 108}
!37 = !{!30, !10, i64 116}
!38 = !{!30, !22, i64 160}
!39 = !{!30, !14, i64 114}
!40 = !{!25, !14, i64 40}
!41 = !{!"p1 _ZTS15reftable_writer", !18, i64 0}
!42 = !{!30, !16, i64 88}
!43 = !{!30, !16, i64 96}
!44 = !{!30, !26, i64 296}
!45 = !{!30, !16, i64 304}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!"reftable_record", !9, i64 0, !9, i64 8}
!48 = !{!47, !9, i64 0}
!49 = !{!19, !19, i64 0}
!50 = !{!30, !27, i64 320}
!51 = !{!20, !19, i64 16}
!52 = !{!20, !16, i64 8}
!53 = !{!"p1 long", !18, i64 0}
!54 = !{!"obj_index_tree_node", !20, i64 0, !53, i64 24, !16, i64 32, !16, i64 40}
!55 = !{!54, !16, i64 32}
!56 = !{!54, !53, i64 24}
!57 = !{!30, !10, i64 24}
!58 = !{!30, !10, i64 496}
!59 = !{!"write_record_arg", !41, i64 0, !10, i64 8}
!60 = !{!59, !41, i64 0}
!61 = !{!59, !10, i64 8}
!62 = !{!"p1 _ZTS12reftable_buf", !18, i64 0}
!63 = !{!"common_prefix_arg", !62, i64 0, !16, i64 8}
!64 = !{!63, !16, i64 8}
!65 = !{i64 0, i64 8, !17, i64 8, i64 8, !17, i64 16, i64 8, !17, i64 24, i64 8, !49}
!66 = !{!14, !14, i64 0}
!67 = !{!18, !18, i64 0}
!68 = !{i64 0, i64 4, !13, i64 4, i64 1, !15, i64 5, i64 1, !15, i64 8, i64 8, !17, i64 16, i64 8, !67, i64 24, i64 8, !67}
!69 = !{!41, !41, i64 0}
!70 = !{!30, !16, i64 40}
!71 = !{i64 0, i64 8, !49, i64 8, i64 8, !17, i64 16, i64 8, !17, i64 24, i64 4, !13, i64 32, i64 64, !15}
!72 = !{!"reftable_ref_record", !19, i64 0, !16, i64 8, !16, i64 16, !10, i64 24, !9, i64 32}
!73 = !{!72, !19, i64 0}
!74 = !{!72, !16, i64 16}
!75 = !{!30, !19, i64 72}
!76 = !{!30, !16, i64 64}
!77 = !{i64 0, i64 8, !17, i64 8, i64 8, !17, i64 16, i64 8, !49}
!78 = !{!"tree_node", !18, i64 0, !27, i64 8, !27, i64 16}
!79 = !{!78, !18, i64 0}
!80 = !{!54, !16, i64 40}
!81 = distinct !{!81, !46}
!82 = distinct !{!82, !46}
!83 = !{!"reftable_log_record", !19, i64 0, !16, i64 8, !16, i64 16, !10, i64 24, !9, i64 32}
!84 = !{!83, !10, i64 24}
!85 = !{i64 0, i64 8, !49, i64 8, i64 8, !17, i64 16, i64 8, !17, i64 24, i64 4, !13, i64 32, i64 112, !15}
!86 = !{!83, !16, i64 16}
!87 = !{!83, !19, i64 0}
!88 = distinct !{!88, !46}
!89 = distinct !{null}
!90 = !{!30, !16, i64 368}
!91 = !{!30, !16, i64 400}
!92 = !{!30, !16, i64 408}
!93 = !{!30, !16, i64 480}
!94 = !{!30, !16, i64 488}
!95 = !{!30, !10, i64 348}
!96 = distinct !{null, null}
!97 = !{!25, !10, i64 120}
!98 = !{!28, !10, i64 8}
!99 = !{!28, !16, i64 24}
!100 = !{!28, !10, i64 0}
!101 = !{!25, !10, i64 64}
!102 = !{!28, !10, i64 4}
!103 = !{!30, !10, i64 328}
!104 = !{!30, !16, i64 312}
!105 = !{!"reftable_index_record", !16, i64 0, !20, i64 8}
!106 = !{!105, !16, i64 0}
!107 = !{!25, !19, i64 88}
!108 = !{!25, !16, i64 80}
!109 = distinct !{!109, !46}
!110 = distinct !{!110, !46}
!111 = distinct !{!111, !46}
!112 = !{!30, !10, i64 424}
!113 = !{!28, !10, i64 12}
!114 = !{!28, !16, i64 32}
!115 = !{!28, !10, i64 16}
!116 = !{!63, !62, i64 0}
!117 = !{!54, !19, i64 16}
!118 = !{!"reftable_obj_record", !19, i64 0, !10, i64 8, !53, i64 16, !10, i64 24}
!119 = !{!118, !19, i64 0}
!120 = !{!118, !10, i64 8}
!121 = !{!118, !53, i64 16}
!122 = !{!118, !10, i64 24}
end_hunk_1
