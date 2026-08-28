Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/ftcache?download=true
inline.NumInlined: 85
inline.NumDeleted: 30
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@FTC_SBitCache_New:bb.a
  store ptr %i.j, ptr %i.ac, align 8, !tbaa !42
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 176
  store ptr %i.aa, ptr %i.ad, align 8, !tbaa !43
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.af = load i32, ptr %i.g, align 8, !tbaa !19  ; 2 uses
  %i.ag = add i32 %i.af, 1
  store i32 %i.ag, ptr %i.g, align 8, !tbaa !19
  %i.ah = zext i32 %i.af to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ah
  store ptr %i.j, ptr %i.ai, align 8, !tbaa !44
  br label %.thread.i.i

bb.g:                                             ; preds = %bb.a
  br i1 %i.d, label %.thread.i.i, label %FTC_GCache_New.exit

.thread.i.i:                                      ; preds = %bb.g, %bb.f, %bb.e, %bb.c, %bb.b
  %.pre.i.i = phi i32 [ 6, %bb.g ], [ %i.k, %bb.c ], [ 0, %bb.f ], [ %.pre.pre.i.i, %bb.e ], [ 112, %bb.b ]
  %.140.i.i = phi ptr [ null, %bb.g ], [ %i.j, %bb.c ], [ %i.j, %bb.f ], [ null, %bb.e ], [ null, %bb.b ]
  store ptr %.140.i.i, ptr %1, align 8, !tbaa !44
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
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %3, align 8, !tbaa !115
  %.not101 = icmp eq ptr %4, null                 ; 2 uses
  br i1 %.not101, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %4, align 8, !tbaa !48
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.d = load ptr, ptr %1, align 8, !tbaa !49     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.d, ptr %i.e, align 8, !tbaa !51
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i32, ptr %i.i, align 8, !tbaa !57   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i32 %i.j, ptr %i.k, align 8, !tbaa !58
  %i.l = load <2 x i32>, ptr %i.f, align 8, !tbaa !8
  %i.m = load i32, ptr %i.h, align 4, !tbaa !59   ; 2 uses
  %i.n = load i32, ptr %i.f, align 8, !tbaa !60   ; 2 uses
  %i.o = shufflevector <2 x i32> %i.l, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.p = shufflevector <4 x i32> %i.o, <4 x i32> <i32 poison, i32 poison, i32 1, i32 0>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.p, ptr %i.g, align 8, !tbaa !8
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i32 0, ptr %i.q, align 8, !tbaa !61
  %i.r = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.s = lshr i64 %i.r, 3
  %i.t = shl i64 %i.r, 7
  %i.u = xor i64 %i.s, %i.t
  %i.v = zext i32 %i.n to i64
  %i.w = mul i32 %i.m, 7
  %i.x = zext i32 %i.w to i64
  %i.y = mul nsw i32 %i.j, 31
  %i.z = sext i32 %i.y to i64
  %i.aa = lshr i32 %2, 4
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = add nuw nsw i64 %i.v, %i.ab
  %i.ad = add i64 %i.ac, %i.u
  %i.ae = add i64 %i.ad, %i.x
  %i.af = add i64 %i.ae, %i.z                     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 %2, ptr %5, align 8, !tbaa !62
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !63 ; 6 uses
  %.not103 = icmp eq ptr %i.ai, null
  br i1 %.not103, label %.loopexit132, label %.preheader

.preheader:                                       ; preds = %bb.d, %ftc_basic_family_compare.exit.thread
  %.083 = phi ptr [ %i.bd, %ftc_basic_family_compare.exit.thread ], [ %i.ai, %bb.d ] ; 16 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.083, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !64
  %i.al = icmp eq ptr %i.ak, %i.d
  br i1 %i.al, label %bb.e, label %ftc_basic_family_compare.exit.thread

bb.e:                                             ; preds = %.preheader
  %i.am = getelementptr inbounds nuw i8, ptr %.083, i64 48
  %i.an = load i32, ptr %i.am, align 8, !tbaa !68
  %i.ao = icmp eq i32 %i.an, %i.n
  br i1 %i.ao, label %bb.f, label %ftc_basic_family_compare.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %.083, i64 52
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !69
  %i.ar = icmp eq i32 %i.aq, %i.m
  br i1 %i.ar, label %bb.g, label %ftc_basic_family_compare.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %.083, i64 56
  %i.at = load i32, ptr %i.as, align 8, !tbaa !70
  %.not128 = icmp eq i32 %i.at, 0
  br i1 %.not128, label %ftc_basic_family_compare.exit.thread, label %ftc_basic_family_compare.exit

ftc_basic_family_compare.exit:                    ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %.083, i64 72
  %i.av = load i32, ptr %i.au, align 8, !tbaa !71
  %.not129 = icmp eq i32 %i.av, %i.j
  br i1 %.not129, label %bb.h, label %ftc_basic_family_compare.exit.thread

bb.h:                                             ; preds = %ftc_basic_family_compare.exit
  %.not106 = icmp eq ptr %.083, %i.ai
  br i1 %.not106, label %.thread, label %FTC_MruNode_Up.exit

FTC_MruNode_Up.exit:                              ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %.083, i64 8 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !72 ; 2 uses
  %i.ay = load ptr, ptr %.083, align 8, !tbaa !73 ; 2 uses
  store ptr %i.ay, ptr %i.ax, align 8, !tbaa !73
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !72
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !72 ; 2 uses
  store ptr %.083, ptr %i.bb, align 8, !tbaa !73
  store ptr %.083, ptr %i.ba, align 8, !tbaa !72
  store ptr %i.ai, ptr %.083, align 8, !tbaa !73
  store ptr %i.bb, ptr %i.aw, align 8, !tbaa !72
  store ptr %.083, ptr %i.ah, align 8, !tbaa !63
  br label %.thread

.thread:                                          ; preds = %bb.h, %FTC_MruNode_Up.exit
  store ptr %.083, ptr %i.a, align 8, !tbaa !63
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.083, ptr %i.bc, align 8, !tbaa !74
  br label %bb.i

ftc_basic_family_compare.exit.thread:             ; preds = %bb.e, %bb.f, %bb.g, %.preheader, %ftc_basic_family_compare.exit
  %i.bd = load ptr, ptr %.083, align 8, !tbaa !73 ; 2 uses
  %.not105 = icmp eq ptr %i.bd, %i.ai
  br i1 %.not105, label %.loopexit132, label %.preheader, !llvm.loop !117

.loopexit132:                                     ; preds = %ftc_basic_family_compare.exit.thread, %bb.d
  %i.be = call fastcc i32 @FTC_MruList_New(ptr noundef nonnull %i.ag, ptr noundef nonnull %5, ptr noundef %i.a) ; 2 uses
  %i.bf = load ptr, ptr %i.a, align 8, !tbaa !63  ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !74
  %.not107 = icmp eq i32 %i.be, 0
  br i1 %.not107, label %bb.i, label %.thread124

.thread124:                                       ; preds = %.loopexit132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.v

bb.i:                                             ; preds = %.thread, %.loopexit132
  %i.bh = phi ptr [ %.083, %.thread ], [ %i.bf, %.loopexit132 ] ; 7 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 4 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !77
  %i.bk = add i32 %i.bj, 1
  store i32 %i.bk, ptr %i.bi, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store i8 0, ptr %i.c, align 1, !tbaa !102
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !36
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !34 ; 2 uses
  %i.bp = zext i32 %i.bo to i64
  %i.bq = and i64 %i.af, %i.bp                    ; 2 uses
  %i.br = load i32, ptr %0, align 8, !tbaa !33
  %i.bs = zext i32 %i.br to i64
  %.not108 = icmp samesign ult i64 %i.bq, %i.bs
  %i.bt = lshr i32 %i.bo, 1
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = and i64 %i.af, %i.bu
  %i.bw = select i1 %.not108, i64 %i.bq, i64 %i.bv
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bw ; 4 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !48 ; 2 uses
  %.not109138 = icmp eq ptr %i.by, null
  br i1 %.not109138, label %.loopexit131, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i, %bb.k
  %i.bz = phi ptr [ %i.cf, %bb.k ], [ %i.by, %bb.i ] ; 10 uses
  %.0139 = phi ptr [ %i.ce, %bb.k ], [ %i.bx, %bb.i ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !78
  %i.cc = icmp eq i64 %i.cb, %i.af
  br i1 %i.cc, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph
  %i.cd = call zeroext i8 @ftc_snode_compare(ptr noundef nonnull %i.bz, ptr noundef nonnull %5, ptr noundef nonnull %0, ptr noundef nonnull %i.c)
  %.not110 = icmp eq i8 %i.cd, 0
  br i1 %.not110, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %.lr.ph
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 16 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !48 ; 2 uses
  %.not109 = icmp eq ptr %i.cf, null
  br i1 %.not109, label %.loopexit131, label %.lr.ph

bb.l:                                             ; preds = %bb.j
  store ptr %i.bz, ptr %i.b, align 8, !tbaa !48
  %i.cg = load i8, ptr %i.c, align 1, !tbaa !102
  %.not111 = icmp eq i8 %i.cg, 0
  br i1 %.not111, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ch = load ptr, ptr %i.bl, align 8, !tbaa !36
  %i.ci = load i32, ptr %i.bn, align 4, !tbaa !34 ; 2 uses
  %i.cj = zext i32 %i.ci to i64
  %i.ck = and i64 %i.af, %i.cj                    ; 2 uses
  %i.cl = load i32, ptr %0, align 8, !tbaa !33
  %i.cm = zext i32 %i.cl to i64
  %.not112 = icmp samesign ult i64 %i.ck, %i.cm
  %i.cn = lshr i32 %i.ci, 1
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = and i64 %i.af, %i.co
  %i.cq = select i1 %.not112, i64 %i.ck, i64 %i.cp
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cq ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !48 ; 2 uses
  %.not113140 = icmp eq ptr %i.cs, %i.bz
  br i1 %.not113140, label %.loopexit.thread, label %.lr.ph141

bb.n:                                             ; preds = %.lr.ph141
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !48 ; 2 uses
  %.not113 = icmp eq ptr %i.cu, %i.bz
  br i1 %.not113, label %.loopexit.thread172.loopexit, label %.lr.ph141, !llvm.loop !118

.lr.ph141:                                        ; preds = %bb.m, %bb.n
  %i.cv = phi ptr [ %i.cu, %bb.n ], [ %i.cs, %bb.m ] ; 3 uses
  %.not116 = icmp eq ptr %i.cv, null
  br i1 %.not116, label %.loopexit130, label %bb.n

.loopexit:                                        ; preds = %bb.l
  %.pre = load ptr, ptr %i.bx, align 8, !tbaa !48
  %i.cw = icmp eq ptr %i.bz, %.pre
  br i1 %i.cw, label %.loopexit.thread, label %.loopexit.thread172

.loopexit.thread172.loopexit:                     ; preds = %bb.n
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  br label %.loopexit.thread172

.loopexit.thread172:                              ; preds = %.loopexit.thread172.loopexit, %.loopexit
  %.2177 = phi ptr [ %.0139, %.loopexit ], [ %i.cx, %.loopexit.thread172.loopexit ]
  %.082176 = phi ptr [ %i.bx, %.loopexit ], [ %i.cr, %.loopexit.thread172.loopexit ] ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !84
  store ptr %i.cz, ptr %.2177, align 8, !tbaa !48
  %i.da = load ptr, ptr %.082176, align 8, !tbaa !48
  %i.db = load ptr, ptr %i.b, align 8, !tbaa !48  ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  store ptr %i.da, ptr %i.dc, align 8, !tbaa !84
  store ptr %i.db, ptr %.082176, align 8, !tbaa !48
  br label %.loopexit.thread

.loopexit.thread:                                 ; preds = %bb.m, %.loopexit.thread172, %.loopexit
  %i.dd = phi ptr [ %i.db, %.loopexit.thread172 ], [ %i.bz, %.loopexit ], [ %i.bz, %bb.m ] ; 9 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !20
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !85 ; 3 uses
  %.not115 = icmp eq ptr %i.dd, %i.dh
  br i1 %.not115, label %bb.o, label %FTC_MruNode_Up.exit119

FTC_MruNode_Up.exit119:                           ; preds = %.loopexit.thread
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !72 ; 2 uses
  %i.dk = load ptr, ptr %i.dd, align 8, !tbaa !73 ; 2 uses
  store ptr %i.dk, ptr %i.dj, align 8, !tbaa !73
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store ptr %i.dj, ptr %i.dl, align 8, !tbaa !72
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dh, i64 8 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !72 ; 2 uses
  store ptr %i.dd, ptr %i.dn, align 8, !tbaa !73
  store ptr %i.dd, ptr %i.dm, align 8, !tbaa !72
  store ptr %i.dh, ptr %i.dd, align 8, !tbaa !73
  store ptr %i.dn, ptr %i.di, align 8, !tbaa !72
  store ptr %i.dd, ptr %i.dg, align 8, !tbaa !63
  br label %bb.o

.loopexit131:                                     ; preds = %bb.k, %bb.i
  store ptr null, ptr %i.b, align 8, !tbaa !48
  br label %.loopexit130

.loopexit130:                                     ; preds = %.lr.ph141, %.loopexit131
  %i.do = call fastcc i32 @FTC_Cache_NewNode(ptr noundef nonnull %0, i64 noundef %i.af, ptr noundef %5, ptr noundef %i.b)
  %.pre149 = load ptr, ptr %i.b, align 8, !tbaa !48
  br label %bb.o

bb.o:                                             ; preds = %.loopexit.thread, %FTC_MruNode_Up.exit119, %.loopexit130
  %i.dp = phi ptr [ %.pre149, %.loopexit130 ], [ %i.dd, %FTC_MruNode_Up.exit119 ], [ %i.dd, %.loopexit.thread ] ; 4 uses
  %.186 = phi i32 [ %i.do, %.loopexit130 ], [ 0, %FTC_MruNode_Up.exit119 ], [ 0, %.loopexit.thread ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  %i.dq = load i32, ptr %i.bi, align 8, !tbaa !77
  %i.dr = add i32 %i.dq, -1                       ; 2 uses
  store i32 %i.dr, ptr %i.bi, align 8, !tbaa !77
  %i.ds = icmp eq i32 %i.dr, 0
  br i1 %i.ds, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !43
  %i.dv = load ptr, ptr %i.ah, align 8, !tbaa !63
  %i.dw = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !72 ; 2 uses
  %i.dy = load ptr, ptr %i.bh, align 8, !tbaa !73 ; 4 uses
  store ptr %i.dy, ptr %i.dx, align 8, !tbaa !73
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store ptr %i.dx, ptr %i.dz, align 8, !tbaa !72
  %i.ea = icmp eq ptr %i.bh, %i.dy
  br i1 %i.ea, label %.sink.split.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.eb = icmp eq ptr %i.bh, %i.dv
  br i1 %i.eb, label %.sink.split.i.i, label %FTC_MruNode_Remove.exit.i

.sink.split.i.i:                                  ; preds = %bb.q, %bb.p
  %.sink.i.i = phi ptr [ null, %bb.p ], [ %i.dy, %bb.q ]
  store ptr %.sink.i.i, ptr %i.ah, align 8, !tbaa !63
  br label %FTC_MruNode_Remove.exit.i

FTC_MruNode_Remove.exit.i:                        ; preds = %.sink.split.i.i, %bb.q
  %i.ec = load i32, ptr %i.ag, align 8, !tbaa !86
  %i.ed = add i32 %i.ec, -1
  store i32 %i.ed, ptr %i.ag, align 8, !tbaa !86
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !87 ; 2 uses
  %.not.i120 = icmp eq ptr %i.ef, null
  br i1 %.not.i120, label %FTC_MruList_Remove.exit, label %bb.r

bb.r:                                             ; preds = %FTC_MruNode_Remove.exit.i
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !42
  call void %i.ef(ptr noundef nonnull %i.bh, ptr noundef %i.eh) #13, !inline_history !88
  br label %FTC_MruList_Remove.exit

FTC_MruList_Remove.exit:                          ; preds = %FTC_MruNode_Remove.exit.i, %bb.r
  call void @ft_mem_free(ptr noundef %i.du, ptr noundef nonnull %i.bh) #13
  br label %bb.s

bb.s:                                             ; preds = %bb.o, %FTC_MruList_Remove.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %.not117 = icmp eq i32 %.186, 0
  br i1 %.not117, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dp, i64 64
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dp, i64 48
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !83
  %i.el = sub i32 %2, %i.ek
  %i.em = zext i32 %i.el to i64
  %i.en = getelementptr inbounds nuw [24 x i8], ptr %i.ei, i64 %i.em
  store ptr %i.en, ptr %3, align 8, !tbaa !115
  br i1 %.not101, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store ptr %i.dp, ptr %4, align 8, !tbaa !48
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dp, i64 34 ; 2 uses
  %i.ep = load i16, ptr %i.eo, align 2, !tbaa !91
  %i.eq = add i16 %i.ep, 1
  store i16 %i.eq, ptr %i.eo, align 2, !tbaa !91
  br label %bb.v

bb.v:                                             ; preds = %.thread124, %bb.s, %bb.u, %bb.t, %bb.a
  %.088 = phi i32 [ 6, %bb.a ], [ 0, %bb.t ], [ 0, %bb.u ], [ %.186, %bb.s ], [ %i.be, %.thread124 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  ret i32 %.088
}

; Function Attrs: nounwind uwtable
define internal zeroext range(i8 0, 2) i8 @ftc_snode_compare(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(address_is_null) %3) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = load i32, ptr %1, align 8, !tbaa !62     ; 4 uses
  %.not75.a = icmp eq ptr %3, null                ; 2 uses
  br i1 %.not75.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %3, align 1, !tbaa !102
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !81
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !74
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
end_hunk_0
begin_hunk_1_@FTC_SBitCache_LookupScaler:bb.a
  %i.e = icmp ne ptr %1, null
  %or.cond = and i1 %i.e, %i.d
  br i1 %or.cond, label %bb.b, label %bb.ab

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %4, align 8, !tbaa !115
  %.not = icmp eq ptr %5, null                    ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %5, align 8, !tbaa !48
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !113
  %i.g = trunc i64 %2 to i32                      ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i32 %i.g, ptr %i.h, align 8, !tbaa !58
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !51   ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = lshr i64 %i.j, 3
  %i.l = shl i64 %i.j, 7
  %i.m = xor i64 %i.k, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.o = load i32, ptr %i.n, align 8, !tbaa !92   ; 2 uses
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.r = load i32, ptr %i.q, align 4, !tbaa !93   ; 2 uses
  %i.s = mul i32 %i.r, 7
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.v = load i32, ptr %i.u, align 8, !tbaa !94
  %.not103 = icmp eq i32 %i.v, 0                  ; 2 uses
  br i1 %.not103, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 36
  %i.x = load i32, ptr %i.w, align 4, !tbaa !96
  %i.y = mul i32 %i.x, 33
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !61
  %i.ab = mul i32 %i.aa, 61
  %i.ac = xor i32 %i.ab, %i.y
  %i.ad = zext i32 %i.ac to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.ae = phi i64 [ %i.ad, %bb.e ], [ 0, %bb.d ]
  %sext = mul i64 %2, 133143986176
  %i.af = ashr exact i64 %sext, 32
  %i.ag = lshr i32 %3, 4
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = add nsw i64 %i.af, %i.ah
  %i.aj = add nsw i64 %i.ai, %i.p
  %i.ak = add i64 %i.aj, %i.m
  %i.al = add i64 %i.ak, %i.t
  %i.am = add i64 %i.al, %i.ae                    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 %3, ptr %6, align 8, !tbaa !62
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !63 ; 6 uses
  %.not104 = icmp eq ptr %i.ap, null
  br i1 %.not104, label %.loopexit132, label %.preheader

.preheader:                                       ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 36
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.at = load i32, ptr %i.as, align 8
  br label %bb.g

bb.g:                                             ; preds = %.preheader, %ftc_basic_family_compare.exit.thread
  %.084 = phi ptr [ %i.bw, %ftc_basic_family_compare.exit.thread ], [ %i.ap, %.preheader ] ; 18 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.084, i64 40
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !64
  %i.aw = icmp eq ptr %i.av, %i.i
  br i1 %i.aw, label %bb.h, label %ftc_basic_family_compare.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %.084, i64 48
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !68
  %i.az = icmp eq i32 %i.ay, %i.o
  br i1 %i.az, label %bb.i, label %ftc_basic_family_compare.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %.084, i64 52
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !69
  %i.bc = icmp eq i32 %i.bb, %i.r
  br i1 %i.bc, label %bb.j, label %ftc_basic_family_compare.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.084, i64 56
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !70
  %i.bf = icmp ne i32 %i.be, 0                    ; 2 uses
  %i.bg = xor i1 %.not103, %i.bf
  br i1 %i.bg, label %bb.k, label %ftc_basic_family_compare.exit.thread

bb.k:                                             ; preds = %bb.j
  br i1 %i.bf, label %ftc_basic_family_compare.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %.084, i64 60
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !95
  %i.bj = icmp eq i32 %i.bi, %i.ar
  br i1 %i.bj, label %bb.m, label %ftc_basic_family_compare.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.bk = getelementptr inbounds nuw i8, ptr %.084, i64 64
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !97
  %i.bm = icmp eq i32 %i.bl, %i.at
  br i1 %i.bm, label %ftc_basic_family_compare.exit, label %ftc_basic_family_compare.exit.thread

ftc_basic_family_compare.exit:                    ; preds = %bb.k, %bb.m
  %i.bn = getelementptr inbounds nuw i8, ptr %.084, i64 72
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !71
  %.not129 = icmp eq i32 %i.bo, %i.g
  br i1 %.not129, label %bb.n, label %ftc_basic_family_compare.exit.thread

bb.n:                                             ; preds = %ftc_basic_family_compare.exit
  %.not107 = icmp eq ptr %.084, %i.ap
  br i1 %.not107, label %.thread, label %FTC_MruNode_Up.exit

FTC_MruNode_Up.exit:                              ; preds = %bb.n
  %i.bp = getelementptr inbounds nuw i8, ptr %.084, i64 8 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !72 ; 2 uses
  %i.br = load ptr, ptr %.084, align 8, !tbaa !73 ; 2 uses
  store ptr %i.br, ptr %i.bq, align 8, !tbaa !73
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store ptr %i.bq, ptr %i.bs, align 8, !tbaa !72
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !72 ; 2 uses
  store ptr %.084, ptr %i.bu, align 8, !tbaa !73
  store ptr %.084, ptr %i.bt, align 8, !tbaa !72
  store ptr %i.ap, ptr %.084, align 8, !tbaa !73
  store ptr %i.bu, ptr %i.bp, align 8, !tbaa !72
  store ptr %.084, ptr %i.ao, align 8, !tbaa !63
  br label %.thread

.thread:                                          ; preds = %bb.n, %FTC_MruNode_Up.exit
  store ptr %.084, ptr %i.a, align 8, !tbaa !63
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %.084, ptr %i.bv, align 8, !tbaa !74
  br label %bb.o

ftc_basic_family_compare.exit.thread:             ; preds = %bb.g, %bb.h, %bb.i, %bb.j, %bb.l, %bb.m, %ftc_basic_family_compare.exit
  %i.bw = load ptr, ptr %.084, align 8, !tbaa !73 ; 2 uses
  %.not106 = icmp eq ptr %i.bw, %i.ap
  br i1 %.not106, label %.loopexit132, label %bb.g, !llvm.loop !125

.loopexit132:                                     ; preds = %ftc_basic_family_compare.exit.thread, %bb.f
  %i.bx = call fastcc i32 @FTC_MruList_New(ptr noundef nonnull %i.an, ptr noundef nonnull %6, ptr noundef %i.a) ; 2 uses
  %i.by = load ptr, ptr %i.a, align 8, !tbaa !63  ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.by, ptr %i.bz, align 8, !tbaa !74
  %.not108 = icmp eq i32 %i.bx, 0
  br i1 %.not108, label %bb.o, label %.thread125

.thread125:                                       ; preds = %.loopexit132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.ab

bb.o:                                             ; preds = %.thread, %.loopexit132
  %i.ca = phi ptr [ %.084, %.thread ], [ %i.by, %.loopexit132 ] ; 7 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16 ; 4 uses
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !77
  %i.cd = add i32 %i.cc, 1
  store i32 %i.cd, ptr %i.cb, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store i8 0, ptr %i.c, align 1, !tbaa !102
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !36
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !34 ; 2 uses
  %i.ci = zext i32 %i.ch to i64
  %i.cj = and i64 %i.am, %i.ci                    ; 2 uses
  %i.ck = load i32, ptr %0, align 8, !tbaa !33
  %i.cl = zext i32 %i.ck to i64
  %.not109 = icmp samesign ult i64 %i.cj, %i.cl
  %i.cm = lshr i32 %i.ch, 1
  %i.cn = zext nneg i32 %i.cm to i64
  %i.co = and i64 %i.am, %i.cn
  %i.cp = select i1 %.not109, i64 %i.cj, i64 %i.co
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.cp ; 4 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !48 ; 2 uses
  %.not110138 = icmp eq ptr %i.cr, null
  br i1 %.not110138, label %.loopexit131, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o, %bb.q
  %i.cs = phi ptr [ %i.cy, %bb.q ], [ %i.cr, %bb.o ] ; 10 uses
  %.0139 = phi ptr [ %i.cx, %bb.q ], [ %i.cq, %bb.o ]
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !78
  %i.cv = icmp eq i64 %i.cu, %i.am
  br i1 %i.cv, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph
  %i.cw = call zeroext i8 @ftc_snode_compare(ptr noundef nonnull %i.cs, ptr noundef nonnull %6, ptr noundef nonnull %0, ptr noundef nonnull %i.c)
  %.not111 = icmp eq i8 %i.cw, 0
  br i1 %.not111, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %.lr.ph
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 16 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !48 ; 2 uses
  %.not110 = icmp eq ptr %i.cy, null
  br i1 %.not110, label %.loopexit131, label %.lr.ph

bb.r:                                             ; preds = %bb.p
  store ptr %i.cs, ptr %i.b, align 8, !tbaa !48
  %i.cz = load i8, ptr %i.c, align 1, !tbaa !102
  %.not112 = icmp eq i8 %i.cz, 0
  br i1 %.not112, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.da = load ptr, ptr %i.ce, align 8, !tbaa !36
  %i.db = load i32, ptr %i.cg, align 4, !tbaa !34 ; 2 uses
  %i.dc = zext i32 %i.db to i64
  %i.dd = and i64 %i.am, %i.dc                    ; 2 uses
  %i.de = load i32, ptr %0, align 8, !tbaa !33
  %i.df = zext i32 %i.de to i64
  %.not113 = icmp samesign ult i64 %i.dd, %i.df
  %i.dg = lshr i32 %i.db, 1
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = and i64 %i.am, %i.dh
  %i.dj = select i1 %.not113, i64 %i.dd, i64 %i.di
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.dj ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !48 ; 2 uses
  %.not114140 = icmp eq ptr %i.dl, %i.cs
  br i1 %.not114140, label %.loopexit.thread, label %.lr.ph141

bb.t:                                             ; preds = %.lr.ph141
  %i.dm = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !48 ; 2 uses
  %.not114 = icmp eq ptr %i.dn, %i.cs
  br i1 %.not114, label %.loopexit.thread173.loopexit, label %.lr.ph141, !llvm.loop !126

.lr.ph141:                                        ; preds = %bb.s, %bb.t
  %i.do = phi ptr [ %i.dn, %bb.t ], [ %i.dl, %bb.s ] ; 3 uses
  %.not117 = icmp eq ptr %i.do, null
  br i1 %.not117, label %.loopexit130, label %bb.t

.loopexit:                                        ; preds = %bb.r
  %.pre = load ptr, ptr %i.cq, align 8, !tbaa !48
  %i.dp = icmp eq ptr %i.cs, %.pre
  br i1 %i.dp, label %.loopexit.thread, label %.loopexit.thread173

.loopexit.thread173.loopexit:                     ; preds = %bb.t
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  br label %.loopexit.thread173

.loopexit.thread173:                              ; preds = %.loopexit.thread173.loopexit, %.loopexit
  %.2178 = phi ptr [ %.0139, %.loopexit ], [ %i.dq, %.loopexit.thread173.loopexit ]
  %.083177 = phi ptr [ %i.cq, %.loopexit ], [ %i.dk, %.loopexit.thread173.loopexit ] ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !84
  store ptr %i.ds, ptr %.2178, align 8, !tbaa !48
  %i.dt = load ptr, ptr %.083177, align 8, !tbaa !48
  %i.du = load ptr, ptr %i.b, align 8, !tbaa !48  ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  store ptr %i.dt, ptr %i.dv, align 8, !tbaa !84
  store ptr %i.du, ptr %.083177, align 8, !tbaa !48
  br label %.loopexit.thread

.loopexit.thread:                                 ; preds = %bb.s, %.loopexit.thread173, %.loopexit
  %i.dw = phi ptr [ %i.du, %.loopexit.thread173 ], [ %i.cs, %.loopexit ], [ %i.cs, %bb.s ] ; 9 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !20
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !85 ; 3 uses
  %.not116 = icmp eq ptr %i.dw, %i.ea
  br i1 %.not116, label %bb.u, label %FTC_MruNode_Up.exit120

FTC_MruNode_Up.exit120:                           ; preds = %.loopexit.thread
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dw, i64 8 ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !72 ; 2 uses
  %i.ed = load ptr, ptr %i.dw, align 8, !tbaa !73 ; 2 uses
  store ptr %i.ed, ptr %i.ec, align 8, !tbaa !73
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store ptr %i.ec, ptr %i.ee, align 8, !tbaa !72
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 8 ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !72 ; 2 uses
  store ptr %i.dw, ptr %i.eg, align 8, !tbaa !73
  store ptr %i.dw, ptr %i.ef, align 8, !tbaa !72
  store ptr %i.ea, ptr %i.dw, align 8, !tbaa !73
  store ptr %i.eg, ptr %i.eb, align 8, !tbaa !72
  store ptr %i.dw, ptr %i.dz, align 8, !tbaa !63
  br label %bb.u

.loopexit131:                                     ; preds = %bb.q, %bb.o
  store ptr null, ptr %i.b, align 8, !tbaa !48
  br label %.loopexit130

.loopexit130:                                     ; preds = %.lr.ph141, %.loopexit131
  %i.eh = call fastcc i32 @FTC_Cache_NewNode(ptr noundef nonnull %0, i64 noundef %i.am, ptr noundef %6, ptr noundef %i.b)
  %.pre149 = load ptr, ptr %i.b, align 8, !tbaa !48
  br label %bb.u

bb.u:                                             ; preds = %.loopexit.thread, %FTC_MruNode_Up.exit120, %.loopexit130
  %i.ei = phi ptr [ %.pre149, %.loopexit130 ], [ %i.dw, %FTC_MruNode_Up.exit120 ], [ %i.dw, %.loopexit.thread ] ; 4 uses
  %.187 = phi i32 [ %i.eh, %.loopexit130 ], [ 0, %FTC_MruNode_Up.exit120 ], [ 0, %.loopexit.thread ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  %i.ej = load i32, ptr %i.cb, align 8, !tbaa !77
  %i.ek = add i32 %i.ej, -1                       ; 2 uses
  store i32 %i.ek, ptr %i.cb, align 8, !tbaa !77
  %i.el = icmp eq i32 %i.ek, 0
  br i1 %i.el, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !43
  %i.eo = load ptr, ptr %i.ao, align 8, !tbaa !63
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !72 ; 2 uses
  %i.er = load ptr, ptr %i.ca, align 8, !tbaa !73 ; 4 uses
  store ptr %i.er, ptr %i.eq, align 8, !tbaa !73
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  store ptr %i.eq, ptr %i.es, align 8, !tbaa !72
  %i.et = icmp eq ptr %i.ca, %i.er
  br i1 %i.et, label %.sink.split.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eu = icmp eq ptr %i.ca, %i.eo
  br i1 %i.eu, label %.sink.split.i.i, label %FTC_MruNode_Remove.exit.i

.sink.split.i.i:                                  ; preds = %bb.w, %bb.v
  %.sink.i.i = phi ptr [ null, %bb.v ], [ %i.er, %bb.w ]
  store ptr %.sink.i.i, ptr %i.ao, align 8, !tbaa !63
  br label %FTC_MruNode_Remove.exit.i

FTC_MruNode_Remove.exit.i:                        ; preds = %.sink.split.i.i, %bb.w
  %i.ev = load i32, ptr %i.an, align 8, !tbaa !86
  %i.ew = add i32 %i.ev, -1
  store i32 %i.ew, ptr %i.an, align 8, !tbaa !86
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !87 ; 2 uses
  %.not.i121 = icmp eq ptr %i.ey, null
  br i1 %.not.i121, label %FTC_MruList_Remove.exit, label %bb.x

bb.x:                                             ; preds = %FTC_MruNode_Remove.exit.i
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !42
  call void %i.ey(ptr noundef nonnull %i.ca, ptr noundef %i.fa) #13, !inline_history !88
  br label %FTC_MruList_Remove.exit

FTC_MruList_Remove.exit:                          ; preds = %FTC_MruNode_Remove.exit.i, %bb.x
  call void @ft_mem_free(ptr noundef %i.en, ptr noundef nonnull %i.ca) #13
  br label %bb.y

bb.y:                                             ; preds = %bb.u, %FTC_MruList_Remove.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %.not118 = icmp eq i32 %.187, 0
  br i1 %.not118, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ei, i64 64
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ei, i64 48
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !83
  %i.fe = sub i32 %3, %i.fd
  %i.ff = zext i32 %i.fe to i64
  %i.fg = getelementptr inbounds nuw [24 x i8], ptr %i.fb, i64 %i.ff
  store ptr %i.fg, ptr %4, align 8, !tbaa !115
  br i1 %.not, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store ptr %i.ei, ptr %5, align 8, !tbaa !48
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ei, i64 34 ; 2 uses
  %i.fi = load i16, ptr %i.fh, align 2, !tbaa !91
  %i.fj = add i16 %i.fi, 1
  store i16 %i.fj, ptr %i.fh, align 2, !tbaa !91
  br label %bb.ab

bb.ab:                                            ; preds = %.thread125, %bb.y, %bb.aa, %bb.z, %bb.a
  %.089 = phi i32 [ 6, %bb.a ], [ 0, %bb.z ], [ 0, %bb.aa ], [ %.187, %bb.y ], [ %i.bx, %.thread125 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  ret i32 %.089
}

; Function Attrs: nounwind uwtable
define i32 @FTC_CMapCache_New(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i32 6, ptr %i.b, align 4, !tbaa !8
  %i.c = icmp ne ptr %0, null
  %i.d = icmp ne ptr %1, null                     ; 2 uses
  %or.cond3.i = and i1 %i.c, %i.d
  br i1 %or.cond3.i, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !9    ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !19
  %i.i = icmp ugt i32 %i.h, 15
  br i1 %i.i, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = call ptr @ft_mem_qalloc(ptr noundef %i.f, i64 noundef 120, ptr noundef nonnull %i.b) #13 ; 19 uses
end_hunk_1
begin_hunk_2_@FTC_CMapCache_New:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.n, ptr noundef nonnull align 8 dereferenceable(64) @ftc_cmap_cache_class, i64 64, i1 false), !tbaa.struct !28
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  store ptr @ftc_cmap_cache_class, ptr %i.o, align 8, !tbaa !31
  %i.p = load i32, ptr %i.g, align 8, !tbaa !19
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  store i32 %i.p, ptr %i.q, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 8, ptr %i.j, align 8, !tbaa !33
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 7, ptr %i.r, align 4, !tbaa !34
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 16, ptr %i.s, align 8, !tbaa !35
  %i.t = call ptr @ft_mem_realloc(ptr noundef %i.f, i64 noundef 8, i64 noundef 0, i64 noundef 8, ptr noundef null, ptr noundef nonnull %i.a) #13 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  store ptr %i.t, ptr %i.u, align 8, !tbaa !36
  %i.v = load i32, ptr %i.a, align 4, !tbaa !8    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  store i32 %i.v, ptr %i.b, align 4, !tbaa !8
  %.not38.i = icmp eq i32 %i.v, 0
  br i1 %.not38.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = load ptr, ptr %i.m, align 8, !tbaa !27
  %.not.i2 = icmp eq ptr %i.t, null
  br i1 %.not.i2, label %ftc_cache_done.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = load i32, ptr %i.j, align 8, !tbaa !33   ; 2 uses
  %.not35.i = icmp eq i32 %i.x, 0
  br i1 %.not35.i, label %ftc_cache_done.exit, label %.lr.ph34.i

.lr.ph34.i:                                       ; preds = %bb.f
  %i.y = load ptr, ptr %i.l, align 8, !tbaa !20   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 40 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 32 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %wide.trip.count.i = zext i32 %i.x to i64
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i, %.lr.ph34.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph34.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 2 uses
  %i.ae = load ptr, ptr %i.u, align 8, !tbaa !36
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.i
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !48 ; 2 uses
  %.not2829.i = icmp eq ptr %i.ag, null
  br i1 %.not2829.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %ftc_node_mru_unlink.exit.i
  %.030.i = phi ptr [ %i.ai, %ftc_node_mru_unlink.exit.i ], [ %i.ag, %bb.g ] ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.030.i, i64 16 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !84 ; 2 uses
  store ptr null, ptr %i.ah, align 8, !tbaa !84
  %i.aj = load ptr, ptr %i.z, align 8, !tbaa !63
  %i.ak = getelementptr inbounds nuw i8, ptr %.030.i, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !72 ; 2 uses
  %i.am = load ptr, ptr %.030.i, align 8, !tbaa !73 ; 4 uses
  store ptr %i.am, ptr %i.al, align 8, !tbaa !73
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.al, ptr %i.an, align 8, !tbaa !72
  %i.ao = icmp eq ptr %.030.i, %i.am
  br i1 %i.ao, label %.sink.split.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.ap = icmp eq ptr %.030.i, %i.aj
  br i1 %i.ap, label %.sink.split.i.i.i, label %ftc_node_mru_unlink.exit.i

.sink.split.i.i.i:                                ; preds = %bb.h, %.lr.ph.i
  %.sink.i.i.i = phi ptr [ null, %.lr.ph.i ], [ %i.am, %bb.h ]
  store ptr %.sink.i.i.i, ptr %i.z, align 8, !tbaa !63
  br label %ftc_node_mru_unlink.exit.i

ftc_node_mru_unlink.exit.i:                       ; preds = %.sink.split.i.i.i, %bb.h
  %i.aq = load i32, ptr %i.aa, align 8, !tbaa !106
  %i.ar = add i32 %i.aq, -1
  store i32 %i.ar, ptr %i.aa, align 8, !tbaa !106
  %i.as = load ptr, ptr %i.ab, align 8, !tbaa !108
  %i.at = call i64 %i.as(ptr noundef nonnull %.030.i, ptr noundef nonnull %i.j) #13, !inline_history !127
  %i.au = load i64, ptr %i.ac, align 8, !tbaa !110
  %i.av = sub i64 %i.au, %i.at
  store i64 %i.av, ptr %i.ac, align 8, !tbaa !110
  %i.aw = load ptr, ptr %i.ad, align 8, !tbaa !128
  call void %i.aw(ptr noundef nonnull %.030.i, ptr noundef nonnull %i.j) #13, !inline_history !127
  %.not28.i = icmp eq ptr %i.ai, null
  br i1 %.not28.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !129

._crit_edge.i:                                    ; preds = %ftc_node_mru_unlink.exit.i, %bb.g
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit.loopexit.i, label %bb.g, !llvm.loop !130

.loopexit.loopexit.i:                             ; preds = %._crit_edge.i
  %.pre.i3 = load ptr, ptr %i.u, align 8, !tbaa !36
  br label %ftc_cache_done.exit

ftc_cache_done.exit:                              ; preds = %bb.e, %bb.f, %.loopexit.loopexit.i
  %i.ax = phi ptr [ %.pre.i3, %.loopexit.loopexit.i ], [ %i.t, %bb.f ], [ null, %bb.e ]
  call void @ft_mem_free(ptr noundef %i.w, ptr noundef %i.ax) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  call void @ft_mem_free(ptr noundef %i.f, ptr noundef nonnull %i.j) #13
  %.pre.pre.i = load i32, ptr %i.b, align 4, !tbaa !8
  br label %.thread.i

bb.i:                                             ; preds = %bb.d
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.az = load i32, ptr %i.g, align 8, !tbaa !19  ; 2 uses
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr %i.g, align 8, !tbaa !19
  %i.bb = zext i32 %i.az to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bb
  store ptr %i.j, ptr %i.bc, align 8, !tbaa !44
  br label %.thread.i

bb.j:                                             ; preds = %bb.a
  br i1 %i.d, label %.thread.i, label %FTC_Manager_RegisterCache.exit

.thread.i:                                        ; preds = %bb.j, %bb.i, %ftc_cache_done.exit, %bb.c, %bb.b
  %.pre.i = phi i32 [ 6, %bb.j ], [ %i.k, %bb.c ], [ 0, %bb.i ], [ %.pre.pre.i, %ftc_cache_done.exit ], [ 112, %bb.b ]
  %.140.i = phi ptr [ null, %bb.j ], [ %i.j, %bb.c ], [ %i.j, %bb.i ], [ null, %ftc_cache_done.exit ], [ null, %bb.b ]
  store ptr %.140.i, ptr %1, align 8, !tbaa !44
  br label %FTC_Manager_RegisterCache.exit

FTC_Manager_RegisterCache.exit:                   ; preds = %bb.j, %.thread.i
  %i.bd = phi i32 [ %.pre.i, %.thread.i ], [ 6, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  ret i32 %i.bd
}

; Function Attrs: nounwind uwtable
define i32 @FTC_CMapCache_Lookup(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %4 = alloca %struct.FTC_CMapQueryRec_, align 8  ; 6 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.c = icmp sgt i32 %2, -1                      ; 2 uses
  %spec.select = select i1 %i.c, i32 %2, i32 0    ; 4 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %4, align 8, !tbaa !131
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %spec.select, ptr %i.d, align 8, !tbaa !133
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %3, ptr %i.e, align 4, !tbaa !134
  %i.f = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.g = lshr i64 %i.f, 3
  %i.h = shl i64 %i.f, 7
  %i.i = xor i64 %i.g, %i.h
  %i.j = mul i32 %spec.select, 211
  %i.k = zext i32 %i.j to i64
  %i.l = lshr i32 %3, 7
  %i.m = zext nneg i32 %i.l to i64
  %i.n = add i64 %i.i, %i.m
  %i.o = add i64 %i.n, %i.k                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !36
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !34   ; 2 uses
  %i.t = zext i32 %i.s to i64
  %i.u = and i64 %i.o, %i.t                       ; 2 uses
  %i.v = load i32, ptr %0, align 8, !tbaa !33
  %i.w = zext i32 %i.v to i64
  %.not88 = icmp samesign ult i64 %i.u, %i.w
  %i.x = lshr i32 %i.s, 1
  %i.y = zext nneg i32 %i.x to i64
  %i.z = and i64 %i.o, %i.y
  %i.aa = select i1 %.not88, i64 %i.u, i64 %i.z
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.aa ; 4 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !48 ; 3 uses
  %.not89116 = icmp eq ptr %i.ac, null
  br i1 %.not89116, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %ftc_cmap_node_compare.exit.thread
  %i.ad = phi ptr [ %i.ar, %ftc_cmap_node_compare.exit.thread ], [ %i.ac, %bb.b ] ; 16 uses
  %.0117 = phi ptr [ %i.aq, %ftc_cmap_node_compare.exit.thread ], [ %i.ab, %bb.b ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !78
  %i.ag = icmp eq i64 %i.af, %i.o
  br i1 %i.ag, label %bb.c, label %ftc_cmap_node_compare.exit.thread

bb.c:                                             ; preds = %.lr.ph
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !135
  %i.aj = icmp eq ptr %i.ai, %1
  br i1 %i.aj, label %bb.d, label %ftc_cmap_node_compare.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !137
  %i.am = icmp eq i32 %i.al, %spec.select
  br i1 %i.am, label %ftc_cmap_node_compare.exit, label %ftc_cmap_node_compare.exit.thread

ftc_cmap_node_compare.exit:                       ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 52
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !138
  %i.ap = sub i32 %3, %i.ao                       ; 2 uses
  %5 = icmp ugt i32 %i.ap, 127
  br i1 %5, label %ftc_cmap_node_compare.exit.thread, label %bb.e

ftc_cmap_node_compare.exit.thread:                ; preds = %bb.c, %bb.d, %ftc_cmap_node_compare.exit, %.lr.ph
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !48 ; 2 uses
  %.not89 = icmp eq ptr %i.ar, null
  br i1 %.not89, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %ftc_cmap_node_compare.exit
  %.not94 = icmp eq ptr %i.ad, %i.ac
  br i1 %.not94, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !84
  store ptr %i.at, ptr %.0117, align 8, !tbaa !48
  %i.au = load ptr, ptr %i.ab, align 8, !tbaa !48
  store ptr %i.au, ptr %i.as, align 8, !tbaa !84
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !48
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !20
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !85 ; 3 uses
  %.not95 = icmp eq ptr %i.ad, %i.ay
  br i1 %.not95, label %.thread133, label %FTC_MruNode_Up.exit

FTC_MruNode_Up.exit:                              ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !72 ; 2 uses
  %i.bb = load ptr, ptr %i.ad, align 8, !tbaa !73 ; 2 uses
  store ptr %i.bb, ptr %i.ba, align 8, !tbaa !73
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %i.ba, ptr %i.bc, align 8, !tbaa !72
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !72 ; 2 uses
  store ptr %i.ad, ptr %i.be, align 8, !tbaa !73
  store ptr %i.ad, ptr %i.bd, align 8, !tbaa !72
  store ptr %i.ay, ptr %i.ad, align 8, !tbaa !73
  store ptr %i.be, ptr %i.az, align 8, !tbaa !72
  store ptr %i.ad, ptr %i.ax, align 8, !tbaa !63
  br label %.thread133

.thread133:                                       ; preds = %bb.g, %FTC_MruNode_Up.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %bb.i

._crit_edge:                                      ; preds = %ftc_cmap_node_compare.exit.thread, %bb.b
  store ptr null, ptr %i.b, align 8, !tbaa !48
  %i.bf = call fastcc i32 @FTC_Cache_NewNode(ptr noundef nonnull %0, i64 noundef %i.o, ptr noundef %4, ptr noundef %i.b)
  %i.bg = icmp eq i32 %i.bf, 0
  %i.bh = load ptr, ptr %i.b, align 8, !tbaa !48  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br i1 %i.bg, label %bb.h, label %bb.s

bb.h:                                             ; preds = %._crit_edge
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bh, i64 52
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !138
  %.pre123 = sub i32 %3, %.pre                    ; 2 uses
  %i.bi = icmp ugt i32 %.pre123, 127
  br i1 %i.bi, label %bb.s, label %bb.i

bb.i:                                             ; preds = %.thread133, %bb.h
  %i.bj = phi ptr [ %i.ad, %.thread133 ], [ %i.bh, %bb.h ] ; 3 uses
  %.pre-phi135 = phi i32 [ %i.ap, %.thread133 ], [ %.pre123, %bb.h ]
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 52
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 56 ; 2 uses
  %i.bm = zext nneg i32 %.pre-phi135 to i64
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %i.bl, i64 %i.bm
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !139 ; 2 uses
  %i.bp = zext i16 %i.bo to i32
  %i.bq = icmp eq i16 %i.bo, -1
  br i1 %i.bq, label %bb.j, label %bb.s

bb.j:                                             ; preds = %bb.i
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !20 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !135 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %.not29.i = icmp eq ptr %i.bs, null
  br i1 %.not29.i, label %FTC_Manager_LookupFace.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 184
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 192 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !63 ; 6 uses
  %.not30.i = icmp eq ptr %i.bx, null
  br i1 %.not30.i, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.k, %bb.m
  %.0.i101 = phi ptr [ %i.cg, %bb.m ], [ %i.bx, %bb.k ] ; 11 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.0.i101, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !140
  %.not38.i = icmp eq ptr %i.bz, %i.bu
  br i1 %.not38.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.preheader.i
  %.not33.i = icmp eq ptr %.0.i101, %i.bx
  br i1 %.not33.i, label %bb.n, label %FTC_MruNode_Up.exit.i

FTC_MruNode_Up.exit.i:                            ; preds = %bb.l
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.i101, i64 8 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !72 ; 2 uses
  %i.cc = load ptr, ptr %.0.i101, align 8, !tbaa !73 ; 2 uses
  store ptr %i.cc, ptr %i.cb, align 8, !tbaa !73
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store ptr %i.cb, ptr %i.cd, align 8, !tbaa !72
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !72 ; 2 uses
  store ptr %.0.i101, ptr %i.cf, align 8, !tbaa !73
  store ptr %.0.i101, ptr %i.ce, align 8, !tbaa !72
  store ptr %i.bx, ptr %.0.i101, align 8, !tbaa !73
  store ptr %i.cf, ptr %i.ca, align 8, !tbaa !72
  store ptr %.0.i101, ptr %i.bw, align 8, !tbaa !63
  br label %bb.n

bb.m:                                             ; preds = %.preheader.i
  %i.cg = load ptr, ptr %.0.i101, align 8, !tbaa !73 ; 2 uses
  %.not32.i = icmp eq ptr %i.cg, %i.bx
  br i1 %.not32.i, label %.loopexit.i, label %.preheader.i, !llvm.loop !143

.loopexit.i:                                      ; preds = %bb.m, %bb.k
  %i.ch = call fastcc i32 @FTC_MruList_New(ptr noundef nonnull %i.bv, ptr noundef %i.bu, ptr noundef %i.a)
  %.not34.i = icmp eq i32 %i.ch, 0
  br i1 %.not34.i, label %.loopexit._crit_edge.i, label %FTC_Manager_LookupFace.exit.thread

.loopexit._crit_edge.i:                           ; preds = %.loopexit.i
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !63
  br label %bb.n

FTC_Manager_LookupFace.exit.thread:               ; preds = %bb.j, %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.s

bb.n:                                             ; preds = %.loopexit._crit_edge.i, %FTC_MruNode_Up.exit.i, %bb.l
  %i.ci = phi ptr [ %.pre.i, %.loopexit._crit_edge.i ], [ %.0.i101, %bb.l ], [ %.0.i101, %FTC_MruNode_Up.exit.i ]
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !144 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 72
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !145
  %i.cn = icmp slt i32 %spec.select, %i.cm
  br i1 %i.cn, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  br i1 %i.c, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.co = zext i32 %3 to i64
  %i.cp = call i32 @FT_Get_Char_Index(ptr noundef nonnull %i.ck, i64 noundef %i.co) #13
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ck, i64 168 ; 3 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !159
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ck, i64 80
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !160
  %i.cu = zext nneg i32 %2 to i64
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.cu
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !161
  store ptr %i.cw, ptr %i.cq, align 8, !tbaa !159
  %i.cx = zext i32 %3 to i64
  %i.cy = call i32 @FT_Get_Char_Index(ptr noundef nonnull %i.ck, i64 noundef %i.cx) #13
  store ptr %i.cr, ptr %i.cq, align 8, !tbaa !159
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.n
  %.071 = phi i32 [ 0, %bb.n ], [ %i.cy, %bb.q ], [ %i.cp, %bb.p ] ; 2 uses
  %i.cz = trunc i32 %.071 to i16
  %i.da = load i32, ptr %i.bk, align 4, !tbaa !138
  %i.db = sub i32 %3, %i.da
  %i.dc = zext i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %i.bl, i64 %i.dc
  store i16 %i.cz, ptr %i.dd, align 2, !tbaa !139
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %FTC_Manager_LookupFace.exit.thread, %._crit_edge, %bb.i, %bb.h, %bb.a
  %.075 = phi i32 [ 0, %bb.h ], [ 0, %bb.a ], [ 0, %._crit_edge ], [ %i.bp, %bb.i ], [ %.071, %bb.r ], [ 0, %FTC_Manager_LookupFace.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret i32 %.075
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal zeroext range(i8 0, 2) i8 @ftc_cmap_node_compare(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree noundef writeonly captures(address_is_null) %3) #3 {
bb.a:
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %3, align 1, !tbaa !102
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !135
  %i.c = load ptr, ptr %1, align 8, !tbaa !131
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.d, label %bb.f
end_hunk_2
begin_hunk_3_@ftc_basic_family_load_glyph:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.f = call i32 @FTC_Manager_LookupSize(ptr noundef %i.e, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a) ; 2 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !163
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !218  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load i32, ptr %i.i, align 8, !tbaa !71
  %i.k = call i32 @FT_Load_Glyph(ptr noundef %i.h, i32 noundef %1, i32 noundef %i.j) #13 ; 2 uses
  %.not22 = icmp eq i32 %i.k, 0
  br i1 %.not22, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 152
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !222  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 144
  %i.o = load i32, ptr %i.n, align 8, !tbaa !223
  switch i32 %i.o, label %bb.g [
    i32 1651078259, label %bb.d
    i32 1869968492, label %bb.d
    i32 1398163232, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.p = call i32 @FT_Get_Glyph(ptr noundef nonnull %i.m, ptr noundef nonnull %i.b) #13 ; 2 uses
  %.not23 = icmp eq i32 %i.p, 0
  br i1 %.not23, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !46
  store ptr %i.q, ptr %3, align 8, !tbaa !46
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.a, %bb.f, %bb.c
  %.017 = phi i32 [ %i.f, %bb.a ], [ %i.k, %bb.b ], [ %i.p, %bb.f ], [ 6, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.017
}

declare i32 @FT_Load_Glyph(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare i32 @FT_Get_Glyph(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal i32 @ftc_snode_new(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %.val = load i32, ptr %1, align 8, !tbaa !62    ; 3 uses
  %i.b = getelementptr i8, ptr %1, i64 8
  %.val5 = load ptr, ptr %i.b, align 8, !tbaa !74 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !31
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !38
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !228
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !20
  %i.m = tail call i32 %i.j(ptr noundef %.val5, ptr noundef %i.l) #13, !inline_history !230 ; 4 uses
  %i.n = icmp ne i32 %i.m, 0
  %.not.i = icmp ult i32 %.val, %i.m
  %or.cond.i = select i1 %i.n, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %bb.b, label %FTC_SNode_New.exit

bb.b:                                             ; preds = %bb.a
  %i.o = call ptr @ft_mem_qalloc(ptr noundef %i.d, i64 noundef 448, ptr noundef nonnull %i.a) #13 ; 8 uses
  %i.p = load i32, ptr %i.a, align 4, !tbaa !8    ; 2 uses
  %.not39.i = icmp eq i32 %i.p, 0
  br i1 %.not39.i, label %bb.c, label %FTC_SNode_New.exit

bb.c:                                             ; preds = %bb.b
  %i.q = and i32 %.val, -16                       ; 3 uses
  %i.r = sub i32 %i.m, %i.q                       ; 2 uses
  %spec.store.select.i = call i32 @llvm.umin.i32(i32 %i.r, i32 16) ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store ptr %.val5, ptr %i.s, align 8, !tbaa !81
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  store i32 %i.q, ptr %i.t, align 8, !tbaa !83
  %i.u = getelementptr inbounds nuw i8, ptr %.val5, i64 16 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !77
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr %i.u, align 8, !tbaa !77
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  store i32 %spec.store.select.i, ptr %i.x, align 8, !tbaa !119
  %.not2.i = icmp eq i32 %i.m, %i.q
  br i1 %.not2.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 64 ; 5 uses
  %wide.trip.count.i = zext nneg i32 %spec.store.select.i to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.z = icmp ult i32 %i.r, 4
  br i1 %i.z, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 28
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.3, %bb.d ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.d ]
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %indvars.iv.i ; 3 uses
  store i8 -1, ptr %i.aa, align 8, !tbaa !124
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  store i8 0, ptr %i.ab, align 1, !tbaa !231
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store ptr null, ptr %i.ac, align 8, !tbaa !121
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %indvars.iv.i ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store i8 -1, ptr %i.ae, align 8, !tbaa !124
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 25
  store i8 0, ptr %i.af, align 1, !tbaa !231
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  store ptr null, ptr %i.ag, align 8, !tbaa !121
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %indvars.iv.i ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  store i8 -1, ptr %i.ai, align 8, !tbaa !124
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 49
  store i8 0, ptr %i.aj, align 1, !tbaa !231
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  store ptr null, ptr %i.ak, align 8, !tbaa !121
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %indvars.iv.i ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 72
  store i8 -1, ptr %i.am, align 8, !tbaa !124
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 73
  store i8 0, ptr %i.an, align 1, !tbaa !231
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 88
  store ptr null, ptr %i.ao, align 8, !tbaa !121
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.loopexit.unr-lcssa, label %bb.d, !llvm.loop !232

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.3, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod7 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod7)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.e ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %indvars.iv.i.epil ; 3 uses
  store i8 -1, ptr %i.ap, align 8, !tbaa !124
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  store i8 0, ptr %i.aq, align 1, !tbaa !231
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store ptr null, ptr %i.ar, align 8, !tbaa !121
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %bb.e, !llvm.loop !233

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %bb.e, %bb.c
  %i.as = load ptr, ptr %i.k, align 8, !tbaa !20
  %i.at = call fastcc i32 @ftc_snode_load(ptr noundef nonnull %i.o, ptr noundef %i.as, i32 noundef %.val, ptr noundef null) ; 2 uses
  store i32 %i.at, ptr %i.a, align 4, !tbaa !8
  %.not40.i = icmp eq i32 %i.at, 0
  br i1 %.not40.i, label %FTC_SNode_New.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i
  call void @ftc_snode_free(ptr noundef nonnull %i.o, ptr noundef nonnull %2)
  %.pre.i = load i32, ptr %i.a, align 4, !tbaa !8
  br label %FTC_SNode_New.exit

FTC_SNode_New.exit:                               ; preds = %bb.a, %bb.b, %._crit_edge.i, %bb.f
  %i.au = phi i32 [ 0, %._crit_edge.i ], [ %i.p, %bb.b ], [ %.pre.i, %bb.f ], [ 6, %bb.a ]
  %.1.i = phi ptr [ %i.o, %._crit_edge.i ], [ %i.o, %bb.b ], [ null, %bb.f ], [ null, %bb.a ]
  store ptr %.1.i, ptr %0, align 8, !tbaa !235
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %i.au
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal i64 @ftc_snode_weight(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !119  ; 5 uses
  %.not20 = icmp eq i32 %i.b, 0
  br i1 %.not20, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %xtraiter = and i32 %i.b, 1
  %i.d = icmp eq i32 %i.b, 1
  br i1 %i.d, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.b, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %.lr.ph.preheader.new
  %.023 = phi i64 [ 448, %.lr.ph.preheader.new ], [ %.1.1, %bb.d ] ; 2 uses
  %.01522 = phi ptr [ %i.c, %.lr.ph.preheader.new ], [ %i.aa, %bb.d ] ; 7 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.d ]
  %i.e = getelementptr inbounds nuw i8, ptr %.01522, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !121
  %.not19 = icmp eq ptr %i.f, null
  br i1 %.not19, label %.lr.ph.1, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.01522, i64 6
  %i.h = load i16, ptr %i.g, align 2, !tbaa !237
  %i.i = tail call i16 @llvm.abs.i16(i16 %i.h, i1 false)
  %i.j = zext i16 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %.01522, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !231
  %i.m = zext i8 %i.l to i64
  %i.n = mul nuw nsw i64 %i.j, %i.m
  %i.o = add i64 %i.n, %.023
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.b
  %.1 = phi i64 [ %i.o, %bb.b ], [ %.023, %.lr.ph ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.01522, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !121
  %.not19.1 = icmp eq ptr %i.q, null
  br i1 %.not19.1, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.1
  %i.r = getelementptr inbounds nuw i8, ptr %.01522, i64 30
  %i.s = load i16, ptr %i.r, align 2, !tbaa !237
  %i.t = tail call i16 @llvm.abs.i16(i16 %i.s, i1 false)
  %i.u = zext i16 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %.01522, i64 25
  %i.w = load i8, ptr %i.v, align 1, !tbaa !231
  %i.x = zext i8 %i.w to i64
  %i.y = mul nuw nsw i64 %i.u, %i.x
  %i.z = add i64 %i.y, %.1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.1
  %.1.1 = phi i64 [ %i.z, %bb.c ], [ %.1, %.lr.ph.1 ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.01522, i64 48 ; 2 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !238

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.d
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.023.epil.init = phi i64 [ 448, %.lr.ph.preheader ], [ %.1.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.01522.epil.init = phi ptr [ %i.c, %.lr.ph.preheader ], [ %i.aa, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod26 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod26)
  %i.ab = getelementptr inbounds nuw i8, ptr %.01522.epil.init, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !121
  %.not19.epil = icmp eq ptr %i.ac, null
  br i1 %.not19.epil, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %.lr.ph.epil.preheader
  %i.ad = getelementptr inbounds nuw i8, ptr %.01522.epil.init, i64 6
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !237
  %i.af = tail call i16 @llvm.abs.i16(i16 %i.ae, i1 false)
  %i.ag = zext i16 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %.01522.epil.init, i64 1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !231
  %i.aj = zext i8 %i.ai to i64
  %i.ak = mul nuw nsw i64 %i.ag, %i.aj
  %i.al = add i64 %i.ak, %.023.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.e, %.lr.ph.epil.preheader, %bb.a
  %.0.lcssa = phi i64 [ 448, %bb.a ], [ %.1.1, %._crit_edge.loopexit.unr-lcssa ], [ %i.al, %bb.e ], [ %.023.epil.init, %.lr.ph.epil.preheader ]
  ret i64 %.0.lcssa
}

; Function Attrs: nounwind uwtable
define internal void @ftc_snode_free(ptr noundef %0, ptr nofree noundef captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !119  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !27   ; 2 uses
  %.not14 = icmp eq i32 %i.b, 0
  br i1 %.not14, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.016 = phi i32 [ %i.i, %.lr.ph ], [ %i.b, %.lr.ph.preheader ]
  %.01315 = phi ptr [ %i.h, %.lr.ph ], [ %i.e, %.lr.ph.preheader ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.01315, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !121
  tail call void @ft_mem_free(ptr noundef %i.d, ptr noundef %i.g) #13
  store ptr null, ptr %i.f, align 8, !tbaa !121
  %i.h = getelementptr inbounds nuw i8, ptr %.01315, i64 24
  %i.i = add i32 %.016, -1                        ; 2 uses
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !239

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %i.j, align 8, !tbaa !83
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !81   ; 8 uses
  store ptr null, ptr %i.k, align 8, !tbaa !81
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %FTC_GNode_Done.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !77
  %i.o = add i32 %i.n, -1                         ; 2 uses
  store i32 %i.o, ptr %i.m, align 8, !tbaa !77
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.c, label %FTC_GNode_Done.exit

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !43
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !63
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !72   ; 2 uses
  %i.x = load ptr, ptr %i.l, align 8, !tbaa !73   ; 4 uses
  store ptr %i.x, ptr %i.w, align 8, !tbaa !73
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.w, ptr %i.y, align 8, !tbaa !72
  %i.z = icmp eq ptr %i.l, %i.x
  br i1 %i.z, label %.sink.split.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = icmp eq ptr %i.l, %i.u
  br i1 %i.aa, label %.sink.split.i.i.i.i, label %FTC_MruNode_Remove.exit.i.i.i

.sink.split.i.i.i.i:                              ; preds = %bb.d, %bb.c
  %.sink.i.i.i.i = phi ptr [ null, %bb.c ], [ %i.x, %bb.d ]
  store ptr %.sink.i.i.i.i, ptr %i.t, align 8, !tbaa !63
  br label %FTC_MruNode_Remove.exit.i.i.i

FTC_MruNode_Remove.exit.i.i.i:                    ; preds = %.sink.split.i.i.i.i, %bb.d
  %i.ab = load i32, ptr %i.q, align 8, !tbaa !86
  %i.ac = add i32 %i.ab, -1
  store i32 %i.ac, ptr %i.q, align 8, !tbaa !86
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !87 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i, label %FTC_MruList_Remove.exit.i.i, label %bb.e

bb.e:                                             ; preds = %FTC_MruNode_Remove.exit.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !42
  tail call void %i.ae(ptr noundef nonnull %i.l, ptr noundef %i.ag) #13, !inline_history !213
  br label %FTC_MruList_Remove.exit.i.i

FTC_MruList_Remove.exit.i.i:                      ; preds = %bb.e, %FTC_MruNode_Remove.exit.i.i.i
  tail call void @ft_mem_free(ptr noundef %i.s, ptr noundef nonnull %i.l) #13
  br label %FTC_GNode_Done.exit

FTC_GNode_Done.exit:                              ; preds = %._crit_edge, %bb.b, %FTC_MruList_Remove.exit.i.i
  tail call void @ft_mem_free(ptr noundef %i.d, ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, -191) i32 @ftc_snode_load(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !81   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i32, ptr %i.d, align 8, !tbaa !83
  %i.f = sub i32 %2, %i.e                         ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load i32, ptr %i.g, align 8, !tbaa !119
  %.not = icmp ult i32 %i.f, %i.h
  br i1 %.not, label %bb.b, label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = zext i32 %i.f to i64
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %i.j ; 14 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !215
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !240
  %i.p = call i32 %i.o(ptr noundef %i.c, i32 noundef %2, ptr noundef %1, ptr noundef nonnull %i.a) #13
  %.not87 = icmp eq i32 %i.p, 0
  br i1 %.not87, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !162
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 152
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !222  ; 12 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 152 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 144
  %i.v = load i32, ptr %i.u, align 8, !tbaa !223
  %.not88 = icmp eq i32 %i.v, 1651078259
  br i1 %.not88, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 128
  %i.x = load i64, ptr %i.w, align 8, !tbaa !241
  %i.y = add nsw i64 %i.x, 32
  %i.z = ashr i64 %i.y, 6                         ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 136
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !242
  %i.ac = add nsw i64 %i.ab, 32
  %i.ad = ashr i64 %i.ac, 6                       ; 2 uses
  %i.ae = load i32, ptr %i.t, align 8, !tbaa !243 ; 2 uses
  %i.af = icmp ult i32 %i.ae, 256
  br i1 %i.af, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 156
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !244 ; 2 uses
  %i.ai = trunc nuw i32 %i.ah to i8
  %i.aj = icmp ult i32 %i.ah, 256
  br i1 %i.aj, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 160
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !245 ; 2 uses
  %i.am = add i32 %i.al, 32768
  %i.an = icmp ult i32 %i.am, 65536
  br i1 %i.an, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %i.s, i64 192
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !246 ; 2 uses
  %i.aq = add i32 %i.ap, 128
  %i.ar = icmp ult i32 %i.aq, 256
  br i1 %i.ar, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %i.s, i64 196
  %i.at = load i32, ptr %i.as, align 4, !tbaa !247 ; 2 uses
  %i.au = add i32 %i.at, 128
  %i.av = icmp ult i32 %i.au, 256
  br i1 %i.av, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.aw = trunc i64 %i.z to i8                    ; 2 uses
  %i.ax = sext i8 %i.aw to i32
  %i.ay = trunc i64 %i.z to i32
  %i.az = icmp eq i32 %i.ax, %i.ay
  br i1 %i.az, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.ba = trunc i64 %i.ad to i8                   ; 2 uses
  %i.bb = sext i8 %i.ba to i32
  %i.bc = trunc i64 %i.ad to i32
  %i.bd = icmp eq i32 %i.bb, %i.bc
  br i1 %i.bd, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  store i8 %i.ai, ptr %i.k, align 8, !tbaa !124
  %i.be = trunc nuw i32 %i.ae to i8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 2 uses
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !231
  %i.bg = trunc nsw i32 %i.al to i16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.k, i64 6 ; 2 uses
  store i16 %i.bg, ptr %i.bh, align 2, !tbaa !237
  %i.bi = trunc nsw i32 %i.ap to i8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  store i8 %i.bi, ptr %i.bj, align 2, !tbaa !248
  %i.bk = trunc nsw i32 %i.at to i8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.k, i64 3
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !249
  %i.bm = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i8 %i.aw, ptr %i.bm, align 8, !tbaa !250
  %i.bn = getelementptr inbounds nuw i8, ptr %i.k, i64 9
  store i8 %i.ba, ptr %i.bn, align 1, !tbaa !251
  %i.bo = getelementptr inbounds nuw i8, ptr %i.s, i64 178
  %i.bp = load i8, ptr %i.bo, align 2, !tbaa !252
  %i.bq = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store i8 %i.bp, ptr %i.bq, align 4, !tbaa !253
  %i.br = getelementptr inbounds nuw i8, ptr %i.s, i64 176
  %i.bs = load i16, ptr %i.br, align 8, !tbaa !254
  %i.bt = trunc i16 %i.bs to i8
  %i.bu = add i8 %i.bt, -1
  %i.bv = getelementptr inbounds nuw i8, ptr %i.k, i64 5
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !255
  %i.bw = getelementptr inbounds nuw i8, ptr %i.s, i64 296
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !256
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !257 ; 2 uses
  %4 = and i32 %i.bz, 1
  %.not89 = icmp eq i32 %4, 0
  br i1 %.not89, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ca = getelementptr inbounds nuw i8, ptr %i.s, i64 168
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !261
  %i.cc = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !121
  %i.cd = and i32 %i.bz, -2
  store i32 %i.cd, ptr %i.by, align 8, !tbaa !257
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !9
  %i.cg = call fastcc i32 @ftc_sbit_copy_bitmap(ptr noundef nonnull %i.k, ptr noundef nonnull %i.t, ptr noundef %i.cf)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.079 = phi i32 [ 0, %bb.l ], [ %i.cg, %bb.m ]  ; 3 uses
  %.not90 = icmp eq ptr %3, null
  br i1 %.not90, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ch = load i16, ptr %i.bh, align 2, !tbaa !237
  %i.ci = call i16 @llvm.abs.i16(i16 %i.ch, i1 false)
  %i.cj = zext i16 %i.ci to i64
  %i.ck = load i8, ptr %i.bf, align 1, !tbaa !231
  %i.cl = zext i8 %i.ck to i64
  %i.cm = mul nuw nsw i64 %i.cj, %i.cl
  store i64 %i.cm, ptr %3, align 8, !tbaa !30
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.not91 = icmp eq i32 %.079, 0
  br i1 %.not91, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cn = and i32 %.079, 255
  %.not92 = icmp eq i32 %i.cn, 64
  br i1 %.not92, label %bb.s, label %.thread

.thread:                                          ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.j, %bb.c, %bb.q, %bb.b
  store i8 -1, ptr %i.k, align 8, !tbaa !124
  %i.co = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store i8 0, ptr %i.co, align 1, !tbaa !231
  %i.cp = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr null, ptr %i.cp, align 8, !tbaa !121
  %.not93 = icmp eq ptr %3, null
  br i1 %.not93, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.thread
  store i64 0, ptr %3, align 8, !tbaa !30
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.q, %bb.r, %.thread, %bb.a
  %.080 = phi i32 [ 6, %bb.a ], [ 0, %bb.r ], [ 0, %.thread ], [ %.079, %bb.q ], [ 0, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.080
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ftc_sbit_copy_bitmap(ptr nofree noundef writeonly captures(none) initializes((16, 24)) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !245
  %spec.select = tail call i32 @llvm.abs.i32(i32 %i.c, i1 true)
  %i.d = zext nneg i32 %spec.select to i64
  %i.e = load i32, ptr %1, align 8, !tbaa !243
  %i.f = zext i32 %i.e to i64
  %i.g = mul nuw nsw i64 %i.d, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !261
  %i.j = call ptr @ft_mem_dup(ptr noundef %2, ptr noundef %i.i, i64 noundef %i.g, ptr noundef nonnull %i.a) #13
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.j, ptr %i.k, align 8, !tbaa !121
  %i.l = load i32, ptr %i.a, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %i.l
}

declare hidden ptr @ft_mem_dup(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal i32 @ftc_basic_family_get_count(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(address_is_null) %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !64   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %.not29.i = icmp eq ptr %1, null
  br i1 %.not29.i, label %FTC_Manager_LookupFace.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !63   ; 6 uses
  %.not30.i = icmp eq ptr %i.f, null
  br i1 %.not30.i, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b, %bb.d
  %.0.i = phi ptr [ %i.o, %bb.d ], [ %i.f, %bb.b ] ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !140
  %.not38.i = icmp eq ptr %i.h, %i.c
  br i1 %.not38.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.preheader.i
  %.not33.i = icmp eq ptr %.0.i, %i.f
  br i1 %.not33.i, label %FTC_Manager_LookupFace.exit, label %FTC_MruNode_Up.exit.i

FTC_MruNode_Up.exit.i:                            ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !72   ; 2 uses
  %i.k = load ptr, ptr %.0.i, align 8, !tbaa !73  ; 2 uses
  store ptr %i.k, ptr %i.j, align 8, !tbaa !73
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.j, ptr %i.l, align 8, !tbaa !72
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !72   ; 2 uses
  store ptr %.0.i, ptr %i.n, align 8, !tbaa !73
  store ptr %.0.i, ptr %i.m, align 8, !tbaa !72
  store ptr %i.f, ptr %.0.i, align 8, !tbaa !73
  store ptr %i.n, ptr %i.i, align 8, !tbaa !72
  store ptr %.0.i, ptr %i.e, align 8, !tbaa !63
  br label %FTC_Manager_LookupFace.exit

bb.d:                                             ; preds = %.preheader.i
  %i.o = load ptr, ptr %.0.i, align 8, !tbaa !73  ; 2 uses
  %.not32.i = icmp eq ptr %i.o, %i.f
  br i1 %.not32.i, label %.loopexit.i, label %.preheader.i, !llvm.loop !143

.loopexit.i:                                      ; preds = %bb.d, %bb.b
  %i.p = call fastcc i32 @FTC_MruList_New(ptr noundef nonnull %i.d, ptr noundef %i.c, ptr noundef %i.a)
  %.not34.i = icmp eq i32 %i.p, 0
  br i1 %.not34.i, label %.loopexit._crit_edge.i, label %FTC_Manager_LookupFace.exit.thread

.loopexit._crit_edge.i:                           ; preds = %.loopexit.i
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !63
  br label %FTC_Manager_LookupFace.exit

FTC_Manager_LookupFace.exit.thread:               ; preds = %bb.a, %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.f

FTC_Manager_LookupFace.exit:                      ; preds = %bb.c, %FTC_MruNode_Up.exit.i, %.loopexit._crit_edge.i
  %i.q = phi ptr [ %.pre.i, %.loopexit._crit_edge.i ], [ %.0.i, %bb.c ], [ %.0.i, %FTC_MruNode_Up.exit.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !144  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %FTC_Manager_LookupFace.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.u = load i64, ptr %i.t, align 8, !tbaa !262
  %i.v = trunc i64 %i.u to i32
  br label %bb.f

bb.f:                                             ; preds = %FTC_Manager_LookupFace.exit.thread, %FTC_Manager_LookupFace.exit, %bb.e
  %.0 = phi i32 [ %i.v, %bb.e ], [ 0, %FTC_Manager_LookupFace.exit ], [ 0, %FTC_Manager_LookupFace.exit.thread ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @ftc_basic_family_load_bitmap(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(address_is_null) %2, ptr nofree noundef writeonly captures(none) %3) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = call i32 @FTC_Manager_LookupSize(ptr noundef %2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !163
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !218  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load i32, ptr %i.f, align 8, !tbaa !71
  %i.h = or i32 %i.g, 4
  %i.i = call i32 @FT_Load_Glyph(ptr noundef %i.e, i32 noundef %1, i32 noundef %i.h) #13 ; 2 uses
  %.not11 = icmp eq i32 %i.i, 0
  br i1 %.not11, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr %i.e, ptr %3, align 8, !tbaa !162
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i32 [ %i.c, %bb.a ], [ 0, %bb.c ], [ %i.i, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ftc_cache_resize(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
end_hunk_3
