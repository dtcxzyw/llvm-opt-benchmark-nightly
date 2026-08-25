Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/common_ompio_file_view?download=true
inline.NumInlined: 27
inline.NumDeleted: 12
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ompi_predefined_datatype_t = type { %struct.ompi_datatype_t, [208 x i8] }
%struct.ompi_datatype_t = type { %struct.opal_datatype_t, i32, i32, ptr, ptr, i64, i64, [64 x i8] }
%struct.opal_datatype_t = type { %struct.opal_object_t, i16, i16, i32, i64, i64, i64, i64, i64, i64, i32, i32, [64 x i8], %struct.dt_type_desc_t, %struct.dt_type_desc_t, ptr }
%struct.opal_object_t = type { ptr, i32 }
%struct.dt_type_desc_t = type { i64, i64, ptr }
%struct.ompi_predefined_op_t = type opaque

@.str = private unnamed_addr constant [71 x i8] c"No shared file pointer component found for this file. Can not execute\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"external32\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"EXTERNAL32\00", align 1
@ompi_mpi_external32_convertor = external local_unnamed_addr global ptr, align 8
@opal_local_arch = external local_unnamed_addr global i32, align 4
@ompi_mpi_byte = external global %struct.ompi_predefined_datatype_t, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"grouping_option\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"OUT OF MEMORY\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"cb_nodes\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"verbose_info_parsing\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"File: %s info: %s value %s %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"num_aggregators\00", align 1
@.str.11 = private unnamed_addr constant [69 x i8] c"mca_common_ompio_set_view: mca_io_ompio_fview_based_grouping failed\0A\00", align 1
@.str.12 = private unnamed_addr constant [68 x i8] c"mca_common_ompio_set_view: mca_io_ompio_cart_based_grouping failed\0A\00", align 1
@.str.13 = private unnamed_addr constant [64 x i8] c"mca_common_ompio_set_view: mca_io_ompio_simple_grouping failed\0A\00", align 1
@.str.14 = private unnamed_addr constant [74 x i8] c"mca_common_ompio_set_view: mca_io_ompio_finalize_initial_grouping failed\0A\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"collective_buffering\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.17 = private unnamed_addr constant [43 x i8] c"enforcing using individual fcoll component\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"individual\00", align 1
@.str.19 = private unnamed_addr constant [64 x i8] c"mca_common_ompio_set_view: mca_fcoll_base_file_select() failed\0A\00", align 1
@opal_uses_threads = external local_unnamed_addr global i8, align 1
@ompi_mpi_long_long_int = external global %struct.ompi_predefined_datatype_t, align 8
@ompi_mpi_op_sum = external global %struct.ompi_predefined_op_t, align 1

; Function Attrs: nounwind uwtable
define i32 @mca_common_ompio_set_view(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i64], align 16               ; 8 uses
  %i.b = alloca [3 x i64], align 16               ; 6 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 3 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 10 uses
  %i.j = alloca i32, align 4                      ; 8 uses
  %i.k = alloca i32, align 4                      ; 7 uses
  %i.l = alloca ptr, align 8                      ; 9 uses
  %i.m = alloca ptr, align 8                      ; 27 uses
  %i.n = alloca i32, align 4                      ; 5 uses
  store i64 %1, ptr %i.g, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #13
  store i64 0, ptr %i.h, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #13
  store i32 0, ptr %i.j, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #13
  store i32 -1, ptr %i.k, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #13
  %i.o = icmp eq i64 %1, -54278278
  br i1 %i.o, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load i32, ptr %i.p, align 8, !tbaa !13
  %i.r = and i32 %i.q, 256
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !33   ; 2 uses
  %.not215 = icmp eq ptr %i.t, null
  br i1 %.not215, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
  tail call void (i32, ptr, ...) @opal_output(i32 noundef 0, ptr noundef nonnull @.str) #13
  br label %bb.dg

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !34
  %i.w = call i32 %i.v(ptr noundef nonnull %0, ptr noundef nonnull %i.g) #13 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 4 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !36
  %.not216 = icmp eq ptr %i.y, null
  br i1 %.not216, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = call i32 @ompi_datatype_destroy(ptr noundef nonnull %i.x) #13 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !37
  %.not217 = icmp eq ptr %i.ab, null
  br i1 %.not217, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = call i32 @ompi_datatype_destroy(ptr noundef nonnull %i.aa) #13 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 4 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !38
  %.not218 = icmp eq ptr %i.ae, null
  br i1 %.not218, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = call i32 @ompi_datatype_destroy(ptr noundef nonnull %i.ad) #13 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 5 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !39 ; 2 uses
  %.not219 = icmp eq ptr %i.ah, null
  br i1 %.not219, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @free(ptr noundef nonnull %i.ah) #13
  store ptr null, ptr %i.ag, align 8, !tbaa !39
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !40 ; 2 uses
  %.not220 = icmp eq ptr %i.aj, null
  br i1 %.not220, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @free(ptr noundef nonnull %i.aj) #13
  store ptr null, ptr %i.ai, align 8, !tbaa !40
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 6 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !41 ; 8 uses
  %.not221 = icmp eq ptr %i.al, null
  br i1 %.not221, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 64 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !42
  %i.ao = icmp ugt i32 %i.an, 5
  br i1 %i.ao, label %bb.q, label %opal_convertor_cleanup.exit, !prof !51

bb.q:                                             ; preds = %bb.p
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 80 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !52
  call void @free(ptr noundef %i.aq) #13
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 144
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !52
  store i32 5, ptr %i.am, align 8, !tbaa !42
  %.pre = load ptr, ptr %i.ak, align 8, !tbaa !41
  br label %opal_convertor_cleanup.exit

opal_convertor_cleanup.exit:                      ; preds = %bb.p, %bb.q
  %i.as = phi ptr [ %i.al, %bb.p ], [ %.pre, %bb.q ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  store ptr null, ptr %i.at, align 8, !tbaa !53
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 104
  store i32 0, ptr %i.au, align 8, !tbaa !54
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 20
  store i32 134217760, ptr %i.av, align 4, !tbaa !55
  call void @free(ptr noundef %i.as) #13
  store ptr null, ptr %i.ak, align 8, !tbaa !41
  br label %bb.r

bb.r:                                             ; preds = %opal_convertor_cleanup.exit, %bb.o
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 8 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !56 ; 2 uses
  %i.ay = and i32 %i.ax, 1042
  %.not379 = icmp eq i32 %i.ay, 0
  br i1 %.not379, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %spec.select = and i32 %i.ax, -1043
  store i32 %spec.select, ptr %i.aw, align 8, !tbaa !56
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.az = call noalias ptr @strdup(ptr noundef %4) #13
  store ptr %i.az, ptr %i.ai, align 8, !tbaa !40
  %i.ba = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(11) @.str.1) #14
  %.not225 = icmp eq i32 %i.ba, 0
  br i1 %.not225, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bb = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(11) @.str.2) #14
  %.not226 = icmp eq i32 %i.bb, 0
  br i1 %.not226, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bc = call noalias dereferenceable_or_null(280) ptr @malloc(i64 noundef 280) #15 ; 3 uses
  store ptr %i.bc, ptr %i.ak, align 8, !tbaa !41
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bb.dg, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.be = load ptr, ptr @ompi_mpi_external32_convertor, align 8, !tbaa !57
  %i.bf = call i32 @opal_convertor_clone(ptr noundef %i.be, ptr noundef nonnull %i.bc, i32 noundef 0) #13 ; 0 uses
  br label %bb.y

bb.x:                                             ; preds = %bb.u
  %i.bg = load i32, ptr @opal_local_arch, align 4, !tbaa !12
  %i.bh = call ptr @opal_convertor_create(i32 noundef %i.bg, i32 noundef 0) #13
  store ptr %i.bh, ptr %i.ak, align 8, !tbaa !41
  %i.bi = load i32, ptr %i.aw, align 8, !tbaa !56
  %i.bj = or i32 %i.bi, 1024
  store i32 %i.bj, ptr %i.aw, align 8, !tbaa !56
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %3, ptr %i.e, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  %i.bk = getelementptr i8, ptr %3, i64 16        ; 4 uses
  %.val.i = load i16, ptr %i.bk, align 8, !tbaa !59
  %i.bl = and i16 %.val.i, 512
  %.not.i = icmp eq i16 %i.bl, 0
  br i1 %.not.i, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.bn = load i8, ptr @opal_uses_threads, align 1, !tbaa !67, !range !68, !noundef !69
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %bb.aa, label %bb.ab, !prof !51

bb.aa:                                            ; preds = %bb.z
  %i.bp = atomicrmw volatile add ptr %i.bm, i32 1 monotonic, align 4 ; 0 uses
  br label %opal_thread_add_fetch_32.exit.i

bb.ab:                                            ; preds = %bb.z
  %i.bq = load volatile i32, ptr %i.bm, align 8, !tbaa !12
end_hunk_0
begin_hunk_1_@mca_common_ompio_set_view:bb.a
  %i.cc = sub nsw i64 %i.cb, %i.bz                ; 2 uses
  %i.cd = getelementptr i8, ptr %3, i64 24
  %.val255 = load i64, ptr %i.cd, align 8, !tbaa !72 ; 2 uses
  %i.ce = icmp eq ptr %2, %3                      ; 2 uses
  br i1 %i.ce, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %datatype_duplicate.exit
  %.val252 = load i16, ptr %i.bk, align 8, !tbaa !59
  %i.cf = and i16 %.val252, 512
  %.not227 = icmp ne i16 %i.cf, 0
  %i.cg = icmp eq i64 %i.cc, %.val255
  %or.cond303 = select i1 %.not227, i1 %i.cg, i1 false
  br i1 %or.cond303, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ch = call i32 @ompi_datatype_create_contiguous(i32 noundef 6291456, ptr noundef nonnull @ompi_mpi_byte, ptr noundef nonnull %i.l) #13 ; 0 uses
  %.val256 = load ptr, ptr %i.l, align 8, !tbaa !58
  %i.ci = call i32 @opal_datatype_commit(ptr noundef %.val256) #13 ; 0 uses
  %.pre329.a = load ptr, ptr %i.l, align 8, !tbaa !58
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af, %datatype_duplicate.exit
  store ptr %3, ptr %i.l, align 8, !tbaa !58
  %i.cj = load i32, ptr %i.aw, align 8, !tbaa !56
  %i.ck = or i32 %i.cj, 8
  store i32 %i.ck, ptr %i.aw, align 8, !tbaa !56
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.cl = phi ptr [ %3, %bb.ah ], [ %.pre329.a, %bb.ag ]
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 4 uses
  store i32 0, ptr %i.cm, align 8, !tbaa !73
  %i.cn = load i64, ptr %i.g, align 8, !tbaa !8   ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.cn, ptr %i.co, align 8, !tbaa !74
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.cn, ptr %i.cp, align 8, !tbaa !75
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.cq, i8 0, i64 20, i1 false)
  %i.cr = load ptr, ptr %i.ak, align 8, !tbaa !41
  %i.cs = call i32 @mca_common_ompio_decode_datatype(ptr noundef nonnull %0, ptr noundef %i.cl, i32 noundef 1, ptr noundef null, ptr noundef nonnull %i.h, ptr noundef %i.cr, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.cm) #13 ; 0 uses
  %i.ct = load ptr, ptr %i.l, align 8, !tbaa !58  ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 48
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !70
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 56
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !71
  %i.cz = sub nsw i64 %i.cy, %i.cw
  store i64 %i.cz, ptr %i.cu, align 8, !tbaa !10
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.db = getelementptr i8, ptr %2, i64 24
  %.val254 = load i64, ptr %i.db, align 8, !tbaa !72
  store i64 %.val254, ptr %i.da, align 8, !tbaa !10
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 5 uses
  %i.dd = getelementptr i8, ptr %i.ct, i64 24
  %.val253 = load i64, ptr %i.dd, align 8, !tbaa !72
  store i64 %.val253, ptr %i.dc, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %2, ptr %i.c, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  %i.de = getelementptr i8, ptr %2, i64 16        ; 2 uses
  %.val.i260 = load i16, ptr %i.de, align 8, !tbaa !59
  %i.df = and i16 %.val.i260, 512
  %.not.i261 = icmp eq i16 %i.df, 0
  br i1 %.not.i261, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.dh = load i8, ptr @opal_uses_threads, align 1, !tbaa !67, !range !68, !noundef !69
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %bb.ak, label %bb.al, !prof !51

bb.ak:                                            ; preds = %bb.aj
  %i.dj = atomicrmw volatile add ptr %i.dg, i32 1 monotonic, align 4 ; 0 uses
  br label %opal_thread_add_fetch_32.exit.i262

bb.al:                                            ; preds = %bb.aj
  %i.dk = load volatile i32, ptr %i.dg, align 8, !tbaa !12
  %i.dl = add nsw i32 %i.dk, 1
  store volatile i32 %i.dl, ptr %i.dg, align 8, !tbaa !12
  %i.dm = load volatile i32, ptr %i.dg, align 8, !tbaa !12 ; 0 uses
  br label %opal_thread_add_fetch_32.exit.i262

opal_thread_add_fetch_32.exit.i262:               ; preds = %bb.al, %bb.ak
  store ptr %2, ptr %i.x, align 8, !tbaa !58
  br label %datatype_duplicate.exit265

bb.am:                                            ; preds = %bb.ai
  %i.dn = call i32 @ompi_datatype_duplicate(ptr noundef nonnull %2, ptr noundef nonnull %i.d) #13
  %.not2.i264 = icmp eq i32 %i.dn, 0
  br i1 %.not2.i264, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.do = call i32 @ompi_datatype_destroy(ptr noundef nonnull %i.d) #13 ; 0 uses
  br label %datatype_duplicate.exit265

bb.ao:                                            ; preds = %bb.am
  %i.dp = load ptr, ptr %i.d, align 8, !tbaa !58
  %i.dq = call i32 @ompi_datatype_set_args(ptr noundef %i.dp, i32 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 1, ptr noundef nonnull %i.c, i32 noundef 1) #13 ; 0 uses
  %i.dr = load ptr, ptr %i.d, align 8, !tbaa !58
  store ptr %i.dr, ptr %i.x, align 8, !tbaa !58
  br label %datatype_duplicate.exit265

datatype_duplicate.exit265:                       ; preds = %opal_thread_add_fetch_32.exit.i262, %bb.an, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ds = load ptr, ptr %i.l, align 8, !tbaa !58
  %i.dt = call i32 @ompi_datatype_duplicate(ptr noundef %i.ds, ptr noundef nonnull %i.aa) #13 ; 0 uses
  %i.du = load i64, ptr %i.dc, align 8, !tbaa !76
  %i.dv = load i64, ptr %i.da, align 8, !tbaa !77
  %i.dw = urem i64 %i.du, %i.dv
  %.not228 = icmp eq i64 %i.dw, 0
  br i1 %.not228, label %bb.ap, label %bb.dg

bb.ap:                                            ; preds = %datatype_duplicate.exit265
  %i.dx = load i32, ptr %i.cm, align 8, !tbaa !73
  %.not229 = icmp eq i32 %i.dx, 0
  br i1 %.not229, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dy = load ptr, ptr %i.ag, align 8, !tbaa !39
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !78
  %i.ea = icmp slt ptr %i.dz, null
  br i1 %i.ea, label %bb.dg, label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 8 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !80
  %i.ed = call i32 %i.ec(ptr noundef nonnull @.str.3, i32 noundef 16) #13
  %i.ee = icmp eq i32 %i.ed, 7
  br i1 %i.ee, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.ef = load i64, ptr %i.dc, align 8, !tbaa !76
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 %i.ef, ptr %i.eg, align 8, !tbaa !81
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.eh = load i32, ptr %i.cm, align 8, !tbaa !73 ; 5 uses
  %i.ei = icmp sgt i32 %i.eh, 0
  br i1 %i.ei, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.at
  %i.ej = load ptr, ptr %i.ag, align 8, !tbaa !39 ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.eh to i64 ; 4 uses
  %min.iters.check = icmp ult i32 %i.eh, 5
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %i.ek = and i64 %wide.trip.count.i, 3           ; 2 uses
  %i.el = icmp eq i64 %i.ek, 0
  %i.em = select i1 %i.el, i64 4, i64 %i.ek
  %n.vec = sub nsw i64 %wide.trip.count.i, %i.em  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.er, %vector.body ]
  %vec.phi382 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.es, %vector.body ]
  %i.en = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %index
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %index
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 40
  %wide.vec = load <4 x i64>, ptr %i.ep, align 8, !tbaa !82
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %wide.vec383 = load <4 x i64>, ptr %i.eq, align 8, !tbaa !82
  %strided.vec384 = shufflevector <4 x i64> %wide.vec383, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.er = add <2 x i64> %strided.vec, %vec.phi    ; 2 uses
  %i.es = add <2 x i64> %strided.vec384, %vec.phi382 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.et = icmp eq i64 %index.next, %n.vec
  br i1 %i.et, label %middle.block, label %vector.body, !llvm.loop !83

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.es, %i.er
  %i.eu = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  %.ph = phi i64 [ 0, %.lr.ph.i ], [ %i.eu, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ev = phi i64 [ %i.ez, %scalar.ph ], [ %.ph, %scalar.ph.preheader ]
  %i.ew = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %indvars.iv.i
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !82
  %i.ez = add i64 %i.ey, %i.ev                    ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.thread.i, label %scalar.ph, !llvm.loop !87

._crit_edge.i:                                    ; preds = %bb.at
  store i64 0, ptr %i.a, align 16
  %.not19.i = icmp eq i32 %i.eh, 0
  br i1 %.not19.i, label %get_contiguous_chunk_size.exit, label %._crit_edge.i.._crit_edge.thread.i_crit_edge

._crit_edge.i.._crit_edge.thread.i_crit_edge:     ; preds = %._crit_edge.i
  %.pre334 = zext i32 %i.eh to i64
  br label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %scalar.ph, %._crit_edge.i.._crit_edge.thread.i_crit_edge
  %.pre-phi = phi i64 [ %.pre334, %._crit_edge.i.._crit_edge.thread.i_crit_edge ], [ %wide.trip.count.i, %scalar.ph ] ; 2 uses
  %i.fa = phi i64 [ 0, %._crit_edge.i.._crit_edge.thread.i_crit_edge ], [ %i.ez, %scalar.ph ]
  %i.fb = sdiv i64 %i.fa, %.pre-phi
  store i64 %i.fb, ptr %i.a, align 16, !tbaa !8
  br label %get_contiguous_chunk_size.exit

get_contiguous_chunk_size.exit:                   ; preds = %._crit_edge.i, %._crit_edge.thread.i
  %.pre-phi.i = phi i64 [ %.pre-phi, %._crit_edge.thread.i ], [ 0, %._crit_edge.i ]
  %i.fc = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.pre-phi.i, ptr %i.fc, align 8, !tbaa !8
  %i.fd = load i64, ptr %i.dc, align 8, !tbaa !76
  %i.fe = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.fd, ptr %i.fe, align 16, !tbaa !8
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !88 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 344
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !89 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 32
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !108
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 40
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !112
  %i.fn = call i32 %i.fk(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 3, ptr noundef nonnull @ompi_mpi_long_long_int, ptr noundef nonnull @ompi_mpi_op_sum, ptr noundef %i.fg, ptr noundef %i.fm) #13, !inline_history !113 ; 0 uses
  %i.fo = load i64, ptr %i.b, align 16, !tbaa !8
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !114
  %i.fr = sext i32 %i.fq to i64                   ; 2 uses
  %i.fs = sdiv i64 %i.fo, %i.fr
  %i.ft = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.fu = load i64, ptr %i.ft, align 16, !tbaa !8
  %i.fv = sdiv i64 %i.fu, %i.fr
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 %i.fv, ptr %i.fw, align 8, !tbaa !81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.au

bb.au:                                            ; preds = %get_contiguous_chunk_size.exit, %bb.as
  %.sink = phi i64 [ %i.fs, %get_contiguous_chunk_size.exit ], [ 6291456, %bb.as ]
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 %.sink, ptr %i.fx, align 8, !tbaa !115
  %.val259 = load i16, ptr %i.de, align 8, !tbaa !116
  %i.fy = and i16 %.val259, 16
  %.not230 = icmp eq i16 %i.fy, 0
  br i1 %.not230, label %bb.ay, label %bb.av

bb.av:                                            ; preds = %bb.au
  %.val258 = load i16, ptr %i.bk, align 8, !tbaa !116
  %i.fz = and i16 %.val258, 16
  %.not231 = icmp eq i16 %i.fz, 0
  br i1 %.not231, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ga = load i64, ptr %i.cu, align 8, !tbaa !117
  %i.gb = load i64, ptr %i.dc, align 8, !tbaa !76
  %i.gc = icmp eq i64 %i.ga, %i.gb
  br i1 %i.gc, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.gd = load i32, ptr %i.aw, align 8, !tbaa !56
  %i.ge = or i32 %i.gd, 16
  store i32 %i.ge, ptr %i.aw, align 8, !tbaa !56
  br label %bb.ay

bb.ay:                                            ; preds = %bb.av, %bb.aw, %bb.ax, %bb.au
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 4 uses
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !114 ; 3 uses
  %i.gh = sext i32 %i.gg to i64                   ; 2 uses
  %i.gi = mul nsw i64 %i.gh, 24
  %i.gj = call noalias ptr @calloc(i64 noundef 1, i64 noundef %i.gi) #16 ; 11 uses
  %i.gk = icmp eq ptr %i.gj, null
  br i1 %i.gk, label %bb.az, label %.preheader

.preheader:                                       ; preds = %bb.ay
  %i.gl = icmp sgt i32 %i.gg, 0
  br i1 %i.gl, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.gm = shl nuw nsw i64 %i.gh, 2
  %wide.trip.count = zext nneg i32 %i.gg to i64
  br label %bb.ba

bb.az:                                            ; preds = %bb.ay
  call void (i32, ptr, ...) @opal_output(i32 noundef 1, ptr noundef nonnull @.str.4) #13
  br label %bb.dg

bb.ba:                                            ; preds = %.lr.ph, %bb.bc
  %indvars.iv324 = phi i32 [ 0, %.lr.ph ], [ %indvars.iv.next325, %bb.bc ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.bc ] ; 3 uses
  %i.gn = call noalias ptr @calloc(i64 noundef 1, i64 noundef %i.gm) #16 ; 2 uses
  %i.go = getelementptr inbounds nuw [24 x i8], ptr %i.gj, i64 %indvars.iv
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  store ptr %i.gn, ptr %i.gp, align 8, !tbaa !118
  %i.gq = icmp eq ptr %i.gn, null
  br i1 %i.gq, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  call void (i32, ptr, ...) @opal_output(i32 noundef 1, ptr noundef nonnull @.str.4) #13
  %.not315 = icmp eq i64 %indvars.iv, 0
  br i1 %.not315, label %._crit_edge314, label %.lr.ph313.preheader

.lr.ph313.preheader:                              ; preds = %bb.bb
  %wide.trip.count327 = zext nneg i32 %indvars.iv324 to i64
  br label %.lr.ph313

.lr.ph313:                                        ; preds = %.lr.ph313.preheader, %.lr.ph313
  %indvars.iv321 = phi i64 [ 0, %.lr.ph313.preheader ], [ %indvars.iv.next322, %.lr.ph313 ] ; 2 uses
  %i.gr = getelementptr inbounds nuw [24 x i8], ptr %i.gj, i64 %indvars.iv321
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !118
  call void @free(ptr noundef %i.gt) #13
  %indvars.iv.next322 = add nuw nsw i64 %indvars.iv321, 1 ; 2 uses
  %exitcond328.not = icmp eq i64 %indvars.iv.next322, %wide.trip.count327
  br i1 %exitcond328.not, label %._crit_edge314, label %.lr.ph313, !llvm.loop !120

._crit_edge314:                                   ; preds = %.lr.ph313, %bb.bb
  call void @free(ptr noundef nonnull %i.gj) #13
  br label %bb.dg

bb.bc:                                            ; preds = %bb.ba
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %indvars.iv.next325 = add nuw nsw i32 %indvars.iv324, 1
  br i1 %exitcond.not, label %._crit_edge, label %bb.ba, !llvm.loop !121

._crit_edge:                                      ; preds = %bb.bc, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #13
  %i.gu = call i32 @opal_info_get(ptr noundef %5, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.m, ptr noundef nonnull %i.i) #13 ; 0 uses
  %i.gv = load i32, ptr %i.i, align 4, !tbaa !12
  %.not232 = icmp eq i32 %i.gv, 0
  br i1 %.not232, label %bb.bj, label %bb.bd

bb.bd:                                            ; preds = %._crit_edge
  %i.gw = load ptr, ptr %i.m, align 8, !tbaa !122
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 25
  %i.gy = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.gx, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.k) #13 ; 0 uses
  %i.gz = load ptr, ptr %i.eb, align 8, !tbaa !80
  %i.ha = call i32 %i.gz(ptr noundef nonnull @.str.7, i32 noundef 20) #13
  switch i32 %i.ha, label %bb.bf [
    i32 1, label %bb.be
    i32 2, label %.sink.split
  ]

bb.be:                                            ; preds = %bb.bd
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.hc = load i32, ptr %i.hb, align 8, !tbaa !124
  %i.hd = icmp eq i32 %i.hc, 0
  br i1 %i.hd, label %.sink.split, label %bb.bf

.sink.split:                                      ; preds = %bb.bd, %bb.be
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !125
  %i.hg = load ptr, ptr %i.m, align 8, !tbaa !122
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 25
  %i.hi = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef %i.hf, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.hh, ptr noundef nonnull @.str.9) ; 0 uses
  br label %bb.bf

bb.bf:                                            ; preds = %.sink.split, %bb.be, %bb.bd
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !126
  %i.hl = load ptr, ptr %i.m, align 8, !tbaa !122
  %i.hm = call i32 @opal_info_set_cstring(ptr noundef %i.hk, ptr noundef nonnull @.str.5, ptr noundef %i.hl) #13 ; 0 uses
  %i.hn = load ptr, ptr %i.m, align 8, !tbaa !122 ; 4 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 8 ; 4 uses
  %i.hp = load i8, ptr @opal_uses_threads, align 1, !tbaa !67, !range !68, !noundef !69
  %i.hq = trunc nuw i8 %i.hp to i1
  br i1 %i.hq, label %bb.bg, label %bb.bh, !prof !51

bb.bg:                                            ; preds = %bb.bf
  %i.hr = atomicrmw volatile add ptr %i.ho, i32 -1 monotonic, align 4
  %i.hs = add i32 %i.hr, -1
  br label %opal_thread_add_fetch_32.exit

bb.bh:                                            ; preds = %bb.bf
  %i.ht = load volatile i32, ptr %i.ho, align 4, !tbaa !12
  %i.hu = add nsw i32 %i.ht, -1
  store volatile i32 %i.hu, ptr %i.ho, align 4, !tbaa !12
  %i.hv = load volatile i32, ptr %i.ho, align 4, !tbaa !12
  br label %opal_thread_add_fetch_32.exit

opal_thread_add_fetch_32.exit:                    ; preds = %bb.bg, %bb.bh
  %.0.i269 = phi i32 [ %i.hs, %bb.bg ], [ %i.hv, %bb.bh ]
  %i.hw = icmp eq i32 %.0.i269, 0
  br i1 %i.hw, label %bb.bi, label %bb.bq

bb.bi:                                            ; preds = %opal_thread_add_fetch_32.exit
  %i.hx = load ptr, ptr %i.hn, align 8, !tbaa !127
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 48
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !128 ; 2 uses
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !130 ; 2 uses
  %.not6.i = icmp eq ptr %i.ia, null
  br i1 %.not6.i, label %.sink.split366, label %.lr.ph.i270

end_hunk_1
