Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/coll_inter_allgatherv?download=true
inline.NumInlined: 5
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ompi_predefined_datatype_t = type { %struct.ompi_datatype_t, [208 x i8] }
%struct.ompi_datatype_t = type { %struct.opal_datatype_t, i32, i32, ptr, ptr, i64, i64, [64 x i8] }
%struct.opal_datatype_t = type { %struct.opal_object_t, i16, i16, i32, i64, i64, i64, i64, i64, i64, i32, i32, [64 x i8], %struct.dt_type_desc_t, %struct.dt_type_desc_t, ptr }
%struct.opal_object_t = type { ptr, i32 }
%struct.dt_type_desc_t = type { i64, i64, ptr }

@ompi_mpi_int = external global %struct.ompi_predefined_datatype_t, align 8

; Function Attrs: nounwind uwtable
define i32 @mca_coll_inter_allgatherv_inter(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr nofree noundef readnone captures(none) %8) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 9 uses
  store i32 %1, ptr %i.a, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store ptr null, ptr %i.b, align 8, !tbaa !15
  %i.c = getelementptr i8, ptr %7, i64 220
  %.val = load i32, ptr %i.c, align 4, !tbaa !43
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 280 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !44   ; 3 uses
  %i.f = getelementptr i8, ptr %i.e, i64 264
  %.val99 = load ptr, ptr %i.f, align 8, !tbaa !45
  %i.g = getelementptr i8, ptr %.val99, i64 16
  %.val99.val = load i32, ptr %i.g, align 8, !tbaa !48 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 224
  %i.i = load i32, ptr %i.h, align 8, !tbaa !49
  %i.j = and i32 %i.i, 1
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %ompi_comm_remote_size.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 272
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !50
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load i32, ptr %i.m, align 8, !tbaa !48
  br label %ompi_comm_remote_size.exit

ompi_comm_remote_size.exit:                       ; preds = %bb.a, %bb.b
  %i.o = phi i32 [ %i.n, %bb.b ], [ 0, %bb.a ]
  %i.p = icmp eq i32 %.val, 0                     ; 3 uses
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %ompi_comm_remote_size.exit
  %i.q = sext i32 %.val99.val to i64
  %i.r = shl nsw i64 %i.q, 2                      ; 2 uses
  %i.s = tail call noalias ptr @malloc(i64 noundef %i.r) #8 ; 3 uses
  %i.t = tail call noalias ptr @malloc(i64 noundef %i.r) #8 ; 3 uses
  %i.u = icmp eq ptr %i.s, null
  %i.v = icmp eq ptr %i.t, null
  %or.cond = or i1 %i.u, %i.v
  br i1 %or.cond, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c, %ompi_comm_remote_size.exit
  %.075 = phi ptr [ %i.s, %bb.c ], [ null, %ompi_comm_remote_size.exit ] ; 14 uses
  %.073 = phi ptr [ %i.t, %bb.c ], [ null, %ompi_comm_remote_size.exit ] ; 13 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 344
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !51   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 144
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !55
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 152
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !56
  %i.ac = call i32 %i.z(ptr noundef nonnull %i.a, i32 noundef 1, ptr noundef nonnull @ompi_mpi_int, ptr noundef %.075, i32 noundef 1, ptr noundef nonnull @ompi_mpi_int, i32 noundef 0, ptr noundef nonnull %i.e, ptr noundef %i.ab) #7 ; 2 uses
  %.not = icmp eq i32 %i.ac, 0
  br i1 %.not, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  br i1 %i.p, label %bb.f, label %._crit_edge.thread

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %.073, align 4, !tbaa !12
  %i.ad = icmp sgt i32 %.val99.val, 1
  br i1 %i.ad, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.f
  %wide.trip.count = zext nneg i32 %.val99.val to i64
  %load_initial = load i32, ptr %.073, align 4    ; 2 uses
  %i.ae = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %xtraiter = and i64 %i.ae, 3                    ; 3 uses
  %i.af = add nsw i32 %.val99.val, -2
  %i.ag = icmp ult i32 %i.af, 3
  br i1 %i.ag, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.ae, -4
  br label %.lr.ph

.preheader:                                       ; preds = %bb.f
  %i.ah = icmp eq i32 %.val99.val, 1
  br i1 %i.ah, label %.lr.ph104.preheader, label %._crit_edge.thread

.lr.ph104.preheader.loopexit.unr-lcssa:           ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph104.preheader, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.lr.ph104.preheader.loopexit.unr-lcssa, %.lr.ph.preheader
  %.epil.init = phi i32 [ %load_initial, %.lr.ph.preheader ], [ %i.bp, %.lr.ph104.preheader.loopexit.unr-lcssa ]
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next.3, %.lr.ph104.preheader.loopexit.unr-lcssa ]
  %lcmp.mod125 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod125)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %i.ai = phi i32 [ %.epil.init, %.lr.ph.epil.preheader ], [ %i.am, %.lr.ph.epil ]
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.aj = getelementptr [4 x i8], ptr %.075, i64 %indvars.iv.epil
  %i.ak = getelementptr i8, ptr %i.aj, i64 -4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !12
  %i.am = add nsw i32 %i.al, %i.ai                ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.073, i64 %indvars.iv.epil
  store i32 %i.am, ptr %i.an, align 4, !tbaa !12
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph104.preheader, label %.lr.ph.epil, !llvm.loop !8

.lr.ph104.preheader:                              ; preds = %.lr.ph104.preheader.loopexit.unr-lcssa, %.lr.ph.epil, %.preheader
  %wide.trip.count109 = zext nneg i32 %.val99.val to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %.val99.val, 4
  br i1 %min.iters.check, label %.lr.ph104.preheader121, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph104.preheader
  %n.vec = and i64 %wide.trip.count109, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.as, %vector.body ]
  %vec.phi119 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.at, %vector.body ]
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.075, i64 %index ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %wide.load = load <2 x i32>, ptr %i.ao, align 4, !tbaa !12
  %wide.load120 = load <2 x i32>, ptr %i.ap, align 4, !tbaa !12
  %i.aq = sext <2 x i32> %wide.load to <2 x i64>
  %i.ar = sext <2 x i32> %wide.load120 to <2 x i64>
  %i.as = add <2 x i64> %vec.phi, %i.aq           ; 2 uses
  %i.at = add <2 x i64> %vec.phi119, %i.ar        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !9

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.at, %i.as
  %i.av = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count109
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph104.preheader121

.lr.ph104.preheader121:                           ; preds = %.lr.ph104.preheader, %middle.block
  %indvars.iv106.ph = phi i64 [ 0, %.lr.ph104.preheader ], [ %n.vec, %middle.block ]
  %.077103.ph = phi i64 [ 0, %.lr.ph104.preheader ], [ %i.av, %middle.block ]
  br label %.lr.ph104

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %i.aw = phi i32 [ %load_initial, %.lr.ph.preheader.new ], [ %i.bp, %.lr.ph ]
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.ax = getelementptr [4 x i8], ptr %.075, i64 %indvars.iv
  %i.ay = getelementptr i8, ptr %i.ax, i64 -4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !12
  %i.ba = add nsw i32 %i.az, %i.aw                ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.073, i64 %indvars.iv
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bc = getelementptr [4 x i8], ptr %.075, i64 %indvars.iv.next
  %i.bd = getelementptr i8, ptr %i.bc, i64 -4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !12
  %i.bf = add nsw i32 %i.be, %i.ba                ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %.073, i64 %indvars.iv.next
  store i32 %i.bf, ptr %i.bg, align 4, !tbaa !12
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bh = getelementptr [4 x i8], ptr %.075, i64 %indvars.iv.next.1
  %i.bi = getelementptr i8, ptr %i.bh, i64 -4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !12
  %i.bk = add nsw i32 %i.bj, %i.bf                ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %.073, i64 %indvars.iv.next.1
  store i32 %i.bk, ptr %i.bl, align 4, !tbaa !12
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.bm = getelementptr [4 x i8], ptr %.075, i64 %indvars.iv.next.2
  %i.bn = getelementptr i8, ptr %i.bm, i64 -4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !12
  %i.bp = add nsw i32 %i.bo, %i.bk                ; 3 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %.073, i64 %indvars.iv.next.2
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !12
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph104.preheader.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !10

.lr.ph104:                                        ; preds = %.lr.ph104.preheader121, %.lr.ph104
  %indvars.iv106 = phi i64 [ %indvars.iv.next107, %.lr.ph104 ], [ %indvars.iv106.ph, %.lr.ph104.preheader121 ] ; 2 uses
  %.077103 = phi i64 [ %i.bu, %.lr.ph104 ], [ %.077103.ph, %.lr.ph104.preheader121 ]
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %.075, i64 %indvars.iv106
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !12
  %i.bt = sext i32 %i.bs to i64
  %i.bu = add i64 %.077103, %i.bt                 ; 2 uses
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1 ; 2 uses
  %exitcond110.not = icmp eq i64 %indvars.iv.next107, %wide.trip.count109
  br i1 %exitcond110.not, label %._crit_edge, label %.lr.ph104, !llvm.loop !11

._crit_edge:                                      ; preds = %.lr.ph104, %middle.block
  %.lcssa = phi i64 [ %i.av, %middle.block ], [ %i.bu, %.lr.ph104 ] ; 3 uses
  %.not92 = icmp eq i64 %.lcssa, 0
  br i1 %.not92, label %._crit_edge.thread, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !66
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %opal_datatype_span.exit, label %bb.h, !prof !67

bb.h:                                             ; preds = %bb.g
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !68 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !69
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !70
  %i.ce = sub nsw i64 %i.cb, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !71
  %i.ch = sub i64 %i.cg, %i.bz
  %i.ci = add i64 %.lcssa, -1
  %i.cj = mul i64 %i.ce, %i.ci
  %i.ck = add i64 %i.ch, %i.cj
  br label %opal_datatype_span.exit

opal_datatype_span.exit:                          ; preds = %bb.g, %bb.h
  %.0 = phi i64 [ %i.bz, %bb.h ], [ 0, %bb.g ]
  %.0.i = phi i64 [ %i.ck, %bb.h ], [ 0, %bb.g ]
  %i.cl = call noalias ptr @malloc(i64 noundef %.0.i) #8 ; 3 uses
  %i.cm = icmp eq ptr %i.cl, null
  %i.cn = sub i64 0, %.0
  %i.co = getelementptr inbounds i8, ptr %i.cl, i64 %i.cn
  br i1 %i.cm, label %bb.l, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader, %opal_datatype_span.exit, %._crit_edge, %bb.e
  %.178 = phi i64 [ %.lcssa, %opal_datatype_span.exit ], [ 0, %._crit_edge ], [ 0, %bb.e ], [ 0, %.preheader ]
  %.071 = phi ptr [ %i.cl, %opal_datatype_span.exit ], [ null, %._crit_edge ], [ null, %bb.e ], [ null, %.preheader ] ; 3 uses
  %.1 = phi ptr [ %i.co, %opal_datatype_span.exit ], [ null, %._crit_edge ], [ null, %bb.e ], [ null, %.preheader ] ; 2 uses
  %i.cp = load ptr, ptr %i.d, align 8, !tbaa !44  ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 344
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !51 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 160
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !72
  %i.cu = load i32, ptr %i.a, align 4, !tbaa !12
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 168
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !73
  %i.cx = call i32 %i.ct(ptr noundef %0, i32 noundef %i.cu, ptr noundef %2, ptr noundef %.1, ptr noundef %.075, ptr noundef %.073, ptr noundef %2, i32 noundef 0, ptr noundef %i.cp, ptr noundef %i.cw) #7 ; 2 uses
  %.not93 = icmp eq i32 %i.cx, 0
  br i1 %.not93, label %bb.i, label %bb.l

bb.i:                                             ; preds = %._crit_edge.thread
  %i.cy = call i32 @ompi_datatype_create_indexed(i32 noundef %i.o, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %i.b) #7 ; 0 uses
  %.val100 = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.cz = call i32 @opal_datatype_commit(ptr noundef %.val100) #7 ; 0 uses
  br i1 %i.p, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.da = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.db = call i32 @ompi_coll_base_sendrecv_actual(ptr noundef %.1, i64 noundef %.178, ptr noundef %2, i32 noundef 0, i32 noundef -11, ptr noundef %3, i64 noundef 1, ptr noundef %i.da, i32 noundef 0, i32 noundef -11, ptr noundef nonnull %7, ptr noundef null) #7 ; 2 uses
  %.not94 = icmp eq i32 %i.db, 0
  br i1 %.not94, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.dc = load ptr, ptr %i.d, align 8, !tbaa !44  ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 344
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !51 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 112
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !74
  %i.dh = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 120
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !75
  %i.dk = call i32 %i.dg(ptr noundef %3, i32 noundef 1, ptr noundef %i.dh, i32 noundef 0, ptr noundef %i.dc, ptr noundef %i.dj) #7
  br label %bb.l

bb.l:                                             ; preds = %opal_datatype_span.exit, %bb.c, %bb.j, %._crit_edge.thread, %bb.d, %bb.k
  %.180 = phi i32 [ -2, %opal_datatype_span.exit ], [ %i.ac, %bb.d ], [ %i.cx, %._crit_edge.thread ], [ %i.db, %bb.j ], [ %i.dk, %bb.k ], [ -2, %bb.c ]
  %.176 = phi ptr [ %.075, %opal_datatype_span.exit ], [ %.075, %bb.d ], [ %.075, %._crit_edge.thread ], [ %.075, %bb.j ], [ %.075, %bb.k ], [ %i.s, %bb.c ] ; 2 uses
  %.174 = phi ptr [ %.073, %opal_datatype_span.exit ], [ %.073, %bb.d ], [ %.073, %._crit_edge.thread ], [ %.073, %bb.j ], [ %.073, %bb.k ], [ %i.t, %bb.c ] ; 2 uses
  %.172 = phi ptr [ null, %opal_datatype_span.exit ], [ null, %bb.d ], [ %.071, %._crit_edge.thread ], [ %.071, %bb.j ], [ %.071, %bb.k ], [ null, %bb.c ] ; 2 uses
  %i.dl = load ptr, ptr %i.b, align 8, !tbaa !15
  %.not95 = icmp eq ptr %i.dl, null
  br i1 %.not95, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dm = call i32 @ompi_datatype_destroy(ptr noundef nonnull %i.b) #7 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.not96 = icmp eq ptr %.172, null
  br i1 %.not96, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @free(ptr noundef nonnull %.172) #7
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.not97 = icmp eq ptr %.174, null
  br i1 %.not97, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @free(ptr noundef nonnull %.174) #7
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.not98 = icmp eq ptr %.176, null
  br i1 %.not98, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @free(ptr noundef nonnull %.176) #7
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  ret i32 %.180
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @ompi_datatype_create_indexed(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ompi_coll_base_sendrecv_actual(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ompi_datatype_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

declare i32 @opal_datatype_commit(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
end_hunk_0
