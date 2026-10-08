Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lz4/original/lz4io?download=true
inline.NumInlined: 97
inline.NumDeleted: 35
begin_hunk_0_@LZ4IO_checkWriteOrder:bb.a
  store i64 %i.h, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !29
  %.sroa.656.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store i64 %i.d, ptr %.sroa.656.0..sroa_idx, align 8, !tbaa !35
  store i64 %i.q, ptr %i.k, align 8, !tbaa !157
  br label %WR_addBufDesc.exit

bb.m:                                             ; preds = %.lr.ph.i
  %i.ax = add nuw i64 %.032.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ax, %i.l
  br i1 %exitcond.not.i, label %WR_addBufDesc.exit, label %.lr.ph.i, !llvm.loop !148

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.m
  %.032.i = phi i64 [ %i.ax, %bb.m ], [ 0, %.preheader.i ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %.032.i ; 4 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !159
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.n, label %bb.m

bb.n:                                             ; preds = %.lr.ph.i
  store ptr %i.g, ptr %i.ay, align 8, !tbaa !100
  %.sroa.5.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i64 %i.h, ptr %.sroa.5.0..sroa_idx54, align 8, !tbaa !29
  %.sroa.656.0..sroa_idx57 = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store i64 %i.d, ptr %.sroa.656.0..sroa_idx57, align 8, !tbaa !35
  br label %WR_addBufDesc.exit

WR_addBufDesc.exit:                               ; preds = %bb.m, %.preheader.i, %bb.l, %bb.n
  tail call void @free(ptr noundef %0) #25
  br label %bb.ak

bb.o:                                             ; preds = %bb.a
  %i.bb = load i64, ptr %i.a, align 8, !tbaa !96  ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !95
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !98
  tail call fastcc void @LZ4IO_writeBuffer(ptr %i.bd, i64 %i.bb, ptr noundef %i.bf)
  %i.bg = load i64, ptr %i.b, align 8, !tbaa !156
  %i.bh = add i64 %i.bg, 1
  store i64 %i.bh, ptr %i.b, align 8, !tbaa !156
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 5 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !39
  %i.bk = add i64 %i.bj, %i.bb
  store i64 %i.bk, ptr %i.bi, align 8, !tbaa !39
  %i.bl = load ptr, ptr %i.bc, align 8, !tbaa !95
  tail call void @free(ptr noundef %i.bl) #25
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !157 ; 2 uses
  %.not.i3773 = icmp eq i64 %i.bn, 0
  br i1 %.not.i3773, label %.loopexit, label %.lr.ph.i38.lr.ph

.lr.ph.i38.lr.ph:                                 ; preds = %bb.o
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %.pre = load i64, ptr %i.b, align 8, !tbaa !156
  br label %.lr.ph.i38

.lr.ph.i38:                                       ; preds = %.lr.ph.i38.lr.ph, %WR_removeBuffID.exit
  %i.bp = phi i64 [ %.pre, %.lr.ph.i38.lr.ph ], [ %i.eb, %WR_removeBuffID.exit ] ; 2 uses
  %i.bq = phi i64 [ %i.bn, %.lr.ph.i38.lr.ph ], [ %i.ec, %WR_removeBuffID.exit ] ; 2 uses
  %i.br = load ptr, ptr %i.bo, align 8, !tbaa !37 ; 2 uses
  br label %bb.q

bb.p:                                             ; preds = %bb.r
  %i.bs = add nuw i64 %.09.i, 1                   ; 2 uses
  %exitcond.not.i39 = icmp eq i64 %i.bs, %i.bq
  br i1 %exitcond.not.i39, label %.loopexit, label %bb.q, !llvm.loop !149

bb.q:                                             ; preds = %bb.p, %.lr.ph.i38
  %.09.i = phi i64 [ 0, %.lr.ph.i38 ], [ %i.bs, %bb.p ] ; 2 uses
  %i.bt = getelementptr inbounds nuw [24 x i8], ptr %i.br, i64 %.09.i ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !159
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !160
  %i.by = icmp eq i64 %i.bx, %i.bp
  br i1 %i.by, label %.lr.ph.i41, label %bb.p

bb.s:                                             ; preds = %bb.t
  %i.bz = add nuw i64 %.012.i, 1                  ; 2 uses
  %exitcond.not.i42 = icmp eq i64 %i.bz, %i.bq
  br i1 %exitcond.not.i42, label %._crit_edge.i, label %.lr.ph.i41, !llvm.loop !150

.lr.ph.i41:                                       ; preds = %bb.r, %bb.s
  %.012.i = phi i64 [ %i.bz, %bb.s ], [ 0, %bb.r ] ; 2 uses
  %i.ca = getelementptr inbounds nuw [24 x i8], ptr %i.br, i64 %.012.i ; 3 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !159, !noalias !161 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %._crit_edge.i, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i41
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !160, !noalias !161
  %i.cf = icmp eq i64 %i.ce, %i.bp
  br i1 %i.cf, label %WR_getBufID.exit, label %bb.s

._crit_edge.i:                                    ; preds = %.lr.ph.i41, %bb.s
  %i.cg = load i32, ptr @g_displayLevel, align 4, !tbaa !11, !noalias !161
  %i.ch = icmp sgt i32 %i.cg, 0
  br i1 %i.ch, label %bb.u, label %.thread11.i

bb.u:                                             ; preds = %._crit_edge.i
  %i.ci = load ptr, ptr @stderr, align 8, !tbaa !14, !noalias !161
  %i.cj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ci, ptr noundef nonnull @.str, i32 noundef 41) #27, !noalias !161 ; 0 uses
  %i.ck = load i32, ptr @g_displayLevel, align 4, !tbaa !11, !noalias !161 ; 2 uses
  %i.cl = icmp sgt i32 %i.ck, 3
  br i1 %i.cl, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cm = load ptr, ptr @stderr, align 8, !tbaa !14, !noalias !161
  %i.cn = tail call i32 @fflush(ptr noundef %i.cm), !noalias !161 ; 0 uses
  %.pr.i45 = load i32, ptr @g_displayLevel, align 4, !tbaa !11, !noalias !161
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.co = phi i32 [ %i.ck, %bb.u ], [ %.pr.i45, %bb.v ]
  %i.cp = icmp sgt i32 %i.co, 0
  br i1 %i.cp, label %bb.x, label %.thread11.i

bb.x:                                             ; preds = %bb.w
  %i.cq = load ptr, ptr @stderr, align 8, !tbaa !14, !noalias !161
  %fwrite.i43 = tail call i64 @fwrite(ptr nonnull @.str.69, i64 19, i64 1, ptr %i.cq) #28, !noalias !161 ; 0 uses
  %i.cr = load i32, ptr @g_displayLevel, align 4, !tbaa !11, !noalias !161 ; 2 uses
  %i.cs = icmp sgt i32 %i.cr, 3
  br i1 %i.cs, label %bb.y, label %thread-pre-split.i44

bb.y:                                             ; preds = %bb.x
  %i.ct = load ptr, ptr @stderr, align 8, !tbaa !14, !noalias !161
  %i.cu = tail call i32 @fflush(ptr noundef %i.ct), !noalias !161 ; 0 uses
  %.pr10.pre.i = load i32, ptr @g_displayLevel, align 4, !tbaa !11, !noalias !161
  br label %thread-pre-split.i44

thread-pre-split.i44:                             ; preds = %bb.y, %bb.x
  %i.cv = phi i32 [ %i.cr, %bb.x ], [ %.pr10.pre.i, %bb.y ]
  %i.cw = icmp sgt i32 %i.cv, 0
  br i1 %i.cw, label %bb.z, label %.thread11.i

bb.z:                                             ; preds = %thread-pre-split.i44
  %i.cx = load ptr, ptr @stderr, align 8, !tbaa !14, !noalias !161
  %fwrite9.i = tail call i64 @fwrite(ptr nonnull @.str.2, i64 2, i64 1, ptr %i.cx) #28, !noalias !161 ; 0 uses
  %i.cy = load i32, ptr @g_displayLevel, align 4, !tbaa !11, !noalias !161
  %i.cz = icmp sgt i32 %i.cy, 3
  br i1 %i.cz, label %bb.aa, label %.thread11.i

bb.aa:                                            ; preds = %bb.z
  %i.da = load ptr, ptr @stderr, align 8, !tbaa !14, !noalias !161
  %i.db = tail call i32 @fflush(ptr noundef %i.da), !noalias !161 ; 0 uses
  br label %.thread11.i

.thread11.i:                                      ; preds = %bb.aa, %bb.z, %thread-pre-split.i44, %bb.w, %._crit_edge.i
  %i.dc = tail call i32 @fflush(ptr noundef null), !noalias !161 ; 0 uses
  tail call void @exit(i32 noundef 41) #29, !noalias !161
  unreachable

WR_getBufID.exit:                                 ; preds = %bb.t
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !29 ; 2 uses
  %i.dd = load ptr, ptr %i.be, align 8, !tbaa !98
  tail call fastcc void @LZ4IO_writeBuffer(ptr nonnull %i.cb, i64 %.sroa.4.0.copyload, ptr noundef %i.dd)
  %i.de = load i64, ptr %i.bi, align 8, !tbaa !39
  %i.df = add i64 %i.de, %.sroa.4.0.copyload
  store i64 %i.df, ptr %i.bi, align 8, !tbaa !39
  %i.dg = load i64, ptr %i.b, align 8, !tbaa !156
  %i.dh = load i64, ptr %i.bm, align 8, !tbaa !157 ; 3 uses
  %.not.i46 = icmp eq i64 %i.dh, 0
  br i1 %.not.i46, label %.loopexit22.i.preheader, label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %WR_getBufID.exit
  %i.di = load ptr, ptr %i.bo, align 8, !tbaa !37
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ae, %.lr.ph.i47
  %.033.i = phi i64 [ 0, %.lr.ph.i47 ], [ %i.dp, %bb.ae ] ; 3 uses
  %i.dj = getelementptr inbounds nuw [24 x i8], ptr %i.di, i64 %.033.i ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !159 ; 2 uses
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %WR_removeBuffID.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !160
  %i.do = icmp eq i64 %i.dn, %i.dg
  br i1 %i.do, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  tail call void @free(ptr noundef nonnull %i.dk) #25
  br label %.loopexit22.i.preheader

bb.ae:                                            ; preds = %bb.ac
  %i.dp = add nuw i64 %.033.i, 1                  ; 2 uses
  %exitcond.not.i48 = icmp eq i64 %i.dp, %i.dh
  br i1 %exitcond.not.i48, label %.loopexit22.i.preheader, label %bb.ab, !llvm.loop !153

.loopexit22.i.preheader:                          ; preds = %bb.ae, %bb.ad, %WR_getBufID.exit
  %.1.in.i.ph = phi i64 [ %.033.i, %bb.ad ], [ 0, %WR_getBufID.exit ], [ %i.dh, %bb.ae ]
  br label %.loopexit22.i

.loopexit22.i:                                    ; preds = %.loopexit22.i.preheader, %bb.af
  %.1.in.i = phi i64 [ %.1.i, %bb.af ], [ %.1.in.i.ph, %.loopexit22.i.preheader ] ; 3 uses
  %.1.i = add i64 %.1.in.i, 1                     ; 2 uses
  %i.dq = load i64, ptr %i.bm, align 8, !tbaa !157 ; 2 uses
  %i.dr = icmp ult i64 %.1.i, %i.dq
  %i.ds = load ptr, ptr %i.bo, align 8, !tbaa !37 ; 2 uses
  br i1 %i.dr, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.loopexit22.i
  %i.dt = getelementptr inbounds nuw [24 x i8], ptr %i.ds, i64 %.1.in.i ; 2 uses
  %1 = getelementptr i8, ptr %i.dt, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dt, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !162
  %i.du = load ptr, ptr %i.bo, align 8, !tbaa !37
  %i.dv = getelementptr [24 x i8], ptr %i.du, i64 %.1.in.i
  %2 = getelementptr i8, ptr %i.dv, i64 24
  %i.dw = load ptr, ptr %2, align 8, !tbaa !159
  %i.dx = icmp eq ptr %i.dw, null
  br i1 %i.dx, label %WR_removeBuffID.exit, label %.loopexit22.i, !llvm.loop !154

bb.ag:                                            ; preds = %.loopexit22.i
  %i.dy = getelementptr [24 x i8], ptr %i.ds, i64 %i.dq
  %i.dz = getelementptr i8, ptr %i.dy, i64 -24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dz, i8 0, i64 24, i1 false)
  br label %WR_removeBuffID.exit

WR_removeBuffID.exit:                             ; preds = %bb.ab, %bb.af, %bb.ag
  %i.ea = load i64, ptr %i.b, align 8, !tbaa !156
  %i.eb = add i64 %i.ea, 1                        ; 2 uses
  store i64 %i.eb, ptr %i.b, align 8, !tbaa !156
  %i.ec = load i64, ptr %i.bm, align 8, !tbaa !157 ; 2 uses
  %.not.i37 = icmp eq i64 %i.ec, 0
  br i1 %.not.i37, label %.loopexit, label %.lr.ph.i38, !llvm.loop !155

.loopexit:                                        ; preds = %WR_removeBuffID.exit, %bb.p, %bb.q, %bb.o
  tail call void @free(ptr noundef %0) #25
  %i.ed = load i64, ptr %i.b, align 8, !tbaa !156
  %i.ee = add i64 %i.ed, -1
  %i.ef = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !38
  %i.eh = mul i64 %i.ee, %i.eg                    ; 2 uses
  %i.ei = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  %i.ej = icmp sgt i32 %i.ei, 1
  br i1 %i.ej, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %.loopexit
  %i.ek = load i64, ptr @g_time.0, align 8
  %i.el = tail call i64 @TIME_clockSpan_ns(i64 %i.ek) #25
  %i.em = icmp ugt i64 %i.el, 200000000
  %i.en = load i32, ptr @g_displayLevel, align 4
  %i.eo = icmp sgt i32 %i.en, 3
  %or.cond = select i1 %i.em, i1 true, i1 %i.eo
  br i1 %or.cond, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.ep = tail call i64 @TIME_getTime() #25
  store i64 %i.ep, ptr @g_time.0, align 8, !tbaa !35
  %i.eq = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.er = lshr i64 %i.eh, 20
  %i.es = trunc i64 %i.er to i32
  %i.et = load i64, ptr %i.bi, align 8, !tbaa !39
  %i.eu = uitofp i64 %i.et to double
  %i.ev = uitofp i64 %i.eh to double
  %i.ew = fdiv double %i.eu, %i.ev
  %i.ex = fmul double %i.ew, 1.000000e+02
  %i.ey = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.eq, ptr noundef nonnull @.str.7, i32 noundef %i.es, double noundef %i.ex) #27 ; 0 uses
  %i.ez = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  %i.fa = icmp sgt i32 %i.ez, 3
  br i1 %i.fa, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.fb = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.fc = tail call i32 @fflush(ptr noundef %i.fb) ; 0 uses
  br label %bb.ak

bb.ak:                                            ; preds = %.loopexit, %bb.ai, %bb.aj, %bb.ah, %WR_addBufDesc.exit
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @LZ4IO_writeBuffer(ptr nofree readonly captures(none) %.0.val, i64 %.8.val, ptr nofree noundef captures(none) %0) unnamed_addr #3 {
bb.a:
  %i.a = tail call i64 @fwrite(ptr noundef %.0.val, i64 noundef 1, i64 noundef %.8.val, ptr noundef %0)
  %.not = icmp eq i64 %i.a, %.8.val
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %.thread2

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.e = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.d, ptr noundef nonnull @.str, i32 noundef 38) #27 ; 0 uses
  %i.f = load i32, ptr @g_displayLevel, align 4, !tbaa !11 ; 2 uses
  %i.g = icmp sgt i32 %i.f, 3
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.i = tail call i32 @fflush(ptr noundef %i.h)  ; 0 uses
  %.pr = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.j = phi i32 [ %i.f, %bb.c ], [ %.pr, %bb.d ]
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %bb.f, label %.thread2

bb.f:                                             ; preds = %bb.e
  %i.l = load ptr, ptr @stderr, align 8, !tbaa !14
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.20, i64 43, i64 1, ptr %i.l) #28 ; 0 uses
  %i.m = load i32, ptr @g_displayLevel, align 4, !tbaa !11 ; 2 uses
  %i.n = icmp sgt i32 %i.m, 3
  br i1 %i.n, label %bb.g, label %thread-pre-split

bb.g:                                             ; preds = %bb.f
  %i.o = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.p = tail call i32 @fflush(ptr noundef %i.o)  ; 0 uses
  %.pr1.pre = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.g, %bb.f
  %i.q = phi i32 [ %i.m, %bb.f ], [ %.pr1.pre, %bb.g ]
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %bb.h, label %.thread2

bb.h:                                             ; preds = %thread-pre-split
  %i.s = load ptr, ptr @stderr, align 8, !tbaa !14
  %fwrite2 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 2, i64 1, ptr %i.s) #28 ; 0 uses
  %i.t = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  %i.u = icmp sgt i32 %i.t, 3
  br i1 %i.u, label %bb.i, label %.thread2

bb.i:                                             ; preds = %bb.h
  %i.v = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.w = tail call i32 @fflush(ptr noundef %i.v)  ; 0 uses
  br label %.thread2

.thread2:                                         ; preds = %bb.e, %bb.b, %bb.h, %bb.i, %thread-pre-split
  %i.x = tail call i32 @fflush(ptr noundef null)  ; 0 uses
  tail call void @exit(i32 noundef 38) #29
  unreachable

bb.j:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #21

; Function Attrs: nounwind uwtable
define internal void @LZ4IO_compressAndFreeChunk(ptr noundef captures(none) %0) #11 {
bb.a:
  tail call void @LZ4IO_compressChunk(ptr noundef %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !83
  tail call void @free(ptr noundef %i.b) #25
  tail call void @free(ptr noundef %0) #25
  ret void
}

; Function Attrs: nounwind
declare i32 @utimensat(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i32 @chown(ptr noundef readonly captures(none), i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @chmod(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc noalias nonnull ptr @LZ4IO_createDict(ptr nofree noundef nonnull writeonly captures(none) %0, ptr noundef %1) unnamed_addr #11 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(65536) ptr @malloc(i64 noundef 65536) #26 ; 6 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %.thread66

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.e = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.d, ptr noundef nonnull @.str, i32 noundef 26) #27 ; 0 uses
  %i.f = load i32, ptr @g_displayLevel, align 4, !tbaa !11 ; 2 uses
  %i.g = icmp sgt i32 %i.f, 3
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.i = tail call i32 @fflush(ptr noundef %i.h)  ; 0 uses
  %.pr = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.j = phi i32 [ %i.f, %bb.c ], [ %.pr, %bb.d ]
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %bb.f, label %.thread66

bb.f:                                             ; preds = %bb.e
  %i.l = load ptr, ptr @stderr, align 8, !tbaa !14
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.78, i64 39, i64 1, ptr %i.l) #28 ; 0 uses
  %i.m = load i32, ptr @g_displayLevel, align 4, !tbaa !11 ; 2 uses
  %i.n = icmp sgt i32 %i.m, 3
  br i1 %i.n, label %bb.g, label %thread-pre-split

bb.g:                                             ; preds = %bb.f
  %i.o = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.p = tail call i32 @fflush(ptr noundef %i.o)  ; 0 uses
  %.pr65.pre = load i32, ptr @g_displayLevel, align 4, !tbaa !11
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.g, %bb.f
  %i.q = phi i32 [ %i.m, %bb.f ], [ %.pr65.pre, %bb.g ]
  %i.r = icmp sgt i32 %i.q, 0
end_hunk_0
