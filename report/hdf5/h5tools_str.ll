Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/h5tools_str?download=true
inline.NumInlined: 15
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
@.str.37 = private unnamed_addr constant [4 x i8] c"%hd\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.39 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c", \01\00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"%s%02x\00", align 1
@H5T_STD_REF_g = external local_unnamed_addr global i64, align 8
@enable_error_stack = external local_unnamed_addr global i32, align 4
@H5tools_ERR_STACK_g = external local_unnamed_addr global i64, align 8
@H5tools_ERR_CLS_g = external local_unnamed_addr global i64, align 8
@.str.43 = private unnamed_addr constant [50 x i8] c"/opt-bench/work/hdf5/hdf5/tools/lib/h5tools_str.c\00", align 1
@__func__.h5tools_str_sprint = private unnamed_addr constant [19 x i8] c"h5tools_str_sprint\00", align 1
@H5E_tools_g = external local_unnamed_addr global i64, align 8
@H5E_tools_min_id_g = external local_unnamed_addr global i64, align 8
@.str.44 = private unnamed_addr constant [34 x i8] c"H5Ropen_object H5R_OBJECT1 failed\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.45 = private unnamed_addr constant [6 x i8] c"%u-%s\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"GROUP\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"DATASET\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"DATATYPE\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.50 = private unnamed_addr constant [28 x i8] c"H5Oclose H5R_OBJECT1 failed\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"ATTRIBUTE\00", align 1
@H5T_STD_REF_DSETREG_g = external local_unnamed_addr global i64, align 8
@H5T_STD_REF_OBJ_g = external local_unnamed_addr global i64, align 8
@.str.52 = private unnamed_addr constant [4 x i8] c"MAP\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"%u-\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c"<unknown>\00", align 1
@h5tools_str_sprint.is_next_arry_elmt = internal unnamed_addr global i1 false, align 4
@.str.55 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.56 = private unnamed_addr constant [3 x i8] c",\01\00", align 1
@.str.57 = private unnamed_addr constant [3 x i8] c"\0A \00", align 1
@.str.58 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@H5T_NATIVE_FLOAT_COMPLEX_g = external local_unnamed_addr global i64, align 8
@.str.59 = private unnamed_addr constant [7 x i8] c"%g%+gi\00", align 1
@H5T_NATIVE_DOUBLE_COMPLEX_g = external local_unnamed_addr global i64, align 8
@H5T_NATIVE_LDOUBLE_COMPLEX_g = external local_unnamed_addr global i64, align 8
@.str.60 = private unnamed_addr constant [9 x i8] c"%Lg%+Lgi\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"%s+%si\00", align 1
@.str.62 = private unnamed_addr constant [17 x i8] c"invalid datatype\00", align 1
@.str.63 = private unnamed_addr constant [3 x i8] c" \22\00", align 1
@.str.64 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.65 = private unnamed_addr constant [4 x i8] c"/%s\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"%%%02x\00", align 1
@.str.67 = private unnamed_addr constant [3 x i8] c"\\\22\00", align 1
@.str.68 = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@.str.69 = private unnamed_addr constant [3 x i8] c"\\\\\00", align 1
@.str.70 = private unnamed_addr constant [2 x i8] c"\08\00", align 1
@.str.71 = private unnamed_addr constant [3 x i8] c"\\b\00", align 1
@.str.72 = private unnamed_addr constant [2 x i8] c"\0C\00", align 1
@.str.73 = private unnamed_addr constant [3 x i8] c"\\f\00", align 1
@.str.74 = private unnamed_addr constant [12 x i8] c"           \00", align 1
@.str.75 = private unnamed_addr constant [3 x i8] c"\\n\00", align 1
@.str.76 = private unnamed_addr constant [2 x i8] c"\0D\00", align 1
@.str.77 = private unnamed_addr constant [3 x i8] c"\\r\00", align 1
@.str.78 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.79 = private unnamed_addr constant [3 x i8] c"\\t\00", align 1
@.str.80 = private unnamed_addr constant [6 x i8] c"\\%03o\00", align 1
@.str.81 = private unnamed_addr constant [3 x i8] c"\\'\00", align 1
@.str.82 = private unnamed_addr constant [3 x i8] c"\\?\00", align 1
@.str.83 = private unnamed_addr constant [3 x i8] c"\\a\00", align 1
@.str.84 = private unnamed_addr constant [3 x i8] c"\\v\00", align 1
@switch.table.h5tools_str_sprint.1 = private unnamed_addr constant [3 x ptr] [ptr @.str.46, ptr @.str.47, ptr @.str.48], align 8

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @h5tools_str_close(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13
  %.not4 = icmp eq i64 %i.b, 0
  br i1 %.not4, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !14
  tail call void @free(ptr noundef %i.c) #23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @h5tools_str_len(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !15
  ret i64 %i.b
}

; Function Attrs: nounwind uwtable
define ptr @h5tools_str_append(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ...) local_unnamed_addr #4 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.a = load ptr, ptr %0, align 8, !tbaa !14     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %h5tools_str_reset.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !13   ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %h5tools_str_reset.exit, label %bb.c

h5tools_str_reset.exit:                           ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 4096, ptr %i.e, align 8, !tbaa !13
  %i.f = tail call noalias dereferenceable_or_null(4096) ptr @malloc(i64 noundef 4096) #24 ; 3 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !14
  store i8 0, ptr %i.f, align 1, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !15
  br label %bb.c

bb.c:                                             ; preds = %h5tools_str_reset.exit, %bb.b
  %i.h = phi ptr [ %i.f, %h5tools_str_reset.exit ], [ %i.a, %bb.b ]
  %i.i = phi i64 [ 4096, %h5tools_str_reset.exit ], [ %i.c, %bb.b ]
  %char0 = load i8, ptr %1, align 1
  %i.j = icmp eq i8 %char0, 0
  br i1 %i.j, label %.thread38, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !15
  %i.n = sub i64 %i.i, %i.m                       ; 2 uses
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.o = load ptr, ptr %0, align 8, !tbaa !14
  %i.p = load i64, ptr %i.l, align 8, !tbaa !15
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.p
  %i.r = call i32 @vsnprintf(ptr noundef %i.q, i64 noundef %i.n, ptr noundef nonnull %1, ptr noundef nonnull %2) #23 ; 2 uses
  call void @llvm.va_end.p0(ptr nonnull %2)
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %.thread38, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 2
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %.tail.thread
  %i.v = phi i32 [ %i.r, %.lr.ph ], [ %i.ap, %.tail.thread ] ; 2 uses
  %i.w = phi i64 [ %i.n, %.lr.ph ], [ %i.al, %.tail.thread ]
  %i.x = zext nneg i32 %i.v to i64                ; 3 uses
  %.not36 = icmp ugt i64 %i.w, %i.x
  br i1 %.not36, label %bb.e, label %.tail.thread

bb.e:                                             ; preds = %bb.d
  %i.y = icmp eq i32 %i.v, 0
  br i1 %i.y, label %sub_0, label %bb.f

sub_0:                                            ; preds = %bb.e
  %i.z = load i8, ptr %1, align 1
  %.not44 = icmp eq i8 %i.z, 37
  br i1 %.not44, label %sub_1, label %.tail.thread

sub_1:                                            ; preds = %sub_0
  %i.aa = load i8, ptr %i.t, align 1
  %.not45 = icmp eq i8 %i.aa, 115
  br i1 %.not45, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_1
  %i.ab = load i8, ptr %i.u, align 1
  %i.ac = icmp eq i8 %i.ab, 0
  br i1 %i.ac, label %bb.f, label %.tail.thread

.tail.thread:                                     ; preds = %sub_1, %sub_0, %bb.d, %.tail
  %i.ad = load i64, ptr %i.l, align 8, !tbaa !15
  %i.ae = add nuw nsw i64 %i.x, 1
  %i.af = add i64 %i.ae, %i.ad
  %i.ag = load i64, ptr %i.k, align 8, !tbaa !13
  %i.ah = shl i64 %i.ag, 1
  %. = call i64 @llvm.umax.i64(i64 %i.af, i64 %i.ah) ; 3 uses
  %i.ai = load ptr, ptr %0, align 8, !tbaa !14
  %i.aj = call ptr @realloc(ptr noundef %i.ai, i64 noundef %.) #25
  store ptr %i.aj, ptr %0, align 8, !tbaa !14
  store i64 %., ptr %i.k, align 8, !tbaa !13
  %i.ak = load i64, ptr %i.l, align 8, !tbaa !15
  %i.al = sub i64 %., %i.ak                       ; 2 uses
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.am = load ptr, ptr %0, align 8, !tbaa !14
  %i.an = load i64, ptr %i.l, align 8, !tbaa !15
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.an
  %i.ap = call i32 @vsnprintf(ptr noundef %i.ao, i64 noundef %i.al, ptr noundef nonnull %1, ptr noundef nonnull %2) #23 ; 2 uses
  call void @llvm.va_end.p0(ptr nonnull %2)
  %i.aq = icmp slt i32 %i.ap, 0
  br i1 %i.aq, label %.thread38, label %bb.d

bb.f:                                             ; preds = %bb.e, %.tail
  %.lcssa = phi i64 [ %i.x, %bb.e ], [ 0, %.tail ]
  %i.ar = load i64, ptr %i.l, align 8, !tbaa !15
  %i.as = add i64 %i.ar, %.lcssa
  store i64 %i.as, ptr %i.l, align 8, !tbaa !15
  %i.at = load ptr, ptr %0, align 8, !tbaa !14
  br label %.thread38

.thread38:                                        ; preds = %.tail.thread, %bb.c, %.preheader, %bb.f
  %.2 = phi ptr [ %i.h, %bb.c ], [ %i.at, %bb.f ], [ null, %.preheader ], [ null, %.tail.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret ptr %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define ptr @h5tools_str_reset(ptr nofree noundef captures(none) initializes((8, 16)) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !14     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !13
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 4096, ptr %i.e, align 8, !tbaa !13
  %i.f = tail call noalias dereferenceable_or_null(4096) ptr @malloc(i64 noundef 4096) #24 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = phi ptr [ %i.f, %bb.c ], [ %i.a, %bb.b ]
  store i8 0, ptr %i.g, align 1, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.h, align 8, !tbaa !15
  %i.i = load ptr, ptr %0, align 8, !tbaa !14
  ret ptr %i.i
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #8

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #8

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define ptr @h5tools_str_trunc(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !15
  %i.c = icmp ult i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 %1, ptr %i.a, align 8, !tbaa !15
  %i.d = load ptr, ptr %0, align 8, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %1
  store i8 0, ptr %i.e, align 1, !tbaa !16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !14
  ret ptr %i.f
}

; Function Attrs: nounwind uwtable
define ptr @h5tools_str_fmt(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef readonly %2) local_unnamed_addr #4 {
sub_0:
  %i.a = alloca [1024 x i8], align 16             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.b = load i8, ptr %2, align 1
  %.not28 = icmp eq i8 %i.b, 37
  br i1 %.not28, label %sub_1, label %.tail.thread

sub_1:                                            ; preds = %sub_0
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.d = load i8, ptr %i.c, align 1
  %.not29 = icmp eq i8 %i.d, 115
  br i1 %.not29, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_1
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.f = load i8, ptr %i.e, align 1
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.f, label %.tail.thread

.tail.thread:                                     ; preds = %sub_1, %sub_0, %.tail
  %i.h = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef 37) #26
  %.not26 = icmp eq ptr %i.h, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !15 ; 2 uses
  br i1 %.not26, label %._crit_edge, label %bb.a

bb.a:                                             ; preds = %.tail.thread
  %i.i = sub i64 %.pre, %1                        ; 2 uses
  %i.j = add i64 %i.i, 1                          ; 2 uses
  %i.k = icmp ugt i64 %i.j, 1024
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.j) #24
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.023 = phi ptr [ %i.l, %bb.b ], [ %i.a, %bb.a ] ; 3 uses
  %.0 = phi i64 [ %i.i, %bb.b ], [ 1023, %bb.a ]  ; 2 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !14
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %1
  %i.o = call ptr @strncpy(ptr noundef %.023, ptr noundef %i.n, i64 noundef %.0) #23 ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.023, i64 %.0
  store i8 0, ptr %i.p, align 1, !tbaa !16
  br label %._crit_edge

._crit_edge:                                      ; preds = %.tail.thread, %bb.c
  %.1 = phi ptr [ %.023, %bb.c ], [ %i.a, %.tail.thread ] ; 3 uses
  %i.q = icmp ult i64 %1, %.pre
  br i1 %i.q, label %bb.d, label %h5tools_str_trunc.exit

bb.d:                                             ; preds = %._crit_edge
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.r, align 8, !tbaa !15
  %i.s = load ptr, ptr %0, align 8, !tbaa !14
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %1
  store i8 0, ptr %i.t, align 1, !tbaa !16
  br label %h5tools_str_trunc.exit

h5tools_str_trunc.exit:                           ; preds = %._crit_edge, %bb.d
  %i.u = call ptr (ptr, ptr, ...) @h5tools_str_append(ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %.1) ; 0 uses
  %.not27 = icmp eq ptr %.1, %i.a
  br i1 %.not27, label %bb.f, label %bb.e

bb.e:                                             ; preds = %h5tools_str_trunc.exit
  call void @free(ptr noundef nonnull %.1) #23
  br label %bb.f

bb.f:                                             ; preds = %h5tools_str_trunc.exit, %bb.e, %.tail
  %.024 = load ptr, ptr %0, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret ptr %.024
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define ptr @h5tools_str_prefix(ptr nofree noundef captures(none) initializes((8, 16)) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !14     ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !13
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %h5tools_str_reset.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 4096, ptr %i.e, align 8, !tbaa !13
  %i.f = tail call noalias dereferenceable_or_null(4096) ptr @malloc(i64 noundef 4096) #24 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !14
  br label %h5tools_str_reset.exit

h5tools_str_reset.exit:                           ; preds = %bb.b, %bb.c
  %i.g = phi ptr [ %i.f, %bb.c ], [ %i.a, %bb.b ]
  store i8 0, ptr %i.g, align 1, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.h, align 8, !tbaa !15
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 576
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 832 ; 3 uses
  %i.m = tail call i64 @calc_acc_pos(i32 noundef %i.j, i64 noundef %2, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l) #23 ; 0 uses
  %i.n = load i32, ptr %i.i, align 4, !tbaa !21
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %h5tools_str_reset.exit
end_hunk_0
