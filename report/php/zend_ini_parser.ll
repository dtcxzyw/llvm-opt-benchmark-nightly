Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/zend_ini_parser?download=true
inline.NumInlined: 40
inline.NumDeleted: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._zend_compiler_globals = type { %struct._zend_stack, ptr, ptr, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, %struct._zend_llist, ptr, i8, i8, i8, i8, ptr, i32, i32, %struct._zend_oparray_context, %struct._zend_file_context, ptr, %struct._zend_array, ptr, i64, i8, i8, i8, ptr, ptr, %struct._zend_stack, ptr, i32, ptr, ptr, i64, i64, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct._zend_stack }
%struct._zend_llist = type { ptr, ptr, i64, i64, ptr, i8, ptr }
%struct._zend_oparray_context = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i8, i8 }
%struct._zend_file_context = type { %struct._zend_declarables, ptr, i8, i8, ptr, ptr, ptr, %struct._zend_array }
%struct._zend_declarables = type { i64 }
%struct._zend_array = type { %struct._zend_refcounted_h, %union.anon.0, i32, %union.anon.1, i32, i32, i32, i32, i64, ptr }
%struct._zend_refcounted_h = type { i32, %union.anon }
%union.anon = type { i32 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { ptr }
%struct._zend_stack = type { i32, i32, i32, ptr }
%struct._zend_ini_scanner_globals = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct._zend_stack, ptr, i32, i32 }
%struct._zend_ini_parser_param = type { ptr, ptr }
%struct._zval_struct = type { %union._zend_value, %union.anon.3, %union.anon.6 }
%union._zend_value = type { i64 }
%union.anon.3 = type { i32 }
%union.anon.6 = type { i32 }

@compiler_globals = external local_unnamed_addr global %struct._zend_compiler_globals, align 8
@yypact = internal unnamed_addr constant [76 x i8] c"\D2v\D2I\EFQ\D2\D2\D2\D2\D2\D2\D2\00\D2\DE^\D2\D2\FF\D2\D2\D2\D2\D2\D2\E1f\D2\D2\06;\D2\D2\D2\D2\D2\D2\D2\D2\1C\1C\1C\D2f\19P\02\D2\D2\D2Q\D2\D2\D2\D2m\D2\D2H\1C\1C\1C\D2\FFxf\EC\D2\D2\D2\D2\D2\D2\D2\D2", align 16
@yytranslate = internal unnamed_addr constant [274 x i8] c"\00\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02)\17\02\1F\1E(\18+,\1D\1A\15\1B\16\1C\02\02\02\02\02\02\02\02\02\02\14\02!\13\22#$\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02*\19\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02%'& \02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12", align 16
@yycheck = internal unnamed_addr constant [144 x i8] c"\03\05\13\04\05\06\07\08*\1B\0B*\0C\10\0F\10\11\12&@\0E\13\17\10\1B\FF,\FF\1F\19\FF \04\05\06\07\08!\FF\0B),+.&\FF\FF3B\FF\19\1708()*\FF\FF\FF \FFAB'(\FF\FF\FF)\0B+\0D\FF<=>\04\05\06\07\08\17\FF\0B\04\05\06\07\08\FF\0B\0B\0D\FF\FF\17\19\04\05\06\07\08\17\17\0B\04\05\06\07\08'(\0B\FF\FF,\17\00\FF\0B\03\0D\FF\FF\17\FF\09\0A\FF\FF\0B\17\0D\FF\FF\12\FF\FF\FF\FF\FF\FF\17", align 16
@yytable = internal unnamed_addr constant [144 x i8] c"\11\1B\13\14\15\16\17\18 2\0D/\1E\22$%&'KI3@\19#1\002\007.\00(\14\15\16\17\188\00\0D)1*74\00\00B2\00<\19A79:;\00\00\00(\0071=>\00\00\00)\0D*5\00FGH\08\09\0A\0B\0C6\00\0D\14\15\16\17\18\00\0D\0D5\00\00\0E<\08\09\0A\0B\0C?\19\0D\14\15\16\17\18=>\0D\00\00E!\02\00\0D\035\00\000\00\04\05\00\00\0DD5\00\00\06\00\00\00\00\00\00J", align 16
@yydefact = internal unnamed_addr constant [76 x i8] c"\03\00\01\0A\07\11\08\02-,./0\00\14\00\09\15\16\0021345\14\00\10\1B\1C\00\00\04\14\18\19\0C\0D\0E\0F\00\00\00\05!\0B\00\00\14\1E\1F+(\13\17\12\00%&\00\00\00\00\1D\00\00*\00\1A'$\22#\06 )", align 16
@yyr2 = internal unnamed_addr constant [54 x i8] c"\00\02\02\00\03\03\05\01\01\01\00\01\01\01\01\01\01\00\02\02\00\01\01\03\02\02\04\01\01\03\02\02\04\01\03\03\03\02\02\03\03\05\01\00\01\01\01\01\01\01\01\01\01\01", align 16
@yyr1 = internal unnamed_addr constant [54 x i8] c"\00-../////0011111223334444445555556666666778899999:::::", align 16
@yypgoto = internal unnamed_addr constant [14 x i8] c"\D2\D2\D2\D2\D3\D2\04\D2\FC\0E\FD\D2\07\EE", align 1
@yydefgoto = internal unnamed_addr constant [14 x i8] c"\00\01\07\0F+\1A\1F\10,-\1CC\12\1D", align 1
@.str = private unnamed_addr constant [13 x i8] c"syntax error\00", align 1
@yystos = internal unnamed_addr constant [76 x i8] c"\00.\00\03\09\0A\12/\04\05\06\07\08\0B\170479\13\04\05\06\07\08\17257:\0C3*\1779\0F\10\11\12 )+1563*\177:\0E&\0D\1773666\19'(\17\13358\17,6661\17&", align 16
@.str.3 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@zend_empty_string = external local_unnamed_addr global ptr, align 8
@ini_scanner_globals = external local_unnamed_addr global %struct._zend_ini_scanner_globals, align 8
@.str.7 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@zend_getenv = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [28 x i8] c"syntax error, unexpected %s\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"syntax error, unexpected %s, expecting %s\00", align 1
@.str.10 = private unnamed_addr constant [48 x i8] c"syntax error, unexpected %s, expecting %s or %s\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"syntax error, unexpected %s, expecting %s or %s or %s\00", align 1
@.str.12 = private unnamed_addr constant [60 x i8] c"syntax error, unexpected %s, expecting %s or %s or %s or %s\00", align 1
@yytname = internal unnamed_addr constant [60 x ptr] [ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr null], align 16
@.str.13 = private unnamed_addr constant [14 x i8] c"\22end of file\22\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"\22invalid token\22\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"TC_SECTION\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"TC_RAW\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"TC_CONSTANT\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"TC_NUMBER\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"TC_STRING\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"TC_WHITESPACE\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"TC_LABEL\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"TC_OFFSET\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"TC_DOLLAR_CURLY\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"TC_VARNAME\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"TC_QUOTED_STRING\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"TC_FALLBACK\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"BOOL_TRUE\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"BOOL_FALSE\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"NULL_NULL\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"END_OF_LINE\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"'='\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"':'\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"','\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"'.'\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"'\22'\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"'\\''\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"'^'\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"'+'\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"'-'\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"'/'\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"'*'\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"'%'\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"'$'\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"'~'\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"'<'\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"'>'\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"'?'\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"'@'\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"'{'\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"'}'\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"'|'\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"'&'\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"'!'\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"']'\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"'('\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"')'\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"$accept\00", align 1
@.str.59 = private unnamed_addr constant [15 x i8] c"statement_list\00", align 1
@.str.60 = private unnamed_addr constant [10 x i8] c"statement\00", align 1
@.str.61 = private unnamed_addr constant [24 x i8] c"section_string_or_value\00", align 1
@.str.62 = private unnamed_addr constant [16 x i8] c"string_or_value\00", align 1
@.str.63 = private unnamed_addr constant [14 x i8] c"option_offset\00", align 1
@.str.64 = private unnamed_addr constant [14 x i8] c"encapsed_list\00", align 1
@.str.65 = private unnamed_addr constant [24 x i8] c"var_string_list_section\00", align 1
@.str.66 = private unnamed_addr constant [16 x i8] c"var_string_list\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"expr\00", align 1
@.str.68 = private unnamed_addr constant [12 x i8] c"cfg_var_ref\00", align 1
@.str.69 = private unnamed_addr constant [9 x i8] c"fallback\00", align 1
@.str.70 = private unnamed_addr constant [17 x i8] c"constant_literal\00", align 1
@.str.71 = private unnamed_addr constant [16 x i8] c"constant_string\00", align 1
@.str.72 = private unnamed_addr constant [21 x i8] c"%s in %s on line %d\0A\00", align 1
@.str.73 = private unnamed_addr constant [33 x i8] c"Invalid configuration directive\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.74 = private unnamed_addr constant [9 x i8] c"PHP:  %s\00", align 1
@.str.75 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @zend_parse_ini_file(ptr noundef %0, i1 noundef zeroext %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct._zend_ini_parser_param, align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  store ptr %3, ptr %5, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %4, ptr %i.a, align 8, !tbaa !15
  store ptr %5, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 144), align 8, !tbaa !38
  %i.b = call i32 @zend_ini_open_file_for_scanning(ptr noundef %0, i32 noundef %2) #16
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = zext i1 %1 to i8
  store i8 %i.d, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 84), align 4, !tbaa !39
  %i.e = call fastcc i32 @ini_parse()
  call void @shutdown_ini_scanner() #16
  %i.f = icmp ne i32 %i.e, 0
  %. = sext i1 %i.f to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.a ], [ %., %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @zend_ini_open_file_for_scanning(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 3) i32 @ini_parse() unnamed_addr #0 {
bb.a:
  %0 = alloca %struct._zval_struct, align 8       ; 11 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca double, align 8                   ; 5 uses
  %1 = alloca %struct._zval_struct, align 8       ; 8 uses
  %i.d = alloca [200 x i8], align 16              ; 6 uses
  %2 = alloca [200 x %struct._zval_struct], align 16 ; 4 uses
  %3 = alloca %struct._zval_struct, align 8       ; 55 uses
  %i.e = alloca [128 x i8], align 16              ; 6 uses
  %i.f = alloca i64, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #16
  store i64 128, ptr %i.f, align 8, !tbaa !40
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 8 uses
  br label %bb.c

bb.b:                                             ; preds = %27, %bb.fr, %bb.t
  %.0376 = phi ptr [ %.4379, %27 ], [ %.1377, %bb.fr ], [ %.1377, %bb.t ]
  %.0269 = phi i32 [ %28, %27 ], [ %i.mr, %bb.fr ], [ %i.ba, %bb.t ]
  %.0266 = phi i32 [ 3, %27 ], [ %.1270.a, %bb.fr ], [ %spec.select, %bb.t ]
  %.0247 = phi ptr [ %.4251, %27 ], [ %i.lz, %bb.fr ], [ %.3250, %bb.t ]
  %.0234 = phi ptr [ %29, %27 ], [ %i.ma, %bb.fr ], [ %i.bd, %bb.t ]
  %.0226 = phi i32 [ %.6, %27 ], [ %.5, %bb.fr ], [ -2, %bb.t ]
  %i.j = getelementptr inbounds nuw i8, ptr %.0247, i64 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.1377 = phi ptr [ %i.e, %bb.a ], [ %.0376, %bb.b ] ; 17 uses
  %.1270 = phi i32 [ 0, %bb.a ], [ %.0269, %bb.b ] ; 4 uses
  %.1270.a = phi i32 [ 0, %bb.a ], [ %.0266, %bb.b ] ; 3 uses
  %.0263 = phi i64 [ 200, %bb.a ], [ %.2265, %bb.b ] ; 4 uses
  %.0256 = phi ptr [ %i.d, %bb.a ], [ %.3259, %bb.b ] ; 8 uses
  %.1248 = phi ptr [ %i.d, %bb.a ], [ %i.j, %bb.b ] ; 6 uses
  %.0243 = phi ptr [ %2, %bb.a ], [ %.3246, %bb.b ] ; 2 uses
  %.1235 = phi ptr [ %2, %bb.a ], [ %.0234, %bb.b ] ; 3 uses
  %.1227 = phi i32 [ -2, %bb.a ], [ %.0226, %bb.b ] ; 7 uses
  %i.k = trunc nsw i32 %.1270 to i8
  store i8 %i.k, ptr %.1248, align 1, !tbaa !41
  %i.l = getelementptr inbounds i8, ptr %.0256, i64 %.0263
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -1
  %.not = icmp ugt ptr %i.m, %.1248
  br i1 %.not, label %.thread393, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = ptrtoint ptr %.1248 to i64
  %i.o = ptrtoint ptr %.0256 to i64
  %i.p = sub i64 %i.n, %i.o                       ; 3 uses
  %i.q = add nsw i64 %i.p, 1                      ; 3 uses
  %i.r = icmp sgt i64 %.0263, 9999
  br i1 %i.r, label %.thread386, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = shl nsw i64 %.0263, 1
  %spec.store.select = call i64 @llvm.smin.i64(i64 %i.s, i64 10000) ; 4 uses
  %i.t = mul nsw i64 %spec.store.select, 17
  %i.u = add nsw i64 %i.t, 15
  %i.v = call noalias ptr @malloc(i64 noundef %i.u) #17 ; 6 uses
  %.not292.not = icmp eq ptr %i.v, null
  br i1 %.not292.not, label %.thread386, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.v, ptr align 1 %.0256, i64 %i.q, i1 false)
  %i.w = add nsw i64 %spec.store.select, 15
  %i.x = sdiv i64 %i.w, 16
  %i.y = getelementptr inbounds [16 x i8], ptr %i.v, i64 %i.x ; 3 uses
  %i.z = shl i64 %i.q, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.y, ptr align 8 %.0243, i64 %i.z, i1 false)
  %.not293 = icmp eq ptr %.0256, %i.d
  br i1 %.not293, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @free(ptr noundef %.0256) #16
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.aa = getelementptr inbounds i8, ptr %i.v, i64 %i.p ; 2 uses
  %i.ab = getelementptr inbounds [16 x i8], ptr %i.y, i64 %i.q
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -16 ; 2 uses
  %i.ad = add nsw i64 %spec.store.select, -1
  %.not294 = icmp sgt i64 %i.ad, %i.p
  br i1 %.not294, label %.thread393, label %.loopexit

.thread393:                                       ; preds = %bb.h, %bb.c
  %.2265 = phi i64 [ %.0263, %bb.c ], [ %spec.store.select, %bb.h ]
  %.3259 = phi ptr [ %.0256, %bb.c ], [ %i.v, %bb.h ] ; 7 uses
  %.3250 = phi ptr [ %.1248, %bb.c ], [ %i.aa, %bb.h ] ; 9 uses
  %.3246 = phi ptr [ %.0243, %bb.c ], [ %i.y, %bb.h ]
  %.3237 = phi ptr [ %.1235, %bb.c ], [ %i.ac, %bb.h ] ; 81 uses
  %i.ae = icmp eq i32 %.1270, 2
  br i1 %i.ae, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %.thread393
  %i.af = sext i32 %.1270 to i64                  ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr @yypact, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !41  ; 3 uses
  %i.ai = sext i8 %i.ah to i32
  %i.aj = icmp eq i8 %i.ah, -46
  br i1 %i.aj, label %bb.u, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = icmp eq i32 %.1227, -2
  br i1 %i.ak, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.al = call i32 @ini_lex(ptr noundef nonnull %1) #16
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.2228 = phi i32 [ %i.al, %bb.k ], [ %.1227, %bb.j ] ; 6 uses
  %i.am = icmp slt i32 %.2228, 1
  br i1 %i.am, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = icmp eq i32 %.2228, 256
  br i1 %i.an, label %.thread412, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = icmp samesign ult i32 %.2228, 274
  br i1 %i.ao, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ap = zext nneg i32 %.2228 to i64
  %i.aq = getelementptr inbounds nuw i8, ptr @yytranslate, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !41
  %i.as = sext i8 %i.ar to i32
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.l
  %.0231 = phi i32 [ 0, %bb.l ], [ %i.as, %bb.o ], [ 2, %bb.n ] ; 2 uses
  %.3 = phi i32 [ 0, %bb.l ], [ %.2228, %bb.o ], [ %.2228, %bb.n ] ; 3 uses
  %i.at = add nsw i32 %.0231, %i.ai               ; 2 uses
  %or.cond3 = icmp ugt i32 %i.at, 143
  br i1 %or.cond3, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.au = zext nneg i32 %i.at to i64              ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr @yycheck, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !41
  %i.ax = sext i8 %i.aw to i32
  %.not295 = icmp eq i32 %.0231, %i.ax
  br i1 %.not295, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.ay = getelementptr inbounds nuw i8, ptr @yytable, i64 %i.au
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !41  ; 2 uses
  %i.ba = sext i8 %i.az to i32                    ; 2 uses
  %i.bb = icmp slt i8 %i.az, 1
  br i1 %i.bb, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bc = sub nsw i32 0, %i.ba
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  %spec.select = call i32 @llvm.usub.sat.i32(i32 %.1270.a, i32 1)
  %i.bd = getelementptr inbounds nuw i8, ptr %.3237, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !55
  br label %bb.b

bb.u:                                             ; preds = %bb.p, %bb.q, %bb.i
  %.4 = phi i32 [ %.1227, %bb.i ], [ %.3, %bb.p ], [ %.3, %bb.q ] ; 12 uses
  %i.be = getelementptr inbounds i8, ptr @yydefact, i64 %i.af
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !41  ; 2 uses
  %i.bg = sext i8 %i.bf to i32
  %i.bh = icmp eq i8 %i.bf, 0
  br i1 %i.bh, label %bb.fs, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s
  %.0233 = phi i32 [ %i.bg, %bb.u ], [ %i.bc, %bb.s ] ; 2 uses
  %.5 = phi i32 [ %.4, %bb.u ], [ %.3, %bb.s ]
  %i.bi = sext i32 %.0233 to i64                  ; 2 uses
  %i.bj = getelementptr inbounds i8, ptr @yyr2, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !41
  %i.bl = sext i8 %i.bk to i64                    ; 2 uses
  %i.bm = sub nsw i64 1, %i.bl
  %i.bn = getelementptr inbounds [16 x i8], ptr %.3237, i64 %i.bm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.bn, i64 16, i1 false), !tbaa.struct !55
  switch i32 %.0233, label %zend_string_release.exit313 [
    i32 53, label %bb.fn
    i32 4, label %bb.w
    i32 5, label %bb.ab
    i32 6, label %bb.al
    i32 7, label %bb.ba
    i32 9, label %bb.bf
    i32 10, label %bb.bg
    i32 11, label %bb.bj
    i32 12, label %bb.bo
    i32 13, label %bb.bp
    i32 14, label %bb.bq
    i32 15, label %bb.br
    i32 16, label %bb.bu
    i32 17, label %bb.bv
    i32 18, label %bb.by
    i32 19, label %bb.cc
    i32 20, label %bb.cg
    i32 21, label %bb.cj
    i32 22, label %bb.ck
    i32 23, label %bb.cl
    i32 24, label %bb.cm
    i32 25, label %bb.cq
    i32 26, label %bb.cu
    i32 27, label %bb.cy
    i32 28, label %bb.cz
    i32 29, label %bb.da
    i32 30, label %bb.db
    i32 31, label %bb.df
    i32 32, label %bb.dj
    i32 33, label %bb.dn
    i32 34, label %bb.do
    i32 35, label %bb.dp
    i32 36, label %bb.dq
    i32 37, label %bb.dr
    i32 38, label %bb.ds
    i32 39, label %bb.dt
    i32 40, label %bb.du
    i32 41, label %bb.dy
    i32 42, label %bb.ef
    i32 43, label %bb.eg
    i32 44, label %bb.ej
    i32 45, label %bb.ek
    i32 46, label %bb.el
    i32 47, label %bb.em
    i32 48, label %bb.en
    i32 49, label %bb.eo
    i32 50, label %bb.fk
    i32 51, label %bb.fl
    i32 52, label %bb.fm
  ]

bb.w:                                             ; preds = %bb.v
  %i.bo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 144), align 8, !tbaa !38 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !14
  %i.bq = getelementptr inbounds i8, ptr %.3237, i64 -16 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !15
  call void %i.bp(ptr noundef nonnull %i.bq, ptr noundef null, ptr noundef null, i32 noundef 2, ptr noundef %i.bs) #16
  %i.bt = load ptr, ptr %i.bq, align 8, !tbaa !41 ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !41 ; 2 uses
  %i.bw = and i32 %i.bv, 64
  %.not.i311 = icmp eq i32 %i.bw, 0
  br i1 %.not.i311, label %bb.x, label %zend_string_release.exit313

bb.x:                                             ; preds = %bb.w
  %i.bx = load i32, ptr %i.bt, align 4, !tbaa !42 ; 2 uses
  %i.by = icmp ne i32 %i.bx, 0
  call void @llvm.assume(i1 %i.by)
  %i.bz = add i32 %i.bx, -1                       ; 2 uses
  store i32 %i.bz, ptr %i.bt, align 4, !tbaa !42
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %bb.y, label %zend_string_release.exit313

bb.y:                                             ; preds = %bb.x
  %i.cb = and i32 %i.bv, 128
  %.not5.i312 = icmp eq i32 %i.cb, 0
  br i1 %.not5.i312, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @free(ptr noundef nonnull %i.bt) #16
  br label %zend_string_release.exit313

bb.aa:                                            ; preds = %bb.y
  call void @_efree(ptr noundef nonnull %i.bt) #16
  br label %zend_string_release.exit313

bb.ab:                                            ; preds = %bb.v
  %i.cc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 144), align 8, !tbaa !38 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !14
  %i.ce = getelementptr inbounds i8, ptr %.3237, i64 -32 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !15
  call void %i.cd(ptr noundef nonnull %i.ce, ptr noundef nonnull %.3237, ptr noundef null, i32 noundef 1, ptr noundef %i.cg) #16
  %i.ch = load ptr, ptr %i.ce, align 8, !tbaa !41 ; 5 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !41 ; 2 uses
  %i.ck = and i32 %i.cj, 64
  %.not.i308 = icmp eq i32 %i.ck, 0
  br i1 %.not.i308, label %bb.ac, label %zend_string_release.exit310

bb.ac:                                            ; preds = %bb.ab
  %i.cl = load i32, ptr %i.ch, align 4, !tbaa !42 ; 2 uses
  %i.cm = icmp ne i32 %i.cl, 0
  call void @llvm.assume(i1 %i.cm)
  %i.cn = add i32 %i.cl, -1                       ; 2 uses
  store i32 %i.cn, ptr %i.ch, align 4, !tbaa !42
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %bb.ad, label %zend_string_release.exit310

bb.ad:                                            ; preds = %bb.ac
  %i.cp = and i32 %i.cj, 128
  %.not5.i309 = icmp eq i32 %i.cp, 0
  br i1 %.not5.i309, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @free(ptr noundef nonnull %i.ch) #16
  br label %zend_string_release.exit310

bb.af:                                            ; preds = %bb.ad
  call void @_efree(ptr noundef nonnull %i.ch) #16
  br label %zend_string_release.exit310

zend_string_release.exit310:                      ; preds = %bb.ab, %bb.ac, %bb.ae, %bb.af
  %i.cq = getelementptr inbounds nuw i8, ptr %.3237, i64 8
  %i.cr = load i8, ptr %i.cq, align 8, !tbaa !41
  %i.cs = icmp eq i8 %i.cr, 6
  br i1 %i.cs, label %bb.ag, label %zend_string_release.exit313

bb.ag:                                            ; preds = %zend_string_release.exit310
  %i.ct = load ptr, ptr %.3237, align 8, !tbaa !41 ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !41 ; 2 uses
  %i.cw = and i32 %i.cv, 64
  %.not.i.i = icmp eq i32 %i.cw, 0
  br i1 %.not.i.i, label %bb.ah, label %zend_string_release.exit313

bb.ah:                                            ; preds = %bb.ag
  %i.cx = load i32, ptr %i.ct, align 4, !tbaa !42 ; 2 uses
  %i.cy = icmp ne i32 %i.cx, 0
  call void @llvm.assume(i1 %i.cy)
  %i.cz = add i32 %i.cx, -1                       ; 2 uses
  store i32 %i.cz, ptr %i.ct, align 4, !tbaa !42
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %bb.ai, label %zend_string_release.exit313

bb.ai:                                            ; preds = %bb.ah
  %i.db = and i32 %i.cv, 128
  %.not5.i.i = icmp eq i32 %i.db, 0
  br i1 %.not5.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @free(ptr noundef nonnull %i.ct) #16
  br label %zend_string_release.exit313

bb.ak:                                            ; preds = %bb.ai
  call void @_efree(ptr noundef nonnull %i.ct) #16
  br label %zend_string_release.exit313

bb.al:                                            ; preds = %bb.v
  %i.dc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 144), align 8, !tbaa !38 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !14
  %i.de = getelementptr inbounds i8, ptr %.3237, i64 -64 ; 2 uses
  %i.df = getelementptr inbounds i8, ptr %.3237, i64 -48 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !15
  call void %i.dd(ptr noundef nonnull %i.de, ptr noundef nonnull %.3237, ptr noundef nonnull %i.df, i32 noundef 3, ptr noundef %i.dh) #16
  %i.di = load ptr, ptr %i.de, align 8, !tbaa !41 ; 5 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 4
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !41 ; 2 uses
  %i.dl = and i32 %i.dk, 64
  %.not.i305 = icmp eq i32 %i.dl, 0
  br i1 %.not.i305, label %bb.am, label %zend_string_release.exit307

bb.am:                                            ; preds = %bb.al
  %i.dm = load i32, ptr %i.di, align 4, !tbaa !42 ; 2 uses
  %i.dn = icmp ne i32 %i.dm, 0
  call void @llvm.assume(i1 %i.dn)
  %i.do = add i32 %i.dm, -1                       ; 2 uses
  store i32 %i.do, ptr %i.di, align 4, !tbaa !42
  %i.dp = icmp eq i32 %i.do, 0
  br i1 %i.dp, label %bb.an, label %zend_string_release.exit307

end_hunk_0
begin_hunk_1_@ini_parse:bb.a
  br i1 %.not29.i, label %bb.eu, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kb, i64 4
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !41 ; 2 uses
  %i.kg = and i32 %i.kf, 128
  %.not30.i = icmp eq i32 %i.kg, 0
  %i.kh = and i32 %i.kf, 15
  %i.ki = icmp eq i32 %i.kh, 8
  %or.cond.i = or i1 %.not30.i, %i.ki
  br i1 %or.cond.i, label %.critedge.i, label %bb.et, !prof !56

.critedge.i:                                      ; preds = %bb.es
  %i.kj = load i32, ptr %i.kb, align 4, !tbaa !42
  %i.kk = add i32 %i.kj, 1
  store i32 %i.kk, ptr %i.kb, align 4, !tbaa !42
  br label %bb.eu

bb.et:                                            ; preds = %bb.es
  call void @zval_copy_ctor_func(ptr noundef nonnull %0) #16
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %.critedge.i, %bb.er
  %i.kl = load i32, ptr %i.h, align 8             ; 2 uses
  %i.km = and i32 %i.kl, 255
  %i.kn = icmp eq i32 %i.km, 11
  %i.ko = trunc i32 %i.kl to i8
  br i1 %i.kn, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  %i.kp = call i32 @zval_update_constant_ex(ptr noundef nonnull %0, ptr noundef null) #16 ; 0 uses
  %.pre.i = load i8, ptr %i.h, align 8, !tbaa !41
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.eu
  %i.kq = phi i8 [ %.pre.i, %bb.ev ], [ %i.ko, %bb.eu ]
  %.not31.i = icmp eq i8 %i.kq, 6
  br i1 %.not31.i, label %bb.ey, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  call void @_convert_to_string(ptr noundef nonnull %0) #16
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.ew, %bb.eq
  %.0.i = phi ptr [ %i.jy, %bb.eq ], [ %0, %bb.ex ], [ %0, %bb.ew ] ; 2 uses
  %i.kr = load ptr, ptr %.0.i, align 8, !tbaa !41 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 24
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kr, i64 16
  %i.ku = load i64, ptr %i.kt, align 8, !tbaa !51 ; 4 uses
  %i.kv = load i8, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 84), align 4, !tbaa !39, !range !43, !noundef !44
  %i.kw = trunc nuw i8 %i.kv to i1
  %i.kx = and i64 %i.ku, -8
  %i.ky = add i64 %i.kx, 32                       ; 2 uses
  br i1 %i.kw, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %bb.ey
  %i.kz = call noalias ptr @__zend_malloc(i64 noundef %i.ky) #17
  br label %zend_string_alloc.exit.i

bb.fa:                                            ; preds = %bb.ey
  %i.la = call noalias ptr @_emalloc(i64 noundef %i.ky) #17
  br label %zend_string_alloc.exit.i

zend_string_alloc.exit.i:                         ; preds = %bb.fa, %bb.ez
  %i.lb = phi i32 [ 150, %bb.ez ], [ 22, %bb.fa ]
  %i.lc = phi ptr [ %i.kz, %bb.ez ], [ %i.la, %bb.fa ] ; 6 uses
  store i32 1, ptr %i.lc, align 4, !tbaa !42
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 4
  store i32 %i.lb, ptr %i.ld, align 4, !tbaa !41
  %i.le = getelementptr inbounds nuw i8, ptr %i.lc, i64 8
  store i64 0, ptr %i.le, align 8, !tbaa !52
  %i.lf = getelementptr inbounds nuw i8, ptr %i.lc, i64 16
  store i64 %i.ku, ptr %i.lf, align 8, !tbaa !51
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lc, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.lg, ptr nonnull align 8 %i.ks, i64 %i.ku, i1 false)
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 %i.ku
  store i8 0, ptr %i.lh, align 1, !tbaa !41
  store ptr %i.lc, ptr %3, align 8, !tbaa !41
  store i32 262, ptr %i.i, align 8, !tbaa !41
  %i.li = icmp eq ptr %.0.i, %0
  br i1 %i.li, label %bb.fb, label %zend_string_release.exit.i

bb.fb:                                            ; preds = %zend_string_alloc.exit.i
  %i.lj = load ptr, ptr %0, align 8, !tbaa !41    ; 5 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 4
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !41 ; 2 uses
  %i.lm = and i32 %i.ll, 64
  %.not.i.i370 = icmp eq i32 %i.lm, 0
  br i1 %.not.i.i370, label %bb.fc, label %zend_string_release.exit.i

bb.fc:                                            ; preds = %bb.fb
  %i.ln = load i32, ptr %i.lj, align 4, !tbaa !42 ; 2 uses
  %i.lo = icmp ne i32 %i.ln, 0
  call void @llvm.assume(i1 %i.lo)
  %i.lp = add i32 %i.ln, -1                       ; 2 uses
  store i32 %i.lp, ptr %i.lj, align 4, !tbaa !42
  %i.lq = icmp eq i32 %i.lp, 0
  br i1 %i.lq, label %bb.fd, label %zend_string_release.exit.i

bb.fd:                                            ; preds = %bb.fc
  %i.lr = and i32 %i.ll, 128
  %.not5.i.i371 = icmp eq i32 %i.lr, 0
  br i1 %.not5.i.i371, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  call void @free(ptr noundef nonnull %i.lj) #16
  br label %zend_string_release.exit.i

bb.ff:                                            ; preds = %bb.fd
  call void @_efree(ptr noundef nonnull %i.lj) #16
  br label %zend_string_release.exit.i

zend_string_release.exit.i:                       ; preds = %bb.ff, %bb.fe, %bb.fc, %bb.fb, %zend_string_alloc.exit.i
  %i.ls = load ptr, ptr %.3237, align 8, !tbaa !41 ; 3 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 4
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !41 ; 2 uses
  %i.lv = and i32 %i.lu, 64
  %.not.i32.i = icmp eq i32 %i.lv, 0
  br i1 %.not.i32.i, label %bb.fg, label %zend_ini_get_constant.exit

bb.fg:                                            ; preds = %zend_string_release.exit.i
  %i.lw = and i32 %i.lu, 128
  %.not4.i.i = icmp eq i32 %i.lw, 0
  br i1 %.not4.i.i, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  call void @free(ptr noundef nonnull %i.ls) #16
  br label %zend_ini_get_constant.exit

bb.fi:                                            ; preds = %bb.fg
  call void @_efree(ptr noundef nonnull %i.ls) #16
  br label %zend_ini_get_constant.exit

bb.fj:                                            ; preds = %bb.ep, %bb.eo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull readonly align 8 dereferenceable(16) %.3237, i64 16, i1 false), !tbaa.struct !55
  br label %zend_ini_get_constant.exit

zend_ini_get_constant.exit:                       ; preds = %zend_string_release.exit.i, %bb.fh, %bb.fi, %bb.fj
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #16
  br label %zend_string_release.exit313

bb.fk:                                            ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %.3237, i64 16, i1 false), !tbaa.struct !55
  br label %zend_string_release.exit313

bb.fl:                                            ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %.3237, i64 16, i1 false), !tbaa.struct !55
  store i32 1, ptr %i.g, align 4, !tbaa !41
  br label %zend_string_release.exit313

bb.fm:                                            ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %.3237, i64 16, i1 false), !tbaa.struct !55
  br label %zend_string_release.exit313

bb.fn:                                            ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %.3237, i64 16, i1 false), !tbaa.struct !55
  br label %zend_string_release.exit313

zend_string_release.exit313:                      ; preds = %bb.ee, %bb.ed, %zend_string_free.exit317, %bb.dx, %bb.dw, %bb.du, %bb.dm, %bb.dl, %bb.dj, %bb.di, %bb.dh, %bb.df, %bb.de, %bb.dd, %bb.db, %bb.cx, %bb.cw, %bb.cu, %bb.ct, %bb.cs, %bb.cq, %bb.cp, %bb.co, %bb.cm, %bb.cf, %bb.ce, %bb.cc, %bb.cb, %bb.ca, %bb.by, %bb.bn, %convert_to_number.exit.thread.i, %bb.bk, %bb.bj, %bb.be, %bb.bd, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.aw, %bb.av, %zval_ini_dtor.exit352, %bb.ak, %bb.aj, %bb.ah, %bb.ag, %zend_string_release.exit310, %bb.aa, %bb.z, %bb.x, %bb.w, %bb.v, %bb.fn, %bb.fm, %bb.fl, %bb.fk, %zend_ini_get_constant.exit, %bb.en, %bb.em, %bb.el, %bb.ek, %bb.ej, %zend_ini_init_string.exit368, %bb.ef, %bb.dt, %bb.ds, %bb.dr, %bb.dq, %bb.dp, %bb.do, %bb.dn, %bb.da, %bb.cz, %bb.cy, %bb.cl, %bb.ck, %bb.cj, %zend_ini_init_string.exit365, %zend_ini_init_string.exit362, %bb.bu, %zend_ini_init_string.exit359, %bb.bq, %bb.bp, %bb.bo, %zend_ini_init_string.exit, %bb.bf
  %i.lx = sub nsw i64 0, %i.bl                    ; 2 uses
  %i.ly = getelementptr inbounds [16 x i8], ptr %.3237, i64 %i.lx
  %i.lz = getelementptr inbounds i8, ptr %.3250, i64 %i.lx ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ly, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ma, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !55
  %i.mb = getelementptr inbounds i8, ptr @yyr1, i64 %i.bi
  %i.mc = load i8, ptr %i.mb, align 1, !tbaa !41
  %i.md = sext i8 %i.mc to i64
  %i.me = add nsw i64 %i.md, -45                  ; 2 uses
  %i.mf = getelementptr inbounds i8, ptr @yypgoto, i64 %i.me
  %i.mg = load i8, ptr %i.mf, align 1, !tbaa !41
  %i.mh = sext i8 %i.mg to i32
  %i.mi = load i8, ptr %i.lz, align 1, !tbaa !41  ; 2 uses
  %i.mj = sext i8 %i.mi to i32
  %i.mk = add nsw i32 %i.mj, %i.mh                ; 2 uses
  %or.cond5 = icmp ult i32 %i.mk, 144
  br i1 %or.cond5, label %bb.fo, label %bb.fq

bb.fo:                                            ; preds = %zend_string_release.exit313
  %i.ml = zext nneg i32 %i.mk to i64              ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr @yycheck, i64 %i.ml
  %i.mn = load i8, ptr %i.mm, align 1, !tbaa !41
  %i.mo = icmp eq i8 %i.mn, %i.mi
  br i1 %i.mo, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %bb.fo
  %i.mp = getelementptr inbounds nuw i8, ptr @yytable, i64 %i.ml
  br label %bb.fr

bb.fq:                                            ; preds = %bb.fo, %zend_string_release.exit313
  %i.mq = getelementptr inbounds i8, ptr @yydefgoto, i64 %i.me
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fq, %bb.fp
  %.in.in = phi ptr [ %i.mp, %bb.fp ], [ %i.mq, %bb.fq ]
  %.in = load i8, ptr %.in.in, align 1, !tbaa !41
  %i.mr = sext i8 %.in to i32
  br label %bb.b

bb.fs:                                            ; preds = %bb.u
  %i.ms = icmp eq i32 %.4, -2
  br i1 %i.ms, label %4, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %or.cond7 = icmp ult i32 %.4, 274
  br i1 %or.cond7, label %bb.fu, label %4

bb.fu:                                            ; preds = %bb.ft
  %i.mt = zext nneg i32 %.4 to i64
  %i.mu = getelementptr inbounds nuw i8, ptr @yytranslate, i64 %i.mt
  %i.mv = load i8, ptr %i.mu, align 1, !tbaa !41
  %i.mw = sext i8 %i.mv to i32
  br label %4

4:                                                ; preds = %bb.fu, %bb.ft, %bb.fs
  %5 = phi i32 [ -2, %bb.fs ], [ %i.mw, %bb.fu ], [ 2, %bb.ft ] ; 3 uses
  switch i32 %.1270.a, label %.thread412 [
    i32 0, label %bb.fv
    i32 3, label %8
  ]

bb.fv:                                            ; preds = %4
  %i.mx = call fastcc i32 @yysyntax_error(ptr noundef %i.f, ptr %.1377, ptr %.3250, i32 %5)
  switch i32 %i.mx, label %.thread401 [
    i32 0, label %.thread405
    i32 -1, label %6
  ]

.thread405:                                       ; preds = %bb.fv
  call fastcc void @ini_error(ptr noundef %.1377)
  br label %.thread412

6:                                                ; preds = %bb.fv
  %.not298 = icmp eq ptr %.1377, %i.e
  br i1 %.not298, label %bb.fw, label %7

7:                                                ; preds = %6
  call void @free(ptr noundef %.1377) #16
  br label %bb.fw

bb.fw:                                            ; preds = %7, %6
  %i.my = load i64, ptr %i.f, align 8, !tbaa !40
  %i.mz = call noalias ptr @malloc(i64 noundef %i.my) #17 ; 5 uses
  %.not299 = icmp eq ptr %i.mz, null
  br i1 %.not299, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %bb.fw
  store i64 128, ptr %i.f, align 8, !tbaa !40
  br label %.thread401

.thread401:                                       ; preds = %bb.fv, %bb.fx
  %.2.ph = phi ptr [ %i.e, %bb.fx ], [ %.1377, %bb.fv ]
  call fastcc void @ini_error(ptr noundef nonnull @.str)
  br label %.thread386

bb.fy:                                            ; preds = %bb.fw
  %i.na = call fastcc i32 @yysyntax_error(ptr noundef %i.f, ptr nonnull %i.mz, ptr %.3250, i32 %5)
  call fastcc void @ini_error(ptr noundef nonnull %i.mz)
  %i.nb = icmp eq i32 %i.na, -2
  br i1 %i.nb, label %.thread386, label %.thread412

8:                                                ; preds = %4
  %9 = icmp slt i32 %.4, 1
  br i1 %9, label %10, label %12

10:                                               ; preds = %8
  %11 = icmp eq i32 %.4, 0
  br i1 %11, label %.thread429, label %.thread412

12:                                               ; preds = %8
  call fastcc void @yydestruct(i32 noundef %5, ptr noundef %1)
  br label %.thread412

.thread412:                                       ; preds = %4, %bb.fy, %.thread405, %bb.m, %10, %12
  %.4379 = phi ptr [ %.1377, %10 ], [ %.1377, %12 ], [ %.1377, %4 ], [ %.1377, %bb.m ], [ %.1377, %.thread405 ], [ %i.mz, %bb.fy ] ; 2 uses
  %.6 = phi i32 [ %.4, %10 ], [ -2, %12 ], [ %.4, %4 ], [ 257, %bb.m ], [ %.4, %.thread405 ], [ %.4, %bb.fy ] ; 2 uses
  br label %13

13:                                               ; preds = %.lr.ph.a, %.thread412
  %14 = phi i8 [ %i.ah, %.thread412 ], [ %.pre, %.lr.ph.a ] ; 2 uses
  %.2271 = phi i32 [ %.1270, %.thread412 ], [ %i.nj, %.lr.ph.a ]
  %.4251 = phi ptr [ %.3250, %.thread412 ], [ %i.nh, %.lr.ph.a ] ; 4 uses
  %.4238 = phi ptr [ %.3237, %.thread412 ], [ %i.ng, %.lr.ph.a ] ; 4 uses
  %15 = sext i32 %.2271 to i64
  %16 = icmp sgt i8 %14, -2
  br i1 %16, label %.loopexit449, label %25

.loopexit449:                                     ; preds = %13
  %17 = sext i8 %14 to i64
  %18 = add nsw i64 %17, 1                        ; 2 uses
  %19 = getelementptr inbounds nuw i8, ptr @yycheck, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !41
  %i.nc = icmp eq i8 %20, 1
  br i1 %i.nc, label %21, label %25

21:                                               ; preds = %.loopexit449
  %22 = getelementptr inbounds nuw i8, ptr @yytable, i64 %18
  %23 = load i8, ptr %22, align 1, !tbaa !41      ; 2 uses
  %24 = icmp sgt i8 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %.loopexit449, %21, %13
  %26 = icmp eq ptr %.4251, %.3259
  br i1 %26, label %.loopexit, label %.lr.ph.a

.lr.ph.a:                                         ; preds = %25
  %i.nd = getelementptr inbounds i8, ptr @yystos, i64 %15
  %i.ne = load i8, ptr %i.nd, align 1, !tbaa !41
  %i.nf = sext i8 %i.ne to i32
  call fastcc void @yydestruct(i32 noundef %i.nf, ptr noundef %.4238)
  %i.ng = getelementptr inbounds i8, ptr %.4238, i64 -16
  %i.nh = getelementptr inbounds i8, ptr %.4251, i64 -1 ; 2 uses
  %i.ni = load i8, ptr %i.nh, align 1, !tbaa !41  ; 2 uses
  %i.nj = sext i8 %i.ni to i32
  %.phi.trans.insert = sext i8 %i.ni to i64
  %.phi.trans.insert513 = getelementptr inbounds i8, ptr @yypact, i64 %.phi.trans.insert
  %.pre = load i8, ptr %.phi.trans.insert513, align 1, !tbaa !41
  br label %13

27:                                               ; preds = %21
  %28 = zext nneg i8 %23 to i32
  %29 = getelementptr inbounds nuw i8, ptr %.4238, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %29, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !55
  br label %bb.b

.thread386:                                       ; preds = %bb.e, %bb.d, %bb.fy, %.thread401
  %.3378 = phi ptr [ %.2.ph, %.thread401 ], [ %.1377, %bb.e ], [ %.1377, %bb.d ], [ %i.mz, %bb.fy ]
  %.5261 = phi ptr [ %.3259, %.thread401 ], [ %.0256, %bb.e ], [ %.0256, %bb.d ], [ %.3259, %bb.fy ]
  %.6253 = phi ptr [ %.3250, %.thread401 ], [ %.1248, %bb.e ], [ %.1248, %bb.d ], [ %.3250, %bb.fy ]
  %.6240 = phi ptr [ %.3237, %.thread401 ], [ %.1235, %bb.e ], [ %.1235, %bb.d ], [ %.3237, %bb.fy ]
  %.8 = phi i32 [ %.4, %.thread401 ], [ %.1227, %bb.e ], [ %.1227, %bb.d ], [ %.4, %bb.fy ]
  call fastcc void @ini_error(ptr noundef nonnull @.str.3)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.h, %.thread393, %25, %.thread386
  %.6381 = phi ptr [ %.4379, %25 ], [ %.3378, %.thread386 ], [ %.1377, %.thread393 ], [ %.1377, %bb.h ] ; 3 uses
  %.6262 = phi ptr [ %.3259, %25 ], [ %.5261, %.thread386 ], [ %.3259, %.thread393 ], [ %i.v, %bb.h ] ; 3 uses
  %.7254 = phi ptr [ %.4251, %25 ], [ %.6253, %.thread386 ], [ %.3250, %.thread393 ], [ %i.aa, %bb.h ] ; 3 uses
  %.7241 = phi ptr [ %.4238, %25 ], [ %.6240, %.thread386 ], [ %.3237, %.thread393 ], [ %i.ac, %bb.h ] ; 3 uses
  %.0232 = phi i32 [ 1, %25 ], [ 2, %.thread386 ], [ 0, %.thread393 ], [ 1, %bb.h ] ; 3 uses
  %.9 = phi i32 [ %.6, %25 ], [ %.8, %.thread386 ], [ %.1227, %.thread393 ], [ %.1227, %bb.h ] ; 3 uses
  %.not300 = icmp eq i32 %.9, -2
  br i1 %.not300, label %bb.gb, label %bb.fz

bb.fz:                                            ; preds = %.loopexit
  %or.cond11 = icmp ult i32 %.9, 274
  br i1 %or.cond11, label %.thread429, label %bb.ga

.thread429:                                       ; preds = %10, %bb.fz
  %.6381423452 = phi ptr [ %.6381, %bb.fz ], [ %.1377, %10 ]
  %.6262425450 = phi ptr [ %.6262, %bb.fz ], [ %.3259, %10 ]
  %.7254427448 = phi ptr [ %.7254, %bb.fz ], [ %.3250, %10 ]
  %.7241429446 = phi ptr [ %.7241, %bb.fz ], [ %.3237, %10 ]
  %.0232431444 = phi i32 [ %.0232, %bb.fz ], [ 1, %10 ]
  %.9433442 = phi i32 [ %.9, %bb.fz ], [ 0, %10 ]
  %i.nk = zext nneg i32 %.9433442 to i64
  %i.nl = getelementptr inbounds nuw i8, ptr @yytranslate, i64 %i.nk
  %i.nm = load i8, ptr %i.nl, align 1, !tbaa !41
  %i.nn = sext i8 %i.nm to i32
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fz, %.thread429
  %.6381423451 = phi ptr [ %.6381423452, %.thread429 ], [ %.6381, %bb.fz ]
  %.6262425449 = phi ptr [ %.6262425450, %.thread429 ], [ %.6262, %bb.fz ]
  %.7254427447 = phi ptr [ %.7254427448, %.thread429 ], [ %.7254, %bb.fz ]
  %.7241429445 = phi ptr [ %.7241429446, %.thread429 ], [ %.7241, %bb.fz ]
  %.0232431443 = phi i32 [ %.0232431444, %.thread429 ], [ %.0232, %bb.fz ]
  %i.no = phi i32 [ %i.nn, %.thread429 ], [ 2, %bb.fz ]
  call fastcc void @yydestruct(i32 noundef %i.no, ptr noundef %1)
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %.loopexit
  %.0232432 = phi i32 [ %.0232431443, %bb.ga ], [ %.0232, %.loopexit ]
  %.7241430 = phi ptr [ %.7241429445, %bb.ga ], [ %.7241, %.loopexit ]
  %.7254428 = phi ptr [ %.7254427447, %bb.ga ], [ %.7254, %.loopexit ] ; 2 uses
  %.6262426 = phi ptr [ %.6262425449, %bb.ga ], [ %.6262, %.loopexit ] ; 4 uses
  %.6381424 = phi ptr [ %.6381423451, %bb.ga ], [ %.6381, %.loopexit ] ; 2 uses
  %.not301479 = icmp eq ptr %.7254428, %.6262426
  br i1 %.not301479, label %._crit_edge, label %.lr.ph482

.lr.ph482:                                        ; preds = %bb.gb, %.lr.ph482
  %.8242481 = phi ptr [ %i.nu, %.lr.ph482 ], [ %.7241430, %bb.gb ] ; 2 uses
  %.8255480 = phi ptr [ %i.nv, %.lr.ph482 ], [ %.7254428, %bb.gb ] ; 2 uses
  %i.np = load i8, ptr %.8255480, align 1, !tbaa !41
  %i.nq = sext i8 %i.np to i64
  %i.nr = getelementptr inbounds i8, ptr @yystos, i64 %i.nq
  %i.ns = load i8, ptr %i.nr, align 1, !tbaa !41
  %i.nt = sext i8 %i.ns to i32
  call fastcc void @yydestruct(i32 noundef %i.nt, ptr noundef %.8242481)
  %i.nu = getelementptr inbounds i8, ptr %.8242481, i64 -16
  %i.nv = getelementptr inbounds i8, ptr %.8255480, i64 -1 ; 2 uses
  %.not301 = icmp eq ptr %i.nv, %.6262426
  br i1 %.not301, label %._crit_edge, label %.lr.ph482, !llvm.loop !54

._crit_edge:                                      ; preds = %.lr.ph482, %bb.gb
  %.not302 = icmp eq ptr %.6262426, %i.d
  br i1 %.not302, label %bb.gd, label %bb.gc

bb.gc:                                            ; preds = %._crit_edge
  call void @free(ptr noundef %.6262426) #16
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gc, %._crit_edge
  %.not303 = icmp eq ptr %.6381424, %i.e
  br i1 %.not303, label %bb.gf, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  call void @free(ptr noundef %.6381424) #16
  br label %bb.gf

bb.gf:                                            ; preds = %bb.gd, %bb.ge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  ret i32 %.0232432
}

declare void @shutdown_ini_scanner() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @zend_parse_ini_string(ptr noundef %0, i1 noundef zeroext %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct._zend_ini_parser_param, align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  store ptr %3, ptr %5, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %4, ptr %i.a, align 8, !tbaa !15
  store ptr %5, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 144), align 8, !tbaa !38
  %i.b = call i32 @zend_ini_prepare_string_for_scanning(ptr noundef %0, i32 noundef %2) #16
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = zext i1 %1 to i8
  store i8 %i.d, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 84), align 4, !tbaa !39
  %i.e = call fastcc i32 @ini_parse()
  call void @shutdown_ini_scanner() #16
  %i.f = icmp ne i32 %i.e, 0
  %. = sext i1 %i.f to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.a ], [ %., %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  ret i32 %.0
}

declare i32 @zend_ini_prepare_string_for_scanning(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

declare i32 @ini_lex(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @zend_ini_init_string(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 16)) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 84), align 4, !tbaa !39, !range !43, !noundef !44
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias dereferenceable_or_null(32) ptr @__zend_malloc(i64 noundef 32) #17 ; 4 uses
  store i32 1, ptr %i.c, align 4, !tbaa !42
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 150, ptr %i.d, align 4, !tbaa !41
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.e, i8 0, i64 17, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @zend_empty_string, align 8, !tbaa !45
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink9 = phi ptr [ %i.c, %bb.b ], [ %i.f, %bb.c ]
  %.sink = phi i32 [ 262, %bb.b ], [ 6, %bb.c ]
  store ptr %.sink9, ptr %0, align 8, !tbaa !41
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sink, ptr %i.g, align 8, !tbaa !41
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !41
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @zend_ini_add_string(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 12)) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !41
  %.not = icmp eq i8 %i.b, 6
  br i1 %.not, label %zend_tmp_string_release.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 84), align 4, !tbaa !39, !range !43, !noundef !44
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = tail call ptr @zval_get_string_func(ptr noundef nonnull %1) #16 ; 8 uses
  br i1 %i.d, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !51   ; 4 uses
  %i.i = and i64 %i.h, -8
  %i.j = add i64 %i.i, 32
  %i.k = tail call noalias ptr @__zend_malloc(i64 noundef %i.j) #17 ; 6 uses
  store i32 1, ptr %i.k, align 4, !tbaa !42
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store i32 150, ptr %i.l, align 4, !tbaa !41
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 0, ptr %i.m, align 8, !tbaa !52
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %i.h, ptr %i.n, align 8, !tbaa !51
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.o, ptr nonnull align 8 %i.f, i64 %i.h, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.h
  store i8 0, ptr %i.p, align 1, !tbaa !41
  store ptr %i.k, ptr %1, align 8, !tbaa !41
  store i32 262, ptr %i.a, align 8, !tbaa !41
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !41
  %i.s = and i32 %i.r, 64
  %.not.i34 = icmp eq i32 %i.s, 0
  br i1 %.not.i34, label %bb.d, label %zend_tmp_string_release.exit

bb.d:                                             ; preds = %bb.c
  %i.t = load i32, ptr %i.e, align 8, !tbaa !42   ; 2 uses
  %i.u = icmp ne i32 %i.t, 0
  tail call void @llvm.assume(i1 %i.u)
  %i.v = add i32 %i.t, -1                         ; 2 uses
  store i32 %i.v, ptr %i.e, align 8, !tbaa !42
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.e, label %zend_tmp_string_release.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_efree(ptr noundef nonnull %i.e) #16
  br label %zend_tmp_string_release.exit

bb.f:                                             ; preds = %bb.b
  store ptr %i.e, ptr %1, align 8, !tbaa !41
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !41
  %i.z = and i32 %i.y, 64
  %.not29 = icmp eq i32 %i.z, 0
  %i.aa = select i1 %.not29, i32 262, i32 6
  store i32 %i.aa, ptr %i.a, align 8, !tbaa !41
  br label %zend_tmp_string_release.exit

zend_tmp_string_release.exit:                     ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.a
  %i.ab = load ptr, ptr %1, align 8, !tbaa !41    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !51 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !41
  %.not30 = icmp eq i8 %i.af, 6
  br i1 %.not30, label %bb.h, label %bb.g

bb.g:                                             ; preds = %zend_tmp_string_release.exit
  tail call void @_convert_to_string(ptr noundef nonnull %2) #16
  %.pre = load ptr, ptr %1, align 8, !tbaa !41    ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %.pre35 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !51
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %zend_tmp_string_release.exit
  %i.ag = phi i64 [ %.pre35, %bb.g ], [ %i.ad, %zend_tmp_string_release.exit ]
  %i.ah = phi ptr [ %.pre, %bb.g ], [ %i.ab, %zend_tmp_string_release.exit ] ; 8 uses
  %i.ai = load ptr, ptr %2, align 8, !tbaa !41
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !51
  %i.al = add i64 %i.ak, %i.ad
  %sext = shl i64 %i.al, 32
  %i.am = ashr exact i64 %sext, 32                ; 5 uses
  %i.an = load i8, ptr getelementptr inbounds nuw (i8, ptr @compiler_globals, i64 84), align 4, !tbaa !39, !range !43, !noundef !44
  %i.ao = trunc nuw i8 %i.an to i1                ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aq = icmp uge i64 %i.am, %i.ag
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ah, i64 4 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !41
  %i.at = and i32 %i.as, 64
  %.not.i32 = icmp eq i32 %i.at, 0
  br i1 %.not.i32, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.au = load i32, ptr %i.ah, align 4, !tbaa !42
  %i.av = icmp eq i32 %i.au, 1
  br i1 %i.av, label %bb.j, label %bb.n, !prof !57

bb.j:                                             ; preds = %bb.i
  %i.aw = and i64 %i.am, -8
  %i.ax = add nsw i64 %i.aw, 32                   ; 2 uses
  br i1 %i.ao, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ay = tail call ptr @__zend_realloc(ptr noundef nonnull %i.ah, i64 noundef %i.ax) #19
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.az = tail call ptr @_erealloc(ptr noundef nonnull %i.ah, i64 noundef %i.ax) #19
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ba = phi ptr [ %i.ay, %bb.k ], [ %i.az, %bb.l ] ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store i64 %i.am, ptr %i.bb, align 8, !tbaa !51
end_hunk_1
begin_hunk_2_@yydestruct:bb.a
  %i.hq = icmp ne i32 %i.hp, 0
  tail call void @llvm.assume(i1 %i.hq)
  %i.hr = add i32 %i.hp, -1                       ; 2 uses
  store i32 %i.hr, ptr %i.hl, align 4, !tbaa !42
  %i.hs = icmp eq i32 %i.hr, 0
  br i1 %i.hs, label %bb.di, label %zval_ini_dtor.exit

bb.di:                                            ; preds = %bb.dh
  %i.ht = and i32 %i.hn, 128
  %.not5.i.i75 = icmp eq i32 %i.ht, 0
  br i1 %.not5.i.i75, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  tail call void @free(ptr noundef nonnull %i.hl) #16
  br label %zval_ini_dtor.exit

bb.dk:                                            ; preds = %bb.di
  tail call void @_efree(ptr noundef nonnull %i.hl) #16
  br label %zval_ini_dtor.exit

bb.dl:                                            ; preds = %bb.a
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.hv = load i8, ptr %i.hu, align 8, !tbaa !41
  %i.hw = icmp eq i8 %i.hv, 6
  br i1 %i.hw, label %bb.dm, label %zval_ini_dtor.exit

bb.dm:                                            ; preds = %bb.dl
  %i.hx = load ptr, ptr %1, align 8, !tbaa !41    ; 5 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 4
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !41 ; 2 uses
  %i.ia = and i32 %i.hz, 64
  %.not.i.i77 = icmp eq i32 %i.ia, 0
  br i1 %.not.i.i77, label %bb.dn, label %zval_ini_dtor.exit

bb.dn:                                            ; preds = %bb.dm
  %i.ib = load i32, ptr %i.hx, align 4, !tbaa !42 ; 2 uses
  %i.ic = icmp ne i32 %i.ib, 0
  tail call void @llvm.assume(i1 %i.ic)
  %i.id = add i32 %i.ib, -1                       ; 2 uses
  store i32 %i.id, ptr %i.hx, align 4, !tbaa !42
  %i.ie = icmp eq i32 %i.id, 0
  br i1 %i.ie, label %bb.do, label %zval_ini_dtor.exit

bb.do:                                            ; preds = %bb.dn
  %i.if = and i32 %i.hz, 128
  %.not5.i.i78 = icmp eq i32 %i.if, 0
  br i1 %.not5.i.i78, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  tail call void @free(ptr noundef nonnull %i.hx) #16
  br label %zval_ini_dtor.exit

bb.dq:                                            ; preds = %bb.do
  tail call void @_efree(ptr noundef nonnull %i.hx) #16
  br label %zval_ini_dtor.exit

bb.dr:                                            ; preds = %bb.a
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ih = load i8, ptr %i.ig, align 8, !tbaa !41
  %i.ii = icmp eq i8 %i.ih, 6
  br i1 %i.ii, label %bb.ds, label %zval_ini_dtor.exit

bb.ds:                                            ; preds = %bb.dr
  %i.ij = load ptr, ptr %1, align 8, !tbaa !41    ; 5 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 4
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !41 ; 2 uses
  %i.im = and i32 %i.il, 64
  %.not.i.i80 = icmp eq i32 %i.im, 0
  br i1 %.not.i.i80, label %bb.dt, label %zval_ini_dtor.exit

bb.dt:                                            ; preds = %bb.ds
  %i.in = load i32, ptr %i.ij, align 4, !tbaa !42 ; 2 uses
  %i.io = icmp ne i32 %i.in, 0
  tail call void @llvm.assume(i1 %i.io)
  %i.ip = add i32 %i.in, -1                       ; 2 uses
  store i32 %i.ip, ptr %i.ij, align 4, !tbaa !42
  %i.iq = icmp eq i32 %i.ip, 0
  br i1 %i.iq, label %bb.du, label %zval_ini_dtor.exit

bb.du:                                            ; preds = %bb.dt
  %i.ir = and i32 %i.il, 128
  %.not5.i.i81 = icmp eq i32 %i.ir, 0
  br i1 %.not5.i.i81, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  tail call void @free(ptr noundef nonnull %i.ij) #16
  br label %zval_ini_dtor.exit

bb.dw:                                            ; preds = %bb.du
  tail call void @_efree(ptr noundef nonnull %i.ij) #16
  br label %zval_ini_dtor.exit

bb.dx:                                            ; preds = %bb.a
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.it = load i8, ptr %i.is, align 8, !tbaa !41
  %i.iu = icmp eq i8 %i.it, 6
  br i1 %i.iu, label %bb.dy, label %zval_ini_dtor.exit

bb.dy:                                            ; preds = %bb.dx
  %i.iv = load ptr, ptr %1, align 8, !tbaa !41    ; 5 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 4
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !41 ; 2 uses
  %i.iy = and i32 %i.ix, 64
  %.not.i.i83 = icmp eq i32 %i.iy, 0
  br i1 %.not.i.i83, label %bb.dz, label %zval_ini_dtor.exit

bb.dz:                                            ; preds = %bb.dy
  %i.iz = load i32, ptr %i.iv, align 4, !tbaa !42 ; 2 uses
  %i.ja = icmp ne i32 %i.iz, 0
  tail call void @llvm.assume(i1 %i.ja)
  %i.jb = add i32 %i.iz, -1                       ; 2 uses
  store i32 %i.jb, ptr %i.iv, align 4, !tbaa !42
  %i.jc = icmp eq i32 %i.jb, 0
  br i1 %i.jc, label %bb.ea, label %zval_ini_dtor.exit

bb.ea:                                            ; preds = %bb.dz
  %i.jd = and i32 %i.ix, 128
  %.not5.i.i84 = icmp eq i32 %i.jd, 0
  br i1 %.not5.i.i84, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  tail call void @free(ptr noundef nonnull %i.iv) #16
  br label %zval_ini_dtor.exit

bb.ec:                                            ; preds = %bb.ea
  tail call void @_efree(ptr noundef nonnull %i.iv) #16
  br label %zval_ini_dtor.exit

zval_ini_dtor.exit:                               ; preds = %bb.ec, %bb.eb, %bb.dz, %bb.dy, %bb.dx, %bb.dw, %bb.dv, %bb.dt, %bb.ds, %bb.dr, %bb.dq, %bb.dp, %bb.dn, %bb.dm, %bb.dl, %bb.dk, %bb.dj, %bb.dh, %bb.dg, %bb.df, %bb.de, %bb.dd, %bb.db, %bb.da, %bb.cz, %bb.cy, %bb.cx, %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

declare void @_efree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: allocsize(0)
declare noalias ptr @__zend_malloc(i64 noundef) local_unnamed_addr #8

; Function Attrs: allocsize(0)
declare noalias ptr @_emalloc(i64 noundef) local_unnamed_addr #8

declare void @zval_ptr_dtor(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @_is_numeric_string_ex(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @zval_get_string_func(ptr noundef) local_unnamed_addr #2

declare void @_convert_to_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: allocsize(1)
declare ptr @__zend_realloc(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: allocsize(1)
declare ptr @_erealloc(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #10

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

declare ptr @zend_get_configuration_directive(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #12

declare ptr @zend_get_constant(ptr noundef) local_unnamed_addr #2

declare void @zval_copy_ctor_func(ptr noundef) local_unnamed_addr #2

declare i32 @zval_update_constant_ex(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @stpcpy(ptr noalias noundef writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #14

declare ptr @zend_ini_scanner_get_filename() local_unnamed_addr #2

declare i32 @zend_ini_scanner_get_lineno() local_unnamed_addr #2

declare noalias ptr @_estrdup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #10

declare void @zend_error(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #15

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind willreturn memory(read) }
attributes #19 = { nounwind allocsize(1) }
attributes #20 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"_zend_ini_parser_param", !12, i64 0, !12, i64 8}
!14 = !{!13, !12, i64 0}
!15 = !{!13, !12, i64 8}
!16 = !{!"_zend_stack", !9, i64 0, !9, i64 4, !9, i64 8, !12, i64 16}
!17 = !{!"p1 _ZTS17_zend_class_entry", !12, i64 0}
!18 = !{!"p1 _ZTS12_zend_string", !12, i64 0}
!19 = !{!"p1 _ZTS14_zend_op_array", !12, i64 0}
!20 = !{!"p1 _ZTS11_zend_array", !12, i64 0}
!21 = !{!"_Bool", !8, i64 0}
!22 = !{!"p1 _ZTS19_zend_llist_element", !12, i64 0}
!23 = !{!"long", !8, i64 0}
!24 = !{!"_zend_llist", !22, i64 0, !22, i64 8, !23, i64 16, !23, i64 24, !12, i64 32, !8, i64 40, !22, i64 48}
!25 = !{!"p1 _ZTS22_zend_ini_parser_param", !12, i64 0}
!26 = !{!"p1 _ZTS21_zend_oparray_context", !12, i64 0}
!27 = !{!"p1 _ZTS22_zend_brk_cont_element", !12, i64 0}
!28 = !{!"_zend_oparray_context", !26, i64 0, !19, i64 8, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !27, i64 48, !20, i64 56, !18, i64 64, !9, i64 72, !21, i64 76, !21, i64 77}
!29 = !{!"_zend_declarables", !23, i64 0}
!30 = !{!"_zend_refcounted_h", !9, i64 0, !8, i64 4}
!31 = !{!"_zend_array", !30, i64 0, !8, i64 8, !9, i64 12, !8, i64 16, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !23, i64 40, !12, i64 48}
!32 = !{!"_zend_file_context", !29, i64 0, !18, i64 8, !21, i64 16, !21, i64 17, !20, i64 24, !20, i64 32, !20, i64 40, !31, i64 48}
!33 = !{!"p1 _ZTS11_zend_arena", !12, i64 0}
!34 = !{!"any p2 pointer", !12, i64 0}
!35 = !{!"p2 _ZTS14_zend_encoding", !34, i64 0}
!36 = !{!"p1 _ZTS9_zend_ast", !12, i64 0}
!37 = !{!"_zend_compiler_globals", !16, i64 0, !17, i64 24, !18, i64 32, !9, i64 40, !19, i64 48, !20, i64 56, !20, i64 64, !20, i64 72, !8, i64 80, !21, i64 81, !21, i64 82, !21, i64 83, !21, i64 84, !24, i64 88, !25, i64 144, !21, i64 152, !21, i64 153, !21, i64 154, !21, i64 155, !18, i64 160, !9, i64 168, !9, i64 172, !28, i64 176, !32, i64 256, !33, i64 360, !31, i64 368, !35, i64 424, !23, i64 432, !21, i64 440, !21, i64 441, !21, i64 442, !36, i64 448, !33, i64 456, !16, i64 464, !20, i64 488, !9, i64 496, !12, i64 504, !12, i64 512, !23, i64 520, !23, i64 528, !20, i64 536, !20, i64 544, !20, i64 552, !17, i64 560, !9, i64 568, !12, i64 576, !9, i64 584, !16, i64 592}
!38 = !{!37, !25, i64 144}
!39 = !{!37, !21, i64 84}
!40 = !{!23, !23, i64 0}
!41 = !{!8, !8, i64 0}
!42 = !{!30, !9, i64 0}
!43 = !{i8 0, i8 2}
!44 = !{}
!45 = !{!18, !18, i64 0}
!46 = !{!"p1 _ZTS17_zend_file_handle", !12, i64 0}
!47 = !{!"p1 omnipotent char", !12, i64 0}
!48 = !{!"_zend_ini_scanner_globals", !46, i64 0, !46, i64 8, !9, i64 16, !47, i64 24, !47, i64 32, !47, i64 40, !47, i64 48, !47, i64 56, !9, i64 64, !16, i64 72, !18, i64 96, !9, i64 104, !9, i64 108}
!49 = !{!48, !9, i64 108}
!50 = !{!"_zend_string", !30, i64 0, !23, i64 8, !23, i64 16, !8, i64 24}
!51 = !{!50, !23, i64 16}
!52 = !{!50, !23, i64 8}
!53 = !{!"llvm.loop.mustprogress"}
!54 = distinct !{!54, !53}
!55 = !{i64 0, i64 8, !41, i64 8, i64 4, !41, i64 12, i64 4, !41}
!56 = !{!"branch_weights", i32 4001, i32 1}
!57 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!58 = distinct !{null}
!59 = !{!12, !12, i64 0}
!60 = distinct !{!60, !53}
!61 = distinct !{!61, !53}
!62 = distinct !{!62, !53}
!63 = !{!9, !9, i64 0}
!64 = !{!47, !47, i64 0}
!65 = !{!"p1 _ZTS8_IO_FILE", !12, i64 0}
!66 = !{!65, !65, i64 0}
end_hunk_2
