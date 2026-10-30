Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5Dscatgath?download=true
inline.NumInlined: 3
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
@.str.14 = private unnamed_addr constant [30 x i8] c"can't get data transform info\00", align 1
@H5E_BADVALUE_g = external local_unnamed_addr global i64, align 8
@.str.15 = private unnamed_addr constant [32 x i8] c"Error performing data transform\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"scatter failed\00", align 1
@H5E_CANTFREE_g = external local_unnamed_addr global i64, align 8
@.str.17 = private unnamed_addr constant [33 x i8] c"Can't release selection iterator\00", align 1
@__func__.H5D__scatgath_write = private unnamed_addr constant [20 x i8] c"H5D__scatgath_write\00", align 1
@H5E_WRITEERROR_g = external local_unnamed_addr global i64, align 8
@__func__.H5D__scatgath_read_select = private unnamed_addr constant [26 x i8] c"H5D__scatgath_read_select\00", align 1
@H5E_RESOURCE_g = external local_unnamed_addr global i64, align 8
@.str.18 = private unnamed_addr constant [51 x i8] c"memory allocation failed for temporary buffer list\00", align 1
@.str.19 = private unnamed_addr constant [57 x i8] c"memory allocation failed for temporary memory space list\00", align 1
@H5E_CANTCREATE_g = external local_unnamed_addr global i64, align 8
@.str.20 = private unnamed_addr constant [41 x i8] c"unable to create simple memory dataspace\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"selection read failed\00", align 1
@H5E_CLOSEERROR_g = external local_unnamed_addr global i64, align 8
@.str.22 = private unnamed_addr constant [22 x i8] c"Can't close dataspace\00", align 1
@__func__.H5D__scatgath_write_select = private unnamed_addr constant [27 x i8] c"H5D__scatgath_write_select\00", align 1
@.str.23 = private unnamed_addr constant [47 x i8] c"memory allocation failed for memory space list\00", align 1
@.str.24 = private unnamed_addr constant [45 x i8] c"memory allocation failed for file space list\00", align 1
@.str.25 = private unnamed_addr constant [48 x i8] c"memory allocation failed for piece address list\00", align 1
@.str.26 = private unnamed_addr constant [47 x i8] c"memory allocation failed for element size list\00", align 1
@.str.27 = private unnamed_addr constant [47 x i8] c"memory allocation failed for write buffer list\00", align 1
@.str.28 = private unnamed_addr constant [43 x i8] c"selection read to background buffer failed\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"selection write failed\00", align 1
@__func__.H5D__gather_file = private unnamed_addr constant [17 x i8] c"H5D__gather_file\00", align 1
@H5E_DATASPACE_g = external local_unnamed_addr global i64, align 8
@.str.30 = private unnamed_addr constant [11 x i8] c"read error\00", align 1
@__func__.H5D__scatter_file = private unnamed_addr constant [18 x i8] c"H5D__scatter_file\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@__func__.H5D__compound_opt_read = private unnamed_addr constant [23 x i8] c"H5D__compound_opt_read\00", align 1

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5D__scatter_mem(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.d = load i8, ptr @H5D_init_g, align 1, !tbaa !10, !range !11, !noundef !12
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = load i8, ptr @H5_libterm_g, align 1, !range !11
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = xor i1 %i.g, true
  %i.i = select i1 %i.e, i1 true, i1 %i.h
  br i1 %i.i, label %bb.b, label %.thread58, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.j = call i32 @H5CX_get_vec_size(ptr noundef nonnull %i.c) #8
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !15
  %i.m = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !15
  %i.n = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5D__scatter_mem, i32 noundef 310, i64 noundef %i.l, i64 noundef %i.m, ptr noundef nonnull @.str.1) #8 ; 0 uses
  br label %.thread58

bb.d:                                             ; preds = %bb.b
  %i.o = load i64, ptr %i.c, align 8, !tbaa !15
  %. = call i64 @llvm.umax.i64(i64 %i.o, i64 1024) ; 3 uses
  %i.p = call noalias ptr @H5FL_seq_malloc(ptr noundef nonnull @H5_size_t_seq_free_list, i64 noundef %.) #8 ; 7 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !15
  %i.s = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !15
  %i.t = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5D__scatter_mem, i32 noundef 318, i64 noundef %i.r, i64 noundef %i.s, ptr noundef nonnull @.str.2) #8 ; 0 uses
  br label %.thread58

bb.f:                                             ; preds = %bb.d
  %i.u = call noalias ptr @H5FL_seq_malloc(ptr noundef nonnull @H5_hsize_t_seq_free_list, i64 noundef %.) #8 ; 6 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %.thread50.thread79, label %.preheader62

.preheader62:                                     ; preds = %bb.f
  %.not65 = icmp eq i64 %2, 0
  br i1 %.not65, label %.thread50.thread, label %.lr.ph68

.thread50.thread79:                               ; preds = %bb.f
  %i.w = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !15
  %i.x = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !15
  %i.y = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5D__scatter_mem, i32 noundef 320, i64 noundef %i.w, i64 noundef %i.x, ptr noundef nonnull @.str.3) #8 ; 0 uses
  %i.z = call ptr @H5FL_seq_free(ptr noundef nonnull @H5_size_t_seq_free_list, ptr noundef nonnull %i.p) #8 ; 0 uses
  br label %.thread58

.lr.ph68:                                         ; preds = %.preheader62, %._crit_edge
  %.03467 = phi ptr [ %.135.lcssa, %._crit_edge ], [ %0, %.preheader62 ] ; 3 uses
  %.03666 = phi i64 [ %i.bc, %._crit_edge ], [ %2, %.preheader62 ] ; 2 uses
  %i.aa = call i32 @H5S_select_iter_get_seq_list(ptr noundef %1, i64 noundef %., i64 noundef %.03666, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.u, ptr noundef nonnull %i.p) #8
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %bb.g, label %.preheader

.preheader:                                       ; preds = %.lr.ph68
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !15  ; 5 uses
  %.not69 = icmp eq i64 %i.ac, 0
  br i1 %.not69, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %xtraiter = and i64 %i.ac, 1
  %i.ad = icmp eq i64 %i.ac, 1
  br i1 %i.ad, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.ac, -2
  br label %.lr.ph

bb.g:                                             ; preds = %.lr.ph68
  %i.ae = load i64, ptr @H5E_INTERNAL_g, align 8, !tbaa !15
  %i.af = load i64, ptr @H5E_UNSUPPORTED_g, align 8, !tbaa !15
  %i.ag = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5D__scatter_mem, i32 noundef 326, i64 noundef %i.ae, i64 noundef %i.af, ptr noundef nonnull @.str.4) #8 ; 0 uses
  br label %.thread50.thread

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.03164 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.au, %.lr.ph ] ; 4 uses
  %.13563 = phi ptr [ %.03467, %.lr.ph.preheader.new ], [ %i.at, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.03164
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !15 ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.03164
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !15
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 %i.ak
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.al, ptr align 1 %.13563, i64 %i.ai, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %.13563, i64 %i.ai ; 2 uses
  %i.an = or disjoint i64 %.03164, 1              ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.an
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !15 ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.an
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !15
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 %i.ar
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.as, ptr align 1 %i.am, i64 %i.ap, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ap ; 3 uses
  %i.au = add nuw i64 %.03164, 2                  ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !84

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.03164.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.au, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.13563.epil.init = phi ptr [ %.03467, %.lr.ph.preheader ], [ %i.at, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod84 = trunc i64 %i.ac to i1
  call void @llvm.assume(i1 %lcmp.mod84)
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.03164.epil.init
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !15 ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.03164.epil.init
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !15
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 %i.ay
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.az, ptr align 1 %.13563.epil.init, i64 %i.aw, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %.13563.epil.init, i64 %i.aw
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader
  %.135.lcssa = phi ptr [ %.03467, %.preheader ], [ %i.at, %._crit_edge.loopexit.unr-lcssa ], [ %i.ba, %.lr.ph.epil.preheader ]
  %i.bb = load i64, ptr %i.b, align 8, !tbaa !15
  %i.bc = sub i64 %.03666, %i.bb                  ; 2 uses
  %.not = icmp eq i64 %i.bc, 0
  br i1 %.not, label %.thread50.thread, label %.lr.ph68, !llvm.loop !85

.thread50.thread:                                 ; preds = %._crit_edge, %.preheader62, %bb.g
  %i.bd = call ptr @H5FL_seq_free(ptr noundef nonnull @H5_size_t_seq_free_list, ptr noundef nonnull %i.p) #8 ; 0 uses
  %i.be = call ptr @H5FL_seq_free(ptr noundef nonnull @H5_hsize_t_seq_free_list, ptr noundef nonnull %i.u) #8 ; 0 uses
  br label %.thread58

.thread58:                                        ; preds = %.thread50.thread79, %bb.c, %bb.e, %.thread50.thread, %bb.a
  %.1 = phi i32 [ 0, %.thread50.thread ], [ -1, %.thread50.thread79 ], [ 0, %bb.a ], [ -1, %bb.e ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @H5CX_get_vec_size(ptr noundef) local_unnamed_addr #2

declare i32 @H5E_printf_stack(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare noalias ptr @H5FL_seq_malloc(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @H5S_select_iter_get_seq_list(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare ptr @H5FL_seq_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define i64 @H5D__gather_mem(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.d = load i8, ptr @H5D_init_g, align 1, !tbaa !10, !range !11, !noundef !12
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = load i8, ptr @H5_libterm_g, align 1, !range !11
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = xor i1 %i.g, true
  %i.i = select i1 %i.e, i1 true, i1 %i.h
  br i1 %i.i, label %bb.b, label %.thread59, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.j = call i32 @H5CX_get_vec_size(ptr noundef nonnull %i.c) #8
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !15
  %i.m = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !15
  %i.n = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5D__gather_mem, i32 noundef 392, i64 noundef %i.l, i64 noundef %i.m, ptr noundef nonnull @.str.1) #8 ; 0 uses
  br label %.thread59

bb.d:                                             ; preds = %bb.b
  %i.o = load i64, ptr %i.c, align 8, !tbaa !15
  %. = call i64 @llvm.umax.i64(i64 %i.o, i64 1024) ; 3 uses
  %i.p = call noalias ptr @H5FL_seq_malloc(ptr noundef nonnull @H5_size_t_seq_free_list, i64 noundef %.) #8 ; 5 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !15
  %i.s = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !15
  %i.t = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5D__gather_mem, i32 noundef 400, i64 noundef %i.r, i64 noundef %i.s, ptr noundef nonnull @.str.2) #8 ; 0 uses
  br label %.thread59

bb.f:                                             ; preds = %bb.d
  %i.u = call noalias ptr @H5FL_seq_malloc(ptr noundef nonnull @H5_hsize_t_seq_free_list, i64 noundef %.) #8 ; 4 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %.thread51.thread79, label %.preheader63

.preheader63:                                     ; preds = %bb.f
  %.not66 = icmp eq i64 %2, 0
  br i1 %.not66, label %.thread51.thread, label %.lr.ph69

.thread51.thread79:                               ; preds = %bb.f
  %i.w = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !15
  %i.x = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !15
  %i.y = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5D__gather_mem, i32 noundef 402, i64 noundef %i.w, i64 noundef %i.x, ptr noundef nonnull @.str.3) #8 ; 0 uses
  %i.z = call ptr @H5FL_seq_free(ptr noundef nonnull @H5_size_t_seq_free_list, ptr noundef nonnull %i.p) #8 ; 0 uses
  br label %.thread59

.lr.ph69:                                         ; preds = %.preheader63, %._crit_edge
  %.03568 = phi ptr [ %.136.lcssa, %._crit_edge ], [ %3, %.preheader63 ] ; 2 uses
  %.03767 = phi i64 [ %i.ao, %._crit_edge ], [ %2, %.preheader63 ] ; 2 uses
  %i.aa = call i32 @H5S_select_iter_get_seq_list(ptr noundef %1, i64 noundef %., i64 noundef %.03767, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.u, ptr noundef nonnull %i.p) #8
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %bb.g, label %.preheader

.preheader:                                       ; preds = %.lr.ph69
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !15
  %.not70 = icmp eq i64 %i.ac, 0
  br i1 %.not70, label %._crit_edge, label %.lr.ph

bb.g:                                             ; preds = %.lr.ph69
  %i.ad = load i64, ptr @H5E_INTERNAL_g, align 8, !tbaa !15
  %i.ae = load i64, ptr @H5E_UNSUPPORTED_g, align 8, !tbaa !15
  %i.af = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5D__gather_mem, i32 noundef 408, i64 noundef %i.ad, i64 noundef %i.ae, ptr noundef nonnull @.str.4) #8 ; 0 uses
  br label %.thread51.thread

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.03265 = phi i64 [ %i.am, %.lr.ph ], [ 0, %.preheader ] ; 3 uses
  %.13664 = phi ptr [ %i.al, %.lr.ph ], [ %.03568, %.preheader ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.03265
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !15 ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.03265
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !15
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %i.aj
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.13664, ptr align 1 %i.ak, i64 %i.ah, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %.13664, i64 %i.ah ; 2 uses
  %i.am = add nuw i64 %.03265, 1                  ; 2 uses
  %4 = load i64, ptr %i.a, align 8, !tbaa !15
  %5 = icmp ult i64 %i.am, %4
  br i1 %5, label %.lr.ph, label %._crit_edge, !llvm.loop !86

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.136.lcssa = phi ptr [ %.03568, %.preheader ], [ %i.al, %.lr.ph ]
  %i.an = load i64, ptr %i.b, align 8, !tbaa !15
  %i.ao = sub i64 %.03767, %i.an                  ; 2 uses
  %.not = icmp eq i64 %i.ao, 0
  br i1 %.not, label %.thread51.thread, label %.lr.ph69, !llvm.loop !87

.thread51.thread:                                 ; preds = %._crit_edge, %.preheader63, %bb.g
  %.05877 = phi i64 [ 0, %.preheader63 ], [ 0, %bb.g ], [ %2, %._crit_edge ]
  %i.ap = call ptr @H5FL_seq_free(ptr noundef nonnull @H5_size_t_seq_free_list, ptr noundef nonnull %i.p) #8 ; 0 uses
  %i.aq = call ptr @H5FL_seq_free(ptr noundef nonnull @H5_hsize_t_seq_free_list, ptr noundef nonnull %i.u) #8 ; 0 uses
  br label %.thread59

.thread59:                                        ; preds = %.thread51.thread79, %bb.c, %bb.e, %.thread51.thread, %bb.a
  %.1 = phi i64 [ %.05877, %.thread51.thread ], [ 0, %.thread51.thread79 ], [ %2, %bb.a ], [ 0, %bb.e ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i64 %.1
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5D__scatgath_read(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load i8, ptr @H5D_init_g, align 1, !tbaa !10, !range !11, !noundef !12
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = load i8, ptr @H5_libterm_g, align 1, !range !11
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = xor i1 %i.e, true
  %i.g = select i1 %i.c, i1 true, i1 %i.f
  br i1 %i.g, label %bb.b, label %.thread257, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !17   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !30   ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.thread257, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !17   ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 316
  %i.p = load i8, ptr %i.o, align 4, !tbaa !33, !range !11, !noundef !12
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !34   ; 2 uses
  %.not148 = icmp eq ptr %i.s, null
  br i1 %.not148, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load i32, ptr %i.s, align 8, !tbaa !36
  %.not149 = icmp eq i32 %i.t, 0
  br i1 %.not149, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.v = load i32, ptr %i.u, align 8, !tbaa !45
  %.not150 = icmp eq i32 %i.v, 2
  br i1 %.not150, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.x = load i32, ptr %i.w, align 8, !tbaa !46
  %.not151 = icmp eq i32 %i.x, 0
  br i1 %.not151, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.z = load i64, ptr %i.y, align 8, !tbaa !47
  %.not152 = icmp ugt i64 %i.k, %i.z
  br i1 %.not152, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.j, %bb.i, %bb.g, %bb.f, %bb.e, %bb.d
  %.0121.shrunk = phi i1 [ false, %bb.j ], [ true, %bb.i ], [ true, %bb.g ], [ true, %bb.f ], [ true, %bb.e ], [ false, %bb.d ], [ false, %bb.c ] ; 4 uses
  %i.aa = tail call noalias ptr @H5FL_reg_malloc(ptr noundef nonnull @H5_H5S_sel_iter_t_reg_free_list) #8 ; 7 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.thread
  %i.ac = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !15
  %i.ad = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !15
  %i.ae = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5D__scatgath_read, i32 noundef 492, i64 noundef %i.ac, i64 noundef %i.ad, ptr noundef nonnull @.str.5) #8 ; 0 uses
  br label %.thread257

bb.l:                                             ; preds = %.thread
  %i.af = tail call noalias ptr @H5FL_reg_malloc(ptr noundef nonnull @H5_H5S_sel_iter_t_reg_free_list) #8 ; 5 uses
  %i.ag = icmp eq ptr %i.af, null                 ; 2 uses
  br i1 %i.ag, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ah = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !15
  %i.ai = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !15
  %i.aj = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5D__scatgath_read, i32 noundef 494, i64 noundef %i.ah, i64 noundef %i.ai, ptr noundef nonnull @.str.6) #8 ; 0 uses
  br label %.split254.thread

bb.n:                                             ; preds = %bb.l
  %i.ak = tail call noalias ptr @H5FL_reg_malloc(ptr noundef nonnull @H5_H5S_sel_iter_t_reg_free_list) #8 ; 6 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.am = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !15
  %i.an = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !15
  %i.ao = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5D__scatgath_read, i32 noundef 496, i64 noundef %i.am, i64 noundef %i.an, ptr noundef nonnull @.str.7) #8 ; 0 uses
  br label %.split254.thread

bb.p:                                             ; preds = %bb.n
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !48
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.at = load i64, ptr %i.as, align 8, !tbaa !49
  %i.au = tail call i32 @H5S_select_iter_init(ptr noundef nonnull %i.ak, ptr noundef %i.aq, i64 noundef %i.at, i32 noundef 1) #8
  %i.av = icmp slt i32 %i.au, 0
  br i1 %i.av, label %.split.thread, label %bb.q

.split.thread:                                    ; preds = %bb.p
  %i.aw = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !15
  %i.ax = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !15
  %i.ay = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5D__scatgath_read, i32 noundef 501, i64 noundef %i.aw, i64 noundef %i.ax, ptr noundef nonnull @.str.8) #8 ; 0 uses
  %i.az = tail call ptr @H5FL_reg_free(ptr noundef nonnull @H5_H5S_sel_iter_t_reg_free_list, ptr noundef nonnull %i.ak) #8 ; 0 uses
  br label %.split254.thread

bb.q:                                             ; preds = %bb.p
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !50
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 3 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !51
  %i.be = tail call i32 @H5S_select_iter_init(ptr noundef nonnull %i.aa, ptr noundef %i.bb, i64 noundef %i.bd, i32 noundef 0) #8
  %i.bf = icmp sgt i32 %i.be, -1                  ; 2 uses
  br i1 %i.bf, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bg = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !15
  %i.bh = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !15
  %i.bi = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5D__scatgath_read, i32 noundef 504, i64 noundef %i.bg, i64 noundef %i.bh, ptr noundef nonnull @.str.9) #8 ; 0 uses
  br label %.thread168

bb.s:                                             ; preds = %bb.q
  %i.bj = load ptr, ptr %i.ba, align 8, !tbaa !50
  %i.bk = load i64, ptr %i.bc, align 8, !tbaa !51
  %i.bl = tail call i32 @H5S_select_iter_init(ptr noundef nonnull %i.af, ptr noundef %i.bj, i64 noundef %i.bk, i32 noundef 0) #8
  %i.bm = icmp slt i32 %i.bl, 0
  br i1 %i.bm, label %bb.t, label %.preheader

.preheader:                                       ; preds = %bb.s
  %i.bn = load i64, ptr %i.j, align 8, !tbaa !30  ; 2 uses
  %.not266 = icmp eq i64 %i.bn, 0
  br i1 %.not266, label %.thread168, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 265
  br label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.by = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !15
  %i.bz = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !15
  %i.ca = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5D__scatgath_read, i32 noundef 507, i64 noundef %i.by, i64 noundef %i.bz, ptr noundef nonnull @.str.10) #8 ; 0 uses
  br label %.thread168

bb.u:                                             ; preds = %.lr.ph, %bb.aw
  %i.cb = phi i64 [ %i.bn, %.lr.ph ], [ %i.ep, %bb.aw ] ; 4 uses
  %.0124265 = phi i64 [ 0, %.lr.ph ], [ %i.eo, %bb.aw ] ; 4 uses
  br i1 %.0121.shrunk, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  %i.cc = load i32, ptr %i.bq, align 8, !tbaa !46 ; 2 uses
  %.not153 = icmp eq i32 %i.cc, 0
  br i1 %.not153, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cd = load i32, ptr %i.br, align 8, !tbaa !45
  %.not154 = icmp eq i32 %i.cd, 2
  br i1 %.not154, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ce = load i64, ptr %i.bp, align 8, !tbaa !47
  %i.cf = sub nuw i64 %i.cb, %.0124265
  %. = call i64 @llvm.umin.i64(i64 %i.ce, i64 %i.cf)
  br label %bb.y
end_hunk_0
