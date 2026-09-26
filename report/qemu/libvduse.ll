Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/libvduse?download=true
inline.NumInlined: 64
inline.NumDeleted: 35
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@vduse_queue_map_desc:bb.a
bb.j:                                             ; preds = %bb.h
  %i.ar = load i64, ptr %i.ae, align 8, !tbaa !96
  %i.as = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.at = load i32, ptr %i.as, align 8, !tbaa !95
  %i.au = zext i32 %i.at to i64
  %.val = load ptr, ptr %i.f, align 8, !tbaa !24
  %i.av = call fastcc zeroext i1 @vduse_queue_map_single_desc(ptr %.val, ptr noundef %i.b, ptr noundef %3, i32 noundef 1024, i64 noundef %i.ar, i64 noundef %i.au)
  br i1 %i.av, label %._crit_edge112, label %.loopexit

._crit_edge112:                                   ; preds = %bb.j
  %.pre113 = load i32, ptr %i.b, align 4, !tbaa !47
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge112, %._crit_edge
  %i.aw = phi i32 [ %i.ab, %._crit_edge ], [ %.pre113, %._crit_edge112 ] ; 10 uses
  %i.ax = phi i32 [ %.pre, %._crit_edge ], [ 0, %._crit_edge112 ] ; 7 uses
  %i.ay = add i32 %i.aw, %i.ax
  %i.az = icmp ugt i32 %i.ay, %.0
  br i1 %i.az, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ba = load ptr, ptr @stderr, align 8, !tbaa !49
  %fwrite54 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 18, i64 1, ptr %i.ba) #23 ; 0 uses
  br label %.loopexit

bb.m:                                             ; preds = %bb.k
  %i.bb = sext i32 %.171 to i64
  %i.bc = getelementptr inbounds [16 x i8], ptr %.1, i64 %i.bb ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  %i.be = load i16, ptr %i.bd, align 4, !tbaa !94
  %i.bf = and i16 %i.be, 1
  %.not.i = icmp eq i16 %i.bf, 0
  br i1 %.not.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 14
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !97
  %i.bi = zext i16 %i.bh to i32                   ; 3 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !98
  fence release
  %.not9.i = icmp ugt i32 %.0, %i.bi
  br i1 %.not9.i, label %vduse_queue_read_next_desc.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bj = load ptr, ptr @stderr, align 8, !tbaa !49
  %i.bk = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bj, ptr noundef nonnull @.str.28, i32 noundef %i.bi) #22 ; 0 uses
  %i.bl = load ptr, ptr @stderr, align 8, !tbaa !49
  %fwrite53 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 22, i64 1, ptr %i.bl) #23 ; 0 uses
  br label %.loopexit

bb.p:                                             ; preds = %bb.m
  %i.bm = add i64 %2, 7
  %i.bn = and i64 %i.bm, -8                       ; 2 uses
  %i.bo = zext i32 %i.ax to i64                   ; 3 uses
  %i.bp = shl nuw nsw i64 %i.bo, 4
  %i.bq = add i64 %i.bp, %i.bn                    ; 2 uses
  %i.br = icmp ugt i64 %2, 31
  br i1 %i.br, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @__assert_fail(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.16, i32 noundef 635, ptr noundef nonnull @__PRETTY_FUNCTION__.vduse_queue_alloc_element) #24
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.bs = zext i32 %i.aw to i64                   ; 3 uses
  %i.bt = shl nuw nsw i64 %i.bs, 4
  %i.bu = add i64 %i.bq, %i.bt
  %i.bv = tail call noalias ptr @malloc(i64 noundef %i.bu) #25 ; 11 uses
  %.not.i57 = icmp eq ptr %i.bv, null
  br i1 %.not.i57, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bw = load ptr, ptr @stderr, align 8, !tbaa !49
  %fwrite51 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 22, i64 1, ptr %i.bw) #23 ; 0 uses
  br label %.loopexit

bb.t:                                             ; preds = %bb.r
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  store i32 %i.aw, ptr %i.bx, align 4, !tbaa !99
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i32 %i.ax, ptr %i.by, align 8, !tbaa !100
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bn
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 16 ; 4 uses
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !101
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bq
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bv, i64 24 ; 4 uses
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !102
  store i32 %1, ptr %i.bv, align 8, !tbaa !65
  %.not93 = icmp eq i32 %i.aw, 0
  br i1 %.not93, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.t
  %xtraiter = and i64 %i.bs, 1
  %i.cd = icmp eq i32 %i.aw, 1
  br i1 %i.cd, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.bs, 4294967294
  br label %.lr.ph

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod140 = trunc i32 %i.aw to i1
  tail call void @llvm.assume(i1 %lcmp.mod140)
  %i.ce = load ptr, ptr %i.cc, align 8, !tbaa !102
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %i.ce, i64 %indvars.iv.epil.init
  %i.cg = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cf, ptr noundef nonnull align 16 dereferenceable(16) %i.cg, i64 16, i1 false), !tbaa.struct !104
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph.epil.preheader, %.preheader.loopexit.unr-lcssa, %bb.t
  %.not94 = icmp eq i32 %i.ax, 0
  br i1 %.not94, label %.loopexit, label %.lr.ph92.preheader

.lr.ph92.preheader:                               ; preds = %.preheader
  %xtraiter141 = and i64 %i.bo, 1
  %i.ch = icmp eq i32 %i.ax, 1
  br i1 %i.ch, label %.lr.ph92.epil.preheader, label %.lr.ph92.preheader.new

.lr.ph92.preheader.new:                           ; preds = %.lr.ph92.preheader
  %unroll_iter144 = and i64 %i.bo, 4294967294
  br label %.lr.ph92

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ci = load ptr, ptr %i.cc, align 8, !tbaa !102
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %i.ci, i64 %indvars.iv
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, ptr noundef nonnull align 16 dereferenceable(16) %i.ck, i64 16, i1 false), !tbaa.struct !104
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.cl = load ptr, ptr %i.cc, align 8, !tbaa !102
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.cl, i64 %indvars.iv.next
  %i.cn = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv.next
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cm, ptr noundef nonnull align 16 dereferenceable(16) %i.cn, i64 16, i1 false), !tbaa.struct !104
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %.lr.ph

.lr.ph92:                                         ; preds = %.lr.ph92, %.lr.ph92.preheader.new
  %indvars.iv105 = phi i64 [ 0, %.lr.ph92.preheader.new ], [ %indvars.iv.next106.1, %.lr.ph92 ] ; 4 uses
  %niter145 = phi i64 [ 0, %.lr.ph92.preheader.new ], [ %niter145.next.1, %.lr.ph92 ]
  %i.co = load ptr, ptr %i.ca, align 8, !tbaa !101
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.co, i64 %indvars.iv105
  %i.cq = trunc nuw i64 %indvars.iv105 to i32
  %i.cr = add i32 %i.aw, %i.cq
  %i.cs = zext i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.cs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cp, ptr noundef nonnull align 16 dereferenceable(16) %i.ct, i64 16, i1 false), !tbaa.struct !104
  %indvars.iv.next106 = or disjoint i64 %indvars.iv105, 1 ; 2 uses
  %i.cu = load ptr, ptr %i.ca, align 8, !tbaa !101
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.cu, i64 %indvars.iv.next106
  %i.cw = trunc nuw i64 %indvars.iv.next106 to i32
  %i.cx = add i32 %i.aw, %i.cw
  %i.cy = zext i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.cy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cv, ptr noundef nonnull align 16 dereferenceable(16) %i.cz, i64 16, i1 false), !tbaa.struct !104
  %indvars.iv.next106.1 = add nuw nsw i64 %indvars.iv105, 2 ; 2 uses
  %niter145.next.1 = add i64 %niter145, 2         ; 2 uses
  %niter145.ncmp.1 = icmp eq i64 %niter145.next.1, %unroll_iter144
  br i1 %niter145.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph92

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph92
  %lcmp.mod142.not = icmp eq i64 %xtraiter141, 0
  br i1 %lcmp.mod142.not, label %.loopexit, label %.lr.ph92.epil.preheader

.lr.ph92.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph92.preheader
  %indvars.iv105.epil.init = phi i64 [ 0, %.lr.ph92.preheader ], [ %indvars.iv.next106.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod143 = trunc i32 %i.ax to i1
  tail call void @llvm.assume(i1 %lcmp.mod143)
  %i.da = load ptr, ptr %i.ca, align 8, !tbaa !101
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %i.da, i64 %indvars.iv105.epil.init
  %i.dc = trunc nuw i64 %indvars.iv105.epil.init to i32
  %i.dd = add i32 %i.aw, %i.dc
  %i.de = zext i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.de
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.db, ptr noundef nonnull align 16 dereferenceable(16) %i.df, i64 16, i1 false), !tbaa.struct !104
  br label %.loopexit

.loopexit:                                        ; preds = %bb.j, %bb.g, %.lr.ph92.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader, %bb.s, %bb.o, %bb.l, %bb.i, %.thread, %bb.c
  %.038 = phi ptr [ null, %bb.c ], [ null, %bb.l ], [ null, %bb.o ], [ %i.bv, %.preheader ], [ null, %bb.s ], [ null, %.thread ], [ null, %bb.i ], [ %i.bv, %.lr.ph92.epil.preheader ], [ %i.bv, %.loopexit.loopexit.unr-lcssa ], [ null, %bb.g ], [ null, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret ptr %.038
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @vduse_queue_push(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %vduse_queue_fill.exit.thread, label %vduse_queue_fill.exit, !prof !34

vduse_queue_fill.exit.thread:                     ; preds = %bb.a
  %i.c = load i32, ptr %1, align 8, !tbaa !65
  %i.d = getelementptr i8, ptr %0, i64 120        ; 2 uses
  %.val8 = load ptr, ptr %i.d, align 8, !tbaa !57
  %i.e = trunc i32 %i.c to i16
  %i.f = getelementptr inbounds nuw i8, ptr %.val8, i64 12
  store i16 %i.e, ptr %i.f, align 4, !tbaa !39
  br label %vduse_queue_flush.exit

vduse_queue_fill.exit:                            ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 3 uses
  %i.h = load i16, ptr %i.g, align 4, !tbaa !44
  %i.i = zext i16 %i.h to i32
  %i.j = load i32, ptr %0, align 8, !tbaa !45
  %i.k = urem i32 %i.i, %i.j
  %i.l = load i32, ptr %1, align 8, !tbaa !65
  %.sroa.4.0.insert.ext.i = zext i32 %2 to i64
  %.sroa.4.0.insert.shift.i = shl nuw i64 %.sroa.4.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.l to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.4.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.n = zext nneg i32 %i.k to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.n
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.o, align 4
  %.pr = load ptr, ptr %i.a, align 8, !tbaa !55
  %i.p = load i32, ptr %1, align 8, !tbaa !65
  %i.q = getelementptr i8, ptr %0, i64 120        ; 4 uses
  %.val = load ptr, ptr %i.q, align 8, !tbaa !57
  %i.r = trunc i32 %i.p to i16
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 12
  store i16 %i.r, ptr %i.s, align 4, !tbaa !39
  %.not.i7 = icmp eq ptr %.pr, null
  br i1 %.not.i7, label %vduse_queue_flush.exit, label %3, !prof !105

3:                                                ; preds = %vduse_queue_fill.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !106
  fence release
  %4 = load i16, ptr %i.g, align 4, !tbaa !44
  %5 = add i16 %4, 1                              ; 3 uses
  %6 = load ptr, ptr %i.a, align 8, !tbaa !55
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 2
  store i16 %5, ptr %7, align 2, !tbaa !39
  store i16 %5, ptr %i.g, align 4, !tbaa !44
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %9 = load i32, ptr %8, align 8, !tbaa !36
  %10 = add i32 %9, -1
  store i32 %10, ptr %8, align 8, !tbaa !36
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 62
  %12 = load i16, ptr %11, align 2, !tbaa !43
  %13 = sub i16 %5, %12
  %14 = icmp slt i16 %13, 1
  br i1 %14, label %bb.b, label %vduse_queue_flush.exit, !prof !34

bb.b:                                             ; preds = %3
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.t, align 8, !tbaa !40
  br label %vduse_queue_flush.exit

vduse_queue_flush.exit:                           ; preds = %vduse_queue_fill.exit.thread, %vduse_queue_fill.exit, %3, %bb.b
  %15 = phi ptr [ %i.d, %vduse_queue_fill.exit.thread ], [ %i.q, %vduse_queue_fill.exit ], [ %i.q, %3 ], [ %i.q, %bb.b ] ; 2 uses
  %i.u = load i32, ptr %1, align 8, !tbaa !65
  %i.v = load ptr, ptr %15, align 8, !tbaa !57
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = sext i32 %i.u to i64
  %i.y = getelementptr inbounds [16 x i8], ptr %i.w, i64 %i.x
  store i8 0, ptr %i.y, align 8, !tbaa !60
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !107
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.aa = load i16, ptr %i.z, align 4, !tbaa !44
  %i.ab = load ptr, ptr %15, align 8, !tbaa !57
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 14
  store i16 %i.aa, ptr %i.ac, align 2, !tbaa !39
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483647, -2147483648) i32 @vduse_dev_handler(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %1 = alloca %struct.vduse_vq_eventfd, align 4   ; 5 uses
  %2 = alloca %struct.vduse_dev_request, align 8  ; 9 uses
  %3 = alloca %struct.vduse_dev_response, align 4 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(148) %i.a, i8 0, i64 148, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8248 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !32
  %i.d = call i64 @read(i32 noundef %i.c, ptr noundef nonnull %2, i64 noundef 152) #20 ; 2 uses
  %sext.mask = and i64 %i.d, 4294967295
  %.not = icmp eq i64 %sext.mask, 152
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = trunc i64 %i.d to i32
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !49
  %i.g = tail call ptr @__errno_location() #21    ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !47
  %i.i = tail call ptr @strerror(i32 noundef %i.h) #20
  %i.j = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.f, ptr noundef nonnull @.str.2, i32 noundef %i.e, ptr noundef %i.i) #22 ; 0 uses
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !110
  store i32 %i.l, ptr %3, align 4, !tbaa !112
  %i.m = load i32, ptr %2, align 8, !tbaa !113    ; 2 uses
  switch i32 %i.m, label %vduse_dev_start_dataplane.exit [
    i32 0, label %bb.d
    i32 1, label %bb.e
    i32 2, label %bb.u
  ]

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %0, align 8, !tbaa !31
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !114
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [128 x i8], ptr %i.n, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.t = load i16, ptr %i.s, align 8, !tbaa !38
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i16 %i.t, ptr %i.u, align 4, !tbaa !114
  br label %vduse_dev_start_dataplane.exit

bb.e:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.w = load i8, ptr %i.v, align 8, !tbaa !114   ; 2 uses
  %i.x = and i8 %i.w, 4
  %.not24 = icmp eq i8 %i.x, 0
  br i1 %.not24, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = load i32, ptr %i.b, align 8, !tbaa !32
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8232 ; 2 uses
  %i.aa = tail call i32 (i32, i64, ...) @ioctl(i32 noundef %i.y, i64 noundef 2148040977, ptr noundef nonnull %i.z) #20
  %.not.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr @stderr, align 8, !tbaa !49
  %i.ac = tail call ptr @__errno_location() #21
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !47
  %i.ae = tail call ptr @strerror(i32 noundef %i.ad) #20
  %i.af = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ab, ptr noundef nonnull @.str.8, ptr noundef %i.ae) #22 ; 0 uses
  br label %vduse_dev_start_dataplane.exit

bb.h:                                             ; preds = %bb.f
  %.val.i = load i64, ptr %i.z, align 8, !tbaa !35
  %i.ag = and i64 %.val.i, 4294967296
  %.not7.i = icmp eq i64 %i.ag, 0
  br i1 %.not7.i, label %bb.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8224 ; 2 uses
  %i.ai = load i16, ptr %i.ah, align 8, !tbaa !66
  %.not9.i = icmp eq i16 %i.ai, 0
  br i1 %.not9.i, label %vduse_dev_start_dataplane.exit, label %.lr.ph.i

bb.i:                                             ; preds = %bb.h
  tail call void @__assert_fail(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.16, i32 noundef 985, ptr noundef nonnull @__PRETTY_FUNCTION__.vduse_dev_start_dataplane) #24
  unreachable

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.aj = load ptr, ptr %0, align 8, !tbaa !31
  %i.ak = getelementptr inbounds nuw [128 x i8], ptr %i.aj, i64 %indvars.iv.i
  tail call fastcc void @vduse_queue_enable(ptr noundef %i.ak)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.al = load i16, ptr %i.ah, align 8, !tbaa !66
  %i.am = zext i16 %i.al to i64
  %i.an = icmp samesign ult i64 %indvars.iv.next.i, %i.am
  br i1 %i.an, label %.lr.ph.i, label %vduse_dev_start_dataplane.exit

bb.j:                                             ; preds = %bb.e
  %i.ao = icmp eq i8 %i.w, 0
  br i1 %i.ao, label %bb.k, label %vduse_dev_start_dataplane.exit

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8224 ; 2 uses
  %i.aq = load i16, ptr %i.ap, align 8, !tbaa !66 ; 3 uses
  %i.ar = zext i16 %i.aq to i64
  %i.as = mul nuw nsw i64 %i.ar, 16448
  %.not12.i = icmp eq i16 %i.aq, 0
  br i1 %.not12.i, label %._crit_edge.i, label %.lr.ph.i27

.lr.ph.i27:                                       ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 4
  br label %bb.l

bb.l:                                             ; preds = %vduse_queue_disable.exit.i, %.lr.ph.i27
  %i.au = phi i16 [ %i.aq, %.lr.ph.i27 ], [ %i.bs, %vduse_queue_disable.exit.i ]
  %indvars.iv.i28 = phi i64 [ 0, %.lr.ph.i27 ], [ %indvars.iv.next.i29, %vduse_queue_disable.exit.i ] ; 2 uses
  %i.av = load ptr, ptr %0, align 8, !tbaa !31
  %i.aw = getelementptr inbounds nuw [128 x i8], ptr %i.av, i64 %indvars.iv.i28 ; 8 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 88
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 76 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 4, !tbaa !67, !range !41, !noundef !42
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.m, label %vduse_queue_disable.exit.i

bb.m:                                             ; preds = %bb.l
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 8240
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !68
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !70
  call void %i.bf(ptr noundef %i.ay, ptr noundef nonnull %i.aw) #20, !inline_history !108
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aw, i64 68
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !46
  store i32 %i.bh, ptr %1, align 4, !tbaa !72
  store i32 -1, ptr %i.at, align 4, !tbaa !73
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ay, i64 8248
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !32
  %i.bk = call i32 (i32, i64, ...) @ioctl(i32 noundef %i.bj, i64 noundef 1074299158, ptr noundef nonnull %1) #20 ; 0 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aw, i64 80 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !25
  %i.bn = call i32 @close(i32 noundef %i.bm) #20  ; 0 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aw, i64 72
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !36
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @__assert_fail(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.16, i32 noundef 964, ptr noundef nonnull @__PRETTY_FUNCTION__.vduse_queue_disable) #24
  unreachable

bb.o:                                             ; preds = %bb.m
  store i32 0, ptr %i.aw, align 8, !tbaa !45
  %i.br = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i8 0, ptr %i.az, align 4, !tbaa !67
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.br, i8 0, i64 48, i1 false)
  store i32 -1, ptr %i.bl, align 8, !tbaa !25
  %.pre.i = load i16, ptr %i.ap, align 8, !tbaa !66
  br label %vduse_queue_disable.exit.i

vduse_queue_disable.exit.i:                       ; preds = %bb.o, %bb.l
  %i.bs = phi i16 [ %i.au, %bb.l ], [ %.pre.i, %bb.o ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  %indvars.iv.next.i29 = add nuw nsw i64 %indvars.iv.i28, 1 ; 2 uses
  %i.bt = zext i16 %i.bs to i64
  %i.bu = icmp samesign ult i64 %indvars.iv.next.i29, %i.bt
  br i1 %i.bu, label %bb.l, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %vduse_queue_disable.exit.i, %bb.k
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8264
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !74 ; 2 uses
  %.not.i30 = icmp eq ptr %i.bw, null
  br i1 %.not.i30, label %bb.q, label %bb.p

bb.p:                                             ; preds = %._crit_edge.i
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bw, i8 0, i64 %i.as, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge.i
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8232
  store i64 0, ptr %i.bx, align 8, !tbaa !35
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8200 ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.t, %bb.q
  %indvars.iv.i.i = phi i64 [ 0, %bb.q ], [ %indvars.iv.next.i.i, %bb.t ] ; 2 uses
  %i.ca = getelementptr inbounds nuw [32 x i8], ptr %i.by, i64 %indvars.iv.i.i ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !76 ; 2 uses
  %.not.i.i = icmp eq i64 %i.cc, 0
  br i1 %.not.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !77
  %i.cf = inttoptr i64 %i.cc to ptr
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !78
  %i.ci = add i64 %i.ch, %i.ce
  %i.cj = call i32 @munmap(ptr noundef nonnull %i.cf, i64 noundef %i.ci) #20 ; 0 uses
  store i64 0, ptr %i.cb, align 8, !tbaa !76
  %i.ck = load i32, ptr %i.bz, align 8, !tbaa !79
  %i.cl = add nsw i32 %i.ck, -1
  store i32 %i.cl, ptr %i.bz, align 8, !tbaa !79
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 256
  br i1 %exitcond.not.i.i, label %vduse_dev_start_dataplane.exit, label %bb.r

bb.u:                                             ; preds = %bb.c
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !114 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !114 ; 2 uses
  %i.cq = icmp eq i64 %i.cp, %i.cn
  br i1 %i.cq, label %vduse_iova_remove_region.exit, label %.preheader.i31

.preheader.i31:                                   ; preds = %bb.u
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8200 ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.z, %.preheader.i31
  %indvars.iv.i32 = phi i64 [ 0, %.preheader.i31 ], [ %indvars.iv.next.i34, %bb.z ] ; 2 uses
  %i.ct = getelementptr inbounds nuw [32 x i8], ptr %i.cr, i64 %indvars.iv.i32 ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24 ; 2 uses
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !76 ; 2 uses
  %.not.i33 = icmp eq i64 %i.cv, 0
  br i1 %.not.i33, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cw = load i64, ptr %i.ct, align 8, !tbaa !80 ; 2 uses
  %.not26.i = icmp ugt i64 %i.cn, %i.cw
  br i1 %.not26.i, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !77 ; 2 uses
  %i.cz = add i64 %i.cw, -1
  %i.da = add i64 %i.cz, %i.cy
  %.not27.i = icmp ult i64 %i.cp, %i.da
  br i1 %.not27.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.db = inttoptr i64 %i.cv to ptr
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !78
  %i.de = add i64 %i.dd, %i.cy
  %i.df = tail call i32 @munmap(ptr noundef nonnull %i.db, i64 noundef %i.de) #20 ; 0 uses
  store i64 0, ptr %i.cu, align 8, !tbaa !76
  %i.dg = load i32, ptr %i.cs, align 8, !tbaa !79
  %i.dh = add nsw i32 %i.dg, -1
  store i32 %i.dh, ptr %i.cs, align 8, !tbaa !79
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w, %bb.v
  %indvars.iv.next.i34 = add nuw nsw i64 %indvars.iv.i32, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i34, 256
  br i1 %exitcond.not.i, label %vduse_iova_remove_region.exit, label %bb.v

vduse_iova_remove_region.exit:                    ; preds = %bb.z, %bb.u
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8224 ; 2 uses
  %i.dj = load i16, ptr %i.di, align 8, !tbaa !66
  %.not37 = icmp eq i16 %i.dj, 0
  br i1 %.not37, label %vduse_dev_start_dataplane.exit, label %.lr.ph

.lr.ph:                                           ; preds = %vduse_iova_remove_region.exit, %bb.ac
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ac ], [ 0, %vduse_iova_remove_region.exit ] ; 2 uses
  %i.dk = load ptr, ptr %0, align 8, !tbaa !31
  %i.dl = getelementptr inbounds nuw [128 x i8], ptr %i.dk, i64 %indvars.iv ; 6 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 76
  %i.dn = load i8, ptr %i.dm, align 4, !tbaa !67, !range !41, !noundef !42
  %i.do = trunc nuw i8 %i.dn to i1
  br i1 %i.do, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %.lr.ph
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !81
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !82
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !83
  %i.dv = tail call fastcc i32 @vduse_queue_update_vring(ptr noundef nonnull %i.dl, i64 noundef %i.dq, i64 noundef %i.ds, i64 noundef %i.du)
  %.not23 = icmp eq i32 %i.dv, 0
  br i1 %.not23, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dw = load ptr, ptr @stderr, align 8, !tbaa !49
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dl, i64 68
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !46
  %i.dz = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dw, ptr noundef nonnull @.str.3, i32 noundef %i.dy) #22 ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph, %bb.ab, %bb.aa
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ea = load i16, ptr %i.di, align 8, !tbaa !66
  %i.eb = zext i16 %i.ea to i64
  %i.ec = icmp samesign ult i64 %indvars.iv.next, %i.eb
  br i1 %i.ec, label %.lr.ph, label %vduse_dev_start_dataplane.exit

vduse_dev_start_dataplane.exit:                   ; preds = %bb.ac, %.lr.ph.i, %bb.t, %bb.c, %vduse_iova_remove_region.exit, %bb.j, %bb.g, %.preheader.i, %bb.d
  %.sink = phi i32 [ 0, %vduse_iova_remove_region.exit ], [ 0, %bb.j ], [ 0, %bb.d ], [ 0, %.lr.ph.i ], [ 1, %bb.c ], [ 0, %.preheader.i ], [ 0, %bb.g ], [ 0, %bb.t ], [ 0, %bb.ac ]
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %.sink, ptr %i.ed, align 4, !tbaa !115
  %i.ee = load i32, ptr %i.b, align 8, !tbaa !32
  %i.ef = call i64 @write(i32 noundef %i.ee, ptr noundef nonnull %3, i64 noundef 152) #20 ; 2 uses
  %sext.mask26 = and i64 %i.ef, 4294967295
  %.not25 = icmp eq i64 %sext.mask26, 152
  br i1 %.not25, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %vduse_dev_start_dataplane.exit
  %i.eg = trunc i64 %i.ef to i32
  %i.eh = load ptr, ptr @stderr, align 8, !tbaa !49
  %i.ei = tail call ptr @__errno_location() #21   ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !47
  %i.ek = call ptr @strerror(i32 noundef %i.ej) #20
  %i.el = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.eh, ptr noundef nonnull @.str.4, i32 noundef %i.m, i32 noundef %i.eg, ptr noundef %i.ek) #22 ; 0 uses
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.ad
  %.sink49 = phi ptr [ %i.ei, %bb.ad ], [ %i.g, %bb.b ]
  %i.em = load i32, ptr %.sink49, align 4, !tbaa !47
  %i.en = sub nsw i32 0, %i.em
  br label %bb.ae

bb.ae:                                            ; preds = %.sink.split, %vduse_dev_start_dataplane.exit
  %.022 = phi i32 [ 0, %vduse_dev_start_dataplane.exit ], [ %i.en, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret i32 %.022
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -22, 1) i32 @vduse_queue_update_vring(ptr nofree noundef captures(none) initializes((32, 40)) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !24   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 16, ptr %i.a, align 8, !tbaa !62
  %i.d = call fastcc ptr @iova_to_va(ptr noundef %i.c, ptr noundef %i.a, i64 noundef %1)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !61
  %i.f = load i64, ptr %i.a, align 8, !tbaa !62
  %.not = icmp eq i64 %i.f, 16
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  store i64 4, ptr %i.a, align 8, !tbaa !62
  %i.g = call fastcc ptr @iova_to_va(ptr noundef %i.c, ptr noundef %i.a, i64 noundef %2)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !33
  %i.i = load i64, ptr %i.a, align 8, !tbaa !62
  %.not14 = icmp eq i64 %i.i, 4
  br i1 %.not14, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.j = call fastcc ptr @iova_to_va(ptr noundef %i.c, ptr noundef %i.a, i64 noundef %3) ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.j, ptr %i.k, align 8, !tbaa !55
  %i.l = load i64, ptr %i.a, align 8, !tbaa !62
  %.not15 = icmp eq i64 %i.l, 4
  br i1 %.not15, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !61
  %.not16 = icmp eq ptr %i.m, null
  br i1 %.not16, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !33
  %.not17 = icmp eq ptr %i.n, null
  %.not18 = icmp eq ptr %i.j, null
  %or.cond = select i1 %.not17, i1 true, i1 %.not18
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.o = load ptr, ptr @stderr, align 8, !tbaa !49
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.q = load i32, ptr %i.p, align 4, !tbaa !46
  %i.r = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.o, ptr noundef nonnull @.str.33, i32 noundef %i.q) #22 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.c, %bb.b, %bb.a, %bb.f
  %.0 = phi i32 [ -22, %bb.f ], [ -22, %bb.a ], [ -22, %bb.b ], [ -22, %bb.c ], [ 0, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %.0
}

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483647, -2147483648) i32 @vduse_dev_update_config(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #2 {
bb.a:
  %i.a = zext i32 %1 to i64                       ; 2 uses
  %i.b = add nuw nsw i64 %i.a, 8
  %i.c = tail call noalias ptr @malloc(i64 noundef %i.b) #25 ; 6 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %2, ptr %i.c, align 4, !tbaa !47
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %1, ptr %i.d, align 4, !tbaa !47
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.e, ptr align 1 %3, i64 %i.a, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8248 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !32
  %i.h = tail call i32 (i32, i64, ...) @ioctl(i32 noundef %i.g, i64 noundef 1074299154, ptr noundef nonnull %i.c) #20
  tail call void @free(ptr noundef nonnull %i.c) #20
  %.not15 = icmp eq i32 %i.h, 0
  br i1 %.not15, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.f, align 8, !tbaa !32
  %i.j = tail call i32 (i32, i64, ...) @ioctl(i32 noundef %i.i, i64 noundef 33043) #20
  %.not16 = icmp eq i32 %i.j, 0
  br i1 %.not16, label %bb.d, label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.b
  %i.k = tail call ptr @__errno_location() #21
  %i.l = load i32, ptr %i.k, align 4, !tbaa !47
  %i.m = sub nsw i32 0, %i.l
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.c, %bb.a
  %.0 = phi i32 [ -12, %bb.a ], [ 0, %bb.c ], [ %i.m, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nounwind
declare i32 @ioctl(i32 noundef, i64 noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483647, -2147483648) i32 @vduse_dev_setup_queue(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %3 = alloca %struct.vduse_vq_config, align 4    ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !31
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds [128 x i8], ptr %i.a, i64 %i.b ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.d, i8 0, i64 28, i1 false)
  %i.e = icmp sgt i32 %2, 1024
  br i1 %i.e, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 68
  %i.g = load i32, ptr %i.f, align 4, !tbaa !46
  store i32 %i.g, ptr %3, align 4, !tbaa !117
  %i.h = trunc i32 %2 to i16
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i16 %i.h, ptr %i.i, align 4, !tbaa !118
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8248
  %i.k = load i32, ptr %i.j, align 8, !tbaa !32
  %i.l = call i32 (i32, i64, ...) @ioctl(i32 noundef %i.k, i64 noundef 1075872020, ptr noundef nonnull %3) #20
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = tail call ptr @__errno_location() #21
  %i.n = load i32, ptr %i.m, align 4, !tbaa !47
  %i.o = sub nsw i32 0, %i.n
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call fastcc void @vduse_queue_enable(ptr noundef nonnull %i.c)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi i32 [ 0, %bb.d ], [ %i.o, %bb.c ], [ -22, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @vduse_queue_enable(ptr noundef %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %1 = alloca %struct.vduse_vq_info, align 8      ; 9 uses
  %2 = alloca %struct.vduse_vq_eventfd, align 4   ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !24   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 9 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !46
  store i32 %i.e, ptr %1, align 8, !tbaa !120
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8248 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !32
  %i.h = call i32 (i32, i64, ...) @ioctl(i32 noundef %i.g, i64 noundef 3224404245, ptr noundef nonnull %1) #20
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr @stderr, align 8, !tbaa !49
  %i.j = load i32, ptr %i.d, align 4, !tbaa !46
  %i.k = tail call ptr @__errno_location() #21
  %i.l = load i32, ptr %i.k, align 4, !tbaa !47
  %i.m = call ptr @strerror(i32 noundef %i.l) #20
  %i.n = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.i, ptr noundef nonnull @.str.34, i32 noundef %i.j, ptr noundef %i.m) #22 ; 0 uses
  br label %bb.ad

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.p = load i8, ptr %i.o, align 8, !tbaa !121
  %.not28 = icmp eq i8 %i.p, 0
  br i1 %.not28, label %bb.ad, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !122  ; 3 uses
  %i.s = icmp ugt i32 %i.r, 1024
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr @stderr, align 8, !tbaa !49
  %i.u = load i32, ptr %i.d, align 4, !tbaa !46
  %i.v = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.t, ptr noundef nonnull @.str.35, i32 noundef %i.u, i32 noundef %i.r, i32 noundef 1024) #22 ; 0 uses
  br label %bb.ad

bb.f:                                             ; preds = %bb.d
  store i32 %i.r, ptr %0, align 8, !tbaa !45
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !123  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.x, ptr %i.y, align 8, !tbaa !81
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !124 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !82
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !125 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !83
  %i.af = call fastcc i32 @vduse_queue_update_vring(ptr noundef nonnull %0, i64 noundef %i.x, i64 noundef %i.aa, i64 noundef %i.ad)
  %.not29 = icmp eq i32 %i.af, 0
  br i1 %.not29, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = load ptr, ptr @stderr, align 8, !tbaa !49
  %i.ah = load i32, ptr %i.d, align 4, !tbaa !46
  %i.ai = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ag, ptr noundef nonnull @.str.3, i32 noundef %i.ah) #22 ; 0 uses
  br label %bb.ad

bb.h:                                             ; preds = %bb.f
  %i.aj = call i32 @eventfd(i32 noundef 0, i32 noundef 526336) #20 ; 5 uses
  %i.ak = icmp slt i32 %i.aj, 0
  br i1 %i.ak, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.al = load ptr, ptr @stderr, align 8, !tbaa !49
  %i.am = load i32, ptr %i.d, align 4, !tbaa !46
  %i.an = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.al, ptr noundef nonnull @.str.36, i32 noundef %i.am) #22 ; 0 uses
  br label %bb.ad

bb.j:                                             ; preds = %bb.h
  %i.ao = load i32, ptr %i.d, align 4, !tbaa !46
  store i32 %i.ao, ptr %2, align 4, !tbaa !72
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.aj, ptr %i.ap, align 4, !tbaa !73
  %i.aq = load i32, ptr %i.f, align 8, !tbaa !32
  %i.ar = call i32 (i32, i64, ...) @ioctl(i32 noundef %i.aq, i64 noundef 1074299158, ptr noundef nonnull %2) #20
  %.not30 = icmp eq i32 %i.ar, 0
  br i1 %.not30, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = load ptr, ptr @stderr, align 8, !tbaa !49
  %i.at = load i32, ptr %i.d, align 4, !tbaa !46
  %i.au = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.as, ptr noundef nonnull @.str.37, i32 noundef %i.at) #22 ; 0 uses
  %i.av = call i32 @close(i32 noundef %i.aj) #20  ; 0 uses
  br label %bb.ad

bb.l:                                             ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %i.aj, ptr %i.aw, align 8, !tbaa !25
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.ax, align 8, !tbaa !40
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i8 1, ptr %i.ay, align 4, !tbaa !67
  %i.az = load ptr, ptr %i.b, align 8, !tbaa !24
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !55
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 2
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !39 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  store i16 %i.bd, ptr %i.be, align 4, !tbaa !44
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  store i16 0, ptr %i.bf, align 8, !tbaa !51
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  store ptr null, ptr %i.bg, align 8, !tbaa !50
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  store i64 0, ptr %i.bh, align 8, !tbaa !56
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !57 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 14
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !39
  %.not.i = icmp eq i16 %i.bl, %i.bd
  br i1 %.not.i, label %bb.o, label %bb.m, !prof !52

bb.m:                                             ; preds = %bb.l
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  %i.bn = load i16, ptr %i.bm, align 4, !tbaa !39 ; 2 uses
  %i.bo = icmp ugt i16 %i.bn, 1024
  br i1 %i.bo, label %bb.ab, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bq = zext nneg i16 %i.bn to i64
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %i.bq
  store i8 0, ptr %i.br, align 8, !tbaa !60
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !126
  %i.bs = load i16, ptr %i.be, align 4, !tbaa !44 ; 2 uses
  %i.bt = load ptr, ptr %i.bi, align 8, !tbaa !57 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 14
  store i16 %i.bs, ptr %i.bu, align 2, !tbaa !39
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l
  %i.bv = phi i16 [ %i.bs, %bb.n ], [ %i.bd, %bb.l ]
  %i.bw = phi ptr [ %i.bt, %bb.n ], [ %i.bj, %bb.l ] ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 10 ; 3 uses
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !39 ; 4 uses
  %.not59.i = icmp eq i16 %i.by, 0
  br i1 %.not59.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.o
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 16 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %wide.trip.count.i = zext i16 %i.by to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.cb = icmp eq i16 %i.by, 1
  br i1 %i.cb, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 65534
  br label %bb.p

bb.p:                                             ; preds = %bb.t, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.t ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.t ]
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %i.bz, i64 %indvars.iv.i
  %i.cd = load i8, ptr %i.cc, align 8, !tbaa !60
  %i.ce = icmp eq i8 %i.cd, 1
  br i1 %i.ce, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cf = load i32, ptr %i.ca, align 8, !tbaa !36
  %i.cg = add i32 %i.cf, 1
  store i32 %i.cg, ptr %i.ca, align 8, !tbaa !36
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %i.bz, i64 %indvars.iv.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = load i8, ptr %i.ci, align 8, !tbaa !60
  %i.ck = icmp eq i8 %i.cj, 1
  br i1 %i.ck, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cl = load i32, ptr %i.ca, align 8, !tbaa !36
  %i.cm = add i32 %i.cl, 1
  store i32 %i.cm, ptr %i.ca, align 8, !tbaa !36
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %bb.p

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %bb.t
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod42 = trunc i16 %i.by to i1
  call void @llvm.assume(i1 %lcmp.mod42)
  %i.cn = getelementptr inbounds nuw [16 x i8], ptr %i.bz, i64 %indvars.iv.i.epil.init
  %i.co = load i8, ptr %i.cn, align 8, !tbaa !60
  %i.cp = icmp eq i8 %i.co, 1
  br i1 %i.cp, label %bb.u, label %._crit_edge.i

bb.u:                                             ; preds = %.epil.preheader
  %i.cq = load i32, ptr %i.ca, align 8, !tbaa !36
  %i.cr = add i32 %i.cq, 1
  store i32 %i.cr, ptr %i.ca, align 8, !tbaa !36
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %bb.u, %.epil.preheader, %bb.o
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !36 ; 3 uses
  %i.cu = trunc i32 %i.ct to i16
  %i.cv = add i16 %i.bv, %i.cu                    ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i16 %i.cv, ptr %i.cw, align 8, !tbaa !38
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 58
  store i16 %i.cv, ptr %i.cx, align 2, !tbaa !37
  %.not49.i = icmp eq i32 %i.ct, 0
  br i1 %.not49.i, label %bb.ac, label %bb.v

bb.v:                                             ; preds = %._crit_edge.i
  %i.cy = zext i32 %i.ct to i64
  %i.cz = call noalias ptr @calloc(i64 noundef %i.cy, i64 noundef 16) #26 ; 5 uses
  store ptr %i.cz, ptr %i.bg, align 8, !tbaa !50
  %.not50.i = icmp eq ptr %i.cz, null
  br i1 %.not50.i, label %bb.ab, label %.preheader.i

.preheader.i:                                     ; preds = %bb.v
  %i.da = load i16, ptr %i.bx, align 2, !tbaa !39 ; 2 uses
  %.not60.i = icmp eq i16 %i.da, 0
  br i1 %.not60.i, label %._crit_edge58.i, label %.lr.ph57.i

.lr.ph57.i:                                       ; preds = %.preheader.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  br label %bb.w

bb.w:                                             ; preds = %bb.y, %.lr.ph57.i
  %i.dc = phi i16 [ %i.da, %.lr.ph57.i ], [ %i.do, %bb.y ]
  %indvars.iv62.i = phi i64 [ 0, %.lr.ph57.i ], [ %indvars.iv.next63.i, %bb.y ] ; 4 uses
  %i.dd = getelementptr inbounds nuw [16 x i8], ptr %i.db, i64 %indvars.iv62.i
  %i.de = load i8, ptr %i.dd, align 8, !tbaa !60
  %.not51.i = icmp eq i8 %i.de, 0
  br i1 %.not51.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.df = trunc nuw i64 %indvars.iv62.i to i16
  %i.dg = load i16, ptr %i.bf, align 8, !tbaa !51 ; 2 uses
  %i.dh = zext i16 %i.dg to i64
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %i.cz, i64 %i.dh ; 2 uses
  store i16 %i.df, ptr %i.di, align 8, !tbaa !54
  %i.dj = getelementptr inbounds nuw [16 x i8], ptr %i.bw, i64 %indvars.iv62.i
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !59
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store i64 %i.dl, ptr %i.dm, align 8, !tbaa !85
  %i.dn = add i16 %i.dg, 1
  store i16 %i.dn, ptr %i.bf, align 8, !tbaa !51
  %.pre.i = load i16, ptr %i.bx, align 2, !tbaa !39
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.do = phi i16 [ %i.dc, %bb.w ], [ %.pre.i, %bb.x ] ; 2 uses
  %indvars.iv.next63.i = add nuw nsw i64 %indvars.iv62.i, 1 ; 2 uses
  %i.dp = zext i16 %i.do to i64
  %i.dq = icmp samesign ult i64 %indvars.iv.next63.i, %i.dp
  br i1 %i.dq, label %bb.w, label %._crit_edge58.i

._crit_edge58.i:                                  ; preds = %bb.y, %.preheader.i
  %i.dr = load i16, ptr %i.bf, align 8, !tbaa !51 ; 2 uses
  %i.ds = icmp ugt i16 %i.dr, 1
  br i1 %i.ds, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %._crit_edge58.i
  %i.dt = zext i16 %i.dr to i64
  call void @qsort(ptr noundef nonnull %i.cz, i64 noundef %i.dt, i64 noundef 16, ptr noundef nonnull @inflight_desc_compare) #20
  %.pre65.i = load ptr, ptr %i.bg, align 8, !tbaa !50
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %._crit_edge58.i
  %i.du = phi ptr [ %.pre65.i, %bb.z ], [ %i.cz, %._crit_edge58.i ]
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !85
  %i.dx = add i64 %i.dw, 1
  store i64 %i.dx, ptr %i.bh, align 8, !tbaa !56
  br label %bb.ac

bb.ab:                                            ; preds = %bb.m, %bb.v
  %i.dy = load ptr, ptr @stderr, align 8, !tbaa !49
  %i.dz = load i32, ptr %i.d, align 4, !tbaa !46
  %i.ea = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dy, ptr noundef nonnull @.str.38, i32 noundef %i.dz) #22 ; 0 uses
  %i.eb = call i32 @close(i32 noundef %i.aj) #20  ; 0 uses
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa, %._crit_edge.i
  %i.ec = load i32, ptr %i.d, align 4, !tbaa !46
  %i.ed = getelementptr i8, ptr %i.az, i64 8248
  %.val.i = load i32, ptr %i.ed, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.ec, ptr %i.a, align 4, !tbaa !47
  %i.ee = call i32 (i32, i64, ...) @ioctl(i32 noundef %.val.i, i64 noundef 1074037015, ptr noundef nonnull %i.a) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ef = getelementptr inbounds nuw i8, ptr %i.c, i64 8240
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !68
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !86
  call void %i.eh(ptr noundef %i.c, ptr noundef nonnull %0) #20
  br label %bb.ad

bb.ad:                                            ; preds = %bb.c, %bb.ac, %bb.ab, %bb.k, %bb.i, %bb.g, %bb.e, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -22, 1) i32 @vduse_set_reconnect_log_file(ptr nofree noundef captures(none) initializes((8264, 8272)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8224 ; 3 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !66
  %i.c = zext i16 %i.b to i64
  %i.d = mul nuw nsw i64 %i.c, 16448              ; 2 uses
  %i.e = tail call i32 (ptr, i32, ...) @open64(ptr noundef readonly %1, i32 noundef 66, i32 noundef 384) #20 ; 5 uses
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @ftruncate64(i32 noundef %i.e, i64 noundef range(i64 0, 1077919681) %i.d) #20
  %i.h = icmp eq i32 %i.g, -1
  br i1 %i.h, label %vduse_log_get.exit.thread18, label %vduse_log_get.exit

vduse_log_get.exit.thread18:                      ; preds = %bb.b
  %i.i = tail call i32 @close(i32 noundef %i.e) #20 ; 0 uses
  br label %.sink.split

vduse_log_get.exit:                               ; preds = %bb.b
  %i.j = tail call ptr @mmap64(ptr noundef null, i64 noundef range(i64 0, 1077919681) %i.d, i32 noundef 3, i32 noundef 1, i32 noundef %i.e, i64 noundef 0) #20 ; 3 uses
  %i.k = tail call i32 @close(i32 noundef %i.e) #20 ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8264
  store ptr %i.j, ptr %i.l, align 8, !tbaa !74
  %i.m = icmp eq ptr %i.j, inttoptr (i64 -1 to ptr)
  br i1 %i.m, label %bb.c, label %.preheader

.preheader:                                       ; preds = %vduse_log_get.exit
  %i.n = load i16, ptr %i.a, align 8, !tbaa !66
  %.not = icmp eq i16 %i.n, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.o = load ptr, ptr %0, align 8, !tbaa !31
  br label %bb.d

.sink.split:                                      ; preds = %bb.a, %vduse_log_get.exit.thread18
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8264
  store ptr inttoptr (i64 -1 to ptr), ptr %i.p, align 8, !tbaa !74
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %vduse_log_get.exit
  %i.q = load ptr, ptr @stderr, align 8, !tbaa !49
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.5, i64 24, i64 1, ptr %i.q) #23 ; 0 uses
  br label %.loopexit

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.01420 = phi ptr [ %i.j, %.lr.ph ], [ %i.u, %bb.d ] ; 3 uses
  %i.r = getelementptr inbounds nuw [128 x i8], ptr %i.o, i64 %indvars.iv
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 120
  store ptr %.01420, ptr %i.s, align 8, !tbaa !57
  %i.t = getelementptr inbounds nuw i8, ptr %.01420, i64 10
  store i16 1024, ptr %i.t, align 2, !tbaa !39
  %i.u = getelementptr inbounds nuw i8, ptr %.01420, i64 16448
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.v = load i16, ptr %i.a, align 8, !tbaa !66
  %i.w = zext i16 %i.v to i64
  %i.x = icmp samesign ult i64 %indvars.iv.next, %i.w
  br i1 %i.x, label %bb.d, label %.loopexit

.loopexit:                                        ; preds = %bb.d, %.preheader, %bb.c
  %.015 = phi i32 [ -22, %bb.c ], [ 0, %.preheader ], [ 0, %bb.d ]
  ret i32 %.015
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @vduse_dev_create_by_fd(i32 noundef %0, i16 noundef zeroext %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %2, align 8, !tbaa !86
  %.not22 = icmp eq ptr %i.a, null
  br i1 %.not22, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !70
  %.not23 = icmp eq ptr %i.c, null
  br i1 %.not23, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !49
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.6, i64 28, i64 1, ptr %i.d) #23 ; 0 uses
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.e = tail call noalias dereferenceable_or_null(8272) ptr @calloc(i64 noundef 8272, i64 noundef 1) #26 ; 15 uses
  %.not24 = icmp eq ptr %i.e, null
  br i1 %.not24, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !49
  %fwrite25 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 32, i64 1, ptr %i.f) #23 ; 0 uses
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8232
  %i.h = tail call i32 (i32, i64, ...) @ioctl(i32 noundef %0, i64 noundef 2148040977, ptr noundef nonnull %i.g) #20
  %.not26 = icmp eq i32 %i.h, 0
  br i1 %.not26, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = load ptr, ptr @stderr, align 8, !tbaa !49
  %i.j = tail call ptr @__errno_location() #21
  %i.k = load i32, ptr %i.j, align 4, !tbaa !47
  %i.l = tail call ptr @strerror(i32 noundef %i.k) #20
  %i.m = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.i, ptr noundef nonnull @.str.8, ptr noundef %i.l) #22 ; 0 uses
  tail call void @free(ptr noundef nonnull %i.e) #20
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.n = zext i16 %1 to i64                       ; 3 uses
  %i.o = tail call noalias ptr @calloc(i64 noundef 128, i64 noundef %i.n) #26 ; 7 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %vduse_dev_init_vqs.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.i
  %.not18.i = icmp eq i16 %1, 0
  br i1 %.not18.i, label %.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %xtraiter = and i64 %i.n, 3                     ; 3 uses
  %i.p = icmp ult i16 %1, 4
  br i1 %i.p, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.n, 65532
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.q = getelementptr inbounds nuw [128 x i8], ptr %i.o, i64 %indvars.iv.i ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 68
  %i.s = trunc nuw nsw i64 %indvars.iv.i to i32
  store i32 %i.s, ptr %i.r, align 4, !tbaa !46
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  store ptr %i.e, ptr %i.t, align 8, !tbaa !24
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  store i32 -1, ptr %i.u, align 8, !tbaa !25
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.v = getelementptr inbounds nuw [128 x i8], ptr %i.o, i64 %indvars.iv.next.i ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 68
  %i.x = trunc nuw nsw i64 %indvars.iv.next.i to i32
  store i32 %i.x, ptr %i.w, align 4, !tbaa !46
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 88
  store ptr %i.e, ptr %i.y, align 8, !tbaa !24
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 80
  store i32 -1, ptr %i.z, align 8, !tbaa !25
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.aa = getelementptr inbounds nuw [128 x i8], ptr %i.o, i64 %indvars.iv.next.i.1 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 68
  %i.ac = trunc nuw nsw i64 %indvars.iv.next.i.1 to i32
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !46
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 88
  store ptr %i.e, ptr %i.ad, align 8, !tbaa !24
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 80
  store i32 -1, ptr %i.ae, align 8, !tbaa !25
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.af = getelementptr inbounds nuw [128 x i8], ptr %i.o, i64 %indvars.iv.next.i.2 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 68
  %i.ah = trunc nuw nsw i64 %indvars.iv.next.i.2 to i32
  store i32 %i.ah, ptr %i.ag, align 4, !tbaa !46
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 88
  store ptr %i.e, ptr %i.ai, align 8, !tbaa !24
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 80
  store i32 -1, ptr %i.aj, align 8, !tbaa !25
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph.i

vduse_dev_init_vqs.exit:                          ; preds = %bb.i
  %i.ak = load ptr, ptr @stderr, align 8, !tbaa !49
  %fwrite28 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 19, i64 1, ptr %i.ak) #23 ; 0 uses
  tail call void @free(ptr noundef nonnull %i.e) #20
  br label %bb.j

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod34 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod34)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ], [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.al = getelementptr inbounds nuw [128 x i8], ptr %i.o, i64 %indvars.iv.i.epil ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 68
  %i.an = trunc nuw nsw i64 %indvars.iv.i.epil to i32
  store i32 %i.an, ptr %i.am, align 4, !tbaa !46
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 88
  store ptr %i.e, ptr %i.ao, align 8, !tbaa !24
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 80
  store i32 -1, ptr %i.ap, align 8, !tbaa !25
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph.i.epil, !llvm.loop !127

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i.epil, %.preheader.i
  store ptr %i.o, ptr %i.e, align 8, !tbaa !31
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 8224
  store i16 %1, ptr %i.aq, align 8, !tbaa !66
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 8248
  store i32 %0, ptr %i.ar, align 8, !tbaa !32
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 8240
  store ptr %2, ptr %i.as, align 8, !tbaa !68
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 8256
  store ptr %3, ptr %i.at, align 8, !tbaa !30
  br label %bb.j

bb.j:                                             ; preds = %.loopexit, %vduse_dev_init_vqs.exit, %bb.h, %bb.f, %bb.d
  %.0 = phi ptr [ null, %bb.h ], [ null, %vduse_dev_init_vqs.exit ], [ %i.e, %.loopexit ], [ null, %bb.f ], [ null, %bb.d ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @vduse_dev_create_by_name(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 {
bb.a:
  %.not21 = icmp eq ptr %0, null
  br i1 %.not21, label %vduse_name_is_invalid.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #27
  %i.b = icmp ugt i64 %i.a, 255
  br i1 %i.b, label %vduse_name_is_invalid.exit.thread, label %vduse_name_is_invalid.exit

vduse_name_is_invalid.exit:                       ; preds = %bb.b
  %i.c = tail call ptr @strstr(ptr noundef nonnull readonly dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.39) #27
  %i.d = icmp ne ptr %i.c, null
  %i.e = icmp eq ptr %2, null
  %or.cond.not = or i1 %i.e, %i.d
  br i1 %or.cond.not, label %vduse_name_is_invalid.exit.thread, label %bb.c

bb.c:                                             ; preds = %vduse_name_is_invalid.exit
  %i.f = load ptr, ptr %2, align 8, !tbaa !86
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %vduse_name_is_invalid.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !70
  %.not23 = icmp eq ptr %i.h, null
  br i1 %.not23, label %vduse_name_is_invalid.exit.thread, label %bb.e

vduse_name_is_invalid.exit.thread:                ; preds = %bb.b, %bb.d, %bb.c, %vduse_name_is_invalid.exit, %bb.a
  %i.i = load ptr, ptr @stderr, align 8, !tbaa !49
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.6, i64 28, i64 1, ptr %i.i) #23 ; 0 uses
  br label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.j = tail call noalias dereferenceable_or_null(8272) ptr @calloc(i64 noundef 8272, i64 noundef 1) #26 ; 4 uses
  %.not24 = icmp eq ptr %i.j, null
  br i1 %.not24, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !49
  %fwrite25 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 32, i64 1, ptr %i.k) #23 ; 0 uses
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.l = tail call fastcc i32 @vduse_dev_init(ptr noundef %i.j, ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, ptr noundef %3) ; 2 uses
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.n = load ptr, ptr @stderr, align 8, !tbaa !49
  %i.o = sub nsw i32 0, %i.l
  %i.p = tail call ptr @strerror(i32 noundef %i.o) #20
  %i.q = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.n, ptr noundef nonnull @.str.10, ptr noundef nonnull %0, ptr noundef %i.p) #22 ; 0 uses
  tail call void @free(ptr noundef nonnull %i.j) #20
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f, %vduse_name_is_invalid.exit.thread
  %.0 = phi ptr [ null, %bb.h ], [ null, %vduse_name_is_invalid.exit.thread ], [ null, %bb.f ], [ %i.j, %bb.g ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483647, -2147483648) i32 @vduse_dev_init(ptr noundef nonnull %0, ptr noundef nonnull %1, i16 noundef zeroext %2, ptr noundef nonnull %3, ptr noundef %4) unnamed_addr #2 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #27
  %i.b = add i64 %i.a, 12
  %i.c = tail call noalias ptr @malloc(i64 noundef %i.b) #25 ; 4 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(1) @.str.40, ptr noundef nonnull %1) #20 ; 0 uses
  %i.e = tail call i32 (ptr, i32, ...) @open64(ptr noundef nonnull %i.c, i32 noundef 2) #20 ; 6 uses
  tail call void @free(ptr noundef nonnull %i.c) #20
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !49
  %i.h = tail call ptr @__errno_location() #21    ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !47
  %i.j = tail call ptr @strerror(i32 noundef %i.i) #20
  %i.k = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.g, ptr noundef nonnull @.str.41, ptr noundef nonnull %1, ptr noundef %i.j) #22 ; 0 uses
  %i.l = load i32, ptr %i.h, align 4, !tbaa !47
  %i.m = sub nsw i32 0, %i.l
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8232
  %i.o = tail call i32 (i32, i64, ...) @ioctl(i32 noundef %i.e, i64 noundef 2148040977, ptr noundef nonnull %i.n) #20
  %.not34 = icmp eq i32 %i.o, 0
  br i1 %.not34, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr @stderr, align 8, !tbaa !49
  %i.q = tail call ptr @__errno_location() #21    ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !47
  %i.s = tail call ptr @strerror(i32 noundef %i.r) #20
  %i.t = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.p, ptr noundef nonnull @.str.8, ptr noundef %i.s) #22 ; 0 uses
  %i.u = tail call i32 @close(i32 noundef %i.e) #20 ; 0 uses
  %i.v = load i32, ptr %i.q, align 4, !tbaa !47
  %i.w = sub nsw i32 0, %i.v
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.x = tail call noalias ptr @strdup(ptr noundef nonnull %1) #20 ; 3 uses
  %.not35 = icmp eq ptr %i.x, null
  br i1 %.not35, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.y = tail call i32 @close(i32 noundef %i.e) #20 ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.z = zext i16 %2 to i64                       ; 3 uses
  %i.aa = tail call noalias ptr @calloc(i64 noundef 128, i64 noundef %i.z) #26 ; 7 uses
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %vduse_dev_init_vqs.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.h
  %.not18.i = icmp eq i16 %2, 0
  br i1 %.not18.i, label %.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %xtraiter = and i64 %i.z, 3                     ; 3 uses
  %i.ab = icmp ult i16 %2, 4
  br i1 %i.ab, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.z, 65532
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.ac = getelementptr inbounds nuw [128 x i8], ptr %i.aa, i64 %indvars.iv.i ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 68
  %i.ae = trunc nuw nsw i64 %indvars.iv.i to i32
  store i32 %i.ae, ptr %i.ad, align 4, !tbaa !46
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 88
  store ptr %0, ptr %i.af, align 8, !tbaa !24
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  store i32 -1, ptr %i.ag, align 8, !tbaa !25
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.ah = getelementptr inbounds nuw [128 x i8], ptr %i.aa, i64 %indvars.iv.next.i ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 68
  %i.aj = trunc nuw nsw i64 %indvars.iv.next.i to i32
  store i32 %i.aj, ptr %i.ai, align 4, !tbaa !46
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 88
  store ptr %0, ptr %i.ak, align 8, !tbaa !24
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  store i32 -1, ptr %i.al, align 8, !tbaa !25
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.am = getelementptr inbounds nuw [128 x i8], ptr %i.aa, i64 %indvars.iv.next.i.1 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 68
  %i.ao = trunc nuw nsw i64 %indvars.iv.next.i.1 to i32
  store i32 %i.ao, ptr %i.an, align 4, !tbaa !46
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 88
  store ptr %0, ptr %i.ap, align 8, !tbaa !24
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  store i32 -1, ptr %i.aq, align 8, !tbaa !25
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.ar = getelementptr inbounds nuw [128 x i8], ptr %i.aa, i64 %indvars.iv.next.i.2 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 68
  %i.at = trunc nuw nsw i64 %indvars.iv.next.i.2 to i32
  store i32 %i.at, ptr %i.as, align 4, !tbaa !46
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 88
  store ptr %0, ptr %i.au, align 8, !tbaa !24
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 80
  store i32 -1, ptr %i.av, align 8, !tbaa !25
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph.i

vduse_dev_init_vqs.exit:                          ; preds = %bb.h
  tail call void @free(ptr noundef nonnull %i.x) #20
  %i.aw = tail call i32 @close(i32 noundef %i.e) #20 ; 0 uses
  br label %bb.i

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod43 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod43)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ], [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.ax = getelementptr inbounds nuw [128 x i8], ptr %i.aa, i64 %indvars.iv.i.epil ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 68
  %i.az = trunc nuw nsw i64 %indvars.iv.i.epil to i32
  store i32 %i.az, ptr %i.ay, align 4, !tbaa !46
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 88
  store ptr %0, ptr %i.ba, align 8, !tbaa !24
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 80
  store i32 -1, ptr %i.bb, align 8, !tbaa !25
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph.i.epil, !llvm.loop !128

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i.epil, %.preheader.i
  store ptr %i.aa, ptr %0, align 8, !tbaa !31
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8208
  store ptr %i.x, ptr %i.bc, align 8, !tbaa !88
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8224
  store i16 %2, ptr %i.bd, align 8, !tbaa !66
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8248
  store i32 %i.e, ptr %i.be, align 8, !tbaa !32
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8240
  store ptr %3, ptr %i.bf, align 8, !tbaa !68
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8256
  store ptr %4, ptr %i.bg, align 8, !tbaa !30
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %.loopexit, %vduse_dev_init_vqs.exit, %bb.g, %bb.e, %bb.c
  %.0 = phi i32 [ %i.m, %bb.c ], [ %i.w, %bb.e ], [ -12, %vduse_dev_init_vqs.exit ], [ 0, %.loopexit ], [ -12, %bb.g ], [ -12, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @vduse_dev_create(ptr noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i16 noundef zeroext %4, i32 noundef %5, ptr nofree noundef readonly captures(address_is_null) %6, ptr noundef %7, ptr noundef %8) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %vduse_name_is_invalid.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #27
  %i.c = icmp ugt i64 %i.b, 255
  br i1 %i.c, label %vduse_name_is_invalid.exit.thread, label %vduse_name_is_invalid.exit

vduse_name_is_invalid.exit:                       ; preds = %bb.b
  %i.d = tail call ptr @strstr(ptr noundef nonnull readonly dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.39) #27
  %.not75 = icmp eq ptr %i.d, null
  br i1 %.not75, label %bb.c, label %vduse_name_is_invalid.exit.thread

bb.c:                                             ; preds = %vduse_name_is_invalid.exit
  %i.e = and i64 %3, 4294967296
  %i.f = icmp ne i64 %i.e, 0
  %i.g = icmp ne ptr %6, null
  %or.cond = and i1 %i.f, %i.g
  %i.h = icmp ne i32 %5, 0
  %or.cond3 = and i1 %i.h, %or.cond
  %i.i = icmp ne ptr %7, null
  %or.cond5 = and i1 %i.i, %or.cond3
  br i1 %or.cond5, label %bb.d, label %vduse_name_is_invalid.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %7, align 8, !tbaa !86
  %.not65 = icmp eq ptr %i.j, null
  br i1 %.not65, label %vduse_name_is_invalid.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !70
  %.not66 = icmp eq ptr %i.l, null
  br i1 %.not66, label %vduse_name_is_invalid.exit.thread, label %bb.f

vduse_name_is_invalid.exit.thread:                ; preds = %bb.b, %bb.e, %bb.d, %bb.c, %vduse_name_is_invalid.exit, %bb.a
  %i.m = load ptr, ptr @stderr, align 8, !tbaa !49
  %fwrite73 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 28, i64 1, ptr %i.m) #23 ; 0 uses
  br label %bb.v

bb.f:                                             ; preds = %bb.e
  %i.n = tail call noalias dereferenceable_or_null(8272) ptr @calloc(i64 noundef 8272, i64 noundef 1) #26 ; 5 uses
  %.not67 = icmp eq ptr %i.n, null
  br i1 %.not67, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = load ptr, ptr @stderr, align 8, !tbaa !49
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.7, i64 32, i64 1, ptr %i.o) #23 ; 0 uses
  br label %bb.v

bb.h:                                             ; preds = %bb.f
  %i.p = tail call i32 (ptr, i32, ...) @open64(ptr noundef nonnull @.str.11, i32 noundef 2) #20 ; 6 uses
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.r = load ptr, ptr @stderr, align 8, !tbaa !49
  %i.s = tail call ptr @__errno_location() #21
  %i.t = load i32, ptr %i.s, align 4, !tbaa !47
  %i.u = tail call ptr @strerror(i32 noundef %i.t) #20
  %i.v = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.r, ptr noundef nonnull @.str.12, ptr noundef %i.u) #22 ; 0 uses
  br label %bb.u

bb.j:                                             ; preds = %bb.h
  store i64 0, ptr %i.a, align 8, !tbaa !62
  %i.w = call i32 (i32, i64, ...) @ioctl(i32 noundef %i.p, i64 noundef 1074299137, ptr noundef nonnull %i.a) #20
  %.not68 = icmp eq i32 %i.w, 0
  br i1 %.not68, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = load ptr, ptr @stderr, align 8, !tbaa !49
  %i.y = load i64, ptr %i.a, align 8, !tbaa !62
  %i.z = tail call ptr @__errno_location() #21
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !47
  %i.ab = call ptr @strerror(i32 noundef %i.aa) #20
  %i.ac = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.x, ptr noundef nonnull @.str.13, i64 noundef %i.y, ptr noundef %i.ab) #22 ; 0 uses
  br label %bb.t

bb.l:                                             ; preds = %bb.j
  %i.ad = zext i32 %5 to i64                      ; 2 uses
  %i.ae = add nuw nsw i64 %i.ad, 336
  %i.af = call noalias ptr @calloc(i64 noundef %i.ae, i64 noundef 1) #26 ; 11 uses
  %.not69 = icmp eq ptr %i.af, null
  br i1 %.not69, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ag = load ptr, ptr @stderr, align 8, !tbaa !49
  %fwrite70 = call i64 @fwrite(ptr nonnull @.str.14, i64 32, i64 1, ptr %i.ag) #23 ; 0 uses
  br label %bb.t

bb.n:                                             ; preds = %bb.l
  %i.ah = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #27
  %i.ai = icmp ugt i64 %i.ah, 255
  br i1 %i.ai, label %vduse_name_is_invalid.exit74.thread, label %vduse_name_is_invalid.exit74

vduse_name_is_invalid.exit74:                     ; preds = %bb.n
  %i.aj = call ptr @strstr(ptr noundef nonnull readonly dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.39) #27
  %.not76 = icmp eq ptr %i.aj, null
  br i1 %.not76, label %bb.o, label %vduse_name_is_invalid.exit74.thread

vduse_name_is_invalid.exit74.thread:              ; preds = %bb.n, %vduse_name_is_invalid.exit74
  call void @__assert_fail(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef 1323, ptr noundef nonnull @__PRETTY_FUNCTION__.vduse_dev_create) #24
  unreachable

bb.o:                                             ; preds = %vduse_name_is_invalid.exit74
  %i.ak = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.af, ptr noundef nonnull dereferenceable(1) %0) #20 ; 0 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 260
  store i32 %1, ptr %i.al, align 4, !tbaa !47
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 256
  store i32 %2, ptr %i.am, align 8, !tbaa !47
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 264
  store i64 %3, ptr %i.an, align 8, !tbaa !129
  %i.ao = zext i16 %4 to i32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 272
  store i32 %i.ao, ptr %i.ap, align 8, !tbaa !47
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 276
  store i32 4096, ptr %i.aq, align 4, !tbaa !47
  %i.ar = getelementptr inbounds nuw i8, ptr %i.af, i64 332
  store i32 %5, ptr %i.ar, align 4, !tbaa !47
  %i.as = getelementptr inbounds nuw i8, ptr %i.af, i64 336
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.as, ptr nonnull align 1 %6, i64 %i.ad, i1 false)
  %i.at = call i32 (i32, i64, ...) @ioctl(i32 noundef %i.p, i64 noundef 1095794946, ptr noundef nonnull %i.af) #20
  call void @free(ptr noundef nonnull %i.af) #20
  %.not71 = icmp eq i32 %i.at, 0
  br i1 %.not71, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.au = tail call ptr @__errno_location() #21
  %i.av = load i32, ptr %i.au, align 4, !tbaa !47 ; 2 uses
  %.not72 = icmp eq i32 %i.av, 17
  br i1 %.not72, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = load ptr, ptr @stderr, align 8, !tbaa !49
  %i.ax = call ptr @strerror(i32 noundef %i.av) #20
  %i.ay = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aw, ptr noundef nonnull @.str.17, ptr noundef nonnull %0, ptr noundef %i.ax) #22 ; 0 uses
  br label %bb.t

bb.r:                                             ; preds = %bb.p, %bb.o
  %i.az = getelementptr inbounds nuw i8, ptr %i.n, i64 8252
  store i32 %i.p, ptr %i.az, align 4, !tbaa !89
  %i.ba = call fastcc i32 @vduse_dev_init(ptr noundef %i.n, ptr noundef %0, i16 noundef zeroext %4, ptr noundef %7, ptr noundef %8) ; 2 uses
  %i.bb = icmp slt i32 %i.ba, 0
  br i1 %i.bb, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.bc = load ptr, ptr @stderr, align 8, !tbaa !49
  %i.bd = sub nsw i32 0, %i.ba
  %i.be = call ptr @strerror(i32 noundef %i.bd) #20
  %i.bf = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bc, ptr noundef nonnull @.str.10, ptr noundef nonnull %0, ptr noundef %i.be) #22 ; 0 uses
  %i.bg = call i32 (i32, i64, ...) @ioctl(i32 noundef %i.p, i64 noundef 1090552067, ptr noundef nonnull %0) #20 ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.q, %bb.m, %bb.k
  %i.bh = call i32 @close(i32 noundef %i.p) #20   ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.i
  call void @free(ptr noundef nonnull %i.n) #20
  br label %bb.v

bb.v:                                             ; preds = %bb.r, %bb.u, %bb.g, %vduse_name_is_invalid.exit.thread
  %.0 = phi ptr [ null, %vduse_name_is_invalid.exit.thread ], [ null, %bb.u ], [ null, %bb.g ], [ %i.n, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret ptr %.0
}

; Function Attrs: nofree
declare noundef i32 @open64(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #9

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #13

declare i32 @close(i32 noundef) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483647, -2147483648) i32 @vduse_dev_destroy(ptr noundef captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8224 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8264
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !74   ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i16, ptr %i.a, align 8, !tbaa !66
  %i.e = zext i16 %i.d to i64
  %i.f = mul nuw nsw i64 %i.e, 16448
  %i.g = tail call i32 @munmap(ptr noundef nonnull %i.c, i64 noundef %i.f) #20 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = load i16, ptr %i.a, align 8, !tbaa !66
  %.not26 = icmp eq i16 %i.h, 0
  br i1 %.not26, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.c ] ; 2 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !31
  %i.j = getelementptr inbounds nuw [128 x i8], ptr %i.i, i64 %indvars.iv
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !50
  tail call void @free(ptr noundef %i.l) #20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.m = load i16, ptr %i.a, align 8, !tbaa !66
  %i.n = zext i16 %i.m to i64
  %i.o = icmp samesign ult i64 %indvars.iv.next, %i.n
  br i1 %i.o, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %i.p = load ptr, ptr %0, align 8, !tbaa !31
  tail call void @free(ptr noundef %i.p) #20
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8248 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !32   ; 2 uses
  %i.s = icmp sgt i32 %i.r, -1
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge
  %i.t = tail call i32 @close(i32 noundef %i.r) #20 ; 0 uses
  store i32 -1, ptr %i.q, align 8, !tbaa !32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8252 ; 3 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !89   ; 2 uses
  %i.w = icmp sgt i32 %i.v, -1
  br i1 %i.w, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8208
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !88
  %i.z = tail call i32 (i32, i64, ...) @ioctl(i32 noundef %i.v, i64 noundef 1090552067, ptr noundef %i.y) #20
  %.not24 = icmp eq i32 %i.z, 0
  br i1 %.not24, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = tail call ptr @__errno_location() #21
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !47
  %i.ac = sub nsw i32 0, %i.ab
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0 = phi i32 [ %i.ac, %bb.g ], [ 0, %bb.f ]
  %i.ad = load i32, ptr %i.u, align 4, !tbaa !89
  %i.ae = tail call i32 @close(i32 noundef %i.ad) #20 ; 0 uses
  store i32 -1, ptr %i.u, align 4, !tbaa !89
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.1 = phi i32 [ %.0, %bb.h ], [ 0, %bb.e ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8208
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !88
  tail call void @free(ptr noundef %i.ag) #20
  tail call void @free(ptr noundef nonnull %0) #20
  ret i32 %.1
}

; Function Attrs: nounwind
declare i32 @munmap(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @iova_to_va(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull captures(none) %1, i64 noundef %2) unnamed_addr #15 {
bb.a:
  %3 = alloca %struct.vduse_iotlb_entry, align 8  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.k, %bb.a
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.1, %bb.k ] ; 3 uses
  %i.b = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %indvars.iv ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !76   ; 2 uses
  %.not38 = icmp eq i64 %i.d, 0
  br i1 %.not38, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr %i.b, align 8, !tbaa !80   ; 3 uses
  %.not39 = icmp ult i64 %2, %i.e
  br i1 %.not39, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !77
  %i.h = add i64 %i.g, %i.e                       ; 2 uses
  %i.i = icmp ult i64 %2, %i.h
  br i1 %i.i, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.j, %bb.d
  %.lcssa90 = phi ptr [ %i.b, %bb.d ], [ %i.x, %bb.j ] ; 3 uses
  %.lcssa88 = phi i64 [ %i.d, %bb.d ], [ %i.z, %bb.j ]
  %.lcssa87 = phi i64 [ %i.h, %bb.d ], [ %i.ad, %bb.j ] ; 2 uses
  %.lcssa86 = phi i64 [ %i.e, %bb.d ], [ %i.aa, %bb.j ]
  %i.j = load i64, ptr %1, align 8, !tbaa !62
  %i.k = add i64 %i.j, %2
  %i.l = icmp ugt i64 %i.k, %.lcssa87
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %.lcssa90, i64 24
  %i.n = sub nuw i64 %.lcssa87, %2
  store i64 %i.n, ptr %1, align 8, !tbaa !62
  %.pre = load i64, ptr %.lcssa90, align 8, !tbaa !80
  %.pre59 = load i64, ptr %i.m, align 8, !tbaa !76
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.o = phi i64 [ %.lcssa88, %bb.e ], [ %.pre59, %bb.f ]
  %i.p = phi i64 [ %.lcssa86, %bb.e ], [ %.pre, %bb.f ]
  %i.q = sub i64 %2, %i.p
  %i.r = add i64 %i.q, %i.o
  %i.s = getelementptr inbounds nuw i8, ptr %.lcssa90, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !78
  %i.u = add i64 %i.r, %i.t
  %i.v = inttoptr i64 %i.u to ptr
  br label %bb.o

bb.h:                                             ; preds = %bb.b, %bb.d, %bb.c
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %indvars.iv ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.z = load i64, ptr %i.y, align 8, !tbaa !76   ; 2 uses
  %.not38.1 = icmp eq i64 %i.z, 0
  br i1 %.not38.1, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = load i64, ptr %i.x, align 8, !tbaa !80  ; 3 uses
  %.not39.1 = icmp ult i64 %2, %i.aa
  br i1 %.not39.1, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !77
  %i.ad = add i64 %i.ac, %i.aa                    ; 2 uses
  %i.ae = icmp ult i64 %2, %i.ad
  br i1 %i.ae, label %bb.e, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 256
  br i1 %exitcond.not.1, label %bb.l, label %bb.b

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %2, ptr %i.af, align 8, !tbaa !131
  %i.ag = add i64 %2, 1
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !132
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8248
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !32
  %i.ak = call i32 (i32, i64, ...) @ioctl(i32 noundef %i.aj, i64 noundef 3223355664, ptr noundef nonnull %3) #20 ; 4 uses
  %i.al = icmp slt i32 %i.ak, 0
  br i1 %i.al, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = load i64, ptr %3, align 8, !tbaa !133   ; 2 uses
  %i.an = load i64, ptr %i.af, align 8, !tbaa !131 ; 2 uses
  %i.ao = load i64, ptr %i.ah, align 8, !tbaa !132
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !134
  %switch.tableidx.i = add i8 %i.aq, -1           ; 2 uses
  %i.ar = icmp ult i8 %switch.tableidx.i, 3
  %switch.idx.cast.i = zext i8 %switch.tableidx.i to i32
  %switch.offset.i = add nuw nsw i32 %switch.idx.cast.i, 1
  %.0.i = select i1 %i.ar, i32 %switch.offset.i, i32 0
  %i.as = sub i64 %i.ao, %i.an
  %i.at = add i64 %i.as, 1                        ; 2 uses
  %i.au = add i64 %i.at, %i.am
  %i.av = call ptr @mmap64(ptr noundef null, i64 noundef %i.au, i32 noundef range(i32 0, 4) %.0.i, i32 noundef 1, i32 noundef range(i32 0, -2147483648) %i.ak, i64 noundef 0) #20 ; 2 uses
  %i.aw = icmp eq ptr %i.av, inttoptr (i64 -1 to ptr)
  br i1 %i.aw, label %vduse_iova_add_region.exit, label %.preheader.i

.preheader.i.1:                                   ; preds = %.preheader.i
  %i.ax = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %indvars.iv.i ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !76
  %.not.i.1 = icmp eq i64 %i.az, 0
  br i1 %.not.i.1, label %.split.loop.exit94, label %.preheader.i.2

.preheader.i.2:                                   ; preds = %.preheader.i.1
  %i.ba = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %indvars.iv.i ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 88
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !76
  %.not.i.2 = icmp eq i64 %i.bc, 0
  br i1 %.not.i.2, label %.split.loop.exit92, label %.preheader.i.3

.preheader.i.3:                                   ; preds = %.preheader.i.2
  %i.bd = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %indvars.iv.i ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 120
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !76
  %.not.i.3 = icmp eq i64 %i.bf, 0
  br i1 %.not.i.3, label %.split.loop.exit, label %bb.n

bb.n:                                             ; preds = %.preheader.i.3
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, 256
  br i1 %exitcond.not.i.3, label %.critedge.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.m, %bb.n
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %bb.n ], [ 0, %bb.m ] ; 5 uses
  %i.bg = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %indvars.iv.i ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !76
  %.not.i = icmp eq i64 %i.bi, 0
  br i1 %.not.i, label %.split.loop.exit96, label %.preheader.i.1

.critedge.i:                                      ; preds = %bb.n
  call void @__assert_fail(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.16, i32 noundef 361, ptr noundef nonnull @__PRETTY_FUNCTION__.vduse_iova_add_region) #24
  unreachable

vduse_iova_add_region.exit:                       ; preds = %bb.m
  %i.bj = call i32 @close(i32 noundef range(i32 0, -2147483648) %i.ak) #20 ; 0 uses
  br label %bb.o

.split.loop.exit:                                 ; preds = %.preheader.i.3
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 96
  br label %.split.loop.exit96

.split.loop.exit92:                               ; preds = %.preheader.i.2
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ba, i64 64
  br label %.split.loop.exit96

.split.loop.exit94:                               ; preds = %.preheader.i.1
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  br label %.split.loop.exit96

.split.loop.exit96:                               ; preds = %.preheader.i, %.split.loop.exit94, %.split.loop.exit92, %.split.loop.exit
  %.lcssa = phi ptr [ %i.bm, %.split.loop.exit94 ], [ %i.bl, %.split.loop.exit92 ], [ %i.bk, %.split.loop.exit ], [ %i.bg, %.preheader.i ] ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.lcssa, i64 24
  %i.bo = ptrtoint ptr %i.av to i64
  store i64 %i.bo, ptr %i.bn, align 8, !tbaa !76
  %i.bp = getelementptr inbounds nuw i8, ptr %.lcssa, i64 16
  store i64 %i.am, ptr %i.bp, align 8, !tbaa !78
  store i64 %i.an, ptr %.lcssa, align 8, !tbaa !80
  %i.bq = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8
  store i64 %i.at, ptr %i.bq, align 8, !tbaa !77
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8200 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !79
  %i.bt = add nsw i32 %i.bs, 1
  store i32 %i.bt, ptr %i.br, align 8, !tbaa !79
  %i.bu = call i32 @close(i32 noundef range(i32 0, -2147483648) %i.ak) #20 ; 0 uses
  %i.bv = call fastcc ptr @iova_to_va(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2)
  br label %bb.o

bb.o:                                             ; preds = %vduse_iova_add_region.exit, %bb.g, %bb.l, %.split.loop.exit96
  %.2 = phi ptr [ %i.v, %bb.g ], [ %i.bv, %.split.loop.exit96 ], [ null, %bb.l ], [ null, %vduse_iova_add_region.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @vduse_queue_read_indirect_desc(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1, i64 noundef %2, i64 noundef range(i64 0, 4294967296) %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.b = add nsw i64 %3, -16385
  %or.cond = icmp ult i64 %i.b, -16384
  br i1 %or.cond, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.022 = phi ptr [ %i.g, %bb.b ], [ %1, %bb.a ]  ; 2 uses
  %.01321 = phi i64 [ %i.e, %bb.b ], [ %3, %bb.a ] ; 2 uses
  %.01420 = phi i64 [ %i.f, %bb.b ], [ %2, %bb.a ] ; 2 uses
  store i64 %.01321, ptr %i.a, align 8, !tbaa !62
  %i.c = call fastcc ptr @iova_to_va(ptr noundef %0, ptr noundef %i.a, i64 noundef %.01420) ; 2 uses
  %.not18 = icmp eq ptr %i.c, null
  br i1 %.not18, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.d = load i64, ptr %i.a, align 8, !tbaa !62   ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.022, ptr nonnull align 1 %i.c, i64 %i.d, i1 false)
  %i.e = sub i64 %.01321, %i.d                    ; 2 uses
  %i.f = add i64 %i.d, %.01420
  %i.g = getelementptr inbounds nuw i8, ptr %.022, i64 %i.d
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %.015 = phi i32 [ -1, %bb.a ], [ -1, %.lr.ph ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %.015
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @vduse_queue_map_single_desc(ptr nofree captures(none) %.88.val, ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1, i32 noundef %2, i64 noundef %3, i64 noundef range(i64 0, 4294967296) %4) unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = load i32, ptr %0, align 4, !tbaa !47     ; 3 uses
  %.not = icmp ugt i32 %i.b, %2
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.16, i32 noundef 597, ptr noundef nonnull @__PRETTY_FUNCTION__.vduse_queue_map_single_desc) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not32 = icmp eq i64 %4, 0
  br i1 %.not32, label %bb.d, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %4, ptr %i.a, align 8, !tbaa !62
  %i.c = icmp eq i32 %i.b, %2
  br i1 %i.c, label %.preheader._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %bb.c
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !49
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.25, i64 43, i64 1, ptr %i.d) #23 ; 0 uses
  br label %bb.h

.preheader:                                       ; preds = %bb.f
  %i.e = add i64 %i.m, %.02533
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.p, ptr %i.a, align 8, !tbaa !62
  %i.f = icmp eq i32 %i.n, %2
  br i1 %i.f, label %.preheader._crit_edge, label %.lr.ph

.preheader._crit_edge:                            ; preds = %.preheader, %.preheader.preheader
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !49
  %fwrite35 = tail call i64 @fwrite(ptr nonnull @.str.26, i64 47, i64 1, ptr %i.g) #23 ; 0 uses
  br label %.critedge

.lr.ph:                                           ; preds = %.preheader.preheader, %.preheader
  %.02533 = phi i64 [ %i.e, %.preheader ], [ %3, %.preheader.preheader ] ; 2 uses
  %.02342 = phi i64 [ %i.p, %.preheader ], [ %4, %.preheader.preheader ]
  %.02251 = phi i32 [ %i.n, %.preheader ], [ %i.b, %.preheader.preheader ] ; 2 uses
  %i.h = call fastcc ptr @iova_to_va(ptr noundef %.88.val, ptr noundef %i.a, i64 noundef %.02533) ; 2 uses
  %i.i = zext i32 %.02251 to i64
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.i ; 2 uses
  store ptr %i.h, ptr %i.j, align 8, !tbaa !136
  %i.k = icmp eq ptr %i.h, null
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.l = load ptr, ptr @stderr, align 8, !tbaa !49
  %fwrite34 = tail call i64 @fwrite(ptr nonnull @.str.27, i64 36, i64 1, ptr %i.l) #23 ; 0 uses
  br label %.critedge

bb.f:                                             ; preds = %.lr.ph
  %i.m = load i64, ptr %i.a, align 8, !tbaa !62   ; 3 uses
  %i.n = add i32 %.02251, 1                       ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.m, ptr %i.o, align 8, !tbaa !137
  %i.p = sub i64 %.02342, %i.m                    ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %.not33 = icmp eq i64 %i.p, 0
  br i1 %.not33, label %bb.g, label %.preheader

bb.g:                                             ; preds = %bb.f
  store i32 %i.n, ptr %0, align 4, !tbaa !47
  br label %bb.h

.critedge:                                        ; preds = %bb.e, %.preheader._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.h

bb.h:                                             ; preds = %.critedge, %bb.g, %bb.d
  %.2 = phi i1 [ false, %.critedge ], [ true, %bb.g ], [ false, %bb.d ]
  ret i1 %.2
}

; Function Attrs: nounwind
declare ptr @mmap64(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @eventfd(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @inflight_desc_compare(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !85   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !85   ; 2 uses
  %i.e = icmp ugt i64 %i.b, %i.d
  %i.f = sub nuw i64 %i.b, %i.d
  %i.g = icmp ult i64 %i.f, 2048
  %or.cond = select i1 %i.e, i1 %i.g, i1 false
  %.0 = select i1 %or.cond, i32 1, i32 -1
  ret i32 %.0
}

; Function Attrs: nounwind
declare i32 @ftruncate64(i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nounwind }
attributes #21 = { nounwind willreturn memory(none) }
attributes #22 = { cold nounwind }
attributes #23 = { cold }
attributes #24 = { noreturn nounwind }
attributes #25 = { nounwind allocsize(0) }
attributes #26 = { nounwind allocsize(0,1) }
attributes #27 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"long", !8, i64 0}
!13 = !{!"any pointer", !8, i64 0}
!14 = !{!"p1 _ZTS10vring_desc", !13, i64 0}
!15 = !{!"p1 _ZTS11vring_avail", !13, i64 0}
!16 = !{!"p1 _ZTS10vring_used", !13, i64 0}
!17 = !{!"VduseRing", !9, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !14, i64 32, !15, i64 40, !16, i64 48}
!18 = !{!"short", !8, i64 0}
!19 = !{!"_Bool", !8, i64 0}
!20 = !{!"p1 _ZTS8VduseDev", !13, i64 0}
!21 = !{!"p1 _ZTS22VduseVirtqInflightDesc", !13, i64 0}
!22 = !{!"p1 _ZTS13VduseVirtqLog", !13, i64 0}
!23 = !{!"VduseVirtq", !17, i64 0, !18, i64 56, !18, i64 58, !18, i64 60, !18, i64 62, !19, i64 64, !9, i64 68, !9, i64 72, !19, i64 76, !9, i64 80, !20, i64 88, !21, i64 96, !18, i64 104, !12, i64 112, !22, i64 120}
!24 = !{!23, !20, i64 88}
!25 = !{!23, !9, i64 80}
!26 = !{!"p1 _ZTS10VduseVirtq", !13, i64 0}
!27 = !{!"p1 omnipotent char", !13, i64 0}
!28 = !{!"p1 _ZTS8VduseOps", !13, i64 0}
!29 = !{!"VduseDev", !26, i64 0, !8, i64 8, !9, i64 8200, !27, i64 8208, !9, i64 8216, !9, i64 8220, !18, i64 8224, !18, i64 8226, !12, i64 8232, !28, i64 8240, !9, i64 8248, !9, i64 8252, !13, i64 8256, !13, i64 8264}
!30 = !{!29, !13, i64 8256}
!31 = !{!29, !26, i64 0}
!32 = !{!29, !9, i64 8248}
!33 = !{!23, !15, i64 40}
!34 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!35 = !{!29, !12, i64 8232}
!36 = !{!23, !9, i64 72}
!37 = !{!23, !18, i64 58}
!38 = !{!23, !18, i64 56}
!39 = !{!18, !18, i64 0}
!40 = !{!23, !19, i64 64}
!41 = !{i8 0, i8 2}
!42 = !{}
!43 = !{!23, !18, i64 62}
!44 = !{!23, !18, i64 60}
!45 = !{!23, !9, i64 0}
!46 = !{!23, !9, i64 68}
!47 = !{!9, !9, i64 0}
!48 = !{!"p1 _ZTS8_IO_FILE", !13, i64 0}
!49 = !{!48, !48, i64 0}
!50 = !{!23, !21, i64 96}
!51 = !{!23, !18, i64 104}
!52 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!53 = !{!"VduseVirtqInflightDesc", !18, i64 0, !12, i64 8}
!54 = !{!53, !18, i64 0}
!55 = !{!23, !16, i64 48}
!56 = !{!23, !12, i64 112}
!57 = !{!23, !22, i64 120}
!58 = !{!"VduseDescStateSplit", !8, i64 0, !8, i64 1, !18, i64 6, !12, i64 8}
!59 = !{!58, !12, i64 8}
!60 = !{!58, !8, i64 0}
!61 = !{!23, !14, i64 32}
!62 = !{!12, !12, i64 0}
!63 = !{!"p1 _ZTS5iovec", !13, i64 0}
!64 = !{!"VduseVirtqElement", !9, i64 0, !9, i64 4, !9, i64 8, !63, i64 16, !63, i64 24}
!65 = !{!64, !9, i64 0}
!66 = !{!29, !18, i64 8224}
!67 = !{!23, !19, i64 76}
!68 = !{!29, !28, i64 8240}
!69 = !{!"VduseOps", !13, i64 0, !13, i64 8}
!70 = !{!69, !13, i64 8}
!71 = !{!"vduse_vq_eventfd", !9, i64 0, !9, i64 4}
!72 = !{!71, !9, i64 0}
!73 = !{!71, !9, i64 4}
!74 = !{!29, !13, i64 8264}
!75 = !{!"VduseIovaRegion", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24}
!76 = !{!75, !12, i64 24}
!77 = !{!75, !12, i64 8}
!78 = !{!75, !12, i64 16}
!79 = !{!29, !9, i64 8200}
!80 = !{!75, !12, i64 0}
!81 = !{!23, !12, i64 8}
!82 = !{!23, !12, i64 16}
!83 = !{!23, !12, i64 24}
!84 = !{!"long long", !8, i64 0}
!85 = !{!53, !12, i64 8}
!86 = !{!69, !13, i64 0}
!87 = !{!"llvm.loop.unroll.disable"}
!88 = !{!29, !27, i64 8208}
!89 = !{!29, !9, i64 8252}
!90 = !{i64 2148296735}
!91 = !{i64 2148298665}
!92 = !{i64 2148295201}
!93 = !{!"vring_desc", !12, i64 0, !9, i64 8, !18, i64 12, !18, i64 14}
!94 = !{!93, !18, i64 12}
!95 = !{!93, !9, i64 8}
!96 = !{!93, !12, i64 0}
!97 = !{!93, !18, i64 14}
!98 = !{i64 2148296556}
!99 = !{!64, !9, i64 4}
!100 = !{!64, !9, i64 8}
!101 = !{!64, !63, i64 16}
!102 = !{!64, !63, i64 24}
!103 = !{!13, !13, i64 0}
!104 = !{i64 0, i64 8, !103, i64 8, i64 8, !62}
!105 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!106 = !{i64 2148299003}
!107 = !{i64 2148295247}
!108 = distinct !{null, null}
!109 = !{!"vduse_dev_request", !9, i64 0, !9, i64 4, !8, i64 8, !8, i64 24}
!110 = !{!109, !9, i64 4}
!111 = !{!"vduse_dev_response", !9, i64 0, !9, i64 4, !8, i64 8, !8, i64 24}
!112 = !{!111, !9, i64 0}
!113 = !{!109, !9, i64 0}
!114 = !{!8, !8, i64 0}
!115 = !{!111, !9, i64 4}
!116 = !{!"vduse_vq_config", !9, i64 0, !18, i64 4, !18, i64 6, !9, i64 8, !8, i64 12}
!117 = !{!116, !9, i64 0}
!118 = !{!116, !18, i64 4}
!119 = !{!"vduse_vq_info", !9, i64 0, !9, i64 4, !84, i64 8, !84, i64 16, !84, i64 24, !8, i64 32, !8, i64 40}
!120 = !{!119, !9, i64 0}
!121 = !{!119, !8, i64 40}
!122 = !{!119, !9, i64 4}
!123 = !{!119, !84, i64 8}
!124 = !{!119, !84, i64 16}
!125 = !{!119, !84, i64 24}
!126 = !{i64 2148295155}
!127 = distinct !{!127, !87}
!128 = distinct !{!128, !87}
!129 = !{!84, !84, i64 0}
!130 = !{!"vduse_iotlb_entry", !84, i64 0, !84, i64 8, !84, i64 16, !8, i64 24}
!131 = !{!130, !84, i64 8}
!132 = !{!130, !84, i64 16}
!133 = !{!130, !84, i64 0}
!134 = !{!130, !8, i64 24}
!135 = !{!"iovec", !13, i64 0, !12, i64 8}
!136 = !{!135, !13, i64 0}
!137 = !{!135, !12, i64 8}
end_hunk_0
