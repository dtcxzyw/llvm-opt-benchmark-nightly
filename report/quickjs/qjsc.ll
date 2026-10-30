Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quickjs/original/qjsc?download=true
inline.NumInlined: 38
inline.NumDeleted: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@cmodule_list.0 = internal unnamed_addr global ptr null, align 8
@cmodule_list.1 = internal unnamed_addr global i32 0, align 8
@cmodule_list.2 = internal unnamed_addr global i32 0, align 4
@init_module_list.0 = internal unnamed_addr global ptr null, align 8
@init_module_list.1 = internal unnamed_addr global i32 0, align 8
@init_module_list.2 = internal unnamed_addr global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"%s: dynamically linking to shared libraries not supported\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"could not load module filename '%s'\00", align 1
@cname_list.0 = internal unnamed_addr global ptr null, align 8
@cname_list.1 = internal unnamed_addr global i32 0, align 8
@cname_list.2 = internal unnamed_addr global i32 0, align 4
@outfile = internal unnamed_addr global ptr null, align 8
@.str.3 = private unnamed_addr constant [820 x i8] c"QuickJS-ng Compiler version %s\0Ausage: qjsc [options] [files]\0A\0Aoptions are:\0A-b          output raw bytecode instead of C code\0A-e          output main() and bytecode in a C file\0A-o output   set the output filename\0A-n script_name    set the script name (as used in stack traces)\0A-N cname    set the C name of the generated data\0A-C          compile as JS classic script (default=autodetect)\0A-m          compile as ES module (default=autodetect)\0A-D module_name         compile a dynamically loaded module or worker\0A-M module_name[,cname] add initialization code for an external C module\0A-p prefix   set the prefix of the generated C names\0A-P          do not add default system modules\0A-s          strip the source code, specify twice to also strip debug info\0A-S n        set the maximum stack size to 'n' bytes (default=%d)\0A\00", align 1
@output_type = internal unnamed_addr global i32 0, align 4
@strip = internal unnamed_addr global i32 0, align 4
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@c_ident_prefix = internal unnamed_addr global ptr @.str.34, align 8
@.str.6 = private unnamed_addr constant [8 x i8] c"qjs:std\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"std\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"qjs:os\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"os\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"qjs:bjson\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"bjson\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"out.c\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.15 = private unnamed_addr constant [65 x i8] c"/* File generated automatically by the QuickJS-ng compiler. */\0A\0A\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"#include \22quickjs-libc.h\22\0A\0A\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"#include <inttypes.h>\0A\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.18 = private unnamed_addr constant [36 x i8] c"Could not load dynamic module '%s'\0A\00", align 1
@.str.19 = private unnamed_addr constant [123 x i8] c"static JSContext *JS_NewCustomContext(JSRuntime *rt)\0A{\0A  JSContext *ctx = JS_NewContext(rt);\0A  if (!ctx)\0A    return NULL;\0A\00", align 1
@.str.20 = private unnamed_addr constant [120 x i8] c"  {\0A    extern JSModuleDef *js_init_module_%s(JSContext *ctx, const char *name);\0A    js_init_module_%s(ctx, \22%s\22);\0A  }\0A\00", align 1
@.str.21 = private unnamed_addr constant [44 x i8] c"  js_std_eval_binary(ctx, %s, %s_size, 1);\0A\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"  return ctx;\0A}\0A\0A\00", align 1
@main_c_template1 = internal constant [199 x i8] c"int main(int argc, char **argv)\0A{\0A  int r;\0A  JSRuntime *rt;\0A  JSContext *ctx;\0A  r = 0;\0A  rt = JS_NewRuntime();\0A  js_std_set_worker_new_context_func(JS_NewCustomContext);\0A  js_std_init_handlers(rt);\0A\00", align 16
@.str.23 = private unnamed_addr constant [31 x i8] c"  JS_SetMaxStackSize(rt, %u);\0A\00", align 1
@.str.24 = private unnamed_addr constant [90 x i8] c"  JS_SetModuleLoaderFunc2(rt, NULL, js_module_loader, js_module_check_attributes, NULL);\0A\00", align 1
@.str.25 = private unnamed_addr constant [73 x i8] c"  ctx = JS_NewCustomContext(rt);\0A  js_std_add_helpers(ctx, argc, argv);\0A\00", align 1
@.str.26 = private unnamed_addr constant [44 x i8] c"  js_std_eval_binary(ctx, %s, %s_size, 0);\0A\00", align 1
@main_c_template2 = internal constant [155 x i8] c"  r = js_std_loop(ctx);\0A  if (r) {\0A    js_std_dump_error(ctx);\0A  }\0A  js_std_free_handlers(rt);\0A  JS_FreeContext(ctx);\0A  JS_FreeRuntime(rt);\0A  return r;\0A}\0A\00", align 16
@.str.27 = private unnamed_addr constant [6 x i8] c"%s_%d\00", align 1
@.str.28 = private unnamed_addr constant [31 x i8] c"const uint32_t %s_size = %u;\0A\0A\00", align 1
@.str.29 = private unnamed_addr constant [26 x i8] c"const uint8_t %s[%u] = {\0A\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"};\0A\0A\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c" 0x%02x,\00", align 1
@.str.33 = private unnamed_addr constant [28 x i8] c"qjsc: missing file for -%c\0A\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"qjsc_\00", align 1
@.str.35 = private unnamed_addr constant [25 x i8] c"qjsc: invalid limit: %s\0A\00", align 1
@.str.36 = private unnamed_addr constant [70 x i8] c"qjsc: invalid limit: %s, unrecognized suffix, only k,m,g are allowed\0A\00", align 1
@.str.37 = private unnamed_addr constant [50 x i8] c"qjsc: invalid limit: %s, only one suffix allowed\0A\00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"Could not load '%s'\0A\00", align 1
@switch.table.main = private unnamed_addr constant [44 x i32] [i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 1073741824, i32 poison, i32 poison, i32 poison, i32 1024, i32 poison, i32 1048576, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 1073741824, i32 poison, i32 poison, i32 poison, i32 1024, i32 poison, i32 1048576], align 8

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden void @namelist_add(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !13   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !14
  %i.e = icmp eq i32 %i.b, %i.d
  %.pre = load ptr, ptr %0, align 8, !tbaa !15    ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = ashr i32 %i.b, 1
  %i.g = add i32 %i.b, 4
  %i.h = add i32 %i.g, %i.f                       ; 2 uses
  %i.i = sext i32 %i.h to i64
  %i.j = mul nsw i64 %i.i, 24
  %i.k = tail call ptr @realloc(ptr noundef %.pre, i64 noundef %i.j) #19 ; 2 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !15
  store i32 %i.h, ptr %i.c, align 4, !tbaa !14
  %.pre20 = load i32, ptr %i.a, align 8, !tbaa !13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = phi i32 [ %.pre20, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.m = phi ptr [ %i.k, %bb.b ], [ %.pre, %bb.a ]
  %i.n = add nsw i32 %i.l, 1
  store i32 %i.n, ptr %i.a, align 8, !tbaa !13
  %i.o = sext i32 %i.l to i64
  %i.p = getelementptr inbounds [24 x i8], ptr %i.m, i64 %i.o ; 3 uses
  %i.q = tail call noalias ptr @strdup(ptr noundef %1) #20
  store ptr %i.q, ptr %i.p, align 8, !tbaa !18
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = tail call noalias ptr @strdup(ptr noundef nonnull %2) #20
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sink = phi ptr [ %i.r, %bb.d ], [ null, %bb.c ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %.sink, ptr %i.s, align 8, !tbaa !19
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i32 %3, ptr %i.t, align 8, !tbaa !20
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define hidden void @namelist_free(ptr nofree noundef captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.d = phi i32 [ %i.l, %.lr.ph ], [ %i.b, %bb.a ]
  %i.e = load ptr, ptr %0, align 8, !tbaa !15
  %i.f = add nsw i32 %i.d, -1                     ; 2 uses
  store i32 %i.f, ptr %i.a, align 8, !tbaa !13
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.g ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !18
  tail call void @free(ptr noundef %i.i) #20
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !19
  tail call void @free(ptr noundef %i.k) #20
  %i.l = load i32, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph, label %._crit_edge, !llvm.loop !0

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.n = load ptr, ptr %0, align 8, !tbaa !15
  tail call void @free(ptr noundef %i.n) #20
  store ptr null, ptr %0, align 8, !tbaa !15
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.o, align 4, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @namelist_find(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !15
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !1

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %indvars.iv ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.f, ptr noundef nonnull dereferenceable(1) %1) #21
  %.not.not = icmp eq i32 %i.g, 0
  br i1 %.not.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.c, %bb.b, %bb.a
  %.2 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %i.e, %bb.c ]
  ret ptr %.2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define hidden ptr @jsc_module_loader(ptr noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2) #8 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 7 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca [1000 x i8], align 16             ; 13 uses
  %i.d = load i32, ptr @cmodule_list.1, align 8, !tbaa !13 ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph.i, label %namelist_find.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = load ptr, ptr @cmodule_list.0, align 8, !tbaa !15
  %wide.trip.count.i = zext nneg i32 %i.d to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %namelist_find.exit, label %bb.c, !llvm.loop !1

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %indvars.iv.i ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.h, ptr noundef nonnull readonly dereferenceable(1) %1) #21
  %.not.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.not.i, label %namelist_find.exit, label %bb.b

namelist_find.exit:                               ; preds = %bb.b, %bb.c, %bb.a
  %.2.i = phi ptr [ null, %bb.a ], [ %i.g, %bb.c ], [ null, %bb.b ] ; 3 uses
  %.not = icmp eq ptr %.2.i, null
  br i1 %.not, label %.loopexit, label %namelist_find.exit.a

namelist_find.exit.a:                             ; preds = %namelist_find.exit
  %3 = load ptr, ptr %.2.i, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %.2.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !19   ; 2 uses
  %i.l = load i32, ptr @init_module_list.1, align 8, !tbaa !13 ; 4 uses
  %i.m = load i32, ptr @init_module_list.2, align 4, !tbaa !14
  %i.n = icmp eq i32 %i.l, %i.m
  %.pre.i = load ptr, ptr @init_module_list.0, align 8, !tbaa !15 ; 2 uses
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %namelist_find.exit.a
  %i.o = ashr i32 %i.l, 1
  %i.p = add i32 %i.l, 4
  %i.q = add i32 %i.p, %i.o                       ; 2 uses
  %i.r = sext i32 %i.q to i64
  %i.s = mul nsw i64 %i.r, 24
  %i.t = tail call ptr @realloc(ptr noundef %.pre.i, i64 noundef %i.s) #19 ; 2 uses
  store ptr %i.t, ptr @init_module_list.0, align 8, !tbaa !15
  store i32 %i.q, ptr @init_module_list.2, align 4, !tbaa !14
  %.pre20.i = load i32, ptr @init_module_list.1, align 8, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %namelist_find.exit.a
  %i.u = phi i32 [ %.pre20.i, %bb.d ], [ %i.l, %namelist_find.exit.a ] ; 2 uses
  %i.v = phi ptr [ %i.t, %bb.d ], [ %.pre.i, %namelist_find.exit.a ]
  %i.w = add nsw i32 %i.u, 1
  store i32 %i.w, ptr @init_module_list.1, align 8, !tbaa !13
  %i.x = sext i32 %i.u to i64
  %i.y = getelementptr inbounds [24 x i8], ptr %i.v, i64 %i.x ; 3 uses
  %i.z = tail call noalias ptr @strdup(ptr noundef readonly %3) #20
  store ptr %i.z, ptr %i.y, align 8, !tbaa !18
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %namelist_add.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = tail call noalias ptr @strdup(ptr noundef nonnull readonly %i.k) #20
  br label %namelist_add.exit

namelist_add.exit:                                ; preds = %bb.e, %bb.f
  %.sink.i = phi ptr [ %i.aa, %bb.f ], [ null, %bb.e ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %.sink.i, ptr %i.ab, align 8, !tbaa !19
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i32 0, ptr %i.ac, align 8, !tbaa !20
  %i.ad = tail call ptr @JS_NewCModule(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @js_module_dummy_init) #20
  br label %bb.q

.loopexit:                                        ; preds = %namelist_find.exit
  %i.ae = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #21 ; 2 uses
  %.not.i39 = icmp ult i64 %i.ae, 3
  br i1 %.not.i39, label %js__has_suffix.exit.thread, label %js__has_suffix.exit

js__has_suffix.exit:                              ; preds = %.loopexit
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %i.ae
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -3 ; 2 uses
  %i.ah = load i16, ptr %i.ag, align 1
  %i.ai = xor i16 %i.ah, 29486
  %i.aj = getelementptr i8, ptr %i.ag, i64 2
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = zext i8 %i.ak to i16
  %i.am = xor i16 %i.al, 111
  %i.an = or i16 %i.ai, %i.am
  %i.ao = icmp ne i16 %i.an, 0
  %i.ap = zext i1 %i.ao to i32
  %.not9.i.not = icmp eq i32 %i.ap, 0
  br i1 %.not9.i.not, label %bb.g, label %js__has_suffix.exit.thread

bb.g:                                             ; preds = %js__has_suffix.exit
  %i.aq = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowReferenceError(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull %1) #20 ; 0 uses
  br label %bb.q

js__has_suffix.exit.thread:                       ; preds = %.loopexit, %js__has_suffix.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.ar = call ptr @js_load_file(ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef nonnull %1) #20 ; 3 uses
  %.not37 = icmp eq ptr %i.ar, null
  br i1 %.not37, label %bb.h, label %bb.i

bb.h:                                             ; preds = %js__has_suffix.exit.thread
  %i.as = call { i64, i64 } (ptr, ptr, ...) @JS_ThrowReferenceError(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull %1) #20 ; 0 uses
  br label %.critedge

bb.i:                                             ; preds = %js__has_suffix.exit.thread
  %i.at = load i64, ptr %i.b, align 8, !tbaa !23
  %i.au = call { i64, i64 } @JS_Eval(ptr noundef %0, ptr noundef nonnull %i.ar, i64 noundef %i.at, ptr noundef nonnull %1, i32 noundef 33) #20 ; 2 uses
  %i.av = extractvalue { i64, i64 } %i.au, 0      ; 3 uses
  %i.aw = extractvalue { i64, i64 } %i.au, 1      ; 3 uses
  call void @js_free(ptr noundef %0, ptr noundef nonnull %i.ar) #20
  %i.ax = and i64 %i.aw, 4294967295
  %i.ay = icmp eq i64 %i.ax, 6
  br i1 %i.ay, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  call fastcc void @get_c_name(ptr noundef %i.c, i64 noundef 1000, ptr noundef nonnull %1)
  %i.az = load i32, ptr @cname_list.1, align 8, !tbaa !13 ; 2 uses
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %.lr.ph.i41, label %namelist_find.exit47.thread

.lr.ph.i41:                                       ; preds = %bb.j
  %i.bb = load ptr, ptr @cname_list.0, align 8, !tbaa !15
  %wide.trip.count.i42 = zext nneg i32 %i.az to i64
  br label %bb.l

bb.k:                                             ; preds = %bb.l
  %indvars.iv.next.i45 = add nuw nsw i64 %indvars.iv.i43, 1 ; 2 uses
  %exitcond.not.i46 = icmp eq i64 %indvars.iv.next.i45, %wide.trip.count.i42
  br i1 %exitcond.not.i46, label %namelist_find.exit47.thread, label %bb.l, !llvm.loop !1

bb.l:                                             ; preds = %bb.k, %.lr.ph.i41
  %indvars.iv.i43 = phi i64 [ 0, %.lr.ph.i41 ], [ %indvars.iv.next.i45, %bb.k ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.bb, i64 %indvars.iv.i43
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !18
  %i.be = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bd, ptr noundef nonnull readonly dereferenceable(1) %i.c) #21
  %.not.not.i44 = icmp eq i32 %i.be, 0
  br i1 %.not.not.i44, label %namelist_find.exit47, label %bb.k

namelist_find.exit47:                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.bf = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #21
  %i.bg = icmp ugt i64 %i.bf, 984
  br i1 %i.bg, label %bb.m, label %bb.n

bb.m:                                             ; preds = %namelist_find.exit47
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 984
  store i8 0, ptr %i.bh, align 8, !tbaa !24
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %namelist_find.exit47
  %i.bi = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 1024, ptr noundef nonnull @.str.27, ptr noundef nonnull %i.c, i32 noundef 1) #20 ; 0 uses
  %i.bj = load i32, ptr @cname_list.1, align 8, !tbaa !13 ; 2 uses
  %i.bk = icmp sgt i32 %i.bj, 0
  br i1 %i.bk, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.n, %namelist_find.exit.i
  %i.bl = phi i32 [ %i.bs, %namelist_find.exit.i ], [ %i.bj, %bb.n ]
  %.015.i = phi i32 [ %i.bq, %namelist_find.exit.i ], [ 1, %bb.n ]
  %i.bm = load ptr, ptr @cname_list.0, align 8, !tbaa !15
  %wide.trip.count.i.i = zext nneg i32 %i.bl to i64
  br label %bb.p

bb.o:                                             ; preds = %bb.p
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %bb.p, !llvm.loop !1

bb.p:                                             ; preds = %bb.o, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.o ] ; 2 uses
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %indvars.iv.i.i
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !18
  %i.bp = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bo, ptr noundef nonnull readonly dereferenceable(1) %i.a) #21
  %.not.not.i.i = icmp eq i32 %i.bp, 0
  br i1 %.not.not.i.i, label %namelist_find.exit.i, label %bb.o

namelist_find.exit.i:                             ; preds = %bb.p
  %i.bq = add nuw nsw i32 %.015.i, 1              ; 2 uses
  %i.br = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 1024, ptr noundef nonnull @.str.27, ptr noundef nonnull %i.c, i32 noundef %i.bq) #20 ; 0 uses
  %i.bs = load i32, ptr @cname_list.1, align 8, !tbaa !13 ; 2 uses
  %i.bt = icmp sgt i32 %i.bs, 0
  br i1 %i.bt, label %.lr.ph.i.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %namelist_find.exit.i, %bb.o, %bb.n
  %i.bu = load i8, ptr %i.a, align 16, !tbaa !24  ; 2 uses
  %.not16.i.i = icmp eq i8 %i.bu, 0
  br i1 %.not16.i.i, label %find_unique_cname.exit, label %.lr.ph.i11.i

.lr.ph.i11.i:                                     ; preds = %.loopexit.i, %.lr.ph.i11.i
  %i.bv = phi i8 [ %i.bx, %.lr.ph.i11.i ], [ %i.bu, %.loopexit.i ]
  %.015.i.i.idx = phi i64 [ %.015.i.i.add, %.lr.ph.i11.i ], [ 0, %.loopexit.i ] ; 3 uses
  %.0914.i.i = phi ptr [ %i.bw, %.lr.ph.i11.i ], [ %i.a, %.loopexit.i ]
  %.015.i.i.ptr = getelementptr inbounds nuw i8, ptr %i.c, i64 %.015.i.i.idx
  %i.bw = getelementptr inbounds nuw i8, ptr %.0914.i.i, i64 1 ; 2 uses
  %.015.i.i.add = add nuw nsw i64 %.015.i.i.idx, 1 ; 2 uses
  store i8 %i.bv, ptr %.015.i.i.ptr, align 1, !tbaa !24
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !24  ; 2 uses
  %i.by = icmp ne i8 %i.bx, 0
  %.not.i.i = icmp samesign ult i64 %.015.i.i.idx, 998
  %or.cond.i.i = select i1 %i.by, i1 %.not.i.i, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i11.i, label %find_unique_cname.exit.loopexit

find_unique_cname.exit.loopexit:                  ; preds = %.lr.ph.i11.i
  %.ptr.le = getelementptr inbounds nuw i8, ptr %i.c, i64 %.015.i.i.add
  br label %find_unique_cname.exit

find_unique_cname.exit:                           ; preds = %find_unique_cname.exit.loopexit, %.loopexit.i
  %.0.lcssa.i.i = phi ptr [ %i.c, %.loopexit.i ], [ %.ptr.le, %find_unique_cname.exit.loopexit ]
  store i8 0, ptr %.0.lcssa.i.i, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %namelist_find.exit47.thread

namelist_find.exit47.thread:                      ; preds = %bb.k, %bb.j, %find_unique_cname.exit
  %i.bz = load ptr, ptr @outfile, align 8, !tbaa !26
  call fastcc void @output_object_code(ptr noundef %0, ptr noundef %i.bz, i64 %i.av, i64 %i.aw, ptr noundef %i.c, i1 noundef zeroext true)
  %i.ca = inttoptr i64 %i.av to ptr
  call void @JS_FreeValue(ptr noundef %0, i64 %i.av, i64 %i.aw) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %bb.q

.critedge:                                        ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %bb.q

bb.q:                                             ; preds = %namelist_add.exit, %namelist_find.exit47.thread, %.critedge, %bb.g
  %.1 = phi ptr [ null, %.critedge ], [ null, %bb.g ], [ %i.ad, %namelist_add.exit ], [ %i.ca, %namelist_find.exit47.thread ]
  ret ptr %.1
}

declare ptr @JS_NewCModule(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: cold nofree noreturn nounwind uwtable
define internal noundef i32 @js_module_dummy_init(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #10 {
bb.a:
  tail call void @abort() #22
  unreachable
}

declare { i64, i64 } @JS_ThrowReferenceError(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

declare ptr @js_load_file(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

declare { i64, i64 } @JS_Eval(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

declare void @js_free(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @get_c_name(ptr noundef nonnull %0, i64 noundef range(i64 1000, 1025) %1, ptr noundef %2) unnamed_addr #11 {
bb.a:
  %i.a = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef 47) #21 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.037 = select i1 %.not, ptr %2, ptr %i.b       ; 4 uses
  %i.c = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %.037, i32 noundef 46) #21 ; 2 uses
  %.not41 = icmp eq ptr %i.c, null
  br i1 %.not41, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.037) #21
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %.037 to i64
  %i.g = sub i64 %i.e, %i.f
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.036 = phi i64 [ %i.g, %bb.c ], [ %i.d, %bb.b ] ; 2 uses
end_hunk_0
