Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/shell?download=true
inline.NumInlined: 1512
inline.NumDeleted: 270
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 119
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@modeChange:bb.a
  store i8 2, ptr %i.bd, align 1, !tbaa !365
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 4316
  store i8 1, ptr %i.be, align 4, !tbaa !933
  br label %common.ret73

bb.m:                                             ; preds = %.thread, %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 4331
  store i8 1, ptr %i.bf, align 1, !tbaa !365
  br label %common.ret73

bb.n:                                             ; preds = %bb.a
  %i.bg = icmp ugt i8 %1, 74
  br i1 %i.bg, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bh = add nsw i32 %i.a, -75                   ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 4592
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !395
  %i.bk = icmp slt i32 %i.bh, %i.bj
  br i1 %i.bk, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 4312 ; 4 uses
  %i.bm = load i8, ptr %i.bl, align 8, !tbaa !393
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 4320
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 4360
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !378
  tail call void @free(ptr noundef %i.bp) #45
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 4368
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !379
  tail call void @free(ptr noundef %i.br) #45
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 4376
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !380
  tail call void @free(ptr noundef %i.bt) #45
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 4384
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !381
  tail call void @free(ptr noundef %i.bv) #45
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 4392
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !382
  tail call void @free(ptr noundef %i.bx) #45
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 4400
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !383
  tail call void @free(ptr noundef %i.bz) #45
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.bl, i8 0, i64 136, i1 false)
  store i8 1, ptr %i.bn, align 8, !tbaa !394
  store i8 %i.bm, ptr %i.bl, align 8, !tbaa !393
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 4584
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !396
  %i.cc = zext nneg i32 %i.bh to i64
  %i.cd = getelementptr inbounds nuw [144 x i8], ptr %i.cb, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  tail call fastcc void @modeDup(ptr noundef nonnull %i.bl, ptr noundef nonnull %i.ce)
  br label %common.ret73

bb.q:                                             ; preds = %bb.o, %bb.n
  switch i8 %1, label %common.ret73 [
    i8 50, label %bb.r
    i8 51, label %bb.s
  ]

common.ret73:                                     ; preds = %bb.q, %bb.l, %bb.m, %bb.p, %modeChange.exit, %bb.r
  ret void

bb.r:                                             ; preds = %bb.q
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 4312 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 4317 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !368
  %i.ci = load i8, ptr %i.cf, align 8, !tbaa !393
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 4320
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 4360
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !378
  tail call void @free(ptr noundef %i.cl) #45
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 4368
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !379
  tail call void @free(ptr noundef %i.cn) #45
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 4376
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !380
  tail call void @free(ptr noundef %i.cp) #45
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 4384
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !381
  tail call void @free(ptr noundef %i.cr) #45
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 4392
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !382
  tail call void @free(ptr noundef %i.ct) #45
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 4400
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !383
  tail call void @free(ptr noundef %i.cv) #45
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.cf, i8 0, i64 136, i1 false)
  store i8 1, ptr %i.cj, align 8, !tbaa !394
  store i8 %i.ci, ptr %i.cf, align 8, !tbaa !393
  tail call fastcc void @modeChange(ptr noundef %0, i8 noundef zeroext 12)
  store i8 %i.ch, ptr %i.cg, align 1, !tbaa !368
  br label %common.ret73

bb.s:                                             ; preds = %bb.q
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 4312 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 4317 ; 3 uses
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !368
  %i.cz = load i8, ptr %i.cw, align 8, !tbaa !393
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 4320
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 4360
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !378
  tail call void @free(ptr noundef %i.dc) #45
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 4368
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !379
  tail call void @free(ptr noundef %i.de) #45
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 4376
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !380
  tail call void @free(ptr noundef %i.dg) #45
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 4384
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !381
  tail call void @free(ptr noundef %i.di) #45
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 4392
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !382
  tail call void @free(ptr noundef %i.dk) #45
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 4400 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !383
  tail call void @free(ptr noundef %i.dm) #45
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.cw, i8 0, i64 136, i1 false)
  store i8 1, ptr %i.da, align 8, !tbaa !394
  store i8 %i.cz, ptr %i.cw, align 8, !tbaa !393
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 4318
  store i8 16, ptr %i.dn, align 2, !tbaa !357
  %i.do = tail call noalias dereferenceable_or_null(5) ptr @malloc(i64 noundef 5) #51, !inline_history !358 ; 3 uses
  store ptr %i.do, ptr %i.dl, align 8, !tbaa !88
  %.not.i64.i = icmp eq ptr %i.do, null
  br i1 %.not.i64.i, label %modeSetStr.exit65.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.do, ptr noundef nonnull readonly align 1 dereferenceable(5) @.str.160, i64 5, i1 false)
  br label %modeSetStr.exit65.i

modeSetStr.exit65.i:                              ; preds = %bb.t, %bb.s
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 4323
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 4325
  store i8 0, ptr %i.dq, align 1, !tbaa !360
  %i.dr = load i8, ptr %i.cx, align 1, !tbaa !361
  %i.ds = and i8 %i.dr, 4
  %i.dt = icmp eq i8 %i.ds, 0
  br i1 %i.dt, label %bb.u, label %modeChange.exit

bb.u:                                             ; preds = %modeSetStr.exit65.i
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 4326
  store i8 2, ptr %i.du, align 2, !tbaa !362
  br label %modeChange.exit

modeChange.exit:                                  ; preds = %modeSetStr.exit65.i, %bb.u
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 4324
  store i8 1, ptr %i.dv, align 4, !tbaa !363
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 4332
  store i8 0, ptr %i.dw, align 4, !tbaa !364
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 4331
  store i8 1, ptr %i.dx, align 1, !tbaa !365
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 4316
  store i8 1, ptr %i.dy, align 4, !tbaa !412
  store i8 7, ptr %i.dp, align 1, !tbaa !413
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 4348
  store i32 300, ptr %i.dz, align 4, !tbaa !414
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 4338
  store i16 5, ptr %i.ea, align 2, !tbaa !415
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 4328
  store i8 2, ptr %i.eb, align 8, !tbaa !416
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 4340
  store i16 20, ptr %i.ec, align 4, !tbaa !417
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 4344
  store i32 3000, ptr %i.ed, align 8, !tbaa !418
  store i8 %i.cy, ptr %i.cx, align 1, !tbaa !368
  br label %common.ret73
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #16

; Function Attrs: nounwind uwtable
define internal fastcc i64 @integerValue(ptr noundef %0) unnamed_addr #4 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !52      ; 2 uses
  %i.b = icmp eq i8 %i.a, 45                      ; 4 uses
  %i.c = icmp eq i8 %i.a, 43
  %i.d = or i1 %i.b, %i.c
  %.038.idx = zext i1 %i.d to i64
  %.038 = getelementptr inbounds nuw i8, ptr %0, i64 %.038.idx ; 5 uses
  %i.e = load i8, ptr %.038, align 1, !tbaa !52   ; 3 uses
  %i.f = icmp eq i8 %i.e, 48
  br i1 %i.f, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %.038, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !52
  %i.i = icmp eq i8 %i.h, 120
  br i1 %i.i, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.038, i64 2
  br label %bb.d

bb.d:                                             ; preds = %bb.i, %bb.c
  %.139 = phi ptr [ %i.j, %bb.c ], [ %i.r, %bb.i ] ; 3 uses
  %.037 = phi i64 [ 0, %bb.c ], [ %i.q, %bb.i ]   ; 3 uses
  %i.k = load i8, ptr %.139, align 1, !tbaa !52   ; 4 uses
  %1 = sext i8 %i.k to i32                        ; 3 uses
  %i.l = add i8 %i.k, -48
  %or.cond.i = icmp ult i8 %i.l, 10
  br i1 %or.cond.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %2 = add nsw i32 %1, -48
  br label %hexDigitValue.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.m = add i8 %i.k, -97
  %or.cond5.i = icmp ult i8 %i.m, 6
  br i1 %or.cond5.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %3 = add nsw i32 %1, -87
  br label %hexDigitValue.exit.thread

bb.h:                                             ; preds = %bb.f
  %4 = add nsw i32 %1, -55
  %i.n = add i8 %i.k, -65
  %or.cond53 = icmp ult i8 %i.n, 6
  br i1 %or.cond53, label %hexDigitValue.exit.thread, label %.thread

hexDigitValue.exit.thread:                        ; preds = %bb.h, %bb.g, %bb.e
  %.0.i49 = phi i32 [ %4, %bb.h ], [ %3, %bb.g ], [ %2, %bb.e ]
  %i.o = icmp ugt i64 %.037, 1152921504606846975
  br i1 %i.o, label %.loopexit54, label %bb.i

bb.i:                                             ; preds = %hexDigitValue.exit.thread
  %i.p = shl nuw i64 %.037, 4
  %5 = zext nneg i32 %.0.i49 to i64
  %i.q = add i64 %i.p, %5
  %i.r = getelementptr inbounds nuw i8, ptr %.139, i64 1
  br label %bb.d, !llvm.loop !934

bb.j:                                             ; preds = %bb.b, %bb.a
  %i.s = tail call ptr @__ctype_b_loc() #47
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !132  ; 2 uses
  %i.u = zext i8 %i.e to i64
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.u
  %i.w = load i16, ptr %i.v, align 2, !tbaa !98
  %i.x = and i16 %i.w, 2048
  %.not61 = icmp eq i16 %i.x, 0
  br i1 %.not61, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j, %bb.l
  %i.y = phi i8 [ %i.ag, %bb.l ], [ %i.e, %bb.j ] ; 2 uses
  %.163 = phi i64 [ %i.ae, %bb.l ], [ 0, %bb.j ]  ; 3 uses
  %.24062 = phi ptr [ %i.af, %bb.l ], [ %.038, %bb.j ]
  %i.z = icmp ugt i64 %.163, 922337203685477579
  br i1 %i.z, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph
  %.not45 = icmp ne i64 %.163, 922337203685477580
  %i.aa = icmp sgt i8 %i.y, 55
  %or.cond47 = or i1 %.not45, %i.aa
  br i1 %or.cond47, label %.loopexit54, label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph
  %i.ab = mul nuw nsw i64 %.163, 10
  %i.ac = sext i8 %i.y to i64
  %i.ad = add nsw i64 %i.ab, -48
  %i.ae = add i64 %i.ad, %i.ac                    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.24062, i64 1 ; 3 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !52  ; 2 uses
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.ah
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !98
  %i.ak = and i16 %i.aj, 2048
  %.not = icmp eq i16 %i.ak, 0
  br i1 %.not, label %.thread, label %.lr.ph, !llvm.loop !935

.thread:                                          ; preds = %bb.l, %bb.h, %bb.j
  %.341 = phi ptr [ %.139, %bb.h ], [ %.038, %bb.j ], [ %i.af, %bb.l ] ; 9 uses
  %.2 = phi i64 [ %.037, %bb.h ], [ 0, %bb.j ], [ %i.ae, %bb.l ] ; 3 uses
  %i.al = tail call i32 @sqlite3_stricmp(ptr noundef nonnull @.str.767, ptr noundef nonnull %.341) #45
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.u, label %bb.m

bb.m:                                             ; preds = %.thread
  %i.an = tail call i32 @sqlite3_stricmp(ptr noundef nonnull @.str.768, ptr noundef nonnull %.341) #45
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.u, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ap = tail call i32 @sqlite3_stricmp(ptr noundef nonnull @.str.769, ptr noundef nonnull %.341) #45
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.u, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = tail call i32 @sqlite3_stricmp(ptr noundef nonnull @.str.770, ptr noundef nonnull %.341) #45
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.u, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.at = tail call i32 @sqlite3_stricmp(ptr noundef nonnull @.str.771, ptr noundef nonnull %.341) #45
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.av = tail call i32 @sqlite3_stricmp(ptr noundef nonnull @.str.772, ptr noundef nonnull %.341) #45
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ax = tail call i32 @sqlite3_stricmp(ptr noundef nonnull @.str.773, ptr noundef nonnull %.341) #45
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.az = tail call i32 @sqlite3_stricmp(ptr noundef nonnull @.str.774, ptr noundef nonnull %.341) #45
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bb = tail call i32 @sqlite3_stricmp(ptr noundef nonnull @.str.775, ptr noundef nonnull %.341) #45
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %.thread
  %.lcssa = phi ptr [ @integerValue.aMult, %.thread ], [ getelementptr inbounds nuw (i8, ptr @integerValue.aMult, i64 16), %bb.m ], [ getelementptr inbounds nuw (i8, ptr @integerValue.aMult, i64 32), %bb.n ], [ getelementptr inbounds nuw (i8, ptr @integerValue.aMult, i64 48), %bb.o ], [ getelementptr inbounds nuw (i8, ptr @integerValue.aMult, i64 64), %bb.p ], [ getelementptr inbounds nuw (i8, ptr @integerValue.aMult, i64 80), %bb.q ], [ getelementptr inbounds nuw (i8, ptr @integerValue.aMult, i64 96), %bb.r ], [ getelementptr inbounds nuw (i8, ptr @integerValue.aMult, i64 112), %bb.s ], [ getelementptr inbounds nuw (i8, ptr @integerValue.aMult, i64 128), %bb.t ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !420
  %i.bf = zext i32 %i.be to i64                   ; 2 uses
  %i.bg = udiv i64 9223372036854775807, %i.bf
  %i.bh = icmp ult i64 %i.bg, %.2
  br i1 %i.bh, label %.loopexit54, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bi = mul i64 %.2, %i.bf
  br label %.loopexit

.loopexit:                                        ; preds = %bb.t, %bb.v
  %.3 = phi i64 [ %i.bi, %bb.v ], [ %.2, %bb.t ]  ; 3 uses
  %i.bj = icmp slt i64 %.3, 0
  %or.cond = select i1 %i.b, i1 %i.bj, i1 false
  br i1 %or.cond, label %.loopexit54, label %bb.w

bb.w:                                             ; preds = %.loopexit
  %i.bk = sub nsw i64 0, %.3
  %i.bl = select i1 %i.b, i64 %i.bk, i64 %.3
  br label %bb.x

.loopexit54:                                      ; preds = %bb.k, %hexDigitValue.exit.thread, %.loopexit, %bb.u
  %i.bm = select i1 %i.b, i64 -9223372036854775808, i64 9223372036854775807
  br label %bb.x

bb.x:                                             ; preds = %.loopexit54, %bb.w
  %.042 = phi i64 [ %i.bl, %bb.w ], [ %i.bm, %.loopexit54 ]
  ret i64 %.042
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #22

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #23

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #24

declare i32 @sqlite3_initialize() local_unnamed_addr #5

declare i32 @sqlite3_enable_load_extension(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @sqlite3_load_extension(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal noundef i32 @vfstraceOut(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !351  ; 3 uses
  %i.c = load ptr, ptr @cli_output_capture, align 8, !tbaa !335 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @stdout, align 8, !tbaa !122
  %i.e = icmp eq ptr %i.b, %i.d
  %i.f = load ptr, ptr @stderr, align 8
  %i.g = icmp eq ptr %i.b, %i.f
  %or.cond.i = select i1 %i.e, i1 true, i1 %i.g
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @sqlite3_str_appendall(ptr noundef nonnull %i.c, ptr noundef %0) #45
  br label %cli_puts.exit

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.h = tail call i32 @fputs(ptr noundef %0, ptr noundef %i.b) ; 0 uses
  br label %cli_puts.exit

cli_puts.exit:                                    ; preds = %bb.c, %bb.d
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !351
  %i.j = tail call i32 @fflush(ptr noundef %i.i)  ; 0 uses
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal fastcc void @open_db(ptr noundef nonnull %0, i32 noundef range(i32 0, 3) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca [16 x i32], align 16              ; 20 uses
  %i.d = alloca [1000 x i8], align 16             ; 14 uses
  %i.e = alloca i32, align 4                      ; 10 uses
  %i.f = alloca i32, align 4                      ; 9 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !389    ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4720 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !343
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !346  ; 11 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.n = load i8, ptr %i.m, align 8, !tbaa !347   ; 2 uses
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.p = icmp eq ptr %i.l, null
  br i1 %i.p, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load i8, ptr %i.l, align 1, !tbaa !52
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = icmp samesign ugt i32 %1, 1
end_hunk_0
begin_hunk_1_@do_meta_command:bb.a
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !346 ; 3 uses
  %i.kt = load ptr, ptr %i.kq, align 8, !tbaa !391
  %i.ku = icmp ne ptr %i.kt, null                 ; 2 uses
  br i1 %i.ku, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %.thread2823
  %i.kv = load ptr, ptr %i.ke, align 8, !tbaa !343
  %.not2424.1 = icmp eq ptr %i.kv, %i.kq
  br i1 %.not2424.1, label %bb.ci, label %.thread2823.1

bb.ci:                                            ; preds = %bb.ch, %.thread2823
  %i.kw = icmp eq ptr %i.ks, null
  br i1 %i.kw, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.kx = load i8, ptr %i.ks, align 1, !tbaa !52
  %i.ky = icmp eq i8 %i.kx, 0
  %spec.store.select27.1 = select i1 %i.ky, ptr @.str.887, ptr %i.ks
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %.02189.1 = phi ptr [ %spec.store.select27.1, %bb.cj ], [ @.str.886, %bb.ci ]
  %i.kz = load ptr, ptr %i.ke, align 8, !tbaa !343
  %i.la = icmp eq ptr %i.kz, %i.kq                ; 2 uses
  %brmerge4156 = or i1 %i.la, %i.ku
  br i1 %brmerge4156, label %.thread2823.1.sink.split, label %.thread2823.1

.thread2823.1.sink.split:                         ; preds = %bb.ck
  %.str.888.mux4157 = select i1 %i.la, ptr @.str.888, ptr @.str.889
  %i.lb = load ptr, ptr @stdout, align 8, !tbaa !122
  tail call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.lb, ptr noundef nonnull %.str.888.mux4157, i32 noundef 1, ptr noundef %.02189.1)
  br label %.thread2823.1

.thread2823.1:                                    ; preds = %bb.ck, %.thread2823.1.sink.split, %bb.ch
  %i.lc = getelementptr inbounds nuw i8, ptr %1, i64 4648 ; 3 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %1, i64 4656
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !346 ; 3 uses
  %i.lf = load ptr, ptr %i.lc, align 8, !tbaa !391
  %i.lg = icmp ne ptr %i.lf, null                 ; 2 uses
  br i1 %i.lg, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %.thread2823.1
  %i.lh = load ptr, ptr %i.ke, align 8, !tbaa !343
  %.not2424.2 = icmp eq ptr %i.lh, %i.lc
  br i1 %.not2424.2, label %bb.cm, label %.thread2823.2

bb.cm:                                            ; preds = %bb.cl, %.thread2823.1
  %i.li = icmp eq ptr %i.le, null
  br i1 %i.li, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.lj = load i8, ptr %i.le, align 1, !tbaa !52
  %i.lk = icmp eq i8 %i.lj, 0
  %spec.store.select27.2 = select i1 %i.lk, ptr @.str.887, ptr %i.le
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %.02189.2 = phi ptr [ %spec.store.select27.2, %bb.cn ], [ @.str.886, %bb.cm ]
  %i.ll = load ptr, ptr %i.ke, align 8, !tbaa !343
  %i.lm = icmp eq ptr %i.ll, %i.lc                ; 2 uses
  %brmerge4159 = or i1 %i.lm, %i.lg
  br i1 %brmerge4159, label %.thread2823.2.sink.split, label %.thread2823.2

.thread2823.2.sink.split:                         ; preds = %bb.co
  %.str.888.mux4160 = select i1 %i.lm, ptr @.str.888, ptr @.str.889
  %i.ln = load ptr, ptr @stdout, align 8, !tbaa !122
  tail call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.ln, ptr noundef nonnull %.str.888.mux4160, i32 noundef 2, ptr noundef %.02189.2)
  br label %.thread2823.2

.thread2823.2:                                    ; preds = %bb.co, %.thread2823.2.sink.split, %bb.cl
  %i.lo = getelementptr inbounds nuw i8, ptr %1, i64 4672 ; 3 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %1, i64 4680
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !346 ; 3 uses
  %i.lr = load ptr, ptr %i.lo, align 8, !tbaa !391
  %i.ls = icmp ne ptr %i.lr, null                 ; 2 uses
  br i1 %i.ls, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %.thread2823.2
  %i.lt = load ptr, ptr %i.ke, align 8, !tbaa !343
  %.not2424.3 = icmp eq ptr %i.lt, %i.lo
  br i1 %.not2424.3, label %bb.cq, label %.thread2823.3

bb.cq:                                            ; preds = %bb.cp, %.thread2823.2
  %i.lu = icmp eq ptr %i.lq, null
  br i1 %i.lu, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.lv = load i8, ptr %i.lq, align 1, !tbaa !52
  %i.lw = icmp eq i8 %i.lv, 0
  %spec.store.select27.3 = select i1 %i.lw, ptr @.str.887, ptr %i.lq
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %.02189.3 = phi ptr [ %spec.store.select27.3, %bb.cr ], [ @.str.886, %bb.cq ]
  %i.lx = load ptr, ptr %i.ke, align 8, !tbaa !343
  %i.ly = icmp eq ptr %i.lx, %i.lo                ; 2 uses
  %brmerge4162 = or i1 %i.ly, %i.ls
  br i1 %brmerge4162, label %.thread2823.3.sink.split, label %.thread2823.3

.thread2823.3.sink.split:                         ; preds = %bb.cs
  %.str.888.mux4163 = select i1 %i.ly, ptr @.str.888, ptr @.str.889
  %i.lz = load ptr, ptr @stdout, align 8, !tbaa !122
  tail call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.lz, ptr noundef nonnull %.str.888.mux4163, i32 noundef 3, ptr noundef %.02189.3)
  br label %.thread2823.3

.thread2823.3:                                    ; preds = %bb.cs, %.thread2823.3.sink.split, %bb.cp
  %i.ma = getelementptr inbounds nuw i8, ptr %1, i64 4696 ; 3 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %1, i64 4704
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !346 ; 3 uses
  %i.md = load ptr, ptr %i.ma, align 8, !tbaa !391
  %i.me = icmp eq ptr %i.md, null                 ; 2 uses
  br i1 %i.me, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %.thread2823.3
  %i.mf = load ptr, ptr %i.ke, align 8, !tbaa !343
  %.not2424.4 = icmp eq ptr %i.mf, %i.ma
  br i1 %.not2424.4, label %bb.cu, label %cli_puts.exit

bb.cu:                                            ; preds = %bb.ct, %.thread2823.3
  %i.mg = icmp eq ptr %i.mc, null
  br i1 %i.mg, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.mh = load i8, ptr %i.mc, align 1, !tbaa !52
  %i.mi = icmp eq i8 %i.mh, 0
  %spec.store.select27.4 = select i1 %i.mi, ptr @.str.887, ptr %i.mc
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %.02189.4 = phi ptr [ %spec.store.select27.4, %bb.cv ], [ @.str.886, %bb.cu ] ; 2 uses
  %i.mj = load ptr, ptr %i.ke, align 8, !tbaa !343
  %i.mk = icmp eq ptr %i.mj, %i.ma
  br i1 %i.mk, label %bb.cz, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  br i1 %i.me, label %cli_puts.exit, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.ml = load ptr, ptr @stdout, align 8, !tbaa !122
  tail call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.ml, ptr noundef nonnull @.str.889, i32 noundef 4, ptr noundef %.02189.4)
  br label %cli_puts.exit

bb.cz:                                            ; preds = %bb.cw
  %i.mm = load ptr, ptr @stdout, align 8, !tbaa !122
  tail call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.mm, ptr noundef nonnull @.str.888, i32 noundef 4, ptr noundef %.02189.4)
  br label %cli_puts.exit

bb.da:                                            ; preds = %bb.cc
  %i.mn = load ptr, ptr %i.bp, align 8, !tbaa !132
  %i.mo = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !88 ; 2 uses
  %i.mq = load i8, ptr %i.mp, align 1, !tbaa !52  ; 3 uses
  %i.mr = zext i8 %i.mq to i64
  %i.ms = getelementptr inbounds nuw [2 x i8], ptr %i.mn, i64 %i.mr
  %i.mt = load i16, ptr %i.ms, align 2, !tbaa !98
  %i.mu = and i16 %i.mt, 2048
  %.not2421 = icmp eq i16 %i.mu, 0
  br i1 %.not2421, label %bb.dm, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mp, i64 1
  %i.mw = load i8, ptr %i.mv, align 1, !tbaa !52
  %i.mx = icmp eq i8 %i.mw, 0
  br i1 %i.mx, label %bb.dc, label %bb.dm

bb.dc:                                            ; preds = %bb.db
  %i.my = sext i8 %i.mq to i64
  %i.mz = getelementptr inbounds nuw i8, ptr %1, i64 4720 ; 2 uses
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !343 ; 2 uses
  %i.nb = getelementptr i8, ptr %1, i64 3448
  %i.nc = getelementptr [24 x i8], ptr %i.nb, i64 %i.my ; 4 uses
  %i.nd = icmp ne ptr %i.na, %i.nc
  %i.ne = add i8 %i.mq, -48
  %i.nf = icmp ult i8 %i.ne, 5
  %or.cond31 = and i1 %i.nf, %i.nd
  br i1 %or.cond31, label %bb.dd, label %cli_puts.exit

bb.dd:                                            ; preds = %bb.dc
  %i.ng = load ptr, ptr %1, align 8, !tbaa !389
  store ptr %i.ng, ptr %i.na, align 8, !tbaa !391
  store ptr %i.nc, ptr %i.mz, align 8, !tbaa !343
  %i.nh = load ptr, ptr %i.nc, align 8, !tbaa !391 ; 2 uses
  store ptr %i.nh, ptr %1, align 8, !tbaa !389
  store ptr %i.nh, ptr @globalDb, align 8, !tbaa !218
  store ptr null, ptr %i.nc, align 8, !tbaa !391
  br label %cli_puts.exit

bb.de:                                            ; preds = %bb.cc
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !88 ; 2 uses
  %i.nk = icmp eq ptr %i.nj, null
  %spec.store.select.i2544 = select i1 %i.nk, ptr @.str.48, ptr %i.nj
  %i.nl = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %spec.store.select.i2544, ptr noundef nonnull dereferenceable(6) @.str.515) #46
  %i.nm = icmp eq i32 %i.nl, 0
  br i1 %i.nm, label %bb.df, label %bb.dm

bb.df:                                            ; preds = %bb.de
  %i.nn = load ptr, ptr %i.bp, align 8, !tbaa !132
  %i.no = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !88 ; 2 uses
  %i.nq = load i8, ptr %i.np, align 1, !tbaa !52  ; 3 uses
  %i.nr = zext i8 %i.nq to i64
  %i.ns = getelementptr inbounds nuw [2 x i8], ptr %i.nn, i64 %i.nr
  %i.nt = load i16, ptr %i.ns, align 2, !tbaa !98
  %i.nu = and i16 %i.nt, 2048
  %.not2422 = icmp eq i16 %i.nu, 0
  br i1 %.not2422, label %bb.dm, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.nv = getelementptr inbounds nuw i8, ptr %i.np, i64 1
  %i.nw = load i8, ptr %i.nv, align 1, !tbaa !52
  %i.nx = icmp eq i8 %i.nw, 0
  br i1 %i.nx, label %bb.dh, label %bb.dm

bb.dh:                                            ; preds = %bb.dg
  %i.ny = add i8 %i.nq, -53
  %or.cond33 = icmp ult i8 %i.ny, -5
  br i1 %or.cond33, label %cli_puts.exit, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.nz = getelementptr inbounds nuw i8, ptr %1, i64 4720
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !343
  %i.ob = getelementptr inbounds nuw i8, ptr %1, i64 4600
  %8 = and i8 %i.nq, 7
  %9 = zext nneg i8 %8 to i64
  %i.oc = getelementptr inbounds nuw [24 x i8], ptr %i.ob, i64 %9 ; 3 uses
  %i.od = icmp eq ptr %i.oa, %i.oc
  br i1 %i.od, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.oe = load ptr, ptr @stderr, align 8, !tbaa !122
  tail call fastcc void @cli_puts(ptr noundef nonnull @.str.890, ptr noundef %i.oe)
  br label %cli_puts.exit

bb.dk:                                            ; preds = %bb.di
  %i.of = load ptr, ptr %i.oc, align 8, !tbaa !391 ; 2 uses
  %.not2423 = icmp eq ptr %i.of, null
  br i1 %.not2423, label %cli_puts.exit, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  tail call void @close_db(ptr noundef nonnull %i.of)
  store ptr null, ptr %i.oc, align 8, !tbaa !391
  br label %cli_puts.exit

bb.dm:                                            ; preds = %bb.da, %bb.db, %bb.cc, %bb.dg, %bb.df, %bb.de
  %i.og = load ptr, ptr @stderr, align 8, !tbaa !122
  tail call fastcc void @cli_puts(ptr noundef nonnull @.str.891, ptr noundef %i.og)
  br label %cli_puts.exit

.critedge2444:                                    ; preds = %bb.cb
  %i.oh = icmp eq i32 %.0.i, 4
  br i1 %i.oh, label %bb.dn, label %.critedge2466.thread4039

bb.dn:                                            ; preds = %.critedge2444
  %i.oi = icmp eq ptr %i.iq, null
  %spec.store.select.i2545 = select i1 %i.oi, ptr @.str.48, ptr %i.iq ; 2 uses
  %i.oj = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %spec.store.select.i2545, ptr noundef nonnull dereferenceable(5) @.str.892, i64 noundef 4) #46
  %i.ok = icmp eq i32 %i.oj, 0
  br i1 %i.ok, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.ol = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %spec.store.select.i2545, ptr noundef nonnull dereferenceable(5) @.str.893, i64 noundef 4) #46
  %i.om = icmp eq i32 %i.ol, 0
  br i1 %i.om, label %bb.dp, label %.critedge2466.thread4039

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %i.on = icmp eq i32 %.097.lcssa.i, 2
  %i.oo = getelementptr inbounds nuw i8, ptr %1, i64 4317 ; 2 uses
  %i.op = load i8, ptr %i.oo, align 1, !tbaa !368 ; 2 uses
  br i1 %i.on, label %bb.dq, label %._crit_edge3834

._crit_edge3834:                                  ; preds = %bb.dp
  %i.oq = and i8 %i.op, 2
  %i.or = icmp eq i8 %i.oq, 0
  %i.os = select i1 %i.or, ptr @.str.896, ptr @.str.895
  br label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  %i.ot = and i8 %i.op, -3
  store i8 %i.ot, ptr %i.oo, align 1, !tbaa !368
  br label %bb.dr

bb.dr:                                            ; preds = %._crit_edge3834, %bb.dq
  %.not2420 = phi ptr [ %i.os, %._crit_edge3834 ], [ @.str.896, %bb.dq ]
  %i.ou = load ptr, ptr @stderr, align 8, !tbaa !122
  tail call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.ou, ptr noundef nonnull @.str.894, ptr noundef nonnull %.not2420)
  br label %cli_puts.exit

.critedge2444.thread.thread4093:                  ; preds = %.critedge2439, %bb.bb, %bb.aj
  %.ph4091 = phi i1 [ true, %bb.aj ], [ %i.hx, %bb.bb ], [ true, %.critedge2439 ]
  %.ph4092 = phi i1 [ true, %bb.aj ], [ false, %bb.bb ], [ false, %.critedge2439 ]
  %i.ov = icmp samesign ugt i32 %.0.i, 1
  br label %bb.eb

.critedge2444.thread:                             ; preds = %.critedge2440
  %i.ow = icmp eq i8 %i.et, 100                   ; 2 uses
  %i.ox = icmp samesign ugt i32 %.0.i, 1          ; 4 uses
  %or.cond37 = select i1 %i.ow, i1 %i.ox, i1 false
  br i1 %or.cond37, label %bb.ds, label %bb.eb

bb.ds:                                            ; preds = %.critedge2444.thread
  %i.oy = load ptr, ptr %i.ek, align 8, !tbaa !88 ; 4 uses
  %i.oz = zext nneg i32 %.0.i to i64              ; 3 uses
  %i.pa = icmp eq ptr %i.oy, null
  %spec.store.select.i2547 = select i1 %i.pa, ptr @.str.48, ptr %i.oy
  %i.pb = tail call i32 @strncmp(ptr noundef nonnull %spec.store.select.i2547, ptr noundef nonnull @.str.897, i64 noundef range(i64 -2147483648, 2147483648) %i.oz) #46
  %i.pc = icmp eq i32 %i.pb, 0
  br i1 %i.pc, label %bb.dt, label %.thread2829

bb.dt:                                            ; preds = %bb.ds
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #45
  tail call fastcc void @open_db(ptr noundef %1, i32 noundef 0)
  %i.pd = load ptr, ptr %1, align 8, !tbaa !389
  %i.pe = call i32 @sqlite3_prepare_v2(ptr noundef %i.pd, ptr noundef nonnull @.str.350, i32 noundef -1, ptr noundef nonnull %i.b, ptr noundef null) #45
  %.not2416 = icmp eq i32 %i.pe, 0
  br i1 %.not2416, label %.preheader, label %bb.du

.preheader:                                       ; preds = %bb.dt
  %i.pf = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.pg = call i32 @sqlite3_step(ptr noundef %i.pf) #45
  %i.ph = icmp eq i32 %i.pg, 100
  br i1 %i.ph, label %.lr.ph3595, label %.loopexit.thread

bb.du:                                            ; preds = %bb.dt
  %i.pi = load ptr, ptr %1, align 8, !tbaa !389
  call fastcc void @shellDatabaseError(ptr noundef %i.pi)
  br label %.loopexit.thread

.lr.ph3595:                                       ; preds = %.preheader, %bb.dx
  %.021833594 = phi i32 [ %.12184, %bb.dx ], [ 0, %.preheader ] ; 3 uses
  %.021863593 = phi ptr [ %.12187, %bb.dx ], [ null, %.preheader ] ; 2 uses
  %i.pj = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.pk = call ptr @sqlite3_column_text(ptr noundef %i.pj, i32 noundef 1) #45 ; 2 uses
  %i.pl = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.pm = call ptr @sqlite3_column_text(ptr noundef %i.pl, i32 noundef 2) #45 ; 2 uses
  %i.pn = icmp eq ptr %i.pk, null
  %i.po = icmp eq ptr %i.pm, null
  %or.cond39 = select i1 %i.pn, i1 true, i1 %i.po
  br i1 %or.cond39, label %bb.dx, label %bb.dv, !llvm.loop !946

bb.dv:                                            ; preds = %.lr.ph3595
  %i.pp = add nsw i32 %.021833594, 1              ; 2 uses
  %i.pq = shl nsw i32 %i.pp, 1
  %i.pr = sext i32 %i.pq to i64
  %i.ps = shl nsw i64 %i.pr, 3
  %i.pt = call ptr @sqlite3_realloc64(ptr noundef %.021863593, i64 noundef %i.ps) #45 ; 3 uses
  %i.pu = icmp eq ptr %i.pt, null
  br i1 %i.pu, label %bb.dw, label %shell_check_oom.exit

bb.dw:                                            ; preds = %bb.dv
  call fastcc void @shell_out_of_memory()
  unreachable

shell_check_oom.exit:                             ; preds = %bb.dv
  %i.pv = call noalias ptr @strdup(ptr noundef nonnull %i.pk) #45
  %i.pw = shl nsw i32 %.021833594, 1
  %i.px = sext i32 %i.pw to i64
  %i.py = getelementptr inbounds [8 x i8], ptr %i.pt, i64 %i.px ; 2 uses
  store ptr %i.pv, ptr %i.py, align 8, !tbaa !88
  %i.pz = call noalias ptr @strdup(ptr noundef nonnull %i.pm) #45
  %i.qa = getelementptr i8, ptr %i.py, i64 8
  store ptr %i.pz, ptr %i.qa, align 8, !tbaa !88
  br label %bb.dx

bb.dx:                                            ; preds = %.lr.ph3595, %shell_check_oom.exit
  %.12187 = phi ptr [ %i.pt, %shell_check_oom.exit ], [ %.021863593, %.lr.ph3595 ] ; 4 uses
  %.12184 = phi i32 [ %i.pp, %shell_check_oom.exit ], [ %.021833594, %.lr.ph3595 ] ; 3 uses
  %i.qb = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.qc = call i32 @sqlite3_step(ptr noundef %i.qb) #45
  %i.qd = icmp eq i32 %i.qc, 100
  br i1 %i.qd, label %.lr.ph3595, label %.loopexit

.loopexit.thread:                                 ; preds = %bb.du, %.preheader
  %.31948.ph = phi i32 [ 0, %.preheader ], [ 1, %bb.du ]
  %i.qe = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.qf = call i32 @sqlite3_finalize(ptr noundef %i.qe) #45 ; 0 uses
  br label %._crit_edge3601

.loopexit:                                        ; preds = %bb.dx
  %i.qg = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.qh = call i32 @sqlite3_finalize(ptr noundef %i.qg) #45 ; 0 uses
  %i.qi = icmp sgt i32 %.12184, 0
  br i1 %i.qi, label %.lr.ph3600, label %._crit_edge3601

.lr.ph3600:                                       ; preds = %.loopexit
  %i.qj = getelementptr inbounds nuw i8, ptr %1, i64 80
  %wide.trip.count3813 = zext nneg i32 %.12184 to i64
  br label %bb.dy

bb.dy:                                            ; preds = %.lr.ph3600, %bb.ea
  %indvars.iv3809 = phi i64 [ 0, %.lr.ph3600 ], [ %indvars.iv.next3810, %bb.ea ] ; 2 uses
  %i.qk = load ptr, ptr %1, align 8, !tbaa !389
  %.idx = shl nuw nsw i64 %indvars.iv3809, 4
  %i.ql = getelementptr inbounds nuw i8, ptr %.12187, i64 %.idx ; 5 uses
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !88
  %i.qn = call i32 @sqlite3_txn_state(ptr noundef %i.qk, ptr noundef %i.qm) #45 ; 2 uses
  %i.qo = load ptr, ptr %1, align 8, !tbaa !389
  %i.qp = load ptr, ptr %i.ql, align 8, !tbaa !88
  %i.qq = call i32 @sqlite3_db_readonly(ptr noundef %i.qo, ptr noundef %i.qp) #45
  %i.qr = getelementptr inbounds nuw i8, ptr %i.ql, i64 8 ; 2 uses
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !88 ; 3 uses
  %i.qt = load ptr, ptr %i.qj, align 8, !tbaa !351
  %i.qu = load ptr, ptr %i.ql, align 8, !tbaa !88
  %.not2417 = icmp eq ptr %i.qs, null
  br i1 %.not2417, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.qv = load i8, ptr %i.qs, align 1, !tbaa !52
  %.not2418 = icmp eq i8 %i.qv, 0
  %spec.select = select i1 %.not2418, ptr @.str.766, ptr %i.qs
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dy
  %i.qw = phi ptr [ @.str.766, %bb.dy ], [ %spec.select, %bb.dz ]
  %.not2419 = icmp eq i32 %i.qq, 0
  %i.qx = select i1 %.not2419, ptr @.str.900, ptr @.str.899
  %i.qy = icmp eq i32 %i.qn, 0
  %i.qz = icmp eq i32 %i.qn, 1
  %i.ra = select i1 %i.qz, ptr @.str.901, ptr @.str.902
  %i.rb = select i1 %i.qy, ptr @.str.48, ptr %i.ra
  call void (ptr, ptr, ...) @cli_printf(ptr noundef %i.qt, ptr noundef nonnull @.str.898, ptr noundef %i.qu, ptr noundef %i.qw, ptr noundef nonnull %i.qx, ptr noundef nonnull %i.rb)
  %i.rc = load ptr, ptr %i.ql, align 8, !tbaa !88
  call void @free(ptr noundef %i.rc) #45
  %i.rd = load ptr, ptr %i.qr, align 8, !tbaa !88
  call void @free(ptr noundef %i.rd) #45
  %indvars.iv.next3810 = add nuw nsw i64 %indvars.iv3809, 1 ; 2 uses
end_hunk_1
begin_hunk_2_@zipfileNext:bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre, i64 28
  %i.ae = load i16, ptr %i.ad, align 4, !tbaa !582
  %i.af = zext i16 %i.ae to i64
  %i.ag = add i64 %i.w, %i.z
  %i.ah = add i64 %i.ag, %i.ac
  %i.ai = add i64 %i.ah, %i.af
  store i64 %i.ai, ptr %i.o, align 8, !tbaa !584
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store ptr %.pre, ptr %i.k, align 8, !tbaa !574
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  br label %bb.k

bb.h:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !585
  %.not23 = icmp eq i8 %i.ak, 0
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !574 ; 2 uses
  br i1 %.not23, label %bb.i, label %._crit_edge

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 88
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !565 ; 2 uses
  store ptr %i.ao, ptr %i.al, align 8, !tbaa !574
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.h, %bb.i
  %i.ap = phi ptr [ %i.ao, %bb.i ], [ %i.am, %bb.h ]
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.ar, align 8, !tbaa !572
  br label %bb.k

bb.k:                                             ; preds = %bb.d, %bb.g, %._crit_edge, %bb.j
  %.1 = phi i32 [ 0, %._crit_edge ], [ 0, %bb.j ], [ 0, %bb.d ], [ %i.t, %bb.g ]
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 0, ptr %i.as, align 1, !tbaa !585
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 0, 256) i32 @zipfileEof(ptr nofree noundef readonly captures(none) %0) #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !572
  %i.c = zext i8 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 8) i32 @zipfileColumn(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !574  ; 12 uses
  switch i32 %2, label %bb.w [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.g
    i32 6, label %bb.v
    i32 5, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !586
  tail call void @sqlite3_result_text(ptr noundef %1, ptr noundef %i.d, i32 noundef -1, ptr noundef nonnull inttoptr (i64 -1 to ptr)) #45
  br label %bb.x

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.f = load i32, ptr %i.e, align 4, !tbaa !587
  %i.g = lshr i32 %i.f, 16
  tail call void @sqlite3_result_int(ptr noundef %1, i32 noundef %i.g) #45
  br label %bb.x

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.i = load i32, ptr %i.h, align 8, !tbaa !588
  %i.j = zext i32 %i.i to i64
  tail call void @sqlite3_result_int64(ptr noundef %1, i64 noundef %i.j) #45
  br label %bb.x

bb.e:                                             ; preds = %bb.a
  %i.k = tail call i32 @sqlite3_vtab_nochange(ptr noundef %1) #45
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.f, label %bb.x

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.n = load i32, ptr %i.m, align 4, !tbaa !589
  %i.o = zext i32 %i.n to i64
  tail call void @sqlite3_result_int64(ptr noundef %1, i64 noundef %i.o) #45
  br label %bb.x

bb.g:                                             ; preds = %bb.a
  %i.p = tail call i32 @sqlite3_vtab_nochange(ptr noundef %1) #45
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.i, label %bb.x

bb.h:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %i.r = load i16, ptr %i.q, align 2, !tbaa !590
  switch i16 %i.r, label %bb.x [
    i16 0, label %bb.i
    i16 8, label %bb.i
  ]

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.t = load i32, ptr %i.s, align 8, !tbaa !591  ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.v = load i32, ptr %i.u, align 4, !tbaa !589  ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %bb.j, label %bb.r

bb.j:                                             ; preds = %bb.i
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !574
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !592  ; 2 uses
  %.not65 = icmp eq ptr %i.z, null
  br i1 %.not65, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.aa = sext i32 %i.t to i64                    ; 2 uses
  %i.ab = tail call ptr @sqlite3_malloc64(i64 noundef %i.aa) #45 ; 5 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %.thread75, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !573 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  %.pre = load ptr, ptr %0, align 8, !tbaa !571   ; 2 uses
  br i1 %i.af, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %.pre, i64 80
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !561
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.0 = phi ptr [ %i.ah, %bb.m ], [ %i.ae, %bb.l ]
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !574
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !593
  %i.al = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.am = tail call fastcc i32 @zipfileReadData(ptr noundef %.0, ptr noundef nonnull %i.ab, i64 noundef %i.aa, i64 noundef %i.ak, ptr noundef nonnull %i.al)
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %.thread, label %.thread75

.thread:                                          ; preds = %bb.j, %bb.n
  %.05274 = phi ptr [ %i.ab, %bb.n ], [ null, %bb.j ] ; 2 uses
  %.05372 = phi ptr [ %i.ab, %bb.n ], [ %i.z, %bb.j ] ; 2 uses
  %i.ao = icmp eq i32 %2, 5
  br i1 %i.ao, label %bb.o, label %bb.q

bb.o:                                             ; preds = %.thread
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !590
  %.not66 = icmp eq i16 %i.aq, 0
  br i1 %.not66, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call fastcc void @zipfileInflate(ptr noundef %1, ptr noundef nonnull %.05372, i32 noundef %i.t, i32 noundef %i.v)
  br label %.thread75

bb.q:                                             ; preds = %bb.o, %.thread
  tail call void @sqlite3_result_blob(ptr noundef %1, ptr noundef nonnull %.05372, i32 noundef %i.t, ptr noundef nonnull inttoptr (i64 -1 to ptr)) #45
  br label %.thread75

.thread75:                                        ; preds = %bb.k, %bb.p, %bb.q, %bb.n
  %.05273 = phi ptr [ %.05274, %bb.p ], [ %.05274, %bb.q ], [ %i.ab, %bb.n ], [ null, %bb.k ]
  %.05470 = phi i32 [ 0, %bb.p ], [ 0, %bb.q ], [ 1, %bb.n ], [ 7, %bb.k ]
  tail call void @sqlite3_free(ptr noundef %.05273) #45
  br label %bb.x

bb.r:                                             ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !587
  %i.at = and i32 %i.as, 1073741824
  %.not62 = icmp eq i32 %i.at, 0
  br i1 %.not62, label %bb.s, label %bb.x

bb.s:                                             ; preds = %bb.r
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.av = load i16, ptr %i.au, align 8, !tbaa !594 ; 2 uses
  %.not63 = icmp eq i16 %i.av, 0
  br i1 %.not63, label %bb.x, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aw = zext i16 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !586
  %3 = add nuw nsw i64 %i.aw, 4294967295
  %4 = and i64 %3, 4294967295
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %4
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !52
  %.not64 = icmp eq i8 %i.ba, 47
  br i1 %.not64, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @sqlite3_result_blob(ptr noundef %1, ptr noundef nonnull @.str.48, i32 noundef 0, ptr noundef null) #45
  br label %bb.x

bb.v:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !590
  %i.bd = zext i16 %i.bc to i32
  tail call void @sqlite3_result_int(ptr noundef %1, i32 noundef %i.bd) #45
  br label %bb.x

bb.w:                                             ; preds = %bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !569
  tail call void @sqlite3_result_int64(ptr noundef %1, i64 noundef %i.bf) #45
  br label %bb.x

bb.x:                                             ; preds = %.thread75, %bb.u, %bb.t, %bb.s, %bb.r, %bb.h, %bb.g, %bb.e, %bb.f, %bb.w, %bb.v, %bb.d, %bb.c, %bb.b
  %.2 = phi i32 [ 0, %bb.w ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %bb.v ], [ 0, %bb.h ], [ %.05470, %.thread75 ], [ 0, %bb.u ], [ 0, %bb.t ], [ 0, %bb.s ], [ 0, %bb.r ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 20) i32 @zipfileUpdate(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree readnone captures(none) %3) #4 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #45
  store i32 0, ptr %i.c, align 4, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #45
  store ptr null, ptr %i.d, align 8, !tbaa !88
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !561
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i32 @zipfileBegin(ptr noundef nonnull %0) ; 2 uses
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.bv

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = load ptr, ptr %2, align 8, !tbaa !126
  %i.k = tail call i32 @sqlite3_value_type(ptr noundef %i.j) #45
  %.not190 = icmp eq i32 %i.k, 5
  br i1 %.not190, label %zipfileComparePath.exit207.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %2, align 8, !tbaa !126
  %i.m = tail call ptr @sqlite3_value_text(ptr noundef %i.l) #45 ; 5 uses
  %i.n = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.m) #46 ; 3 uses
  %i.o = trunc i64 %i.n to i32                    ; 6 uses
  %i.p = icmp sgt i32 %1, 1
  br i1 %i.p, label %bb.e, label %zipfileComparePath.exit

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !126
  %i.s = tail call ptr @sqlite3_value_text(ptr noundef %i.r) #45 ; 4 uses
  %.not191 = icmp eq ptr %i.s, null
  br i1 %.not191, label %zipfileComparePath.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.s) #46 ; 2 uses
  %i.u = trunc i64 %i.t to i32                    ; 3 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = add i64 %i.t, 4294967295
  %i.x = and i64 %i.w, 4294967295
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !52
  %i.aa = icmp eq i8 %i.z, 47
  %i.ab = sext i1 %i.aa to i32
  %spec.select.i = add nsw i32 %i.ab, %i.u
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0.i = phi i32 [ %i.u, %bb.f ], [ %spec.select.i, %bb.g ] ; 2 uses
  %i.ac = icmp sgt i32 %i.o, 0
  br i1 %i.ac, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ad = and i64 %i.n, 2147483647
  %i.ae = getelementptr i8, ptr %i.m, i64 %i.ad
  %i.af = getelementptr i8, ptr %i.ae, i64 -1
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !52
  %i.ah = icmp eq i8 %i.ag, 47
  %i.ai = sext i1 %i.ah to i32
  %spec.select19.i = add nsw i32 %i.ai, %i.o
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.014.i = phi i32 [ %i.o, %bb.h ], [ %spec.select19.i, %bb.i ]
  %i.aj = icmp eq i32 %.0.i, %.014.i
  br i1 %i.aj, label %bb.k, label %zipfileComparePath.exit

bb.k:                                             ; preds = %bb.j
  %i.ak = sext i32 %.0.i to i64
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %i.s, ptr nonnull readonly %i.m, i64 %i.ak)
  %i.al = icmp ne i32 %bcmp.i, 0
  br label %zipfileComparePath.exit

zipfileComparePath.exit:                          ; preds = %bb.k, %bb.j, %bb.e, %bb.d
  %.1147 = phi i1 [ false, %bb.d ], [ false, %bb.e ], [ %i.al, %bb.k ], [ true, %bb.j ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.an = icmp sgt i32 %i.o, 0
  %i.ao = and i64 %i.n, 2147483647
  %i.ap = getelementptr i8, ptr %i.m, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.ap, i64 -1
  br label %bb.l

bb.l:                                             ; preds = %zipfileComparePath.exit207, %zipfileComparePath.exit
  %.0151.in = phi ptr [ %i.am, %zipfileComparePath.exit ], [ %i.bi, %zipfileComparePath.exit207 ]
  %.0151 = load ptr, ptr %.0151.in, align 8, !tbaa !578 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0151, i64 48
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !566 ; 3 uses
  %i.at = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.as) #46 ; 2 uses
  %i.au = trunc i64 %i.at to i32                  ; 3 uses
  %i.av = icmp sgt i32 %i.au, 0
  br i1 %i.av, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aw = add i64 %i.at, 4294967295
  %i.ax = and i64 %i.aw, 4294967295
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !52
  %i.ba = icmp eq i8 %i.az, 47
  %i.bb = sext i1 %i.ba to i32
  %spec.select.i206 = add nsw i32 %i.bb, %i.au
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0.i201 = phi i32 [ %i.au, %bb.l ], [ %spec.select.i206, %bb.m ] ; 2 uses
  br i1 %i.an, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bc = load i8, ptr %i.aq, align 1, !tbaa !52
  %i.bd = icmp eq i8 %i.bc, 47
  %i.be = sext i1 %i.bd to i32
  %spec.select19.i205 = add nsw i32 %i.be, %i.o
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.014.i202 = phi i32 [ %i.o, %bb.n ], [ %spec.select19.i205, %bb.o ]
  %i.bf = icmp eq i32 %.0.i201, %.014.i202
  br i1 %i.bf, label %bb.q, label %zipfileComparePath.exit207

bb.q:                                             ; preds = %bb.p
  %i.bg = sext i32 %.0.i201 to i64
  %bcmp.i204 = tail call i32 @bcmp(ptr nonnull readonly %i.as, ptr nonnull readonly %i.m, i64 %i.bg)
  %i.bh = icmp eq i32 %bcmp.i204, 0
  br i1 %i.bh, label %zipfileComparePath.exit207.thread, label %zipfileComparePath.exit207

zipfileComparePath.exit207:                       ; preds = %bb.q, %bb.p
  %i.bi = getelementptr inbounds nuw i8, ptr %.0151, i64 88
  br label %bb.l

zipfileComparePath.exit207.thread:                ; preds = %bb.q, %bb.c
  %.1152 = phi ptr [ null, %bb.c ], [ %.0151, %bb.q ] ; 14 uses
  %.2 = phi i1 [ false, %bb.c ], [ %.1147, %bb.q ]
  %i.bj = icmp sgt i32 %1, 1
  br i1 %i.bj, label %bb.r, label %zipfileAddEntry.exit.thread349

bb.r:                                             ; preds = %zipfileComparePath.exit207.thread
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !126
  %i.bm = tail call i32 @sqlite3_value_type(ptr noundef %i.bl) #45
  %.not193 = icmp eq i32 %i.bm, 5
  br i1 %.not193, label %bb.s, label %.thread426

bb.s:                                             ; preds = %bb.r
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !126
  %i.bp = tail call i32 @sqlite3_value_type(ptr noundef %i.bo) #45
  %.not194 = icmp eq i32 %i.bp, 5
  br i1 %.not194, label %bb.t, label %.thread

.thread426:                                       ; preds = %bb.r
  tail call void (ptr, ptr, ...) @zipfileTableErr(ptr noundef %0, ptr noundef nonnull @.str.371)
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !126
  %i.bs = tail call i32 @sqlite3_value_type(ptr noundef %i.br) #45
  %.not194428 = icmp eq i32 %i.bs, 5
  br i1 %.not194428, label %zipfileRemoveEntryFromList.exit227, label %.thread

.thread:                                          ; preds = %.thread426, %bb.s
  tail call void (ptr, ptr, ...) @zipfileTableErr(ptr noundef %0, ptr noundef nonnull @.str.372)
  br label %zipfileRemoveEntryFromList.exit227

bb.t:                                             ; preds = %bb.s
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
end_hunk_2
