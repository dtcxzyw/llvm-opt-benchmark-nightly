Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/coll_han_dynamic_file?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.mca_coll_han_component_t = type { %struct.mca_coll_base_component_2_4_0_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.mca_coll_han_op_module_name_t, i8, [22 x i8], [22 x i32], [22 x i32], i8, i8, ptr, %struct.mca_coll_han_dynamic_rule_s, [22 x [3 x i32]], [22 x i32], [22 x ptr], i32 }
%struct.mca_coll_base_component_2_4_0_t = type { %struct.mca_base_component_2_1_0_t, %struct.mca_base_component_data_2_0_0_t, ptr, ptr }
%struct.mca_base_component_2_1_0_t = type { i32, i32, i32, [16 x i8], i32, i32, i32, [32 x i8], i32, i32, i32, [64 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, i32, [28 x i8] }
%struct.mca_base_component_data_2_0_0_t = type { i32, [32 x i8] }
%struct.mca_coll_han_op_module_name_t = type { %struct.mca_coll_han_op_up_low_module_name_t, %struct.mca_coll_han_op_up_low_module_name_t, %struct.mca_coll_han_op_up_low_module_name_t, %struct.mca_coll_han_op_up_low_module_name_t, %struct.mca_coll_han_op_up_low_module_name_t, %struct.mca_coll_han_op_up_low_module_name_t }
%struct.mca_coll_han_op_up_low_module_name_t = type { ptr, ptr }
%struct.mca_coll_han_dynamic_rule_s = type { i32, ptr }
%struct.ompi_coll_han_components = type { i32, ptr, ptr }

@mca_coll_han_component = external local_unnamed_addr global %struct.mca_coll_han_component_t, align 8
@.str = private unnamed_addr constant [171 x i8] c"coll:han:mca_coll_han_init_dynamic_rules coll_han_use_dynamic_file_rules is set but coll_han_dynamic_rules_filename is not Rules from MCA parameters will be used instead\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [227 x i8] c"coll:han:mca_coll_han_init_dynamic_rules cannot open dynamic file provided by coll_han_dynamic_rules_filename=%s. Make sure it provides the  full path and check file permissions. Rules from MCA parameters will be used instead\0A\00", align 1
@fileline = internal global i32 1, align 4
@.str.3 = private unnamed_addr constant [189 x i8] c"coll:han:mca_coll_han_init_dynamic_rules found an error on dynamic rules file %s at line %d: an invalid value %ld is given for collective count or the reader encountered an unexpected EOF\0A\00", align 1
@.str.4 = private unnamed_addr constant [116 x i8] c"coll:han:mca_coll_han_init_dynamic_rules invalid collective at line %d.The rest of the input file will be ignored.\0A\00", align 1
@.str.5 = private unnamed_addr constant [173 x i8] c"coll:han:mca_coll_han_init_dynamic_rules invalid collective %s at line %d: the collective must be at least %d and less than %d. The rest of the input file will be ignored.\0A\00", align 1
@.str.6 = private unnamed_addr constant [219 x i8] c"coll:han:mca_coll_han_init_dynamic_rules found an error on dynamic rules file %s read collective id %d at line %d but this collective is not implemented yet. This is not an error but this set of rules will not be used\0A\00", align 1
@.str.7 = private unnamed_addr constant [189 x i8] c"coll:han:mca_coll_han_init_dynamic_rules found an error on dynamic rules file %s at line %d: an invalid value %ld is given for topo level count or the reader encountered an unexpected EOF\0A\00", align 1
@.str.8 = private unnamed_addr constant [138 x i8] c"coll:han:mca_coll_han_init_dynamic_rules Warning on dynamic rules file %s at line %d: an invalid value %ld is given for topo level count\0A\00", align 1
@.str.9 = private unnamed_addr constant [134 x i8] c"coll:han:mca_coll_han_init_dynamic_rules found an error on dynamic rules file %s at line %d: cannot read the name/id of a topo level\0A\00", align 1
@.str.10 = private unnamed_addr constant [118 x i8] c"coll:han:mca_coll_han_init_dynamic_rules found an error on dynamic rules file %s at line %d: unknown topo level '%s'\0A\00", align 1
@.str.11 = private unnamed_addr constant [184 x i8] c"coll:han:mca_coll_han_init_dynamic_rules found an error on dynamic rules file %s at line %d: an invalid value %ld is given for rules count or the reader encountered an unexpected EOF\0A\00", align 1
@.str.12 = private unnamed_addr constant [147 x i8] c"coll:han:mca_coll_han_init_dynamic_rules Warning on dynamic rules file %s at line %d: an invalid value %ld is given for configuration rules count\0A\00", align 1
@.str.13 = private unnamed_addr constant [236 x i8] c"coll:han:mca_coll_han_init_dynamic_rules invalid configuration size %ld at line %d or the reader encountered an unexpected EOF the configuration size must be at least %d and the first configuration size of a topologic level must be %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [197 x i8] c"coll:han:mca_coll_han_init_dynamic_rules found an error on dynamic rules file %s at line %d: an invalid value %ld is given for message size rules count or the reader encountered an unexpected EOF\0A\00", align 1
@.str.15 = private unnamed_addr constant [146 x i8] c"coll:han:mca_coll_han_init_dynamic_rules Warning on dynamic rules file %s at line %d: an invalid value %ld is given for message size rules count\0A\00", align 1
@.str.16 = private unnamed_addr constant [243 x i8] c"coll:han:mca_coll_han_init_dynamic_rules found an error on dynamic rules file %s at line %d: an invalid value %lu is given for message size or the reader encountered an unexpected EOF. The first message size rule of a configuration must be 0\0A\00", align 1
@.str.17 = private unnamed_addr constant [141 x i8] c"coll:han:mca_coll_han_init_dynamic_rules found an error on dynamic rules file %s at line %d: cannot read the name of a collective component\0A\00", align 1
@.str.18 = private unnamed_addr constant [250 x i8] c"coll:han:mca_coll_han_init_dynamic_rules found an error on dynamic rules file %s at line %d: an invalid collective component name %s was given or the reader encountered an unexpected EOF. Collective component id must be at least %d and less than %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [134 x i8] c"coll:han:mca_coll_han_init_dynamic_rules found an error on dynamic rules file %s at line %d: cannot read the name/id of an algorithm\0A\00", align 1
@.str.20 = private unnamed_addr constant [124 x i8] c"coll:han:mca_coll_han_init_dynamic_rules found an error on dynamic rules file %s at line %d: unknown algorithm '%s' for %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [93 x i8] c"coll:han:mca_coll_han_init_dynamic_rules found for coll=%s msg_size=%ld : algorithm '%s' %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [84 x i8] c"coll:han:mca_coll_han_init_dynamic_rules found optional pipelining segment lengths\0A\00", align 1
@.str.23 = private unnamed_addr constant [183 x i8] c"coll:han:mca_coll_han_init_dynamic_rules file %s line %d found segment lengths for topological collective at level != 0 for collective %s component %s. These values will be ignored.\0A\00", align 1
@.str.24 = private unnamed_addr constant [158 x i8] c"coll:han:mca_coll_han_init_dynamic_rules file %s line %d found end of file while reading the optional list of segment lengths for collective %s component %s\0A\00", align 1
@.str.25 = private unnamed_addr constant [156 x i8] c"coll:han:mca_coll_han_init_dynamic_rules. Warning on file %s at line %d: rule reading is over but reader does not seem to have reached the end of the file\0A\00", align 1
@.str.26 = private unnamed_addr constant [64 x i8] c"coll:han:mca_coll_han_init_dynamic_rules read %d rules from %s\0A\00", align 1
@.str.27 = private unnamed_addr constant [72 x i8] c"coll:han:mca_coll_han_init_dynamic_rules cannot allocate dynamic rules\0A\00", align 1
@.str.28 = private unnamed_addr constant [188 x i8] c"coll:han:mca_coll_han_init_dynamic_rules could not fully read dynamic rules file. Will use mca parameters defined rules. To see error detail, please set collective verbosity level over 5\0A\00", align 1
@.str.29 = private unnamed_addr constant [144 x i8] c"coll:han:dump_dynamic_rules %d collective %d (%s) topology level %d (%s) configuration size %d message size %d -> collective component %d (%s)\0A\00", align 1
@ompi_coll_han_available_components = external local_unnamed_addr global [7 x %struct.ompi_coll_han_components], align 16
@.str.30 = private unnamed_addr constant [174 x i8] c"coll:han:check_dynamic_rules HAN found an issue on dynamic rules for collective %d on topological level %d: configuration sizes %d and %d are not sorted by increasing value\0A\00", align 1
@.str.31 = private unnamed_addr constant [197 x i8] c"coll:han:check_dynamic_rules HAN found an issue on dynamic rules for collective %d on topological level %d with configuration size %d: message sizes %lu and %lu are not sorted by increasing value\0A\00", align 1
@.str.32 = private unnamed_addr constant [229 x i8] c"coll:han:check_dynamic_rules HAN found an issue on dynamic rules for collective %d on topological level %d with configuration size %d for message size %lu: han collective component %d can only be activated for topology level %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @mca_coll_han_init_dynamic_rules() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 17 uses
  %i.c = alloca ptr, align 8                      ; 13 uses
  %i.d = alloca i64, align 8                      ; 7 uses
  %i.e = alloca i64, align 8                      ; 8 uses
  %i.f = alloca i64, align 8                      ; 7 uses
  %i.g = alloca i64, align 8                      ; 7 uses
  %i.h = alloca i64, align 8                      ; 7 uses
  %i.i = alloca ptr, align 8                      ; 5 uses
  %i.j = alloca ptr, align 8                      ; 11 uses
  %i.k = alloca ptr, align 8                      ; 5 uses
  %i.l = alloca ptr, align 8                      ; 14 uses
  %i.m = alloca ptr, align 8                      ; 5 uses
  %i.n = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store ptr null, ptr %i.b, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store ptr null, ptr %i.c, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #9
  %i.o = load i8, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 648), align 8, !tbaa !48, !range !49, !noundef !50
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.b, label %bb.do

bb.b:                                             ; preds = %bb.a
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 656), align 8, !tbaa !51 ; 22 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.s = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !19
  %i.t = tail call zeroext i1 @opal_output_check_verbosity(i32 noundef 5, i32 noundef %i.s) #9
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !19
  tail call void (i32, ptr, ...) @opal_output(i32 noundef %i.u, ptr noundef nonnull @.str) #9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 664), align 8, !tbaa !20
  br label %bb.do

bb.f:                                             ; preds = %bb.b
  %i.v = tail call noalias ptr @fopen(ptr noundef nonnull %i.q, ptr noundef nonnull @.str.1) ; 19 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.x = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !19
  %i.y = tail call zeroext i1 @opal_output_check_verbosity(i32 noundef 5, i32 noundef %i.x) #9
  br i1 %i.y, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.z = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !19
  tail call void (i32, ptr, ...) @opal_output(i32 noundef %i.z, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.q) #9
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 664), align 8, !tbaa !20
  br label %bb.do

bb.j:                                             ; preds = %bb.f
  %i.aa = call i32 @ompi_coll_base_file_getnext_long(ptr noundef nonnull %i.v, ptr noundef nonnull @fileline, ptr noundef nonnull %i.a) #9
  %i.ab = icmp slt i32 %i.aa, 0
  %i.ac = load i64, ptr %i.a, align 8             ; 3 uses
  %i.ad = icmp slt i64 %i.ac, 1
  %or.cond = select i1 %i.ab, i1 true, i1 %i.ad
  br i1 %or.cond, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.ae = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !19
  %i.af = call zeroext i1 @opal_output_check_verbosity(i32 noundef 5, i32 noundef %i.ae) #9
  br i1 %i.af, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ag = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !19
  %i.ah = load i32, ptr @fileline, align 4, !tbaa !52
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !53
  call void (i32, ptr, ...) @opal_output(i32 noundef %i.ag, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.q, i32 noundef %i.ah, i64 noundef %i.ai) #9
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 664), align 8, !tbaa !20
  br label %bb.dj

bb.n:                                             ; preds = %bb.j
  %i.aj = trunc i64 %i.ac to i32
  store i32 %i.aj, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 664), align 8, !tbaa !20
  %i.ak = shl i64 %i.ac, 4
  %i.al = call noalias ptr @malloc(i64 noundef %i.ak) #10 ; 3 uses
  store ptr %i.al, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 672), align 8, !tbaa !22
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.o, label %.lr.ph358

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 664), align 8, !tbaa !20
  br label %bb.de

.lr.ph358:                                        ; preds = %bb.n, %bb.cw
  %indvars.iv408 = phi i64 [ %7, %bb.cw ], [ 0, %bb.n ]
  %.0195357 = phi i32 [ %0, %bb.cw ], [ 0, %bb.n ]
  %.0196356 = phi i32 [ %.7, %bb.cw ], [ 0, %bb.n ] ; 3 uses
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %indvars.iv408 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4 ; 4 uses
  store i32 0, ptr %i.ao, align 4, !tbaa !25
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  store ptr null, ptr %i.ap, align 8, !tbaa !26
  %0 = add nuw nsw i32 %.0195357, 1               ; 3 uses
  store i32 %0, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 664), align 8, !tbaa !20
  %i.aq = call i32 @ompi_coll_base_file_getnext_string(ptr noundef nonnull %i.v, ptr noundef nonnull @fileline, ptr noundef nonnull %i.b) #9
  %i.ar = icmp slt i32 %i.aq, 0
  br i1 %i.ar, label %bb.p, label %bb.r

bb.p:                                             ; preds = %.lr.ph358
  %i.as = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !19
  %i.at = call zeroext i1 @opal_output_check_verbosity(i32 noundef 5, i32 noundef %i.as) #9
  br i1 %i.at, label %bb.q, label %bb.dj

bb.q:                                             ; preds = %bb.p
  %i.au = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !19
  %i.av = load i32, ptr @fileline, align 4, !tbaa !52
  call void (i32, ptr, ...) @opal_output(i32 noundef %i.au, ptr noundef nonnull @.str.4, i32 noundef %i.av) #9
  br label %bb.dj

bb.r:                                             ; preds = %.lr.ph358
  %i.aw = load ptr, ptr %i.b, align 8, !tbaa !47
  %i.ax = call i32 @mca_coll_base_name_to_colltype(ptr noundef %i.aw) #9 ; 2 uses
  %i.ay = icmp ugt i32 %i.ax, 21
  br i1 %i.ay, label %bb.s, label %bb.y

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #9
  %i.az = load ptr, ptr %i.b, align 8, !tbaa !47
  %i.ba = call i64 @__isoc23_strtol(ptr noundef %i.az, ptr noundef nonnull %i.i, i32 noundef 10) #9
  %i.bb = trunc i64 %i.ba to i32                  ; 3 uses
  %i.bc = load ptr, ptr %i.i, align 8, !tbaa !47
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !54
  %i.be = icmp ne i8 %i.bd, 0
  %i.bf = icmp ugt i32 %i.bb, 21
  %or.cond10 = select i1 %i.be, i1 true, i1 %i.bf
  br i1 %or.cond10, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.bg = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !19
  %i.bh = call zeroext i1 @opal_output_check_verbosity(i32 noundef 5, i32 noundef %i.bg) #9
  br i1 %i.bh, label %bb.u, label %.thread

bb.u:                                             ; preds = %bb.t
  %i.bi = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !19
  %i.bj = load ptr, ptr %i.b, align 8, !tbaa !47
  %i.bk = load i32, ptr @fileline, align 4, !tbaa !52
  call void (i32, ptr, ...) @opal_output(i32 noundef %i.bi, ptr noundef nonnull @.str.5, ptr noundef %i.bj, i32 noundef %i.bk, i32 noundef 0, i32 noundef 22) #9
  br label %.thread

bb.v:                                             ; preds = %bb.s
  %i.bl = load ptr, ptr %i.b, align 8, !tbaa !47  ; 2 uses
  %.not = icmp eq ptr %i.bl, null
  br i1 %.not, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @free(ptr noundef nonnull %i.bl) #9
  br label %bb.x

.thread:                                          ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #9
  br label %bb.dj

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.bm = call ptr @mca_coll_base_colltype_to_str(i32 noundef %i.bb) #9
  %i.bn = call noalias ptr @strdup(ptr noundef %i.bm) #9
  store ptr %i.bn, ptr %i.b, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #9
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.r
  %.0191 = phi i32 [ %i.bb, %bb.x ], [ %i.ax, %bb.r ] ; 8 uses
  %i.bo = call zeroext i1 @mca_coll_han_is_coll_dynamic_implemented(i32 noundef %.0191) #9
  br i1 %i.bo, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bp = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !19
  %i.bq = call zeroext i1 @opal_output_check_verbosity(i32 noundef 5, i32 noundef %i.bp) #9
  br i1 %i.bq, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.br = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !19
  %i.bs = load i32, ptr @fileline, align 4, !tbaa !52
  call void (i32, ptr, ...) @opal_output(i32 noundef %i.br, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.q, i32 noundef %.0191, i32 noundef %i.bs) #9
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa, %bb.y
  %i.bt = call i32 @ompi_coll_base_file_getnext_long(ptr noundef nonnull %i.v, ptr noundef nonnull @fileline, ptr noundef nonnull %i.d) #9
  %i.bu = icmp slt i32 %i.bt, 0
  %i.bv = load i64, ptr %i.d, align 8             ; 4 uses
  %i.bw = icmp slt i64 %i.bv, 0
  %or.cond12 = select i1 %i.bu, i1 true, i1 %i.bw
  br i1 %or.cond12, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.bx = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !19
  %i.by = call zeroext i1 @opal_output_check_verbosity(i32 noundef 5, i32 noundef %i.bx) #9
  br i1 %i.by, label %bb.ad, label %bb.dj

bb.ad:                                            ; preds = %bb.ac
  %i.bz = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !19
  %i.ca = load i32, ptr @fileline, align 4, !tbaa !52
  %i.cb = load i64, ptr %i.d, align 8, !tbaa !53
  call void (i32, ptr, ...) @opal_output(i32 noundef %i.bz, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.q, i32 noundef %i.ca, i64 noundef %i.cb) #9
  br label %bb.dj

bb.ae:                                            ; preds = %bb.ab
  %i.cc = trunc i64 %i.bv to i32
  store i32 %i.cc, ptr %i.ao, align 4, !tbaa !25
  store i32 %.0191, ptr %i.an, align 8, !tbaa !27
  %i.cd = icmp eq i64 %i.bv, 0
  br i1 %i.cd, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.ce = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !19
  %i.cf = call zeroext i1 @opal_output_check_verbosity(i32 noundef 5, i32 noundef %i.ce) #9
  br i1 %i.cf, label %bb.ag, label %bb.cw

bb.ag:                                            ; preds = %bb.af
  %i.cg = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !19
  %i.ch = load i32, ptr @fileline, align 4, !tbaa !52
  %i.ci = load i64, ptr %i.d, align 8, !tbaa !53
  call void (i32, ptr, ...) @opal_output(i32 noundef %i.cg, ptr noundef nonnull @.str.8, ptr noundef nonnull %i.q, i32 noundef %i.ch, i64 noundef %i.ci) #9
  br label %bb.cw

bb.ah:                                            ; preds = %bb.ae
  %i.cj = mul i64 %i.bv, 24
  %i.ck = call noalias ptr @malloc(i64 noundef %i.cj) #10 ; 3 uses
  store ptr %i.ck, ptr %i.ap, align 8, !tbaa !26
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %bb.ai, label %.lr.ph354

bb.ai:                                            ; preds = %bb.ah
  store i32 0, ptr %i.ao, align 4, !tbaa !25
  br label %bb.de

.lr.ph354:                                        ; preds = %bb.ah, %.loopexit262
  %indvars.iv405 = phi i64 [ %6, %.loopexit262 ], [ 0, %bb.ah ]
  %.0194353 = phi i32 [ %1, %.loopexit262 ], [ 0, %bb.ah ]
  %.1197352 = phi i32 [ %.6.ph, %.loopexit262 ], [ %.0196356, %bb.ah ] ; 3 uses
  %i.cm = getelementptr inbounds nuw [24 x i8], ptr %i.ck, i64 %indvars.iv405 ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 4 uses
  store i32 0, ptr %i.cn, align 8, !tbaa !30
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 16 ; 2 uses
  store ptr null, ptr %i.co, align 8, !tbaa !31
  %1 = add nuw nsw i32 %.0194353, 1               ; 3 uses
  store i32 %1, ptr %i.ao, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #9
  store ptr null, ptr %i.j, align 8, !tbaa !47
  %i.cp = call i32 @ompi_coll_base_file_getnext_string(ptr noundef nonnull %i.v, ptr noundef nonnull @fileline, ptr noundef nonnull %i.j) #9
  %i.cq = icmp slt i32 %i.cp, 0
  br i1 %i.cq, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %.lr.ph354
  %i.cr = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !19
  %i.cs = call zeroext i1 @opal_output_check_verbosity(i32 noundef 5, i32 noundef %i.cr) #9
  br i1 %i.cs, label %bb.ak, label %.thread253

bb.ak:                                            ; preds = %bb.aj
  %i.ct = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !19
  %i.cu = load i32, ptr @fileline, align 4, !tbaa !52
  call void (i32, ptr, ...) @opal_output(i32 noundef %i.ct, ptr noundef nonnull @.str.9, ptr noundef nonnull %i.q, i32 noundef %i.cu) #9
  br label %.thread253

bb.al:                                            ; preds = %.lr.ph354
  %i.cv = load ptr, ptr %i.j, align 8, !tbaa !47
  %i.cw = call i32 @mca_coll_han_topo_lvl_name_to_id(ptr noundef %i.cv) #9 ; 2 uses
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = icmp slt i32 %i.cw, 0
  br i1 %i.cy, label %bb.am, label %bb.aq

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #9
  %i.cz = load ptr, ptr %i.j, align 8, !tbaa !47
  %i.da = call i64 @__isoc23_strtol(ptr noundef %i.cz, ptr noundef nonnull %i.k, i32 noundef 10) #9
  %i.db = shl i64 %i.da, 32
  %i.dc = ashr exact i64 %i.db, 32                ; 2 uses
  %i.dd = load ptr, ptr %i.k, align 8, !tbaa !47
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !54
  %i.df = icmp eq i8 %i.de, 0
  %i.dg = icmp ult i64 %i.dc, 3
  %or.cond16.not = select i1 %i.df, i1 %i.dg, i1 false
  br i1 %or.cond16.not, label %.thread240, label %bb.an

.thread240:                                       ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #9
  br label %bb.aq

bb.an:                                            ; preds = %bb.am
  %i.dh = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !19
  %i.di = call zeroext i1 @opal_output_check_verbosity(i32 noundef 5, i32 noundef %i.dh) #9
  br i1 %i.di, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.dj = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !19
  %i.dk = load i32, ptr @fileline, align 4, !tbaa !52
  %i.dl = load ptr, ptr %i.j, align 8, !tbaa !47
  call void (i32, ptr, ...) @opal_output(i32 noundef %i.dj, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.q, i32 noundef %i.dk, ptr noundef %i.dl) #9
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao
  %i.dm = load ptr, ptr %i.j, align 8, !tbaa !47
  call void @free(ptr noundef %i.dm) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #9
  br label %.thread253

bb.aq:                                            ; preds = %.thread240, %bb.al
  %.0188 = phi i64 [ %i.dc, %.thread240 ], [ %i.cx, %bb.al ] ; 2 uses
  %i.dn = load ptr, ptr %i.j, align 8, !tbaa !47
  call void @free(ptr noundef %i.dn) #9
  store i64 -1, ptr %i.e, align 8, !tbaa !53
  %i.do = call i32 @ompi_coll_base_file_getnext_long(ptr noundef nonnull %i.v, ptr noundef nonnull @fileline, ptr noundef nonnull %i.e) #9
  %i.dp = icmp slt i32 %i.do, 0
  %i.dq = load i64, ptr %i.e, align 8             ; 4 uses
  %i.dr = icmp slt i64 %i.dq, 0
  %or.cond18 = select i1 %i.dp, i1 true, i1 %i.dr
  br i1 %or.cond18, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.ds = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !19
  %i.dt = call zeroext i1 @opal_output_check_verbosity(i32 noundef 5, i32 noundef %i.ds) #9
  br i1 %i.dt, label %bb.as, label %.thread253

bb.as:                                            ; preds = %bb.ar
  %i.du = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !19
  %i.dv = load i32, ptr @fileline, align 4, !tbaa !52
  %i.dw = load i64, ptr %i.e, align 8, !tbaa !53
  call void (i32, ptr, ...) @opal_output(i32 noundef %i.du, ptr noundef nonnull @.str.11, ptr noundef nonnull %i.q, i32 noundef %i.dv, i64 noundef %i.dw) #9
  br label %.thread253

bb.at:                                            ; preds = %bb.aq
  store i32 %.0191, ptr %i.cm, align 8, !tbaa !55
  %i.dx = trunc nuw nsw i64 %.0188 to i32         ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  store i32 %i.dx, ptr %i.dy, align 4, !tbaa !32
  %i.dz = trunc i64 %i.dq to i32
  store i32 %i.dz, ptr %i.cn, align 8, !tbaa !30
  %i.ea = icmp eq i64 %i.dq, 0
  br i1 %i.ea, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.eb = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !19
  %i.ec = call zeroext i1 @opal_output_check_verbosity(i32 noundef 5, i32 noundef %i.eb) #9
  br i1 %i.ec, label %bb.av, label %.loopexit262

bb.av:                                            ; preds = %bb.au
  %i.ed = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !19
  %i.ee = load i32, ptr @fileline, align 4, !tbaa !52
  %i.ef = load i64, ptr %i.e, align 8, !tbaa !53
  call void (i32, ptr, ...) @opal_output(i32 noundef %i.ed, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.q, i32 noundef %i.ee, i64 noundef %i.ef) #9
  br label %.loopexit262

bb.aw:                                            ; preds = %bb.at
  %i.eg = mul i64 %i.dq, 24
  %i.eh = call noalias ptr @malloc(i64 noundef %i.eg) #10 ; 3 uses
  store ptr %i.eh, ptr %i.co, align 8, !tbaa !31
  %i.ei = icmp eq ptr %i.eh, null
  br i1 %i.ei, label %bb.ax, label %.lr.ph350

.lr.ph350:                                        ; preds = %bb.aw
  %.not233 = icmp eq i64 %.0188, 0
  br label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  store i32 0, ptr %i.cn, align 8, !tbaa !30
  br label %bb.cu

bb.ay:                                            ; preds = %.lr.ph350, %.loopexit
  %indvars.iv402 = phi i64 [ 0, %.lr.ph350 ], [ %5, %.loopexit ]
  %.0193349 = phi i32 [ 0, %.lr.ph350 ], [ %2, %.loopexit ] ; 2 uses
  %.2198348 = phi i32 [ %.1197352, %.lr.ph350 ], [ %.5201, %.loopexit ] ; 3 uses
  %i.ej = getelementptr inbounds nuw [24 x i8], ptr %i.eh, i64 %indvars.iv402 ; 5 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 12 ; 4 uses
  store i32 0, ptr %i.ek, align 4, !tbaa !35
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 16 ; 2 uses
  store ptr null, ptr %i.el, align 8, !tbaa !36
  %2 = add nuw nsw i32 %.0193349, 1               ; 3 uses
  store i32 %2, ptr %i.cn, align 8, !tbaa !30
  %i.em = call i32 @ompi_coll_base_file_getnext_long(ptr noundef nonnull %i.v, ptr noundef nonnull @fileline, ptr noundef nonnull %i.f) #9
  %i.en = icmp slt i32 %i.em, 0
  %i.eo = load i64, ptr %i.f, align 8             ; 2 uses
  %i.ep = icmp slt i64 %i.eo, 1
  %or.cond20 = select i1 %i.en, i1 true, i1 %i.ep
  br i1 %or.cond20, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.eq = icmp eq i32 %.0193349, 0
  %i.er = icmp samesign ugt i64 %i.eo, 1
  %or.cond22 = select i1 %i.eq, i1 %i.er, i1 false
  br i1 %or.cond22, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %bb.ay, %bb.az
  %i.es = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !19
  %i.et = call zeroext i1 @opal_output_check_verbosity(i32 noundef 5, i32 noundef %i.es) #9
  br i1 %i.et, label %bb.bb, label %.thread253

bb.bb:                                            ; preds = %bb.ba
  %i.eu = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !19
  %i.ev = load i64, ptr %i.f, align 8, !tbaa !53
  %i.ew = load i32, ptr @fileline, align 4, !tbaa !52
  call void (i32, ptr, ...) @opal_output(i32 noundef %i.eu, ptr noundef nonnull @.str.13, i64 noundef %i.ev, i32 noundef %i.ew, i32 noundef 1, i32 noundef 1) #9
  br label %.thread253

bb.bc:                                            ; preds = %bb.az
  %i.ex = call i32 @ompi_coll_base_file_getnext_long(ptr noundef nonnull %i.v, ptr noundef nonnull @fileline, ptr noundef nonnull %i.g) #9
  %i.ey = icmp slt i32 %i.ex, 0
  %i.ez = load i64, ptr %i.g, align 8             ; 4 uses
  %i.fa = icmp slt i64 %i.ez, 0
  %or.cond24 = select i1 %i.ey, i1 true, i1 %i.fa
  br i1 %or.cond24, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  %i.fb = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !19
  %i.fc = call zeroext i1 @opal_output_check_verbosity(i32 noundef 5, i32 noundef %i.fb) #9
  br i1 %i.fc, label %bb.be, label %.thread253

bb.be:                                            ; preds = %bb.bd
  %i.fd = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !19
  %i.fe = load i32, ptr @fileline, align 4, !tbaa !52
  %i.ff = load i64, ptr %i.g, align 8, !tbaa !53
  call void (i32, ptr, ...) @opal_output(i32 noundef %i.fd, ptr noundef nonnull @.str.14, ptr noundef nonnull %i.q, i32 noundef %i.fe, i64 noundef %i.ff) #9
  br label %.thread253

bb.bf:                                            ; preds = %bb.bc
  store i32 %.0191, ptr %i.ej, align 8, !tbaa !56
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ej, i64 4
  store i32 %i.dx, ptr %i.fg, align 4, !tbaa !57
  %i.fh = load i64, ptr %i.f, align 8, !tbaa !53
  %i.fi = trunc i64 %i.fh to i32
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  store i32 %i.fi, ptr %i.fj, align 8, !tbaa !37
  %i.fk = trunc i64 %i.ez to i32
  store i32 %i.fk, ptr %i.ek, align 4, !tbaa !35
  %i.fl = icmp eq i64 %i.ez, 0
  br i1 %i.fl, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  %i.fm = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !19
  %i.fn = call zeroext i1 @opal_output_check_verbosity(i32 noundef 5, i32 noundef %i.fm) #9
  br i1 %i.fn, label %bb.bh, label %.loopexit

bb.bh:                                            ; preds = %bb.bg
  %i.fo = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !19
  %i.fp = load i32, ptr @fileline, align 4, !tbaa !52
  %i.fq = load i64, ptr %i.g, align 8, !tbaa !53
  call void (i32, ptr, ...) @opal_output(i32 noundef %i.fo, ptr noundef nonnull @.str.15, ptr noundef nonnull %i.q, i32 noundef %i.fp, i64 noundef %i.fq) #9
  br label %.loopexit

bb.bi:                                            ; preds = %bb.bf
  %i.fr = shl i64 %i.ez, 5
  %i.fs = call noalias ptr @malloc(i64 noundef %i.fr) #10 ; 3 uses
  store ptr %i.fs, ptr %i.el, align 8, !tbaa !36
  %i.ft = icmp eq ptr %i.fs, null
  br i1 %i.ft, label %bb.bj, label %.lr.ph

bb.bj:                                            ; preds = %bb.bi
  store i32 0, ptr %i.ek, align 4, !tbaa !35
  br label %bb.cu

.lr.ph:                                           ; preds = %bb.bi, %bb.ct
  %indvars.iv = phi i64 [ %4, %bb.ct ], [ 0, %bb.bi ]
  %.0192347 = phi i32 [ %3, %bb.ct ], [ 0, %bb.bi ] ; 2 uses
  %.3199346 = phi i32 [ %i.ij, %bb.ct ], [ %.2198348, %bb.bi ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #9
  store ptr null, ptr %i.l, align 8, !tbaa !47
  %3 = add nuw nsw i32 %.0192347, 1               ; 3 uses
  store i32 %3, ptr %i.ek, align 4, !tbaa !35
  %i.fu = call i32 @ompi_coll_base_file_getnext_size_t(ptr noundef nonnull %i.v, ptr noundef nonnull @fileline, ptr noundef nonnull %i.h) #9
  %i.fv = icmp slt i32 %i.fu, 0
  br i1 %i.fv, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %.lr.ph
  %i.fw = icmp eq i32 %.0192347, 0
  %i.fx = load i64, ptr %i.h, align 8
  %i.fy = icmp ugt i64 %i.fx, 1
  %or.cond26 = select i1 %i.fw, i1 %i.fy, i1 false
  br i1 %or.cond26, label %bb.bl, label %bb.bn

bb.bl:                                            ; preds = %.lr.ph, %bb.bk
  %i.fz = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !19
  %i.ga = call zeroext i1 @opal_output_check_verbosity(i32 noundef 5, i32 noundef %i.fz) #9
  br i1 %i.ga, label %bb.bm, label %.thread248

bb.bm:                                            ; preds = %bb.bl
  %i.gb = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !19
  %i.gc = load i32, ptr @fileline, align 4, !tbaa !52
  %i.gd = load i64, ptr %i.h, align 8, !tbaa !53
  call void (i32, ptr, ...) @opal_output(i32 noundef %i.gb, ptr noundef nonnull @.str.16, ptr noundef nonnull %i.q, i32 noundef %i.gc, i64 noundef %i.gd) #9
  br label %.thread248

bb.bn:                                            ; preds = %bb.bk
  %i.ge = call i32 @ompi_coll_base_file_getnext_string(ptr noundef nonnull %i.v, ptr noundef nonnull @fileline, ptr noundef nonnull %i.l) #9
  %i.gf = icmp slt i32 %i.ge, 0
  br i1 %i.gf, label %bb.bo, label %bb.bq

bb.bo:                                            ; preds = %bb.bn
  %i.gg = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !19
  %i.gh = call zeroext i1 @opal_output_check_verbosity(i32 noundef 5, i32 noundef %i.gg) #9
  br i1 %i.gh, label %bb.bp, label %.thread248

bb.bp:                                            ; preds = %bb.bo
  %i.gi = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !19
  %i.gj = load i32, ptr @fileline, align 4, !tbaa !52
  call void (i32, ptr, ...) @opal_output(i32 noundef %i.gi, ptr noundef nonnull @.str.17, ptr noundef nonnull %i.q, i32 noundef %i.gj) #9
  br label %.thread248

bb.bq:                                            ; preds = %bb.bn
  %i.gk = load ptr, ptr %i.l, align 8, !tbaa !47
  %i.gl = call i32 @mca_coll_han_component_name_to_id(ptr noundef %i.gk) #9 ; 3 uses
  %i.gm = icmp ugt i32 %i.gl, 6
  br i1 %i.gm, label %bb.br, label %bb.bu

bb.br:                                            ; preds = %bb.bq
  %i.gn = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !19
  %i.go = call zeroext i1 @opal_output_check_verbosity(i32 noundef 5, i32 noundef %i.gn) #9
  br i1 %i.go, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.gp = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !19
  %i.gq = load i32, ptr @fileline, align 4, !tbaa !52
  %i.gr = load ptr, ptr %i.l, align 8, !tbaa !47
  call void (i32, ptr, ...) @opal_output(i32 noundef %i.gp, ptr noundef nonnull @.str.18, ptr noundef nonnull %i.q, i32 noundef %i.gq, ptr noundef %i.gr, i32 noundef 0, i32 noundef 7) #9
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.gs = load ptr, ptr %i.l, align 8, !tbaa !47
  call void @free(ptr noundef %i.gs) #9
  br label %.thread248

bb.bu:                                            ; preds = %bb.bq
  %i.gt = icmp eq i32 %i.gl, 6
  br i1 %i.gt, label %bb.bv, label %bb.ci

bb.bv:                                            ; preds = %bb.bu
  %i.gu = call i32 @ompi_coll_base_file_peek_next_char_is(ptr noundef nonnull %i.v, ptr noundef nonnull @fileline, i32 noundef 64) #9
  %i.gv = icmp eq i32 %i.gu, 1
  br i1 %i.gv, label %bb.bw, label %bb.ci

bb.bw:                                            ; preds = %bb.bv
  %i.gw = call i32 @ompi_coll_base_file_getnext_string(ptr noundef nonnull %i.v, ptr noundef nonnull @fileline, ptr noundef nonnull %i.c) #9
  %i.gx = icmp slt i32 %i.gw, 0
  br i1 %i.gx, label %bb.bx, label %bb.ca

bb.bx:                                            ; preds = %bb.bw
  %i.gy = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !19
  %i.gz = call zeroext i1 @opal_output_check_verbosity(i32 noundef 5, i32 noundef %i.gy) #9
  br i1 %i.gz, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.ha = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !19
  %i.hb = load i32, ptr @fileline, align 4, !tbaa !52
  call void (i32, ptr, ...) @opal_output(i32 noundef %i.ha, ptr noundef nonnull @.str.19, ptr noundef nonnull %i.q, i32 noundef %i.hb) #9
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %i.hc = load ptr, ptr %i.l, align 8, !tbaa !47
  call void @free(ptr noundef %i.hc) #9
  br label %.thread248

bb.ca:                                            ; preds = %bb.bw
  %i.hd = load ptr, ptr %i.c, align 8, !tbaa !47
  %i.he = call i32 @mca_coll_han_algorithm_name_to_id(i32 noundef %.0191, ptr noundef %i.hd) #9 ; 2 uses
  %i.hf = icmp slt i32 %i.he, 0
  br i1 %i.hf, label %bb.cb, label %bb.cg

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #9
  %i.hg = load ptr, ptr %i.c, align 8, !tbaa !47
  %i.hh = call i64 @__isoc23_strtol(ptr noundef %i.hg, ptr noundef nonnull %i.m, i32 noundef 10) #9
  %i.hi = trunc i64 %i.hh to i32                  ; 2 uses
  %i.hj = load ptr, ptr %i.m, align 8, !tbaa !47
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !54
  %i.hl = load ptr, ptr %i.c, align 8, !tbaa !47
  call void @free(ptr noundef %i.hl) #9
  store ptr null, ptr %i.c, align 8, !tbaa !47
  %.not231 = icmp eq i8 %i.hk, 0
  br i1 %.not231, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.hm = call i32 @mca_coll_han_algorithm_id_is_valid(i32 noundef %.0191, i32 noundef %i.hi) #9
  %.not232 = icmp eq i32 %i.hm, 0
  br i1 %.not232, label %bb.cd, label %.thread242

.thread242:                                       ; preds = %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #9
  br label %bb.cg

bb.cd:                                            ; preds = %bb.cb, %bb.cc
  %i.hn = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !19
  %i.ho = call zeroext i1 @opal_output_check_verbosity(i32 noundef 5, i32 noundef %i.hn) #9
  br i1 %i.ho, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.hp = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !19
  %i.hq = load i32, ptr @fileline, align 4, !tbaa !52
  %i.hr = load ptr, ptr %i.c, align 8, !tbaa !47
  %i.hs = load ptr, ptr %i.b, align 8, !tbaa !47
  call void (i32, ptr, ...) @opal_output(i32 noundef %i.hp, ptr noundef nonnull @.str.20, ptr noundef nonnull %i.q, i32 noundef %i.hq, ptr noundef %i.hr, ptr noundef %i.hs) #9
  br label %bb.cf

bb.cf:                                            ; preds = %bb.cd, %bb.ce
  %i.ht = load ptr, ptr %i.l, align 8, !tbaa !47
  call void @free(ptr noundef %i.ht) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #9
  br label %.thread248

bb.cg:                                            ; preds = %.thread242, %bb.ca
  %.0189 = phi i32 [ %i.hi, %.thread242 ], [ %i.he, %bb.ca ] ; 3 uses
  %i.hu = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !19
  %i.hv = call zeroext i1 @opal_output_check_verbosity(i32 noundef 5, i32 noundef %i.hu) #9
  br i1 %i.hv, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.hw = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !19
  %i.hx = load ptr, ptr %i.b, align 8, !tbaa !47
  %i.hy = load i64, ptr %i.h, align 8, !tbaa !53
  %i.hz = load ptr, ptr %i.c, align 8, !tbaa !47
  call void (i32, ptr, ...) @opal_output(i32 noundef %i.hw, ptr noundef nonnull @.str.21, ptr noundef %i.hx, i64 noundef %i.hy, ptr noundef %i.hz, i32 noundef %.0189) #9
  br label %bb.ci

bb.ci:                                            ; preds = %bb.cg, %bb.ch, %bb.bv, %bb.bu
  %.1190 = phi i32 [ %.0189, %bb.ch ], [ %.0189, %bb.cg ], [ 0, %bb.bv ], [ 0, %bb.bu ]
  %i.ia = getelementptr inbounds nuw [32 x i8], ptr %i.fs, i64 %indvars.iv ; 6 uses
  store i32 %.0191, ptr %i.ia, align 8, !tbaa !58
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 4
  store i32 %i.dx, ptr %i.ib, align 4, !tbaa !59
  %i.ic = load i64, ptr %i.f, align 8, !tbaa !53
  %i.id = trunc i64 %i.ic to i32
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  store i32 %i.id, ptr %i.ie, align 8, !tbaa !60
  %i.if = load i64, ptr %i.h, align 8, !tbaa !53
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  store i64 %i.if, ptr %i.ig, align 8, !tbaa !39
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ia, i64 24
  store i32 %i.gl, ptr %i.ih, align 8, !tbaa !40
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ia, i64 28
  store i32 %.1190, ptr %i.ii, align 4, !tbaa !61
  %i.ij = add nsw i32 %.3199346, 1                ; 2 uses
  %i.ik = call i32 @ompi_coll_base_file_peek_next_char_is(ptr noundef nonnull %i.v, ptr noundef nonnull @fileline, i32 noundef 91) #9
  %i.il = icmp eq i32 %i.ik, 1
  br i1 %i.il, label %bb.cj, label %bb.ct

bb.cj:                                            ; preds = %bb.ci
  %i.im = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !19
  %i.in = call zeroext i1 @opal_output_check_verbosity(i32 noundef 5, i32 noundef %i.im) #9
  br i1 %i.in, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.io = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !19
  call void (i32, ptr, ...) @opal_output(i32 noundef %i.io, ptr noundef nonnull @.str.22) #9
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #9
  br i1 %.not233, label %.preheader, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.ip = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !19
  %i.iq = call zeroext i1 @opal_output_check_verbosity(i32 noundef 5, i32 noundef %i.ip) #9
  br i1 %i.iq, label %bb.cn, label %.preheader

bb.cn:                                            ; preds = %bb.cm
  %i.ir = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !19
  %i.is = load i32, ptr @fileline, align 4, !tbaa !52
  %i.it = load ptr, ptr %i.b, align 8, !tbaa !47
  %i.iu = load ptr, ptr %i.l, align 8, !tbaa !47
  call void (i32, ptr, ...) @opal_output(i32 noundef %i.ir, ptr noundef nonnull @.str.23, ptr noundef nonnull %i.q, i32 noundef %i.is, ptr noundef %i.it, ptr noundef %i.iu) #9
  br label %.preheader

.preheader:                                       ; preds = %bb.cm, %bb.cn, %bb.cl
  br label %bb.co

bb.co:                                            ; preds = %.preheader, %bb.cp
  %i.iv = call i32 @ompi_coll_base_file_peek_next_char_is(ptr noundef nonnull %i.v, ptr noundef nonnull @fileline, i32 noundef 93) #9
  %.not235 = icmp eq i32 %i.iv, 0
  br i1 %.not235, label %bb.cp, label %bb.cs

bb.cp:                                            ; preds = %bb.co
  %i.iw = call i32 @ompi_coll_base_file_getnext_long(ptr noundef nonnull %i.v, ptr noundef nonnull @fileline, ptr noundef nonnull %i.n) #9
  %.not234 = icmp eq i32 %i.iw, 0
  br i1 %.not234, label %bb.co, label %bb.cq, !llvm.loop !42

bb.cq:                                            ; preds = %bb.cp
  %i.ix = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !19
  %i.iy = call zeroext i1 @opal_output_check_verbosity(i32 noundef 5, i32 noundef %i.ix) #9
  br i1 %i.iy, label %bb.cr, label %.thread245

bb.cr:                                            ; preds = %bb.cq
  %i.iz = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !19
  %i.ja = load i32, ptr @fileline, align 4, !tbaa !52
  %i.jb = load ptr, ptr %i.b, align 8, !tbaa !47
  %i.jc = load ptr, ptr %i.l, align 8, !tbaa !47
  call void (i32, ptr, ...) @opal_output(i32 noundef %i.iz, ptr noundef nonnull @.str.24, ptr noundef nonnull %i.q, i32 noundef %i.ja, ptr noundef %i.jb, ptr noundef %i.jc) #9
  br label %.thread245

.thread245:                                       ; preds = %bb.cq, %bb.cr
  %i.jd = load ptr, ptr %i.l, align 8, !tbaa !47
  call void @free(ptr noundef %i.jd) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #9
  br label %.thread248

bb.cs:                                            ; preds = %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #9
  br label %bb.ct

.thread248:                                       ; preds = %bb.cf, %bb.bl, %bb.bt, %bb.bz, %.thread245, %bb.bm, %bb.bp, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #9
  br label %.thread253

bb.ct:                                            ; preds = %bb.ci, %bb.cs
  %i.je = load ptr, ptr %i.l, align 8, !tbaa !47
  call void @free(ptr noundef %i.je) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #9
  %4 = zext nneg i32 %3 to i64                    ; 2 uses
  %i.jf = load i64, ptr %i.g, align 8, !tbaa !53
  %i.jg = icmp sgt i64 %i.jf, %4
  br i1 %i.jg, label %.lr.ph, label %.loopexit, !llvm.loop !43

.loopexit:                                        ; preds = %bb.ct, %bb.bg, %bb.bh
  %.5201 = phi i32 [ %.2198348, %bb.bh ], [ %.2198348, %bb.bg ], [ %i.ij, %bb.ct ] ; 2 uses
  %5 = zext nneg i32 %2 to i64                    ; 2 uses
  %i.jh = load i64, ptr %i.e, align 8, !tbaa !53
  %i.ji = icmp sgt i64 %i.jh, %5
  br i1 %i.ji, label %bb.ay, label %.loopexit262, !llvm.loop !44

.thread253:                                       ; preds = %bb.ap, %bb.aj, %bb.ar, %bb.ba, %.thread248, %bb.bd, %bb.ak, %bb.as, %bb.bb, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #9
  br label %bb.dj

bb.cu:                                            ; preds = %bb.bj, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #9
  br label %bb.de

.loopexit262:                                     ; preds = %.loopexit, %bb.av, %bb.au
  %.6.ph = phi i32 [ %.1197352, %bb.au ], [ %.1197352, %bb.av ], [ %.5201, %.loopexit ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #9
  %6 = zext nneg i32 %1 to i64                    ; 2 uses
  %i.jj = load i64, ptr %i.d, align 8, !tbaa !53
  %i.jk = icmp sgt i64 %i.jj, %6
  br i1 %i.jk, label %.lr.ph354, label %._crit_edge, !llvm.loop !45

._crit_edge:                                      ; preds = %.loopexit262
  %i.jl = load ptr, ptr %i.b, align 8, !tbaa !47  ; 2 uses
  %.not228 = icmp eq ptr %i.jl, null
  br i1 %.not228, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %._crit_edge
  call void @free(ptr noundef nonnull %i.jl) #9
  store ptr null, ptr %i.b, align 8, !tbaa !47
  br label %bb.cw

bb.cw:                                            ; preds = %._crit_edge, %bb.cv, %bb.af, %bb.ag
  %.7 = phi i32 [ %.0196356, %bb.ag ], [ %.0196356, %bb.af ], [ %.6.ph, %bb.cv ], [ %.6.ph, %._crit_edge ] ; 2 uses
  %7 = zext nneg i32 %0 to i64                    ; 2 uses
  %i.jm = load i64, ptr %i.a, align 8, !tbaa !53
  %i.jn = icmp sgt i64 %i.jm, %7
  br i1 %i.jn, label %.lr.ph358, label %._crit_edge359, !llvm.loop !46

._crit_edge359:                                   ; preds = %bb.cw
  %i.jo = call i32 @ompi_coll_base_file_getnext_long(ptr noundef nonnull %i.v, ptr noundef nonnull @fileline, ptr noundef nonnull %i.a) #9
  %i.jp = icmp sgt i32 %i.jo, 0
  br i1 %i.jp, label %bb.cx, label %bb.cz

bb.cx:                                            ; preds = %._crit_edge359
  %i.jq = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !19
  %i.jr = call zeroext i1 @opal_output_check_verbosity(i32 noundef 5, i32 noundef %i.jq) #9
  br i1 %i.jr, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.js = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !19
  %i.jt = load i32, ptr @fileline, align 4, !tbaa !52
  call void (i32, ptr, ...) @opal_output(i32 noundef %i.js, ptr noundef nonnull @.str.25, ptr noundef nonnull %i.q, i32 noundef %i.jt) #9
  br label %bb.cz

bb.cz:                                            ; preds = %._crit_edge359, %bb.cy, %bb.cx
  %i.ju = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !19
  %i.jv = call zeroext i1 @opal_output_check_verbosity(i32 noundef 5, i32 noundef %i.ju) #9
  br i1 %i.jv, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.jw = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !19
  call void (i32, ptr, ...) @opal_output(i32 noundef %i.jw, ptr noundef nonnull @.str.26, i32 noundef %.7, ptr noundef nonnull %i.q) #9
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz
  %i.jx = load i8, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 649), align 1, !tbaa !62, !range !49, !noundef !50
  %i.jy = trunc nuw i8 %i.jx to i1
  br i1 %i.jy, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  call void @mca_coll_han_dump_dynamic_rules()
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %i.jz = call i32 @fclose(ptr noundef nonnull %i.v) ; 0 uses
  call fastcc void @check_dynamic_rules()
  %i.ka = load ptr, ptr %i.c, align 8, !tbaa !47
  call void @free(ptr noundef %i.ka) #9
  br label %bb.do

bb.de:                                            ; preds = %bb.cu, %bb.o, %bb.ai
  %i.kb = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !19
  %i.kc = call zeroext i1 @opal_output_check_verbosity(i32 noundef 0, i32 noundef %i.kb) #9
  br i1 %i.kc, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.kd = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !19
  call void (i32, ptr, ...) @opal_output(i32 noundef %i.kd, ptr noundef nonnull @.str.27) #9
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  %i.ke = load ptr, ptr %i.b, align 8, !tbaa !47  ; 2 uses
  %.not236 = icmp eq ptr %i.ke, null
  br i1 %.not236, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  call void @free(ptr noundef nonnull %i.ke) #9
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %i.kf = load ptr, ptr %i.c, align 8, !tbaa !47
  call void @free(ptr noundef %i.kf) #9
  %i.kg = call i32 @fclose(ptr noundef nonnull %i.v) ; 0 uses
  call void @mca_coll_han_free_dynamic_rules()
  br label %bb.do

bb.dj:                                            ; preds = %.thread253, %.thread, %bb.m, %bb.q, %bb.p, %bb.ad, %bb.ac
  %i.kh = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !19
  %i.ki = call zeroext i1 @opal_output_check_verbosity(i32 noundef 0, i32 noundef %i.kh) #9
  br i1 %i.ki, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %i.kj = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 284), align 4, !tbaa !19
  call void (i32, ptr, ...) @opal_output(i32 noundef %i.kj, ptr noundef nonnull @.str.28) #9
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %i.kk = load ptr, ptr %i.b, align 8, !tbaa !47  ; 2 uses
  %.not237 = icmp eq ptr %i.kk, null
  br i1 %.not237, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  call void @free(ptr noundef nonnull %i.kk) #9
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  %i.kl = load ptr, ptr %i.c, align 8, !tbaa !47
  call void @free(ptr noundef %i.kl) #9
  %i.km = call i32 @fclose(ptr noundef nonnull %i.v) ; 0 uses
  call void @mca_coll_han_free_dynamic_rules()
  br label %bb.do

bb.do:                                            ; preds = %bb.a, %bb.dn, %bb.di, %bb.dd, %bb.i, %bb.e
  %.0202 = phi i32 [ 0, %bb.e ], [ 0, %bb.i ], [ 0, %bb.dn ], [ -1, %bb.di ], [ 0, %bb.a ], [ 0, %bb.dd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.0202
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare zeroext i1 @opal_output_check_verbosity(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @opal_output(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #3

declare i32 @ompi_coll_base_file_getnext_long(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

declare i32 @ompi_coll_base_file_getnext_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @mca_coll_base_name_to_colltype(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #7

declare ptr @mca_coll_base_colltype_to_str(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare zeroext i1 @mca_coll_han_is_coll_dynamic_implemented(i32 noundef) local_unnamed_addr #2

declare i32 @mca_coll_han_topo_lvl_name_to_id(ptr noundef) local_unnamed_addr #2

declare i32 @ompi_coll_base_file_getnext_size_t(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @mca_coll_han_component_name_to_id(ptr noundef) local_unnamed_addr #2

declare i32 @ompi_coll_base_file_peek_next_char_is(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @mca_coll_han_algorithm_name_to_id(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @mca_coll_han_algorithm_id_is_valid(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @mca_coll_han_dump_dynamic_rules() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 664), align 8, !tbaa !20 ; 2 uses
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_coll_han_component, i64 672), align 8, !tbaa !22
  %i.c = icmp sgt i32 %i.a, 0
  br i1 %i.c, label %.lr.ph64.preheader, label %._crit_edge65

.lr.ph64.preheader:                               ; preds = %bb.a
  %wide.trip.count80 = zext nneg i32 %i.a to i64
  br label %.lr.ph64

._crit_edge65:                                    ; preds = %._crit_edge59, %bb.a
  ret void

.lr.ph64:                                         ; preds = %.lr.ph64.preheader, %._crit_edge59
  %indvars.iv77 = phi i64 [ 0, %.lr.ph64.preheader ], [ %indvars.iv.next78, %._crit_edge59 ] ; 2 uses
  %.04661 = phi i32 [ 0, %.lr.ph64.preheader ], [ %.1.lcssa, %._crit_edge59 ] ; 2 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %indvars.iv77 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !27   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !25   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !26
  %i.j = icmp sgt i32 %i.g, 0
  br i1 %i.j, label %.lr.ph58.preheader, label %._crit_edge59

.lr.ph58.preheader:                               ; preds = %.lr.ph64
  %wide.trip.count75 = zext nneg i32 %i.g to i64
  br label %.lr.ph58

._crit_edge59:                                    ; preds = %._crit_edge53, %.lr.ph64
  %.1.lcssa = phi i32 [ %.04661, %.lr.ph64 ], [ %.2.lcssa, %._crit_edge53 ]
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1 ; 2 uses
  %exitcond81.not = icmp eq i64 %indvars.iv.next78, %wide.trip.count80
  br i1 %exitcond81.not, label %._crit_edge65, label %.lr.ph64, !llvm.loop !63

.lr.ph58:                                         ; preds = %.lr.ph58.preheader, %._crit_edge53
  %indvars.iv72 = phi i64 [ 0, %.lr.ph58.preheader ], [ %indvars.iv.next73, %._crit_edge53 ] ; 2 uses
  %.155 = phi i32 [ %.04661, %.lr.ph58.preheader ], [ %.2.lcssa, %._crit_edge53 ] ; 2 uses
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %indvars.iv72 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !32   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
end_hunk_0
