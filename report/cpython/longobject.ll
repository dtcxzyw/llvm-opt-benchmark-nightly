inline.NumInlined: 732
inline.NumDeleted: 98
begin_hunk_0
@.str.69 = private unnamed_addr constant [39 x i8] c"Ceiling of an Integral returns itself.\00", align 1
@.str.70 = private unnamed_addr constant [10 x i8] c"__round__\00", align 1
@int___round____doc__ = internal constant [135 x i8] c"__round__($self, ndigits=None, /)\0A--\0A\0ARounding an Integral returns itself.\0A\0ARounding with an ndigits argument also returns an integer.\00", align 16
@.str.71 = private unnamed_addr constant [15 x i8] c"__getnewargs__\00", align 1
@int___getnewargs____doc__ = internal constant [30 x i8] c"__getnewargs__($self, /)\0A--\0A\0A\00", align 16
@.str.72 = private unnamed_addr constant [11 x i8] c"__format__\00", align 1
@int___format____doc__ = internal constant [84 x i8] c"__format__($self, format_spec, /)\0A--\0A\0AConvert to a string according to format_spec.\00", align 16
@.str.73 = private unnamed_addr constant [11 x i8] c"__sizeof__\00", align 1
@int___sizeof____doc__ = internal constant [59 x i8] c"__sizeof__($self, /)\0A--\0A\0AReturns size in memory, in bytes.\00", align 16
@.str.74 = private unnamed_addr constant [11 x i8] c"is_integer\00", align 1
@int_is_integer__doc__ = internal constant [97 x i8] c"is_integer($self, /)\0A--\0A\0AReturns True. Exists for duck type compatibility with float.is_integer.\00", align 16
@long_methods = internal global [15 x { ptr, ptr, i32, [4 x i8], ptr }] [{ ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.57, ptr @long_long_meth, i32 4, [4 x i8] zeroinitializer, ptr @.str.58 }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.59, ptr @int_bit_length, i32 4, [4 x i8] zeroinitializer, ptr @int_bit_length__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.60, ptr @int_bit_count, i32 4, [4 x i8] zeroinitializer, ptr @int_bit_count__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.61, ptr @int_to_bytes, i32 130, [4 x i8] zeroinitializer, ptr @int_to_bytes__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.62, ptr @int_from_bytes, i32 146, [4 x i8] zeroinitializer, ptr @int_from_bytes__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.63, ptr @int_as_integer_ratio, i32 4, [4 x i8] zeroinitializer, ptr @int_as_integer_ratio__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.64, ptr @long_long_meth, i32 4, [4 x i8] zeroinitializer, ptr @.str.65 }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.66, ptr @long_long_meth, i32 4, [4 x i8] zeroinitializer, ptr @.str.67 }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.68, ptr @long_long_meth, i32 4, [4 x i8] zeroinitializer, ptr @.str.69 }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.70, ptr @int___round__, i32 128, [4 x i8] zeroinitializer, ptr @int___round____doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.71, ptr @int___getnewargs__, i32 4, [4 x i8] zeroinitializer, ptr @int___getnewargs____doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.72, ptr @int___format__, i32 8, [4 x i8] zeroinitializer, ptr @int___format____doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.73, ptr @int___sizeof__, i32 4, [4 x i8] zeroinitializer, ptr @int___sizeof____doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.74, ptr @int_is_integer, i32 4, [4 x i8] zeroinitializer, ptr @int_is_integer__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } zeroinitializer], align 16
@int_to_bytes._kwtuple = internal global %struct.anon.916 { %struct.PyGC_Head zeroinitializer, %struct.PyVarObject { %struct._object { %union.anon { i64 1407378104778752 }, ptr @PyTuple_Type }, i64 3 }, i64 -1, [3 x ptr] [ptr getelementptr (i8, ptr @_PyRuntime, i64 90080), ptr getelementptr (i8, ptr @_PyRuntime, i64 76352), ptr getelementptr (i8, ptr @_PyRuntime, i64 99688)] }, align 8
@PyTuple_Type = external global %struct._typeobject, align 8
@int_to_bytes._keywords = internal constant [4 x ptr] [ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr null], align 16
@.str.76 = private unnamed_addr constant [7 x i8] c"length\00", align 1
@.str.77 = private unnamed_addr constant [10 x i8] c"byteorder\00", align 1
@.str.78 = private unnamed_addr constant [7 x i8] c"signed\00", align 1
@int_to_bytes._parser = internal global { ptr, ptr, ptr, ptr, %struct._PyOnceFlag, [3 x i8], i32, i32, i32, i32, [4 x i8], ptr, ptr } { ptr null, ptr @int_to_bytes._keywords, ptr @.str.61, ptr null, %struct._PyOnceFlag zeroinitializer, [3 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr getelementptr (i8, ptr @int_to_bytes._kwtuple, i64 16), ptr null }, align 8
@.str.79 = private unnamed_addr constant [26 x i8] c"length cannot be negative\00", align 1
@.str.80 = private unnamed_addr constant [21 x i8] c"argument 'byteorder'\00", align 1
@.str.81 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@.str.82 = private unnamed_addr constant [43 x i8] c"byteorder must be either 'little' or 'big'\00", align 1
@int_from_bytes._kwtuple = internal global %struct.anon.917 { %struct.PyGC_Head zeroinitializer, %struct.PyVarObject { %struct._object { %union.anon { i64 1407378104778752 }, ptr @PyTuple_Type }, i64 3 }, i64 -1, [3 x ptr] [ptr getelementptr (i8, ptr @_PyRuntime, i64 76408), ptr getelementptr (i8, ptr @_PyRuntime, i64 76352), ptr getelementptr (i8, ptr @_PyRuntime, i64 99688)] }, align 8
@int_from_bytes._keywords = internal constant [4 x ptr] [ptr @.str.83, ptr @.str.77, ptr @.str.78, ptr null], align 16
@.str.83 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@int_from_bytes._parser = internal global { ptr, ptr, ptr, ptr, %struct._PyOnceFlag, [3 x i8], i32, i32, i32, i32, [4 x i8], ptr, ptr } { ptr null, ptr @int_from_bytes._keywords, ptr @.str.62, ptr null, %struct._PyOnceFlag zeroinitializer, [3 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr getelementptr (i8, ptr @int_from_bytes._kwtuple, i64 16), ptr null }, align 8
@PyBytes_Type = external global %struct._typeobject, align 8
@.str.84 = private unnamed_addr constant [4 x i8] c"(N)\00", align 1
@.str.85 = private unnamed_addr constant [9 x i8] c"argument\00", align 1
@.str.86 = private unnamed_addr constant [5 x i8] c"real\00", align 1
@.str.87 = private unnamed_addr constant [34 x i8] c"the real part of a complex number\00", align 1
@.str.88 = private unnamed_addr constant [5 x i8] c"imag\00", align 1
@.str.89 = private unnamed_addr constant [39 x i8] c"the imaginary part of a complex number\00", align 1
@.str.90 = private unnamed_addr constant [10 x i8] c"numerator\00", align 1
@.str.91 = private unnamed_addr constant [51 x i8] c"the numerator of a rational number in lowest terms\00", align 1
@.str.92 = private unnamed_addr constant [12 x i8] c"denominator\00", align 1
@.str.93 = private unnamed_addr constant [53 x i8] c"the denominator of a rational number in lowest terms\00", align 1
@long_new._kwtuple = internal global %struct.anon.918 { %struct.PyGC_Head zeroinitializer, %struct.PyVarObject { %struct._object { %union.anon { i64 1407378104778752 }, ptr @PyTuple_Type }, i64 1 }, i64 -1, [1 x ptr] [ptr getelementptr (i8, ptr @_PyRuntime, i64 75408)] }, align 8
@long_new._keywords = internal constant [3 x ptr] [ptr @.str.94, ptr @.str.95, ptr null], align 16
@.str.94 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.95 = private unnamed_addr constant [5 x i8] c"base\00", align 1
@long_new._parser = internal global { ptr, ptr, ptr, ptr, %struct._PyOnceFlag, [3 x i8], i32, i32, i32, i32, [4 x i8], ptr, ptr } { ptr null, ptr @long_new._keywords, ptr @.str.29, ptr null, %struct._PyOnceFlag zeroinitializer, [3 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr getelementptr (i8, ptr @long_new._kwtuple, i64 16), ptr null }, align 8
@.str.96 = private unnamed_addr constant [30 x i8] c"int() missing string argument\00", align 1
@.str.97 = private unnamed_addr constant [40 x i8] c"int() base must be >= 2 and <= 36, or 0\00", align 1
@PyByteArray_Type = external global %struct._typeobject, align 8
@.str.98 = private unnamed_addr constant [50 x i8] c"int() can't convert non-string with explicit base\00", align 1
@.str.99 = private unnamed_addr constant [42 x i8] c"int expected at most 2 arguments, got %zd\00", align 1
@.str.100 = private unnamed_addr constant [13 x i8] c"sys.int_info\00", align 1
@int_info__doc__ = internal constant [134 x i8] c"sys.int_info\0A\0AA named tuple that holds information about Python's\0Ainternal representation of integers.  The attributes are read only.\00", align 16
@int_info_fields = internal global [5 x %struct.PyStructSequence_Field] [%struct.PyStructSequence_Field { ptr @.str.102, ptr @.str.103 }, %struct.PyStructSequence_Field { ptr @.str.104, ptr @.str.105 }, %struct.PyStructSequence_Field { ptr @.str.106, ptr @.str.107 }, %struct.PyStructSequence_Field { ptr @.str.108, ptr @.str.109 }, %struct.PyStructSequence_Field zeroinitializer], align 16
@int_info_desc = internal global { ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.100, ptr @int_info__doc__, ptr @int_info_fields, i32 4, [4 x i8] zeroinitializer }, align 8
@.str.102 = private unnamed_addr constant [15 x i8] c"bits_per_digit\00", align 1
@.str.103 = private unnamed_addr constant [24 x i8] c"size of a digit in bits\00", align 1
@.str.104 = private unnamed_addr constant [13 x i8] c"sizeof_digit\00", align 1
@.str.105 = private unnamed_addr constant [54 x i8] c"size in bytes of the C type used to represent a digit\00", align 1
@.str.106 = private unnamed_addr constant [23 x i8] c"default_max_str_digits\00", align 1
@.str.107 = private unnamed_addr constant [44 x i8] c"maximum string conversion digits limitation\00", align 1
@.str.108 = private unnamed_addr constant [27 x i8] c"str_digits_check_threshold\00", align 1
@.str.109 = private unnamed_addr constant [46 x i8] c"minimum positive value for int_max_str_digits\00", align 1
@switch.table.long_format_binary = private unnamed_addr constant [15 x i8] [i8 1, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 3, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 4], align 4

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @_PyLong_New(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @long_alloc(i64 noundef %0)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @long_alloc(i64 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i64 %0, 307445734561825860
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !11
  tail call void @PyErr_SetString(ptr noundef %i.b, ptr noundef nonnull @.str.36) #16
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %.not18 = icmp eq i64 %0, 0
  %i.c = tail call i64 @llvm.umax.i64(i64 %0, i64 1)
  %i.d = icmp ult i64 %0, 2
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14   ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 11200    ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !16   ; 3 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %bb.e, label %_PyFreeList_Pop.exit

_PyFreeList_Pop.exit:                             ; preds = %bb.d
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !19
  store ptr %i.i, ptr %i.g, align 8, !tbaa !16
  %i.j = getelementptr i8, ptr %i.f, i64 11208    ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !20
  %i.l = add i64 %i.k, -1
  store i64 %i.l, ptr %i.j, align 8, !tbaa !20
  br label %_PyObject_Init.exit

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.m = shl i64 %i.c, 2
  %i.n = add i64 %i.m, 24
  %i.o = tail call ptr @PyObject_Malloc(i64 noundef %i.n) #16 ; 4 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = tail call ptr @PyErr_NoMemory() #16      ; 0 uses
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.q = getelementptr i8, ptr %i.o, i64 8
  store ptr @PyLong_Type, ptr %i.q, align 8, !tbaa !21
  %i.r = load i32, ptr @PyLong_Type, align 8, !tbaa !24 ; 2 uses
  %i.s = icmp ugt i32 %i.r, -1073741825
  br i1 %i.s, label %_PyObject_Init.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = add nuw i32 %i.r, 1
  store i32 %i.t, ptr @PyLong_Type, align 8, !tbaa !24
  br label %_PyObject_Init.exit

_PyObject_Init.exit:                              ; preds = %bb.h, %bb.g, %_PyFreeList_Pop.exit
  %.sink = phi ptr [ %i.h, %_PyFreeList_Pop.exit ], [ %i.o, %bb.g ], [ %i.o, %bb.h ] ; 4 uses
  tail call void @_Py_NewReference(ptr noundef nonnull %.sink) #16
  %i.u = zext i1 %.not18 to i64
  %i.v = shl i64 %0, 3
  %i.w = or disjoint i64 %i.v, %i.u
  %i.x = getelementptr i8, ptr %.sink, i64 16
  store i64 %i.w, ptr %i.x, align 8, !tbaa !25
  %i.y = getelementptr i8, ptr %.sink, i64 24
  store i32 0, ptr %i.y, align 8, !tbaa !7
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %_PyObject_Init.exit, %bb.b
  %.1 = phi ptr [ null, %bb.b ], [ %.sink, %_PyObject_Init.exit ], [ null, %bb.f ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define dso_local ptr @_PyLong_FromDigits(i32 noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc ptr @long_alloc(i64 noundef %1) ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i32 %0, 0
  %i.d = select i1 %.not, i64 0, i64 2
  %i.e = shl i64 %1, 3
  %i.f = or disjoint i64 %i.e, %i.d
  %i.g = getelementptr i8, ptr %i.b, i64 16
  store i64 %i.f, ptr %i.g, align 8, !tbaa !25
  %i.h = getelementptr i8, ptr %i.b, i64 24
  %i.i = shl i64 %1, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.h, ptr align 4 %2, i64 %i.i, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.1 = phi ptr [ null, %bb.b ], [ %i.b, %bb.c ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 14296), %bb.a ]
  ret ptr %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @_PyLong_Copy(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val24 = load i64, ptr %i.a, align 8, !tbaa !25 ; 4 uses
  %i.b = icmp ugt i64 %.val24, 15
  br i1 %i.b, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 24
  %.val26 = load i32, ptr %i.c, align 8, !tbaa !7
  %i.d = and i64 %.val24, 3
  %i.e = sub nsw i64 1, %i.d
  %i.f = zext i32 %.val26 to i64
  %i.g = mul nsw i64 %i.e, %i.f                   ; 2 uses
  %i.h = add nsw i64 %i.g, -1025
  %or.cond = icmp ult i64 %i.h, -1030
  br i1 %or.cond, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %1 = getelementptr [32 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 14136), i64 %i.g
  %i.i = getelementptr i8, ptr %1, i64 160
  br label %bb.e

.thread:                                          ; preds = %bb.a, %bb.b
  %i.j = lshr i64 %.val24, 3                      ; 2 uses
  %i.k = tail call fastcc ptr @long_alloc(i64 noundef %i.j) ; 4 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.thread
  %i.m = and i64 %.val24, -5
  %i.n = getelementptr i8, ptr %i.k, i64 16
  store i64 %i.m, ptr %i.n, align 8, !tbaa !25
  %i.o = getelementptr i8, ptr %i.k, i64 24
  %i.p = getelementptr i8, ptr %0, i64 24
  %i.q = shl nuw nsw i64 %i.j, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.o, ptr align 8 %i.p, i64 %i.q, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %.thread
  %.2 = phi ptr [ %i.i, %bb.c ], [ %i.k, %bb.d ], [ null, %.thread ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyLong_FromLong(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = add i64 %0, 5
  %or.cond = icmp ult i64 %i.a, 1030
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %1 = getelementptr [32 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 14136), i64 %0
  %i.b = getelementptr i8, ptr %1, i64 160
  br label %_PyLong_FromMedium.exit

bb.c:                                             ; preds = %bb.a
  %i.c = add i64 %0, 1073741823
  %or.cond3 = icmp ult i64 %i.c, 2147483647
  br i1 %or.cond3, label %bb.d, label %.peel.begin

bb.d:                                             ; preds = %bb.c
  %i.d = trunc nsw i64 %0 to i32
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14   ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 11200    ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !16   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %bb.e, label %_PyFreeList_Pop.exit.i

_PyFreeList_Pop.exit.i:                           ; preds = %bb.d
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !19
  store ptr %i.i, ptr %i.g, align 8, !tbaa !16
  %i.j = getelementptr i8, ptr %i.f, i64 11208    ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !20
  %i.l = add i64 %i.k, -1
  store i64 %i.l, ptr %i.j, align 8, !tbaa !20
  br label %_PyObject_Init.exit.i

bb.e:                                             ; preds = %bb.d
  %i.m = tail call ptr @PyObject_Malloc(i64 noundef 32) #16, !inline_history !28 ; 4 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = tail call ptr @PyErr_NoMemory() #16, !inline_history !28 ; 0 uses
  br label %_PyLong_FromMedium.exit

bb.g:                                             ; preds = %bb.e
  %i.p = getelementptr i8, ptr %i.m, i64 8
  store ptr @PyLong_Type, ptr %i.p, align 8, !tbaa !21
  %i.q = load i32, ptr @PyLong_Type, align 8, !tbaa !24 ; 2 uses
  %i.r = icmp ugt i32 %i.q, -1073741825
  br i1 %i.r, label %_PyObject_Init.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = add nuw i32 %i.q, 1
  store i32 %i.s, ptr @PyLong_Type, align 8, !tbaa !24
  br label %_PyObject_Init.exit.i

_PyObject_Init.exit.i:                            ; preds = %bb.h, %bb.g, %_PyFreeList_Pop.exit.i
  %.sink.i = phi ptr [ %i.h, %_PyFreeList_Pop.exit.i ], [ %i.m, %bb.g ], [ %i.m, %bb.h ] ; 4 uses
  tail call void @_Py_NewReference(ptr noundef nonnull %.sink.i) #16, !inline_history !28
  %i.t = tail call i32 @llvm.abs.i32(i32 %i.d, i1 true)
  %i.u = lshr i64 %0, 30
  %i.v = and i64 %i.u, 2
  %i.w = or disjoint i64 %i.v, 8
  %i.x = getelementptr i8, ptr %.sink.i, i64 16
  store i64 %i.w, ptr %i.x, align 8, !tbaa !25
  %i.y = getelementptr i8, ptr %.sink.i, i64 24
  store i32 %i.t, ptr %i.y, align 8, !tbaa !7
  br label %_PyLong_FromMedium.exit

.peel.begin:                                      ; preds = %bb.c
  %i.z = tail call i64 @llvm.abs.i64(i64 %0, i1 false) ; 2 uses
  %i.aa = icmp ult i64 %i.z, 1152921504606846976
  %spec.select = select i1 %i.aa, i64 2, i64 3    ; 2 uses
  %i.ab = tail call fastcc ptr @long_alloc(i64 noundef %spec.select) ; 4 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_PyLong_FromMedium.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.peel.begin
  %i.ad = lshr i64 %0, 62
  %i.ae = and i64 %i.ad, 2
  %i.af = shl nuw nsw i64 %spec.select, 3
  %i.ag = or disjoint i64 %i.af, %i.ae
  %i.ah = getelementptr i8, ptr %i.ab, i64 16
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !25
  %i.ai = getelementptr i8, ptr %i.ab, i64 24
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.036 = phi ptr [ %i.al, %.lr.ph ], [ %i.ai, %.lr.ph.preheader ] ; 2 uses
  %.13135 = phi i64 [ %i.am, %.lr.ph ], [ %i.z, %.lr.ph.preheader ] ; 2 uses
  %i.aj = trunc i64 %.13135 to i32
  %i.ak = and i32 %i.aj, 1073741823
  %i.al = getelementptr i8, ptr %.036, i64 4
  store i32 %i.ak, ptr %.036, align 4, !tbaa !7
  %i.am = lshr i64 %.13135, 30                    ; 2 uses
  %.not = icmp eq i64 %i.am, 0
  br i1 %.not, label %_PyLong_FromMedium.exit, label %.lr.ph, !llvm.loop !29

_PyLong_FromMedium.exit:                          ; preds = %.lr.ph, %_PyObject_Init.exit.i, %bb.f, %.peel.begin, %bb.b
  %.1 = phi ptr [ %i.b, %bb.b ], [ %.sink.i, %_PyObject_Init.exit.i ], [ null, %.peel.begin ], [ null, %bb.f ], [ %i.ab, %.lr.ph ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyLong_FromUnsignedLong(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i64 %0, 1025
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr [32 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 14136), i64 %0
  %i.c = getelementptr i8, ptr %i.b, i64 160
  br label %_PyLong_FromMedium.exit

bb.c:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %0, 1073741824
  br i1 %i.d, label %bb.d, label %.peel.begin

bb.d:                                             ; preds = %bb.c
  %i.e = trunc nuw nsw i64 %0 to i32
  %i.f = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !14   ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 11200    ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !16   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %bb.e, label %_PyFreeList_Pop.exit.i

_PyFreeList_Pop.exit.i:                           ; preds = %bb.d
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !19
  store ptr %i.j, ptr %i.h, align 8, !tbaa !16
  %i.k = getelementptr i8, ptr %i.g, i64 11208    ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !20
  %i.m = add i64 %i.l, -1
  store i64 %i.m, ptr %i.k, align 8, !tbaa !20
  br label %_PyObject_Init.exit.i

bb.e:                                             ; preds = %bb.d
  %i.n = tail call ptr @PyObject_Malloc(i64 noundef 32) #16, !inline_history !28 ; 4 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = tail call ptr @PyErr_NoMemory() #16, !inline_history !28 ; 0 uses
  br label %_PyLong_FromMedium.exit

bb.g:                                             ; preds = %bb.e
  %i.q = getelementptr i8, ptr %i.n, i64 8
  store ptr @PyLong_Type, ptr %i.q, align 8, !tbaa !21
  %i.r = load i32, ptr @PyLong_Type, align 8, !tbaa !24 ; 2 uses
  %i.s = icmp ugt i32 %i.r, -1073741825
  br i1 %i.s, label %_PyObject_Init.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = add nuw i32 %i.r, 1
  store i32 %i.t, ptr @PyLong_Type, align 8, !tbaa !24
  br label %_PyObject_Init.exit.i

_PyObject_Init.exit.i:                            ; preds = %bb.h, %bb.g, %_PyFreeList_Pop.exit.i
  %.sink.i = phi ptr [ %i.i, %_PyFreeList_Pop.exit.i ], [ %i.n, %bb.g ], [ %i.n, %bb.h ] ; 4 uses
  tail call void @_Py_NewReference(ptr noundef nonnull %.sink.i) #16, !inline_history !28
  %i.u = getelementptr i8, ptr %.sink.i, i64 16
  store i64 8, ptr %i.u, align 8, !tbaa !25
  %i.v = getelementptr i8, ptr %.sink.i, i64 24
  store i32 %i.e, ptr %i.v, align 8, !tbaa !7
  br label %_PyLong_FromMedium.exit

.peel.begin:                                      ; preds = %bb.c
  %i.w = icmp ult i64 %0, 1152921504606846976
  %spec.select = select i1 %i.w, i64 2, i64 3
  %i.x = tail call fastcc ptr @long_alloc(i64 noundef %spec.select) ; 3 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %_PyLong_FromMedium.exit, label %bb.i

bb.i:                                             ; preds = %.peel.begin
  %i.z = getelementptr i8, ptr %i.x, i64 24
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.j
  %.024 = phi ptr [ %i.z, %bb.i ], [ %i.ac, %bb.j ] ; 2 uses
  %.01923 = phi i64 [ %0, %bb.i ], [ %i.ad, %bb.j ] ; 2 uses
  %i.aa = trunc i64 %.01923 to i32
  %i.ab = and i32 %i.aa, 1073741823
  %i.ac = getelementptr i8, ptr %.024, i64 4
  store i32 %i.ab, ptr %.024, align 4, !tbaa !7
  %i.ad = lshr i64 %.01923, 30                    ; 2 uses
  %.not = icmp eq i64 %i.ad, 0
  br i1 %.not, label %_PyLong_FromMedium.exit, label %bb.j, !llvm.loop !31

_PyLong_FromMedium.exit:                          ; preds = %bb.j, %_PyObject_Init.exit.i, %bb.f, %.peel.begin, %bb.b
  %.1 = phi ptr [ %i.c, %bb.b ], [ %.sink.i, %_PyObject_Init.exit.i ], [ null, %.peel.begin ], [ null, %bb.f ], [ %i.x, %bb.j ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyLong_FromUnsignedLongLong(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i64 %0, 1025
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr [32 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 14136), i64 %0
  %i.c = getelementptr i8, ptr %i.b, i64 160
  br label %_PyLong_FromMedium.exit

bb.c:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %0, 1073741824
  br i1 %i.d, label %bb.d, label %.peel.begin

bb.d:                                             ; preds = %bb.c
  %i.e = trunc nuw nsw i64 %0 to i32
end_hunk_0
begin_hunk_1_@_PyLong_FromByteArray:bb.a
  %.177.us = phi i64 [ %i.ah, %bb.g ], [ %.07696.us, %.lr.ph.split.us ] ; 2 uses
  %.168.us = phi i64 [ %i.ai, %bb.g ], [ %i.ab, %.lr.ph.split.us ] ; 2 uses
  %.1.us = phi i32 [ %i.aj, %bb.g ], [ %i.ac, %.lr.ph.split.us ] ; 2 uses
  %i.ak = add nuw i64 %.07197.us, 1               ; 2 uses
  %i.al = getelementptr i8, ptr %.065101.us, i64 %.078
  %exitcond110.not = icmp eq i64 %i.ak, %.080
  br i1 %exitcond110.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !49

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.j
  %.065101 = phi ptr [ %i.be, %bb.j ], [ %.073, %.lr.ph ] ; 2 uses
  %.066100 = phi i32 [ %.1, %bb.j ], [ 0, %.lr.ph ] ; 3 uses
  %.06799 = phi i64 [ %.168, %bb.j ], [ 0, %.lr.ph ]
  %.06998 = phi i64 [ %i.aq, %bb.j ], [ 1, %.lr.ph ]
  %.07197 = phi i64 [ %i.bd, %bb.j ], [ 0, %.lr.ph ]
  %.07696 = phi i64 [ %.177, %bb.j ], [ 0, %.lr.ph ] ; 3 uses
  %i.am = load i8, ptr %.065101, align 1, !tbaa !24
  %i.an = xor i8 %i.am, -1
  %i.ao = zext i8 %i.an to i64
  %i.ap = add nuw nsw i64 %.06998, %i.ao          ; 2 uses
  %i.aq = lshr i64 %i.ap, 8
  %i.ar = and i64 %i.ap, 255
  %i.as = zext nneg i32 %.066100 to i64
  %i.at = shl i64 %i.ar, %i.as
  %i.au = or i64 %i.at, %.06799                   ; 3 uses
  %i.av = add i32 %.066100, 8                     ; 2 uses
  %i.aw = icmp ugt i32 %i.av, 29
  br i1 %i.aw, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.split
  %i.ax = trunc i64 %i.au to i32
  %i.ay = and i32 %i.ax, 1073741823
  %i.az = getelementptr [4 x i8], ptr %i.w, i64 %.07696
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !7
  %i.ba = add i64 %.07696, 1
  %i.bb = lshr i64 %i.au, 30
  %i.bc = add i32 %.066100, -22
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.split
  %.177 = phi i64 [ %i.ba, %bb.i ], [ %.07696, %.lr.ph.split ] ; 2 uses
  %.168 = phi i64 [ %i.bb, %bb.i ], [ %i.au, %.lr.ph.split ] ; 2 uses
  %.1 = phi i32 [ %i.bc, %bb.i ], [ %i.av, %.lr.ph.split ] ; 2 uses
  %i.bd = add nuw i64 %.07197, 1                  ; 2 uses
  %i.be = getelementptr i8, ptr %.065101, i64 %.078
  %exitcond109.not = icmp eq i64 %i.bd, %.080
  br i1 %exitcond109.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !49

._crit_edge:                                      ; preds = %bb.j, %bb.h
  %.076.lcssa = phi i64 [ %.177.us, %bb.h ], [ %.177, %bb.j ] ; 3 uses
  %.067.lcssa = phi i64 [ %.168.us, %bb.h ], [ %.168, %bb.j ]
  %.066.lcssa = phi i32 [ %.1.us, %bb.h ], [ %.1, %bb.j ]
  %.not91 = icmp eq i32 %.066.lcssa, 0
  br i1 %.not91, label %bb.l, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.bf = trunc i64 %.067.lcssa to i32
  %i.bg = getelementptr i8, ptr %i.t, i64 24
  %i.bh = getelementptr [4 x i8], ptr %i.bg, i64 %.076.lcssa
  store i32 %i.bf, ptr %i.bh, align 4, !tbaa !7
  %i.bi = add i64 %.076.lcssa, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge
  %.2 = phi i64 [ %i.bi, %bb.k ], [ %.076.lcssa, %._crit_edge ]
  %.2.fr = freeze i64 %.2                         ; 3 uses
  %i.bj = icmp eq i64 %.2.fr, 0
  %i.bk = select i1 %.072121, i64 0, i64 2
  %spec.select138 = select i1 %i.bj, i64 1, i64 %i.bk ; 2 uses
  %i.bl = shl i64 %.2.fr, 3
  %i.bm = or disjoint i64 %spec.select138, %i.bl
  %i.bn = getelementptr i8, ptr %i.t, i64 16      ; 2 uses
  store i64 %i.bm, ptr %i.bn, align 8, !tbaa !25
  %i.bo = and i64 %.2.fr, 2305843009213693951     ; 3 uses
  %.not1315.i = icmp eq i64 %i.bo, 0
  br i1 %.not1315.i, label %long_normalize.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l
  %i.bp = getelementptr i8, ptr %i.t, i64 20
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %.lr.ph.i
  %.016.i = phi i64 [ %i.bo, %.lr.ph.i ], [ %i.bt, %bb.n ] ; 4 uses
  %i.bq = getelementptr [4 x i8], ptr %i.bp, i64 %.016.i
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !7
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %bb.n, label %.critedge.i

bb.n:                                             ; preds = %bb.m
  %i.bt = add nsw i64 %.016.i, -1                 ; 2 uses
  %.not13.i = icmp eq i64 %i.bt, 0
  br i1 %.not13.i, label %.critedge.thread.thread.sink.split.i, label %bb.m, !llvm.loop !50

.critedge.i:                                      ; preds = %bb.m
  %.not.i = icmp eq i64 %.016.i, %i.bo
  br i1 %.not.i, label %long_normalize.exit, label %bb.o

bb.o:                                             ; preds = %.critedge.i
  %i.bu = shl nuw i64 %.016.i, 3
  %i.bv = or disjoint i64 %i.bu, %spec.select138
  br label %.critedge.thread.thread.sink.split.i

.critedge.thread.thread.sink.split.i:             ; preds = %bb.n, %bb.o
  %.sink.i = phi i64 [ %i.bv, %bb.o ], [ 1, %bb.n ]
  store i64 %.sink.i, ptr %i.bn, align 8, !tbaa !25
  br label %long_normalize.exit

long_normalize.exit:                              ; preds = %.thread132, %bb.l, %.critedge.i, %.critedge.thread.thread.sink.split.i
  %i.bw = tail call fastcc ptr @maybe_small_long(ptr noundef nonnull %i.t)
  br label %bb.p

bb.p:                                             ; preds = %bb.a, %bb.f, %long_normalize.exit
  %.0 = phi ptr [ null, %bb.f ], [ %i.bw, %long_normalize.exit ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 14296), %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @maybe_small_long(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %.val = load i64, ptr %i.a, align 8, !tbaa !25  ; 3 uses
  %i.b = icmp ugt i64 %.val, 15
  br i1 %i.b, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %0, i64 24
  %.val15 = load i32, ptr %i.c, align 8, !tbaa !7
  %i.d = and i64 %.val, 3
  %i.e = sub nsw i64 1, %i.d
  %i.f = zext i32 %.val15 to i64
  %i.g = mul nsw i64 %i.e, %i.f                   ; 2 uses
  %i.h = add nsw i64 %i.g, 5
  %or.cond = icmp ult i64 %i.h, 1030
  br i1 %or.cond, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.i = load i32, ptr %0, align 8, !tbaa !24     ; 2 uses
  %.not.i.i = icmp sgt i32 %i.i, -1
  br i1 %.not.i.i, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.j = add nsw i32 %i.i, -1                     ; 2 uses
  store i32 %i.j, ptr %0, align 8, !tbaa !24
  %.not9.i.i = icmp eq i32 %i.j, 0
  br i1 %.not9.i.i, label %bb.f, label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !51 ; 2 uses
  %.not10.i.i = icmp eq ptr %i.k, null
  br i1 %.not10.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !53
  %i.m = tail call i32 %i.k(ptr noundef nonnull %0, i32 noundef 1, ptr noundef %i.l) #16, !inline_history !54 ; 0 uses
  %.val6.i.i.i.pre = load i64, ptr %i.a, align 8, !tbaa !25
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.val6.i.i.i = phi i64 [ %.val6.i.i.i.pre, %bb.g ], [ %.val, %bb.f ] ; 2 uses
  %i.n = and i64 %.val6.i.i.i, 4
  %.not.i.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_Py_SetImmortal(ptr noundef nonnull %0) #16
  br label %bb.n

bb.j:                                             ; preds = %bb.h
  %i.o = icmp ugt i64 %.val6.i.i.i, 15
  br i1 %i.o, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !14   ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 11208    ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !20   ; 2 uses
  %or.cond.i.i.i.i.i = icmp ult i64 %i.s, 100
  br i1 %or.cond.i.i.i.i.i, label %_PyFreeList_Push.exit.i.i.i.i, label %bb.l

_PyFreeList_Push.exit.i.i.i.i:                    ; preds = %bb.k
  %i.t = getelementptr i8, ptr %i.q, i64 11200    ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !16
  store ptr %i.u, ptr %0, align 8, !tbaa !19
  store ptr %0, ptr %i.t, align 8, !tbaa !16
  %i.v = add nuw nsw i64 %i.s, 1
  store i64 %i.v, ptr %i.r, align 8, !tbaa !20
  br label %bb.n

bb.l:                                             ; preds = %bb.k
  tail call void @PyObject_Free(ptr noundef nonnull %0) #16
  br label %bb.n

bb.m:                                             ; preds = %bb.j
  tail call void @PyObject_Free(ptr noundef nonnull %0) #16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %_PyFreeList_Push.exit.i.i.i.i, %bb.i, %bb.e, %bb.d
  %1 = getelementptr [32 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 14136), i64 %i.g
  %i.w = getelementptr i8, ptr %1, i64 160
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.a, %bb.b, %bb.n
  %.1 = phi ptr [ %i.w, %bb.n ], [ null, %bb.a ], [ %0, %bb.b ], [ %0, %bb.c ]
  ret ptr %.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef ptr @long_normalize(ptr nofree noundef returned captures(ret: address, provenance) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %.val = load i64, ptr %i.a, align 8, !tbaa !25  ; 2 uses
  %i.b = lshr i64 %.val, 3                        ; 3 uses
  %.not1315 = icmp eq i64 %i.b, 0
  br i1 %.not1315, label %.critedge.thread.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 20
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.016 = phi i64 [ %i.b, %.lr.ph ], [ %i.g, %bb.c ] ; 4 uses
  %i.d = getelementptr [4 x i8], ptr %i.c, i64 %.016
  %i.e = load i32, ptr %i.d, align 4, !tbaa !7
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.g = add nsw i64 %.016, -1                    ; 2 uses
  %.not13 = icmp eq i64 %i.g, 0
  br i1 %.not13, label %.critedge.thread.thread.sink.split, label %bb.b, !llvm.loop !50

.critedge:                                        ; preds = %bb.b
  %.not = icmp eq i64 %.016, %i.b
  br i1 %.not, label %.critedge.thread.thread, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.h = shl nuw i64 %.016, 3
  %i.i = and i64 %.val, 3
  %i.j = or disjoint i64 %i.h, %i.i
  br label %.critedge.thread.thread.sink.split

.critedge.thread.thread.sink.split:               ; preds = %bb.c, %bb.d
  %.sink = phi i64 [ %i.j, %bb.d ], [ 1, %bb.c ]
  store i64 %.sink, ptr %i.a, align 8, !tbaa !25
  br label %.critedge.thread.thread

.critedge.thread.thread:                          ; preds = %.critedge.thread.thread.sink.split, %bb.a, %.critedge
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @_PyLong_AsByteArray(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val = load i64, ptr %i.a, align 8, !tbaa !25  ; 2 uses
  %i.b = lshr i64 %.val, 3                        ; 6 uses
  %i.c = and i64 %.val, 3
  %i.d = icmp eq i64 %i.c, 2                      ; 3 uses
  br i1 %i.d, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.not97 = icmp eq i32 %5, 0
  br i1 %.not97, label %.loopexit, label %.loopexit.sink.split

bb.d:                                             ; preds = %bb.b
  %.not98 = icmp eq i32 %3, 0                     ; 3 uses
  %i.e = getelementptr i8, ptr %1, i64 %2
  %i.f = getelementptr i8, ptr %i.e, i64 -1
  %.080 = select i1 %.not98, ptr %i.f, ptr %1     ; 2 uses
  %.079.neg = select i1 %.not98, i64 1, i64 -1    ; 2 uses
  %.079 = select i1 %.not98, i64 -1, i64 1        ; 3 uses
  %.not152 = icmp eq i64 %i.b, 0
  br i1 %.not152, label %._crit_edge140.thread, label %.lr.ph139.split.us.preheader

.thread:                                          ; preds = %bb.a
  %.not98178 = icmp eq i32 %3, 0                  ; 3 uses
  %i.g = getelementptr i8, ptr %1, i64 %2
  %i.h = getelementptr i8, ptr %i.g, i64 -1
  %.080179 = select i1 %.not98178, ptr %i.h, ptr %1 ; 2 uses
  %.079.neg180 = select i1 %.not98178, i64 1, i64 -1 ; 2 uses
  %.079181 = select i1 %.not98178, i64 -1, i64 1  ; 3 uses
  %.not152182 = icmp eq i64 %i.b, 0
  br i1 %.not152182, label %._crit_edge140.thread, label %.lr.ph139.split.preheader

.lr.ph139.split.preheader:                        ; preds = %.thread
  %i.i = getelementptr i8, ptr %0, i64 24
  %i.j = add nsw i64 %i.b, -1
  br label %.lr.ph139.split

.lr.ph139.split.us.preheader:                     ; preds = %bb.d
  %i.k = getelementptr i8, ptr %0, i64 24
  %i.l = add nsw i64 %i.b, -1
  br label %.lr.ph139.split.us

.lr.ph139.split.us:                               ; preds = %.lr.ph139.split.us.preheader, %._crit_edge.us
  %.073137.us = phi i64 [ %i.ah, %._crit_edge.us ], [ 0, %.lr.ph139.split.us.preheader ] ; 3 uses
  %.181136.us = phi ptr [ %.2.lcssa.us, %._crit_edge.us ], [ %.080, %.lr.ph139.split.us.preheader ] ; 2 uses
  %.082135.us = phi i64 [ %.183.lcssa.us, %._crit_edge.us ], [ 0, %.lr.ph139.split.us.preheader ] ; 4 uses
  %.086134.us = phi i32 [ %i.q, %._crit_edge.us ], [ 1, %.lr.ph139.split.us.preheader ]
  %.089133.us = phi i32 [ %.392.lcssa.us, %._crit_edge.us ], [ 0, %.lr.ph139.split.us.preheader ] ; 4 uses
  %.093132.us = phi i64 [ %.194.lcssa.us, %._crit_edge.us ], [ 0, %.lr.ph139.split.us.preheader ]
  %i.m = getelementptr [4 x i8], ptr %i.k, i64 %.073137.us
  %i.n = load i32, ptr %i.m, align 4, !tbaa !7
  %i.o = xor i32 %i.n, 1073741823
  %i.p = add i32 %i.o, %.086134.us                ; 2 uses
  %i.q = lshr i32 %i.p, 30
  %i.r = and i32 %i.p, 1073741823                 ; 3 uses
  %i.s = zext nneg i32 %i.r to i64
  %i.t = zext nneg i32 %.089133.us to i64
  %i.u = shl i64 %i.s, %i.t
  %i.v = or i64 %i.u, %.093132.us                 ; 2 uses
  %i.w = icmp eq i64 %.073137.us, %i.l
  br i1 %i.w, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph139.split.us
  %i.x = add i32 %.089133.us, 30
  br label %.loopexit111.us

bb.f:                                             ; preds = %.lr.ph139.split.us
  %.not104120.us = icmp eq i32 %i.r, 1073741823
  br i1 %.not104120.us, label %.loopexit111.us, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %bb.f
  %i.y = xor i32 %i.r, 1073741823
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %.lr.ph.us
  %.075122.us = phi i32 [ %i.z, %.lr.ph.us ], [ %i.y, %.lr.ph.us.preheader ]
  %.190121.us = phi i32 [ %i.aa, %.lr.ph.us ], [ %.089133.us, %.lr.ph.us.preheader ]
  %i.z = lshr i32 %.075122.us, 1                  ; 2 uses
  %i.aa = add i32 %.190121.us, 1                  ; 2 uses
  %.not104.us = icmp eq i32 %i.z, 0
  br i1 %.not104.us, label %.loopexit111.us, label %.lr.ph.us, !llvm.loop !55

.loopexit111.us:                                  ; preds = %.lr.ph.us, %bb.f, %bb.e
  %.291.us = phi i32 [ %i.x, %bb.e ], [ %.089133.us, %bb.f ], [ %i.aa, %.lr.ph.us ] ; 4 uses
  %i.ab = icmp ugt i32 %.291.us, 7
  br i1 %i.ab, label %.lr.ph127.us.preheader, label %._crit_edge.us

.lr.ph127.us.preheader:                           ; preds = %.loopexit111.us
  %umax166 = tail call i64 @llvm.umax.i64(i64 %.082135.us, i64 %2)
  %i.ac = add i32 %.291.us, -8
  %i.ad = lshr i32 %i.ac, 3
  %i.ae = add nuw nsw i32 %i.ad, 1
  %i.af = trunc i64 %.082135.us to i32
  %i.ag = add i32 %i.ae, %i.af
  br label %.lr.ph127.us

._crit_edge.us:                                   ; preds = %bb.g, %.loopexit111.us
  %.194.lcssa.us = phi i64 [ %i.v, %.loopexit111.us ], [ %i.am, %bb.g ] ; 2 uses
  %.392.lcssa.us = phi i32 [ %.291.us, %.loopexit111.us ], [ %i.al, %bb.g ] ; 2 uses
  %.183.lcssa.us = phi i64 [ %.082135.us, %.loopexit111.us ], [ %i.ai, %bb.g ] ; 2 uses
  %.2.lcssa.us = phi ptr [ %.181136.us, %.loopexit111.us ], [ %i.ak, %bb.g ] ; 2 uses
  %i.ah = add nuw nsw i64 %.073137.us, 1          ; 2 uses
  %exitcond170.not = icmp eq i64 %i.ah, %i.b
  br i1 %exitcond170.not, label %._crit_edge140, label %.lr.ph139.split.us, !llvm.loop !56

.lr.ph127.us:                                     ; preds = %.lr.ph127.us.preheader, %bb.g
  %.2126.us = phi ptr [ %i.ak, %bb.g ], [ %.181136.us, %.lr.ph127.us.preheader ] ; 2 uses
  %.183125.us = phi i64 [ %i.ai, %bb.g ], [ %.082135.us, %.lr.ph127.us.preheader ] ; 2 uses
  %.392124.us = phi i32 [ %i.al, %bb.g ], [ %.291.us, %.lr.ph127.us.preheader ]
  %.194123.us = phi i64 [ %i.am, %bb.g ], [ %i.v, %.lr.ph127.us.preheader ] ; 2 uses
  %exitcond167.not = icmp eq i64 %.183125.us, %umax166
  br i1 %exitcond167.not, label %.loopexit110, label %bb.g

bb.g:                                             ; preds = %.lr.ph127.us
  %i.ai = add i64 %.183125.us, 1                  ; 3 uses
  %i.aj = trunc i64 %.194123.us to i8
  store i8 %i.aj, ptr %.2126.us, align 1, !tbaa !24
  %i.ak = getelementptr i8, ptr %.2126.us, i64 %.079 ; 2 uses
  %i.al = add i32 %.392124.us, -8                 ; 2 uses
  %i.am = lshr i64 %.194123.us, 8                 ; 2 uses
  %lftr.wideiv168 = trunc i64 %i.ai to i32
  %exitcond169.not = icmp eq i32 %i.ag, %lftr.wideiv168
  br i1 %exitcond169.not, label %._crit_edge.us, label %.lr.ph127.us, !llvm.loop !57

.lr.ph139.split:                                  ; preds = %.lr.ph139.split.preheader, %._crit_edge
  %.073137 = phi i64 [ %i.bi, %._crit_edge ], [ 0, %.lr.ph139.split.preheader ] ; 3 uses
  %.181136 = phi ptr [ %.2.lcssa, %._crit_edge ], [ %.080179, %.lr.ph139.split.preheader ] ; 2 uses
  %.082135 = phi i64 [ %.183.lcssa, %._crit_edge ], [ 0, %.lr.ph139.split.preheader ] ; 4 uses
  %.089133 = phi i32 [ %.392.lcssa, %._crit_edge ], [ 0, %.lr.ph139.split.preheader ] ; 4 uses
  %.093132 = phi i64 [ %.194.lcssa, %._crit_edge ], [ 0, %.lr.ph139.split.preheader ]
  %i.an = getelementptr [4 x i8], ptr %i.i, i64 %.073137
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !7  ; 3 uses
  %i.ap = zext i32 %i.ao to i64
  %i.aq = zext nneg i32 %.089133 to i64
  %i.ar = shl i64 %i.ap, %i.aq
  %i.as = or i64 %i.ar, %.093132                  ; 2 uses
  %i.at = icmp eq i64 %.073137, %i.j
  br i1 %i.at, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph139.split
  %.not104120 = icmp eq i32 %i.ao, 0
  br i1 %.not104120, label %.loopexit111, label %.lr.ph.preheader

end_hunk_1
begin_hunk_2_@PyLong_AsNativeBytes:bb.a
  %i.co = add nsw i64 %2, -1                      ; 2 uses
  br i1 %i.cn, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.cp = select i1 %i.d, i32 128, i32 0
  %i.cq = select i1 %i.d, i32 0, i32 128
  %i.cr = load i8, ptr %1, align 1, !tbaa !24
  %i.cs = zext i8 %i.cr to i32
  %i.ct = icmp eq i32 %i.cq, %i.cs                ; 2 uses
  %i.cu = icmp ne i64 %2, 1
  %i.cv = select i1 %i.cu, i1 %i.ct, i1 false
  br i1 %i.cv, label %.peel.next, label %._crit_edge

._crit_edge:                                      ; preds = %.peel.next, %bb.af
  %.188.in.lcssa = phi i1 [ %i.ct, %bb.af ], [ %.188.in, %.peel.next ]
  %spec.select = select i1 %.188.in.lcssa, i64 %2, i64 %i.ci
  br label %_fits_in_n_bits.exit.thread

.peel.next:                                       ; preds = %bb.af, %.peel.next
  %.085168 = phi i64 [ %i.db, %.peel.next ], [ 1, %bb.af ] ; 2 uses
  %.pn = phi ptr [ %.086167, %.peel.next ], [ %1, %bb.af ]
  %.086167 = getelementptr i8, ptr %.pn, i64 1    ; 2 uses
  %i.cw = icmp slt i64 %.085168, %i.co
  %i.cx = load i8, ptr %.086167, align 1, !tbaa !24 ; 2 uses
  %i.cy = zext i8 %i.cx to i32
  %i.cz = icmp eq i32 %i.cp, %i.cy
  %i.da = icmp eq i8 %i.cx, 0
  %.188.in = select i1 %i.cw, i1 %i.da, i1 %i.cz  ; 2 uses
  %i.db = add nuw nsw i64 %.085168, 1             ; 2 uses
  %i.dc = icmp slt i64 %i.db, %2
  %i.dd = select i1 %i.dc, i1 %.188.in, i1 false
  br i1 %i.dd, label %.peel.next, label %._crit_edge, !llvm.loop !61

bb.ag:                                            ; preds = %bb.ae
  %i.de = select i1 %i.d, i64 %i.co, i64 0
  %i.df = getelementptr i8, ptr %1, i64 %i.de
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !24
  %.not115 = icmp sgt i8 %i.dg, -1
  br i1 %.not115, label %_fits_in_n_bits.exit.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dh = and i32 %3, 4
  %.not116 = icmp eq i32 %i.dh, 0
  %i.di = zext i1 %.not116 to i64
  %spec.select132 = add nuw nsw i64 %2, %i.di
  br label %_fits_in_n_bits.exit.thread

_fits_in_n_bits.exit.thread:                      ; preds = %.preheader159, %.loopexit, %bb.ah, %_fits_in_n_bits.exit142.thread, %_PyLong_NumBits.exit, %bb.ad, %._crit_edge, %bb.ag, %bb.y, %_fits_in_n_bits.exit, %bb.l, %bb.w
  %.3 = phi i64 [ 8, %bb.l ], [ 8, %bb.y ], [ %2, %_fits_in_n_bits.exit ], [ %spec.select131, %_fits_in_n_bits.exit142.thread ], [ 8, %.loopexit ], [ 8, %bb.w ], [ %spec.select132, %bb.ah ], [ %i.ci, %bb.ag ], [ %spec.select, %._crit_edge ], [ %i.ci, %bb.ad ], [ %i.ci, %_PyLong_NumBits.exit ], [ 8, %.preheader159 ] ; 4 uses
  br i1 %.not.not.not, label %bb.ai, label %Py_DECREF.exit134

bb.ai:                                            ; preds = %_fits_in_n_bits.exit.thread
  %i.dj = load i32, ptr %.089, align 8, !tbaa !24 ; 2 uses
  %.not.i = icmp sgt i32 %i.dj, -1
  br i1 %.not.i, label %bb.aj, label %Py_DECREF.exit134

bb.aj:                                            ; preds = %bb.ai
  %i.dk = add nsw i32 %i.dj, -1                   ; 2 uses
  store i32 %i.dk, ptr %.089, align 8, !tbaa !24
  %i.dl = icmp eq i32 %i.dk, 0
  br i1 %i.dl, label %bb.ak, label %Py_DECREF.exit134

bb.ak:                                            ; preds = %bb.aj
  tail call void @_Py_Dealloc(ptr noundef nonnull %.089) #16
  br label %Py_DECREF.exit134

Py_DECREF.exit134:                                ; preds = %bb.f, %bb.e, %bb.h, %_fits_in_n_bits.exit.thread, %bb.i, %bb.j, %bb.k, %bb.ai, %bb.aj, %bb.ak, %bb.b
  %.1 = phi i64 [ -1, %bb.b ], [ -1, %bb.f ], [ -1, %bb.e ], [ -1, %bb.h ], [ %.3, %_fits_in_n_bits.exit.thread ], [ -1, %bb.k ], [ -1, %bb.i ], [ -1, %bb.j ], [ %.3, %bb.ai ], [ %.3, %bb.aj ], [ %.3, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  ret i64 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nounwind uwtable
define dso_local ptr @PyLong_FromNativeBytes(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_PyErr_BadInternalCall(ptr noundef nonnull @.str.2, i32 noundef 1463) #16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.a = and i32 %2, 3
  %i.b = icmp ne i32 %i.a, 0
  %storemerge.i = zext i1 %i.b to i32
  %i.c = icmp eq i32 %2, -1
  %i.d = lshr i32 %2, 2
  %.lobit = and i32 %i.d, 1
  %i.e = xor i32 %.lobit, 1
  %i.f = select i1 %i.c, i32 1, i32 %i.e
  %i.g = tail call ptr @_PyLong_FromByteArray(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %storemerge.i, i32 noundef %i.f)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1 = phi ptr [ %i.g, %bb.c ], [ null, %bb.b ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyLong_FromUnsignedNativeBytes(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_PyErr_BadInternalCall(ptr noundef nonnull @.str.2, i32 noundef 1485) #16
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.a = and i32 %2, 3
  %i.b = icmp ne i32 %i.a, 0
  %storemerge.i = zext i1 %i.b to i32
  %i.c = tail call ptr @_PyLong_FromByteArray(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %storemerge.i, i32 noundef 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1 = phi ptr [ %i.c, %bb.c ], [ null, %bb.b ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyLong_FromVoidPtr(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = tail call ptr @PyLong_FromUnsignedLong(i64 noundef %i.a)
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyLong_AsVoidPtr(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.c = getelementptr i8, ptr %.val, i64 168
  %.val8 = load i64, ptr %i.c, align 8, !tbaa !35
  %i.d = and i64 %.val8, 16777216
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 16
  %.val9 = load i64, ptr %i.e, align 8, !tbaa !25
  %i.f = and i64 %.val9, 3
  %i.g = icmp eq i64 %i.f, 2
  br i1 %i.g, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.h = call i64 @PyLong_AsLongAndOverflow(ptr noundef nonnull %0, ptr noundef nonnull %i.a)
  %i.i = load i32, ptr %i.a, align 4, !tbaa !7
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %PyLong_AsLong.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !11
  tail call void @PyErr_SetString(ptr noundef %i.j, ptr noundef nonnull @.str.3) #16
  br label %PyLong_AsLong.exit

PyLong_AsLong.exit:                               ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.f

bb.e:                                             ; preds = %bb.b, %bb.a
  %i.k = tail call i64 @PyLong_AsUnsignedLong(ptr noundef nonnull %0)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %PyLong_AsLong.exit
  %.0 = phi i64 [ %i.h, %PyLong_AsLong.exit ], [ %i.k, %bb.e ] ; 2 uses
  %i.l = icmp eq i64 %.0, -1
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = tail call ptr @PyErr_Occurred() #16
  %.not7 = icmp eq ptr %i.m, null
  br i1 %.not7, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = inttoptr i64 %.0 to ptr
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.06 = phi ptr [ %i.n, %bb.h ], [ null, %bb.g ]
  ret ptr %.06
}

declare ptr @PyErr_Occurred() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @PyLong_FromLongLong(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = add i64 %0, 5
  %or.cond = icmp ult i64 %i.a, 1030
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %1 = getelementptr [32 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 14136), i64 %0
  %i.b = getelementptr i8, ptr %1, i64 160
  br label %_PyLong_FromMedium.exit

bb.c:                                             ; preds = %bb.a
  %i.c = add i64 %0, 1073741823
  %or.cond3 = icmp ult i64 %i.c, 2147483647
  br i1 %or.cond3, label %bb.d, label %.peel.begin

bb.d:                                             ; preds = %bb.c
  %i.d = trunc nsw i64 %0 to i32
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14   ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 11200    ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !16   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %bb.e, label %_PyFreeList_Pop.exit.i

_PyFreeList_Pop.exit.i:                           ; preds = %bb.d
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !19
  store ptr %i.i, ptr %i.g, align 8, !tbaa !16
  %i.j = getelementptr i8, ptr %i.f, i64 11208    ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !20
  %i.l = add i64 %i.k, -1
  store i64 %i.l, ptr %i.j, align 8, !tbaa !20
  br label %_PyObject_Init.exit.i

bb.e:                                             ; preds = %bb.d
  %i.m = tail call ptr @PyObject_Malloc(i64 noundef 32) #16, !inline_history !28 ; 4 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = tail call ptr @PyErr_NoMemory() #16, !inline_history !28 ; 0 uses
  br label %_PyLong_FromMedium.exit

bb.g:                                             ; preds = %bb.e
  %i.p = getelementptr i8, ptr %i.m, i64 8
  store ptr @PyLong_Type, ptr %i.p, align 8, !tbaa !21
  %i.q = load i32, ptr @PyLong_Type, align 8, !tbaa !24 ; 2 uses
  %i.r = icmp ugt i32 %i.q, -1073741825
  br i1 %i.r, label %_PyObject_Init.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = add nuw i32 %i.q, 1
  store i32 %i.s, ptr @PyLong_Type, align 8, !tbaa !24
  br label %_PyObject_Init.exit.i

_PyObject_Init.exit.i:                            ; preds = %bb.h, %bb.g, %_PyFreeList_Pop.exit.i
  %.sink.i = phi ptr [ %i.h, %_PyFreeList_Pop.exit.i ], [ %i.m, %bb.g ], [ %i.m, %bb.h ] ; 4 uses
  tail call void @_Py_NewReference(ptr noundef nonnull %.sink.i) #16, !inline_history !28
  %i.t = tail call i32 @llvm.abs.i32(i32 %i.d, i1 true)
  %i.u = lshr i64 %0, 30
  %i.v = and i64 %i.u, 2
  %i.w = or disjoint i64 %i.v, 8
  %i.x = getelementptr i8, ptr %.sink.i, i64 16
  store i64 %i.w, ptr %i.x, align 8, !tbaa !25
  %i.y = getelementptr i8, ptr %.sink.i, i64 24
  store i32 %i.t, ptr %i.y, align 8, !tbaa !7
  br label %_PyLong_FromMedium.exit

.peel.begin:                                      ; preds = %bb.c
  %i.z = tail call i64 @llvm.abs.i64(i64 %0, i1 false) ; 2 uses
  %i.aa = icmp ult i64 %i.z, 1152921504606846976
  %spec.select = select i1 %i.aa, i64 2, i64 3    ; 2 uses
  %i.ab = tail call fastcc ptr @long_alloc(i64 noundef %spec.select) ; 4 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_PyLong_FromMedium.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.peel.begin
  %i.ad = lshr i64 %0, 62
  %i.ae = and i64 %i.ad, 2
  %i.af = shl nuw nsw i64 %spec.select, 3
  %i.ag = or disjoint i64 %i.af, %i.ae
  %i.ah = getelementptr i8, ptr %i.ab, i64 16
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !25
  %i.ai = getelementptr i8, ptr %i.ab, i64 24
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.036 = phi ptr [ %i.al, %.lr.ph ], [ %i.ai, %.lr.ph.preheader ] ; 2 uses
  %.13135 = phi i64 [ %i.am, %.lr.ph ], [ %i.z, %.lr.ph.preheader ] ; 2 uses
  %i.aj = trunc i64 %.13135 to i32
  %i.ak = and i32 %i.aj, 1073741823
  %i.al = getelementptr i8, ptr %.036, i64 4
  store i32 %i.ak, ptr %.036, align 4, !tbaa !7
  %i.am = lshr i64 %.13135, 30                    ; 2 uses
  %.not = icmp eq i64 %i.am, 0
  br i1 %.not, label %_PyLong_FromMedium.exit, label %.lr.ph, !llvm.loop !63

_PyLong_FromMedium.exit:                          ; preds = %.lr.ph, %_PyObject_Init.exit.i, %bb.f, %.peel.begin, %bb.b
  %.1 = phi ptr [ %i.b, %bb.b ], [ %.sink.i, %_PyObject_Init.exit.i ], [ null, %.peel.begin ], [ null, %bb.f ], [ %i.ab, %.lr.ph ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyLong_FromSsize_t(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = add i64 %0, 5
  %or.cond = icmp ult i64 %i.a, 1030
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %1 = getelementptr [32 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 14136), i64 %0
  %i.b = getelementptr i8, ptr %1, i64 160
  br label %_PyLong_FromMedium.exit

bb.c:                                             ; preds = %bb.a
  %i.c = add i64 %0, 1073741823
  %or.cond3 = icmp ult i64 %i.c, 2147483647
  br i1 %or.cond3, label %bb.d, label %.peel.begin

bb.d:                                             ; preds = %bb.c
  %i.d = trunc nsw i64 %0 to i32
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14   ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 11200    ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !16   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %bb.e, label %_PyFreeList_Pop.exit.i

_PyFreeList_Pop.exit.i:                           ; preds = %bb.d
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !19
  store ptr %i.i, ptr %i.g, align 8, !tbaa !16
  %i.j = getelementptr i8, ptr %i.f, i64 11208    ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !20
  %i.l = add i64 %i.k, -1
  store i64 %i.l, ptr %i.j, align 8, !tbaa !20
  br label %_PyObject_Init.exit.i

bb.e:                                             ; preds = %bb.d
  %i.m = tail call ptr @PyObject_Malloc(i64 noundef 32) #16, !inline_history !28 ; 4 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = tail call ptr @PyErr_NoMemory() #16, !inline_history !28 ; 0 uses
  br label %_PyLong_FromMedium.exit

bb.g:                                             ; preds = %bb.e
  %i.p = getelementptr i8, ptr %i.m, i64 8
  store ptr @PyLong_Type, ptr %i.p, align 8, !tbaa !21
  %i.q = load i32, ptr @PyLong_Type, align 8, !tbaa !24 ; 2 uses
  %i.r = icmp ugt i32 %i.q, -1073741825
  br i1 %i.r, label %_PyObject_Init.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = add nuw i32 %i.q, 1
  store i32 %i.s, ptr @PyLong_Type, align 8, !tbaa !24
  br label %_PyObject_Init.exit.i

_PyObject_Init.exit.i:                            ; preds = %bb.h, %bb.g, %_PyFreeList_Pop.exit.i
  %.sink.i = phi ptr [ %i.h, %_PyFreeList_Pop.exit.i ], [ %i.m, %bb.g ], [ %i.m, %bb.h ] ; 4 uses
  tail call void @_Py_NewReference(ptr noundef nonnull %.sink.i) #16, !inline_history !28
  %i.t = tail call i32 @llvm.abs.i32(i32 %i.d, i1 true)
  %i.u = lshr i64 %0, 30
  %i.v = and i64 %i.u, 2
  %i.w = or disjoint i64 %i.v, 8
  %i.x = getelementptr i8, ptr %.sink.i, i64 16
  store i64 %i.w, ptr %i.x, align 8, !tbaa !25
  %i.y = getelementptr i8, ptr %.sink.i, i64 24
  store i32 %i.t, ptr %i.y, align 8, !tbaa !7
  br label %_PyLong_FromMedium.exit

.peel.begin:                                      ; preds = %bb.c
  %i.z = tail call i64 @llvm.abs.i64(i64 %0, i1 false) ; 2 uses
  %i.aa = icmp ult i64 %i.z, 1152921504606846976
  %spec.select = select i1 %i.aa, i64 2, i64 3    ; 2 uses
  %i.ab = tail call fastcc ptr @long_alloc(i64 noundef %spec.select) ; 4 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_PyLong_FromMedium.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.peel.begin
  %i.ad = lshr i64 %0, 62
  %i.ae = and i64 %i.ad, 2
  %i.af = shl nuw nsw i64 %spec.select, 3
  %i.ag = or disjoint i64 %i.af, %i.ae
  %i.ah = getelementptr i8, ptr %i.ab, i64 16
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !25
  %i.ai = getelementptr i8, ptr %i.ab, i64 24
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.036 = phi ptr [ %i.al, %.lr.ph ], [ %i.ai, %.lr.ph.preheader ] ; 2 uses
  %.13135 = phi i64 [ %i.am, %.lr.ph ], [ %i.z, %.lr.ph.preheader ] ; 2 uses
  %i.aj = trunc i64 %.13135 to i32
  %i.ak = and i32 %i.aj, 1073741823
  %i.al = getelementptr i8, ptr %.036, i64 4
  store i32 %i.ak, ptr %.036, align 4, !tbaa !7
  %i.am = lshr i64 %.13135, 30                    ; 2 uses
  %.not = icmp eq i64 %i.am, 0
  br i1 %.not, label %_PyLong_FromMedium.exit, label %.lr.ph, !llvm.loop !64

_PyLong_FromMedium.exit:                          ; preds = %.lr.ph, %_PyObject_Init.exit.i, %bb.f, %.peel.begin, %bb.b
  %.1 = phi ptr [ %i.b, %bb.b ], [ %.sink.i, %_PyObject_Init.exit.i ], [ null, %.peel.begin ], [ null, %bb.f ], [ %i.ab, %.lr.ph ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define dso_local i64 @PyLong_AsLongLong(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_PyErr_BadInternalCall(ptr noundef nonnull @.str.2, i32 noundef 1584) #16
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.c, align 8, !tbaa !21
  %i.d = getelementptr i8, ptr %.val, i64 168
  %.val20 = load i64, ptr %i.d, align 8, !tbaa !35
  %i.e = and i64 %.val20, 16777216
  %.not.not = icmp eq i64 %i.e, 0                 ; 2 uses
  br i1 %.not.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @_PyNumber_Index(ptr noundef nonnull %0) #16 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.012 = phi ptr [ %0, %bb.c ], [ %i.f, %bb.d ]  ; 6 uses
  %i.h = getelementptr i8, ptr %.012, i64 16
  %.012.val = load i64, ptr %i.h, align 8, !tbaa !25 ; 2 uses
  %i.i = icmp ugt i64 %.012.val, 15
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr i8, ptr %.012, i64 24
  %.012.val19 = load i32, ptr %i.j, align 8, !tbaa !7
  %i.k = and i64 %.012.val, 3
  %i.l = sub nsw i64 1, %i.k
  %i.m = zext i32 %.012.val19 to i64
  %i.n = mul nsw i64 %i.l, %i.m
  store i64 %i.n, ptr %i.a, align 8, !tbaa !65
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.o = call i32 @_PyLong_AsByteArray(ptr noundef nonnull %.012, ptr noundef nonnull %i.a, i64 noundef 8, i32 noundef 1, i32 noundef 1, i32 noundef 1)
  %i.p = icmp slt i32 %i.o, 0
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.011 = phi i1 [ false, %bb.f ], [ %i.p, %bb.g ]
  br i1 %.not.not, label %bb.i, label %Py_DECREF.exit

bb.i:                                             ; preds = %bb.h
  %i.q = load i32, ptr %.012, align 8, !tbaa !24  ; 2 uses
  %.not.i = icmp sgt i32 %i.q, -1
  br i1 %.not.i, label %bb.j, label %Py_DECREF.exit

bb.j:                                             ; preds = %bb.i
  %i.r = add nsw i32 %i.q, -1                     ; 2 uses
  store i32 %i.r, ptr %.012, align 8, !tbaa !24
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.k, label %Py_DECREF.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_Py_Dealloc(ptr noundef nonnull %.012) #16
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %i.t = load i64, ptr %i.a, align 8
  %spec.select = select i1 %.011, i64 -1, i64 %i.t
  br label %bb.l

bb.l:                                             ; preds = %Py_DECREF.exit, %bb.d, %bb.b
  %.013 = phi i64 [ -1, %bb.b ], [ -1, %bb.d ], [ %spec.select, %Py_DECREF.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i64 %.013
}

; Function Attrs: nounwind uwtable
define dso_local i64 @PyLong_AsUnsignedLongLong(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_PyErr_BadInternalCall(ptr noundef nonnull @.str.2, i32 noundef 1628) #16
  br label %._crit_edge

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.c, align 8, !tbaa !21
  %i.d = getelementptr i8, ptr %.val, i64 168
  %.val13 = load i64, ptr %i.d, align 8, !tbaa !35
  %i.e = and i64 %.val13, 16777216
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !11
  tail call void @PyErr_SetString(ptr noundef %i.f, ptr noundef nonnull @.str.5) #16
  br label %._crit_edge

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %0, i64 16
  %.val14 = load i64, ptr %i.g, align 8, !tbaa !25 ; 2 uses
end_hunk_2
begin_hunk_3_@_PyLong_Frexp:bb.a
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter79
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !217

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.056.unr = phi double [ %i.ds, %.lr.ph.preheader ], [ %i.dz, %.lr.ph.prol ]
  %.14355.unr = phi i64 [ %i.dp, %.lr.ph.preheader ], [ %i.dv, %.lr.ph.prol ]
  %.lcssa.unr = phi double [ poison, %.lr.ph.preheader ], [ %i.dz, %.lr.ph.prol ]
  %i.ea = icmp ult i64 %i.du, 3
  br i1 %i.ea, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.056 = phi double [ %i.eu, %.lr.ph ], [ %.056.unr, %.lr.ph.prol.loopexit ]
  %.14355 = phi i64 [ %i.eq, %.lr.ph ], [ %.14355.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.eb = getelementptr [4 x i8], ptr %i.a, i64 %.14355
  %i.ec = getelementptr i8, ptr %i.eb, i64 -4
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !7
  %i.ee = uitofp i32 %i.ed to double
  %i.ef = tail call double @llvm.fmuladd.f64(double %.056, double f0x41D0000000000000, double %i.ee)
  %i.eg = getelementptr [4 x i8], ptr %i.a, i64 %.14355
  %i.eh = getelementptr i8, ptr %i.eg, i64 -8
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !7
  %i.ej = uitofp i32 %i.ei to double
  %i.ek = tail call double @llvm.fmuladd.f64(double %i.ef, double f0x41D0000000000000, double %i.ej)
  %i.el = getelementptr [4 x i8], ptr %i.a, i64 %.14355
  %i.em = getelementptr i8, ptr %i.el, i64 -12
  %i.en = load i32, ptr %i.em, align 4, !tbaa !7
  %i.eo = uitofp i32 %i.en to double
  %i.ep = tail call double @llvm.fmuladd.f64(double %i.ek, double f0x41D0000000000000, double %i.eo)
  %i.eq = add nsw i64 %.14355, -4                 ; 2 uses
  %i.er = getelementptr [4 x i8], ptr %i.a, i64 %i.eq
  %i.es = load i32, ptr %i.er, align 4, !tbaa !7
  %i.et = uitofp i32 %i.es to double
  %i.eu = tail call double @llvm.fmuladd.f64(double %i.ep, double f0x41D0000000000000, double %i.et) ; 2 uses
  %i.ev = icmp sgt i64 %.14355, 4
  br i1 %i.ev, label %.lr.ph, label %._crit_edge, !llvm.loop !218

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.loopexit
  %.0.lcssa = phi double [ %i.ds, %.loopexit ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.eu, %.lr.ph ]
  %i.ew = fmul double %.0.lcssa, f0x3C80000000000000 ; 2 uses
  %i.ex = fcmp oeq double %i.ew, 1.000000e+00     ; 2 uses
  %i.ey = zext i1 %i.ex to i64
  %.041 = add i64 %i.m, %i.ey
  %.1 = select i1 %i.ex, double 5.000000e-01, double %i.ew ; 2 uses
  store i64 %.041, ptr %1, align 8, !tbaa !213
  %.val51 = load i64, ptr %i.b, align 8, !tbaa !25
  %i.ez = and i64 %.val51, 3
  %i.fa = icmp eq i64 %i.ez, 2
  %i.fb = fneg double %.1
  %i.fc = select i1 %i.fa, double %i.fb, double %.1
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.b
  %.045 = phi double [ 0.000000e+00, %bb.b ], [ %i.fc, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret double %.045
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nounwind uwtable
define dso_local double @PyLong_AsDouble(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_PyErr_BadInternalCall(ptr noundef nonnull @.str.2, i32 noundef 3561) #16
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.c, align 8, !tbaa !21
  %i.d = getelementptr i8, ptr %.val, i64 168
  %.val13 = load i64, ptr %i.d, align 8, !tbaa !35
  %i.e = and i64 %.val13, 16777216
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !11
  tail call void @PyErr_SetString(ptr noundef %i.f, ptr noundef nonnull @.str.5) #16
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %0, i64 16
  %.val10 = load i64, ptr %i.g, align 8, !tbaa !25 ; 2 uses
  %i.h = icmp ugt i64 %.val10, 15
  br i1 %i.h, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr i8, ptr %0, i64 24
  %.val12 = load i32, ptr %i.i, align 8, !tbaa !7
  %i.j = and i64 %.val10, 3
  %i.k = sub nsw i64 1, %i.j
  %i.l = zext i32 %.val12 to i64
  %i.m = mul nsw i64 %i.k, %i.l
  %i.n = sitofp i64 %i.m to double
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.o = call double @_PyLong_Frexp(ptr noundef nonnull %0, ptr noundef nonnull %i.a)
  %i.p = load i64, ptr %i.a, align 8, !tbaa !213  ; 2 uses
  %i.q = icmp sgt i64 %i.p, 1024
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.r = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !11
  tail call void @PyErr_SetString(ptr noundef %i.r, ptr noundef nonnull @.str.27) #16
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.s = trunc i64 %i.p to i32
  %i.t = tail call double @ldexp(double noundef %i.o, i32 noundef %i.s) #16, !tbaa !7
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.f, %bb.d, %bb.b
  %.0 = phi double [ -1.000000e+00, %bb.b ], [ %i.n, %bb.f ], [ -1.000000e+00, %bb.h ], [ %i.t, %bb.i ], [ -1.000000e+00, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret double %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @_PyLong_ExactDealloc(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val6 = load i64, ptr %i.a, align 8, !tbaa !25 ; 2 uses
  %i.b = and i64 %.val6, 4
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_Py_SetImmortal(ptr noundef nonnull %0) #16
  br label %_PyFreeList_Free.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %.val6, 15
  br i1 %i.c, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !14   ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 11208    ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !20   ; 2 uses
  %or.cond.i.i = icmp ult i64 %i.g, 100
  br i1 %or.cond.i.i, label %_PyFreeList_Push.exit.i, label %bb.e

_PyFreeList_Push.exit.i:                          ; preds = %bb.d
  %i.h = getelementptr i8, ptr %i.e, i64 11200    ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !16
  store ptr %i.i, ptr %0, align 8, !tbaa !19
  store ptr %0, ptr %i.h, align 8, !tbaa !16
  %i.j = add nuw nsw i64 %i.g, 1
  store i64 %i.j, ptr %i.f, align 8, !tbaa !20
  br label %_PyFreeList_Free.exit

bb.e:                                             ; preds = %bb.d
  tail call void @PyObject_Free(ptr noundef nonnull %0) #16
  br label %_PyFreeList_Free.exit

bb.f:                                             ; preds = %bb.c
  tail call void @PyObject_Free(ptr noundef nonnull %0) #16
  br label %_PyFreeList_Free.exit

_PyFreeList_Free.exit:                            ; preds = %bb.e, %_PyFreeList_Push.exit.i, %bb.f, %bb.b
  ret void
}

declare void @_Py_SetImmortal(ptr noundef) local_unnamed_addr #3

declare void @PyObject_Free(ptr noundef) #3

; Function Attrs: nounwind uwtable
define dso_local i64 @_PyCompactLong_Add(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val3 = load i64, ptr %i.a, align 8, !tbaa !25
  %i.b = getelementptr i8, ptr %0, i64 24
  %.val4 = load i32, ptr %i.b, align 8, !tbaa !7
  %i.c = and i64 %.val3, 3
  %i.d = sub nsw i64 1, %i.c
  %i.e = zext i32 %.val4 to i64
  %i.f = mul nsw i64 %i.d, %i.e
  %i.g = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.g, align 8, !tbaa !25
  %i.h = getelementptr i8, ptr %1, i64 24
  %.val2 = load i32, ptr %i.h, align 8, !tbaa !7
  %i.i = and i64 %.val, 3
  %i.j = sub nsw i64 1, %i.i
  %i.k = zext i32 %.val2 to i64
  %i.l = mul nsw i64 %i.j, %i.k
  %i.m = add nsw i64 %i.l, %i.f                   ; 5 uses
  %i.n = add nsw i64 %i.m, 5
  %or.cond.i = icmp ult i64 %i.n, 1030
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %2 = getelementptr [32 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 14136), i64 %i.m
  %i.o = getelementptr i8, ptr %2, i64 160
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = or disjoint i64 %i.p, 1
  br label %medium_from_stwodigits.exit

bb.c:                                             ; preds = %bb.a
  %i.r = add nsw i64 %i.m, -1073741824
  %i.s = icmp ult i64 %i.r, -2147483647
  br i1 %i.s, label %medium_from_stwodigits.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !14   ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 11200    ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !16   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i, label %bb.e, label %_PyFreeList_Pop.exit.i

_PyFreeList_Pop.exit.i:                           ; preds = %bb.d
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !19
  store ptr %i.x, ptr %i.v, align 8, !tbaa !16
  %i.y = getelementptr i8, ptr %i.u, i64 11208    ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !20
  %i.aa = add i64 %i.z, -1
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !20
  br label %_PyObject_Init.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ab = tail call ptr @PyObject_Malloc(i64 noundef 32) #16 ; 4 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %medium_from_stwodigits.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr i8, ptr %i.ab, i64 8
  store ptr @PyLong_Type, ptr %i.ad, align 8, !tbaa !21
  %i.ae = load i32, ptr @PyLong_Type, align 8, !tbaa !24 ; 2 uses
  %i.af = icmp ugt i32 %i.ae, -1073741825
  br i1 %i.af, label %_PyObject_Init.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = add nuw i32 %i.ae, 1
  store i32 %i.ag, ptr @PyLong_Type, align 8, !tbaa !24
  br label %_PyObject_Init.exit.i

_PyObject_Init.exit.i:                            ; preds = %bb.g, %bb.f, %_PyFreeList_Pop.exit.i
  %.sink.i = phi ptr [ %i.w, %_PyFreeList_Pop.exit.i ], [ %i.ab, %bb.f ], [ %i.ab, %bb.g ] ; 4 uses
  tail call void @_Py_NewReference(ptr noundef nonnull %.sink.i) #16
  %i.ah = icmp slt i64 %i.m, 0                    ; 2 uses
  %i.ai = trunc nsw i64 %i.m to i32               ; 2 uses
  %i.aj = sub nsw i32 0, %i.ai
  %i.ak = select i1 %i.ah, i32 %i.aj, i32 %i.ai
  %i.al = select i1 %i.ah, i64 10, i64 8
  %i.am = getelementptr i8, ptr %.sink.i, i64 16
  store i64 %i.al, ptr %i.am, align 8, !tbaa !25
  %i.an = getelementptr i8, ptr %.sink.i, i64 24
  store i32 %i.ak, ptr %i.an, align 8, !tbaa !7
  %i.ao = ptrtoint ptr %.sink.i to i64
  br label %medium_from_stwodigits.exit

medium_from_stwodigits.exit:                      ; preds = %bb.b, %bb.c, %bb.e, %_PyObject_Init.exit.i
  %.sroa.0.1.i = phi i64 [ %i.q, %bb.b ], [ 1, %bb.c ], [ %i.ao, %_PyObject_Init.exit.i ], [ 1, %bb.e ]
  ret i64 %.sroa.0.1.i
}

; Function Attrs: nounwind uwtable
define dso_local i64 @_PyCompactLong_Subtract(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val3 = load i64, ptr %i.a, align 8, !tbaa !25
  %i.b = getelementptr i8, ptr %0, i64 24
  %.val4 = load i32, ptr %i.b, align 8, !tbaa !7
  %i.c = and i64 %.val3, 3
  %i.d = sub nsw i64 1, %i.c
  %i.e = zext i32 %.val4 to i64
  %i.f = mul nsw i64 %i.d, %i.e
  %i.g = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.g, align 8, !tbaa !25
  %i.h = getelementptr i8, ptr %1, i64 24
  %.val2 = load i32, ptr %i.h, align 8, !tbaa !7
  %i.i = and i64 %.val, 3
  %.neg = add nsw i64 %i.i, -1
  %i.j = zext i32 %.val2 to i64
  %.neg5 = mul nsw i64 %.neg, %i.j
  %i.k = add nsw i64 %.neg5, %i.f                 ; 5 uses
  %i.l = add nsw i64 %i.k, 5
  %or.cond.i = icmp ult i64 %i.l, 1030
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %2 = getelementptr [32 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 14136), i64 %i.k
  %i.m = getelementptr i8, ptr %2, i64 160
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = or disjoint i64 %i.n, 1
  br label %medium_from_stwodigits.exit

bb.c:                                             ; preds = %bb.a
  %i.p = add nsw i64 %i.k, -1073741824
  %i.q = icmp ult i64 %i.p, -2147483647
  br i1 %i.q, label %medium_from_stwodigits.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !14   ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 11200    ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !16   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %bb.e, label %_PyFreeList_Pop.exit.i

_PyFreeList_Pop.exit.i:                           ; preds = %bb.d
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !19
  store ptr %i.v, ptr %i.t, align 8, !tbaa !16
  %i.w = getelementptr i8, ptr %i.s, i64 11208    ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !20
  %i.y = add i64 %i.x, -1
  store i64 %i.y, ptr %i.w, align 8, !tbaa !20
  br label %_PyObject_Init.exit.i

bb.e:                                             ; preds = %bb.d
  %i.z = tail call ptr @PyObject_Malloc(i64 noundef 32) #16 ; 4 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %medium_from_stwodigits.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr i8, ptr %i.z, i64 8
  store ptr @PyLong_Type, ptr %i.ab, align 8, !tbaa !21
  %i.ac = load i32, ptr @PyLong_Type, align 8, !tbaa !24 ; 2 uses
  %i.ad = icmp ugt i32 %i.ac, -1073741825
  br i1 %i.ad, label %_PyObject_Init.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = add nuw i32 %i.ac, 1
  store i32 %i.ae, ptr @PyLong_Type, align 8, !tbaa !24
  br label %_PyObject_Init.exit.i

_PyObject_Init.exit.i:                            ; preds = %bb.g, %bb.f, %_PyFreeList_Pop.exit.i
  %.sink.i = phi ptr [ %i.u, %_PyFreeList_Pop.exit.i ], [ %i.z, %bb.f ], [ %i.z, %bb.g ] ; 4 uses
  tail call void @_Py_NewReference(ptr noundef nonnull %.sink.i) #16
  %i.af = icmp slt i64 %i.k, 0                    ; 2 uses
  %i.ag = trunc nsw i64 %i.k to i32               ; 2 uses
  %i.ah = sub nsw i32 0, %i.ag
  %i.ai = select i1 %i.af, i32 %i.ah, i32 %i.ag
  %i.aj = select i1 %i.af, i64 10, i64 8
  %i.ak = getelementptr i8, ptr %.sink.i, i64 16
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !25
  %i.al = getelementptr i8, ptr %.sink.i, i64 24
  store i32 %i.ai, ptr %i.al, align 8, !tbaa !7
  %i.am = ptrtoint ptr %.sink.i to i64
  br label %medium_from_stwodigits.exit

medium_from_stwodigits.exit:                      ; preds = %bb.b, %bb.c, %bb.e, %_PyObject_Init.exit.i
  %.sroa.0.1.i = phi i64 [ %i.o, %bb.b ], [ 1, %bb.c ], [ %i.am, %_PyObject_Init.exit.i ], [ 1, %bb.e ]
  ret i64 %.sroa.0.1.i
}

; Function Attrs: nounwind uwtable
define dso_local i64 @_PyCompactLong_Multiply(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val3 = load i64, ptr %i.a, align 8, !tbaa !25
  %i.b = getelementptr i8, ptr %0, i64 24
  %.val4 = load i32, ptr %i.b, align 8, !tbaa !7
  %i.c = and i64 %.val3, 3
  %i.d = sub nsw i64 1, %i.c
  %i.e = zext i32 %.val4 to i64
  %i.f = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.f, align 8, !tbaa !25
  %i.g = getelementptr i8, ptr %1, i64 24
  %.val2 = load i32, ptr %i.g, align 8, !tbaa !7
  %i.h = and i64 %.val, 3
  %i.i = sub nsw i64 1, %i.h
  %i.j = zext i32 %.val2 to i64
  %i.k = mul nsw i64 %i.d, %i.e
  %i.l = mul i64 %i.k, %i.j
  %i.m = mul i64 %i.l, %i.i                       ; 5 uses
  %i.n = add i64 %i.m, 5
  %or.cond.i = icmp ult i64 %i.n, 1030
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %2 = getelementptr [32 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 14136), i64 %i.m
  %i.o = getelementptr i8, ptr %2, i64 160
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = or disjoint i64 %i.p, 1
  br label %medium_from_stwodigits.exit

bb.c:                                             ; preds = %bb.a
  %i.r = add i64 %i.m, -1073741824
  %i.s = icmp ult i64 %i.r, -2147483647
  br i1 %i.s, label %medium_from_stwodigits.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !14   ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 11200    ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !16   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i, label %bb.e, label %_PyFreeList_Pop.exit.i

_PyFreeList_Pop.exit.i:                           ; preds = %bb.d
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !19
  store ptr %i.x, ptr %i.v, align 8, !tbaa !16
  %i.y = getelementptr i8, ptr %i.u, i64 11208    ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !20
  %i.aa = add i64 %i.z, -1
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !20
  br label %_PyObject_Init.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ab = tail call ptr @PyObject_Malloc(i64 noundef 32) #16 ; 4 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %medium_from_stwodigits.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr i8, ptr %i.ab, i64 8
  store ptr @PyLong_Type, ptr %i.ad, align 8, !tbaa !21
  %i.ae = load i32, ptr @PyLong_Type, align 8, !tbaa !24 ; 2 uses
  %i.af = icmp ugt i32 %i.ae, -1073741825
  br i1 %i.af, label %_PyObject_Init.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = add nuw i32 %i.ae, 1
  store i32 %i.ag, ptr @PyLong_Type, align 8, !tbaa !24
  br label %_PyObject_Init.exit.i

_PyObject_Init.exit.i:                            ; preds = %bb.g, %bb.f, %_PyFreeList_Pop.exit.i
  %.sink.i = phi ptr [ %i.w, %_PyFreeList_Pop.exit.i ], [ %i.ab, %bb.f ], [ %i.ab, %bb.g ] ; 4 uses
  tail call void @_Py_NewReference(ptr noundef nonnull %.sink.i) #16
  %i.ah = icmp slt i64 %i.m, 0                    ; 2 uses
  %i.ai = trunc nsw i64 %i.m to i32               ; 2 uses
  %i.aj = sub nsw i32 0, %i.ai
  %i.ak = select i1 %i.ah, i32 %i.aj, i32 %i.ai
  %i.al = select i1 %i.ah, i64 10, i64 8
  %i.am = getelementptr i8, ptr %.sink.i, i64 16
  store i64 %i.al, ptr %i.am, align 8, !tbaa !25
  %i.an = getelementptr i8, ptr %.sink.i, i64 24
  store i32 %i.ak, ptr %i.an, align 8, !tbaa !7
  %i.ao = ptrtoint ptr %.sink.i to i64
  br label %medium_from_stwodigits.exit

medium_from_stwodigits.exit:                      ; preds = %bb.b, %bb.c, %bb.e, %_PyObject_Init.exit.i
  %.sroa.0.1.i = phi i64 [ %i.q, %bb.b ], [ 1, %bb.c ], [ %i.ao, %_PyObject_Init.exit.i ], [ 1, %bb.e ]
  ret i64 %.sroa.0.1.i
}

; Function Attrs: nounwind uwtable
define dso_local ptr @_PyLong_Rshift(ptr nofree noundef captures(ret: address, provenance) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val = load i64, ptr %i.a, align 8, !tbaa !25  ; 4 uses
  %i.b = and i64 %.val, 3                         ; 3 uses
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %long_rshift1.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = sdiv i64 %1, 30                          ; 2 uses
  %i.e = srem i64 %1, 30                          ; 3 uses
  %i.f = icmp ugt i64 %.val, 15
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %0, i64 24
  %.val73.i = load i32, ptr %i.g, align 8, !tbaa !7
  %i.h = sub nsw i64 1, %i.b
  %i.i = zext i32 %.val73.i to i64
  %i.j = mul nsw i64 %i.h, %i.i
  %.off = add i64 %1, 29
  %i.k = icmp ult i64 %.off, 59
  %i.l = and i64 %i.e, 4294967295
  %i.m = select i1 %i.k, i64 %i.l, i64 30
  %i.n = ashr i64 %i.j, %i.m
  %i.o = tail call fastcc ptr @_PyLong_FromSTwoDigits(i64 noundef %i.n), !inline_history !219
  br label %long_rshift1.exit

bb.d:                                             ; preds = %bb.b
  %i.p = trunc nsw i64 %i.e to i32
  %i.q = icmp eq i64 %i.b, 2                      ; 3 uses
  %i.r = lshr i64 %.val, 3                        ; 6 uses
  %i.s = icmp eq i64 %i.e, 0
  %or.cond.i = and i1 %i.s, %i.q
  br i1 %or.cond.i, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %.off6 = add i64 %1, 29
  %i.t = icmp ult i64 %.off6, 59
  br i1 %i.t, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr i8, ptr %0, i64 8
  %.val.i.i = load ptr, ptr %i.u, align 8, !tbaa !21
  %.not.i.i = icmp eq ptr %.val.i.i, @PyLong_Type
  br i1 %.not.i.i, label %bb.g, label %.thread.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.v = load i32, ptr %0, align 8, !tbaa !24     ; 2 uses
  %i.w = icmp ugt i32 %i.v, -1073741825
  br i1 %i.w, label %long_rshift1.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = add nuw i32 %i.v, 1
  store i32 %i.x, ptr %0, align 8, !tbaa !24
  br label %long_rshift1.exit

.thread.i.i.i:                                    ; preds = %bb.f
  %i.y = tail call fastcc ptr @long_alloc(i64 noundef %i.r), !inline_history !220 ; 4 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %long_rshift1.exit, label %bb.i

bb.i:                                             ; preds = %.thread.i.i.i
  %i.aa = and i64 %.val, -6
  %i.ab = getelementptr i8, ptr %i.y, i64 16
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !25
  %i.ac = getelementptr i8, ptr %i.y, i64 24
  %i.ad = getelementptr i8, ptr %0, i64 24
  %i.ae = shl nuw nsw i64 %i.r, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ac, ptr readonly align 8 %i.ad, i64 %i.ae, i1 false)
  br label %long_rshift1.exit

bb.j:                                             ; preds = %bb.e
  %i.af = add nsw i64 %i.d, -1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.d
  %.064.i = phi i32 [ 30, %bb.j ], [ %i.p, %bb.d ] ; 2 uses
  %.063.i = phi i64 [ %i.af, %bb.j ], [ %i.d, %bb.d ] ; 10 uses
  %i.ag = sub nsw i64 %i.r, %.063.i               ; 4 uses
  %i.ah = icmp slt i64 %i.ag, 1
  br i1 %i.ah, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ai = sext i1 %i.q to i64
  %i.aj = tail call ptr @PyLong_FromLong(i64 noundef %i.ai), !inline_history !219
  br label %long_rshift1.exit

bb.m:                                             ; preds = %bb.k
  %i.ak = tail call fastcc ptr @long_alloc(i64 noundef %i.ag), !inline_history !219 ; 6 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %long_rshift1.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = sub nsw i32 30, %.064.i                 ; 2 uses
  %i.an = zext nneg i32 %i.am to i64              ; 3 uses
  %i.ao = getelementptr i8, ptr %0, i64 24        ; 6 uses
  %i.ap = getelementptr [4 x i8], ptr %i.ao, i64 %.063.i
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !7
  %i.ar = zext i32 %i.aq to i64                   ; 2 uses
  br i1 %i.q, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.as = shl i64 %i.ag, 3
  %i.at = or disjoint i64 %i.as, 2
  %i.au = getelementptr i8, ptr %i.ak, i64 16
  store i64 %i.at, ptr %i.au, align 8, !tbaa !25
  %i.av = icmp sgt i64 %.063.i, 0
  br i1 %i.av, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.o
  %min.iters.check = icmp ult i64 %.063.i, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader26, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %.063.i, 9223372036854775800   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ay, %vector.body ]
  %vec.phi23 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.az, %vector.body ]
  %i.aw = getelementptr [4 x i8], ptr %i.ao, i64 %index ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 16
  %wide.load = load <4 x i32>, ptr %i.aw, align 4, !tbaa !7
  %wide.load24 = load <4 x i32>, ptr %i.ax, align 4, !tbaa !7
  %i.ay = or <4 x i32> %wide.load, %vec.phi       ; 2 uses
  %i.az = or <4 x i32> %wide.load24, %vec.phi23   ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !221

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i32> %i.az, %i.ay
  %i.bb = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %.063.i, %n.vec
end_hunk_3
begin_hunk_4_@_PyLong_GCD:bb.a

bb.bt:                                            ; preds = %PyLong_AsLong.exit
  %i.iw = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !11
  tail call void @PyErr_SetString(ptr noundef %i.iw, ptr noundef nonnull @.str.3) #16
  br label %PyLong_AsLong.exit299

PyLong_AsLong.exit299:                            ; preds = %PyLong_AsLong.exit, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.ix = tail call i64 @llvm.abs.i64(i64 %i.ir, i1 false) ; 2 uses
  %i.iy = tail call i64 @llvm.abs.i64(i64 %i.iu, i1 false)
  %i.iz = load i32, ptr %.2219, align 8, !tbaa !24 ; 2 uses
  %.not.i244 = icmp sgt i32 %i.iz, -1
  br i1 %.not.i244, label %bb.bu, label %Py_DECREF.exit245

bb.bu:                                            ; preds = %PyLong_AsLong.exit299
  %i.ja = add nsw i32 %i.iz, -1                   ; 2 uses
  store i32 %i.ja, ptr %.2219, align 8, !tbaa !24
  %i.jb = icmp eq i32 %i.ja, 0
  br i1 %i.jb, label %bb.bv, label %Py_DECREF.exit245

bb.bv:                                            ; preds = %bb.bu
  tail call void @_Py_Dealloc(ptr noundef nonnull %.2219) #16
  br label %Py_DECREF.exit245

Py_DECREF.exit245:                                ; preds = %PyLong_AsLong.exit299, %bb.bu, %bb.bv
  %i.jc = load i32, ptr %.2, align 8, !tbaa !24   ; 2 uses
  %.not.i242 = icmp sgt i32 %i.jc, -1
  br i1 %.not.i242, label %bb.bw, label %Py_DECREF.exit243

bb.bw:                                            ; preds = %Py_DECREF.exit245
  %i.jd = add nsw i32 %i.jc, -1                   ; 2 uses
  store i32 %i.jd, ptr %.2, align 8, !tbaa !24
  %i.je = icmp eq i32 %i.jd, 0
  br i1 %i.je, label %bb.bx, label %Py_DECREF.exit243

bb.bx:                                            ; preds = %bb.bw
  tail call void @_Py_Dealloc(ptr noundef nonnull %.2) #16
  br label %Py_DECREF.exit243

Py_DECREF.exit243:                                ; preds = %Py_DECREF.exit245, %bb.bw, %bb.bx
  %.not239417 = icmp eq i64 %i.iu, 0
  br i1 %.not239417, label %._crit_edge421, label %.lr.ph420

.lr.ph420:                                        ; preds = %Py_DECREF.exit243, %.lr.ph420
  %.1169419 = phi i64 [ %.1171418, %.lr.ph420 ], [ %i.ix, %Py_DECREF.exit243 ]
  %.1171418 = phi i64 [ %i.jf, %.lr.ph420 ], [ %i.iy, %Py_DECREF.exit243 ] ; 3 uses
  %i.jf = srem i64 %.1169419, %.1171418           ; 2 uses
  %.not239 = icmp eq i64 %i.jf, 0
  br i1 %.not239, label %._crit_edge421, label %.lr.ph420, !llvm.loop !231

._crit_edge421:                                   ; preds = %.lr.ph420, %Py_DECREF.exit243
  %.1169.lcssa = phi i64 [ %i.ix, %Py_DECREF.exit243 ], [ %.1171418, %.lr.ph420 ]
  %i.jg = tail call ptr @PyLong_FromLong(i64 noundef %.1169.lcssa)
  br label %Py_DECREF.exit257

.loopexit:                                        ; preds = %bb.ay, %bb.av, %._crit_edge.thread
  %.2167 = phi ptr [ %.0165.ph407, %._crit_edge.thread ], [ null, %bb.ay ], [ %.0165.ph407, %bb.av ] ; 4 uses
  %.2164 = phi ptr [ %.0162.ph408, %._crit_edge.thread ], [ %.1163, %bb.ay ], [ null, %bb.av ] ; 4 uses
  %i.jh = load i32, ptr %.1218370, align 8, !tbaa !24 ; 2 uses
  %.not.i240 = icmp sgt i32 %i.jh, -1
  br i1 %.not.i240, label %bb.by, label %Py_DECREF.exit241

bb.by:                                            ; preds = %.loopexit
  %i.ji = add nsw i32 %i.jh, -1                   ; 2 uses
  store i32 %i.ji, ptr %.1218370, align 8, !tbaa !24
  %i.jj = icmp eq i32 %i.ji, 0
  br i1 %i.jj, label %bb.bz, label %Py_DECREF.exit241

bb.bz:                                            ; preds = %bb.by
  tail call void @_Py_Dealloc(ptr noundef nonnull %.1218370) #16
  br label %Py_DECREF.exit241

Py_DECREF.exit241:                                ; preds = %.loopexit, %bb.by, %bb.bz
  %i.jk = load i32, ptr %.1373, align 8, !tbaa !24 ; 2 uses
  %.not.i = icmp sgt i32 %i.jk, -1
  br i1 %.not.i, label %bb.ca, label %Py_DECREF.exit

bb.ca:                                            ; preds = %Py_DECREF.exit241
  %i.jl = add nsw i32 %i.jk, -1                   ; 2 uses
  store i32 %i.jl, ptr %.1373, align 8, !tbaa !24
  %i.jm = icmp eq i32 %i.jl, 0
  br i1 %i.jm, label %bb.cb, label %Py_DECREF.exit

bb.cb:                                            ; preds = %bb.ca
  tail call void @_Py_Dealloc(ptr noundef nonnull %.1373) #16
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %Py_DECREF.exit241, %bb.ca, %bb.cb
  %.not.i300 = icmp eq ptr %.2164, null
  br i1 %.not.i300, label %Py_XDECREF.exit302, label %bb.cc

bb.cc:                                            ; preds = %Py_DECREF.exit
  %i.jn = load i32, ptr %.2164, align 8, !tbaa !24 ; 2 uses
  %.not.i.i301 = icmp sgt i32 %i.jn, -1
  br i1 %.not.i.i301, label %bb.cd, label %Py_XDECREF.exit302

bb.cd:                                            ; preds = %bb.cc
  %i.jo = add nsw i32 %i.jn, -1                   ; 2 uses
  store i32 %i.jo, ptr %.2164, align 8, !tbaa !24
  %i.jp = icmp eq i32 %i.jo, 0
  br i1 %i.jp, label %bb.ce, label %Py_XDECREF.exit302

bb.ce:                                            ; preds = %bb.cd
  tail call void @_Py_Dealloc(ptr noundef nonnull %.2164) #16
  br label %Py_XDECREF.exit302

Py_XDECREF.exit302:                               ; preds = %Py_DECREF.exit, %bb.cc, %bb.cd, %bb.ce
  %.not.i303 = icmp eq ptr %.2167, null
  br i1 %.not.i303, label %Py_DECREF.exit257, label %bb.cf

bb.cf:                                            ; preds = %Py_XDECREF.exit302
  %i.jq = load i32, ptr %.2167, align 8, !tbaa !24 ; 2 uses
  %.not.i.i304 = icmp sgt i32 %i.jq, -1
  br i1 %.not.i.i304, label %bb.cg, label %Py_DECREF.exit257

bb.cg:                                            ; preds = %bb.cf
  %i.jr = add nsw i32 %i.jq, -1                   ; 2 uses
  store i32 %i.jr, ptr %.2167, align 8, !tbaa !24
  %i.js = icmp eq i32 %i.jr, 0
  br i1 %i.js, label %bb.ch, label %Py_DECREF.exit257

bb.ch:                                            ; preds = %bb.cg
  tail call void @_Py_Dealloc(ptr noundef nonnull %.2167) #16
  br label %Py_DECREF.exit257

Py_DECREF.exit257:                                ; preds = %bb.ch, %bb.cg, %bb.cf, %Py_XDECREF.exit302, %bb.j, %bb.i, %bb.h, %bb.f, %._crit_edge421, %Py_XDECREF.exit277
  %.0 = phi ptr [ %i.jg, %._crit_edge421 ], [ null, %bb.j ], [ null, %bb.f ], [ %i.ck, %Py_XDECREF.exit277 ], [ null, %bb.h ], [ null, %bb.i ], [ null, %Py_XDECREF.exit302 ], [ null, %bb.cf ], [ null, %bb.cg ], [ null, %bb.ch ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @long_abs(ptr nofree noundef captures(ret: address, provenance) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val = load i64, ptr %i.a, align 8, !tbaa !25  ; 8 uses
  %i.b = and i64 %.val, 3                         ; 2 uses
  %i.c = icmp eq i64 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %.val, 15
  br i1 %i.d, label %.thread.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %0, i64 24
  %.val10.i = load i32, ptr %i.e, align 8, !tbaa !7
  %i.f = zext i32 %.val10.i to i64
  %i.g = tail call fastcc ptr @_PyLong_FromSTwoDigits(i64 noundef %i.f), !inline_history !232
  br label %long_neg.exit

.thread.i.i:                                      ; preds = %bb.b
  %i.h = lshr i64 %.val, 3                        ; 2 uses
  %i.i = tail call fastcc ptr @long_alloc(i64 noundef %i.h), !inline_history !233 ; 4 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %long_neg.exit, label %_PyLong_Copy.exit.thread13.i

_PyLong_Copy.exit.thread13.i:                     ; preds = %.thread.i.i
  %i.k = and i64 %.val, -6
  %i.l = getelementptr i8, ptr %i.i, i64 16       ; 2 uses
  store i64 %i.k, ptr %i.l, align 8, !tbaa !25
  %i.m = getelementptr i8, ptr %i.i, i64 24
  %i.n = getelementptr i8, ptr %0, i64 24
  %i.o = shl nuw nsw i64 %i.h, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.m, ptr readonly align 8 %i.n, i64 %i.o, i1 false)
  %i.p = and i64 %.val, -8
  store i64 %i.p, ptr %i.l, align 8, !tbaa !25
  br label %long_neg.exit

bb.d:                                             ; preds = %bb.a
  %i.q = getelementptr i8, ptr %0, i64 8
  %.val.i4 = load ptr, ptr %i.q, align 8, !tbaa !21
  %.not.i = icmp eq ptr %.val.i4, @PyLong_Type
  br i1 %.not.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.r = load i32, ptr %0, align 8, !tbaa !24     ; 2 uses
  %i.s = icmp ugt i32 %i.r, -1073741825
  br i1 %i.s, label %long_neg.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = add nuw i32 %i.r, 1
  store i32 %i.t, ptr %0, align 8, !tbaa !24
  br label %long_neg.exit

bb.g:                                             ; preds = %bb.d
  %i.u = icmp ugt i64 %.val, 15
  br i1 %i.u, label %.thread.i.i6, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr i8, ptr %0, i64 24
  %.val26.i.i = load i32, ptr %i.v, align 8, !tbaa !7
  %i.w = sub nsw i64 1, %i.b
  %i.x = zext i32 %.val26.i.i to i64
  %i.y = mul nsw i64 %i.w, %i.x                   ; 2 uses
  %i.z = add nsw i64 %i.y, -1025
  %or.cond.i.i = icmp ult i64 %i.z, -1030
  br i1 %or.cond.i.i, label %.thread.i.i6, label %bb.i

bb.i:                                             ; preds = %bb.h
  %1 = getelementptr [32 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 14136), i64 %i.y
  %i.aa = getelementptr i8, ptr %1, i64 160
  br label %long_neg.exit

.thread.i.i6:                                     ; preds = %bb.h, %bb.g
  %i.ab = lshr i64 %.val, 3                       ; 2 uses
  %i.ac = tail call fastcc ptr @long_alloc(i64 noundef %i.ab), !inline_history !234 ; 4 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %long_neg.exit, label %bb.j

bb.j:                                             ; preds = %.thread.i.i6
  %i.ae = and i64 %.val, -5
  %i.af = getelementptr i8, ptr %i.ac, i64 16
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !25
  %i.ag = getelementptr i8, ptr %i.ac, i64 24
  %i.ah = getelementptr i8, ptr %0, i64 24
  %i.ai = shl nuw nsw i64 %i.ab, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ag, ptr readonly align 8 %i.ah, i64 %i.ai, i1 false)
  br label %long_neg.exit

long_neg.exit:                                    ; preds = %bb.j, %.thread.i.i6, %bb.i, %bb.f, %bb.e, %_PyLong_Copy.exit.thread13.i, %.thread.i.i, %bb.c
  %.0 = phi ptr [ null, %.thread.i.i ], [ %i.g, %bb.c ], [ %i.i, %_PyLong_Copy.exit.thread13.i ], [ %0, %bb.f ], [ %0, %bb.e ], [ %i.aa, %bb.i ], [ %i.ac, %bb.j ], [ null, %.thread.i.i6 ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @l_mod(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %.val18 = load i64, ptr %i.b, align 8, !tbaa !25 ; 5 uses
  %i.c = lshr i64 %.val18, 3                      ; 8 uses
  %i.d = icmp eq i64 %i.c, 1
  %i.e = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.e, align 8, !tbaa !25  ; 4 uses
  %.mask = and i64 %.val, -8
  %i.f = icmp eq i64 %.mask, 8
  %or.cond = select i1 %i.d, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 24
  %.val24 = load i32, ptr %i.g, align 8, !tbaa !7 ; 2 uses
  %i.h = getelementptr i8, ptr %1, i64 24
  %.val26 = load i32, ptr %i.h, align 8, !tbaa !7 ; 3 uses
  %i.i = xor i64 %.val, %.val18
  %i.j = and i64 %i.i, 3
  %.not.i27 = icmp eq i64 %i.j, 0
  br i1 %.not.i27, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = srem i32 %.val24, %.val26
  br label %fast_mod.exit

bb.d:                                             ; preds = %bb.b
  %i.l = add i32 %.val24, -1
  %i.m = srem i32 %i.l, %.val26
  %i.n = xor i32 %i.m, -1
  %i.o = add i32 %.val26, %i.n
  br label %fast_mod.exit

fast_mod.exit:                                    ; preds = %bb.c, %bb.d
  %.0.i = phi i32 [ %i.k, %bb.c ], [ %i.o, %bb.d ]
  %i.p = trunc nuw nsw i64 %.val to i32
  %i.q = and i32 %i.p, 3
  %i.r = sub nsw i32 1, %i.q
  %i.s = mul i32 %.0.i, %i.r
  %i.t = sext i32 %i.s to i64
  %i.u = tail call ptr @PyLong_FromLong(i64 noundef %i.t), !inline_history !235 ; 2 uses
  store ptr %i.u, ptr %2, align 8, !tbaa !207
  %i.v = icmp eq ptr %i.u, null
  %.neg = sext i1 %i.v to i32
  br label %long_rem.exit.thread

._crit_edge:                                      ; preds = %bb.a
  %i.w = getelementptr i8, ptr %1, i64 16         ; 2 uses
  %i.x = lshr i64 %.val, 3                        ; 4 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.z = load ptr, ptr @PyExc_ZeroDivisionError, align 8, !tbaa !11
  tail call void @PyErr_SetString(ptr noundef %i.z, ptr noundef nonnull @.str.47) #16, !inline_history !236
  br label %long_rem.exit.thread

bb.f:                                             ; preds = %._crit_edge
  %i.aa = icmp samesign ult i64 %i.c, %i.x
  br i1 %i.aa, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = icmp eq i64 %i.c, %i.x
  br i1 %i.ab, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr i8, ptr %0, i64 20
  %i.ad = getelementptr [4 x i8], ptr %i.ac, i64 %i.c
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !7
  %i.af = getelementptr i8, ptr %1, i64 20
  %i.ag = getelementptr [4 x i8], ptr %i.af, i64 %i.c
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !7
  %i.ai = icmp ult i32 %i.ae, %i.ah
  br i1 %i.ai, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.aj = getelementptr i8, ptr %0, i64 8
  %.val.i.i = load ptr, ptr %i.aj, align 8, !tbaa !21
  %.not.i.i = icmp eq ptr %.val.i.i, @PyLong_Type
  br i1 %.not.i.i, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ak = load i32, ptr %0, align 8, !tbaa !24    ; 2 uses
  %i.al = icmp ugt i32 %i.ak, -1073741825
  br i1 %i.al, label %long_rem.exit.thread30, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = add nuw i32 %i.ak, 1
  store i32 %i.am, ptr %0, align 8, !tbaa !24
  br label %long_rem.exit.thread30

bb.l:                                             ; preds = %bb.i
  %i.an = icmp ugt i64 %.val18, 15
  br i1 %i.an, label %.thread.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = getelementptr i8, ptr %0, i64 24
  %.val26.i.i.i = load i32, ptr %i.ao, align 8, !tbaa !7
  %i.ap = and i64 %.val18, 3
  %i.aq = sub nsw i64 1, %i.ap
  %i.ar = zext i32 %.val26.i.i.i to i64
  %i.as = mul nsw i64 %i.aq, %i.ar                ; 2 uses
  %i.at = add nsw i64 %i.as, -1025
  %or.cond.i.i.i = icmp ult i64 %i.at, -1030
  br i1 %or.cond.i.i.i, label %.thread.i.i.i, label %long_rem.exit

.thread.i.i.i:                                    ; preds = %bb.m, %bb.l
  %i.au = tail call fastcc ptr @long_alloc(i64 noundef %i.c), !inline_history !237 ; 4 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %long_rem.exit.thread, label %bb.n

bb.n:                                             ; preds = %.thread.i.i.i
  %i.aw = and i64 %.val18, -5
  %i.ax = getelementptr i8, ptr %i.au, i64 16
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !25
  %i.ay = getelementptr i8, ptr %i.au, i64 24
  %i.az = getelementptr i8, ptr %0, i64 24
  %i.ba = shl nuw nsw i64 %i.c, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ay, ptr readonly align 8 %i.az, i64 %i.ba, i1 false)
  br label %long_rem.exit.thread30

bb.o:                                             ; preds = %bb.h, %bb.g
  %i.bb = icmp eq i64 %i.x, 1
  br i1 %i.bb, label %.lr.ph.i.i.i, label %bb.q

.lr.ph.i.i.i:                                     ; preds = %bb.o
  %i.bc = getelementptr i8, ptr %1, i64 24
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !7
  %i.be = getelementptr i8, ptr %0, i64 24
  %i.bf = zext i32 %i.bd to i64
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.lr.ph.i.i.i
  %.08.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.bm, %bb.p ]
  %.057.i.i.i = phi i64 [ %i.c, %.lr.ph.i.i.i ], [ %i.bg, %bb.p ] ; 2 uses
  %i.bg = add nsw i64 %.057.i.i.i, -1             ; 2 uses
  %i.bh = shl nuw nsw i64 %.08.i.i.i, 30
  %i.bi = getelementptr [4 x i8], ptr %i.be, i64 %i.bg
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !7
  %i.bk = zext i32 %i.bj to i64
  %i.bl = or i64 %i.bh, %i.bk
  %i.bm = urem i64 %i.bl, %i.bf                   ; 2 uses
  %i.bn = icmp samesign ugt i64 %.057.i.i.i, 1
  br i1 %i.bn, label %bb.p, label %rem1.exit.i, !llvm.loop !238

rem1.exit.i:                                      ; preds = %bb.p
  %i.bo = tail call ptr @PyLong_FromLong(i64 noundef %i.bm), !inline_history !239 ; 2 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %long_rem.exit.thread, label %bb.u

bb.q:                                             ; preds = %bb.o
  %i.bq = call fastcc ptr @x_divrem(ptr noundef nonnull %0, ptr noundef nonnull readonly %1, ptr noundef nonnull %i.a), !inline_history !236 ; 4 uses
  %.not.i41.i = icmp eq ptr %i.bq, null
  br i1 %.not.i41.i, label %Py_XDECREF.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !24 ; 2 uses
  %.not.i.i42.i = icmp sgt i32 %i.br, -1
  br i1 %.not.i.i42.i, label %bb.s, label %Py_XDECREF.exit.i

bb.s:                                             ; preds = %bb.r
  %i.bs = add nsw i32 %i.br, -1                   ; 2 uses
  store i32 %i.bs, ptr %i.bq, align 8, !tbaa !24
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.t, label %Py_XDECREF.exit.i

bb.t:                                             ; preds = %bb.s
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.bq) #16, !inline_history !236
  br label %Py_XDECREF.exit.i

Py_XDECREF.exit.i:                                ; preds = %bb.t, %bb.s, %bb.r, %bb.q
  %i.bu = load ptr, ptr %i.a, align 8, !tbaa !207
  %i.bv = tail call fastcc ptr @maybe_small_long(ptr noundef %i.bu), !inline_history !236 ; 2 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %long_rem.exit.thread, label %bb.u

bb.u:                                             ; preds = %Py_XDECREF.exit.i, %rem1.exit.i
  %i.bx = phi ptr [ %i.bv, %Py_XDECREF.exit.i ], [ %i.bo, %rem1.exit.i ] ; 9 uses
  %.val38.i = load i64, ptr %i.b, align 8, !tbaa !25
  %i.by = and i64 %.val38.i, 3
  %i.bz = icmp eq i64 %i.by, 2
  br i1 %i.bz, label %bb.v, label %long_rem.exit.thread30

bb.v:                                             ; preds = %bb.u
  %i.ca = getelementptr i8, ptr %i.bx, i64 16     ; 2 uses
  %.val39.i = load i64, ptr %i.ca, align 8, !tbaa !25 ; 2 uses
  %i.cb = and i64 %.val39.i, 3                    ; 3 uses
  %i.cc = icmp eq i64 %i.cb, 1
  br i1 %i.cc, label %long_rem.exit.thread30, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.val7.i.i = load i32, ptr %i.bx, align 8, !tbaa !24
  %.not.i43.i = icmp eq i32 %.val7.i.i, 1
  br i1 %.not.i43.i, label %_PyLong_Negate.exit.i.thread, label %bb.x

_PyLong_Negate.exit.i.thread:                     ; preds = %bb.w
  %i.cd = sub nsw i64 2, %i.cb
  %i.ce = and i64 %.val39.i, -8
  %i.cf = and i64 %i.cd, 4294967295
  %i.cg = or i64 %i.cf, %i.ce
  store i64 %i.cg, ptr %i.ca, align 8, !tbaa !25
  br label %long_rem.exit.thread30

bb.x:                                             ; preds = %bb.w
  %i.ch = getelementptr i8, ptr %i.bx, i64 24
  %.val6.i.i = load i32, ptr %i.ch, align 8, !tbaa !7
  %.neg.i.i = add nsw i64 %i.cb, -1
  %i.ci = zext i32 %.val6.i.i to i64
  %.neg8.i.i = mul nsw i64 %.neg.i.i, %i.ci
  %i.cj = tail call fastcc ptr @_PyLong_FromSTwoDigits(i64 noundef %.neg8.i.i), !inline_history !240 ; 2 uses
  %i.ck = load i32, ptr %i.bx, align 8, !tbaa !24 ; 2 uses
  %.not.i.i44.i = icmp sgt i32 %i.ck, -1
  br i1 %.not.i.i44.i, label %bb.y, label %_PyLong_Negate.exit.i

bb.y:                                             ; preds = %bb.x
  %i.cl = add nsw i32 %i.ck, -1                   ; 2 uses
  store i32 %i.cl, ptr %i.bx, align 8, !tbaa !24
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %bb.z, label %_PyLong_Negate.exit.i

bb.z:                                             ; preds = %bb.y
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.bx) #16, !inline_history !240
  br label %_PyLong_Negate.exit.i

_PyLong_Negate.exit.i:                            ; preds = %bb.y, %bb.z, %bb.x
  %i.cn = icmp eq ptr %i.cj, null
  br i1 %i.cn, label %long_rem.exit.thread, label %long_rem.exit.thread30

long_rem.exit:                                    ; preds = %bb.m
  %3 = getelementptr [32 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 14136), i64 %i.as
  %i.co = getelementptr i8, ptr %3, i64 160       ; 2 uses
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %long_rem.exit.thread, label %long_rem.exit.thread30

long_rem.exit.thread30:                           ; preds = %bb.n, %bb.j, %bb.k, %_PyLong_Negate.exit.i.thread, %_PyLong_Negate.exit.i, %bb.v, %bb.u, %long_rem.exit
  %i.cq = phi ptr [ %i.cj, %_PyLong_Negate.exit.i ], [ %i.bx, %bb.v ], [ %i.bx, %bb.u ], [ %i.bx, %_PyLong_Negate.exit.i.thread ], [ %i.co, %long_rem.exit ], [ %i.au, %bb.n ], [ %0, %bb.j ], [ %0, %bb.k ] ; 8 uses
  %i.cr = getelementptr i8, ptr %i.cq, i64 16
  %.val20 = load i64, ptr %i.cr, align 8, !tbaa !25
  %i.cs = and i64 %.val20, 3
  switch i64 %i.cs, label %.thread [
    i64 2, label %bb.aa
    i64 0, label %bb.ab
  ]

bb.aa:                                            ; preds = %long_rem.exit.thread30
  %.val22 = load i64, ptr %i.w, align 8, !tbaa !25
  %i.ct = and i64 %.val22, 3
  %i.cu = icmp eq i64 %i.ct, 0
  br i1 %i.cu, label %bb.ac, label %.thread

bb.ab:                                            ; preds = %long_rem.exit.thread30
  %.val19 = load i64, ptr %i.w, align 8, !tbaa !25
  %i.cv = and i64 %.val19, 3
  %i.cw = icmp eq i64 %i.cv, 2
  br i1 %i.cw, label %bb.ac, label %.thread

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.cx = tail call fastcc ptr @long_add(ptr noundef nonnull %i.cq, ptr noundef nonnull %1) ; 2 uses
  store ptr %i.cx, ptr %i.a, align 8, !tbaa !207
  %i.cy = load i32, ptr %i.cq, align 8, !tbaa !24 ; 2 uses
  %.not.i = icmp sgt i32 %i.cy, -1
  br i1 %.not.i, label %bb.ad, label %Py_DECREF.exit

bb.ad:                                            ; preds = %bb.ac
  %i.cz = add nsw i32 %i.cy, -1                   ; 2 uses
  store i32 %i.cz, ptr %i.cq, align 8, !tbaa !24
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %bb.ae, label %Py_DECREF.exit

bb.ae:                                            ; preds = %bb.ad
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.cq) #16
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.ac, %bb.ad, %bb.ae
  %.not = icmp eq ptr %i.cx, null
  br i1 %.not, label %long_rem.exit.thread, label %Py_DECREF.exit..thread_crit_edge

Py_DECREF.exit..thread_crit_edge:                 ; preds = %Py_DECREF.exit
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !207
  br label %.thread

.thread:                                          ; preds = %Py_DECREF.exit..thread_crit_edge, %long_rem.exit.thread30, %bb.aa, %bb.ab
  %i.db = phi ptr [ %.pre, %Py_DECREF.exit..thread_crit_edge ], [ %i.cq, %long_rem.exit.thread30 ], [ %i.cq, %bb.aa ], [ %i.cq, %bb.ab ]
  store ptr %i.db, ptr %2, align 8, !tbaa !207
  br label %long_rem.exit.thread

long_rem.exit.thread:                             ; preds = %.thread.i.i.i, %_PyLong_Negate.exit.i, %Py_XDECREF.exit.i, %rem1.exit.i, %bb.e, %long_rem.exit, %Py_DECREF.exit, %.thread, %fast_mod.exit
  %.1 = phi i32 [ %.neg, %fast_mod.exit ], [ -1, %Py_DECREF.exit ], [ 0, %.thread ], [ -1, %long_rem.exit ], [ -1, %_PyLong_Negate.exit.i ], [ -1, %bb.e ], [ -1, %rem1.exit.i ], [ -1, %Py_XDECREF.exit.i ], [ -1, %.thread.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define dso_local ptr @_PyLong_DivmodNear(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store ptr null, ptr %i.a, align 8, !tbaa !207
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store ptr null, ptr %i.b, align 8, !tbaa !207
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val60 = load ptr, ptr %i.c, align 8, !tbaa !21
  %i.d = getelementptr i8, ptr %.val60, i64 168
  %.val62 = load i64, ptr %i.d, align 8, !tbaa !35
  %i.e = and i64 %.val62, 16777216
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.g = getelementptr i8, ptr %.val, i64 168
  %.val61 = load i64, ptr %i.g, align 8, !tbaa !35
  %i.h = and i64 %.val61, 16777216
  %.not48 = icmp eq i64 %i.h, 0
  br i1 %.not48, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !11
  tail call void @PyErr_SetString(ptr noundef %i.i, ptr noundef nonnull @.str.28) #16
  br label %Py_XDECREF.exit70

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %0, i64 16
  %.val65 = load i64, ptr %i.j, align 8, !tbaa !25
  %i.k = and i64 %.val65, 3
  %i.l = icmp eq i64 %i.k, 2
  %i.m = getelementptr i8, ptr %1, i64 16         ; 3 uses
  %.val64 = load i64, ptr %i.m, align 8, !tbaa !25
  %i.n = and i64 %.val64, 3
  %i.o = icmp eq i64 %i.n, 2
  %i.p = xor i1 %i.l, %i.o                        ; 3 uses
  %i.q = call fastcc i32 @long_divrem(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %i.a, ptr noundef %i.b)
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !207
  %i.t = tail call fastcc ptr @long_lshift_int64(ptr noundef %i.s, i64 noundef 1) ; 8 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %i.p, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr i8, ptr %i.t, i64 16
  %.val.i = load i64, ptr %i.v, align 8, !tbaa !25 ; 6 uses
  %i.w = icmp ugt i64 %.val.i, 15
  br i1 %i.w, label %.thread.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr i8, ptr %i.t, i64 24
  %.val10.i = load i32, ptr %i.x, align 8, !tbaa !7
  %i.y = and i64 %.val.i, 3
  %.neg.i = add nsw i64 %i.y, -1
  %i.z = zext i32 %.val10.i to i64
  %.neg17.i = mul nsw i64 %.neg.i, %i.z
  %i.aa = tail call fastcc ptr @_PyLong_FromSTwoDigits(i64 noundef %.neg17.i), !inline_history !232
  br label %long_neg.exit

.thread.i.i:                                      ; preds = %bb.g
  %i.ab = lshr i64 %.val.i, 3                     ; 2 uses
  %i.ac = tail call fastcc ptr @long_alloc(i64 noundef %i.ab), !inline_history !233 ; 4 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %long_neg.exit, label %_PyLong_Copy.exit.thread13.i

_PyLong_Copy.exit.thread13.i:                     ; preds = %.thread.i.i
  %i.ae = and i64 %.val.i, -5
  %i.af = getelementptr i8, ptr %i.ac, i64 16     ; 2 uses
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !25
  %i.ag = getelementptr i8, ptr %i.ac, i64 24
  %i.ah = getelementptr i8, ptr %i.t, i64 24
  %i.ai = shl nuw nsw i64 %i.ab, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ag, ptr readonly align 8 %i.ah, i64 %i.ai, i1 false)
  %i.aj = and i64 %.val.i, 3
  %i.ak = sub nsw i64 2, %i.aj
  %i.al = and i64 %.val.i, -8
  %i.am = and i64 %i.ak, 4294967295
  %i.an = or i64 %i.am, %i.al
  store i64 %i.an, ptr %i.af, align 8, !tbaa !25
  br label %long_neg.exit

long_neg.exit:                                    ; preds = %bb.h, %.thread.i.i, %_PyLong_Copy.exit.thread13.i
  %.0.i = phi ptr [ %i.aa, %bb.h ], [ %i.ac, %_PyLong_Copy.exit.thread13.i ], [ null, %.thread.i.i ] ; 2 uses
  %i.ao = load i32, ptr %i.t, align 8, !tbaa !24  ; 2 uses
  %.not.i55 = icmp sgt i32 %i.ao, -1
  br i1 %.not.i55, label %bb.i, label %Py_DECREF.exit56

bb.i:                                             ; preds = %long_neg.exit
  %i.ap = add nsw i32 %i.ao, -1                   ; 2 uses
  store i32 %i.ap, ptr %i.t, align 8, !tbaa !24
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.j, label %Py_DECREF.exit56

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.t) #16
  br label %Py_DECREF.exit56

Py_DECREF.exit56:                                 ; preds = %long_neg.exit, %bb.i, %bb.j
  %i.ar = icmp eq ptr %.0.i, null
  br i1 %i.ar, label %.thread, label %bb.k

bb.k:                                             ; preds = %Py_DECREF.exit56, %bb.f
  %.044 = phi ptr [ %.0.i, %Py_DECREF.exit56 ], [ %i.t, %bb.f ] ; 6 uses
  %i.as = getelementptr i8, ptr %.044, i64 16
  %.val31.i = load i64, ptr %i.as, align 8, !tbaa !25 ; 4 uses
  %.val32.i = load i64, ptr %i.m, align 8, !tbaa !25 ; 4 uses
  %i.at = or i64 %.val32.i, %.val31.i
  %i.au = icmp ugt i64 %i.at, 15
  br i1 %i.au, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.av = getelementptr i8, ptr %.044, i64 24
  %.val29.i = load i32, ptr %i.av, align 8, !tbaa !7
  %i.aw = and i64 %.val31.i, 3
  %i.ax = sub nsw i64 1, %i.aw
  %i.ay = zext i32 %.val29.i to i64
  %i.az = mul nsw i64 %i.ax, %i.ay
  %i.ba = getelementptr i8, ptr %1, i64 24
  %.val27.i = load i32, ptr %i.ba, align 8, !tbaa !7
  %i.bb = and i64 %.val32.i, 3
  %.neg.i66 = add nsw i64 %i.bb, -1
  %i.bc = zext i32 %.val27.i to i64
  %.neg35.i = mul nsw i64 %.neg.i66, %i.bc
  %i.bd = add nsw i64 %.neg35.i, %i.az
  br label %long_compare.exit

bb.m:                                             ; preds = %bb.k
  %i.be = and i64 %.val31.i, 3                    ; 2 uses
end_hunk_4
begin_hunk_5_@_PyLong_DivmodNear:bb.a

bb.x:                                             ; preds = %bb.w
  %i.co = add nsw i32 %i.cn, -1                   ; 2 uses
  store i32 %i.co, ptr %i.cc, align 8, !tbaa !24
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %bb.y, label %Py_DECREF.exit52

bb.y:                                             ; preds = %bb.x
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.cc) #16
  br label %Py_DECREF.exit52

Py_DECREF.exit52:                                 ; preds = %bb.w, %bb.x, %bb.y
  %i.cq = icmp eq ptr %.037, null
  br i1 %i.cq, label %.thread, label %bb.z

bb.z:                                             ; preds = %Py_DECREF.exit52
  %i.cr = load ptr, ptr %i.b, align 8, !tbaa !207 ; 5 uses
  br i1 %i.p, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cs = tail call fastcc ptr @long_add(ptr noundef %i.cr, ptr noundef nonnull %1)
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.ct = tail call fastcc ptr @long_sub(ptr noundef %i.cr, ptr noundef nonnull %1)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %.1 = phi ptr [ %i.cs, %bb.aa ], [ %i.ct, %bb.ab ] ; 2 uses
  store ptr %.1, ptr %i.b, align 8, !tbaa !207
  %i.cu = load i32, ptr %i.cr, align 8, !tbaa !24 ; 2 uses
  %.not.i = icmp sgt i32 %i.cu, -1
  br i1 %.not.i, label %bb.ad, label %Py_DECREF.exit

bb.ad:                                            ; preds = %bb.ac
  %i.cv = add nsw i32 %i.cu, -1                   ; 2 uses
  store i32 %i.cv, ptr %i.cr, align 8, !tbaa !24
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %bb.ae, label %Py_DECREF.exit

bb.ae:                                            ; preds = %bb.ad
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.cr) #16
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.ac, %bb.ad, %bb.ae
  %i.cx = icmp eq ptr %.1, null
  br i1 %i.cx, label %.thread, label %bb.af

bb.af:                                            ; preds = %Py_DECREF.exit, %bb.s
  %i.cy = phi ptr [ %.037, %Py_DECREF.exit ], [ %i.cc, %bb.s ]
  %i.cz = tail call ptr @PyTuple_New(i64 noundef 2) #16 ; 4 uses
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.db = getelementptr i8, ptr %i.cz, i64 32
  store ptr %i.cy, ptr %i.db, align 8, !tbaa !11
  %i.dc = load ptr, ptr %i.b, align 8, !tbaa !207
  %i.dd = getelementptr i8, ptr %i.cz, i64 40
  store ptr %i.dc, ptr %i.dd, align 8, !tbaa !11
  br label %Py_XDECREF.exit70

.thread:                                          ; preds = %Py_DECREF.exit, %Py_DECREF.exit52, %bb.af, %Py_DECREF.exit56, %bb.e, %bb.d
  %i.de = load ptr, ptr %i.a, align 8, !tbaa !207 ; 4 uses
  %.not.i67 = icmp eq ptr %i.de, null
  br i1 %.not.i67, label %Py_XDECREF.exit, label %bb.ah

bb.ah:                                            ; preds = %.thread
  %i.df = load i32, ptr %i.de, align 8, !tbaa !24 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.df, -1
  br i1 %.not.i.i, label %bb.ai, label %Py_XDECREF.exit

bb.ai:                                            ; preds = %bb.ah
  %i.dg = add nsw i32 %i.df, -1                   ; 2 uses
  store i32 %i.dg, ptr %i.de, align 8, !tbaa !24
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %bb.aj, label %Py_XDECREF.exit

bb.aj:                                            ; preds = %bb.ai
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.de) #16
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %.thread, %bb.ah, %bb.ai, %bb.aj
  %i.di = load ptr, ptr %i.b, align 8, !tbaa !207 ; 4 uses
  %.not.i68 = icmp eq ptr %i.di, null
  br i1 %.not.i68, label %Py_XDECREF.exit70, label %bb.ak

bb.ak:                                            ; preds = %Py_XDECREF.exit
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !24 ; 2 uses
  %.not.i.i69 = icmp sgt i32 %i.dj, -1
  br i1 %.not.i.i69, label %bb.al, label %Py_XDECREF.exit70

bb.al:                                            ; preds = %bb.ak
  %i.dk = add nsw i32 %i.dj, -1                   ; 2 uses
  store i32 %i.dk, ptr %i.di, align 8, !tbaa !24
  %i.dl = icmp eq i32 %i.dk, 0
  br i1 %i.dl, label %bb.am, label %Py_XDECREF.exit70

bb.am:                                            ; preds = %bb.al
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.di) #16
  br label %Py_XDECREF.exit70

Py_XDECREF.exit70:                                ; preds = %bb.am, %bb.al, %bb.ak, %Py_XDECREF.exit, %bb.ag, %bb.c
  %.0 = phi ptr [ %i.cz, %bb.ag ], [ null, %bb.c ], [ null, %Py_XDECREF.exit ], [ null, %bb.ak ], [ null, %bb.al ], [ null, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @long_divrem(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2, ptr nofree noundef nonnull captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %.val57 = load i64, ptr %i.a, align 8, !tbaa !25 ; 4 uses
  %i.b = lshr i64 %.val57, 3                      ; 8 uses
  %i.c = getelementptr i8, ptr %1, i64 16         ; 2 uses
  %.val = load i64, ptr %i.c, align 8, !tbaa !25
  %i.d = lshr i64 %.val, 3                        ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @PyExc_ZeroDivisionError, align 8, !tbaa !11
  tail call void @PyErr_SetString(ptr noundef %i.f, ptr noundef nonnull @.str.47) #16
  br label %Py_DECREF.exit51

bb.c:                                             ; preds = %bb.a
  %i.g = icmp samesign ult i64 %i.b, %i.d
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = icmp eq i64 %i.b, %i.d
  br i1 %i.h, label %bb.e, label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %0, i64 20
  %i.j = getelementptr [4 x i8], ptr %i.i, i64 %i.b
  %i.k = load i32, ptr %i.j, align 4, !tbaa !7
  %i.l = getelementptr i8, ptr %1, i64 20
  %i.m = getelementptr [4 x i8], ptr %i.l, i64 %i.b
  %i.n = load i32, ptr %i.m, align 4, !tbaa !7
  %i.o = icmp ult i32 %i.k, %i.n
  br i1 %i.o, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.p = getelementptr i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.p, align 8, !tbaa !21
  %.not.i62 = icmp eq ptr %.val.i, @PyLong_Type
  br i1 %.not.i62, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.q = load i32, ptr %0, align 8, !tbaa !24     ; 2 uses
  %i.r = icmp ugt i32 %i.q, -1073741825
  br i1 %i.r, label %long_long.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = add nuw i32 %i.q, 1
  store i32 %i.s, ptr %0, align 8, !tbaa !24
  br label %long_long.exit.thread

bb.i:                                             ; preds = %bb.f
  %i.t = icmp ugt i64 %.val57, 15
  br i1 %i.t, label %.thread.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr i8, ptr %0, i64 24
  %.val26.i.i = load i32, ptr %i.u, align 8, !tbaa !7
  %i.v = and i64 %.val57, 3
  %i.w = sub nsw i64 1, %i.v
  %i.x = zext i32 %.val26.i.i to i64
  %i.y = mul nsw i64 %i.w, %i.x                   ; 2 uses
  %i.z = add nsw i64 %i.y, -1025
  %or.cond.i.i = icmp ult i64 %i.z, -1030
  br i1 %or.cond.i.i, label %.thread.i.i, label %long_long.exit

.thread.i.i:                                      ; preds = %bb.j, %bb.i
  %i.aa = tail call fastcc ptr @long_alloc(i64 noundef %i.b), !inline_history !234 ; 4 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %long_long.exit.thread82, label %bb.k

long_long.exit.thread82:                          ; preds = %.thread.i.i
  store ptr null, ptr %3, align 8, !tbaa !207
  br label %Py_DECREF.exit51

bb.k:                                             ; preds = %.thread.i.i
  %i.ac = and i64 %.val57, -5
  %i.ad = getelementptr i8, ptr %i.aa, i64 16
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !25
  %i.ae = getelementptr i8, ptr %i.aa, i64 24
  %i.af = getelementptr i8, ptr %0, i64 24
  %i.ag = shl nuw nsw i64 %i.b, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ae, ptr readonly align 8 %i.af, i64 %i.ag, i1 false)
  br label %long_long.exit.thread

long_long.exit.thread:                            ; preds = %bb.h, %bb.g, %bb.k
  %.0.i.ph = phi ptr [ %i.aa, %bb.k ], [ %0, %bb.g ], [ %0, %bb.h ]
  store ptr %.0.i.ph, ptr %3, align 8, !tbaa !207
  br label %bb.l

long_long.exit:                                   ; preds = %bb.j
  %4 = getelementptr [32 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 14136), i64 %i.y
  %i.ah = getelementptr i8, ptr %4, i64 160       ; 2 uses
  store ptr %i.ah, ptr %3, align 8, !tbaa !207
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %Py_DECREF.exit51, label %bb.l

bb.l:                                             ; preds = %long_long.exit.thread, %long_long.exit
  store ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 14296), ptr %2, align 8, !tbaa !207
  br label %Py_DECREF.exit51

bb.m:                                             ; preds = %bb.e, %bb.d
  %i.aj = icmp eq i64 %i.d, 1
  br i1 %i.aj, label %bb.n, label %bb.w

bb.n:                                             ; preds = %bb.m
  %i.ak = getelementptr i8, ptr %1, i64 24
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !7
  %i.am = tail call fastcc ptr @long_alloc(i64 noundef %i.b), !inline_history !241 ; 8 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %Py_DECREF.exit51, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.n
  %i.ao = getelementptr i8, ptr %i.am, i64 24
  %i.ap = getelementptr i8, ptr %0, i64 24
  %i.aq = zext i32 %i.al to i64                   ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.lr.ph.i.i
  %.014.i.i = phi i64 [ %i.b, %.lr.ph.i.i ], [ %i.ar, %bb.o ] ; 2 uses
  %.01113.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.az, %bb.o ]
  %i.ar = add nsw i64 %.014.i.i, -1               ; 3 uses
  %i.as = shl nuw nsw i64 %.01113.i.i, 30
  %i.at = getelementptr [4 x i8], ptr %i.ap, i64 %i.ar
  %i.au = load i32, ptr %i.at, align 4, !tbaa !7
  %i.av = zext i32 %i.au to i64
  %i.aw = or i64 %i.as, %i.av                     ; 2 uses
  %i.ax = udiv i64 %i.aw, %i.aq
  %i.ay = trunc i64 %i.ax to i32
  %i.az = urem i64 %i.aw, %i.aq                   ; 2 uses
  %i.ba = getelementptr [4 x i8], ptr %i.ao, i64 %i.ar
  store i32 %i.ay, ptr %i.ba, align 4, !tbaa !7
  %i.bb = icmp samesign ugt i64 %.014.i.i, 1
  br i1 %i.bb, label %bb.o, label %inplace_divrem1.exit.i, !llvm.loop !242

inplace_divrem1.exit.i:                           ; preds = %bb.o
  %i.bc = getelementptr i8, ptr %i.am, i64 16     ; 2 uses
  %.val.i.i = load i64, ptr %i.bc, align 8, !tbaa !25 ; 2 uses
  %i.bd = lshr i64 %.val.i.i, 3                   ; 3 uses
  %.not1315.i.i = icmp eq i64 %i.bd, 0
  br i1 %.not1315.i.i, label %bb.s, label %.lr.ph.i10.i

.lr.ph.i10.i:                                     ; preds = %inplace_divrem1.exit.i
  %i.be = getelementptr i8, ptr %i.am, i64 20
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %.lr.ph.i10.i
  %.016.i.i = phi i64 [ %i.bd, %.lr.ph.i10.i ], [ %i.bi, %bb.q ] ; 4 uses
  %i.bf = getelementptr [4 x i8], ptr %i.be, i64 %.016.i.i
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !7
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.q, label %.critedge.i.i

bb.q:                                             ; preds = %bb.p
  %i.bi = add nsw i64 %.016.i.i, -1               ; 2 uses
  %.not13.i.i = icmp eq i64 %i.bi, 0
  br i1 %.not13.i.i, label %.critedge.thread.thread.sink.split.i.i, label %bb.p, !llvm.loop !50

.critedge.i.i:                                    ; preds = %bb.p
  %.not.i.i = icmp eq i64 %.016.i.i, %i.bd
  br i1 %.not.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.critedge.i.i
  %i.bj = shl nuw i64 %.016.i.i, 3
  %i.bk = and i64 %.val.i.i, 3
  %i.bl = or disjoint i64 %i.bj, %i.bk
  br label %.critedge.thread.thread.sink.split.i.i

.critedge.thread.thread.sink.split.i.i:           ; preds = %bb.q, %bb.r
  %.sink.i.i = phi i64 [ %i.bl, %bb.r ], [ 1, %bb.q ]
  store i64 %.sink.i.i, ptr %i.bc, align 8, !tbaa !25
  br label %bb.s

bb.s:                                             ; preds = %inplace_divrem1.exit.i, %.critedge.i.i, %.critedge.thread.thread.sink.split.i.i
  %i.bm = tail call ptr @PyLong_FromLong(i64 noundef %i.az) ; 2 uses
  store ptr %i.bm, ptr %3, align 8, !tbaa !207
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.bo = load i32, ptr %i.am, align 8, !tbaa !24 ; 2 uses
  %.not.i52 = icmp sgt i32 %i.bo, -1
  br i1 %.not.i52, label %bb.u, label %Py_DECREF.exit51

bb.u:                                             ; preds = %bb.t
  %i.bp = add nsw i32 %i.bo, -1                   ; 2 uses
  store i32 %i.bp, ptr %i.am, align 8, !tbaa !24
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.v, label %Py_DECREF.exit51

bb.v:                                             ; preds = %bb.u
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.am) #16
  br label %Py_DECREF.exit51

bb.w:                                             ; preds = %bb.m
  %i.br = tail call fastcc ptr @x_divrem(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %3) ; 2 uses
  %i.bs = load ptr, ptr %3, align 8, !tbaa !207
  %i.bt = tail call fastcc ptr @maybe_small_long(ptr noundef %i.bs)
  store ptr %i.bt, ptr %3, align 8, !tbaa !207
  %i.bu = icmp eq ptr %i.br, null
  br i1 %i.bu, label %Py_DECREF.exit51, label %bb.x

bb.x:                                             ; preds = %bb.s, %bb.w
  %.079 = phi ptr [ %i.br, %bb.w ], [ %i.am, %bb.s ] ; 8 uses
  %.val60 = load i64, ptr %i.a, align 8, !tbaa !25
  %i.bv = and i64 %.val60, 3
  %i.bw = icmp eq i64 %i.bv, 2
  %.val59 = load i64, ptr %i.c, align 8, !tbaa !25
  %i.bx = and i64 %.val59, 3
  %i.by = icmp eq i64 %i.bx, 2
  %i.bz = xor i1 %i.bw, %i.by
  br i1 %i.bz, label %bb.y, label %bb.ag

bb.y:                                             ; preds = %bb.x
  %.val7.i = load i32, ptr %.079, align 8, !tbaa !24
  %.not.i65 = icmp eq i32 %.val7.i, 1
  %i.ca = getelementptr i8, ptr %.079, i64 16     ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i65, label %_PyLong_Negate.exit.thread, label %bb.z

_PyLong_Negate.exit.thread:                       ; preds = %bb.y
  %i.cc = and i64 %i.cb, 3
  %i.cd = sub nsw i64 2, %i.cc
  %i.ce = and i64 %i.cb, -8
  %i.cf = and i64 %i.cd, 4294967295
  %i.cg = or i64 %i.cf, %i.ce
  store i64 %i.cg, ptr %i.ca, align 8, !tbaa !25
  br label %bb.ag

bb.z:                                             ; preds = %bb.y
  %i.ch = getelementptr i8, ptr %.079, i64 24
  %.val6.i = load i32, ptr %i.ch, align 8, !tbaa !7
  %i.ci = and i64 %i.cb, 3
  %.neg.i = add nsw i64 %i.ci, -1
  %i.cj = zext i32 %.val6.i to i64
  %.neg8.i = mul nsw i64 %.neg.i, %i.cj
  %i.ck = tail call fastcc ptr @_PyLong_FromSTwoDigits(i64 noundef %.neg8.i), !inline_history !243 ; 2 uses
  %i.cl = load i32, ptr %.079, align 8, !tbaa !24 ; 2 uses
  %.not.i.i66 = icmp sgt i32 %i.cl, -1
  br i1 %.not.i.i66, label %bb.aa, label %_PyLong_Negate.exit

bb.aa:                                            ; preds = %bb.z
  %i.cm = add nsw i32 %i.cl, -1                   ; 2 uses
  store i32 %i.cm, ptr %.079, align 8, !tbaa !24
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %bb.ab, label %_PyLong_Negate.exit

bb.ab:                                            ; preds = %bb.aa
  tail call void @_Py_Dealloc(ptr noundef nonnull %.079) #16, !inline_history !243
  br label %_PyLong_Negate.exit

_PyLong_Negate.exit:                              ; preds = %bb.z, %bb.aa, %bb.ab
  %i.co = icmp eq ptr %i.ck, null
  br i1 %i.co, label %bb.ac, label %bb.ag

bb.ac:                                            ; preds = %_PyLong_Negate.exit
  %i.cp = load ptr, ptr %3, align 8, !tbaa !207   ; 4 uses
  %.not47 = icmp eq ptr %i.cp, null
  br i1 %.not47, label %Py_DECREF.exit51, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store ptr null, ptr %3, align 8, !tbaa !207
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !24 ; 2 uses
  %.not.i50 = icmp sgt i32 %i.cq, -1
  br i1 %.not.i50, label %bb.ae, label %Py_DECREF.exit51

bb.ae:                                            ; preds = %bb.ad
  %i.cr = add nsw i32 %i.cq, -1                   ; 2 uses
  store i32 %i.cr, ptr %i.cp, align 8, !tbaa !24
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %bb.af, label %Py_DECREF.exit51

bb.af:                                            ; preds = %bb.ae
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.cp) #16
  br label %Py_DECREF.exit51

bb.ag:                                            ; preds = %_PyLong_Negate.exit.thread, %_PyLong_Negate.exit, %bb.x
  %.180 = phi ptr [ %i.ck, %_PyLong_Negate.exit ], [ %.079, %bb.x ], [ %.079, %_PyLong_Negate.exit.thread ] ; 4 uses
  %.val58 = load i64, ptr %i.a, align 8, !tbaa !25
  %i.ct = and i64 %.val58, 3
  %i.cu = icmp eq i64 %i.ct, 2
  br i1 %i.cu, label %bb.ah, label %bb.at

bb.ah:                                            ; preds = %bb.ag
  %i.cv = load ptr, ptr %3, align 8, !tbaa !207   ; 6 uses
  %i.cw = getelementptr i8, ptr %i.cv, i64 16     ; 2 uses
  %.val61 = load i64, ptr %i.cw, align 8, !tbaa !25 ; 2 uses
  %i.cx = and i64 %.val61, 3                      ; 3 uses
  %i.cy = icmp eq i64 %i.cx, 1
  br i1 %i.cy, label %bb.at, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.val7.i67 = load i32, ptr %i.cv, align 8, !tbaa !24
  %.not.i68 = icmp eq i32 %.val7.i67, 1
  br i1 %.not.i68, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.cz = sub nsw i64 2, %i.cx
  %i.da = and i64 %.val61, -8
  %i.db = and i64 %i.cz, 4294967295
  %i.dc = or i64 %i.db, %i.da
  store i64 %i.dc, ptr %i.cw, align 8, !tbaa !25
  br label %_PyLong_Negate.exit73thread-pre-split

bb.ak:                                            ; preds = %bb.ai
  %i.dd = getelementptr i8, ptr %i.cv, i64 24
  %.val6.i69 = load i32, ptr %i.dd, align 8, !tbaa !7
  %.neg.i70 = add nsw i64 %i.cx, -1
  %i.de = zext i32 %.val6.i69 to i64
  %.neg8.i71 = mul nsw i64 %.neg.i70, %i.de
  %i.df = tail call fastcc ptr @_PyLong_FromSTwoDigits(i64 noundef %.neg8.i71), !inline_history !243 ; 2 uses
  store ptr %i.df, ptr %3, align 8, !tbaa !207
  %i.dg = load i32, ptr %i.cv, align 8, !tbaa !24 ; 2 uses
  %.not.i.i72 = icmp sgt i32 %i.dg, -1
  br i1 %.not.i.i72, label %bb.al, label %_PyLong_Negate.exit73

bb.al:                                            ; preds = %bb.ak
  %i.dh = add nsw i32 %i.dg, -1                   ; 2 uses
  store i32 %i.dh, ptr %i.cv, align 8, !tbaa !24
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %bb.am, label %_PyLong_Negate.exit73thread-pre-split

bb.am:                                            ; preds = %bb.al
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.cv) #16, !inline_history !243
  br label %_PyLong_Negate.exit73thread-pre-split

_PyLong_Negate.exit73thread-pre-split:            ; preds = %bb.am, %bb.al, %bb.aj
end_hunk_5
begin_hunk_6_@PyLong_FromInt32:bb.a

bb.e:                                             ; preds = %bb.d
  %i.n = tail call ptr @PyObject_Malloc(i64 noundef 32) #16, !inline_history !28 ; 4 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = tail call ptr @PyErr_NoMemory() #16, !inline_history !28 ; 0 uses
  br label %_PyLong_FromMedium.exit

bb.g:                                             ; preds = %bb.e
  %i.q = getelementptr i8, ptr %i.n, i64 8
  store ptr @PyLong_Type, ptr %i.q, align 8, !tbaa !21
  %i.r = load i32, ptr @PyLong_Type, align 8, !tbaa !24 ; 2 uses
  %i.s = icmp ugt i32 %i.r, -1073741825
  br i1 %i.s, label %_PyObject_Init.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = add nuw i32 %i.r, 1
  store i32 %i.t, ptr @PyLong_Type, align 8, !tbaa !24
  br label %_PyObject_Init.exit.i

_PyObject_Init.exit.i:                            ; preds = %bb.h, %bb.g, %_PyFreeList_Pop.exit.i
  %.sink.i = phi ptr [ %i.i, %_PyFreeList_Pop.exit.i ], [ %i.n, %bb.g ], [ %i.n, %bb.h ] ; 4 uses
  tail call void @_Py_NewReference(ptr noundef nonnull %.sink.i) #16, !inline_history !28
  %i.u = tail call i32 @llvm.abs.i32(i32 %0, i1 true)
  %i.v = lshr i32 %0, 30
  %i.w = and i32 %i.v, 2
  %i.x = or disjoint i32 %i.w, 8
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr i8, ptr %.sink.i, i64 16
  store i64 %i.y, ptr %i.z, align 8, !tbaa !25
  %i.aa = getelementptr i8, ptr %.sink.i, i64 24
  store i32 %i.u, ptr %i.aa, align 8, !tbaa !7
  br label %_PyLong_FromMedium.exit

bb.i:                                             ; preds = %bb.c
  %i.ab = tail call i32 @llvm.abs.i32(i32 %0, i1 false)
  %i.ac = tail call ptr @PyObject_Malloc(i64 noundef 32) #16, !inline_history !260 ; 6 uses
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %long_alloc.exit.thread, label %bb.j

long_alloc.exit.thread:                           ; preds = %bb.i
  %i.ad = tail call ptr @PyErr_NoMemory() #16, !inline_history !260 ; 0 uses
  br label %_PyLong_FromMedium.exit

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr i8, ptr %i.ac, i64 8
  store ptr @PyLong_Type, ptr %i.ae, align 8, !tbaa !21
  %i.af = load i32, ptr @PyLong_Type, align 8, !tbaa !24 ; 2 uses
  %i.ag = icmp ugt i32 %i.af, -1073741825
  br i1 %i.ag, label %.lr.ph.preheader, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = add nuw i32 %i.af, 1
  store i32 %i.ah, ptr @PyLong_Type, align 8, !tbaa !24
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.j, %bb.k
  tail call void @_Py_NewReference(ptr noundef nonnull %i.ac) #16, !inline_history !260
  %i.ai = getelementptr i8, ptr %i.ac, i64 16
  %i.aj = getelementptr i8, ptr %i.ac, i64 24     ; 2 uses
  store i32 0, ptr %i.aj, align 8, !tbaa !7
  %i.ak = lshr i32 %0, 30
  %i.al = and i32 %i.ak, 2
  %i.am = or disjoint i32 %i.al, 16
  %i.an = zext nneg i32 %i.am to i64
  store i64 %i.an, ptr %i.ai, align 8, !tbaa !25
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.039 = phi ptr [ %i.ap, %.lr.ph ], [ %i.aj, %.lr.ph.preheader ] ; 2 uses
  %.13138 = phi i32 [ %i.aq, %.lr.ph ], [ %i.ab, %.lr.ph.preheader ] ; 2 uses
  %i.ao = and i32 %.13138, 1073741823
  %i.ap = getelementptr i8, ptr %.039, i64 4
  store i32 %i.ao, ptr %.039, align 4, !tbaa !7
  %i.aq = lshr i32 %.13138, 30                    ; 2 uses
  %.not = icmp eq i32 %i.aq, 0
  br i1 %.not, label %_PyLong_FromMedium.exit, label %.lr.ph, !llvm.loop !261

_PyLong_FromMedium.exit:                          ; preds = %.lr.ph, %long_alloc.exit.thread, %_PyObject_Init.exit.i, %bb.f, %bb.b
  %.1 = phi ptr [ %i.d, %bb.b ], [ %.sink.i, %_PyObject_Init.exit.i ], [ null, %long_alloc.exit.thread ], [ null, %bb.f ], [ %i.ac, %.lr.ph ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyLong_FromUInt32(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %0, 1025
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %i.c = getelementptr [32 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 14136), i64 %i.b
  %i.d = getelementptr i8, ptr %i.c, i64 160
  br label %_PyLong_FromMedium.exit

bb.c:                                             ; preds = %bb.a
  %i.e = icmp ult i32 %0, 1073741824
  br i1 %i.e, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.f = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !14   ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 11200    ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !16   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %bb.e, label %_PyFreeList_Pop.exit.i

_PyFreeList_Pop.exit.i:                           ; preds = %bb.d
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !19
  store ptr %i.j, ptr %i.h, align 8, !tbaa !16
  %i.k = getelementptr i8, ptr %i.g, i64 11208    ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !20
  %i.m = add i64 %i.l, -1
  store i64 %i.m, ptr %i.k, align 8, !tbaa !20
  br label %_PyObject_Init.exit.i

bb.e:                                             ; preds = %bb.d
  %i.n = tail call ptr @PyObject_Malloc(i64 noundef 32) #16, !inline_history !28 ; 4 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = tail call ptr @PyErr_NoMemory() #16, !inline_history !28 ; 0 uses
  br label %_PyLong_FromMedium.exit

bb.g:                                             ; preds = %bb.e
  %i.q = getelementptr i8, ptr %i.n, i64 8
  store ptr @PyLong_Type, ptr %i.q, align 8, !tbaa !21
  %i.r = load i32, ptr @PyLong_Type, align 8, !tbaa !24 ; 2 uses
  %i.s = icmp ugt i32 %i.r, -1073741825
  br i1 %i.s, label %_PyObject_Init.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = add nuw i32 %i.r, 1
  store i32 %i.t, ptr @PyLong_Type, align 8, !tbaa !24
  br label %_PyObject_Init.exit.i

_PyObject_Init.exit.i:                            ; preds = %bb.h, %bb.g, %_PyFreeList_Pop.exit.i
  %.sink.i = phi ptr [ %i.i, %_PyFreeList_Pop.exit.i ], [ %i.n, %bb.g ], [ %i.n, %bb.h ] ; 4 uses
  tail call void @_Py_NewReference(ptr noundef nonnull %.sink.i) #16, !inline_history !28
  %i.u = getelementptr i8, ptr %.sink.i, i64 16
  store i64 8, ptr %i.u, align 8, !tbaa !25
  %i.v = getelementptr i8, ptr %.sink.i, i64 24
  store i32 %0, ptr %i.v, align 8, !tbaa !7
  br label %_PyLong_FromMedium.exit

bb.i:                                             ; preds = %bb.c
  %i.w = tail call ptr @PyObject_Malloc(i64 noundef 32) #16, !inline_history !260 ; 6 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %long_alloc.exit.thread, label %bb.j

long_alloc.exit.thread:                           ; preds = %bb.i
  %i.x = tail call ptr @PyErr_NoMemory() #16, !inline_history !260 ; 0 uses
  br label %_PyLong_FromMedium.exit

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr i8, ptr %i.w, i64 8
  store ptr @PyLong_Type, ptr %i.y, align 8, !tbaa !21
  %i.z = load i32, ptr @PyLong_Type, align 8, !tbaa !24 ; 2 uses
  %i.aa = icmp ugt i32 %i.z, -1073741825
  br i1 %i.aa, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = add nuw i32 %i.z, 1
  store i32 %i.ab, ptr @PyLong_Type, align 8, !tbaa !24
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  tail call void @_Py_NewReference(ptr noundef nonnull %i.w) #16, !inline_history !260
  %i.ac = getelementptr i8, ptr %i.w, i64 16
  store i64 16, ptr %i.ac, align 8, !tbaa !25
  %i.ad = getelementptr i8, ptr %i.w, i64 24      ; 2 uses
  store i32 0, ptr %i.ad, align 8, !tbaa !7
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.m
  %.027 = phi ptr [ %i.ad, %bb.l ], [ %i.af, %bb.m ] ; 2 uses
  %.01926 = phi i32 [ %0, %bb.l ], [ %i.ag, %bb.m ] ; 2 uses
  %i.ae = and i32 %.01926, 1073741823
  %i.af = getelementptr i8, ptr %.027, i64 4
  store i32 %i.ae, ptr %.027, align 4, !tbaa !7
  %i.ag = lshr i32 %.01926, 30                    ; 2 uses
  %.not = icmp eq i32 %i.ag, 0
  br i1 %.not, label %_PyLong_FromMedium.exit, label %bb.m, !llvm.loop !262

_PyLong_FromMedium.exit:                          ; preds = %bb.m, %long_alloc.exit.thread, %_PyObject_Init.exit.i, %bb.f, %bb.b
  %.1 = phi ptr [ %i.d, %bb.b ], [ %.sink.i, %_PyObject_Init.exit.i ], [ null, %long_alloc.exit.thread ], [ null, %bb.f ], [ %i.w, %bb.m ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyLong_FromInt64(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = add i64 %0, 5
  %or.cond = icmp ult i64 %i.a, 1030
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %1 = getelementptr [32 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 14136), i64 %0
  %i.b = getelementptr i8, ptr %1, i64 160
  br label %_PyLong_FromMedium.exit

bb.c:                                             ; preds = %bb.a
  %i.c = add i64 %0, 1073741823
  %or.cond3 = icmp ult i64 %i.c, 2147483647
  br i1 %or.cond3, label %bb.d, label %.peel.begin

bb.d:                                             ; preds = %bb.c
  %i.d = trunc nsw i64 %0 to i32
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14   ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 11200    ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !16   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %bb.e, label %_PyFreeList_Pop.exit.i

_PyFreeList_Pop.exit.i:                           ; preds = %bb.d
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !19
  store ptr %i.i, ptr %i.g, align 8, !tbaa !16
  %i.j = getelementptr i8, ptr %i.f, i64 11208    ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !20
  %i.l = add i64 %i.k, -1
  store i64 %i.l, ptr %i.j, align 8, !tbaa !20
  br label %_PyObject_Init.exit.i

bb.e:                                             ; preds = %bb.d
  %i.m = tail call ptr @PyObject_Malloc(i64 noundef 32) #16, !inline_history !28 ; 4 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = tail call ptr @PyErr_NoMemory() #16, !inline_history !28 ; 0 uses
  br label %_PyLong_FromMedium.exit

bb.g:                                             ; preds = %bb.e
  %i.p = getelementptr i8, ptr %i.m, i64 8
  store ptr @PyLong_Type, ptr %i.p, align 8, !tbaa !21
  %i.q = load i32, ptr @PyLong_Type, align 8, !tbaa !24 ; 2 uses
  %i.r = icmp ugt i32 %i.q, -1073741825
  br i1 %i.r, label %_PyObject_Init.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = add nuw i32 %i.q, 1
  store i32 %i.s, ptr @PyLong_Type, align 8, !tbaa !24
  br label %_PyObject_Init.exit.i

_PyObject_Init.exit.i:                            ; preds = %bb.h, %bb.g, %_PyFreeList_Pop.exit.i
  %.sink.i = phi ptr [ %i.h, %_PyFreeList_Pop.exit.i ], [ %i.m, %bb.g ], [ %i.m, %bb.h ] ; 4 uses
  tail call void @_Py_NewReference(ptr noundef nonnull %.sink.i) #16, !inline_history !28
  %i.t = tail call i32 @llvm.abs.i32(i32 %i.d, i1 true)
  %i.u = lshr i64 %0, 30
  %i.v = and i64 %i.u, 2
  %i.w = or disjoint i64 %i.v, 8
  %i.x = getelementptr i8, ptr %.sink.i, i64 16
  store i64 %i.w, ptr %i.x, align 8, !tbaa !25
  %i.y = getelementptr i8, ptr %.sink.i, i64 24
  store i32 %i.t, ptr %i.y, align 8, !tbaa !7
  br label %_PyLong_FromMedium.exit

.peel.begin:                                      ; preds = %bb.c
  %i.z = tail call i64 @llvm.abs.i64(i64 %0, i1 false) ; 2 uses
  %i.aa = icmp ult i64 %i.z, 1152921504606846976
  %spec.select = select i1 %i.aa, i64 2, i64 3    ; 2 uses
  %i.ab = tail call fastcc ptr @long_alloc(i64 noundef %spec.select) ; 4 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_PyLong_FromMedium.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.peel.begin
  %i.ad = lshr i64 %0, 62
  %i.ae = and i64 %i.ad, 2
  %i.af = shl nuw nsw i64 %spec.select, 3
  %i.ag = or disjoint i64 %i.af, %i.ae
  %i.ah = getelementptr i8, ptr %i.ab, i64 16
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !25
  %i.ai = getelementptr i8, ptr %i.ab, i64 24
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.036 = phi ptr [ %i.al, %.lr.ph ], [ %i.ai, %.lr.ph.preheader ] ; 2 uses
  %.13135 = phi i64 [ %i.am, %.lr.ph ], [ %i.z, %.lr.ph.preheader ] ; 2 uses
  %i.aj = trunc i64 %.13135 to i32
  %i.ak = and i32 %i.aj, 1073741823
  %i.al = getelementptr i8, ptr %.036, i64 4
  store i32 %i.ak, ptr %.036, align 4, !tbaa !7
  %i.am = lshr i64 %.13135, 30                    ; 2 uses
  %.not = icmp eq i64 %i.am, 0
  br i1 %.not, label %_PyLong_FromMedium.exit, label %.lr.ph, !llvm.loop !263

_PyLong_FromMedium.exit:                          ; preds = %.lr.ph, %_PyObject_Init.exit.i, %bb.f, %.peel.begin, %bb.b
  %.1 = phi ptr [ %i.b, %bb.b ], [ %.sink.i, %_PyObject_Init.exit.i ], [ null, %.peel.begin ], [ null, %bb.f ], [ %i.ab, %.lr.ph ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyLong_FromUInt64(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i64 %0, 1025
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr [32 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 14136), i64 %0
  %i.c = getelementptr i8, ptr %i.b, i64 160
  br label %_PyLong_FromMedium.exit

bb.c:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %0, 1073741824
  br i1 %i.d, label %bb.d, label %.peel.begin

bb.d:                                             ; preds = %bb.c
  %i.e = trunc nuw nsw i64 %0 to i32
  %i.f = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !14   ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 11200    ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !16   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %bb.e, label %_PyFreeList_Pop.exit.i

_PyFreeList_Pop.exit.i:                           ; preds = %bb.d
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !19
  store ptr %i.j, ptr %i.h, align 8, !tbaa !16
  %i.k = getelementptr i8, ptr %i.g, i64 11208    ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !20
  %i.m = add i64 %i.l, -1
  store i64 %i.m, ptr %i.k, align 8, !tbaa !20
  br label %_PyObject_Init.exit.i

bb.e:                                             ; preds = %bb.d
  %i.n = tail call ptr @PyObject_Malloc(i64 noundef 32) #16, !inline_history !28 ; 4 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = tail call ptr @PyErr_NoMemory() #16, !inline_history !28 ; 0 uses
  br label %_PyLong_FromMedium.exit

bb.g:                                             ; preds = %bb.e
  %i.q = getelementptr i8, ptr %i.n, i64 8
  store ptr @PyLong_Type, ptr %i.q, align 8, !tbaa !21
  %i.r = load i32, ptr @PyLong_Type, align 8, !tbaa !24 ; 2 uses
  %i.s = icmp ugt i32 %i.r, -1073741825
  br i1 %i.s, label %_PyObject_Init.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = add nuw i32 %i.r, 1
  store i32 %i.t, ptr @PyLong_Type, align 8, !tbaa !24
  br label %_PyObject_Init.exit.i

_PyObject_Init.exit.i:                            ; preds = %bb.h, %bb.g, %_PyFreeList_Pop.exit.i
  %.sink.i = phi ptr [ %i.i, %_PyFreeList_Pop.exit.i ], [ %i.n, %bb.g ], [ %i.n, %bb.h ] ; 4 uses
  tail call void @_Py_NewReference(ptr noundef nonnull %.sink.i) #16, !inline_history !28
  %i.u = getelementptr i8, ptr %.sink.i, i64 16
  store i64 8, ptr %i.u, align 8, !tbaa !25
  %i.v = getelementptr i8, ptr %.sink.i, i64 24
  store i32 %i.e, ptr %i.v, align 8, !tbaa !7
  br label %_PyLong_FromMedium.exit

.peel.begin:                                      ; preds = %bb.c
  %i.w = icmp ult i64 %0, 1152921504606846976
  %spec.select = select i1 %i.w, i64 2, i64 3
  %i.x = tail call fastcc ptr @long_alloc(i64 noundef %spec.select) ; 3 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %_PyLong_FromMedium.exit, label %bb.i

bb.i:                                             ; preds = %.peel.begin
  %i.z = getelementptr i8, ptr %i.x, i64 24
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.j
  %.024 = phi ptr [ %i.z, %bb.i ], [ %i.ac, %bb.j ] ; 2 uses
  %.01923 = phi i64 [ %0, %bb.i ], [ %i.ad, %bb.j ] ; 2 uses
  %i.aa = trunc i64 %.01923 to i32
  %i.ab = and i32 %i.aa, 1073741823
  %i.ac = getelementptr i8, ptr %.024, i64 4
  store i32 %i.ab, ptr %.024, align 4, !tbaa !7
  %i.ad = lshr i64 %.01923, 30                    ; 2 uses
  %.not = icmp eq i64 %i.ad, 0
  br i1 %.not, label %_PyLong_FromMedium.exit, label %bb.j, !llvm.loop !264

_PyLong_FromMedium.exit:                          ; preds = %bb.j, %_PyObject_Init.exit.i, %bb.f, %.peel.begin, %bb.b
  %.1 = phi ptr [ %i.c, %bb.b ], [ %.sink.i, %_PyObject_Init.exit.i ], [ null, %.peel.begin ], [ null, %bb.f ], [ %i.x, %bb.j ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @PyLong_AsInt32(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @PyLong_AsNativeBytes(ptr noundef %0, ptr noundef %1, i64 noundef 4, i32 noundef 19) ; 2 uses
  %i.b = icmp slt i64 %i.a, 0
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ugt i64 %i.a, 4
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !11
  tail call void @PyErr_SetString(ptr noundef %i.d, ptr noundef nonnull @.str.31) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
end_hunk_6
begin_hunk_7_@long_from_non_binary_base:bb.a
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.f
  %.071107 = phi ptr [ %.071.ph131, %.lr.ph ], [ %i.v, %bb.f ] ; 3 uses
  %i.t = load i8, ptr %.071107, align 1, !tbaa !24 ; 2 uses
  %i.u = icmp eq i8 %i.t, 95
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr i8, ptr %.071107, i64 1    ; 2 uses
  %i.w = icmp ult ptr %i.v, %1
  br i1 %i.w, label %bb.e, label %.thread, !llvm.loop !277

bb.g:                                             ; preds = %bb.e
  %i.x = zext i8 %i.t to i64
  %i.y = getelementptr i8, ptr @_PyLong_DigitValue, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !24
  %i.aa = zext i8 %i.z to i64                     ; 2 uses
  %.172109 = getelementptr i8, ptr %.071107, i64 1 ; 3 uses
  %i.ab = icmp ne ptr %.172109, %1
  %i.ac = and i1 %i.ab, %i.s
  br i1 %i.ac, label %.lr.ph114, label %.loopexit

.lr.ph114:                                        ; preds = %bb.g, %bb.i
  %.172112 = phi ptr [ %.172, %bb.i ], [ %.172109, %bb.g ] ; 2 uses
  %.061111 = phi i64 [ %.162, %bb.i ], [ %i.aa, %bb.g ] ; 2 uses
  %.068110 = phi i32 [ %.169, %bb.i ], [ 1, %bb.g ] ; 2 uses
  %i.ad = load i8, ptr %.172112, align 1, !tbaa !24 ; 2 uses
  %i.ae = icmp eq i8 %i.ad, 95
  br i1 %i.ae, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph114
  %i.af = add nsw i32 %.068110, 1
  %i.ag = mul i64 %.061111, %i.b
  %i.ah = zext i8 %i.ad to i64
  %i.ai = getelementptr i8, ptr @_PyLong_DigitValue, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !24
  %i.ak = zext i8 %i.aj to i64
  %i.al = add i64 %i.ag, %i.ak
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph114, %bb.h
  %.169 = phi i32 [ %.068110, %.lr.ph114 ], [ %i.af, %bb.h ] ; 8 uses
  %.162 = phi i64 [ %.061111, %.lr.ph114 ], [ %i.al, %bb.h ] ; 5 uses
  %.172 = getelementptr i8, ptr %.172112, i64 1   ; 6 uses
  %i.am = icmp slt i32 %.169, %i.m
  %i.an = icmp ne ptr %.172, %1
  %i.ao = and i1 %i.am, %i.an
  br i1 %i.ao, label %.lr.ph114, label %._crit_edge115, !llvm.loop !278

._crit_edge115:                                   ; preds = %bb.i
  %.not = icmp eq i32 %.169, %i.m
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %._crit_edge115
  %i.ap = icmp sgt i32 %.169, 1
  br i1 %i.ap, label %.lr.ph121.preheader, label %.loopexit

.lr.ph121.preheader:                              ; preds = %.preheader
  %i.aq = add nuw i32 %.169, 7
  %i.ar = add nsw i32 %.169, -2
  %xtraiter = and i32 %i.aq, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph121.prol.loopexit, label %.lr.ph121.prol

.lr.ph121.prol:                                   ; preds = %.lr.ph121.preheader, %.lr.ph121.prol
  %.270120.prol = phi i32 [ %i.at, %.lr.ph121.prol ], [ %.169, %.lr.ph121.preheader ]
  %.073119.prol = phi i64 [ %i.as, %.lr.ph121.prol ], [ %i.b, %.lr.ph121.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph121.prol ], [ 0, %.lr.ph121.preheader ]
  %i.as = mul i64 %.073119.prol, %i.b             ; 3 uses
  %i.at = add nsw i32 %.270120.prol, -1           ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph121.prol.loopexit, label %.lr.ph121.prol, !llvm.loop !279

.lr.ph121.prol.loopexit:                          ; preds = %.lr.ph121.prol, %.lr.ph121.preheader
  %.270120.unr = phi i32 [ %.169, %.lr.ph121.preheader ], [ %i.at, %.lr.ph121.prol ]
  %.073119.unr = phi i64 [ %i.b, %.lr.ph121.preheader ], [ %i.as, %.lr.ph121.prol ]
  %.lcssa12.unr = phi i64 [ poison, %.lr.ph121.preheader ], [ %i.as, %.lr.ph121.prol ]
  %i.au = icmp ult i32 %i.ar, 7
  br i1 %i.au, label %.loopexit, label %.lr.ph121

.lr.ph121:                                        ; preds = %.lr.ph121.prol.loopexit, %.lr.ph121
  %.270120 = phi i32 [ %i.av, %.lr.ph121 ], [ %.270120.unr, %.lr.ph121.prol.loopexit ] ; 2 uses
  %.073119 = phi i64 [ %.reass.reass.reass.reass.reass.reass.reass, %.lr.ph121 ], [ %.073119.unr, %.lr.ph121.prol.loopexit ]
  %.reass.reass.reass.reass.reass.reass.reass = mul i64 %.073119, %factor.op.mul32 ; 2 uses
  %i.av = add nsw i32 %.270120, -8
  %i.aw = icmp sgt i32 %.270120, 9
  br i1 %i.aw, label %.lr.ph121, label %.loopexit, !llvm.loop !280

.loopexit:                                        ; preds = %.lr.ph121.prol.loopexit, %.lr.ph121, %bb.g, %.preheader, %._crit_edge115
  %.172.lcssa163 = phi ptr [ %.172, %._crit_edge115 ], [ %.172, %.preheader ], [ %.172109, %bb.g ], [ %.172, %.lr.ph121 ], [ %.172, %.lr.ph121.prol.loopexit ] ; 2 uses
  %.061.lcssa161 = phi i64 [ %.162, %._crit_edge115 ], [ %.162, %.preheader ], [ %i.aa, %bb.g ], [ %.162, %.lr.ph121 ], [ %.162, %.lr.ph121.prol.loopexit ] ; 2 uses
  %.174 = phi i64 [ %i.o, %._crit_edge115 ], [ %i.b, %.preheader ], [ %i.b, %bb.g ], [ %.lcssa12.unr, %.lr.ph121.prol.loopexit ], [ %.reass.reass.reass.reass.reass.reass.reass, %.lr.ph121 ]
  %i.ax = getelementptr i8, ptr %.087.ph130, i64 24 ; 5 uses
  %i.ay = getelementptr i8, ptr %.087.ph130, i64 16 ; 2 uses
  %.087.val102 = load i64, ptr %i.ay, align 8, !tbaa !25 ; 2 uses
  %i.az = lshr i64 %.087.val102, 3                ; 2 uses
  %i.ba = getelementptr [4 x i8], ptr %i.ax, i64 %i.az ; 2 uses
  %i.bb = icmp ult ptr %i.ax, %i.ba
  br i1 %i.bb, label %.lr.ph126, label %._crit_edge127

.lr.ph126:                                        ; preds = %.loopexit, %.lr.ph126
  %.263124 = phi i64 [ %i.bi, %.lr.ph126 ], [ %.061.lcssa161, %.loopexit ]
  %.075123 = phi ptr [ %i.bj, %.lr.ph126 ], [ %i.ax, %.loopexit ] ; 3 uses
  %i.bc = load i32, ptr %.075123, align 4, !tbaa !7
  %i.bd = zext i32 %i.bc to i64
  %i.be = mul i64 %.174, %i.bd
  %i.bf = add i64 %i.be, %.263124                 ; 2 uses
  %i.bg = trunc i64 %i.bf to i32
  %i.bh = and i32 %i.bg, 1073741823
  store i32 %i.bh, ptr %.075123, align 4, !tbaa !7
  %i.bi = lshr i64 %i.bf, 30                      ; 2 uses
  %i.bj = getelementptr i8, ptr %.075123, i64 4   ; 3 uses
  %i.bk = icmp ult ptr %i.bj, %i.ba
  br i1 %i.bk, label %.lr.ph126, label %._crit_edge127, !llvm.loop !281

._crit_edge127:                                   ; preds = %.lr.ph126, %.loopexit
  %.075.lcssa = phi ptr [ %i.ax, %.loopexit ], [ %i.bj, %.lr.ph126 ]
  %.263.lcssa = phi i64 [ %.061.lcssa161, %.loopexit ], [ %i.bi, %.lr.ph126 ] ; 3 uses
  %.not96 = icmp eq i64 %.263.lcssa, 0
  br i1 %.not96, label %.outer, label %bb.j

bb.j:                                             ; preds = %._crit_edge127
  %i.bl = icmp slt i64 %i.az, %.064.ph132
  br i1 %i.bl, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bm = trunc i64 %.263.lcssa to i32
  store i32 %i.bm, ptr %.075.lcssa, align 4, !tbaa !7
  %i.bn = and i64 %.087.val102, -8
  %i.bo = add i64 %i.bn, 8
  store i64 %i.bo, ptr %i.ay, align 8, !tbaa !25
  br label %.outer

bb.l:                                             ; preds = %bb.j
  %i.bp = add nsw i64 %.064.ph132, 1              ; 2 uses
  %i.bq = tail call fastcc ptr @long_alloc(i64 noundef %i.bp) ; 3 uses
  %.not97 = icmp eq ptr %i.bq, null
  br i1 %.not97, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.br = load i32, ptr %.087.ph130, align 8, !tbaa !24 ; 2 uses
  %.not.i98 = icmp sgt i32 %i.br, -1
  br i1 %.not.i98, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.bs = add nsw i32 %i.br, -1                   ; 2 uses
  store i32 %i.bs, ptr %.087.ph130, align 8, !tbaa !24
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  tail call void @_Py_Dealloc(ptr noundef nonnull %.087.ph130) #16
  br label %.thread

bb.p:                                             ; preds = %bb.l
  %i.bu = getelementptr i8, ptr %i.bq, i64 24     ; 2 uses
  %i.bv = shl i64 %.064.ph132, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.bu, ptr align 8 %i.ax, i64 %i.bv, i1 false)
  %i.bw = load i32, ptr %.087.ph130, align 8, !tbaa !24 ; 2 uses
  %.not.i = icmp sgt i32 %i.bw, -1
  br i1 %.not.i, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.bx = add nsw i32 %i.bw, -1                   ; 2 uses
  store i32 %i.bx, ptr %.087.ph130, align 8, !tbaa !24
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void @_Py_Dealloc(ptr noundef nonnull %.087.ph130) #16
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %i.bz = trunc i64 %.263.lcssa to i32
  %i.ca = getelementptr [4 x i8], ptr %i.bu, i64 %.064.ph132
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !7
  br label %.outer

.outer:                                           ; preds = %bb.s, %bb.k, %._crit_edge127
  %.289 = phi ptr [ %.087.ph130, %bb.k ], [ %i.bq, %bb.s ], [ %.087.ph130, %._crit_edge127 ] ; 2 uses
  %.266 = phi i64 [ %.064.ph132, %bb.k ], [ %i.bp, %bb.s ], [ %.064.ph132, %._crit_edge127 ]
  %i.cb = icmp ult ptr %.172.lcssa163, %1
  br i1 %i.cb, label %.lr.ph, label %.thread, !llvm.loop !277

.thread:                                          ; preds = %.outer, %bb.f, %bb.d, %bb.m, %bb.n, %bb.o, %bb.c, %bb.b
  %.sink = phi ptr [ null, %bb.c ], [ null, %bb.m ], [ null, %bb.b ], [ null, %bb.o ], [ null, %bb.n ], [ %.087.ph130, %bb.f ], [ %i.i, %bb.d ], [ %.289, %.outer ]
  store ptr %.sink, ptr %4, align 8, !tbaa !207
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @_PyLong_FromSTwoDigits(i64 noundef %0) unnamed_addr #9 {
bb.a:
  %i.a = add i64 %0, 5
  %or.cond = icmp ult i64 %i.a, 1030
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %1 = getelementptr [32 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 14136), i64 %0
  %i.b = getelementptr i8, ptr %1, i64 160
  br label %_PyLong_FromMedium.exit

bb.c:                                             ; preds = %bb.a
  %i.c = add i64 %0, -1073741824
  %i.d = icmp ult i64 %i.c, -2147483647
  br i1 %i.d, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = trunc nsw i64 %0 to i32
  %i.f = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !14   ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 11200    ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !16   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %bb.e, label %_PyFreeList_Pop.exit.i

_PyFreeList_Pop.exit.i:                           ; preds = %bb.d
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !19
  store ptr %i.j, ptr %i.h, align 8, !tbaa !16
  %i.k = getelementptr i8, ptr %i.g, i64 11208    ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !20
  %i.m = add i64 %i.l, -1
  store i64 %i.m, ptr %i.k, align 8, !tbaa !20
  br label %_PyObject_Init.exit.i

bb.e:                                             ; preds = %bb.d
  %i.n = tail call ptr @PyObject_Malloc(i64 noundef 32) #16, !inline_history !28 ; 4 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = tail call ptr @PyErr_NoMemory() #16, !inline_history !28 ; 0 uses
  br label %_PyLong_FromMedium.exit

bb.g:                                             ; preds = %bb.e
  %i.q = getelementptr i8, ptr %i.n, i64 8
  store ptr @PyLong_Type, ptr %i.q, align 8, !tbaa !21
  %i.r = load i32, ptr @PyLong_Type, align 8, !tbaa !24 ; 2 uses
  %i.s = icmp ugt i32 %i.r, -1073741825
  br i1 %i.s, label %_PyObject_Init.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = add nuw i32 %i.r, 1
  store i32 %i.t, ptr @PyLong_Type, align 8, !tbaa !24
  br label %_PyObject_Init.exit.i

_PyObject_Init.exit.i:                            ; preds = %bb.h, %bb.g, %_PyFreeList_Pop.exit.i
  %.sink.i = phi ptr [ %i.i, %_PyFreeList_Pop.exit.i ], [ %i.n, %bb.g ], [ %i.n, %bb.h ] ; 4 uses
  tail call void @_Py_NewReference(ptr noundef nonnull %.sink.i) #16, !inline_history !28
  %i.u = tail call i32 @llvm.abs.i32(i32 %i.e, i1 true)
  %i.v = lshr i64 %0, 30
  %i.w = and i64 %i.v, 2
  %i.x = or disjoint i64 %i.w, 8
  %i.y = getelementptr i8, ptr %.sink.i, i64 16
  store i64 %i.x, ptr %i.y, align 8, !tbaa !25
  %i.z = getelementptr i8, ptr %.sink.i, i64 24
  store i32 %i.u, ptr %i.z, align 8, !tbaa !7
  br label %_PyLong_FromMedium.exit

bb.i:                                             ; preds = %bb.c
  %.018.i = tail call i64 @llvm.abs.i64(i64 %0, i1 false) ; 2 uses
  %i.aa = icmp ult i64 %.018.i, 1152921504606846976
  %spec.select.i = select i1 %i.aa, i64 2, i64 3  ; 2 uses
  %i.ab = tail call fastcc ptr @long_alloc(i64 noundef %spec.select.i), !inline_history !282 ; 4 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %_PyLong_FromMedium.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.i
  %i.ac = lshr i64 %0, 62
  %i.ad = and i64 %i.ac, 2
  %i.ae = shl nuw nsw i64 %spec.select.i, 3
  %i.af = or disjoint i64 %i.ae, %i.ad
  %i.ag = getelementptr i8, ptr %i.ab, i64 16
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !25
  %i.ah = getelementptr i8, ptr %i.ab, i64 24
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.028.i = phi ptr [ %i.ak, %.lr.ph.i ], [ %i.ah, %.lr.ph.preheader.i ] ; 2 uses
  %.127.i = phi i64 [ %i.al, %.lr.ph.i ], [ %.018.i, %.lr.ph.preheader.i ] ; 2 uses
  %i.ai = trunc i64 %.127.i to i32
  %i.aj = and i32 %i.ai, 1073741823
  %i.ak = getelementptr i8, ptr %.028.i, i64 4
  store i32 %i.aj, ptr %.028.i, align 4, !tbaa !7
  %i.al = lshr i64 %.127.i, 30                    ; 2 uses
  %.not25.i = icmp eq i64 %i.al, 0
  br i1 %.not25.i, label %_PyLong_FromMedium.exit, label %.lr.ph.i, !llvm.loop !283

_PyLong_FromMedium.exit:                          ; preds = %.lr.ph.i, %bb.i, %_PyObject_Init.exit.i, %bb.f, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ %.sink.i, %_PyObject_Init.exit.i ], [ null, %bb.f ], [ null, %bb.i ], [ %i.ab, %.lr.ph.i ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @long_long(ptr nofree noundef captures(ret: address, provenance) %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !21
  %.not = icmp eq ptr %.val, @PyLong_Type
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !24     ; 2 uses
  %i.c = icmp ugt i32 %i.b, -1073741825
  br i1 %i.c, label %_Py_NewRef.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %i.b, 1
  store i32 %i.d, ptr %0, align 8, !tbaa !24
  br label %_Py_NewRef.exit

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 16
  %.val24.i = load i64, ptr %i.e, align 8, !tbaa !25 ; 4 uses
  %i.f = icmp ugt i64 %.val24.i, 15
  br i1 %i.f, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr i8, ptr %0, i64 24
  %.val26.i = load i32, ptr %i.g, align 8, !tbaa !7
  %i.h = and i64 %.val24.i, 3
  %i.i = sub nsw i64 1, %i.h
  %i.j = zext i32 %.val26.i to i64
  %i.k = mul nsw i64 %i.i, %i.j                   ; 2 uses
  %i.l = add nsw i64 %i.k, -1025
  %or.cond.i = icmp ult i64 %i.l, -1030
  br i1 %or.cond.i, label %.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %1 = getelementptr [32 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 14136), i64 %i.k
  %i.m = getelementptr i8, ptr %1, i64 160
  br label %_Py_NewRef.exit

.thread.i:                                        ; preds = %bb.e, %bb.d
  %i.n = lshr i64 %.val24.i, 3                    ; 2 uses
  %i.o = tail call fastcc ptr @long_alloc(i64 noundef %i.n), !inline_history !227 ; 4 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_Py_NewRef.exit, label %bb.g

bb.g:                                             ; preds = %.thread.i
  %i.q = and i64 %.val24.i, -5
  %i.r = getelementptr i8, ptr %i.o, i64 16
  store i64 %i.q, ptr %i.r, align 8, !tbaa !25
  %i.s = getelementptr i8, ptr %i.o, i64 24
  %i.t = getelementptr i8, ptr %0, i64 24
  %i.u = shl nuw nsw i64 %i.n, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.s, ptr readonly align 8 %i.t, i64 %i.u, i1 false)
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.g, %.thread.i, %bb.f, %bb.c, %bb.b
  %.0 = phi ptr [ %0, %bb.c ], [ %0, %bb.b ], [ %i.m, %bb.f ], [ %i.o, %bb.g ], [ null, %.thread.i ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @x_divrem(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val142 = load i64, ptr %i.a, align 8, !tbaa !25 ; 2 uses
  %i.b = lshr i64 %.val142, 3                     ; 8 uses
  %i.c = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.c, align 8, !tbaa !25  ; 5 uses
  %i.d = lshr i64 %.val, 3                        ; 16 uses
  %i.e = add nuw nsw i64 %i.b, 1                  ; 2 uses
  %i.f = tail call fastcc ptr @long_alloc(i64 noundef %i.e) ; 14 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %2, align 8, !tbaa !207
  br label %long_normalize.exit165

bb.c:                                             ; preds = %bb.a
  %i.h = tail call fastcc ptr @long_alloc(i64 noundef %i.d) ; 11 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.j = load i32, ptr %i.f, align 8, !tbaa !24   ; 2 uses
  %.not.i134 = icmp sgt i32 %i.j, -1
  br i1 %.not.i134, label %bb.e, label %Py_DECREF.exit135

bb.e:                                             ; preds = %bb.d
  %i.k = add nsw i32 %i.j, -1                     ; 2 uses
  store i32 %i.k, ptr %i.f, align 8, !tbaa !24
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.f, label %Py_DECREF.exit135

bb.f:                                             ; preds = %bb.e
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.f) #16
  br label %Py_DECREF.exit135

Py_DECREF.exit135:                                ; preds = %bb.d, %bb.e, %bb.f
  store ptr null, ptr %2, align 8, !tbaa !207
  br label %long_normalize.exit165

bb.g:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %1, i64 24         ; 4 uses
  %i.n = add nsw i64 %i.d, -1                     ; 8 uses
  %i.o = getelementptr [4 x i8], ptr %i.m, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !7
  %i.q = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.p, i1 false)
  %i.r = add nsw i32 %i.q, -2                     ; 4 uses
  %i.s = getelementptr i8, ptr %i.h, i64 24       ; 15 uses
  %.not.i143 = icmp eq i64 %i.d, 0                ; 3 uses
  br i1 %.not.i143, label %v_lshift.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.t = zext nneg i32 %i.r to i64                ; 3 uses
  %i.u = icmp eq i64 %i.n, 0
  br i1 %i.u, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.d, 2305843009213693950
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i.new
  %.013.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.aq, %bb.h ] ; 4 uses
  %.01112.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.ap, %bb.h ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.h ]
  %i.v = getelementptr [4 x i8], ptr %i.m, i64 %.013.i
  %i.w = load i32, ptr %i.v, align 4, !tbaa !7
  %i.x = zext i32 %i.w to i64
  %i.y = shl i64 %i.x, %i.t
  %i.z = and i64 %.01112.i, 4294967295
  %i.aa = or i64 %i.y, %i.z                       ; 2 uses
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = and i32 %i.ab, 1073741823
  %i.ad = getelementptr [4 x i8], ptr %i.s, i64 %.013.i
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !7
  %i.ae = lshr i64 %i.aa, 30
  %i.af = or disjoint i64 %.013.i, 1              ; 2 uses
  %i.ag = getelementptr [4 x i8], ptr %i.m, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !7
  %i.ai = zext i32 %i.ah to i64
  %i.aj = shl i64 %i.ai, %i.t
  %i.ak = and i64 %i.ae, 4294967295
  %i.al = or i64 %i.aj, %i.ak                     ; 2 uses
  %i.am = trunc i64 %i.al to i32
  %i.an = and i32 %i.am, 1073741823
  %i.ao = getelementptr [4 x i8], ptr %i.s, i64 %i.af
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !7
  %i.ap = lshr i64 %i.al, 30                      ; 2 uses
  %i.aq = add nuw nsw i64 %.013.i, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %v_lshift.exit.loopexit.unr-lcssa, label %bb.h, !llvm.loop !214

v_lshift.exit.loopexit.unr-lcssa:                 ; preds = %bb.h
  %i.ar = and i64 %.val, 8
  %lcmp.mod.not = icmp eq i64 %i.ar, 0
  br i1 %lcmp.mod.not, label %v_lshift.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %v_lshift.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.013.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.aq, %v_lshift.exit.loopexit.unr-lcssa ] ; 2 uses
  %.01112.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.ap, %v_lshift.exit.loopexit.unr-lcssa ]
  %lcmp.mod221 = trunc i64 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod221)
  %i.as = getelementptr [4 x i8], ptr %i.m, i64 %.013.i.epil.init
  %i.at = load i32, ptr %i.as, align 4, !tbaa !7
  %i.au = zext i32 %i.at to i64
  %i.av = shl i64 %i.au, %i.t
  %i.aw = or i64 %i.av, %.01112.i.epil.init
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = and i32 %i.ax, 1073741823
  %i.az = getelementptr [4 x i8], ptr %i.s, i64 %.013.i.epil.init
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !7
  br label %v_lshift.exit

v_lshift.exit:                                    ; preds = %.epil.preheader, %v_lshift.exit.loopexit.unr-lcssa, %bb.g
  %i.ba = getelementptr i8, ptr %i.f, i64 24      ; 11 uses
  %i.bb = getelementptr i8, ptr %0, i64 24        ; 3 uses
  %.not.i144 = icmp eq i64 %i.b, 0
  br i1 %.not.i144, label %v_lshift.exit151.thread, label %.lr.ph.i145

.lr.ph.i145:                                      ; preds = %v_lshift.exit
  %i.bc = zext nneg i32 %i.r to i64               ; 3 uses
  %i.bd = icmp eq i64 %i.b, 1
  br i1 %i.bd, label %.epil.preheader222, label %.lr.ph.i145.new

.lr.ph.i145.new:                                  ; preds = %.lr.ph.i145
  %unroll_iter227 = and i64 %i.b, 2305843009213693950
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i145.new
  %.013.i146 = phi i64 [ 0, %.lr.ph.i145.new ], [ %i.bz, %bb.i ] ; 4 uses
  %.01112.i147 = phi i64 [ 0, %.lr.ph.i145.new ], [ %i.by, %bb.i ]
  %niter228 = phi i64 [ 0, %.lr.ph.i145.new ], [ %niter228.next.1, %bb.i ]
  %i.be = getelementptr [4 x i8], ptr %i.bb, i64 %.013.i146
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !7
  %i.bg = zext i32 %i.bf to i64
  %i.bh = shl i64 %i.bg, %i.bc
  %i.bi = and i64 %.01112.i147, 4294967295
  %i.bj = or i64 %i.bh, %i.bi                     ; 2 uses
  %i.bk = trunc i64 %i.bj to i32
  %i.bl = and i32 %i.bk, 1073741823
  %i.bm = getelementptr [4 x i8], ptr %i.ba, i64 %.013.i146
  store i32 %i.bl, ptr %i.bm, align 4, !tbaa !7
  %i.bn = lshr i64 %i.bj, 30
  %i.bo = or disjoint i64 %.013.i146, 1           ; 2 uses
  %i.bp = getelementptr [4 x i8], ptr %i.bb, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !7
  %i.br = zext i32 %i.bq to i64
  %i.bs = shl i64 %i.br, %i.bc
  %i.bt = and i64 %i.bn, 4294967295
  %i.bu = or i64 %i.bs, %i.bt                     ; 2 uses
  %i.bv = trunc i64 %i.bu to i32
  %i.bw = and i32 %i.bv, 1073741823
  %i.bx = getelementptr [4 x i8], ptr %i.ba, i64 %i.bo
  store i32 %i.bw, ptr %i.bx, align 4, !tbaa !7
  %i.by = lshr i64 %i.bu, 30                      ; 3 uses
  %i.bz = add nuw nsw i64 %.013.i146, 2           ; 2 uses
  %niter228.next.1 = add i64 %niter228, 2         ; 2 uses
  %niter228.ncmp.1 = icmp eq i64 %niter228.next.1, %unroll_iter227
  br i1 %niter228.ncmp.1, label %v_lshift.exit151.unr-lcssa, label %bb.i, !llvm.loop !214

v_lshift.exit151.unr-lcssa:                       ; preds = %bb.i
  %i.ca = and i64 %.val142, 8
  %lcmp.mod224.not = icmp eq i64 %i.ca, 0
  br i1 %lcmp.mod224.not, label %v_lshift.exit151, label %.epil.preheader222

.epil.preheader222:                               ; preds = %v_lshift.exit151.unr-lcssa, %.lr.ph.i145
  %.013.i146.epil.init = phi i64 [ 0, %.lr.ph.i145 ], [ %i.bz, %v_lshift.exit151.unr-lcssa ] ; 2 uses
  %.01112.i147.epil.init = phi i64 [ 0, %.lr.ph.i145 ], [ %i.by, %v_lshift.exit151.unr-lcssa ]
  %lcmp.mod226 = trunc i64 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod226)
  %i.cb = getelementptr [4 x i8], ptr %i.bb, i64 %.013.i146.epil.init
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !7
  %i.cd = zext i32 %i.cc to i64
  %i.ce = shl i64 %i.cd, %i.bc
  %i.cf = and i64 %.01112.i147.epil.init, 4294967295
end_hunk_7
begin_hunk_8_@long_divmod:bb.a
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @long_pow(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 10 uses
  %i.b = alloca ptr, align 8                      ; 16 uses
  %i.c = alloca ptr, align 8                      ; 87 uses
  %i.d = alloca [16 x ptr], align 16              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  store ptr null, ptr %i.c, align 8, !tbaa !207
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  %i.e = getelementptr i8, ptr %0, i64 8
  %.val351 = load ptr, ptr %i.e, align 8, !tbaa !21
  %i.f = getelementptr i8, ptr %.val351, i64 168
  %.val354 = load i64, ptr %i.f, align 8, !tbaa !35
  %i.g = and i64 %.val354, 16777216
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %Py_DECREF.exit332, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %1, i64 8
  %.val350 = load ptr, ptr %i.h, align 8, !tbaa !21
  %i.i = getelementptr i8, ptr %.val350, i64 168
  %.val353 = load i64, ptr %i.i, align 8, !tbaa !35
  %i.j = and i64 %.val353, 16777216
  %.not277 = icmp eq i64 %i.j, 0
  br i1 %.not277, label %Py_DECREF.exit332, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load i32, ptr %0, align 8, !tbaa !24     ; 2 uses
  %i.l = icmp ugt i32 %i.k, -1073741825
  br i1 %i.l, label %_Py_NewRef.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = add nuw i32 %i.k, 1
  store i32 %i.m, ptr %0, align 8, !tbaa !24
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.c, %bb.d
  %i.n = load i32, ptr %1, align 8, !tbaa !24     ; 2 uses
  %i.o = icmp ugt i32 %i.n, -1073741825
  br i1 %i.o, label %_Py_NewRef.exit363, label %bb.e

bb.e:                                             ; preds = %_Py_NewRef.exit
  %i.p = add nuw i32 %i.n, 1
  store i32 %i.p, ptr %1, align 8, !tbaa !24
  br label %_Py_NewRef.exit363

_Py_NewRef.exit363:                               ; preds = %_Py_NewRef.exit, %bb.e
  store ptr %1, ptr %i.a, align 8, !tbaa !207
  %i.q = getelementptr i8, ptr %2, i64 8
  %.val349 = load ptr, ptr %i.q, align 8, !tbaa !21
  %i.r = getelementptr i8, ptr %.val349, i64 168
  %.val352 = load i64, ptr %i.r, align 8, !tbaa !35
  %i.s = and i64 %.val352, 16777216
  %.not278 = icmp eq i64 %i.s, 0
  br i1 %.not278, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_Py_NewRef.exit363
  %i.t = load i32, ptr %2, align 8, !tbaa !24     ; 3 uses
  %i.u = icmp ugt i32 %i.t, -1073741825
  br i1 %i.u, label %_Py_NewRef.exit364.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = add nuw i32 %i.t, 1                      ; 2 uses
  store i32 %i.v, ptr %2, align 8, !tbaa !24
  br label %_Py_NewRef.exit364.thread

bb.h:                                             ; preds = %_Py_NewRef.exit363
  %i.w = icmp eq ptr %2, @_Py_NoneStruct
  br i1 %i.w, label %_Py_NewRef.exit364, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = load i32, ptr %0, align 8, !tbaa !24     ; 2 uses
  %.not.i333 = icmp sgt i32 %i.x, -1
  br i1 %.not.i333, label %bb.j, label %Py_DECREF.exit334

bb.j:                                             ; preds = %bb.i
  %i.y = add nsw i32 %i.x, -1                     ; 2 uses
  store i32 %i.y, ptr %0, align 8, !tbaa !24
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.k, label %Py_DECREF.exit334

bb.k:                                             ; preds = %bb.j
  tail call void @_Py_Dealloc(ptr noundef nonnull %0) #16
  br label %Py_DECREF.exit334

Py_DECREF.exit334:                                ; preds = %bb.i, %bb.j, %bb.k
  %i.aa = load i32, ptr %1, align 8, !tbaa !24    ; 2 uses
  %.not.i331 = icmp sgt i32 %i.aa, -1
  br i1 %.not.i331, label %bb.l, label %Py_DECREF.exit332

bb.l:                                             ; preds = %Py_DECREF.exit334
  %i.ab = add nsw i32 %i.aa, -1                   ; 2 uses
  store i32 %i.ab, ptr %1, align 8, !tbaa !24
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.m, label %Py_DECREF.exit332

bb.m:                                             ; preds = %bb.l
  tail call void @_Py_Dealloc(ptr noundef nonnull %1) #16
  br label %Py_DECREF.exit332

_Py_NewRef.exit364.thread:                        ; preds = %bb.f, %bb.g
  %i.ad = phi i32 [ %i.t, %bb.f ], [ %i.v, %bb.g ]
  store ptr %2, ptr %i.b, align 8, !tbaa !207
  %i.ae = getelementptr i8, ptr %1, i64 16
  %i.af = getelementptr i8, ptr %2, i64 16
  %.val359 = load i64, ptr %i.af, align 8, !tbaa !25 ; 5 uses
  %i.ag = and i64 %.val359, 3
  switch i64 %i.ag, label %bb.y [
    i64 1, label %bb.s
    i64 2, label %bb.t
  ]

_Py_NewRef.exit364:                               ; preds = %bb.h
  store ptr null, ptr %i.b, align 8, !tbaa !207
  %i.ah = getelementptr i8, ptr %1, i64 16
  %.val358 = load i64, ptr %i.ah, align 8, !tbaa !25
  %i.ai = and i64 %.val358, 3
  %i.aj = icmp eq i64 %i.ai, 2
  br i1 %i.aj, label %bb.n, label %bb.ap

bb.n:                                             ; preds = %_Py_NewRef.exit364
  %i.ak = load i32, ptr %0, align 8, !tbaa !24    ; 2 uses
  %.not.i329 = icmp sgt i32 %i.ak, -1
  br i1 %.not.i329, label %bb.o, label %Py_DECREF.exit330

bb.o:                                             ; preds = %bb.n
  %i.al = add nsw i32 %i.ak, -1                   ; 2 uses
  store i32 %i.al, ptr %0, align 8, !tbaa !24
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.p, label %Py_DECREF.exit330

bb.p:                                             ; preds = %bb.o
  tail call void @_Py_Dealloc(ptr noundef nonnull %0) #16
  br label %Py_DECREF.exit330

Py_DECREF.exit330:                                ; preds = %bb.n, %bb.o, %bb.p
  %i.an = load i32, ptr %1, align 8, !tbaa !24    ; 2 uses
  %.not.i327 = icmp sgt i32 %i.an, -1
  br i1 %.not.i327, label %bb.q, label %Py_DECREF.exit328

bb.q:                                             ; preds = %Py_DECREF.exit330
  %i.ao = add nsw i32 %i.an, -1                   ; 2 uses
  store i32 %i.ao, ptr %1, align 8, !tbaa !24
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.r, label %Py_DECREF.exit328

bb.r:                                             ; preds = %bb.q
  tail call void @_Py_Dealloc(ptr noundef nonnull %1) #16
  br label %Py_DECREF.exit328

Py_DECREF.exit328:                                ; preds = %Py_DECREF.exit330, %bb.q, %bb.r
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @PyFloat_Type, i64 96), align 8, !tbaa !291
  %i.ar = getelementptr i8, ptr %i.aq, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !292
  %i.at = tail call ptr %i.as(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull @_Py_NoneStruct) #16
  br label %Py_DECREF.exit332

bb.s:                                             ; preds = %_Py_NewRef.exit364.thread
  %i.au = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !11
  tail call void @PyErr_SetString(ptr noundef %i.au, ptr noundef nonnull @.str.52) #16
  br label %._crit_edge582

bb.t:                                             ; preds = %_Py_NewRef.exit364.thread
  %i.av = icmp ugt i64 %.val359, 15
  br i1 %i.av, label %.thread.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aw = getelementptr i8, ptr %2, i64 24
  %.val26.i = load i32, ptr %i.aw, align 8, !tbaa !7 ; 2 uses
  %or.cond.i = icmp ugt i32 %.val26.i, 5
  br i1 %or.cond.i, label %.thread.i, label %_PyLong_Copy.exit

.thread.i:                                        ; preds = %bb.u, %bb.t
  %i.ax = lshr i64 %.val359, 3                    ; 2 uses
  %i.ay = tail call fastcc ptr @long_alloc(i64 noundef %i.ax), !inline_history !227 ; 4 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %_PyLong_Copy.exit.thread, label %_PyLong_Copy.exit.thread423

_PyLong_Copy.exit.thread:                         ; preds = %.thread.i
  store ptr null, ptr %i.c, align 8, !tbaa !207
  br label %._crit_edge582

_PyLong_Copy.exit.thread423:                      ; preds = %.thread.i
  %i.ba = and i64 %.val359, -5
  %i.bb = getelementptr i8, ptr %i.ay, i64 16
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !25
  %i.bc = getelementptr i8, ptr %i.ay, i64 24
  %i.bd = getelementptr i8, ptr %2, i64 24
  %i.be = shl nuw nsw i64 %i.ax, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.bc, ptr readonly align 8 %i.bd, i64 %i.be, i1 false)
  %.pre = load i32, ptr %2, align 8, !tbaa !24
  br label %bb.v

_PyLong_Copy.exit:                                ; preds = %bb.u
  %i.bf = zext nneg i32 %.val26.i to i64
  %i.bg = sub nsw i64 0, %i.bf
  %3 = getelementptr [32 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 14136), i64 %i.bg
  %i.bh = getelementptr i8, ptr %3, i64 160       ; 3 uses
  store ptr %i.bh, ptr %i.c, align 8, !tbaa !207
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %._crit_edge582, label %bb.v

bb.v:                                             ; preds = %_PyLong_Copy.exit.thread423, %_PyLong_Copy.exit
  %i.bj = phi i32 [ %.pre, %_PyLong_Copy.exit.thread423 ], [ %i.ad, %_PyLong_Copy.exit ] ; 2 uses
  %.2.i425 = phi ptr [ %i.ay, %_PyLong_Copy.exit.thread423 ], [ %i.bh, %_PyLong_Copy.exit ]
  store ptr %.2.i425, ptr %i.b, align 8, !tbaa !207
  %.not.i325 = icmp sgt i32 %i.bj, -1
  br i1 %.not.i325, label %bb.w, label %Py_DECREF.exit326

bb.w:                                             ; preds = %bb.v
  %i.bk = add nsw i32 %i.bj, -1                   ; 2 uses
  store i32 %i.bk, ptr %2, align 8, !tbaa !24
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.x, label %Py_DECREF.exit326

bb.x:                                             ; preds = %bb.w
  tail call void @_Py_Dealloc(ptr noundef nonnull %2) #16
  br label %Py_DECREF.exit326

Py_DECREF.exit326:                                ; preds = %bb.v, %bb.w, %bb.x
  store ptr null, ptr %i.c, align 8, !tbaa !207
  call fastcc void @_PyLong_Negate(ptr noundef %i.b)
  %i.bm = load ptr, ptr %i.b, align 8, !tbaa !207 ; 3 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %._crit_edge582, label %Py_DECREF.exit326._crit_edge

Py_DECREF.exit326._crit_edge:                     ; preds = %Py_DECREF.exit326
  %.phi.trans.insert = getelementptr i8, ptr %i.bm, i64 16
  %.val360.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !25
  br label %bb.y

bb.y:                                             ; preds = %Py_DECREF.exit326._crit_edge, %_Py_NewRef.exit364.thread
  %.val360 = phi i64 [ %.val360.pre, %Py_DECREF.exit326._crit_edge ], [ %.val359, %_Py_NewRef.exit364.thread ]
  %i.bo = phi ptr [ %i.bm, %Py_DECREF.exit326._crit_edge ], [ %2, %_Py_NewRef.exit364.thread ] ; 6 uses
  %.0111 = phi i32 [ 1, %Py_DECREF.exit326._crit_edge ], [ 0, %_Py_NewRef.exit364.thread ] ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 16
  %i.bq = and i64 %.val360, -5
  %i.br = icmp ugt i64 %i.bq, 8
  br i1 %i.br, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bs = getelementptr i8, ptr %i.bo, i64 24
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !7
  %i.bu = icmp eq i32 %i.bt, 1
  br i1 %i.bu, label %._crit_edge582, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.val356 = load i64, ptr %i.ae, align 8, !tbaa !25
  %i.bv = and i64 %.val356, 3
  %i.bw = icmp eq i64 %i.bv, 2
  br i1 %i.bw, label %bb.ab, label %bb.aj

bb.ab:                                            ; preds = %bb.aa
  %i.bx = tail call ptr @_PyLong_Copy(ptr noundef nonnull %1) ; 3 uses
  store ptr %i.bx, ptr %i.c, align 8, !tbaa !207
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %._crit_edge582, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store ptr %i.bx, ptr %i.a, align 8, !tbaa !207
  %i.bz = load i32, ptr %1, align 8, !tbaa !24    ; 2 uses
  %.not.i323 = icmp sgt i32 %i.bz, -1
  br i1 %.not.i323, label %bb.ad, label %Py_DECREF.exit324

bb.ad:                                            ; preds = %bb.ac
  %i.ca = add nsw i32 %i.bz, -1                   ; 2 uses
  store i32 %i.ca, ptr %1, align 8, !tbaa !24
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %bb.ae, label %Py_DECREF.exit324

bb.ae:                                            ; preds = %bb.ad
  tail call void @_Py_Dealloc(ptr noundef nonnull %1) #16
  br label %Py_DECREF.exit324

Py_DECREF.exit324:                                ; preds = %bb.ac, %bb.ad, %bb.ae
  store ptr null, ptr %i.c, align 8, !tbaa !207
  call fastcc void @_PyLong_Negate(ptr noundef %i.a)
  %i.cc = load ptr, ptr %i.a, align 8, !tbaa !207 ; 2 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %._crit_edge582, label %bb.af

bb.af:                                            ; preds = %Py_DECREF.exit324
  %i.ce = tail call fastcc ptr @long_invmod(ptr noundef nonnull %0, ptr noundef nonnull %i.bo) ; 3 uses
  store ptr %i.ce, ptr %i.c, align 8, !tbaa !207
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %._crit_edge582, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cg = load i32, ptr %0, align 8, !tbaa !24    ; 2 uses
  %.not.i321 = icmp sgt i32 %i.cg, -1
  br i1 %.not.i321, label %bb.ah, label %Py_DECREF.exit322

bb.ah:                                            ; preds = %bb.ag
  %i.ch = add nsw i32 %i.cg, -1                   ; 2 uses
  store i32 %i.ch, ptr %0, align 8, !tbaa !24
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %bb.ai, label %Py_DECREF.exit322

bb.ai:                                            ; preds = %bb.ah
  tail call void @_Py_Dealloc(ptr noundef nonnull %0) #16
  br label %Py_DECREF.exit322

Py_DECREF.exit322:                                ; preds = %bb.ag, %bb.ah, %bb.ai
  store ptr null, ptr %i.c, align 8, !tbaa !207
  br label %bb.aj

bb.aj:                                            ; preds = %Py_DECREF.exit322, %bb.aa
  %i.cj = phi ptr [ %i.cc, %Py_DECREF.exit322 ], [ %1, %bb.aa ] ; 2 uses
  %.0227 = phi ptr [ %i.ce, %Py_DECREF.exit322 ], [ %0, %bb.aa ] ; 7 uses
  %i.ck = getelementptr i8, ptr %.0227, i64 16
  %.0227.val355 = load i64, ptr %i.ck, align 8, !tbaa !25 ; 2 uses
  %i.cl = and i64 %.0227.val355, 3
  %i.cm = icmp eq i64 %i.cl, 2
  br i1 %i.cm, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cn = lshr i64 %.0227.val355, 3
  %.val = load i64, ptr %i.bp, align 8, !tbaa !25
  %i.co = lshr i64 %.val, 3
  %i.cp = icmp samesign ugt i64 %i.cn, %i.co
  br i1 %i.cp, label %bb.al, label %bb.ap

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.cq = call fastcc i32 @l_mod(ptr noundef nonnull %.0227, ptr noundef nonnull %i.bo, ptr noundef %i.c)
  %i.cr = icmp slt i32 %i.cq, 0
  br i1 %i.cr, label %._crit_edge582, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cs = load ptr, ptr %i.c, align 8, !tbaa !207
  %i.ct = load i32, ptr %.0227, align 8, !tbaa !24 ; 2 uses
  %.not.i319 = icmp sgt i32 %i.ct, -1
  br i1 %.not.i319, label %bb.an, label %Py_DECREF.exit320

bb.an:                                            ; preds = %bb.am
  %i.cu = add nsw i32 %i.ct, -1                   ; 2 uses
  store i32 %i.cu, ptr %.0227, align 8, !tbaa !24
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %bb.ao, label %Py_DECREF.exit320

bb.ao:                                            ; preds = %bb.an
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0227) #16
  br label %Py_DECREF.exit320

Py_DECREF.exit320:                                ; preds = %bb.am, %bb.an, %bb.ao
  store ptr null, ptr %i.c, align 8, !tbaa !207
  br label %bb.ap

bb.ap:                                            ; preds = %_Py_NewRef.exit364, %Py_DECREF.exit320, %bb.ak
  %i.cw = phi ptr [ %i.bo, %Py_DECREF.exit320 ], [ %i.bo, %bb.ak ], [ null, %_Py_NewRef.exit364 ] ; 5 uses
  %i.cx = phi ptr [ %i.cj, %Py_DECREF.exit320 ], [ %i.cj, %bb.ak ], [ %1, %_Py_NewRef.exit364 ] ; 2 uses
  %.1228 = phi ptr [ %i.cs, %Py_DECREF.exit320 ], [ %.0227, %bb.ak ], [ %0, %_Py_NewRef.exit364 ] ; 14 uses
  %.1 = phi i32 [ %.0111, %Py_DECREF.exit320 ], [ %.0111, %bb.ak ], [ 0, %_Py_NewRef.exit364 ]
  %i.cy = getelementptr i8, ptr %i.cx, i64 16
  %.val362 = load i64, ptr %i.cy, align 8, !tbaa !25 ; 2 uses
  %i.cz = and i64 %.val362, 3
  %i.da = sub nsw i64 1, %i.cz
  %i.db = lshr i64 %.val362, 3
  %i.dc = mul nsw i64 %i.da, %i.db                ; 5 uses
  %.not281 = icmp eq i64 %i.dc, 0
  br i1 %.not281, label %.thread428, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dd = getelementptr i8, ptr %i.cx, i64 20
  %i.de = getelementptr [4 x i8], ptr %i.dd, i64 %i.dc
  %i.df = load i32, ptr %i.de, align 4, !tbaa !7  ; 6 uses
  %i.dg = icmp slt i64 %i.dc, 2
  %i.dh = icmp ult i32 %i.df, 4
  %or.cond6 = select i1 %i.dg, i1 %i.dh, i1 false
  br i1 %or.cond6, label %bb.ar, label %bb.bi

bb.ar:                                            ; preds = %bb.aq
  %i.di = icmp samesign ugt i32 %i.df, 1
  br i1 %i.di, label %bb.as, label %bb.bc

bb.as:                                            ; preds = %bb.ar
  %i.dj = tail call fastcc ptr @long_mul(ptr noundef %.1228, ptr noundef %.1228) ; 6 uses
  store ptr %i.dj, ptr %i.c, align 8, !tbaa !207
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %.thread470, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dl = load i32, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 14328), align 8, !tbaa !24 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.dl, -1
  br i1 %.not.i.i, label %bb.au, label %Py_XDECREF.exit

bb.au:                                            ; preds = %bb.at
  %i.dm = add nsw i32 %i.dl, -1                   ; 2 uses
  store i32 %i.dm, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 14328), align 8, !tbaa !24
  %i.dn = icmp eq i32 %i.dm, 0
  br i1 %i.dn, label %bb.av, label %Py_XDECREF.exit

bb.av:                                            ; preds = %bb.au
  tail call void @_Py_Dealloc(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 14328)) #16
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.at, %bb.au, %bb.av
  store ptr null, ptr %i.c, align 8, !tbaa !207
  %.not301 = icmp eq ptr %i.cw, null              ; 2 uses
end_hunk_8
begin_hunk_9_@long_true_divide:bb.a
  %.01112.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.dw, %bb.p ]
  %niter288 = phi i64 [ 0, %.lr.ph.i.new ], [ %niter288.next.1, %bb.p ]
  %i.de = getelementptr [4 x i8], ptr %i.bx, i64 %.013.i
  %i.df = load i32, ptr %i.de, align 4, !tbaa !7
  %i.dg = zext i32 %i.df to i64
  %i.dh = shl nuw nsw i64 %i.dg, %i.cu
  %i.di = or i64 %i.dh, %.01112.i                 ; 2 uses
  %i.dj = trunc i64 %i.di to i32
  %i.dk = and i32 %i.dj, 1073741823
  %i.dl = getelementptr [4 x i8], ptr %i.dc, i64 %.013.i
  store i32 %i.dk, ptr %i.dl, align 4, !tbaa !7
  %i.dm = lshr i64 %i.di, 30
  %i.dn = or disjoint i64 %.013.i, 1              ; 2 uses
  %i.do = getelementptr [4 x i8], ptr %i.bx, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !7
  %i.dq = zext i32 %i.dp to i64
  %i.dr = shl nuw nsw i64 %i.dq, %i.cu
  %i.ds = or i64 %i.dr, %i.dm                     ; 2 uses
  %i.dt = trunc i64 %i.ds to i32
  %i.du = and i32 %i.dt, 1073741823
  %i.dv = getelementptr [4 x i8], ptr %i.dc, i64 %i.dn
  store i32 %i.du, ptr %i.dv, align 4, !tbaa !7
  %i.dw = lshr i64 %i.ds, 30                      ; 3 uses
  %i.dx = add nuw nsw i64 %.013.i, 2              ; 2 uses
  %niter288.next.1 = add i64 %niter288, 2         ; 2 uses
  %niter288.ncmp.1 = icmp eq i64 %niter288.next.1, %unroll_iter287
  br i1 %niter288.ncmp.1, label %.thread209.unr-lcssa, label %bb.p, !llvm.loop !214

.thread209.unr-lcssa:                             ; preds = %bb.p
  %i.dy = and i64 %.val194, 8
  %lcmp.mod284.not = icmp eq i64 %i.dy, 0
  br i1 %lcmp.mod284.not, label %.thread209, label %.epil.preheader

.epil.preheader:                                  ; preds = %.thread209.unr-lcssa, %.lr.ph.i.a
  %.013.i.epil.init = phi i64 [ 0, %.lr.ph.i.a ], [ %i.dx, %.thread209.unr-lcssa ] ; 2 uses
  %.01112.i.epil.init = phi i64 [ 0, %.lr.ph.i.a ], [ %i.dw, %.thread209.unr-lcssa ]
  %lcmp.mod286 = trunc i64 %i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod286)
  %i.dz = getelementptr [4 x i8], ptr %i.bx, i64 %.013.i.epil.init
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !7
  %i.eb = zext i32 %i.ea to i64
  %i.ec = shl nuw nsw i64 %i.eb, %i.cu
  %i.ed = or i64 %i.ec, %.01112.i.epil.init       ; 2 uses
  %i.ee = trunc i64 %i.ed to i32
  %i.ef = and i32 %i.ee, 1073741823
  %i.eg = getelementptr [4 x i8], ptr %i.dc, i64 %.013.i.epil.init
  store i32 %i.ef, ptr %i.eg, align 4, !tbaa !7
  %i.eh = lshr i64 %i.ed, 30
  br label %.thread209

.thread209:                                       ; preds = %.thread209.unr-lcssa, %.epil.preheader
  %.lcssa277 = phi i64 [ %i.dw, %.thread209.unr-lcssa ], [ %i.eh, %.epil.preheader ]
  %i.ei = trunc nuw nsw i64 %.lcssa277 to i32
  %i.ej = getelementptr [4 x i8], ptr %i.db, i64 %i.cv
  store i32 %i.ei, ptr %i.ej, align 4, !tbaa !7
  br label %.thread215

bb.q:                                             ; preds = %bb.n
  %i.ek = udiv i64 %i.cq, 30                      ; 4 uses
  %i.el = urem i64 %i.cq, 30                      ; 4 uses
  %i.em = sub nsw i64 %i.i, %i.ek                 ; 7 uses
  %i.en = tail call fastcc ptr @long_alloc(i64 noundef %i.em) ; 5 uses
  %i.eo = icmp eq ptr %i.en, null
  br i1 %i.eo, label %bb.an, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ep = getelementptr i8, ptr %i.en, i64 24     ; 3 uses
  %i.eq = getelementptr [4 x i8], ptr %i.bx, i64 %i.ek ; 3 uses
  %i.er = trunc nuw nsw i64 %i.el to i32
  %notmask.i = shl nsw i32 -1, %i.er
  %i.es = xor i32 %notmask.i, -1                  ; 3 uses
  %i.et = icmp sgt i64 %i.em, 0
  br i1 %i.et, label %.lr.ph.i203.preheader, label %bb.s

.lr.ph.i203.preheader:                            ; preds = %bb.r
  %.neg292 = add nuw nsw i64 %i.ek, 1
  %xtraiter279 = and i64 %i.em, 1
  %i.eu = icmp eq i64 %i.i, %.neg292
  br i1 %i.eu, label %.lr.ph.i203.epil.preheader, label %.lr.ph.i203.preheader.new

.lr.ph.i203.preheader.new:                        ; preds = %.lr.ph.i203.preheader
  %unroll_iter = and i64 %i.em, 9223372036854775806
  br label %.lr.ph.i203

.lr.ph.i203:                                      ; preds = %.lr.ph.i203, %.lr.ph.i203.preheader.new
  %.014.i = phi i64 [ %i.em, %.lr.ph.i203.preheader.new ], [ %i.fh, %.lr.ph.i203 ] ; 2 uses
  %.01213.i = phi i32 [ 0, %.lr.ph.i203.preheader.new ], [ %.fr.1, %.lr.ph.i203 ]
  %niter = phi i64 [ 0, %.lr.ph.i203.preheader.new ], [ %niter.next.1, %.lr.ph.i203 ]
  %i.ev = add nsw i64 %.014.i, -1                 ; 2 uses
  %i.ew = zext nneg i32 %.01213.i to i64
  %i.ex = shl nuw nsw i64 %i.ew, 30
  %i.ey = getelementptr [4 x i8], ptr %i.eq, i64 %i.ev
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !7
  %i.fa = zext i32 %i.ez to i64
  %i.fb = or i64 %i.ex, %i.fa                     ; 2 uses
  %i.fc = trunc i64 %i.fb to i32
  %i.fd = and i32 %i.fc, %i.es
  %.fr = freeze i32 %i.fd
  %i.fe = lshr i64 %i.fb, %i.el
  %i.ff = trunc i64 %i.fe to i32
  %i.fg = getelementptr [4 x i8], ptr %i.ep, i64 %i.ev
  store i32 %i.ff, ptr %i.fg, align 4, !tbaa !7
  %i.fh = add nsw i64 %.014.i, -2                 ; 4 uses
  %i.fi = zext nneg i32 %.fr to i64
  %i.fj = shl nuw nsw i64 %i.fi, 30
  %i.fk = getelementptr [4 x i8], ptr %i.eq, i64 %i.fh
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !7
  %i.fm = zext i32 %i.fl to i64
  %i.fn = or i64 %i.fj, %i.fm                     ; 2 uses
  %i.fo = trunc i64 %i.fn to i32
  %i.fp = and i32 %i.fo, %i.es
  %.fr.1 = freeze i32 %i.fp                       ; 3 uses
  %i.fq = lshr i64 %i.fn, %i.el
  %i.fr = trunc i64 %i.fq to i32
  %i.fs = getelementptr [4 x i8], ptr %i.ep, i64 %i.fh
  store i32 %i.fr, ptr %i.fs, align 4, !tbaa !7
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %v_rshift.exit.unr-lcssa, label %.lr.ph.i203, !llvm.loop !215

v_rshift.exit.unr-lcssa:                          ; preds = %.lr.ph.i203
  %lcmp.mod280.not = icmp eq i64 %xtraiter279, 0
  br i1 %lcmp.mod280.not, label %v_rshift.exit, label %.lr.ph.i203.epil.preheader

.lr.ph.i203.epil.preheader:                       ; preds = %v_rshift.exit.unr-lcssa, %.lr.ph.i203.preheader
  %.014.i.epil.init = phi i64 [ %i.em, %.lr.ph.i203.preheader ], [ %i.fh, %v_rshift.exit.unr-lcssa ]
  %.01213.i.epil.init = phi i32 [ 0, %.lr.ph.i203.preheader ], [ %.fr.1, %v_rshift.exit.unr-lcssa ]
  %lcmp.mod282 = trunc i64 %i.em to i1
  tail call void @llvm.assume(i1 %lcmp.mod282)
  %i.ft = add nsw i64 %.014.i.epil.init, -1       ; 2 uses
  %i.fu = zext nneg i32 %.01213.i.epil.init to i64
  %i.fv = shl nuw nsw i64 %i.fu, 30
  %i.fw = getelementptr [4 x i8], ptr %i.eq, i64 %i.ft
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !7
  %i.fy = zext i32 %i.fx to i64
  %i.fz = or i64 %i.fv, %i.fy                     ; 2 uses
  %i.ga = trunc i64 %i.fz to i32
  %i.gb = and i32 %i.ga, %i.es
  %.fr.epil = freeze i32 %i.gb
  %i.gc = lshr i64 %i.fz, %i.el
  %i.gd = trunc i64 %i.gc to i32
  %i.ge = getelementptr [4 x i8], ptr %i.ep, i64 %i.ft
  store i32 %i.gd, ptr %i.ge, align 4, !tbaa !7
  br label %v_rshift.exit

v_rshift.exit:                                    ; preds = %v_rshift.exit.unr-lcssa, %.lr.ph.i203.epil.preheader
  %.fr.lcssa = phi i32 [ %.fr.1, %v_rshift.exit.unr-lcssa ], [ %.fr.epil, %.lr.ph.i203.epil.preheader ]
  %.not171 = icmp eq i32 %.fr.lcssa, 0
  br i1 %.not171, label %bb.s, label %.thread215

bb.s:                                             ; preds = %v_rshift.exit, %bb.r
  %i.gf = icmp ugt i64 %i.cq, 29
  br i1 %i.gf, label %.lr.ph238, label %.thread215

.lr.ph238:                                        ; preds = %bb.s, %.lr.ph238
  %.0124236 = phi i64 [ %i.gg, %.lr.ph238 ], [ %i.ek, %bb.s ] ; 2 uses
  %i.gg = add nsw i64 %.0124236, -1               ; 2 uses
  %i.gh = getelementptr [4 x i8], ptr %i.bx, i64 %i.gg
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !7
  %.not173 = icmp ne i32 %i.gi, 0                 ; 2 uses
  %i.gj = icmp ult i64 %.0124236, 2
  %.not273 = or i1 %i.gj, %.not173
  br i1 %.not273, label %.thread215.loopexit, label %.lr.ph238, !llvm.loop !308

.thread215.loopexit:                              ; preds = %.lr.ph238
  %spec.select180 = zext i1 %.not173 to i32
  br label %.thread215

.thread215:                                       ; preds = %.thread215.loopexit, %v_rshift.exit, %bb.s, %.thread209
  %.1156 = phi ptr [ %i.cx, %.thread209 ], [ %i.en, %bb.s ], [ %i.en, %v_rshift.exit ], [ %i.en, %.thread215.loopexit ] ; 11 uses
  %.4 = phi i32 [ 0, %.thread209 ], [ 0, %bb.s ], [ 1, %v_rshift.exit ], [ %spec.select180, %.thread215.loopexit ] ; 2 uses
  %i.gk = tail call fastcc ptr @long_normalize(ptr noundef nonnull %.1156) ; 0 uses
  %i.gl = getelementptr i8, ptr %.1156, i64 16
  %.1156.val = load i64, ptr %i.gl, align 8, !tbaa !25 ; 2 uses
  %i.gm = and i64 %.1156.val, 3
  %i.gn = sub nsw i64 1, %i.gm
  %i.go = lshr i64 %.1156.val, 3
  %i.gp = mul nsw i64 %i.gn, %i.go                ; 2 uses
  %i.gq = icmp eq i64 %i.k, 1
  br i1 %i.gq, label %bb.t, label %bb.w

bb.t:                                             ; preds = %.thread215
  %i.gr = getelementptr i8, ptr %.1156, i64 24
  %i.gs = icmp sgt i64 %i.gp, 0
  br i1 %i.gs, label %.lr.ph.i205, label %inplace_divrem1.exit.thread

inplace_divrem1.exit.thread:                      ; preds = %bb.t
  %i.gt = tail call fastcc ptr @long_normalize(ptr noundef nonnull %.1156) ; 0 uses
  br label %bb.v

.lr.ph.i205:                                      ; preds = %bb.t
  %i.gu = load i32, ptr %i.cf, align 8, !tbaa !7
  %i.gv = zext i32 %i.gu to i64                   ; 2 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.lr.ph.i205
  %.014.i206 = phi i64 [ %i.gp, %.lr.ph.i205 ], [ %i.gw, %bb.u ] ; 2 uses
  %.01113.i = phi i64 [ 0, %.lr.ph.i205 ], [ %.fr224, %bb.u ]
  %i.gw = add nsw i64 %.014.i206, -1              ; 2 uses
  %i.gx = shl nuw nsw i64 %.01113.i, 30
  %i.gy = getelementptr [4 x i8], ptr %i.gr, i64 %i.gw ; 2 uses
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !7
  %i.ha = zext i32 %i.gz to i64
  %i.hb = or i64 %i.gx, %i.ha                     ; 2 uses
  %i.hc = udiv i64 %i.hb, %i.gv
  %i.hd = trunc i64 %i.hc to i32
  %i.he = urem i64 %i.hb, %i.gv
  %.fr224 = freeze i64 %i.he                      ; 2 uses
  store i32 %i.hd, ptr %i.gy, align 4, !tbaa !7
  %i.hf = icmp samesign ugt i64 %.014.i206, 1
  br i1 %i.hf, label %bb.u, label %inplace_divrem1.exit, !llvm.loop !242

inplace_divrem1.exit:                             ; preds = %bb.u
  %i.hg = tail call fastcc ptr @long_normalize(ptr noundef nonnull %.1156) ; 0 uses
  %.not174 = icmp eq i64 %.fr224, 0
  br i1 %.not174, label %bb.v, label %bb.ac

bb.v:                                             ; preds = %inplace_divrem1.exit.thread, %inplace_divrem1.exit
  br label %bb.ac

bb.w:                                             ; preds = %.thread215
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.hh = call fastcc ptr @x_divrem(ptr noundef nonnull %.1156, ptr noundef nonnull %1, ptr noundef %i.a) ; 2 uses
  %i.hi = load i32, ptr %.1156, align 8, !tbaa !24 ; 2 uses
  %.not.i190 = icmp sgt i32 %i.hi, -1
  br i1 %.not.i190, label %bb.x, label %Py_DECREF.exit191

bb.x:                                             ; preds = %bb.w
  %i.hj = add nsw i32 %i.hi, -1                   ; 2 uses
  store i32 %i.hj, ptr %.1156, align 8, !tbaa !24
  %i.hk = icmp eq i32 %i.hj, 0
  br i1 %i.hk, label %bb.y, label %Py_DECREF.exit191

bb.y:                                             ; preds = %bb.x
  tail call void @_Py_Dealloc(ptr noundef nonnull %.1156) #16
  br label %Py_DECREF.exit191

Py_DECREF.exit191:                                ; preds = %bb.w, %bb.x, %bb.y
  %i.hl = icmp eq ptr %i.hh, null
  br i1 %i.hl, label %Py_DECREF.exit189, label %bb.z

bb.z:                                             ; preds = %Py_DECREF.exit191
  %i.hm = load ptr, ptr %i.a, align 8, !tbaa !207 ; 4 uses
  %i.hn = getelementptr i8, ptr %i.hm, i64 16
  %.val201 = load i64, ptr %i.hn, align 8, !tbaa !25
  %i.ho = and i64 %.val201, 3
  %i.hp = icmp eq i64 %i.ho, 1
  %spec.select184 = select i1 %i.hp, i32 %.4, i32 1
  %i.hq = load i32, ptr %i.hm, align 8, !tbaa !24 ; 2 uses
  %.not.i188 = icmp sgt i32 %i.hq, -1
  br i1 %.not.i188, label %bb.aa, label %Py_DECREF.exit189.thread

bb.aa:                                            ; preds = %bb.z
  %i.hr = add nsw i32 %i.hq, -1                   ; 2 uses
  store i32 %i.hr, ptr %i.hm, align 8, !tbaa !24
  %i.hs = icmp eq i32 %i.hr, 0
  br i1 %i.hs, label %bb.ab, label %Py_DECREF.exit189.thread

bb.ab:                                            ; preds = %bb.aa
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.hm) #16
  br label %Py_DECREF.exit189.thread

Py_DECREF.exit189.thread:                         ; preds = %bb.z, %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.ac

Py_DECREF.exit189:                                ; preds = %Py_DECREF.exit191
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.an

bb.ac:                                            ; preds = %Py_DECREF.exit189.thread, %bb.v, %inplace_divrem1.exit
  %.2157 = phi ptr [ %i.hh, %Py_DECREF.exit189.thread ], [ %.1156, %inplace_divrem1.exit ], [ %.1156, %bb.v ] ; 5 uses
  %.8 = phi i32 [ %spec.select184, %Py_DECREF.exit189.thread ], [ 1, %inplace_divrem1.exit ], [ %.4, %bb.v ]
  %i.ht = getelementptr i8, ptr %.2157, i64 16
  %.2157.val = load i64, ptr %i.ht, align 8, !tbaa !25 ; 2 uses
  %i.hu = lshr i64 %.2157.val, 3                  ; 3 uses
  %i.hv = add nsw i64 %i.hu, -1                   ; 5 uses
  %i.hw = mul i64 %i.hv, 30
  %i.hx = getelementptr i8, ptr %.2157, i64 24    ; 8 uses
  %i.hy = getelementptr [4 x i8], ptr %i.hx, i64 %i.hv ; 2 uses
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !7
  %i.ia = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.hz, i1 false)
  %i.ib = sub nuw nsw i32 32, %i.ia
  %i.ic = zext nneg i32 %i.ib to i64
  %i.id = add i64 %i.hw, %i.ic                    ; 3 uses
  %i.ie = sub nsw i64 -966, %i.cp
  %i.if = tail call i64 @llvm.smax.i64(i64 %i.id, i64 %i.ie)
  %i.ig = trunc i64 %i.if to i32
  %i.ih = add i32 %i.ig, -54                      ; 3 uses
  %i.ii = shl nuw i32 1, %i.ih                    ; 2 uses
  %i.ij = load i32, ptr %i.hx, align 8, !tbaa !7
  %i.ik = or i32 %i.ij, %.8                       ; 4 uses
  %i.il = and i32 %i.ii, %i.ik
  %.not175 = icmp eq i32 %i.il, 0
  br i1 %.not175, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.im = shl i32 3, %i.ih
  %i.in = add i32 %i.im, -1
  %i.io = and i32 %i.in, %i.ik
  %.not176 = icmp eq i32 %i.io, 0
  %i.ip = select i1 %.not176, i32 0, i32 %i.ii
  %spec.select187 = add i32 %i.ip, %i.ik
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.0125 = phi i32 [ %i.ik, %bb.ac ], [ %spec.select187, %bb.ad ]
  %.neg = shl i32 -2, %i.ih
  %i.iq = and i32 %.0125, %.neg
  store i32 %i.iq, ptr %i.hx, align 8, !tbaa !7
  %i.ir = load i32, ptr %i.hy, align 4, !tbaa !7
  %i.is = uitofp i32 %i.ir to double              ; 3 uses
  %i.it = icmp ugt i64 %.2157.val, 15
  br i1 %i.it, label %.lr.ph246.preheader, label %._crit_edge247

.lr.ph246.preheader:                              ; preds = %bb.ae
  %smin = tail call i64 @llvm.smin.i64(i64 %i.hv, i64 1) ; 2 uses
  %i.iu = sub i64 %i.hu, %smin
  %xtraiter289 = and i64 %i.iu, 3                 ; 2 uses
  %lcmp.mod290.not = icmp eq i64 %xtraiter289, 0
  br i1 %lcmp.mod290.not, label %.lr.ph246.prol.loopexit, label %.lr.ph246.prol

.lr.ph246.prol:                                   ; preds = %.lr.ph246.preheader, %.lr.ph246.prol
  %.0123244.prol = phi i64 [ %i.iv, %.lr.ph246.prol ], [ %i.hv, %.lr.ph246.preheader ]
  %.0134243.prol = phi double [ %i.iz, %.lr.ph246.prol ], [ %i.is, %.lr.ph246.preheader ]
  %prol.iter291 = phi i64 [ %prol.iter291.next, %.lr.ph246.prol ], [ 0, %.lr.ph246.preheader ]
  %i.iv = add nsw i64 %.0123244.prol, -1          ; 3 uses
  %i.iw = getelementptr [4 x i8], ptr %i.hx, i64 %i.iv
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !7
  %i.iy = uitofp i32 %i.ix to double
  %i.iz = tail call double @llvm.fmuladd.f64(double %.0134243.prol, double f0x41D0000000000000, double %i.iy) ; 3 uses
  %prol.iter291.next = add i64 %prol.iter291, 1   ; 2 uses
  %prol.iter291.cmp.not = icmp eq i64 %prol.iter291.next, %xtraiter289
  br i1 %prol.iter291.cmp.not, label %.lr.ph246.prol.loopexit, label %.lr.ph246.prol, !llvm.loop !309

.lr.ph246.prol.loopexit:                          ; preds = %.lr.ph246.prol, %.lr.ph246.preheader
  %.0123244.unr = phi i64 [ %i.hv, %.lr.ph246.preheader ], [ %i.iv, %.lr.ph246.prol ]
  %.0134243.unr = phi double [ %i.is, %.lr.ph246.preheader ], [ %i.iz, %.lr.ph246.prol ]
  %.lcssa.unr = phi double [ poison, %.lr.ph246.preheader ], [ %i.iz, %.lr.ph246.prol ]
  %i.ja = sub i64 %smin, %i.hu
  %i.jb = icmp ugt i64 %i.ja, -4
  br i1 %i.jb, label %._crit_edge247, label %.lr.ph246

.lr.ph246:                                        ; preds = %.lr.ph246.prol.loopexit, %.lr.ph246
  %.0123244 = phi i64 [ %i.jr, %.lr.ph246 ], [ %.0123244.unr, %.lr.ph246.prol.loopexit ] ; 5 uses
  %.0134243 = phi double [ %i.jv, %.lr.ph246 ], [ %.0134243.unr, %.lr.ph246.prol.loopexit ]
  %i.jc = getelementptr [4 x i8], ptr %i.hx, i64 %.0123244
  %i.jd = getelementptr i8, ptr %i.jc, i64 -4
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !7
  %i.jf = uitofp i32 %i.je to double
  %i.jg = tail call double @llvm.fmuladd.f64(double %.0134243, double f0x41D0000000000000, double %i.jf)
  %i.jh = getelementptr [4 x i8], ptr %i.hx, i64 %.0123244
  %i.ji = getelementptr i8, ptr %i.jh, i64 -8
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !7
  %i.jk = uitofp i32 %i.jj to double
  %i.jl = tail call double @llvm.fmuladd.f64(double %i.jg, double f0x41D0000000000000, double %i.jk)
  %i.jm = getelementptr [4 x i8], ptr %i.hx, i64 %.0123244
  %i.jn = getelementptr i8, ptr %i.jm, i64 -12
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !7
  %i.jp = uitofp i32 %i.jo to double
  %i.jq = tail call double @llvm.fmuladd.f64(double %i.jl, double f0x41D0000000000000, double %i.jp)
  %i.jr = add nsw i64 %.0123244, -4               ; 2 uses
  %i.js = getelementptr [4 x i8], ptr %i.hx, i64 %i.jr
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !7
  %i.ju = uitofp i32 %i.jt to double
  %i.jv = tail call double @llvm.fmuladd.f64(double %i.jq, double f0x41D0000000000000, double %i.ju) ; 2 uses
  %i.jw = icmp sgt i64 %.0123244, 4
  br i1 %i.jw, label %.lr.ph246, label %._crit_edge247, !llvm.loop !310

._crit_edge247:                                   ; preds = %.lr.ph246.prol.loopexit, %.lr.ph246, %bb.ae
  %.0134.lcssa = phi double [ %i.is, %bb.ae ], [ %.lcssa.unr, %.lr.ph246.prol.loopexit ], [ %i.jv, %.lr.ph246 ] ; 2 uses
  %i.jx = load i32, ptr %.2157, align 8, !tbaa !24 ; 2 uses
  %.not.i = icmp sgt i32 %i.jx, -1
  br i1 %.not.i, label %bb.af, label %Py_DECREF.exit

bb.af:                                            ; preds = %._crit_edge247
  %i.jy = add nsw i32 %i.jx, -1                   ; 2 uses
  store i32 %i.jy, ptr %.2157, align 8, !tbaa !24
  %i.jz = icmp eq i32 %i.jy, 0
  br i1 %i.jz, label %bb.ag, label %Py_DECREF.exit

bb.ag:                                            ; preds = %bb.af
  tail call void @_Py_Dealloc(ptr noundef nonnull %.2157) #16
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %._crit_edge247, %bb.af, %bb.ag
  %i.ka = add i64 %i.id, %i.cq                    ; 2 uses
  %i.kb = icmp sgt i64 %i.ka, 1023
  br i1 %i.kb, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %Py_DECREF.exit
  %.not177 = icmp eq i64 %i.ka, 1024
  br i1 %.not177, label %bb.ai, label %bb.am

bb.ai:                                            ; preds = %bb.ah
  %i.kc = trunc i64 %i.id to i32
  %i.kd = tail call double @ldexp(double noundef 1.000000e+00, i32 noundef %i.kc) #16, !tbaa !7
  %i.ke = fcmp oeq double %.0134.lcssa, %i.kd
  br i1 %i.ke, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %Py_DECREF.exit
  %i.kf = trunc nsw i64 %i.cq to i32
  %i.kg = tail call double @ldexp(double noundef %.0134.lcssa, i32 noundef %i.kf) #16, !tbaa !7
  br label %bb.ak
end_hunk_9
begin_hunk_10_@long_bitwise:bb.a

bb.z:                                             ; preds = %.loopexit151.thread
  %i.jv = getelementptr i8, ptr %i.by, i64 24
  %i.jw = getelementptr [4 x i8], ptr %i.jv, i64 %.3193
  %i.jx = getelementptr i8, ptr %.1112, i64 24
  %i.jy = getelementptr [4 x i8], ptr %i.jx, i64 %.3193
  %i.jz = sub nuw nsw i64 %.0106, %.3193
  %i.ka = shl nsw i64 %i.jz, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.jw, ptr align 4 %i.jy, i64 %i.ka, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %scalar.ph206.prol.loopexit, %scalar.ph206, %middle.block216, %.preheader, %.loopexit151.thread, %bb.z
  %.not = icmp eq i32 %.0109, 0
  br i1 %.not, label %v_complement.exit141, label %bb.aa

bb.aa:                                            ; preds = %.loopexit
  %i.kb = getelementptr i8, ptr %i.by, i64 16     ; 2 uses
  %i.kc = load i64, ptr %i.kb, align 8, !tbaa !25 ; 2 uses
  %i.kd = and i64 %i.kc, 3
  %i.ke = sub nsw i64 2, %i.kd
  %i.kf = and i64 %i.kc, -8
  %i.kg = and i64 %i.ke, 4294967295
  %i.kh = or i64 %i.kg, %i.kf
  store i64 %i.kh, ptr %i.kb, align 8, !tbaa !25
  %i.ki = getelementptr i8, ptr %i.by, i64 24     ; 4 uses
  %i.kj = getelementptr [4 x i8], ptr %i.ki, i64 %.0106
  store i32 1073741823, ptr %i.kj, align 4, !tbaa !7
  %i.kk = add nsw i64 %.0106, 1                   ; 2 uses
  %i.kl = icmp eq i64 %.0106, 0
  br i1 %i.kl, label %.lr.ph.i137.epil.preheader, label %.new

.new:                                             ; preds = %bb.aa
  %unroll_iter279 = and i64 %i.kk, -2
  br label %.lr.ph.i137

.lr.ph.i137:                                      ; preds = %.lr.ph.i137, %.new
  %.011.i138 = phi i32 [ 1, %.new ], [ %i.ky, %.lr.ph.i137 ]
  %.0910.i139 = phi i64 [ 0, %.new ], [ %i.kz, %.lr.ph.i137 ] ; 3 uses
  %niter280 = phi i64 [ 0, %.new ], [ %niter280.next.1, %.lr.ph.i137 ]
  %i.km = getelementptr [4 x i8], ptr %i.ki, i64 %.0910.i139 ; 2 uses
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !7
  %i.ko = xor i32 %i.kn, 1073741823
  %i.kp = add i32 %i.ko, %.011.i138               ; 2 uses
  %i.kq = and i32 %i.kp, 1073741823
  store i32 %i.kq, ptr %i.km, align 4, !tbaa !7
  %i.kr = lshr i32 %i.kp, 30
  %i.ks = getelementptr [4 x i8], ptr %i.ki, i64 %.0910.i139
  %i.kt = getelementptr i8, ptr %i.ks, i64 4      ; 2 uses
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !7
  %i.kv = xor i32 %i.ku, 1073741823
  %i.kw = add i32 %i.kv, %i.kr                    ; 2 uses
  %i.kx = and i32 %i.kw, 1073741823
  store i32 %i.kx, ptr %i.kt, align 4, !tbaa !7
  %i.ky = lshr i32 %i.kw, 30                      ; 2 uses
  %i.kz = add nuw nsw i64 %.0910.i139, 2          ; 2 uses
  %niter280.next.1 = add i64 %niter280, 2         ; 2 uses
  %niter280.ncmp.1 = icmp eq i64 %niter280.next.1, %unroll_iter279
  br i1 %niter280.ncmp.1, label %v_complement.exit141.loopexit.unr-lcssa, label %.lr.ph.i137, !llvm.loop !323

v_complement.exit141.loopexit.unr-lcssa:          ; preds = %.lr.ph.i137
  %i.la = and i64 %.0106, 1
  %lcmp.mod277.not.not = icmp eq i64 %i.la, 0
  br i1 %lcmp.mod277.not.not, label %.lr.ph.i137.epil.preheader, label %v_complement.exit141

.lr.ph.i137.epil.preheader:                       ; preds = %v_complement.exit141.loopexit.unr-lcssa, %bb.aa
  %.011.i138.epil.init = phi i32 [ 1, %bb.aa ], [ %i.ky, %v_complement.exit141.loopexit.unr-lcssa ]
  %.0910.i139.epil.init = phi i64 [ 0, %bb.aa ], [ %i.kz, %v_complement.exit141.loopexit.unr-lcssa ]
  %lcmp.mod278 = trunc i64 %i.kk to i1
  tail call void @llvm.assume(i1 %lcmp.mod278)
  %i.lb = getelementptr [4 x i8], ptr %i.ki, i64 %.0910.i139.epil.init ; 2 uses
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !7
  %i.ld = xor i32 %i.lc, -1
  %i.le = add i32 %.011.i138.epil.init, %i.ld
  %i.lf = and i32 %i.le, 1073741823
  store i32 %i.lf, ptr %i.lb, align 4, !tbaa !7
  br label %v_complement.exit141

v_complement.exit141:                             ; preds = %.lr.ph.i137.epil.preheader, %v_complement.exit141.loopexit.unr-lcssa, %.loopexit
  %.not.i142 = icmp eq ptr %.0104, null
  br i1 %.not.i142, label %Py_XDECREF.exit144, label %bb.ab

bb.ab:                                            ; preds = %v_complement.exit141
  %i.lg = load i32, ptr %.0104, align 8, !tbaa !24 ; 2 uses
  %.not.i.i143 = icmp sgt i32 %i.lg, -1
  br i1 %.not.i.i143, label %bb.ac, label %Py_XDECREF.exit144

bb.ac:                                            ; preds = %bb.ab
  %i.lh = add nsw i32 %i.lg, -1                   ; 2 uses
  store i32 %i.lh, ptr %.0104, align 8, !tbaa !24
  %i.li = icmp eq i32 %i.lh, 0
  br i1 %i.li, label %bb.ad, label %Py_XDECREF.exit144

bb.ad:                                            ; preds = %bb.ac
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0104) #16
  br label %Py_XDECREF.exit144

Py_XDECREF.exit144:                               ; preds = %v_complement.exit141, %bb.ab, %bb.ac, %bb.ad
  %.not.i145 = icmp eq ptr %.0, null
  br i1 %.not.i145, label %Py_XDECREF.exit147, label %bb.ae

bb.ae:                                            ; preds = %Py_XDECREF.exit144
  %i.lj = load i32, ptr %.0, align 8, !tbaa !24   ; 2 uses
  %.not.i.i146 = icmp sgt i32 %i.lj, -1
  br i1 %.not.i.i146, label %bb.af, label %Py_XDECREF.exit147

bb.af:                                            ; preds = %bb.ae
  %i.lk = add nsw i32 %i.lj, -1                   ; 2 uses
  store i32 %i.lk, ptr %.0, align 8, !tbaa !24
  %i.ll = icmp eq i32 %i.lk, 0
  br i1 %i.ll, label %bb.ag, label %Py_XDECREF.exit147

bb.ag:                                            ; preds = %bb.af
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0) #16
  br label %Py_XDECREF.exit147

Py_XDECREF.exit147:                               ; preds = %Py_XDECREF.exit144, %bb.ae, %bb.af, %bb.ag
  %i.lm = getelementptr i8, ptr %i.by, i64 16     ; 2 uses
  %.val.i = load i64, ptr %i.lm, align 8, !tbaa !25 ; 2 uses
  %i.ln = lshr i64 %.val.i, 3                     ; 3 uses
  %.not1315.i = icmp eq i64 %i.ln, 0
  br i1 %.not1315.i, label %long_normalize.exit, label %.lr.ph.i148

.lr.ph.i148:                                      ; preds = %Py_XDECREF.exit147
  %i.lo = getelementptr i8, ptr %i.by, i64 20
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ai, %.lr.ph.i148
  %.016.i = phi i64 [ %i.ln, %.lr.ph.i148 ], [ %i.ls, %bb.ai ] ; 4 uses
  %i.lp = getelementptr [4 x i8], ptr %i.lo, i64 %.016.i
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !7
  %i.lr = icmp eq i32 %i.lq, 0
  br i1 %i.lr, label %bb.ai, label %.critedge.i

bb.ai:                                            ; preds = %bb.ah
  %i.ls = add nsw i64 %.016.i, -1                 ; 2 uses
  %.not13.i = icmp eq i64 %i.ls, 0
  br i1 %.not13.i, label %.critedge.thread.thread.sink.split.i, label %bb.ah, !llvm.loop !50

.critedge.i:                                      ; preds = %bb.ah
  %.not.i149 = icmp eq i64 %.016.i, %i.ln
  br i1 %.not.i149, label %long_normalize.exit, label %bb.aj

bb.aj:                                            ; preds = %.critedge.i
  %i.lt = shl nuw i64 %.016.i, 3
  %i.lu = and i64 %.val.i, 3
  %i.lv = or disjoint i64 %i.lt, %i.lu
  br label %.critedge.thread.thread.sink.split.i

.critedge.thread.thread.sink.split.i:             ; preds = %bb.ai, %bb.aj
  %.sink.i = phi i64 [ %i.lv, %bb.aj ], [ 1, %bb.ai ]
  store i64 %.sink.i, ptr %i.lm, align 8, !tbaa !25
  br label %long_normalize.exit

long_normalize.exit:                              ; preds = %Py_XDECREF.exit147, %.critedge.i, %.critedge.thread.thread.sink.split.i
  %i.lw = tail call fastcc ptr @maybe_small_long(ptr noundef nonnull %i.by)
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.w, %bb.v, %bb.u, %Py_XDECREF.exit132, %bb.j, %bb.i, %bb.h, %bb.g, %bb.d, %long_normalize.exit
  %.0110 = phi ptr [ %i.lw, %long_normalize.exit ], [ null, %bb.d ], [ null, %bb.j ], [ null, %bb.g ], [ null, %bb.h ], [ null, %bb.i ], [ null, %Py_XDECREF.exit132 ], [ null, %bb.u ], [ null, %bb.v ], [ null, %bb.w ]
  ret ptr %.0110
}

declare ptr @PyFloat_FromDouble(double noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal ptr @long_long_meth(ptr nofree noundef captures(ret: address, provenance) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !21
  %.not.i = icmp eq ptr %.val.i, @PyLong_Type
  br i1 %.not.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !24     ; 2 uses
  %i.c = icmp ugt i32 %i.b, -1073741825
  br i1 %i.c, label %long_long.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %i.b, 1
  store i32 %i.d, ptr %0, align 8, !tbaa !24
  br label %long_long.exit

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 16
  %.val24.i.i = load i64, ptr %i.e, align 8, !tbaa !25 ; 4 uses
  %i.f = icmp ugt i64 %.val24.i.i, 15
  br i1 %i.f, label %.thread.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr i8, ptr %0, i64 24
  %.val26.i.i = load i32, ptr %i.g, align 8, !tbaa !7
  %i.h = and i64 %.val24.i.i, 3
  %i.i = sub nsw i64 1, %i.h
  %i.j = zext i32 %.val26.i.i to i64
  %i.k = mul nsw i64 %i.i, %i.j                   ; 2 uses
  %i.l = add nsw i64 %i.k, -1025
  %or.cond.i.i = icmp ult i64 %i.l, -1030
  br i1 %or.cond.i.i, label %.thread.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %2 = getelementptr [32 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 14136), i64 %i.k
  %i.m = getelementptr i8, ptr %2, i64 160
  br label %long_long.exit

.thread.i.i:                                      ; preds = %bb.e, %bb.d
  %i.n = lshr i64 %.val24.i.i, 3                  ; 2 uses
  %i.o = tail call fastcc ptr @long_alloc(i64 noundef %i.n), !inline_history !234 ; 4 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %long_long.exit, label %bb.g

bb.g:                                             ; preds = %.thread.i.i
  %i.q = and i64 %.val24.i.i, -5
  %i.r = getelementptr i8, ptr %i.o, i64 16
  store i64 %i.q, ptr %i.r, align 8, !tbaa !25
  %i.s = getelementptr i8, ptr %i.o, i64 24
  %i.t = getelementptr i8, ptr %0, i64 24
  %i.u = shl nuw nsw i64 %i.n, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.s, ptr readonly align 8 %i.t, i64 %i.u, i1 false)
  br label %long_long.exit

long_long.exit:                                   ; preds = %bb.b, %bb.c, %bb.f, %.thread.i.i, %bb.g
  %.0.i = phi ptr [ %0, %bb.c ], [ %0, %bb.b ], [ %i.m, %bb.f ], [ %i.o, %bb.g ], [ null, %.thread.i.i ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal ptr @int_bit_length(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val.i.i = load i64, ptr %i.a, align 8, !tbaa !25
  %i.b = lshr i64 %.val.i.i, 3                    ; 2 uses
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %int_bit_length_impl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 24
  %i.d = add nsw i64 %i.b, -1                     ; 2 uses
  %i.e = getelementptr [4 x i8], ptr %i.c, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4, !tbaa !7
  %i.g = mul i64 %i.d, 30
  %i.h = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.f, i1 false)
  %i.i = sub nuw nsw i32 32, %i.h
  %i.j = zext nneg i32 %i.i to i64
  %i.k = add i64 %i.g, %i.j
  br label %int_bit_length_impl.exit

int_bit_length_impl.exit:                         ; preds = %bb.a, %bb.b
  %.0.i.i = phi i64 [ %i.k, %bb.b ], [ 0, %bb.a ]
  %i.l = tail call ptr @PyLong_FromInt64(i64 noundef %.0.i.i), !inline_history !336
  ret ptr %i.l
}

; Function Attrs: nounwind uwtable
define internal ptr @int_bit_count(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val.i = load i64, ptr %i.a, align 8, !tbaa !25 ; 2 uses
  %i.b = lshr i64 %.val.i, 3                      ; 4 uses
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %int_bit_count_impl.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %min.iters.check = icmp ult i64 %.val.i, 32
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.b, 2305843009213693948      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.j, %vector.body ]
  %vec.phi1 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.k, %vector.body ]
  %i.d = getelementptr [4 x i8], ptr %i.c, i64 %index ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 8
  %wide.load = load <2 x i32>, ptr %i.d, align 4, !tbaa !7
  %wide.load2 = load <2 x i32>, ptr %i.e, align 4, !tbaa !7
  %i.f = tail call range(i32 0, 33) <2 x i32> @llvm.ctpop.v2i32(<2 x i32> %wide.load)
  %i.g = tail call range(i32 0, 33) <2 x i32> @llvm.ctpop.v2i32(<2 x i32> %wide.load2)
  %i.h = zext nneg <2 x i32> %i.f to <2 x i64>
  %i.i = zext nneg <2 x i32> %i.g to <2 x i64>
  %i.j = add <2 x i64> %vec.phi, %i.h             ; 2 uses
  %i.k = add <2 x i64> %vec.phi1, %i.i            ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !337

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.k, %i.j
  %i.m = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br i1 %cmp.n, label %int_bit_count_impl.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.010.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  %.089.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %i.m, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.010.i = phi i64 [ %i.s, %scalar.ph ], [ %.010.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.089.i = phi i64 [ %i.r, %scalar.ph ], [ %.089.i.ph, %scalar.ph.preheader ]
  %i.n = getelementptr [4 x i8], ptr %i.c, i64 %.010.i
  %i.o = load i32, ptr %i.n, align 4, !tbaa !7
  %i.p = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.o)
  %i.q = zext nneg i32 %i.p to i64
  %i.r = add i64 %.089.i, %i.q                    ; 2 uses
  %i.s = add nuw nsw i64 %.010.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.s, %i.b
  br i1 %exitcond.not.i, label %int_bit_count_impl.exit, label %scalar.ph, !llvm.loop !338

int_bit_count_impl.exit:                          ; preds = %scalar.ph, %middle.block, %bb.a
  %.08.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.m, %middle.block ], [ %i.r, %scalar.ph ]
  %i.t = tail call ptr @PyLong_FromInt64(i64 noundef %.08.lcssa.i), !inline_history !339
  ret ptr %i.t
}

; Function Attrs: nounwind uwtable
define internal ptr @int_to_bytes(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [3 x ptr], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.b = getelementptr i8, ptr %3, i64 16
  %.val = load i64, ptr %i.b, align 8, !tbaa !249
  %i.c = add i64 %.val, %2
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %2, 3
  %i.e = icmp ne ptr %1, null
  %or.cond5 = and i1 %i.e, %i.d
  br i1 %or.cond5, label %.thread77, label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %i.f = phi i64 [ %i.c, %.thread ], [ %2, %bb.b ]
  %i.g = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @int_to_bytes._parser, i32 noundef 0, i32 noundef 2, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #16 ; 2 uses
  %.not60 = icmp eq ptr %i.g, null
  br i1 %.not60, label %int_to_bytes_impl.exit, label %.thread77

.thread77:                                        ; preds = %bb.b, %bb.c
  %i.h = phi ptr [ %i.g, %bb.c ], [ %1, %bb.b ]   ; 4 uses
  %i.i = phi i64 [ %i.f, %bb.c ], [ %2, %bb.b ]   ; 3 uses
  %.not61 = icmp eq i64 %i.i, 0
  br i1 %.not61, label %.thread101, label %bb.d

bb.d:                                             ; preds = %.thread77
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !11   ; 2 uses
  %.not62 = icmp eq ptr %i.j, null
  br i1 %.not62, label %bb.q, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = call ptr @_PyNumber_Index(ptr noundef nonnull %i.j) #16 ; 8 uses
  %.not63 = icmp eq ptr %i.k, null
  br i1 %.not63, label %Py_DECREF.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr i8, ptr %i.k, i64 8
  %.val21.i = load ptr, ptr %i.l, align 8, !tbaa !21
  %i.m = getelementptr i8, ptr %.val21.i, i64 168
  %.val26.i = load i64, ptr %i.m, align 8, !tbaa !35
  %i.n = and i64 %.val26.i, 16777216
  %.not.i72 = icmp eq i64 %i.n, 0
  br i1 %.not.i72, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !11
  call void @PyErr_SetString(ptr noundef %i.o, ptr noundef nonnull @.str.5) #16
  br label %PyLong_AsSsize_t.exit

bb.h:                                             ; preds = %bb.f
  %i.p = getelementptr i8, ptr %i.k, i64 16
  %.val22.i = load i64, ptr %i.p, align 8, !tbaa !25 ; 5 uses
  %i.q = icmp ugt i64 %.val22.i, 15
  br i1 %i.q, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr i8, ptr %i.k, i64 24
  %.val24.i = load i32, ptr %i.r, align 8, !tbaa !7
  %i.s = and i64 %.val22.i, 3
  %i.t = sub nsw i64 1, %i.s
  %i.u = zext i32 %.val24.i to i64
  %i.v = mul nsw i64 %i.t, %i.u
  br label %PyLong_AsSsize_t.exit

bb.j:                                             ; preds = %bb.h
  %i.w = lshr i64 %.val22.i, 3                    ; 2 uses
  %i.x = trunc i64 %.val22.i to i32
  %i.y = and i32 %i.x, 3                          ; 2 uses
  %i.z = sub nsw i32 1, %i.y
  %i.aa = getelementptr i8, ptr %i.k, i64 24      ; 2 uses
  %i.ab = getelementptr [4 x i8], ptr %i.aa, i64 %i.w ; 2 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 -4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !7
  %i.ae = zext i32 %i.ad to i64
  %i.af = shl nuw nsw i64 %i.ae, 30
  %i.ag = getelementptr i8, ptr %i.ab, i64 -8
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !7
  %i.ai = zext i32 %i.ah to i64
end_hunk_10
begin_hunk_11_@int_from_bytes:bb.a
  %.not41 = icmp eq i64 %i.j, 1
  br i1 %.not41, label %.thread59, label %bb.d

bb.d:                                             ; preds = %.thread49
  %i.l = getelementptr i8, ptr %i.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !11   ; 5 uses
  %.not42 = icmp eq ptr %i.m, null
  br i1 %.not42, label %.thread55, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr i8, ptr %i.m, i64 8
  %.val45 = load ptr, ptr %i.n, align 8, !tbaa !21
  %i.o = getelementptr i8, ptr %.val45, i64 168
  %.val46 = load i64, ptr %i.o, align 8, !tbaa !35
  %i.p = and i64 %.val46, 268435456
  %.not43 = icmp eq i64 %i.p, 0
  br i1 %.not43, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @_PyArg_BadArgument(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.81, ptr noundef nonnull %i.m) #16
  br label %int_from_bytes_impl.exit

bb.g:                                             ; preds = %bb.e
  %i.q = icmp eq i64 %i.j, 2
  br i1 %i.q, label %.thread63, label %.thread55.thread

.thread55:                                        ; preds = %bb.d
  %i.r = getelementptr i8, ptr %i.i, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !11
  %i.t = call i32 @PyObject_IsTrue(ptr noundef %i.s) #16 ; 2 uses
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %int_from_bytes_impl.exit, label %.thread59

.thread55.thread:                                 ; preds = %bb.g
  %i.v = getelementptr i8, ptr %i.i, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !11
  %i.x = call i32 @PyObject_IsTrue(ptr noundef %i.w) #16 ; 2 uses
  %i.y = icmp slt i32 %i.x, 0
  br i1 %i.y, label %int_from_bytes_impl.exit, label %.thread63

.thread63:                                        ; preds = %.thread55.thread, %bb.g
  %.067 = phi i32 [ 0, %bb.g ], [ %i.x, %.thread55.thread ] ; 2 uses
  %i.z = call i32 @_PyUnicode_Equal(ptr noundef nonnull %i.m, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 90376)) #16, !inline_history !340
  %.not.i = icmp eq i32 %i.z, 0
  br i1 %.not.i, label %bb.h, label %.thread59

bb.h:                                             ; preds = %.thread63
  %i.aa = call i32 @_PyUnicode_Equal(ptr noundef nonnull %i.m, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 75504)) #16, !inline_history !340
  %.not35.i = icmp eq i32 %i.aa, 0
  br i1 %.not35.i, label %bb.i, label %.thread59

bb.i:                                             ; preds = %bb.h
  %i.ab = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !11
  call void @PyErr_SetString(ptr noundef %i.ab, ptr noundef nonnull @.str.82) #16, !inline_history !340
  br label %int_from_bytes_impl.exit

.thread59:                                        ; preds = %.thread55, %.thread49, %bb.h, %.thread63
  %.062 = phi i32 [ %.067, %.thread63 ], [ 0, %.thread49 ], [ %.067, %bb.h ], [ %i.t, %.thread55 ] ; 3 uses
  %.026.i = phi i32 [ 1, %.thread63 ], [ 0, %.thread49 ], [ 0, %bb.h ], [ 0, %.thread55 ] ; 3 uses
  %i.ac = getelementptr i8, ptr %i.k, i64 8
  %.val43.i = load ptr, ptr %i.ac, align 8, !tbaa !21
  %.not44.i = icmp eq ptr %.val43.i, @PyBytes_Type
  br i1 %.not44.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.thread59
  %i.ad = getelementptr i8, ptr %i.k, i64 32
  %i.ae = getelementptr i8, ptr %i.k, i64 16
  %.val42.i = load i64, ptr %i.ae, align 8, !tbaa !249
  %i.af = call ptr @_PyLong_FromByteArray(ptr noundef %i.ad, i64 noundef %.val42.i, i32 noundef %.026.i, i32 noundef range(i32 0, -2147483648) %.062), !inline_history !340
  br label %Py_DECREF.exit40.i

bb.k:                                             ; preds = %.thread59
  %i.ag = call i32 @PyObject_CheckBuffer(ptr noundef nonnull %i.k) #16, !inline_history !340
  %.not37.i = icmp eq i32 %i.ag, 0
  br i1 %.not37.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.ah = call i32 @PyObject_GetBuffer(ptr noundef nonnull %i.k, ptr noundef nonnull %4, i32 noundef 0) #16, !inline_history !340
  %.not38.i = icmp eq i32 %i.ah, 0
  br i1 %.not38.i, label %bb.m, label %.critedge.i

bb.m:                                             ; preds = %bb.l
  %i.ai = load ptr, ptr %4, align 8, !tbaa !341
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !344
  %i.al = call ptr @_PyLong_FromByteArray(ptr noundef %i.ai, i64 noundef %i.ak, i32 noundef %.026.i, i32 noundef range(i32 0, -2147483648) %.062), !inline_history !340
  call void @PyBuffer_Release(ptr noundef nonnull %4) #16, !inline_history !340
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %Py_DECREF.exit40.i

bb.n:                                             ; preds = %bb.k
  %i.am = call ptr @PyObject_Bytes(ptr noundef nonnull %i.k) #16, !inline_history !340 ; 6 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %int_from_bytes_impl.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ao = getelementptr i8, ptr %i.am, i64 32
  %i.ap = getelementptr i8, ptr %i.am, i64 16
  %.val.i = load i64, ptr %i.ap, align 8, !tbaa !249
  %i.aq = call ptr @_PyLong_FromByteArray(ptr noundef %i.ao, i64 noundef %.val.i, i32 noundef %.026.i, i32 noundef range(i32 0, -2147483648) %.062), !inline_history !340 ; 3 uses
  %i.ar = load i32, ptr %i.am, align 8, !tbaa !24 ; 2 uses
  %.not.i39.i = icmp sgt i32 %i.ar, -1
  br i1 %.not.i39.i, label %bb.p, label %Py_DECREF.exit40.i

bb.p:                                             ; preds = %bb.o
  %i.as = add nsw i32 %i.ar, -1                   ; 2 uses
  store i32 %i.as, ptr %i.am, align 8, !tbaa !24
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.q, label %Py_DECREF.exit40.i

bb.q:                                             ; preds = %bb.p
  call void @_Py_Dealloc(ptr noundef nonnull %i.am) #16, !inline_history !340
  br label %Py_DECREF.exit40.i

Py_DECREF.exit40.i:                               ; preds = %bb.q, %bb.p, %bb.o, %bb.m, %bb.j
  %.131.i = phi ptr [ %i.af, %bb.j ], [ %i.al, %bb.m ], [ %i.aq, %bb.o ], [ %i.aq, %bb.p ], [ %i.aq, %bb.q ] ; 6 uses
  %i.au = icmp ne ptr %.131.i, null
  %i.av = icmp ne ptr %0, @PyLong_Type
  %or.cond.i = and i1 %i.av, %i.au
  br i1 %or.cond.i, label %bb.r, label %int_from_bytes_impl.exit

bb.r:                                             ; preds = %Py_DECREF.exit40.i
  %i.aw = call ptr @PyObject_CallOneArg(ptr noundef %0, ptr noundef nonnull %.131.i) #16, !inline_history !340 ; 3 uses
  %i.ax = load i32, ptr %.131.i, align 8, !tbaa !24 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.ax, -1
  br i1 %.not.i.i, label %bb.s, label %int_from_bytes_impl.exit

bb.s:                                             ; preds = %bb.r
  %i.ay = add nsw i32 %i.ax, -1                   ; 2 uses
  store i32 %i.ay, ptr %.131.i, align 8, !tbaa !24
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.t, label %int_from_bytes_impl.exit

bb.t:                                             ; preds = %bb.s
  call void @_Py_Dealloc(ptr noundef nonnull %.131.i) #16, !inline_history !340
  br label %int_from_bytes_impl.exit

.critedge.i:                                      ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %int_from_bytes_impl.exit

int_from_bytes_impl.exit:                         ; preds = %.thread55.thread, %.critedge.i, %bb.t, %bb.s, %bb.r, %Py_DECREF.exit40.i, %bb.n, %bb.i, %.thread55, %bb.c, %bb.f
  %.033 = phi ptr [ null, %.thread55 ], [ null, %bb.c ], [ null, %bb.f ], [ null, %bb.n ], [ %.131.i, %Py_DECREF.exit40.i ], [ null, %.critedge.i ], [ null, %bb.i ], [ %i.aw, %bb.r ], [ %i.aw, %bb.s ], [ %i.aw, %bb.t ], [ null, %.thread55.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret ptr %.033
}

; Function Attrs: nounwind uwtable
define internal ptr @int_as_integer_ratio(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val.i.i = load ptr, ptr %i.a, align 8, !tbaa !21
  %.not.i7.i = icmp eq ptr %.val.i.i, @PyLong_Type
  br i1 %.not.i7.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !24     ; 2 uses
  %i.c = icmp ugt i32 %i.b, -1073741825
  br i1 %i.c, label %long_long.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %i.b, 1
  store i32 %i.d, ptr %0, align 8, !tbaa !24
  br label %long_long.exit.thread.i

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 16
  %.val24.i.i.i = load i64, ptr %i.e, align 8, !tbaa !25 ; 4 uses
  %i.f = icmp ugt i64 %.val24.i.i.i, 15
  br i1 %i.f, label %.thread.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr i8, ptr %0, i64 24
  %.val26.i.i.i = load i32, ptr %i.g, align 8, !tbaa !7
  %i.h = and i64 %.val24.i.i.i, 3
  %i.i = sub nsw i64 1, %i.h
  %i.j = zext i32 %.val26.i.i.i to i64
  %i.k = mul nsw i64 %i.i, %i.j                   ; 2 uses
  %i.l = add nsw i64 %i.k, -1025
  %or.cond.i.i.i = icmp ult i64 %i.l, -1030
  br i1 %or.cond.i.i.i, label %.thread.i.i.i, label %long_long.exit.i

.thread.i.i.i:                                    ; preds = %bb.e, %bb.d
  %i.m = lshr i64 %.val24.i.i.i, 3                ; 2 uses
  %i.n = tail call fastcc ptr @long_alloc(i64 noundef %i.m), !inline_history !345 ; 4 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %int_as_integer_ratio_impl.exit, label %bb.f

bb.f:                                             ; preds = %.thread.i.i.i
  %i.p = and i64 %.val24.i.i.i, -5
  %i.q = getelementptr i8, ptr %i.n, i64 16
  store i64 %i.p, ptr %i.q, align 8, !tbaa !25
  %i.r = getelementptr i8, ptr %i.n, i64 24
  %i.s = getelementptr i8, ptr %0, i64 24
  %i.t = shl nuw nsw i64 %i.m, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.r, ptr readonly align 8 %i.s, i64 %i.t, i1 false)
  br label %long_long.exit.thread.i

long_long.exit.i:                                 ; preds = %bb.e
  %2 = getelementptr [32 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 14136), i64 %i.k
  %i.u = getelementptr i8, ptr %2, i64 160        ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %int_as_integer_ratio_impl.exit, label %long_long.exit.thread.i

long_long.exit.thread.i:                          ; preds = %long_long.exit.i, %bb.f, %bb.c, %bb.b
  %.0.i9.i = phi ptr [ %i.u, %long_long.exit.i ], [ %i.n, %bb.f ], [ %0, %bb.b ], [ %0, %bb.c ] ; 4 uses
  %i.w = tail call ptr (i64, ...) @PyTuple_Pack(i64 noundef 2, ptr noundef nonnull %.0.i9.i, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 14328)) #16, !inline_history !346 ; 3 uses
  %i.x = load i32, ptr %.0.i9.i, align 8, !tbaa !24 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.x, -1
  br i1 %.not.i.i, label %bb.g, label %int_as_integer_ratio_impl.exit

bb.g:                                             ; preds = %long_long.exit.thread.i
  %i.y = add nsw i32 %i.x, -1                     ; 2 uses
  store i32 %i.y, ptr %.0.i9.i, align 8, !tbaa !24
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.h, label %int_as_integer_ratio_impl.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i9.i) #16, !inline_history !346
  br label %int_as_integer_ratio_impl.exit

int_as_integer_ratio_impl.exit:                   ; preds = %.thread.i.i.i, %long_long.exit.i, %long_long.exit.thread.i, %bb.g, %bb.h
  %.0.i = phi ptr [ %i.w, %bb.h ], [ null, %long_long.exit.i ], [ %i.w, %long_long.exit.thread.i ], [ %i.w, %bb.g ], [ null, %.thread.i.i.i ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal ptr @int___round__(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %or.cond = icmp ult i64 %2, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.70, i64 noundef %2, i64 noundef 0, i64 noundef 1) #16
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %int___round___impl.exit, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.b = icmp slt i64 %2, 1
  br i1 %i.b, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load ptr, ptr %1, align 8, !tbaa !11     ; 2 uses
  %i.d = icmp eq ptr %i.c, @_Py_NoneStruct
  br i1 %i.d, label %.thread, label %bb.k

.thread:                                          ; preds = %bb.c, %bb.d
  %i.e = getelementptr i8, ptr %0, i64 8
  %.val.i.i = load ptr, ptr %i.e, align 8, !tbaa !21
  %.not.i65.i = icmp eq ptr %.val.i.i, @PyLong_Type
  br i1 %.not.i65.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.thread
  %i.f = load i32, ptr %0, align 8, !tbaa !24     ; 2 uses
  %i.g = icmp ugt i32 %i.f, -1073741825
  br i1 %i.g, label %int___round___impl.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = add nuw i32 %i.f, 1
  store i32 %i.h, ptr %0, align 8, !tbaa !24
  br label %int___round___impl.exit

bb.g:                                             ; preds = %.thread
  %i.i = getelementptr i8, ptr %0, i64 16
  %.val24.i.i.i = load i64, ptr %i.i, align 8, !tbaa !25 ; 4 uses
  %i.j = icmp ugt i64 %.val24.i.i.i, 15
  br i1 %i.j, label %.thread.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = getelementptr i8, ptr %0, i64 24
  %.val26.i.i.i = load i32, ptr %i.k, align 8, !tbaa !7
  %i.l = and i64 %.val24.i.i.i, 3
  %i.m = sub nsw i64 1, %i.l
  %i.n = zext i32 %.val26.i.i.i to i64
  %i.o = mul nsw i64 %i.m, %i.n                   ; 2 uses
  %i.p = add nsw i64 %i.o, -1025
  %or.cond.i.i.i = icmp ult i64 %i.p, -1030
  br i1 %or.cond.i.i.i, label %.thread.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %3 = getelementptr [32 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 14136), i64 %i.o
  %i.q = getelementptr i8, ptr %3, i64 160
  br label %int___round___impl.exit

.thread.i.i.i:                                    ; preds = %bb.h, %bb.g
  %i.r = lshr i64 %.val24.i.i.i, 3                ; 2 uses
  %i.s = tail call fastcc ptr @long_alloc(i64 noundef %i.r), !inline_history !347 ; 4 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %int___round___impl.exit, label %bb.j

bb.j:                                             ; preds = %.thread.i.i.i
  %i.u = and i64 %.val24.i.i.i, -5
  %i.v = getelementptr i8, ptr %i.s, i64 16
  store i64 %i.u, ptr %i.v, align 8, !tbaa !25
  %i.w = getelementptr i8, ptr %i.s, i64 24
  %i.x = getelementptr i8, ptr %0, i64 24
  %i.y = shl nuw nsw i64 %i.r, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.w, ptr readonly align 8 %i.x, i64 %i.y, i1 false)
  br label %int___round___impl.exit

bb.k:                                             ; preds = %bb.d
  %i.z = tail call ptr @_PyNumber_Index(ptr noundef %i.c) #16, !inline_history !348 ; 10 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %int___round___impl.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = getelementptr i8, ptr %i.z, i64 16
  %.val.i = load i64, ptr %i.ab, align 8, !tbaa !25 ; 5 uses
  %i.ac = and i64 %.val.i, 3
  %i.ad = icmp eq i64 %i.ac, 2
  br i1 %i.ad, label %bb.v, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ae = load i32, ptr %i.z, align 8, !tbaa !24  ; 2 uses
  %.not.i57.i = icmp sgt i32 %i.ae, -1
  br i1 %.not.i57.i, label %bb.n, label %Py_DECREF.exit58.i

bb.n:                                             ; preds = %bb.m
  %i.af = add nsw i32 %i.ae, -1                   ; 2 uses
  store i32 %i.af, ptr %i.z, align 8, !tbaa !24
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.o, label %Py_DECREF.exit58.i

bb.o:                                             ; preds = %bb.n
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.z) #16, !inline_history !348
  br label %Py_DECREF.exit58.i

Py_DECREF.exit58.i:                               ; preds = %bb.o, %bb.n, %bb.m
  %i.ah = getelementptr i8, ptr %0, i64 8
  %.val.i66.i = load ptr, ptr %i.ah, align 8, !tbaa !21
  %.not.i67.i = icmp eq ptr %.val.i66.i, @PyLong_Type
  br i1 %.not.i67.i, label %bb.p, label %bb.r

bb.p:                                             ; preds = %Py_DECREF.exit58.i
  %i.ai = load i32, ptr %0, align 8, !tbaa !24    ; 2 uses
  %i.aj = icmp ugt i32 %i.ai, -1073741825
  br i1 %i.aj, label %int___round___impl.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ak = add nuw i32 %i.ai, 1
  store i32 %i.ak, ptr %0, align 8, !tbaa !24
  br label %int___round___impl.exit

bb.r:                                             ; preds = %Py_DECREF.exit58.i
  %i.al = getelementptr i8, ptr %0, i64 16
  %.val24.i.i68.i = load i64, ptr %i.al, align 8, !tbaa !25 ; 4 uses
  %i.am = icmp ugt i64 %.val24.i.i68.i, 15
  br i1 %i.am, label %.thread.i.i72.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.an = getelementptr i8, ptr %0, i64 24
  %.val26.i.i69.i = load i32, ptr %i.an, align 8, !tbaa !7
  %i.ao = and i64 %.val24.i.i68.i, 3
  %i.ap = sub nsw i64 1, %i.ao
  %i.aq = zext i32 %.val26.i.i69.i to i64
  %i.ar = mul nsw i64 %i.ap, %i.aq                ; 2 uses
  %i.as = add nsw i64 %i.ar, -1025
  %or.cond.i.i70.i = icmp ult i64 %i.as, -1030
  br i1 %or.cond.i.i70.i, label %.thread.i.i72.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %4 = getelementptr [32 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 14136), i64 %i.ar
  %i.at = getelementptr i8, ptr %4, i64 160
  br label %int___round___impl.exit

.thread.i.i72.i:                                  ; preds = %bb.s, %bb.r
  %i.au = lshr i64 %.val24.i.i68.i, 3             ; 2 uses
  %i.av = tail call fastcc ptr @long_alloc(i64 noundef %i.au), !inline_history !347 ; 4 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %int___round___impl.exit, label %bb.u

bb.u:                                             ; preds = %.thread.i.i72.i
  %i.ax = and i64 %.val24.i.i68.i, -5
  %i.ay = getelementptr i8, ptr %i.av, i64 16
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !25
  %i.az = getelementptr i8, ptr %i.av, i64 24
  %i.ba = getelementptr i8, ptr %0, i64 24
  %i.bb = shl nuw nsw i64 %i.au, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.az, ptr readonly align 8 %i.ba, i64 %i.bb, i1 false)
  br label %int___round___impl.exit

bb.v:                                             ; preds = %bb.l
  %i.bc = icmp ugt i64 %.val.i, 15
  br i1 %i.bc, label %.thread.i.i76.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bd = getelementptr i8, ptr %i.z, i64 24
  %.val10.i.i = load i32, ptr %i.bd, align 8, !tbaa !7
  %i.be = zext i32 %.val10.i.i to i64
  %i.bf = tail call fastcc ptr @_PyLong_FromSTwoDigits(i64 noundef %i.be), !inline_history !349
  br label %long_neg.exit.i

.thread.i.i76.i:                                  ; preds = %bb.v
  %i.bg = lshr i64 %.val.i, 3                     ; 2 uses
  %i.bh = tail call fastcc ptr @long_alloc(i64 noundef %i.bg), !inline_history !350 ; 4 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %long_neg.exit.i, label %_PyLong_Copy.exit.thread13.i.i

_PyLong_Copy.exit.thread13.i.i:                   ; preds = %.thread.i.i76.i
  %i.bj = and i64 %.val.i, -6
  %i.bk = getelementptr i8, ptr %i.bh, i64 16     ; 2 uses
  store i64 %i.bj, ptr %i.bk, align 8, !tbaa !25
  %i.bl = getelementptr i8, ptr %i.bh, i64 24
  %i.bm = getelementptr i8, ptr %i.z, i64 24
  %i.bn = shl nuw nsw i64 %i.bg, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.bl, ptr readonly align 8 %i.bm, i64 %i.bn, i1 false)
  %i.bo = and i64 %.val.i, -8
  store i64 %i.bo, ptr %i.bk, align 8, !tbaa !25
  br label %long_neg.exit.i

long_neg.exit.i:                                  ; preds = %_PyLong_Copy.exit.thread13.i.i, %.thread.i.i76.i, %bb.w
  %.0.i75.i = phi ptr [ %i.bf, %bb.w ], [ %i.bh, %_PyLong_Copy.exit.thread13.i.i ], [ null, %.thread.i.i76.i ] ; 5 uses
  %i.bp = load i32, ptr %i.z, align 8, !tbaa !24  ; 2 uses
  %.not.i55.i = icmp sgt i32 %i.bp, -1
  br i1 %.not.i55.i, label %bb.x, label %Py_DECREF.exit56.i

bb.x:                                             ; preds = %long_neg.exit.i
  %i.bq = add nsw i32 %i.bp, -1                   ; 2 uses
  store i32 %i.bq, ptr %i.z, align 8, !tbaa !24
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.y, label %Py_DECREF.exit56.i

bb.y:                                             ; preds = %bb.x
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.z) #16, !inline_history !348
  br label %Py_DECREF.exit56.i

Py_DECREF.exit56.i:                               ; preds = %bb.y, %bb.x, %long_neg.exit.i
  %i.bs = icmp eq ptr %.0.i75.i, null
  br i1 %i.bs, label %int___round___impl.exit, label %bb.z

bb.z:                                             ; preds = %Py_DECREF.exit56.i
  %i.bt = tail call ptr @long_pow(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 14616), ptr noundef nonnull %.0.i75.i, ptr noundef nonnull @_Py_NoneStruct), !inline_history !348 ; 5 uses
  %i.bu = load i32, ptr %.0.i75.i, align 8, !tbaa !24 ; 2 uses
  %.not.i51.i = icmp sgt i32 %i.bu, -1
  br i1 %.not.i51.i, label %bb.aa, label %Py_DECREF.exit52.i

bb.aa:                                            ; preds = %bb.z
  %i.bv = add nsw i32 %i.bu, -1                   ; 2 uses
  store i32 %i.bv, ptr %.0.i75.i, align 8, !tbaa !24
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.ab, label %Py_DECREF.exit52.i

bb.ab:                                            ; preds = %bb.aa
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i75.i) #16, !inline_history !348
  br label %Py_DECREF.exit52.i

Py_DECREF.exit52.i:                               ; preds = %bb.ab, %bb.aa, %bb.z
  %i.bx = load i32, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 14616), align 8, !tbaa !24 ; 2 uses
  %.not.i49.i = icmp sgt i32 %i.bx, -1
  br i1 %.not.i49.i, label %bb.ac, label %Py_DECREF.exit50.i

bb.ac:                                            ; preds = %Py_DECREF.exit52.i
  %i.by = add nsw i32 %i.bx, -1                   ; 2 uses
  store i32 %i.by, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 14616), align 8, !tbaa !24
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %bb.ad, label %Py_DECREF.exit50.i

bb.ad:                                            ; preds = %bb.ac
  tail call void @_Py_Dealloc(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 14616)) #16, !inline_history !348
  br label %Py_DECREF.exit50.i

Py_DECREF.exit50.i:                               ; preds = %bb.ad, %bb.ac, %Py_DECREF.exit52.i
  %i.ca = icmp eq ptr %i.bt, null
  br i1 %i.ca, label %int___round___impl.exit, label %bb.ae

bb.ae:                                            ; preds = %Py_DECREF.exit50.i
  %i.cb = tail call ptr @_PyLong_DivmodNear(ptr noundef %0, ptr noundef nonnull %i.bt), !inline_history !348 ; 5 uses
  %i.cc = load i32, ptr %i.bt, align 8, !tbaa !24 ; 2 uses
  %.not.i47.i = icmp sgt i32 %i.cc, -1
  br i1 %.not.i47.i, label %bb.af, label %Py_DECREF.exit48.i

bb.af:                                            ; preds = %bb.ae
  %i.cd = add nsw i32 %i.cc, -1                   ; 2 uses
  store i32 %i.cd, ptr %i.bt, align 8, !tbaa !24
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %bb.ag, label %Py_DECREF.exit48.i

bb.ag:                                            ; preds = %bb.af
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.bt) #16, !inline_history !348
  br label %Py_DECREF.exit48.i

Py_DECREF.exit48.i:                               ; preds = %bb.ag, %bb.af, %bb.ae
  %i.cf = icmp eq ptr %i.cb, null
  br i1 %i.cf, label %int___round___impl.exit, label %bb.ah

bb.ah:                                            ; preds = %Py_DECREF.exit48.i
  %i.cg = getelementptr i8, ptr %i.cb, i64 40
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !11
  %i.ci = tail call fastcc ptr @long_sub(ptr noundef %0, ptr noundef %i.ch), !inline_history !348 ; 3 uses
  %i.cj = load i32, ptr %i.cb, align 8, !tbaa !24 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.cj, -1
  br i1 %.not.i.i, label %bb.ai, label %int___round___impl.exit

bb.ai:                                            ; preds = %bb.ah
  %i.ck = add nsw i32 %i.cj, -1                   ; 2 uses
  store i32 %i.ck, ptr %i.cb, align 8, !tbaa !24
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %bb.aj, label %int___round___impl.exit

bb.aj:                                            ; preds = %bb.ai
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.cb) #16, !inline_history !348
  br label %int___round___impl.exit

int___round___impl.exit:                          ; preds = %bb.aj, %bb.ai, %bb.ah, %Py_DECREF.exit48.i, %Py_DECREF.exit50.i, %Py_DECREF.exit56.i, %bb.u, %.thread.i.i72.i, %bb.t, %bb.q, %bb.p, %bb.k, %bb.j, %.thread.i.i.i, %bb.i, %bb.f, %bb.e, %bb.b
  %.08 = phi ptr [ null, %bb.b ], [ null, %Py_DECREF.exit48.i ], [ null, %.thread.i.i.i ], [ null, %bb.k ], [ null, %Py_DECREF.exit56.i ], [ null, %.thread.i.i72.i ], [ %i.av, %bb.u ], [ null, %Py_DECREF.exit50.i ], [ %0, %bb.f ], [ %0, %bb.e ], [ %i.q, %bb.i ], [ %i.s, %bb.j ], [ %0, %bb.q ], [ %0, %bb.p ], [ %i.at, %bb.t ], [ %i.ci, %bb.ah ], [ %i.ci, %bb.ai ], [ %i.ci, %bb.aj ]
  ret ptr %.08
}

; Function Attrs: nounwind uwtable
define internal ptr @int___getnewargs__(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val24.i.i = load i64, ptr %i.a, align 8, !tbaa !25 ; 4 uses
  %i.b = icmp ugt i64 %.val24.i.i, 15
  br i1 %i.b, label %.thread.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 24
  %.val26.i.i = load i32, ptr %i.c, align 8, !tbaa !7
  %i.d = and i64 %.val24.i.i, 3
  %i.e = sub nsw i64 1, %i.d
  %i.f = zext i32 %.val26.i.i to i64
  %i.g = mul nsw i64 %i.e, %i.f                   ; 2 uses
  %i.h = add nsw i64 %i.g, -1025
  %or.cond.i.i = icmp ult i64 %i.h, -1030
  br i1 %or.cond.i.i, label %.thread.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %2 = getelementptr [32 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 14136), i64 %i.g
  %i.i = getelementptr i8, ptr %2, i64 160
  br label %int___getnewargs___impl.exit

.thread.i.i:                                      ; preds = %bb.b, %bb.a
  %i.j = lshr i64 %.val24.i.i, 3                  ; 2 uses
  %i.k = tail call fastcc ptr @long_alloc(i64 noundef %i.j), !inline_history !351 ; 4 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %int___getnewargs___impl.exit, label %bb.d

bb.d:                                             ; preds = %.thread.i.i
  %i.m = and i64 %.val24.i.i, -5
  %i.n = getelementptr i8, ptr %i.k, i64 16
  store i64 %i.m, ptr %i.n, align 8, !tbaa !25
  %i.o = getelementptr i8, ptr %i.k, i64 24
  %i.p = getelementptr i8, ptr %0, i64 24
  %i.q = shl nuw nsw i64 %i.j, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.o, ptr readonly align 8 %i.p, i64 %i.q, i1 false)
  br label %int___getnewargs___impl.exit

int___getnewargs___impl.exit:                     ; preds = %bb.c, %.thread.i.i, %bb.d
  %.2.i.i = phi ptr [ %i.i, %bb.c ], [ %i.k, %bb.d ], [ null, %.thread.i.i ]
  %i.r = tail call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.84, ptr noundef %.2.i.i) #16, !inline_history !352
  ret ptr %i.r
}

; Function Attrs: nounwind uwtable
define internal ptr @int___format__(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %2 = alloca %struct._PyUnicodeWriter, align 8   ; 6 uses
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.b = getelementptr i8, ptr %.val, i64 168
  %.val6 = load i64, ptr %i.b, align 8, !tbaa !35
  %i.c = and i64 %.val6, 268435456
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_PyArg_BadArgument(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.81, ptr noundef nonnull %1) #16
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @_PyUnicodeWriter_Init(ptr noundef nonnull %2) #16
  %i.d = getelementptr i8, ptr %1, i64 16
  %.val.i = load i64, ptr %i.d, align 8, !tbaa !151
  %i.e = call i32 @_PyLong_FormatAdvancedWriter(ptr noundef nonnull %2, ptr noundef %0, ptr noundef nonnull %1, i64 noundef 0, i64 noundef %.val.i) #16
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_PyUnicodeWriter_Dealloc(ptr noundef nonnull %2) #16
  br label %int___format___impl.exit

bb.e:                                             ; preds = %bb.c
  %i.g = call ptr @_PyUnicodeWriter_Finish(ptr noundef nonnull %2) #16
  br label %int___format___impl.exit

int___format___impl.exit:                         ; preds = %bb.d, %bb.e
  %.0.i = phi ptr [ null, %bb.d ], [ %i.g, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.f

bb.f:                                             ; preds = %int___format___impl.exit, %bb.b
  %.0 = phi ptr [ %.0.i, %int___format___impl.exit ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @int___sizeof__(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val4.i = load i64, ptr %i.a, align 8, !tbaa !25
  %i.b = lshr i64 %.val4.i, 3
  %spec.select.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 1)
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val6.i = load ptr, ptr %i.c, align 8, !tbaa !21 ; 2 uses
  %i.d = getelementptr i8, ptr %.val6.i, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !353
  %i.f = getelementptr i8, ptr %.val6.i, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !354
  %i.h = mul i64 %i.g, %spec.select.i
  %i.i = add i64 %i.h, %i.e                       ; 2 uses
  %i.j = icmp eq i64 %i.i, -1
  br i1 %i.j, label %bb.b, label %.split

.split:                                           ; preds = %bb.a
  %i.k = tail call ptr @PyLong_FromSsize_t(i64 noundef %i.i)
  br label %.split3

bb.b:                                             ; preds = %bb.a
  %i.l = tail call ptr @PyErr_Occurred() #16
  %.not = icmp eq ptr %i.l, null
  %spec.select = select i1 %.not, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 14264), ptr null
  br label %.split3

.split3:                                          ; preds = %bb.b, %.split
  %.0 = phi ptr [ %spec.select, %bb.b ], [ %i.k, %.split ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @int_is_integer(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #13 {
bb.a:
  ret ptr @_Py_TrueStruct
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #2

declare ptr @_PyArg_UnpackKeywords(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @_PyArg_BadArgument(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @PyObject_IsTrue(ptr noundef) local_unnamed_addr #3

declare i32 @_PyUnicode_Equal(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @PyBytesWriter_Create(i64 noundef) local_unnamed_addr #3

declare ptr @PyBytesWriter_GetData(ptr noundef) local_unnamed_addr #3

declare void @PyBytesWriter_Discard(ptr noundef) local_unnamed_addr #3

declare ptr @PyBytesWriter_Finish(ptr noundef) local_unnamed_addr #3

declare i32 @PyObject_CheckBuffer(ptr noundef) local_unnamed_addr #3

declare i32 @PyObject_GetBuffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @PyBuffer_Release(ptr noundef) local_unnamed_addr #3

declare ptr @PyObject_Bytes(ptr noundef) local_unnamed_addr #3

declare ptr @PyObject_CallOneArg(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @PyTuple_Pack(i64 noundef, ...) local_unnamed_addr #3

declare i32 @_PyArg_CheckPositional(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @Py_BuildValue(ptr noundef, ...) local_unnamed_addr #3

declare void @_PyUnicodeWriter_Init(ptr noundef) local_unnamed_addr #3

declare i32 @_PyLong_FormatAdvancedWriter(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @_PyUnicodeWriter_Dealloc(ptr noundef) local_unnamed_addr #3

declare ptr @_PyUnicodeWriter_Finish(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal ptr @long_long_getter(ptr nofree noundef captures(ret: address, provenance) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !21
  %.not.i = icmp eq ptr %.val.i, @PyLong_Type
  br i1 %.not.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !24     ; 2 uses
  %i.c = icmp ugt i32 %i.b, -1073741825
  br i1 %i.c, label %long_long.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = add nuw i32 %i.b, 1
  store i32 %i.d, ptr %0, align 8, !tbaa !24
  br label %long_long.exit

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 16
  %.val24.i.i = load i64, ptr %i.e, align 8, !tbaa !25 ; 4 uses
  %i.f = icmp ugt i64 %.val24.i.i, 15
  br i1 %i.f, label %.thread.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr i8, ptr %0, i64 24
  %.val26.i.i = load i32, ptr %i.g, align 8, !tbaa !7
  %i.h = and i64 %.val24.i.i, 3
  %i.i = sub nsw i64 1, %i.h
  %i.j = zext i32 %.val26.i.i to i64
  %i.k = mul nsw i64 %i.i, %i.j                   ; 2 uses
  %i.l = add nsw i64 %i.k, -1025
  %or.cond.i.i = icmp ult i64 %i.l, -1030
  br i1 %or.cond.i.i, label %.thread.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %2 = getelementptr [32 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 14136), i64 %i.k
  %i.m = getelementptr i8, ptr %2, i64 160
  br label %long_long.exit

.thread.i.i:                                      ; preds = %bb.e, %bb.d
  %i.n = lshr i64 %.val24.i.i, 3                  ; 2 uses
  %i.o = tail call fastcc ptr @long_alloc(i64 noundef %i.n), !inline_history !234 ; 4 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %long_long.exit, label %bb.g

bb.g:                                             ; preds = %.thread.i.i
  %i.q = and i64 %.val24.i.i, -5
  %i.r = getelementptr i8, ptr %i.o, i64 16
  store i64 %i.q, ptr %i.r, align 8, !tbaa !25
  %i.s = getelementptr i8, ptr %i.o, i64 24
  %i.t = getelementptr i8, ptr %0, i64 24
  %i.u = shl nuw nsw i64 %i.n, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.s, ptr readonly align 8 %i.t, i64 %i.u, i1 false)
  br label %long_long.exit

long_long.exit:                                   ; preds = %bb.b, %bb.c, %bb.f, %.thread.i.i, %bb.g
  %.0.i = phi ptr [ %0, %bb.c ], [ %0, %bb.b ], [ %i.m, %bb.f ], [ %i.o, %bb.g ], [ null, %.thread.i.i ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal nonnull ptr @long_get0(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #13 {
bb.a:
  ret ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 14296)
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal nonnull ptr @long_get1(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #13 {
bb.a:
  ret ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 14328)
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @long_new_impl(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, @PyLong_Type
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call fastcc ptr @long_new_impl(ptr noundef nonnull @PyLong_Type, ptr noundef %1, ptr noundef %2), !inline_history !355 ; 10 uses
  %i.b = ptrtoaddr ptr %i.a to i64
  %i.c = icmp eq ptr %i.a, null
  br i1 %i.c, label %long_subtype_new.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %i.a, i64 16       ; 2 uses
  %.val.i = load i64, ptr %i.d, align 8, !tbaa !25 ; 2 uses
  %i.e = lshr i64 %.val.i, 3                      ; 3 uses
  %spec.store.select.i = tail call i64 @llvm.umax.i64(i64 %i.e, i64 1) ; 4 uses
  %i.f = getelementptr i8, ptr %0, i64 304
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !356
  %i.h = tail call ptr %i.g(ptr noundef %0, i64 noundef %spec.store.select.i) #16, !inline_history !355 ; 7 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.j = load i32, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %.not.i24.i = icmp sgt i32 %i.j, -1
  br i1 %.not.i24.i, label %bb.e, label %long_subtype_new.exit

bb.e:                                             ; preds = %bb.d
  %i.k = add nsw i32 %i.j, -1                     ; 2 uses
  store i32 %i.k, ptr %i.a, align 8, !tbaa !24
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.f, label %long_subtype_new.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #16, !inline_history !355
  br label %long_subtype_new.exit

bb.g:                                             ; preds = %bb.c
  %i.m = ptrtoaddr ptr %i.h to i64
  %i.n = load i64, ptr %i.d, align 8, !tbaa !25
  %i.o = and i64 %i.n, -5
  %i.p = getelementptr i8, ptr %i.h, i64 16
  store i64 %i.o, ptr %i.p, align 8, !tbaa !25
  %i.q = getelementptr i8, ptr %i.a, i64 24       ; 6 uses
  %i.r = getelementptr i8, ptr %i.h, i64 24       ; 6 uses
  %min.iters.check = icmp ult i64 %.val.i, 64
  %i.s = sub i64 %i.m, %i.b
  %diff.check = icmp ult i64 %i.s, 32
  %or.cond64 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond64, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.g
  %n.vec = and i64 %spec.store.select.i, 2305843009213693944 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.t = getelementptr [4 x i8], ptr %i.q, i64 %index ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 16
  %wide.load = load <4 x i32>, ptr %i.t, align 4, !tbaa !7
  %wide.load63 = load <4 x i32>, ptr %i.u, align 4, !tbaa !7
  %i.v = getelementptr [4 x i8], ptr %i.r, i64 %index ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 16
  store <4 x i32> %wide.load, ptr %i.v, align 4, !tbaa !7
  store <4 x i32> %wide.load63, ptr %i.w, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !357

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.g, %middle.block
  %.0.i51.ph = phi i64 [ 0, %bb.g ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.store.select.i, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.0.i51.prol = phi i64 [ %i.ab, %scalar.ph.prol ], [ %.0.i51.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.y = getelementptr [4 x i8], ptr %i.q, i64 %.0.i51.prol
  %i.z = load i32, ptr %i.y, align 4, !tbaa !7
  %i.aa = getelementptr [4 x i8], ptr %i.r, i64 %.0.i51.prol
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !7
  %i.ab = add nuw nsw i64 %.0.i51.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !358

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.0.i51.unr = phi i64 [ %.0.i51.ph, %scalar.ph.preheader ], [ %i.ab, %scalar.ph.prol ]
  %i.ac = sub nsw i64 %.0.i51.ph, %spec.store.select.i
  %i.ad = icmp ugt i64 %i.ac, -4
  br i1 %i.ad, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.0.i51 = phi i64 [ %i.at, %scalar.ph ], [ %.0.i51.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ae = getelementptr [4 x i8], ptr %i.q, i64 %.0.i51
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !7
  %i.ag = getelementptr [4 x i8], ptr %i.r, i64 %.0.i51
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !7
  %i.ah = add nuw nsw i64 %.0.i51, 1              ; 2 uses
  %i.ai = getelementptr [4 x i8], ptr %i.q, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !7
  %i.ak = getelementptr [4 x i8], ptr %i.r, i64 %i.ah
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !7
  %i.al = add nuw nsw i64 %.0.i51, 2              ; 2 uses
  %i.am = getelementptr [4 x i8], ptr %i.q, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !7
  %i.ao = getelementptr [4 x i8], ptr %i.r, i64 %i.al
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !7
  %i.ap = add nuw nsw i64 %.0.i51, 3              ; 2 uses
  %i.aq = getelementptr [4 x i8], ptr %i.q, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !7
  %i.as = getelementptr [4 x i8], ptr %i.r, i64 %i.ap
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !7
  %i.at = add nuw nsw i64 %.0.i51, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.e, %i.at
  br i1 %exitcond.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !359

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.au = load i32, ptr %i.a, align 8, !tbaa !24  ; 2 uses
  %.not.i.i = icmp sgt i32 %i.au, -1
  br i1 %.not.i.i, label %bb.h, label %long_subtype_new.exit

bb.h:                                             ; preds = %.loopexit
  %i.av = add nsw i32 %i.au, -1                   ; 2 uses
  store i32 %i.av, ptr %i.a, align 8, !tbaa !24
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.i, label %long_subtype_new.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #16, !inline_history !355
  br label %long_subtype_new.exit

bb.j:                                             ; preds = %bb.a
  %i.ax = icmp eq ptr %1, null
  %.not37 = icmp eq ptr %2, null                  ; 2 uses
  br i1 %i.ax, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  br i1 %.not37, label %long_subtype_new.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ay = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !11
  tail call void @PyErr_SetString(ptr noundef %i.ay, ptr noundef nonnull @.str.96) #16
  br label %long_subtype_new.exit

bb.m:                                             ; preds = %bb.j
  br i1 %.not37, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.az = tail call ptr @PyNumber_Long(ptr noundef nonnull %1) #16
  br label %long_subtype_new.exit

bb.o:                                             ; preds = %bb.m
  %i.ba = tail call i64 @PyNumber_AsSsize_t(ptr noundef nonnull %2, ptr noundef null) #16 ; 6 uses
  %i.bb = icmp eq i64 %i.ba, -1
  br i1 %i.bb, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bc = tail call ptr @PyErr_Occurred() #16
end_hunk_11
