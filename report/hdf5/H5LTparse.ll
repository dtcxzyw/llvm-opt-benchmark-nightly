Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5LTparse?download=true
inline.NumInlined: 4
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.YYSTYPE = type { ptr }
%struct.arr_info = type { [32 x i64], i32, i8 }

@H5LTyychar = local_unnamed_addr global i32 0, align 4
@yypact = internal unnamed_addr constant [158 x i16] [i16 154, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -21, i16 -15, i16 -24, i16 -14, i16 -24, i16 -4, i16 -2, i16 133, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 77, i16 65, i16 58, i16 228, i16 59, i16 154, i16 154, i16 -24, i16 75, i16 61, i16 -24, i16 56, i16 -24, i16 62, i16 63, i16 -24, i16 -24, i16 57, i16 -24, i16 60, i16 76, i16 -24, i16 -3, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 66, i16 -24, i16 89, i16 83, i16 78, i16 -23, i16 134, i16 -24, i16 -1, i16 136, i16 -24, i16 128, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 130, i16 -24, i16 131, i16 138, i16 135, i16 139, i16 140, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 137, i16 -24, i16 159, i16 144, i16 -24, i16 -10, i16 -24, i16 -24, i16 -24, i16 141, i16 -24, i16 160, i16 0, i16 -24, i16 -24, i16 174, i16 -24, i16 179, i16 -24], align 16
@yytranslate = internal unnamed_addr constant [334 x i8] c"\00\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02ST\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02Q\02R\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02O\02P\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMN", align 16
@yycheck = internal unnamed_addr constant [261 x i8] c"\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./012345678MABPONO>?@OOECDHIJKL]O_OQ\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./012345678\009F=OONTTPPTEP:HIJKLNGMP\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./012345678SNMTTNN;T<TREPTHIJKL\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1DTPL", align 16
@yytable = internal unnamed_addr constant [261 x i8] c"\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123456u\92\93vIVW{|}JL7\98\9989:;<eNiOh\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123456PQRXSU[^b`ac7pq89:;<Yrsd\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123456\81y\7F\85\86\87\8A\90\89\97\8F\8C7\91\9589:;<\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\9B\9DT", align 16
@H5LTyylval = local_unnamed_addr global %union.YYSTYPE zeroinitializer, align 8
@yydefact = internal unnamed_addr constant [158 x i8] c"\02\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123456789QPSRUTMNO\00\00:\00D\00\00\00\03\04\09\0A\05\06\07\08\0D\0B\0C\00\00\00\00\00\00\00\01\00\00<\00F\00\00ab\00Z\00\00j\00LV\\W;>=lH\00G\00\00\00\00\00E\00\00@ApkmnKIcde\00[\00\00\00\00\00]XCB?q\00J\00\00o\00Yfg\00^\00\00hi\00_\00`", align 16
@yyr2 = internal unnamed_addr constant [114 x i8] c"\00\02\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\05\00\02\00\05\01\00\02\01\00\06\00\02\00\00\05\01\04\01\01\01\01\01\01\01\01\01\04\00\00\0B\01\01\00\00\00\00\13\01\01\01\01\01\01\01\01\01\00\07\00\02\00\04\01\01", align 16
@arr_stack = internal global [16 x %struct.arr_info] zeroinitializer, align 16
@H5_libinit_g = external local_unnamed_addr global i8, align 1
@H5_libterm_g = external local_unnamed_addr global i8, align 1
@H5T_STD_I8BE_g = external local_unnamed_addr global i64, align 8
@H5T_STD_I8LE_g = external local_unnamed_addr global i64, align 8
@H5T_STD_I16BE_g = external local_unnamed_addr global i64, align 8
@H5T_STD_I16LE_g = external local_unnamed_addr global i64, align 8
@H5T_STD_I32BE_g = external local_unnamed_addr global i64, align 8
@H5T_STD_I32LE_g = external local_unnamed_addr global i64, align 8
@H5T_STD_I64BE_g = external local_unnamed_addr global i64, align 8
@H5T_STD_I64LE_g = external local_unnamed_addr global i64, align 8
@H5T_STD_U8BE_g = external local_unnamed_addr global i64, align 8
@H5T_STD_U8LE_g = external local_unnamed_addr global i64, align 8
@H5T_STD_U16BE_g = external local_unnamed_addr global i64, align 8
@H5T_STD_U16LE_g = external local_unnamed_addr global i64, align 8
@H5T_STD_U32BE_g = external local_unnamed_addr global i64, align 8
@H5T_STD_U32LE_g = external local_unnamed_addr global i64, align 8
@H5T_STD_U64BE_g = external local_unnamed_addr global i64, align 8
@H5T_STD_U64LE_g = external local_unnamed_addr global i64, align 8
@H5T_NATIVE_SCHAR_g = external local_unnamed_addr global i64, align 8
@H5T_NATIVE_UCHAR_g = external local_unnamed_addr global i64, align 8
@H5T_NATIVE_SHORT_g = external local_unnamed_addr global i64, align 8
@H5T_NATIVE_USHORT_g = external local_unnamed_addr global i64, align 8
@H5T_NATIVE_INT_g = external local_unnamed_addr global i64, align 8
@H5T_NATIVE_UINT_g = external local_unnamed_addr global i64, align 8
@H5T_NATIVE_LONG_g = external local_unnamed_addr global i64, align 8
@H5T_NATIVE_ULONG_g = external local_unnamed_addr global i64, align 8
@H5T_NATIVE_LLONG_g = external local_unnamed_addr global i64, align 8
@H5T_NATIVE_ULLONG_g = external local_unnamed_addr global i64, align 8
@H5T_IEEE_F16BE_g = external local_unnamed_addr global i64, align 8
@H5T_IEEE_F16LE_g = external local_unnamed_addr global i64, align 8
@H5T_IEEE_F32BE_g = external local_unnamed_addr global i64, align 8
@H5T_IEEE_F32LE_g = external local_unnamed_addr global i64, align 8
@H5T_IEEE_F64BE_g = external local_unnamed_addr global i64, align 8
@H5T_IEEE_F64LE_g = external local_unnamed_addr global i64, align 8
@H5T_FLOAT_BFLOAT16BE_g = external local_unnamed_addr global i64, align 8
@H5T_FLOAT_BFLOAT16LE_g = external local_unnamed_addr global i64, align 8
@H5T_FLOAT_F8E4M3_g = external local_unnamed_addr global i64, align 8
@H5T_FLOAT_F8E5M2_g = external local_unnamed_addr global i64, align 8
@H5T_FLOAT_F6E2M3_g = external local_unnamed_addr global i64, align 8
@H5T_FLOAT_F6E3M2_g = external local_unnamed_addr global i64, align 8
@H5T_FLOAT_F4E2M1_g = external local_unnamed_addr global i64, align 8
@H5T_NATIVE_FLOAT16_g = external local_unnamed_addr global i64, align 8
@H5T_NATIVE_FLOAT_g = external local_unnamed_addr global i64, align 8
@H5T_NATIVE_DOUBLE_g = external local_unnamed_addr global i64, align 8
@H5T_NATIVE_LDOUBLE_g = external local_unnamed_addr global i64, align 8
@csindex = internal unnamed_addr global i32 -1, align 4
@asindex = internal unnamed_addr global i32 -1, align 4
@H5T_NATIVE_FLOAT_COMPLEX_g = external local_unnamed_addr global i64, align 8
@H5T_NATIVE_DOUBLE_COMPLEX_g = external local_unnamed_addr global i64, align 8
@H5T_NATIVE_LDOUBLE_COMPLEX_g = external local_unnamed_addr global i64, align 8
@H5T_COMPLEX_IEEE_F16LE_g = external local_unnamed_addr global i64, align 8
@H5T_COMPLEX_IEEE_F16BE_g = external local_unnamed_addr global i64, align 8
@H5T_COMPLEX_IEEE_F32LE_g = external local_unnamed_addr global i64, align 8
@H5T_COMPLEX_IEEE_F32BE_g = external local_unnamed_addr global i64, align 8
@H5T_COMPLEX_IEEE_F64LE_g = external local_unnamed_addr global i64, align 8
@H5T_COMPLEX_IEEE_F64BE_g = external local_unnamed_addr global i64, align 8
@is_variable = internal unnamed_addr global i1 false, align 1
@str_size = internal unnamed_addr global i64 0, align 8
@str_pad = internal unnamed_addr global i32 0, align 4
@str_cset = internal unnamed_addr global i1 false, align 4
@H5T_C_S1_g = external local_unnamed_addr global i64, align 8
@H5T_FORTRAN_S1_g = external local_unnamed_addr global i64, align 8
@is_enum = internal unnamed_addr global i1 false, align 1
@enum_id = internal unnamed_addr global i64 0, align 8
@is_enum_memb = internal unnamed_addr global i1 false, align 1
@enum_memb_symbol = internal unnamed_addr global ptr null, align 8
@yyr1 = internal unnamed_addr constant [114 x i8] c"\00UVVWWWWWXXXXXYYYYYYYYYYYYYYYYYYYYYYYYYYYZZZZZZZZZZZZZZZZZ\\[]]_^`aabdceeghfijkkkkkkkkkkmnloprstuqvvwwwxxyy{z||~}\7F\80", align 16
@yypgoto = internal unnamed_addr constant [44 x i16] [i16 -24, i16 -24, i16 -19, i16 -24, i16 184, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24], align 16
@yydefgoto = internal unnamed_addr constant [44 x i8] c"\00=>?@ABK]fmt\82\88CM_jo\84zDEFl\8E\\\80Gk\8D\96\9CZ~\94\9AHgnw\83x\8B", align 16
@H5LTyynerrs = local_unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"syntax error\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@cmpd_stack = internal unnamed_addr global [16 x { i64, i8, i8, [6 x i8] }] [{ i64, i8, i8, [6 x i8] } { i64 0, i8 0, i8 1, [6 x i8] zeroinitializer }, { i64, i8, i8, [6 x i8] } { i64 0, i8 0, i8 1, [6 x i8] zeroinitializer }, { i64, i8, i8, [6 x i8] } { i64 0, i8 0, i8 1, [6 x i8] zeroinitializer }, { i64, i8, i8, [6 x i8] } { i64 0, i8 0, i8 1, [6 x i8] zeroinitializer }, { i64, i8, i8, [6 x i8] } { i64 0, i8 0, i8 1, [6 x i8] zeroinitializer }, { i64, i8, i8, [6 x i8] } { i64 0, i8 0, i8 1, [6 x i8] zeroinitializer }, { i64, i8, i8, [6 x i8] } { i64 0, i8 0, i8 1, [6 x i8] zeroinitializer }, { i64, i8, i8, [6 x i8] } { i64 0, i8 0, i8 1, [6 x i8] zeroinitializer }, { i64, i8, i8, [6 x i8] } { i64 0, i8 0, i8 1, [6 x i8] zeroinitializer }, { i64, i8, i8, [6 x i8] } { i64 0, i8 0, i8 1, [6 x i8] zeroinitializer }, { i64, i8, i8, [6 x i8] } { i64 0, i8 0, i8 1, [6 x i8] zeroinitializer }, { i64, i8, i8, [6 x i8] } { i64 0, i8 0, i8 1, [6 x i8] zeroinitializer }, { i64, i8, i8, [6 x i8] } { i64 0, i8 0, i8 1, [6 x i8] zeroinitializer }, { i64, i8, i8, [6 x i8] } { i64 0, i8 0, i8 1, [6 x i8] zeroinitializer }, { i64, i8, i8, [6 x i8] } { i64 0, i8 0, i8 1, [6 x i8] zeroinitializer }, { i64, i8, i8, [6 x i8] } { i64 0, i8 0, i8 1, [6 x i8] zeroinitializer }], align 16

; Function Attrs: nounwind uwtable
define i64 @H5LTyyparse() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [200 x i8], align 16              ; 6 uses
  %0 = alloca [200 x %union.YYSTYPE], align 16    ; 4 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = alloca i16, align 2                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #8
  store i32 -2, ptr @H5LTyychar, align 4, !tbaa !8
  br label %bb.c

bb.b:                                             ; preds = %bb.jv, %bb.t
  %.0259 = phi ptr [ %.3262, %bb.t ], [ %i.afh, %bb.jv ]
  %.0252 = phi ptr [ %i.az, %bb.t ], [ %i.afi, %bb.jv ]
  %.0238.shrunk = phi i8 [ %i.ay, %bb.t ], [ %.in, %bb.jv ]
  %.0238 = zext i8 %.0238.shrunk to i32
  %i.g = getelementptr inbounds nuw i8, ptr %.0259, i64 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0267 = phi ptr [ %i.a, %bb.a ], [ %.3270, %bb.b ] ; 7 uses
  %.1260 = phi ptr [ %i.a, %bb.a ], [ %i.g, %bb.b ] ; 4 uses
  %.0255 = phi ptr [ %0, %bb.a ], [ %.3258, %bb.b ] ; 2 uses
  %.1253 = phi ptr [ %0, %bb.a ], [ %.0252, %bb.b ]
  %.0244 = phi i64 [ 200, %bb.a ], [ %.2246, %bb.b ] ; 4 uses
  %.1 = phi i32 [ 0, %bb.a ], [ %.0238, %bb.b ]   ; 3 uses
  %i.h = trunc nuw i32 %.1 to i8
  store i8 %i.h, ptr %.1260, align 1, !tbaa !9
  %i.i = getelementptr inbounds i8, ptr %.0267, i64 %.0244
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -1
  %.not = icmp ugt ptr %i.j, %.1260
  br i1 %.not, label %.thread341, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = ptrtoint ptr %.1260 to i64
  %i.l = ptrtoint ptr %.0267 to i64
  %i.m = sub i64 %i.k, %i.l                       ; 3 uses
  %i.n = add nsw i64 %i.m, 1                      ; 3 uses
  %i.o = icmp sgt i64 %.0244, 9999
  br i1 %i.o, label %bb.jx, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = shl nsw i64 %.0244, 1
  %spec.store.select = call i64 @llvm.smin.i64(i64 %i.p, i64 10000) ; 4 uses
  %i.q = mul nsw i64 %spec.store.select, 9
  %i.r = add nsw i64 %i.q, 7
  %i.s = call noalias ptr @malloc(i64 noundef %i.r) #9 ; 6 uses
  %.not298.not = icmp eq ptr %i.s, null
  br i1 %.not298.not, label %bb.jx, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.s, ptr align 1 %.0267, i64 %i.n, i1 false)
  %i.t = add nsw i64 %spec.store.select, 7
  %i.u = sdiv i64 %i.t, 8
  %i.v = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.u ; 3 uses
  %i.w = shl i64 %i.n, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.v, ptr align 8 %.0255, i64 %i.w, i1 false)
  %.not299 = icmp eq ptr %.0267, %i.a
  br i1 %.not299, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @free(ptr noundef %.0267) #8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.x = getelementptr inbounds i8, ptr %i.s, i64 %i.m
  %i.y = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.n
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -8
  %i.aa = add nsw i64 %spec.store.select, -1
  %.not300 = icmp sgt i64 %i.aa, %i.m
  br i1 %.not300, label %.thread341, label %.loopexit.thread

.thread341:                                       ; preds = %bb.h, %bb.c
  %.3270 = phi ptr [ %.0267, %bb.c ], [ %i.s, %bb.h ] ; 4 uses
  %.3262 = phi ptr [ %.1260, %bb.c ], [ %i.x, %bb.h ] ; 2 uses
  %.3258 = phi ptr [ %.0255, %bb.c ], [ %i.v, %bb.h ]
  %.3 = phi ptr [ %.1253, %bb.c ], [ %i.z, %bb.h ] ; 24 uses
  %.2246 = phi i64 [ %.0244, %bb.c ], [ %spec.store.select, %bb.h ]
  %i.ab = icmp eq i32 %.1, 80
  br i1 %i.ab, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %.thread341
  %i.ac = zext nneg i32 %.1 to i64                ; 2 uses
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr @yypact, i64 %i.ac
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !11 ; 2 uses
  %i.af = sext i16 %i.ae to i32
  %i.ag = icmp eq i16 %i.ae, -24
  br i1 %i.ag, label %bb.u, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = load i32, ptr @H5LTyychar, align 4, !tbaa !8 ; 2 uses
  %i.ai = icmp eq i32 %i.ah, -2
  br i1 %i.ai, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aj = call i32 @H5LTyylex() #8                ; 2 uses
  store i32 %i.aj, ptr @H5LTyychar, align 4, !tbaa !8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ak = phi i32 [ %i.aj, %bb.k ], [ %i.ah, %bb.j ] ; 4 uses
  %i.al = icmp slt i32 %i.ak, 1
  br i1 %i.al, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr @H5LTyychar, align 4, !tbaa !8
  br label %bb.r

bb.n:                                             ; preds = %bb.l
  %i.am = icmp eq i32 %i.ak, 256
  br i1 %i.am, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 257, ptr @H5LTyychar, align 4, !tbaa !8
  br label %.loopexit

bb.p:                                             ; preds = %bb.n
  %i.an = icmp samesign ult i32 %i.ak, 334
  br i1 %i.an, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ao = zext nneg i32 %i.ak to i64
  %i.ap = getelementptr inbounds nuw i8, ptr @yytranslate, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !9
  %i.ar = sext i8 %i.aq to i32
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.m
  %.0249 = phi i32 [ 0, %bb.m ], [ %i.ar, %bb.q ], [ 2, %bb.p ] ; 2 uses
  %i.as = add nsw i32 %.0249, %i.af               ; 2 uses
  %or.cond3 = icmp ugt i32 %i.as, 260
  br i1 %or.cond3, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.at = zext nneg i32 %i.as to i64              ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr @yycheck, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !9
  %i.aw = sext i8 %i.av to i32
  %.not301 = icmp eq i32 %.0249, %i.aw
  br i1 %.not301, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ax = getelementptr inbounds nuw i8, ptr @yytable, i64 %i.at
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !9
  %i.az = getelementptr inbounds nuw i8, ptr %.3, i64 8 ; 2 uses
  %i.ba = load i64, ptr @H5LTyylval, align 8, !tbaa !9
  store i64 %i.ba, ptr %i.az, align 8, !tbaa !9
  store i32 -2, ptr @H5LTyychar, align 4, !tbaa !8
  br label %bb.b

bb.u:                                             ; preds = %bb.r, %bb.s, %bb.i
  %i.bb = getelementptr inbounds nuw i8, ptr @yydefact, i64 %i.ac
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !9   ; 3 uses
  %i.bd = icmp eq i8 %i.bc, 0
  br i1 %i.bd, label %bb.jw, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.be = sext i8 %i.bc to i64                    ; 2 uses
  %i.bf = getelementptr inbounds i8, ptr @yyr2, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !9
  %i.bh = sext i8 %i.bg to i64                    ; 2 uses
  %i.bi = sub nsw i64 1, %i.bh
  %i.bj = getelementptr inbounds [8 x i8], ptr %.3, i64 %i.bi
  %.sroa.0.0.copyload = load ptr, ptr %i.bj, align 8, !tbaa !9 ; 31 uses
  switch i8 %i.bc, label %bb.jr [
    i8 2, label %bb.w
    i8 3, label %bb.x
    i8 14, label %bb.y
    i8 15, label %bb.ab
    i8 16, label %bb.ae
    i8 17, label %bb.ah
    i8 18, label %bb.ak
    i8 19, label %bb.an
    i8 20, label %bb.aq
    i8 21, label %bb.at
    i8 22, label %bb.aw
    i8 23, label %bb.az
    i8 24, label %bb.bc
    i8 25, label %bb.bf
    i8 26, label %bb.bi
    i8 27, label %bb.bl
    i8 28, label %bb.bo
    i8 29, label %bb.br
    i8 30, label %bb.bu
    i8 31, label %bb.bx
    i8 32, label %bb.ca
    i8 33, label %bb.cd
    i8 34, label %bb.cg
    i8 35, label %bb.cj
    i8 36, label %bb.cm
    i8 37, label %bb.cp
    i8 38, label %bb.cs
    i8 39, label %bb.cv
    i8 40, label %bb.cy
    i8 41, label %bb.db
    i8 42, label %bb.de
    i8 43, label %bb.dh
    i8 44, label %bb.dk
    i8 45, label %bb.dn
    i8 46, label %bb.dq
    i8 47, label %bb.dt
    i8 48, label %bb.dw
    i8 49, label %bb.dz
    i8 50, label %bb.ec
    i8 51, label %bb.ef
    i8 52, label %bb.ei
    i8 53, label %bb.el
    i8 54, label %bb.eo
    i8 55, label %bb.er
    i8 56, label %bb.eu
    i8 57, label %bb.ex
    i8 58, label %bb.fa
    i8 59, label %bb.fb
    i8 62, label %bb.fc
    i8 63, label %bb.fd
    i8 64, label %bb.fl
    i8 65, label %bb.fm
    i8 66, label %bb.fn
    i8 68, label %bb.fo
    i8 69, label %bb.fp
    i8 72, label %bb.fq
    i8 73, label %bb.fr
    i8 76, label %bb.fs
    i8 77, label %bb.ft
    i8 78, label %bb.fw
    i8 79, label %bb.fz
    i8 80, label %bb.gc
    i8 81, label %bb.gf
    i8 82, label %bb.gi
    i8 83, label %bb.gl
    i8 84, label %bb.go
    i8 85, label %bb.gr
    i8 86, label %bb.gu
    i8 87, label %bb.gv
    i8 88, label %bb.gw
    i8 89, label %bb.gx
    i8 92, label %bb.gy
    i8 93, label %bb.hb
    i8 94, label %bb.hf
    i8 95, label %bb.hi
    i8 96, label %bb.hp
    i8 97, label %bb.ht
    i8 99, label %bb.hu
    i8 100, label %bb.hv
    i8 101, label %bb.hw
    i8 102, label %bb.hx
    i8 103, label %bb.hy
    i8 104, label %bb.hz
    i8 105, label %bb.ia
    i8 106, label %bb.ib
    i8 107, label %bb.ic
    i8 110, label %bb.id
    i8 111, label %bb.ie
  ]

bb.w:                                             ; preds = %bb.v
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4224) @arr_stack, i8 0, i64 4224, i1 false)
  br label %bb.jr

bb.x:                                             ; preds = %bb.v
  %i.bk = ptrtoint ptr %.sroa.0.0.copyload to i64
  br label %bb.jy

bb.y:                                             ; preds = %bb.v
  %i.bl = load i8, ptr @H5_libinit_g, align 1, !tbaa !13, !range !14, !noundef !15
  %i.bm = trunc nuw i8 %i.bl to i1
  %i.bn = load i8, ptr @H5_libterm_g, align 1, !range !14
  %i.bo = trunc nuw i8 %i.bn to i1
  %i.bp = select i1 %i.bm, i1 true, i1 %i.bo
  br i1 %i.bp, label %bb.aa, label %bb.z, !prof !16

bb.z:                                             ; preds = %bb.y
  %i.bq = call i32 @H5open() #8                   ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %i.br = load i64, ptr @H5T_STD_I8BE_g, align 8, !tbaa !18
  %i.bs = call i64 @H5Tcopy(i64 noundef %i.br) #8
  %i.bt = inttoptr i64 %i.bs to ptr
  br label %bb.jr

bb.ab:                                            ; preds = %bb.v
  %i.bu = load i8, ptr @H5_libinit_g, align 1, !tbaa !13, !range !14, !noundef !15
  %i.bv = trunc nuw i8 %i.bu to i1
  %i.bw = load i8, ptr @H5_libterm_g, align 1, !range !14
  %i.bx = trunc nuw i8 %i.bw to i1
  %i.by = select i1 %i.bv, i1 true, i1 %i.bx
  br i1 %i.by, label %bb.ad, label %bb.ac, !prof !16

bb.ac:                                            ; preds = %bb.ab
  %i.bz = call i32 @H5open() #8                   ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %i.ca = load i64, ptr @H5T_STD_I8LE_g, align 8, !tbaa !18
  %i.cb = call i64 @H5Tcopy(i64 noundef %i.ca) #8
  %i.cc = inttoptr i64 %i.cb to ptr
  br label %bb.jr

bb.ae:                                            ; preds = %bb.v
  %i.cd = load i8, ptr @H5_libinit_g, align 1, !tbaa !13, !range !14, !noundef !15
  %i.ce = trunc nuw i8 %i.cd to i1
  %i.cf = load i8, ptr @H5_libterm_g, align 1, !range !14
  %i.cg = trunc nuw i8 %i.cf to i1
  %i.ch = select i1 %i.ce, i1 true, i1 %i.cg
  br i1 %i.ch, label %bb.ag, label %bb.af, !prof !16

bb.af:                                            ; preds = %bb.ae
  %i.ci = call i32 @H5open() #8                   ; 0 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %i.cj = load i64, ptr @H5T_STD_I16BE_g, align 8, !tbaa !18
  %i.ck = call i64 @H5Tcopy(i64 noundef %i.cj) #8
  %i.cl = inttoptr i64 %i.ck to ptr
  br label %bb.jr

bb.ah:                                            ; preds = %bb.v
  %i.cm = load i8, ptr @H5_libinit_g, align 1, !tbaa !13, !range !14, !noundef !15
  %i.cn = trunc nuw i8 %i.cm to i1
  %i.co = load i8, ptr @H5_libterm_g, align 1, !range !14
  %i.cp = trunc nuw i8 %i.co to i1
  %i.cq = select i1 %i.cn, i1 true, i1 %i.cp
  br i1 %i.cq, label %bb.aj, label %bb.ai, !prof !16

bb.ai:                                            ; preds = %bb.ah
  %i.cr = call i32 @H5open() #8                   ; 0 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %i.cs = load i64, ptr @H5T_STD_I16LE_g, align 8, !tbaa !18
  %i.ct = call i64 @H5Tcopy(i64 noundef %i.cs) #8
  %i.cu = inttoptr i64 %i.ct to ptr
  br label %bb.jr

bb.ak:                                            ; preds = %bb.v
  %i.cv = load i8, ptr @H5_libinit_g, align 1, !tbaa !13, !range !14, !noundef !15
  %i.cw = trunc nuw i8 %i.cv to i1
  %i.cx = load i8, ptr @H5_libterm_g, align 1, !range !14
  %i.cy = trunc nuw i8 %i.cx to i1
  %i.cz = select i1 %i.cw, i1 true, i1 %i.cy
  br i1 %i.cz, label %bb.am, label %bb.al, !prof !16

bb.al:                                            ; preds = %bb.ak
  %i.da = call i32 @H5open() #8                   ; 0 uses
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al
  %i.db = load i64, ptr @H5T_STD_I32BE_g, align 8, !tbaa !18
  %i.dc = call i64 @H5Tcopy(i64 noundef %i.db) #8
  %i.dd = inttoptr i64 %i.dc to ptr
  br label %bb.jr

bb.an:                                            ; preds = %bb.v
  %i.de = load i8, ptr @H5_libinit_g, align 1, !tbaa !13, !range !14, !noundef !15
end_hunk_0
begin_hunk_1_@H5LTyyparse:bb.a
  %.not306 = icmp eq i32 %i.adb, 0
  br i1 %.not306, label %bb.it, label %bb.is

bb.is:                                            ; preds = %bb.ir, %bb.io
  %.not316 = icmp eq i32 %i.abu, %i.abv
  br i1 %.not316, label %.sink.split, label %.sink.split.sink.split

bb.it:                                            ; preds = %bb.ir
  %i.adc = load i8, ptr @H5_libinit_g, align 1, !tbaa !13, !range !14, !noundef !15
  %i.add = trunc nuw i8 %i.adc to i1
  %i.ade = load i8, ptr @H5_libterm_g, align 1, !range !14
  %i.adf = trunc nuw i8 %i.ade to i1
  %i.adg = select i1 %i.add, i1 true, i1 %i.adf
  br i1 %i.adg, label %bb.iv, label %bb.iu, !prof !16

bb.iu:                                            ; preds = %bb.it
  %i.adh = call i32 @H5open() #8                  ; 0 uses
  br label %bb.iv

bb.iv:                                            ; preds = %bb.it, %bb.iu
  %i.adi = load i64, ptr @H5T_NATIVE_INT_g, align 8, !tbaa !18
  %i.adj = call i32 @H5Tequal(i64 noundef %i.abt, i64 noundef %i.adi) #8
  %.not307 = icmp eq i32 %i.adj, 0
  br i1 %.not307, label %bb.iw, label %bb.iz

bb.iw:                                            ; preds = %bb.iv
  %i.adk = load i8, ptr @H5_libinit_g, align 1, !tbaa !13, !range !14, !noundef !15
  %i.adl = trunc nuw i8 %i.adk to i1
  %i.adm = load i8, ptr @H5_libterm_g, align 1, !range !14
  %i.adn = trunc nuw i8 %i.adm to i1
  %i.ado = select i1 %i.adl, i1 true, i1 %i.adn
  br i1 %i.ado, label %bb.iy, label %bb.ix, !prof !16

bb.ix:                                            ; preds = %bb.iw
  %i.adp = call i32 @H5open() #8                  ; 0 uses
  br label %bb.iy

bb.iy:                                            ; preds = %bb.iw, %bb.ix
  %i.adq = load i64, ptr @H5T_NATIVE_UINT_g, align 8, !tbaa !18
  %i.adr = call i32 @H5Tequal(i64 noundef %i.abt, i64 noundef %i.adq) #8
  %.not308 = icmp eq i32 %i.adr, 0
  br i1 %.not308, label %bb.ja, label %bb.iz

bb.iz:                                            ; preds = %bb.iy, %bb.iv
  %.not315 = icmp eq i32 %i.abu, %i.abv
  br i1 %.not315, label %.sink.split, label %.sink.split.sink.split

bb.ja:                                            ; preds = %bb.iy
  %i.ads = load i8, ptr @H5_libinit_g, align 1, !tbaa !13, !range !14, !noundef !15
  %i.adt = trunc nuw i8 %i.ads to i1
  %i.adu = load i8, ptr @H5_libterm_g, align 1, !range !14
  %i.adv = trunc nuw i8 %i.adu to i1
  %i.adw = select i1 %i.adt, i1 true, i1 %i.adv
  br i1 %i.adw, label %bb.jc, label %bb.jb, !prof !16

bb.jb:                                            ; preds = %bb.ja
  %i.adx = call i32 @H5open() #8                  ; 0 uses
  br label %bb.jc

bb.jc:                                            ; preds = %bb.ja, %bb.jb
  %i.ady = load i64, ptr @H5T_NATIVE_LONG_g, align 8, !tbaa !18
  %i.adz = call i32 @H5Tequal(i64 noundef %i.abt, i64 noundef %i.ady) #8
  %.not309 = icmp eq i32 %i.adz, 0
  br i1 %.not309, label %bb.jd, label %bb.jg

bb.jd:                                            ; preds = %bb.jc
  %i.aea = load i8, ptr @H5_libinit_g, align 1, !tbaa !13, !range !14, !noundef !15
  %i.aeb = trunc nuw i8 %i.aea to i1
  %i.aec = load i8, ptr @H5_libterm_g, align 1, !range !14
  %i.aed = trunc nuw i8 %i.aec to i1
  %i.aee = select i1 %i.aeb, i1 true, i1 %i.aed
  br i1 %i.aee, label %bb.jf, label %bb.je, !prof !16

bb.je:                                            ; preds = %bb.jd
  %i.aef = call i32 @H5open() #8                  ; 0 uses
  br label %bb.jf

bb.jf:                                            ; preds = %bb.jd, %bb.je
  %i.aeg = load i64, ptr @H5T_NATIVE_ULONG_g, align 8, !tbaa !18
  %i.aeh = call i32 @H5Tequal(i64 noundef %i.abt, i64 noundef %i.aeg) #8
  %.not310 = icmp eq i32 %i.aeh, 0
  br i1 %.not310, label %bb.jh, label %bb.jg

bb.jg:                                            ; preds = %bb.jf, %bb.jc
  %.not314 = icmp eq i32 %i.abu, %i.abv
  br i1 %.not314, label %.sink.split, label %.sink.split.sink.split

bb.jh:                                            ; preds = %bb.jf
  %i.aei = load i8, ptr @H5_libinit_g, align 1, !tbaa !13, !range !14, !noundef !15
  %i.aej = trunc nuw i8 %i.aei to i1
  %i.aek = load i8, ptr @H5_libterm_g, align 1, !range !14
  %i.ael = trunc nuw i8 %i.aek to i1
  %i.aem = select i1 %i.aej, i1 true, i1 %i.ael
  br i1 %i.aem, label %bb.jj, label %bb.ji, !prof !16

bb.ji:                                            ; preds = %bb.jh
  %i.aen = call i32 @H5open() #8                  ; 0 uses
  br label %bb.jj

bb.jj:                                            ; preds = %bb.jh, %bb.ji
  %i.aeo = load i64, ptr @H5T_NATIVE_LLONG_g, align 8, !tbaa !18
  %i.aep = call i32 @H5Tequal(i64 noundef %i.abt, i64 noundef %i.aeo) #8
  %.not311 = icmp eq i32 %i.aep, 0
  br i1 %.not311, label %bb.jk, label %bb.jn

bb.jk:                                            ; preds = %bb.jj
  %i.aeq = load i8, ptr @H5_libinit_g, align 1, !tbaa !13, !range !14, !noundef !15
  %i.aer = trunc nuw i8 %i.aeq to i1
  %i.aes = load i8, ptr @H5_libterm_g, align 1, !range !14
  %i.aet = trunc nuw i8 %i.aes to i1
  %i.aeu = select i1 %i.aer, i1 true, i1 %i.aet
  br i1 %i.aeu, label %bb.jm, label %bb.jl, !prof !16

bb.jl:                                            ; preds = %bb.jk
  %i.aev = call i32 @H5open() #8                  ; 0 uses
  br label %bb.jm

bb.jm:                                            ; preds = %bb.jk, %bb.jl
  %i.aew = load i64, ptr @H5T_NATIVE_ULLONG_g, align 8, !tbaa !18
  %i.aex = call i32 @H5Tequal(i64 noundef %i.abt, i64 noundef %i.aew) #8
  %.not312 = icmp eq i32 %i.aex, 0
  br i1 %.not312, label %bb.jo, label %bb.jn

bb.jn:                                            ; preds = %bb.jm, %bb.jj
  %.not313 = icmp eq i32 %i.abu, %i.abv
  br i1 %.not313, label %.sink.split, label %.sink.split.sink.split

.sink.split.sink.split:                           ; preds = %bb.jn, %bb.jg, %bb.iz, %bb.is, %bb.il
  %.sink = phi ptr [ %i.e, %bb.jg ], [ %i.d, %bb.iz ], [ %i.c, %bb.is ], [ %i.b, %bb.il ], [ %i.f, %bb.jn ] ; 2 uses
  %i.aey = call i32 @H5Tconvert(i64 noundef %i.abt, i64 noundef %i.abs, i64 noundef 1, ptr noundef nonnull %.sink, ptr noundef null, i64 noundef 0) #8 ; 0 uses
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %bb.jn, %bb.jg, %bb.iz, %bb.is, %bb.il
  %.sink400 = phi ptr [ %i.b, %bb.il ], [ %i.d, %bb.iz ], [ %i.e, %bb.jg ], [ %i.c, %bb.is ], [ %i.f, %bb.jn ], [ %.sink, %.sink.split.sink.split ]
  %i.aez = load i64, ptr @enum_id, align 8, !tbaa !18
  %i.afa = load ptr, ptr @enum_memb_symbol, align 8, !tbaa !28
  %i.afb = call i32 @H5Tenum_insert(i64 noundef %i.aez, ptr noundef %i.afa, ptr noundef nonnull %.sink400) #8 ; 0 uses
  br label %bb.jo

bb.jo:                                            ; preds = %.sink.split, %bb.jm
  store i1 false, ptr @is_enum_memb, align 1
  %i.afc = load ptr, ptr @enum_memb_symbol, align 8, !tbaa !28 ; 2 uses
  %.not318 = icmp eq ptr %i.afc, null
  br i1 %.not318, label %bb.jq, label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  call void @free(ptr noundef nonnull %i.afc) #8
  br label %bb.jq

bb.jq:                                            ; preds = %bb.jo, %bb.jp, %bb.ie
  %i.afd = call i32 @H5Tclose(i64 noundef %i.abs) #8 ; 0 uses
  %i.afe = call i32 @H5Tclose(i64 noundef %i.abt) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %bb.jr

bb.jr:                                            ; preds = %bb.hi, %bb.hf, %bb.hb, %bb.v, %bb.hl, %bb.ho, %bb.hg, %bb.hh, %bb.hc, %bb.he, %bb.hd, %bb.gz, %bb.ha, %bb.jq, %bb.id, %bb.ic, %bb.ib, %bb.ia, %bb.hz, %bb.hy, %bb.hx, %bb.hw, %bb.hv, %bb.hu, %bb.ht, %bb.hs, %bb.gx, %bb.gw, %bb.gv, %bb.gu, %bb.gt, %bb.gq, %bb.gn, %bb.gk, %bb.gh, %bb.ge, %bb.gb, %bb.fy, %bb.fv, %bb.fs, %bb.fr, %bb.fq, %bb.fp, %bb.fo, %bb.fn, %bb.fm, %bb.fl, %bb.fk, %bb.fc, %bb.fb, %bb.fa, %bb.ez, %bb.ew, %bb.et, %bb.eq, %bb.en, %bb.ek, %bb.eh, %bb.ee, %bb.eb, %bb.dy, %bb.dv, %bb.ds, %bb.dp, %bb.dm, %bb.dj, %bb.dg, %bb.dd, %bb.da, %bb.cx, %bb.cu, %bb.cr, %bb.co, %bb.cl, %bb.ci, %bb.cf, %bb.cc, %bb.bz, %bb.bw, %bb.bt, %bb.bq, %bb.bn, %bb.bk, %bb.bh, %bb.be, %bb.bb, %bb.ay, %bb.av, %bb.as, %bb.ap, %bb.am, %bb.aj, %bb.ag, %bb.ad, %bb.aa, %bb.w
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.copyload, %bb.v ], [ %.sroa.0.0.copyload, %bb.w ], [ %i.bt, %bb.aa ], [ %i.cc, %bb.ad ], [ %i.cl, %bb.ag ], [ %i.cu, %bb.aj ], [ %i.dd, %bb.am ], [ %i.dm, %bb.ap ], [ %i.dv, %bb.as ], [ %i.ee, %bb.av ], [ %i.en, %bb.ay ], [ %i.ew, %bb.bb ], [ %i.ff, %bb.be ], [ %i.fo, %bb.bh ], [ %i.fx, %bb.bk ], [ %i.gg, %bb.bn ], [ %i.gp, %bb.bq ], [ %i.gy, %bb.bt ], [ %i.hh, %bb.bw ], [ %i.hq, %bb.bz ], [ %i.hz, %bb.cc ], [ %i.ii, %bb.cf ], [ %i.ir, %bb.ci ], [ %i.ja, %bb.cl ], [ %i.jj, %bb.co ], [ %i.js, %bb.cr ], [ %i.kb, %bb.cu ], [ %i.kk, %bb.cx ], [ %i.kt, %bb.da ], [ %i.lc, %bb.dd ], [ %i.ll, %bb.dg ], [ %i.lu, %bb.dj ], [ %i.md, %bb.dm ], [ %i.mm, %bb.dp ], [ %i.mv, %bb.ds ], [ %i.ne, %bb.dv ], [ %i.nn, %bb.dy ], [ %i.nw, %bb.eb ], [ %i.of, %bb.ee ], [ %i.oo, %bb.eh ], [ %i.ox, %bb.ek ], [ %i.pg, %bb.en ], [ %i.pp, %bb.eq ], [ %i.py, %bb.et ], [ %i.qh, %bb.ew ], [ %i.qq, %bb.ez ], [ %.sroa.0.0.copyload, %bb.fa ], [ %i.rb, %bb.fb ], [ %.sroa.0.0.copyload, %bb.fc ], [ %.sroa.0.0.copyload, %bb.fk ], [ %i.tr, %bb.fl ], [ %i.tt, %bb.fm ], [ %i.tw, %bb.fn ], [ %.sroa.0.0.copyload, %bb.fo ], [ %i.uh, %bb.fp ], [ %.sroa.0.0.copyload, %bb.fq ], [ %.sroa.0.0.copyload, %bb.fr ], [ %i.vh, %bb.fs ], [ %i.vs, %bb.fv ], [ %i.wb, %bb.fy ], [ %i.wk, %bb.gb ], [ %i.wt, %bb.ge ], [ %i.xc, %bb.gh ], [ %i.xl, %bb.gk ], [ %i.xu, %bb.gn ], [ %i.yd, %bb.gq ], [ %i.ym, %bb.gt ], [ %i.yq, %bb.gu ], [ %i.yw, %bb.gv ], [ %.sroa.0.0.copyload, %bb.gw ], [ %i.ze, %bb.gx ], [ %.sroa.0.0.copyload, %bb.gz ], [ %.sroa.0.0.copyload, %bb.ha ], [ %.sroa.0.0.copyload, %bb.hc ], [ %.sroa.0.0.copyload, %bb.hd ], [ %.sroa.0.0.copyload, %bb.he ], [ %.sroa.0.0.copyload, %bb.hb ], [ %.sroa.0.0.copyload, %bb.hg ], [ %.sroa.0.0.copyload, %bb.hh ], [ %.sroa.0.0.copyload, %bb.hf ], [ %i.zy, %bb.hl ], [ %i.aah, %bb.ho ], [ %.sroa.0.0.copyload, %bb.hi ], [ %i.aar, %bb.hs ], [ %i.aat, %bb.ht ], [ %i.aav, %bb.hu ], [ %i.aax, %bb.hv ], [ %i.aaz, %bb.hw ], [ %i.abb, %bb.hx ], [ %i.abd, %bb.hy ], [ inttoptr (i64 322 to ptr), %bb.hz ], [ inttoptr (i64 323 to ptr), %bb.ia ], [ %.sroa.0.0.copyload, %bb.ib ], [ %i.abk, %bb.ic ], [ %.sroa.0.0.copyload, %bb.id ], [ %.sroa.0.0.copyload, %bb.jq ]
  %i.aff = sub nsw i64 0, %i.bh                   ; 2 uses
  %i.afg = getelementptr inbounds [8 x i8], ptr %.3, i64 %i.aff
  %i.afh = getelementptr inbounds i8, ptr %.3262, i64 %i.aff ; 2 uses
  %i.afi = getelementptr inbounds nuw i8, ptr %i.afg, i64 8 ; 2 uses
  store ptr %.sroa.0.0, ptr %i.afi, align 8, !tbaa !9
  %i.afj = getelementptr inbounds i8, ptr @yyr1, i64 %i.be
  %i.afk = load i8, ptr %i.afj, align 1, !tbaa !9
  %i.afl = zext i8 %i.afk to i64
  %i.afm = add nsw i64 %i.afl, -85                ; 2 uses
  %i.afn = getelementptr inbounds [2 x i8], ptr @yypgoto, i64 %i.afm
  %i.afo = load i16, ptr %i.afn, align 2, !tbaa !11
  %i.afp = sext i16 %i.afo to i32
  %i.afq = load i8, ptr %i.afh, align 1, !tbaa !9
  %i.afr = zext i8 %i.afq to i32                  ; 2 uses
  %i.afs = add nsw i32 %i.afr, %i.afp             ; 2 uses
  %or.cond7 = icmp ult i32 %i.afs, 261
  br i1 %or.cond7, label %bb.js, label %bb.ju

bb.js:                                            ; preds = %bb.jr
  %i.aft = zext nneg i32 %i.afs to i64            ; 2 uses
  %i.afu = getelementptr inbounds nuw i8, ptr @yycheck, i64 %i.aft
  %i.afv = load i8, ptr %i.afu, align 1, !tbaa !9
  %i.afw = sext i8 %i.afv to i32
  %i.afx = icmp eq i32 %i.afw, %i.afr
  br i1 %i.afx, label %bb.jt, label %bb.ju

bb.jt:                                            ; preds = %bb.js
  %i.afy = getelementptr inbounds nuw i8, ptr @yytable, i64 %i.aft
  br label %bb.jv

bb.ju:                                            ; preds = %bb.js, %bb.jr
  %i.afz = getelementptr inbounds i8, ptr @yydefgoto, i64 %i.afm
  br label %bb.jv

bb.jv:                                            ; preds = %bb.ju, %bb.jt
  %.in.in = phi ptr [ %i.afy, %bb.jt ], [ %i.afz, %bb.ju ]
  %.in = load i8, ptr %.in.in, align 1, !tbaa !9
  br label %bb.b

bb.jw:                                            ; preds = %bb.u
  %i.aga = load i32, ptr @H5LTyynerrs, align 4, !tbaa !8
  %i.agb = add nsw i32 %i.aga, 1
  store i32 %i.agb, ptr @H5LTyynerrs, align 4, !tbaa !8
  %i.agc = call i32 @H5LTyyerror(ptr noundef nonnull @.str) #8 ; 0 uses
  br label %.loopexit

bb.jx:                                            ; preds = %bb.d, %bb.e
  %i.agd = call i32 @H5LTyyerror(ptr noundef nonnull @.str.3) #8 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.thread341, %bb.o, %bb.jw, %bb.jx
  %.5272 = phi ptr [ %.0267, %bb.jx ], [ %.3270, %bb.o ], [ %.3270, %bb.jw ], [ %.3270, %.thread341 ] ; 2 uses
  %.0250 = phi i64 [ 2, %bb.jx ], [ 1, %bb.o ], [ 1, %bb.jw ], [ 0, %.thread341 ] ; 2 uses
  %.not324 = icmp eq ptr %.5272, %i.a
  br i1 %.not324, label %bb.jy, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %bb.h, %.loopexit
  %.0250388 = phi i64 [ %.0250, %.loopexit ], [ 1, %bb.h ]
  %.5272387 = phi ptr [ %.5272, %.loopexit ], [ %i.s, %bb.h ]
  call void @free(ptr noundef %.5272387) #8
  br label %bb.jy

bb.jy:                                            ; preds = %.loopexit, %.loopexit.thread, %bb.x
  %.0 = phi i64 [ %i.bk, %bb.x ], [ %.0250388, %.loopexit.thread ], [ %.0250, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i64 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

declare i32 @H5LTyylex() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare i64 @H5Tcopy(i64 noundef) local_unnamed_addr #4

declare i32 @H5open() local_unnamed_addr #4

declare i64 @H5Tcreate(i32 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @H5Tget_size(i64 noundef) local_unnamed_addr #4

declare i32 @H5Tset_size(i64 noundef, i64 noundef) local_unnamed_addr #4

declare i32 @H5Tinsert(i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare i32 @H5Tclose(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #6

declare i64 @H5Tarray_create2(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare i64 @H5Tvlen_create(i64 noundef) local_unnamed_addr #4

declare i64 @H5Tcomplex_create(i64 noundef) local_unnamed_addr #4

declare i32 @H5Tset_tag(i64 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @H5Tset_strpad(i64 noundef, i32 noundef) local_unnamed_addr #4

declare i32 @H5Tset_cset(i64 noundef, i32 noundef) local_unnamed_addr #4

declare i64 @H5Tenum_create(i64 noundef) local_unnamed_addr #4

declare i64 @H5Tget_super(i64 noundef) local_unnamed_addr #4

declare i64 @H5Tget_native_type(i64 noundef, i32 noundef) local_unnamed_addr #4

declare i32 @H5Tget_order(i64 noundef) local_unnamed_addr #4

declare i32 @H5Tequal(i64 noundef, i64 noundef) local_unnamed_addr #4

declare i32 @H5Tconvert(i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare i32 @H5Tenum_insert(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @H5LTyyerror(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="16384" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!5, !5, i64 0}
!9 = !{!4, !4, i64 0}
!10 = !{!"short", !4, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"_Bool", !4, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{i8 0, i8 2}
!15 = !{}
!16 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!17 = !{!"long", !4, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"cmpd_info", !17, i64 0, !12, i64 8, !12, i64 9}
!20 = !{!19, !17, i64 0}
!21 = !{!19, !12, i64 9}
!22 = !{!19, !12, i64 8}
!23 = !{!"arr_info", !4, i64 0, !5, i64 256, !12, i64 260}
!24 = !{!23, !5, i64 256}
!25 = !{!23, !12, i64 260}
!26 = !{!"any pointer", !4, i64 0}
!27 = !{!"p1 omnipotent char", !26, i64 0}
!28 = !{!27, !27, i64 0}
!29 = !{!"long long", !4, i64 0}
!30 = !{!29, !29, i64 0}
end_hunk_1
