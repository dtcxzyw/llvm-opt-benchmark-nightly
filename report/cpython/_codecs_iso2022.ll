inline.NumInlined: 21
inline.NumDeleted: 15
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.PyModuleDef = type { %struct.PyModuleDef_Base, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr }
%struct.PyModuleDef_Base = type { %struct._object, ptr, i64, ptr }
%struct._object = type { %union.anon, ptr }
%union.anon = type { i64 }

@_cjk_module = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { %union.anon { i64 1407378104778752 }, ptr null }, ptr null, i64 0, ptr null }, ptr @.str, ptr null, i64 128, ptr @_cjk_methods, ptr @_cjk_slots, ptr null, ptr null, ptr @_cjk_free }, align 8
@.str = private unnamed_addr constant [16 x i8] c"_codecs_iso2022\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"getcodec\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_cjk_methods = internal global [2 x { ptr, ptr, i32, [4 x i8], ptr }] [{ ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.1, ptr @getcodec, i32 8, [4 x i8] zeroinitializer, ptr @.str.2 }, { ptr, ptr, i32, [4 x i8], ptr } zeroinitializer], align 16
@PyExc_TypeError = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [32 x i8] c"encoding name must be a string.\00", align 1
@PyExc_LookupError = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [28 x i8] c"no such codec is supported.\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"multibytecodec.codec\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"_multibytecodec\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"__create_codec\00", align 1
@_cjk_slots = internal global [4 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @_cjk_exec }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr inttoptr (i64 2 to ptr) }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr inttoptr (i64 1 to ptr) }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.10 = private unnamed_addr constant [19 x i8] c"multibytecodec.map\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"iso2022_kr\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"iso2022_jp\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"iso2022_jp_1\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"iso2022_jp_2\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"iso2022_jp_2004\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"iso2022_jp_3\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"iso2022_jp_ext\00", align 1
@iso2022_kr_config = internal constant { i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @iso2022_kr_designations }, align 8
@iso2022_kr_designations = internal constant [2 x { i8, i8, i8, [5 x i8], ptr, ptr, ptr }] [{ i8, i8, i8, [5 x i8], ptr, ptr, ptr } { i8 -61, i8 1, i8 2, [5 x i8] zeroinitializer, ptr @ksx1001_init, ptr @ksx1001_decoder, ptr @ksx1001_encoder }, { i8, i8, i8, [5 x i8], ptr, ptr, ptr } zeroinitializer], align 16
@.str.20 = private unnamed_addr constant [11 x i8] c"_codecs_kr\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"__map_cp949\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"__map_ksx1001\00", align 1
@PyExc_ValueError = external local_unnamed_addr global ptr, align 8
@.str.23 = private unnamed_addr constant [28 x i8] c"map data must be a Capsule.\00", align 1
@iso2022_jp_config = internal constant { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @iso2022_jp_designations }, align 8
@iso2022_jp_designations = internal constant [4 x { i8, i8, i8, [5 x i8], ptr, ptr, ptr }] [{ i8, i8, i8, [5 x i8], ptr, ptr, ptr } { i8 -62, i8 0, i8 2, [5 x i8] zeroinitializer, ptr @jisx0208_init, ptr @jisx0208_decoder, ptr @jisx0208_encoder }, { i8, i8, i8, [5 x i8], ptr, ptr, ptr } { i8 74, i8 0, i8 1, [5 x i8] zeroinitializer, ptr null, ptr @jisx0201_r_decoder, ptr @jisx0201_r_encoder }, { i8, i8, i8, [5 x i8], ptr, ptr, ptr } { i8 -64, i8 0, i8 2, [5 x i8] zeroinitializer, ptr @jisx0208_init, ptr @jisx0208_decoder, ptr @jisx0208_encoder }, { i8, i8, i8, [5 x i8], ptr, ptr, ptr } zeroinitializer], align 16
@.str.26 = private unnamed_addr constant [11 x i8] c"_codecs_jp\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"__map_jisxcommon\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"__map_jisx0208\00", align 1
@iso2022_jp_1_config = internal constant { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @iso2022_jp_1_designations }, align 8
@iso2022_jp_1_designations = internal constant [5 x { i8, i8, i8, [5 x i8], ptr, ptr, ptr }] [{ i8, i8, i8, [5 x i8], ptr, ptr, ptr } { i8 -62, i8 0, i8 2, [5 x i8] zeroinitializer, ptr @jisx0208_init, ptr @jisx0208_decoder, ptr @jisx0208_encoder }, { i8, i8, i8, [5 x i8], ptr, ptr, ptr } { i8 -60, i8 0, i8 2, [5 x i8] zeroinitializer, ptr @jisx0212_init, ptr @jisx0212_decoder, ptr @jisx0212_encoder }, { i8, i8, i8, [5 x i8], ptr, ptr, ptr } { i8 74, i8 0, i8 1, [5 x i8] zeroinitializer, ptr null, ptr @jisx0201_r_decoder, ptr @jisx0201_r_encoder }, { i8, i8, i8, [5 x i8], ptr, ptr, ptr } { i8 -64, i8 0, i8 2, [5 x i8] zeroinitializer, ptr @jisx0208_init, ptr @jisx0208_decoder, ptr @jisx0208_encoder }, { i8, i8, i8, [5 x i8], ptr, ptr, ptr } zeroinitializer], align 16
@.str.31 = private unnamed_addr constant [15 x i8] c"__map_jisx0212\00", align 1
@iso2022_jp_2_config = internal constant { i32, [4 x i8], ptr } { i32 7, [4 x i8] zeroinitializer, ptr @iso2022_jp_2_designations }, align 8
@iso2022_jp_2_designations = internal constant [9 x { i8, i8, i8, [5 x i8], ptr, ptr, ptr }] [{ i8, i8, i8, [5 x i8], ptr, ptr, ptr } { i8 -62, i8 0, i8 2, [5 x i8] zeroinitializer, ptr @jisx0208_init, ptr @jisx0208_decoder, ptr @jisx0208_encoder }, { i8, i8, i8, [5 x i8], ptr, ptr, ptr } { i8 -60, i8 0, i8 2, [5 x i8] zeroinitializer, ptr @jisx0212_init, ptr @jisx0212_decoder, ptr @jisx0212_encoder }, { i8, i8, i8, [5 x i8], ptr, ptr, ptr } { i8 -61, i8 0, i8 2, [5 x i8] zeroinitializer, ptr @ksx1001_init, ptr @ksx1001_decoder, ptr @ksx1001_encoder }, { i8, i8, i8, [5 x i8], ptr, ptr, ptr } { i8 -63, i8 0, i8 2, [5 x i8] zeroinitializer, ptr @gb2312_init, ptr @gb2312_decoder, ptr @gb2312_encoder }, { i8, i8, i8, [5 x i8], ptr, ptr, ptr } { i8 74, i8 0, i8 1, [5 x i8] zeroinitializer, ptr null, ptr @jisx0201_r_decoder, ptr @jisx0201_r_encoder }, { i8, i8, i8, [5 x i8], ptr, ptr, ptr } { i8 -64, i8 0, i8 2, [5 x i8] zeroinitializer, ptr @jisx0208_init, ptr @jisx0208_decoder, ptr @jisx0208_encoder }, { i8, i8, i8, [5 x i8], ptr, ptr, ptr } { i8 65, i8 2, i8 1, [5 x i8] zeroinitializer, ptr null, ptr @dummy_decoder, ptr @dummy_encoder }, { i8, i8, i8, [5 x i8], ptr, ptr, ptr } { i8 70, i8 2, i8 1, [5 x i8] zeroinitializer, ptr null, ptr @dummy_decoder, ptr @dummy_encoder }, { i8, i8, i8, [5 x i8], ptr, ptr, ptr } zeroinitializer], align 16
@.str.34 = private unnamed_addr constant [11 x i8] c"_codecs_cn\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"__map_gbcommon\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"__map_gb2312\00", align 1
@iso2022_jp_2004_config = internal constant { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @iso2022_jp_2004_designations }, align 8
@iso2022_jp_2004_designations = internal constant [5 x { i8, i8, i8, [5 x i8], ptr, ptr, ptr }] [{ i8, i8, i8, [5 x i8], ptr, ptr, ptr } { i8 -47, i8 0, i8 2, [5 x i8] zeroinitializer, ptr @jisx0213_init, ptr @jisx0213_2004_1_decoder, ptr @jisx0213_2004_1_encoder_paironly }, { i8, i8, i8, [5 x i8], ptr, ptr, ptr } { i8 -62, i8 0, i8 2, [5 x i8] zeroinitializer, ptr @jisx0208_init, ptr @jisx0208_decoder, ptr @jisx0208_encoder }, { i8, i8, i8, [5 x i8], ptr, ptr, ptr } { i8 -47, i8 0, i8 2, [5 x i8] zeroinitializer, ptr @jisx0213_init, ptr @jisx0213_2004_1_decoder, ptr @jisx0213_2004_1_encoder }, { i8, i8, i8, [5 x i8], ptr, ptr, ptr } { i8 -48, i8 0, i8 2, [5 x i8] zeroinitializer, ptr @jisx0213_init, ptr @jisx0213_2004_2_decoder, ptr @jisx0213_2004_2_encoder }, { i8, i8, i8, [5 x i8], ptr, ptr, ptr } zeroinitializer], align 16
@.str.39 = private unnamed_addr constant [19 x i8] c"__map_jisx0213_bmp\00", align 1
@.str.40 = private unnamed_addr constant [21 x i8] c"__map_jisx0213_1_bmp\00", align 1
@.str.41 = private unnamed_addr constant [21 x i8] c"__map_jisx0213_2_bmp\00", align 1
@.str.42 = private unnamed_addr constant [19 x i8] c"__map_jisx0213_emp\00", align 1
@.str.43 = private unnamed_addr constant [21 x i8] c"__map_jisx0213_1_emp\00", align 1
@.str.44 = private unnamed_addr constant [21 x i8] c"__map_jisx0213_2_emp\00", align 1
@.str.45 = private unnamed_addr constant [20 x i8] c"__map_jisx0213_pair\00", align 1
@jisx0213_pair_encmap = internal global ptr null, align 8
@jisx0213_pair_decmap = internal global ptr null, align 8
@iso2022_jp_3_config = internal constant { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @iso2022_jp_3_designations }, align 8
@iso2022_jp_3_designations = internal constant [5 x { i8, i8, i8, [5 x i8], ptr, ptr, ptr }] [{ i8, i8, i8, [5 x i8], ptr, ptr, ptr } { i8 -49, i8 0, i8 2, [5 x i8] zeroinitializer, ptr @jisx0213_init, ptr @jisx0213_2000_1_decoder, ptr @jisx0213_2000_1_encoder_paironly }, { i8, i8, i8, [5 x i8], ptr, ptr, ptr } { i8 -62, i8 0, i8 2, [5 x i8] zeroinitializer, ptr @jisx0208_init, ptr @jisx0208_decoder, ptr @jisx0208_encoder }, { i8, i8, i8, [5 x i8], ptr, ptr, ptr } { i8 -49, i8 0, i8 2, [5 x i8] zeroinitializer, ptr @jisx0213_init, ptr @jisx0213_2000_1_decoder, ptr @jisx0213_2000_1_encoder }, { i8, i8, i8, [5 x i8], ptr, ptr, ptr } { i8 -48, i8 0, i8 2, [5 x i8] zeroinitializer, ptr @jisx0213_init, ptr @jisx0213_2000_2_decoder, ptr @jisx0213_2000_2_encoder }, { i8, i8, i8, [5 x i8], ptr, ptr, ptr } zeroinitializer], align 16
@iso2022_jp_ext_config = internal constant { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @iso2022_jp_ext_designations }, align 8
@iso2022_jp_ext_designations = internal constant [6 x { i8, i8, i8, [5 x i8], ptr, ptr, ptr }] [{ i8, i8, i8, [5 x i8], ptr, ptr, ptr } { i8 -62, i8 0, i8 2, [5 x i8] zeroinitializer, ptr @jisx0208_init, ptr @jisx0208_decoder, ptr @jisx0208_encoder }, { i8, i8, i8, [5 x i8], ptr, ptr, ptr } { i8 -60, i8 0, i8 2, [5 x i8] zeroinitializer, ptr @jisx0212_init, ptr @jisx0212_decoder, ptr @jisx0212_encoder }, { i8, i8, i8, [5 x i8], ptr, ptr, ptr } { i8 74, i8 0, i8 1, [5 x i8] zeroinitializer, ptr null, ptr @jisx0201_r_decoder, ptr @jisx0201_r_encoder }, { i8, i8, i8, [5 x i8], ptr, ptr, ptr } { i8 73, i8 0, i8 1, [5 x i8] zeroinitializer, ptr null, ptr @jisx0201_k_decoder, ptr @jisx0201_k_encoder }, { i8, i8, i8, [5 x i8], ptr, ptr, ptr } { i8 -64, i8 0, i8 2, [5 x i8] zeroinitializer, ptr @jisx0208_init, ptr @jisx0208_decoder, ptr @jisx0208_encoder }, { i8, i8, i8, [5 x i8], ptr, ptr, ptr } zeroinitializer], align 16

; Function Attrs: nounwind uwtable
define ptr @PyInit__codecs_iso2022() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @PyModuleDef_Init(ptr noundef nonnull @_cjk_module) #16
  ret ptr %i.a
}

declare ptr @PyModuleDef_Init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @_cjk_free(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @PyModule_GetState(ptr noundef %0) #16 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !10
  tail call void @PyMem_Free(ptr noundef %i.c) #16
  %i.d = getelementptr i8, ptr %i.a, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17
  tail call void @PyMem_Free(ptr noundef %i.e) #16
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @getcodec(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.b = getelementptr i8, ptr %.val, i64 168
  %.val22 = load i64, ptr %i.b, align 8, !tbaa !21
  %i.c = and i64 %.val22, 268435456
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !31
  tail call void @PyErr_SetString(ptr noundef %i.d, ptr noundef nonnull @.str.4) #16
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyUnicode_AsUTF8(ptr noundef nonnull %1) #16 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr @PyModule_GetState(ptr noundef %0) #16 ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !32   ; 2 uses
  %.not2125 = icmp sgt i32 %i.i, 0
  br i1 %.not2125, label %_getcodec.exit.lr.ph, label %._crit_edge

_getcodec.exit.lr.ph:                             ; preds = %bb.d
  %i.j = getelementptr i8, ptr %i.g, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !17
  %wide.trip.count = zext nneg i32 %i.i to i64
  br label %_getcodec.exit

bb.e:                                             ; preds = %_getcodec.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %_getcodec.exit, !llvm.loop !33

_getcodec.exit:                                   ; preds = %_getcodec.exit.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %_getcodec.exit.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.l = getelementptr [80 x i8], ptr %i.k, i64 %indvars.iv ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !35
  %i.n = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(1) %i.e) #17
  %.not20 = icmp eq i32 %i.n, 0
  br i1 %.not20, label %bb.f, label %bb.e

bb.f:                                             ; preds = %_getcodec.exit
  %i.o = tail call ptr @PyImport_ImportModuleAttrString(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #16 ; 9 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = tail call ptr @PyMem_Malloc(i64 noundef 16) #16 ; 5 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %i.l, ptr %i.q, align 8, !tbaa !38
  %i.s = load i32, ptr %0, align 8, !tbaa !40     ; 2 uses
  %i.t = icmp ugt i32 %i.s, -1073741825
  br i1 %i.t, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = add nuw i32 %i.s, 1
  store i32 %i.u, ptr %0, align 8, !tbaa !40
  br label %bb.l

bb.j:                                             ; preds = %bb.g
  %i.v = tail call ptr @PyErr_NoMemory() #16      ; 0 uses
  %i.w = load i32, ptr %i.o, align 8, !tbaa !40   ; 2 uses
  %.not.i22.i = icmp slt i32 %i.w, 0
  br i1 %.not.i22.i, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = add nsw i32 %i.w, -1                     ; 2 uses
  store i32 %i.x, ptr %i.o, align 8, !tbaa !40
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %Py_DECREF.exit23.sink.split.i, label %.thread

bb.l:                                             ; preds = %bb.i, %bb.h
  %i.z = getelementptr i8, ptr %i.q, i64 8
  store ptr %0, ptr %i.z, align 8, !tbaa !41
  %i.aa = tail call ptr @PyCapsule_New(ptr noundef nonnull %i.q, ptr noundef nonnull @.str.6, ptr noundef nonnull @destroy_codec_capsule) #16 ; 5 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  tail call void @PyMem_Free(ptr noundef nonnull %i.q) #16
  %i.ac = load i32, ptr %i.o, align 8, !tbaa !40  ; 2 uses
  %.not.i20.i = icmp slt i32 %i.ac, 0
  br i1 %.not.i20.i, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ad = add nsw i32 %i.ac, -1                   ; 2 uses
  store i32 %i.ad, ptr %i.o, align 8, !tbaa !40
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %Py_DECREF.exit23.sink.split.i, label %.thread

bb.o:                                             ; preds = %bb.l
  %i.af = tail call ptr @PyObject_CallOneArg(ptr noundef nonnull %i.o, ptr noundef nonnull %i.aa) #16 ; 3 uses
  %i.ag = load i32, ptr %i.aa, align 8, !tbaa !40 ; 2 uses
  %.not.i18.i = icmp slt i32 %i.ag, 0
  br i1 %.not.i18.i, label %Py_DECREF.exit19.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ah = add nsw i32 %i.ag, -1                   ; 2 uses
  store i32 %i.ah, ptr %i.aa, align 8, !tbaa !40
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.q, label %Py_DECREF.exit19.i

bb.q:                                             ; preds = %bb.p
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.aa) #16
  br label %Py_DECREF.exit19.i

Py_DECREF.exit19.i:                               ; preds = %bb.q, %bb.p, %bb.o
  %i.aj = load i32, ptr %i.o, align 8, !tbaa !40  ; 2 uses
  %.not.i.i = icmp slt i32 %i.aj, 0
  br i1 %.not.i.i, label %.thread, label %bb.r

bb.r:                                             ; preds = %Py_DECREF.exit19.i
  %i.ak = add nsw i32 %i.aj, -1                   ; 2 uses
  store i32 %i.ak, ptr %i.o, align 8, !tbaa !40
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %Py_DECREF.exit23.sink.split.i, label %.thread

Py_DECREF.exit23.sink.split.i:                    ; preds = %bb.r, %bb.n, %bb.k
  %.2.ph.i = phi ptr [ null, %bb.n ], [ null, %bb.k ], [ %i.af, %bb.r ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.o) #16
  br label %.thread

._crit_edge:                                      ; preds = %bb.e, %bb.d
  %i.am = load ptr, ptr @PyExc_LookupError, align 8, !tbaa !31
  tail call void @PyErr_SetString(ptr noundef %i.am, ptr noundef nonnull @.str.5) #16
  br label %.thread

.thread:                                          ; preds = %Py_DECREF.exit23.sink.split.i, %bb.r, %Py_DECREF.exit19.i, %bb.n, %bb.m, %bb.k, %bb.j, %bb.f, %bb.c, %._crit_edge, %bb.b
  %.5 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ null, %._crit_edge ], [ %.2.ph.i, %Py_DECREF.exit23.sink.split.i ], [ null, %bb.n ], [ null, %bb.m ], [ null, %bb.k ], [ null, %bb.j ], [ %i.af, %bb.r ], [ %i.af, %Py_DECREF.exit19.i ], [ null, %bb.f ]
  ret ptr %.5
}

declare void @PyErr_SetString(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @PyUnicode_AsUTF8(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare ptr @PyModule_GetState(ptr noundef) local_unnamed_addr #1

declare ptr @PyCapsule_New(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @destroy_codec_capsule(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @PyCapsule_GetPointer(ptr noundef %0, ptr noundef nonnull @.str.6) #16 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !41   ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !40   ; 2 uses
  %.not.i = icmp slt i32 %i.d, 0
  br i1 %.not.i, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add nsw i32 %i.d, -1                     ; 2 uses
  store i32 %i.e, ptr %i.c, align 8, !tbaa !40
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %Py_DECREF.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #16
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.a, %bb.b, %bb.c
  tail call void @PyMem_Free(ptr noundef nonnull %i.a) #16
  ret void
}

declare void @PyMem_Free(ptr noundef) local_unnamed_addr #1

declare ptr @PyObject_CallOneArg(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyImport_ImportModuleAttrString(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyMem_Malloc(i64 noundef) local_unnamed_addr #1

declare ptr @PyErr_NoMemory() local_unnamed_addr #1

declare void @_Py_Dealloc(ptr noundef) local_unnamed_addr #1

declare ptr @PyCapsule_GetPointer(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @_cjk_exec(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 8 uses
  %i.b = tail call ptr @PyModule_GetState(ptr noundef %0) #16 ; 15 uses
  store i32 0, ptr %i.b, align 8, !tbaa !42
  %i.c = tail call ptr @PyMem_Calloc(i64 noundef 0, i64 noundef 24) #16 ; 2 uses
  %i.d = getelementptr i8, ptr %i.b, i64 8        ; 2 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !10
  %i.e = icmp eq ptr %i.c, null
  br i1 %i.e, label %register_maps.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.b, i64 4        ; 2 uses
  store i32 7, ptr %i.f, align 4, !tbaa !32
  %i.g = tail call ptr @PyMem_Calloc(i64 noundef 7, i64 noundef 80) #16 ; 12 uses
  %i.h = getelementptr i8, ptr %i.b, i64 16       ; 8 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !17
  %i.i = icmp eq ptr %i.g, null
  br i1 %i.i, label %register_maps.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr @.str.11, ptr %i.g, align 8, !tbaa !43
  %.sroa.254.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @iso2022_kr_config, ptr %.sroa.254.0..sroa_idx.i.i, align 8, !tbaa !44
  %.sroa.355.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr @iso2022_codec_init, ptr %.sroa.355.0..sroa_idx.i.i, align 8, !tbaa !44
  %.sroa.456.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr @iso2022_encode, ptr %.sroa.456.0..sroa_idx.i.i, align 8, !tbaa !44
  %.sroa.557.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr @iso2022_encode_init, ptr %.sroa.557.0..sroa_idx.i.i, align 8, !tbaa !44
  %.sroa.658.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr @iso2022_encode_reset, ptr %.sroa.658.0..sroa_idx.i.i, align 8, !tbaa !44
  %.sroa.759.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store ptr @iso2022_decode, ptr %.sroa.759.0..sroa_idx.i.i, align 8, !tbaa !44
  %.sroa.860.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store ptr @iso2022_decode_init, ptr %.sroa.860.0..sroa_idx.i.i, align 8, !tbaa !44
  %.sroa.961.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  store ptr @iso2022_decode_reset, ptr %.sroa.961.0..sroa_idx.i.i, align 8, !tbaa !44
  %.sroa.1062.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  store ptr null, ptr %.sroa.1062.0..sroa_idx.i.i, align 8, !tbaa !45
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !17   ; 10 uses
  %i.k = getelementptr i8, ptr %i.j, i64 80
  store ptr @.str.12, ptr %i.k, align 8, !tbaa !43
  %.sroa.244.0..sroa_idx.i.i = getelementptr i8, ptr %i.j, i64 88
  store ptr @iso2022_jp_config, ptr %.sroa.244.0..sroa_idx.i.i, align 8, !tbaa !44
  %.sroa.345.0..sroa_idx.i.i = getelementptr i8, ptr %i.j, i64 96
  store ptr @iso2022_codec_init, ptr %.sroa.345.0..sroa_idx.i.i, align 8, !tbaa !44
  %.sroa.446.0..sroa_idx.i.i = getelementptr i8, ptr %i.j, i64 104
  store ptr @iso2022_encode, ptr %.sroa.446.0..sroa_idx.i.i, align 8, !tbaa !44
  %.sroa.547.0..sroa_idx.i.i = getelementptr i8, ptr %i.j, i64 112
  store ptr @iso2022_encode_init, ptr %.sroa.547.0..sroa_idx.i.i, align 8, !tbaa !44
  %.sroa.648.0..sroa_idx.i.i = getelementptr i8, ptr %i.j, i64 120
  store ptr @iso2022_encode_reset, ptr %.sroa.648.0..sroa_idx.i.i, align 8, !tbaa !44
  %.sroa.749.0..sroa_idx.i.i = getelementptr i8, ptr %i.j, i64 128
  store ptr @iso2022_decode, ptr %.sroa.749.0..sroa_idx.i.i, align 8, !tbaa !44
  %.sroa.850.0..sroa_idx.i.i = getelementptr i8, ptr %i.j, i64 136
  store ptr @iso2022_decode_init, ptr %.sroa.850.0..sroa_idx.i.i, align 8, !tbaa !44
  %.sroa.951.0..sroa_idx.i.i = getelementptr i8, ptr %i.j, i64 144
  store ptr @iso2022_decode_reset, ptr %.sroa.951.0..sroa_idx.i.i, align 8, !tbaa !44
  %.sroa.1052.0..sroa_idx.i.i = getelementptr i8, ptr %i.j, i64 152
  store ptr null, ptr %.sroa.1052.0..sroa_idx.i.i, align 8, !tbaa !45
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !17   ; 10 uses
  %i.m = getelementptr i8, ptr %i.l, i64 160
  store ptr @.str.13, ptr %i.m, align 8, !tbaa !43
  %.sroa.234.0..sroa_idx.i.i = getelementptr i8, ptr %i.l, i64 168
  store ptr @iso2022_jp_1_config, ptr %.sroa.234.0..sroa_idx.i.i, align 8, !tbaa !44
  %.sroa.335.0..sroa_idx.i.i = getelementptr i8, ptr %i.l, i64 176
  store ptr @iso2022_codec_init, ptr %.sroa.335.0..sroa_idx.i.i, align 8, !tbaa !44
  %.sroa.436.0..sroa_idx.i.i = getelementptr i8, ptr %i.l, i64 184
  store ptr @iso2022_encode, ptr %.sroa.436.0..sroa_idx.i.i, align 8, !tbaa !44
  %.sroa.537.0..sroa_idx.i.i = getelementptr i8, ptr %i.l, i64 192
  store ptr @iso2022_encode_init, ptr %.sroa.537.0..sroa_idx.i.i, align 8, !tbaa !44
  %.sroa.638.0..sroa_idx.i.i = getelementptr i8, ptr %i.l, i64 200
  store ptr @iso2022_encode_reset, ptr %.sroa.638.0..sroa_idx.i.i, align 8, !tbaa !44
  %.sroa.739.0..sroa_idx.i.i = getelementptr i8, ptr %i.l, i64 208
  store ptr @iso2022_decode, ptr %.sroa.739.0..sroa_idx.i.i, align 8, !tbaa !44
  %.sroa.840.0..sroa_idx.i.i = getelementptr i8, ptr %i.l, i64 216
  store ptr @iso2022_decode_init, ptr %.sroa.840.0..sroa_idx.i.i, align 8, !tbaa !44
  %.sroa.941.0..sroa_idx.i.i = getelementptr i8, ptr %i.l, i64 224
  store ptr @iso2022_decode_reset, ptr %.sroa.941.0..sroa_idx.i.i, align 8, !tbaa !44
  %.sroa.1042.0..sroa_idx.i.i = getelementptr i8, ptr %i.l, i64 232
  store ptr null, ptr %.sroa.1042.0..sroa_idx.i.i, align 8, !tbaa !45
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !17   ; 10 uses
  %i.o = getelementptr i8, ptr %i.n, i64 240
  store ptr @.str.14, ptr %i.o, align 8, !tbaa !43
  %.sroa.224.0..sroa_idx.i.i = getelementptr i8, ptr %i.n, i64 248
  store ptr @iso2022_jp_2_config, ptr %.sroa.224.0..sroa_idx.i.i, align 8, !tbaa !44
  %.sroa.325.0..sroa_idx.i.i = getelementptr i8, ptr %i.n, i64 256
  store ptr @iso2022_codec_init, ptr %.sroa.325.0..sroa_idx.i.i, align 8, !tbaa !44
  %.sroa.426.0..sroa_idx.i.i = getelementptr i8, ptr %i.n, i64 264
  store ptr @iso2022_encode, ptr %.sroa.426.0..sroa_idx.i.i, align 8, !tbaa !44
  %.sroa.527.0..sroa_idx.i.i = getelementptr i8, ptr %i.n, i64 272
  store ptr @iso2022_encode_init, ptr %.sroa.527.0..sroa_idx.i.i, align 8, !tbaa !44
  %.sroa.628.0..sroa_idx.i.i = getelementptr i8, ptr %i.n, i64 280
  store ptr @iso2022_encode_reset, ptr %.sroa.628.0..sroa_idx.i.i, align 8, !tbaa !44
  %.sroa.729.0..sroa_idx.i.i = getelementptr i8, ptr %i.n, i64 288
  store ptr @iso2022_decode, ptr %.sroa.729.0..sroa_idx.i.i, align 8, !tbaa !44
  %.sroa.830.0..sroa_idx.i.i = getelementptr i8, ptr %i.n, i64 296
  store ptr @iso2022_decode_init, ptr %.sroa.830.0..sroa_idx.i.i, align 8, !tbaa !44
  %.sroa.931.0..sroa_idx.i.i = getelementptr i8, ptr %i.n, i64 304
  store ptr @iso2022_decode_reset, ptr %.sroa.931.0..sroa_idx.i.i, align 8, !tbaa !44
  %.sroa.1032.0..sroa_idx.i.i = getelementptr i8, ptr %i.n, i64 312
  store ptr null, ptr %.sroa.1032.0..sroa_idx.i.i, align 8, !tbaa !45
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !17   ; 10 uses
  %i.q = getelementptr i8, ptr %i.p, i64 320
  store ptr @.str.15, ptr %i.q, align 8, !tbaa !43
  %.sroa.214.0..sroa_idx.i.i = getelementptr i8, ptr %i.p, i64 328
  store ptr @iso2022_jp_2004_config, ptr %.sroa.214.0..sroa_idx.i.i, align 8, !tbaa !44
  %.sroa.315.0..sroa_idx.i.i = getelementptr i8, ptr %i.p, i64 336
  store ptr @iso2022_codec_init, ptr %.sroa.315.0..sroa_idx.i.i, align 8, !tbaa !44
  %.sroa.416.0..sroa_idx.i.i = getelementptr i8, ptr %i.p, i64 344
  store ptr @iso2022_encode, ptr %.sroa.416.0..sroa_idx.i.i, align 8, !tbaa !44
  %.sroa.517.0..sroa_idx.i.i = getelementptr i8, ptr %i.p, i64 352
  store ptr @iso2022_encode_init, ptr %.sroa.517.0..sroa_idx.i.i, align 8, !tbaa !44
  %.sroa.618.0..sroa_idx.i.i = getelementptr i8, ptr %i.p, i64 360
  store ptr @iso2022_encode_reset, ptr %.sroa.618.0..sroa_idx.i.i, align 8, !tbaa !44
  %.sroa.719.0..sroa_idx.i.i = getelementptr i8, ptr %i.p, i64 368
  store ptr @iso2022_decode, ptr %.sroa.719.0..sroa_idx.i.i, align 8, !tbaa !44
  %.sroa.820.0..sroa_idx.i.i = getelementptr i8, ptr %i.p, i64 376
  store ptr @iso2022_decode_init, ptr %.sroa.820.0..sroa_idx.i.i, align 8, !tbaa !44
  %.sroa.921.0..sroa_idx.i.i = getelementptr i8, ptr %i.p, i64 384
  store ptr @iso2022_decode_reset, ptr %.sroa.921.0..sroa_idx.i.i, align 8, !tbaa !44
  %.sroa.1022.0..sroa_idx.i.i = getelementptr i8, ptr %i.p, i64 392
  store ptr null, ptr %.sroa.1022.0..sroa_idx.i.i, align 8, !tbaa !45
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !17   ; 10 uses
  %i.s = getelementptr i8, ptr %i.r, i64 400
  store ptr @.str.16, ptr %i.s, align 8, !tbaa !43
  %.sroa.24.0..sroa_idx.i.i = getelementptr i8, ptr %i.r, i64 408
  store ptr @iso2022_jp_3_config, ptr %.sroa.24.0..sroa_idx.i.i, align 8, !tbaa !44
  %.sroa.35.0..sroa_idx.i.i = getelementptr i8, ptr %i.r, i64 416
  store ptr @iso2022_codec_init, ptr %.sroa.35.0..sroa_idx.i.i, align 8, !tbaa !44
  %.sroa.46.0..sroa_idx.i.i = getelementptr i8, ptr %i.r, i64 424
  store ptr @iso2022_encode, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !tbaa !44
  %.sroa.57.0..sroa_idx.i.i = getelementptr i8, ptr %i.r, i64 432
  store ptr @iso2022_encode_init, ptr %.sroa.57.0..sroa_idx.i.i, align 8, !tbaa !44
  %.sroa.68.0..sroa_idx.i.i = getelementptr i8, ptr %i.r, i64 440
  store ptr @iso2022_encode_reset, ptr %.sroa.68.0..sroa_idx.i.i, align 8, !tbaa !44
  %.sroa.79.0..sroa_idx.i.i = getelementptr i8, ptr %i.r, i64 448
  store ptr @iso2022_decode, ptr %.sroa.79.0..sroa_idx.i.i, align 8, !tbaa !44
  %.sroa.810.0..sroa_idx.i.i = getelementptr i8, ptr %i.r, i64 456
  store ptr @iso2022_decode_init, ptr %.sroa.810.0..sroa_idx.i.i, align 8, !tbaa !44
  %.sroa.911.0..sroa_idx.i.i = getelementptr i8, ptr %i.r, i64 464
  store ptr @iso2022_decode_reset, ptr %.sroa.911.0..sroa_idx.i.i, align 8, !tbaa !44
  %.sroa.1012.0..sroa_idx.i.i = getelementptr i8, ptr %i.r, i64 472
  store ptr null, ptr %.sroa.1012.0..sroa_idx.i.i, align 8, !tbaa !45
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !17   ; 10 uses
  %i.u = getelementptr i8, ptr %i.t, i64 480
  store ptr @.str.17, ptr %i.u, align 8, !tbaa !43
  %.sroa.2.0..sroa_idx.i.i = getelementptr i8, ptr %i.t, i64 488
  store ptr @iso2022_jp_ext_config, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !44
  %.sroa.3.0..sroa_idx.i.i = getelementptr i8, ptr %i.t, i64 496
  store ptr @iso2022_codec_init, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !tbaa !44
  %.sroa.4.0..sroa_idx.i.i = getelementptr i8, ptr %i.t, i64 504
  store ptr @iso2022_encode, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !44
  %.sroa.5.0..sroa_idx.i.i = getelementptr i8, ptr %i.t, i64 512
  store ptr @iso2022_encode_init, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !44
  %.sroa.6.0..sroa_idx.i.i = getelementptr i8, ptr %i.t, i64 520
  store ptr @iso2022_encode_reset, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !tbaa !44
  %.sroa.7.0..sroa_idx.i.i = getelementptr i8, ptr %i.t, i64 528
  store ptr @iso2022_decode, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !tbaa !44
  %.sroa.8.0..sroa_idx.i.i = getelementptr i8, ptr %i.t, i64 536
  store ptr @iso2022_decode_init, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !tbaa !44
  %.sroa.9.0..sroa_idx.i.i = getelementptr i8, ptr %i.t, i64 544
  store ptr @iso2022_decode_reset, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !tbaa !44
  %.sroa.10.0..sroa_idx.i.i = getelementptr i8, ptr %i.t, i64 552
  store ptr null, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !tbaa !45
  %i.v = load i32, ptr %i.f, align 4, !tbaa !32   ; 3 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph.i.i, label %add_codecs.exit.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.x = load ptr, ptr %i.h, align 8, !tbaa !17   ; 9 uses
  %wide.trip.count.i.i = zext nneg i32 %i.v to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 7     ; 3 uses
  %i.y = icmp ult i32 %i.v, 8
  br i1 %i.y, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 2147483640
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.7, %bb.d ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.7, %bb.d ]
  %i.z = getelementptr [80 x i8], ptr %i.x, i64 %indvars.iv.i.i
  %i.aa = getelementptr i8, ptr %i.z, i64 72
  store ptr %i.b, ptr %i.aa, align 8, !tbaa !46
  %i.ab = getelementptr [80 x i8], ptr %i.x, i64 %indvars.iv.i.i
  %i.ac = getelementptr i8, ptr %i.ab, i64 152
  store ptr %i.b, ptr %i.ac, align 8, !tbaa !46
  %i.ad = getelementptr [80 x i8], ptr %i.x, i64 %indvars.iv.i.i
  %i.ae = getelementptr i8, ptr %i.ad, i64 232
  store ptr %i.b, ptr %i.ae, align 8, !tbaa !46
  %i.af = getelementptr [80 x i8], ptr %i.x, i64 %indvars.iv.i.i
  %i.ag = getelementptr i8, ptr %i.af, i64 312
  store ptr %i.b, ptr %i.ag, align 8, !tbaa !46
  %i.ah = getelementptr [80 x i8], ptr %i.x, i64 %indvars.iv.i.i
  %i.ai = getelementptr i8, ptr %i.ah, i64 392
  store ptr %i.b, ptr %i.ai, align 8, !tbaa !46
  %i.aj = getelementptr [80 x i8], ptr %i.x, i64 %indvars.iv.i.i
  %i.ak = getelementptr i8, ptr %i.aj, i64 472
  store ptr %i.b, ptr %i.ak, align 8, !tbaa !46
  %i.al = getelementptr [80 x i8], ptr %i.x, i64 %indvars.iv.i.i
  %i.am = getelementptr i8, ptr %i.al, i64 552
  store ptr %i.b, ptr %i.am, align 8, !tbaa !46
  %i.an = getelementptr [80 x i8], ptr %i.x, i64 %indvars.iv.i.i
  %i.ao = getelementptr i8, ptr %i.an, i64 632
  store ptr %i.b, ptr %i.ao, align 8, !tbaa !46
  %indvars.iv.next.i.i.7 = add nuw nsw i64 %indvars.iv.i.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %add_codecs.exit.i.loopexit.unr-lcssa, label %bb.d, !llvm.loop !47

add_codecs.exit.i.loopexit.unr-lcssa:             ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %add_codecs.exit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %add_codecs.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.7, %add_codecs.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod2 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod2)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i.epil, %bb.e ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %i.ap = getelementptr [80 x i8], ptr %i.x, i64 %indvars.iv.i.i.epil
  %i.aq = getelementptr i8, ptr %i.ap, i64 72
  store ptr %i.b, ptr %i.aq, align 8, !tbaa !46
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %add_codecs.exit.i, label %bb.e, !llvm.loop !48

add_codecs.exit.i:                                ; preds = %add_codecs.exit.i.loopexit.unr-lcssa, %bb.e, %bb.c
  %i.ar = load i32, ptr %i.b, align 8, !tbaa !42
  %.not19.i = icmp sgt i32 %i.ar, 0
  br i1 %.not19.i, label %.lr.ph.i, label %register_maps.exit

.lr.ph.i:                                         ; preds = %add_codecs.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.av = load i32, ptr %i.b, align 8, !tbaa !42
  %i.aw = sext i32 %i.av to i64
  %.not.i = icmp slt i64 %indvars.iv.next.i, %i.aw
  br i1 %.not.i, label %bb.g, label %register_maps.exit, !llvm.loop !50

bb.g:                                             ; preds = %bb.f, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.f ] ; 2 uses
  %i.ax = load ptr, ptr %i.d, align 8, !tbaa !10
  %i.ay = getelementptr [24 x i8], ptr %i.ax, i64 %indvars.iv.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  store <4 x i8> <i8 95, i8 95, i8 109, i8 97>, ptr %i.a, align 16
  store i8 112, ptr %i.as, align 4
  store i8 95, ptr %i.at, align 1
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !51
  %i.ba = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.au, ptr noundef nonnull dereferenceable(1) %i.az) #16 ; 0 uses
  %i.bb = call ptr @PyCapsule_New(ptr noundef nonnull %i.ay, ptr noundef nonnull @.str.10, ptr noundef null) #16
  %i.bc = call i32 @PyModule_Add(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef %i.bb) #16
  %i.bd = icmp sgt i32 %i.bc, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br i1 %i.bd, label %bb.f, label %register_maps.exit

register_maps.exit:                               ; preds = %bb.f, %bb.g, %bb.a, %bb.b, %add_codecs.exit.i
  %.3.i = phi i32 [ -1, %bb.b ], [ -1, %bb.a ], [ 0, %add_codecs.exit.i ], [ -1, %bb.g ], [ 0, %bb.f ]
  ret i32 %.3.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #5

declare i32 @PyModule_Add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyMem_Calloc(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @iso2022_codec_init(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !54   ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !57
  %.not10 = icmp eq i8 %i.e, 0
  br i1 %.not10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.011 = phi ptr [ %i.i, %bb.c ], [ %i.d, %bb.a ] ; 2 uses
  %i.f = getelementptr i8, ptr %.011, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !59   ; 2 uses
  %.not8 = icmp eq ptr %i.g, null
  br i1 %.not8, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = tail call i32 %i.g(ptr noundef %0) #16
  %.not9 = icmp eq i32 %i.h, 0
  br i1 %.not9, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.i = getelementptr i8, ptr %.011, i64 32      ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !tbaa !57
  %.not = icmp eq i8 %i.j, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !60

._crit_edge:                                      ; preds = %bb.b, %bb.c, %bb.a
  %.06 = phi i32 [ 0, %bb.a ], [ 0, %bb.c ], [ -1, %bb.b ]
  ret i32 %.06
}

; Function Attrs: nounwind uwtable
define internal range(i64 -3, 2) i64 @iso2022_encode(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4, i64 noundef %5, ptr nofree noundef captures(none) %6, i64 noundef %7, i32 noundef %8) #0 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 13 uses
  %i.b = alloca i64, align 8                      ; 16 uses
  %i.c = load i64, ptr %4, align 8, !tbaa !61     ; 2 uses
  %i.d = icmp slt i64 %i.c, %5
  br i1 %i.d, label %.lr.ph199, label %.thread184

.lr.ph199:                                        ; preds = %bb.a
  %i.e = getelementptr i8, ptr %1, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 4 uses
  %.not152 = trunc i32 %8 to i1
  %i.g = getelementptr i8, ptr %0, i64 1          ; 2 uses
  %i.h = getelementptr i8, ptr %0, i64 4          ; 9 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph199, %bb.bb
  %i.i = phi i64 [ %i.c, %.lr.ph199 ], [ %i.gg, %bb.bb ] ; 3 uses
  %.0138198 = phi i64 [ %7, %.lr.ph199 ], [ %.7, %bb.bb ] ; 10 uses
  switch i32 %2, label %bb.e [
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %3, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !40
  %i.l = zext i8 %i.k to i32
  br label %PyUnicode_READ.exit

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr [2 x i8], ptr %3, i64 %i.i
  %i.n = load i16, ptr %i.m, align 2, !tbaa !62
  %i.o = zext i16 %i.n to i32
  br label %PyUnicode_READ.exit

bb.e:                                             ; preds = %bb.b
  %i.p = getelementptr [4 x i8], ptr %3, i64 %i.i
  %i.q = load i32, ptr %i.p, align 4, !tbaa !6
  br label %PyUnicode_READ.exit

PyUnicode_READ.exit:                              ; preds = %bb.c, %bb.d, %bb.e
  %.0.i = phi i32 [ %i.l, %bb.c ], [ %i.o, %bb.d ], [ %i.q, %bb.e ] ; 4 uses
  %i.r = icmp ult i32 %.0.i, 128
  br i1 %i.r, label %bb.f, label %bb.n

bb.f:                                             ; preds = %PyUnicode_READ.exit
  %i.s = load i8, ptr %0, align 1, !tbaa !40
  %.not159 = icmp eq i8 %i.s, 66
  br i1 %.not159, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = icmp slt i64 %.0138198, 3
  br i1 %i.t, label %.thread184, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = load ptr, ptr %6, align 8, !tbaa !43
  store i8 27, ptr %i.u, align 1, !tbaa !40
  %i.v = load ptr, ptr %6, align 8, !tbaa !43
  %i.w = getelementptr i8, ptr %i.v, i64 1
  store i8 40, ptr %i.w, align 1, !tbaa !40
  %i.x = load ptr, ptr %6, align 8, !tbaa !43
  %i.y = getelementptr i8, ptr %i.x, i64 2
  store i8 66, ptr %i.y, align 1, !tbaa !40
  store i8 66, ptr %0, align 1, !tbaa !40
  %i.z = load ptr, ptr %6, align 8, !tbaa !43
  %i.aa = getelementptr i8, ptr %i.z, i64 3
  store ptr %i.aa, ptr %6, align 8, !tbaa !43
  %i.ab = add nsw i64 %.0138198, -3
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %.1139 = phi i64 [ %i.ab, %bb.h ], [ %.0138198, %bb.f ] ; 3 uses
  %i.ac = load i8, ptr %i.h, align 1, !tbaa !40
  %.not160 = trunc i8 %i.ac to i1
  br i1 %.not160, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ad = icmp slt i64 %.1139, 1
  br i1 %i.ad, label %.thread184, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = load ptr, ptr %6, align 8, !tbaa !43
  store i8 15, ptr %i.ae, align 1, !tbaa !40
  %i.af = load i8, ptr %i.h, align 1, !tbaa !40
  %i.ag = and i8 %i.af, -2
  store i8 %i.ag, ptr %i.h, align 1, !tbaa !40
  %i.ah = load ptr, ptr %6, align 8, !tbaa !43
  %i.ai = getelementptr i8, ptr %i.ah, i64 1
  store ptr %i.ai, ptr %6, align 8, !tbaa !43
  %i.aj = add nsw i64 %.1139, -1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  %.2140 = phi i64 [ %i.aj, %bb.k ], [ %.1139, %bb.i ] ; 2 uses
  %i.ak = icmp slt i64 %.2140, 1
  br i1 %i.ak, label %.thread184, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = trunc nuw nsw i32 %.0.i to i8
  %i.am = load ptr, ptr %6, align 8, !tbaa !43
  store i8 %i.al, ptr %i.am, align 1, !tbaa !40
  %i.an = load i64, ptr %4, align 8, !tbaa !61
  %i.ao = add i64 %i.an, 1                        ; 2 uses
  store i64 %i.ao, ptr %4, align 8, !tbaa !61
  %i.ap = load ptr, ptr %6, align 8, !tbaa !43
  %i.aq = getelementptr i8, ptr %i.ap, i64 1
  store ptr %i.aq, ptr %6, align 8, !tbaa !43
  %i.ar = add nsw i64 %.2140, -1
  br label %bb.bb, !llvm.loop !63

bb.n:                                             ; preds = %PyUnicode_READ.exit
  %i.as = load ptr, ptr %i.e, align 8, !tbaa !53
  %i.at = getelementptr i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !54 ; 3 uses
  %i.av = load i8, ptr %i.au, align 8, !tbaa !57
  %.not191 = icmp eq i8 %i.av, 0
  br i1 %.not191, label %.thread184, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n
  br i1 %.not152, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %select.unfold.us
  %.0137192.us = phi ptr [ %i.bo, %select.unfold.us ], [ %i.au, %.lr.ph ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i32 %.0.i, ptr %i.a, align 4, !tbaa !6
  store i32 0, ptr %i.f, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i64 1, ptr %i.b, align 8, !tbaa !61
  %i.aw = getelementptr i8, ptr %.0137192.us, i64 24 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !64
  %i.ay = call zeroext i16 %i.ax(ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #16 ; 2 uses
  switch i16 %i.ay, label %.split.us [
    i16 -2, label %bb.o
    i16 -1, label %select.unfold.us
  ]

bb.o:                                             ; preds = %.lr.ph.split.us
  %i.az = load i64, ptr %4, align 8, !tbaa !61    ; 2 uses
  %i.ba = sub i64 %5, %i.az
  %i.bb = icmp slt i64 %i.ba, 2
  br i1 %i.bb, label %PyUnicode_READ.exit163.us.a, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bc = add i64 %i.az, 1                        ; 3 uses
  switch i32 %2, label %bb.s [
    i32 1, label %bb.r
    i32 2, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p
  %i.bd = getelementptr [2 x i8], ptr %3, i64 %i.bc
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !62
  %i.bf = zext i16 %i.be to i32
  br label %PyUnicode_READ.exit163.us

bb.r:                                             ; preds = %bb.p
  %i.bg = getelementptr i8, ptr %3, i64 %i.bc
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !40
  %i.bi = zext i8 %i.bh to i32
  br label %PyUnicode_READ.exit163.us

bb.s:                                             ; preds = %bb.p
  %i.bj = getelementptr [4 x i8], ptr %3, i64 %i.bc
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !6
  br label %PyUnicode_READ.exit163.us

PyUnicode_READ.exit163.us:                        ; preds = %bb.s, %bb.r, %bb.q
  %.0.i162.us = phi i32 [ %i.bi, %bb.r ], [ %i.bf, %bb.q ], [ %i.bk, %bb.s ]
  store i32 %.0.i162.us, ptr %i.f, align 4, !tbaa !6
  br label %PyUnicode_READ.exit163.us.a

PyUnicode_READ.exit163.us.a:                      ; preds = %bb.o, %PyUnicode_READ.exit163.us
  %storemerge.us = phi i64 [ 2, %PyUnicode_READ.exit163.us ], [ -1, %bb.o ]
  store i64 %storemerge.us, ptr %i.b, align 8, !tbaa !61
  %i.bl = load ptr, ptr %i.aw, align 8, !tbaa !64
  %i.bm = call zeroext i16 %i.bl(ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #16 ; 2 uses
  %.not153.us = icmp eq i16 %i.bm, -1
  %i.bn = load i64, ptr %i.b, align 8
  br i1 %.not153.us, label %select.unfold.us, label %.split.us

select.unfold.us:                                 ; preds = %PyUnicode_READ.exit163.us.a, %.lr.ph.split.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.bo = getelementptr i8, ptr %.0137192.us, i64 32 ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 8, !tbaa !57
  %.not.us = icmp eq i8 %i.bp, 0
  br i1 %.not.us, label %.thread184, label %.lr.ph.split.us, !llvm.loop !65

.lr.ph.split:                                     ; preds = %.lr.ph, %select.unfold
  %.0137192 = phi ptr [ %i.ci, %select.unfold ], [ %i.au, %.lr.ph ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i32 %.0.i, ptr %i.a, align 4, !tbaa !6
  store i32 0, ptr %i.f, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i64 1, ptr %i.b, align 8, !tbaa !61
  %i.bq = getelementptr i8, ptr %.0137192, i64 24 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !64
  %i.bs = call zeroext i16 %i.br(ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #16 ; 2 uses
  switch i16 %i.bs, label %.split.us [
    i16 -2, label %bb.t
    i16 -1, label %select.unfold
  ]

bb.t:                                             ; preds = %.lr.ph.split
  %i.bt = load i64, ptr %4, align 8, !tbaa !61    ; 2 uses
  %i.bu = sub i64 %5, %i.bt
  %i.bv = icmp slt i64 %i.bu, 2
  br i1 %i.bv, label %.split197.us, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bw = add i64 %i.bt, 1                        ; 3 uses
  switch i32 %2, label %bb.x [
    i32 1, label %bb.v
    i32 2, label %bb.w
  ]

bb.v:                                             ; preds = %bb.u
  %i.bx = getelementptr i8, ptr %3, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !40
  %i.bz = zext i8 %i.by to i32
  br label %bb.y

bb.w:                                             ; preds = %bb.u
  %i.ca = getelementptr [2 x i8], ptr %3, i64 %i.bw
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !62
  %i.cc = zext i16 %i.cb to i32
  br label %bb.y

bb.x:                                             ; preds = %bb.u
  %i.cd = getelementptr [4 x i8], ptr %3, i64 %i.bw
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !6
  br label %bb.y

bb.y:                                             ; preds = %bb.v, %bb.w, %bb.x
  %.0.i162 = phi i32 [ %i.bz, %bb.v ], [ %i.cc, %bb.w ], [ %i.ce, %bb.x ]
  store i32 %.0.i162, ptr %i.f, align 4, !tbaa !6
  store i64 2, ptr %i.b, align 8, !tbaa !61
  %i.cf = load ptr, ptr %i.bq, align 8, !tbaa !64
  %i.cg = call zeroext i16 %i.cf(ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #16 ; 2 uses
  %.not153 = icmp eq i16 %i.cg, -1
  %i.ch = load i64, ptr %i.b, align 8
  br i1 %.not153, label %select.unfold, label %.split.us

.split197.us:                                     ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %.thread184

select.unfold:                                    ; preds = %bb.y, %.lr.ph.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.ci = getelementptr i8, ptr %.0137192, i64 32 ; 2 uses
  %i.cj = load i8, ptr %i.ci, align 8, !tbaa !57
  %.not = icmp eq i8 %i.cj, 0
  br i1 %.not, label %.thread184, label %.lr.ph.split, !llvm.loop !65

.split.us:                                        ; preds = %.lr.ph.split, %bb.y, %.lr.ph.split.us, %PyUnicode_READ.exit163.us.a
  %.us-phi = phi ptr [ %.0137192.us, %.lr.ph.split.us ], [ %.0137192.us, %PyUnicode_READ.exit163.us.a ], [ %.0137192, %bb.y ], [ %.0137192, %.lr.ph.split ] ; 14 uses
  %.us-phi194 = phi i16 [ %i.ay, %.lr.ph.split.us ], [ %i.bm, %PyUnicode_READ.exit163.us.a ], [ %i.bs, %.lr.ph.split ], [ %i.cg, %bb.y ] ; 3 uses
  %.us-phi195 = phi i64 [ 1, %.lr.ph.split.us ], [ %i.bn, %PyUnicode_READ.exit163.us.a ], [ 1, %.lr.ph.split ], [ %i.ch, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %.pr = load i8, ptr %.us-phi, align 8, !tbaa !57 ; 3 uses
  %.not154 = icmp eq i8 %.pr, 0
  br i1 %.not154, label %.thread184, label %bb.z

bb.z:                                             ; preds = %.split.us
  %i.ck = getelementptr i8, ptr %.us-phi, i64 1
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !66
  switch i8 %i.cl, label %.thread184 [
    i8 0, label %bb.aa
    i8 1, label %bb.am
  ]

bb.aa:                                            ; preds = %bb.z
  %i.cm = load i8, ptr %i.h, align 1, !tbaa !40
  %.not157 = trunc i8 %i.cm to i1
  br i1 %.not157, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.cn = icmp slt i64 %.0138198, 1
  br i1 %i.cn, label %.thread184, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.co = load ptr, ptr %6, align 8, !tbaa !43
  store i8 15, ptr %i.co, align 1, !tbaa !40
  %i.cp = load i8, ptr %i.h, align 1, !tbaa !40
  %i.cq = and i8 %i.cp, -2
  store i8 %i.cq, ptr %i.h, align 1, !tbaa !40
  %i.cr = load ptr, ptr %6, align 8, !tbaa !43
  %i.cs = getelementptr i8, ptr %i.cr, i64 1
  store ptr %i.cs, ptr %6, align 8, !tbaa !43
  %i.ct = add nsw i64 %.0138198, -1
  %.pre = load i8, ptr %.us-phi, align 8, !tbaa !57
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.aa
  %i.cu = phi i8 [ %.pre, %bb.ac ], [ %.pr, %bb.aa ] ; 2 uses
  %.3141 = phi i64 [ %i.ct, %bb.ac ], [ %.0138198, %bb.aa ] ; 7 uses
  %i.cv = load i8, ptr %0, align 1, !tbaa !40
  %.not158 = icmp eq i8 %i.cv, %i.cu
  br i1 %.not158, label %bb.av, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cw = getelementptr i8, ptr %.us-phi, i64 2
  %i.cx = load i8, ptr %i.cw, align 2, !tbaa !67
  %i.cy = icmp eq i8 %i.cx, 1
  br i1 %i.cy, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.cz = icmp slt i64 %.3141, 3
  br i1 %i.cz, label %.thread184, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.da = load ptr, ptr %6, align 8, !tbaa !43
  store i8 27, ptr %i.da, align 1, !tbaa !40
  %i.db = load ptr, ptr %6, align 8, !tbaa !43
  %i.dc = getelementptr i8, ptr %i.db, i64 1
  store i8 40, ptr %i.dc, align 1, !tbaa !40
  %i.dd = load i8, ptr %.us-phi, align 8, !tbaa !57
  %i.de = and i8 %i.dd, 127
  %i.df = load ptr, ptr %6, align 8, !tbaa !43
  %i.dg = getelementptr i8, ptr %i.df, i64 2
  store i8 %i.de, ptr %i.dg, align 1, !tbaa !40
  %i.dh = load i8, ptr %.us-phi, align 8, !tbaa !57
  store i8 %i.dh, ptr %0, align 1, !tbaa !40
  %i.di = load ptr, ptr %6, align 8, !tbaa !43
  %i.dj = getelementptr i8, ptr %i.di, i64 3
  store ptr %i.dj, ptr %6, align 8, !tbaa !43
  %i.dk = add nsw i64 %.3141, -3
  br label %bb.av

bb.ah:                                            ; preds = %bb.ae
  %i.dl = icmp eq i8 %i.cu, -62
  br i1 %i.dl, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.dm = icmp slt i64 %.3141, 3
  br i1 %i.dm, label %.thread184, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dn = load ptr, ptr %6, align 8, !tbaa !43
  store i8 27, ptr %i.dn, align 1, !tbaa !40
  %i.do = load ptr, ptr %6, align 8, !tbaa !43
  %i.dp = getelementptr i8, ptr %i.do, i64 1
  store i8 36, ptr %i.dp, align 1, !tbaa !40
  %i.dq = load i8, ptr %.us-phi, align 8, !tbaa !57
  %i.dr = and i8 %i.dq, 127
  %i.ds = load ptr, ptr %6, align 8, !tbaa !43
  %i.dt = getelementptr i8, ptr %i.ds, i64 2
  store i8 %i.dr, ptr %i.dt, align 1, !tbaa !40
  %i.du = load i8, ptr %.us-phi, align 8, !tbaa !57
  store i8 %i.du, ptr %0, align 1, !tbaa !40
  %i.dv = load ptr, ptr %6, align 8, !tbaa !43
  %i.dw = getelementptr i8, ptr %i.dv, i64 3
  store ptr %i.dw, ptr %6, align 8, !tbaa !43
  %i.dx = add nsw i64 %.3141, -3
  br label %bb.av

bb.ak:                                            ; preds = %bb.ah
  %i.dy = icmp slt i64 %.3141, 4
  br i1 %i.dy, label %.thread184, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dz = load ptr, ptr %6, align 8, !tbaa !43
  store i8 27, ptr %i.dz, align 1, !tbaa !40
  %i.ea = load ptr, ptr %6, align 8, !tbaa !43
  %i.eb = getelementptr i8, ptr %i.ea, i64 1
  store i8 36, ptr %i.eb, align 1, !tbaa !40
  %i.ec = load ptr, ptr %6, align 8, !tbaa !43
  %i.ed = getelementptr i8, ptr %i.ec, i64 2
  store i8 40, ptr %i.ed, align 1, !tbaa !40
  %i.ee = load i8, ptr %.us-phi, align 8, !tbaa !57
  %i.ef = and i8 %i.ee, 127
  %i.eg = load ptr, ptr %6, align 8, !tbaa !43
  %i.eh = getelementptr i8, ptr %i.eg, i64 3
  store i8 %i.ef, ptr %i.eh, align 1, !tbaa !40
  %i.ei = load i8, ptr %.us-phi, align 8, !tbaa !57
  store i8 %i.ei, ptr %0, align 1, !tbaa !40
  %i.ej = load ptr, ptr %6, align 8, !tbaa !43
  %i.ek = getelementptr i8, ptr %i.ej, i64 4
  store ptr %i.ek, ptr %6, align 8, !tbaa !43
  %i.el = add nsw i64 %.3141, -4
  br label %bb.av

bb.am:                                            ; preds = %bb.z
  %i.em = load i8, ptr %i.g, align 1, !tbaa !40
  %.not155 = icmp eq i8 %i.em, %.pr
  br i1 %.not155, label %bb.as, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.en = getelementptr i8, ptr %.us-phi, i64 2
  %i.eo = load i8, ptr %i.en, align 2, !tbaa !67
  %i.ep = icmp eq i8 %i.eo, 1
  br i1 %i.ep, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.eq = icmp slt i64 %.0138198, 3
  br i1 %i.eq, label %.thread184, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.er = load ptr, ptr %6, align 8, !tbaa !43
  store i8 27, ptr %i.er, align 1, !tbaa !40
  br label %.sink.split

bb.aq:                                            ; preds = %bb.an
  %i.es = icmp slt i64 %.0138198, 4
  br i1 %i.es, label %.thread184, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.et = load ptr, ptr %6, align 8, !tbaa !43
  store i8 27, ptr %i.et, align 1, !tbaa !40
  %i.eu = load ptr, ptr %6, align 8, !tbaa !43
  %i.ev = getelementptr i8, ptr %i.eu, i64 1
  store i8 36, ptr %i.ev, align 1, !tbaa !40
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ar, %bb.ap
  %.sink260 = phi i64 [ 1, %bb.ap ], [ 2, %bb.ar ]
  %.sink256 = phi i64 [ 2, %bb.ap ], [ 3, %bb.ar ]
  %.sink251 = phi i64 [ 3, %bb.ap ], [ 4, %bb.ar ]
  %.sink = phi i64 [ -3, %bb.ap ], [ -4, %bb.ar ]
  %i.ew = load ptr, ptr %6, align 8, !tbaa !43
  %i.ex = getelementptr i8, ptr %i.ew, i64 %.sink260
  store i8 41, ptr %i.ex, align 1, !tbaa !40
  %i.ey = load i8, ptr %.us-phi, align 8, !tbaa !57
  %i.ez = and i8 %i.ey, 127
  %i.fa = load ptr, ptr %6, align 8, !tbaa !43
  %i.fb = getelementptr i8, ptr %i.fa, i64 %.sink256
  store i8 %i.ez, ptr %i.fb, align 1, !tbaa !40
  %i.fc = load i8, ptr %.us-phi, align 8, !tbaa !57
  store i8 %i.fc, ptr %i.g, align 1, !tbaa !40
  %i.fd = load ptr, ptr %6, align 8, !tbaa !43
  %i.fe = getelementptr i8, ptr %i.fd, i64 %.sink251
  store ptr %i.fe, ptr %6, align 8, !tbaa !43
  %i.ff = add nsw i64 %.0138198, %.sink
  br label %bb.as

bb.as:                                            ; preds = %.sink.split, %bb.am
  %.4142 = phi i64 [ %.0138198, %bb.am ], [ %i.ff, %.sink.split ] ; 3 uses
  %i.fg = load i8, ptr %i.h, align 1, !tbaa !40
  %.not156 = trunc i8 %i.fg to i1
  br i1 %.not156, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fh = icmp slt i64 %.4142, 1
  br i1 %i.fh, label %.thread184, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fi = load ptr, ptr %6, align 8, !tbaa !43
  store i8 14, ptr %i.fi, align 1, !tbaa !40
  %i.fj = load i8, ptr %i.h, align 1, !tbaa !40
  %i.fk = or i8 %i.fj, 1
  store i8 %i.fk, ptr %i.h, align 1, !tbaa !40
  %i.fl = load ptr, ptr %6, align 8, !tbaa !43
  %i.fm = getelementptr i8, ptr %i.fl, i64 1
  store ptr %i.fm, ptr %6, align 8, !tbaa !43
  %i.fn = add nsw i64 %.4142, -1
  br label %bb.av

bb.av:                                            ; preds = %bb.as, %bb.au, %bb.ad, %bb.aj, %bb.al, %bb.ag
  %.5143 = phi i64 [ %i.dk, %bb.ag ], [ %i.dx, %bb.aj ], [ %i.el, %bb.al ], [ %.3141, %bb.ad ], [ %.4142, %bb.as ], [ %i.fn, %bb.au ] ; 3 uses
  %i.fo = getelementptr i8, ptr %.us-phi, i64 2
  %i.fp = load i8, ptr %i.fo, align 2, !tbaa !67
  %i.fq = icmp eq i8 %i.fp, 1
  br i1 %i.fq, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %bb.av
  %i.fr = icmp slt i64 %.5143, 1
  br i1 %i.fr, label %.thread184, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fs = trunc i16 %.us-phi194 to i8
  %i.ft = load ptr, ptr %6, align 8, !tbaa !43
  store i8 %i.fs, ptr %i.ft, align 1, !tbaa !40
  br label %bb.ba

bb.ay:                                            ; preds = %bb.av
  %i.fu = icmp slt i64 %.5143, 2
  br i1 %i.fu, label %.thread184, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fv = lshr i16 %.us-phi194, 8
  %i.fw = trunc nuw i16 %i.fv to i8
  %i.fx = load ptr, ptr %6, align 8, !tbaa !43
  store i8 %i.fw, ptr %i.fx, align 1, !tbaa !40
  %i.fy = trunc i16 %.us-phi194 to i8
  %i.fz = load ptr, ptr %6, align 8, !tbaa !43
  %i.ga = getelementptr i8, ptr %i.fz, i64 1
  store i8 %i.fy, ptr %i.ga, align 1, !tbaa !40
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ax, %bb.az
  %.sink264 = phi i64 [ 1, %bb.ax ], [ 2, %bb.az ]
  %.sink261 = phi i64 [ -1, %bb.ax ], [ -2, %bb.az ]
  %i.gb = load ptr, ptr %6, align 8, !tbaa !43
  %i.gc = getelementptr i8, ptr %i.gb, i64 %.sink264
  store ptr %i.gc, ptr %6, align 8, !tbaa !43
  %i.gd = add nsw i64 %.5143, %.sink261
  %i.ge = load i64, ptr %4, align 8, !tbaa !61
  %i.gf = add i64 %i.ge, %.us-phi195              ; 2 uses
  store i64 %i.gf, ptr %4, align 8, !tbaa !61
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.m
  %i.gg = phi i64 [ %i.gf, %bb.ba ], [ %i.ao, %bb.m ] ; 2 uses
  %.7 = phi i64 [ %i.gd, %bb.ba ], [ %i.ar, %bb.m ]
  %i.gh = icmp slt i64 %i.gg, %5
  br i1 %i.gh, label %bb.b, label %.thread184

.thread184:                                       ; preds = %bb.bb, %bb.l, %bb.g, %bb.j, %bb.at, %.split.us, %bb.ab, %bb.z, %bb.aw, %bb.af, %bb.ai, %bb.ak, %bb.aq, %bb.ao, %bb.ay, %bb.n, %select.unfold, %select.unfold.us, %bb.a, %.split197.us
  %.5 = phi i64 [ 0, %bb.a ], [ -2, %.split197.us ], [ 1, %select.unfold.us ], [ 1, %select.unfold ], [ -1, %bb.ay ], [ -1, %bb.l ], [ -1, %bb.g ], [ -1, %bb.j ], [ -1, %bb.at ], [ 1, %.split.us ], [ -1, %bb.ab ], [ -3, %bb.z ], [ -1, %bb.aw ], [ -1, %bb.af ], [ -1, %bb.ai ], [ -1, %bb.ak ], [ -1, %bb.aq ], [ -1, %bb.ao ], [ 0, %bb.bb ], [ 1, %bb.n ]
  ret i64 %.5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef i32 @iso2022_encode_init(ptr nofree noundef writeonly captures(none) initializes((0, 2), (4, 5)) %0, ptr nofree readnone captures(none) %1) #6 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4
  store i8 0, ptr %i.a, align 1, !tbaa !40
  store i8 66, ptr %0, align 1, !tbaa !40
  %i.b = getelementptr i8, ptr %0, i64 1
  store i8 66, ptr %i.b, align 1, !tbaa !40
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i64 -1, 1) i64 @iso2022_encode_reset(ptr nofree noundef captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef captures(none) %2, i64 noundef %3) #7 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4          ; 3 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !40
  %.not = trunc i8 %i.b to i1
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = icmp slt i64 %3, 1
  br i1 %i.c, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %2, align 8, !tbaa !43
  store i8 15, ptr %i.d, align 1, !tbaa !40
  %i.e = load ptr, ptr %2, align 8, !tbaa !43
  %i.f = getelementptr i8, ptr %i.e, i64 1
  store ptr %i.f, ptr %2, align 8, !tbaa !43
  %i.g = add nsw i64 %3, -1
  %i.h = load i8, ptr %i.a, align 1, !tbaa !40
  %i.i = and i8 %i.h, -2
  store i8 %i.i, ptr %i.a, align 1, !tbaa !40
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.0 = phi i64 [ %i.g, %bb.c ], [ %3, %bb.a ]
  %i.j = load i8, ptr %0, align 1, !tbaa !40
  %.not16 = icmp eq i8 %i.j, 66
  br i1 %.not16, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = icmp slt i64 %.0, 3
  br i1 %i.k, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = load ptr, ptr %2, align 8, !tbaa !43
  store i8 27, ptr %i.l, align 1, !tbaa !40
  %i.m = load ptr, ptr %2, align 8, !tbaa !43
  %i.n = getelementptr i8, ptr %i.m, i64 1
  store i8 40, ptr %i.n, align 1, !tbaa !40
  %i.o = load ptr, ptr %2, align 8, !tbaa !43
  %i.p = getelementptr i8, ptr %i.o, i64 2
  store i8 66, ptr %i.p, align 1, !tbaa !40
  %i.q = load ptr, ptr %2, align 8, !tbaa !43
  %i.r = getelementptr i8, ptr %i.q, i64 3
  store ptr %i.r, ptr %2, align 8, !tbaa !43
  store i8 66, ptr %0, align 1, !tbaa !40
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.e, %bb.b
  %.014 = phi i64 [ -1, %bb.e ], [ -1, %bb.b ], [ 0, %bb.f ], [ 0, %bb.d ]
  ret i64 %.014
}

; Function Attrs: nounwind uwtable
define internal range(i64 -9223372036854775807, -9223372036854775808) i64 @iso2022_decode(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef captures(none) %2, i64 noundef %3, ptr noundef %4) #0 {
bb.a:
  %i.a = icmp sgt i64 %3, 0
  br i1 %i.a, label %.lr.ph, label %.thread159

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 4          ; 8 uses
  %i.c = getelementptr i8, ptr %1, i64 8          ; 8 uses
  %i.d = getelementptr i8, ptr %0, i64 2
  %i.e = getelementptr i8, ptr %4, i64 20
  %i.f = getelementptr i8, ptr %4, i64 24
  %i.g = getelementptr i8, ptr %4, i64 32         ; 5 uses
  %i.h = getelementptr i8, ptr %4, i64 16         ; 2 uses
  %i.i = getelementptr i8, ptr %4, i64 8          ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.ce
  %.0103169 = phi ptr [ null, %.lr.ph ], [ %.3106, %bb.ce ] ; 12 uses
  %.0142168 = phi i64 [ %3, %.lr.ph ], [ %.2144, %bb.ce ] ; 14 uses
  %i.j = load ptr, ptr %2, align 8, !tbaa !43     ; 14 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !40    ; 5 uses
  %i.l = load i8, ptr %i.b, align 1, !tbaa !40    ; 5 uses
  %5 = and i8 %i.l, 2
  %.not = icmp eq i8 %5, 0
  %i.m = zext i8 %i.k to i32                      ; 2 uses
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef %i.m) #16
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %.thread159, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %2, align 8, !tbaa !43
  %i.q = getelementptr i8, ptr %i.p, i64 1
  store ptr %i.q, ptr %2, align 8, !tbaa !43
  %i.r = add nsw i64 %.0142168, -1                ; 2 uses
  %i.s = add i8 %i.k, -64
  %or.cond5 = icmp ult i8 %i.s, 27
  br i1 %or.cond5, label %bb.e, label %bb.ce, !llvm.loop !68

bb.e:                                             ; preds = %bb.d
  %i.t = load i8, ptr %i.b, align 1, !tbaa !40
  %i.u = and i8 %i.t, -3
  store i8 %i.u, ptr %i.b, align 1, !tbaa !40
  br label %bb.ce, !llvm.loop !68

bb.f:                                             ; preds = %bb.b
  switch i8 %i.k, label %bb.be [
    i8 27, label %bb.g
    i8 15, label %bb.ay
    i8 14, label %bb.ba
    i8 10, label %bb.bc
  ]

bb.g:                                             ; preds = %bb.f
  %i.v = icmp eq i64 %.0142168, 1
  br i1 %i.v, label %.thread159, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr i8, ptr %i.j, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !40    ; 5 uses
  %switch.tableidx = add i8 %i.x, -36             ; 2 uses
  %i.y = icmp ult i8 %switch.tableidx, 11
  br i1 %i.y, label %switch.hole_check, label %bb.ac

switch.hole_check:                                ; preds = %bb.h
  %switch.maskindex = zext nneg i8 %switch.tableidx to i16
  %switch.shifted = lshr i16 1077, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.ac

switch.lookup:                                    ; preds = %switch.hole_check, %bb.m
  %.05487.i = phi i64 [ %i.am, %bb.m ], [ 1, %switch.hole_check ] ; 8 uses
  %.not.i = icmp slt i64 %.05487.i, %.0142168
  br i1 %.not.i, label %bb.i, label %.thread159

bb.i:                                             ; preds = %switch.lookup
  %i.z = getelementptr i8, ptr %i.j, i64 %.05487.i
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !40   ; 2 uses
  %i.ab = add i8 %i.aa, -64
  %or.cond85.i = icmp ult i8 %i.ab, 27
  br i1 %or.cond85.i, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = load ptr, ptr %i.c, align 8, !tbaa !53
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !69
  %i.ae = and i32 %i.ad, 4
  %.not66.i = icmp eq i32 %i.ae, 0
  br i1 %.not66.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i64 %.05487.i, 1                ; 2 uses
  %i.ag = icmp slt i64 %i.af, %.0142168
  %i.ah = icmp eq i8 %i.aa, 38
  %or.cond73.i = and i1 %i.ag, %i.ah
  br i1 %or.cond73.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ai = getelementptr i8, ptr %i.j, i64 %i.af
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !40
  %i.ak = icmp eq i8 %i.aj, 64
  %i.al = add nsw i64 %.05487.i, 2
  %spec.select.i = select i1 %i.ak, i64 %i.al, i64 %.05487.i
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.1.i = phi i64 [ %.05487.i, %bb.k ], [ %spec.select.i, %bb.l ], [ %.05487.i, %bb.j ] ; 2 uses
  %i.am = add nsw i64 %.1.i, 1
  %i.an = icmp slt i64 %.1.i, 15
  br i1 %i.an, label %switch.lookup, label %.thread159, !llvm.loop !70

bb.n:                                             ; preds = %bb.i
  %i.ao = add nsw i64 %.05487.i, 1                ; 5 uses
  switch i64 %i.ao, label %.thread159 [
    i64 0, label %.thread159.loopexit254
    i64 3, label %bb.o
    i64 4, label %bb.s
    i64 6, label %bb.v
  ]

bb.o:                                             ; preds = %bb.n
  %i.ap = getelementptr i8, ptr %i.j, i64 2
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !40  ; 3 uses
  switch i8 %i.x, label %bb.r [
    i8 36, label %bb.p
    i8 40, label %bb.z
    i8 41, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.ar = or i8 %i.aq, -128
  br label %.thread77.i

bb.q:                                             ; preds = %bb.o
  br label %bb.z

bb.r:                                             ; preds = %bb.o
  %i.as = load ptr, ptr %i.c, align 8, !tbaa !53
  %i.at = load i32, ptr %i.as, align 8, !tbaa !69
  %i.au = and i32 %i.at, 2
  %.not69.i = icmp ne i32 %i.au, 0
  %i.av = icmp eq i8 %i.x, 46
  %or.cond74.i = and i1 %i.av, %.not69.i
  br i1 %or.cond74.i, label %bb.z, label %.thread159

bb.s:                                             ; preds = %bb.n
  %.not68.i = icmp eq i8 %i.x, 36
  br i1 %.not68.i, label %bb.t, label %.thread159

bb.t:                                             ; preds = %bb.s
  %i.aw = getelementptr i8, ptr %i.j, i64 3
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !40
  %i.ay = or i8 %i.ax, -128                       ; 2 uses
  %i.az = getelementptr i8, ptr %i.j, i64 2
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !40
  switch i8 %i.ba, label %.thread159 [
    i8 40, label %.thread77.i
    i8 41, label %bb.u
  ]

bb.u:                                             ; preds = %bb.t
  br label %.thread77.i

bb.v:                                             ; preds = %bb.n
  %i.bb = load ptr, ptr %i.c, align 8, !tbaa !53
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !69
  %i.bd = and i32 %i.bc, 4
  %.not67.i = icmp eq i32 %i.bd, 0
  br i1 %.not67.i, label %.thread159, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.be = getelementptr i8, ptr %i.j, i64 3
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !40
  %i.bg = icmp eq i8 %i.bf, 27
  br i1 %i.bg, label %bb.x, label %.thread159

bb.x:                                             ; preds = %bb.w
  %i.bh = getelementptr i8, ptr %i.j, i64 4
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !40
  %i.bj = icmp eq i8 %i.bi, 36
  br i1 %i.bj, label %bb.y, label %.thread159

bb.y:                                             ; preds = %bb.x
  %i.bk = getelementptr i8, ptr %i.j, i64 5
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !40
  %i.bm = icmp eq i8 %i.bl, 66
  br i1 %i.bm, label %.thread77.i, label %.thread159

bb.z:                                             ; preds = %bb.r, %bb.q, %bb.o
  %.055.i = phi i64 [ 0, %bb.o ], [ 2, %bb.r ], [ 1, %bb.q ] ; 2 uses
  %.not70.i = icmp eq i8 %i.aq, 66
  br i1 %.not70.i, label %iso2022processesc.exit.thread150, label %.thread77.i

.thread77.i:                                      ; preds = %bb.z, %bb.y, %bb.u, %bb.t, %bb.p
  %.05583.i = phi i64 [ %.055.i, %bb.z ], [ 0, %bb.y ], [ 1, %bb.u ], [ 0, %bb.t ], [ 0, %bb.p ]
  %.05681.i = phi i8 [ %i.aq, %bb.z ], [ -62, %bb.y ], [ %i.ay, %bb.u ], [ %i.ay, %bb.t ], [ %i.ar, %bb.p ] ; 2 uses
  %i.bn = load ptr, ptr %i.c, align 8, !tbaa !53
  %i.bo = getelementptr i8, ptr %i.bn, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !54
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.thread77.i
  %.0.i = phi ptr [ %i.bp, %.thread77.i ], [ %i.bs, %bb.aa ] ; 2 uses
  %i.bq = load i8, ptr %.0.i, align 8, !tbaa !57  ; 2 uses
  %.not71.i = icmp eq i8 %i.bq, 0                 ; 2 uses
  %i.br = icmp eq i8 %i.bq, %.05681.i
  %or.cond75.i = or i1 %.not71.i, %i.br
  %i.bs = getelementptr i8, ptr %.0.i, i64 32
  br i1 %or.cond75.i, label %bb.ab, label %bb.aa, !llvm.loop !71

bb.ab:                                            ; preds = %bb.aa
  br i1 %.not71.i, label %.thread159, label %iso2022processesc.exit.thread150

iso2022processesc.exit.thread150:                 ; preds = %bb.z, %bb.ab
  %.05584.i = phi i64 [ %.055.i, %bb.z ], [ %.05583.i, %bb.ab ]
  %.05682.i = phi i8 [ 66, %bb.z ], [ %.05681.i, %bb.ab ]
  %i.bt = getelementptr i8, ptr %0, i64 %.05584.i
  store i8 %.05682.i, ptr %i.bt, align 1, !tbaa !40
  %i.bu = sub i64 %.0142168, %i.ao
  %i.bv = load ptr, ptr %2, align 8, !tbaa !43
  %i.bw = getelementptr i8, ptr %i.bv, i64 %i.ao
  store ptr %i.bw, ptr %2, align 8, !tbaa !43
  br label %bb.ce

bb.ac:                                            ; preds = %switch.hole_check, %bb.h
  %i.bx = load ptr, ptr %i.c, align 8, !tbaa !53
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !69
  %i.bz = and i32 %i.by, 2
  %.not121 = icmp ne i32 %i.bz, 0
  %i.ca = icmp eq i8 %i.x, 78
  %or.cond = and i1 %i.ca, %.not121
  br i1 %or.cond, label %bb.ad, label %bb.aw

bb.ad:                                            ; preds = %bb.ac
  %i.cb = icmp samesign ult i64 %.0142168, 3
  br i1 %i.cb, label %.thread159, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.val = load i8, ptr %i.d, align 1, !tbaa !40
  switch i8 %.val, label %.thread159 [
    i8 65, label %bb.af
    i8 70, label %bb.ah
    i8 66, label %bb.au
  ]

bb.af:                                            ; preds = %bb.ae
  %i.cc = getelementptr i8, ptr %i.j, i64 2
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !40  ; 2 uses
  %i.ce = icmp sgt i8 %i.cd, -1
  br i1 %i.ce, label %bb.ag, label %.thread159

bb.ag:                                            ; preds = %bb.af
  %i.cf = or disjoint i8 %i.cd, -128
  %i.cg = zext i8 %i.cf to i32
  %i.ch = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef %i.cg) #16
  %i.ci = icmp slt i32 %i.ch, 0
  br i1 %i.ci, label %.thread159, label %iso2022processg2.exit

bb.ah:                                            ; preds = %bb.ae
  %i.cj = getelementptr i8, ptr %i.j, i64 2
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !40  ; 3 uses
  %i.cl = xor i8 %i.ck, -128                      ; 6 uses
  %i.cm = zext i8 %i.cl to i32                    ; 4 uses
  %i.cn = icmp ult i8 %i.cl, -96
  br i1 %i.cn, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.co = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef %i.cm) #16
  %i.cp = icmp slt i32 %i.co, 0
  br i1 %i.cp, label %.thread159, label %iso2022processg2.exit

bb.aj:                                            ; preds = %bb.ah
  %i.cq = icmp samesign ult i8 %i.cl, -64
  br i1 %i.cq, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.cr = add nsw i32 %i.cm, -160
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = shl nuw nsw i64 1, %i.cs
  %i.cu = and i64 %i.ct, 680475593
  %.not35.i = icmp eq i64 %i.cu, 0
  br i1 %.not35.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cv = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef %i.cm) #16
  %i.cw = icmp slt i32 %i.cv, 0
  br i1 %i.cw, label %.thread159, label %iso2022processg2.exit

bb.am:                                            ; preds = %bb.ak, %bb.aj
  %i.cx = zext i8 %i.cl to i64
  %i.cy = icmp samesign ult i8 %i.cl, -76
  %.not36.i = icmp eq i8 %i.ck, 127
  %or.cond.i = or i1 %.not36.i, %i.cy
  br i1 %or.cond.i, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cz = icmp samesign ugt i8 %i.cl, -45
  br i1 %i.cz, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.da = add nuw nsw i64 %i.cx, 4294967116
  %i.db = and i64 %i.da, 4294967295
  %i.dc = shl nuw nsw i64 1, %i.db
  %i.dd = and i64 %i.dc, 3221224823
  %.not37.i = icmp eq i64 %i.dd, 0
  br i1 %.not37.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.de = add nuw nsw i32 %i.cm, 720
  %i.df = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef %i.de) #16
  %i.dg = icmp slt i32 %i.df, 0
  br i1 %i.dg, label %.thread159, label %iso2022processg2.exit

bb.aq:                                            ; preds = %bb.ao, %bb.am
  switch i8 %i.ck, label %.thread159 [
    i8 33, label %bb.ar
    i8 34, label %bb.as
    i8 47, label %bb.at
  ]

bb.ar:                                            ; preds = %bb.aq
  %i.dh = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef 8216) #16
  %i.di = icmp slt i32 %i.dh, 0
  br i1 %i.di, label %.thread159, label %iso2022processg2.exit

bb.as:                                            ; preds = %bb.aq
  %i.dj = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef 8217) #16
  %i.dk = icmp slt i32 %i.dj, 0
  br i1 %i.dk, label %.thread159, label %iso2022processg2.exit

bb.at:                                            ; preds = %bb.aq
  %i.dl = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef 8213) #16
  %i.dm = icmp slt i32 %i.dl, 0
  br i1 %i.dm, label %.thread159, label %iso2022processg2.exit

bb.au:                                            ; preds = %bb.ae
  %i.dn = getelementptr i8, ptr %i.j, i64 2
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !40  ; 2 uses
  %.not.i128 = icmp sgt i8 %i.do, -1
  br i1 %.not.i128, label %bb.av, label %.thread159

bb.av:                                            ; preds = %bb.au
  %i.dp = zext nneg i8 %i.do to i32
  %i.dq = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef %i.dp) #16
  %i.dr = icmp slt i32 %i.dq, 0
  br i1 %i.dr, label %.thread159, label %iso2022processg2.exit

iso2022processg2.exit:                            ; preds = %bb.ag, %bb.ai, %bb.al, %bb.ap, %bb.ar, %bb.as, %bb.at, %bb.av
  %i.ds = load ptr, ptr %2, align 8, !tbaa !43
  %i.dt = getelementptr i8, ptr %i.ds, i64 3
  store ptr %i.dt, ptr %2, align 8, !tbaa !43
  %i.du = add nsw i64 %.0142168, -3
  br label %bb.ce

bb.aw:                                            ; preds = %bb.ac
  %i.dv = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef 27) #16
  %i.dw = icmp slt i32 %i.dv, 0
  br i1 %i.dw, label %.thread159, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.dx = load i8, ptr %i.b, align 1, !tbaa !40
  %i.dy = or i8 %i.dx, 2
  store i8 %i.dy, ptr %i.b, align 1, !tbaa !40
  %i.dz = load ptr, ptr %2, align 8, !tbaa !43
  %i.ea = getelementptr i8, ptr %i.dz, i64 1
  store ptr %i.ea, ptr %2, align 8, !tbaa !43
  %i.eb = add nsw i64 %.0142168, -1
  br label %bb.ce

bb.ay:                                            ; preds = %bb.f
  %i.ec = load ptr, ptr %i.c, align 8, !tbaa !53
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !69
  %.not120 = trunc nuw i32 %i.ed to i1
  br i1 %.not120, label %bb.bh, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ee = and i8 %i.l, -4
  store i8 %i.ee, ptr %i.b, align 1, !tbaa !40
  %i.ef = load ptr, ptr %2, align 8, !tbaa !43
  %i.eg = getelementptr i8, ptr %i.ef, i64 1
  store ptr %i.eg, ptr %2, align 8, !tbaa !43
  %i.eh = add nsw i64 %.0142168, -1
  br label %bb.ce

bb.ba:                                            ; preds = %bb.f
  %i.ei = load ptr, ptr %i.c, align 8, !tbaa !53
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !69
  %.not119 = trunc nuw i32 %i.ej to i1
  br i1 %.not119, label %bb.bh, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ek = or i8 %i.l, 1
  store i8 %i.ek, ptr %i.b, align 1, !tbaa !40
  %i.el = load ptr, ptr %2, align 8, !tbaa !43
  %i.em = getelementptr i8, ptr %i.el, i64 1
  store ptr %i.em, ptr %2, align 8, !tbaa !43
  %i.en = add nsw i64 %.0142168, -1
  br label %bb.ce

bb.bc:                                            ; preds = %bb.f
  %i.eo = and i8 %i.l, -4
  store i8 %i.eo, ptr %i.b, align 1, !tbaa !40
  %i.ep = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef 10) #16
  %i.eq = icmp slt i32 %i.ep, 0
  br i1 %i.eq, label %.thread159, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.er = load ptr, ptr %2, align 8, !tbaa !43
  %i.es = getelementptr i8, ptr %i.er, i64 1
  store ptr %i.es, ptr %2, align 8, !tbaa !43
  %i.et = add nsw i64 %.0142168, -1
  br label %bb.ce

bb.be:                                            ; preds = %bb.f
  %i.eu = icmp ult i8 %i.k, 32
  br i1 %i.eu, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ev = icmp slt i8 %i.k, 0
  br i1 %i.ev, label %.thread159, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %6 = and i8 %i.l, 1
  %.0107.in.idx = zext nneg i8 %6 to i64
  %.0107.in = getelementptr i8, ptr %0, i64 %.0107.in.idx
  %.0107 = load i8, ptr %.0107.in, align 1, !tbaa !40 ; 3 uses
  %i.ew = icmp eq i8 %.0107, 66
  br i1 %i.ew, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %bb.ay, %bb.ba, %bb.be, %bb.bg
  %i.ex = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef %i.m) #16
  %i.ey = icmp slt i32 %i.ex, 0
  br i1 %i.ey, label %.thread159, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ez = load ptr, ptr %2, align 8, !tbaa !43
  %i.fa = getelementptr i8, ptr %i.ez, i64 1
  store ptr %i.fa, ptr %2, align 8, !tbaa !43
  %i.fb = add nsw i64 %.0142168, -1
  br label %bb.ce

bb.bj:                                            ; preds = %bb.bg
  %.not125 = icmp eq ptr %.0103169, null
  br i1 %.not125, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.fc = load i8, ptr %.0103169, align 8, !tbaa !57
  %i.fd = icmp eq i8 %i.fc, %.0107
  br i1 %i.fd, label %.loopexit, label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.fe = load ptr, ptr %i.c, align 8, !tbaa !53
  %i.ff = getelementptr i8, ptr %i.fe, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !54
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bm, %bb.bl
  %.0108 = phi ptr [ %i.fg, %bb.bl ], [ %i.fi, %bb.bm ] ; 3 uses
  %i.fh = load i8, ptr %.0108, align 8, !tbaa !57
  %.not126 = icmp eq i8 %i.fh, %.0107
  %i.fi = getelementptr i8, ptr %.0108, i64 32
  br i1 %.not126, label %.loopexit, label %bb.bm, !llvm.loop !72

.loopexit:                                        ; preds = %bb.bm, %bb.bk
  %.1104 = phi ptr [ %.0103169, %bb.bk ], [ %.0108, %bb.bm ] ; 3 uses
  %i.fj = getelementptr i8, ptr %.1104, i64 2     ; 3 uses
  %i.fk = load i8, ptr %i.fj, align 2, !tbaa !67
  %i.fl = zext i8 %i.fk to i64
  %i.fm = icmp samesign ult i64 %.0142168, %i.fl
  br i1 %i.fm, label %.thread159, label %bb.bn

bb.bn:                                            ; preds = %.loopexit
  %i.fn = getelementptr i8, ptr %.1104, i64 16
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !73
  %i.fp = tail call i32 %i.fo(ptr noundef %1, ptr noundef nonnull %i.j) #16 ; 9 uses
  %i.fq = icmp eq i32 %i.fp, 65535
  br i1 %i.fq, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.fr = load i8, ptr %i.fj, align 2, !tbaa !67
  %i.fs = zext i8 %i.fr to i64
  br label %.thread159

bb.bp:                                            ; preds = %bb.bn
  %i.ft = icmp ult i32 %i.fp, 65536
  br i1 %i.ft, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.fu = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef %i.fp) #16
  %i.fv = icmp slt i32 %i.fu, 0
  br i1 %i.fv, label %.thread159, label %bb.cd

bb.br:                                            ; preds = %bb.bp
  %i.fw = icmp ult i32 %i.fp, 196608
  br i1 %i.fw, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.fx = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef %i.fp) #16
  %i.fy = icmp slt i32 %i.fx, 0
  br i1 %i.fy, label %.thread159, label %bb.cd

bb.bt:                                            ; preds = %bb.br
  %i.fz = lshr i32 %i.fp, 16                      ; 4 uses
  %i.ga = and i32 %i.fp, 65535                    ; 2 uses
  %i.gb = tail call i32 @llvm.umax.i32(i32 %i.fz, i32 %i.ga) ; 2 uses
  %i.gc = load i32, ptr %i.e, align 4, !tbaa !74
  %.not127 = icmp ugt i32 %i.gb, %i.gc
  br i1 %.not127, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.gd = load i64, ptr %i.f, align 8, !tbaa !76
  %i.ge = load i64, ptr %i.g, align 8, !tbaa !77  ; 2 uses
  %i.gf = sub i64 %i.gd, %i.ge
  %i.gg = icmp sgt i64 %i.gf, 1
  br i1 %i.gg, label %.thread, label %bb.bv

bb.bv:                                            ; preds = %bb.bt, %bb.bu
  %i.gh = tail call i32 @_PyUnicodeWriter_PrepareInternal(ptr noundef nonnull %4, i64 noundef 2, i32 noundef %i.gb) #16
  %i.gi = icmp slt i32 %i.gh, 0
  br i1 %i.gi, label %.thread159, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %bb.bv
  %.pre = load i64, ptr %i.g, align 8, !tbaa !77
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.bu
  %i.gj = phi i64 [ %.pre, %..thread_crit_edge ], [ %i.ge, %bb.bu ] ; 5 uses
  %i.gk = load i32, ptr %i.h, align 8, !tbaa !78
  %i.gl = load ptr, ptr %i.i, align 8, !tbaa !79  ; 5 uses
  switch i32 %i.gk, label %bb.by [
    i32 1, label %bb.bw
    i32 2, label %bb.bx
  ]

bb.bw:                                            ; preds = %.thread
  %i.gm = trunc i32 %i.fz to i8
  %i.gn = getelementptr i8, ptr %i.gl, i64 %i.gj
  store i8 %i.gm, ptr %i.gn, align 1, !tbaa !40
  %.pre237 = load ptr, ptr %i.i, align 8, !tbaa !79
  %.pre238 = load i64, ptr %i.g, align 8, !tbaa !77
  br label %PyUnicode_WRITE.exit

bb.bx:                                            ; preds = %.thread
  %i.go = trunc nuw i32 %i.fz to i16
  %i.gp = getelementptr [2 x i8], ptr %i.gl, i64 %i.gj
  store i16 %i.go, ptr %i.gp, align 2, !tbaa !62
  br label %PyUnicode_WRITE.exit

bb.by:                                            ; preds = %.thread
  %i.gq = getelementptr [4 x i8], ptr %i.gl, i64 %i.gj
  store i32 %i.fz, ptr %i.gq, align 4, !tbaa !6
  br label %PyUnicode_WRITE.exit

PyUnicode_WRITE.exit:                             ; preds = %bb.bw, %bb.bx, %bb.by
  %i.gr = phi i64 [ %.pre238, %bb.bw ], [ %i.gj, %bb.bx ], [ %i.gj, %bb.by ] ; 3 uses
  %i.gs = phi ptr [ %.pre237, %bb.bw ], [ %i.gl, %bb.bx ], [ %i.gl, %bb.by ] ; 3 uses
  %i.gt = load i32, ptr %i.h, align 8, !tbaa !78
  %i.gu = add i64 %i.gr, 1                        ; 3 uses
  switch i32 %i.gt, label %bb.cb [
    i32 1, label %bb.bz
    i32 2, label %bb.ca
  ]

bb.bz:                                            ; preds = %PyUnicode_WRITE.exit
  %i.gv = trunc i32 %i.fp to i8
  %i.gw = getelementptr i8, ptr %i.gs, i64 %i.gu
  store i8 %i.gv, ptr %i.gw, align 1, !tbaa !40
  %.pre239 = load i64, ptr %i.g, align 8, !tbaa !77
  br label %bb.cc

bb.ca:                                            ; preds = %PyUnicode_WRITE.exit
  %i.gx = trunc i32 %i.fp to i16
  %i.gy = getelementptr [2 x i8], ptr %i.gs, i64 %i.gu
  store i16 %i.gx, ptr %i.gy, align 2, !tbaa !62
  br label %bb.cc

bb.cb:                                            ; preds = %PyUnicode_WRITE.exit
  %i.gz = getelementptr [4 x i8], ptr %i.gs, i64 %i.gu
  store i32 %i.ga, ptr %i.gz, align 4, !tbaa !6
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca, %bb.bz
  %i.ha = phi i64 [ %i.gr, %bb.cb ], [ %i.gr, %bb.ca ], [ %.pre239, %bb.bz ]
  %i.hb = add i64 %i.ha, 2
  store i64 %i.hb, ptr %i.g, align 8, !tbaa !77
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.bq, %bb.bs
  %i.hc = load i8, ptr %i.fj, align 2, !tbaa !67
  %i.hd = load ptr, ptr %2, align 8, !tbaa !43
  %i.he = zext i8 %i.hc to i64                    ; 2 uses
  %i.hf = getelementptr i8, ptr %i.hd, i64 %i.he
  store ptr %i.hf, ptr %2, align 8, !tbaa !43
  %i.hg = sub nsw i64 %.0142168, %i.he
  br label %bb.ce

bb.ce:                                            ; preds = %bb.az, %bb.bb, %bb.bd, %bb.bi, %bb.cd, %bb.ax, %iso2022processesc.exit.thread150, %iso2022processg2.exit, %bb.e, %bb.d
  %.2144 = phi i64 [ %i.en, %bb.bb ], [ %i.et, %bb.bd ], [ %i.bu, %iso2022processesc.exit.thread150 ], [ %i.eh, %bb.az ], [ %i.r, %bb.e ], [ %i.r, %bb.d ], [ %i.fb, %bb.bi ], [ %i.hg, %bb.cd ], [ %i.du, %iso2022processg2.exit ], [ %i.eb, %bb.ax ] ; 2 uses
  %.3106 = phi ptr [ %.0103169, %bb.bb ], [ %.0103169, %bb.bd ], [ %.0103169, %iso2022processesc.exit.thread150 ], [ %.0103169, %bb.az ], [ %.0103169, %bb.e ], [ %.0103169, %bb.d ], [ %.0103169, %bb.bi ], [ %.1104, %bb.cd ], [ %.0103169, %iso2022processg2.exit ], [ %.0103169, %bb.ax ]
  %i.hh = icmp sgt i64 %.2144, 0
  br i1 %i.hh, label %bb.b, label %.thread159

.thread159.loopexit254:                           ; preds = %bb.n
  br label %.thread159

.thread159:                                       ; preds = %bb.ce, %bb.aw, %bb.c, %bb.bf, %bb.bc, %bb.bh, %.loopexit, %bb.bq, %bb.g, %bb.ad, %bb.bs, %bb.t, %bb.v, %bb.ab, %bb.r, %bb.s, %bb.y, %bb.x, %bb.w, %bb.av, %bb.ag, %bb.af, %bb.ai, %bb.al, %bb.ap, %bb.ar, %bb.as, %bb.at, %bb.aq, %bb.au, %bb.ae, %bb.bv, %switch.lookup, %bb.m, %bb.n, %.thread159.loopexit254, %bb.a, %bb.bo
  %.5 = phi i64 [ -2, %switch.lookup ], [ 0, %bb.a ], [ %i.fs, %bb.bo ], [ %i.ao, %bb.n ], [ 1, %bb.m ], [ -4, %bb.ag ], [ 3, %bb.af ], [ -4, %bb.ai ], [ -4, %bb.al ], [ -4, %bb.ap ], [ -4, %bb.ar ], [ -4, %bb.as ], [ -4, %bb.at ], [ 3, %bb.aq ], [ 3, %bb.au ], [ 4, %bb.t ], [ 6, %bb.v ], [ %i.ao, %bb.ab ], [ 3, %bb.r ], [ 4, %bb.s ], [ 6, %bb.y ], [ 6, %bb.x ], [ -3, %bb.ae ], [ -4, %bb.av ], [ -4, %bb.aw ], [ -4, %bb.c ], [ 0, %bb.ce ], [ 1, %bb.bf ], [ -4, %bb.bc ], [ -4, %bb.bh ], [ -2, %.loopexit ], [ 6, %bb.w ], [ -4, %bb.bq ], [ -2, %bb.g ], [ -4, %bb.bs ], [ -2, %bb.ad ], [ -4, %bb.bv ], [ 1, %.thread159.loopexit254 ]
  ret i64 %.5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef i32 @iso2022_decode_init(ptr nofree noundef writeonly captures(none) initializes((0, 3), (4, 5)) %0, ptr nofree readnone captures(none) %1) #6 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4
  store i8 0, ptr %i.a, align 1, !tbaa !40
  store i8 66, ptr %0, align 1, !tbaa !40
  %i.b = getelementptr i8, ptr %0, i64 1
  store i8 66, ptr %i.b, align 1, !tbaa !40
  %i.c = getelementptr i8, ptr %0, i64 2
  store i8 66, ptr %i.c, align 1, !tbaa !40
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i64 @iso2022_decode_reset(ptr nofree noundef captures(none) initializes((0, 1)) %0, ptr nofree readnone captures(none) %1) #8 {
bb.a:
  store i8 66, ptr %0, align 1, !tbaa !40
  %i.a = getelementptr i8, ptr %0, i64 4          ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !40
  %i.c = and i8 %i.b, -2
  store i8 %i.c, ptr %i.a, align 1, !tbaa !40
  ret i64 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @ksx1001_init(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46   ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 24
  %i.d = tail call fastcc i32 @importmap(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, ptr noundef %i.c, ptr noundef null)
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.b, i64 32
  %i.f = tail call fastcc i32 @importmap(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.22, ptr noundef null, ptr noundef %i.e)
  %.not3 = icmp ne i32 %i.f, 0
  %spec.select = sext i1 %.not3 to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.a ], [ %spec.select, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 65536) i32 @ksx1001_decoder(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #9 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.c = getelementptr i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !80
  %i.e = load i8, ptr %1, align 1, !tbaa !40
  %i.f = zext i8 %i.e to i64
  %i.g = getelementptr [16 x i8], ptr %i.d, i64 %i.f ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !81   ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %1, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !40    ; 3 uses
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr i8, ptr %i.g, i64 8
  %i.m = load i8, ptr %i.l, align 8, !tbaa !84    ; 2 uses
  %i.n = zext i8 %i.m to i64
  %.not18 = icmp ult i8 %i.j, %i.m
  br i1 %.not18, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr i8, ptr %i.g, i64 9
  %i.p = load i8, ptr %i.o, align 1, !tbaa !85
  %.not19 = icmp ugt i8 %i.j, %i.p
  br i1 %.not19, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = sub nsw i64 %i.k, %i.n
  %i.r = getelementptr [2 x i8], ptr %i.h, i64 %i.q
  %i.s = load i16, ptr %i.r, align 2, !tbaa !62   ; 2 uses
  %.not20 = icmp eq i16 %i.s, -2
  %narrow = select i1 %.not20, i16 -1, i16 %i.s
  %spec.select = zext i16 %narrow to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ 65535, %bb.a ], [ %spec.select, %bb.d ], [ 65535, %bb.c ], [ 65535, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal zeroext range(i16 -1, -32768) i16 @ksx1001_encoder(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2) #9 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !6      ; 3 uses
  %i.b = icmp ult i32 %i.a, 65536
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !46
  %i.e = getelementptr i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !86
  %i.g = lshr i32 %i.a, 8
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr [16 x i8], ptr %i.f, i64 %i.h ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !87   ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = and i32 %i.a, 255                        ; 3 uses
  %i.l = getelementptr i8, ptr %i.i, i64 8
  %i.m = load i8, ptr %i.l, align 8, !tbaa !89
  %i.n = zext i8 %i.m to i32                      ; 2 uses
  %.not21 = icmp samesign ult i32 %i.k, %i.n
  br i1 %.not21, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr i8, ptr %i.i, i64 9
  %i.p = load i8, ptr %i.o, align 1, !tbaa !90
  %i.q = zext i8 %i.p to i32
  %.not22 = icmp samesign ugt i32 %i.k, %i.q
  br i1 %.not22, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = sub nsw i32 %i.k, %i.n
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr [2 x i8], ptr %i.j, i64 %i.s
  %i.u = load i16, ptr %i.t, align 2, !tbaa !62   ; 2 uses
  %.not24 = icmp sgt i16 %i.u, -1
  br i1 %.not24, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.a
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.0 = phi i16 [ -1, %bb.f ], [ %i.u, %bb.e ]
  ret i16 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @importmap(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @PyImport_ImportModule(ptr noundef %0) #16 ; 7 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %Py_DECREF.exit23, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyObject_GetAttrString(ptr noundef nonnull %i.a, ptr noundef %1) #16 ; 6 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @PyCapsule_IsValid(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.10) #16
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !31
  tail call void @PyErr_SetString(ptr noundef %i.f, ptr noundef nonnull @.str.23) #16
  br label %bb.m

bb.e:                                             ; preds = %bb.c
  %i.g = tail call ptr @PyCapsule_GetPointer(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.10) #16 ; 2 uses
  %.not20 = icmp eq ptr %2, null
  br i1 %.not20, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !91
  store ptr %i.i, ptr %2, align 8, !tbaa !44
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not21 = icmp eq ptr %3, null
  br i1 %.not21, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.j = getelementptr i8, ptr %i.g, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !92
  store ptr %i.k, ptr %3, align 8, !tbaa !44
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.l = load i32, ptr %i.c, align 8, !tbaa !40   ; 2 uses
  %.not.i24 = icmp slt i32 %i.l, 0
  br i1 %.not.i24, label %Py_DECREF.exit25, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.m = add nsw i32 %i.l, -1                     ; 2 uses
  store i32 %i.m, ptr %i.c, align 8, !tbaa !40
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.k, label %Py_DECREF.exit25

bb.k:                                             ; preds = %bb.j
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #16
  br label %Py_DECREF.exit25

Py_DECREF.exit25:                                 ; preds = %bb.i, %bb.j, %bb.k
  %i.o = load i32, ptr %i.a, align 8, !tbaa !40   ; 2 uses
  %.not.i22 = icmp slt i32 %i.o, 0
  br i1 %.not.i22, label %Py_DECREF.exit23, label %bb.l

bb.l:                                             ; preds = %Py_DECREF.exit25
  %i.p = add nsw i32 %i.o, -1                     ; 2 uses
  store i32 %i.p, ptr %i.a, align 8, !tbaa !40
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %Py_DECREF.exit23.sink.split, label %Py_DECREF.exit23

bb.m:                                             ; preds = %bb.b, %bb.d
  %i.r = load i32, ptr %i.a, align 8, !tbaa !40   ; 2 uses
  %.not.i = icmp slt i32 %i.r, 0
  br i1 %.not.i, label %Py_DECREF.exit23, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.s = add nsw i32 %i.r, -1                     ; 2 uses
  store i32 %i.s, ptr %i.a, align 8, !tbaa !40
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %Py_DECREF.exit23.sink.split, label %Py_DECREF.exit23

Py_DECREF.exit23.sink.split:                      ; preds = %bb.n, %bb.l
  %.0.ph = phi i32 [ 0, %bb.l ], [ -1, %bb.n ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #16
  br label %Py_DECREF.exit23

Py_DECREF.exit23:                                 ; preds = %Py_DECREF.exit23.sink.split, %bb.n, %bb.m, %bb.l, %Py_DECREF.exit25, %bb.a
  %.0 = phi i32 [ -1, %bb.a ], [ -1, %bb.n ], [ 0, %Py_DECREF.exit25 ], [ 0, %bb.l ], [ -1, %bb.m ], [ %.0.ph, %Py_DECREF.exit23.sink.split ]
  ret i32 %.0
}

declare ptr @PyImport_ImportModule(ptr noundef) local_unnamed_addr #1

declare ptr @PyObject_GetAttrString(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @PyCapsule_IsValid(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @_PyUnicodeWriter_WriteChar(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @_PyUnicodeWriter_PrepareInternal(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @jisx0208_init(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46   ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 40
  %i.d = tail call fastcc i32 @importmap(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, ptr noundef %i.c, ptr noundef null)
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.b, i64 48
  %i.f = tail call fastcc i32 @importmap(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.28, ptr noundef null, ptr noundef %i.e)
  %.not3 = icmp ne i32 %i.f, 0
  %spec.select = sext i1 %.not3 to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.a ], [ %spec.select, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 65536) i32 @jisx0208_decoder(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #9 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !40      ; 2 uses
  %i.b = icmp eq i8 %i.a, 33
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !40
  %i.e = icmp eq i8 %i.d, 64
  br i1 %i.e, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr i8, ptr %0, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !46
  %i.h = getelementptr i8, ptr %i.g, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !93
  %i.j = zext i8 %i.a to i64
  %i.k = getelementptr [16 x i8], ptr %i.i, i64 %i.j ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !81   ; 2 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %1, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !40    ; 3 uses
  %i.o = zext i8 %i.n to i64
  %i.p = getelementptr i8, ptr %i.k, i64 8
  %i.q = load i8, ptr %i.p, align 8, !tbaa !84    ; 2 uses
  %i.r = zext i8 %i.q to i64
  %.not20 = icmp ult i8 %i.n, %i.q
  br i1 %.not20, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr i8, ptr %i.k, i64 9
  %i.t = load i8, ptr %i.s, align 1, !tbaa !85
  %.not21 = icmp ugt i8 %i.n, %i.t
  br i1 %.not21, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = sub nsw i64 %i.o, %i.r
  %i.v = getelementptr [2 x i8], ptr %i.l, i64 %i.u
  %i.w = load i16, ptr %i.v, align 2, !tbaa !62   ; 2 uses
  %.not22 = icmp eq i16 %i.w, -2
  %narrow = select i1 %.not22, i16 -1, i16 %i.w
  %spec.select = zext i16 %narrow to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c, %bb.d, %bb.e, %bb.b
  %.0 = phi i32 [ 65340, %bb.b ], [ 65535, %bb.c ], [ %spec.select, %bb.f ], [ 65535, %bb.e ], [ 65535, %bb.d ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal zeroext range(i16 -1, -32768) i16 @jisx0208_encoder(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2) #9 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !6      ; 4 uses
  %i.b = icmp ult i32 %i.a, 65536
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i32 %i.a, 65340
  br i1 %i.c, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !46
  %i.f = getelementptr i8, ptr %i.e, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !94
  %i.h = lshr i32 %i.a, 8
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr [16 x i8], ptr %i.g, i64 %i.i ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !87   ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = and i32 %i.a, 255                        ; 3 uses
  %i.m = getelementptr i8, ptr %i.j, i64 8
  %i.n = load i8, ptr %i.m, align 8, !tbaa !89
  %i.o = zext i8 %i.n to i32                      ; 2 uses
  %.not22 = icmp samesign ult i32 %i.l, %i.o
  br i1 %.not22, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr i8, ptr %i.j, i64 9
  %i.q = load i8, ptr %i.p, align 1, !tbaa !90
  %i.r = zext i8 %i.q to i32
  %.not23 = icmp samesign ugt i32 %i.l, %i.r
  br i1 %.not23, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = sub nsw i32 %i.l, %i.o
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr [2 x i8], ptr %i.k, i64 %i.t
  %i.v = load i16, ptr %i.u, align 2, !tbaa !62   ; 2 uses
  %.not25 = icmp sgt i16 %i.v, -1
  br i1 %.not25, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.b, %bb.g
  %.0 = phi i16 [ 8512, %bb.b ], [ -1, %bb.g ], [ %i.v, %bb.f ]
  ret i16 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 0, 65536) i32 @jisx0201_r_decoder(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1) #10 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !40      ; 6 uses
  %i.b = zext i8 %i.a to i32                      ; 2 uses
  %i.c = icmp ult i8 %i.a, 92
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i8 %i.a, 92
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp ult i8 %i.a, 126
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %switch.selectcmp = icmp eq i8 %i.a, 127
  %switch.select = select i1 %switch.selectcmp, i32 127, i32 65535
  %switch.selectcmp10 = icmp eq i8 %i.a, 126
  %switch.select11 = select i1 %switch.selectcmp10, i32 8254, i32 %switch.select
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a, %bb.b, %bb.c
  %.08 = phi i32 [ %i.b, %bb.c ], [ %switch.select11, %bb.d ], [ %i.b, %bb.a ], [ 165, %bb.b ]
  ret i32 %.08
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal zeroext range(i16 -1, 128) i16 @jisx0201_r_encoder(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2) #10 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !6
  %.fr = freeze i32 %i.a                          ; 5 uses
  %i.b = icmp ugt i32 %.fr, 127
  br i1 %i.b, label %bb.c, label %switch.early.test

switch.early.test:                                ; preds = %bb.a
  switch i32 %.fr, label %bb.b [
    i32 126, label %bb.c
    i32 92, label %bb.c
  ]

bb.b:                                             ; preds = %switch.early.test
end_hunk_0
