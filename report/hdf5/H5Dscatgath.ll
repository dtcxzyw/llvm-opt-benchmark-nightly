inline.NumInlined: 3
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.H5FL_seq_head_t = type { %struct.H5FL_blk_head_t, i64 }
%struct.H5FL_blk_head_t = type { i8, i32, i32, i64, ptr, ptr }
%struct.H5FL_reg_head_t = type { i8, i32, i32, ptr, i64, ptr }
%struct.H5D_io_info_t = type { ptr, %struct.H5D_md_io_ops_t, i32, i64, i64, ptr, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, %union.H5_flexible_const_ptr_t, i32, ptr, i8, i64, ptr, i8, i64, i8, i64, i8, i8, i32 }
%struct.H5D_md_io_ops_t = type { ptr, ptr, ptr, ptr }
%union.H5_flexible_const_ptr_t = type { ptr }
%struct.H5D_dset_io_info_t = type { ptr, ptr, %struct.H5D_layout_ops_t, %union.H5_flexible_const_ptr_t, %struct.H5D_io_ops_t, ptr, i64, ptr, ptr, %union.anon, ptr, %struct.H5D_type_info_t, i8 }
%struct.H5D_layout_ops_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.H5D_io_ops_t = type { ptr, ptr, ptr, ptr }
%union.anon = type { ptr }
%struct.H5D_type_info_t = type { ptr, ptr, ptr, ptr, ptr, i64, i64, i8, i8, ptr, i32, i64 }

@H5D_init_g = external local_unnamed_addr global i8, align 1
@H5_libterm_g = external local_unnamed_addr global i8, align 1
@.str = private unnamed_addr constant [44 x i8] c"/opt-bench/work/hdf5/hdf5/src/H5Dscatgath.c\00", align 1
@__func__.H5D__scatter_mem = private unnamed_addr constant [17 x i8] c"H5D__scatter_mem\00", align 1
@H5E_DATASET_g = external local_unnamed_addr global i64, align 8
@H5E_CANTGET_g = external local_unnamed_addr global i64, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"can't retrieve I/O vector size\00", align 1
@H5_size_t_seq_free_list = external global %struct.H5FL_seq_head_t, align 8
@H5E_CANTALLOC_g = external local_unnamed_addr global i64, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"can't allocate I/O length vector array\00", align 1
@H5_hsize_t_seq_free_list = external global %struct.H5FL_seq_head_t, align 8
@.str.3 = private unnamed_addr constant [39 x i8] c"can't allocate I/O offset vector array\00", align 1
@H5E_INTERNAL_g = external local_unnamed_addr global i64, align 8
@H5E_UNSUPPORTED_g = external local_unnamed_addr global i64, align 8
@.str.4 = private unnamed_addr constant [34 x i8] c"sequence length generation failed\00", align 1
@__func__.H5D__gather_mem = private unnamed_addr constant [16 x i8] c"H5D__gather_mem\00", align 1
@H5_H5S_sel_iter_t_reg_free_list = external global %struct.H5FL_reg_head_t, align 8
@__func__.H5D__scatgath_read = private unnamed_addr constant [19 x i8] c"H5D__scatgath_read\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"can't allocate memory iterator\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"can't allocate background iterator\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"can't allocate file iterator\00", align 1
@H5E_CANTINIT_g = external local_unnamed_addr global i64, align 8
@.str.8 = private unnamed_addr constant [48 x i8] c"unable to initialize file selection information\00", align 1
@.str.9 = private unnamed_addr constant [50 x i8] c"unable to initialize memory selection information\00", align 1
@.str.10 = private unnamed_addr constant [54 x i8] c"unable to initialize background selection information\00", align 1
@H5E_IO_g = external local_unnamed_addr global i64, align 8
@H5E_READERROR_g = external local_unnamed_addr global i64, align 8
@.str.11 = private unnamed_addr constant [18 x i8] c"mem gather failed\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"file gather failed\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"datatype conversion failed\00", align 1
@H5E_CANTCONVERT_g = external local_unnamed_addr global i64, align 8
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
  %i.d = load i8, ptr @H5D_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = xor i1 %i.g, true
  %i.i = select i1 %i.e, i1 true, i1 %i.h
  br i1 %i.i, label %bb.b, label %.thread58, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.j = call i32 @H5CX_get_vec_size(ptr noundef nonnull %i.c) #8
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !13
  %i.m = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !13
  %i.n = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5D__scatter_mem, i32 noundef 310, i64 noundef %i.l, i64 noundef %i.m, ptr noundef nonnull @.str.1) #8 ; 0 uses
  br label %.thread58

bb.d:                                             ; preds = %bb.b
  %i.o = load i64, ptr %i.c, align 8, !tbaa !13
  %. = call i64 @llvm.umax.i64(i64 %i.o, i64 1024) ; 3 uses
  %i.p = call noalias ptr @H5FL_seq_malloc(ptr noundef nonnull @H5_size_t_seq_free_list, i64 noundef %.) #8 ; 7 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !13
  %i.s = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !13
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
  %i.w = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !13
  %i.x = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !13
  %i.y = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5D__scatter_mem, i32 noundef 320, i64 noundef %i.w, i64 noundef %i.x, ptr noundef nonnull @.str.3) #8 ; 0 uses
  %i.z = call ptr @H5FL_seq_free(ptr noundef nonnull @H5_size_t_seq_free_list, ptr noundef nonnull %i.p) #8 ; 0 uses
  br label %.thread58

.lr.ph68:                                         ; preds = %.preheader62, %._crit_edge
  %.03267 = phi i64 [ %i.ba, %._crit_edge ], [ %2, %.preheader62 ] ; 2 uses
  %.03566 = phi ptr [ %.136.lcssa, %._crit_edge ], [ %0, %.preheader62 ] ; 3 uses
  %i.aa = call i32 @H5S_select_iter_get_seq_list(ptr noundef %1, i64 noundef %., i64 noundef %.03267, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.u, ptr noundef nonnull %i.p) #8
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %bb.g, label %.preheader

.preheader:                                       ; preds = %.lr.ph68
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !13  ; 5 uses
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
  %i.ae = load i64, ptr @H5E_INTERNAL_g, align 8, !tbaa !13
  %i.af = load i64, ptr @H5E_UNSUPPORTED_g, align 8, !tbaa !13
  %i.ag = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5D__scatter_mem, i32 noundef 326, i64 noundef %i.ae, i64 noundef %i.af, ptr noundef nonnull @.str.4) #8 ; 0 uses
  br label %.thread50.thread

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.03164 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.as, %.lr.ph ] ; 5 uses
  %.13663 = phi ptr [ %.03566, %.lr.ph.preheader.new ], [ %i.ar, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.03164
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !13 ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.03164
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !13
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 %i.ak
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.al, ptr align 1 %.13663, i64 %i.ai, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %.13663, i64 %i.ai ; 2 uses
  %4 = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.03164
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.an = load i64, ptr %5, align 8, !tbaa !13    ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.03164
  %6 = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ap = load i64, ptr %6, align 8, !tbaa !13
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 %i.ap
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aq, ptr align 1 %i.am, i64 %i.an, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.an ; 3 uses
  %i.as = add nuw i64 %.03164, 2                  ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !15

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.03164.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.as, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.13663.epil.init = phi ptr [ %.03566, %.lr.ph.preheader ], [ %i.ar, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod84 = trunc i64 %i.ac to i1
  call void @llvm.assume(i1 %lcmp.mod84)
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.03164.epil.init
  %i.au = load i64, ptr %i.at, align 8, !tbaa !13 ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.03164.epil.init
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !13
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 %i.aw
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ax, ptr align 1 %.13663.epil.init, i64 %i.au, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %.13663.epil.init, i64 %i.au
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader
  %.136.lcssa = phi ptr [ %.03566, %.preheader ], [ %i.ar, %._crit_edge.loopexit.unr-lcssa ], [ %i.ay, %.lr.ph.epil.preheader ]
  %i.az = load i64, ptr %i.b, align 8, !tbaa !13
  %i.ba = sub i64 %.03267, %i.az                  ; 2 uses
  %.not = icmp eq i64 %i.ba, 0
  br i1 %.not, label %.thread50.thread, label %.lr.ph68, !llvm.loop !17

.thread50.thread:                                 ; preds = %._crit_edge, %.preheader62, %bb.g
  %i.bb = call ptr @H5FL_seq_free(ptr noundef nonnull @H5_size_t_seq_free_list, ptr noundef nonnull %i.p) #8 ; 0 uses
  %i.bc = call ptr @H5FL_seq_free(ptr noundef nonnull @H5_hsize_t_seq_free_list, ptr noundef nonnull %i.u) #8 ; 0 uses
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
  %i.d = load i8, ptr @H5D_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = xor i1 %i.g, true
  %i.i = select i1 %i.e, i1 true, i1 %i.h
  br i1 %i.i, label %bb.b, label %.thread59, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.j = call i32 @H5CX_get_vec_size(ptr noundef nonnull %i.c) #8
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !13
  %i.m = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !13
  %i.n = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5D__gather_mem, i32 noundef 392, i64 noundef %i.l, i64 noundef %i.m, ptr noundef nonnull @.str.1) #8 ; 0 uses
  br label %.thread59

bb.d:                                             ; preds = %bb.b
  %i.o = load i64, ptr %i.c, align 8, !tbaa !13
  %. = call i64 @llvm.umax.i64(i64 %i.o, i64 1024) ; 3 uses
  %i.p = call noalias ptr @H5FL_seq_malloc(ptr noundef nonnull @H5_size_t_seq_free_list, i64 noundef %.) #8 ; 5 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !13
  %i.s = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !13
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
  %i.w = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !13
  %i.x = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !13
  %i.y = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5D__gather_mem, i32 noundef 402, i64 noundef %i.w, i64 noundef %i.x, ptr noundef nonnull @.str.3) #8 ; 0 uses
  %i.z = call ptr @H5FL_seq_free(ptr noundef nonnull @H5_size_t_seq_free_list, ptr noundef nonnull %i.p) #8 ; 0 uses
  br label %.thread59

.lr.ph69:                                         ; preds = %.preheader63, %._crit_edge
  %.03368 = phi i64 [ %i.aq, %._crit_edge ], [ %2, %.preheader63 ] ; 2 uses
  %.03667 = phi ptr [ %.137.lcssa, %._crit_edge ], [ %3, %.preheader63 ] ; 2 uses
  %i.aa = call i32 @H5S_select_iter_get_seq_list(ptr noundef %1, i64 noundef %., i64 noundef %.03368, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.u, ptr noundef nonnull %i.p) #8
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %bb.g, label %.preheader

.preheader:                                       ; preds = %.lr.ph69
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !13
  %.not70 = icmp eq i64 %i.ac, 0
  br i1 %.not70, label %._crit_edge, label %.lr.ph

bb.g:                                             ; preds = %.lr.ph69
  %i.ad = load i64, ptr @H5E_INTERNAL_g, align 8, !tbaa !13
  %i.ae = load i64, ptr @H5E_UNSUPPORTED_g, align 8, !tbaa !13
  %i.af = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5D__gather_mem, i32 noundef 408, i64 noundef %i.ad, i64 noundef %i.ae, ptr noundef nonnull @.str.4) #8 ; 0 uses
  br label %.thread51.thread

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.03265 = phi i64 [ %i.am, %.lr.ph ], [ 0, %.preheader ] ; 3 uses
  %.13764 = phi ptr [ %i.al, %.lr.ph ], [ %.03667, %.preheader ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.03265
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !13 ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.03265
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !13
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %i.aj
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.13764, ptr align 1 %i.ak, i64 %i.ah, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %.13764, i64 %i.ah ; 2 uses
  %i.am = add nuw i64 %.03265, 1                  ; 2 uses
  %i.an = load i64, ptr %i.a, align 8, !tbaa !13
  %i.ao = icmp ult i64 %i.am, %i.an
  br i1 %i.ao, label %.lr.ph, label %._crit_edge, !llvm.loop !18

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.137.lcssa = phi ptr [ %.03667, %.preheader ], [ %i.al, %.lr.ph ]
  %i.ap = load i64, ptr %i.b, align 8, !tbaa !13
  %i.aq = sub i64 %.03368, %i.ap                  ; 2 uses
  %.not = icmp eq i64 %i.aq, 0
  br i1 %.not, label %.thread51.thread, label %.lr.ph69, !llvm.loop !19

.thread51.thread:                                 ; preds = %._crit_edge, %.preheader63, %bb.g
  %.05877 = phi i64 [ 0, %.preheader63 ], [ 0, %bb.g ], [ %2, %._crit_edge ]
  %i.ar = call ptr @H5FL_seq_free(ptr noundef nonnull @H5_size_t_seq_free_list, ptr noundef nonnull %i.p) #8 ; 0 uses
  %i.as = call ptr @H5FL_seq_free(ptr noundef nonnull @H5_hsize_t_seq_free_list, ptr noundef nonnull %i.u) #8 ; 0 uses
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
  %i.b = load i8, ptr @H5D_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = xor i1 %i.e, true
  %i.g = select i1 %i.c, i1 true, i1 %i.f
  br i1 %i.g, label %bb.b, label %.thread257, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !20   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !21   ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.thread257, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !20   ; 2 uses
  %.not = icmp eq ptr %i.n, null
end_hunk_0
