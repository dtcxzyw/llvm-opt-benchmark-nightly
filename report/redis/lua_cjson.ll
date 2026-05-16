inline.NumInlined: 83
inline.NumDeleted: 30
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.strbuf_t = type { ptr, i64, i64, i32, i32, i32 }
%struct.json_parse_t = type { ptr, ptr, ptr, ptr, i32 }
%struct.json_token_t = type { i32, i64, %union.anon, i64 }
%union.anon = type { ptr }

@.str = private unnamed_addr constant [6 x i8] c"cjson\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"encode\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"decode\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"decode_array_with_array_mt\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"encode_sparse_array\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"encode_max_depth\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"decode_max_depth\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"encode_number_precision\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"encode_keep_buffer\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"encode_invalid_numbers\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"decode_invalid_numbers\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"_NAME\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"2.1.0\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"_VERSION\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"expected 1 argument\00", align 1
@.str.17 = private unnamed_addr constant [41 x i8] c"BUG: Unable to fetch CJSON configuration\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"max lua stack reached\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"__is_cjson_array\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"type not supported\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"\\u0000\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"\\u0001\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"\\u0002\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"\\u0003\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"\\u0004\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"\\u0005\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"\\u0006\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"\\u0007\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"\\b\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"\\t\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"\\n\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"\\u000b\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"\\f\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"\\r\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"\\u000e\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"\\u000f\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"\\u0010\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"\\u0011\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"\\u0012\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"\\u0013\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"\\u0014\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"\\u0015\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"\\u0016\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"\\u0017\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"\\u0018\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"\\u0019\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"\\u001a\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"\\u001b\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"\\u001c\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"\\u001d\00", align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"\\u001e\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"\\u001f\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c"\\\22\00", align 1
@.str.56 = private unnamed_addr constant [3 x i8] c"\\/\00", align 1
@.str.57 = private unnamed_addr constant [3 x i8] c"\\\\\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"\\u007f\00", align 1
@char2escape = internal unnamed_addr constant <{ [128 x ptr], [128 x ptr] }> <{ [128 x ptr] [ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr null, ptr null, ptr @.str.55, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.56, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.57, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.58], [128 x ptr] zeroinitializer }>, align 16
@.str.60 = private unnamed_addr constant [23 x i8] c"must not be NaN or Inf\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c"nan\00", align 1
@.str.62 = private unnamed_addr constant [41 x i8] c"Cannot serialise, excessive nesting (%d)\00", align 1
@.str.63 = private unnamed_addr constant [25 x i8] c"excessively sparse array\00", align 1
@.str.65 = private unnamed_addr constant [37 x i8] c"table key must be a number or string\00", align 1
@.str.66 = private unnamed_addr constant [24 x i8] c"Cannot serialise %s: %s\00", align 1
@.str.67 = private unnamed_addr constant [46 x i8] c"JSON parser does not support UTF-16 or UTF-32\00", align 1
@.str.68 = private unnamed_addr constant [8 x i8] c"the end\00", align 1
@.str.69 = private unnamed_addr constant [14 x i8] c"invalid token\00", align 1
@.str.70 = private unnamed_addr constant [15 x i8] c"invalid number\00", align 1
@.str.71 = private unnamed_addr constant [18 x i8] c"*json->ptr == '\22'\00", align 1
@.str.72 = private unnamed_addr constant [12 x i8] c"lua_cjson.c\00", align 1
@__PRETTY_FUNCTION__.json_next_string_token = private unnamed_addr constant [60 x i8] c"void json_next_string_token(json_parse_t *, json_token_t *)\00", align 1
@.str.73 = private unnamed_addr constant [25 x i8] c"unexpected end of string\00", align 1
@.str.74 = private unnamed_addr constant [28 x i8] c"invalid unicode escape code\00", align 1
@.str.75 = private unnamed_addr constant [20 x i8] c"invalid escape code\00", align 1
@.str.76 = private unnamed_addr constant [4 x i8] c"inf\00", align 1
@.str.77 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.78 = private unnamed_addr constant [18 x i8] c"object key string\00", align 1
@.str.79 = private unnamed_addr constant [6 x i8] c"colon\00", align 1
@.str.80 = private unnamed_addr constant [20 x i8] c"comma or object end\00", align 1
@.str.81 = private unnamed_addr constant [59 x i8] c"Found too many nested data structures (%d) at character %d\00", align 1
@.str.82 = private unnamed_addr constant [19 x i8] c"comma or array end\00", align 1
@json_token_type_name = internal unnamed_addr constant [15 x ptr] [ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr null], align 16
@.str.83 = private unnamed_addr constant [41 x i8] c"Expected %s but found %s at character %d\00", align 1
@.str.84 = private unnamed_addr constant [12 x i8] c"T_OBJ_BEGIN\00", align 1
@.str.85 = private unnamed_addr constant [10 x i8] c"T_OBJ_END\00", align 1
@.str.86 = private unnamed_addr constant [12 x i8] c"T_ARR_BEGIN\00", align 1
@.str.87 = private unnamed_addr constant [10 x i8] c"T_ARR_END\00", align 1
@.str.88 = private unnamed_addr constant [9 x i8] c"T_STRING\00", align 1
@.str.89 = private unnamed_addr constant [9 x i8] c"T_NUMBER\00", align 1
@.str.90 = private unnamed_addr constant [10 x i8] c"T_BOOLEAN\00", align 1
@.str.91 = private unnamed_addr constant [7 x i8] c"T_NULL\00", align 1
@.str.92 = private unnamed_addr constant [8 x i8] c"T_COLON\00", align 1
@.str.93 = private unnamed_addr constant [8 x i8] c"T_COMMA\00", align 1
@.str.94 = private unnamed_addr constant [6 x i8] c"T_END\00", align 1
@.str.95 = private unnamed_addr constant [13 x i8] c"T_WHITESPACE\00", align 1
@.str.96 = private unnamed_addr constant [8 x i8] c"T_ERROR\00", align 1
@.str.97 = private unnamed_addr constant [10 x i8] c"T_UNKNOWN\00", align 1
@.str.98 = private unnamed_addr constant [25 x i8] c"found too many arguments\00", align 1
@json_enum_option.bool_options = internal global [3 x ptr] [ptr @.str.99, ptr @.str.100, ptr null], align 16
@.str.99 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.100 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.101 = private unnamed_addr constant [35 x i8] c"expected integer between %d and %d\00", align 1
@json_cfg_encode_invalid_numbers.options = internal global [4 x ptr] [ptr @.str.99, ptr @.str.100, ptr @.str.12, ptr null], align 16
@.str.102 = private unnamed_addr constant [5 x i8] c"__gc\00", align 1
@.str.103 = private unnamed_addr constant [18 x i8] c"too many upvalues\00", align 1
@.str.104 = private unnamed_addr constant [48 x i8] c"Memory allocation error in CJSON protected call\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @luaopen_cjson(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @lua_cjson_new(ptr noundef %0) ; 0 uses
  tail call void @lua_pushvalue(ptr noundef %0, i32 noundef -1) #12
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -10002, ptr noundef nonnull @.str) #12
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @lua_cjson_new(ptr noundef %0) #0 {
vector.ph:
  tail call void (...) @fpconv_init() #12
  tail call void @lua_createtable(ptr noundef %0, i32 noundef 0, i32 noundef 0) #12
  %i.a = tail call ptr @lua_newuserdata(ptr noundef %0, i64 noundef 1360) #12 ; 103 uses
  tail call void @lua_createtable(ptr noundef %0, i32 noundef 0, i32 noundef 0) #12
  tail call void @lua_pushcclosure(ptr noundef %0, ptr noundef nonnull @json_destroy_config, i32 noundef 0) #12
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.102) #12
  %i.b = tail call i32 @lua_setmetatable(ptr noundef %0, i32 noundef -2) #12 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1320
  store <4 x i32> <i32 0, i32 2, i32 10, i32 1000>, ptr %i.c, align 8, !tbaa !4
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1352
  store i32 1000, ptr %i.d, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1336
  store <4 x i32> <i32 0, i32 14, i32 1, i32 1>, ptr %i.e, align 8, !tbaa !4
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1356
  store i32 0, ptr %i.f, align 4, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1280
  tail call void @strbuf_init(ptr noundef nonnull %i.g, i64 noundef 0) #12
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <4 x i32> splat (i32 12), ptr %i.a, align 8, !tbaa !4
  store <4 x i32> splat (i32 12), ptr %i.h, align 8, !tbaa !4
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store <4 x i32> splat (i32 12), ptr %i.i, align 8, !tbaa !4
  store <4 x i32> splat (i32 12), ptr %i.j, align 8, !tbaa !4
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store <4 x i32> splat (i32 12), ptr %i.k, align 8, !tbaa !4
  store <4 x i32> splat (i32 12), ptr %i.l, align 8, !tbaa !4
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store <4 x i32> splat (i32 12), ptr %i.m, align 8, !tbaa !4
  store <4 x i32> splat (i32 12), ptr %i.n, align 8, !tbaa !4
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store <4 x i32> splat (i32 12), ptr %i.o, align 8, !tbaa !4
  store <4 x i32> splat (i32 12), ptr %i.p, align 8, !tbaa !4
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store <4 x i32> splat (i32 12), ptr %i.q, align 8, !tbaa !4
  store <4 x i32> splat (i32 12), ptr %i.r, align 8, !tbaa !4
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store <4 x i32> splat (i32 12), ptr %i.s, align 8, !tbaa !4
  store <4 x i32> splat (i32 12), ptr %i.t, align 8, !tbaa !4
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store <4 x i32> splat (i32 12), ptr %i.u, align 8, !tbaa !4
  store <4 x i32> splat (i32 12), ptr %i.v, align 8, !tbaa !4
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  store <4 x i32> splat (i32 12), ptr %i.w, align 8, !tbaa !4
  store <4 x i32> splat (i32 12), ptr %i.x, align 8, !tbaa !4
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  store <4 x i32> splat (i32 12), ptr %i.y, align 8, !tbaa !4
  store <4 x i32> splat (i32 12), ptr %i.z, align 8, !tbaa !4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  store <4 x i32> splat (i32 12), ptr %i.aa, align 8, !tbaa !4
  store <4 x i32> splat (i32 12), ptr %i.ab, align 8, !tbaa !4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  store <4 x i32> splat (i32 12), ptr %i.ac, align 8, !tbaa !4
  store <4 x i32> splat (i32 12), ptr %i.ad, align 8, !tbaa !4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 400
  store <4 x i32> splat (i32 12), ptr %i.ae, align 8, !tbaa !4
  store <4 x i32> splat (i32 12), ptr %i.af, align 8, !tbaa !4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 432
  store <4 x i32> splat (i32 12), ptr %i.ag, align 8, !tbaa !4
  store <4 x i32> splat (i32 12), ptr %i.ah, align 8, !tbaa !4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 464
  store <4 x i32> splat (i32 12), ptr %i.ai, align 8, !tbaa !4
  store <4 x i32> splat (i32 12), ptr %i.aj, align 8, !tbaa !4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 480
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 496
  store <4 x i32> splat (i32 12), ptr %i.ak, align 8, !tbaa !4
  store <4 x i32> splat (i32 12), ptr %i.al, align 8, !tbaa !4
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 528
  store <4 x i32> splat (i32 12), ptr %i.am, align 8, !tbaa !4
  store <4 x i32> splat (i32 12), ptr %i.an, align 8, !tbaa !4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 544
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 560
  store <4 x i32> splat (i32 12), ptr %i.ao, align 8, !tbaa !4
  store <4 x i32> splat (i32 12), ptr %i.ap, align 8, !tbaa !4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 576
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 592
  store <4 x i32> splat (i32 12), ptr %i.aq, align 8, !tbaa !4
  store <4 x i32> splat (i32 12), ptr %i.ar, align 8, !tbaa !4
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 624
  store <4 x i32> splat (i32 12), ptr %i.as, align 8, !tbaa !4
  store <4 x i32> splat (i32 12), ptr %i.at, align 8, !tbaa !4
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 640
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 656
  store <4 x i32> splat (i32 12), ptr %i.au, align 8, !tbaa !4
  store <4 x i32> splat (i32 12), ptr %i.av, align 8, !tbaa !4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 672
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 688
  store <4 x i32> splat (i32 12), ptr %i.aw, align 8, !tbaa !4
  store <4 x i32> splat (i32 12), ptr %i.ax, align 8, !tbaa !4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 704
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 720
  store <4 x i32> splat (i32 12), ptr %i.ay, align 8, !tbaa !4
  store <4 x i32> splat (i32 12), ptr %i.az, align 8, !tbaa !4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 736
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 752
  store <4 x i32> splat (i32 12), ptr %i.ba, align 8, !tbaa !4
  store <4 x i32> splat (i32 12), ptr %i.bb, align 8, !tbaa !4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 768
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 784
  store <4 x i32> splat (i32 12), ptr %i.bc, align 8, !tbaa !4
  store <4 x i32> splat (i32 12), ptr %i.bd, align 8, !tbaa !4
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 800
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 816
  store <4 x i32> splat (i32 12), ptr %i.be, align 8, !tbaa !4
  store <4 x i32> splat (i32 12), ptr %i.bf, align 8, !tbaa !4
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 832
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 848
  store <4 x i32> splat (i32 12), ptr %i.bg, align 8, !tbaa !4
  store <4 x i32> splat (i32 12), ptr %i.bh, align 8, !tbaa !4
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 864
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 880
  store <4 x i32> splat (i32 12), ptr %i.bi, align 8, !tbaa !4
  store <4 x i32> splat (i32 12), ptr %i.bj, align 8, !tbaa !4
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 896
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 912
  store <4 x i32> splat (i32 12), ptr %i.bk, align 8, !tbaa !4
  store <4 x i32> splat (i32 12), ptr %i.bl, align 8, !tbaa !4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 928
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 944
  store <4 x i32> splat (i32 12), ptr %i.bm, align 8, !tbaa !4
  store <4 x i32> splat (i32 12), ptr %i.bn, align 8, !tbaa !4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 960
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 976
  store <4 x i32> splat (i32 12), ptr %i.bo, align 8, !tbaa !4
  store <4 x i32> splat (i32 12), ptr %i.bp, align 8, !tbaa !4
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 992
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 1008
  store <4 x i32> splat (i32 12), ptr %i.bq, align 8, !tbaa !4
  store <4 x i32> splat (i32 12), ptr %i.br, align 8, !tbaa !4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 492
  store i32 0, ptr %i.bs, align 4, !tbaa !4
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 500
  store i32 1, ptr %i.bt, align 4, !tbaa !4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 364
  store i32 2, ptr %i.bu, align 4, !tbaa !4
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 372
  store i32 3, ptr %i.bv, align 4, !tbaa !4
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store i32 9, ptr %i.bw, align 8, !tbaa !4
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  store i32 8, ptr %i.bx, align 8, !tbaa !4
  store i32 10, ptr %i.a, align 8, !tbaa !4
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store i32 11, ptr %i.by, align 8, !tbaa !4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  store i32 11, ptr %i.bz, align 4, !tbaa !4
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i32 11, ptr %i.ca, align 8, !tbaa !4
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  store i32 11, ptr %i.cb, align 4, !tbaa !4
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 408
  store i32 13, ptr %i.cc, align 8, !tbaa !4
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 420
  store i32 13, ptr %i.cd, align 4, !tbaa !4
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 292
  store i32 13, ptr %i.ce, align 4, !tbaa !4
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 440
  store i32 13, ptr %i.cf, align 8, !tbaa !4
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  store i32 13, ptr %i.cg, align 8, !tbaa !4
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 464
  store i32 13, ptr %i.ch, align 8, !tbaa !4
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i32 13, ptr %i.ci, align 8, !tbaa !4
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 172
  store i32 13, ptr %i.cj, align 4, !tbaa !4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 180
  store i32 13, ptr %i.ck, align 4, !tbaa !4
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  store <4 x i32> splat (i32 13), ptr %i.cl, align 8, !tbaa !4
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store <4 x i32> splat (i32 13), ptr %i.cm, align 8, !tbaa !4
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  store i32 13, ptr %i.cn, align 8, !tbaa !4
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 228
  store i32 13, ptr %i.co, align 4, !tbaa !4
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 1024
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %i.cp, i8 0, i64 256, i1 false), !tbaa !15
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 1058
  store i8 34, ptr %i.cq, align 2, !tbaa !15
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 1116
  store i8 92, ptr %i.cr, align 4, !tbaa !15
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 1071
  store i8 47, ptr %i.cs, align 1, !tbaa !15
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 1122
  store i8 8, ptr %i.ct, align 2, !tbaa !15
  %i.cu = getelementptr inbounds nuw i8, ptr %i.a, i64 1140
  store i8 9, ptr %i.cu, align 4, !tbaa !15
  %i.cv = getelementptr inbounds nuw i8, ptr %i.a, i64 1134
  store i8 10, ptr %i.cv, align 2, !tbaa !15
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 1126
  store i8 12, ptr %i.cw, align 2, !tbaa !15
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 1138
  store i8 13, ptr %i.cx, align 2, !tbaa !15
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 1141
  store i8 117, ptr %i.cy, align 1, !tbaa !15
  tail call void @luaL_checkstack(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.103) #12
  tail call void @lua_pushvalue(ptr noundef %0, i32 noundef -1) #12
  tail call void @lua_pushcclosure(ptr noundef %0, ptr noundef nonnull @json_encode, i32 noundef 1) #12
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -3, ptr noundef nonnull @.str.1) #12
  tail call void @lua_pushvalue(ptr noundef %0, i32 noundef -1) #12
  tail call void @lua_pushcclosure(ptr noundef %0, ptr noundef nonnull @json_decode, i32 noundef 1) #12
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -3, ptr noundef nonnull @.str.2) #12
  tail call void @lua_pushvalue(ptr noundef %0, i32 noundef -1) #12
  tail call void @lua_pushcclosure(ptr noundef %0, ptr noundef nonnull @json_cfg_decode_array_with_array_mt, i32 noundef 1) #12
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -3, ptr noundef nonnull @.str.3) #12
  tail call void @lua_pushvalue(ptr noundef %0, i32 noundef -1) #12
  tail call void @lua_pushcclosure(ptr noundef %0, ptr noundef nonnull @json_cfg_encode_sparse_array, i32 noundef 1) #12
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -3, ptr noundef nonnull @.str.4) #12
  tail call void @lua_pushvalue(ptr noundef %0, i32 noundef -1) #12
  tail call void @lua_pushcclosure(ptr noundef %0, ptr noundef nonnull @json_cfg_encode_max_depth, i32 noundef 1) #12
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -3, ptr noundef nonnull @.str.5) #12
  tail call void @lua_pushvalue(ptr noundef %0, i32 noundef -1) #12
  tail call void @lua_pushcclosure(ptr noundef %0, ptr noundef nonnull @json_cfg_decode_max_depth, i32 noundef 1) #12
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -3, ptr noundef nonnull @.str.6) #12
  tail call void @lua_pushvalue(ptr noundef %0, i32 noundef -1) #12
  tail call void @lua_pushcclosure(ptr noundef %0, ptr noundef nonnull @json_cfg_encode_number_precision, i32 noundef 1) #12
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -3, ptr noundef nonnull @.str.7) #12
  tail call void @lua_pushvalue(ptr noundef %0, i32 noundef -1) #12
  tail call void @lua_pushcclosure(ptr noundef %0, ptr noundef nonnull @json_cfg_encode_keep_buffer, i32 noundef 1) #12
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -3, ptr noundef nonnull @.str.8) #12
  tail call void @lua_pushvalue(ptr noundef %0, i32 noundef -1) #12
  tail call void @lua_pushcclosure(ptr noundef %0, ptr noundef nonnull @json_cfg_encode_invalid_numbers, i32 noundef 1) #12
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -3, ptr noundef nonnull @.str.9) #12
  tail call void @lua_pushvalue(ptr noundef %0, i32 noundef -1) #12
  tail call void @lua_pushcclosure(ptr noundef %0, ptr noundef nonnull @json_cfg_decode_invalid_numbers, i32 noundef 1) #12
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -3, ptr noundef nonnull @.str.10) #12
  tail call void @lua_pushvalue(ptr noundef %0, i32 noundef -1) #12
  tail call void @lua_pushcclosure(ptr noundef %0, ptr noundef nonnull @lua_cjson_new, i32 noundef 1) #12
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -3, ptr noundef nonnull @.str.11) #12
  tail call void @lua_settop(ptr noundef %0, i32 noundef -2) #12
  tail call void @lua_pushlightuserdata(ptr noundef %0, ptr noundef null) #12
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.12) #12
  tail call void @lua_pushlstring(ptr noundef %0, ptr noundef nonnull @.str, i64 noundef 5) #12
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.13) #12
  tail call void @lua_pushlstring(ptr noundef %0, ptr noundef nonnull @.str.14, i64 noundef 5) #12
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.15) #12
  ret i32 1
}

declare void @lua_pushvalue(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @lua_setfield(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @luaopen_cjson_safe(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @lua_cjson_new(ptr noundef %0), !inline_history !16 ; 0 uses
  tail call void @lua_pushcclosure(ptr noundef %0, ptr noundef nonnull @lua_cjson_safe_new, i32 noundef 0) #12, !inline_history !16
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.11) #12, !inline_history !16
  tail call void @lua_getfield(ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.2) #12, !inline_history !16
  tail call void @lua_pushcclosure(ptr noundef %0, ptr noundef nonnull @json_protect_conversion, i32 noundef 1) #12, !inline_history !16
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.2) #12, !inline_history !16
  tail call void @lua_getfield(ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.1) #12, !inline_history !16
  tail call void @lua_pushcclosure(ptr noundef %0, ptr noundef nonnull @json_protect_conversion, i32 noundef 1) #12, !inline_history !16
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.1) #12, !inline_history !16
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @lua_cjson_safe_new(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call i32 @lua_cjson_new(ptr noundef %0) ; 0 uses
  tail call void @lua_pushcclosure(ptr noundef %0, ptr noundef nonnull @lua_cjson_safe_new, i32 noundef 0) #12
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.11) #12
  tail call void @lua_getfield(ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.2) #12
  tail call void @lua_pushcclosure(ptr noundef %0, ptr noundef nonnull @json_protect_conversion, i32 noundef 1) #12
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.2) #12
  tail call void @lua_getfield(ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.1) #12
  tail call void @lua_pushcclosure(ptr noundef %0, ptr noundef nonnull @json_protect_conversion, i32 noundef 1) #12
  tail call void @lua_setfield(ptr noundef %0, i32 noundef -2, ptr noundef nonnull @.str.1) #12
  ret i32 1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @json_encode(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.strbuf_t, align 8           ; 4 uses
  %i.a = tail call ptr @lua_touserdata(ptr noundef %0, i32 noundef -10003) #12 ; 5 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %json_fetch_config.exit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.17) #12 ; 0 uses
  br label %json_fetch_config.exit

json_fetch_config.exit:                           ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  %i.c = tail call i32 @lua_gettop(ptr noundef %0) #12
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %json_fetch_config.exit
  %i.e = tail call i32 @luaL_argerror(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.16) #12 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %json_fetch_config.exit
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1344 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !17
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @strbuf_init(ptr noundef nonnull %1, i64 noundef 0) #12
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 1280
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1296
  store i64 0, ptr %i.i, align 8, !tbaa !18
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi ptr [ %i.h, %bb.f ], [ %1, %bb.e ]    ; 4 uses
  call fastcc void @json_append_data(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 0, ptr noundef nonnull %.0)
  %.0.val = load ptr, ptr %.0, align 8, !tbaa !19
  %i.j = getelementptr i8, ptr %.0, i64 16
  %.0.val16 = load i64, ptr %i.j, align 8, !tbaa !18
  call void @lua_pushlstring(ptr noundef %0, ptr noundef %.0.val, i64 noundef %.0.val16) #12
  %i.k = load i32, ptr %i.f, align 8, !tbaa !17
  %.not15 = icmp eq i32 %i.k, 0
  br i1 %.not15, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @strbuf_free(ptr noundef nonnull %.0) #12
  br label %bb.i
end_hunk_0
