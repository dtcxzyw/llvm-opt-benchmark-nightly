Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/cb_config_list?download=true
inline.NumInlined: 10
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@ADIOI_cb_bcast_rank_map:bb.a
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !35
  %i.m = call i32 @PMPI_Comm_rank(ptr noundef %i.l, ptr noundef nonnull %i.a) #11 ; 0 uses
  %i.n = load i32, ptr %i.a, align 4, !tbaa !11
  %.not = icmp eq i32 %i.n, 0
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !34  ; 3 uses
  br i1 %.not, label %._crit_edge43, label %bb.c

._crit_edge43:                                    ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 88
  %.pre44 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !39
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %.pre, i64 20
  %i.p = load i32, ptr %i.o, align 4, !tbaa !38
  %i.q = sext i32 %i.p to i64
  %i.r = shl nsw i64 %i.q, 2
  %i.s = call ptr @ADIOI_Malloc_fn(i64 noundef %i.r, i32 noundef 74, ptr noundef nonnull @.str) #11 ; 3 uses
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !34   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 88
  store ptr %i.s, ptr %i.u, align 8, !tbaa !39
  %i.v = icmp eq ptr %i.s, null
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = call i32 (i32, i32, ptr, i32, i32, ptr, ptr, ...) @MPIO_Err_create_code(i32 noundef 0, i32 noundef 0, ptr noundef nonnull @ADIOI_cb_bcast_rank_map.myname, i32 noundef 78, i32 noundef 16, ptr noundef nonnull @.str.1, ptr noundef null) #11
  br label %bb.i

bb.e:                                             ; preds = %._crit_edge43, %bb.c
  %i.x = phi ptr [ %i.s, %bb.c ], [ %.pre44, %._crit_edge43 ]
  %i.y = phi ptr [ %i.t, %bb.c ], [ %.pre, %._crit_edge43 ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !38
  %i.ab = load ptr, ptr %i.e, align 8, !tbaa !35
  %i.ac = call i32 @PMPI_Bcast(ptr noundef %i.x, i32 noundef %i.aa, ptr noundef nonnull @ompi_mpi_int, i32 noundef 0, ptr noundef %i.ab) #11 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  %i.ad = call ptr @ADIOI_Malloc_fn(i64 noundef 257, i32 noundef 86, ptr noundef nonnull @.str) #11 ; 6 uses
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 20
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !38
  %i.ah = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ad, i64 noundef 257, ptr noundef nonnull @.str.2, i32 noundef %i.ag) #11 ; 0 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !40
  %i.ak = call i32 @PMPI_Info_set(ptr noundef %i.aj, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.ad) #11 ; 0 uses
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !34  ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 20
  %i.an = load i32, ptr %i.am, align 4, !tbaa !38
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %i.ap = ptrtoint ptr %i.ad to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %i.aq = phi ptr [ %i.al, %.lr.ph ], [ %i.bc, %bb.h ]
  %.03539 = phi ptr [ %i.ad, %.lr.ph ], [ %i.bb, %bb.h ] ; 3 uses
  %i.ar = ptrtoint ptr %.03539 to i64
  %.neg = sub i64 %i.ap, %i.ar
  %i.as = trunc i64 %.neg to i32
  %i.at = add i32 %i.as, 256                      ; 2 uses
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 88
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !39
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !11
  %i.az = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %.03539, i64 noundef %i.au, ptr noundef nonnull @.str.4, i32 noundef %i.ay) #11 ; 2 uses
  %.not38 = icmp slt i32 %i.az, %i.at
  br i1 %.not38, label %bb.h, label %._crit_edge

bb.h:                                             ; preds = %bb.g
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds i8, ptr %.03539, i64 %i.ba
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bc = load ptr, ptr %i.b, align 8, !tbaa !34  ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 20
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !38
  %i.bf = sext i32 %i.be to i64
  %i.bg = icmp slt i64 %indvars.iv.next, %i.bf
  br i1 %i.bg, label %bb.g, label %._crit_edge, !llvm.loop !19

._crit_edge:                                      ; preds = %bb.h, %bb.g, %bb.f
  %i.bh = load ptr, ptr %i.ai, align 8, !tbaa !40
  %i.bi = call i32 @PMPI_Info_set(ptr noundef %i.bh, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.ad) #11 ; 0 uses
  call void @ADIOI_Free_fn(ptr noundef nonnull %i.ad, i32 noundef 102, ptr noundef nonnull @.str) #11
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.d
  %.036 = phi i32 [ %i.w, %bb.d ], [ 0, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.036
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @PMPI_Bcast(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @PMPI_Comm_rank(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ADIOI_Malloc_fn(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @MPIO_Err_create_code(i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #3

declare i32 @PMPI_Info_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @ADIOI_Free_fn(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @ADIOI_cb_gather_name_array(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 10 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  store ptr null, ptr %i.f, align 8, !tbaa !46
  %i.g = load i32, ptr @ADIOI_cb_config_list_keyval, align 4, !tbaa !11 ; 2 uses
  %i.h = icmp eq i32 %i.g, -1
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i32 @PMPI_Keyval_create(ptr noundef nonnull @ADIOI_cb_copy_name_array, ptr noundef nonnull @ADIOI_cb_delete_name_array, ptr noundef nonnull @ADIOI_cb_config_list_keyval, ptr noundef null) #11 ; 0 uses
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.j = call i32 @PMPI_Attr_get(ptr noundef %0, i32 noundef %i.g, ptr noundef nonnull %i.f, ptr noundef nonnull %i.e) #11 ; 0 uses
  %i.k = load i32, ptr %i.e, align 4, !tbaa !11
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !46
  store ptr %i.l, ptr %2, align 8, !tbaa !46
  br label %bb.q

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.m = call i32 @PMPI_Comm_size(ptr noundef %1, ptr noundef nonnull %i.c) #11 ; 0 uses
  %i.n = call i32 @PMPI_Comm_rank(ptr noundef %1, ptr noundef nonnull %i.d) #11 ; 0 uses
  %i.o = call i32 @PMPI_Get_processor_name(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #11 ; 0 uses
  %i.p = call ptr @ADIOI_Malloc_fn(i64 noundef 16, i32 noundef 147, ptr noundef nonnull @.str) #11 ; 6 uses
  store ptr %i.p, ptr %i.f, align 8, !tbaa !46
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.q, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 2, ptr %i.p, align 8, !tbaa !15
  %i.r = load i32, ptr %i.d, align 4, !tbaa !11
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.t = load i32, ptr %i.c, align 4, !tbaa !11   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store i32 %i.t, ptr %i.u, align 4, !tbaa !16
  %i.v = sext i32 %i.t to i64
  %i.w = shl nsw i64 %i.v, 3
  %i.x = call ptr @ADIOI_Malloc_fn(i64 noundef %i.w, i32 noundef 157, ptr noundef nonnull @.str) #11 ; 3 uses
  %i.y = load ptr, ptr %i.f, align 8, !tbaa !46
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.x, ptr %i.z, align 8, !tbaa !17
  %i.aa = icmp eq ptr %i.x, null
  br i1 %i.aa, label %bb.q, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = load i32, ptr %i.c, align 4, !tbaa !11
  %i.ac = sext i32 %i.ab to i64
  %i.ad = shl nsw i64 %i.ac, 2
  %i.ae = call ptr @ADIOI_Malloc_fn(i64 noundef %i.ad, i32 noundef 163, ptr noundef nonnull @.str) #11 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.q, label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store i32 0, ptr %i.ag, align 4, !tbaa !16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr null, ptr %i.ah, align 8, !tbaa !17
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.044 = phi ptr [ %i.x, %bb.h ], [ null, %bb.i ] ; 9 uses
  %.043 = phi ptr [ %i.ae, %bb.h ], [ null, %bb.i ] ; 9 uses
  %i.ai = call i32 @PMPI_Gather(ptr noundef nonnull %i.b, i32 noundef 1, ptr noundef nonnull @ompi_mpi_int, ptr noundef %.043, i32 noundef 1, ptr noundef nonnull @ompi_mpi_int, i32 noundef 0, ptr noundef %1) #11 ; 0 uses
  %i.aj = load i32, ptr %i.d, align 4, !tbaa !11
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %.preheader54, label %.thread

.preheader54:                                     ; preds = %bb.j
  %i.al = load i32, ptr %i.c, align 4, !tbaa !11
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader54, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader54 ] ; 2 uses
  %.056 = phi i32 [ %i.aq, %.lr.ph ], [ 0, %.preheader54 ]
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.043, i64 %indvars.iv ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !11
  %i.ap = add nsw i32 %i.ao, 1                    ; 2 uses
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !11
  %i.aq = add nsw i32 %i.ap, %.056                ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ar = load i32, ptr %i.c, align 4, !tbaa !11
  %i.as = sext i32 %i.ar to i64
  %i.at = icmp slt i64 %indvars.iv.next, %i.as
  br i1 %i.at, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !41

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.au = sext i32 %i.aq to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader54
  %.0.lcssa = phi i64 [ 0, %.preheader54 ], [ %i.au, %._crit_edge.loopexit ]
  %i.av = call ptr @ADIOI_Malloc_fn(i64 noundef %.0.lcssa, i32 noundef 191, ptr noundef nonnull @.str) #11 ; 4 uses
  store ptr %i.av, ptr %.044, align 8, !tbaa !18
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.k, label %.preheader

.preheader:                                       ; preds = %._crit_edge
  %i.ax = load i32, ptr %i.c, align 4, !tbaa !11  ; 4 uses
  %i.ay = icmp sgt i32 %i.ax, 1
  br i1 %i.ay, label %.lr.ph58.preheader, label %._crit_edge59

.lr.ph58.preheader:                               ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.ax to i64
  %i.az = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %xtraiter = and i64 %i.az, 3                    ; 3 uses
  %i.ba = add nsw i32 %i.ax, -2
  %i.bb = icmp ult i32 %i.ba, 3
  br i1 %i.bb, label %.lr.ph58.epil.preheader, label %.lr.ph58.preheader.new

.lr.ph58.preheader.new:                           ; preds = %.lr.ph58.preheader
  %unroll_iter = and i64 %i.az, -4
  br label %.lr.ph58

bb.k:                                             ; preds = %._crit_edge
  %i.bc = load ptr, ptr %i.f, align 8, !tbaa !46
  call void @ADIOI_Free_fn(ptr noundef %i.bc, i32 noundef 193, ptr noundef nonnull @.str) #11
  br label %bb.q

.lr.ph58:                                         ; preds = %.lr.ph58, %.lr.ph58.preheader.new
  %i.bd = phi ptr [ %i.av, %.lr.ph58.preheader.new ], [ %i.ca, %.lr.ph58 ]
  %indvars.iv66 = phi i64 [ 1, %.lr.ph58.preheader.new ], [ %indvars.iv.next67.3, %.lr.ph58 ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph58.preheader.new ], [ %niter.next.3, %.lr.ph58 ]
  %i.be = getelementptr [4 x i8], ptr %.043, i64 %indvars.iv66
  %i.bf = getelementptr i8, ptr %i.be, i64 -4
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !11
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds i8, ptr %i.bd, i64 %i.bh ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.044, i64 %indvars.iv66
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !18
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1 ; 2 uses
  %i.bk = getelementptr [4 x i8], ptr %.043, i64 %indvars.iv.next67
  %i.bl = getelementptr i8, ptr %i.bk, i64 -4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !11
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds i8, ptr %i.bi, i64 %i.bn ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %.044, i64 %indvars.iv.next67
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !18
  %indvars.iv.next67.1 = add nuw nsw i64 %indvars.iv66, 2 ; 2 uses
  %i.bq = getelementptr [4 x i8], ptr %.043, i64 %indvars.iv.next67.1
  %i.br = getelementptr i8, ptr %i.bq, i64 -4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !11
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds i8, ptr %i.bo, i64 %i.bt ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %.044, i64 %indvars.iv.next67.1
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !18
  %indvars.iv.next67.2 = add nuw nsw i64 %indvars.iv66, 3 ; 2 uses
  %i.bw = getelementptr [4 x i8], ptr %.043, i64 %indvars.iv.next67.2
  %i.bx = getelementptr i8, ptr %i.bw, i64 -4
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !11
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds i8, ptr %i.bu, i64 %i.bz ; 3 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %.044, i64 %indvars.iv.next67.2
  store ptr %i.ca, ptr %i.cb, align 8, !tbaa !18
  %indvars.iv.next67.3 = add nuw nsw i64 %indvars.iv66, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge59.loopexit.unr-lcssa, label %.lr.ph58, !llvm.loop !42

._crit_edge59.loopexit.unr-lcssa:                 ; preds = %.lr.ph58
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge59, label %.lr.ph58.epil.preheader

.lr.ph58.epil.preheader:                          ; preds = %._crit_edge59.loopexit.unr-lcssa, %.lr.ph58.preheader
  %.epil.init = phi ptr [ %i.av, %.lr.ph58.preheader ], [ %i.ca, %._crit_edge59.loopexit.unr-lcssa ]
  %indvars.iv66.epil.init = phi i64 [ 1, %.lr.ph58.preheader ], [ %indvars.iv.next67.3, %._crit_edge59.loopexit.unr-lcssa ]
  %lcmp.mod77 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod77)
  br label %.lr.ph58.epil

.lr.ph58.epil:                                    ; preds = %.lr.ph58.epil, %.lr.ph58.epil.preheader
  %i.cc = phi ptr [ %.epil.init, %.lr.ph58.epil.preheader ], [ %i.ch, %.lr.ph58.epil ]
  %indvars.iv66.epil = phi i64 [ %indvars.iv66.epil.init, %.lr.ph58.epil.preheader ], [ %indvars.iv.next67.epil, %.lr.ph58.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph58.epil.preheader ], [ %epil.iter.next, %.lr.ph58.epil ]
  %i.cd = getelementptr [4 x i8], ptr %.043, i64 %indvars.iv66.epil
  %i.ce = getelementptr i8, ptr %i.cd, i64 -4
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !11
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds i8, ptr %i.cc, i64 %i.cg ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %.044, i64 %indvars.iv66.epil
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !18
  %indvars.iv.next67.epil = add nuw nsw i64 %indvars.iv66.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge59, label %.lr.ph58.epil, !llvm.loop !43

._crit_edge59:                                    ; preds = %._crit_edge59.loopexit.unr-lcssa, %.lr.ph58.epil, %.preheader
  %i.cj = sext i32 %i.ax to i64
  %i.ck = shl nsw i64 %i.cj, 2
  %i.cl = call ptr @ADIOI_Malloc_fn(i64 noundef %i.ck, i32 noundef 205, ptr noundef nonnull @.str) #11 ; 5 uses
  store i32 0, ptr %i.cl, align 4, !tbaa !11
  %i.cm = load i32, ptr %i.c, align 4, !tbaa !11
  %i.cn = icmp sgt i32 %i.cm, 1
  br i1 %i.cn, label %.lr.ph63, label %._crit_edge64

.lr.ph63:                                         ; preds = %._crit_edge59
  %i.co = load ptr, ptr %.044, align 8, !tbaa !18
  %i.cp = ptrtoint ptr %i.co to i64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph63, %bb.l
  %indvars.iv69 = phi i64 [ 1, %.lr.ph63 ], [ %indvars.iv.next70, %bb.l ] ; 3 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %.044, i64 %indvars.iv69
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !18
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = sub i64 %i.cs, %i.cp
  %i.cu = trunc i64 %i.ct to i32
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv69
  store i32 %i.cu, ptr %i.cv, align 4, !tbaa !11
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1 ; 2 uses
  %i.cw = load i32, ptr %i.c, align 4, !tbaa !11
  %i.cx = sext i32 %i.cw to i64
  %i.cy = icmp slt i64 %indvars.iv.next70, %i.cx
  br i1 %i.cy, label %bb.l, label %._crit_edge64, !llvm.loop !44

._crit_edge64:                                    ; preds = %bb.l, %._crit_edge59
  %.pr = load i32, ptr %i.d, align 4, !tbaa !11
  %i.cz = icmp eq i32 %.pr, 0
  br i1 %i.cz, label %bb.m, label %.thread

bb.m:                                             ; preds = %._crit_edge64
  %i.da = load i32, ptr %i.b, align 4, !tbaa !11
  %i.db = add nsw i32 %i.da, 1
  %i.dc = load ptr, ptr %.044, align 8, !tbaa !18
  %i.dd = call i32 @PMPI_Gatherv(ptr noundef nonnull %i.a, i32 noundef %i.db, ptr noundef nonnull @ompi_mpi_char, ptr noundef %i.dc, ptr noundef %.043, ptr noundef nonnull %i.cl, ptr noundef nonnull @ompi_mpi_char, i32 noundef 0, ptr noundef %1) #11 ; 0 uses
  br label %bb.n

.thread:                                          ; preds = %bb.j, %._crit_edge64
  %.04253 = phi ptr [ %i.cl, %._crit_edge64 ], [ null, %bb.j ]
  %i.de = load i32, ptr %i.b, align 4, !tbaa !11
  %i.df = add nsw i32 %i.de, 1
  %i.dg = call i32 @PMPI_Gatherv(ptr noundef nonnull %i.a, i32 noundef %i.df, ptr noundef nonnull @ompi_mpi_char, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull @ompi_mpi_char, i32 noundef 0, ptr noundef %1) #11 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %.thread, %bb.m
  %.04252 = phi ptr [ %.04253, %.thread ], [ %i.cl, %bb.m ]
  %i.dh = load i32, ptr %i.d, align 4, !tbaa !11
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @ADIOI_Free_fn(ptr noundef %.04252, i32 noundef 227, ptr noundef nonnull @.str) #11
  call void @ADIOI_Free_fn(ptr noundef %.043, i32 noundef 228, ptr noundef nonnull @.str) #11
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.dj = load i32, ptr @ADIOI_cb_config_list_keyval, align 4, !tbaa !11
  %i.dk = load ptr, ptr %i.f, align 8, !tbaa !46
  %i.dl = call i32 @PMPI_Attr_put(ptr noundef %0, i32 noundef %i.dj, ptr noundef %i.dk) #11 ; 0 uses
  %i.dm = load i32, ptr @ADIOI_cb_config_list_keyval, align 4, !tbaa !11
  %i.dn = load ptr, ptr %i.f, align 8, !tbaa !46
  %i.do = call i32 @PMPI_Attr_put(ptr noundef %1, i32 noundef %i.dm, ptr noundef %i.dn) #11 ; 0 uses
  %i.dp = load ptr, ptr %i.f, align 8, !tbaa !46
  store ptr %i.dp, ptr %2, align 8, !tbaa !46
  br label %bb.q

bb.q:                                             ; preds = %bb.h, %bb.g, %bb.e, %bb.p, %bb.k, %bb.d
  %.045 = phi i32 [ 0, %bb.d ], [ -1, %bb.e ], [ -1, %bb.g ], [ -1, %bb.k ], [ 0, %bb.p ], [ -1, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.045
}

declare i32 @PMPI_Keyval_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef i32 @ADIOI_cb_copy_name_array(ptr nofree readnone captures(none) %0, i32 %1, ptr nofree readnone captures(none) %2, ptr noundef %3, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %4, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %5) #4 {
bb.a:
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %3, align 8, !tbaa !15
  %i.b = add nsw i32 %i.a, 1
  store i32 %i.b, ptr %3, align 8, !tbaa !15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr %3, ptr %4, align 8, !tbaa !48
  store i32 1, ptr %5, align 4, !tbaa !11
  ret i32 0
}

; Function Attrs: nounwind uwtable
define noundef i32 @ADIOI_cb_delete_name_array(ptr nofree readnone captures(none) %0, i32 %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = load i32, ptr %2, align 8, !tbaa !15     ; 2 uses
  %i.b = add nsw i32 %i.a, -1
  store i32 %i.b, ptr %2, align 8, !tbaa !15
  %i.c = icmp slt i32 %i.a, 2
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !16
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !18
  tail call void @ADIOI_Free_fn(ptr noundef %i.h, i32 noundef 411, ptr noundef nonnull @.str) #11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !17   ; 2 uses
  %.not8 = icmp eq ptr %i.j, null
  br i1 %.not8, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @ADIOI_Free_fn(ptr noundef nonnull %i.j, i32 noundef 414, ptr noundef nonnull @.str) #11
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @ADIOI_Free_fn(ptr noundef nonnull %2, i32 noundef 415, ptr noundef nonnull @.str) #11
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a
  ret i32 0
}

declare i32 @PMPI_Attr_get(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @PMPI_Comm_size(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @PMPI_Get_processor_name(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @PMPI_Gather(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @PMPI_Gatherv(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @PMPI_Attr_put(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @ADIOI_cb_config_list_parse(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !16   ; 15 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17   ; 5 uses
  %i.f = tail call ptr @ADIOI_Malloc_fn(i64 noundef 257, i32 noundef 274, ptr noundef nonnull @.str) #11 ; 9 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.an, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @ADIOI_Malloc_fn(i64 noundef 257, i32 noundef 279, ptr noundef nonnull @.str) #11 ; 2 uses
  store ptr %i.h, ptr @yylval, align 8, !tbaa !18
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @ADIOI_Free_fn(ptr noundef nonnull %i.f, i32 noundef 281, ptr noundef nonnull @.str) #11
  br label %bb.an

bb.d:                                             ; preds = %bb.b
  store ptr %0, ptr @token_ptr, align 8, !tbaa !18
  %spec.select = tail call i32 @llvm.smin.i32(i32 %3, i32 %i.c) ; 9 uses
  %i.j = load i32, ptr %i.b, align 4, !tbaa !16
end_hunk_0
