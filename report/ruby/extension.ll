inline.NumInlined: 144
inline.NumDeleted: 38
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pm_string_t = type { ptr, i64, i32 }
%struct.pm_options = type { ptr, ptr, %struct.pm_string_t, i32, %struct.pm_string_t, i64, ptr, i32, i8, i8, i8, i8, i8, i8 }
%struct.pm_parser = type { i32, i32, i32, i32, i32, i32, i32, %struct.anon.5, ptr, ptr, %struct.pm_token_t, %struct.pm_token_t, ptr, ptr, %struct.pm_list_t, %struct.pm_list_t, %struct.pm_location_t, %struct.pm_list_t, %struct.pm_list_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.pm_string_t, %struct.pm_constant_pool_t, %struct.pm_newline_list_t, i16, %struct.pm_string_t, i32, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.anon.5 = type { ptr, [4 x %struct.pm_lex_mode], i64 }
%struct.pm_lex_mode = type { i32, %union.anon.6, ptr }
%union.anon.6 = type { %struct.anon.10 }
%struct.anon.10 = type { %struct.pm_heredoc_lex_mode_t, ptr, ptr, i8 }
%struct.pm_heredoc_lex_mode_t = type { ptr, i64, i32, i32 }
%struct.pm_token_t = type { i32, ptr, ptr }
%struct.pm_location_t = type { ptr, ptr }
%struct.pm_list_t = type { i64, ptr, ptr }
%struct.pm_constant_pool_t = type { ptr, ptr, i32, i32 }
%struct.pm_newline_list_t = type { ptr, i64, i64, ptr }
%struct.build_options_data = type { ptr, i64 }
%struct.pm_buffer_t = type { i64, i64, ptr }
%struct.parse_lex_data_t = type { i64, i64, ptr, i8 }
%struct.pm_lex_callback_t = type { ptr, ptr }

@.str = private unnamed_addr constant [6 x i8] c"1.8.1\00", align 1
@rb_eRuntimeError = external local_unnamed_addr global i64, align 8
@.str.1 = private unnamed_addr constant [72 x i8] c"The prism library version (%s) does not match the expected version (%s)\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Prism\00", align 1
@rb_cPrism = hidden local_unnamed_addr global i64 0, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"Node\00", align 1
@rb_cObject = external local_unnamed_addr global i64, align 8
@rb_cPrismNode = hidden local_unnamed_addr global i64 0, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"Source\00", align 1
@rb_cPrismSource = hidden local_unnamed_addr global i64 0, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"Token\00", align 1
@rb_cPrismToken = hidden local_unnamed_addr global i64 0, align 8
@.str.6 = private unnamed_addr constant [9 x i8] c"Location\00", align 1
@rb_cPrismLocation = hidden local_unnamed_addr global i64 0, align 8
@.str.7 = private unnamed_addr constant [8 x i8] c"Comment\00", align 1
@rb_cPrismComment = hidden local_unnamed_addr global i64 0, align 8
@.str.8 = private unnamed_addr constant [14 x i8] c"InlineComment\00", align 1
@rb_cPrismInlineComment = hidden local_unnamed_addr global i64 0, align 8
@.str.9 = private unnamed_addr constant [14 x i8] c"EmbDocComment\00", align 1
@rb_cPrismEmbDocComment = hidden local_unnamed_addr global i64 0, align 8
@.str.10 = private unnamed_addr constant [13 x i8] c"MagicComment\00", align 1
@rb_cPrismMagicComment = hidden local_unnamed_addr global i64 0, align 8
@.str.11 = private unnamed_addr constant [11 x i8] c"ParseError\00", align 1
@rb_cPrismParseError = hidden local_unnamed_addr global i64 0, align 8
@.str.12 = private unnamed_addr constant [13 x i8] c"ParseWarning\00", align 1
@rb_cPrismParseWarning = hidden local_unnamed_addr global i64 0, align 8
@.str.13 = private unnamed_addr constant [7 x i8] c"Result\00", align 1
@rb_cPrismResult = hidden local_unnamed_addr global i64 0, align 8
@.str.14 = private unnamed_addr constant [12 x i8] c"ParseResult\00", align 1
@rb_cPrismParseResult = hidden local_unnamed_addr global i64 0, align 8
@.str.15 = private unnamed_addr constant [10 x i8] c"LexResult\00", align 1
@rb_cPrismLexResult = hidden local_unnamed_addr global i64 0, align 8
@.str.16 = private unnamed_addr constant [15 x i8] c"ParseLexResult\00", align 1
@rb_cPrismParseLexResult = hidden local_unnamed_addr global i64 0, align 8
@.str.17 = private unnamed_addr constant [12 x i8] c"StringQuery\00", align 1
@rb_cPrismStringQuery = hidden local_unnamed_addr global i64 0, align 8
@.str.18 = private unnamed_addr constant [6 x i8] c"Scope\00", align 1
@rb_cPrismScope = hidden local_unnamed_addr global i64 0, align 8
@Init_prism.rbimpl_id = internal unnamed_addr global i64 0, align 8
@.str.19 = private unnamed_addr constant [20 x i8] c"CurrentVersionError\00", align 1
@rb_cPrismCurrentVersionError = hidden local_unnamed_addr global i64 0, align 8
@.str.20 = private unnamed_addr constant [13 x i8] c"command_line\00", align 1
@rb_id_option_command_line = hidden local_unnamed_addr global i64 0, align 8
@.str.21 = private unnamed_addr constant [9 x i8] c"encoding\00", align 1
@rb_id_option_encoding = hidden local_unnamed_addr global i64 0, align 8
@.str.22 = private unnamed_addr constant [9 x i8] c"filepath\00", align 1
@rb_id_option_filepath = hidden local_unnamed_addr global i64 0, align 8
@.str.23 = private unnamed_addr constant [7 x i8] c"freeze\00", align 1
@rb_id_option_freeze = hidden local_unnamed_addr global i64 0, align 8
@.str.24 = private unnamed_addr constant [22 x i8] c"frozen_string_literal\00", align 1
@rb_id_option_frozen_string_literal = hidden local_unnamed_addr global i64 0, align 8
@.str.25 = private unnamed_addr constant [5 x i8] c"line\00", align 1
@rb_id_option_line = hidden local_unnamed_addr global i64 0, align 8
@.str.26 = private unnamed_addr constant [12 x i8] c"main_script\00", align 1
@rb_id_option_main_script = hidden local_unnamed_addr global i64 0, align 8
@.str.27 = private unnamed_addr constant [15 x i8] c"partial_script\00", align 1
@rb_id_option_partial_script = hidden local_unnamed_addr global i64 0, align 8
@.str.28 = private unnamed_addr constant [7 x i8] c"scopes\00", align 1
@rb_id_option_scopes = hidden local_unnamed_addr global i64 0, align 8
@.str.29 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@rb_id_option_version = hidden local_unnamed_addr global i64 0, align 8
@Init_prism.rbimpl_id.30 = internal unnamed_addr global i64 0, align 8
@.str.31 = private unnamed_addr constant [4 x i8] c"for\00", align 1
@rb_id_source_for = hidden local_unnamed_addr global i64 0, align 8
@Init_prism.rbimpl_id.32 = internal unnamed_addr global i64 0, align 8
@.str.33 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@rb_id_forwarding_positionals = hidden local_unnamed_addr global i64 0, align 8
@Init_prism.rbimpl_id.34 = internal unnamed_addr global i64 0, align 8
@.str.35 = private unnamed_addr constant [3 x i8] c"**\00", align 1
@rb_id_forwarding_keywords = hidden local_unnamed_addr global i64 0, align 8
@Init_prism.rbimpl_id.36 = internal unnamed_addr global i64 0, align 8
@.str.37 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@rb_id_forwarding_block = hidden local_unnamed_addr global i64 0, align 8
@Init_prism.rbimpl_id.38 = internal unnamed_addr global i64 0, align 8
@.str.39 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@rb_id_forwarding_all = hidden local_unnamed_addr global i64 0, align 8
@.str.40 = private unnamed_addr constant [8 x i8] c"VERSION\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"lex\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"lex_file\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"parse\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"parse_file\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"profile\00", align 1
@.str.46 = private unnamed_addr constant [13 x i8] c"profile_file\00", align 1
@.str.47 = private unnamed_addr constant [13 x i8] c"parse_stream\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"parse_comments\00", align 1
@.str.49 = private unnamed_addr constant [20 x i8] c"parse_file_comments\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"parse_lex\00", align 1
@.str.51 = private unnamed_addr constant [15 x i8] c"parse_lex_file\00", align 1
@.str.52 = private unnamed_addr constant [15 x i8] c"parse_success?\00", align 1
@.str.53 = private unnamed_addr constant [15 x i8] c"parse_failure?\00", align 1
@.str.54 = private unnamed_addr constant [20 x i8] c"parse_file_success?\00", align 1
@.str.55 = private unnamed_addr constant [20 x i8] c"parse_file_failure?\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"dump\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"dump_file\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"local?\00", align 1
@.str.59 = private unnamed_addr constant [10 x i8] c"constant?\00", align 1
@.str.60 = private unnamed_addr constant [13 x i8] c"method_name?\00", align 1
@rb_cPrismDebugEncoding = hidden local_unnamed_addr global i64 0, align 8
@rb_eTypeError = external local_unnamed_addr global i64, align 8
@.str.62 = private unnamed_addr constant [43 x i8] c"wrong argument type %li\0B (expected String)\00", align 1
@.str.63 = private unnamed_addr constant [8 x i8] c"current\00", align 1
@build_options_i.rbimpl_id = internal global i64 0, align 8
@.str.64 = private unnamed_addr constant [13 x i8] c"RUBY_VERSION\00", align 1
@rb_eArgError = external local_unnamed_addr global i64, align 8
@.str.65 = private unnamed_addr constant [22 x i8] c"invalid version: %li\0B\00", align 1
@.str.66 = private unnamed_addr constant [32 x i8] c"invalid command line flag: '%c'\00", align 1
@.str.67 = private unnamed_addr constant [22 x i8] c"unknown keyword: %li\0B\00", align 1
@.str.68 = private unnamed_addr constant [42 x i8] c"wrong argument type %li\0B (expected Array)\00", align 1
@rb_eNoMemError = external local_unnamed_addr global i64, align 8
@.str.69 = private unnamed_addr constant [26 x i8] c"failed to allocate memory\00", align 1
@build_options_scopes.rbimpl_id = internal unnamed_addr global i64 0, align 8
@.str.70 = private unnamed_addr constant [8 x i8] c"@locals\00", align 1
@build_options_scopes.rbimpl_id.71 = internal unnamed_addr global i64 0, align 8
@.str.72 = private unnamed_addr constant [12 x i8] c"@forwarding\00", align 1
@.str.73 = private unnamed_addr constant [43 x i8] c"wrong argument type %li\0B (expected Symbol)\00", align 1
@.str.74 = private unnamed_addr constant [31 x i8] c"invalid forwarding value: %li\0B\00", align 1
@.str.75 = private unnamed_addr constant [58 x i8] c"wrong argument type %li\0B (expected Array or Prism::Scope)\00", align 1
@parse_lex_encoding_changed_callback.rbimpl_id = internal unnamed_addr global i64 0, align 8
@.str.76 = private unnamed_addr constant [7 x i8] c"@value\00", align 1
@parse_lex_encoding_changed_callback.rbimpl_id.77 = internal unnamed_addr global i64 0, align 8
@.str.78 = private unnamed_addr constant [6 x i8] c"@type\00", align 1
@parse_lex_encoding_changed_callback.rbimpl_id.79 = internal unnamed_addr global i64 0, align 8
@.str.80 = private unnamed_addr constant [10 x i8] c"@location\00", align 1
@parser_errors.rbimpl_id = internal unnamed_addr global i64 0, align 8
@.str.81 = private unnamed_addr constant [7 x i8] c"syntax\00", align 1
@parser_errors.rbimpl_id.82 = internal unnamed_addr global i64 0, align 8
@.str.83 = private unnamed_addr constant [9 x i8] c"argument\00", align 1
@parser_errors.rbimpl_id.84 = internal unnamed_addr global i64 0, align 8
@.str.85 = private unnamed_addr constant [5 x i8] c"load\00", align 1
@.str.86 = private unnamed_addr constant [18 x i8] c"Unknown level: %u\00", align 1
@parser_warnings.rbimpl_id = internal unnamed_addr global i64 0, align 8
@.str.87 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@parser_warnings.rbimpl_id.88 = internal unnamed_addr global i64 0, align 8
@.str.89 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.90 = private unnamed_addr constant [41 x i8] c"Unknown error (%d) initializing file: %s\00", align 1
@parse_stream_fgets.rbimpl_id = internal unnamed_addr global i64 0, align 8
@.str.91 = private unnamed_addr constant [5 x i8] c"gets\00", align 1
@parse_stream_eof.rbimpl_id = internal unnamed_addr global i64 0, align 8
@.str.92 = private unnamed_addr constant [5 x i8] c"eof?\00", align 1
@.str.93 = private unnamed_addr constant [41 x i8] c"Invalid or non ascii-compatible encoding\00", align 1
@switch.table.build_options_i = private unnamed_addr constant [24 x i8] [i8 1, i8 poison, i8 poison, i8 poison, i8 2, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 4, i8 poison, i8 8, i8 poison, i8 16, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 32], align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @Init_prism() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @pm_version() #9
  %i.b = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(6) @.str) #10
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !11
  %i.d = tail call ptr @pm_version() #9
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.c, ptr noundef nonnull @.str.1, ptr noundef %i.d, ptr noundef nonnull @.str) #11
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @rb_ext_ractor_safe(i1 noundef zeroext true) #9
  %i.e = tail call i64 @rb_define_module(ptr noundef nonnull @.str.2) #9 ; 2 uses
  store i64 %i.e, ptr @rb_cPrism, align 8, !tbaa !11
  %i.f = load i64, ptr @rb_cObject, align 8, !tbaa !11
  %i.g = tail call i64 @rb_define_class_under(i64 noundef %i.e, ptr noundef nonnull @.str.3, i64 noundef %i.f) #9
  store i64 %i.g, ptr @rb_cPrismNode, align 8, !tbaa !11
  %i.h = load i64, ptr @rb_cPrism, align 8, !tbaa !11
  %i.i = load i64, ptr @rb_cObject, align 8, !tbaa !11
  %i.j = tail call i64 @rb_define_class_under(i64 noundef %i.h, ptr noundef nonnull @.str.4, i64 noundef %i.i) #9
  store i64 %i.j, ptr @rb_cPrismSource, align 8, !tbaa !11
  %i.k = load i64, ptr @rb_cPrism, align 8, !tbaa !11
  %i.l = load i64, ptr @rb_cObject, align 8, !tbaa !11
  %i.m = tail call i64 @rb_define_class_under(i64 noundef %i.k, ptr noundef nonnull @.str.5, i64 noundef %i.l) #9
  store i64 %i.m, ptr @rb_cPrismToken, align 8, !tbaa !11
  %i.n = load i64, ptr @rb_cPrism, align 8, !tbaa !11
  %i.o = load i64, ptr @rb_cObject, align 8, !tbaa !11
  %i.p = tail call i64 @rb_define_class_under(i64 noundef %i.n, ptr noundef nonnull @.str.6, i64 noundef %i.o) #9
  store i64 %i.p, ptr @rb_cPrismLocation, align 8, !tbaa !11
  %i.q = load i64, ptr @rb_cPrism, align 8, !tbaa !11
  %i.r = load i64, ptr @rb_cObject, align 8, !tbaa !11
  %i.s = tail call i64 @rb_define_class_under(i64 noundef %i.q, ptr noundef nonnull @.str.7, i64 noundef %i.r) #9 ; 2 uses
  store i64 %i.s, ptr @rb_cPrismComment, align 8, !tbaa !11
  %i.t = load i64, ptr @rb_cPrism, align 8, !tbaa !11
  %i.u = tail call i64 @rb_define_class_under(i64 noundef %i.t, ptr noundef nonnull @.str.8, i64 noundef %i.s) #9
  store i64 %i.u, ptr @rb_cPrismInlineComment, align 8, !tbaa !11
  %i.v = load i64, ptr @rb_cPrism, align 8, !tbaa !11
  %i.w = load i64, ptr @rb_cPrismComment, align 8, !tbaa !11
  %i.x = tail call i64 @rb_define_class_under(i64 noundef %i.v, ptr noundef nonnull @.str.9, i64 noundef %i.w) #9
  store i64 %i.x, ptr @rb_cPrismEmbDocComment, align 8, !tbaa !11
  %i.y = load i64, ptr @rb_cPrism, align 8, !tbaa !11
  %i.z = load i64, ptr @rb_cObject, align 8, !tbaa !11
  %i.aa = tail call i64 @rb_define_class_under(i64 noundef %i.y, ptr noundef nonnull @.str.10, i64 noundef %i.z) #9
  store i64 %i.aa, ptr @rb_cPrismMagicComment, align 8, !tbaa !11
  %i.ab = load i64, ptr @rb_cPrism, align 8, !tbaa !11
  %i.ac = load i64, ptr @rb_cObject, align 8, !tbaa !11
  %i.ad = tail call i64 @rb_define_class_under(i64 noundef %i.ab, ptr noundef nonnull @.str.11, i64 noundef %i.ac) #9
  store i64 %i.ad, ptr @rb_cPrismParseError, align 8, !tbaa !11
  %i.ae = load i64, ptr @rb_cPrism, align 8, !tbaa !11
  %i.af = load i64, ptr @rb_cObject, align 8, !tbaa !11
  %i.ag = tail call i64 @rb_define_class_under(i64 noundef %i.ae, ptr noundef nonnull @.str.12, i64 noundef %i.af) #9
  store i64 %i.ag, ptr @rb_cPrismParseWarning, align 8, !tbaa !11
  %i.ah = load i64, ptr @rb_cPrism, align 8, !tbaa !11
  %i.ai = load i64, ptr @rb_cObject, align 8, !tbaa !11
  %i.aj = tail call i64 @rb_define_class_under(i64 noundef %i.ah, ptr noundef nonnull @.str.13, i64 noundef %i.ai) #9 ; 2 uses
  store i64 %i.aj, ptr @rb_cPrismResult, align 8, !tbaa !11
  %i.ak = load i64, ptr @rb_cPrism, align 8, !tbaa !11
  %i.al = tail call i64 @rb_define_class_under(i64 noundef %i.ak, ptr noundef nonnull @.str.14, i64 noundef %i.aj) #9
  store i64 %i.al, ptr @rb_cPrismParseResult, align 8, !tbaa !11
  %i.am = load i64, ptr @rb_cPrism, align 8, !tbaa !11
  %i.an = load i64, ptr @rb_cPrismResult, align 8, !tbaa !11
  %i.ao = tail call i64 @rb_define_class_under(i64 noundef %i.am, ptr noundef nonnull @.str.15, i64 noundef %i.an) #9
  store i64 %i.ao, ptr @rb_cPrismLexResult, align 8, !tbaa !11
  %i.ap = load i64, ptr @rb_cPrism, align 8, !tbaa !11
  %i.aq = load i64, ptr @rb_cPrismResult, align 8, !tbaa !11
  %i.ar = tail call i64 @rb_define_class_under(i64 noundef %i.ap, ptr noundef nonnull @.str.16, i64 noundef %i.aq) #9
  store i64 %i.ar, ptr @rb_cPrismParseLexResult, align 8, !tbaa !11
  %i.as = load i64, ptr @rb_cPrism, align 8, !tbaa !11
  %i.at = load i64, ptr @rb_cObject, align 8, !tbaa !11
  %i.au = tail call i64 @rb_define_class_under(i64 noundef %i.as, ptr noundef nonnull @.str.17, i64 noundef %i.at) #9
  store i64 %i.au, ptr @rb_cPrismStringQuery, align 8, !tbaa !11
  %i.av = load i64, ptr @rb_cPrism, align 8, !tbaa !11
  %i.aw = load i64, ptr @rb_cObject, align 8, !tbaa !11
  %i.ax = tail call i64 @rb_define_class_under(i64 noundef %i.av, ptr noundef nonnull @.str.18, i64 noundef %i.aw) #9
  store i64 %i.ax, ptr @rb_cPrismScope, align 8, !tbaa !11
  %i.ay = load i64, ptr @rb_cPrism, align 8, !tbaa !11
  %.pr.i = load i64, ptr @Init_prism.rbimpl_id, align 8, !tbaa !11 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %i.az = tail call i64 @rb_intern2(ptr noundef nonnull @.str.19, i64 noundef 19) #9 ; 3 uses
  store i64 %i.az, ptr @Init_prism.rbimpl_id, align 8, !tbaa !11
  %.not.i = icmp eq i64 %i.az, 0
  br i1 %.not.i, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !13

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %bb.c
  %.lcssa.i = phi i64 [ %.pr.i, %bb.c ], [ %i.az, %.lr.ph.i ]
  %i.ba = tail call i64 @rb_const_get(i64 noundef %i.ay, i64 noundef %.lcssa.i) #9
  store i64 %i.ba, ptr @rb_cPrismCurrentVersionError, align 8, !tbaa !11
  %i.bb = tail call i64 @rb_intern2(ptr noundef nonnull @.str.20, i64 noundef 12) #9
  store i64 %i.bb, ptr @rb_id_option_command_line, align 8, !tbaa !11
  %i.bc = tail call i64 @rb_intern2(ptr noundef nonnull @.str.21, i64 noundef 8) #9
  store i64 %i.bc, ptr @rb_id_option_encoding, align 8, !tbaa !11
  %i.bd = tail call i64 @rb_intern2(ptr noundef nonnull @.str.22, i64 noundef 8) #9
  store i64 %i.bd, ptr @rb_id_option_filepath, align 8, !tbaa !11
  %i.be = tail call i64 @rb_intern2(ptr noundef nonnull @.str.23, i64 noundef 6) #9
  store i64 %i.be, ptr @rb_id_option_freeze, align 8, !tbaa !11
  %i.bf = tail call i64 @rb_intern2(ptr noundef nonnull @.str.24, i64 noundef 21) #9
  store i64 %i.bf, ptr @rb_id_option_frozen_string_literal, align 8, !tbaa !11
  %i.bg = tail call i64 @rb_intern2(ptr noundef nonnull @.str.25, i64 noundef 4) #9
  store i64 %i.bg, ptr @rb_id_option_line, align 8, !tbaa !11
  %i.bh = tail call i64 @rb_intern2(ptr noundef nonnull @.str.26, i64 noundef 11) #9
  store i64 %i.bh, ptr @rb_id_option_main_script, align 8, !tbaa !11
  %i.bi = tail call i64 @rb_intern2(ptr noundef nonnull @.str.27, i64 noundef 14) #9
  store i64 %i.bi, ptr @rb_id_option_partial_script, align 8, !tbaa !11
  %i.bj = tail call i64 @rb_intern2(ptr noundef nonnull @.str.28, i64 noundef 6) #9
  store i64 %i.bj, ptr @rb_id_option_scopes, align 8, !tbaa !11
  %i.bk = tail call i64 @rb_intern2(ptr noundef nonnull @.str.29, i64 noundef 7) #9
  store i64 %i.bk, ptr @rb_id_option_version, align 8, !tbaa !11
  %.pr.i6 = load i64, ptr @Init_prism.rbimpl_id.30, align 8, !tbaa !11 ; 2 uses
  %.not4.i7 = icmp eq i64 %.pr.i6, 0
  br i1 %.not4.i7, label %.lr.ph.i9, label %rbimpl_intern_const.exit11

.lr.ph.i9:                                        ; preds = %rbimpl_intern_const.exit, %.lr.ph.i9
  %i.bl = tail call i64 @rb_intern2(ptr noundef nonnull @.str.31, i64 noundef 3) #9 ; 3 uses
  store i64 %i.bl, ptr @Init_prism.rbimpl_id.30, align 8, !tbaa !11
  %.not.i10 = icmp eq i64 %i.bl, 0
  br i1 %.not.i10, label %.lr.ph.i9, label %rbimpl_intern_const.exit11, !llvm.loop !13

rbimpl_intern_const.exit11:                       ; preds = %.lr.ph.i9, %rbimpl_intern_const.exit
  %.lcssa.i8 = phi i64 [ %.pr.i6, %rbimpl_intern_const.exit ], [ %i.bl, %.lr.ph.i9 ]
  store i64 %.lcssa.i8, ptr @rb_id_source_for, align 8, !tbaa !11
  %.pr.i12 = load i64, ptr @Init_prism.rbimpl_id.32, align 8, !tbaa !11 ; 2 uses
  %.not4.i13 = icmp eq i64 %.pr.i12, 0
  br i1 %.not4.i13, label %.lr.ph.i15, label %rbimpl_intern_const.exit17

.lr.ph.i15:                                       ; preds = %rbimpl_intern_const.exit11, %.lr.ph.i15
  %i.bm = tail call i64 @rb_intern2(ptr noundef nonnull @.str.33, i64 noundef 1) #9 ; 3 uses
  store i64 %i.bm, ptr @Init_prism.rbimpl_id.32, align 8, !tbaa !11
  %.not.i16 = icmp eq i64 %i.bm, 0
  br i1 %.not.i16, label %.lr.ph.i15, label %rbimpl_intern_const.exit17, !llvm.loop !13

rbimpl_intern_const.exit17:                       ; preds = %.lr.ph.i15, %rbimpl_intern_const.exit11
  %.lcssa.i14 = phi i64 [ %.pr.i12, %rbimpl_intern_const.exit11 ], [ %i.bm, %.lr.ph.i15 ]
  store i64 %.lcssa.i14, ptr @rb_id_forwarding_positionals, align 8, !tbaa !11
  %.pr.i18 = load i64, ptr @Init_prism.rbimpl_id.34, align 8, !tbaa !11 ; 2 uses
  %.not4.i19 = icmp eq i64 %.pr.i18, 0
  br i1 %.not4.i19, label %.lr.ph.i21, label %rbimpl_intern_const.exit23

.lr.ph.i21:                                       ; preds = %rbimpl_intern_const.exit17, %.lr.ph.i21
  %i.bn = tail call i64 @rb_intern2(ptr noundef nonnull @.str.35, i64 noundef 2) #9 ; 3 uses
  store i64 %i.bn, ptr @Init_prism.rbimpl_id.34, align 8, !tbaa !11
  %.not.i22 = icmp eq i64 %i.bn, 0
  br i1 %.not.i22, label %.lr.ph.i21, label %rbimpl_intern_const.exit23, !llvm.loop !13

rbimpl_intern_const.exit23:                       ; preds = %.lr.ph.i21, %rbimpl_intern_const.exit17
  %.lcssa.i20 = phi i64 [ %.pr.i18, %rbimpl_intern_const.exit17 ], [ %i.bn, %.lr.ph.i21 ]
  store i64 %.lcssa.i20, ptr @rb_id_forwarding_keywords, align 8, !tbaa !11
  %.pr.i24 = load i64, ptr @Init_prism.rbimpl_id.36, align 8, !tbaa !11 ; 2 uses
  %.not4.i25 = icmp eq i64 %.pr.i24, 0
  br i1 %.not4.i25, label %.lr.ph.i27, label %rbimpl_intern_const.exit29

.lr.ph.i27:                                       ; preds = %rbimpl_intern_const.exit23, %.lr.ph.i27
  %i.bo = tail call i64 @rb_intern2(ptr noundef nonnull @.str.37, i64 noundef 1) #9 ; 3 uses
  store i64 %i.bo, ptr @Init_prism.rbimpl_id.36, align 8, !tbaa !11
  %.not.i28 = icmp eq i64 %i.bo, 0
  br i1 %.not.i28, label %.lr.ph.i27, label %rbimpl_intern_const.exit29, !llvm.loop !13

rbimpl_intern_const.exit29:                       ; preds = %.lr.ph.i27, %rbimpl_intern_const.exit23
  %.lcssa.i26 = phi i64 [ %.pr.i24, %rbimpl_intern_const.exit23 ], [ %i.bo, %.lr.ph.i27 ]
  store i64 %.lcssa.i26, ptr @rb_id_forwarding_block, align 8, !tbaa !11
  %.pr.i30 = load i64, ptr @Init_prism.rbimpl_id.38, align 8, !tbaa !11 ; 2 uses
  %.not4.i31 = icmp eq i64 %.pr.i30, 0
  br i1 %.not4.i31, label %.lr.ph.i33, label %rbimpl_intern_const.exit35

.lr.ph.i33:                                       ; preds = %rbimpl_intern_const.exit29, %.lr.ph.i33
  %i.bp = tail call i64 @rb_intern2(ptr noundef nonnull @.str.39, i64 noundef 3) #9 ; 3 uses
  store i64 %i.bp, ptr @Init_prism.rbimpl_id.38, align 8, !tbaa !11
  %.not.i34 = icmp eq i64 %i.bp, 0
  br i1 %.not.i34, label %.lr.ph.i33, label %rbimpl_intern_const.exit35, !llvm.loop !13

rbimpl_intern_const.exit35:                       ; preds = %.lr.ph.i33, %rbimpl_intern_const.exit29
  %.lcssa.i32 = phi i64 [ %.pr.i30, %rbimpl_intern_const.exit29 ], [ %i.bp, %.lr.ph.i33 ]
  store i64 %.lcssa.i32, ptr @rb_id_forwarding_all, align 8, !tbaa !11
  %i.bq = load i64, ptr @rb_cPrism, align 8, !tbaa !11
  %i.br = tail call i64 @rb_str_new_static(ptr noundef nonnull @.str, i64 noundef 5) #9
  %i.bs = tail call i64 @rb_str_freeze(i64 noundef %i.br) #9
  tail call void @rb_define_const(i64 noundef %i.bq, ptr noundef nonnull @.str.40, i64 noundef %i.bs) #9
  %i.bt = load i64, ptr @rb_cPrism, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.bt, ptr noundef nonnull @.str.41, ptr noundef nonnull @lex, i32 noundef -1) #9
  %i.bu = load i64, ptr @rb_cPrism, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.bu, ptr noundef nonnull @.str.42, ptr noundef nonnull @lex_file, i32 noundef -1) #9
  %i.bv = load i64, ptr @rb_cPrism, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.bv, ptr noundef nonnull @.str.43, ptr noundef nonnull @parse, i32 noundef -1) #9
  %i.bw = load i64, ptr @rb_cPrism, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.bw, ptr noundef nonnull @.str.44, ptr noundef nonnull @parse_file, i32 noundef -1) #9
  %i.bx = load i64, ptr @rb_cPrism, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.bx, ptr noundef nonnull @.str.45, ptr noundef nonnull @profile, i32 noundef -1) #9
  %i.by = load i64, ptr @rb_cPrism, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.by, ptr noundef nonnull @.str.46, ptr noundef nonnull @profile_file, i32 noundef -1) #9
  %i.bz = load i64, ptr @rb_cPrism, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.bz, ptr noundef nonnull @.str.47, ptr noundef nonnull @parse_stream, i32 noundef -1) #9
  %i.ca = load i64, ptr @rb_cPrism, align 8, !tbaa !11
  tail call void @rb_define_singleton_method(i64 noundef %i.ca, ptr noundef nonnull @.str.48, ptr noundef nonnull @parse_comments, i32 noundef -1) #9
end_hunk_0
begin_hunk_1_@build_options_i:bb.a
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %1, 4
  br i1 %i.e, label %bb.as, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp eq i64 %1, 0
  %i.g = and i64 %1, 7
  %i.h = icmp ne i64 %i.g, 0
  %i.i = or i1 %i.f, %i.h
  br i1 %i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.c
  %i.j = inttoptr i64 %1 to ptr                   ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !47   ; 2 uses
  %i.l = and i64 %i.k, 31
  %i.m = icmp eq i64 %i.l, 5
  br i1 %i.m, label %bb.d, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.c
  %i.n = load i64, ptr @rb_eTypeError, align 8, !tbaa !11
  %i.o = tail call i64 @rb_obj_class(i64 noundef %1) #9
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.n, ptr noundef nonnull @.str.62, i64 noundef %i.o) #11
  unreachable

bb.d:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.p = and i64 %i.k, 8192
  %.not.i.i = icmp eq i64 %i.p, 0
  %i.q = getelementptr i8, ptr %i.j, i64 24       ; 2 uses
  br i1 %.not.i.i, label %check_string.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !49
  br label %check_string.exit

check_string.exit:                                ; preds = %bb.d, %bb.e
  %i.s = phi ptr [ %i.r, %bb.e ], [ %i.q, %bb.d ]
  tail call void @pm_options_filepath_set(ptr noundef %i.a, ptr noundef %i.s) #9
  br label %bb.as

bb.f:                                             ; preds = %bb.a
  %i.t = load i64, ptr @rb_id_option_encoding, align 8, !tbaa !11
  %i.u = icmp eq i64 %i.b, %i.t
  br i1 %i.u, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  switch i64 %1, label %bb.i [
    i64 4, label %bb.as
    i64 0, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  tail call void @pm_options_encoding_locked_set(ptr noundef %i.a, i1 noundef zeroext true) #9
  br label %bb.as

bb.i:                                             ; preds = %bb.g
  %i.v = tail call ptr @rb_to_encoding(i64 noundef %1) #9
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %.val = load ptr, ptr %i.w, align 8, !tbaa !52
  tail call void @pm_options_encoding_set(ptr noundef %i.a, ptr noundef %.val) #9
  br label %bb.as

bb.j:                                             ; preds = %bb.f
  %i.x = load i64, ptr @rb_id_option_line, align 8, !tbaa !11
  %i.y = icmp eq i64 %i.b, %i.x
  br i1 %i.y, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.z = icmp eq i64 %1, 4
  br i1 %i.z, label %bb.as, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = trunc i64 %1 to i1
  br i1 %i.aa, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ab = tail call i64 @rb_fix2int(i64 noundef %1) #9
  br label %rb_num2int_inline.exit

bb.n:                                             ; preds = %bb.l
  %i.ac = tail call i64 @rb_num2int(i64 noundef %1) #9
  br label %rb_num2int_inline.exit

rb_num2int_inline.exit:                           ; preds = %bb.m, %bb.n
  %.0.i = phi i64 [ %i.ab, %bb.m ], [ %i.ac, %bb.n ]
  %i.ad = trunc i64 %.0.i to i32
  tail call void @pm_options_line_set(ptr noundef %i.a, i32 noundef %i.ad) #9
  br label %bb.as

bb.o:                                             ; preds = %bb.j
  %i.ae = load i64, ptr @rb_id_option_frozen_string_literal, align 8, !tbaa !11
  %i.af = icmp eq i64 %i.b, %i.ae
  br i1 %i.af, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ag = icmp eq i64 %1, 4
  br i1 %i.ag, label %bb.as, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ah = and i64 %1, -5
  %i.ai = icmp ne i64 %i.ah, 0
  tail call void @pm_options_frozen_string_literal_set(ptr noundef %i.a, i1 noundef zeroext %i.ai) #9
  br label %bb.as

bb.r:                                             ; preds = %bb.o
  %i.aj = load i64, ptr @rb_id_option_version, align 8, !tbaa !11
  %i.ak = icmp eq i64 %i.b, %i.aj
  br i1 %i.ak, label %bb.s, label %bb.aa

bb.s:                                             ; preds = %bb.r
  %i.al = icmp eq i64 %1, 4
  br i1 %i.al, label %bb.as, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.am = tail call fastcc ptr @check_string(i64 noundef %1) ; 2 uses
  %i.an = inttoptr i64 %1 to ptr
  %i.ao = getelementptr i8, ptr %i.an, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !50 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 7
  br i1 %i.aq, label %bb.u, label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.ar = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.am, ptr noundef nonnull dereferenceable(8) @.str.63, i64 noundef 7) #10
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.at = load i64, ptr @rb_cObject, align 8, !tbaa !11
  %i.au = tail call fastcc i64 @rbimpl_intern_const(ptr noundef @build_options_i.rbimpl_id, ptr noundef @.str.64) #12
  %i.av = tail call i64 @rb_const_get(i64 noundef %i.at, i64 noundef %i.au) #9
  %i.aw = inttoptr i64 %i.av to ptr               ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !47
  %i.ay = and i64 %i.ax, 8192
  %.not.i = icmp eq i64 %i.ay, 0
  %i.az = getelementptr i8, ptr %i.aw, i64 24     ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !49
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.v, %bb.w
  %i.bb = phi ptr [ %i.ba, %bb.w ], [ %i.az, %bb.v ] ; 2 uses
  %i.bc = tail call zeroext i1 @pm_options_version_set(ptr noundef %i.a, ptr noundef %i.bb, i64 noundef 3) #9
  br i1 %i.bc, label %bb.as, label %bb.x

bb.x:                                             ; preds = %RSTRING_PTR.exit
  %i.bd = load i64, ptr @rb_cPrismCurrentVersionError, align 8, !tbaa !11
  %i.be = tail call i64 @rb_exc_new_cstr(i64 noundef %i.bd, ptr noundef %i.bb) #9
  tail call void @rb_exc_raise(i64 noundef %i.be) #11
  unreachable

bb.y:                                             ; preds = %bb.u, %bb.t
  %i.bf = tail call zeroext i1 @pm_options_version_set(ptr noundef %i.a, ptr noundef %i.am, i64 noundef %i.ap) #9
  br i1 %i.bf, label %bb.as, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bg = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bg, ptr noundef nonnull @.str.65, i64 noundef %1) #11
  unreachable

bb.aa:                                            ; preds = %bb.r
  %i.bh = load i64, ptr @rb_id_option_scopes, align 8, !tbaa !11
  %i.bi = icmp eq i64 %i.b, %i.bh
  br i1 %i.bi, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.bj = icmp eq i64 %1, 4
  br i1 %i.bj, label %bb.as, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call fastcc void @build_options_scopes(ptr noundef %i.a, i64 noundef %1)
  br label %bb.as

bb.ad:                                            ; preds = %bb.aa
  %i.bk = load i64, ptr @rb_id_option_command_line, align 8, !tbaa !11
  %i.bl = icmp eq i64 %i.b, %i.bk
  br i1 %i.bl, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  %i.bm = icmp eq i64 %1, 4
  br i1 %i.bm, label %bb.as, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bn = tail call fastcc ptr @check_string(i64 noundef %1) ; 2 uses
  %i.bo = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bn) #10 ; 2 uses
  %.not = icmp eq i64 %i.bo, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.ah, %bb.af
  %.067.lcssa = phi i8 [ 0, %bb.af ], [ %i.bt, %bb.ah ]
  tail call void @pm_options_command_line_set(ptr noundef %i.a, i8 noundef zeroext %.067.lcssa) #9
  br label %bb.as

.lr.ph:                                           ; preds = %bb.af, %bb.ah
  %.072 = phi i64 [ %i.bu, %bb.ah ], [ 0, %bb.af ] ; 2 uses
  %.06771 = phi i8 [ %i.bt, %bb.ah ], [ 0, %bb.af ]
  %i.bp = getelementptr i8, ptr %i.bn, i64 %.072
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !49  ; 2 uses
  %switch.tableidx = add i8 %i.bq, -97            ; 3 uses
  %3 = icmp ult i8 %switch.tableidx, 24
  br i1 %3, label %switch.hole_check, label %bb.ag

bb.ag:                                            ; preds = %switch.hole_check, %.lr.ph
  %i.br = sext i8 %i.bq to i32
  %i.bs = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bs, ptr noundef nonnull @.str.66, i32 noundef %i.br) #11
  unreachable

switch.hole_check:                                ; preds = %.lr.ph
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 8431633, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %bb.ah, label %bb.ag

bb.ah:                                            ; preds = %switch.hole_check
  %4 = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.build_options_i, i64 %4
  %switch.load = load i8, ptr %switch.gep, align 1
  %i.bt = or i8 %.06771, %switch.load             ; 2 uses
  %i.bu = add nuw i64 %.072, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.bu, %i.bo
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !68

bb.ai:                                            ; preds = %bb.ad
  %i.bv = load i64, ptr @rb_id_option_main_script, align 8, !tbaa !11
  %i.bw = icmp eq i64 %i.b, %i.bv
  br i1 %i.bw, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.bx = icmp eq i64 %1, 4
  br i1 %i.bx, label %bb.as, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.by = and i64 %1, -5
  %i.bz = icmp ne i64 %i.by, 0
  tail call void @pm_options_main_script_set(ptr noundef %i.a, i1 noundef zeroext %i.bz) #9
  br label %bb.as

bb.al:                                            ; preds = %bb.ai
  %i.ca = load i64, ptr @rb_id_option_partial_script, align 8, !tbaa !11
  %i.cb = icmp eq i64 %i.b, %i.ca
  br i1 %i.cb, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.cc = icmp eq i64 %1, 4
  br i1 %i.cc, label %bb.as, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cd = and i64 %1, -5
  %i.ce = icmp ne i64 %i.cd, 0
  tail call void @pm_options_partial_script_set(ptr noundef %i.a, i1 noundef zeroext %i.ce) #9
  br label %bb.as

bb.ao:                                            ; preds = %bb.al
  %i.cf = load i64, ptr @rb_id_option_freeze, align 8, !tbaa !11
  %i.cg = icmp eq i64 %i.b, %i.cf
  br i1 %i.cg, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.ch = icmp eq i64 %1, 4
  br i1 %i.ch, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ci = and i64 %1, -5
  %i.cj = icmp ne i64 %i.ci, 0
  tail call void @pm_options_freeze_set(ptr noundef %i.a, i1 noundef zeroext %i.cj) #9
  br label %bb.as

bb.ar:                                            ; preds = %bb.ao
  %i.ck = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ck, ptr noundef nonnull @.str.67, i64 noundef %0) #11
  unreachable

bb.as:                                            ; preds = %bb.g, %bb.y, %RSTRING_PTR.exit, %bb.h, %bb.i, %bb.q, %bb.p, %bb.ac, %bb.ab, %bb.ak, %bb.aj, %bb.aq, %bb.ap, %bb.am, %bb.an, %bb.ae, %._crit_edge, %bb.s, %bb.k, %rb_num2int_inline.exit, %bb.b, %check_string.exit
  ret i32 0
}

declare i64 @rb_sym2id(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc ptr @check_string(i64 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !47   ; 2 uses
  %i.g = and i64 %i.f, 31
  %i.h = icmp eq i64 %i.g, 5
  br i1 %i.h, label %bb.b, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.a, %rbimpl_RB_TYPE_P_fastpath.exit
  %i.i = load i64, ptr @rb_eTypeError, align 8, !tbaa !11
  %i.j = tail call i64 @rb_obj_class(i64 noundef %0) #9
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.i, ptr noundef nonnull @.str.62, i64 noundef %i.j) #11
  unreachable

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.k = and i64 %i.f, 8192
  %.not.i = icmp eq i64 %i.k, 0
  %i.l = getelementptr i8, ptr %i.e, i64 24       ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !49
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.b, %bb.c
  %i.n = phi ptr [ %i.m, %bb.c ], [ %i.l, %bb.b ]
  ret ptr %i.n
}

declare void @pm_options_encoding_locked_set(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @pm_options_encoding_set(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @rb_to_encoding(i64 noundef) local_unnamed_addr #2

declare void @pm_options_line_set(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @pm_options_frozen_string_literal_set(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #1

declare zeroext i1 @pm_options_version_set(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @rb_exc_raise(i64 noundef) local_unnamed_addr #3

declare i64 @rb_exc_new_cstr(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @build_options_scopes(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %i.b = and i64 %1, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %rbimpl_RB_TYPE_P_fastpath.exit69.thread, label %rbimpl_RB_TYPE_P_fastpath.exit69

rbimpl_RB_TYPE_P_fastpath.exit69:                 ; preds = %bb.a
  %i.e = inttoptr i64 %1 to ptr                   ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !47   ; 3 uses
  %i.g = and i64 %i.f, 31
  %i.h = icmp eq i64 %i.g, 7
  br i1 %i.h, label %bb.b, label %rbimpl_RB_TYPE_P_fastpath.exit69.thread

rbimpl_RB_TYPE_P_fastpath.exit69.thread:          ; preds = %bb.a, %rbimpl_RB_TYPE_P_fastpath.exit69
  %i.i = load i64, ptr @rb_eTypeError, align 8, !tbaa !11
  %i.j = tail call i64 @rb_obj_class(i64 noundef %1) #9
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.i, ptr noundef nonnull @.str.68, i64 noundef %i.j) #11
  unreachable

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit69
  %i.k = and i64 %i.f, 8192
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = lshr i64 %i.f, 15
  %i.m = and i64 %i.l, 127
  br label %rb_array_len.exit

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr i8, ptr %i.e, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !49
  br label %rb_array_len.exit

rb_array_len.exit:                                ; preds = %bb.c, %bb.d
  %.0.i70 = phi i64 [ %i.m, %bb.c ], [ %i.o, %bb.d ] ; 3 uses
  %i.p = tail call zeroext i1 @pm_options_scopes_init(ptr noundef %0, i64 noundef %.0.i70) #9
  br i1 %i.p, label %.preheader91, label %bb.e

.preheader91:                                     ; preds = %rb_array_len.exit
  %.not119 = icmp eq i64 %.0.i70, 0
  br i1 %.not119, label %._crit_edge118, label %.lr.ph117

.lr.ph117:                                        ; preds = %.preheader91
  %i.q = getelementptr i8, ptr %0, i64 80
  br label %bb.f

bb.e:                                             ; preds = %rb_array_len.exit
  %i.r = load i64, ptr @rb_eNoMemError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.r, ptr noundef nonnull @.str.69) #11
  unreachable

._crit_edge118:                                   ; preds = %._crit_edge, %.preheader91
  ret void

bb.f:                                             ; preds = %.lr.ph117, %._crit_edge
  %.0116 = phi i64 [ 0, %.lr.ph117 ], [ %i.cs, %._crit_edge ] ; 3 uses
  %i.s = tail call i64 @rb_ary_entry(i64 noundef %1, i64 noundef %.0116) #10 ; 8 uses
  %i.t = icmp eq i64 %i.s, 0
  %i.u = and i64 %i.s, 7
  %i.v = icmp ne i64 %i.u, 0
  %i.w = or i1 %i.t, %i.v
  br i1 %i.w, label %rbimpl_RB_TYPE_P_fastpath.exit67.thread, label %rbimpl_RB_TYPE_P_fastpath.exit67

rbimpl_RB_TYPE_P_fastpath.exit67:                 ; preds = %bb.f
  %i.x = inttoptr i64 %i.s to ptr                 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !47
  %i.z = and i64 %i.y, 31
  %i.aa = icmp eq i64 %i.z, 7
  br i1 %i.aa, label %.loopexit, label %rbimpl_RB_TYPE_P_fastpath.exit67.thread

rbimpl_RB_TYPE_P_fastpath.exit67.thread:          ; preds = %bb.f, %rbimpl_RB_TYPE_P_fastpath.exit67
  %i.ab = load i64, ptr @rb_cPrismScope, align 8, !tbaa !11
  %i.ac = tail call i64 @rb_obj_is_kind_of(i64 noundef %i.s, i64 noundef %i.ab) #9
  %.not = icmp eq i64 %i.ac, 0
  br i1 %.not, label %bb.r, label %bb.g

bb.g:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit67.thread
  %.pr.i = load i64, ptr @build_options_scopes.rbimpl_id, align 8, !tbaa !11 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
end_hunk_1
