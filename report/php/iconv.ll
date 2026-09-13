Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/iconv?download=true
inline.NumInlined: 40
inline.NumDeleted: 12
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
@php_iconv_stream_filter_ops = internal constant %struct._php_stream_filter_ops { ptr @php_iconv_stream_filter_do_filter, ptr @php_iconv_stream_filter_cleanup, ptr @.str.102 }, align 8
@.str.101 = private unnamed_addr constant [3 x i8] c"/.\00", align 1
@.str.102 = private unnamed_addr constant [16 x i8] c"convert.iconv.*\00", align 1
@.str.103 = private unnamed_addr constant [61 x i8] c"iconv stream filter (\22%s\22=>\22%s\22): invalid multibyte sequence\00", align 1
@.str.104 = private unnamed_addr constant [54 x i8] c"iconv stream filter (\22%s\22=>\22%s\22): insufficient buffer\00", align 1
@.str.105 = private unnamed_addr constant [48 x i8] c"iconv stream filter (\22%s\22=>\22%s\22): unknown error\00", align 1
@.str.106 = private unnamed_addr constant [58 x i8] c"iconv stream filter (\22%s\22=>\22%s\22): unexpected octet values\00", align 1

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @zm_startup_miconv(i32 noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = tail call i32 @zend_register_ini_entries_ex(ptr noundef nonnull @ini_entries, i32 noundef %1, i32 noundef %0) #16 ; 0 uses
  %i.b = tail call i32 @php_stream_filter_register_factory(ptr noundef nonnull @.str.102, ptr noundef nonnull @php_iconv_stream_filter_register_factory.filter_factory) #16
  %.not = icmp eq i32 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @zend_register_string_constant(ptr noundef nonnull @.str.4, i64 noundef 10, ptr noundef nonnull @.str.78, i32 noundef 1, i32 noundef %1) #16 ; 0 uses
  %i.d = tail call ptr @gnu_get_libc_version() #16
  %i.e = tail call ptr @zend_register_string_constant(ptr noundef nonnull @.str.5, i64 noundef 13, ptr noundef %i.d, i32 noundef 1, i32 noundef %1) #16 ; 0 uses
  %i.f = tail call ptr @zend_register_long_constant(ptr noundef nonnull @.str.79, i64 noundef 24, i64 noundef 1, i32 noundef 1, i32 noundef %1) #16 ; 0 uses
  %i.g = tail call ptr @zend_register_long_constant(ptr noundef nonnull @.str.80, i64 noundef 35, i64 noundef 2, i32 noundef 1, i32 noundef %1) #16 ; 0 uses
  %i.h = tail call i32 @php_output_handler_alias_register(ptr noundef nonnull @.str.3, i64 noundef 16, ptr noundef nonnull @php_iconv_output_handler_init) #16 ; 0 uses
  %i.i = tail call i32 @php_output_handler_conflict_register(ptr noundef nonnull @.str.3, i64 noundef 16, ptr noundef nonnull @php_iconv_output_conflict) #16 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden noundef i32 @zm_shutdown_miconv(i32 noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = tail call i32 @php_stream_filter_unregister_factory(ptr noundef nonnull @.str.102) #16 ; 0 uses
  tail call void @zend_unregister_ini_entries_ex(i32 noundef %1, i32 noundef %0) #16
  ret i32 0
}

; Function Attrs: nounwind uwtable
define hidden void @zm_info_miconv(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @zend_get_constant_str(ptr noundef nonnull @.str.4, i64 noundef 10) #16
  %i.b = tail call ptr @zend_get_constant_str(ptr noundef nonnull @.str.5, i64 noundef 13) #16
  tail call void @php_info_print_table_start() #16
  tail call void (i32, ...) @php_info_print_table_row(i32 noundef 2, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #16
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  tail call void (i32, ...) @php_info_print_table_row(i32 noundef 2, ptr noundef nonnull @.str.8, ptr noundef nonnull %i.d) #16
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  tail call void (i32, ...) @php_info_print_table_row(i32 noundef 2, ptr noundef nonnull @.str.9, ptr noundef nonnull %i.f) #16
  tail call void @php_info_print_table_end() #16
  tail call void @display_ini_entries(ptr noundef %0) #16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @zm_globals_ctor_iconv(ptr nofree noundef writeonly captures(none) initializes((0, 24)) %0) #1 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

declare i32 @zend_register_ini_entries_ex(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @php_output_handler_alias_register(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @php_iconv_output_handler_init(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = tail call ptr @php_output_handler_create_internal(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @php_iconv_output_handler, i64 noundef %2, i32 noundef %3) #16
  ret ptr %i.a
}

declare i32 @php_output_handler_conflict_register(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @php_iconv_output_conflict(ptr noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = tail call i32 @php_output_get_level() #16
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 @php_output_handler_conflict(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @.str.3, i64 noundef 16) #16
  br i1 %i.b, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call zeroext i1 @php_output_handler_conflict(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @.str.82, i64 noundef 17) #16
  br i1 %i.c, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ -1, %bb.c ], [ -1, %bb.b ]
  ret i32 %.0
}

declare void @zend_unregister_ini_entries_ex(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare ptr @zend_get_constant_str(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @php_info_print_table_start() local_unnamed_addr #2

declare void @php_info_print_table_row(i32 noundef, ...) local_unnamed_addr #2

declare void @php_info_print_table_end() local_unnamed_addr #2

declare void @display_ini_entries(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 7) i32 @php_iconv_string(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 10 uses
  %i.c = alloca i64, align 8                      ; 13 uses
  %i.d = alloca ptr, align 8                      ; 10 uses
  %5 = alloca [1 x %struct.__jmp_buf_tag], align 16 ; 6 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  %i.e = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %3) #17 ; 3 uses
  %i.f = icmp ugt i64 %i.e, 8
  br i1 %i.f, label %bb.b, label %.thread.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 %i.e ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -8
  %i.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(9) @.str.88, ptr noundef nonnull readonly dereferenceable(1) %i.h) #17
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_php_check_ignore.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = icmp ugt i64 %i.e, 18
  br i1 %i.k, label %bb.d, label %.thread.i

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds i8, ptr %i.g, i64 -18
  %i.m = call i32 @strcmp(ptr noundef nonnull dereferenceable(19) @.str.89, ptr noundef nonnull readonly dereferenceable(1) %i.l) #17
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %_php_check_ignore.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.d, %bb.c, %bb.a
  br label %_php_check_ignore.exit

_php_check_ignore.exit:                           ; preds = %bb.b, %bb.d, %.thread.i
  %.0.i66 = phi i1 [ false, %.thread.i ], [ true, %bb.b ], [ true, %bb.d ]
  store ptr null, ptr %2, align 8, !tbaa !17
  %i.o = call noalias ptr @iconv_open(ptr noundef nonnull %3, ptr noundef %4) #16 ; 7 uses
  %i.p = icmp eq ptr %i.o, inttoptr (i64 -1 to ptr)
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_php_check_ignore.exit
  %i.q = call ptr @__errno_location() #18
  %i.r = load i32, ptr %i.q, align 4, !tbaa !18
  %i.s = icmp eq i32 %i.r, 22
  %. = select i1 %i.s, i32 2, i32 1
  br label %bb.w

bb.f:                                             ; preds = %_php_check_ignore.exit
  store i64 %1, ptr %i.b, align 8, !tbaa !20
  %i.t = add i64 %1, 32                           ; 5 uses
  store i64 %i.t, ptr %i.c, align 8, !tbaa !20
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !52 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  store ptr %5, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !52
  %i.v = call i32 @__sigsetjmp(ptr noundef nonnull %5, i32 noundef 0) #19
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %zend_string_alloc.exit, label %bb.q

zend_string_alloc.exit:                           ; preds = %bb.f
  %i.x = and i64 %i.t, -8
  %i.y = add i64 %i.x, 32
  %i.z = call noalias ptr @_emalloc(i64 noundef %i.y) #20 ; 7 uses
  store i32 1, ptr %i.z, align 4, !tbaa !53
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store i32 22, ptr %i.aa, align 4, !tbaa !12
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 0, ptr %i.ab, align 8, !tbaa !55
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 %i.t, ptr %i.ac, align 8, !tbaa !56
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store ptr %i.ad, ptr %i.d, align 8, !tbaa !15
  %.pr103 = load i64, ptr %i.b, align 8, !tbaa !20
  %.not74104 = icmp eq i64 %.pr103, 0
  br i1 %.not74104, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %zend_string_alloc.exit, %zend_string_extend.exit65
  %.0.ph107 = phi ptr [ %.0.i64, %zend_string_extend.exit65 ], [ %i.z, %zend_string_alloc.exit ] ; 11 uses
  %.048.ph105 = phi i64 [ %i.au, %zend_string_extend.exit65 ], [ %i.t, %zend_string_alloc.exit ] ; 6 uses
  %i.ae = call i64 @iconv(ptr noundef %i.o, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c) #16
  %6 = load i64, ptr %i.c, align 8, !tbaa !20     ; 3 uses
  %i.af = icmp eq i64 %i.ae, -1                   ; 2 uses
  br i1 %.0.i66, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  br i1 %i.af, label %.lr.ph169.preheader, label %.preheader

.lr.ph169.preheader:                              ; preds = %.lr.ph.split.us.preheader
  %i.ag = call ptr @__errno_location() #18        ; 6 uses
  %7 = load i32, ptr %i.ag, align 4, !tbaa !18
  %8 = icmp eq i32 %7, 84
  br i1 %8, label %bb.g, label %.split.us

.lr.ph169:                                        ; preds = %.lr.ph.split.us
  %i.ah = load i64, ptr %i.c, align 8, !tbaa !20  ; 2 uses
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !18
  %9 = icmp eq i32 %i.ai, 84
  br i1 %9, label %bb.g, label %.split.us

bb.g:                                             ; preds = %.lr.ph169.preheader, %.lr.ph169
  %10 = phi i64 [ %i.ah, %.lr.ph169 ], [ %6, %.lr.ph169.preheader ]
  %i.aj = load i64, ptr %i.b, align 8, !tbaa !20  ; 2 uses
  %11 = icmp ugt i64 %i.aj, 1                     ; 3 uses
  br i1 %11, label %.lr.ph.split.us, label %.split.us

.lr.ph.split.us:                                  ; preds = %bb.g
  store i32 0, ptr %i.ag, align 4, !tbaa !18
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  store ptr %i.al, ptr %i.a, align 8, !tbaa !15
  %i.am = add i64 %i.aj, -1
  store i64 %i.am, ptr %i.b, align 8, !tbaa !20
  %i.an = call i64 @iconv(ptr noundef %i.o, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c) #16
  %i.ao = icmp eq i64 %i.an, -1
  br i1 %i.ao, label %.lr.ph169, label %.preheader

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %i.af, label %.lr.ph.split..split.us_crit_edge, label %.preheader

.lr.ph.split..split.us_crit_edge:                 ; preds = %.lr.ph.split
  %.pre = call ptr @__errno_location() #18
  br label %.split.us

.split.us:                                        ; preds = %bb.g, %.lr.ph169, %.lr.ph169.preheader, %.lr.ph.split..split.us_crit_edge
  %.pre-phi = phi ptr [ %.pre, %.lr.ph.split..split.us_crit_edge ], [ %i.ag, %.lr.ph169.preheader ], [ %i.ag, %.lr.ph169 ], [ %i.ag, %bb.g ]
  %.us-phi95 = phi i64 [ %6, %.lr.ph.split..split.us_crit_edge ], [ %6, %.lr.ph169.preheader ], [ %10, %bb.g ], [ %i.ah, %.lr.ph169 ]
  %.not59 = phi i1 [ true, %.lr.ph.split..split.us_crit_edge ], [ true, %.lr.ph169.preheader ], [ %11, %.lr.ph169 ], [ %11, %bb.g ]
  %i.ap = sub i64 %.048.ph105, %.us-phi95         ; 3 uses
  %i.aq = load i32, ptr %.pre-phi, align 4, !tbaa !18
  %i.ar = icmp eq i32 %i.aq, 7
  %i.as = load i64, ptr %i.b, align 8
  %i.at = icmp ne i64 %i.as, 0
  %or.cond = select i1 %i.ar, i1 %i.at, i1 false
  br i1 %or.cond, label %bb.h, label %.loopexit67

bb.h:                                             ; preds = %.split.us
  %i.au = add i64 %.048.ph105, %1                 ; 8 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0.ph107, i64 16 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !56
  %i.ax = icmp uge i64 %i.au, %i.aw
  call void @llvm.assume(i1 %i.ax)
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.ph107, i64 4 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !12
  %i.ba = and i32 %i.az, 64
  %.not.i61 = icmp eq i32 %i.ba, 0
  br i1 %.not.i61, label %bb.i, label %zend_string_alloc.exit.i62

bb.i:                                             ; preds = %bb.h
  %i.bb = load i32, ptr %.0.ph107, align 8, !tbaa !53
  %i.bc = icmp eq i32 %i.bb, 1
  br i1 %i.bc, label %bb.j, label %zend_string_alloc.exit.i62, !prof !57

bb.j:                                             ; preds = %bb.i
  %i.bd = and i64 %i.au, -8
  %i.be = add i64 %i.bd, 32
  %i.bf = call ptr @_erealloc(ptr noundef nonnull %.0.ph107, i64 noundef %i.be) #21 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store i64 %i.au, ptr %i.bg, align 8, !tbaa !56
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store i64 0, ptr %i.bh, align 8, !tbaa !55
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 4 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !12
  %i.bk = and i32 %i.bj, -513
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !12
  br label %zend_string_extend.exit65

zend_string_alloc.exit.i62:                       ; preds = %bb.h, %bb.i
  %i.bl = and i64 %i.au, -8
  %i.bm = add i64 %i.bl, 32
  %i.bn = call noalias ptr @_emalloc(i64 noundef %i.bm) #20 ; 7 uses
  store i32 1, ptr %i.bn, align 4, !tbaa !53
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  store i32 22, ptr %i.bo, align 4, !tbaa !12
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store i64 0, ptr %i.bp, align 8, !tbaa !55
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store i64 %i.au, ptr %i.bq, align 8, !tbaa !56
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.ph107, i64 24
  %i.bt = load i64, ptr %i.av, align 8, !tbaa !56
  %i.bu = add i64 %i.bt, 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.br, ptr nonnull align 8 %i.bs, i64 %i.bu, i1 false)
  %i.bv = load i32, ptr %i.ay, align 4, !tbaa !12
  %i.bw = and i32 %i.bv, 64
  %.not21.i63 = icmp eq i32 %i.bw, 0
  br i1 %.not21.i63, label %bb.k, label %zend_string_extend.exit65

bb.k:                                             ; preds = %zend_string_alloc.exit.i62
  %i.bx = load i32, ptr %.0.ph107, align 8, !tbaa !53 ; 2 uses
  %i.by = icmp ne i32 %i.bx, 0
  call void @llvm.assume(i1 %i.by)
  %i.bz = add i32 %i.bx, -1
  store i32 %i.bz, ptr %.0.ph107, align 8, !tbaa !53
  br label %zend_string_extend.exit65

zend_string_extend.exit65:                        ; preds = %bb.j, %zend_string_alloc.exit.i62, %bb.k
  %.0.i64 = phi ptr [ %i.bf, %bb.j ], [ %i.bn, %bb.k ], [ %i.bn, %zend_string_alloc.exit.i62 ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.i64, i64 24
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.ap
  store ptr %i.cb, ptr %i.d, align 8, !tbaa !15
  %i.cc = sub i64 %i.au, %i.ap
  store i64 %i.cc, ptr %i.c, align 8, !tbaa !20
  %.pr = load i64, ptr %i.b, align 8, !tbaa !20
  %.not74 = icmp eq i64 %.pr, 0
  br i1 %.not74, label %.loopexit67, label %.lr.ph, !llvm.loop !74

.loopexit67:                                      ; preds = %.split.us, %zend_string_extend.exit65
  %.048.ph73 = phi i64 [ %.048.ph105, %.split.us ], [ %i.au, %zend_string_extend.exit65 ]
  %.0.ph71 = phi ptr [ %.0.ph107, %.split.us ], [ %.0.i64, %zend_string_extend.exit65 ] ; 2 uses
  br i1 %.not59, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split, %.lr.ph.split.us, %zend_string_alloc.exit, %.loopexit67
  %.0.ph71153 = phi ptr [ %.0.ph71, %.loopexit67 ], [ %i.z, %zend_string_alloc.exit ], [ %.0.ph107, %.lr.ph.split.us ], [ %.0.ph107, %.lr.ph.split ], [ %.0.ph107, %.lr.ph.split.us.preheader ] ; 2 uses
  %.048.ph73152 = phi i64 [ %.048.ph73, %.loopexit67 ], [ %i.t, %zend_string_alloc.exit ], [ %.048.ph105, %.lr.ph.split.us ], [ %.048.ph105, %.lr.ph.split ], [ %.048.ph105, %.lr.ph.split.us.preheader ] ; 2 uses
  %i.cd = call i64 @iconv(ptr noundef %i.o, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c) #16
  %i.ce = load i64, ptr %i.c, align 8, !tbaa !20
  %i.cf = sub i64 %.048.ph73152, %i.ce            ; 2 uses
  %.not60113 = icmp eq i64 %i.cd, -1
  br i1 %.not60113, label %.lr.ph116, label %.loopexit

.lr.ph116:                                        ; preds = %.preheader
  %i.cg = call ptr @__errno_location() #18
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph116, %zend_string_extend.exit
  %i.ch = phi i64 [ %i.cf, %.lr.ph116 ], [ %i.du, %zend_string_extend.exit ] ; 3 uses
  %.1115 = phi ptr [ %.0.ph71153, %.lr.ph116 ], [ %.0.i, %zend_string_extend.exit ] ; 8 uses
  %.149114 = phi i64 [ %.048.ph73152, %.lr.ph116 ], [ %i.cj, %zend_string_extend.exit ]
  %i.ci = load i32, ptr %i.cg, align 4, !tbaa !18
  %.not161.not = icmp ne i32 %i.ci, 7             ; 3 uses
  br i1 %.not161.not, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cj = add i64 %.149114, 16                    ; 8 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.1115, i64 16 ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !56
  %i.cm = icmp uge i64 %i.cj, %i.cl
  call void @llvm.assume(i1 %i.cm)
  %i.cn = getelementptr inbounds nuw i8, ptr %.1115, i64 4 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !12
  %i.cp = and i32 %i.co, 64
  %.not.i = icmp eq i32 %i.cp, 0
  br i1 %.not.i, label %bb.n, label %zend_string_alloc.exit.i

bb.n:                                             ; preds = %bb.m
  %i.cq = load i32, ptr %.1115, align 8, !tbaa !53
  %i.cr = icmp eq i32 %i.cq, 1
  br i1 %i.cr, label %bb.o, label %zend_string_alloc.exit.i, !prof !57

bb.o:                                             ; preds = %bb.n
  %i.cs = and i64 %i.cj, -8
  %i.ct = add i64 %i.cs, 32
  %i.cu = call ptr @_erealloc(ptr noundef nonnull %.1115, i64 noundef %i.ct) #21 ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  store i64 %i.cj, ptr %i.cv, align 8, !tbaa !56
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store i64 0, ptr %i.cw, align 8, !tbaa !55
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 4 ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !12
  %i.cz = and i32 %i.cy, -513
  store i32 %i.cz, ptr %i.cx, align 4, !tbaa !12
  br label %zend_string_extend.exit

zend_string_alloc.exit.i:                         ; preds = %bb.m, %bb.n
  %i.da = and i64 %i.cj, -8
  %i.db = add i64 %i.da, 32
  %i.dc = call noalias ptr @_emalloc(i64 noundef %i.db) #20 ; 7 uses
  store i32 1, ptr %i.dc, align 4, !tbaa !53
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  store i32 22, ptr %i.dd, align 4, !tbaa !12
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store i64 0, ptr %i.de, align 8, !tbaa !55
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  store i64 %i.cj, ptr %i.df, align 8, !tbaa !56
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  %i.dh = getelementptr inbounds nuw i8, ptr %.1115, i64 24
  %i.di = load i64, ptr %i.ck, align 8, !tbaa !56
  %i.dj = add i64 %i.di, 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dg, ptr nonnull align 8 %i.dh, i64 %i.dj, i1 false)
  %i.dk = load i32, ptr %i.cn, align 4, !tbaa !12
  %i.dl = and i32 %i.dk, 64
  %.not21.i = icmp eq i32 %i.dl, 0
  br i1 %.not21.i, label %bb.p, label %zend_string_extend.exit

bb.p:                                             ; preds = %zend_string_alloc.exit.i
  %i.dm = load i32, ptr %.1115, align 8, !tbaa !53 ; 2 uses
  %i.dn = icmp ne i32 %i.dm, 0
  call void @llvm.assume(i1 %i.dn)
  %i.do = add i32 %i.dm, -1
  store i32 %i.do, ptr %.1115, align 8, !tbaa !53
  br label %zend_string_extend.exit

zend_string_extend.exit:                          ; preds = %bb.o, %zend_string_alloc.exit.i, %bb.p
  %.0.i = phi ptr [ %i.cu, %bb.o ], [ %i.dc, %bb.p ], [ %i.dc, %zend_string_alloc.exit.i ] ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.ch
  store ptr %i.dq, ptr %i.d, align 8, !tbaa !15
  %i.dr = sub i64 %i.cj, %i.ch
  store i64 %i.dr, ptr %i.c, align 8, !tbaa !20
  %i.ds = call i64 @iconv(ptr noundef %i.o, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c) #16
  %i.dt = load i64, ptr %i.c, align 8, !tbaa !20
  %i.du = sub i64 %i.cj, %i.dt                    ; 2 uses
  %.not60 = icmp eq i64 %i.ds, -1
  br i1 %.not60, label %bb.l, label %.loopexit

.loopexit:                                        ; preds = %bb.l, %zend_string_extend.exit, %.preheader, %.loopexit67
  %.252 = phi i64 [ %i.ap, %.loopexit67 ], [ %i.cf, %.preheader ], [ %i.ch, %bb.l ], [ %i.du, %zend_string_extend.exit ]
  %.3 = phi i1 [ true, %.loopexit67 ], [ false, %.preheader ], [ %.not161.not, %zend_string_extend.exit ], [ %.not161.not, %bb.l ]
  %.2 = phi ptr [ %.0.ph71, %.loopexit67 ], [ %.0.ph71153, %.preheader ], [ %.1115, %bb.l ], [ %.0.i, %zend_string_extend.exit ] ; 3 uses
  %i.dv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !52
  %i.dw = icmp eq ptr %i.dv, %5
  call void @llvm.assume(i1 %i.dw)
  store ptr %i.u, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %i.dx = call i32 @iconv_close(ptr noundef %i.o) #16 ; 0 uses
  br i1 %.3, label %bb.r, label %bb.v

bb.q:                                             ; preds = %bb.f
  %i.dy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !52
  %i.dz = icmp eq ptr %i.dy, %5
  call void @llvm.assume(i1 %i.dz)
  store ptr %i.u, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 416), align 8, !tbaa !52
  %i.ea = call i32 @iconv_close(ptr noundef %i.o) #16 ; 0 uses
  call void @_zend_bailout(ptr noundef nonnull @.str.10, i32 noundef 520) #22
  unreachable

bb.r:                                             ; preds = %.loopexit
  %i.eb = call ptr @__errno_location() #18
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !18
  switch i32 %i.ec, label %bb.u [
    i32 22, label %bb.v
    i32 84, label %bb.s
    i32 7, label %bb.t
  ]

bb.s:                                             ; preds = %bb.r
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  br label %bb.v

bb.u:                                             ; preds = %bb.r
  call void @_efree(ptr noundef %.2) #16
  br label %bb.w

bb.v:                                             ; preds = %bb.r, %bb.s, %bb.t, %.loopexit
  %.044 = phi i32 [ 0, %.loopexit ], [ 4, %bb.s ], [ 3, %bb.t ], [ 5, %bb.r ]
  %i.ed = load ptr, ptr %i.d, align 8, !tbaa !15
  store i8 0, ptr %i.ed, align 1, !tbaa !12
  %i.ee = getelementptr inbounds nuw i8, ptr %.2, i64 16
  store i64 %.252, ptr %i.ee, align 8, !tbaa !56
  store ptr %.2, ptr %2, align 8, !tbaa !17
  br label %bb.w

bb.w:                                             ; preds = %bb.e, %bb.v, %bb.u
  %.053 = phi i32 [ %., %bb.e ], [ %.044, %bb.v ], [ 6, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  ret i32 %.053
}

declare noalias ptr @iconv_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

; Function Attrs: nounwind returns_twice
declare i32 @__sigsetjmp(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i64 @iconv(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

declare i32 @iconv_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_zend_bailout(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define hidden void @zif_iconv_strlen(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store ptr null, ptr %i.a, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.f = load i32, ptr %i.e, align 4, !tbaa !12
  %i.g = call i32 (i32, ptr, ...) @zend_parse_parameters(i32 noundef %i.f, ptr noundef nonnull @.str.11, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #16
  %i.h = icmp eq i32 %i.g, -1
  br i1 %i.h, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @iconv_globals, i64 8), align 8, !tbaa !60 ; 3 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load i8, ptr %i.k, align 1, !tbaa !12
  %.not2.i = icmp eq i8 %i.l, 0
  br i1 %.not2.i, label %bb.e, label %get_internal_encoding.exit

bb.e:                                             ; preds = %bb.d, %bb.c
end_hunk_0
