inline.NumInlined: 270
inline.NumDeleted: 27
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.formattable = type { %struct.fielddesc, %struct.fielddesc, %struct.fielddesc, %struct.fielddesc, %struct.fielddesc, %struct.fielddesc, %struct.fielddesc, %struct.fielddesc, %struct.fielddesc, %struct.fielddesc, %struct.fielddesc, %struct.fielddesc, %struct.fielddesc, %struct.fielddesc, %struct.fielddesc, %struct.fielddesc, %struct.fielddesc, %struct.fielddesc, %struct.fielddesc, %struct.fielddesc, %struct.fielddesc, %struct.fielddesc, %struct.fielddesc, %struct.fielddesc, %struct.fielddesc, %struct.fielddesc, %struct.fielddesc, %struct.fielddesc, %struct.fielddesc, %struct.fielddesc, %struct.fielddesc, %struct.fielddesc, %struct.fielddesc, %struct.fielddesc, %struct.fielddesc, %struct.fielddesc, [26 x i8] }
%struct.fielddesc = type { i8, ptr, ptr, ptr, ptr, ptr }
%struct._ffi_type = type { i64, i16, i16, ptr }
%struct.PyGetSetDef = type { ptr, ptr, ptr, ptr, ptr }
%struct._PyOnceFlag = type { i8 }
%struct._object = type { %union.anon, ptr }
%union.anon = type { i64 }
%struct._typeobject = type { %struct.PyVarObject, ptr, i64, i64, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8, i16 }
%struct.PyVarObject = type { %struct._object, i64 }

@.str = private unnamed_addr constant [14 x i8] c"ctypes.CField\00", align 1
@cfield_spec = hidden local_unnamed_addr global { ptr, i32, i32, i32, [4 x i8], ptr } { ptr @.str, i32 80, i32 0, i32 16640, [4 x i8] zeroinitializer, ptr @cfield_slots }, align 8
@formattable = internal global %struct.formattable zeroinitializer, align 8
@ffi_type_sint8 = external global %struct._ffi_type, align 8
@ffi_type_uint8 = external global %struct._ffi_type, align 8
@ffi_type_sint16 = external global %struct._ffi_type, align 8
@ffi_type_uint16 = external global %struct._ffi_type, align 8
@ffi_type_sint32 = external global %struct._ffi_type, align 8
@ffi_type_uint32 = external global %struct._ffi_type, align 8
@ffi_type_sint64 = external global %struct._ffi_type, align 8
@ffi_type_uint64 = external global %struct._ffi_type, align 8
@ffi_type_double = external global %struct._ffi_type, align 8
@ffi_type_complex_double = external global %struct._ffi_type, align 8
@ffi_type_complex_float = external global %struct._ffi_type, align 8
@ffi_type_complex_longdouble = external global %struct._ffi_type, align 8
@ffi_type_longdouble = external global %struct._ffi_type, align 8
@ffi_type_float = external global %struct._ffi_type, align 8
@.str.8 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"u\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@ffi_type_pointer = external global %struct._ffi_type, align 8
@.str.13 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"Structure/Union member\00", align 1
@PyCField_getset = internal global [5 x %struct.PyGetSetDef] [%struct.PyGetSetDef { ptr @.str.42, ptr @PyCField_get_legacy_size, ptr null, ptr @.str.43, ptr null }, %struct.PyGetSetDef { ptr @.str.24, ptr @PyCField_get_bit_size, ptr null, ptr @.str.44, ptr null }, %struct.PyGetSetDef { ptr @.str.45, ptr @PyCField_is_bitfield, ptr null, ptr @.str.46, ptr null }, %struct.PyGetSetDef { ptr @.str.47, ptr @PyCField_is_anonymous, ptr null, ptr @.str.48, ptr null }, %struct.PyGetSetDef zeroinitializer], align 16
@cfield_slots = internal global [11 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 65, [4 x i8] zeroinitializer, ptr @PyCField_new }, { i32, [4 x i8], ptr } { i32 52, [4 x i8] zeroinitializer, ptr @PyCField_dealloc }, { i32, [4 x i8], ptr } { i32 66, [4 x i8] zeroinitializer, ptr @PyCField_repr }, { i32, [4 x i8], ptr } { i32 56, [4 x i8] zeroinitializer, ptr @.str.16 }, { i32, [4 x i8], ptr } { i32 71, [4 x i8] zeroinitializer, ptr @PyCField_traverse }, { i32, [4 x i8], ptr } { i32 51, [4 x i8] zeroinitializer, ptr @PyCField_clear }, { i32, [4 x i8], ptr } { i32 73, [4 x i8] zeroinitializer, ptr @PyCField_getset }, { i32, [4 x i8], ptr } { i32 72, [4 x i8] zeroinitializer, ptr @PyCField_members }, { i32, [4 x i8], ptr } { i32 54, [4 x i8] zeroinitializer, ptr @PyCField_get }, { i32, [4 x i8], ptr } { i32 55, [4 x i8] zeroinitializer, ptr @PyCField_set }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@PyCField_new._keywords = internal constant [9 x ptr] [ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr null], align 16
@.str.18 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"byte_size\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"byte_offset\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"_internal_use\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"bit_size\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"bit_offset\00", align 1
@PyCField_new._parser = internal global { ptr, ptr, ptr, ptr, %struct._PyOnceFlag, [3 x i8], i32, i32, i32, i32, [4 x i8], ptr, ptr } { ptr null, ptr @PyCField_new._keywords, ptr @.str.26, ptr null, %struct._PyOnceFlag zeroinitializer, [3 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr null, ptr null }, align 8
@.str.26 = private unnamed_addr constant [7 x i8] c"CField\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@.str.27 = private unnamed_addr constant [16 x i8] c"argument 'name'\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@PyExc_TypeError = external local_unnamed_addr global ptr, align 8
@.str.29 = private unnamed_addr constant [24 x i8] c"cannot create %T object\00", align 1
@PyExc_ValueError = external local_unnamed_addr global ptr, align 8
@.str.30 = private unnamed_addr constant [52 x i8] c"byte size of field %R must not be negative, got %zd\00", align 1
@.str.31 = private unnamed_addr constant [34 x i8] c"type of field %R must be a C type\00", align 1
@.str.32 = private unnamed_addr constant [59 x i8] c"byte size of field %R (%zd) does not match type size (%zd)\00", align 1
@.str.33 = private unnamed_addr constant [35 x i8] c"bit fields not allowed for type %s\00", align 1
@.str.34 = private unnamed_addr constant [37 x i8] c"bit field %R size too large, got %zd\00", align 1
@.str.35 = private unnamed_addr constant [43 x i8] c"bit size of field %R out of range, got %zd\00", align 1
@.str.36 = private unnamed_addr constant [45 x i8] c"bit offset of field %R out of range, got %zd\00", align 1
@.str.37 = private unnamed_addr constant [50 x i8] c"bit field %R overflows its type (%zd + %zd > %zd)\00", align 1
@.str.38 = private unnamed_addr constant [54 x i8] c"field %R: bit_offset must be specified if bit_size is\00", align 1
@.str.39 = private unnamed_addr constant [17 x i8] c"has no _stginfo_\00", align 1
@.str.40 = private unnamed_addr constant [55 x i8] c"<%T %R type=%s, ofs=%zd, bit_size=%zd, bit_offset=%zd>\00", align 1
@.str.41 = private unnamed_addr constant [35 x i8] c"<%T %R type=%s, ofs=%zd, size=%zd>\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.43 = private unnamed_addr constant [97 x i8] c"size in bytes of this field. For bitfields, this is a legacy packed value; use byte_size instead\00", align 1
@.str.44 = private unnamed_addr constant [27 x i8] c"size of this field in bits\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"is_bitfield\00", align 1
@.str.46 = private unnamed_addr constant [27 x i8] c"true if this is a bitfield\00", align 1
@.str.47 = private unnamed_addr constant [13 x i8] c"is_anonymous\00", align 1
@.str.48 = private unnamed_addr constant [32 x i8] c"true if this field is anonymous\00", align 1
@.str.49 = private unnamed_addr constant [19 x i8] c"name of this field\00", align 1
@.str.50 = private unnamed_addr constant [19 x i8] c"type of this field\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.52 = private unnamed_addr constant [52 x i8] c"offset in bytes of this field (same as byte_offset)\00", align 1
@.str.53 = private unnamed_addr constant [67 x i8] c"offset in bytes of this field. For bitfields: excludes bit_offset.\00", align 1
@.str.54 = private unnamed_addr constant [28 x i8] c"size of this field in bytes\00", align 1
@.str.55 = private unnamed_addr constant [76 x i8] c"additional offset in bits (relative to byte_offset); zero for non-bitfields\00", align 1
@PyCField_members = internal global [7 x { ptr, i32, [4 x i8], i64, i32, [4 x i8], ptr }] [{ ptr, i32, [4 x i8], i64, i32, [4 x i8], ptr } { ptr @.str.18, i32 16, [4 x i8] zeroinitializer, i64 72, i32 1, [4 x i8] zeroinitializer, ptr @.str.49 }, { ptr, i32, [4 x i8], i64, i32, [4 x i8], ptr } { ptr @.str.19, i32 16, [4 x i8] zeroinitializer, i64 40, i32 1, [4 x i8] zeroinitializer, ptr @.str.50 }, { ptr, i32, [4 x i8], i64, i32, [4 x i8], ptr } { ptr @.str.51, i32 19, [4 x i8] zeroinitializer, i64 16, i32 1, [4 x i8] zeroinitializer, ptr @.str.52 }, { ptr, i32, [4 x i8], i64, i32, [4 x i8], ptr } { ptr @.str.21, i32 19, [4 x i8] zeroinitializer, i64 16, i32 1, [4 x i8] zeroinitializer, ptr @.str.53 }, { ptr, i32, [4 x i8], i64, i32, [4 x i8], ptr } { ptr @.str.20, i32 19, [4 x i8] zeroinitializer, i64 24, i32 1, [4 x i8] zeroinitializer, ptr @.str.54 }, { ptr, i32, [4 x i8], i64, i32, [4 x i8], ptr } { ptr @.str.25, i32 9, [4 x i8] zeroinitializer, i64 66, i32 1, [4 x i8] zeroinitializer, ptr @.str.55 }, { ptr, i32, [4 x i8], i64, i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.57 = private unnamed_addr constant [21 x i8] c"not a ctype instance\00", align 1
@.str.58 = private unnamed_addr constant [23 x i8] c"can't delete attribute\00", align 1
@.str.59 = private unnamed_addr constant [94 x i8] c"one character bytes, bytearray, or an integer in range(256) expected, not bytes of length %zd\00", align 1
@PyByteArray_Type = external global %struct._typeobject, align 8
@.str.60 = private unnamed_addr constant [98 x i8] c"one character bytes, bytearray, or an integer in range(256) expected, not bytearray of length %zd\00", align 1
@.str.61 = private unnamed_addr constant [26 x i8] c"integer not in range(256)\00", align 1
@.str.62 = private unnamed_addr constant [77 x i8] c"one character bytes, bytearray, or an integer in range(256) expected, not %T\00", align 1
@.str.63 = private unnamed_addr constant [49 x i8] c"a unicode character expected, not instance of %T\00", align 1
@.str.64 = private unnamed_addr constant [57 x i8] c"a unicode character expected, not a string of length %zd\00", align 1
@.str.65 = private unnamed_addr constant [64 x i8] c"the string %A cannot be converted to a single wchar_t character\00", align 1
@.str.66 = private unnamed_addr constant [25 x i8] c"expected bytes, %s found\00", align 1
@.str.67 = private unnamed_addr constant [41 x i8] c"bytes too long (%zd, maximum length %zd)\00", align 1
@.str.68 = private unnamed_addr constant [31 x i8] c"cannot be converted to pointer\00", align 1
@.str.69 = private unnamed_addr constant [57 x i8] c"bytes or integer address expected instead of %s instance\00", align 1
@.str.70 = private unnamed_addr constant [47 x i8] c"unicode string expected instead of %s instance\00", align 1
@.str.71 = private unnamed_addr constant [42 x i8] c"string too long (%zd, maximum length %zd)\00", align 1
@.str.72 = private unnamed_addr constant [66 x i8] c"unicode string or integer address expected instead of %s instance\00", align 1
@.str.73 = private unnamed_addr constant [23 x i8] c"_ctypes/cfield.c pymem\00", align 1
@.str.74 = private unnamed_addr constant [17 x i8] c"PyObject is NULL\00", align 1
@switch.table._ctypes_get_fielddesc = private unnamed_addr constant [60 x ptr] [ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 1632), ptr poison, ptr poison, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 480), ptr poison, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 672), ptr poison, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 624), ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 720), ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 912), ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 1008), ptr poison, ptr poison, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 1104), ptr poison, ptr poison, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 1584), ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 1248), ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 1200), ptr poison, ptr poison, ptr poison, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 1392), ptr poison, ptr poison, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 1488), ptr poison, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 1440), ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 432), ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 528), ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 576), ptr poison, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 816), ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 768), ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 864), ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 960), ptr poison, ptr poison, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 1056), ptr poison, ptr poison, ptr poison, ptr poison, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 1152), ptr poison, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 384), ptr poison, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 1344), ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 1536), ptr poison, ptr poison, ptr poison, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 1296)], align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ctypes_init_fielddesc() local_unnamed_addr #0 {
bb.a:
  store i64 0, ptr @formattable, align 8
  store ptr @ffi_type_sint8, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 8), align 8, !tbaa !10
  store ptr @i8_set, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 16), align 8, !tbaa !13
  store ptr @i8_get, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 24), align 8, !tbaa !13
  store ptr @i8_set, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 32), align 8, !tbaa !13
  store ptr @i8_get, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 40), align 8, !tbaa !13
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 48), align 8
  store ptr @ffi_type_uint8, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 56), align 8, !tbaa !10
  store ptr @u8_set, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 64), align 8, !tbaa !13
  store ptr @u8_get, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 72), align 8, !tbaa !13
  store ptr @u8_set, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 80), align 8, !tbaa !13
  store ptr @u8_get, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 88), align 8, !tbaa !13
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 96), align 8
  store ptr @ffi_type_sint16, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 104), align 8, !tbaa !10
  store ptr @i16_set, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 112), align 8, !tbaa !13
  store ptr @i16_get, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 120), align 8, !tbaa !13
  store ptr @i16_set_sw, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 128), align 8, !tbaa !13
  store ptr @i16_get_sw, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 136), align 8, !tbaa !13
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 144), align 8
  store ptr @ffi_type_uint16, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 152), align 8, !tbaa !10
  store ptr @u16_set, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 160), align 8, !tbaa !13
  store ptr @u16_get, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 168), align 8, !tbaa !13
  store ptr @u16_set_sw, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 176), align 8, !tbaa !13
  store ptr @u16_get_sw, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 184), align 8, !tbaa !13
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 192), align 8
  store ptr @ffi_type_sint32, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 200), align 8, !tbaa !10
  store ptr @i32_set, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 208), align 8, !tbaa !13
  store ptr @i32_get, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 216), align 8, !tbaa !13
  store ptr @i32_set_sw, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 224), align 8, !tbaa !13
  store ptr @i32_get_sw, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 232), align 8, !tbaa !13
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 240), align 8
  store ptr @ffi_type_uint32, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 248), align 8, !tbaa !10
  store ptr @u32_set, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 256), align 8, !tbaa !13
  store ptr @u32_get, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 264), align 8, !tbaa !13
  store ptr @u32_set_sw, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 272), align 8, !tbaa !13
  store ptr @u32_get_sw, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 280), align 8, !tbaa !13
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 288), align 8
  store ptr @ffi_type_sint64, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 296), align 8, !tbaa !10
  store ptr @i64_set, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 304), align 8, !tbaa !13
  store ptr @i64_get, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 312), align 8, !tbaa !13
  store ptr @i64_set_sw, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 320), align 8, !tbaa !13
  store ptr @i64_get_sw, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 328), align 8, !tbaa !13
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 336), align 8
  store ptr @ffi_type_uint64, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 344), align 8, !tbaa !10
  store ptr @u64_set, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 352), align 8, !tbaa !13
  store ptr @u64_get, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 360), align 8, !tbaa !13
  store ptr @u64_set_sw, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 368), align 8, !tbaa !13
  store ptr @u64_get_sw, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 376), align 8, !tbaa !13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) getelementptr inbounds nuw (i8, ptr @formattable, i64 432), ptr noundef nonnull align 8 dereferenceable(48) @formattable, i64 48, i1 false), !tbaa.struct !14
  store i8 98, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 432), align 8, !tbaa !16
  store ptr @ffi_type_sint8, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 440), align 8, !tbaa !19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) getelementptr inbounds nuw (i8, ptr @formattable, i64 480), ptr noundef nonnull align 8 dereferenceable(48) getelementptr inbounds nuw (i8, ptr @formattable, i64 48), i64 48, i1 false), !tbaa.struct !14
  store i8 66, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 480), align 8, !tbaa !20
  store ptr @ffi_type_uint8, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 488), align 8, !tbaa !21
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) getelementptr inbounds nuw (i8, ptr @formattable, i64 864), ptr noundef nonnull align 8 dereferenceable(48) getelementptr inbounds nuw (i8, ptr @formattable, i64 96), i64 48, i1 false), !tbaa.struct !14
  store i8 104, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 864), align 8, !tbaa !22
  store ptr @ffi_type_sint16, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 872), align 8, !tbaa !23
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) getelementptr inbounds nuw (i8, ptr @formattable, i64 912), ptr noundef nonnull align 8 dereferenceable(48) getelementptr inbounds nuw (i8, ptr @formattable, i64 144), i64 48, i1 false), !tbaa.struct !14
  store i8 72, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 912), align 8, !tbaa !24
  store ptr @ffi_type_uint16, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 920), align 8, !tbaa !25
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) getelementptr inbounds nuw (i8, ptr @formattable, i64 960), ptr noundef nonnull align 8 dereferenceable(48) getelementptr inbounds nuw (i8, ptr @formattable, i64 192), i64 48, i1 false), !tbaa.struct !14
  store i8 105, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 960), align 8, !tbaa !26
  store ptr @ffi_type_sint32, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 968), align 8, !tbaa !27
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) getelementptr inbounds nuw (i8, ptr @formattable, i64 1008), ptr noundef nonnull align 8 dereferenceable(48) getelementptr inbounds nuw (i8, ptr @formattable, i64 240), i64 48, i1 false), !tbaa.struct !14
  store i8 73, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 1008), align 8, !tbaa !28
  store ptr @ffi_type_uint32, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 1016), align 8, !tbaa !29
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) getelementptr inbounds nuw (i8, ptr @formattable, i64 1056), ptr noundef nonnull align 8 dereferenceable(48) getelementptr inbounds nuw (i8, ptr @formattable, i64 288), i64 48, i1 false), !tbaa.struct !14
  store i8 108, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 1056), align 8, !tbaa !30
  store ptr @ffi_type_sint64, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 1064), align 8, !tbaa !31
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) getelementptr inbounds nuw (i8, ptr @formattable, i64 1104), ptr noundef nonnull align 8 dereferenceable(48) getelementptr inbounds nuw (i8, ptr @formattable, i64 336), i64 48, i1 false), !tbaa.struct !14
  store i8 76, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 1104), align 8, !tbaa !32
  store ptr @ffi_type_uint64, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 1112), align 8, !tbaa !33
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) getelementptr inbounds nuw (i8, ptr @formattable, i64 1152), ptr noundef nonnull align 8 dereferenceable(48) getelementptr inbounds nuw (i8, ptr @formattable, i64 288), i64 48, i1 false), !tbaa.struct !14
  store i8 113, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 1152), align 8, !tbaa !34
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) getelementptr inbounds nuw (i8, ptr @formattable, i64 1200), ptr noundef nonnull align 8 dereferenceable(48) getelementptr inbounds nuw (i8, ptr @formattable, i64 336), i64 48, i1 false), !tbaa.struct !14
  store i8 81, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 1200), align 8, !tbaa !35
  store i8 100, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 576), align 8, !tbaa !15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) getelementptr inbounds nuw (i8, ptr @formattable, i64 577), i8 0, i64 7, i1 false)
  store ptr @ffi_type_double, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 584), align 8, !tbaa !10
  store ptr @d_set, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 592), align 8, !tbaa !13
  store ptr @d_get, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 600), align 8, !tbaa !13
  store ptr @d_set_sw, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 608), align 8, !tbaa !13
  store ptr @d_get_sw, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 616), align 8, !tbaa !13
  store i8 68, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 672), align 8, !tbaa !15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) getelementptr inbounds nuw (i8, ptr @formattable, i64 673), i8 0, i64 7, i1 false)
  store ptr @ffi_type_complex_double, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 680), align 8, !tbaa !10
  store ptr @D_set, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 688), align 8, !tbaa !13
  store ptr @D_get, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 696), align 8, !tbaa !13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @formattable, i64 704), i8 0, i64 16, i1 false)
  store i8 70, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 624), align 8, !tbaa !15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) getelementptr inbounds nuw (i8, ptr @formattable, i64 625), i8 0, i64 7, i1 false)
  store ptr @ffi_type_complex_float, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 632), align 8, !tbaa !10
  store ptr @F_set, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 640), align 8, !tbaa !13
  store ptr @F_get, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 648), align 8, !tbaa !13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @formattable, i64 656), i8 0, i64 16, i1 false)
  store i8 71, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 720), align 8, !tbaa !15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) getelementptr inbounds nuw (i8, ptr @formattable, i64 721), i8 0, i64 7, i1 false)
  store ptr @ffi_type_complex_longdouble, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 728), align 8, !tbaa !10
  store ptr @G_set, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 736), align 8, !tbaa !13
  store ptr @G_get, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 744), align 8, !tbaa !13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @formattable, i64 752), i8 0, i64 16, i1 false)
  store i8 103, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 768), align 8, !tbaa !15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) getelementptr inbounds nuw (i8, ptr @formattable, i64 769), i8 0, i64 7, i1 false)
  store ptr @ffi_type_longdouble, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 776), align 8, !tbaa !10
  store ptr @g_set, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 784), align 8, !tbaa !13
  store ptr @g_get, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 792), align 8, !tbaa !13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @formattable, i64 800), i8 0, i64 16, i1 false)
  store i8 102, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 816), align 8, !tbaa !15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) getelementptr inbounds nuw (i8, ptr @formattable, i64 817), i8 0, i64 7, i1 false)
  store ptr @ffi_type_float, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 824), align 8, !tbaa !10
  store ptr @f_set, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 832), align 8, !tbaa !13
  store ptr @f_get, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 840), align 8, !tbaa !13
  store ptr @f_set_sw, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 848), align 8, !tbaa !13
  store ptr @f_get_sw, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 856), align 8, !tbaa !13
  store i8 118, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 1536), align 8, !tbaa !15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) getelementptr inbounds nuw (i8, ptr @formattable, i64 1537), i8 0, i64 7, i1 false)
  store ptr @ffi_type_sint16, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 1544), align 8, !tbaa !10
  store ptr @v_set, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 1552), align 8, !tbaa !13
  store ptr @v_get, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 1560), align 8, !tbaa !13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @formattable, i64 1568), i8 0, i64 16, i1 false)
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 8), align 8, !tbaa !36
  store i8 99, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 528), align 8, !tbaa !15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) getelementptr inbounds nuw (i8, ptr @formattable, i64 529), i8 0, i64 7, i1 false)
  store ptr %i.a, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 536), align 8, !tbaa !10
  store ptr @c_set, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 544), align 8, !tbaa !13
  store ptr @c_get, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 552), align 8, !tbaa !13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @formattable, i64 560), i8 0, i64 16, i1 false)
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 200), align 8, !tbaa !36
  store i8 117, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 1344), align 8, !tbaa !15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) getelementptr inbounds nuw (i8, ptr @formattable, i64 1345), i8 0, i64 7, i1 false)
  store ptr %i.b, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 1352), align 8, !tbaa !10
  store ptr @u_set, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 1360), align 8, !tbaa !13
  store ptr @u_get, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 1368), align 8, !tbaa !13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @formattable, i64 1376), i8 0, i64 16, i1 false)
  store i8 115, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 384), align 8, !tbaa !15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) getelementptr inbounds nuw (i8, ptr @formattable, i64 385), i8 0, i64 7, i1 false)
  store ptr @ffi_type_pointer, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 392), align 8, !tbaa !10
  store ptr @s_set, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 400), align 8, !tbaa !13
  store ptr @s_get, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 408), align 8, !tbaa !13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @formattable, i64 416), i8 0, i64 16, i1 false)
  store i8 80, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 1248), align 8, !tbaa !15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) getelementptr inbounds nuw (i8, ptr @formattable, i64 1249), i8 0, i64 7, i1 false)
  store ptr @ffi_type_pointer, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 1256), align 8, !tbaa !10
  store ptr @P_set, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 1264), align 8, !tbaa !13
  store ptr @P_get, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 1272), align 8, !tbaa !13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @formattable, i64 1280), i8 0, i64 16, i1 false)
  store i8 122, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 1296), align 8, !tbaa !15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) getelementptr inbounds nuw (i8, ptr @formattable, i64 1297), i8 0, i64 7, i1 false)
  store ptr @ffi_type_pointer, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 1304), align 8, !tbaa !10
  store ptr @z_set, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 1312), align 8, !tbaa !13
  store ptr @z_get, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 1320), align 8, !tbaa !13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @formattable, i64 1328), i8 0, i64 16, i1 false)
  store i8 85, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 1392), align 8, !tbaa !15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) getelementptr inbounds nuw (i8, ptr @formattable, i64 1393), i8 0, i64 7, i1 false)
  store ptr @ffi_type_pointer, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 1400), align 8, !tbaa !10
  store ptr @U_set, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 1408), align 8, !tbaa !13
  store ptr @U_get, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 1416), align 8, !tbaa !13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @formattable, i64 1424), i8 0, i64 16, i1 false)
  store i8 90, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 1440), align 8, !tbaa !15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) getelementptr inbounds nuw (i8, ptr @formattable, i64 1441), i8 0, i64 7, i1 false)
  store ptr @ffi_type_pointer, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 1448), align 8, !tbaa !10
  store ptr @Z_set, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 1456), align 8, !tbaa !13
  store ptr @Z_get, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 1464), align 8, !tbaa !13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @formattable, i64 1472), i8 0, i64 16, i1 false)
  store i8 79, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 1584), align 8, !tbaa !15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) getelementptr inbounds nuw (i8, ptr @formattable, i64 1585), i8 0, i64 7, i1 false)
  store ptr @ffi_type_pointer, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 1592), align 8, !tbaa !10
  store ptr @O_set, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 1600), align 8, !tbaa !13
  store ptr @O_get, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 1608), align 8, !tbaa !13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @formattable, i64 1616), i8 0, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) getelementptr inbounds nuw (i8, ptr @formattable, i64 1632), ptr noundef nonnull align 8 dereferenceable(48) getelementptr inbounds nuw (i8, ptr @formattable, i64 48), i64 48, i1 false), !tbaa.struct !14
  store i8 63, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 1632), align 8, !tbaa !37
  store ptr @bool_set, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 1648), align 8, !tbaa !38
  store ptr @bool_get, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 1656), align 8, !tbaa !39
  store i8 99, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 1728), align 8, !tbaa !15
  %i.c = load i8, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 432), align 8, !tbaa !16
  %.not180 = icmp eq i8 %i.c, 0
  br i1 %.not180, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 98, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 1729), align 1, !tbaa !15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.1 = phi i32 [ 2, %bb.b ], [ 1, %bb.a ]        ; 3 uses
  %i.d = load i8, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 480), align 8, !tbaa !20
  %.not181 = icmp eq i8 %i.d, 0
  br i1 %.not181, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = add nuw nsw i32 %.1, 1
  %i.f = zext nneg i32 %.1 to i64
  %i.g = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 1728), i64 %i.f
  store i8 66, ptr %i.g, align 1, !tbaa !15
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.2 = phi i32 [ %i.e, %bb.d ], [ %.1, %bb.c ]   ; 3 uses
  %i.h = load i8, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 864), align 8, !tbaa !22
  %.not182 = icmp eq i8 %i.h, 0
  br i1 %.not182, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = add nuw nsw i32 %.2, 1
  %i.j = zext nneg i32 %.2 to i64
  %i.k = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 1728), i64 %i.j
  store i8 104, ptr %i.k, align 1, !tbaa !15
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.3 = phi i32 [ %i.i, %bb.f ], [ %.2, %bb.e ]   ; 3 uses
  %i.l = load i8, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 912), align 8, !tbaa !24
  %.not183 = icmp eq i8 %i.l, 0
  br i1 %.not183, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = add nuw nsw i32 %.3, 1
  %i.n = zext nneg i32 %.3 to i64
  %i.o = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 1728), i64 %i.n
  store i8 72, ptr %i.o, align 1, !tbaa !15
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.4 = phi i32 [ %i.m, %bb.h ], [ %.3, %bb.g ]   ; 3 uses
  %i.p = load i8, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 960), align 8, !tbaa !26
  %.not184 = icmp eq i8 %i.p, 0
  br i1 %.not184, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = add nuw nsw i32 %.4, 1
  %i.r = zext nneg i32 %.4 to i64
  %i.s = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 1728), i64 %i.r
  store i8 105, ptr %i.s, align 1, !tbaa !15
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.5 = phi i32 [ %i.q, %bb.j ], [ %.4, %bb.i ]   ; 3 uses
  %i.t = load i8, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 1008), align 8, !tbaa !28
  %.not185 = icmp eq i8 %i.t, 0
  br i1 %.not185, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = add nuw nsw i32 %.5, 1
  %i.v = zext nneg i32 %.5 to i64
  %i.w = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 1728), i64 %i.v
  store i8 73, ptr %i.w, align 1, !tbaa !15
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.6 = phi i32 [ %i.u, %bb.l ], [ %.5, %bb.k ]   ; 3 uses
  %i.x = load i8, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 1056), align 8, !tbaa !30
  %.not186 = icmp eq i8 %i.x, 0
  br i1 %.not186, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.y = add nuw nsw i32 %.6, 1
  %i.z = zext nneg i32 %.6 to i64
  %i.aa = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 1728), i64 %i.z
  store i8 108, ptr %i.aa, align 1, !tbaa !15
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.7 = phi i32 [ %i.y, %bb.n ], [ %.6, %bb.m ]   ; 3 uses
  %i.ab = load i8, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 1104), align 8, !tbaa !32
  %.not187 = icmp eq i8 %i.ab, 0
  br i1 %.not187, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ac = add nuw nsw i32 %.7, 1
  %i.ad = zext nneg i32 %.7 to i64
  %i.ae = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 1728), i64 %i.ad
  store i8 76, ptr %i.ae, align 1, !tbaa !15
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.8 = phi i32 [ %i.ac, %bb.p ], [ %.7, %bb.o ]  ; 3 uses
  %i.af = load i8, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 576), align 8, !tbaa !40
  %.not188 = icmp eq i8 %i.af, 0
  br i1 %.not188, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ag = add nuw nsw i32 %.8, 1
  %i.ah = zext nneg i32 %.8 to i64
  %i.ai = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 1728), i64 %i.ah
  store i8 100, ptr %i.ai, align 1, !tbaa !15
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.9 = phi i32 [ %i.ag, %bb.r ], [ %.8, %bb.q ]  ; 3 uses
  %i.aj = load i8, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 672), align 8, !tbaa !41
  %.not189 = icmp eq i8 %i.aj, 0
  br i1 %.not189, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ak = add nuw nsw i32 %.9, 1
  %i.al = zext nneg i32 %.9 to i64
  %i.am = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 1728), i64 %i.al
  store i8 68, ptr %i.am, align 1, !tbaa !15
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.10 = phi i32 [ %i.ak, %bb.t ], [ %.9, %bb.s ] ; 3 uses
  %i.an = load i8, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 624), align 8, !tbaa !42
  %.not190 = icmp eq i8 %i.an, 0
  br i1 %.not190, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ao = add nuw nsw i32 %.10, 1
  %i.ap = zext nneg i32 %.10 to i64
  %i.aq = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 1728), i64 %i.ap
  store i8 70, ptr %i.aq, align 1, !tbaa !15
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.11 = phi i32 [ %i.ao, %bb.v ], [ %.10, %bb.u ] ; 3 uses
  %i.ar = load i8, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 720), align 8, !tbaa !43
  %.not191 = icmp eq i8 %i.ar, 0
  br i1 %.not191, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.as = add nuw nsw i32 %.11, 1
  %i.at = zext nneg i32 %.11 to i64
  %i.au = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 1728), i64 %i.at
  store i8 71, ptr %i.au, align 1, !tbaa !15
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.12 = phi i32 [ %i.as, %bb.x ], [ %.11, %bb.w ] ; 3 uses
  %i.av = zext nneg i32 %.12 to i64
  %i.aw = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 1728), i64 %i.av
  %i.ax = add nuw nsw i32 %.12, 4                 ; 2 uses
  store <4 x i8> <i8 102, i8 117, i8 122, i8 90>, ptr %i.aw, align 1, !tbaa !15
  %i.ay = load i8, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 1152), align 8, !tbaa !34
  %.not196 = icmp eq i8 %i.ay, 0
  br i1 %.not196, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.az = add nuw nsw i32 %.12, 5
  %i.ba = zext nneg i32 %i.ax to i64
  %i.bb = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 1728), i64 %i.ba
  store i8 113, ptr %i.bb, align 1, !tbaa !15
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.17 = phi i32 [ %i.az, %bb.z ], [ %i.ax, %bb.y ] ; 3 uses
  %i.bc = load i8, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 1200), align 8, !tbaa !35
  %.not197 = icmp eq i8 %i.bc, 0
  br i1 %.not197, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bd = add nuw nsw i32 %.17, 1
  %i.be = zext nneg i32 %.17 to i64
  %i.bf = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 1728), i64 %i.be
  store i8 81, ptr %i.bf, align 1, !tbaa !15
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.18 = phi i32 [ %i.bd, %bb.ab ], [ %.17, %bb.aa ] ; 3 uses
  %i.bg = load i8, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 1248), align 8, !tbaa !44
  %.not198 = icmp eq i8 %i.bg, 0
  br i1 %.not198, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bh = add nuw nsw i32 %.18, 1
  %i.bi = zext nneg i32 %.18 to i64
  %i.bj = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @formattable, i64 1728), i64 %i.bi
  store i8 80, ptr %i.bj, align 1, !tbaa !15
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
end_hunk_0
