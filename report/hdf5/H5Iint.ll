Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5Iint?download=true
inline.NumInlined: 11
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
@__func__.H5I_register_type = private unnamed_addr constant [18 x i8] c"H5I_register_type\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"ID type allocation failed\00", align 1
@__func__.H5I_nmembers = private unnamed_addr constant [13 x i8] c"H5I_nmembers\00", align 1
@H5E_ARGS_g = external local_unnamed_addr global i64, align 8
@H5E_BADRANGE_g = external local_unnamed_addr global i64, align 8
@.str.5 = private unnamed_addr constant [20 x i8] c"invalid type number\00", align 1
@__func__.H5I_clear_type = private unnamed_addr constant [15 x i8] c"H5I_clear_type\00", align 1
@H5E_BADGROUP_g = external local_unnamed_addr global i64, align 8
@.str.6 = private unnamed_addr constant [13 x i8] c"invalid type\00", align 1
@H5I_marking_s = internal unnamed_addr global i1 false, align 1
@H5E_BADITER_g = external local_unnamed_addr global i64, align 8
@__func__.H5I__destroy_type = private unnamed_addr constant [18 x i8] c"H5I__destroy_type\00", align 1
@H5E_CANTRELEASE_g = external local_unnamed_addr global i64, align 8
@.str.8 = private unnamed_addr constant [31 x i8] c"unable to release IDs for type\00", align 1
@__func__.H5I__register = private unnamed_addr constant [14 x i8] c"H5I__register\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"memory allocation failed\00", align 1
@__func__.H5I_register = private unnamed_addr constant [13 x i8] c"H5I_register\00", align 1
@H5E_CANTREGISTER_g = external local_unnamed_addr global i64, align 8
@.str.10 = private unnamed_addr constant [26 x i8] c"unable to register object\00", align 1
@__func__.H5I_register_using_existing_id = private unnamed_addr constant [31 x i8] c"H5I_register_using_existing_id\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"ID already in use\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"invalid type for provided ID\00", align 1
@__func__.H5I_subst = private unnamed_addr constant [10 x i8] c"H5I_subst\00", align 1
@H5E_NOTFOUND_g = external local_unnamed_addr global i64, align 8
@.str.13 = private unnamed_addr constant [23 x i8] c"can't get ID ref count\00", align 1
@__func__.H5I_is_file_object = private unnamed_addr constant [19 x i8] c"H5I_is_file_object\00", align 1
@H5E_BADTYPE_g = external local_unnamed_addr global i64, align 8
@.str.14 = private unnamed_addr constant [21 x i8] c"ID type out of range\00", align 1
@.str.15 = private unnamed_addr constant [41 x i8] c"unable to get underlying datatype struct\00", align 1
@__func__.H5I_remove = private unnamed_addr constant [11 x i8] c"H5I_remove\00", align 1
@H5E_CANTDELETE_g = external local_unnamed_addr global i64, align 8
@.str.16 = private unnamed_addr constant [21 x i8] c"can't remove ID node\00", align 1
@__func__.H5I_dec_ref = private unnamed_addr constant [12 x i8] c"H5I_dec_ref\00", align 1
@H5E_CANTDEC_g = external local_unnamed_addr global i64, align 8
@.str.17 = private unnamed_addr constant [29 x i8] c"can't decrement ID ref count\00", align 1
@__func__.H5I_dec_app_ref = private unnamed_addr constant [16 x i8] c"H5I_dec_app_ref\00", align 1
@__func__.H5I_dec_app_ref_async = private unnamed_addr constant [22 x i8] c"H5I_dec_app_ref_async\00", align 1
@.str.18 = private unnamed_addr constant [44 x i8] c"can't asynchronously decrement ID ref count\00", align 1
@__func__.H5I_dec_app_ref_always_close = private unnamed_addr constant [29 x i8] c"H5I_dec_app_ref_always_close\00", align 1
@__func__.H5I_dec_app_ref_always_close_async = private unnamed_addr constant [35 x i8] c"H5I_dec_app_ref_always_close_async\00", align 1
@__func__.H5I_inc_ref = private unnamed_addr constant [12 x i8] c"H5I_inc_ref\00", align 1
@H5E_BADID_g = external local_unnamed_addr global i64, align 8
@.str.19 = private unnamed_addr constant [16 x i8] c"can't locate ID\00", align 1
@__func__.H5I_get_ref = private unnamed_addr constant [12 x i8] c"H5I_get_ref\00", align 1
@__func__.H5I__inc_type_ref = private unnamed_addr constant [18 x i8] c"H5I__inc_type_ref\00", align 1
@__func__.H5I_dec_type_ref = private unnamed_addr constant [17 x i8] c"H5I_dec_type_ref\00", align 1
@__func__.H5I__get_type_ref = private unnamed_addr constant [18 x i8] c"H5I__get_type_ref\00", align 1
@__func__.H5I_iterate = private unnamed_addr constant [12 x i8] c"H5I_iterate\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"iteration failed\00", align 1
@__func__.H5I_find_id = private unnamed_addr constant [12 x i8] c"H5I_find_id\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"H5I_id_info_t\00", align 1
@H5_H5I_id_info_t_reg_free_list = internal global { i8, [3 x i8], i32, i32, [4 x i8], ptr, i64, ptr } { i8 0, [3 x i8] zeroinitializer, i32 0, i32 0, [4 x i8] zeroinitializer, ptr @.str.21, i64 112, ptr null }, align 8
@__func__.H5I__remove_common = private unnamed_addr constant [19 x i8] c"H5I__remove_common\00", align 1
@.str.23 = private unnamed_addr constant [37 x i8] c"can't remove ID node from hash table\00", align 1
@__func__.H5I__dec_ref = private unnamed_addr constant [13 x i8] c"H5I__dec_ref\00", align 1
@H5E_LIB_g = external local_unnamed_addr global i64, align 8
@H5E_CANTSET_g = external local_unnamed_addr global i64, align 8
@.str.24 = private unnamed_addr constant [37 x i8] c"preparation for user callback failed\00", align 1
@H5E_CANTRESTORE_g = external local_unnamed_addr global i64, align 8
@__func__.H5I__dec_app_ref = private unnamed_addr constant [17 x i8] c"H5I__dec_app_ref\00", align 1
@__func__.H5I__dec_app_ref_always_close = private unnamed_addr constant [30 x i8] c"H5I__dec_app_ref_always_close\00", align 1

; Function Attrs: nounwind uwtable
define i32 @H5I_term_package() local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5I_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %.preheader21, label %bb.h, !prof !12

.preheader21:                                     ; preds = %bb.a
  %i.c = load i32, ptr @H5I_next_type_g, align 4, !tbaa !13 ; 5 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge27.thread

.lr.ph.preheader:                                 ; preds = %.preheader21
  %wide.trip.count = zext nneg i32 %i.c to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.e = icmp eq i32 %i.c, 1
  br i1 %i.e, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %bb.d ] ; 3 uses
  %.01522 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %.116.1, %bb.d ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.d ]
  %i.f = getelementptr inbounds nuw [8 x i8], ptr @H5I_type_info_array_g, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !14  ; 2 uses
  %.not19 = icmp eq ptr %i.g, null
  br i1 %.not19, label %.lr.ph.1, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !17
  %.not20 = icmp ne ptr %i.i, null
  %i.j = zext i1 %.not20 to i32
  %spec.select = add nsw i32 %.01522, %i.j
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.b, %.lr.ph
  %.116 = phi i32 [ %.01522, %.lr.ph ], [ %spec.select, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr @H5I_type_info_array_g, i64 %indvars.iv
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !14   ; 2 uses
  %.not19.1 = icmp eq ptr %i.m, null
  br i1 %.not19.1, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.1
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !17
  %.not20.1 = icmp ne ptr %i.o, null
  %i.p = zext i1 %.not20.1 to i32
  %spec.select.1 = add nsw i32 %.116, %i.p
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.1
  %.116.1 = phi i32 [ %.116, %.lr.ph.1 ], [ %spec.select.1, %bb.c ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !22

._crit_edge.unr-lcssa:                            ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ]
  %.01522.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %.116.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %lcmp.mod38 = trunc i32 %i.c to i1
  tail call void @llvm.assume(i1 %lcmp.mod38)
  %i.q = getelementptr inbounds nuw [8 x i8], ptr @H5I_type_info_array_g, i64 %indvars.iv.epil.init
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !14   ; 2 uses
  %.not19.epil = icmp eq ptr %i.r, null
  br i1 %.not19.epil, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %.lr.ph.epil.preheader
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !17
  %.not20.epil = icmp ne ptr %i.t, null
  %i.u = zext i1 %.not20.epil to i32
  %spec.select.epil = add nsw i32 %.01522.epil.init, %i.u
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %bb.e, %._crit_edge.unr-lcssa
  %.116.lcssa = phi i32 [ %.116.1, %._crit_edge.unr-lcssa ], [ %.01522.epil.init, %.lr.ph.epil.preheader ], [ %spec.select.epil, %bb.e ] ; 2 uses
  %i.v = icmp eq i32 %.116.lcssa, 0
  br i1 %i.v, label %.lr.ph26, label %bb.h

.lr.ph26:                                         ; preds = %._crit_edge, %bb.g
  %i.w = phi i32 [ %i.ab, %bb.g ], [ %i.c, %._crit_edge ]
  %indvars.iv30 = phi i64 [ %indvars.iv.next31, %bb.g ], [ 0, %._crit_edge ] ; 2 uses
  %.224 = phi i32 [ %.3, %bb.g ], [ 0, %._crit_edge ] ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr @H5I_type_info_array_g, i64 %indvars.iv30 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !14   ; 2 uses
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph26
  %i.z = tail call ptr @H5MM_xfree(ptr noundef nonnull %i.y) #8 ; 0 uses
  store ptr null, ptr %i.x, align 8, !tbaa !14
  %i.aa = add nsw i32 %.224, 1
  %.pre = load i32, ptr @H5I_next_type_g, align 4, !tbaa !13
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph26, %bb.f
  %i.ab = phi i32 [ %.pre, %bb.f ], [ %i.w, %.lr.ph26 ] ; 2 uses
  %.3 = phi i32 [ %i.aa, %bb.f ], [ %.224, %.lr.ph26 ] ; 3 uses
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1 ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp slt i64 %indvars.iv.next31, %i.ac
  br i1 %i.ad, label %.lr.ph26, label %._crit_edge27, !llvm.loop !24

._crit_edge27:                                    ; preds = %bb.g
  %i.ae = icmp eq i32 %.3, 0
  br i1 %i.ae, label %._crit_edge27.thread, label %bb.h

._crit_edge27.thread:                             ; preds = %.preheader21, %._crit_edge27
  store i8 0, ptr @H5I_init_g, align 1, !tbaa !8
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %._crit_edge27.thread, %._crit_edge27, %bb.a
  %.5 = phi i32 [ 0, %bb.a ], [ 0, %._crit_edge27.thread ], [ %.3, %._crit_edge27 ], [ %.116.lcssa, %._crit_edge ]
  ret i32 %.5
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @H5MM_xfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define i32 @H5I__register_type_common(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5I_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1                  ; 3 uses
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %.thread39, !prof !25

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr @H5I_next_type_g, align 4, !tbaa !13 ; 3 uses
  %i.h = icmp slt i32 %i.g, 127
  br i1 %i.h, label %bb.c, label %.preheader

bb.c:                                             ; preds = %bb.b
  %i.i = add nsw i32 %i.g, 1
  store i32 %i.i, ptr @H5I_next_type_g, align 4, !tbaa !13
  br label %.thread

.preheader:                                       ; preds = %bb.b, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ 17, %bb.b ] ; 4 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr @H5I_type_info_array_g, i64 %indvars.iv
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !14
  %i.l = icmp ne ptr %i.k, null                   ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.m = icmp samesign ult i64 %indvars.iv, 126
  %i.n = select i1 %i.m, i1 %i.l, i1 false
  br i1 %i.n, label %.preheader, label %bb.d, !llvm.loop !26

bb.d:                                             ; preds = %.preheader
  %i.o = trunc nuw nsw i64 %indvars.iv to i32
  br i1 %i.l, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.p = load i64, ptr @H5E_ID_g, align 8, !tbaa !27
  %i.q = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !27
  %i.r = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5I__register_type_common, i32 noundef 200, i64 noundef %i.p, i64 noundef %i.q, ptr noundef nonnull @.str.1) #8 ; 0 uses
  br label %.thread39

.thread:                                          ; preds = %bb.d, %bb.c
  %.230 = phi i32 [ %i.g, %bb.c ], [ %i.o, %bb.d ] ; 4 uses
  %i.s = tail call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #9 ; 7 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.thread
  %i.u = load i64, ptr @H5E_ID_g, align 8, !tbaa !27
  %i.v = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !27
  %i.w = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5I__register_type_common, i32 noundef 205, i64 noundef %i.u, i64 noundef %i.v, ptr noundef nonnull @.str.2) #8 ; 0 uses
  br label %.thread39

bb.g:                                             ; preds = %.thread
  store i32 %.230, ptr %i.s, align 8, !tbaa !28
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i32 1, ptr %i.x, align 4, !tbaa !30
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i32 %0, ptr %i.y, align 8, !tbaa !31
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %1, ptr %i.z, align 8, !tbaa !32
  %2 = load i8, ptr @H5_libterm_g, align 1, !range !10
  %3 = trunc nuw i8 %2 to i1                      ; 2 uses
  %i.aa = select i1 %i.b, i1 true, i1 %3
  br i1 %i.aa, label %4, label %.thread.i, !prof !25

.thread.i:                                        ; preds = %bb.g
  store i8 1, ptr @H5I_init_g, align 1, !tbaa !8
  br label %bb.h

4:                                                ; preds = %bb.g
  %5 = xor i1 %3, true
  %6 = select i1 %i.b, i1 true, i1 %5
  br i1 %6, label %bb.h, label %H5I_register_type.exit.thread, !prof !33

bb.h:                                             ; preds = %4, %.thread.i
  %i.ab = sext i32 %.230 to i64
  %i.ac = getelementptr inbounds [8 x i8], ptr @H5I_type_info_array_g, i64 %i.ab ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !14 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.af = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #9 ; 3 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %H5I_register_type.exit.thread.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %i.af, ptr %i.ac, align 8, !tbaa !14
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h
  %.018.i = phi ptr [ %i.af, %bb.j ], [ %i.ad, %bb.h ] ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.018.i, i64 8 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !34 ; 2 uses
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.l, label %7

bb.l:                                             ; preds = %bb.k
  store ptr %i.s, ptr %.018.i, align 8, !tbaa !35
  %i.ak = getelementptr inbounds nuw i8, ptr %.018.i, i64 16
  store i64 0, ptr %i.ak, align 8, !tbaa !36
  %i.al = zext i32 %0 to i64
  %i.am = getelementptr inbounds nuw i8, ptr %.018.i, i64 24
  store i64 %i.al, ptr %i.am, align 8, !tbaa !37
  %i.an = getelementptr inbounds nuw i8, ptr %.018.i, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i8 0, i64 16, i1 false)
  br label %7

7:                                                ; preds = %bb.l, %bb.k
  %8 = add i32 %i.ai, 1
  store i32 %8, ptr %i.ah, align 8, !tbaa !34
  br label %H5I_register_type.exit.thread

H5I_register_type.exit.thread.thread:             ; preds = %bb.i
  %i.ao = load i64, ptr @H5E_ID_g, align 8, !tbaa !27
  %i.ap = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !27
  %i.aq = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5I_register_type, i32 noundef 256, i64 noundef %i.ao, i64 noundef %i.ap, ptr noundef nonnull @.str.4) #8 ; 0 uses
  %i.ar = load i64, ptr @H5E_ID_g, align 8, !tbaa !27
  %i.as = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !27
  %i.at = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5I__register_type_common, i32 noundef 215, i64 noundef %i.ar, i64 noundef %i.as, ptr noundef nonnull @.str.3) #8 ; 0 uses
  br label %bb.m

H5I_register_type.exit.thread:                    ; preds = %7, %4
  %i.au = icmp eq i32 %.230, -1
  br i1 %i.au, label %bb.m, label %.thread39

bb.m:                                             ; preds = %H5I_register_type.exit.thread.thread, %H5I_register_type.exit.thread
  %i.av = tail call ptr @H5MM_xfree(ptr noundef nonnull %i.s) #8 ; 0 uses
  br label %.thread39

.thread39:                                        ; preds = %bb.e, %bb.f, %bb.a, %bb.m, %H5I_register_type.exit.thread
  %.2 = phi i32 [ -1, %bb.m ], [ %.230, %H5I_register_type.exit.thread ], [ -1, %bb.a ], [ -1, %bb.f ], [ -1, %bb.e ]
  ret i32 %.2
}

declare i32 @H5E_printf_stack(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5I_register_type(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5I_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.b, label %.thread, !prof !25

.thread:                                          ; preds = %bb.a
  store i8 1, ptr @H5I_init_g, align 1, !tbaa !8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = xor i1 %i.d, true
  %i.g = select i1 %i.b, i1 true, i1 %i.f
  br i1 %i.g, label %bb.c, label %bb.j, !prof !33

bb.c:                                             ; preds = %.thread, %bb.b
  %i.h = load i32, ptr %0, align 8, !tbaa !28
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds [8 x i8], ptr @H5I_type_info_array_g, i64 %i.i ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !14   ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.m = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #9 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = load i64, ptr @H5E_ID_g, align 8, !tbaa !27
  %i.p = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !27
  %i.q = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5I_register_type, i32 noundef 256, i64 noundef %i.o, i64 noundef %i.p, ptr noundef nonnull @.str.4) #8 ; 0 uses
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  store ptr %i.m, ptr %i.j, align 8, !tbaa !14
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f
  %.018 = phi ptr [ %i.m, %bb.f ], [ %i.k, %bb.c ] ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.018, i64 8 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !34   ; 2 uses
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr %0, ptr %.018, align 8, !tbaa !35
  %i.u = getelementptr inbounds nuw i8, ptr %.018, i64 16
  store i64 0, ptr %i.u, align 8, !tbaa !36
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !31
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %.018, i64 24
  store i64 %i.x, ptr %i.y, align 8, !tbaa !37
  %i.z = getelementptr inbounds nuw i8, ptr %.018, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aa = add i32 %i.s, 1
  store i32 %i.aa, ptr %i.r, align 8, !tbaa !34
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.i, %bb.b
  %.1 = phi i32 [ 0, %bb.b ], [ -1, %bb.e ], [ 0, %bb.i ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define i64 @H5I_nmembers(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5I_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.b, label %.thread, !prof !25

.thread:                                          ; preds = %bb.a
  store i8 1, ptr @H5I_init_g, align 1, !tbaa !8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = xor i1 %i.d, true
  %i.g = select i1 %i.b, i1 true, i1 %i.f
  br i1 %i.g, label %bb.c, label %bb.h, !prof !33

bb.c:                                             ; preds = %.thread, %bb.b
  %i.h = icmp sgt i32 %0, -1
  %i.i = load i32, ptr @H5I_next_type_g, align 4
  %.not = icmp slt i32 %0, %i.i
  %or.cond = select i1 %i.h, i1 %.not, i1 false
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !27
  %i.k = load i64, ptr @H5E_BADRANGE_g, align 8, !tbaa !27
  %i.l = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5I_nmembers, i32 noundef 307, i64 noundef %i.j, i64 noundef %i.k, ptr noundef nonnull @.str.5) #8 ; 0 uses
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.m = zext nneg i32 %0 to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr @H5I_type_info_array_g, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !14   ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !34
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !36
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.g, %bb.b
  %.0 = phi i64 [ -1, %bb.d ], [ 0, %bb.b ], [ %i.u, %bb.g ], [ 0, %bb.e ], [ 0, %bb.f ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5I_clear_type(i32 noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.H5_user_cb_state_t, align 8 ; 8 uses
  %4 = alloca %struct.H5_user_cb_state_t, align 8 ; 8 uses
  %i.a = load i8, ptr @H5I_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.b, label %.thread, !prof !25

.thread:                                          ; preds = %bb.a
  store i8 1, ptr @H5I_init_g, align 1, !tbaa !8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = xor i1 %i.d, true
  %i.g = select i1 %i.b, i1 true, i1 %i.f
  br i1 %i.g, label %bb.c, label %.loopexit, !prof !33

bb.c:                                             ; preds = %.thread, %bb.b
  %i.h = icmp sgt i32 %0, -1
  %i.i = load i32, ptr @H5I_next_type_g, align 4
  %.not = icmp slt i32 %0, %i.i
  %or.cond = select i1 %i.h, i1 %.not, i1 false
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !27
  %i.k = load i64, ptr @H5E_BADRANGE_g, align 8, !tbaa !27
  %i.l = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5I_clear_type, i32 noundef 380, i64 noundef %i.j, i64 noundef %i.k, ptr noundef nonnull @.str.5) #8 ; 0 uses
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.m = zext nneg i32 %0 to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr @H5I_type_info_array_g, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !14   ; 8 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !34
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.t = load i64, ptr @H5E_ID_g, align 8, !tbaa !27
  %i.u = load i64, ptr @H5E_BADGROUP_g, align 8, !tbaa !27
  %i.v = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5I_clear_type, i32 noundef 384, i64 noundef %i.t, i64 noundef %i.u, ptr noundef nonnull @.str.6) #8 ; 0 uses
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  store i1 true, ptr @H5I_marking_s, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 40 ; 7 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !17   ; 4 uses
  %.not57 = icmp eq ptr %i.x, null
  br i1 %.not57, label %bb.v, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !38   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 4 uses
  br i1 %1, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.n
  %.04587.us = phi ptr [ %i.bi, %bb.n ], [ %i.z, %.lr.ph ] ; 3 uses
  %.04686.us = phi ptr [ %.04587.us, %bb.n ], [ %i.x, %.lr.ph ] ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.04686.us, i64 48 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !43, !range !10, !noundef !11
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %H5I__mark_node.exit.us, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split.us
  %i.ae = load i8, ptr @H5I_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.af = trunc nuw i8 %i.ae to i1
  %i.ag = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = xor i1 %i.ah, true
  %i.aj = select i1 %i.af, i1 true, i1 %i.ai
  br i1 %i.aj, label %bb.j, label %H5I__mark_node.exit.us, !prof !25

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.04686.us, i64 24
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !44, !range !10, !noundef !11
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = load ptr, ptr %i.o, align 8, !tbaa !35
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !32
  %.not.i.us = icmp eq ptr %i.ap, null
  br i1 %.not.i.us, label %.critedge.i.us, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  %i.aq = call i32 @H5_user_cb_prepare(ptr noundef nonnull %4) #8 ; 0 uses
  %i.ar = load ptr, ptr %i.o, align 8, !tbaa !35
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !32
  %i.au = getelementptr inbounds nuw i8, ptr %.04686.us, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !45
  %i.aw = call i32 %i.at(ptr noundef %i.av, ptr noundef null) #8, !inline_history !46 ; 0 uses
  %i.ax = call i32 @H5_user_cb_restore(ptr noundef nonnull %4) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  br label %.critedge.i.us

bb.m:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %i.ay = call i32 @H5_user_cb_prepare(ptr noundef nonnull %3) #8 ; 0 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.04686.us, i64 40
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !47
  %i.bb = getelementptr inbounds nuw i8, ptr %.04686.us, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !45
  %i.bd = call i32 %i.ba(ptr noundef %i.bc) #8, !inline_history !46 ; 0 uses
  %i.be = call i32 @H5_user_cb_restore(ptr noundef nonnull %3) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  br label %.critedge.i.us

.critedge.i.us:                                   ; preds = %bb.m, %bb.l, %bb.k
  store i8 1, ptr %i.ab, align 8, !tbaa !43
  %i.bf = load i64, ptr %i.aa, align 8, !tbaa !36
  %i.bg = add i64 %i.bf, -1
  store i64 %i.bg, ptr %i.aa, align 8, !tbaa !36
  br label %H5I__mark_node.exit.us

H5I__mark_node.exit.us:                           ; preds = %.critedge.i.us, %bb.i, %.lr.ph.split.us
  %.not66.us = icmp eq ptr %.04587.us, null
  br i1 %.not66.us, label %._crit_edge, label %bb.n

bb.n:                                             ; preds = %H5I__mark_node.exit.us
  %i.bh = getelementptr inbounds nuw i8, ptr %.04587.us, i64 72
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !38
  br label %.lr.ph.split.us, !llvm.loop !48

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.u
  %.04587 = phi ptr [ %i.cz, %bb.u ], [ %i.z, %.lr.ph ] ; 3 uses
  %.04686 = phi ptr [ %.04587, %bb.u ], [ %i.x, %.lr.ph ] ; 7 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.04686, i64 48 ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 8, !tbaa !43, !range !10, !noundef !11
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %H5I__mark_node.exit, label %bb.o

bb.o:                                             ; preds = %.lr.ph.split
  %i.bm = load i8, ptr @H5I_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.bn = trunc nuw i8 %i.bm to i1
  %i.bo = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.bp = trunc nuw i8 %i.bo to i1
  %i.bq = xor i1 %i.bp, true
  %i.br = select i1 %i.bn, i1 true, i1 %i.bq
  br i1 %i.br, label %bb.p, label %H5I__mark_node.exit, !prof !25

bb.p:                                             ; preds = %bb.o
  %i.bs = getelementptr inbounds nuw i8, ptr %.04686, i64 8
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !49
  %i.bu = getelementptr inbounds nuw i8, ptr %.04686, i64 12
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !50
  %i.bw = select i1 %2, i32 0, i32 %i.bv
  %i.bx = sub i32 %i.bt, %i.bw
  %i.by = icmp ult i32 %i.bx, 2
  br i1 %i.by, label %bb.q, label %H5I__mark_node.exit

bb.q:                                             ; preds = %bb.p
  %i.bz = getelementptr inbounds nuw i8, ptr %.04686, i64 24
  %i.ca = load i8, ptr %i.bz, align 8, !tbaa !44, !range !10, !noundef !11
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %i.cc = call i32 @H5_user_cb_prepare(ptr noundef nonnull %3) #8 ; 0 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.04686, i64 40
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !47
  %i.cf = getelementptr inbounds nuw i8, ptr %.04686, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !45
  %i.ch = call i32 %i.ce(ptr noundef %i.cg) #8, !inline_history !46
  %i.ci = call i32 @H5_user_cb_restore(ptr noundef nonnull %3) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  %i.cj = icmp sgt i32 %i.ch, -1
  br i1 %i.cj, label %.critedge.i, label %H5I__mark_node.exit

bb.s:                                             ; preds = %bb.q
  %i.ck = load ptr, ptr %i.o, align 8, !tbaa !35
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !32
  %.not.i = icmp eq ptr %i.cm, null
  br i1 %.not.i, label %.critedge.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  %i.cn = call i32 @H5_user_cb_prepare(ptr noundef nonnull %4) #8 ; 0 uses
  %i.co = load ptr, ptr %i.o, align 8, !tbaa !35
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !32
  %i.cr = getelementptr inbounds nuw i8, ptr %.04686, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !45
  %i.ct = call i32 %i.cq(ptr noundef %i.cs, ptr noundef null) #8, !inline_history !46
  %i.cu = call i32 @H5_user_cb_restore(ptr noundef nonnull %4) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  %i.cv = icmp sgt i32 %i.ct, -1
  br i1 %i.cv, label %.critedge.i, label %H5I__mark_node.exit

.critedge.i:                                      ; preds = %bb.t, %bb.r, %bb.s
  store i8 1, ptr %i.bj, align 8, !tbaa !43
  %i.cw = load i64, ptr %i.aa, align 8, !tbaa !36
  %i.cx = add i64 %i.cw, -1
  store i64 %i.cx, ptr %i.aa, align 8, !tbaa !36
  br label %H5I__mark_node.exit

H5I__mark_node.exit:                              ; preds = %bb.t, %bb.r, %.critedge.i, %bb.p, %bb.o, %.lr.ph.split
  %.not66 = icmp eq ptr %.04587, null
  br i1 %.not66, label %._crit_edge, label %bb.u

bb.u:                                             ; preds = %H5I__mark_node.exit
  %i.cy = getelementptr inbounds nuw i8, ptr %.04587, i64 72
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !38
  br label %.lr.ph.split, !llvm.loop !48

._crit_edge:                                      ; preds = %H5I__mark_node.exit, %H5I__mark_node.exit.us
  %.pr = load ptr, ptr %i.w, align 8, !tbaa !17   ; 2 uses
  store i1 false, ptr @H5I_marking_s, align 1
  %.not59 = icmp eq ptr %.pr, null
  br i1 %.not59, label %.loopexit, label %.lr.ph92

bb.v:                                             ; preds = %bb.h
  store i1 false, ptr @H5I_marking_s, align 1
  br label %.loopexit

.lr.ph92:                                         ; preds = %._crit_edge, %bb.am
  %.sink121 = phi ptr [ %i.db, %bb.am ], [ %.pr, %._crit_edge ] ; 11 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.sink121, i64 72
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !38 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.sink121, i64 48
  %i.dd = load i8, ptr %i.dc, align 8, !tbaa !43, !range !10, !noundef !11
  %i.de = trunc nuw i8 %i.dd to i1
  br i1 %i.de, label %bb.w, label %bb.am

bb.w:                                             ; preds = %.lr.ph92
  %i.df = getelementptr inbounds nuw i8, ptr %.sink121, i64 56 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.sink121, i64 64
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !51 ; 4 uses
  %i.di = icmp eq ptr %i.dh, null                 ; 2 uses
  br i1 %i.di, label %bb.x, label %._crit_edge94

._crit_edge94:                                    ; preds = %bb.w
  %.pre = load ptr, ptr %i.w, align 8, !tbaa !17
  br label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.dj = getelementptr inbounds nuw i8, ptr %.sink121, i64 72
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !52
  %i.dl = icmp eq ptr %i.dk, null
  %.pre95 = load ptr, ptr %i.w, align 8, !tbaa !17 ; 2 uses
  br i1 %i.dl, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dm = getelementptr inbounds nuw i8, ptr %.pre95, i64 56
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !53
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !54
  call void @free(ptr noundef %i.do) #8
  %i.dp = load ptr, ptr %i.w, align 8, !tbaa !17
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 56
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !53
  call void @free(ptr noundef %i.dr) #8
  store ptr null, ptr %i.w, align 8, !tbaa !17
  br label %bb.al

bb.z:                                             ; preds = %._crit_edge94, %bb.x
  %i.ds = phi ptr [ %.pre, %._crit_edge94 ], [ %.pre95, %bb.x ] ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 56
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !53 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 24 ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !57
  %i.dx = icmp eq ptr %i.df, %i.dw
  br i1 %i.dx, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 32
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !58
  %i.ea = getelementptr inbounds i8, ptr %i.dh, i64 %i.dz
  store ptr %i.ea, ptr %i.dv, align 8, !tbaa !57
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.eb = getelementptr inbounds nuw i8, ptr %.sink121, i64 72
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !52 ; 5 uses
  br i1 %i.di, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ed = getelementptr inbounds nuw i8, ptr %i.du, i64 32
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !58
  %i.ef = getelementptr inbounds i8, ptr %i.dh, i64 %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  store ptr %i.ec, ptr %i.eg, align 8, !tbaa !52
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  store ptr %i.ec, ptr %i.w, align 8, !tbaa !17
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.eh = phi ptr [ %i.ec, %bb.ad ], [ %i.ds, %bb.ac ]
  %.not62 = icmp eq ptr %i.ec, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.eh, i64 56
  %.pre97 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !53 ; 4 uses
  br i1 %.not62, label %._crit_edge96, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ei = getelementptr inbounds nuw i8, ptr %.pre97, i64 32
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !58
  %i.ek = getelementptr inbounds i8, ptr %i.ec, i64 %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  store ptr %i.dh, ptr %i.el, align 8, !tbaa !51
  br label %._crit_edge96

._crit_edge96:                                    ; preds = %bb.ae, %bb.af
  %i.em = getelementptr inbounds nuw i8, ptr %.sink121, i64 108
  %i.en = load i32, ptr %i.em, align 4, !tbaa !59
  %i.eo = getelementptr inbounds nuw i8, ptr %.pre97, i64 8
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !60
  %i.eq = add i32 %i.ep, -1
  %i.er = and i32 %i.eq, %i.en
  %i.es = load ptr, ptr %.pre97, align 8, !tbaa !54
  %i.et = zext i32 %i.er to i64
  %i.eu = getelementptr inbounds nuw [16 x i8], ptr %i.es, i64 %i.et ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8 ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !61
  %i.ex = add i32 %i.ew, -1
  store i32 %i.ex, ptr %i.ev, align 8, !tbaa !61
  %i.ey = load ptr, ptr %i.eu, align 8, !tbaa !63
  %i.ez = icmp eq ptr %i.ey, %i.df
  br i1 %i.ez, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %._crit_edge96
  %i.fa = getelementptr inbounds nuw i8, ptr %.sink121, i64 88
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !64
  store ptr %i.fb, ptr %i.eu, align 8, !tbaa !63
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %._crit_edge96
  %i.fc = getelementptr inbounds nuw i8, ptr %.sink121, i64 80
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !65 ; 3 uses
  %.not63 = icmp eq ptr %i.fd, null
  %.phi.trans.insert99 = getelementptr inbounds nuw i8, ptr %.sink121, i64 88
  %.pre100 = load ptr, ptr %.phi.trans.insert99, align 8, !tbaa !64 ; 3 uses
  br i1 %.not63, label %._crit_edge98, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 32
  store ptr %.pre100, ptr %i.fe, align 8, !tbaa !64
  br label %._crit_edge98

._crit_edge98:                                    ; preds = %bb.ah, %bb.ai
  %.not64 = icmp eq ptr %.pre100, null
  br i1 %.not64, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %._crit_edge98
  %i.ff = getelementptr inbounds nuw i8, ptr %.pre100, i64 24
  store ptr %i.fd, ptr %i.ff, align 8, !tbaa !65
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %._crit_edge98
  %i.fg = getelementptr inbounds nuw i8, ptr %.pre97, i64 16 ; 2 uses
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !66
  %i.fi = add i32 %i.fh, -1
  store i32 %i.fi, ptr %i.fg, align 8, !tbaa !66
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.y
  %i.fj = call ptr @H5FL_reg_free(ptr noundef nonnull @H5_H5I_id_info_t_reg_free_list, ptr noundef nonnull %.sink121) #8 ; 0 uses
  br label %bb.am

bb.am:                                            ; preds = %.lr.ph92, %bb.al
  %.not65 = icmp eq ptr %i.db, null
  br i1 %.not65, label %.loopexit, label %.lr.ph92, !llvm.loop !67

.loopexit:                                        ; preds = %bb.am, %._crit_edge, %bb.v, %bb.d, %bb.g, %bb.b
  %.0 = phi i32 [ -1, %bb.d ], [ -1, %bb.g ], [ 0, %bb.b ], [ 0, %bb.v ], [ 0, %._crit_edge ], [ 0, %bb.am ]
  ret i32 %.0
}

declare ptr @H5FL_reg_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5I__destroy_type(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5I_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.n, !prof !25

bb.b:                                             ; preds = %bb.a
  %i.g = icmp sgt i32 %0, -1
  %i.h = load i32, ptr @H5I_next_type_g, align 4
  %.not = icmp slt i32 %0, %i.h
  %or.cond = select i1 %i.g, i1 %.not, i1 false
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !27
  %i.j = load i64, ptr @H5E_BADRANGE_g, align 8, !tbaa !27
  %i.k = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5I__destroy_type, i32 noundef 534, i64 noundef %i.i, i64 noundef %i.j, ptr noundef nonnull @.str.5) #8 ; 0 uses
  br label %bb.n

bb.d:                                             ; preds = %bb.b
  %i.l = zext nneg i32 %0 to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr @H5I_type_info_array_g, i64 %i.l ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !14   ; 6 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !34
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.s = load i64, ptr @H5E_ID_g, align 8, !tbaa !27
  %i.t = load i64, ptr @H5E_BADGROUP_g, align 8, !tbaa !27
  %i.u = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5I__destroy_type, i32 noundef 538, i64 noundef %i.s, i64 noundef %i.t, ptr noundef nonnull @.str.6) #8 ; 0 uses
  br label %bb.n

bb.g:                                             ; preds = %bb.e
  %i.v = tail call i32 @H5I_clear_type(i32 noundef %0, i1 noundef zeroext true, i1 noundef zeroext false)
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = load i64, ptr @H5E_ID_g, align 8, !tbaa !27
  %i.y = load i64, ptr @H5E_CANTRELEASE_g, align 8, !tbaa !27
  %i.z = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5I__destroy_type, i32 noundef 542, i64 noundef %i.x, i64 noundef %i.y, ptr noundef nonnull @.str.8) #8 ; 0 uses
  br label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.aa = load ptr, ptr %i.n, align 8, !tbaa !35  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !30
  %i.ad = and i32 %i.ac, 1
  %.not22 = icmp eq i32 %i.ad, 0
  br i1 %.not22, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = tail call ptr @H5MM_xfree_const(ptr noundef nonnull %i.aa) #8
  store ptr %i.ae, ptr %i.n, align 8, !tbaa !35
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 40 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !17 ; 2 uses
  %.not23 = icmp eq ptr %i.ag, null
  br i1 %.not23, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !53
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !54
  tail call void @free(ptr noundef %i.aj) #8
  %i.ak = load ptr, ptr %i.af, align 8, !tbaa !17
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !53
  tail call void @free(ptr noundef %i.am) #8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  store ptr null, ptr %i.af, align 8, !tbaa !17
  %i.an = tail call ptr @H5MM_xfree(ptr noundef nonnull %i.n) #8 ; 0 uses
  store ptr null, ptr %i.m, align 8, !tbaa !14
  br label %bb.n

bb.n:                                             ; preds = %bb.c, %bb.f, %bb.h, %bb.m, %bb.a
  %.0 = phi i32 [ -1, %bb.c ], [ -1, %bb.f ], [ -1, %bb.h ], [ 0, %bb.m ], [ 0, %bb.a ]
  ret i32 %.0
}

declare ptr @H5MM_xfree_const(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i64 -1, -9223372036854775808) i64 @H5I__register(i32 noundef %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5I_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.ao, !prof !25

bb.b:                                             ; preds = %bb.a
  %i.g = icmp sgt i32 %0, -1
  %i.h = load i32, ptr @H5I_next_type_g, align 4
  %.not = icmp slt i32 %0, %i.h
  %or.cond = select i1 %i.g, i1 %.not, i1 false
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !27
  %i.j = load i64, ptr @H5E_BADRANGE_g, align 8, !tbaa !27
  %i.k = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5I__register, i32 noundef 591, i64 noundef %i.i, i64 noundef %i.j, ptr noundef nonnull @.str.5) #8 ; 0 uses
  br label %bb.ao

bb.d:                                             ; preds = %bb.b
  %i.l = zext nneg i32 %0 to i64                  ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr @H5I_type_info_array_g, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !14   ; 6 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !34
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.s = load i64, ptr @H5E_ID_g, align 8, !tbaa !27
  %i.t = load i64, ptr @H5E_BADGROUP_g, align 8, !tbaa !27
  %i.u = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5I__register, i32 noundef 594, i64 noundef %i.s, i64 noundef %i.t, ptr noundef nonnull @.str.6) #8 ; 0 uses
  br label %bb.ao

bb.g:                                             ; preds = %bb.e
  %i.v = tail call noalias ptr @H5FL_reg_calloc(ptr noundef nonnull @H5_H5I_id_info_t_reg_free_list) #8 ; 26 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = load i64, ptr @H5E_ID_g, align 8, !tbaa !27
  %i.y = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !27
  %i.z = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5I__register, i32 noundef 596, i64 noundef %i.x, i64 noundef %i.y, ptr noundef nonnull @.str.9) #8 ; 0 uses
  br label %bb.ao

bb.i:                                             ; preds = %bb.g
  %i.aa = shl i64 %i.l, 56
  %i.ab = and i64 %i.aa, 9151314442816847872      ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !37 ; 8 uses
  %i.ae = and i64 %i.ad, 72057594037927935
  %i.af = or disjoint i64 %i.ae, %i.ab            ; 2 uses
  store i64 %i.af, ptr %i.v, align 8, !tbaa !68
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i32 1, ptr %i.ag, align 8, !tbaa !49
  %i.ah = zext i1 %2 to i32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !50
  %i.aj = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store ptr %1, ptr %i.aj, align 8, !tbaa !45
  %i.ak = icmp ne ptr %3, null
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.am = zext i1 %i.ak to i8
  store i8 %i.am, ptr %i.al, align 8, !tbaa !44
  %i.an = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store ptr %3, ptr %i.an, align 8, !tbaa !69
  %i.ao = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  store ptr %4, ptr %i.ao, align 8, !tbaa !47
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  store i8 0, ptr %i.ap, align 8, !tbaa !43
  %sh.diff = lshr exact i64 %i.ab, 32
  %tr.sh.diff = trunc nuw nsw i64 %sh.diff to i32
  %i.aq = add nsw i32 %tr.sh.diff, -1640531527
  %sh.diff455 = lshr i64 %i.ad, 32
  %tr.sh.diff456 = trunc nuw i64 %sh.diff455 to i32
  %i.ar = and i32 %tr.sh.diff456, 16711680
  %i.as = add nsw i32 %i.aq, %i.ar
  %sh.diff457 = lshr i64 %i.ad, 32
  %tr.sh.diff458 = trunc nuw i64 %sh.diff457 to i32
  %i.at = and i32 %tr.sh.diff458, 65280
  %i.au = add nsw i32 %i.as, %i.at
  %i.av = lshr i64 %i.ad, 32
  %i.aw = trunc nuw i64 %i.av to i32
  %i.ax = and i32 %i.aw, 255
  %i.ay = add nsw i32 %i.au, %i.ax                ; 2 uses
  %i.az = trunc i64 %i.ad to i32
  %i.ba = and i32 %i.az, -16777216
  %i.bb = trunc i64 %i.ad to i32
  %i.bc = and i32 %i.bb, 16711680
  %i.bd = trunc i64 %i.ad to i32
  %i.be = and i32 %i.bd, 65280
  %i.bf = trunc i64 %i.ad to i32
  %i.bg = and i32 %i.bf, 255
  %i.bh = add i32 %i.ba, -1622558014
  %i.bi = sub i32 %i.bh, %i.ay
  %i.bj = add i32 %i.bi, %i.bc
  %i.bk = add i32 %i.bj, %i.be
  %i.bl = add i32 %i.bk, %i.bg
  %i.bm = xor i32 %i.bl, 522093                   ; 4 uses
  %i.bn = add nsw i32 %i.ay, 17973513
  %i.bo = sub i32 %i.bn, %i.bm
  %i.bp = shl i32 %i.bm, 8
  %i.bq = xor i32 %i.bo, %i.bp                    ; 4 uses
  %i.br = add i32 %i.bm, %i.bq
  %i.bs = sub i32 -17973513, %i.br
  %i.bt = lshr i32 %i.bq, 13
  %i.bu = xor i32 %i.bs, %i.bt                    ; 4 uses
  %i.bv = add i32 %i.bq, %i.bu
  %i.bw = sub i32 %i.bm, %i.bv
  %i.bx = lshr i32 %i.bu, 12
  %i.by = xor i32 %i.bw, %i.bx                    ; 4 uses
  %i.bz = add i32 %i.bu, %i.by
  %i.ca = sub i32 %i.bq, %i.bz
  %i.cb = shl i32 %i.by, 16
  %i.cc = xor i32 %i.ca, %i.cb                    ; 4 uses
  %i.cd = add i32 %i.by, %i.cc
  %i.ce = sub i32 %i.bu, %i.cd
  %i.cf = lshr i32 %i.cc, 5
  %i.cg = xor i32 %i.ce, %i.cf                    ; 4 uses
  %i.ch = add i32 %i.cc, %i.cg
  %i.ci = sub i32 %i.by, %i.ch
  %i.cj = lshr i32 %i.cg, 3
  %i.ck = xor i32 %i.ci, %i.cj                    ; 3 uses
  %i.cl = add i32 %i.cg, %i.ck
  %i.cm = sub i32 %i.cc, %i.cl
  %i.cn = shl i32 %i.ck, 10
  %i.co = xor i32 %i.cm, %i.cn                    ; 2 uses
  %i.cp = add i32 %i.ck, %i.co
  %i.cq = sub i32 %i.cg, %i.cp
  %i.cr = lshr i32 %i.co, 15
  %i.cs = xor i32 %i.cq, %i.cr                    ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.v, i64 56 ; 10 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.v, i64 108
  store i32 %i.cs, ptr %i.cu, align 4, !tbaa !70
  %i.cv = getelementptr inbounds nuw i8, ptr %i.v, i64 96
  store ptr %i.v, ptr %i.cv, align 8, !tbaa !71
  %i.cw = getelementptr inbounds nuw i8, ptr %i.v, i64 104
  store i32 8, ptr %i.cw, align 8, !tbaa !72
  %i.cx = getelementptr inbounds nuw i8, ptr %i.n, i64 40 ; 5 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !17 ; 3 uses
  %.not384 = icmp eq ptr %i.cy, null
  br i1 %.not384, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cz, i8 0, i64 16, i1 false)
  %calloc461 = tail call dereferenceable_or_null(64) ptr @calloc(i64 1, i64 64) ; 10 uses
  store ptr %calloc461, ptr %i.ct, align 8, !tbaa !53
  %.not385 = icmp eq ptr %calloc461, null
  br i1 %.not385, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.da = getelementptr inbounds nuw i8, ptr %calloc461, i64 24
  store ptr %i.ct, ptr %i.da, align 8, !tbaa !57
  %i.db = getelementptr inbounds nuw i8, ptr %calloc461, i64 8
  store i32 32, ptr %i.db, align 8, !tbaa !60
  %i.dc = getelementptr inbounds nuw i8, ptr %calloc461, i64 12
  store i32 5, ptr %i.dc, align 4, !tbaa !73
  %i.dd = getelementptr inbounds nuw i8, ptr %calloc461, i64 32
  store i64 56, ptr %i.dd, align 8, !tbaa !58
  %calloc460 = tail call dereferenceable_or_null(512) ptr @calloc(i64 1, i64 512) ; 3 uses
  store ptr %calloc460, ptr %calloc461, align 8, !tbaa !54
  %i.de = getelementptr inbounds nuw i8, ptr %calloc461, i64 56
  store i32 -1609490463, ptr %i.de, align 8, !tbaa !74
  %.not386 = icmp eq ptr %calloc460, null
  br i1 %.not386, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @free(ptr noundef nonnull %calloc461) #8
  br label %.critedge

bb.m:                                             ; preds = %bb.k
  store ptr %i.v, ptr %i.cx, align 8, !tbaa !17
  br label %.critedge404

bb.n:                                             ; preds = %bb.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.cy, i64 56
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !53 ; 6 uses
  store ptr %i.dg, ptr %i.ct, align 8, !tbaa !53
  %i.dh = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  store ptr null, ptr %i.dh, align 8, !tbaa !38
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 24 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !57 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !58 ; 2 uses
  %i.dm = sub i64 0, %i.dl
  %i.dn = getelementptr inbounds i8, ptr %i.dj, i64 %i.dm ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  store ptr %i.dn, ptr %i.do, align 8, !tbaa !75
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  store ptr %i.v, ptr %i.dp, align 8, !tbaa !52
  store ptr %i.ct, ptr %i.di, align 8, !tbaa !57
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !60
  %.pre432 = load ptr, ptr %i.dg, align 8, !tbaa !54
  br label %.critedge404

.critedge404:                                     ; preds = %bb.m, %bb.n
  %i.dq = phi i64 [ 56, %bb.m ], [ %i.dl, %bb.n ] ; 3 uses
  %i.dr = phi ptr [ null, %bb.m ], [ %i.dn, %bb.n ] ; 5 uses
  %i.ds = phi ptr [ %calloc460, %bb.m ], [ %.pre432, %bb.n ] ; 4 uses
  %i.dt = phi i32 [ 32, %bb.m ], [ %.pre, %bb.n ] ; 4 uses
  %i.du = phi ptr [ %calloc461, %bb.m ], [ %i.dg, %bb.n ] ; 7 uses
  %i.dv = phi ptr [ %i.v, %bb.m ], [ %i.cy, %bb.n ]
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 16 ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !66
  %i.dy = add i32 %i.dx, 1                        ; 3 uses
  store i32 %i.dy, ptr %i.dw, align 8, !tbaa !66
  %i.dz = add i32 %i.dt, -1
  %i.ea = and i32 %i.dz, %i.cs
  %i.eb = zext i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw [16 x i8], ptr %i.ds, i64 %i.eb ; 5 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8 ; 3 uses
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !61
  %i.ef = add i32 %i.ee, 1                        ; 3 uses
  store i32 %i.ef, ptr %i.ed, align 8, !tbaa !61
  %i.eg = load ptr, ptr %i.ec, align 8, !tbaa !63 ; 6 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.v, i64 88 ; 2 uses
  store ptr %i.eg, ptr %i.eh, align 8, !tbaa !76
  %i.ei = getelementptr inbounds nuw i8, ptr %i.v, i64 80 ; 3 uses
  store ptr null, ptr %i.ei, align 8, !tbaa !77
  %.not389 = icmp eq ptr %i.eg, null
  br i1 %.not389, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.critedge404
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  store ptr %i.ct, ptr %i.ej, align 8, !tbaa !65
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.critedge404
  store ptr %i.ct, ptr %i.ec, align 8, !tbaa !63
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ec, i64 12
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !78
  %i.em = mul i32 %i.el, 10
  %i.en = add i32 %i.em, 10
  %.not390 = icmp ult i32 %i.ef, %i.en
  br i1 %.not390, label %.critedge408, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.eo = getelementptr inbounds nuw i8, ptr %i.du, i64 52
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !79
  %.not391 = icmp eq i32 %i.ep, 0
  br i1 %.not391, label %bb.r, label %.critedge408

bb.r:                                             ; preds = %bb.q
  %i.eq = zext i32 %i.dt to i64                   ; 2 uses
  %i.er = shl nuw nsw i64 %i.eq, 5
  %calloc = tail call ptr @calloc(i64 1, i64 %i.er) ; 3 uses
  %.not392.not = icmp eq ptr %calloc, null
  br i1 %.not392.not, label %bb.aa, label %bb.s
end_hunk_0
begin_hunk_1_@H5I__register:bb.a
bb.w:                                             ; preds = %bb.v
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 24
  store ptr %.0425, ptr %i.gb, align 8, !tbaa !65
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  store ptr %.0425, ptr %i.fn, align 8, !tbaa !63
  %.not397 = icmp eq ptr %i.fi, null
  br i1 %.not397, label %._crit_edge, label %.lr.ph, !llvm.loop !82

._crit_edge:                                      ; preds = %bb.x, %.lr.ph428
  %i.gc = phi i32 [ %i.fd, %.lr.ph428 ], [ %i.fy, %bb.x ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.eq
  br i1 %exitcond.not, label %._crit_edge429, label %.lr.ph428, !llvm.loop !83

._crit_edge429:                                   ; preds = %._crit_edge, %bb.s
  tail call void @free(ptr noundef %i.ds) #8
  %i.gd = load ptr, ptr %i.ct, align 8, !tbaa !53 ; 6 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8 ; 2 uses
  %i.gf = load <2 x i32>, ptr %i.ge, align 8, !tbaa !13 ; 2 uses
  %i.gg = insertelement <2 x i32> %i.gf, i32 1, i64 1
  %i.gh = add <2 x i32> %i.gf, %i.gg
  store <2 x i32> %i.gh, ptr %i.ge, align 8, !tbaa !13
  store ptr %calloc, ptr %i.gd, align 8, !tbaa !54
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gd, i64 44
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !81
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  %i.gl = load i32, ptr %i.gk, align 8, !tbaa !66
  %i.gm = lshr i32 %i.gl, 1
  %i.gn = icmp ugt i32 %i.gj, %i.gm
  %i.go = getelementptr inbounds nuw i8, ptr %i.gd, i64 48 ; 3 uses
  br i1 %i.gn, label %bb.y, label %.thread

.thread:                                          ; preds = %._crit_edge429
  store i32 0, ptr %i.go, align 8, !tbaa !84
  br label %.critedge408

bb.y:                                             ; preds = %._crit_edge429
  %i.gp = load i32, ptr %i.go, align 8, !tbaa !84
  %i.gq = add i32 %i.gp, 1                        ; 2 uses
  store i32 %i.gq, ptr %i.go, align 8, !tbaa !84
  %i.gr = icmp ugt i32 %i.gq, 1
  br i1 %i.gr, label %bb.z, label %.critedge408

bb.z:                                             ; preds = %bb.y
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gd, i64 52
  store i32 1, ptr %i.gs, align 4, !tbaa !79
  br label %.critedge408

bb.aa:                                            ; preds = %bb.r
  store ptr %i.eg, ptr %i.ec, align 8, !tbaa !63
  %i.gt = load ptr, ptr %i.ei, align 8, !tbaa !77 ; 3 uses
  %.not395 = icmp eq ptr %i.gt, null
  br i1 %.not395, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 32
  store ptr %i.eg, ptr %i.gu, align 8, !tbaa !64
  %.pre433 = load ptr, ptr %i.eh, align 8, !tbaa !76
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.gv = phi ptr [ %.pre433, %bb.ab ], [ %i.eg, %bb.aa ] ; 2 uses
  %.not396 = icmp eq ptr %i.gv, null
  br i1 %.not396, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 24
  store ptr %i.gt, ptr %i.gw, align 8, !tbaa !65
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  store i32 %i.ef, ptr %i.ed, align 8, !tbaa !61
  %i.gx = icmp eq ptr %i.dr, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ei, i8 0, i64 16, i1 false)
  br i1 %i.gx, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.gy = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !52
  %i.ha = icmp eq ptr %i.gz, null
  br i1 %i.ha, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  tail call void @free(ptr noundef nonnull %i.ds) #8
  %i.hb = load ptr, ptr %i.cx, align 8, !tbaa !17
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 56
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !53
  tail call void @free(ptr noundef %i.hd) #8
  store ptr null, ptr %i.cx, align 8, !tbaa !17
  br label %bb.an

bb.ah:                                            ; preds = %bb.ae
  %i.he = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.hf = getelementptr inbounds i8, ptr %i.dr, i64 %i.dq
  store ptr %i.hf, ptr %i.he, align 8, !tbaa !57
  %i.hg = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !52 ; 2 uses
  %i.hi = getelementptr inbounds i8, ptr %i.dr, i64 %i.dq
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 16
  store ptr %i.hh, ptr %i.hj, align 8, !tbaa !52
  br label %bb.aj

bb.ai:                                            ; preds = %bb.af
  %i.hk = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.hl = getelementptr inbounds i8, ptr %i.dr, i64 %i.dq
  store ptr %i.hl, ptr %i.hk, align 8, !tbaa !57
  %i.hm = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !52 ; 3 uses
  store ptr %i.hn, ptr %i.cx, align 8, !tbaa !17
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.ho = phi ptr [ %i.hn, %bb.ai ], [ %i.dv, %bb.ah ]
  %i.hp = phi ptr [ %i.hn, %bb.ai ], [ %i.hh, %bb.ah ] ; 2 uses
  %.not401 = icmp eq ptr %i.hp, null
  %.phi.trans.insert436 = getelementptr inbounds nuw i8, ptr %i.ho, i64 56
  %.pre437 = load ptr, ptr %.phi.trans.insert436, align 8, !tbaa !53 ; 4 uses
  br i1 %.not401, label %._crit_edge435, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hq = getelementptr inbounds nuw i8, ptr %.pre437, i64 32
  %i.hr = load i64, ptr %i.hq, align 8, !tbaa !58
  %i.hs = getelementptr inbounds i8, ptr %i.hp, i64 %i.hr
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  store ptr %i.dr, ptr %i.ht, align 8, !tbaa !51
  br label %._crit_edge435

._crit_edge435:                                   ; preds = %bb.aj, %bb.ak
  %i.hu = getelementptr inbounds nuw i8, ptr %.pre437, i64 8
  %i.hv = load i32, ptr %i.hu, align 8, !tbaa !60
  %i.hw = add i32 %i.hv, -1
  %i.hx = and i32 %i.hw, %i.cs
  %i.hy = load ptr, ptr %.pre437, align 8, !tbaa !54
  %i.hz = zext i32 %i.hx to i64
  %i.ia = getelementptr inbounds nuw [16 x i8], ptr %i.hy, i64 %i.hz ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 8 ; 2 uses
  %i.ic = load i32, ptr %i.ib, align 8, !tbaa !61
  %i.id = add i32 %i.ic, -1
  store i32 %i.id, ptr %i.ib, align 8, !tbaa !61
  %i.ie = load ptr, ptr %i.ia, align 8, !tbaa !63
  %i.if = icmp eq ptr %i.ie, %i.ct
  br i1 %i.if, label %bb.al, label %bb.am

bb.al:                                            ; preds = %._crit_edge435
  store ptr null, ptr %i.ia, align 8, !tbaa !63
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %._crit_edge435
  %i.ig = getelementptr inbounds nuw i8, ptr %.pre437, i64 16 ; 2 uses
  %i.ih = load i32, ptr %i.ig, align 8, !tbaa !66
  %i.ii = add i32 %i.ih, -1
  store i32 %i.ii, ptr %i.ig, align 8, !tbaa !66
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.ag
  store ptr null, ptr %i.ct, align 8, !tbaa !53
  br label %.critedge408

.critedge:                                        ; preds = %bb.j, %bb.l
  store ptr null, ptr %i.ct, align 8, !tbaa !53
  br label %.critedge408

.critedge408:                                     ; preds = %bb.z, %bb.y, %.thread, %bb.an, %bb.p, %bb.q, %.critedge
  %i.ij = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.ik = load <2 x i64>, ptr %i.ij, align 8, !tbaa !27
  %i.il = add <2 x i64> %i.ik, splat (i64 1)
  store <2 x i64> %i.il, ptr %i.ij, align 8, !tbaa !27
  %i.im = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr %i.v, ptr %i.im, align 8, !tbaa !85
  br label %bb.ao

bb.ao:                                            ; preds = %bb.c, %bb.f, %bb.h, %.critedge408, %bb.a
  %.0368 = phi i64 [ -1, %bb.c ], [ -1, %bb.f ], [ -1, %bb.h ], [ %i.af, %.critedge408 ], [ -1, %bb.a ]
  ret i64 %.0368
}

declare noalias ptr @H5FL_reg_calloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define range(i64 -1, -9223372036854775808) i64 @H5I_register(i32 noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5I_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.b, label %.thread, !prof !25

.thread:                                          ; preds = %bb.a
  store i8 1, ptr @H5I_init_g, align 1, !tbaa !8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = xor i1 %i.d, true
  %i.g = select i1 %i.b, i1 true, i1 %i.f
  br i1 %i.g, label %bb.c, label %bb.e, !prof !33

bb.c:                                             ; preds = %.thread, %bb.b
  %i.h = tail call i64 @H5I__register(i32 noundef %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef null, ptr noundef null) ; 2 uses
  %i.i = icmp eq i64 %i.h, -1
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = load i64, ptr @H5E_ID_g, align 8, !tbaa !27
  %i.k = load i64, ptr @H5E_CANTREGISTER_g, align 8, !tbaa !27
  %i.l = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5I_register, i32 noundef 650, i64 noundef %i.j, i64 noundef %i.k, ptr noundef nonnull @.str.10) #8 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.0 = phi i64 [ -1, %bb.d ], [ %i.h, %bb.c ], [ -1, %bb.b ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5I_register_using_existing_id(i32 noundef %0, ptr noundef %1, i1 noundef zeroext %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5I_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.b, label %.thread, !prof !25

.thread:                                          ; preds = %bb.a
  store i8 1, ptr @H5I_init_g, align 1, !tbaa !8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = xor i1 %i.d, true
  %i.g = select i1 %i.b, i1 true, i1 %i.f
  br i1 %i.g, label %bb.c, label %bb.at, !prof !33

bb.c:                                             ; preds = %.thread, %bb.b
  %i.h = tail call ptr @H5I__find_id(i64 noundef %3)
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load i64, ptr @H5E_ID_g, align 8, !tbaa !27
  %i.j = load i64, ptr @H5E_BADRANGE_g, align 8, !tbaa !27
  %i.k = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5I_register_using_existing_id, i32 noundef 688, i64 noundef %i.i, i64 noundef %i.j, ptr noundef nonnull @.str.11) #8 ; 0 uses
  br label %bb.at

bb.e:                                             ; preds = %bb.c
  %i.l = icmp sgt i32 %0, -1
  %i.m = load i32, ptr @H5I_next_type_g, align 4
  %.not382 = icmp slt i32 %0, %i.m
  %or.cond = select i1 %i.l, i1 %.not382, i1 false
  br i1 %or.cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !27
  %i.o = load i64, ptr @H5E_BADRANGE_g, align 8, !tbaa !27
  %i.p = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5I_register_using_existing_id, i32 noundef 692, i64 noundef %i.n, i64 noundef %i.o, ptr noundef nonnull @.str.5) #8 ; 0 uses
  br label %bb.at

bb.g:                                             ; preds = %bb.e
  %i.q = zext nneg i32 %0 to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr @H5I_type_info_array_g, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !14   ; 5 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !34
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.x = load i64, ptr @H5E_ID_g, align 8, !tbaa !27
  %i.y = load i64, ptr @H5E_BADGROUP_g, align 8, !tbaa !27
  %i.z = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5I_register_using_existing_id, i32 noundef 698, i64 noundef %i.x, i64 noundef %i.y, ptr noundef nonnull @.str.6) #8 ; 0 uses
  br label %bb.at

bb.j:                                             ; preds = %bb.h
  %i.aa = lshr i64 %3, 56                         ; 2 uses
  %i.ab = trunc nuw nsw i64 %i.aa to i32
  %i.ac = and i32 %i.ab, 127
  %.not383 = icmp eq i32 %i.ac, %0
  br i1 %.not383, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = load i64, ptr @H5E_ID_g, align 8, !tbaa !27
  %i.ae = load i64, ptr @H5E_BADRANGE_g, align 8, !tbaa !27
  %i.af = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5I_register_using_existing_id, i32 noundef 702, i64 noundef %i.ad, i64 noundef %i.ae, ptr noundef nonnull @.str.12) #8 ; 0 uses
  br label %bb.at

bb.l:                                             ; preds = %bb.j
  %i.ag = tail call noalias ptr @H5FL_reg_calloc(ptr noundef nonnull @H5_H5I_id_info_t_reg_free_list) #8 ; 24 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ai = load i64, ptr @H5E_ID_g, align 8, !tbaa !27
  %i.aj = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !27
  %i.ak = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5I_register_using_existing_id, i32 noundef 706, i64 noundef %i.ai, i64 noundef %i.aj, ptr noundef nonnull @.str.9) #8 ; 0 uses
  br label %bb.at

bb.n:                                             ; preds = %bb.l
  store i64 %3, ptr %i.ag, align 8, !tbaa !68
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i32 1, ptr %i.al, align 8, !tbaa !49
  %i.am = zext i1 %2 to i32
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  store i32 %i.am, ptr %i.an, align 4, !tbaa !50
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store ptr %1, ptr %i.ao, align 8, !tbaa !45
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store i8 0, ptr %i.ap, align 8, !tbaa !44
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ar = trunc nuw nsw i64 %i.aa to i32
  %i.as = shl nuw i32 %i.ar, 24
  %i.at = add i32 %i.as, -1640531527
  %sh.diff = lshr i64 %3, 32
  %tr.sh.diff = trunc nuw i64 %sh.diff to i32
  %i.au = and i32 %tr.sh.diff, 16711680
  %i.av = add i32 %i.at, %i.au
  %sh.diff456 = lshr i64 %3, 32
  %tr.sh.diff457 = trunc nuw i64 %sh.diff456 to i32
  %i.aw = and i32 %tr.sh.diff457, 65280
  %i.ax = add i32 %i.av, %i.aw
  %i.ay = lshr i64 %3, 32
  %i.az = trunc nuw i64 %i.ay to i32
  %i.ba = and i32 %i.az, 255
  %i.bb = add i32 %i.ax, %i.ba                    ; 2 uses
  %i.bc = trunc i64 %3 to i32
  %i.bd = and i32 %i.bc, -16777216
  %i.be = trunc i64 %3 to i32
  %i.bf = and i32 %i.be, 16711680
  %i.bg = trunc i64 %3 to i32
  %i.bh = and i32 %i.bg, 65280
  %i.bi = trunc i64 %3 to i32
  %i.bj = and i32 %i.bi, 255
  %i.bk = add i32 %i.bd, -1622558014
  %i.bl = sub i32 %i.bk, %i.bb
  %i.bm = add i32 %i.bl, %i.bf
  %i.bn = add i32 %i.bm, %i.bh
  %i.bo = add i32 %i.bn, %i.bj
  %i.bp = xor i32 %i.bo, 522093                   ; 4 uses
  %i.bq = add i32 %i.bb, 17973513
  %i.br = sub i32 %i.bq, %i.bp
  %i.bs = shl i32 %i.bp, 8
  %i.bt = xor i32 %i.br, %i.bs                    ; 4 uses
  %i.bu = add i32 %i.bp, %i.bt
  %i.bv = sub i32 -17973513, %i.bu
  %i.bw = lshr i32 %i.bt, 13
  %i.bx = xor i32 %i.bv, %i.bw                    ; 4 uses
  %i.by = add i32 %i.bt, %i.bx
  %i.bz = sub i32 %i.bp, %i.by
  %i.ca = lshr i32 %i.bx, 12
  %i.cb = xor i32 %i.bz, %i.ca                    ; 4 uses
  %i.cc = add i32 %i.bx, %i.cb
  %i.cd = sub i32 %i.bt, %i.cc
  %i.ce = shl i32 %i.cb, 16
  %i.cf = xor i32 %i.cd, %i.ce                    ; 4 uses
  %i.cg = add i32 %i.cb, %i.cf
  %i.ch = sub i32 %i.bx, %i.cg
  %i.ci = lshr i32 %i.cf, 5
  %i.cj = xor i32 %i.ch, %i.ci                    ; 4 uses
  %i.ck = add i32 %i.cf, %i.cj
  %i.cl = sub i32 %i.cb, %i.ck
  %i.cm = lshr i32 %i.cj, 3
  %i.cn = xor i32 %i.cl, %i.cm                    ; 3 uses
  %i.co = add i32 %i.cj, %i.cn
  %i.cp = sub i32 %i.cf, %i.co
  %i.cq = shl i32 %i.cn, 10
  %i.cr = xor i32 %i.cp, %i.cq                    ; 2 uses
  %i.cs = add i32 %i.cn, %i.cr
  %i.ct = sub i32 %i.cj, %i.cs
  %i.cu = lshr i32 %i.cr, 15
  %i.cv = xor i32 %i.ct, %i.cu                    ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ag, i64 56 ; 10 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ag, i64 108
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.aq, i8 0, i64 17, i1 false)
  store i32 %i.cv, ptr %i.cx, align 4, !tbaa !70
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ag, i64 96
  store ptr %i.ag, ptr %i.cy, align 8, !tbaa !71
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ag, i64 104
  store i32 8, ptr %i.cz, align 8, !tbaa !72
  %i.da = getelementptr inbounds nuw i8, ptr %i.s, i64 40 ; 5 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !17 ; 3 uses
  %.not384 = icmp eq ptr %i.db, null
  br i1 %.not384, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dc, i8 0, i64 16, i1 false)
  %calloc460 = tail call dereferenceable_or_null(64) ptr @calloc(i64 1, i64 64) ; 10 uses
  store ptr %calloc460, ptr %i.cw, align 8, !tbaa !53
  %.not385 = icmp eq ptr %calloc460, null
  br i1 %.not385, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dd = getelementptr inbounds nuw i8, ptr %calloc460, i64 24
  store ptr %i.cw, ptr %i.dd, align 8, !tbaa !57
  %i.de = getelementptr inbounds nuw i8, ptr %calloc460, i64 8
  store i32 32, ptr %i.de, align 8, !tbaa !60
  %i.df = getelementptr inbounds nuw i8, ptr %calloc460, i64 12
  store i32 5, ptr %i.df, align 4, !tbaa !73
  %i.dg = getelementptr inbounds nuw i8, ptr %calloc460, i64 32
  store i64 56, ptr %i.dg, align 8, !tbaa !58
  %calloc459 = tail call dereferenceable_or_null(512) ptr @calloc(i64 1, i64 512) ; 3 uses
  store ptr %calloc459, ptr %calloc460, align 8, !tbaa !54
  %i.dh = getelementptr inbounds nuw i8, ptr %calloc460, i64 56
  store i32 -1609490463, ptr %i.dh, align 8, !tbaa !74
  %.not386 = icmp eq ptr %calloc459, null
  br i1 %.not386, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void @free(ptr noundef nonnull %calloc460) #8
  br label %.critedge

bb.r:                                             ; preds = %bb.p
  store ptr %i.ag, ptr %i.da, align 8, !tbaa !17
  br label %.critedge404

bb.s:                                             ; preds = %bb.n
  %i.di = getelementptr inbounds nuw i8, ptr %i.db, i64 56
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !53 ; 6 uses
  store ptr %i.dj, ptr %i.cw, align 8, !tbaa !53
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ag, i64 72
  store ptr null, ptr %i.dk, align 8, !tbaa !38
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 24 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !57 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 32
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !58 ; 2 uses
  %i.dp = sub i64 0, %i.do
  %i.dq = getelementptr inbounds i8, ptr %i.dm, i64 %i.dp ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  store ptr %i.dq, ptr %i.dr, align 8, !tbaa !75
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store ptr %i.ag, ptr %i.ds, align 8, !tbaa !52
  store ptr %i.cw, ptr %i.dl, align 8, !tbaa !57
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !60
  %.pre433 = load ptr, ptr %i.dj, align 8, !tbaa !54
  br label %.critedge404

.critedge404:                                     ; preds = %bb.r, %bb.s
  %i.dt = phi i64 [ 56, %bb.r ], [ %i.do, %bb.s ] ; 3 uses
  %i.du = phi ptr [ null, %bb.r ], [ %i.dq, %bb.s ] ; 5 uses
  %i.dv = phi ptr [ %calloc459, %bb.r ], [ %.pre433, %bb.s ] ; 4 uses
  %i.dw = phi i32 [ 32, %bb.r ], [ %.pre, %bb.s ] ; 4 uses
  %i.dx = phi ptr [ %calloc460, %bb.r ], [ %i.dj, %bb.s ] ; 7 uses
  %i.dy = phi ptr [ %i.ag, %bb.r ], [ %i.db, %bb.s ]
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 16 ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !66
  %i.eb = add i32 %i.ea, 1                        ; 3 uses
  store i32 %i.eb, ptr %i.dz, align 8, !tbaa !66
  %i.ec = add i32 %i.dw, -1
  %i.ed = and i32 %i.ec, %i.cv
  %i.ee = zext i32 %i.ed to i64
  %i.ef = getelementptr inbounds nuw [16 x i8], ptr %i.dv, i64 %i.ee ; 5 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8 ; 3 uses
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !61
  %i.ei = add i32 %i.eh, 1                        ; 3 uses
  store i32 %i.ei, ptr %i.eg, align 8, !tbaa !61
  %i.ej = load ptr, ptr %i.ef, align 8, !tbaa !63 ; 6 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ag, i64 88 ; 2 uses
  store ptr %i.ej, ptr %i.ek, align 8, !tbaa !76
  %i.el = getelementptr inbounds nuw i8, ptr %i.ag, i64 80 ; 3 uses
  store ptr null, ptr %i.el, align 8, !tbaa !77
  %.not389 = icmp eq ptr %i.ej, null
  br i1 %.not389, label %bb.u, label %bb.t

end_hunk_1
begin_hunk_2_@H5I_register_using_existing_id:bb.a
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !59
  %i.fo = and i32 %i.fn, %i.fa
  %i.fp = zext i32 %i.fo to i64
  %i.fq = getelementptr inbounds nuw [16 x i8], ptr %calloc, i64 %i.fp ; 4 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8 ; 2 uses
  %i.fs = load i32, ptr %i.fr, align 8, !tbaa !61
  %i.ft = add i32 %i.fs, 1                        ; 3 uses
  store i32 %i.ft, ptr %i.fr, align 8, !tbaa !61
  %i.fu = icmp ugt i32 %i.ft, %i.fd
  br i1 %i.fu, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %.lr.ph
  %i.fv = add i32 %i.fj, 1                        ; 3 uses
  store i32 %i.fv, ptr %i.ff, align 4, !tbaa !81
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fq, i64 12 ; 2 uses
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !78 ; 2 uses
  %i.fy = mul i32 %i.fx, %i.fd
  %i.fz = icmp ugt i32 %i.ft, %i.fy
  br i1 %i.fz, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ga = add i32 %i.fx, 1
  store i32 %i.ga, ptr %i.fw, align 4, !tbaa !78
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z, %.lr.ph
  %i.gb = phi i32 [ %i.fv, %bb.y ], [ %i.fv, %bb.z ], [ %i.fj, %.lr.ph ] ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.0426, i64 24
  store ptr null, ptr %i.gc, align 8, !tbaa !65
  %i.gd = load ptr, ptr %i.fq, align 8, !tbaa !63 ; 3 uses
  store ptr %i.gd, ptr %i.fk, align 8, !tbaa !64
  %.not398 = icmp eq ptr %i.gd, null
  br i1 %.not398, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 24
  store ptr %.0426, ptr %i.ge, align 8, !tbaa !65
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  store ptr %.0426, ptr %i.fq, align 8, !tbaa !63
  %.not397 = icmp eq ptr %i.fl, null
  br i1 %.not397, label %._crit_edge, label %.lr.ph, !llvm.loop !86

._crit_edge:                                      ; preds = %bb.ac, %.lr.ph429
  %i.gf = phi i32 [ %i.fg, %.lr.ph429 ], [ %i.gb, %bb.ac ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.et
  br i1 %exitcond.not, label %._crit_edge430, label %.lr.ph429, !llvm.loop !87

._crit_edge430:                                   ; preds = %._crit_edge, %bb.x
  tail call void @free(ptr noundef %i.dv) #8
  %i.gg = load ptr, ptr %i.cw, align 8, !tbaa !53 ; 6 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8 ; 2 uses
  %i.gi = load <2 x i32>, ptr %i.gh, align 8, !tbaa !13 ; 2 uses
  %i.gj = insertelement <2 x i32> %i.gi, i32 1, i64 1
  %i.gk = add <2 x i32> %i.gi, %i.gj
  store <2 x i32> %i.gk, ptr %i.gh, align 8, !tbaa !13
  store ptr %calloc, ptr %i.gg, align 8, !tbaa !54
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gg, i64 44
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !81
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !66
  %i.gp = lshr i32 %i.go, 1
  %i.gq = icmp ugt i32 %i.gm, %i.gp
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gg, i64 48 ; 3 uses
  br i1 %i.gq, label %bb.ad, label %.thread409

.thread409:                                       ; preds = %._crit_edge430
  store i32 0, ptr %i.gr, align 8, !tbaa !84
  br label %.critedge408

bb.ad:                                            ; preds = %._crit_edge430
  %i.gs = load i32, ptr %i.gr, align 8, !tbaa !84
  %i.gt = add i32 %i.gs, 1                        ; 2 uses
  store i32 %i.gt, ptr %i.gr, align 8, !tbaa !84
  %i.gu = icmp ugt i32 %i.gt, 1
  br i1 %i.gu, label %bb.ae, label %.critedge408

bb.ae:                                            ; preds = %bb.ad
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gg, i64 52
  store i32 1, ptr %i.gv, align 4, !tbaa !79
  br label %.critedge408

bb.af:                                            ; preds = %bb.w
  store ptr %i.ej, ptr %i.ef, align 8, !tbaa !63
  %i.gw = load ptr, ptr %i.el, align 8, !tbaa !77 ; 3 uses
  %.not395 = icmp eq ptr %i.gw, null
  br i1 %.not395, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 32
  store ptr %i.ej, ptr %i.gx, align 8, !tbaa !64
  %.pre434 = load ptr, ptr %i.ek, align 8, !tbaa !76
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.gy = phi ptr [ %.pre434, %bb.ag ], [ %i.ej, %bb.af ] ; 2 uses
  %.not396 = icmp eq ptr %i.gy, null
  br i1 %.not396, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 24
  store ptr %i.gw, ptr %i.gz, align 8, !tbaa !65
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  store i32 %i.ei, ptr %i.eg, align 8, !tbaa !61
  %i.ha = icmp eq ptr %i.du, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.el, i8 0, i64 16, i1 false)
  br i1 %i.ha, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ag, i64 72
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !52
  %i.hd = icmp eq ptr %i.hc, null
  br i1 %i.hd, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  tail call void @free(ptr noundef nonnull %i.dv) #8
  %i.he = load ptr, ptr %i.da, align 8, !tbaa !17
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 56
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !53
  tail call void @free(ptr noundef %i.hg) #8
  store ptr null, ptr %i.da, align 8, !tbaa !17
  br label %bb.as

bb.am:                                            ; preds = %bb.aj
  %i.hh = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %i.hi = getelementptr inbounds i8, ptr %i.du, i64 %i.dt
  store ptr %i.hi, ptr %i.hh, align 8, !tbaa !57
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ag, i64 72
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !52 ; 2 uses
  %i.hl = getelementptr inbounds i8, ptr %i.du, i64 %i.dt
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  store ptr %i.hk, ptr %i.hm, align 8, !tbaa !52
  br label %bb.ao

bb.an:                                            ; preds = %bb.ak
  %i.hn = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %i.ho = getelementptr inbounds i8, ptr %i.du, i64 %i.dt
  store ptr %i.ho, ptr %i.hn, align 8, !tbaa !57
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ag, i64 72
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !52 ; 3 uses
  store ptr %i.hq, ptr %i.da, align 8, !tbaa !17
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.hr = phi ptr [ %i.hq, %bb.an ], [ %i.dy, %bb.am ]
  %i.hs = phi ptr [ %i.hq, %bb.an ], [ %i.hk, %bb.am ] ; 2 uses
  %.not401 = icmp eq ptr %i.hs, null
  %.phi.trans.insert437 = getelementptr inbounds nuw i8, ptr %i.hr, i64 56
  %.pre438 = load ptr, ptr %.phi.trans.insert437, align 8, !tbaa !53 ; 4 uses
  br i1 %.not401, label %._crit_edge436, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ht = getelementptr inbounds nuw i8, ptr %.pre438, i64 32
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !58
  %i.hv = getelementptr inbounds i8, ptr %i.hs, i64 %i.hu
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  store ptr %i.du, ptr %i.hw, align 8, !tbaa !51
  br label %._crit_edge436

._crit_edge436:                                   ; preds = %bb.ao, %bb.ap
  %i.hx = getelementptr inbounds nuw i8, ptr %.pre438, i64 8
  %i.hy = load i32, ptr %i.hx, align 8, !tbaa !60
  %i.hz = add i32 %i.hy, -1
  %i.ia = and i32 %i.hz, %i.cv
  %i.ib = load ptr, ptr %.pre438, align 8, !tbaa !54
  %i.ic = zext i32 %i.ia to i64
  %i.id = getelementptr inbounds nuw [16 x i8], ptr %i.ib, i64 %i.ic ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 8 ; 2 uses
  %i.if = load i32, ptr %i.ie, align 8, !tbaa !61
  %i.ig = add i32 %i.if, -1
  store i32 %i.ig, ptr %i.ie, align 8, !tbaa !61
  %i.ih = load ptr, ptr %i.id, align 8, !tbaa !63
  %i.ii = icmp eq ptr %i.ih, %i.cw
  br i1 %i.ii, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %._crit_edge436
  store ptr null, ptr %i.id, align 8, !tbaa !63
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %._crit_edge436
  %i.ij = getelementptr inbounds nuw i8, ptr %.pre438, i64 16 ; 2 uses
  %i.ik = load i32, ptr %i.ij, align 8, !tbaa !66
  %i.il = add i32 %i.ik, -1
  store i32 %i.il, ptr %i.ij, align 8, !tbaa !66
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.al
  store ptr null, ptr %i.cw, align 8, !tbaa !53
  br label %.critedge408

.critedge:                                        ; preds = %bb.o, %bb.q
  store ptr null, ptr %i.cw, align 8, !tbaa !53
  br label %.critedge408

.critedge408:                                     ; preds = %bb.ae, %bb.ad, %.thread409, %bb.as, %bb.u, %bb.v, %.critedge
  %i.im = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.in = load i64, ptr %i.im, align 8, !tbaa !36
  %i.io = add i64 %i.in, 1
  store i64 %i.io, ptr %i.im, align 8, !tbaa !36
  %i.ip = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store ptr %i.ag, ptr %i.ip, align 8, !tbaa !85
  br label %bb.at

bb.at:                                            ; preds = %bb.d, %bb.f, %bb.i, %bb.k, %bb.m, %.critedge408, %bb.b
  %.0366 = phi i32 [ -1, %bb.d ], [ -1, %bb.f ], [ -1, %bb.i ], [ -1, %bb.k ], [ -1, %bb.m ], [ 0, %.critedge408 ], [ 0, %bb.b ]
  ret i32 %.0366
}

; Function Attrs: nounwind uwtable
define ptr @H5I__find_id(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %1 = alloca %struct.H5_user_cb_state_t, align 8 ; 5 uses
  %2 = alloca %struct.H5_user_cb_state_t, align 8 ; 5 uses
  store i64 %0, ptr %i.a, align 8, !tbaa !27
  %i.c = load i8, ptr @H5I_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = xor i1 %i.f, true
  %i.h = select i1 %i.d, i1 true, i1 %i.g
  %i.i = lshr i64 %0, 56                          ; 3 uses
  %i.j = trunc nuw nsw i64 %i.i to i32
  %i.k = lshr i64 %0, 32
  %i.l = trunc nuw i64 %i.k to i32
  %i.m = trunc i64 %0 to i32
  %i.n = and i32 %i.m, -16777216
  %i.o = trunc i64 %0 to i32
  %i.p = trunc i64 %0 to i32
  %i.q = trunc i64 %0 to i32
  br i1 %i.h, label %bb.b, label %bb.v, !prof !25

bb.b:                                             ; preds = %bb.a
  %i.r = trunc nuw nsw i64 %i.i to i32
  %i.s = and i32 %i.r, 127
  %i.t = load i32, ptr @H5I_next_type_g, align 4, !tbaa !13
  %.not = icmp slt i32 %i.s, %i.t
  br i1 %.not, label %bb.c, label %bb.v

bb.c:                                             ; preds = %bb.b
  %i.u = and i64 %i.i, 127
  %i.v = getelementptr inbounds nuw [8 x i8], ptr @H5I_type_info_array_g, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !14   ; 5 uses
  %.not232 = icmp eq ptr %i.w, null
  br i1 %.not232, label %bb.v, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !34
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.v, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 32 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !85 ; 3 uses
  %.not233 = icmp eq ptr %i.ab, null
  br i1 %.not233, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !68
  %i.ad = icmp eq i64 %i.ac, %0
  br i1 %i.ad, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !17 ; 2 uses
  %.not234 = icmp eq ptr %i.af, null
  br i1 %.not234, label %.thread245, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = shl nuw i32 %i.j, 24
  %i.ah = add i32 %i.ag, -1640531527
  %sh.diff = lshr i64 %0, 32
  %tr.sh.diff = trunc nuw i64 %sh.diff to i32
  %i.ai = and i32 %tr.sh.diff, 16711680
  %i.aj = add i32 %i.ah, %i.ai
  %sh.diff279 = lshr i64 %0, 32
  %tr.sh.diff280 = trunc nuw i64 %sh.diff279 to i32
  %i.ak = and i32 %tr.sh.diff280, 65280
  %i.al = add i32 %i.aj, %i.ak
  %i.am = and i32 %i.l, 255
  %i.an = add i32 %i.al, %i.am                    ; 2 uses
  %i.ao = and i32 %i.o, 16711680
  %i.ap = and i32 %i.p, 65280
  %i.aq = and i32 %i.q, 255
  %i.ar = add i32 %i.n, -1622558014
  %i.as = sub i32 %i.ar, %i.an
  %i.at = add i32 %i.as, %i.ao
  %i.au = add i32 %i.at, %i.ap
  %i.av = add i32 %i.au, %i.aq
  %i.aw = xor i32 %i.av, 522093                   ; 4 uses
  %i.ax = add i32 %i.an, 17973513
  %i.ay = sub i32 %i.ax, %i.aw
  %i.az = shl i32 %i.aw, 8
  %i.ba = xor i32 %i.ay, %i.az                    ; 4 uses
  %i.bb = add i32 %i.aw, %i.ba
  %i.bc = sub i32 -17973513, %i.bb
  %i.bd = lshr i32 %i.ba, 13
  %i.be = xor i32 %i.bc, %i.bd                    ; 4 uses
  %i.bf = add i32 %i.ba, %i.be
  %i.bg = sub i32 %i.aw, %i.bf
  %i.bh = lshr i32 %i.be, 12
  %i.bi = xor i32 %i.bg, %i.bh                    ; 4 uses
  %i.bj = add i32 %i.be, %i.bi
  %i.bk = sub i32 %i.ba, %i.bj
  %i.bl = shl i32 %i.bi, 16
  %i.bm = xor i32 %i.bk, %i.bl                    ; 4 uses
  %i.bn = add i32 %i.bi, %i.bm
  %i.bo = sub i32 %i.be, %i.bn
  %i.bp = lshr i32 %i.bm, 5
  %i.bq = xor i32 %i.bo, %i.bp                    ; 4 uses
  %i.br = add i32 %i.bm, %i.bq
  %i.bs = sub i32 %i.bi, %i.br
  %i.bt = lshr i32 %i.bq, 3
  %i.bu = xor i32 %i.bs, %i.bt                    ; 3 uses
  %i.bv = add i32 %i.bq, %i.bu
  %i.bw = sub i32 %i.bm, %i.bv
  %i.bx = shl i32 %i.bu, 10
  %i.by = xor i32 %i.bw, %i.bx                    ; 2 uses
  %i.bz = add i32 %i.bu, %i.by
  %i.ca = sub i32 %i.bq, %i.bz
  %i.cb = lshr i32 %i.by, 15
  %i.cc = xor i32 %i.ca, %i.cb                    ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !53 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !60
  %i.ch = add i32 %i.cg, -1
  %i.ci = and i32 %i.cc, %i.ch
  %i.cj = load ptr, ptr %i.ce, align 8, !tbaa !54
  %i.ck = zext i32 %i.ci to i64
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %i.ck
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !63 ; 2 uses
  %.not236 = icmp eq ptr %i.cm, null
  br i1 %.not236, label %.thread245, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !58
  %i.cp = sub i64 0, %i.co
  %i.cq = getelementptr inbounds i8, ptr %i.cm, i64 %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  br label %bb.i

bb.i:                                             ; preds = %bb.m, %.lr.ph
  %.1219272 = phi ptr [ %i.cq, %.lr.ph ], [ %i.dj, %bb.m ] ; 6 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.1219272, i64 108
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !70
  %i.cu = icmp eq i32 %i.ct, %i.cc
  br i1 %i.cu, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.cv = getelementptr inbounds nuw i8, ptr %.1219272, i64 104
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !72
  %i.cx = icmp eq i32 %i.cw, 8
  br i1 %i.cx, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cy = getelementptr inbounds nuw i8, ptr %.1219272, i64 96
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !71
  %i.da = load i64, ptr %i.cz, align 1
  %i.db = load i64, ptr %i.a, align 8
  %i.dc = icmp ne i64 %i.da, %i.db
  %i.dd = zext i1 %i.dc to i32
  %i.de = icmp eq i32 %i.dd, 0
  br i1 %i.de, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.df = getelementptr inbounds nuw i8, ptr %.1219272, i64 88
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !76 ; 2 uses
  %.not238 = icmp eq ptr %i.dg, null
  br i1 %.not238, label %.thread245, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dh = load i64, ptr %i.cr, align 8, !tbaa !58
  %i.di = sub i64 0, %i.dh
  %i.dj = getelementptr inbounds i8, ptr %i.dg, i64 %i.di
  br label %bb.i, !llvm.loop !88

.thread245:                                       ; preds = %bb.l, %bb.h, %bb.g
  store ptr null, ptr %i.aa, align 8, !tbaa !85
  br label %bb.v

bb.n:                                             ; preds = %bb.k
  store ptr %.1219272, ptr %i.aa, align 8, !tbaa !85
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.n
  %.5223243 = phi ptr [ %.1219272, %bb.n ], [ %i.ab, %bb.f ] ; 6 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.5223243, i64 24 ; 2 uses
  %i.dl = load i8, ptr %i.dk, align 8, !tbaa !44, !range !10, !noundef !11
  %i.dm = trunc nuw i8 %i.dl to i1
  br i1 %i.dm, label %bb.o, label %bb.v

bb.o:                                             ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i64 -1, ptr %i.b, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  %i.dn = call i32 @H5_user_cb_prepare(ptr noundef nonnull %1) #8
  %i.do = icmp slt i32 %i.dn, 0
  br i1 %i.do, label %.thread248, label %bb.p

.thread248:                                       ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  br label %.thread253

bb.p:                                             ; preds = %bb.o
  %i.dp = getelementptr inbounds nuw i8, ptr %.5223243, i64 32 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !69
  %i.dr = getelementptr inbounds nuw i8, ptr %.5223243, i64 16 ; 3 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !45
  %i.dt = call i32 %i.dq(ptr noundef %i.ds, ptr noundef nonnull %i.b) #8
  %i.du = call i32 @H5_user_cb_restore(ptr noundef nonnull %1) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  %i.dv = icmp slt i32 %i.dt, 0
  br i1 %i.dv, label %.thread253, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dw = load i64, ptr %i.b, align 8, !tbaa !27  ; 3 uses
  %i.dx = icmp eq i64 %i.dw, -1
  br i1 %i.dx, label %.thread253, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dy = xor i64 %i.dw, %0
  %i.dz = and i64 %i.dy, 9151314442816847872
  %.not240 = icmp eq i64 %i.dz, 0
  br i1 %.not240, label %bb.s, label %.thread253

bb.s:                                             ; preds = %bb.r
  %i.ea = load ptr, ptr %i.dr, align 8, !tbaa !45
  %i.eb = call fastcc ptr @H5I__remove_common(ptr noundef nonnull %i.w, i64 noundef %i.dw)
  store ptr %i.eb, ptr %i.dr, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.ec = call i32 @H5_user_cb_prepare(ptr noundef nonnull %2) #8
  %i.ed = icmp slt i32 %i.ec, 0
  br i1 %i.ed, label %.thread250, label %bb.t

.thread250:                                       ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ee = getelementptr inbounds nuw i8, ptr %.5223243, i64 40
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !47
  %i.eg = call i32 %i.ef(ptr noundef %i.ea) #8
  %i.eh = call i32 @H5_user_cb_restore(ptr noundef nonnull %2) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  %i.ei = icmp slt i32 %i.eg, 0
  br i1 %i.ei, label %.thread253, label %bb.u

.thread253:                                       ; preds = %bb.p, %bb.q, %bb.r, %bb.t, %.thread248
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %bb.v

bb.u:                                             ; preds = %bb.t, %.thread250
  store i8 0, ptr %i.dk, align 8, !tbaa !44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dp, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %bb.v

bb.v:                                             ; preds = %.thread, %.thread245, %bb.u, %.thread253, %bb.a, %bb.b, %bb.c, %bb.d
  %.3217 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ null, %bb.d ], [ null, %.thread253 ], [ null, %bb.c ], [ %.5223243, %bb.u ], [ %.5223243, %.thread ], [ null, %.thread245 ]
  ret ptr %.3217
}

; Function Attrs: nounwind uwtable
define ptr @H5I_subst(i64 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5I_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.b, label %.thread, !prof !25

.thread:                                          ; preds = %bb.a
  store i8 1, ptr @H5I_init_g, align 1, !tbaa !8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = xor i1 %i.d, true
  %i.g = select i1 %i.b, i1 true, i1 %i.f
  br i1 %i.g, label %bb.c, label %bb.f, !prof !33

bb.c:                                             ; preds = %.thread, %bb.b
  %i.h = tail call ptr @H5I__find_id(i64 noundef %0) ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = load i64, ptr @H5E_ID_g, align 8, !tbaa !27
  %i.k = load i64, ptr @H5E_NOTFOUND_g, align 8, !tbaa !27
  %i.l = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5I_subst, i32 noundef 753, i64 noundef %i.j, i64 noundef %i.k, ptr noundef nonnull @.str.13) #8 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !45
  store ptr %1, ptr %i.m, align 8, !tbaa !45
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.0 = phi ptr [ null, %bb.d ], [ %i.n, %bb.e ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @H5I_object(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5I_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.b, label %.thread, !prof !25

.thread:                                          ; preds = %bb.a
  store i8 1, ptr @H5I_init_g, align 1, !tbaa !8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = xor i1 %i.d, true
  %i.g = select i1 %i.b, i1 true, i1 %i.f
  br i1 %i.g, label %bb.c, label %bb.e, !prof !33

bb.c:                                             ; preds = %.thread, %bb.b
  %i.h = tail call ptr @H5I__find_id(i64 noundef %0) ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !45
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi ptr [ %i.j, %bb.d ], [ null, %bb.c ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @H5I_object_verify(i64 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5I_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.b, label %.thread, !prof !25

.thread:                                          ; preds = %bb.a
  store i8 1, ptr @H5I_init_g, align 1, !tbaa !8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = xor i1 %i.d, true
  %i.g = select i1 %i.b, i1 true, i1 %i.f
  br i1 %i.g, label %bb.c, label %bb.f, !prof !33

bb.c:                                             ; preds = %.thread, %bb.b
  %i.h = lshr i64 %0, 56
  %i.i = trunc nuw nsw i64 %i.h to i32
  %i.j = and i32 %i.i, 127
  %i.k = icmp eq i32 %1, %i.j
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.l = tail call ptr @H5I__find_id(i64 noundef %0) ; 2 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !45
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.b
  %.0 = phi ptr [ %i.n, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -1, 128) i32 @H5I_get_type(i64 noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load i8, ptr @H5I_init_g, align 1, !tbaa !8, !range !10, !noundef !11 ; 2 uses
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.c, label %bb.b, !prof !25

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @H5I_init_g, align 1, !tbaa !8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi i8 [ 1, %bb.b ], [ %i.a, %bb.a ]
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = xor i1 %i.d, true
  %i.i = select i1 %i.g, i1 true, i1 %i.h
  %i.j = icmp sgt i64 %0, 0
  %or.cond = and i1 %i.j, %i.i
  %i.k = lshr i64 %0, 56
  %i.l = trunc nuw nsw i64 %i.k to i32
  %.0 = select i1 %or.cond, i32 %i.l, i32 -1, !prof !12
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @H5I_is_file_object(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5I_init_g, align 1, !tbaa !8, !range !10, !noundef !11 ; 2 uses
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1                  ; 4 uses
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %H5I_get_type.exit, label %bb.b, !prof !25

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @H5I_init_g, align 1, !tbaa !8
  br label %H5I_get_type.exit

H5I_get_type.exit:                                ; preds = %bb.a, %bb.b
  %i.f = phi i8 [ 1, %bb.b ], [ %i.a, %bb.a ]     ; 2 uses
  %i.g = trunc nuw i8 %i.f to i1                  ; 2 uses
  %i.h = xor i1 %i.d, true                        ; 2 uses
  %i.i = select i1 %i.g, i1 true, i1 %i.h
  %i.j = icmp sgt i64 %0, 0
  %or.cond.i = and i1 %i.j, %i.i
  %i.k = lshr i64 %0, 56
  %i.l = trunc nuw nsw i64 %i.k to i32
  %.0.i = select i1 %or.cond.i, i32 %i.l, i32 -1, !prof !12 ; 2 uses
  %i.m = select i1 %i.g, i1 true, i1 %i.d
  br i1 %i.m, label %bb.c, label %.thread, !prof !25

.thread:                                          ; preds = %H5I_get_type.exit
  store i8 1, ptr @H5I_init_g, align 1, !tbaa !8
  br label %bb.d

bb.c:                                             ; preds = %H5I_get_type.exit
  %i.n = trunc nuw i8 %i.f to i1                  ; 2 uses
  %i.o = select i1 %i.n, i1 true, i1 %i.h
  br i1 %i.o, label %bb.d, label %bb.k, !prof !33

bb.d:                                             ; preds = %.thread, %bb.c
  %i.p = phi i1 [ true, %.thread ], [ %i.n, %bb.c ]
  %i.q = add nsw i32 %.0.i, -17
  %or.cond = icmp ult i32 %i.q, -16
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !27
  %i.s = load i64, ptr @H5E_BADTYPE_g, align 8, !tbaa !27
  %i.t = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5I_is_file_object, i32 noundef 878, i64 noundef %i.r, i64 noundef %i.s, ptr noundef nonnull @.str.14) #8 ; 0 uses
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  switch i32 %.0.i, label %bb.j [
    i32 6, label %bb.k
    i32 5, label %bb.k
    i32 2, label %bb.k
    i32 3, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.u = select i1 %i.p, i1 true, i1 %i.d
  br i1 %i.u, label %bb.h, label %.thread.i, !prof !25

.thread.i:                                        ; preds = %bb.g
  store i8 1, ptr @H5I_init_g, align 1, !tbaa !8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.thread.i
  %i.v = tail call ptr @H5I__find_id(i64 noundef %0) ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %H5I_object.exit.thread, label %H5I_object.exit

H5I_object.exit:                                  ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !45   ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %H5I_object.exit.thread, label %bb.i

H5I_object.exit.thread:                           ; preds = %bb.h, %H5I_object.exit
  %i.z = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !27
  %i.aa = load i64, ptr @H5E_BADTYPE_g, align 8, !tbaa !27
  %i.ab = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5I_is_file_object, i32 noundef 890, i64 noundef %i.z, i64 noundef %i.aa, ptr noundef nonnull @.str.15) #8 ; 0 uses
  br label %bb.k

bb.i:                                             ; preds = %H5I_object.exit
  %i.ac = tail call i32 @H5T_is_named(ptr noundef nonnull %i.x) #8
  br label %bb.k

bb.j:                                             ; preds = %bb.f
  br label %bb.k

bb.k:                                             ; preds = %bb.c, %bb.j, %bb.e, %bb.f, %bb.f, %bb.f, %bb.i, %H5I_object.exit.thread
  %.1 = phi i32 [ -1, %bb.e ], [ -1, %bb.c ], [ 1, %bb.f ], [ 1, %bb.f ], [ 0, %bb.j ], [ 1, %bb.f ], [ -1, %H5I_object.exit.thread ], [ %i.ac, %bb.i ]
  ret i32 %.1
}

declare i32 @H5T_is_named(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @H5I__remove_verify(i64 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5I_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.d, !prof !25

bb.b:                                             ; preds = %bb.a
  %i.g = lshr i64 %0, 56
  %i.h = trunc nuw nsw i64 %i.g to i32
  %i.i = and i32 %i.h, 127
  %i.j = icmp eq i32 %1, %i.i
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = tail call ptr @H5I_remove(i64 noundef %0)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi ptr [ %i.k, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @H5I_remove(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5I_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.b, label %.thread, !prof !25

.thread:                                          ; preds = %bb.a
  store i8 1, ptr @H5I_init_g, align 1, !tbaa !8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = xor i1 %i.d, true
  %i.g = select i1 %i.b, i1 true, i1 %i.f
  br i1 %i.g, label %bb.c, label %bb.j, !prof !33

bb.c:                                             ; preds = %.thread, %bb.b
  %i.h = lshr i64 %0, 56                          ; 2 uses
  %i.i = trunc nuw nsw i64 %i.h to i32
  %i.j = and i32 %i.i, 127
  %i.k = load i32, ptr @H5I_next_type_g, align 4, !tbaa !13
  %.not = icmp slt i32 %i.j, %i.k
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !27
  %i.m = load i64, ptr @H5E_BADRANGE_g, align 8, !tbaa !27
  %i.n = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5I_remove, i32 noundef 1005, i64 noundef %i.l, i64 noundef %i.m, ptr noundef nonnull @.str.5) #8 ; 0 uses
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.o = and i64 %i.h, 127
  %i.p = getelementptr inbounds nuw [8 x i8], ptr @H5I_type_info_array_g, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !14   ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !34
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.v = load i64, ptr @H5E_ID_g, align 8, !tbaa !27
  %i.w = load i64, ptr @H5E_BADGROUP_g, align 8, !tbaa !27
  %i.x = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5I_remove, i32 noundef 1008, i64 noundef %i.v, i64 noundef %i.w, ptr noundef nonnull @.str.6) #8 ; 0 uses
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.y = tail call fastcc ptr @H5I__remove_common(ptr noundef nonnull %i.q, i64 noundef %0) ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aa = load i64, ptr @H5E_ID_g, align 8, !tbaa !27
  %i.ab = load i64, ptr @H5E_CANTDELETE_g, align 8, !tbaa !27
  %i.ac = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5I_remove, i32 noundef 1012, i64 noundef %i.aa, i64 noundef %i.ab, ptr noundef nonnull @.str.16) #8 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.g, %bb.i, %bb.h, %bb.b
  %.0 = phi ptr [ null, %bb.d ], [ null, %bb.g ], [ null, %bb.i ], [ %i.y, %bb.h ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @H5I__remove_common(ptr nofree noundef captures(none) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !27
  %i.b = load i8, ptr @H5I_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = xor i1 %i.e, true
  %i.g = select i1 %i.c, i1 true, i1 %i.f
  %i.h = lshr i64 %1, 32
  %i.i = trunc nuw i64 %i.h to i32
  %i.j = trunc i64 %1 to i32
  %i.k = and i32 %i.j, -16777216
  %i.l = trunc i64 %1 to i32
  %i.m = trunc i64 %1 to i32
  %i.n = trunc i64 %1 to i32
  br i1 %i.g, label %bb.b, label %bb.ae, !prof !25

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !17   ; 3 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %sh.diff = lshr i64 %1, 32
  %tr.sh.diff = trunc nuw i64 %sh.diff to i32
  %i.q = and i32 %tr.sh.diff, -16777216
  %i.r = add i32 %i.q, -1640531527
  %sh.diff284 = lshr i64 %1, 32
  %tr.sh.diff285 = trunc nuw i64 %sh.diff284 to i32
  %i.s = and i32 %tr.sh.diff285, 16711680
  %i.t = add i32 %i.r, %i.s
  %sh.diff286 = lshr i64 %1, 32
  %tr.sh.diff287 = trunc nuw i64 %sh.diff286 to i32
  %i.u = and i32 %tr.sh.diff287, 65280
  %i.v = add i32 %i.t, %i.u
  %i.w = and i32 %i.i, 255
  %i.x = add i32 %i.v, %i.w                       ; 2 uses
  %i.y = and i32 %i.l, 16711680
  %i.z = and i32 %i.m, 65280
  %i.aa = and i32 %i.n, 255
  %i.ab = add i32 %i.k, -1622558014
  %i.ac = sub i32 %i.ab, %i.x
  %i.ad = add i32 %i.ac, %i.y
  %i.ae = add i32 %i.ad, %i.z
  %i.af = add i32 %i.ae, %i.aa
  %i.ag = xor i32 %i.af, 522093                   ; 4 uses
  %i.ah = add i32 %i.x, 17973513
  %i.ai = sub i32 %i.ah, %i.ag
  %i.aj = shl i32 %i.ag, 8
  %i.ak = xor i32 %i.ai, %i.aj                    ; 4 uses
  %i.al = add i32 %i.ag, %i.ak
  %i.am = sub i32 -17973513, %i.al
  %i.an = lshr i32 %i.ak, 13
  %i.ao = xor i32 %i.am, %i.an                    ; 4 uses
  %i.ap = add i32 %i.ak, %i.ao
  %i.aq = sub i32 %i.ag, %i.ap
  %i.ar = lshr i32 %i.ao, 12
  %i.as = xor i32 %i.aq, %i.ar                    ; 4 uses
  %i.at = add i32 %i.ao, %i.as
  %i.au = sub i32 %i.ak, %i.at
  %i.av = shl i32 %i.as, 16
  %i.aw = xor i32 %i.au, %i.av                    ; 4 uses
  %i.ax = add i32 %i.as, %i.aw
  %i.ay = sub i32 %i.ao, %i.ax
  %i.az = lshr i32 %i.aw, 5
  %i.ba = xor i32 %i.ay, %i.az                    ; 4 uses
  %i.bb = add i32 %i.aw, %i.ba
  %i.bc = sub i32 %i.as, %i.bb
  %i.bd = lshr i32 %i.ba, 3
  %i.be = xor i32 %i.bc, %i.bd                    ; 3 uses
  %i.bf = add i32 %i.ba, %i.be
  %i.bg = sub i32 %i.aw, %i.bf
  %i.bh = shl i32 %i.be, 10
  %i.bi = xor i32 %i.bg, %i.bh                    ; 2 uses
  %i.bj = add i32 %i.be, %i.bi
  %i.bk = sub i32 %i.ba, %i.bj
  %i.bl = lshr i32 %i.bi, 15
  %i.bm = xor i32 %i.bk, %i.bl                    ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !53 ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !60
  %i.br = add i32 %i.bq, -1
  %i.bs = and i32 %i.bm, %i.br
  %i.bt = load ptr, ptr %i.bo, align 8, !tbaa !54 ; 2 uses
  %i.bu = zext i32 %i.bs to i64
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.bt, i64 %i.bu
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !63 ; 2 uses
  %.not245 = icmp eq ptr %i.bw, null
  br i1 %.not245, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !58
  %i.bz = sub i64 0, %i.by
  %i.ca = getelementptr inbounds i8, ptr %i.bw, i64 %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bo, i64 32 ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %.lr.ph
  %.1231272 = phi ptr [ %i.ca, %.lr.ph ], [ %i.ct, %bb.h ] ; 15 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.1231272, i64 108
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !70
  %i.ce = icmp eq i32 %i.cd, %i.bm
  br i1 %i.ce, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.cf = getelementptr inbounds nuw i8, ptr %.1231272, i64 104
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !72
  %i.ch = icmp eq i32 %i.cg, 8
  br i1 %i.ch, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ci = getelementptr inbounds nuw i8, ptr %.1231272, i64 96
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !71
  %i.ck = load i64, ptr %i.cj, align 1
  %i.cl = load i64, ptr %i.a, align 8
  %i.cm = icmp ne i64 %i.ck, %i.cl
  %i.cn = zext i1 %i.cm to i32
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.cp = getelementptr inbounds nuw i8, ptr %.1231272, i64 88
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !76 ; 2 uses
  %.not247 = icmp eq ptr %i.cq, null
  br i1 %.not247, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cr = load i64, ptr %i.cb, align 8, !tbaa !58
  %i.cs = sub i64 0, %i.cr
  %i.ct = getelementptr inbounds i8, ptr %i.cq, i64 %i.cs
  br label %bb.d, !llvm.loop !89

bb.i:                                             ; preds = %bb.f
  %.b243 = load i1, ptr @H5I_marking_s, align 1   ; 2 uses
  br i1 %.b243, label %bb.y, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cu = getelementptr inbounds nuw i8, ptr %.1231272, i64 56 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.1231272, i64 64
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !51 ; 4 uses
  %i.cx = icmp eq ptr %i.cw, null                 ; 2 uses
  br i1 %i.cx, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.cy = getelementptr inbounds nuw i8, ptr %.1231272, i64 72
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !52
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @free(ptr noundef %i.bt) #8
  %i.db = load ptr, ptr %i.o, align 8, !tbaa !17
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 56
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !53
  tail call void @free(ptr noundef %i.dd) #8
  store ptr null, ptr %i.o, align 8, !tbaa !17
  br label %bb.z

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.de = getelementptr inbounds nuw i8, ptr %i.bo, i64 24 ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !57
  %i.dg = icmp eq ptr %i.cu, %i.df
  br i1 %i.dg, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dh = load i64, ptr %i.cb, align 8, !tbaa !58
  %i.di = getelementptr inbounds i8, ptr %i.cw, i64 %i.dh
  store ptr %i.di, ptr %i.de, align 8, !tbaa !57
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.dj = getelementptr inbounds nuw i8, ptr %.1231272, i64 72
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !52 ; 5 uses
  br i1 %i.cx, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dl = load i64, ptr %i.cb, align 8, !tbaa !58
  %i.dm = getelementptr inbounds i8, ptr %i.cw, i64 %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store ptr %i.dk, ptr %i.dn, align 8, !tbaa !52
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  store ptr %i.dk, ptr %i.o, align 8, !tbaa !17
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.do = phi ptr [ %i.dk, %bb.q ], [ %i.p, %bb.p ]
  %.not250 = icmp eq ptr %i.dk, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.do, i64 56
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !53 ; 4 uses
  br i1 %.not250, label %._crit_edge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dp = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !58
  %i.dr = getelementptr inbounds i8, ptr %i.dk, i64 %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  store ptr %i.cw, ptr %i.ds, align 8, !tbaa !51
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.r, %bb.s
  %i.dt = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !60
  %i.dv = add i32 %i.du, -1
  %i.dw = and i32 %i.dv, %i.bm
  %i.dx = load ptr, ptr %.pre, align 8, !tbaa !54
  %i.dy = zext i32 %i.dw to i64
  %i.dz = getelementptr inbounds nuw [16 x i8], ptr %i.dx, i64 %i.dy ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8 ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !61
  %i.ec = add i32 %i.eb, -1
  store i32 %i.ec, ptr %i.ea, align 8, !tbaa !61
  %i.ed = load ptr, ptr %i.dz, align 8, !tbaa !63
  %i.ee = icmp eq ptr %i.ed, %i.cu
  br i1 %i.ee, label %bb.t, label %bb.u

bb.t:                                             ; preds = %._crit_edge
  %i.ef = getelementptr inbounds nuw i8, ptr %.1231272, i64 88
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !64
  store ptr %i.eg, ptr %i.dz, align 8, !tbaa !63
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge
  %i.eh = getelementptr inbounds nuw i8, ptr %.1231272, i64 80
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !65 ; 3 uses
  %.not251 = icmp eq ptr %i.ei, null
  %.phi.trans.insert275 = getelementptr inbounds nuw i8, ptr %.1231272, i64 88
  %.pre276 = load ptr, ptr %.phi.trans.insert275, align 8, !tbaa !64 ; 3 uses
  br i1 %.not251, label %._crit_edge274, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 32
  store ptr %.pre276, ptr %i.ej, align 8, !tbaa !64
  br label %._crit_edge274

._crit_edge274:                                   ; preds = %bb.u, %bb.v
  %.not252 = icmp eq ptr %.pre276, null
  br i1 %.not252, label %bb.x, label %bb.w

bb.w:                                             ; preds = %._crit_edge274
  %i.ek = getelementptr inbounds nuw i8, ptr %.pre276, i64 24
  store ptr %i.ei, ptr %i.ek, align 8, !tbaa !65
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %._crit_edge274
  %i.el = getelementptr inbounds nuw i8, ptr %.pre, i64 16 ; 2 uses
  %i.em = load i32, ptr %i.el, align 8, !tbaa !66
  %i.en = add i32 %i.em, -1
  store i32 %i.en, ptr %i.el, align 8, !tbaa !66
  br label %bb.z

bb.y:                                             ; preds = %bb.i
  %i.eo = getelementptr inbounds nuw i8, ptr %.1231272, i64 48
  store i8 1, ptr %i.eo, align 8, !tbaa !43
  br label %bb.z

.loopexit:                                        ; preds = %bb.g, %bb.c, %bb.b
  %i.ep = load i64, ptr @H5E_ID_g, align 8, !tbaa !27
  %i.eq = load i64, ptr @H5E_CANTDELETE_g, align 8, !tbaa !27
  %i.er = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5I__remove_common, i32 noundef 963, i64 noundef %i.ep, i64 noundef %i.eq, ptr noundef nonnull @.str.23) #8 ; 0 uses
  br label %bb.ae

bb.z:                                             ; preds = %bb.l, %bb.x, %bb.y
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !85
  %i.eu = icmp eq ptr %i.et, %.1231272
  br i1 %i.eu, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store ptr null, ptr %i.es, align 8, !tbaa !85
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.ev = getelementptr inbounds nuw i8, ptr %.1231272, i64 16
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !45
  br i1 %.b243, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ex = tail call ptr @H5FL_reg_free(ptr noundef nonnull @H5_H5I_id_info_t_reg_free_list, ptr noundef nonnull %.1231272) #8 ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !36
  %i.fa = add i64 %i.ez, -1
  store i64 %i.fa, ptr %i.ey, align 8, !tbaa !36
  br label %bb.ae

bb.ae:                                            ; preds = %.loopexit, %bb.ad, %bb.a
  %.0229 = phi ptr [ %i.ew, %bb.ad ], [ null, %.loopexit ], [ null, %bb.a ]
  ret ptr %.0229
}

; Function Attrs: nounwind uwtable
define range(i32 -1, -2147483648) i32 @H5I_dec_ref(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5I_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.b, label %.thread, !prof !25

.thread:                                          ; preds = %bb.a
  store i8 1, ptr @H5I_init_g, align 1, !tbaa !8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = xor i1 %i.d, true
  %i.g = select i1 %i.b, i1 true, i1 %i.f
  br i1 %i.g, label %bb.c, label %bb.e, !prof !33

bb.c:                                             ; preds = %.thread, %bb.b
  %i.h = tail call fastcc i32 @H5I__dec_ref(i64 noundef %0, ptr noundef null) ; 2 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = load i64, ptr @H5E_ID_g, align 8, !tbaa !27
  %i.k = load i64, ptr @H5E_CANTDEC_g, align 8, !tbaa !27
  %i.l = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5I_dec_ref, i32 noundef 1125, i64 noundef %i.j, i64 noundef %i.k, ptr noundef nonnull @.str.17) #8 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ -1, %bb.d ], [ %i.h, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @H5I__dec_ref(i64 noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.H5_user_cb_state_t, align 8 ; 5 uses
  %i.a = load i8, ptr @H5I_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.l, !prof !25

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @H5I__find_id(i64 noundef %0) ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr @H5E_ID_g, align 8, !tbaa !27
  %i.j = load i64, ptr @H5E_BADID_g, align 8, !tbaa !27
  %i.k = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5I__dec_ref, i32 noundef 1047, i64 noundef %i.i, i64 noundef %i.j, ptr noundef nonnull @.str.19) #8 ; 0 uses
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !49   ; 2 uses
  %i.n = icmp eq i32 %i.m, 1
  br i1 %i.n, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.o = lshr i64 %0, 56
  %i.p = and i64 %i.o, 127
  %i.q = getelementptr inbounds nuw [8 x i8], ptr @H5I_type_info_array_g, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !14   ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !35
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !32
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %.thread43, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.v = call i32 @H5_user_cb_prepare(ptr noundef nonnull %2) #8
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !35
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !45
  %i.ac = call i32 %i.z(ptr noundef %i.ab, ptr noundef %1) #8
  %i.ad = call i32 @H5_user_cb_restore(ptr noundef nonnull %2) #8
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %H5E_CANTSET_g.sink = phi ptr [ @H5E_CANTSET_g, %bb.f ], [ @H5E_CANTRESTORE_g, %bb.g ]
  %.sink = phi i32 [ 1074, %bb.f ], [ 1078, %bb.g ]
  %i.af = load i64, ptr @H5E_LIB_g, align 8, !tbaa !27
  %i.ag = load i64, ptr %H5E_CANTSET_g.sink, align 8, !tbaa !27
  %i.ah = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5I__dec_ref, i32 noundef %.sink, i64 noundef %i.af, i64 noundef %i.ag, ptr noundef nonnull @.str.24) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  %i.ai = icmp sgt i32 %i.ac, -1
  br i1 %i.ai, label %.thread43, label %bb.l

.thread43:                                        ; preds = %bb.e, %bb.i
  %i.aj = call fastcc ptr @H5I__remove_common(ptr noundef nonnull %i.r, i64 noundef %0)
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.j, label %bb.l

bb.j:                                             ; preds = %.thread43
  %i.al = load i64, ptr @H5E_ID_g, align 8, !tbaa !27
  %i.am = load i64, ptr @H5E_CANTDELETE_g, align 8, !tbaa !27
  %i.an = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5I__dec_ref, i32 noundef 1089, i64 noundef %i.al, i64 noundef %i.am, ptr noundef nonnull @.str.16) #8 ; 0 uses
  br label %bb.l

bb.k:                                             ; preds = %bb.d
  %i.ao = add i32 %i.m, -1                        ; 2 uses
  store i32 %i.ao, ptr %i.l, align 8, !tbaa !49
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.a, %bb.k, %bb.c, %.thread43, %bb.i, %bb.j
  %.4 = phi i32 [ -1, %bb.c ], [ 0, %bb.a ], [ %i.ao, %bb.k ], [ -1, %bb.j ], [ -1, %bb.h ], [ 0, %.thread43 ], [ -1, %bb.i ]
  ret i32 %.4
}

; Function Attrs: nounwind uwtable
define range(i32 -1, -2147483648) i32 @H5I_dec_app_ref(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5I_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.b, label %.thread, !prof !25

.thread:                                          ; preds = %bb.a
  store i8 1, ptr @H5I_init_g, align 1, !tbaa !8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = xor i1 %i.d, true
  %i.g = select i1 %i.b, i1 true, i1 %i.f
  br i1 %i.g, label %bb.c, label %H5I__dec_app_ref.exit.thread5, !prof !33

bb.c:                                             ; preds = %bb.b, %.thread
  %i.h = tail call fastcc i32 @H5I__dec_ref(i64 noundef %0, ptr noundef null) ; 2 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = load i64, ptr @H5E_ID_g, align 8, !tbaa !27
  %i.k = load i64, ptr @H5E_CANTDEC_g, align 8, !tbaa !27
  %i.l = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5I__dec_app_ref, i32 noundef 1157, i64 noundef %i.j, i64 noundef %i.k, ptr noundef nonnull @.str.17) #8 ; 0 uses
  br label %H5I__dec_app_ref.exit.thread

bb.e:                                             ; preds = %bb.c
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %H5I__dec_app_ref.exit.thread5, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = tail call ptr @H5I__find_id(i64 noundef %0) ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.g, label %H5I__dec_app_ref.exit

bb.g:                                             ; preds = %bb.f
  %i.o = load i64, ptr @H5E_ID_g, align 8, !tbaa !27
  %i.p = load i64, ptr @H5E_BADID_g, align 8, !tbaa !27
  %i.q = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5I__dec_app_ref, i32 noundef 1165, i64 noundef %i.o, i64 noundef %i.p, ptr noundef nonnull @.str.19) #8 ; 0 uses
  br label %H5I__dec_app_ref.exit.thread

H5I__dec_app_ref.exit:                            ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 12 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !50
  %i.t = add i32 %i.s, -1                         ; 3 uses
  store i32 %i.t, ptr %i.r, align 4, !tbaa !50
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %H5I__dec_app_ref.exit.thread, label %H5I__dec_app_ref.exit.thread5

H5I__dec_app_ref.exit.thread:                     ; preds = %bb.g, %bb.d, %H5I__dec_app_ref.exit
  %i.v = load i64, ptr @H5E_ID_g, align 8, !tbaa !27
  %i.w = load i64, ptr @H5E_CANTDEC_g, align 8, !tbaa !27
  %i.x = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5I_dec_app_ref, i32 noundef 1202, i64 noundef %i.v, i64 noundef %i.w, ptr noundef nonnull @.str.17) #8 ; 0 uses
  br label %H5I__dec_app_ref.exit.thread5

H5I__dec_app_ref.exit.thread5:                    ; preds = %bb.e, %H5I__dec_app_ref.exit.thread, %H5I__dec_app_ref.exit, %bb.b
  %.0 = phi i32 [ -1, %H5I__dec_app_ref.exit.thread ], [ %i.t, %H5I__dec_app_ref.exit ], [ 0, %bb.b ], [ 0, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, -2147483648) i32 @H5I_dec_app_ref_async(i64 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5I_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.b, label %.thread, !prof !25

.thread:                                          ; preds = %bb.a
  store i8 1, ptr @H5I_init_g, align 1, !tbaa !8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = xor i1 %i.d, true
  %i.g = select i1 %i.b, i1 true, i1 %i.f
  br i1 %i.g, label %bb.c, label %H5I__dec_app_ref.exit.thread5, !prof !33

bb.c:                                             ; preds = %bb.b, %.thread
  %i.h = tail call fastcc i32 @H5I__dec_ref(i64 noundef %0, ptr noundef %1) ; 2 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = load i64, ptr @H5E_ID_g, align 8, !tbaa !27
  %i.k = load i64, ptr @H5E_CANTDEC_g, align 8, !tbaa !27
  %i.l = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5I__dec_app_ref, i32 noundef 1157, i64 noundef %i.j, i64 noundef %i.k, ptr noundef nonnull @.str.17) #8 ; 0 uses
  br label %H5I__dec_app_ref.exit.thread

bb.e:                                             ; preds = %bb.c
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %H5I__dec_app_ref.exit.thread5, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = tail call ptr @H5I__find_id(i64 noundef %0) ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.g, label %H5I__dec_app_ref.exit

bb.g:                                             ; preds = %bb.f
  %i.o = load i64, ptr @H5E_ID_g, align 8, !tbaa !27
  %i.p = load i64, ptr @H5E_BADID_g, align 8, !tbaa !27
  %i.q = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5I__dec_app_ref, i32 noundef 1165, i64 noundef %i.o, i64 noundef %i.p, ptr noundef nonnull @.str.19) #8 ; 0 uses
  br label %H5I__dec_app_ref.exit.thread

H5I__dec_app_ref.exit:                            ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 12 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !50
  %i.t = add i32 %i.s, -1                         ; 3 uses
  store i32 %i.t, ptr %i.r, align 4, !tbaa !50
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %H5I__dec_app_ref.exit.thread, label %H5I__dec_app_ref.exit.thread5

H5I__dec_app_ref.exit.thread:                     ; preds = %bb.g, %bb.d, %H5I__dec_app_ref.exit
  %i.v = load i64, ptr @H5E_ID_g, align 8, !tbaa !27
  %i.w = load i64, ptr @H5E_CANTDEC_g, align 8, !tbaa !27
  %i.x = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5I_dec_app_ref_async, i32 noundef 1234, i64 noundef %i.v, i64 noundef %i.w, ptr noundef nonnull @.str.18) #8 ; 0 uses
  br label %H5I__dec_app_ref.exit.thread5

H5I__dec_app_ref.exit.thread5:                    ; preds = %bb.e, %H5I__dec_app_ref.exit.thread, %H5I__dec_app_ref.exit, %bb.b
  %.0 = phi i32 [ -1, %H5I__dec_app_ref.exit.thread ], [ %i.t, %H5I__dec_app_ref.exit ], [ 0, %bb.b ], [ 0, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, -2147483648) i32 @H5I_dec_app_ref_always_close(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5I_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.b, label %.thread, !prof !25

.thread:                                          ; preds = %bb.a
  store i8 1, ptr @H5I_init_g, align 1, !tbaa !8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = xor i1 %i.d, true
  %i.g = select i1 %i.b, i1 true, i1 %i.f
  br i1 %i.g, label %bb.c, label %bb.e, !prof !33

bb.c:                                             ; preds = %.thread, %bb.b
  %i.h = tail call fastcc i32 @H5I__dec_app_ref_always_close(i64 noundef %0, ptr noundef null) ; 2 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = load i64, ptr @H5E_ID_g, align 8, !tbaa !27
  %i.k = load i64, ptr @H5E_CANTDEC_g, align 8, !tbaa !27
  %i.l = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5I_dec_app_ref_always_close, i32 noundef 1307, i64 noundef %i.j, i64 noundef %i.k, ptr noundef nonnull @.str.17) #8 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ -1, %bb.d ], [ %i.h, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, -2147483648) i32 @H5I__dec_app_ref_always_close(i64 noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5I_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %H5I__dec_app_ref.exit.thread7, !prof !25

bb.b:                                             ; preds = %bb.a
  %i.g = tail call fastcc i32 @H5I__dec_ref(i64 noundef %0, ptr noundef %1) ; 2 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr @H5E_ID_g, align 8, !tbaa !27
  %i.j = load i64, ptr @H5E_CANTDEC_g, align 8, !tbaa !27
  %i.k = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5I__dec_app_ref, i32 noundef 1157, i64 noundef %i.i, i64 noundef %i.j, ptr noundef nonnull @.str.17) #8 ; 0 uses
  br label %H5I__dec_app_ref.exit.thread

bb.d:                                             ; preds = %bb.b
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %H5I__dec_app_ref.exit.thread7, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = tail call ptr @H5I__find_id(i64 noundef %0) ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.f, label %H5I__dec_app_ref.exit

bb.f:                                             ; preds = %bb.e
  %i.n = load i64, ptr @H5E_ID_g, align 8, !tbaa !27
  %i.o = load i64, ptr @H5E_BADID_g, align 8, !tbaa !27
  %i.p = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5I__dec_app_ref, i32 noundef 1165, i64 noundef %i.n, i64 noundef %i.o, ptr noundef nonnull @.str.19) #8 ; 0 uses
  br label %H5I__dec_app_ref.exit.thread

H5I__dec_app_ref.exit:                            ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 12 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !50
  %i.s = add i32 %i.r, -1                         ; 3 uses
  store i32 %i.s, ptr %i.q, align 4, !tbaa !50
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %H5I__dec_app_ref.exit.thread, label %H5I__dec_app_ref.exit.thread7

H5I__dec_app_ref.exit.thread:                     ; preds = %bb.f, %bb.c, %H5I__dec_app_ref.exit
  %i.u = tail call ptr @H5I_remove(i64 noundef %0) ; 0 uses
  %i.v = load i64, ptr @H5E_ID_g, align 8, !tbaa !27
  %i.w = load i64, ptr @H5E_CANTDEC_g, align 8, !tbaa !27
  %i.x = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5I__dec_app_ref_always_close, i32 noundef 1277, i64 noundef %i.v, i64 noundef %i.w, ptr noundef nonnull @.str.17) #8 ; 0 uses
  br label %H5I__dec_app_ref.exit.thread7

H5I__dec_app_ref.exit.thread7:                    ; preds = %bb.d, %H5I__dec_app_ref.exit.thread, %H5I__dec_app_ref.exit, %bb.a
  %.0 = phi i32 [ -1, %H5I__dec_app_ref.exit.thread ], [ %i.s, %H5I__dec_app_ref.exit ], [ 0, %bb.a ], [ 0, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, -2147483648) i32 @H5I_dec_app_ref_always_close_async(i64 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5I_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.b, label %.thread, !prof !25

.thread:                                          ; preds = %bb.a
  store i8 1, ptr @H5I_init_g, align 1, !tbaa !8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = xor i1 %i.d, true
  %i.g = select i1 %i.b, i1 true, i1 %i.f
  br i1 %i.g, label %bb.c, label %bb.e, !prof !33

bb.c:                                             ; preds = %.thread, %bb.b
  %i.h = tail call fastcc i32 @H5I__dec_app_ref_always_close(i64 noundef %0, ptr noundef %1) ; 2 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = load i64, ptr @H5E_ID_g, align 8, !tbaa !27
  %i.k = load i64, ptr @H5E_CANTDEC_g, align 8, !tbaa !27
  %i.l = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5I_dec_app_ref_always_close_async, i32 noundef 1339, i64 noundef %i.j, i64 noundef %i.k, ptr noundef nonnull @.str.18) #8 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ -1, %bb.d ], [ %i.h, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @H5I_inc_ref(i64 noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5I_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.b, label %.thread, !prof !25

.thread:                                          ; preds = %bb.a
  store i8 1, ptr @H5I_init_g, align 1, !tbaa !8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = xor i1 %i.d, true
  %i.g = select i1 %i.b, i1 true, i1 %i.f
  br i1 %i.g, label %bb.c, label %.critedge, !prof !33

bb.c:                                             ; preds = %.thread, %bb.b
  %i.h = tail call ptr @H5I__find_id(i64 noundef %0) ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = load i64, ptr @H5E_ID_g, align 8, !tbaa !27
  %i.k = load i64, ptr @H5E_BADID_g, align 8, !tbaa !27
  %i.l = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5I_inc_ref, i32 noundef 1368, i64 noundef %i.j, i64 noundef %i.k, ptr noundef nonnull @.str.19) #8 ; 0 uses
  br label %.critedge

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !49
  %i.o = add i32 %i.n, 1                          ; 2 uses
  store i32 %i.o, ptr %i.m, align 8, !tbaa !49
  br i1 %1, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 12 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !50
  %i.r = add i32 %i.q, 1                          ; 2 uses
  store i32 %i.r, ptr %i.p, align 4, !tbaa !50
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ -1, %bb.d ], [ 0, %bb.b ], [ %i.r, %bb.f ], [ %i.o, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @H5I_get_ref(i64 noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5I_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.b, label %.thread, !prof !25

.thread:                                          ; preds = %bb.a
  store i8 1, ptr @H5I_init_g, align 1, !tbaa !8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = xor i1 %i.d, true
  %i.g = select i1 %i.b, i1 true, i1 %i.f
  br i1 %i.g, label %bb.c, label %bb.f, !prof !33

bb.c:                                             ; preds = %.thread, %bb.b
  %i.h = tail call ptr @H5I__find_id(i64 noundef %0) ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = load i64, ptr @H5E_ID_g, align 8, !tbaa !27
  %i.k = load i64, ptr @H5E_BADID_g, align 8, !tbaa !27
  %i.l = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5I_get_ref, i32 noundef 1405, i64 noundef %i.j, i64 noundef %i.k, ptr noundef nonnull @.str.19) #8 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.in.v = select i1 %1, i64 12, i64 8
  %.in = getelementptr inbounds nuw i8, ptr %i.h, i64 %.in.v
  %i.m = load i32, ptr %.in, align 4, !tbaa !13
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.0 = phi i32 [ -1, %bb.d ], [ %i.m, %bb.e ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @H5I__inc_type_ref(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5I_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.e, !prof !25

bb.b:                                             ; preds = %bb.a
  %i.g = sext i32 %0 to i64
  %i.h = getelementptr inbounds [8 x i8], ptr @H5I_type_info_array_g, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !14   ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr @H5E_ID_g, align 8, !tbaa !27
  %i.l = load i64, ptr @H5E_BADGROUP_g, align 8, !tbaa !27
  %i.m = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5I__inc_type_ref, i32 noundef 1438, i64 noundef %i.k, i64 noundef %i.l, ptr noundef nonnull @.str.6) #8 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !34
  %i.p = add i32 %i.o, 1                          ; 2 uses
  store i32 %i.p, ptr %i.n, align 8, !tbaa !34
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  %.0 = phi i32 [ -1, %bb.c ], [ %i.p, %bb.d ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define noundef i32 @H5I_dec_type_ref(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5I_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.b, label %.thread, !prof !25

.thread:                                          ; preds = %bb.a
  store i8 1, ptr @H5I_init_g, align 1, !tbaa !8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = xor i1 %i.d, true
  %i.g = select i1 %i.b, i1 true, i1 %i.f
  br i1 %i.g, label %bb.c, label %bb.j, !prof !33

bb.c:                                             ; preds = %.thread, %bb.b
  %i.h = icmp sgt i32 %0, -1
  %i.i = load i32, ptr @H5I_next_type_g, align 4
  %.not = icmp slt i32 %0, %i.i
  %or.cond = select i1 %i.h, i1 %.not, i1 false
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !27
  %i.k = load i64, ptr @H5E_BADRANGE_g, align 8, !tbaa !27
  %i.l = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5I_dec_type_ref, i32 noundef 1475, i64 noundef %i.j, i64 noundef %i.k, ptr noundef nonnull @.str.5) #8 ; 0 uses
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.m = zext nneg i32 %0 to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr @H5I_type_info_array_g, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !14   ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !34   ; 2 uses
  switch i32 %i.r, label %bb.i [
    i32 0, label %bb.g
    i32 1, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.s = load i64, ptr @H5E_ID_g, align 8, !tbaa !27
  %i.t = load i64, ptr @H5E_BADGROUP_g, align 8, !tbaa !27
  %i.u = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5I_dec_type_ref, i32 noundef 1479, i64 noundef %i.s, i64 noundef %i.t, ptr noundef nonnull @.str.6) #8 ; 0 uses
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.v = tail call i32 @H5I__destroy_type(i32 noundef %0) ; 0 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.w = add i32 %i.r, -1                         ; 2 uses
  store i32 %i.w, ptr %i.q, align 8, !tbaa !34
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.g, %bb.i, %bb.h, %bb.b
  %.0 = phi i32 [ -1, %bb.d ], [ -1, %bb.g ], [ 0, %bb.h ], [ %i.w, %bb.i ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @H5I__get_type_ref(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5I_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.e, !prof !25

bb.b:                                             ; preds = %bb.a
  %i.g = sext i32 %0 to i64
  %i.h = getelementptr inbounds [8 x i8], ptr @H5I_type_info_array_g, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !14   ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr @H5E_ID_g, align 8, !tbaa !27
  %i.k = load i64, ptr @H5E_BADGROUP_g, align 8, !tbaa !27
  %i.l = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5I__get_type_ref, i32 noundef 1524, i64 noundef %i.j, i64 noundef %i.k, ptr noundef nonnull @.str.6) #8 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !34
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  %.0 = phi i32 [ %i.n, %bb.d ], [ -1, %bb.c ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5I_iterate(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.H5_user_cb_state_t, align 8 ; 9 uses
  %i.a = load i8, ptr @H5I_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.b, label %.thread, !prof !25

.thread:                                          ; preds = %bb.a
  store i8 1, ptr @H5I_init_g, align 1, !tbaa !8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = xor i1 %i.d, true
  %i.g = select i1 %i.b, i1 true, i1 %i.f
  br i1 %i.g, label %bb.c, label %.thread47, !prof !33

bb.c:                                             ; preds = %.thread, %bb.b
  %i.h = icmp sgt i32 %0, -1
  %i.i = load i32, ptr @H5I_next_type_g, align 4
  %.not = icmp slt i32 %0, %i.i
  %or.cond = select i1 %i.h, i1 %.not, i1 false
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !27
  %i.k = load i64, ptr @H5E_BADRANGE_g, align 8, !tbaa !27
  %i.l = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5I_iterate, i32 noundef 1620, i64 noundef %i.j, i64 noundef %i.k, ptr noundef nonnull @.str.5) #8 ; 0 uses
  br label %.thread47

bb.e:                                             ; preds = %bb.c
  %i.m = zext nneg i32 %0 to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr @H5I_type_info_array_g, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !14   ; 4 uses
  %.not35 = icmp eq ptr %i.o, null
  br i1 %.not35, label %.thread47, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !34
  %.not36 = icmp eq i32 %i.q, 0
  br i1 %.not36, label %.thread47, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !36
  %.not37 = icmp eq i64 %i.s, 0
  br i1 %.not37, label %.thread47, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !17   ; 4 uses
  %.not38 = icmp eq ptr %i.u, null
  br i1 %.not38, label %.thread47, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !38   ; 2 uses
  br i1 %3, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.p
  %.02654.us = phi ptr [ %i.at, %bb.p ], [ %i.w, %.lr.ph ] ; 3 uses
  %.02753.us = phi ptr [ %.02654.us, %bb.p ], [ %i.u, %.lr.ph ] ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.02753.us, i64 48
  %i.y = load i8, ptr %i.x, align 8, !tbaa !43, !range !10, !noundef !11
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %H5I__iterate_cb.exit.thread.us, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split.us
  %i.aa = load i8, ptr @H5I_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.ab = trunc nuw i8 %i.aa to i1
  %i.ac = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = xor i1 %i.ad, true
  %i.af = select i1 %i.ab, i1 true, i1 %i.ae
  br i1 %i.af, label %bb.j, label %H5I__iterate_cb.exit.thread.us, !prof !25

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.02753.us, i64 12
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !50
  %.not.i.us = icmp eq i32 %i.ah, 0
  br i1 %.not.i.us, label %H5I__iterate_cb.exit.thread.us, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %.02753.us, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !45 ; 3 uses
  switch i32 %0, label %H5I__unwrap.exit.i.us [
    i32 7, label %bb.m
    i32 5, label %bb.m
    i32 2, label %bb.m
    i32 1, label %bb.m
    i32 3, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.ak = call ptr @H5T_get_actual_type(ptr noundef %i.aj) #8
  br label %H5I__unwrap.exit.i.us

bb.m:                                             ; preds = %bb.k, %bb.k, %bb.k, %bb.k
  %i.al = call ptr @H5VL_object_data(ptr noundef %i.aj) #8
  br label %H5I__unwrap.exit.i.us

H5I__unwrap.exit.i.us:                            ; preds = %bb.m, %bb.l, %bb.k
  %.0.i.i.us = phi ptr [ %i.al, %bb.m ], [ %i.ak, %bb.l ], [ %i.aj, %bb.k ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  %i.am = call i32 @H5_user_cb_prepare(ptr noundef nonnull %4) #8
  %i.an = icmp slt i32 %i.am, 0
  br i1 %i.an, label %.thread5.i, label %bb.n

bb.n:                                             ; preds = %H5I__unwrap.exit.i.us
  %i.ao = load i64, ptr %.02753.us, align 8, !tbaa !68
  %i.ap = call i32 %1(ptr noundef %.0.i.i.us, i64 noundef %i.ao, ptr noundef %2) #8, !inline_history !90
  %.fr.i.us = freeze i32 %i.ap                    ; 2 uses
  %i.aq = call i32 @H5_user_cb_restore(ptr noundef nonnull %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  %i.ar = icmp sgt i32 %.fr.i.us, 0
  br i1 %i.ar, label %.thread47, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not9.i.us = icmp ne i32 %.fr.i.us, 0
  %cond.us = icmp slt i32 %i.aq, 0
  %or.cond51.us = select i1 %.not9.i.us, i1 true, i1 %cond.us
  br i1 %or.cond51.us, label %H5I__iterate_cb.exit.thread43, label %H5I__iterate_cb.exit.thread.us

H5I__iterate_cb.exit.thread.us:                   ; preds = %bb.o, %bb.j, %bb.i, %.lr.ph.split.us
  %.not40.us = icmp eq ptr %.02654.us, null
  br i1 %.not40.us, label %.thread47, label %bb.p

bb.p:                                             ; preds = %H5I__iterate_cb.exit.thread.us
  %i.as = getelementptr inbounds nuw i8, ptr %.02654.us, i64 72
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !38
  br label %.lr.ph.split.us, !llvm.loop !91

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.w
  %.02654 = phi ptr [ %i.br, %bb.w ], [ %i.w, %.lr.ph ] ; 3 uses
  %.02753 = phi ptr [ %.02654, %bb.w ], [ %i.u, %.lr.ph ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.02753, i64 48
  %i.av = load i8, ptr %i.au, align 8, !tbaa !43, !range !10, !noundef !11
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %H5I__iterate_cb.exit.thread, label %bb.q

bb.q:                                             ; preds = %.lr.ph.split
  %i.ax = load i8, ptr @H5I_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.ay = trunc nuw i8 %i.ax to i1
  %i.az = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.ba = trunc nuw i8 %i.az to i1
  %i.bb = xor i1 %i.ba, true
  %i.bc = select i1 %i.ay, i1 true, i1 %i.bb
  br i1 %i.bc, label %bb.r, label %H5I__iterate_cb.exit.thread, !prof !25

bb.r:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %.02753, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !45 ; 3 uses
  switch i32 %0, label %H5I__unwrap.exit.i [
    i32 7, label %bb.s
    i32 5, label %bb.s
    i32 2, label %bb.s
    i32 1, label %bb.s
    i32 3, label %bb.t
  ]

bb.s:                                             ; preds = %bb.r, %bb.r, %bb.r, %bb.r
  %i.bf = call ptr @H5VL_object_data(ptr noundef %i.be) #8
  br label %H5I__unwrap.exit.i

bb.t:                                             ; preds = %bb.r
  %i.bg = call ptr @H5T_get_actual_type(ptr noundef %i.be) #8
  br label %H5I__unwrap.exit.i

H5I__unwrap.exit.i:                               ; preds = %bb.t, %bb.s, %bb.r
  %.0.i.i = phi ptr [ %i.bf, %bb.s ], [ %i.bg, %bb.t ], [ %i.be, %bb.r ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  %i.bh = call i32 @H5_user_cb_prepare(ptr noundef nonnull %4) #8
  %i.bi = icmp slt i32 %i.bh, 0
  br i1 %i.bi, label %.thread5.i, label %bb.u

.thread5.i:                                       ; preds = %H5I__unwrap.exit.i, %H5I__unwrap.exit.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  br label %H5I__iterate_cb.exit.thread43

bb.u:                                             ; preds = %H5I__unwrap.exit.i
  %i.bj = load i64, ptr %.02753, align 8, !tbaa !68
  %i.bk = call i32 %1(ptr noundef %.0.i.i, i64 noundef %i.bj, ptr noundef %2) #8, !inline_history !90
  %.fr.i = freeze i32 %i.bk                       ; 2 uses
  %i.bl = call i32 @H5_user_cb_restore(ptr noundef nonnull %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  %i.bm = icmp sgt i32 %.fr.i, 0
  br i1 %i.bm, label %.thread47, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.not9.i = icmp ne i32 %.fr.i, 0
  %cond = icmp slt i32 %i.bl, 0
  %or.cond51 = select i1 %.not9.i, i1 true, i1 %cond
  br i1 %or.cond51, label %H5I__iterate_cb.exit.thread43, label %H5I__iterate_cb.exit.thread

H5I__iterate_cb.exit.thread43:                    ; preds = %bb.v, %bb.o, %.thread5.i
  %i.bn = load i64, ptr @H5E_ID_g, align 8, !tbaa !27
  %i.bo = load i64, ptr @H5E_BADITER_g, align 8, !tbaa !27
  %i.bp = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5I_iterate, i32 noundef 1641, i64 noundef %i.bn, i64 noundef %i.bo, ptr noundef nonnull @.str.20) #8 ; 0 uses
  br label %.thread47

H5I__iterate_cb.exit.thread:                      ; preds = %bb.v, %bb.q, %.lr.ph.split
  %.not40 = icmp eq ptr %.02654, null
  br i1 %.not40, label %.thread47, label %bb.w

bb.w:                                             ; preds = %H5I__iterate_cb.exit.thread
  %i.bq = getelementptr inbounds nuw i8, ptr %.02654, i64 72
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !38
  br label %.lr.ph.split, !llvm.loop !91

.thread47:                                        ; preds = %H5I__iterate_cb.exit.thread, %bb.u, %H5I__iterate_cb.exit.thread.us, %bb.n, %bb.h, %H5I__iterate_cb.exit.thread43, %bb.b, %bb.e, %bb.f, %bb.g, %bb.d
  %.030 = phi i32 [ 0, %bb.b ], [ -1, %bb.d ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %bb.g ], [ -1, %H5I__iterate_cb.exit.thread43 ], [ 0, %bb.h ], [ 0, %H5I__iterate_cb.exit.thread.us ], [ 0, %bb.n ], [ 0, %bb.u ], [ 0, %H5I__iterate_cb.exit.thread ]
  ret i32 %.030
}

declare i32 @H5_user_cb_prepare(ptr noundef) local_unnamed_addr #2

declare i32 @H5_user_cb_restore(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5I_find_id(ptr nofree noundef readnone captures(address) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5I_init_g, align 1, !tbaa !8, !range !10, !noundef !11 ; 2 uses
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.b, label %.thread, !prof !25

.thread:                                          ; preds = %bb.a
  store i8 1, ptr @H5I_init_g, align 1, !tbaa !8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = xor i1 %i.d, true
  %i.g = select i1 %i.b, i1 true, i1 %i.f
  br i1 %i.g, label %bb.c, label %bb.m, !prof !92

bb.c:                                             ; preds = %.thread, %bb.b
  %.pre74 = phi i8 [ 1, %.thread ], [ %i.a, %bb.b ] ; 3 uses
  store i64 -1, ptr %2, align 8, !tbaa !27
  %i.h = sext i32 %1 to i64
  %i.i = getelementptr inbounds [8 x i8], ptr @H5I_type_info_array_g, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !14   ; 4 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !34
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.n = load i64, ptr @H5E_ID_g, align 8, !tbaa !27
  %i.o = load i64, ptr @H5E_BADGROUP_g, align 8, !tbaa !27
  %i.p = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5I_find_id, i32 noundef 1807, i64 noundef %i.n, i64 noundef %i.o, ptr noundef nonnull @.str.6) #8 ; 0 uses
  br label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !36
  %.not32 = icmp eq i64 %i.r, 0
  br i1 %.not32, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !17   ; 6 uses
  %.not33 = icmp eq ptr %i.t, null
  br i1 %.not33, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !38   ; 3 uses
  switch i32 %1, label %.lr.ph.split [
    i32 7, label %.lr.ph.split.us
    i32 5, label %.lr.ph.split.us
    i32 2, label %.lr.ph.split.us
    i32 1, label %.lr.ph.split.us
    i32 3, label %.lr.ph.split.us46.preheader
  ]

.lr.ph.split.us46.preheader:                      ; preds = %.lr.ph
  %.pre72 = load i8, ptr @H5_libterm_g, align 1, !range !10
  br label %.lr.ph.split.us46

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %.pre76 = load i8, ptr @H5_libterm_g, align 1, !range !10
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %.lr.ph.split.us
  %i.w = phi i8 [ %.pre76, %.lr.ph.split.us ], [ %i.ag, %bb.j ]
  %i.x = phi i8 [ %.pre74, %.lr.ph.split.us ], [ %i.ah, %bb.j ]
  %.02445.us = phi ptr [ %i.v, %.lr.ph.split.us ], [ %i.aj, %bb.j ] ; 3 uses
  %.02544.us = phi ptr [ %i.t, %.lr.ph.split.us ], [ %.02445.us, %bb.j ] ; 2 uses
  %i.y = trunc nuw i8 %i.x to i1
  %i.z = trunc nuw i8 %i.w to i1
  %i.aa = xor i1 %i.z, true
  %i.ab = select i1 %i.y, i1 true, i1 %i.aa
  br i1 %i.ab, label %H5I__unwrap.exit.i.us, label %bb.i, !prof !25

H5I__unwrap.exit.i.us:                            ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %.02544.us, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !45
  %i.ae = tail call ptr @H5VL_object_data(ptr noundef %i.ad) #8
  %i.af = icmp eq ptr %i.ae, %0
  %.pre73 = load i8, ptr @H5I_init_g, align 1, !tbaa !8, !range !10
  %.pre75 = load i8, ptr @H5_libterm_g, align 1, !range !10
  br i1 %i.af, label %H5I__find_id_cb.exit, label %bb.i

bb.i:                                             ; preds = %H5I__unwrap.exit.i.us, %bb.h
  %i.ag = phi i8 [ %.pre75, %H5I__unwrap.exit.i.us ], [ 1, %bb.h ]
  %i.ah = phi i8 [ %.pre73, %H5I__unwrap.exit.i.us ], [ 0, %bb.h ]
  %.not36.us = icmp eq ptr %.02445.us, null
  br i1 %.not36.us, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.02445.us, i64 72
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !38
  br label %bb.h, !llvm.loop !93

.lr.ph.split.us46:                                ; preds = %bb.l, %.lr.ph.split.us46.preheader
  %i.ak = phi i8 [ %i.au, %bb.l ], [ %.pre72, %.lr.ph.split.us46.preheader ]
  %i.al = phi i8 [ %i.av, %bb.l ], [ %.pre74, %.lr.ph.split.us46.preheader ]
  %.02445.us47 = phi ptr [ %i.ax, %bb.l ], [ %i.v, %.lr.ph.split.us46.preheader ] ; 3 uses
  %.02544.us48 = phi ptr [ %.02445.us47, %bb.l ], [ %i.t, %.lr.ph.split.us46.preheader ] ; 2 uses
  %i.am = trunc nuw i8 %i.al to i1
  %i.an = trunc nuw i8 %i.ak to i1
  %i.ao = xor i1 %i.an, true
  %i.ap = select i1 %i.am, i1 true, i1 %i.ao
  br i1 %i.ap, label %H5I__unwrap.exit.i.us49, label %bb.k, !prof !25

H5I__unwrap.exit.i.us49:                          ; preds = %.lr.ph.split.us46
  %i.aq = getelementptr inbounds nuw i8, ptr %.02544.us48, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !45
  %i.as = tail call ptr @H5T_get_actual_type(ptr noundef %i.ar) #8
  %i.at = icmp eq ptr %i.as, %0
  %.pre = load i8, ptr @H5I_init_g, align 1, !tbaa !8, !range !10
  %.pre71 = load i8, ptr @H5_libterm_g, align 1, !range !10
  br i1 %i.at, label %H5I__find_id_cb.exit, label %bb.k

bb.k:                                             ; preds = %H5I__unwrap.exit.i.us49, %.lr.ph.split.us46
  %i.au = phi i8 [ %.pre71, %H5I__unwrap.exit.i.us49 ], [ 1, %.lr.ph.split.us46 ]
  %i.av = phi i8 [ %.pre, %H5I__unwrap.exit.i.us49 ], [ 0, %.lr.ph.split.us46 ]
  %.not36.us51 = icmp eq ptr %.02445.us47, null
  br i1 %.not36.us51, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %.02445.us47, i64 72
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !38
  br label %.lr.ph.split.us46, !llvm.loop !93

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.ay = trunc nuw i8 %.pre74 to i1
  %i.az = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.ba = trunc nuw i8 %i.az to i1
  %i.bb = xor i1 %i.ba, true
  %i.bc = select i1 %i.ay, i1 true, i1 %i.bb
  br i1 %i.bc, label %H5I__unwrap.exit.i.us57.preheader, label %.loopexit, !prof !25

H5I__unwrap.exit.i.us57.preheader:                ; preds = %.lr.ph.split
  %i.bd = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !45
  %i.bf = icmp eq ptr %i.be, %0
  br i1 %i.bf, label %H5I__find_id_cb.exit, label %.lr.ph97

.lr.ph97:                                         ; preds = %H5I__unwrap.exit.i.us57.preheader, %H5I__unwrap.exit.i.us57
  %.02445.us5596 = phi ptr [ %i.bh, %H5I__unwrap.exit.i.us57 ], [ %i.v, %H5I__unwrap.exit.i.us57.preheader ] ; 4 uses
  %.not36.us58 = icmp eq ptr %.02445.us5596, null
  br i1 %.not36.us58, label %.loopexit, label %H5I__unwrap.exit.i.us57

H5I__unwrap.exit.i.us57:                          ; preds = %.lr.ph97
  %i.bg = getelementptr inbounds nuw i8, ptr %.02445.us5596, i64 72
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !38
  %i.bi = getelementptr inbounds nuw i8, ptr %.02445.us5596, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !45
  %i.bk = icmp eq ptr %i.bj, %0
  br i1 %i.bk, label %H5I__find_id_cb.exit, label %.lr.ph97, !llvm.loop !93

H5I__find_id_cb.exit:                             ; preds = %H5I__unwrap.exit.i.us49, %H5I__unwrap.exit.i.us, %H5I__unwrap.exit.i.us57, %H5I__unwrap.exit.i.us57.preheader
  %.us-phi = phi ptr [ %.02544.us, %H5I__unwrap.exit.i.us ], [ %.02445.us5596, %H5I__unwrap.exit.i.us57 ], [ %i.t, %H5I__unwrap.exit.i.us57.preheader ], [ %.02544.us48, %H5I__unwrap.exit.i.us49 ]
  %i.bl = load i64, ptr %.us-phi, align 8, !tbaa !68
  br label %.loopexit

.loopexit:                                        ; preds = %bb.k, %bb.i, %.lr.ph97, %bb.g, %.lr.ph.split, %H5I__find_id_cb.exit
  %.sroa.637.1 = phi i64 [ %i.bl, %H5I__find_id_cb.exit ], [ -1, %bb.i ], [ -1, %.lr.ph97 ], [ -1, %.lr.ph.split ], [ -1, %bb.g ], [ -1, %bb.k ]
  store i64 %.sroa.637.1, ptr %2, align 8, !tbaa !27
  br label %bb.m

bb.m:                                             ; preds = %.loopexit, %bb.b, %bb.f, %bb.e
  %.028 = phi i32 [ 0, %bb.f ], [ -1, %bb.e ], [ 0, %bb.b ], [ 0, %.loopexit ]
  ret i32 %.028
}

declare ptr @H5VL_object_data(ptr noundef) local_unnamed_addr #2

declare ptr @H5T_get_actual_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="16384" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="16384" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"_Bool", !6, i64 0}
!10 = !{i8 0, i8 2}
!11 = !{}
!12 = !{!"branch_weights", i32 2000, i32 2002}
!13 = !{!5, !5, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"p1 _ZTS15H5I_type_info_t", !16, i64 0}
!16 = !{!"any pointer", !6, i64 0}
!17 = !{!18, !21, i64 40}
!18 = !{!"H5I_type_info_t", !19, i64 0, !5, i64 8, !20, i64 16, !20, i64 24, !21, i64 32, !21, i64 40}
!19 = !{!"p1 _ZTS11H5I_class_t", !16, i64 0}
!20 = !{!"long", !6, i64 0}
!21 = !{!"p1 _ZTS13H5I_id_info_t", !16, i64 0}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
!24 = distinct !{!24, !23}
!25 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!26 = distinct !{!26, !23}
!27 = !{!20, !20, i64 0}
!28 = !{!29, !5, i64 0}
!29 = !{!"H5I_class_t", !5, i64 0, !5, i64 4, !5, i64 8, !16, i64 16}
!30 = !{!29, !5, i64 4}
!31 = !{!29, !5, i64 8}
!32 = !{!29, !16, i64 16}
!33 = !{!"branch_weights", !"expected", i32 2146409906, i32 1073742}
!34 = !{!18, !5, i64 8}
!35 = !{!18, !19, i64 0}
!36 = !{!18, !20, i64 16}
!37 = !{!18, !20, i64 24}
!38 = !{!39, !16, i64 72}
!39 = !{!"H5I_id_info_t", !20, i64 0, !5, i64 8, !5, i64 12, !6, i64 16, !9, i64 24, !16, i64 32, !16, i64 40, !9, i64 48, !40, i64 56}
!40 = !{!"UT_hash_handle", !41, i64 0, !16, i64 8, !16, i64 16, !42, i64 24, !42, i64 32, !16, i64 40, !5, i64 48, !5, i64 52}
!41 = !{!"p1 _ZTS13UT_hash_table", !16, i64 0}
!42 = !{!"p1 _ZTS14UT_hash_handle", !16, i64 0}
!43 = !{!39, !9, i64 48}
!44 = !{!39, !9, i64 24}
!45 = !{!6, !6, i64 0}
!46 = distinct !{null}
!47 = !{!39, !16, i64 40}
!48 = distinct !{!48, !23}
!49 = !{!39, !5, i64 8}
!50 = !{!39, !5, i64 12}
!51 = !{!40, !16, i64 8}
!52 = !{!40, !16, i64 16}
!53 = !{!39, !41, i64 56}
!54 = !{!55, !56, i64 0}
!55 = !{!"UT_hash_table", !56, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !42, i64 24, !20, i64 32, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56}
!56 = !{!"p1 _ZTS14UT_hash_bucket", !16, i64 0}
!57 = !{!55, !42, i64 24}
!58 = !{!55, !20, i64 32}
!59 = !{!40, !5, i64 52}
!60 = !{!55, !5, i64 8}
!61 = !{!62, !5, i64 8}
!62 = !{!"UT_hash_bucket", !42, i64 0, !5, i64 8, !5, i64 12}
!63 = !{!62, !42, i64 0}
!64 = !{!40, !42, i64 32}
!65 = !{!40, !42, i64 24}
!66 = !{!55, !5, i64 16}
!67 = distinct !{!67, !23}
!68 = !{!39, !20, i64 0}
!69 = !{!39, !16, i64 32}
!70 = !{!39, !5, i64 108}
!71 = !{!39, !16, i64 96}
!72 = !{!39, !5, i64 104}
!73 = !{!55, !5, i64 12}
!74 = !{!55, !5, i64 56}
!75 = !{!39, !16, i64 64}
!76 = !{!39, !42, i64 88}
!77 = !{!39, !42, i64 80}
!78 = !{!62, !5, i64 12}
!79 = !{!55, !5, i64 52}
!80 = !{!55, !5, i64 40}
!81 = !{!55, !5, i64 44}
!82 = distinct !{!82, !23}
!83 = distinct !{!83, !23}
!84 = !{!55, !5, i64 48}
!85 = !{!18, !21, i64 32}
!86 = distinct !{!86, !23}
!87 = distinct !{!87, !23}
!88 = distinct !{!88, !23}
!89 = distinct !{!89, !23}
!90 = distinct !{null}
!91 = distinct !{!91, !23}
!92 = !{!"branch_weights", !"expected", i32 2146409907, i32 1073741}
!93 = distinct !{!93, !23}
end_hunk_2
