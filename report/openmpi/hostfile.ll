Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/hostfile?download=true
begin_hunk_0
@.str.27 = private unnamed_addr constant [13 x i8] c"max_slots_lt\00", align 1
@.str.28 = private unnamed_addr constant [37 x i8] c"PRTE ERROR: %s in file %s at line %d\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"hostfile.c\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"parse_error_string\00", align 1
@prte_util_hostfile_line = external local_unnamed_addr global i32, align 4
@.str.31 = private unnamed_addr constant [16 x i8] c"parse_error_int\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"parse_error\00", align 1
@.str.33 = private unnamed_addr constant [21 x i8] c"pthread_mutex_lock()\00", align 1
@__PRETTY_FUNCTION__.pmix_obj_run_destructors = private unnamed_addr constant [47 x i8] c"void pmix_obj_run_destructors(pmix_object_t *)\00", align 1
@.str.34 = private unnamed_addr constant [41 x i8] c"cls->cls_sizeof >= sizeof(pmix_object_t)\00", align 1
@__PRETTY_FUNCTION__.pmix_obj_new_tma = private unnamed_addr constant [62 x i8] c"pmix_object_t *pmix_obj_new_tma(pmix_class_t *, pmix_tma_t *)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @prte_util_add_hostfile_nodes(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %2 = alloca %struct.pmix_list_t, align 8        ; 8 uses
  %3 = alloca %struct.pmix_list_t, align 8        ; 13 uses
  %i.c = alloca ptr, align 8                      ; 12 uses
  %i.d = alloca i32, align 4                      ; 3 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca ptr, align 8                      ; 11 uses
  %i.g = alloca ptr, align 8                      ; 23 uses
  %i.h = alloca i8, align 1                       ; 3 uses
  %i.i = alloca ptr, align 8                      ; 5 uses
  %i.j = alloca ptr, align 8                      ; 5 uses
  %i.k = alloca ptr, align 8                      ; 5 uses
  %i.l = alloca ptr, align 8                      ; 5 uses
  %i.m = alloca ptr, align 8                      ; 5 uses
  %i.n = alloca ptr, align 8                      ; 5 uses
  %i.o = alloca ptr, align 8                      ; 5 uses
  store ptr %0, ptr %i.a, align 8
  store ptr %1, ptr %i.b, align 8
  %i.p = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_ras_base_framework, i64 76), align 4
  %i.q = icmp sge i32 %i.p, 0
  br i1 %i.q, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.r = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_ras_base_framework, i64 76), align 4
  %i.s = icmp slt i32 %i.r, 64
  br i1 %i.s, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.t = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_ras_base_framework, i64 76), align 4
  %i.u = sext i32 %i.t to i64
  %4 = getelementptr inbounds [0 x %struct.pmix_output_desc_t], ptr @pmix_output_info, i64 0, i64 %i.u
  %5 = getelementptr inbounds nuw %struct.pmix_output_desc_t, ptr %4, i32 0, i32 2
  %i.v = load i32, ptr %5, align 4
  %i.w = icmp sge i32 %i.v, 1
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_ras_base_framework, i64 76), align 4
  %i.y = call ptr @prte_util_print_name_args(ptr noundef @prte_process_info)
  %i.z = load ptr, ptr %i.b, align 8
  call void (i32, ptr, ...) @pmix_output(i32 noundef %i.x, ptr noundef @.str, ptr noundef %i.y, ptr noundef %i.z)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  br label %bb.f

bb.f:                                             ; preds = %bb.e
  br label %bb.g

bb.g:                                             ; preds = %bb.f
  br label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = load i32, ptr @pmix_class_init_epoch, align 4
  %i.ab = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_list_t_class, i64 32), align 8
  %i.ac = icmp ne i32 %i.aa, %i.ab
  br i1 %i.ac, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @pmix_class_initialize(ptr noundef @pmix_list_t_class)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %6 = getelementptr inbounds nuw %struct.pmix_object_t, ptr %2, i32 0, i32 1
  store ptr @pmix_list_t_class, ptr %6, align 8
  %7 = getelementptr inbounds nuw %struct.pmix_object_t, ptr %2, i32 0, i32 2
  store i32 1, ptr %7, align 8
  call void @pmix_obj_construct_tma(ptr noundef %2, ptr noundef null)
  call void @pmix_obj_run_constructors(ptr noundef %2)
  br label %bb.k

bb.k:                                             ; preds = %bb.j
  br label %bb.l

bb.l:                                             ; preds = %bb.k
  br label %bb.m

bb.m:                                             ; preds = %bb.l
  br label %bb.n

bb.n:                                             ; preds = %bb.m
  br label %bb.o

bb.o:                                             ; preds = %bb.n
  br label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ad = load i32, ptr @pmix_class_init_epoch, align 4
  %i.ae = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_list_t_class, i64 32), align 8
  %i.af = icmp ne i32 %i.ad, %i.ae
  br i1 %i.af, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @pmix_class_initialize(ptr noundef @pmix_list_t_class)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %8 = getelementptr inbounds nuw %struct.pmix_object_t, ptr %3, i32 0, i32 1
  store ptr @pmix_list_t_class, ptr %8, align 8
  %9 = getelementptr inbounds nuw %struct.pmix_object_t, ptr %3, i32 0, i32 2
  store i32 1, ptr %9, align 8
  call void @pmix_obj_construct_tma(ptr noundef %3, ptr noundef null)
  call void @pmix_obj_run_constructors(ptr noundef %3)
  br label %bb.s

bb.s:                                             ; preds = %bb.r
  br label %bb.t

bb.t:                                             ; preds = %bb.s
  br label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ag = load ptr, ptr %i.b, align 8
  %i.ah = call i32 @hostfile_parse(ptr noundef %i.ag, ptr noundef %3, ptr noundef %2, i1 noundef zeroext false) ; 2 uses
  store i32 %i.ah, ptr %i.d, align 4
  %i.ai = icmp ne i32 0, %i.ah
  br i1 %i.ai, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  br label %bb.cg

bb.w:                                             ; preds = %bb.u
  %10 = getelementptr inbounds nuw %struct.pmix_list_t, ptr %3, i32 0, i32 1
  %11 = getelementptr inbounds nuw %struct.pmix_list_item_t, ptr %10, i32 0, i32 1
  %i.aj = load ptr, ptr %11, align 8
  store ptr %i.aj, ptr %i.g, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.ab, %bb.w
  %i.ak = load ptr, ptr %i.g, align 8
  %12 = getelementptr inbounds nuw %struct.pmix_list_t, ptr %3, i32 0, i32 1
  %i.al = icmp ne ptr %i.ak, %12
  br i1 %i.al, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %bb.x
  %i.am = load ptr, ptr %i.g, align 8
  %13 = getelementptr inbounds nuw %struct.prte_node_t, ptr %i.am, i32 0, i32 2
  %i.an = load ptr, ptr %13, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 0
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = sext i8 %i.ap to i32
  %i.ar = icmp eq i32 43, %i.aq
  br i1 %i.ar, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.as = load ptr, ptr %i.g, align 8
  %14 = getelementptr inbounds nuw %struct.prte_node_t, ptr %i.as, i32 0, i32 2
  %i.at = load ptr, ptr %14, align 8
  %i.au = call i32 (ptr, ptr, i32, ...) @pmix_show_help(ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 1, ptr noundef %i.at) ; 0 uses
  store i32 -43, ptr %i.d, align 4
  br label %bb.cg

bb.aa:                                            ; preds = %bb.y
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.av = load ptr, ptr %i.g, align 8
  %15 = getelementptr inbounds nuw %struct.pmix_list_item_t, ptr %i.av, i32 0, i32 1
  %i.aw = load ptr, ptr %15, align 8
  store ptr %i.aw, ptr %i.g, align 8
  br label %bb.x, !llvm.loop !5

bb.ac:                                            ; preds = %bb.x
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ba, %bb.ac
  %i.ax = call ptr @pmix_list_remove_first(ptr noundef %2) ; 2 uses
  store ptr %i.ax, ptr %i.c, align 8
  %i.ay = icmp ne ptr null, %i.ax
  br i1 %i.ay, label %bb.ae, label %bb.bb

bb.ae:                                            ; preds = %bb.ad
  %i.az = load ptr, ptr %i.c, align 8
  store ptr %i.az, ptr %i.f, align 8
  %16 = getelementptr inbounds nuw %struct.pmix_list_t, ptr %3, i32 0, i32 1
  %17 = getelementptr inbounds nuw %struct.pmix_list_item_t, ptr %16, i32 0, i32 1
  %i.ba = load ptr, ptr %17, align 8
  store ptr %i.ba, ptr %i.g, align 8
  br label %bb.af

bb.af:                                            ; preds = %bb.ar, %bb.ae
  %i.bb = load ptr, ptr %i.g, align 8
  %18 = getelementptr inbounds nuw %struct.pmix_list_t, ptr %3, i32 0, i32 1
  %i.bc = icmp ne ptr %i.bb, %18
  br i1 %i.bc, label %bb.ag, label %bb.as

bb.ag:                                            ; preds = %bb.af
  %i.bd = load ptr, ptr %i.f, align 8
  %i.be = load ptr, ptr %i.g, align 8
  %i.bf = call zeroext i1 @prte_nptr_match(ptr noundef %i.bd, ptr noundef %i.be)
  br i1 %i.bf, label %bb.ah, label %bb.aq

bb.ah:                                            ; preds = %bb.ag
  %i.bg = load ptr, ptr %i.g, align 8
  %19 = getelementptr inbounds nuw %struct.prte_node_t, ptr %i.bg, i32 0, i32 0
  %i.bh = call ptr @pmix_list_remove_item(ptr noundef %3, ptr noundef %19) ; 0 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bi = load ptr, ptr %i.g, align 8
  store ptr %i.bi, ptr %i.i, align 8
  %i.bj = load ptr, ptr %i.i, align 8             ; 3 uses
  %i.bk = call i32 @pthread_mutex_lock(ptr noundef %i.bj) #13
  %i.bl = icmp eq i32 %i.bk, 35
  br i1 %i.bl, label %bb.aj, label %pmix_obj_update.exit4

bb.aj:                                            ; preds = %bb.ai
  %i.bm = call ptr @__errno_location() #14
  store i32 35, ptr %i.bm, align 4
  call void @perror(ptr noundef nonnull @.str.33) #15
  call void @abort() #16
  unreachable

pmix_obj_update.exit4:                            ; preds = %bb.ai
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 48 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 8
  %i.bp = add nsw i32 %i.bo, -1                   ; 2 uses
  store i32 %i.bp, ptr %i.bn, align 8
  %i.bq = call i32 @pthread_mutex_unlock(ptr noundef %i.bj) #13 ; 0 uses
  %i.br = icmp eq i32 0, %i.bp
  br i1 %i.br, label %bb.ak, label %bb.ao

bb.ak:                                            ; preds = %pmix_obj_update.exit4
  %i.bs = load ptr, ptr %i.i, align 8
  call void @pmix_obj_run_destructors(ptr noundef %i.bs)
  %i.bt = load ptr, ptr %i.i, align 8
  %20 = getelementptr inbounds nuw %struct.pmix_object_t, ptr %i.bt, i32 0, i32 3
  %21 = getelementptr inbounds nuw %struct.pmix_tma, ptr %20, i32 0, i32 5
  %i.bu = load ptr, ptr %21, align 8
  %i.bv = icmp ne ptr null, %i.bu
  br i1 %i.bv, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.bw = load ptr, ptr %i.i, align 8
  %22 = getelementptr inbounds nuw %struct.pmix_object_t, ptr %i.bw, i32 0, i32 3
  %i.bx = load ptr, ptr %i.g, align 8
  call void @pmix_tma_free(ptr noundef %22, ptr noundef %i.bx)
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.by = load ptr, ptr %i.g, align 8
  call void @free(ptr noundef %i.by) #13
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  store ptr null, ptr %i.g, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %pmix_obj_update.exit4
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  br label %bb.as

bb.aq:                                            ; preds = %bb.ag
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.bz = load ptr, ptr %i.g, align 8
  %23 = getelementptr inbounds nuw %struct.pmix_list_item_t, ptr %i.bz, i32 0, i32 1
  %i.ca = load ptr, ptr %23, align 8
  store ptr %i.ca, ptr %i.g, align 8
  br label %bb.af, !llvm.loop !6

bb.as:                                            ; preds = %bb.ap, %bb.af
  br label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.cb = load ptr, ptr %i.c, align 8
  store ptr %i.cb, ptr %i.j, align 8
  %i.cc = load ptr, ptr %i.j, align 8             ; 3 uses
  %i.cd = call i32 @pthread_mutex_lock(ptr noundef %i.cc) #13
  %i.ce = icmp eq i32 %i.cd, 35
  br i1 %i.ce, label %bb.au, label %pmix_obj_update.exit3

bb.au:                                            ; preds = %bb.at
  %i.cf = call ptr @__errno_location() #14
  store i32 35, ptr %i.cf, align 4
  call void @perror(ptr noundef nonnull @.str.33) #15
  call void @abort() #16
  unreachable

pmix_obj_update.exit3:                            ; preds = %bb.at
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 48 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 8
  %i.ci = add nsw i32 %i.ch, -1                   ; 2 uses
  store i32 %i.ci, ptr %i.cg, align 8
  %i.cj = call i32 @pthread_mutex_unlock(ptr noundef %i.cc) #13 ; 0 uses
  %i.ck = icmp eq i32 0, %i.ci
  br i1 %i.ck, label %bb.av, label %bb.az

bb.av:                                            ; preds = %pmix_obj_update.exit3
  %i.cl = load ptr, ptr %i.j, align 8
  call void @pmix_obj_run_destructors(ptr noundef %i.cl)
  %i.cm = load ptr, ptr %i.j, align 8
  %24 = getelementptr inbounds nuw %struct.pmix_object_t, ptr %i.cm, i32 0, i32 3
  %25 = getelementptr inbounds nuw %struct.pmix_tma, ptr %24, i32 0, i32 5
  %i.cn = load ptr, ptr %25, align 8
  %i.co = icmp ne ptr null, %i.cn
  br i1 %i.co, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.cp = load ptr, ptr %i.j, align 8
  %26 = getelementptr inbounds nuw %struct.pmix_object_t, ptr %i.cp, i32 0, i32 3
  %i.cq = load ptr, ptr %i.c, align 8
  call void @pmix_tma_free(ptr noundef %26, ptr noundef %i.cq)
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  %i.cr = load ptr, ptr %i.c, align 8
  call void @free(ptr noundef %i.cr) #13
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  store ptr null, ptr %i.c, align 8
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %pmix_obj_update.exit3
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az
  br label %bb.ad, !llvm.loop !7

bb.bb:                                            ; preds = %bb.ad
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ce, %bb.bb
  %i.cs = call ptr @pmix_list_remove_first(ptr noundef %3) ; 2 uses
  store ptr %i.cs, ptr %i.c, align 8
  %i.ct = icmp ne ptr null, %i.cs
  br i1 %i.ct, label %bb.bd, label %bb.cf

bb.bd:                                            ; preds = %bb.bc
  %i.cu = load ptr, ptr %i.c, align 8
  store ptr %i.cu, ptr %i.f, align 8
  store i8 0, ptr %i.h, align 1
  %i.cv = load ptr, ptr %i.a, align 8
  %27 = getelementptr inbounds nuw %struct.pmix_list_t, ptr %i.cv, i32 0, i32 1
  %28 = getelementptr inbounds nuw %struct.pmix_list_item_t, ptr %27, i32 0, i32 1
  %i.cw = load ptr, ptr %28, align 8
  store ptr %i.cw, ptr %i.g, align 8
  br label %bb.be

bb.be:                                            ; preds = %bb.bi, %bb.bd
  %i.cx = load ptr, ptr %i.g, align 8
  %i.cy = load ptr, ptr %i.a, align 8
  %29 = getelementptr inbounds nuw %struct.pmix_list_t, ptr %i.cy, i32 0, i32 1
  %i.cz = icmp ne ptr %i.cx, %29
  br i1 %i.cz, label %bb.bf, label %bb.bj

bb.bf:                                            ; preds = %bb.be
  %i.da = load ptr, ptr %i.f, align 8
  %i.db = load ptr, ptr %i.g, align 8
  %i.dc = call zeroext i1 @prte_nptr_match(ptr noundef %i.da, ptr noundef %i.db)
  br i1 %i.dc, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  store i8 1, ptr %i.h, align 1
  br label %bb.bj

bb.bh:                                            ; preds = %bb.bf
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.dd = load ptr, ptr %i.g, align 8
  %30 = getelementptr inbounds nuw %struct.pmix_list_item_t, ptr %i.dd, i32 0, i32 1
  %i.de = load ptr, ptr %30, align 8
  store ptr %i.de, ptr %i.g, align 8
  br label %bb.be, !llvm.loop !8

bb.bj:                                            ; preds = %bb.bg, %bb.be
  %i.df = load i8, ptr %i.h, align 1
  %i.dg = icmp ne i8 %i.df, 0
  br i1 %i.dg, label %bb.bk, label %bb.bz

bb.bk:                                            ; preds = %bb.bj
  %i.dh = load ptr, ptr %i.g, align 8
  %31 = getelementptr inbounds nuw %struct.prte_node_t, ptr %i.dh, i32 0, i32 4
  %i.di = load ptr, ptr %i.f, align 8
  %32 = getelementptr inbounds nuw %struct.prte_node_t, ptr %i.di, i32 0, i32 2
  %i.dj = load ptr, ptr %32, align 8
  %i.dk = call i32 @PMIx_Argv_append_unique_nosize(ptr noundef %31, ptr noundef %i.dj) ; 0 uses
  %i.dl = load ptr, ptr %i.f, align 8
  %33 = getelementptr inbounds nuw %struct.prte_node_t, ptr %i.dl, i32 0, i32 4
  %i.dm = load ptr, ptr %33, align 8
  %i.dn = icmp ne ptr null, %i.dm
  br i1 %i.dn, label %bb.bl, label %bb.bq

bb.bl:                                            ; preds = %bb.bk
  store i32 0, ptr %i.e, align 4
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bo, %bb.bl
  %i.do = load ptr, ptr %i.f, align 8
  %34 = getelementptr inbounds nuw %struct.prte_node_t, ptr %i.do, i32 0, i32 4
  %i.dp = load ptr, ptr %34, align 8
  %i.dq = load i32, ptr %i.e, align 4
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr inbounds ptr, ptr %i.dp, i64 %i.dr
  %i.dt = load ptr, ptr %i.ds, align 8
  %i.du = icmp ne ptr null, %i.dt
  br i1 %i.du, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %bb.bm
  %i.dv = load ptr, ptr %i.g, align 8
  %35 = getelementptr inbounds nuw %struct.prte_node_t, ptr %i.dv, i32 0, i32 4
  %i.dw = load ptr, ptr %i.f, align 8
  %36 = getelementptr inbounds nuw %struct.prte_node_t, ptr %i.dw, i32 0, i32 4
  %i.dx = load ptr, ptr %36, align 8
  %i.dy = load i32, ptr %i.e, align 4
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds ptr, ptr %i.dx, i64 %i.dz
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = call i32 @PMIx_Argv_append_unique_nosize(ptr noundef %35, ptr noundef %i.eb) ; 0 uses
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ed = load i32, ptr %i.e, align 4
  %i.ee = add nsw i32 %i.ed, 1
  store i32 %i.ee, ptr %i.e, align 4
  br label %bb.bm, !llvm.loop !9

bb.bp:                                            ; preds = %bb.bm
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bk
  br label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ef = load ptr, ptr %i.c, align 8
  store ptr %i.ef, ptr %i.k, align 8
  %i.eg = load ptr, ptr %i.k, align 8             ; 3 uses
  %i.eh = call i32 @pthread_mutex_lock(ptr noundef %i.eg) #13
  %i.ei = icmp eq i32 %i.eh, 35
  br i1 %i.ei, label %bb.bs, label %pmix_obj_update.exit2

bb.bs:                                            ; preds = %bb.br
  %i.ej = call ptr @__errno_location() #14
  store i32 35, ptr %i.ej, align 4
  call void @perror(ptr noundef nonnull @.str.33) #15
  call void @abort() #16
  unreachable

pmix_obj_update.exit2:                            ; preds = %bb.br
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 48 ; 2 uses
  %i.el = load i32, ptr %i.ek, align 8
  %i.em = add nsw i32 %i.el, -1                   ; 2 uses
  store i32 %i.em, ptr %i.ek, align 8
  %i.en = call i32 @pthread_mutex_unlock(ptr noundef %i.eg) #13 ; 0 uses
  %i.eo = icmp eq i32 0, %i.em
  br i1 %i.eo, label %bb.bt, label %bb.bx

bb.bt:                                            ; preds = %pmix_obj_update.exit2
  %i.ep = load ptr, ptr %i.k, align 8
  call void @pmix_obj_run_destructors(ptr noundef %i.ep)
  %i.eq = load ptr, ptr %i.k, align 8
  %37 = getelementptr inbounds nuw %struct.pmix_object_t, ptr %i.eq, i32 0, i32 3
  %38 = getelementptr inbounds nuw %struct.pmix_tma, ptr %37, i32 0, i32 5
  %i.er = load ptr, ptr %38, align 8
  %i.es = icmp ne ptr null, %i.er
  br i1 %i.es, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.et = load ptr, ptr %i.k, align 8
  %39 = getelementptr inbounds nuw %struct.pmix_object_t, ptr %i.et, i32 0, i32 3
  %i.eu = load ptr, ptr %i.c, align 8
  call void @pmix_tma_free(ptr noundef %39, ptr noundef %i.eu)
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bt
  %i.ev = load ptr, ptr %i.c, align 8
  call void @free(ptr noundef %i.ev) #13
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  store ptr null, ptr %i.c, align 8
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %pmix_obj_update.exit2
  br label %bb.by

bb.by:                                            ; preds = %bb.bx
  br label %bb.ce

bb.bz:                                            ; preds = %bb.bj
  %i.ew = load ptr, ptr %i.a, align 8
  %i.ex = load ptr, ptr %i.f, align 8
  %40 = getelementptr inbounds nuw %struct.prte_node_t, ptr %i.ex, i32 0, i32 0
  call void @_pmix_list_append(ptr noundef %i.ew, ptr noundef %40)
  %i.ey = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_ras_base_framework, i64 76), align 4
  %i.ez = icmp sge i32 %i.ey, 0
  br i1 %i.ez, label %bb.ca, label %bb.cd

bb.ca:                                            ; preds = %bb.bz
  %i.fa = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_ras_base_framework, i64 76), align 4
  %i.fb = icmp slt i32 %i.fa, 64
  br i1 %i.fb, label %bb.cb, label %bb.cd

bb.cb:                                            ; preds = %bb.ca
  %i.fc = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_ras_base_framework, i64 76), align 4
  %i.fd = sext i32 %i.fc to i64
  %41 = getelementptr inbounds [0 x %struct.pmix_output_desc_t], ptr @pmix_output_info, i64 0, i64 %i.fd
  %42 = getelementptr inbounds nuw %struct.pmix_output_desc_t, ptr %41, i32 0, i32 2
  %i.fe = load i32, ptr %42, align 4
  %i.ff = icmp sge i32 %i.fe, 1
  br i1 %i.ff, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.fg = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_ras_base_framework, i64 76), align 4
  %i.fh = call ptr @prte_util_print_name_args(ptr noundef @prte_process_info)
  %i.fi = load ptr, ptr %i.f, align 8
  %43 = getelementptr inbounds nuw %struct.prte_node_t, ptr %i.fi, i32 0, i32 2
  %i.fj = load ptr, ptr %43, align 8
  %i.fk = load ptr, ptr %i.f, align 8
  %44 = getelementptr inbounds nuw %struct.prte_node_t, ptr %i.fk, i32 0, i32 12
  %i.fl = load i32, ptr %44, align 4
  call void (i32, ptr, ...) @pmix_output(i32 noundef %i.fg, ptr noundef @.str.3, ptr noundef %i.fh, ptr noundef %i.fj, i32 noundef %i.fl)
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb, %bb.ca, %bb.bz
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.by
  br label %bb.bc, !llvm.loop !10

bb.cf:                                            ; preds = %bb.bc
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.z, %bb.v
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  br label %bb.ci

bb.ci:                                            ; preds = %bb.cr, %bb.ch
  %i.fm = call ptr @pmix_list_remove_first(ptr noundef %2) ; 2 uses
  store ptr %i.fm, ptr %i.l, align 8
  %i.fn = icmp ne ptr null, %i.fm
  br i1 %i.fn, label %bb.cj, label %bb.cs

bb.cj:                                            ; preds = %bb.ci
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.fo = load ptr, ptr %i.l, align 8
  store ptr %i.fo, ptr %i.m, align 8
  %i.fp = load ptr, ptr %i.m, align 8             ; 3 uses
  %i.fq = call i32 @pthread_mutex_lock(ptr noundef %i.fp) #13
  %i.fr = icmp eq i32 %i.fq, 35
  br i1 %i.fr, label %bb.cl, label %pmix_obj_update.exit1

bb.cl:                                            ; preds = %bb.ck
  %i.fs = call ptr @__errno_location() #14
  store i32 35, ptr %i.fs, align 4
  call void @perror(ptr noundef nonnull @.str.33) #15
  call void @abort() #16
  unreachable

pmix_obj_update.exit1:                            ; preds = %bb.ck
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fp, i64 48 ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 8
  %i.fv = add nsw i32 %i.fu, -1                   ; 2 uses
  store i32 %i.fv, ptr %i.ft, align 8
  %i.fw = call i32 @pthread_mutex_unlock(ptr noundef %i.fp) #13 ; 0 uses
  %i.fx = icmp eq i32 0, %i.fv
  br i1 %i.fx, label %bb.cm, label %bb.cq

bb.cm:                                            ; preds = %pmix_obj_update.exit1
  %i.fy = load ptr, ptr %i.m, align 8
  call void @pmix_obj_run_destructors(ptr noundef %i.fy)
  %i.fz = load ptr, ptr %i.m, align 8
end_hunk_0
begin_hunk_1_@_pmix_list_append:bb.a
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @prte_util_filter_hostfile_nodes(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 12 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca i8, align 1                       ; 5 uses
  %3 = alloca %struct.pmix_list_t, align 8        ; 19 uses
  %4 = alloca %struct.pmix_list_t, align 8        ; 8 uses
  %i.e = alloca ptr, align 8                      ; 42 uses
  %i.f = alloca ptr, align 8                      ; 19 uses
  %i.g = alloca ptr, align 8                      ; 3 uses
  %i.h = alloca ptr, align 8                      ; 6 uses
  %i.i = alloca ptr, align 8                      ; 12 uses
  %i.j = alloca ptr, align 8                      ; 17 uses
  %i.k = alloca ptr, align 8                      ; 3 uses
  %i.l = alloca ptr, align 8                      ; 2 uses
  %i.m = alloca i32, align 4                      ; 8 uses
  %i.n = alloca ptr, align 8                      ; 4 uses
  %i.o = alloca i32, align 4                      ; 7 uses
  %i.p = alloca i32, align 4                      ; 3 uses
  %i.q = alloca i8, align 1                       ; 3 uses
  %5 = alloca %struct.pmix_list_t, align 8        ; 8 uses
  %i.r = alloca i8, align 1                       ; 3 uses
  %i.s = alloca ptr, align 8                      ; 2 uses
  %i.t = alloca ptr, align 8                      ; 5 uses
  %i.u = alloca ptr, align 8                      ; 5 uses
  %i.v = alloca ptr, align 8                      ; 5 uses
  %i.w = alloca ptr, align 8                      ; 5 uses
  %i.x = alloca ptr, align 8                      ; 5 uses
  store ptr %0, ptr %i.b, align 8
  store ptr %1, ptr %i.c, align 8
  %i.y = zext i1 %2 to i8
  store i8 %i.y, ptr %i.d, align 1
  store i32 0, ptr %i.m, align 4
  store i8 0, ptr %i.q, align 1
  %i.z = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_ras_base_framework, i64 76), align 4
  %i.aa = icmp sge i32 %i.z, 0
  br i1 %i.aa, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.ab = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_ras_base_framework, i64 76), align 4
  %i.ac = icmp slt i32 %i.ab, 64
  br i1 %i.ac, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.ad = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_ras_base_framework, i64 76), align 4
  %i.ae = sext i32 %i.ad to i64
  %6 = getelementptr inbounds [0 x %struct.pmix_output_desc_t], ptr @pmix_output_info, i64 0, i64 %i.ae
  %7 = getelementptr inbounds nuw %struct.pmix_output_desc_t, ptr %6, i32 0, i32 2
  %i.af = load i32, ptr %7, align 4
  %i.ag = icmp sge i32 %i.af, 1
  br i1 %i.ag, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ah = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_ras_base_framework, i64 76), align 4
  %i.ai = call ptr @prte_util_print_name_args(ptr noundef @prte_process_info)
  %i.aj = load ptr, ptr %i.c, align 8
  call void (i32, ptr, ...) @pmix_output(i32 noundef %i.ah, ptr noundef @.str.4, ptr noundef %i.ai, ptr noundef %i.aj)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  br label %bb.f

bb.f:                                             ; preds = %bb.e
  br label %bb.g

bb.g:                                             ; preds = %bb.f
  br label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = load i32, ptr @pmix_class_init_epoch, align 4
  %i.al = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_list_t_class, i64 32), align 8
  %i.am = icmp ne i32 %i.ak, %i.al
  br i1 %i.am, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @pmix_class_initialize(ptr noundef @pmix_list_t_class)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %8 = getelementptr inbounds nuw %struct.pmix_object_t, ptr %3, i32 0, i32 1
  store ptr @pmix_list_t_class, ptr %8, align 8
  %9 = getelementptr inbounds nuw %struct.pmix_object_t, ptr %3, i32 0, i32 2
  store i32 1, ptr %9, align 8
  call void @pmix_obj_construct_tma(ptr noundef %3, ptr noundef null)
  call void @pmix_obj_run_constructors(ptr noundef %3)
  br label %bb.k

bb.k:                                             ; preds = %bb.j
  br label %bb.l

bb.l:                                             ; preds = %bb.k
  br label %bb.m

bb.m:                                             ; preds = %bb.l
  br label %bb.n

bb.n:                                             ; preds = %bb.m
  br label %bb.o

bb.o:                                             ; preds = %bb.n
  br label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.an = load i32, ptr @pmix_class_init_epoch, align 4
  %i.ao = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_list_t_class, i64 32), align 8
  %i.ap = icmp ne i32 %i.an, %i.ao
  br i1 %i.ap, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @pmix_class_initialize(ptr noundef @pmix_list_t_class)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %10 = getelementptr inbounds nuw %struct.pmix_object_t, ptr %4, i32 0, i32 1
  store ptr @pmix_list_t_class, ptr %10, align 8
  %11 = getelementptr inbounds nuw %struct.pmix_object_t, ptr %4, i32 0, i32 2
  store i32 1, ptr %11, align 8
  call void @pmix_obj_construct_tma(ptr noundef %4, ptr noundef null)
  call void @pmix_obj_run_constructors(ptr noundef %4)
  br label %bb.s

bb.s:                                             ; preds = %bb.r
  br label %bb.t

bb.t:                                             ; preds = %bb.s
  br label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aq = load ptr, ptr %i.c, align 8
  %i.ar = call i32 @hostfile_parse(ptr noundef %i.aq, ptr noundef %3, ptr noundef %4, i1 noundef zeroext false) ; 2 uses
  store i32 %i.ar, ptr %i.m, align 4
  %i.as = icmp ne i32 0, %i.ar
  br i1 %i.as, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %bb.u
  br label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @pmix_obj_run_destructors(ptr noundef %3)
  br label %bb.x

bb.x:                                             ; preds = %bb.w
  br label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @pmix_obj_run_destructors(ptr noundef %4)
  br label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.at = load i32, ptr %i.m, align 4
  store i32 %i.at, ptr %i.a, align 4
  br label %bb.gi

bb.aa:                                            ; preds = %bb.u
  %i.au = call i64 @pmix_list_get_size(ptr noundef %3)
  %i.av = icmp eq i64 0, %i.au
  br i1 %i.av, label %bb.ab, label %bb.ag

bb.ab:                                            ; preds = %bb.aa
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @pmix_obj_run_destructors(ptr noundef %3)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @pmix_obj_run_destructors(ptr noundef %4)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae
  store i32 -46, ptr %i.a, align 4
  br label %bb.gi

bb.ag:                                            ; preds = %bb.aa
  br label %bb.ah

bb.ah:                                            ; preds = %bb.bh, %bb.ag
  %i.aw = call ptr @pmix_list_remove_first(ptr noundef %4) ; 2 uses
  store ptr %i.aw, ptr %i.e, align 8
  %i.ax = icmp ne ptr null, %i.aw
  br i1 %i.ax, label %bb.ai, label %bb.bi

bb.ai:                                            ; preds = %bb.ah
  %i.ay = load ptr, ptr %i.e, align 8
  store ptr %i.ay, ptr %i.j, align 8
  %i.az = call ptr @pmix_list_get_first(ptr noundef %3)
  store ptr %i.az, ptr %i.f, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ay, %bb.ai
  %i.ba = load ptr, ptr %i.f, align 8
  %i.bb = call ptr @pmix_list_get_end(ptr noundef %3)
  %i.bc = icmp ne ptr %i.ba, %i.bb
  br i1 %i.bc, label %bb.ak, label %bb.az

bb.ak:                                            ; preds = %bb.aj
  %i.bd = load ptr, ptr %i.f, align 8
  store ptr %i.bd, ptr %i.s, align 8
  %i.be = load ptr, ptr %i.j, align 8
  %i.bf = load ptr, ptr %i.s, align 8
  %i.bg = call zeroext i1 @prte_nptr_match(ptr noundef %i.be, ptr noundef %i.bf)
  br i1 %i.bg, label %bb.al, label %bb.au

bb.al:                                            ; preds = %bb.ak
  %i.bh = load ptr, ptr %i.f, align 8
  %i.bi = call ptr @pmix_list_remove_item(ptr noundef %3, ptr noundef %i.bh) ; 0 uses
  br label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.bj = load ptr, ptr %i.f, align 8
  store ptr %i.bj, ptr %i.t, align 8
  %i.bk = load ptr, ptr %i.t, align 8             ; 3 uses
  %i.bl = call i32 @pthread_mutex_lock(ptr noundef %i.bk) #13
  %i.bm = icmp eq i32 %i.bl, 35
  br i1 %i.bm, label %bb.an, label %pmix_obj_update.exit4

bb.an:                                            ; preds = %bb.am
  %i.bn = call ptr @__errno_location() #14
  store i32 35, ptr %i.bn, align 4
  call void @perror(ptr noundef nonnull @.str.33) #15
  call void @abort() #16
  unreachable

pmix_obj_update.exit4:                            ; preds = %bb.am
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 48 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 8
  %i.bq = add nsw i32 %i.bp, -1                   ; 2 uses
  store i32 %i.bq, ptr %i.bo, align 8
  %i.br = call i32 @pthread_mutex_unlock(ptr noundef %i.bk) #13 ; 0 uses
  %i.bs = icmp eq i32 0, %i.bq
  br i1 %i.bs, label %bb.ao, label %bb.as

bb.ao:                                            ; preds = %pmix_obj_update.exit4
  %i.bt = load ptr, ptr %i.t, align 8
  call void @pmix_obj_run_destructors(ptr noundef %i.bt)
  %i.bu = load ptr, ptr %i.t, align 8
  %12 = getelementptr inbounds nuw %struct.pmix_object_t, ptr %i.bu, i32 0, i32 3
  %13 = getelementptr inbounds nuw %struct.pmix_tma, ptr %12, i32 0, i32 5
  %i.bv = load ptr, ptr %13, align 8
  %i.bw = icmp ne ptr null, %i.bv
  br i1 %i.bw, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.bx = load ptr, ptr %i.t, align 8
  %14 = getelementptr inbounds nuw %struct.pmix_object_t, ptr %i.bx, i32 0, i32 3
  %i.by = load ptr, ptr %i.f, align 8
  call void @pmix_tma_free(ptr noundef %14, ptr noundef %i.by)
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.bz = load ptr, ptr %i.f, align 8
  call void @free(ptr noundef %i.bz) #13
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  store ptr null, ptr %i.f, align 8
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %pmix_obj_update.exit4
  br label %bb.at

bb.at:                                            ; preds = %bb.as
  br label %bb.az

bb.au:                                            ; preds = %bb.ak
  br label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ca = load ptr, ptr %i.f, align 8
  %i.cb = icmp ne ptr %i.ca, null
  br i1 %i.cb, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.cc = load ptr, ptr %i.f, align 8
  %15 = getelementptr inbounds nuw %struct.pmix_list_item_t, ptr %i.cc, i32 0, i32 1
  %i.cd = load ptr, ptr %15, align 8
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.ce = phi ptr [ %i.cd, %bb.aw ], [ null, %bb.ax ]
  store ptr %i.ce, ptr %i.f, align 8
  br label %bb.aj, !llvm.loop !16

bb.az:                                            ; preds = %bb.at, %bb.aj
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.cf = load ptr, ptr %i.e, align 8
  store ptr %i.cf, ptr %i.u, align 8
  %i.cg = load ptr, ptr %i.u, align 8             ; 3 uses
  %i.ch = call i32 @pthread_mutex_lock(ptr noundef %i.cg) #13
  %i.ci = icmp eq i32 %i.ch, 35
  br i1 %i.ci, label %bb.bb, label %pmix_obj_update.exit3

bb.bb:                                            ; preds = %bb.ba
  %i.cj = call ptr @__errno_location() #14
  store i32 35, ptr %i.cj, align 4
  call void @perror(ptr noundef nonnull @.str.33) #15
  call void @abort() #16
  unreachable

pmix_obj_update.exit3:                            ; preds = %bb.ba
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 48 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 8
  %i.cm = add nsw i32 %i.cl, -1                   ; 2 uses
  store i32 %i.cm, ptr %i.ck, align 8
  %i.cn = call i32 @pthread_mutex_unlock(ptr noundef %i.cg) #13 ; 0 uses
  %i.co = icmp eq i32 0, %i.cm
  br i1 %i.co, label %bb.bc, label %bb.bg

bb.bc:                                            ; preds = %pmix_obj_update.exit3
  %i.cp = load ptr, ptr %i.u, align 8
  call void @pmix_obj_run_destructors(ptr noundef %i.cp)
  %i.cq = load ptr, ptr %i.u, align 8
  %16 = getelementptr inbounds nuw %struct.pmix_object_t, ptr %i.cq, i32 0, i32 3
  %17 = getelementptr inbounds nuw %struct.pmix_tma, ptr %16, i32 0, i32 5
  %i.cr = load ptr, ptr %17, align 8
  %i.cs = icmp ne ptr null, %i.cr
  br i1 %i.cs, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.ct = load ptr, ptr %i.u, align 8
  %18 = getelementptr inbounds nuw %struct.pmix_object_t, ptr %i.ct, i32 0, i32 3
  %i.cu = load ptr, ptr %i.e, align 8
  call void @pmix_tma_free(ptr noundef %18, ptr noundef %i.cu)
  br label %bb.bf

bb.be:                                            ; preds = %bb.bc
  %i.cv = load ptr, ptr %i.e, align 8
  call void @free(ptr noundef %i.cv) #13
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  store ptr null, ptr %i.e, align 8
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %pmix_obj_update.exit3
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  br label %bb.ah, !llvm.loop !17

bb.bi:                                            ; preds = %bb.ah
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.cw = load i32, ptr @pmix_class_init_epoch, align 4
  %i.cx = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_list_t_class, i64 32), align 8
  %i.cy = icmp ne i32 %i.cw, %i.cx
  br i1 %i.cy, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  call void @pmix_class_initialize(ptr noundef @pmix_list_t_class)
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %19 = getelementptr inbounds nuw %struct.pmix_object_t, ptr %5, i32 0, i32 1
  store ptr @pmix_list_t_class, ptr %19, align 8
  %20 = getelementptr inbounds nuw %struct.pmix_object_t, ptr %5, i32 0, i32 2
  store i32 1, ptr %20, align 8
  call void @pmix_obj_construct_tma(ptr noundef %5, ptr noundef null)
  call void @pmix_obj_run_constructors(ptr noundef %5)
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  br label %bb.br

bb.br:                                            ; preds = %bb.ew, %bb.bq
  %i.cz = call ptr @pmix_list_remove_first(ptr noundef %3) ; 2 uses
  store ptr %i.cz, ptr %i.f, align 8
  %i.da = icmp ne ptr null, %i.cz
  br i1 %i.da, label %bb.bs, label %bb.ex

bb.bs:                                            ; preds = %bb.br
  %i.db = load ptr, ptr %i.f, align 8
  store ptr %i.db, ptr %i.j, align 8
  %i.dc = load ptr, ptr %i.f, align 8
  %i.dd = icmp ne ptr %i.dc, null
  br i1 %i.dd, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.de = load ptr, ptr %i.f, align 8
  %21 = getelementptr inbounds nuw %struct.pmix_list_item_t, ptr %i.de, i32 0, i32 1
  %i.df = load ptr, ptr %21, align 8
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bs
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.dg = phi ptr [ %i.df, %bb.bt ], [ null, %bb.bu ]
  store ptr %i.dg, ptr %i.g, align 8
  %i.dh = load ptr, ptr %i.j, align 8
  %22 = getelementptr inbounds nuw %struct.prte_node_t, ptr %i.dh, i32 0, i32 2
  %i.di = load ptr, ptr %22, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 0
  %i.dk = load i8, ptr %i.dj, align 1
  %i.dl = sext i8 %i.dk to i32
  %i.dm = icmp eq i32 43, %i.dl
  br i1 %i.dm, label %bb.bw, label %bb.dw

bb.bw:                                            ; preds = %bb.bv
  %i.dn = load ptr, ptr %i.j, align 8
  %23 = getelementptr inbounds nuw %struct.prte_node_t, ptr %i.dn, i32 0, i32 2
  %i.do = load ptr, ptr %23, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 1
  %i.dq = load i8, ptr %i.dp, align 1
  %i.dr = sext i8 %i.dq to i32
  %i.ds = icmp eq i32 101, %i.dr
  br i1 %i.ds, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.dt = load ptr, ptr %i.j, align 8
  %24 = getelementptr inbounds nuw %struct.prte_node_t, ptr %i.dt, i32 0, i32 2
  %i.du = load ptr, ptr %24, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 1
  %i.dw = load i8, ptr %i.dv, align 1
  %i.dx = sext i8 %i.dw to i32
  %i.dy = icmp eq i32 69, %i.dx
  br i1 %i.dy, label %bb.by, label %bb.dc

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.dz = load ptr, ptr %i.j, align 8
  %25 = getelementptr inbounds nuw %struct.prte_node_t, ptr %i.dz, i32 0, i32 2
  %i.ea = load ptr, ptr %25, align 8
  %i.eb = call ptr @strchr(ptr noundef %i.ea, i32 noundef 58) #17 ; 2 uses
  store ptr %i.eb, ptr %i.n, align 8
  %i.ec = icmp ne ptr null, %i.eb
  br i1 %i.ec, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.ed = load ptr, ptr %i.n, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i32 1
  store ptr %i.ee, ptr %i.n, align 8
  %i.ef = load ptr, ptr %i.n, align 8
  %i.eg = call i64 @__isoc23_strtol(ptr noundef %i.ef, ptr noundef null, i32 noundef 10) #13
  %i.eh = trunc i64 %i.eg to i32
  store i32 %i.eh, ptr %i.o, align 4
  br label %bb.cb

bb.ca:                                            ; preds = %bb.by
  store i32 2147483647, ptr %i.o, align 4
  store i8 1, ptr %i.q, align 1
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %i.ei = load ptr, ptr %i.b, align 8
  %i.ej = call ptr @pmix_list_get_first(ptr noundef %i.ei)
  store ptr %i.ej, ptr %i.e, align 8
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cx, %bb.cb
  %i.ek = load i32, ptr %i.o, align 4
  %i.el = icmp slt i32 0, %i.ek
  br i1 %i.el, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.em = load ptr, ptr %i.e, align 8
  %i.en = load ptr, ptr %i.b, align 8
  %i.eo = call ptr @pmix_list_get_end(ptr noundef %i.en)
  %i.ep = icmp ne ptr %i.em, %i.eo
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %i.eq = phi i1 [ false, %bb.cc ], [ %i.ep, %bb.cd ]
  br i1 %i.eq, label %bb.cf, label %bb.cy

bb.cf:                                            ; preds = %bb.ce
  %i.er = load ptr, ptr %i.e, align 8
  store ptr %i.er, ptr %i.i, align 8
  %i.es = load ptr, ptr %i.e, align 8
  %i.et = icmp ne ptr %i.es, null
  br i1 %i.et, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.eu = load ptr, ptr %i.e, align 8
  %26 = getelementptr inbounds nuw %struct.pmix_list_item_t, ptr %i.eu, i32 0, i32 1
  %i.ev = load ptr, ptr %26, align 8
  br label %bb.ci

bb.ch:                                            ; preds = %bb.cf
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.ew = phi ptr [ %i.ev, %bb.cg ], [ null, %bb.ch ]
  store ptr %i.ew, ptr %i.g, align 8
  %i.ex = load ptr, ptr %i.i, align 8
  %27 = getelementptr inbounds nuw %struct.prte_node_t, ptr %i.ex, i32 0, i32 14
  %i.ey = load i32, ptr %27, align 4
  %i.ez = icmp eq i32 0, %i.ey
  br i1 %i.ez, label %bb.cj, label %bb.cw

bb.cj:                                            ; preds = %bb.ci
  %i.fa = call ptr @pmix_list_get_first(ptr noundef %3)
  store ptr %i.fa, ptr %i.h, align 8
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cr, %bb.cj
  %i.fb = load ptr, ptr %i.h, align 8
  %i.fc = call ptr @pmix_list_get_end(ptr noundef %3)
  %i.fd = icmp ne ptr %i.fb, %i.fc
  br i1 %i.fd, label %bb.cl, label %bb.cs

bb.cl:                                            ; preds = %bb.ck
  %i.fe = load ptr, ptr %i.h, align 8
  store ptr %i.fe, ptr %i.l, align 8
  %i.ff = load ptr, ptr %i.l, align 8
  %i.fg = load ptr, ptr %i.i, align 8
  %i.fh = call zeroext i1 @prte_nptr_match(ptr noundef %i.ff, ptr noundef %i.fg)
  br i1 %i.fh, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  br label %bb.cx

bb.cn:                                            ; preds = %bb.cl
  br label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.fi = load ptr, ptr %i.h, align 8
  %i.fj = icmp ne ptr %i.fi, null
  br i1 %i.fj, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.fk = load ptr, ptr %i.h, align 8
  %28 = getelementptr inbounds nuw %struct.pmix_list_item_t, ptr %i.fk, i32 0, i32 1
  %i.fl = load ptr, ptr %28, align 8
  br label %bb.cr

bb.cq:                                            ; preds = %bb.co
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %i.fm = phi ptr [ %i.fl, %bb.cp ], [ null, %bb.cq ]
  store ptr %i.fm, ptr %i.h, align 8
  br label %bb.ck, !llvm.loop !18

bb.cs:                                            ; preds = %bb.ck
  %i.fn = load i8, ptr %i.d, align 1
  %i.fo = icmp ne i8 %i.fn, 0
  br i1 %i.fo, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.fp = load ptr, ptr %i.b, align 8
  %i.fq = load ptr, ptr %i.e, align 8
  %i.fr = call ptr @pmix_list_remove_item(ptr noundef %i.fp, ptr noundef %i.fq) ; 0 uses
  %i.fs = load ptr, ptr %i.e, align 8
  call void @_pmix_list_append(ptr noundef %5, ptr noundef %i.fs)
  br label %bb.cv

bb.cu:                                            ; preds = %bb.cs
  %i.ft = load ptr, ptr %i.i, align 8
  %29 = getelementptr inbounds nuw %struct.prte_node_t, ptr %i.ft, i32 0, i32 17 ; 2 uses
  %i.fu = load i8, ptr %29, align 8
  %i.fv = zext i8 %i.fu to i32
  %i.fw = or i32 %i.fv, 8
  %i.fx = trunc nuw i32 %i.fw to i8
  store i8 %i.fx, ptr %29, align 8
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %i.fy = load i32, ptr %i.o, align 4
  %i.fz = add nsw i32 %i.fy, -1
  store i32 %i.fz, ptr %i.o, align 4
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.ci
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cm
  %i.ga = load ptr, ptr %i.g, align 8
  store ptr %i.ga, ptr %i.e, align 8
  br label %bb.cc, !llvm.loop !19

bb.cy:                                            ; preds = %bb.ce
  %i.gb = load i8, ptr %i.q, align 1
  %i.gc = icmp ne i8 %i.gb, 0
  br i1 %i.gc, label %bb.db, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.gd = load i32, ptr %i.o, align 4
  %i.ge = icmp slt i32 0, %i.gd
  br i1 %i.ge, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.gf = load i32, ptr %i.o, align 4
  %i.gg = call i32 (ptr, ptr, i32, ...) @pmix_show_help(ptr noundef @.str.1, ptr noundef @.str.5, i32 noundef 1, i32 noundef %i.gf) ; 0 uses
  store i32 -43, ptr %i.m, align 4
  br label %bb.gf

bb.db:                                            ; preds = %bb.cz, %bb.cy
  br label %bb.dv

bb.dc:                                            ; preds = %bb.bx
  %i.gh = load ptr, ptr %i.j, align 8
  %30 = getelementptr inbounds nuw %struct.prte_node_t, ptr %i.gh, i32 0, i32 2
  %i.gi = load ptr, ptr %30, align 8
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 1
  %i.gk = load i8, ptr %i.gj, align 1
  %i.gl = sext i8 %i.gk to i32
  %i.gm = icmp eq i32 110, %i.gl
  br i1 %i.gm, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.gn = load ptr, ptr %i.j, align 8
  %31 = getelementptr inbounds nuw %struct.prte_node_t, ptr %i.gn, i32 0, i32 2
  %i.go = load ptr, ptr %31, align 8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 1
  %i.gq = load i8, ptr %i.gp, align 1
  %i.gr = sext i8 %i.gq to i32
  %i.gs = icmp eq i32 78, %i.gr
  br i1 %i.gs, label %bb.de, label %bb.dt

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %i.gt = load ptr, ptr %i.j, align 8
  %32 = getelementptr inbounds nuw %struct.prte_node_t, ptr %i.gt, i32 0, i32 2
  %i.gu = load ptr, ptr %32, align 8
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 2
  %i.gw = call i64 @__isoc23_strtol(ptr noundef %i.gv, ptr noundef null, i32 noundef 10) #13
  %i.gx = trunc i64 %i.gw to i32
  store i32 %i.gx, ptr %i.p, align 4
  %i.gy = load ptr, ptr @prte_node_pool, align 8
  %i.gz = load i32, ptr %i.p, align 4
  %i.ha = call ptr @pmix_pointer_array_get_item(ptr noundef %i.gy, i32 noundef %i.gz)
  store ptr %i.ha, ptr %i.k, align 8
  %i.hb = load ptr, ptr %i.k, align 8
  %i.hc = icmp eq ptr null, %i.hb
  br i1 %i.hc, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.hd = load i32, ptr %i.p, align 4
  %i.he = load ptr, ptr %i.j, align 8
  %33 = getelementptr inbounds nuw %struct.prte_node_t, ptr %i.he, i32 0, i32 2
  %i.hf = load ptr, ptr %33, align 8
  %i.hg = call i32 (ptr, ptr, i32, ...) @pmix_show_help(ptr noundef @.str.1, ptr noundef @.str.6, i32 noundef 1, i32 noundef %i.hd, ptr noundef %i.hf) ; 0 uses
  store i32 -43, ptr %i.m, align 4
  br label %bb.gf

bb.dg:                                            ; preds = %bb.de
  %i.hh = load ptr, ptr %i.b, align 8
  %i.hi = call ptr @pmix_list_get_first(ptr noundef %i.hh)
  store ptr %i.hi, ptr %i.e, align 8
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dr, %bb.dg
  %i.hj = load ptr, ptr %i.e, align 8
  %i.hk = load ptr, ptr %i.b, align 8
  %i.hl = call ptr @pmix_list_get_end(ptr noundef %i.hk)
  %i.hm = icmp ne ptr %i.hj, %i.hl
  br i1 %i.hm, label %bb.di, label %bb.ds

bb.di:                                            ; preds = %bb.dh
  %i.hn = load ptr, ptr %i.e, align 8
  store ptr %i.hn, ptr %i.i, align 8
  %i.ho = load ptr, ptr %i.k, align 8
  %i.hp = load ptr, ptr %i.i, align 8
  %i.hq = call zeroext i1 @prte_nptr_match(ptr noundef %i.ho, ptr noundef %i.hp)
  br i1 %i.hq, label %bb.dj, label %bb.dn

bb.dj:                                            ; preds = %bb.di
  %i.hr = load i8, ptr %i.d, align 1
  %i.hs = icmp ne i8 %i.hr, 0
  br i1 %i.hs, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %i.ht = load ptr, ptr %i.b, align 8
  %i.hu = load ptr, ptr %i.e, align 8
  %i.hv = call ptr @pmix_list_remove_item(ptr noundef %i.ht, ptr noundef %i.hu) ; 0 uses
  %i.hw = load ptr, ptr %i.e, align 8
  call void @_pmix_list_append(ptr noundef %5, ptr noundef %i.hw)
  br label %bb.dm

bb.dl:                                            ; preds = %bb.dj
  %i.hx = load ptr, ptr %i.i, align 8
  %34 = getelementptr inbounds nuw %struct.prte_node_t, ptr %i.hx, i32 0, i32 17 ; 2 uses
  %i.hy = load i8, ptr %34, align 8
  %i.hz = zext i8 %i.hy to i32
  %i.ia = or i32 %i.hz, 8
  %i.ib = trunc nuw i32 %i.ia to i8
  store i8 %i.ib, ptr %34, align 8
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  br label %bb.ds

bb.dn:                                            ; preds = %bb.di
  br label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.ic = load ptr, ptr %i.e, align 8
  %i.id = icmp ne ptr %i.ic, null
  br i1 %i.id, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.ie = load ptr, ptr %i.e, align 8
  %35 = getelementptr inbounds nuw %struct.pmix_list_item_t, ptr %i.ie, i32 0, i32 1
  %i.if = load ptr, ptr %35, align 8
  br label %bb.dr

bb.dq:                                            ; preds = %bb.do
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %i.ig = phi ptr [ %i.if, %bb.dp ], [ null, %bb.dq ]
  store ptr %i.ig, ptr %i.e, align 8
  br label %bb.dh, !llvm.loop !20

bb.ds:                                            ; preds = %bb.dm, %bb.dh
  br label %bb.du

bb.dt:                                            ; preds = %bb.dd
  %i.ih = load ptr, ptr %i.j, align 8
  %36 = getelementptr inbounds nuw %struct.prte_node_t, ptr %i.ih, i32 0, i32 2
  %i.ii = load ptr, ptr %36, align 8
  %i.ij = call i32 (ptr, ptr, i32, ...) @pmix_show_help(ptr noundef @.str.1, ptr noundef @.str.7, i32 noundef 1, ptr noundef %i.ii) ; 0 uses
  store i32 -43, ptr %i.m, align 4
  br label %bb.gf

bb.du:                                            ; preds = %bb.ds
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.db
  br label %bb.eo

bb.dw:                                            ; preds = %bb.bv
  store i8 0, ptr %i.r, align 1
  %i.ik = load ptr, ptr %i.b, align 8
  %i.il = call ptr @pmix_list_get_first(ptr noundef %i.ik)
  store ptr %i.il, ptr %i.e, align 8
  br label %bb.dx

bb.dx:                                            ; preds = %bb.ek, %bb.dw
  %i.im = load ptr, ptr %i.e, align 8
  %i.in = load ptr, ptr %i.b, align 8
  %i.io = call ptr @pmix_list_get_end(ptr noundef %i.in)
  %i.ip = icmp ne ptr %i.im, %i.io
  br i1 %i.ip, label %bb.dy, label %bb.el

bb.dy:                                            ; preds = %bb.dx
  %i.iq = load ptr, ptr %i.e, align 8
  store ptr %i.iq, ptr %i.i, align 8
  %i.ir = load ptr, ptr %i.j, align 8
  %i.is = load ptr, ptr %i.i, align 8
  %i.it = call zeroext i1 @prte_nptr_match(ptr noundef %i.ir, ptr noundef %i.is)
  br i1 %i.it, label %bb.dz, label %bb.eg

bb.dz:                                            ; preds = %bb.dy
  %i.iu = load ptr, ptr %i.j, align 8
  %37 = getelementptr inbounds nuw %struct.prte_node_t, ptr %i.iu, i32 0, i32 17
  %i.iv = load i8, ptr %37, align 8
  %i.iw = zext i8 %i.iv to i32
  %i.ix = and i32 %i.iw, 16
  %i.iy = icmp ne i32 %i.ix, 0
  br i1 %i.iy, label %bb.ea, label %bb.ec

bb.ea:                                            ; preds = %bb.dz
  %i.iz = load ptr, ptr %i.j, align 8
  %38 = getelementptr inbounds nuw %struct.prte_node_t, ptr %i.iz, i32 0, i32 12
  %i.ja = load i32, ptr %38, align 4
  %i.jb = load ptr, ptr %i.i, align 8
  %39 = getelementptr inbounds nuw %struct.prte_node_t, ptr %i.jb, i32 0, i32 12
  %i.jc = load i32, ptr %39, align 4
  %i.jd = icmp slt i32 %i.ja, %i.jc
  br i1 %i.jd, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %i.je = load ptr, ptr %i.j, align 8
  %40 = getelementptr inbounds nuw %struct.prte_node_t, ptr %i.je, i32 0, i32 12
  %i.jf = load i32, ptr %40, align 4
  %i.jg = load ptr, ptr %i.i, align 8
  %41 = getelementptr inbounds nuw %struct.prte_node_t, ptr %i.jg, i32 0, i32 12
  store i32 %i.jf, ptr %41, align 4
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.ea, %bb.dz
  %i.jh = load i8, ptr %i.d, align 1
  %i.ji = icmp ne i8 %i.jh, 0
  br i1 %i.ji, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %i.jj = load ptr, ptr %i.b, align 8
  %i.jk = load ptr, ptr %i.e, align 8
  %i.jl = call ptr @pmix_list_remove_item(ptr noundef %i.jj, ptr noundef %i.jk) ; 0 uses
  %i.jm = load ptr, ptr %i.e, align 8
  call void @_pmix_list_append(ptr noundef %5, ptr noundef %i.jm)
  br label %bb.ef

bb.ee:                                            ; preds = %bb.ec
  %i.jn = load ptr, ptr %i.i, align 8
  %42 = getelementptr inbounds nuw %struct.prte_node_t, ptr %i.jn, i32 0, i32 17 ; 2 uses
  %i.jo = load i8, ptr %42, align 8
  %i.jp = zext i8 %i.jo to i32
  %i.jq = or i32 %i.jp, 8
  %i.jr = trunc nuw i32 %i.jq to i8
  store i8 %i.jr, ptr %42, align 8
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.ed
  store i8 1, ptr %i.r, align 1
  br label %bb.el

bb.eg:                                            ; preds = %bb.dy
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.js = load ptr, ptr %i.e, align 8
  %i.jt = icmp ne ptr %i.js, null
  br i1 %i.jt, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  %i.ju = load ptr, ptr %i.e, align 8
  %43 = getelementptr inbounds nuw %struct.pmix_list_item_t, ptr %i.ju, i32 0, i32 1
  %i.jv = load ptr, ptr %43, align 8
  br label %bb.ek

bb.ej:                                            ; preds = %bb.eh
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.ei
  %i.jw = phi ptr [ %i.jv, %bb.ei ], [ null, %bb.ej ]
  store ptr %i.jw, ptr %i.e, align 8
  br label %bb.dx, !llvm.loop !21

bb.el:                                            ; preds = %bb.ef, %bb.dx
  %i.jx = load i8, ptr %i.r, align 1
  %i.jy = icmp ne i8 %i.jx, 0
  br i1 %i.jy, label %bb.en, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.jz = load ptr, ptr %i.c, align 8
  %i.ka = load ptr, ptr %i.j, align 8
  %44 = getelementptr inbounds nuw %struct.prte_node_t, ptr %i.ka, i32 0, i32 2
  %i.kb = load ptr, ptr %44, align 8
  %i.kc = call i32 (ptr, ptr, i32, ...) @pmix_show_help(ptr noundef @.str.1, ptr noundef @.str.8, i32 noundef 1, ptr noundef %i.jz, ptr noundef %i.kb) ; 0 uses
  store i32 -43, ptr %i.m, align 4
  br label %bb.gf

bb.en:                                            ; preds = %bb.el
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.dv
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.kd = load ptr, ptr %i.f, align 8
  store ptr %i.kd, ptr %i.v, align 8
  %i.ke = load ptr, ptr %i.v, align 8             ; 3 uses
  %i.kf = call i32 @pthread_mutex_lock(ptr noundef %i.ke) #13
  %i.kg = icmp eq i32 %i.kf, 35
  br i1 %i.kg, label %bb.eq, label %pmix_obj_update.exit2

bb.eq:                                            ; preds = %bb.ep
  %i.kh = call ptr @__errno_location() #14
  store i32 35, ptr %i.kh, align 4
  call void @perror(ptr noundef nonnull @.str.33) #15
  call void @abort() #16
  unreachable

pmix_obj_update.exit2:                            ; preds = %bb.ep
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ke, i64 48 ; 2 uses
  %i.kj = load i32, ptr %i.ki, align 8
  %i.kk = add nsw i32 %i.kj, -1                   ; 2 uses
  store i32 %i.kk, ptr %i.ki, align 8
  %i.kl = call i32 @pthread_mutex_unlock(ptr noundef %i.ke) #13 ; 0 uses
  %i.km = icmp eq i32 0, %i.kk
  br i1 %i.km, label %bb.er, label %bb.ev

bb.er:                                            ; preds = %pmix_obj_update.exit2
  %i.kn = load ptr, ptr %i.v, align 8
  call void @pmix_obj_run_destructors(ptr noundef %i.kn)
  %i.ko = load ptr, ptr %i.v, align 8
  %45 = getelementptr inbounds nuw %struct.pmix_object_t, ptr %i.ko, i32 0, i32 3
  %46 = getelementptr inbounds nuw %struct.pmix_tma, ptr %45, i32 0, i32 5
  %i.kp = load ptr, ptr %46, align 8
  %i.kq = icmp ne ptr null, %i.kp
  br i1 %i.kq, label %bb.es, label %bb.et

bb.es:                                            ; preds = %bb.er
  %i.kr = load ptr, ptr %i.v, align 8
  %47 = getelementptr inbounds nuw %struct.pmix_object_t, ptr %i.kr, i32 0, i32 3
  %i.ks = load ptr, ptr %i.f, align 8
  call void @pmix_tma_free(ptr noundef %47, ptr noundef %i.ks)
  br label %bb.eu

bb.et:                                            ; preds = %bb.er
  %i.kt = load ptr, ptr %i.f, align 8
  call void @free(ptr noundef %i.kt) #13
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.es
  store ptr null, ptr %i.f, align 8
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %pmix_obj_update.exit2
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  br label %bb.br, !llvm.loop !22

bb.ex:                                            ; preds = %bb.br
  %i.ku = call i64 @pmix_list_get_size(ptr noundef %3)
  %i.kv = icmp ne i64 0, %i.ku
  br i1 %i.kv, label %bb.ey, label %bb.fm

bb.ey:                                            ; preds = %bb.ex
  %i.kw = load ptr, ptr %i.c, align 8
  %i.kx = call i32 (ptr, ptr, i32, ...) @pmix_show_help(ptr noundef @.str.1, ptr noundef @.str.9, i32 noundef 1, ptr noundef %i.kw) ; 0 uses
  br label %bb.ez

bb.ez:                                            ; preds = %bb.fi, %bb.ey
  %i.ky = call ptr @pmix_list_remove_first(ptr noundef %3) ; 2 uses
  store ptr %i.ky, ptr %i.e, align 8
  %i.kz = icmp ne ptr null, %i.ky
  br i1 %i.kz, label %bb.fa, label %bb.fj

bb.fa:                                            ; preds = %bb.ez
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.la = load ptr, ptr %i.e, align 8
  store ptr %i.la, ptr %i.w, align 8
  %i.lb = load ptr, ptr %i.w, align 8             ; 3 uses
  %i.lc = call i32 @pthread_mutex_lock(ptr noundef %i.lb) #13
  %i.ld = icmp eq i32 %i.lc, 35
  br i1 %i.ld, label %bb.fc, label %pmix_obj_update.exit1

bb.fc:                                            ; preds = %bb.fb
  %i.le = call ptr @__errno_location() #14
  store i32 35, ptr %i.le, align 4
  call void @perror(ptr noundef nonnull @.str.33) #15
  call void @abort() #16
  unreachable

pmix_obj_update.exit1:                            ; preds = %bb.fb
  %i.lf = getelementptr inbounds nuw i8, ptr %i.lb, i64 48 ; 2 uses
  %i.lg = load i32, ptr %i.lf, align 8
  %i.lh = add nsw i32 %i.lg, -1                   ; 2 uses
  store i32 %i.lh, ptr %i.lf, align 8
  %i.li = call i32 @pthread_mutex_unlock(ptr noundef %i.lb) #13 ; 0 uses
  %i.lj = icmp eq i32 0, %i.lh
  br i1 %i.lj, label %bb.fd, label %bb.fh

bb.fd:                                            ; preds = %pmix_obj_update.exit1
  %i.lk = load ptr, ptr %i.w, align 8
  call void @pmix_obj_run_destructors(ptr noundef %i.lk)
  %i.ll = load ptr, ptr %i.w, align 8
  %48 = getelementptr inbounds nuw %struct.pmix_object_t, ptr %i.ll, i32 0, i32 3
  %49 = getelementptr inbounds nuw %struct.pmix_tma, ptr %48, i32 0, i32 5
  %i.lm = load ptr, ptr %49, align 8
  %i.ln = icmp ne ptr null, %i.lm
  br i1 %i.ln, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  %i.lo = load ptr, ptr %i.w, align 8
  %50 = getelementptr inbounds nuw %struct.pmix_object_t, ptr %i.lo, i32 0, i32 3
  %i.lp = load ptr, ptr %i.e, align 8
  call void @pmix_tma_free(ptr noundef %50, ptr noundef %i.lp)
  br label %bb.fg

bb.ff:                                            ; preds = %bb.fd
  %i.lq = load ptr, ptr %i.e, align 8
  call void @free(ptr noundef %i.lq) #13
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fe
  store ptr null, ptr %i.e, align 8
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %pmix_obj_update.exit1
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  br label %bb.ez, !llvm.loop !23

bb.fj:                                            ; preds = %bb.ez
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  call void @pmix_obj_run_destructors(ptr noundef %3)
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  store i32 -43, ptr %i.a, align 4
  br label %bb.gi

bb.fm:                                            ; preds = %bb.ex
  %i.lr = load i8, ptr %i.d, align 1
  %i.ls = icmp ne i8 %i.lr, 0
  br i1 %i.ls, label %bb.fq, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  call void @pmix_obj_run_destructors(ptr noundef %3)
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  store i32 0, ptr %i.a, align 4
  br label %bb.gi

bb.fq:                                            ; preds = %bb.fm
  br label %bb.fr

bb.fr:                                            ; preds = %bb.ga, %bb.fq
  %i.lt = load ptr, ptr %i.b, align 8
  %i.lu = call ptr @pmix_list_remove_first(ptr noundef %i.lt) ; 2 uses
  store ptr %i.lu, ptr %i.e, align 8
  %i.lv = icmp ne ptr null, %i.lu
  br i1 %i.lv, label %bb.fs, label %bb.gb

bb.fs:                                            ; preds = %bb.fr
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.lw = load ptr, ptr %i.e, align 8
  store ptr %i.lw, ptr %i.x, align 8
  %i.lx = load ptr, ptr %i.x, align 8             ; 3 uses
  %i.ly = call i32 @pthread_mutex_lock(ptr noundef %i.lx) #13
  %i.lz = icmp eq i32 %i.ly, 35
  br i1 %i.lz, label %bb.fu, label %pmix_obj_update.exit

bb.fu:                                            ; preds = %bb.ft
  %i.ma = call ptr @__errno_location() #14
end_hunk_1
begin_hunk_2_@prte_util_filter_hostfile_nodes:bb.a
; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pmix_list_get_size(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = load ptr, ptr %i.a, align 8
  %1 = getelementptr inbounds nuw %struct.pmix_list_t, ptr %i.b, i32 0, i32 2
  %i.c = load volatile i64, ptr %1, align 8
  ret i64 %i.c
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @pmix_list_get_first(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  store ptr %0, ptr %i.a, align 8
  %i.c = load ptr, ptr %i.a, align 8
  %1 = getelementptr inbounds nuw %struct.pmix_list_t, ptr %i.c, i32 0, i32 1
  %2 = getelementptr inbounds nuw %struct.pmix_list_item_t, ptr %1, i32 0, i32 1
  %i.d = load ptr, ptr %2, align 8
  store ptr %i.d, ptr %i.b, align 8
  %i.e = load ptr, ptr %i.b, align 8
  ret ptr %i.e
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @pmix_list_get_end(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = load ptr, ptr %i.a, align 8
  %1 = getelementptr inbounds nuw %struct.pmix_list_t, ptr %i.b, i32 0, i32 1
  ret ptr %1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @pmix_pointer_array_get_item(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 2 uses
  store ptr %0, ptr %i.b, align 8
  store i32 %1, ptr %i.c, align 4
  %i.e = load i32, ptr %i.c, align 4
  %i.f = icmp sgt i32 0, %i.e
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.b, align 8
  %2 = getelementptr inbounds nuw %struct.pmix_pointer_array_t, ptr %i.g, i32 0, i32 3
  %i.h = load i32, ptr %2, align 8
  %i.i = load i32, ptr %i.c, align 4
  %i.j = icmp sle i32 %i.h, %i.i
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = phi i1 [ true, %bb.a ], [ %i.j, %bb.b ]
  %i.l = xor i1 %i.k, true
  %i.m = xor i1 %i.l, true
  %i.n = zext i1 %i.m to i32
  %i.o = zext nneg i32 %i.n to i64
  %i.p = icmp ne i64 %i.o, 0
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.a, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.b, align 8
  %3 = getelementptr inbounds nuw %struct.pmix_pointer_array_t, ptr %i.q, i32 0, i32 7
  %i.r = load ptr, ptr %3, align 8
  %i.s = load i32, ptr %i.c, align 4
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds ptr, ptr %i.r, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8
  store ptr %i.v, ptr %i.d, align 8
  %i.w = load ptr, ptr %i.d, align 8
  store ptr %i.w, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.x = load ptr, ptr %i.a, align 8
  ret ptr %i.x
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @prte_util_get_ordered_host_list(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 11 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %2 = alloca %struct.pmix_list_t, align 8        ; 7 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 11 uses
  %i.e = alloca ptr, align 8                      ; 17 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 7 uses
  %i.i = alloca i32, align 4                      ; 6 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %i.k = alloca i32, align 4                      ; 5 uses
  %i.l = alloca i8, align 1                       ; 3 uses
  %i.m = alloca ptr, align 8                      ; 11 uses
  %i.n = alloca ptr, align 8                      ; 10 uses
  %i.o = alloca i32, align 4                      ; 5 uses
  %i.p = alloca ptr, align 8                      ; 14 uses
  %i.q = alloca ptr, align 8                      ; 5 uses
  %i.r = alloca ptr, align 8                      ; 5 uses
  %i.s = alloca ptr, align 8                      ; 2 uses
  %i.t = alloca ptr, align 8                      ; 2 uses
  %i.u = alloca ptr, align 8                      ; 5 uses
  %i.v = alloca ptr, align 8                      ; 5 uses
  store ptr %0, ptr %i.a, align 8
  store ptr %1, ptr %i.b, align 8
  store i32 0, ptr %i.k, align 4
  store i8 0, ptr %i.l, align 1
  %i.w = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_ras_base_framework, i64 76), align 4
  %i.x = icmp sge i32 %i.w, 0
  br i1 %i.x, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.y = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_ras_base_framework, i64 76), align 4
  %i.z = icmp slt i32 %i.y, 64
  br i1 %i.z, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.aa = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_ras_base_framework, i64 76), align 4
  %i.ab = sext i32 %i.aa to i64
  %3 = getelementptr inbounds [0 x %struct.pmix_output_desc_t], ptr @pmix_output_info, i64 0, i64 %i.ab
  %4 = getelementptr inbounds nuw %struct.pmix_output_desc_t, ptr %3, i32 0, i32 2
  %i.ac = load i32, ptr %4, align 4
  %i.ad = icmp sge i32 %i.ac, 1
  br i1 %i.ad, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ae = load i32, ptr getelementptr inbounds nuw (i8, ptr @prte_ras_base_framework, i64 76), align 4
  %i.af = call ptr @prte_util_print_name_args(ptr noundef @prte_process_info)
  %i.ag = load ptr, ptr %i.b, align 8
  call void (i32, ptr, ...) @pmix_output(i32 noundef %i.ae, ptr noundef @.str.10, ptr noundef %i.af, ptr noundef %i.ag)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  br label %bb.f

bb.f:                                             ; preds = %bb.e
  br label %bb.g

bb.g:                                             ; preds = %bb.f
  br label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = load i32, ptr @pmix_class_init_epoch, align 4
  %i.ai = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_list_t_class, i64 32), align 8
  %i.aj = icmp ne i32 %i.ah, %i.ai
  br i1 %i.aj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @pmix_class_initialize(ptr noundef @pmix_list_t_class)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %5 = getelementptr inbounds nuw %struct.pmix_object_t, ptr %2, i32 0, i32 1
  store ptr @pmix_list_t_class, ptr %5, align 8
  %6 = getelementptr inbounds nuw %struct.pmix_object_t, ptr %2, i32 0, i32 2
  store i32 1, ptr %6, align 8
  call void @pmix_obj_construct_tma(ptr noundef %2, ptr noundef null)
  call void @pmix_obj_run_constructors(ptr noundef %2)
  br label %bb.k

bb.k:                                             ; preds = %bb.j
  br label %bb.l

bb.l:                                             ; preds = %bb.k
  br label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = load ptr, ptr %i.b, align 8
  %i.al = load ptr, ptr %i.a, align 8
  %i.am = call i32 @hostfile_parse(ptr noundef %i.ak, ptr noundef %i.al, ptr noundef %2, i1 noundef zeroext true) ; 2 uses
  store i32 %i.am, ptr %i.o, align 4
  %i.an = icmp ne i32 0, %i.am
  br i1 %i.an, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  br label %bb.da

bb.o:                                             ; preds = %bb.m
  %i.ao = load ptr, ptr %i.a, align 8
  %i.ap = call ptr @pmix_list_get_first(ptr noundef %i.ao)
  store ptr %i.ap, ptr %i.e, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.bw, %bb.u, %bb.o
  %i.aq = load ptr, ptr %i.e, align 8
  %i.ar = load ptr, ptr %i.a, align 8
  %i.as = call ptr @pmix_list_get_end(ptr noundef %i.ar)
  %i.at = icmp ne ptr %i.aq, %i.as
  br i1 %i.at, label %bb.q, label %bb.bx

bb.q:                                             ; preds = %bb.p
  %i.au = load ptr, ptr %i.e, align 8
  store ptr %i.au, ptr %i.p, align 8
  %i.av = load ptr, ptr %i.e, align 8
  %i.aw = icmp ne ptr %i.av, null
  br i1 %i.aw, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ax = load ptr, ptr %i.e, align 8
  %7 = getelementptr inbounds nuw %struct.pmix_list_item_t, ptr %i.ax, i32 0, i32 1
  %i.ay = load ptr, ptr %7, align 8
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.az = phi ptr [ %i.ay, %bb.r ], [ null, %bb.s ]
  store ptr %i.az, ptr %i.f, align 8
  %i.ba = load ptr, ptr %i.p, align 8
  %8 = getelementptr inbounds nuw %struct.prte_node_t, ptr %i.ba, i32 0, i32 2
  %i.bb = load ptr, ptr %8, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 0
  %i.bd = load i8, ptr %i.bc, align 1
  %i.be = sext i8 %i.bd to i32
  %i.bf = icmp ne i32 43, %i.be
  br i1 %i.bf, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bg = load ptr, ptr %i.f, align 8
  store ptr %i.bg, ptr %i.e, align 8
  br label %bb.p, !llvm.loop !26

bb.v:                                             ; preds = %bb.t
  %i.bh = load ptr, ptr %i.p, align 8
  %9 = getelementptr inbounds nuw %struct.prte_node_t, ptr %i.bh, i32 0, i32 2
  %i.bi = load ptr, ptr %9, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  %i.bk = load i8, ptr %i.bj, align 1
  %i.bl = sext i8 %i.bk to i32
  %i.bm = icmp eq i32 101, %i.bl
  br i1 %i.bm, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bn = load ptr, ptr %i.p, align 8
  %10 = getelementptr inbounds nuw %struct.prte_node_t, ptr %i.bn, i32 0, i32 2
  %i.bo = load ptr, ptr %10, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  %i.bq = load i8, ptr %i.bp, align 1
  %i.br = sext i8 %i.bq to i32
  %i.bs = icmp eq i32 69, %i.br
  br i1 %i.bs, label %bb.x, label %bb.bc

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bt = load ptr, ptr %i.p, align 8
  %11 = getelementptr inbounds nuw %struct.prte_node_t, ptr %i.bt, i32 0, i32 2
  %i.bu = load ptr, ptr %11, align 8
  %i.bv = call ptr @strchr(ptr noundef %i.bu, i32 noundef 58) #17 ; 2 uses
  store ptr %i.bv, ptr %i.g, align 8
  %i.bw = icmp ne ptr null, %i.bv
  br i1 %i.bw, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bx = load ptr, ptr %i.g, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i32 1
  store ptr %i.by, ptr %i.g, align 8
  %i.bz = load ptr, ptr %i.g, align 8
  %i.ca = call i64 @__isoc23_strtol(ptr noundef %i.bz, ptr noundef null, i32 noundef 10) #13
  %i.cb = trunc i64 %i.ca to i32
  store i32 %i.cb, ptr %i.h, align 4
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  store i32 2147483647, ptr %i.h, align 4
  store i8 1, ptr %i.l, align 1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.cc = load i8, ptr @prte_hnp_is_allocated, align 1
  %i.cd = icmp ne i8 %i.cc, 0
  br i1 %i.cd, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ce = load i32, ptr %i.k, align 4
  %i.cf = icmp eq i32 0, %i.ce
  br i1 %i.cf, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 1, ptr %i.k, align 4
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.cg = load i32, ptr %i.k, align 4
  store i32 %i.cg, ptr %i.i, align 4
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ap, %bb.ad
  %i.ch = load i32, ptr %i.h, align 4
  %i.ci = icmp slt i32 0, %i.ch
  br i1 %i.ci, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.cj = load i32, ptr %i.i, align 4
  %i.ck = load ptr, ptr @prte_node_pool, align 8
  %12 = getelementptr inbounds nuw %struct.pmix_pointer_array_t, ptr %i.ck, i32 0, i32 3
  %i.cl = load i32, ptr %12, align 8
  %i.cm = icmp slt i32 %i.cj, %i.cl
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.cn = phi i1 [ false, %bb.ae ], [ %i.cm, %bb.af ]
  br i1 %i.cn, label %bb.ah, label %bb.aq

bb.ah:                                            ; preds = %bb.ag
  %i.co = load ptr, ptr @prte_node_pool, align 8
  %i.cp = load i32, ptr %i.i, align 4
  %i.cq = call ptr @pmix_pointer_array_get_item(ptr noundef %i.co, i32 noundef %i.cp)
  store ptr %i.cq, ptr %i.m, align 8
  %i.cr = load ptr, ptr %i.m, align 8
  %i.cs = icmp eq ptr null, %i.cr
  br i1 %i.cs, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  br label %bb.ap

bb.aj:                                            ; preds = %bb.ah
  %i.ct = load ptr, ptr %i.m, align 8
  %13 = getelementptr inbounds nuw %struct.prte_node_t, ptr %i.ct, i32 0, i32 14
  %i.cu = load i32, ptr %13, align 4
  %i.cv = icmp eq i32 0, %i.cu
  br i1 %i.cv, label %bb.ak, label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  %i.cw = call ptr @pmix_obj_new_tma(ptr noundef @prte_node_t_class, ptr noundef null)
  store ptr %i.cw, ptr %i.n, align 8
  %i.cx = load ptr, ptr %i.m, align 8
  %14 = getelementptr inbounds nuw %struct.prte_node_t, ptr %i.cx, i32 0, i32 2
  %i.cy = load ptr, ptr %14, align 8
  %i.cz = call noalias ptr @strdup(ptr noundef %i.cy) #13
  %i.da = load ptr, ptr %i.n, align 8
  %15 = getelementptr inbounds nuw %struct.prte_node_t, ptr %i.da, i32 0, i32 2
  store ptr %i.cz, ptr %15, align 8
  %i.db = load ptr, ptr %i.p, align 8
  %16 = getelementptr inbounds nuw %struct.prte_node_t, ptr %i.db, i32 0, i32 12
  %i.dc = load i32, ptr %16, align 4
  %i.dd = load ptr, ptr %i.m, align 8
  %17 = getelementptr inbounds nuw %struct.prte_node_t, ptr %i.dd, i32 0, i32 12
  %i.de = load i32, ptr %17, align 4
  %i.df = icmp slt i32 %i.dc, %i.de
  br i1 %i.df, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.dg = load ptr, ptr %i.p, align 8
  %18 = getelementptr inbounds nuw %struct.prte_node_t, ptr %i.dg, i32 0, i32 12
  %i.dh = load i32, ptr %18, align 4
  %i.di = load ptr, ptr %i.n, align 8
  %19 = getelementptr inbounds nuw %struct.prte_node_t, ptr %i.di, i32 0, i32 12
  store i32 %i.dh, ptr %19, align 4
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.dj = load ptr, ptr %i.m, align 8
  %20 = getelementptr inbounds nuw %struct.prte_node_t, ptr %i.dj, i32 0, i32 12
  %i.dk = load i32, ptr %20, align 4
  %i.dl = load ptr, ptr %i.n, align 8
  %21 = getelementptr inbounds nuw %struct.prte_node_t, ptr %i.dl, i32 0, i32 12
  store i32 %i.dk, ptr %21, align 4
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.dm = load ptr, ptr %i.a, align 8
  %i.dn = load ptr, ptr %i.f, align 8
  %i.do = load ptr, ptr %i.n, align 8
  %22 = getelementptr inbounds nuw %struct.prte_node_t, ptr %i.do, i32 0, i32 0
  call void @pmix_list_insert_pos(ptr noundef %i.dm, ptr noundef %i.dn, ptr noundef %22)
  %i.dp = load i32, ptr %i.h, align 4
  %i.dq = add nsw i32 %i.dp, -1
  store i32 %i.dq, ptr %i.h, align 4
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.aj
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.ai
  %i.dr = load i32, ptr %i.i, align 4
  %i.ds = add nsw i32 %i.dr, 1
  store i32 %i.ds, ptr %i.i, align 4
  br label %bb.ae, !llvm.loop !27

bb.aq:                                            ; preds = %bb.ag
  %i.dt = load i32, ptr %i.i, align 4
  store i32 %i.dt, ptr %i.k, align 4
  %i.du = load i8, ptr %i.l, align 1
  %i.dv = icmp ne i8 %i.du, 0
  br i1 %i.dv, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dw = load i32, ptr %i.h, align 4
  %i.dx = icmp slt i32 0, %i.dw
  br i1 %i.dx, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.dy = load i32, ptr %i.h, align 4
  %i.dz = call i32 (ptr, ptr, i32, ...) @pmix_show_help(ptr noundef @.str.1, ptr noundef @.str.5, i32 noundef 1, i32 noundef %i.dy) ; 0 uses
  store i32 -43, ptr %i.o, align 4
  br label %bb.da

bb.at:                                            ; preds = %bb.ar, %bb.aq
  %i.ea = load ptr, ptr %i.a, align 8
  %i.eb = load ptr, ptr %i.e, align 8
  %i.ec = call ptr @pmix_list_remove_item(ptr noundef %i.ea, ptr noundef %i.eb) ; 0 uses
  br label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ed = load ptr, ptr %i.e, align 8
  store ptr %i.ed, ptr %i.q, align 8
  %i.ee = load ptr, ptr %i.q, align 8             ; 3 uses
  %i.ef = call i32 @pthread_mutex_lock(ptr noundef %i.ee) #13
  %i.eg = icmp eq i32 %i.ef, 35
  br i1 %i.eg, label %bb.av, label %pmix_obj_update.exit3

bb.av:                                            ; preds = %bb.au
  %i.eh = call ptr @__errno_location() #14
  store i32 35, ptr %i.eh, align 4
  call void @perror(ptr noundef nonnull @.str.33) #15
  call void @abort() #16
  unreachable

pmix_obj_update.exit3:                            ; preds = %bb.au
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 48 ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 8
end_hunk_2
begin_hunk_3_@prte_util_get_ordered_host_list:bb.a
  %i.ep = load ptr, ptr %24, align 8
  %i.eq = icmp ne ptr null, %i.ep
  br i1 %i.eq, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.er = load ptr, ptr %i.q, align 8
  %25 = getelementptr inbounds nuw %struct.pmix_object_t, ptr %i.er, i32 0, i32 3
  %i.es = load ptr, ptr %i.e, align 8
  call void @pmix_tma_free(ptr noundef %25, ptr noundef %i.es)
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw
  %i.et = load ptr, ptr %i.e, align 8
  call void @free(ptr noundef %i.et) #13
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  store ptr null, ptr %i.e, align 8
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %pmix_obj_update.exit3
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  br label %bb.bw

bb.bc:                                            ; preds = %bb.w
  %i.eu = load ptr, ptr %i.p, align 8
  %26 = getelementptr inbounds nuw %struct.prte_node_t, ptr %i.eu, i32 0, i32 2
  %i.ev = load ptr, ptr %26, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 1
  %i.ex = load i8, ptr %i.ew, align 1
  %i.ey = sext i8 %i.ex to i32
  %i.ez = icmp eq i32 110, %i.ey
  br i1 %i.ez, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fa = load ptr, ptr %i.p, align 8
  %27 = getelementptr inbounds nuw %struct.prte_node_t, ptr %i.fa, i32 0, i32 2
  %i.fb = load ptr, ptr %27, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 1
  %i.fd = load i8, ptr %i.fc, align 1
  %i.fe = sext i8 %i.fd to i32
  %i.ff = icmp eq i32 78, %i.fe
  br i1 %i.ff, label %bb.be, label %bb.bu

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.fg = load ptr, ptr %i.p, align 8
  %28 = getelementptr inbounds nuw %struct.prte_node_t, ptr %i.fg, i32 0, i32 2
  %i.fh = load ptr, ptr %28, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 2
  %i.fj = call i64 @__isoc23_strtol(ptr noundef %i.fi, ptr noundef null, i32 noundef 10) #13
  %i.fk = trunc i64 %i.fj to i32
  store i32 %i.fk, ptr %i.j, align 4
  %i.fl = load i8, ptr @prte_hnp_is_allocated, align 1
  %i.fm = icmp ne i8 %i.fl, 0
  br i1 %i.fm, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.fn = load i32, ptr %i.j, align 4
  %i.fo = add nsw i32 %i.fn, 1
  store i32 %i.fo, ptr %i.j, align 4
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.fp = load ptr, ptr @prte_node_pool, align 8
  %i.fq = load i32, ptr %i.j, align 4
  %i.fr = call ptr @pmix_pointer_array_get_item(ptr noundef %i.fp, i32 noundef %i.fq)
  store ptr %i.fr, ptr %i.m, align 8
  %i.fs = load ptr, ptr %i.m, align 8
  %i.ft = icmp eq ptr null, %i.fs
  br i1 %i.ft, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.fu = load i32, ptr %i.j, align 4
  %i.fv = load ptr, ptr %i.p, align 8
  %29 = getelementptr inbounds nuw %struct.prte_node_t, ptr %i.fv, i32 0, i32 2
  %i.fw = load ptr, ptr %29, align 8
  %i.fx = call i32 (ptr, ptr, i32, ...) @pmix_show_help(ptr noundef @.str.1, ptr noundef @.str.6, i32 noundef 1, i32 noundef %i.fu, ptr noundef %i.fw) ; 0 uses
  store i32 -43, ptr %i.o, align 4
  br label %bb.da

bb.bi:                                            ; preds = %bb.bg
  %i.fy = call ptr @pmix_obj_new_tma(ptr noundef @prte_node_t_class, ptr noundef null)
  store ptr %i.fy, ptr %i.n, align 8
  %i.fz = load ptr, ptr %i.m, align 8
  %30 = getelementptr inbounds nuw %struct.prte_node_t, ptr %i.fz, i32 0, i32 2
  %i.ga = load ptr, ptr %30, align 8
  %i.gb = call noalias ptr @strdup(ptr noundef %i.ga) #13
  %i.gc = load ptr, ptr %i.n, align 8
  %31 = getelementptr inbounds nuw %struct.prte_node_t, ptr %i.gc, i32 0, i32 2
  store ptr %i.gb, ptr %31, align 8
  %i.gd = load ptr, ptr %i.p, align 8
  %32 = getelementptr inbounds nuw %struct.prte_node_t, ptr %i.gd, i32 0, i32 12
  %i.ge = load i32, ptr %32, align 4
  %i.gf = load ptr, ptr %i.m, align 8
  %33 = getelementptr inbounds nuw %struct.prte_node_t, ptr %i.gf, i32 0, i32 12
  %i.gg = load i32, ptr %33, align 4
  %i.gh = icmp slt i32 %i.ge, %i.gg
  br i1 %i.gh, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.gi = load ptr, ptr %i.p, align 8
  %34 = getelementptr inbounds nuw %struct.prte_node_t, ptr %i.gi, i32 0, i32 12
  %i.gj = load i32, ptr %34, align 4
  %i.gk = load ptr, ptr %i.n, align 8
  %35 = getelementptr inbounds nuw %struct.prte_node_t, ptr %i.gk, i32 0, i32 12
  store i32 %i.gj, ptr %35, align 4
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bi
  %i.gl = load ptr, ptr %i.m, align 8
  %36 = getelementptr inbounds nuw %struct.prte_node_t, ptr %i.gl, i32 0, i32 12
  %i.gm = load i32, ptr %36, align 4
  %i.gn = load ptr, ptr %i.n, align 8
  %37 = getelementptr inbounds nuw %struct.prte_node_t, ptr %i.gn, i32 0, i32 12
  store i32 %i.gm, ptr %37, align 4
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.go = load ptr, ptr %i.a, align 8
  %i.gp = load ptr, ptr %i.f, align 8
  %i.gq = load ptr, ptr %i.n, align 8
  %38 = getelementptr inbounds nuw %struct.prte_node_t, ptr %i.gq, i32 0, i32 0
  call void @pmix_list_insert_pos(ptr noundef %i.go, ptr noundef %i.gp, ptr noundef %38)
  %i.gr = load ptr, ptr %i.a, align 8
  %i.gs = load ptr, ptr %i.e, align 8
  %i.gt = call ptr @pmix_list_remove_item(ptr noundef %i.gr, ptr noundef %i.gs) ; 0 uses
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.gu = load ptr, ptr %i.e, align 8
  store ptr %i.gu, ptr %i.r, align 8
  %i.gv = load ptr, ptr %i.r, align 8             ; 3 uses
  %i.gw = call i32 @pthread_mutex_lock(ptr noundef %i.gv) #13
  %i.gx = icmp eq i32 %i.gw, 35
  br i1 %i.gx, label %bb.bn, label %pmix_obj_update.exit2

bb.bn:                                            ; preds = %bb.bm
  %i.gy = call ptr @__errno_location() #14
  store i32 35, ptr %i.gy, align 4
  call void @perror(ptr noundef nonnull @.str.33) #15
  call void @abort() #16
  unreachable

pmix_obj_update.exit2:                            ; preds = %bb.bm
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gv, i64 48 ; 2 uses
  %i.ha = load i32, ptr %i.gz, align 8
  %i.hb = add nsw i32 %i.ha, -1                   ; 2 uses
  store i32 %i.hb, ptr %i.gz, align 8
  %i.hc = call i32 @pthread_mutex_unlock(ptr noundef %i.gv) #13 ; 0 uses
  %i.hd = icmp eq i32 0, %i.hb
  br i1 %i.hd, label %bb.bo, label %bb.bs

bb.bo:                                            ; preds = %pmix_obj_update.exit2
  %i.he = load ptr, ptr %i.r, align 8
  call void @pmix_obj_run_destructors(ptr noundef %i.he)
  %i.hf = load ptr, ptr %i.r, align 8
  %39 = getelementptr inbounds nuw %struct.pmix_object_t, ptr %i.hf, i32 0, i32 3
  %40 = getelementptr inbounds nuw %struct.pmix_tma, ptr %39, i32 0, i32 5
  %i.hg = load ptr, ptr %40, align 8
  %i.hh = icmp ne ptr null, %i.hg
  br i1 %i.hh, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.hi = load ptr, ptr %i.r, align 8
  %41 = getelementptr inbounds nuw %struct.pmix_object_t, ptr %i.hi, i32 0, i32 3
  %i.hj = load ptr, ptr %i.e, align 8
  call void @pmix_tma_free(ptr noundef %41, ptr noundef %i.hj)
  br label %bb.br

bb.bq:                                            ; preds = %bb.bo
  %i.hk = load ptr, ptr %i.e, align 8
  call void @free(ptr noundef %i.hk) #13
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  store ptr null, ptr %i.e, align 8
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %pmix_obj_update.exit2
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bd
  %i.hl = load ptr, ptr %i.p, align 8
  %42 = getelementptr inbounds nuw %struct.prte_node_t, ptr %i.hl, i32 0, i32 2
  %i.hm = load ptr, ptr %42, align 8
  %i.hn = call i32 (ptr, ptr, i32, ...) @pmix_show_help(ptr noundef @.str.1, ptr noundef @.str.7, i32 noundef 1, ptr noundef %i.hm) ; 0 uses
  store i32 -43, ptr %i.o, align 4
  br label %bb.da

bb.bv:                                            ; preds = %bb.bt
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bb
  %i.ho = load ptr, ptr %i.f, align 8
  store ptr %i.ho, ptr %i.e, align 8
  br label %bb.p, !llvm.loop !26

bb.bx:                                            ; preds = %bb.p
  br label %bb.by

bb.by:                                            ; preds = %bb.cy, %bb.bx
  %i.hp = call ptr @pmix_list_remove_first(ptr noundef %2) ; 2 uses
  store ptr %i.hp, ptr %i.c, align 8
  %i.hq = icmp ne ptr null, %i.hp
  br i1 %i.hq, label %bb.bz, label %bb.cz

bb.bz:                                            ; preds = %bb.by
  %i.hr = load ptr, ptr %i.c, align 8
  store ptr %i.hr, ptr %i.s, align 8
  %i.hs = load ptr, ptr %i.a, align 8
  %i.ht = call ptr @pmix_list_get_first(ptr noundef %i.hs)
  store ptr %i.ht, ptr %i.d, align 8
  br label %bb.ca

bb.ca:                                            ; preds = %bb.cp, %bb.bz
  %i.hu = load ptr, ptr %i.d, align 8
  %i.hv = load ptr, ptr %i.a, align 8
  %i.hw = call ptr @pmix_list_get_end(ptr noundef %i.hv)
  %i.hx = icmp ne ptr %i.hu, %i.hw
  br i1 %i.hx, label %bb.cb, label %bb.cq

bb.cb:                                            ; preds = %bb.ca
  %i.hy = load ptr, ptr %i.d, align 8
  store ptr %i.hy, ptr %i.t, align 8
  %i.hz = load ptr, ptr %i.s, align 8
  %i.ia = load ptr, ptr %i.t, align 8
  %i.ib = call zeroext i1 @prte_nptr_match(ptr noundef %i.hz, ptr noundef %i.ia)
  br i1 %i.ib, label %bb.cc, label %bb.cl

bb.cc:                                            ; preds = %bb.cb
  %i.ic = load ptr, ptr %i.a, align 8
  %i.id = load ptr, ptr %i.d, align 8
  %i.ie = call ptr @pmix_list_remove_item(ptr noundef %i.ic, ptr noundef %i.id) ; 0 uses
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.if = load ptr, ptr %i.d, align 8
  store ptr %i.if, ptr %i.u, align 8
  %i.ig = load ptr, ptr %i.u, align 8             ; 3 uses
  %i.ih = call i32 @pthread_mutex_lock(ptr noundef %i.ig) #13
  %i.ii = icmp eq i32 %i.ih, 35
  br i1 %i.ii, label %bb.ce, label %pmix_obj_update.exit1

bb.ce:                                            ; preds = %bb.cd
  %i.ij = call ptr @__errno_location() #14
  store i32 35, ptr %i.ij, align 4
  call void @perror(ptr noundef nonnull @.str.33) #15
  call void @abort() #16
  unreachable

pmix_obj_update.exit1:                            ; preds = %bb.cd
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ig, i64 48 ; 2 uses
  %i.il = load i32, ptr %i.ik, align 8
  %i.im = add nsw i32 %i.il, -1                   ; 2 uses
  store i32 %i.im, ptr %i.ik, align 8
  %i.in = call i32 @pthread_mutex_unlock(ptr noundef %i.ig) #13 ; 0 uses
  %i.io = icmp eq i32 0, %i.im
  br i1 %i.io, label %bb.cf, label %bb.cj

bb.cf:                                            ; preds = %pmix_obj_update.exit1
  %i.ip = load ptr, ptr %i.u, align 8
  call void @pmix_obj_run_destructors(ptr noundef %i.ip)
  %i.iq = load ptr, ptr %i.u, align 8
  %43 = getelementptr inbounds nuw %struct.pmix_object_t, ptr %i.iq, i32 0, i32 3
  %44 = getelementptr inbounds nuw %struct.pmix_tma, ptr %43, i32 0, i32 5
  %i.ir = load ptr, ptr %44, align 8
  %i.is = icmp ne ptr null, %i.ir
  br i1 %i.is, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.it = load ptr, ptr %i.u, align 8
  %45 = getelementptr inbounds nuw %struct.pmix_object_t, ptr %i.it, i32 0, i32 3
  %i.iu = load ptr, ptr %i.d, align 8
  call void @pmix_tma_free(ptr noundef %45, ptr noundef %i.iu)
  br label %bb.ci

bb.ch:                                            ; preds = %bb.cf
  %i.iv = load ptr, ptr %i.d, align 8
  call void @free(ptr noundef %i.iv) #13
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  store ptr null, ptr %i.d, align 8
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %pmix_obj_update.exit1
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cb
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.iw = load ptr, ptr %i.d, align 8
  %i.ix = icmp ne ptr %i.iw, null
  br i1 %i.ix, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.iy = load ptr, ptr %i.d, align 8
  %46 = getelementptr inbounds nuw %struct.pmix_list_item_t, ptr %i.iy, i32 0, i32 1
  %i.iz = load ptr, ptr %46, align 8
  br label %bb.cp

bb.co:                                            ; preds = %bb.cm
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %i.ja = phi ptr [ %i.iz, %bb.cn ], [ null, %bb.co ]
  store ptr %i.ja, ptr %i.d, align 8
  br label %bb.ca, !llvm.loop !28

bb.cq:                                            ; preds = %bb.ca
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.jb = load ptr, ptr %i.c, align 8
  store ptr %i.jb, ptr %i.v, align 8
  %i.jc = load ptr, ptr %i.v, align 8             ; 3 uses
  %i.jd = call i32 @pthread_mutex_lock(ptr noundef %i.jc) #13
  %i.je = icmp eq i32 %i.jd, 35
  br i1 %i.je, label %bb.cs, label %pmix_obj_update.exit

bb.cs:                                            ; preds = %bb.cr
  %i.jf = call ptr @__errno_location() #14
  store i32 35, ptr %i.jf, align 4
  call void @perror(ptr noundef nonnull @.str.33) #15
  call void @abort() #16
  unreachable

pmix_obj_update.exit:                             ; preds = %bb.cr
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jc, i64 48 ; 2 uses
  %i.jh = load i32, ptr %i.jg, align 8
  %i.ji = add nsw i32 %i.jh, -1                   ; 2 uses
  store i32 %i.ji, ptr %i.jg, align 8
  %i.jj = call i32 @pthread_mutex_unlock(ptr noundef %i.jc) #13 ; 0 uses
  %i.jk = icmp eq i32 0, %i.ji
  br i1 %i.jk, label %bb.ct, label %bb.cx

bb.ct:                                            ; preds = %pmix_obj_update.exit
  %i.jl = load ptr, ptr %i.v, align 8
  call void @pmix_obj_run_destructors(ptr noundef %i.jl)
  %i.jm = load ptr, ptr %i.v, align 8
  %47 = getelementptr inbounds nuw %struct.pmix_object_t, ptr %i.jm, i32 0, i32 3
  %48 = getelementptr inbounds nuw %struct.pmix_tma, ptr %47, i32 0, i32 5
  %i.jn = load ptr, ptr %48, align 8
  %i.jo = icmp ne ptr null, %i.jn
  br i1 %i.jo, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.jp = load ptr, ptr %i.v, align 8
  %49 = getelementptr inbounds nuw %struct.pmix_object_t, ptr %i.jp, i32 0, i32 3
  %i.jq = load ptr, ptr %i.c, align 8
  call void @pmix_tma_free(ptr noundef %49, ptr noundef %i.jq)
  br label %bb.cw

bb.cv:                                            ; preds = %bb.ct
  %i.jr = load ptr, ptr %i.c, align 8
  call void @free(ptr noundef %i.jr) #13
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  store ptr null, ptr %i.c, align 8
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %pmix_obj_update.exit
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  br label %bb.by, !llvm.loop !29

bb.cz:                                            ; preds = %bb.by
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.bu, %bb.bh, %bb.as, %bb.n
  br label %bb.db

bb.db:                                            ; preds = %bb.da
  call void @pmix_obj_run_destructors(ptr noundef %2)
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.js = load i32, ptr %i.o, align 4
  ret i32 %i.js
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @pmix_obj_new_tma(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 15 uses
  store ptr @prte_node_t_class, ptr %i.a, align 8
  store ptr null, ptr %i.b, align 8
  %i.d = load ptr, ptr %i.a, align 8
end_hunk_3
