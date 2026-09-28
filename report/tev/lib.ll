Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/lib?download=true
inline.NumInlined: 26
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@get_num_threads:bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = phi i32 [ %i.d, %bb.b ], [ %i.a, %bb.a ] ; 4 uses
  store i32 %i.e, ptr %2, align 4, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !17   ; 2 uses
  %.not12 = icmp eq i32 %i.g, 0
  br i1 %.not12, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call range(i32 1, 0) i32 @llvm.umin.i32(i32 range(i32 1, 0) %i.g, i32 range(i32 1, 0) %i.e)
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.i = icmp ult i32 %i.e, 50
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.j = zext nneg i32 %i.e to i64
  %i.k = getelementptr i8, ptr @get_num_threads.fc_lut, i64 %i.j
  %i.l = getelementptr i8, ptr %i.k, i64 -1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !18
  %i.n = zext i8 %i.m to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.o = phi i32 [ %i.h, %bb.d ], [ %i.n, %bb.f ], [ 8, %bb.e ]
  store i32 %i.o, ptr %3, align 4, !tbaa !15
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: cold nounwind optsize uwtable
define dso_local range(i32 -22, 1) i32 @dav1d_open(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %union.pthread_attr_t, align 8      ; 7 uses
  %i.d = tail call i32 @pthread_once(ptr noundef nonnull @dav1d_open.initted, ptr noundef nonnull @init_internal) #15 ; 0 uses
  %.not = icmp eq ptr %0, null
  %.not150 = icmp eq ptr %1, null
  %or.cond177 = or i1 %.not, %.not150
  br i1 %or.cond177, label %bb.ar, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 8, !tbaa !16
  %or.cond = icmp ult i32 %i.e, 257
  br i1 %or.cond, label %bb.c, label %bb.ar

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !17
  %or.cond175 = icmp ult i32 %i.g, 257
  br i1 %or.cond175, label %bb.d, label %bb.ar

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !13
  %.not151 = icmp eq ptr %i.j, null
  br i1 %.not151, label %bb.ar, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !14
  %.not152 = icmp eq ptr %i.l, null
  br i1 %.not152, label %bb.ar, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !132
  %or.cond176 = icmp ult i32 %i.n, 32
  br i1 %or.cond176, label %bb.g, label %bb.ar

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.p = load i32, ptr %i.o, align 4, !tbaa !133
  %i.q = icmp ult i32 %i.p, 4
  br i1 %i.q, label %bb.h, label %bb.ar

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.r = call i32 @pthread_attr_init(ptr noundef nonnull %2) #15
  %.not153 = icmp eq i32 %i.r, 0
  br i1 %.not153, label %bb.i, label %bb.aq

bb.i:                                             ; preds = %bb.h
  %i.s = call fastcc i64 @get_stack_size_internal(ptr noundef %2) #16
  %i.t = add i64 %i.s, 1048576
  %i.u = call i32 @pthread_attr_setstacksize(ptr noundef nonnull %2, i64 noundef %i.t) #15 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  %i.v = call i32 @posix_memalign(ptr noundef nonnull %i.c, i64 noundef 64, i64 noundef 63040) #15
  %.not4.i = icmp eq i32 %i.v, 0
  %i.w = load ptr, ptr %i.c, align 8              ; 28 uses
  %.0.i = select i1 %.not4.i, ptr %i.w, ptr null  ; 14 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  store ptr %.0.i, ptr %0, align 8, !tbaa !20
  %.not154 = icmp eq ptr %.0.i, null
  br i1 %.not154, label %.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(63040) %i.w, i8 0, i64 63040, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i, i64 62832 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !tbaa.struct !134
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 62968
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %i.z, i64 16, i1 false), !tbaa.struct !135
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 62856
  %i.ac = load <2 x i32>, ptr %i.aa, align 8, !tbaa !15
  store <2 x i32> %i.ac, ptr %i.ab, align 8, !tbaa !15
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !136
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 62868
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !48
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !137
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 62876
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !138
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.w, i64 62880
  %i.al = load <4 x i32>, ptr %i.aj, align 8, !tbaa !15
  store <4 x i32> %i.al, ptr %i.ak, align 32, !tbaa !15
  %i.am = getelementptr inbounds nuw i8, ptr %i.w, i64 62912
  call void @dav1d_data_props_set_defaults(ptr noundef nonnull %i.am) #15
  %i.an = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.ao = call i32 @dav1d_mem_pool_init(ptr noundef nonnull %i.an) #15
  %.not155 = icmp eq i32 %i.ao, 0
  br i1 %.not155, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %i.w, i64 80
  %i.aq = call i32 @dav1d_mem_pool_init(ptr noundef nonnull %i.ap) #15
  %.not156 = icmp eq i32 %i.aq, 0
  br i1 %.not156, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %i.w, i64 49920
  %i.as = call i32 @dav1d_mem_pool_init(ptr noundef nonnull %i.ar) #15
  %.not157 = icmp eq i32 %i.as, 0
  br i1 %.not157, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %i.w, i64 49928
  %i.au = call i32 @dav1d_mem_pool_init(ptr noundef nonnull %i.at) #15
  %.not158 = icmp eq i32 %i.au, 0
  br i1 %.not158, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %i.w, i64 62992
  %i.aw = call i32 @dav1d_mem_pool_init(ptr noundef nonnull %i.av) #15
  %.not159 = icmp eq i32 %i.aw, 0
  br i1 %.not159, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.ax = getelementptr inbounds nuw i8, ptr %i.w, i64 52496
  %i.ay = call i32 @dav1d_mem_pool_init(ptr noundef nonnull %i.ax) #15
  %.not160 = icmp eq i32 %i.ay, 0
  br i1 %.not160, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.az = getelementptr inbounds nuw i8, ptr %i.w, i64 62840
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !139
  %i.bb = icmp eq ptr %i.ba, @dav1d_default_picture_alloc
  %i.bc = getelementptr inbounds nuw i8, ptr %i.w, i64 62848
  %i.bd = load ptr, ptr %i.bc, align 64, !tbaa !140
  %i.be = icmp eq ptr %i.bd, @dav1d_default_picture_release ; 2 uses
  br i1 %i.bb, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  br i1 %i.be, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.q
  %i.bf = load ptr, ptr %i.x, align 16, !tbaa !141
  %.not161 = icmp eq ptr %i.bf, null
  br i1 %.not161, label %bb.s, label %.thread

bb.s:                                             ; preds = %bb.r
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.i, i64 62984 ; 2 uses
  %i.bh = call i32 @dav1d_mem_pool_init(ptr noundef nonnull %i.bg) #15
  %.not162 = icmp eq i32 %i.bh, 0
  br i1 %.not162, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.s
  %i.bi = load ptr, ptr %i.bg, align 8, !tbaa !49
  store ptr %i.bi, ptr %i.x, align 16, !tbaa !141
  br label %bb.v

bb.u:                                             ; preds = %bb.p
  br i1 %i.be, label %.thread, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.i, i64 824 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.w, i64 832
  store ptr %i.bj, ptr %i.bk, align 64, !tbaa !50
  store i32 0, ptr %i.bj, align 8, !tbaa !18
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i, i64 24 ; 7 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 5 uses
  call fastcc void @get_num_threads(ptr noundef nonnull %i.w, ptr noundef %1, ptr noundef %i.bl, ptr noundef %i.bm) #16
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !51
  %i.bo = zext i32 %i.bn to i64
  %i.bp = mul nuw nsw i64 %i.bo, 5408             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.bq = call i32 @posix_memalign(ptr noundef nonnull %i.b, i64 noundef 32, i64 noundef range(i64 0, 1111331377515841) %i.bp) #15
  %.not4.i178 = icmp eq i32 %i.bq, 0
  %i.br = load ptr, ptr %i.b, align 8             ; 2 uses
  %.0.i179 = select i1 %.not4.i178, ptr %i.br, ptr null ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  store ptr %.0.i179, ptr %i.w, align 64, !tbaa !52
  %.not163 = icmp eq ptr %.0.i179, null
  br i1 %.not163, label %.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.br, i8 0, i64 %i.bp, i1 false)
  %i.bs = load i32, ptr %i.bl, align 8, !tbaa !53
  %i.bt = zext i32 %i.bs to i64
  %i.bu = mul nuw nsw i64 %i.bt, 258752           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.bv = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 64, i64 noundef range(i64 0, 1111331377515841) %i.bu) #15
  %.not4.i180 = icmp eq i32 %i.bv, 0
  %i.bw = load ptr, ptr %i.a, align 8             ; 2 uses
  %.0.i181 = select i1 %.not4.i180, ptr %i.bw, ptr null ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i, i64 16 ; 2 uses
  store ptr %.0.i181, ptr %i.bx, align 16, !tbaa !54
  %.not164 = icmp eq ptr %.0.i181, null
  br i1 %.not164, label %.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.memset.p0.i64(ptr nonnull align 64 %i.bw, i8 0, i64 %i.bu, i1 false)
  %i.by = load i32, ptr %i.bl, align 8, !tbaa !53
  %i.bz = icmp ugt i32 %i.by, 1
  br i1 %i.bz, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %bb.x
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.i, i64 896 ; 3 uses
  %i.cb = call i32 @pthread_mutex_init(ptr noundef nonnull %i.ca, ptr noundef null) #15
  %.not165 = icmp eq i32 %i.cb, 0
  br i1 %.not165, label %bb.z, label %.thread

bb.z:                                             ; preds = %bb.y
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i, i64 936 ; 2 uses
  %i.cd = call i32 @pthread_cond_init(ptr noundef nonnull %i.cc, ptr noundef null) #15
  %.not166 = icmp eq i32 %i.cd, 0
  br i1 %.not166, label %bb.aa, label %.thread.sink.split

bb.aa:                                            ; preds = %bb.z
  %i.ce = getelementptr inbounds nuw i8, ptr %i.w, i64 1032
  %i.cf = call i32 @pthread_cond_init(ptr noundef nonnull %i.ce, ptr noundef null) #15
  %.not167 = icmp eq i32 %i.cf, 0
  br i1 %.not167, label %bb.ab, label %.thread.sink.split.sink.split

bb.ab:                                            ; preds = %bb.aa
  %i.cg = load i32, ptr %i.bm, align 8, !tbaa !51
  %i.ch = getelementptr inbounds nuw i8, ptr %i.w, i64 988
  store i32 %i.cg, ptr %i.ch, align 4, !tbaa !55
  %i.ci = getelementptr inbounds nuw i8, ptr %i.w, i64 992
  store <2 x i32> <i32 -1, i32 0>, ptr %i.ci, align 32, !tbaa !18
  %i.cj = getelementptr inbounds nuw i8, ptr %i.w, i64 49856
  store i32 1, ptr %i.cj, align 64, !tbaa !142
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.x
  %i.ck = load i32, ptr %i.bm, align 8, !tbaa !51 ; 4 uses
  %i.cl = icmp ugt i32 %i.ck, 1
  br i1 %i.cl, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.cm = zext i32 %i.ck to i64
  %i.cn = mul nuw nsw i64 %i.cm, 296
  %calloc = call ptr @calloc(i64 1, i64 %i.cn)    ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.w, i64 840
  store ptr %calloc, ptr %i.co, align 8, !tbaa !56
  %.not168 = icmp eq ptr %calloc, null
  br i1 %.not168, label %.thread, label %.lr.ph

bb.ae:                                            ; preds = %bb.ac
  %.not207 = icmp eq i32 %i.ck, 0
  br i1 %.not207, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ad, %bb.ae
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.i, i64 896
  br label %bb.af

.preheader:                                       ; preds = %bb.aj, %bb.ae
  %i.cq = load i32, ptr %i.bl, align 8, !tbaa !53
  %.not208 = icmp eq i32 %i.cq, 0
  br i1 %.not208, label %._crit_edge, label %.lr.ph206

.lr.ph206:                                        ; preds = %.preheader
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.i, i64 896
  br label %bb.ak

bb.af:                                            ; preds = %.lr.ph, %bb.aj
  %i.cs = phi i32 [ %i.ck, %.lr.ph ], [ %i.dd, %bb.aj ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.aj ] ; 2 uses
  %i.ct = load ptr, ptr %i.w, align 64, !tbaa !52
  %i.cu = getelementptr inbounds nuw [5408 x i8], ptr %i.ct, i64 %indvars.iv ; 6 uses
  %i.cv = load i32, ptr %i.bl, align 8, !tbaa !53
  %i.cw = icmp ugt i32 %i.cv, 1
  br i1 %i.cw, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 5104 ; 3 uses
  %i.cy = call i32 @pthread_mutex_init(ptr noundef nonnull %i.cx, ptr noundef null) #15
  %.not169 = icmp eq i32 %i.cy, 0
  br i1 %.not169, label %bb.ah, label %.thread

bb.ah:                                            ; preds = %bb.ag
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 5144 ; 2 uses
  %i.da = call i32 @pthread_cond_init(ptr noundef nonnull %i.cz, ptr noundef null) #15
  %.not170 = icmp eq i32 %i.da, 0
  br i1 %.not170, label %bb.ai, label %.thread.sink.split

bb.ai:                                            ; preds = %bb.ah
  %i.db = getelementptr inbounds nuw i8, ptr %i.cu, i64 5328
  %i.dc = call i32 @pthread_mutex_init(ptr noundef nonnull %i.db, ptr noundef null) #15
  %.not171 = icmp eq i32 %i.dc, 0
  br i1 %.not171, label %._crit_edge222, label %.thread.sink.split.sink.split

._crit_edge222:                                   ; preds = %bb.ai
  %.pre = load i32, ptr %i.bm, align 8, !tbaa !51
  br label %bb.aj

bb.aj:                                            ; preds = %._crit_edge222, %bb.af
  %i.dd = phi i32 [ %.pre, %._crit_edge222 ], [ %i.cs, %bb.af ] ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cu, i64 3088
  store ptr %.0.i, ptr %i.de, align 16, !tbaa !143
  %i.df = getelementptr inbounds nuw i8, ptr %i.cu, i64 5192
  store ptr %i.cp, ptr %i.df, align 8, !tbaa !82
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cu, i64 4896
  store i32 -1, ptr %i.dg, align 16, !tbaa !144
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dh = zext i32 %i.dd to i64
  %i.di = icmp samesign ult i64 %indvars.iv.next, %i.dh
  br i1 %i.di, label %bb.af, label %.preheader

bb.ak:                                            ; preds = %.lr.ph206, %bb.ap
  %indvars.iv219 = phi i64 [ 0, %.lr.ph206 ], [ %indvars.iv.next220, %bb.ap ] ; 2 uses
  %i.dj = load ptr, ptr %i.bx, align 16, !tbaa !54
  %i.dk = getelementptr inbounds nuw [258752 x i8], ptr %i.dj, i64 %indvars.iv219 ; 9 uses
  %i.dl = load ptr, ptr %i.w, align 64, !tbaa !52
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store ptr %i.dl, ptr %i.dm, align 8, !tbaa !145
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 258568
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 258672
  store ptr %i.cr, ptr %i.do, align 8, !tbaa !146
  store ptr %.0.i, ptr %i.dk, align 64, !tbaa !147
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 1024
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(4096) %i.dp, i8 0, i64 4096, i1 false)
  %i.dq = load i32, ptr %i.bl, align 8, !tbaa !53 ; 2 uses
  %i.dr = icmp ugt i32 %i.dq, 1
  br i1 %i.dr, label %bb.al, label %bb.ap

bb.al:                                            ; preds = %bb.ak
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dk, i64 258624 ; 3 uses
  %i.dt = call i32 @pthread_mutex_init(ptr noundef nonnull %i.ds, ptr noundef null) #15
  %.not172 = icmp eq i32 %i.dt, 0
  br i1 %.not172, label %bb.am, label %.thread

bb.am:                                            ; preds = %bb.al
  %i.du = getelementptr inbounds nuw i8, ptr %i.dk, i64 258576 ; 2 uses
  %i.dv = call i32 @pthread_cond_init(ptr noundef nonnull %i.du, ptr noundef null) #15
  %.not173 = icmp eq i32 %i.dv, 0
  br i1 %.not173, label %bb.an, label %.thread.sink.split

bb.an:                                            ; preds = %bb.am
  %i.dw = call i32 @pthread_create(ptr noundef nonnull %i.dn, ptr noundef nonnull %2, ptr noundef nonnull @dav1d_worker_task, ptr noundef nonnull %i.dk) #15
  %.not174 = icmp eq i32 %i.dw, 0
  br i1 %.not174, label %bb.ao, label %.thread.sink.split.sink.split

bb.ao:                                            ; preds = %bb.an
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dk, i64 258664
  store i32 1, ptr %i.dx, align 8, !tbaa !93
  %.pre223 = load i32, ptr %i.bl, align 8, !tbaa !53
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.ak
  %i.dy = phi i32 [ %.pre223, %bb.ao ], [ %i.dq, %bb.ak ]
  %indvars.iv.next220 = add nuw nsw i64 %indvars.iv219, 1 ; 2 uses
  %i.dz = zext i32 %i.dy to i64
  %i.ea = icmp samesign ult i64 %indvars.iv.next220, %i.dz
  br i1 %i.ea, label %bb.ak, label %._crit_edge

._crit_edge:                                      ; preds = %bb.ap, %.preheader
  %i.eb = getelementptr inbounds nuw i8, ptr %i.w, i64 62800
  call void @dav1d_pal_dsp_init(ptr noundef nonnull %i.eb) #15
  %i.ec = getelementptr inbounds nuw i8, ptr %i.w, i64 62808
  call void @dav1d_refmvs_dsp_init(ptr noundef nonnull %i.ec) #15
  br label %.sink.split

.thread.sink.split.sink.split:                    ; preds = %bb.ai, %bb.an, %bb.aa
  %.lcssa234.sink = phi ptr [ %i.du, %bb.an ], [ %i.cc, %bb.aa ], [ %i.cz, %bb.ai ]
  %.lcssa235.sink.ph = phi ptr [ %i.ds, %bb.an ], [ %i.ca, %bb.aa ], [ %i.cx, %bb.ai ]
  %i.ed = call i32 @pthread_cond_destroy(ptr noundef nonnull %.lcssa234.sink) #15 ; 0 uses
  br label %.thread.sink.split

.thread.sink.split:                               ; preds = %bb.ah, %bb.am, %.thread.sink.split.sink.split, %bb.z
  %.lcssa235.sink = phi ptr [ %i.ca, %bb.z ], [ %.lcssa235.sink.ph, %.thread.sink.split.sink.split ], [ %i.ds, %bb.am ], [ %i.cx, %bb.ah ]
  %i.ee = call i32 @pthread_mutex_destroy(ptr noundef nonnull %.lcssa235.sink) #15 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.ag, %bb.al, %.thread.sink.split, %bb.q, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.r, %bb.s, %bb.u, %bb.v, %bb.w, %bb.y, %bb.ad
  call fastcc void @close_internal(ptr noundef %0, i32 noundef 0)
  br label %.sink.split

.sink.split:                                      ; preds = %.thread, %bb.i, %._crit_edge
  %.1138.ph = phi i32 [ 0, %._crit_edge ], [ -12, %bb.i ], [ -12, %.thread ]
  %i.ef = call i32 @pthread_attr_destroy(ptr noundef nonnull %2) #15 ; 0 uses
  br label %bb.aq

bb.aq:                                            ; preds = %.sink.split, %bb.h
  %.1138 = phi i32 [ -12, %bb.h ], [ %.1138.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %bb.ar

bb.ar:                                            ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %bb.aq
  %.2139 = phi i32 [ %.1138, %bb.aq ], [ -22, %bb.f ], [ -22, %bb.e ], [ -22, %bb.d ], [ -22, %bb.c ], [ -22, %bb.b ], [ -22, %bb.g ], [ -22, %bb.a ]
  ret i32 %.2139
}

declare i32 @pthread_once(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind optsize uwtable
define internal void @init_internal() #3 {
bb.a:
  tail call void @dav1d_init_cpu() #15
  tail call void @dav1d_init_ii_wedge_masks() #15
  tail call void @dav1d_init_intra_edge_tree() #15
  tail call void @dav1d_init_qm_tables() #15
end_hunk_0
begin_hunk_1_@dav1d_flush:bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cz, i8 0, i64 16, i1 false)
  %i.da = load i32, ptr %i.bq, align 8, !tbaa !51 ; 2 uses
  %i.db = zext i32 %i.da to i64
  %i.dc = icmp samesign ult i64 %indvars.iv.next116, %i.db
  br i1 %i.dc, label %.lr.ph102, label %._crit_edge103

bb.aa:                                            ; preds = %._crit_edge103, %bb.w
  %i.dd = load i32, ptr %i.bq, align 8, !tbaa !51 ; 2 uses
  %i.de = icmp ugt i32 %i.dd, 1
  br i1 %i.de, label %.lr.ph107.preheader, label %bb.ad

.lr.ph107.preheader:                              ; preds = %bb.aa
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 848 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 16, !tbaa !121
  br label %.lr.ph107

._crit_edge108:                                   ; preds = %bb.ac
  store i32 0, ptr %i.dg, align 16, !tbaa !121
  br label %bb.ad

.lr.ph107:                                        ; preds = %.lr.ph107.preheader, %bb.ac
  %i.di = phi i32 [ %i.dw, %bb.ac ], [ %i.dd, %.lr.ph107.preheader ]
  %.087105 = phi i32 [ %i.dv, %bb.ac ], [ %i.dh, %.lr.ph107.preheader ] ; 2 uses
  %.088104 = phi i32 [ %i.du, %bb.ac ], [ 0, %.lr.ph107.preheader ]
  %i.dj = icmp eq i32 %.087105, %i.di
  %spec.store.select = select i1 %i.dj, i32 0, i32 %.087105 ; 2 uses
  %i.dk = load ptr, ptr %0, align 64, !tbaa !52
  %i.dl = zext i32 %spec.store.select to i64      ; 2 uses
  %i.dm = getelementptr inbounds nuw [5408 x i8], ptr %i.dk, i64 %i.dl ; 4 uses
  tail call void @dav1d_decode_frame_exit(ptr noundef %i.dm, i32 noundef -1) #15
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 2956
  store i32 0, ptr %i.dn, align 4, !tbaa !122
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 5276
  store i32 0, ptr %i.do, align 4, !tbaa !123
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 5284
  store atomic i32 0, ptr %i.dp seq_cst, align 4, !tbaa !194
  %i.dq = load ptr, ptr %i.df, align 8, !tbaa !56
  %i.dr = getelementptr inbounds nuw [296 x i8], ptr %i.dq, i64 %i.dl ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !95
  %.not93 = icmp eq ptr %i.dt, null
  br i1 %.not93, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph107
  tail call void @dav1d_thread_picture_unref(ptr noundef nonnull %i.dr) #15
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.lr.ph107
  %i.du = add nuw i32 %.088104, 1                 ; 2 uses
  %i.dv = add i32 %spec.store.select, 1
  %i.dw = load i32, ptr %i.bq, align 8, !tbaa !51 ; 2 uses
  %i.dx = icmp ult i32 %i.du, %i.dw
  br i1 %i.dx, label %.lr.ph107, label %._crit_edge108

bb.ad:                                            ; preds = %._crit_edge108, %bb.aa
  %i.dy = load ptr, ptr %i.bw, align 64, !tbaa !50
  store atomic i32 0, ptr %i.dy seq_cst, align 4
  br label %bb.ae

bb.ae:                                            ; preds = %bb.v, %bb.ad
  ret void
}

declare void @dav1d_thread_picture_unref(ptr noundef) local_unnamed_addr #2

declare void @dav1d_ref_dec(ptr noundef) local_unnamed_addr #2

declare void @dav1d_cdf_thread_unref(ptr noundef) local_unnamed_addr #2

declare void @dav1d_data_props_unref_internal(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #5

declare i32 @pthread_cond_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #5

declare void @dav1d_decode_frame_exit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @dav1d_close(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @close_internal(ptr noundef %0, i32 noundef 1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 -22, 1) i32 @dav1d_get_event_flags(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #9 {
bb.a:
  %.not = icmp eq ptr %0, null
  %.not7 = icmp eq ptr %1, null
  %or.cond = or i1 %.not, %.not7
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 62904 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !124
  store i32 %i.b, ptr %1, align 4, !tbaa !15
  store i32 0, ptr %i.a, align 8, !tbaa !124
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -22, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -22, 1) i32 @dav1d_get_decode_error_data_props(ptr noundef %0, ptr noundef %1) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %0, null
  %.not8 = icmp eq ptr %1, null
  %or.cond = or i1 %.not, %.not8
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @dav1d_data_props_unref_internal(ptr noundef nonnull %1) #15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 62912 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 64 dereferenceable(48) %i.a, i64 48, i1 false), !tbaa.struct !197
  tail call void @dav1d_data_props_set_defaults(ptr noundef nonnull %i.a) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -22, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @dav1d_picture_unref(ptr noundef %0) local_unnamed_addr #7 {
bb.a:
  tail call void @dav1d_picture_unref_internal(ptr noundef %0) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @dav1d_data_create(ptr noundef %0, i64 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call ptr @dav1d_data_create_internal(ptr noundef %0, i64 noundef %1) #15
  ret ptr %i.a
}

declare ptr @dav1d_data_create_internal(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @dav1d_data_wrap(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call i32 @dav1d_data_wrap_internal(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) #15
  ret i32 %i.a
}

declare i32 @dav1d_data_wrap_internal(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @dav1d_data_wrap_user_data(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call i32 @dav1d_data_wrap_user_data_internal(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #15
  ret i32 %i.a
}

declare i32 @dav1d_data_wrap_user_data_internal(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @dav1d_data_unref(ptr noundef %0) local_unnamed_addr #7 {
bb.a:
  tail call void @dav1d_data_unref_internal(ptr noundef %0) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @dav1d_data_props_unref(ptr noundef %0) local_unnamed_addr #7 {
bb.a:
  tail call void @dav1d_data_props_unref_internal(ptr noundef %0) #15
  ret void
}

declare i32 @dav1d_num_logical_processors(ptr noundef) local_unnamed_addr #2

declare void @dav1d_init_cpu() local_unnamed_addr #2

declare void @dav1d_init_ii_wedge_masks() local_unnamed_addr #2

declare void @dav1d_init_intra_edge_tree() local_unnamed_addr #2

declare void @dav1d_init_qm_tables() local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @dlsym(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i64 @__sysconf(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noundef i32 @posix_memalign(ptr noundef writeonly captures(none), i64 noundef, i64 noundef) local_unnamed_addr #10

declare i64 @dav1d_parse_obus(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dav1d_thread_picture_move_ref(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dav1d_picture_move_ref(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dav1d_data_props_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dav1d_thread_picture_ref(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @dav1d_picture_get_event_flags(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_cond_broadcast(ptr noundef) local_unnamed_addr #5

declare i32 @pthread_join(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #11

declare void @dav1d_mem_pool_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #14

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #15 = { nounwind }
attributes #16 = { cold }
attributes #17 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"Dav1dPicAllocator", !9, i64 0, !9, i64 8, !9, i64 16}
!11 = !{!"Dav1dLogger", !9, i64 0, !9, i64 8}
!12 = !{!"Dav1dSettings", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !10, i64 24, !11, i64 48, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !5, i64 80}
!13 = !{!12, !9, i64 32}
!14 = !{!12, !9, i64 40}
!15 = !{!6, !6, i64 0}
!16 = !{!12, !6, i64 0}
!17 = !{!12, !6, i64 4}
!18 = !{!5, !5, i64 0}
!19 = !{!"p1 _ZTS12Dav1dContext", !9, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!9, !9, i64 0}
!22 = !{!"p1 _ZTS17Dav1dFrameContext", !9, i64 0}
!23 = !{!"p1 _ZTS16Dav1dTaskContext", !9, i64 0}
!24 = !{!"p1 _ZTS14Dav1dTileGroup", !9, i64 0}
!25 = !{!"p1 _ZTS12Dav1dMemPool", !9, i64 0}
!26 = !{!"p1 _ZTS8Dav1dRef", !9, i64 0}
!27 = !{!"p1 _ZTS19Dav1dSequenceHeader", !9, i64 0}
!28 = !{!"p1 _ZTS16Dav1dFrameHeader", !9, i64 0}
!29 = !{!"p1 _ZTS22Dav1dContentLightLevel", !9, i64 0}
!30 = !{!"p1 _ZTS21Dav1dMasteringDisplay", !9, i64 0}
!31 = !{!"p1 _ZTS12Dav1dITUTT35", !9, i64 0}
!32 = !{!"p1 omnipotent char", !9, i64 0}
!33 = !{!"long", !5, i64 0}
!34 = !{!"Dav1dUserData", !32, i64 0, !26, i64 8}
!35 = !{!"Dav1dDataProps", !33, i64 0, !33, i64 8, !33, i64 16, !33, i64 24, !34, i64 32}
!36 = !{!"Dav1dData", !32, i64 0, !33, i64 8, !26, i64 16, !35, i64 24}
!37 = !{!"Dav1dPictureParameters", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!38 = !{!"Dav1dPicture", !27, i64 0, !28, i64 8, !5, i64 16, !5, i64 40, !37, i64 56, !35, i64 72, !29, i64 120, !30, i64 128, !31, i64 136, !33, i64 144, !5, i64 152, !26, i64 184, !26, i64 192, !26, i64 200, !26, i64 208, !26, i64 216, !5, i64 224, !26, i64 256, !9, i64 264}
!39 = !{!"Dav1dThreadPicture", !38, i64 0, !6, i64 272, !6, i64 276, !6, i64 280, !9, i64 288}
!40 = !{!"p1 _ZTS18Dav1dThreadPicture", !9, i64 0}
!41 = !{!"", !40, i64 0, !6, i64 8}
!42 = !{!"p1 _ZTS12Dav1dPicture", !9, i64 0}
!43 = !{!"", !6, i64 0, !6, i64 4, !5, i64 8, !42, i64 56, !42, i64 64, !6, i64 72, !5, i64 76, !5, i64 128}
!44 = !{!"TaskThreadData", !5, i64 0, !5, i64 40, !5, i64 88, !6, i64 92, !5, i64 96, !5, i64 100, !43, i64 128, !6, i64 48960}
!45 = !{!"Dav1dPalDSPContext", !9, i64 0}
!46 = !{!"Dav1dRefmvsDSPContext", !9, i64 0, !9, i64 8, !9, i64 16}
!47 = !{!"Dav1dContext", !22, i64 0, !6, i64 8, !23, i64 16, !6, i64 24, !24, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !25, i64 56, !26, i64 64, !27, i64 72, !25, i64 80, !26, i64 88, !28, i64 96, !26, i64 104, !29, i64 112, !26, i64 120, !30, i64 128, !26, i64 136, !31, i64 144, !6, i64 152, !36, i64 160, !39, i64 232, !39, i64 528, !5, i64 824, !9, i64 832, !41, i64 840, !44, i64 896, !25, i64 49920, !25, i64 49928, !5, i64 49936, !25, i64 52496, !5, i64 52504, !5, i64 52696, !45, i64 62800, !46, i64 62808, !10, i64 62832, !6, i64 62856, !6, i64 62860, !6, i64 62864, !6, i64 62868, !6, i64 62872, !6, i64 62876, !6, i64 62880, !6, i64 62884, !6, i64 62888, !6, i64 62892, !6, i64 62896, !6, i64 62900, !6, i64 62904, !35, i64 62912, !6, i64 62960, !11, i64 62968, !25, i64 62984, !25, i64 62992}
!48 = !{!47, !6, i64 62868}
!49 = !{!47, !25, i64 62984}
!50 = !{!47, !9, i64 832}
!51 = !{!47, !6, i64 8}
!52 = !{!47, !22, i64 0}
!53 = !{!47, !6, i64 24}
!54 = !{!47, !23, i64 16}
!55 = !{!47, !6, i64 988}
!56 = !{!47, !40, i64 840}
!57 = !{!"p1 _ZTS21refmvs_temporal_block", !9, i64 0}
!58 = !{!"CdfThreadContext", !26, i64 0, !5, i64 8, !9, i64 16}
!59 = !{!"p1 _ZTS14Dav1dTileState", !9, i64 0}
!60 = !{!"p1 _ZTS15Dav1dDSPContext", !9, i64 0}
!61 = !{!"", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104}
!62 = !{!"p1 _ZTS12BlockContext", !9, i64 0}
!63 = !{!"any p2 pointer", !9, i64 0}
!64 = !{!"p2 _ZTS21refmvs_temporal_block", !63, i64 0}
!65 = !{!"p1 _ZTS12refmvs_block", !9, i64 0}
!66 = !{!"refmvs_frame", !28, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !5, i64 32, !5, i64 39, !5, i64 46, !5, i64 53, !5, i64 56, !5, i64 59, !6, i64 80, !6, i64 84, !57, i64 88, !64, i64 96, !57, i64 104, !33, i64 112, !65, i64 120, !6, i64 128, !6, i64 132}
!67 = !{!"p1 _ZTS8Av1Block", !9, i64 0}
!68 = !{!"p1 short", !9, i64 0}
!69 = !{!"p1 int", !9, i64 0}
!70 = !{!"", !5, i64 0, !5, i64 8, !5, i64 12, !9, i64 16, !9, i64 24, !67, i64 32, !68, i64 40, !32, i64 48, !32, i64 56, !9, i64 64, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !69, i64 96}
!71 = !{!"p1 _ZTS9Av1Filter", !9, i64 0}
!72 = !{!"p1 _ZTS14Av1Restoration", !9, i64 0}
!73 = !{!"Av1FilterLUT", !5, i64 0, !5, i64 64, !5, i64 128}
!74 = !{!"", !32, i64 0, !71, i64 8, !72, i64 16, !6, i64 24, !6, i64 28, !5, i64 32, !6, i64 40, !5, i64 44, !6, i64 52, !73, i64 64, !5, i64 208, !6, i64 720, !5, i64 728, !32, i64 744, !32, i64 752, !5, i64 760, !5, i64 808, !5, i64 832, !32, i64 856, !6, i64 864, !6, i64 868, !5, i64 872, !5, i64 896, !6, i64 920}
!75 = !{!"p1 _ZTS14TaskThreadData", !9, i64 0}
!76 = !{!"p1 _ZTS9Dav1dTask", !9, i64 0}
!77 = !{!"Dav1dTask", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !76, i64 24}
!78 = !{!"", !5, i64 0, !5, i64 8, !76, i64 48, !76, i64 56}
!79 = !{!"", !5, i64 0, !5, i64 40, !75, i64 88, !76, i64 96, !5, i64 104, !77, i64 120, !6, i64 152, !6, i64 156, !5, i64 160, !5, i64 164, !6, i64 172, !6, i64 176, !5, i64 180, !5, i64 184, !76, i64 192, !76, i64 200, !76, i64 208, !78, i64 216}
!80 = !{!"FrameTileThreadData", !69, i64 0, !6, i64 8}
!81 = !{!"Dav1dFrameContext", !26, i64 0, !27, i64 8, !26, i64 16, !28, i64 24, !5, i64 32, !38, i64 2104, !39, i64 2376, !26, i64 2672, !57, i64 2680, !5, i64 2688, !5, i64 2744, !26, i64 2800, !26, i64 2808, !32, i64 2816, !32, i64 2824, !5, i64 2832, !5, i64 2839, !5, i64 2888, !58, i64 2896, !58, i64 2920, !24, i64 2944, !6, i64 2952, !6, i64 2956, !5, i64 2960, !5, i64 3072, !5, i64 3080, !19, i64 3088, !59, i64 3096, !6, i64 3104, !60, i64 3112, !61, i64 3120, !6, i64 3232, !5, i64 3240, !33, i64 3264, !6, i64 3272, !6, i64 3276, !6, i64 3280, !6, i64 3284, !6, i64 3288, !6, i64 3292, !6, i64 3296, !6, i64 3300, !6, i64 3304, !6, i64 3308, !5, i64 3312, !5, i64 3408, !62, i64 3864, !6, i64 3872, !66, i64 3880, !5, i64 4016, !6, i64 4068, !70, i64 4072, !74, i64 4176, !79, i64 5104, !80, i64 5384}
!82 = !{!81, !75, i64 5192}
!83 = !{!"BlockContext", !5, i64 0, !5, i64 32, !5, i64 64, !5, i64 128, !5, i64 160, !5, i64 192, !5, i64 224, !5, i64 256, !5, i64 288, !5, i64 352, !5, i64 416, !5, i64 448, !5, i64 480, !5, i64 512, !5, i64 544, !5, i64 560, !5, i64 592}
!84 = !{!"p1 _ZTS12refmvs_frame", !9, i64 0}
!85 = !{!"", !6, i64 0, !6, i64 4}
!86 = !{!"refmvs_tile", !84, i64 0, !5, i64 8, !57, i64 304, !85, i64 312, !85, i64 320}
!87 = !{!"Dav1dWarpedMotionParams", !6, i64 0, !5, i64 4, !5, i64 28}
!88 = !{!"", !6, i64 0}
!89 = !{!"thread_data", !33, i64 0, !5, i64 8, !5, i64 56, !6, i64 96}
!90 = !{!"p1 _ZTS19FrameTileThreadData", !9, i64 0}
!91 = !{!"", !89, i64 0, !75, i64 104, !90, i64 112, !6, i64 120, !6, i64 124}
!92 = !{!"Dav1dTaskContext", !19, i64 0, !22, i64 8, !59, i64 16, !6, i64 24, !6, i64 28, !83, i64 32, !62, i64 656, !86, i64 664, !5, i64 1024, !5, i64 5120, !5, i64 8192, !5, i64 8256, !87, i64 258496, !71, i64 258536, !6, i64 258544, !32, i64 258552, !6, i64 258560, !88, i64 258564, !91, i64 258568}
!93 = !{!92, !6, i64 258664}
!94 = !{!32, !32, i64 0}
!95 = !{!39, !28, i64 8}
!96 = !{!"", !39, i64 0, !26, i64 296, !26, i64 304, !5, i64 312}
!97 = !{!96, !28, i64 8}
!98 = !{!36, !32, i64 0}
!99 = !{!36, !33, i64 8}
!100 = !{!47, !6, i64 62896}
!101 = !{!47, !6, i64 62960}
!102 = !{!47, !6, i64 62872}
!103 = !{!47, !28, i64 536}
!104 = !{!"Dav1dFilmGrainData", !6, i64 0, !6, i64 4, !5, i64 8, !6, i64 36, !5, i64 40, !5, i64 48, !6, i64 88, !6, i64 92, !5, i64 96, !5, i64 120, !33, i64 176, !6, i64 184, !5, i64 188, !5, i64 196, !5, i64 204, !6, i64 212, !6, i64 216}
!105 = !{!"", !104, i64 0, !5, i64 224, !5, i64 225}
!106 = !{!"", !5, i64 0, !5, i64 1}
!107 = !{!"short", !5, i64 0}
!108 = !{!"", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3, !5, i64 4, !5, i64 5, !5, i64 6, !5, i64 7, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 140, !107, i64 270}
!109 = !{!"", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3, !5, i64 4, !5, i64 5, !5, i64 6, !5, i64 7, !5, i64 8, !5, i64 9}
!110 = !{!"Dav1dSegmentationDataSet", !5, i64 0, !5, i64 80, !5, i64 81}
!111 = !{!"", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3, !110, i64 4, !5, i64 86, !5, i64 94}
!112 = !{!"", !5, i64 0, !5, i64 1, !5, i64 2}
!113 = !{!"", !106, i64 0, !112, i64 2}
!114 = !{!"Dav1dLoopfilterModeRefDeltas", !5, i64 0, !5, i64 2}
!115 = !{!"", !5, i64 0, !5, i64 2, !5, i64 3, !5, i64 4, !5, i64 5, !114, i64 6, !5, i64 16}
!116 = !{!"", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 10}
!117 = !{!"", !5, i64 0, !5, i64 12}
!118 = !{!"Dav1dFrameHeader", !105, i64 0, !6, i64 232, !5, i64 236, !6, i64 244, !5, i64 248, !5, i64 249, !5, i64 250, !5, i64 251, !5, i64 252, !6, i64 256, !6, i64 260, !5, i64 264, !5, i64 265, !5, i64 266, !5, i64 267, !5, i64 268, !5, i64 269, !5, i64 270, !5, i64 271, !5, i64 272, !5, i64 276, !5, i64 404, !6, i64 408, !6, i64 412, !106, i64 416, !5, i64 418, !5, i64 419, !5, i64 420, !5, i64 421, !5, i64 428, !6, i64 432, !5, i64 436, !5, i64 437, !5, i64 438, !108, i64 440, !109, i64 712, !111, i64 722, !113, i64 824, !5, i64 829, !115, i64 830, !116, i64 847, !117, i64 868, !6, i64 884, !5, i64 888, !5, i64 889, !5, i64 890, !5, i64 891, !5, i64 893, !5, i64 894, !5, i64 896}
!119 = !{!118, !5, i64 250}
!120 = !{!47, !6, i64 512}
!121 = !{!47, !6, i64 848}
!122 = !{!81, !6, i64 2956}
!123 = !{!81, !6, i64 5276}
!124 = !{!47, !6, i64 62904}
!125 = !{!38, !28, i64 8}
!126 = !{!104, !6, i64 4}
!127 = !{!104, !6, i64 216}
!128 = !{!104, !6, i64 36}
!129 = !{!12, !9, i64 24}
!130 = !{!12, !9, i64 48}
!131 = !{!12, !9, i64 56}
!132 = !{!12, !6, i64 12}
!133 = !{!12, !6, i64 76}
!134 = !{i64 0, i64 8, !21, i64 8, i64 8, !21, i64 16, i64 8, !21}
!135 = !{i64 0, i64 8, !21, i64 8, i64 8, !21}
!136 = !{!12, !6, i64 16}
!137 = !{!12, !6, i64 20}
!138 = !{!47, !6, i64 62876}
!139 = !{!47, !9, i64 62840}
!140 = !{!47, !9, i64 62848}
!141 = !{!47, !9, i64 62832}
!142 = !{!47, !6, i64 49856}
!143 = !{!81, !19, i64 3088}
!144 = !{!81, !6, i64 4896}
!145 = !{!92, !22, i64 8}
!146 = !{!92, !75, i64 258672}
!147 = !{!92, !19, i64 0}
!148 = !{!44, !6, i64 48960}
!149 = !{!92, !6, i64 258692}
!150 = !{!92, !33, i64 258568}
!151 = !{!81, !69, i64 5384}
!152 = !{!81, !67, i64 4104}
!153 = !{!81, !68, i64 4112}
!154 = !{!81, !32, i64 4128}
!155 = !{!81, !9, i64 4136}
!156 = !{!81, !69, i64 4168}
!157 = !{!81, !32, i64 4120}
!158 = !{!81, !9, i64 4088}
!159 = !{!81, !76, i64 5200}
!160 = !{!76, !76, i64 0}
!161 = !{!81, !59, i64 3096}
!162 = !{!81, !62, i64 3864}
!163 = !{!81, !24, i64 2944}
!164 = !{!81, !71, i64 4184}
!165 = !{!81, !32, i64 4176}
!166 = !{!81, !72, i64 4192}
!167 = !{!81, !32, i64 5032}
!168 = !{!81, !65, i64 4000}
!169 = !{!81, !32, i64 4920}
!170 = !{!81, !32, i64 4928}
!171 = !{!47, !6, i64 44}
!172 = !{!47, !24, i64 32}
!173 = !{!47, !25, i64 56}
!174 = !{!47, !25, i64 80}
!175 = !{!47, !25, i64 49920}
!176 = !{!47, !25, i64 49928}
!177 = !{!47, !25, i64 52496}
!178 = !{!47, !25, i64 62992}
!179 = !{!47, !32, i64 160}
!180 = !{!39, !9, i64 288}
!181 = !{!39, !6, i64 272}
!182 = !{!47, !6, i64 62884}
!183 = !{!47, !6, i64 62856}
!184 = !{!38, !6, i64 56}
!185 = !{!38, !6, i64 68}
!186 = !{!47, !28, i64 240}
!187 = !{!47, !28, i64 96}
end_hunk_1
