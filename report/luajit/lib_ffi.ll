Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/lib_ffi?download=true
inline.NumInlined: 38
inline.NumDeleted: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.CPState = type { i32, i32, %struct.CPValue, ptr, ptr, ptr, %struct.SBuf, ptr, ptr, ptr, ptr, i32, i32, i32, i32, [7 x i8], i8 }
%struct.CPValue = type { %union.anon.2, i32 }
%union.anon.2 = type { i32 }
%struct.SBuf = type { ptr, ptr, ptr, %struct.MRef }
%struct.MRef = type { i64 }

@lj_lib_init_ffi_meta = internal constant [147 x i8] c"\A49\13\07__index\0A__newindex\04__eq\05__len\04__lt\04__le\08__concat\06__call\05__add\05__sub\05__mul\05__div\05__mod\05__pow\05__unm\0A__tostring\07__pairs\08__ipairs\C3ffi\CB__metatable\FA\FF", align 16
@lj_lib_cf_ffi_meta = internal constant [18 x ptr] [ptr @lj_cf_ffi_meta___index, ptr @lj_cf_ffi_meta___newindex, ptr @lj_cf_ffi_meta___eq, ptr @lj_cf_ffi_meta___len, ptr @lj_cf_ffi_meta___lt, ptr @lj_cf_ffi_meta___le, ptr @lj_cf_ffi_meta___concat, ptr @lj_cf_ffi_meta___call, ptr @lj_cf_ffi_meta___add, ptr @lj_cf_ffi_meta___sub, ptr @lj_cf_ffi_meta___mul, ptr @lj_cf_ffi_meta___div, ptr @lj_cf_ffi_meta___mod, ptr @lj_cf_ffi_meta___pow, ptr @lj_cf_ffi_meta___unm, ptr @lj_cf_ffi_meta___tostring, ptr @lj_cf_ffi_meta___pairs, ptr @lj_cf_ffi_meta___ipairs], align 16
@lj_lib_init_ffi_clib = internal constant [28 x i8] c"\B69\03\07__index\0A__newindex\04__gc\FF", align 16
@lj_lib_cf_ffi_clib = internal constant [3 x ptr] [ptr @lj_cf_ffi_clib___index, ptr @lj_cf_ffi_clib___newindex, ptr @lj_cf_ffi_clib___gc], align 16
@lj_lib_init_ffi_callback = internal constant [24 x i8] c"\B99\03\04free\03set\FC\01\C7__index\FA\FF", align 16
@lj_lib_cf_ffi_callback = internal constant [2 x ptr] [ptr @lj_cf_ffi_callback_free, ptr @lj_cf_ffi_callback_set], align 16
@.str = private unnamed_addr constant [6 x i8] c"Linux\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"x64\00", align 1
@lj_lib_init_ffi = internal constant [136 x i8] c"\BB9\16\04cdef\03new\04cast\06typeof\08typeinfo\06istype\06sizeof\07alignof\08offsetof\05errno\06string\04copy\04fill\03abi\FC\07\C0\FA\08metatype\02gc\FC\05\C0\FA\04load\FC\04\C1C\FA\FC\03\C2os\FA\FC\02\C4arch\FA\FF", align 16
@lj_lib_cf_ffi = internal constant [17 x ptr] [ptr @lj_cf_ffi_cdef, ptr @lj_cf_ffi_new, ptr @lj_cf_ffi_cast, ptr @lj_cf_ffi_typeof, ptr @lj_cf_ffi_typeinfo, ptr @lj_cf_ffi_istype, ptr @lj_cf_ffi_sizeof, ptr @lj_cf_ffi_alignof, ptr @lj_cf_ffi_offsetof, ptr @lj_cf_ffi_errno, ptr @lj_cf_ffi_string, ptr @lj_cf_ffi_copy, ptr @lj_cf_ffi_fill, ptr @lj_cf_ffi_abi, ptr @lj_cf_ffi_metatype, ptr @lj_cf_ffi_gc, ptr @lj_cf_ffi_load], align 16
@lj_obj_itypename = external hidden local_unnamed_addr constant [14 x ptr], align 16
@.str.4 = private unnamed_addr constant [7 x i8] c"C type\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"cdata<%s>: %p\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"ctype<%s>\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"cdata<%s>: %d\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"sib\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"\0564bit\03fpu\06hardfp\02le\04gc64\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"_LOADED\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"ffi\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @luaopen_ffi(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @lj_ctype_init(ptr noundef %0) #8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.d, ptr %i.b, align 8, !tbaa !17
  %i.e = tail call ptr @lj_tab_new(ptr noundef %0, i32 noundef 0, i32 noundef 1) #8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store ptr %i.e, ptr %i.f, align 8, !tbaa !26
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = or i64 %i.g, -1688849860263936
  store i64 %i.h, ptr %i.c, align 8, !tbaa !27
  tail call void @lj_lib_register(ptr noundef %0, ptr noundef null, ptr noundef nonnull @lj_lib_init_ffi_meta, ptr noundef nonnull @lj_lib_cf_ffi_meta) #8
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !27
  %i.l = and i64 %i.k, 140737488355327
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !28
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 688
  store i64 %i.l, ptr %i.p, align 8, !tbaa !29
  tail call void @lj_lib_register(ptr noundef %0, ptr noundef null, ptr noundef nonnull @lj_lib_init_ffi_clib, ptr noundef nonnull @lj_lib_cf_ffi_clib) #8
  tail call void @lj_lib_register(ptr noundef %0, ptr noundef null, ptr noundef nonnull @lj_lib_init_ffi_callback, ptr noundef nonnull @lj_lib_cf_ffi_callback) #8
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !26
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !72
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 120
  %i.u = tail call ptr @lj_tab_setstr(ptr noundef %0, ptr noundef %i.q, ptr noundef nonnull %i.t) #8
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !27
  %i.y = and i64 %i.x, 140737488355327
  %i.z = or disjoint i64 %i.y, -1688849860263936
  store i64 %i.z, ptr %i.u, align 8, !tbaa !27
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !17  ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -8
  store ptr %i.ab, ptr %i.b, align 8, !tbaa !17
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 -16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !27
  %i.ae = and i64 %i.ad, 140737488355327
  %i.af = inttoptr i64 %i.ae to ptr
  tail call void @lj_clib_default(ptr noundef %0, ptr noundef %i.af) #8
  tail call void @lua_pushlstring(ptr noundef %0, ptr noundef nonnull @.str, i64 noundef 5) #8
  tail call void @lua_pushlstring(ptr noundef %0, ptr noundef nonnull @.str.1, i64 noundef 3) #8
  tail call void @lj_lib_register(ptr noundef %0, ptr noundef null, ptr noundef nonnull @lj_lib_init_ffi, ptr noundef nonnull @lj_lib_cf_ffi) #8
  %i.ag = load i64, ptr %i.m, align 8, !tbaa !28
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 272
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !27
  %i.ak = and i64 %i.aj, 140737488355327
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = tail call ptr @lj_str_new(ptr noundef %0, ptr noundef nonnull @.str.13, i64 noundef 7) #8
  %i.an = tail call ptr @lj_tab_getstr(ptr noundef %i.al, ptr noundef %i.am) #8 ; 2 uses
  %.not.i = icmp eq ptr %i.an, null
  br i1 %.not.i, label %ffi_register_module.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !27 ; 2 uses
  %.mask.i = and i64 %i.ao, -140737488355328
  %i.ap = icmp eq i64 %.mask.i, -1688849860263936
  br i1 %i.ap, label %bb.c, label %ffi_register_module.exit

bb.c:                                             ; preds = %bb.b
  %i.aq = and i64 %i.ao, 140737488355327          ; 2 uses
  %i.ar = inttoptr i64 %i.aq to ptr               ; 3 uses
  %i.as = tail call ptr @lj_str_new(ptr noundef nonnull %0, ptr noundef nonnull @.str.14, i64 noundef 3) #8
  %i.at = tail call ptr @lj_tab_setstr(ptr noundef nonnull %0, ptr noundef %i.ar, ptr noundef %i.as) #8
  %i.au = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !27
  store i64 %i.aw, ptr %i.at, align 8, !tbaa !27
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !27  ; 2 uses
  %i.az = and i8 %i.ay, 4
  %.not13.i = icmp eq i8 %i.az, 0
  br i1 %.not13.i, label %ffi_register_module.exit, label %bb.d, !prof !30

bb.d:                                             ; preds = %bb.c
  %i.ba = load i64, ptr %i.m, align 8, !tbaa !28
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = and i8 %i.ay, -5
  store i8 %i.bc, ptr %i.ax, align 8, !tbaa !27
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 64 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !41
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !43
  store i64 %i.aq, ptr %i.bd, align 8, !tbaa !41
  br label %ffi_register_module.exit

ffi_register_module.exit:                         ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  ret i32 1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare hidden ptr @lj_ctype_init(ptr noundef) local_unnamed_addr #2

declare hidden ptr @lj_tab_new(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare hidden void @lj_lib_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare hidden ptr @lj_tab_setstr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare hidden void @lj_clib_default(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lua_pushlstring(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal i32 @lj_cf_ffi_meta___index(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !28
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 392
  %i.g = load i64, ptr %i.f, align 8, !tbaa !44
  %i.h = inttoptr i64 %i.g to ptr                 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %0, ptr %i.i, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !47   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !17
  %i.o = icmp ult ptr %i.l, %i.n
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = load i64, ptr %i.k, align 8, !tbaa !27   ; 2 uses
  %.mask = and i64 %i.p, -140737488355328
  %i.q = icmp eq i64 %.mask, -1548112371908608
  br i1 %i.q, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @lj_err_argt(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 10) #9
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.r = and i64 %i.p, 140737488355327
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = call ptr @lj_cdata_index(ptr noundef nonnull %i.h, ptr noundef %i.s, ptr noundef nonnull %i.l, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #8 ; 2 uses
  %i.u = load i32, ptr %i.a, align 4, !tbaa !46
  %1 = and i32 %i.u, 1
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = call fastcc i32 @ffi_index_meta(ptr noundef nonnull %0, ptr noundef nonnull %i.h, ptr noundef %i.t, i32 noundef 0)
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.w = load ptr, ptr %i.m, align 8, !tbaa !17
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -8
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !48
  %i.z = call i32 @lj_cdata_get(ptr noundef nonnull %i.h, ptr noundef %i.t, ptr noundef nonnull %i.x, ptr noundef %i.y) #8
  %.not19 = icmp eq i32 %i.z, 0
  br i1 %.not19, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = load i64, ptr %i.c, align 8, !tbaa !28
  %i.ab = inttoptr i64 %i.aa to ptr               ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !49
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !50
  %.not20 = icmp ult i64 %i.ad, %i.af
  br i1 %.not20, label %bb.i, label %bb.h, !prof !30

bb.h:                                             ; preds = %bb.g
  %i.ag = call i32 @lj_gc_step(ptr noundef nonnull %0) #8 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h, %bb.g, %bb.e
  %.0 = phi i32 [ %i.v, %bb.e ], [ 1, %bb.g ], [ 1, %bb.h ], [ 1, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @lj_cf_ffi_meta___newindex(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !28
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 392
  %i.g = load i64, ptr %i.f, align 8, !tbaa !44
  %i.h = inttoptr i64 %i.g to ptr                 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %0, ptr %i.i, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !47   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !17
  %i.o = icmp ult ptr %i.l, %i.n
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = load i64, ptr %i.k, align 8, !tbaa !27   ; 2 uses
  %.mask = and i64 %i.p, -140737488355328
  %i.q = icmp eq i64 %.mask, -1548112371908608
  br i1 %i.q, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @lj_err_argt(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 10) #9
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.r = and i64 %i.p, 140737488355327
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.u = call ptr @lj_cdata_index(ptr noundef nonnull %i.h, ptr noundef %i.s, ptr noundef nonnull %i.t, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #8 ; 2 uses
  %i.v = load i32, ptr %i.a, align 4, !tbaa !46   ; 3 uses
  %1 = and i32 %i.v, 1
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = and i32 %i.v, 33554432
  %.not17 = icmp eq i32 %i.w, 0
  br i1 %.not17, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @lj_err_caller(ptr noundef nonnull %0, i32 noundef 3743) #9
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.x = call fastcc i32 @ffi_index_meta(ptr noundef nonnull %0, ptr noundef nonnull %i.h, ptr noundef %i.u, i32 noundef 1)
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !48
  call void @lj_cdata_set(ptr noundef nonnull %i.h, ptr noundef %i.u, ptr noundef %i.y, ptr noundef nonnull %i.l, i32 noundef %i.v) #8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0 = phi i32 [ %i.x, %bb.g ], [ 0, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @lj_cf_ffi_meta___eq(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !27
  %i.e = and i64 %i.d, 140737488355327
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 10
  %i.h = load i8, ptr %i.g, align 2, !tbaa !27
  %i.i = zext i8 %i.h to i32
  %i.j = add nsw i32 %i.i, -162
  %i.k = tail call i32 @lj_carith_op(ptr noundef %0, i32 noundef %i.j) #8
  ret i32 %i.k
}

; Function Attrs: nounwind uwtable
define internal i32 @lj_cf_ffi_meta___len(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !27
  %i.e = and i64 %i.d, 140737488355327
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 10
  %i.h = load i8, ptr %i.g, align 2, !tbaa !27
  %i.i = zext i8 %i.h to i32
  %i.j = add nsw i32 %i.i, -162
  %i.k = tail call i32 @lj_carith_op(ptr noundef %0, i32 noundef %i.j) #8
  ret i32 %i.k
}

; Function Attrs: nounwind uwtable
define internal i32 @lj_cf_ffi_meta___lt(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !27
  %i.e = and i64 %i.d, 140737488355327
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 10
  %i.h = load i8, ptr %i.g, align 2, !tbaa !27
  %i.i = zext i8 %i.h to i32
  %i.j = add nsw i32 %i.i, -162
  %i.k = tail call i32 @lj_carith_op(ptr noundef %0, i32 noundef %i.j) #8
  ret i32 %i.k
}

; Function Attrs: nounwind uwtable
define internal i32 @lj_cf_ffi_meta___le(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !27
  %i.e = and i64 %i.d, 140737488355327
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 10
  %i.h = load i8, ptr %i.g, align 2, !tbaa !27
  %i.i = zext i8 %i.h to i32
  %i.j = add nsw i32 %i.i, -162
  %i.k = tail call i32 @lj_carith_op(ptr noundef %0, i32 noundef %i.j) #8
  ret i32 %i.k
}

; Function Attrs: nounwind uwtable
define internal i32 @lj_cf_ffi_meta___concat(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !27
  %i.e = and i64 %i.d, 140737488355327
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 10
  %i.h = load i8, ptr %i.g, align 2, !tbaa !27
  %i.i = zext i8 %i.h to i32
  %i.j = add nsw i32 %i.i, -162
  %i.k = tail call i32 @lj_carith_op(ptr noundef %0, i32 noundef %i.j) #8
  ret i32 %i.k
}

; Function Attrs: nounwind uwtable
define internal i32 @lj_cf_ffi_meta___call(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !28
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 392
  %i.e = load i64, ptr %i.d, align 8, !tbaa !44
  %i.f = inttoptr i64 %i.e to ptr                 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %0, ptr %i.g, align 8, !tbaa !45
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !47   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !17
  %i.l = icmp ult ptr %i.i, %i.k
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.i, align 8, !tbaa !27   ; 2 uses
  %.mask.i = and i64 %i.m, -140737488355328
  %i.n = icmp eq i64 %.mask.i, -1548112371908608
  br i1 %i.n, label %ffi_checkcdata.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @lj_err_argt(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 10) #9
  unreachable

ffi_checkcdata.exit:                              ; preds = %bb.b
  %i.o = and i64 %i.m, 140737488355327
  %i.p = inttoptr i64 %i.o to ptr                 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 10
  %i.r = load i16, ptr %i.q, align 2, !tbaa !53   ; 2 uses
  %.not31 = icmp eq i16 %i.r, 24                  ; 2 uses
  br i1 %.not31, label %bb.d, label %bb.e

bb.d:                                             ; preds = %ffi_checkcdata.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.t = load i32, ptr %i.s, align 4, !tbaa !46
  br label %bb.f

bb.e:                                             ; preds = %ffi_checkcdata.exit
  %i.u = zext i16 %i.r to i32
  %i.v = tail call i32 @lj_ccall_func(ptr noundef nonnull %0, ptr noundef nonnull %i.p) #8 ; 2 uses
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e, %bb.d
  %.026 = phi i32 [ %i.t, %bb.d ], [ %i.u, %bb.e ] ; 2 uses
  %.025 = phi i32 [ 19, %bb.d ], [ 9, %bb.e ]
  %i.x = load ptr, ptr %i.f, align 8, !tbaa !54
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.pn.in = phi i32 [ %.026, %bb.f ], [ %i.aa, %bb.g ]
  %.pn = zext i32 %.pn.in to i64
  %.0.i = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %.pn
  %i.y = load i32, ptr %.0.i, align 8, !tbaa !56  ; 3 uses
  %i.z = icmp slt i32 %i.y, -1879048192
  %i.aa = and i32 %i.y, 65535                     ; 2 uses
  br i1 %i.z, label %bb.g, label %ctype_raw.exit, !llvm.loop !0

ctype_raw.exit:                                   ; preds = %bb.g
  %.mask = and i32 %i.y, -268435456
  %i.ab = icmp eq i32 %.mask, 536870912
  %spec.select = select i1 %i.ab, i32 %i.aa, i32 %.026 ; 2 uses
  %i.ac = tail call ptr @lj_ctype_meta(ptr noundef nonnull %i.f, i32 noundef %spec.select, i32 noundef %.025) #8 ; 2 uses
  %.not = icmp eq ptr %i.ac, null
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %ctype_raw.exit
  %i.ad = tail call i32 @lj_meta_tailcall(ptr noundef nonnull %0, ptr noundef nonnull %i.ac) #8
  br label %bb.l

bb.i:                                             ; preds = %ctype_raw.exit
  br i1 %.not31, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = tail call ptr @lj_ctype_repr(ptr noundef nonnull %0, i32 noundef %spec.select, ptr noundef null) #8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  tail call void (ptr, i32, ...) @lj_err_callerv(ptr noundef nonnull %0, i32 noundef 3564, ptr noundef nonnull %i.af) #9
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ag = tail call i32 @lj_cf_ffi_new(ptr noundef nonnull %0) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.e, %bb.k, %bb.h
  %.128 = phi i32 [ %i.ad, %bb.h ], [ 1, %bb.k ], [ %i.v, %bb.e ]
end_hunk_0
begin_hunk_1_@lj_cf_ffi_meta___tostring:bb.a

bb.j:                                             ; preds = %ctype_rawchild.exit72
  %i.au = getelementptr inbounds nuw i8, ptr %.052, i64 4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !59 ; 2 uses
  %i.aw = icmp eq i32 %i.av, 8
  %i.ax = icmp ult i32 %i.al, 67108864
  %or.cond = and i1 %i.ax, %i.aw
  br i1 %or.cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ay = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.az = load i64, ptr %i.m, align 8, !tbaa !73
  %i.ba = and i32 %i.al, 8388608
  %i.bb = tail call ptr @lj_ctype_repr_int64(ptr noundef nonnull %0, i64 noundef %i.az, i32 noundef %i.ba) #8
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = or i64 %i.bc, -703687441776640
  store i64 %i.bd, ptr %i.ay, align 8, !tbaa !27
  br label %.thread79

bb.l:                                             ; preds = %bb.j
  %i.be = lshr i32 %i.al, 28
  switch i32 %i.be, label %ctype_rawchild.exit [
    i32 6, label %bb.m
    i32 5, label %bb.n
    i32 2, label %bb.o
  ]

bb.m:                                             ; preds = %bb.l
  %i.bf = load ptr, ptr %.054, align 8, !tbaa !58
  br label %.thread

bb.n:                                             ; preds = %bb.l
  %i.bg = load i32, ptr %.054, align 4, !tbaa !46
  %i.bh = zext i32 %i.bg to i64
  %i.bi = inttoptr i64 %i.bh to ptr
  br label %.thread

bb.o:                                             ; preds = %bb.l
  %i.bj = icmp eq i32 %i.av, 4
  br i1 %i.bj, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bk = load i32, ptr %.054, align 4, !tbaa !46
  %i.bl = zext i32 %i.bk to i64
  %i.bm = inttoptr i64 %i.bl to ptr
  br label %cdata_getptr.exit

bb.q:                                             ; preds = %bb.o
  %i.bn = load ptr, ptr %.054, align 8, !tbaa !58
  br label %cdata_getptr.exit

cdata_getptr.exit:                                ; preds = %bb.p, %bb.q
  %.0.i73 = phi ptr [ %i.bm, %bb.p ], [ %i.bn, %bb.q ]
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %cdata_getptr.exit
  %i.bo = phi i32 [ %i.al, %cdata_getptr.exit ], [ %i.bs, %bb.r ]
  %i.bp = and i32 %i.bo, 65535
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.bq ; 2 uses
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !56 ; 3 uses
  %i.bt = icmp slt i32 %i.bs, -1879048192
  br i1 %i.bt, label %bb.r, label %ctype_rawchild.exit, !llvm.loop !1

ctype_rawchild.exit:                              ; preds = %bb.r, %bb.l
  %i.bu = phi i32 [ %i.al, %bb.l ], [ %i.bs, %bb.r ] ; 2 uses
  %.155 = phi ptr [ %.054, %bb.l ], [ %.0.i73, %bb.r ] ; 2 uses
  %.153 = phi ptr [ %.052, %bb.l ], [ %i.br, %bb.r ]
  %.mask = and i32 %i.bu, -268435456
  %i.bv = icmp eq i32 %.mask, 268435456
  %i.bw = and i32 %i.bu, -134217728
  %i.bx = icmp eq i32 %i.bw, 939524096
  %or.cond69 = or i1 %i.bv, %i.bx
  br i1 %or.cond69, label %bb.s, label %.thread

bb.s:                                             ; preds = %ctype_rawchild.exit
  %i.by = ptrtoint ptr %.153 to i64
  %i.bz = ptrtoint ptr %i.w to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = sdiv exact i64 %i.ca, 24
  %i.cc = trunc i64 %i.cb to i32
  %i.cd = tail call ptr @lj_ctype_meta(ptr noundef nonnull %i.u, i32 noundef %i.cc, i32 noundef 18) #8 ; 2 uses
  %.not = icmp eq ptr %i.cd, null
  br i1 %.not, label %.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ce = tail call i32 @lj_meta_tailcall(ptr noundef nonnull %0, ptr noundef nonnull %i.cd) #8
  br label %bb.v

.thread:                                          ; preds = %bb.s, %bb.m, %bb.n, %ctype_rawchild.exit, %bb.d
  %.259 = phi ptr [ @.str.6, %bb.d ], [ @.str.5, %bb.m ], [ @.str.5, %ctype_rawchild.exit ], [ @.str.7, %bb.n ], [ @.str.5, %bb.s ]
  %.056 = phi i32 [ %i.o, %bb.d ], [ %i.l, %bb.m ], [ %i.l, %ctype_rawchild.exit ], [ %i.l, %bb.n ], [ %i.l, %bb.s ]
  %.4 = phi ptr [ %i.m, %bb.d ], [ %i.bf, %bb.m ], [ %.155, %ctype_rawchild.exit ], [ %i.bi, %bb.n ], [ %.155, %bb.s ]
  %i.cf = tail call ptr @lj_ctype_repr(ptr noundef nonnull %0, i32 noundef %.056, ptr noundef null) #8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.ch = tail call ptr (ptr, ptr, ...) @lj_strfmt_pushf(ptr noundef nonnull %0, ptr noundef nonnull %.259, ptr noundef nonnull %i.cg, ptr noundef %.4) #8 ; 0 uses
  br label %.thread79

.thread79:                                        ; preds = %bb.k, %bb.i, %.thread
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !28
  %i.ck = inttoptr i64 %i.cj to ptr               ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !49
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !50
  %.not67 = icmp ult i64 %i.cm, %i.co
  br i1 %.not67, label %bb.v, label %bb.u, !prof !30

bb.u:                                             ; preds = %.thread79
  %i.cp = tail call i32 @lj_gc_step(ptr noundef nonnull %0) #8 ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %.thread79, %bb.u
  %.363 = phi i32 [ 1, %.thread79 ], [ 1, %bb.u ], [ %i.ce, %bb.t ]
  ret i32 %.363
}

; Function Attrs: nounwind uwtable
define internal i32 @lj_cf_ffi_meta___pairs(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call fastcc i32 @ffi_pairs(ptr noundef %0, i32 noundef 20)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal i32 @lj_cf_ffi_meta___ipairs(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call fastcc i32 @ffi_pairs(ptr noundef %0, i32 noundef 21)
  ret i32 %i.a
}

; Function Attrs: noreturn
declare hidden void @lj_err_argt(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare hidden ptr @lj_cdata_index(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ffi_index_meta(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !54
  %i.b = ptrtoint ptr %2 to i64
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = sdiv exact i64 %i.d, 24
  %i.f = trunc i64 %i.e to i32                    ; 2 uses
  %i.g = tail call ptr @lj_ctype_meta(ptr noundef nonnull %1, i32 noundef %i.f, i32 noundef %3) #8 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !47   ; 3 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.j, %bb.a
  %i.j = tail call ptr @lj_ctype_repr(ptr noundef nonnull %0, i32 noundef %i.f, ptr noundef null) #8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !47
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !27   ; 3 uses
  %i.o = ashr i64 %i.n, 47                        ; 2 uses
  switch i64 %i.o, label %bb.e [
    i64 -5, label %bb.c
    i64 -11, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.p = and i64 %i.n, 140737488355327
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  tail call void (ptr, i32, ...) @lj_err_callerv(ptr noundef nonnull %0, i32 noundef 3629, ptr noundef nonnull %i.k, ptr noundef nonnull %i.r) #9
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.s = and i64 %i.n, 140737488355327
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 10
  %i.v = load i16, ptr %i.u, align 2, !tbaa !27
  %i.w = zext i16 %i.v to i32
  %i.x = tail call ptr @lj_ctype_repr(ptr noundef nonnull %0, i32 noundef %i.w, ptr noundef null) #8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.z = tail call i64 @llvm.umax.i64(i64 %i.o, i64 -14)
  %spec.select = xor i64 %i.z, -1
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr @lj_obj_itypename, i64 %spec.select
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !48
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ac = phi ptr [ %i.y, %bb.d ], [ %i.ab, %bb.e ]
  tail call void (ptr, i32, ...) @lj_err_callerv(ptr noundef nonnull %0, i32 noundef 3682, ptr noundef nonnull %i.k, ptr noundef %i.ac) #9
  unreachable

bb.g:                                             ; preds = %bb.a
  %i.ad = load i64, ptr %i.g, align 8, !tbaa !27
  %.mask = and i64 %i.ad, -140737488355328
  %i.ae = icmp eq i64 %.mask, -1266637395197952
  br i1 %i.ae, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %4 = icmp eq i32 %3, 0
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  br i1 %4, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ag = tail call ptr @lj_meta_tget(ptr noundef nonnull %0, ptr noundef nonnull %i.g, ptr noundef nonnull %i.af) #8 ; 2 uses
  %.not54 = icmp eq ptr %i.ag, null
  br i1 %.not54, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !27 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, -1
  br i1 %i.ai, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !17
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -8
  store i64 %i.ah, ptr %i.al, align 8, !tbaa !27
  br label %bb.n

bb.k:                                             ; preds = %bb.h
  %i.am = tail call ptr @lj_meta_tset(ptr noundef nonnull %0, ptr noundef nonnull %i.g, ptr noundef nonnull %i.af) #8 ; 2 uses
  %.not53 = icmp eq ptr %i.am, null
  br i1 %.not53, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !27
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !27
  br label %bb.n

.critedge:                                        ; preds = %bb.i, %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !17
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !27
  store i64 %i.ar, ptr %i.i, align 8, !tbaa !27
  %i.as = load ptr, ptr %i.ap, align 8, !tbaa !17
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -16
  br label %bb.m

bb.m:                                             ; preds = %.critedge, %bb.g
  %.048 = phi ptr [ %i.g, %bb.g ], [ %i.at, %.critedge ]
  %i.au = tail call i32 @lj_meta_tailcall(ptr noundef nonnull %0, ptr noundef nonnull %.048) #8
  br label %bb.n

bb.n:                                             ; preds = %.thread, %bb.l, %bb.m
  %.2 = phi i32 [ %i.au, %bb.m ], [ 1, %.thread ], [ 0, %bb.l ]
  ret i32 %.2
}

declare hidden i32 @lj_cdata_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare hidden i32 @lj_gc_step(ptr noundef) local_unnamed_addr #2

declare hidden ptr @lj_ctype_meta(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare hidden ptr @lj_ctype_repr(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare hidden void @lj_err_callerv(ptr noundef, i32 noundef, ...) local_unnamed_addr #3

declare hidden ptr @lj_meta_tget(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare hidden ptr @lj_meta_tset(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare hidden i32 @lj_meta_tailcall(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noreturn
declare hidden void @lj_err_caller(ptr noundef, i32 noundef) local_unnamed_addr #3

declare hidden void @lj_cdata_set(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare hidden i32 @lj_carith_op(ptr noundef, i32 noundef) local_unnamed_addr #2

declare hidden i32 @lj_ccall_func(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @lj_cf_ffi_new(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %1 = alloca %struct.CPState, align 8            ; 10 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !28
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 392
  %i.g = load i64, ptr %i.f, align 8, !tbaa !44
  %i.h = inttoptr i64 %i.g to ptr                 ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %0, ptr %i.i, align 8, !tbaa !45
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !47   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !17
  %i.n = icmp ult ptr %i.k, %i.m
  br i1 %i.n, label %bb.b, label %.critedge.i

.critedge.i:                                      ; preds = %bb.b, %bb.a
  tail call void @lj_err_argtype(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.4) #9
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.o = load i64, ptr %i.k, align 8, !tbaa !27   ; 3 uses
  %i.p = ashr i64 %i.o, 47
  switch i64 %i.p, label %.critedge.i [
    i64 -5, label %bb.c
    i64 -11, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %i.q = and i64 %i.o, 140737488355327
  %i.r = inttoptr i64 %i.q to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr %0, ptr %i.s, align 8, !tbaa !64
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 80
  store ptr %i.h, ptr %i.t, align 8, !tbaa !65
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 96
  store ptr %i.u, ptr %i.v, align 8, !tbaa !66
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.u, ptr %i.w, align 8, !tbaa !67
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 88
  store ptr null, ptr %i.x, align 8, !tbaa !68
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 116
  store i32 18, ptr %i.y, align 4, !tbaa !69
  %i.z = call i32 @lj_cparse(ptr noundef nonnull %1) #8 ; 2 uses
  %.not32.i = icmp eq i32 %i.z, 0
  br i1 %.not32.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @lj_err_throw(ptr noundef nonnull %0, i32 noundef %i.z) #9
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !70
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  br label %ffi_checkctype.exit

bb.f:                                             ; preds = %bb.b
  %i.ac = and i64 %i.o, 140737488355327
  %i.ad = inttoptr i64 %i.ac to ptr               ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 10
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !53 ; 2 uses
  %i.ag = icmp eq i16 %i.af, 24
  br i1 %i.ag, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !46
  br label %ffi_checkctype.exit

bb.h:                                             ; preds = %bb.f
  %i.aj = zext i16 %i.af to i32
  br label %ffi_checkctype.exit

ffi_checkctype.exit:                              ; preds = %bb.e, %bb.g, %bb.h
  %.1.i = phi i32 [ %i.ab, %bb.e ], [ %i.aj, %bb.h ], [ %i.ai, %bb.g ] ; 4 uses
  %i.ak = load ptr, ptr %i.h, align 8, !tbaa !54
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %ffi_checkctype.exit
  %.pn.in = phi i32 [ %.1.i, %ffi_checkctype.exit ], [ %i.an, %bb.i ]
  %.pn = zext i32 %.pn.in to i64
  %.0.i = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %.pn ; 4 uses
  %i.al = load i32, ptr %.0.i, align 8, !tbaa !56 ; 2 uses
  %i.am = icmp slt i32 %i.al, -1879048192
  %i.an = and i32 %i.al, 65535
  br i1 %i.am, label %bb.i, label %ctype_raw.exit, !llvm.loop !0

ctype_raw.exit:                                   ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.ao = call i32 @lj_ctype_info(ptr noundef nonnull %i.h, i32 noundef %.1.i, ptr noundef nonnull %i.b) #8 ; 2 uses
  %i.ap = load ptr, ptr %i.j, align 8, !tbaa !47  ; 3 uses
  %i.aq = and i32 %i.ao, 1048576
  %.not = icmp eq i32 %i.aq, 0
  br i1 %.not, label %thread-pre-split, label %bb.j

bb.j:                                             ; preds = %ctype_raw.exit
  %i.ar = load i64, ptr %i.c, align 8, !tbaa !28
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 392
  %i.au = load i64, ptr %i.at, align 8, !tbaa !44
  %i.av = inttoptr i64 %i.au to ptr               ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store ptr %0, ptr %i.aw, align 8, !tbaa !45
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.ay = load ptr, ptr %i.l, align 8, !tbaa !17
  %.not.i = icmp ult ptr %i.ax, %i.ay
  br i1 %.not.i, label %ffi_checkint.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @lj_err_arg(ptr noundef nonnull %0, i32 noundef 2, i32 noundef 551) #9
  unreachable

ffi_checkint.exit:                                ; preds = %bb.j
  %i.az = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
end_hunk_1
