Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/mcv?download=true
inline.NumInlined: 72
inline.NumDeleted: 38
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@SysCacheGetAttr
declare i64 @SysCacheGetAttr(i32 noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @statext_mcv_deserialize(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.as, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %0, align 1                 ; 2 uses
  %i.d = zext i8 %i.c to i32                      ; 2 uses
  %i.e = icmp eq i8 %i.c, 1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %0, i64 1
  %.val.i = load i8, ptr %i.f, align 1            ; 2 uses
  %i.g = add i8 %.val.i, -1
  %or.cond.i.i.i = icmp ult i8 %i.g, 3
  %i.h = icmp eq i8 %.val.i, 18
  %i.i = select i1 %i.h, i64 18, i64 2
  br i1 %or.cond.i.i.i, label %VARSIZE_ANY.exit.thread, label %VARSIZE_ANY.exit

bb.d:                                             ; preds = %bb.b
  %i.j = and i32 %i.d, 1
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = lshr i32 %i.d, 1
  %i.l = zext nneg i32 %i.k to i64
  br label %VARSIZE_ANY.exit

bb.f:                                             ; preds = %bb.d
  %i.m = load i32, ptr %0, align 4
  %i.n = lshr i32 %i.m, 2
  %i.o = zext nneg i32 %i.n to i64
  br label %VARSIZE_ANY.exit

VARSIZE_ANY.exit:                                 ; preds = %bb.c, %bb.e, %bb.f
  %.0.i = phi i64 [ %i.i, %bb.c ], [ %i.l, %bb.e ], [ %i.o, %bb.f ]
  %i.p = icmp samesign ult i64 %.0.i, 18
  br i1 %i.p, label %VARSIZE_ANY.exit.thread, label %VARSIZE_ANY.exit250

VARSIZE_ANY.exit.thread:                          ; preds = %bb.c, %VARSIZE_ANY.exit
  %i.q = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #14 ; 0 uses
  %i.r = tail call fastcc i64 @VARSIZE_ANY(ptr noundef %0)
  %i.s = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.3, i64 noundef %i.r, i64 noundef 18) #13 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1030, ptr noundef nonnull @__func__.statext_mcv_deserialize) #13
  unreachable

VARSIZE_ANY.exit250:                              ; preds = %VARSIZE_ANY.exit
  %i.t = tail call ptr @palloc0(i64 noundef 48) #13 ; 7 uses
  %i.u = load i8, ptr %0, align 1
  %i.v = and i8 %i.u, 1
  %.not.i245 = icmp eq i8 %i.v, 0
  %.v.i = select i1 %.not.i245, i64 4, i64 1
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %.v.i ; 5 uses
  %i.x = load i32, ptr %i.w, align 1              ; 2 uses
  store i32 %i.x, ptr %i.t, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 4 ; 2 uses
  %i.aa = load i32, ptr %i.y, align 1             ; 2 uses
  store i32 %i.aa, ptr %i.z, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.ad = load i32, ptr %i.ab, align 1            ; 5 uses
  store i32 %i.ad, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %i.af = getelementptr inbounds nuw i8, ptr %i.t, i64 12 ; 2 uses
  %i.ag = load i16, ptr %i.ae, align 1            ; 7 uses
  store i16 %i.ag, ptr %i.af, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 14 ; 2 uses
  %.not = icmp eq i32 %i.x, -509193790
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %VARSIZE_ANY.exit250
  %i.ai = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #14 ; 0 uses
  %i.aj = load i32, ptr %i.t, align 8
  %i.ak = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.4, i32 noundef %i.aj, i32 noundef -509193790) #13 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1055, ptr noundef nonnull @__func__.statext_mcv_deserialize) #13
  unreachable

bb.h:                                             ; preds = %VARSIZE_ANY.exit250
  %.not243 = icmp eq i32 %i.aa, 1
  br i1 %.not243, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #14 ; 0 uses
  %i.am = load i32, ptr %i.z, align 4
  %i.an = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.5, i32 noundef %i.am, i32 noundef 1) #13 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1059, ptr noundef nonnull @__func__.statext_mcv_deserialize) #13
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ao = sext i16 %i.ag to i32                   ; 5 uses
  %i.ap = icmp eq i16 %i.ag, 0
  br i1 %i.ap, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aq = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #14 ; 0 uses
  %i.ar = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.6) #13 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1062, ptr noundef nonnull @__func__.statext_mcv_deserialize) #13
  unreachable

bb.l:                                             ; preds = %bb.j
  %or.cond = icmp ugt i16 %i.ag, 8
  br i1 %or.cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.as = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #14 ; 0 uses
  %i.at = load i16, ptr %i.af, align 4
  %i.au = sext i16 %i.at to i32
  %i.av = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.7, i32 noundef %i.au) #13 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1066, ptr noundef nonnull @__func__.statext_mcv_deserialize) #13
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.aw = icmp eq i32 %i.ad, 0
  br i1 %i.aw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ax = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #14 ; 0 uses
  %i.ay = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.8) #13 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1069, ptr noundef nonnull @__func__.statext_mcv_deserialize) #13
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.az = icmp ugt i32 %i.ad, 10000
  br i1 %i.az, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ba = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #14 ; 0 uses
  %i.bb = load i32, ptr %i.ac, align 8
  %i.bc = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.9, i32 noundef %i.bb) #13 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1072, ptr noundef nonnull @__func__.statext_mcv_deserialize) #13
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.bd = zext nneg i32 %i.ao to i64              ; 8 uses
  %i.be = shl nuw nsw i64 %i.bd, 2                ; 3 uses
  %i.bf = add nuw nsw i64 %i.be, 18
  %i.bg = mul nuw nsw i64 %i.bd, 20               ; 4 uses
  %i.bh = add nuw nsw i64 %i.bf, %i.bg
  %i.bi = zext nneg i32 %i.ad to i64              ; 4 uses
  %i.bj = mul nuw nsw i64 %i.bd, 3
  %i.bk = add nuw nsw i64 %i.bj, 16
  %i.bl = mul nuw nsw i64 %i.bk, %i.bi
  %i.bm = add nuw nsw i64 %i.bh, %i.bl            ; 4 uses
  %i.bn = load i8, ptr %0, align 1                ; 2 uses
  %i.bo = zext i8 %i.bn to i32                    ; 2 uses
  %i.bp = icmp eq i8 %i.bn, 1
  br i1 %i.bp, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bq = getelementptr i8, ptr %0, i64 1
  %.val.i253 = load i8, ptr %i.bq, align 1        ; 2 uses
  %i.br = add i8 %.val.i253, -1
  %or.cond.i.i.i254 = icmp ult i8 %i.br, 3
  %i.bs = icmp eq i8 %.val.i253, 18
  %i.bt = select i1 %i.bs, i64 18, i64 2
  %i.bu = select i1 %or.cond.i.i.i254, i64 10, i64 %i.bt
  br label %VARSIZE_ANY.exit255

bb.t:                                             ; preds = %bb.r
  %i.bv = and i32 %i.bo, 1
  %.not.i251 = icmp eq i32 %i.bv, 0
  br i1 %.not.i251, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bw = lshr i32 %i.bo, 1
  %i.bx = zext nneg i32 %i.bw to i64
  br label %VARSIZE_ANY.exit255

bb.v:                                             ; preds = %bb.t
  %i.by = load i32, ptr %0, align 4
  %i.bz = lshr i32 %i.by, 2
  %i.ca = zext nneg i32 %i.bz to i64
  br label %VARSIZE_ANY.exit255

VARSIZE_ANY.exit255:                              ; preds = %bb.s, %bb.u, %bb.v
  %.0.i252 = phi i64 [ %i.bu, %bb.s ], [ %i.bx, %bb.u ], [ %i.ca, %bb.v ]
  %i.cb = icmp samesign ult i64 %.0.i252, %i.bm
  br i1 %i.cb, label %bb.w, label %.lr.ph.preheader

bb.w:                                             ; preds = %VARSIZE_ANY.exit255
  %i.cc = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #14 ; 0 uses
  %i.cd = tail call fastcc i64 @VARSIZE_ANY(ptr noundef %0)
  %i.ce = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.10, i64 noundef %i.cd, i64 noundef %i.bm) #13 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1091, ptr noundef nonnull @__func__.statext_mcv_deserialize) #13
  unreachable

.lr.ph.preheader:                                 ; preds = %VARSIZE_ANY.exit255
  %i.cf = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cf, ptr nonnull align 1 %i.ah, i64 %i.be, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.be ; 2 uses
  %i.ch = tail call ptr @palloc(i64 noundef %i.bg) #13 ; 8 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ch, ptr nonnull align 1 %i.cg, i64 %i.bg, i1 false)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.bg
  %wide.trip.count = zext nneg i32 %i.ao to i64   ; 4 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.cj = icmp ult i16 %i.ag, 4
  br i1 %i.cj, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 12
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %.0231276 = phi i64 [ %i.bm, %.lr.ph.preheader.new ], [ %i.dd, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.ck = getelementptr inbounds nuw [20 x i8], ptr %i.ch, i64 %indvars.iv
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  %i.cm = load i32, ptr %i.cl, align 4
  %i.cn = sext i32 %i.cm to i64
  %i.co = add i64 %.0231276, %i.cn
  %i.cp = getelementptr inbounds nuw [20 x i8], ptr %i.ch, i64 %indvars.iv
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load i32, ptr %i.cq, align 4
  %i.cs = sext i32 %i.cr to i64
  %i.ct = add i64 %i.co, %i.cs
  %i.cu = getelementptr inbounds nuw [20 x i8], ptr %i.ch, i64 %indvars.iv
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 44
  %i.cw = load i32, ptr %i.cv, align 4
  %i.cx = sext i32 %i.cw to i64
  %i.cy = add i64 %i.ct, %i.cx
  %i.cz = getelementptr inbounds nuw [20 x i8], ptr %i.ch, i64 %indvars.iv
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 64
  %i.db = load i32, ptr %i.da, align 4
  %i.dc = sext i32 %i.db to i64
  %i.dd = add i64 %i.cy, %i.dc                    ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !20

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  %.0231276.epil.init = phi i64 [ %i.bm, %.lr.ph.preheader ], [ %i.dd, %._crit_edge.unr-lcssa ]
  %lcmp.mod437 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod437)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %.0231276.epil = phi i64 [ %.0231276.epil.init, %.lr.ph.epil.preheader ], [ %i.di, %.lr.ph.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.de = getelementptr inbounds nuw [20 x i8], ptr %i.ch, i64 %indvars.iv.epil
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  %i.dg = load i32, ptr %i.df, align 4
  %i.dh = sext i32 %i.dg to i64
  %i.di = add i64 %.0231276.epil, %i.dh           ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !21

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  %.lcssa435 = phi i64 [ %i.dd, %._crit_edge.unr-lcssa ], [ %i.di, %.lr.ph.epil ] ; 2 uses
  %i.dj = load i8, ptr %0, align 1                ; 2 uses
  %i.dk = zext i8 %i.dj to i32                    ; 2 uses
  %i.dl = icmp eq i8 %i.dj, 1
  br i1 %i.dl, label %bb.x, label %bb.y

bb.x:                                             ; preds = %._crit_edge
  %i.dm = getelementptr i8, ptr %0, i64 1
  %.val.i258 = load i8, ptr %i.dm, align 1        ; 2 uses
  %i.dn = add i8 %.val.i258, -1
  %or.cond.i.i.i259 = icmp ult i8 %i.dn, 3
  %i.do = icmp eq i8 %.val.i258, 18
  %i.dp = select i1 %i.do, i64 18, i64 2
  %i.dq = select i1 %or.cond.i.i.i259, i64 10, i64 %i.dp
  br label %VARSIZE_ANY.exit260

bb.y:                                             ; preds = %._crit_edge
  %i.dr = and i32 %i.dk, 1
  %.not.i256 = icmp eq i32 %i.dr, 0
  br i1 %.not.i256, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ds = lshr i32 %i.dk, 1
  %i.dt = zext nneg i32 %i.ds to i64
  br label %VARSIZE_ANY.exit260

bb.aa:                                            ; preds = %bb.y
  %i.du = load i32, ptr %0, align 4
  %i.dv = lshr i32 %i.du, 2
  %i.dw = zext nneg i32 %i.dv to i64
  br label %VARSIZE_ANY.exit260

VARSIZE_ANY.exit260:                              ; preds = %bb.x, %bb.z, %bb.aa
  %.0.i257 = phi i64 [ %i.dq, %bb.x ], [ %i.dt, %bb.z ], [ %i.dw, %bb.aa ]
  %.not244 = icmp eq i64 %.0.i257, %.lcssa435
  br i1 %.not244, label %.lr.ph281.preheader, label %bb.ab

bb.ab:                                            ; preds = %VARSIZE_ANY.exit260
  %i.dx = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #14 ; 0 uses
  %i.dy = tail call fastcc i64 @VARSIZE_ANY(ptr noundef %0)
  %i.dz = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.10, i64 noundef %i.dy, i64 noundef %.lcssa435) #13 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1123, ptr noundef nonnull @__func__.statext_mcv_deserialize) #13
  unreachable

.lr.ph281.preheader:                              ; preds = %VARSIZE_ANY.exit260
  %i.ea = tail call ptr @palloc_mul(i64 noundef 8, i64 noundef %i.bd) #13 ; 10 uses
  %wide.trip.count347 = zext nneg i32 %i.ao to i64
  br label %.lr.ph281

.lr.ph281:                                        ; preds = %.lr.ph281.preheader, %.lr.ph281
  %indvars.iv343 = phi i64 [ 0, %.lr.ph281.preheader ], [ %indvars.iv.next344, %.lr.ph281 ] ; 3 uses
  %.0225278 = phi i64 [ 0, %.lr.ph281.preheader ], [ %i.ej, %.lr.ph281 ]
  %i.eb = getelementptr inbounds nuw [20 x i8], ptr %i.ch, i64 %indvars.iv343 ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4
  %i.ed = sext i32 %i.ec to i64
  %i.ee = tail call ptr @palloc_mul(i64 noundef 8, i64 noundef %i.ed) #13
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %indvars.iv343
  store ptr %i.ee, ptr %i.ef, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.eh = load i32, ptr %i.eg, align 4
  %i.ei = sext i32 %i.eh to i64
  %i.ej = add i64 %.0225278, %i.ei                ; 2 uses
  %indvars.iv.next344 = add nuw nsw i64 %indvars.iv343, 1 ; 2 uses
  %exitcond348.not = icmp eq i64 %indvars.iv.next344, %wide.trip.count347
  br i1 %exitcond348.not, label %.lr.ph310.preheader, label %.lr.ph281, !llvm.loop !22

.lr.ph310.preheader:                              ; preds = %.lr.ph281
  %i.ek = shl nuw nsw i64 %i.bi, 5
  %i.el = add nuw nsw i64 %i.ek, 48               ; 2 uses
  %i.em = shl nuw nsw i64 %i.bd, 3                ; 2 uses
  %i.en = mul nuw nsw i64 %i.em, %i.bi            ; 2 uses
  %i.eo = add nuw nsw i64 %i.en, %i.el
  %i.ep = add nuw nsw i64 %i.bd, 7
  %i.eq = and i64 %i.ep, 24                       ; 2 uses
  %i.er = mul nuw nsw i64 %i.eq, %i.bi            ; 2 uses
  %i.es = add nuw nsw i64 %i.eo, %i.er
  %i.et = add i64 %i.ej, 7
  %i.eu = and i64 %i.et, -8
  %i.ev = add i64 %i.es, %i.eu
  %i.ew = tail call ptr @repalloc(ptr noundef nonnull %i.t, i64 noundef %i.ev) #13 ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.el ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.en ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.er
  %wide.trip.count365 = zext nneg i32 %i.ao to i64
  br label %.lr.ph310

.lr.ph315.us.preheader:                           ; preds = %.loopexit
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ew, i64 48
  %wide.trip.count377 = zext nneg i32 %i.ad to i64
  %xtraiter438 = and i64 %wide.trip.count, 1
  %i.fb = icmp eq i16 %i.ag, 1
  %unroll_iter443 = and i64 %wide.trip.count, 14
  %lcmp.mod440.not = icmp eq i64 %xtraiter438, 0
  %lcmp.mod442 = trunc i16 %i.ag to i1
  br label %.lr.ph315.us

.lr.ph315.us:                                     ; preds = %.lr.ph315.us.preheader, %._crit_edge316.us
  %indvars.iv373 = phi i64 [ 0, %.lr.ph315.us.preheader ], [ %indvars.iv.next374, %._crit_edge316.us ] ; 2 uses
  %.0218321.us = phi ptr [ %i.ey, %.lr.ph315.us.preheader ], [ %i.gw, %._crit_edge316.us ] ; 3 uses
  %.0219320.us = phi ptr [ %i.ex, %.lr.ph315.us.preheader ], [ %i.gv, %._crit_edge316.us ] ; 2 uses
  %.6319.us = phi ptr [ %.5, %.lr.ph315.us.preheader ], [ %.lcssa, %._crit_edge316.us ] ; 2 uses
  %i.fc = getelementptr inbounds nuw [32 x i8], ptr %i.fa, i64 %indvars.iv373 ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 24 ; 4 uses
  store ptr %.0219320.us, ptr %i.fd, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 16 ; 4 uses
  store ptr %.0218321.us, ptr %i.fe, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0218321.us, ptr align 1 %.6319.us, i64 %i.bd, i1 false)
  %i.ff = getelementptr inbounds nuw i8, ptr %.6319.us, i64 %i.bd ; 3 uses
  %i.fg = load i64, ptr %i.ff, align 1
  store i64 %i.fg, ptr %i.fc, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fj = load i64, ptr %i.fh, align 1
  store i64 %i.fj, ptr %i.fi, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ff, i64 16 ; 2 uses
  br i1 %i.fb, label %.epil.preheader, label %.lr.ph315.us.new

.lr.ph315.us.new:                                 ; preds = %.lr.ph315.us, %bb.af
  %indvars.iv367 = phi i64 [ %indvars.iv.next368.1, %bb.af ], [ 0, %.lr.ph315.us ] ; 5 uses
  %.7312.us = phi ptr [ %i.fx, %bb.af ], [ %i.fk, %.lr.ph315.us ] ; 3 uses
  %niter444 = phi i64 [ %niter444.next.1, %bb.af ], [ 0, %.lr.ph315.us ]
  %i.fl = getelementptr inbounds nuw i8, ptr %.7312.us, i64 2
  %i.fm = load ptr, ptr %i.fe, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 %indvars.iv367
  %i.fo = load i8, ptr %i.fn, align 1, !range !10, !noundef !11
  %i.fp = trunc nuw i8 %i.fo to i1
  br i1 %i.fp, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph315.us.new
  %.0.copyload.us = load i16, ptr %.7312.us, align 1
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %indvars.iv367
  %i.fr = load ptr, ptr %i.fq, align 8
  %i.fs = zext i16 %.0.copyload.us to i64
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.fs
  %i.fu = load i64, ptr %i.ft, align 8
  %i.fv = load ptr, ptr %i.fd, align 8
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %indvars.iv367
  store i64 %i.fu, ptr %i.fw, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.lr.ph315.us.new
  %indvars.iv.next368 = or disjoint i64 %indvars.iv367, 1 ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.7312.us, i64 4 ; 3 uses
  %i.fy = load ptr, ptr %i.fe, align 8
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 %indvars.iv.next368
  %i.ga = load i8, ptr %i.fz, align 1, !range !10, !noundef !11
  %i.gb = trunc nuw i8 %i.ga to i1
  br i1 %i.gb, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.0.copyload.us.1 = load i16, ptr %i.fl, align 1
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %indvars.iv.next368
  %i.gd = load ptr, ptr %i.gc, align 8
  %i.ge = zext i16 %.0.copyload.us.1 to i64
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %i.ge
  %i.gg = load i64, ptr %i.gf, align 8
  %i.gh = load ptr, ptr %i.fd, align 8
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %indvars.iv.next368
  store i64 %i.gg, ptr %i.gi, align 8
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %indvars.iv.next368.1 = add nuw nsw i64 %indvars.iv367, 2 ; 2 uses
  %niter444.next.1 = add i64 %niter444, 2         ; 2 uses
  %niter444.ncmp.1 = icmp eq i64 %niter444.next.1, %unroll_iter443
  br i1 %niter444.ncmp.1, label %._crit_edge316.us.unr-lcssa, label %.lr.ph315.us.new, !llvm.loop !23

._crit_edge316.us.unr-lcssa:                      ; preds = %bb.af
  br i1 %lcmp.mod440.not, label %._crit_edge316.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge316.us.unr-lcssa, %.lr.ph315.us
  %indvars.iv367.epil.init = phi i64 [ 0, %.lr.ph315.us ], [ %indvars.iv.next368.1, %._crit_edge316.us.unr-lcssa ] ; 3 uses
  %.7312.us.epil.init = phi ptr [ %i.fk, %.lr.ph315.us ], [ %i.fx, %._crit_edge316.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod442)
  %i.gj = getelementptr inbounds nuw i8, ptr %.7312.us.epil.init, i64 2 ; 2 uses
  %i.gk = load ptr, ptr %i.fe, align 8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 %indvars.iv367.epil.init
  %i.gm = load i8, ptr %i.gl, align 1, !range !10, !noundef !11
  %i.gn = trunc nuw i8 %i.gm to i1
  br i1 %i.gn, label %._crit_edge316.us, label %bb.ag

bb.ag:                                            ; preds = %.epil.preheader
  %.0.copyload.us.epil = load i16, ptr %.7312.us.epil.init, align 1
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %indvars.iv367.epil.init
  %i.gp = load ptr, ptr %i.go, align 8
  %i.gq = zext i16 %.0.copyload.us.epil to i64
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %i.gq
  %i.gs = load i64, ptr %i.gr, align 8
  %i.gt = load ptr, ptr %i.fd, align 8
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %indvars.iv367.epil.init
  store i64 %i.gs, ptr %i.gu, align 8
  br label %._crit_edge316.us

._crit_edge316.us:                                ; preds = %.epil.preheader, %bb.ag, %._crit_edge316.us.unr-lcssa
  %.lcssa = phi ptr [ %i.fx, %._crit_edge316.us.unr-lcssa ], [ %i.gj, %bb.ag ], [ %i.gj, %.epil.preheader ]
  %i.gv = getelementptr inbounds nuw i8, ptr %.0219320.us, i64 %i.em
  %i.gw = getelementptr inbounds nuw i8, ptr %.0218321.us, i64 %i.eq
  %indvars.iv.next374 = add nuw nsw i64 %indvars.iv373, 1 ; 2 uses
  %exitcond378.not = icmp eq i64 %indvars.iv.next374, %wide.trip.count377
  br i1 %exitcond378.not, label %.lr.ph324.preheader, label %.lr.ph315.us, !llvm.loop !24

.lr.ph310:                                        ; preds = %.lr.ph310.preheader, %.loopexit
  %indvars.iv361 = phi i64 [ 0, %.lr.ph310.preheader ], [ %indvars.iv.next362, %.loopexit ] ; 6 uses
  %.0220307 = phi ptr [ %i.ez, %.lr.ph310.preheader ], [ %.4224, %.loopexit ] ; 9 uses
  %.0226306 = phi ptr [ %i.ci, %.lr.ph310.preheader ], [ %.5, %.loopexit ] ; 9 uses
  %i.gx = getelementptr inbounds nuw [20 x i8], ptr %i.ch, i64 %indvars.iv361 ; 11 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  %i.gz = load i8, ptr %i.gy, align 4, !range !10, !noundef !11
  %i.ha = trunc nuw i8 %i.gz to i1
  br i1 %i.ha, label %.preheader267, label %bb.an

.preheader267:                                    ; preds = %.lr.ph310
  %i.hb = load i32, ptr %i.gx, align 4
  %i.hc = icmp sgt i32 %i.hb, 0
  br i1 %i.hc, label %.lr.ph304, label %.loopexit

.lr.ph304:                                        ; preds = %.preheader267
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gx, i64 12
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %indvars.iv361
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph304, %fetch_att.exit
  %indvars.iv358 = phi i64 [ 0, %.lr.ph304 ], [ %indvars.iv.next359, %fetch_att.exit ] ; 2 uses
  %.1227303 = phi ptr [ %.0226306, %.lr.ph304 ], [ %i.hh, %fetch_att.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.hf = load i32, ptr %i.hd, align 4            ; 4 uses
  %i.hg = sext i32 %i.hf to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr align 1 %.1227303, i64 %i.hg, i1 false)
  %i.hh = getelementptr inbounds i8, ptr %.1227303, i64 %i.hg ; 2 uses
  %i.hi = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.hf)
  %i.hj = icmp eq i32 %i.hi, 1
  br i1 %i.hj, label %.split.i, label %bb.am

.split.i:                                         ; preds = %bb.ah
  %i.hk = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.hf, i1 true)
  switch i32 %i.hk, label %bb.am [
    i32 0, label %bb.ai
    i32 1, label %bb.aj
    i32 2, label %bb.ak
    i32 3, label %bb.al
  ]

bb.ai:                                            ; preds = %.split.i
  %.0..0..0.263 = load i8, ptr %i.a, align 8
  %i.hl = sext i8 %.0..0..0.263 to i64
  br label %fetch_att.exit

bb.aj:                                            ; preds = %.split.i
  %.0..0..0.262 = load i16, ptr %i.a, align 8
  %i.hm = sext i16 %.0..0..0.262 to i64
  br label %fetch_att.exit

bb.ak:                                            ; preds = %.split.i
  %.0..0..0. = load i32, ptr %i.a, align 8
  %i.hn = sext i32 %.0..0..0. to i64
  br label %fetch_att.exit

bb.al:                                            ; preds = %.split.i
  %.0..0..0.264 = load i64, ptr %i.a, align 8
  br label %fetch_att.exit

bb.am:                                            ; preds = %.split.i, %bb.ah
  %i.ho = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #14 ; 0 uses
  %i.hp = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.18, i32 noundef %i.hf) #13 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.19, i32 noundef 123, ptr noundef nonnull @__func__.fetch_att) #13
  unreachable

fetch_att.exit:                                   ; preds = %bb.ai, %bb.aj, %bb.ak, %bb.al
  %.0.i261 = phi i64 [ %i.hl, %bb.ai ], [ %i.hm, %bb.aj ], [ %i.hn, %bb.ak ], [ %.0..0..0.264, %bb.al ]
  %i.hq = load ptr, ptr %i.he, align 8
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %indvars.iv358
  store i64 %.0.i261, ptr %i.hr, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %indvars.iv.next359 = add nuw nsw i64 %indvars.iv358, 1 ; 2 uses
  %i.hs = load i32, ptr %i.gx, align 4
  %i.ht = sext i32 %i.hs to i64
  %i.hu = icmp slt i64 %indvars.iv.next359, %i.ht
  br i1 %i.hu, label %bb.ah, label %.loopexit, !llvm.loop !25

bb.an:                                            ; preds = %.lr.ph310
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gx, i64 12 ; 3 uses
  %i.hw = load i32, ptr %i.hv, align 4            ; 3 uses
  %i.hx = icmp sgt i32 %i.hw, 0
  br i1 %i.hx, label %.preheader268, label %bb.ap

.preheader268:                                    ; preds = %bb.an
  %i.hy = load i32, ptr %i.gx, align 4
  %i.hz = icmp sgt i32 %i.hy, 0
  br i1 %i.hz, label %.lr.ph299, label %.loopexit

.lr.ph299:                                        ; preds = %.preheader268
end_hunk_0
