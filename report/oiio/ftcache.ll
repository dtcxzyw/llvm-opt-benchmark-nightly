inline.NumInlined: 84
inline.NumDeleted: 29
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@FTC_ImageCache_New:bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 112 ; 2 uses
  store ptr @ftc_basic_image_cache_class, ptr %i.o, align 8, !tbaa !29
  %i.p = load i32, ptr %i.g, align 8, !tbaa !17
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  store i32 %i.p, ptr %i.q, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 8, ptr %i.j, align 8, !tbaa !31
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 7, ptr %i.r, align 4, !tbaa !32
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 16, ptr %i.s, align 8, !tbaa !33
  %i.t = call ptr @ft_mem_realloc(ptr noundef %i.f, i64 noundef 8, i64 noundef 0, i64 noundef 8, ptr noundef null, ptr noundef nonnull %i.a) #13
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.t, ptr %i.u, align 8, !tbaa !34
  %i.v = load i32, ptr %i.a, align 4, !tbaa !3    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %.not.i = icmp eq i32 %i.v, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %i.v, ptr %i.b, align 4, !tbaa !3
  call void @ftc_gcache_done(ptr noundef nonnull %i.j) #13, !inline_history !35
  call void @ft_mem_free(ptr noundef %i.f, ptr noundef nonnull %i.j) #13
  %.pre.pre.i.i = load i32, ptr %i.b, align 4, !tbaa !3
  br label %.thread.i.i

bb.f:                                             ; preds = %bb.d
  %i.w = load ptr, ptr %i.o, align 8, !tbaa !29
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 120
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !36
  %i.aa = load ptr, ptr %i.m, align 8, !tbaa !25
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ab, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.z, i64 40, i1 false), !tbaa.struct !39
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 136
  store ptr %i.j, ptr %i.ac, align 8, !tbaa !40
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 184
  store ptr %i.aa, ptr %i.ad, align 8, !tbaa !41
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.af = load i32, ptr %i.g, align 8, !tbaa !17  ; 2 uses
  %i.ag = add i32 %i.af, 1
  store i32 %i.ag, ptr %i.g, align 8, !tbaa !17
  %i.ah = zext i32 %i.af to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ah
  store ptr %i.j, ptr %i.ai, align 8, !tbaa !42
  br label %.thread.i.i

bb.g:                                             ; preds = %bb.a
  br i1 %i.d, label %.thread.i.i, label %FTC_GCache_New.exit

.thread.i.i:                                      ; preds = %bb.g, %bb.f, %bb.e, %bb.c, %bb.b
  %.pre.i.i = phi i32 [ 6, %bb.g ], [ %i.k, %bb.c ], [ 0, %bb.f ], [ %.pre.pre.i.i, %bb.e ], [ 112, %bb.b ]
  %.140.i.i = phi ptr [ null, %bb.g ], [ %i.j, %bb.c ], [ %i.j, %bb.f ], [ null, %bb.e ], [ null, %bb.b ]
  store ptr %.140.i.i, ptr %1, align 8, !tbaa !42
  br label %FTC_GCache_New.exit

FTC_GCache_New.exit:                              ; preds = %bb.g, %.thread.i.i
  %i.aj = phi i32 [ %.pre.i.i, %.thread.i.i ], [ 6, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  ret i32 %i.aj
}

; Function Attrs: nounwind uwtable
define i32 @FTC_ImageCache_Lookup(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.FTC_BasicQueryRec_, align 8 ; 12 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %3, align 8, !tbaa !44
  %.not97 = icmp eq ptr %4, null                  ; 2 uses
  br i1 %.not97, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %4, align 8, !tbaa !46
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = load ptr, ptr %1, align 8, !tbaa !47     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.c, ptr %i.d, align 8, !tbaa !49
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !55   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i32 %i.i, ptr %i.j, align 8, !tbaa !56
  %i.k = load <2 x i32>, ptr %i.e, align 8, !tbaa !3
  %i.l = load i32, ptr %i.g, align 4, !tbaa !57   ; 2 uses
  %i.m = load i32, ptr %i.e, align 8, !tbaa !58   ; 2 uses
  %i.n = shufflevector <2 x i32> %i.k, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.o = shufflevector <4 x i32> %i.n, <4 x i32> <i32 poison, i32 poison, i32 1, i32 0>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.o, ptr %i.f, align 8, !tbaa !3
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i32 0, ptr %i.p, align 8, !tbaa !59
  %i.q = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.r = lshr i64 %i.q, 3
  %i.s = shl i64 %i.q, 7
  %i.t = xor i64 %i.r, %i.s
  %i.u = zext i32 %i.m to i64
  %i.v = mul i32 %i.l, 7
  %i.w = zext i32 %i.v to i64
  %i.x = mul i32 %i.i, 31
  %i.y = zext i32 %i.x to i64
  %i.z = zext i32 %2 to i64
  %i.aa = add nuw nsw i64 %i.u, %i.z
  %i.ab = add i64 %i.aa, %i.t
  %i.ac = add i64 %i.ab, %i.w
  %i.ad = add i64 %i.ac, %i.y                     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 %2, ptr %5, align 8, !tbaa !60
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !61 ; 6 uses
  %.not99 = icmp eq ptr %i.ag, null
  br i1 %.not99, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.d, %ftc_basic_family_compare.exit.thread
  %.080 = phi ptr [ %i.bb, %ftc_basic_family_compare.exit.thread ], [ %i.ag, %bb.d ] ; 16 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.080, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !62
  %i.aj = icmp eq ptr %i.ai, %i.c
  br i1 %i.aj, label %bb.e, label %ftc_basic_family_compare.exit.thread

bb.e:                                             ; preds = %.preheader
  %i.ak = getelementptr inbounds nuw i8, ptr %.080, i64 48
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !66
  %i.am = icmp eq i32 %i.al, %i.m
  br i1 %i.am, label %bb.f, label %ftc_basic_family_compare.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %.080, i64 52
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !67
  %i.ap = icmp eq i32 %i.ao, %i.l
  br i1 %i.ap, label %bb.g, label %ftc_basic_family_compare.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %.080, i64 56
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !68
  %.not126 = icmp eq i32 %i.ar, 0
  br i1 %.not126, label %ftc_basic_family_compare.exit.thread, label %ftc_basic_family_compare.exit

ftc_basic_family_compare.exit:                    ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %.080, i64 72
  %i.at = load i32, ptr %i.as, align 8, !tbaa !69
  %.not127 = icmp eq i32 %i.at, %i.i
  br i1 %.not127, label %bb.h, label %ftc_basic_family_compare.exit.thread

bb.h:                                             ; preds = %ftc_basic_family_compare.exit
  %.not102 = icmp eq ptr %.080, %i.ag
  br i1 %.not102, label %.thread, label %FTC_MruNode_Up.exit

FTC_MruNode_Up.exit:                              ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %.080, i64 8 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !70 ; 2 uses
  %i.aw = load ptr, ptr %.080, align 8, !tbaa !71 ; 2 uses
  store ptr %i.aw, ptr %i.av, align 8, !tbaa !71
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %i.av, ptr %i.ax, align 8, !tbaa !70
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !70 ; 2 uses
  store ptr %.080, ptr %i.az, align 8, !tbaa !71
  store ptr %.080, ptr %i.ay, align 8, !tbaa !70
  store ptr %i.ag, ptr %.080, align 8, !tbaa !71
  store ptr %i.az, ptr %i.au, align 8, !tbaa !70
  store ptr %.080, ptr %i.af, align 8, !tbaa !61
  br label %.thread

.thread:                                          ; preds = %bb.h, %FTC_MruNode_Up.exit
  store ptr %.080, ptr %i.a, align 8, !tbaa !61
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.080, ptr %i.ba, align 8, !tbaa !72
  br label %bb.i

ftc_basic_family_compare.exit.thread:             ; preds = %bb.e, %bb.f, %bb.g, %.preheader, %ftc_basic_family_compare.exit
  %i.bb = load ptr, ptr %.080, align 8, !tbaa !71 ; 2 uses
  %.not101 = icmp eq ptr %i.bb, %i.ag
  br i1 %.not101, label %.loopexit, label %.preheader, !llvm.loop !73

.loopexit:                                        ; preds = %ftc_basic_family_compare.exit.thread, %bb.d
  %i.bc = call fastcc i32 @FTC_MruList_New(ptr noundef nonnull %i.ae, ptr noundef nonnull %5, ptr noundef %i.a) ; 2 uses
  %i.bd = load ptr, ptr %i.a, align 8, !tbaa !61  ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !72
  %.not103 = icmp eq i32 %i.bc, 0
  br i1 %.not103, label %bb.i, label %.thread122

.thread122:                                       ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.v

bb.i:                                             ; preds = %.thread, %.loopexit
  %i.bf = phi ptr [ %.080, %.thread ], [ %i.bd, %.loopexit ] ; 8 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 4 uses
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !75 ; 3 uses
  %i.bi = add i32 %i.bh, 1
  store i32 %i.bi, ptr %i.bg, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !34
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !32 ; 2 uses
  %i.bn = zext i32 %i.bm to i64
  %i.bo = and i64 %i.ad, %i.bn                    ; 2 uses
  %i.bp = load i32, ptr %0, align 8, !tbaa !31
  %i.bq = zext i32 %i.bp to i64
  %.not104 = icmp samesign ult i64 %i.bo, %i.bq
  %i.br = lshr i32 %i.bm, 1
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = and i64 %i.ad, %i.bs
  %i.bu = select i1 %.not104, i64 %i.bo, i64 %i.bt
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bu ; 4 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !46 ; 3 uses
  %.not105133 = icmp eq ptr %i.bw, null
  br i1 %.not105133, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.bx = load i32, ptr %5, align 8
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %ftc_gnode_compare.exit.thread
  %i.by = phi ptr [ %i.bw, %.lr.ph ], [ %i.ci, %ftc_gnode_compare.exit.thread ] ; 16 uses
  %.082134 = phi ptr [ %i.bv, %.lr.ph ], [ %i.ch, %ftc_gnode_compare.exit.thread ]
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !76
  %i.cb = icmp eq i64 %i.ca, %i.ad
  br i1 %i.cb, label %bb.k, label %ftc_gnode_compare.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !79
  %i.ce = icmp eq ptr %i.cd, %i.bf
  br i1 %i.ce, label %ftc_gnode_compare.exit, label %ftc_gnode_compare.exit.thread

ftc_gnode_compare.exit:                           ; preds = %bb.k
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 48
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !81
  %.not128 = icmp eq i32 %i.cg, %i.bx
  br i1 %.not128, label %bb.l, label %ftc_gnode_compare.exit.thread

ftc_gnode_compare.exit.thread:                    ; preds = %bb.k, %ftc_gnode_compare.exit, %bb.j
  %i.ch = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !46 ; 2 uses
  %.not105 = icmp eq ptr %i.ci, null
  br i1 %.not105, label %._crit_edge, label %bb.j

bb.l:                                             ; preds = %ftc_gnode_compare.exit
  %.not110 = icmp eq ptr %i.by, %i.bw
  br i1 %.not110, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cj = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !82
  store ptr %i.ck, ptr %.082134, align 8, !tbaa !46
  %i.cl = load ptr, ptr %i.bv, align 8, !tbaa !46
  store ptr %i.cl, ptr %i.cj, align 8, !tbaa !82
  store ptr %i.by, ptr %i.bv, align 8, !tbaa !46
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !18
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !83 ; 3 uses
  %.not111 = icmp eq ptr %i.by, %i.cp
  br i1 %.not111, label %bb.o, label %FTC_MruNode_Up.exit116

FTC_MruNode_Up.exit116:                           ; preds = %bb.n
  %i.cq = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !70 ; 2 uses
  %i.cs = load ptr, ptr %i.by, align 8, !tbaa !71 ; 2 uses
  store ptr %i.cs, ptr %i.cr, align 8, !tbaa !71
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store ptr %i.cr, ptr %i.ct, align 8, !tbaa !70
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !70 ; 2 uses
  store ptr %i.by, ptr %i.cv, align 8, !tbaa !71
  store ptr %i.by, ptr %i.cu, align 8, !tbaa !70
  store ptr %i.cp, ptr %i.by, align 8, !tbaa !71
  store ptr %i.cv, ptr %i.cq, align 8, !tbaa !70
  store ptr %i.by, ptr %i.co, align 8, !tbaa !61
  br label %bb.o

._crit_edge:                                      ; preds = %ftc_gnode_compare.exit.thread, %bb.i
  store ptr null, ptr %i.b, align 8, !tbaa !46
  %i.cw = call fastcc i32 @FTC_Cache_NewNode(ptr noundef nonnull %0, i64 noundef %i.ad, ptr noundef %5, ptr noundef %i.b)
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !46
  %.pre140 = load i32, ptr %i.bg, align 8, !tbaa !75
  %6 = add i32 %.pre140, -1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %FTC_MruNode_Up.exit116, %._crit_edge
  %7 = phi i32 [ %6, %._crit_edge ], [ %i.bh, %FTC_MruNode_Up.exit116 ], [ %i.bh, %bb.n ] ; 2 uses
  %i.cx = phi ptr [ %.pre, %._crit_edge ], [ %i.by, %FTC_MruNode_Up.exit116 ], [ %i.by, %bb.n ] ; 3 uses
  %.1 = phi i32 [ %i.cw, %._crit_edge ], [ 0, %FTC_MruNode_Up.exit116 ], [ 0, %bb.n ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  store i32 %7, ptr %i.bg, align 8, !tbaa !75
  %i.cy = icmp eq i32 %7, 0
  br i1 %i.cy, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.cz = load ptr, ptr %i.af, align 8, !tbaa !61
  %i.da = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !70 ; 2 uses
  %i.dc = load ptr, ptr %i.bf, align 8, !tbaa !71 ; 4 uses
  store ptr %i.dc, ptr %i.db, align 8, !tbaa !71
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store ptr %i.db, ptr %i.dd, align 8, !tbaa !70
  %i.de = icmp eq ptr %i.bf, %i.dc
  br i1 %i.de, label %.sink.split.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.df = icmp eq ptr %i.bf, %i.cz
  br i1 %i.df, label %.sink.split.i.i, label %FTC_MruNode_Remove.exit.i

.sink.split.i.i:                                  ; preds = %bb.q, %bb.p
  %.sink.i.i = phi ptr [ null, %bb.p ], [ %i.dc, %bb.q ]
  store ptr %.sink.i.i, ptr %i.af, align 8, !tbaa !61
  br label %FTC_MruNode_Remove.exit.i

FTC_MruNode_Remove.exit.i:                        ; preds = %.sink.split.i.i, %bb.q
  %i.dg = load i32, ptr %i.ae, align 8, !tbaa !84
  %i.dh = add i32 %i.dg, -1
  store i32 %i.dh, ptr %i.ae, align 8, !tbaa !84
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !41
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !85 ; 2 uses
  %.not.i117 = icmp eq ptr %i.dl, null
  br i1 %.not.i117, label %FTC_MruList_Remove.exit, label %bb.r

bb.r:                                             ; preds = %FTC_MruNode_Remove.exit.i
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !40
  call void %i.dl(ptr noundef nonnull %i.bf, ptr noundef %i.dn) #13, !inline_history !86
  br label %FTC_MruList_Remove.exit

FTC_MruList_Remove.exit:                          ; preds = %FTC_MruNode_Remove.exit.i, %bb.r
  call void @ft_mem_free(ptr noundef %i.dj, ptr noundef nonnull %i.bf) #13
  br label %bb.s

bb.s:                                             ; preds = %bb.o, %FTC_MruList_Remove.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %.not113 = icmp eq i32 %.1, 0
  br i1 %.not113, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.do = getelementptr inbounds nuw i8, ptr %i.cx, i64 56
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !87
  store ptr %i.dp, ptr %3, align 8, !tbaa !44
  br i1 %.not97, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store ptr %i.cx, ptr %4, align 8, !tbaa !46
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cx, i64 34 ; 2 uses
  %i.dr = load i16, ptr %i.dq, align 2, !tbaa !89
  %i.ds = add i16 %i.dr, 1
  store i16 %i.ds, ptr %i.dq, align 2, !tbaa !89
  br label %bb.v

bb.v:                                             ; preds = %.thread122, %bb.a, %bb.s, %bb.u, %bb.t
  %.3 = phi i32 [ %.1, %bb.s ], [ 0, %bb.u ], [ 0, %bb.t ], [ 6, %bb.a ], [ %i.bc, %.thread122 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  ret i32 %.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal zeroext range(i8 0, 2) i8 @ftc_basic_family_compare(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !49
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load i32, ptr %i.f, align 8, !tbaa !66
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !90
  %i.j = icmp eq i32 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.l = load i32, ptr %i.k, align 4, !tbaa !67
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.n = load i32, ptr %i.m, align 4, !tbaa !91
  %i.o = icmp eq i32 %i.l, %i.n
  br i1 %i.o, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load i32, ptr %i.p, align 8, !tbaa !68
  %i.r = icmp ne i32 %i.q, 0                      ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.t = load i32, ptr %i.s, align 8, !tbaa !92
  %i.u = icmp eq i32 %i.t, 0
  %i.v = xor i1 %i.r, %i.u
  br i1 %i.v, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  br i1 %i.r, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.x = load i32, ptr %i.w, align 4, !tbaa !93
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.z = load i32, ptr %i.y, align 4, !tbaa !94
  %i.aa = icmp eq i32 %i.x, %i.z
  br i1 %i.aa, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !95
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !59
  %i.af = icmp eq i32 %i.ac, %i.ae
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !69
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !56
  %i.ak = icmp eq i32 %i.ah, %i.aj
  %i.al = zext i1 %i.ak to i8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.d, %bb.c, %bb.b, %bb.a
  %i.am = phi i8 [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ], [ %i.al, %bb.h ]
  ret i8 %i.am
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @FTC_MruList_New(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 8)) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !41   ; 2 uses
  %i.d = load i32, ptr %0, align 8, !tbaa !84
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !96
  %i.g = add i32 %i.f, -1
  %or.cond.not = icmp ult i32 %i.g, %i.d
  br i1 %or.cond.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !97   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !70   ; 16 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !98   ; 2 uses
  %.not41 = icmp eq ptr %i.m, null
  br i1 %.not41, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq ptr %i.i, %i.k
  br i1 %.not.i, label %FTC_MruNode_Up.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !70   ; 2 uses
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !71   ; 2 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !71
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.o, ptr %i.q, align 8, !tbaa !70
  %i.r = load ptr, ptr %i.j, align 8, !tbaa !70   ; 2 uses
  store ptr %i.k, ptr %i.r, align 8, !tbaa !71
  store ptr %i.k, ptr %i.j, align 8, !tbaa !70
  store ptr %i.i, ptr %i.k, align 8, !tbaa !71
  store ptr %i.r, ptr %i.n, align 8, !tbaa !70
  store ptr %i.k, ptr %i.h, align 8, !tbaa !61
  br label %FTC_MruNode_Up.exit

FTC_MruNode_Up.exit:                              ; preds = %bb.c, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !40
  %i.u = tail call i32 %i.m(ptr noundef %i.k, ptr noundef %1, ptr noundef %i.t) #13 ; 2 uses
  store i32 %i.u, ptr %i.a, align 4, !tbaa !3
  %.not42 = icmp eq i32 %i.u, 0
  br i1 %.not42, label %bb.l, label %FTC_MruNode_Up.exit._crit_edge

FTC_MruNode_Up.exit._crit_edge:                   ; preds = %FTC_MruNode_Up.exit
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !61
  br label %bb.e

bb.e:                                             ; preds = %FTC_MruNode_Up.exit._crit_edge, %bb.b
  %i.v = phi ptr [ %.pre, %FTC_MruNode_Up.exit._crit_edge ], [ %i.i, %bb.b ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 8
end_hunk_0
begin_hunk_1_@FTC_Cache_NewNode:bb.a
  %.not18.i.i = icmp eq ptr %.0.i.i, %i.bz
  br i1 %.not18.i.i, label %FTC_Manager_Compress.exit.loopexit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ch = load i64, ptr %i.bs, align 8, !tbaa !109
  %i.ci = load i64, ptr %i.bv, align 8, !tbaa !110
  %i.cj = icmp ugt i64 %i.ch, %i.ci
  br i1 %i.cj, label %bb.n, label %FTC_Manager_Compress.exit.loopexit.i, !llvm.loop !111

FTC_Manager_Compress.exit.loopexit.i:             ; preds = %bb.q, %bb.p
  %.pre.i = load i16, ptr %i.an, align 2, !tbaa !89
  %i.ck = add i16 %.pre.i, -1
  br label %FTC_Manager_Compress.exit.i

FTC_Manager_Compress.exit.i:                      ; preds = %FTC_Manager_Compress.exit.loopexit.i, %bb.l
  %i.cl = phi i16 [ %i.ck, %FTC_Manager_Compress.exit.loopexit.i ], [ %i.bx, %bb.l ]
  store i16 %i.cl, ptr %i.an, align 2, !tbaa !89
  br label %ftc_cache_add.exit

ftc_cache_add.exit:                               ; preds = %FTC_Manager_Compress.exit.i, %ftc_node_mru_link.exit.i, %.thread31
  %i.cm = phi i32 [ 0, %FTC_Manager_Compress.exit.i ], [ 0, %ftc_node_mru_link.exit.i ], [ %i.ag, %.thread31 ]
  %i.cn = load ptr, ptr %i.a, align 8, !tbaa !46
  store ptr %i.cn, ptr %3, align 8, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %i.cm
}

; Function Attrs: nounwind uwtable
define i32 @FTC_ImageCache_LookupScaler(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4, ptr nofree noundef writeonly captures(address_is_null) %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.FTC_BasicQueryRec_, align 8 ; 17 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.c = icmp ne ptr %4, null
  %i.d = icmp ne ptr %1, null
  %or.cond = and i1 %i.d, %i.c
  br i1 %or.cond, label %bb.b, label %bb.ab

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %4, align 8, !tbaa !44
  %.not = icmp eq ptr %5, null                    ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %5, align 8, !tbaa !46
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !112
  %i.f = trunc i64 %2 to i32                      ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i32 %i.f, ptr %i.g, align 8, !tbaa !56
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !49   ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.j = lshr i64 %i.i, 3
  %i.k = shl i64 %i.i, 7
  %i.l = xor i64 %i.j, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !90   ; 2 uses
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.q = load i32, ptr %i.p, align 4, !tbaa !91   ; 2 uses
  %i.r = mul i32 %i.q, 7
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.u = load i32, ptr %i.t, align 8, !tbaa !92
  %.not99 = icmp eq i32 %i.u, 0                   ; 2 uses
  br i1 %.not99, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 36
  %i.w = load i32, ptr %i.v, align 4, !tbaa !94
  %i.x = mul i32 %i.w, 33
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.z = load i32, ptr %i.y, align 8, !tbaa !59
  %i.aa = mul i32 %i.z, 61
  %i.ab = xor i32 %i.aa, %i.x
  %i.ac = zext i32 %i.ab to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.ad = phi i64 [ %i.ac, %bb.e ], [ 0, %bb.d ]
  %i.ae = mul i64 %2, 31
  %i.af = and i64 %i.ae, 4294967295
  %i.ag = zext i32 %3 to i64
  %i.ah = add nuw nsw i64 %i.af, %i.ag
  %i.ai = add nuw nsw i64 %i.ah, %i.o
  %i.aj = add i64 %i.ai, %i.l
  %i.ak = add i64 %i.aj, %i.s
  %i.al = add i64 %i.ak, %i.ad                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 %3, ptr %6, align 8, !tbaa !60
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !61 ; 6 uses
  %.not100 = icmp eq ptr %i.ao, null
  br i1 %.not100, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 36
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.as = load i32, ptr %i.ar, align 8
  br label %bb.g

bb.g:                                             ; preds = %.preheader, %ftc_basic_family_compare.exit.thread
  %.081 = phi ptr [ %i.bv, %ftc_basic_family_compare.exit.thread ], [ %i.ao, %.preheader ] ; 18 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.081, i64 40
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !62
  %i.av = icmp eq ptr %i.au, %i.h
  br i1 %i.av, label %bb.h, label %ftc_basic_family_compare.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %.081, i64 48
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !66
  %i.ay = icmp eq i32 %i.ax, %i.n
  br i1 %i.ay, label %bb.i, label %ftc_basic_family_compare.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %.081, i64 52
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !67
  %i.bb = icmp eq i32 %i.ba, %i.q
  br i1 %i.bb, label %bb.j, label %ftc_basic_family_compare.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.081, i64 56
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !68
  %i.be = icmp ne i32 %i.bd, 0                    ; 2 uses
  %i.bf = xor i1 %.not99, %i.be
  br i1 %i.bf, label %bb.k, label %ftc_basic_family_compare.exit.thread

bb.k:                                             ; preds = %bb.j
  br i1 %i.be, label %ftc_basic_family_compare.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bg = getelementptr inbounds nuw i8, ptr %.081, i64 60
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !93
  %i.bi = icmp eq i32 %i.bh, %i.aq
  br i1 %i.bi, label %bb.m, label %ftc_basic_family_compare.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.bj = getelementptr inbounds nuw i8, ptr %.081, i64 64
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !95
  %i.bl = icmp eq i32 %i.bk, %i.as
  br i1 %i.bl, label %ftc_basic_family_compare.exit, label %ftc_basic_family_compare.exit.thread

ftc_basic_family_compare.exit:                    ; preds = %bb.k, %bb.m
  %i.bm = getelementptr inbounds nuw i8, ptr %.081, i64 72
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !69
  %.not127 = icmp eq i32 %i.bn, %i.f
  br i1 %.not127, label %bb.n, label %ftc_basic_family_compare.exit.thread

bb.n:                                             ; preds = %ftc_basic_family_compare.exit
  %.not103 = icmp eq ptr %.081, %i.ao
  br i1 %.not103, label %.thread, label %FTC_MruNode_Up.exit

FTC_MruNode_Up.exit:                              ; preds = %bb.n
  %i.bo = getelementptr inbounds nuw i8, ptr %.081, i64 8 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !70 ; 2 uses
  %i.bq = load ptr, ptr %.081, align 8, !tbaa !71 ; 2 uses
  store ptr %i.bq, ptr %i.bp, align 8, !tbaa !71
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store ptr %i.bp, ptr %i.br, align 8, !tbaa !70
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !70 ; 2 uses
  store ptr %.081, ptr %i.bt, align 8, !tbaa !71
  store ptr %.081, ptr %i.bs, align 8, !tbaa !70
  store ptr %i.ao, ptr %.081, align 8, !tbaa !71
  store ptr %i.bt, ptr %i.bo, align 8, !tbaa !70
  store ptr %.081, ptr %i.an, align 8, !tbaa !61
  br label %.thread

.thread:                                          ; preds = %bb.n, %FTC_MruNode_Up.exit
  store ptr %.081, ptr %i.a, align 8, !tbaa !61
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %.081, ptr %i.bu, align 8, !tbaa !72
  br label %bb.o

ftc_basic_family_compare.exit.thread:             ; preds = %bb.g, %bb.h, %bb.i, %bb.j, %bb.l, %bb.m, %ftc_basic_family_compare.exit
  %i.bv = load ptr, ptr %.081, align 8, !tbaa !71 ; 2 uses
  %.not102 = icmp eq ptr %i.bv, %i.ao
  br i1 %.not102, label %.loopexit, label %bb.g, !llvm.loop !113

.loopexit:                                        ; preds = %ftc_basic_family_compare.exit.thread, %bb.f
  %i.bw = call fastcc i32 @FTC_MruList_New(ptr noundef nonnull %i.am, ptr noundef nonnull %6, ptr noundef %i.a) ; 2 uses
  %i.bx = load ptr, ptr %i.a, align 8, !tbaa !61  ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !72
  %.not104 = icmp eq i32 %i.bw, 0
  br i1 %.not104, label %bb.o, label %.thread123

.thread123:                                       ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.ab

bb.o:                                             ; preds = %.thread, %.loopexit
  %i.bz = phi ptr [ %.081, %.thread ], [ %i.bx, %.loopexit ] ; 8 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16 ; 4 uses
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !75 ; 3 uses
  %i.cc = add i32 %i.cb, 1
  store i32 %i.cc, ptr %i.ca, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !34
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !32 ; 2 uses
  %i.ch = zext i32 %i.cg to i64
  %i.ci = and i64 %i.al, %i.ch                    ; 2 uses
  %i.cj = load i32, ptr %0, align 8, !tbaa !31
  %i.ck = zext i32 %i.cj to i64
  %.not105 = icmp samesign ult i64 %i.ci, %i.ck
  %i.cl = lshr i32 %i.cg, 1
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = and i64 %i.al, %i.cm
  %i.co = select i1 %.not105, i64 %i.ci, i64 %i.cn
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.co ; 4 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !46 ; 3 uses
  %.not106133 = icmp eq ptr %i.cq, null
  br i1 %.not106133, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o
  %i.cr = load i32, ptr %6, align 8
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %ftc_gnode_compare.exit.thread
  %i.cs = phi ptr [ %i.cq, %.lr.ph ], [ %i.dc, %ftc_gnode_compare.exit.thread ] ; 16 uses
  %.083134 = phi ptr [ %i.cp, %.lr.ph ], [ %i.db, %ftc_gnode_compare.exit.thread ]
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !76
  %i.cv = icmp eq i64 %i.cu, %i.al
  br i1 %i.cv, label %bb.q, label %ftc_gnode_compare.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 40
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !79
  %i.cy = icmp eq ptr %i.cx, %i.bz
  br i1 %i.cy, label %ftc_gnode_compare.exit, label %ftc_gnode_compare.exit.thread

ftc_gnode_compare.exit:                           ; preds = %bb.q
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cs, i64 48
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !81
  %.not128 = icmp eq i32 %i.da, %i.cr
  br i1 %.not128, label %bb.r, label %ftc_gnode_compare.exit.thread

ftc_gnode_compare.exit.thread:                    ; preds = %bb.q, %ftc_gnode_compare.exit, %bb.p
  %i.db = getelementptr inbounds nuw i8, ptr %i.cs, i64 16 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !46 ; 2 uses
  %.not106 = icmp eq ptr %i.dc, null
  br i1 %.not106, label %._crit_edge, label %bb.p

bb.r:                                             ; preds = %ftc_gnode_compare.exit
  %.not111 = icmp eq ptr %i.cs, %i.cq
  br i1 %.not111, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cs, i64 16 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !82
  store ptr %i.de, ptr %.083134, align 8, !tbaa !46
  %i.df = load ptr, ptr %i.cp, align 8, !tbaa !46
  store ptr %i.df, ptr %i.dd, align 8, !tbaa !82
  store ptr %i.cs, ptr %i.cp, align 8, !tbaa !46
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !18
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !83 ; 3 uses
  %.not112 = icmp eq ptr %i.cs, %i.dj
  br i1 %.not112, label %bb.u, label %FTC_MruNode_Up.exit117

FTC_MruNode_Up.exit117:                           ; preds = %bb.t
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !70 ; 2 uses
  %i.dm = load ptr, ptr %i.cs, align 8, !tbaa !71 ; 2 uses
  store ptr %i.dm, ptr %i.dl, align 8, !tbaa !71
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store ptr %i.dl, ptr %i.dn, align 8, !tbaa !70
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 8 ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !70 ; 2 uses
  store ptr %i.cs, ptr %i.dp, align 8, !tbaa !71
  store ptr %i.cs, ptr %i.do, align 8, !tbaa !70
  store ptr %i.dj, ptr %i.cs, align 8, !tbaa !71
  store ptr %i.dp, ptr %i.dk, align 8, !tbaa !70
  store ptr %i.cs, ptr %i.di, align 8, !tbaa !61
  br label %bb.u

._crit_edge:                                      ; preds = %ftc_gnode_compare.exit.thread, %bb.o
  store ptr null, ptr %i.b, align 8, !tbaa !46
  %i.dq = call fastcc i32 @FTC_Cache_NewNode(ptr noundef nonnull %0, i64 noundef %i.al, ptr noundef %6, ptr noundef %i.b)
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !46
  %.pre140 = load i32, ptr %i.ca, align 8, !tbaa !75
  %7 = add i32 %.pre140, -1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %FTC_MruNode_Up.exit117, %._crit_edge
  %8 = phi i32 [ %7, %._crit_edge ], [ %i.cb, %FTC_MruNode_Up.exit117 ], [ %i.cb, %bb.t ] ; 2 uses
  %i.dr = phi ptr [ %.pre, %._crit_edge ], [ %i.cs, %FTC_MruNode_Up.exit117 ], [ %i.cs, %bb.t ] ; 3 uses
  %.1 = phi i32 [ %i.dq, %._crit_edge ], [ 0, %FTC_MruNode_Up.exit117 ], [ 0, %bb.t ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  store i32 %8, ptr %i.ca, align 8, !tbaa !75
  %i.ds = icmp eq i32 %8, 0
  br i1 %i.ds, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.dt = load ptr, ptr %i.an, align 8, !tbaa !61
  %i.du = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !70 ; 2 uses
  %i.dw = load ptr, ptr %i.bz, align 8, !tbaa !71 ; 4 uses
  store ptr %i.dw, ptr %i.dv, align 8, !tbaa !71
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store ptr %i.dv, ptr %i.dx, align 8, !tbaa !70
  %i.dy = icmp eq ptr %i.bz, %i.dw
  br i1 %i.dy, label %.sink.split.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dz = icmp eq ptr %i.bz, %i.dt
  br i1 %i.dz, label %.sink.split.i.i, label %FTC_MruNode_Remove.exit.i

.sink.split.i.i:                                  ; preds = %bb.w, %bb.v
  %.sink.i.i = phi ptr [ null, %bb.v ], [ %i.dw, %bb.w ]
  store ptr %.sink.i.i, ptr %i.an, align 8, !tbaa !61
  br label %FTC_MruNode_Remove.exit.i

FTC_MruNode_Remove.exit.i:                        ; preds = %.sink.split.i.i, %bb.w
  %i.ea = load i32, ptr %i.am, align 8, !tbaa !84
  %i.eb = add i32 %i.ea, -1
  store i32 %i.eb, ptr %i.am, align 8, !tbaa !84
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !41
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !85 ; 2 uses
  %.not.i118 = icmp eq ptr %i.ef, null
  br i1 %.not.i118, label %FTC_MruList_Remove.exit, label %bb.x

bb.x:                                             ; preds = %FTC_MruNode_Remove.exit.i
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !40
  call void %i.ef(ptr noundef nonnull %i.bz, ptr noundef %i.eh) #13, !inline_history !86
  br label %FTC_MruList_Remove.exit

FTC_MruList_Remove.exit:                          ; preds = %FTC_MruNode_Remove.exit.i, %bb.x
  call void @ft_mem_free(ptr noundef %i.ed, ptr noundef nonnull %i.bz) #13
  br label %bb.y

bb.y:                                             ; preds = %bb.u, %FTC_MruList_Remove.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %.not114 = icmp eq i32 %.1, 0
  br i1 %.not114, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dr, i64 56
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !87
  store ptr %i.ej, ptr %4, align 8, !tbaa !44
  br i1 %.not, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store ptr %i.dr, ptr %5, align 8, !tbaa !46
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dr, i64 34 ; 2 uses
  %i.el = load i16, ptr %i.ek, align 2, !tbaa !89
  %i.em = add i16 %i.el, 1
  store i16 %i.em, ptr %i.ek, align 2, !tbaa !89
  br label %bb.ab

bb.ab:                                            ; preds = %.thread123, %bb.a, %bb.y, %bb.aa, %bb.z
  %.3 = phi i32 [ %.1, %bb.y ], [ 0, %bb.aa ], [ 0, %bb.z ], [ 6, %bb.a ], [ %i.bw, %.thread123 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  ret i32 %.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define i32 @FTC_SBitCache_New(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i32 6, ptr %i.b, align 4, !tbaa !3
  %i.c = icmp ne ptr %0, null
  %i.d = icmp ne ptr %1, null                     ; 2 uses
  %or.cond3.i.i = and i1 %i.c, %i.d
  br i1 %or.cond3.i.i, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !7    ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !17
  %i.i = icmp ugt i32 %i.h, 15
  br i1 %i.i, label %.thread.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = call ptr @ft_mem_qalloc(ptr noundef %i.f, i64 noundef 192, ptr noundef nonnull %i.b) #13 ; 19 uses
  %i.k = load i32, ptr %i.b, align 4, !tbaa !3    ; 2 uses
  %.not.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i, label %bb.d, label %.thread.i.i

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  store ptr %0, ptr %i.l, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 96 ; 2 uses
  store ptr %i.f, ptr %i.m, align 8, !tbaa !25
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.n, ptr noundef nonnull align 8 dereferenceable(64) @ftc_basic_sbit_cache_class, i64 64, i1 false), !tbaa.struct !26
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 112 ; 2 uses
  store ptr @ftc_basic_sbit_cache_class, ptr %i.o, align 8, !tbaa !29
  %i.p = load i32, ptr %i.g, align 8, !tbaa !17
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  store i32 %i.p, ptr %i.q, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 8, ptr %i.j, align 8, !tbaa !31
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 7, ptr %i.r, align 4, !tbaa !32
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 16, ptr %i.s, align 8, !tbaa !33
  %i.t = call ptr @ft_mem_realloc(ptr noundef %i.f, i64 noundef 8, i64 noundef 0, i64 noundef 8, ptr noundef null, ptr noundef nonnull %i.a) #13
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.t, ptr %i.u, align 8, !tbaa !34
  %i.v = load i32, ptr %i.a, align 4, !tbaa !3    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %.not.i = icmp eq i32 %i.v, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %i.v, ptr %i.b, align 4, !tbaa !3
  call void @ftc_gcache_done(ptr noundef nonnull %i.j) #13, !inline_history !35
  call void @ft_mem_free(ptr noundef %i.f, ptr noundef nonnull %i.j) #13
  %.pre.pre.i.i = load i32, ptr %i.b, align 4, !tbaa !3
  br label %.thread.i.i

bb.f:                                             ; preds = %bb.d
  %i.w = load ptr, ptr %i.o, align 8, !tbaa !29
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 120
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !36
  %i.aa = load ptr, ptr %i.m, align 8, !tbaa !25
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ab, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.z, i64 40, i1 false), !tbaa.struct !39
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 136
  store ptr %i.j, ptr %i.ac, align 8, !tbaa !40
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 184
  store ptr %i.aa, ptr %i.ad, align 8, !tbaa !41
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.af = load i32, ptr %i.g, align 8, !tbaa !17  ; 2 uses
  %i.ag = add i32 %i.af, 1
  store i32 %i.ag, ptr %i.g, align 8, !tbaa !17
  %i.ah = zext i32 %i.af to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ah
  store ptr %i.j, ptr %i.ai, align 8, !tbaa !42
  br label %.thread.i.i

bb.g:                                             ; preds = %bb.a
  br i1 %i.d, label %.thread.i.i, label %FTC_GCache_New.exit

.thread.i.i:                                      ; preds = %bb.g, %bb.f, %bb.e, %bb.c, %bb.b
  %.pre.i.i = phi i32 [ 6, %bb.g ], [ %i.k, %bb.c ], [ 0, %bb.f ], [ %.pre.pre.i.i, %bb.e ], [ 112, %bb.b ]
  %.140.i.i = phi ptr [ null, %bb.g ], [ %i.j, %bb.c ], [ %i.j, %bb.f ], [ null, %bb.e ], [ null, %bb.b ]
  store ptr %.140.i.i, ptr %1, align 8, !tbaa !42
  br label %FTC_GCache_New.exit

FTC_GCache_New.exit:                              ; preds = %bb.g, %.thread.i.i
  %i.aj = phi i32 [ %.pre.i.i, %.thread.i.i ], [ 6, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  ret i32 %i.aj
}

; Function Attrs: nounwind uwtable
define i32 @FTC_SBitCache_Lookup(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.FTC_BasicQueryRec_, align 8 ; 12 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %.not = icmp eq ptr %4, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %4, align 8, !tbaa !46
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not101 = icmp eq ptr %3, null
  br i1 %.not101, label %bb.v, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %3, align 8, !tbaa !114
  %i.d = load ptr, ptr %1, align 8, !tbaa !47     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.d, ptr %i.e, align 8, !tbaa !49
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i32, ptr %i.i, align 8, !tbaa !55   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i32 %i.j, ptr %i.k, align 8, !tbaa !56
end_hunk_1
