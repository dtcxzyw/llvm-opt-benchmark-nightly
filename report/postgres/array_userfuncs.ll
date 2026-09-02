Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/array_userfuncs?download=true
inline.NumInlined: 98
inline.NumDeleted: 31
begin_hunk_0_@array_prepend:bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 7
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = call i64 @array_set_element(i64 noundef %i.z, i32 noundef 1, ptr noundef nonnull %i.a, i64 noundef %.019, i1 noundef zeroext %i.d, i32 noundef -1, i32 noundef %i.ac, i1 noundef zeroext %i.af, i8 noundef signext %i.ah) #8
  %i.aj = load i32, ptr %i.h, align 4
  %i.ak = icmp eq i32 %i.aj, 1
  br i1 %i.ak, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.am = load ptr, ptr %i.al, align 8
  store i32 %.0, ptr %i.am, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i64 %i.ai
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @array_prepend_support(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr                 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp eq i32 %i.d, 487
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %i.g, i64 16
  %.val = load ptr, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.j = load ptr, ptr %i.i, align 8              ; 5 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load i32, ptr %i.j, align 4
  %i.l = icmp eq i32 %i.k, 8
  br i1 %i.l, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.n = load i32, ptr %i.m, align 4
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.q = load i32, ptr %i.p, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.s = load i32, ptr %i.r, align 8
  %i.t = icmp eq i32 %i.q, %i.s
  %i.u = ptrtoint ptr %i.j to i64
  %spec.select = select i1 %i.t, i64 %i.u, i64 0
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b, %bb.c, %bb.d, %bb.a
  %.1 = phi i64 [ 0, %bb.a ], [ 0, %bb.b ], [ %spec.select, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ]
  ret i64 %.1
}

; Function Attrs: nounwind uwtable
define dso_local i64 @array_cat(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i8, ptr %i.b, align 8, !range !4, !noundef !5
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load i8, ptr %i.e, align 8, !range !4, !noundef !5
  %i.g = trunc nuw i8 %i.f to i1                  ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.h, align 4
  br label %bb.au

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load i64, ptr %i.i, align 8
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = tail call ptr @pg_detoast_datum(ptr noundef %i.k) #8
  %i.m = ptrtoint ptr %i.l to i64
  br label %bb.au

bb.e:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = load i64, ptr %i.a, align 8
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = tail call ptr @pg_detoast_datum(ptr noundef %i.o) #8
  %i.q = ptrtoint ptr %i.p to i64
  br label %bb.au

bb.g:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = load i64, ptr %i.a, align 8
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = tail call ptr @pg_detoast_datum(ptr noundef %i.t) #8 ; 7 uses
  %i.v = load i64, ptr %i.r, align 8
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = tail call ptr @pg_detoast_datum(ptr noundef %i.w) #8 ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %i.z = load i32, ptr %i.y, align 4              ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  %i.ab = load i32, ptr %i.aa, align 4            ; 2 uses
  %.not = icmp eq i32 %i.z, %i.ab
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.ad = tail call i32 @errcode(i32 noundef 67141764) #8 ; 0 uses
  %i.ae = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.3) #8 ; 0 uses
  %i.af = tail call ptr @format_type_be(i32 noundef %i.z) #8
  %i.ag = tail call ptr @format_type_be(i32 noundef %i.ab) #8
  %i.ah = tail call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.4, ptr noundef %i.af, ptr noundef %i.ag) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 376, ptr noundef nonnull @__func__.array_cat) #8
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 4 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4            ; 15 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 4 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4            ; 11 uses
  %i.am = icmp eq i32 %i.aj, 0
  %i.an = icmp sgt i32 %i.al, 0
  %or.cond = select i1 %i.am, i1 %i.an, i1 false
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ao = ptrtoint ptr %i.x to i64
  br label %bb.au

bb.k:                                             ; preds = %bb.i
  %i.ap = icmp eq i32 %i.al, 0
  br i1 %i.ap, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aq = ptrtoint ptr %i.u to i64
  br label %bb.au

bb.m:                                             ; preds = %bb.k
  %.not213 = icmp eq i32 %i.aj, %i.al             ; 2 uses
  %i.ar = add i32 %i.al, -1
  %.not214 = icmp eq i32 %i.aj, %i.ar             ; 2 uses
  %i.as = add i32 %i.al, 1
  %.not215 = icmp eq i32 %i.aj, %i.as
  %i.at = or i1 %.not214, %.not215
  %or.cond236 = or i1 %.not213, %i.at
  br i1 %or.cond236, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.av = tail call i32 @errcode(i32 noundef 352845954) #8 ; 0 uses
  %i.aw = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.3) #8 ; 0 uses
  %i.ax = tail call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.5, i32 noundef %i.aj, i32 noundef %i.al) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 414, ptr noundef nonnull @__func__.array_cat) #8
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.ay = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 7 uses
  %i.az = sext i32 %i.aj to i64                   ; 6 uses
  %i.ba = shl nsw i64 %i.az, 2                    ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ba ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 7 uses
  %i.bd = sext i32 %i.al to i64                   ; 4 uses
  %i.be = shl nsw i64 %i.bd, 2                    ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.be ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %i.bh = load i32, ptr %i.bg, align 4            ; 2 uses
  %.not216 = icmp eq i32 %i.bh, 0                 ; 2 uses
  %i.bi = sext i32 %i.bh to i64
  %i.bj = shl nsw i64 %i.az, 3                    ; 2 uses
  %i.bk = add nsw i64 %i.bj, 16
  %i.bl = select i1 %.not216, i64 %i.bk, i64 %i.bi
  %i.bm = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  %i.bo = load i32, ptr %i.bn, align 4            ; 2 uses
  %.not217 = icmp eq i32 %i.bo, 0                 ; 2 uses
  %i.bp = sext i32 %i.bo to i64
  %i.bq = shl nsw i64 %i.bd, 3                    ; 2 uses
  %i.br = add nsw i64 %i.bq, 16
  %i.bs = select i1 %.not217, i64 %i.br, i64 %i.bp
  %i.bt = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bj
  %i.bv = select i1 %.not216, ptr null, ptr %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bq
  %i.bx = select i1 %.not217, ptr null, ptr %i.bw
  %i.by = tail call i32 @ArrayGetNItems(i32 noundef %i.aj, ptr noundef nonnull %i.ay) #8 ; 2 uses
  %i.bz = tail call i32 @ArrayGetNItems(i32 noundef %i.al, ptr noundef nonnull %i.bc) #8
  %.val237 = load i32, ptr %i.u, align 4
  %i.ca = lshr i32 %.val237, 2
  %1 = zext nneg i32 %i.ca to i64
  %i.cb = load i32, ptr %i.bg, align 4            ; 2 uses
  %.not220 = icmp eq i32 %i.cb, 0
  br i1 %.not220, label %bb.p, label %2

2:                                                ; preds = %bb.o
  %3 = zext i32 %i.cb to i64
  br label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cc = load i32, ptr %i.ai, align 4
  %4 = sext i32 %i.cc to i64
  %5 = shl nsw i64 %4, 3
  %6 = add nsw i64 %5, 16
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %2
  %7 = phi i64 [ %3, %2 ], [ %6, %bb.p ]
  %8 = sub nsw i64 %1, %7                         ; 2 uses
  %9 = trunc i64 %8 to i32
  %.val = load i32, ptr %i.x, align 4
  %i.cd = lshr i32 %.val, 2
  %10 = zext nneg i32 %i.cd to i64
  %i.ce = load i32, ptr %i.bn, align 4            ; 2 uses
  %.not221 = icmp eq i32 %i.ce, 0
  br i1 %.not221, label %bb.r, label %11

11:                                               ; preds = %bb.q
  %12 = zext i32 %i.ce to i64
  br label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cf = load i32, ptr %i.ak, align 4
  %13 = sext i32 %i.cf to i64
  %14 = shl nsw i64 %13, 3
  %15 = add nsw i64 %14, 16
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %11
  %16 = phi i64 [ %12, %11 ], [ %15, %bb.r ]
  %17 = sub nsw i64 %10, %16                      ; 2 uses
  %18 = trunc i64 %17 to i32
  br i1 %.not213, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.cg = tail call ptr @palloc_mul(i64 noundef 4, i64 noundef %i.az) #8 ; 4 uses
  %i.ch = tail call ptr @palloc_mul(i64 noundef 4, i64 noundef %i.az) #8 ; 4 uses
  %i.ci = load i32, ptr %i.ay, align 4
  %i.cj = load i32, ptr %i.bc, align 4
  %i.ck = add i32 %i.cj, %i.ci
  store i32 %i.ck, ptr %i.cg, align 4
  %i.cl = load i32, ptr %i.bb, align 4
  store i32 %i.cl, ptr %i.ch, align 4
  %i.cm = icmp sgt i32 %i.aj, 1
  br i1 %i.cm, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.t
  %wide.trip.count253 = zext nneg i32 %i.aj to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.w
  %indvars.iv250 = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next251, %bb.w ] ; 7 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv250
  %i.co = load i32, ptr %i.cn, align 4            ; 2 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv250
  %i.cq = load i32, ptr %i.cp, align 4
  %.not233.a = icmp eq i32 %i.co, %i.cq
  br i1 %.not233.a, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv250 ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv250
  %i.cu = load i32, ptr %i.ct, align 4
  %.not234 = icmp eq i32 %i.cs, %i.cu
  br i1 %.not234, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph
  %i.cv = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.cw = tail call i32 @errcode(i32 noundef 352845954) #8 ; 0 uses
  %i.cx = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.3) #8 ; 0 uses
  %i.cy = tail call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.6) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 450, ptr noundef nonnull @__func__.array_cat) #8
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv250
  store i32 %i.co, ptr %i.cz, align 4
  %i.da = load i32, ptr %i.cr, align 4
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv250
  store i32 %i.da, ptr %i.db, align 4
  %indvars.iv.next251 = add nuw nsw i64 %indvars.iv250, 1 ; 2 uses
  %exitcond254.not = icmp eq i64 %indvars.iv.next251, %wide.trip.count253
  br i1 %exitcond254.not, label %.loopexit, label %.lr.ph, !llvm.loop !7

bb.x:                                             ; preds = %bb.s
  br i1 %.not214, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %bb.x
  %i.dc = tail call ptr @palloc_mul(i64 noundef 4, i64 noundef %i.bd) #8 ; 6 uses
  %i.dd = tail call ptr @palloc_mul(i64 noundef 4, i64 noundef %i.bd) #8 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.dc, ptr nonnull align 4 %i.bc, i64 %i.be, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.dd, ptr nonnull align 4 %i.bf, i64 %i.be, i1 false)
  %i.de = load i32, ptr %i.dc, align 4
  %i.df = add i32 %i.de, 1
  store i32 %i.df, ptr %i.dc, align 4
  %smax247 = tail call i32 @llvm.smax.i32(i32 %i.aj, i32 0)
  %wide.trip.count248 = zext nneg i32 %smax247 to i64
  %exitcond249.not271 = icmp slt i32 %i.aj, 1
  br i1 %exitcond249.not271, label %.loopexit, label %.lr.ph273

bb.z:                                             ; preds = %bb.aa
  %exitcond249.not = icmp eq i64 %indvars.iv.next245, %wide.trip.count248
  br i1 %exitcond249.not, label %.loopexit, label %.lr.ph273, !llvm.loop !8

.lr.ph273:                                        ; preds = %bb.y, %bb.z
  %indvars.iv244272 = phi i64 [ %indvars.iv.next245, %bb.z ], [ 0, %bb.y ] ; 3 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv244272
  %i.dh = load i32, ptr %i.dg, align 4
  %indvars.iv.next245 = add nuw nsw i64 %indvars.iv244272, 1 ; 4 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.next245
  %i.dj = load i32, ptr %i.di, align 4
  %.not224 = icmp eq i32 %i.dh, %i.dj
  br i1 %.not224, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.lr.ph273
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv244272
  %i.dl = load i32, ptr %i.dk, align 4
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.next245
  %i.dn = load i32, ptr %i.dm, align 4
  %.not225 = icmp eq i32 %i.dl, %i.dn
  br i1 %.not225, label %bb.z, label %bb.ab, !llvm.loop !8

bb.ab:                                            ; preds = %bb.aa, %.lr.ph273
  %i.do = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.dp = tail call i32 @errcode(i32 noundef 352845954) #8 ; 0 uses
  %i.dq = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.3) #8 ; 0 uses
  %i.dr = tail call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.7) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 479, ptr noundef nonnull @__func__.array_cat) #8
  unreachable

bb.ac:                                            ; preds = %bb.x
  %i.ds = tail call ptr @palloc_mul(i64 noundef 4, i64 noundef %i.az) #8 ; 6 uses
  %i.dt = tail call ptr @palloc_mul(i64 noundef 4, i64 noundef %i.az) #8 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ds, ptr nonnull align 4 %i.ay, i64 %i.ba, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.dt, ptr nonnull align 4 %i.bb, i64 %i.ba, i1 false)
  %i.du = load i32, ptr %i.ds, align 4
  %i.dv = add i32 %i.du, 1
  store i32 %i.dv, ptr %i.ds, align 4
  %smax = tail call i32 @llvm.smax.i32(i32 %i.al, i32 0) ; 2 uses
  %wide.trip.count = zext nneg i32 %smax to i64
  %exitcond.not268 = icmp eq i32 %smax, 0
  br i1 %exitcond.not268, label %.loopexit, label %.lr.ph270

bb.ad:                                            ; preds = %bb.ae
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph270, !llvm.loop !9

.lr.ph270:                                        ; preds = %bb.ac, %bb.ad
  %indvars.iv269 = phi i64 [ %indvars.iv.next, %bb.ad ], [ 0, %bb.ac ] ; 3 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv269
  %i.dx = load i32, ptr %i.dw, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv269, 1 ; 4 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %indvars.iv.next
  %i.dz = load i32, ptr %i.dy, align 4
  %.not222 = icmp eq i32 %i.dx, %i.dz
  br i1 %.not222, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.lr.ph270
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv269
  %i.eb = load i32, ptr %i.ea, align 4
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %indvars.iv.next
  %i.ed = load i32, ptr %i.ec, align 4
  %.not223 = icmp eq i32 %i.eb, %i.ed
  br i1 %.not223, label %bb.ad, label %bb.af, !llvm.loop !9

bb.af:                                            ; preds = %bb.ae, %.lr.ph270
  %i.ee = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.ef = tail call i32 @errcode(i32 noundef 352845954) #8 ; 0 uses
  %i.eg = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.3) #8 ; 0 uses
  %i.eh = tail call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.7) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 507, ptr noundef nonnull @__func__.array_cat) #8
  unreachable

.loopexit:                                        ; preds = %bb.ad, %bb.z, %bb.w, %bb.ac, %bb.y, %bb.t
  %.0199 = phi ptr [ %i.cg, %bb.t ], [ %i.dc, %bb.y ], [ %i.ds, %bb.ac ], [ %i.dc, %bb.z ], [ %i.cg, %bb.w ], [ %i.ds, %bb.ad ] ; 3 uses
  %.0198 = phi ptr [ %i.ch, %bb.t ], [ %i.dd, %bb.y ], [ %i.dt, %bb.ac ], [ %i.dd, %bb.z ], [ %i.ch, %bb.w ], [ %i.dt, %bb.ad ] ; 2 uses
  %.0197 = phi i32 [ %i.aj, %bb.t ], [ %i.al, %bb.y ], [ %i.aj, %bb.ac ], [ %i.al, %bb.z ], [ %i.aj, %bb.w ], [ %i.aj, %bb.ad ] ; 6 uses
  %i.ei = tail call i32 @ArrayGetNItems(i32 noundef %.0197, ptr noundef nonnull %.0199) #8
  tail call void @ArrayCheckBounds(i32 noundef %.0197, ptr noundef nonnull %.0199, ptr noundef %.0198) #8
  %i.ej = add i32 %18, %9                         ; 2 uses
  %i.ek = load i32, ptr %i.bg, align 4
  %.not226 = icmp eq i32 %i.ek, 0
  br i1 %.not226, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.loopexit
  %i.el = load i32, ptr %i.bn, align 4
  %.not227 = icmp eq i32 %i.el, 0
  br i1 %.not227, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.loopexit
  %i.em = shl i32 %.0197, 3
  %i.en = add i32 %i.ei, 7
  %i.eo = sdiv i32 %i.en, 8
  %i.ep = add i32 %i.em, 23
  %i.eq = add i32 %i.ep, %i.eo
  %i.er = and i32 %i.eq, -8                       ; 2 uses
  %i.es = add i32 %i.er, %i.ej
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.et = shl i32 %.0197, 3
  %i.eu = add i32 %i.ej, 16
  %i.ev = add i32 %i.eu, %i.et
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.0196 = phi i32 [ %i.es, %bb.ah ], [ %i.ev, %bb.ai ] ; 2 uses
  %.0 = phi i32 [ %i.er, %bb.ah ], [ 0, %bb.ai ]
  %i.ew = sext i32 %.0196 to i64
  %i.ex = tail call ptr @palloc0(i64 noundef %i.ew) #8 ; 8 uses
  %i.ey = shl i32 %.0196, 2
  store i32 %i.ey, ptr %i.ex, align 4
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 4 ; 5 uses
  store i32 %.0197, ptr %i.ez, align 4
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 8 ; 5 uses
  store i32 %.0, ptr %i.fa, align 4
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ex, i64 12
  store i32 %i.z, ptr %i.fb, align 4
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ex, i64 16 ; 4 uses
  %i.fd = sext i32 %.0197 to i64
  %i.fe = shl nsw i64 %i.fd, 2                    ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.fc, ptr nonnull align 4 %.0199, i64 %i.fe, i1 false)
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.fe
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ff, ptr align 4 %.0198, i64 %i.fe, i1 false)
  %i.fg = load i32, ptr %i.fa, align 4            ; 2 uses
  %.not228 = icmp eq i32 %i.fg, 0
  br i1 %.not228, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fh = sext i32 %i.fg to i64
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.fi = load i32, ptr %i.ez, align 4
  %i.fj = sext i32 %i.fi to i64
  %i.fk = shl nsw i64 %i.fj, 3
  %i.fl = add nsw i64 %i.fk, 16
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.fm = phi i64 [ %i.fh, %bb.ak ], [ %i.fl, %bb.al ]
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.fm
  %sext = shl i64 %8, 32
  %19 = ashr exact i64 %sext, 32                  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fn, ptr nonnull align 1 %i.bm, i64 %19, i1 false)
  %i.fo = load i32, ptr %i.fa, align 4            ; 2 uses
  %.not229 = icmp eq i32 %i.fo, 0
  br i1 %.not229, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fp = sext i32 %i.fo to i64
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.fq = load i32, ptr %i.ez, align 4
  %i.fr = sext i32 %i.fq to i64
  %i.fs = shl nsw i64 %i.fr, 3
  %i.ft = add nsw i64 %i.fs, 16
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.fu = phi i64 [ %i.fp, %bb.an ], [ %i.ft, %bb.ao ]
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.fu
  %i.fw = getelementptr inbounds i8, ptr %i.fv, i64 %19
  %sext230 = shl i64 %17, 32
  %20 = ashr exact i64 %sext230, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fw, ptr nonnull align 1 %i.bt, i64 %20, i1 false)
  %i.fx = load i32, ptr %i.fa, align 4
  %.not231.a = icmp eq i32 %i.fx, 0
  br i1 %.not231.a, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fy = load i32, ptr %i.ez, align 4
  %i.fz = sext i32 %i.fy to i64
  %i.ga = shl nsw i64 %i.fz, 3
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.ga
  tail call void @array_bitmap_copy(ptr noundef nonnull %i.gb, i32 noundef 0, ptr noundef %i.bv, i32 noundef 0, i32 noundef %i.by) #8
  %i.gc = load i32, ptr %i.fa, align 4
  %.not232 = icmp eq i32 %i.gc, 0
  br i1 %.not232, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gd = load i32, ptr %i.ez, align 4
  %i.ge = sext i32 %i.gd to i64
  %i.gf = shl nsw i64 %i.ge, 3
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.gf
  br label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ar
  %i.gh = phi ptr [ %i.gg, %bb.ar ], [ null, %bb.aq ]
  tail call void @array_bitmap_copy(ptr noundef %i.gh, i32 noundef %i.by, ptr noundef %i.bx, i32 noundef 0, i32 noundef %i.bz) #8
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ap
  %i.gi = ptrtoint ptr %i.ex to i64
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.l, %bb.j, %bb.f, %bb.d, %bb.c
  %.0200 = phi i64 [ 0, %bb.c ], [ %i.m, %bb.d ], [ %i.q, %bb.f ], [ %i.ao, %bb.j ], [ %i.aq, %bb.l ], [ %i.gi, %bb.at ]
  ret i64 %.0200
}

declare ptr @pg_detoast_datum(ptr noundef) local_unnamed_addr #3

declare i32 @errdetail(ptr noundef, ...) local_unnamed_addr #3

declare ptr @format_type_be(i32 noundef) local_unnamed_addr #3

declare i32 @ArrayGetNItems(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @palloc_mul(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @ArrayCheckBounds(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @palloc0(i64 noundef) local_unnamed_addr #3

declare void @array_bitmap_copy(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i64 @array_agg_transfn(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8
  %i.c = tail call i32 @get_fn_expr_argtype(ptr noundef %i.b, i32 noundef 1) #8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.f = tail call i32 @errcode(i32 noundef 50856066) #8 ; 0 uses
  %i.g = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.8) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 566, ptr noundef nonnull @__func__.array_agg_transfn) #8
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = call i32 @AggCheckCallContext(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #8
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.j = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.9) #8 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 577, ptr noundef nonnull @__func__.array_agg_transfn) #8
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load i8, ptr %i.k, align 8, !range !4, !noundef !5
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr %i.a, align 8
  %i.o = call ptr @initArrayResult(i32 noundef %i.c, ptr noundef %i.n, i1 noundef zeroext false) #8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load i64, ptr %i.p, align 8
  %i.r = inttoptr i64 %i.q to ptr
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0 = phi ptr [ %i.o, %bb.f ], [ %i.r, %bb.g ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.t = load i8, ptr %i.s, align 8, !range !4, !noundef !5
  %i.u = trunc nuw i8 %i.t to i1                  ; 2 uses
  br i1 %i.u, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load i64, ptr %i.v, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.x = phi i64 [ %i.w, %bb.i ], [ 0, %bb.h ]
  %i.y = load ptr, ptr %i.a, align 8
  %i.z = call ptr @accumArrayResult(ptr noundef %.0, i64 noundef %i.x, i1 noundef zeroext %i.u, i32 noundef %i.c, ptr noundef %i.y) #8
  %i.aa = ptrtoint ptr %i.z to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i64 %i.aa
}

declare i32 @get_fn_expr_argtype(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @AggCheckCallContext(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @errmsg_internal(ptr noundef, ...) local_unnamed_addr #3

declare ptr @initArrayResult(i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

declare ptr @accumArrayResult(ptr noundef, i64 noundef, i1 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i64 @array_agg_combine(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = call i32 @AggCheckCallContext(ptr noundef %0, ptr noundef nonnull %i.a) #8
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.d = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.10) #8 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 610, ptr noundef nonnull @__func__.array_agg_combine) #8
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i8, ptr %i.e, align 8, !range !4, !noundef !5
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i64, ptr %i.h, align 8
  %i.j = inttoptr i64 %i.i to ptr
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.k = phi ptr [ %i.j, %bb.d ], [ null, %bb.c ] ; 13 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = load i8, ptr %i.l, align 8, !range !4, !noundef !5
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load i64, ptr %i.o, align 8              ; 2 uses
  %i.q = inttoptr i64 %i.p to ptr                 ; 10 uses
  %i.r = icmp eq i64 %i.p, 0
  br i1 %i.r, label %.thread, label %bb.i

.thread:                                          ; preds = %bb.e, %bb.f
  %i.s = icmp eq ptr %i.k, null
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.thread
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.t, align 4
  br label %bb.u

bb.h:                                             ; preds = %.thread
  %i.u = ptrtoint ptr %i.k to i64
  br label %bb.u

bb.i:                                             ; preds = %bb.f
  %i.v = icmp eq ptr %i.k, null
  br i1 %i.v, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.x = load i32, ptr %i.w, align 8
  %i.y = load ptr, ptr %i.a, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = call ptr @initArrayResultWithSize(i32 noundef %i.x, ptr noundef %i.y, i1 noundef zeroext false, i32 noundef %i.aa) #8 ; 6 uses
  %i.ac = load ptr, ptr %i.a, align 8
  %i.ad = load ptr, ptr @CurrentMemoryContext, align 8
  store ptr %i.ac, ptr @CurrentMemoryContext, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 28 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 4            ; 2 uses
end_hunk_0
