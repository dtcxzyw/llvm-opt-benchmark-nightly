Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/xlogreader?download=true
inline.NumInlined: 27
inline.NumDeleted: 11
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@WALRead:bb.a
  %i.h = load i32, ptr %i.b, align 4              ; 4 uses
  %i.i = add i32 %i.h, -1
  %i.j = trunc i64 %.05172 to i32
  %i.k = and i32 %i.i, %i.j                       ; 3 uses
  %i.l = load i32, ptr %i.c, align 8
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = sext i32 %i.h to i64
  %i.o = udiv i64 %.05172, %i.n
  %i.p = load i64, ptr %i.d, align 8
  %i.q = icmp eq i64 %i.o, %i.p
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = load i32, ptr %i.a, align 4
  %i.s = load i32, ptr %i.e, align 8
  %.not59 = icmp eq i32 %i.r, %i.s
  br i1 %.not59, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.t = load ptr, ptr %i.f, align 8
  call void %i.t(ptr noundef nonnull %0) #14
  %.pre = load i32, ptr %i.b, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e
  %i.u = phi i32 [ %i.h, %bb.b ], [ %.pre, %bb.e ]
  %i.v = sext i32 %i.u to i64
  %i.w = udiv i64 %.05172, %i.v                   ; 2 uses
  %i.x = load ptr, ptr %i.g, align 8
  call void %i.x(ptr noundef nonnull %0, i64 noundef %i.w, ptr noundef nonnull %i.a) #14
  %i.y = load i32, ptr %i.a, align 4
  store i32 %i.y, ptr %i.e, align 8
  store i64 %i.w, ptr %i.d, align 8
  %.pre82 = load i32, ptr %i.b, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.z = phi i32 [ %.pre82, %bb.f ], [ %i.h, %bb.d ]
  %i.aa = sub i32 %i.z, %i.k
  %i.ab = zext i32 %i.aa to i64
  %.04964 = call i64 @llvm.umin.i64(i64 %.05074, i64 %i.ab) ; 2 uses
  %i.ac = tail call ptr @__errno_location() #15   ; 2 uses
  store i32 0, ptr %i.ac, align 4
  %i.ad = load i32, ptr %i.c, align 8
  %sext = shl nuw i64 %.04964, 32
  %i.ae = ashr exact i64 %sext, 32
  %i.af = zext i32 %i.k to i64
  %i.ag = call i64 @pread(i32 noundef %i.ad, ptr noundef %.05371, i64 noundef %i.ae, i64 noundef %i.af) #14 ; 2 uses
  %i.ah = trunc i64 %i.ag to i32                  ; 2 uses
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %bb.h, label %.thread60

.thread60:                                        ; preds = %bb.g
  %.049 = trunc nuw i64 %.04964 to i32
  %i.aj = load i32, ptr %i.ac, align 4
  store i32 %i.aj, ptr %5, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.049, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 %i.ah, ptr %i.al, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %i.k, ptr %i.am, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.ao = and i64 %i.ag, 2147483647               ; 3 uses
  %i.ap = add i64 %i.ao, %.05172
  %i.aq = sub i64 %.05074, %i.ao                  ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.05371, i64 %i.ao
  %.not = icmp eq i64 %i.aq, 0
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !14

.loopexit:                                        ; preds = %bb.h, %bb.a, %.thread60
  %.not66 = phi i1 [ false, %.thread60 ], [ true, %bb.a ], [ true, %bb.h ]
  ret i1 %.not66
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #5

; Function Attrs: nofree
declare noundef i64 @pread(i32 noundef, ptr noundef captures(none), i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @DecodeXLogRecordRequiredSpace(i64 noundef %0) local_unnamed_addr #7 {
bb.a:
  %i.a = add i64 %0, 2445
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @DecodeXLogRecord(ptr nofree noundef captures(none) %0, ptr noundef initializes((16, 32), (40, 66), (68, 88)) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %3, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr null, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  store i16 0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store i32 -1, ptr %i.h, align 4
  %i.i = load i32, ptr %2, align 8
  %i.j = add i32 %i.i, -24                        ; 2 uses
  %.not448 = icmp eq i32 %i.j, 0
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 7 uses
  br i1 %.not448, label %._crit_edge445.thread, label %.lr.ph436.preheader

.lr.ph436.preheader:                              ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %.lr.ph436

.lr.ph436:                                        ; preds = %.lr.ph436.preheader, %bb.as
  %i.m = phi i32 [ %i.fo, %bb.as ], [ -1, %.lr.ph436.preheader ] ; 8 uses
  %.0240434 = phi ptr [ %.3, %bb.as ], [ null, %.lr.ph436.preheader ] ; 5 uses
  %.0243433 = phi i32 [ %.5, %bb.as ], [ 0, %.lr.ph436.preheader ] ; 5 uses
  %.0247432 = phi i32 [ %.7, %bb.as ], [ %i.j, %.lr.ph436.preheader ] ; 13 uses
  %.0259431 = phi ptr [ %.7266, %bb.as ], [ %i.l, %.lr.ph436.preheader ] ; 12 uses
  %.0.copyload78 = load i8, ptr %.0259431, align 1 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0259431, i64 1 ; 5 uses
  %i.o = add i32 %.0247432, -1                    ; 2 uses
  %i.p = zext i8 %.0.copyload78 to i32            ; 9 uses
  switch i8 %.0.copyload78, label %bb.h [
    i8 -1, label %bb.b
    i8 -2, label %bb.c
    i8 -3, label %bb.d
    i8 -4, label %bb.f
  ]

bb.b:                                             ; preds = %.lr.ph436
  %i.q = icmp eq i32 %i.o, 0
  br i1 %i.q, label %.thread315, label %.thread

.thread:                                          ; preds = %bb.b
  %.0.copyload75 = load i8, ptr %i.n, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %.0259431, i64 2
  %i.s = add i32 %.0247432, -2
  %i.t = zext i8 %.0.copyload75 to i32            ; 3 uses
  store i32 %i.t, ptr %i.g, align 8
  %i.u = add i32 %.0243433, %i.t
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph436
  %i.v = icmp ult i32 %.0247432, 5
  br i1 %i.v, label %.thread315, label %.thread308

.thread308:                                       ; preds = %bb.c
  %.0.copyload69 = load i32, ptr %i.n, align 1    ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0259431, i64 5
  %i.x = add i32 %.0247432, -5
  store i32 %.0.copyload69, ptr %i.g, align 8
  %i.y = add i32 %.0.copyload69, %.0243433
  br label %.loopexit

bb.d:                                             ; preds = %.lr.ph436
  %i.z = icmp ult i32 %.0247432, 3
  br i1 %i.z, label %.thread315, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = load i16, ptr %i.n, align 1
  store i16 %i.aa, ptr %i.d, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.0259431, i64 3
  %i.ac = add i32 %.0247432, -3
  br label %bb.as

bb.f:                                             ; preds = %.lr.ph436
  %i.ad = icmp ult i32 %.0247432, 5
  br i1 %i.ad, label %.thread315, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = load i32, ptr %i.n, align 1
  store i32 %i.ae, ptr %i.e, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %.0259431, i64 5
  %i.ag = add i32 %.0247432, -5
  br label %bb.as

bb.h:                                             ; preds = %.lr.ph436
  %i.ah = icmp ult i8 %.0.copyload78, 33
  br i1 %i.ah, label %bb.i, label %bb.ar

bb.i:                                             ; preds = %bb.h
  %.0428 = add nsw i32 %i.m, 1                    ; 2 uses
  %i.ai = icmp slt i32 %.0428, %i.p
  br i1 %i.ai, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.i
  %i.aj = zext nneg i32 %.0428 to i64             ; 2 uses
  %i.ak = xor i32 %i.m, -1
  %i.al = add i32 %i.ak, %i.p
  %i.am = add nsw i32 %i.p, -2
  %i.an = sub i32 %i.am, %i.m
  %xtraiter = and i32 %i.al, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %i.aj, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.ao = getelementptr inbounds nuw [64 x i8], ptr %i.k, i64 %indvars.iv.prol
  store i8 0, ptr %i.ao, align 8
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !15

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.aj, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.ap = icmp ult i32 %i.an, 3
  br i1 %i.ap, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.i
  %.not = icmp slt i32 %i.m, %i.p
  br i1 %.not, label %bb.k, label %bb.j

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.aq = getelementptr inbounds nuw [64 x i8], ptr %i.k, i64 %indvars.iv
  store i8 0, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw [64 x i8], ptr %i.k, i64 %indvars.iv
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 64
  store i8 0, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw [64 x i8], ptr %i.k, i64 %indvars.iv
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 128
  store i8 0, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw [64 x i8], ptr %i.k, i64 %indvars.iv
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 192
  store i8 0, ptr %i.aw, align 8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %lftr.wideiv.3 = trunc i64 %indvars.iv.next.3 to i32
  %exitcond.not.3 = icmp eq i32 %lftr.wideiv.3, %i.p
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !16

bb.j:                                             ; preds = %._crit_edge
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ay = load i64, ptr %i.ax, align 8            ; 2 uses
  %i.az = lshr i64 %i.ay, 32
  %i.ba = trunc nuw i64 %i.az to i32
  %i.bb = trunc i64 %i.ay to i32
  tail call void (ptr, ptr, ...) @report_invalid_record(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %i.p, i32 noundef %i.ba, i32 noundef %i.bb)
  br label %.thread322

bb.k:                                             ; preds = %._crit_edge
  store i32 %i.p, ptr %i.h, align 4
  %i.bc = zext nneg i8 %.0.copyload78 to i64
  %i.bd = getelementptr inbounds nuw [64 x i8], ptr %i.k, i64 %i.bc ; 17 uses
  store i8 1, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 30 ; 2 uses
  store i8 0, ptr %i.be, align 2
  %i.bf = icmp eq i32 %i.o, 0
  br i1 %i.bf, label %.thread315, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.0.copyload = load i8, ptr %i.n, align 1       ; 5 uses
  %i.bg = and i8 %.0.copyload, 15
  %i.bh = zext nneg i8 %i.bg to i32
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store i32 %i.bh, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 28
  store i8 %.0.copyload, ptr %i.bj, align 4
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 29
  %i.bl = lshr i8 %.0.copyload, 4                 ; 2 uses
  %.lobit = and i8 %i.bl, 1
  store i8 %.lobit, ptr %i.bk, align 1
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 47
  %i.bn = lshr i8 %.0.copyload, 5                 ; 2 uses
  %.lobit284 = and i8 %i.bn, 1
  store i8 %.lobit284, ptr %i.bm, align 1
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  store i32 0, ptr %i.bo, align 8
  %i.bp = and i32 %.0247432, -2                   ; 2 uses
  %i.bq = icmp eq i32 %i.bp, 2
  br i1 %i.bq, label %.thread315, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.br = getelementptr inbounds nuw i8, ptr %.0259431, i64 2
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bd, i64 56
  %i.bt = load i16, ptr %i.br, align 1            ; 4 uses
  store i16 %i.bt, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %.0259431, i64 4 ; 2 uses
  %i.bv = add i32 %.0247432, -4                   ; 2 uses
  %i.bw = trunc i8 %i.bn to i1
  %i.bx = icmp eq i16 %i.bt, 0                    ; 2 uses
  br i1 %i.bw, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  br i1 %i.bx, label %bb.o, label %.thread313

bb.o:                                             ; preds = %bb.n
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bz = load i64, ptr %i.by, align 8            ; 2 uses
  %i.ca = lshr i64 %i.bz, 32
  %i.cb = trunc nuw i64 %i.ca to i32
  %i.cc = trunc i64 %i.bz to i32
  tail call void (ptr, ptr, ...) @report_invalid_record(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %i.cb, i32 noundef %i.cc)
  br label %.thread322

bb.p:                                             ; preds = %bb.m
  br i1 %i.bx, label %.thread313, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cd = zext i16 %i.bt to i32
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cf = load i64, ptr %i.ce, align 8            ; 2 uses
  %i.cg = lshr i64 %i.cf, 32
  %i.ch = trunc nuw i64 %i.cg to i32
  %i.ci = trunc i64 %i.cf to i32
  tail call void (ptr, ptr, ...) @report_invalid_record(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef %i.cd, i32 noundef %i.ch, i32 noundef %i.ci)
  br label %.thread322

.thread313:                                       ; preds = %bb.n, %bb.p
  %i.cj = zext i16 %i.bt to i32                   ; 2 uses
  %i.ck = add i32 %.0243433, %i.cj                ; 2 uses
  %i.cl = trunc i8 %i.bl to i1
  br i1 %i.cl, label %bb.r, label %bb.aj

bb.r:                                             ; preds = %.thread313
  %i.cm = icmp ult i32 %i.bv, 2
  br i1 %i.cm, label %.thread315, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bd, i64 44
  %i.co = load i16, ptr %i.bu, align 1            ; 5 uses
  store i16 %i.co, ptr %i.cn, align 4
  %i.cp = icmp eq i32 %i.bp, 6
  br i1 %i.cp, label %.thread315, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cq = getelementptr inbounds nuw i8, ptr %.0259431, i64 6
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %i.cs = load i16, ptr %i.cq, align 1            ; 4 uses
  store i16 %i.cs, ptr %i.cr, align 8
  %i.ct = icmp eq i32 %.0247432, 8
  br i1 %i.ct, label %.thread315, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cu = getelementptr inbounds nuw i8, ptr %.0259431, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bd, i64 46
  %i.cw = load i8, ptr %i.cu, align 1             ; 6 uses
  store i8 %i.cw, ptr %i.cv, align 2
  %i.cx = getelementptr inbounds nuw i8, ptr %.0259431, i64 9 ; 3 uses
  %i.cy = add i32 %.0247432, -9                   ; 3 uses
  %i.cz = lshr i8 %i.cw, 1
  %.lobit286 = and i8 %i.cz, 1
  store i8 %.lobit286, ptr %i.be, align 2
  %i.da = zext i8 %i.cw to i32                    ; 2 uses
  %i.db = and i32 %i.da, 28
  %.not287 = icmp eq i32 %i.db, 0
  br i1 %.not287, label %bb.z, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dc = and i32 %i.da, 1
  %.not288 = icmp eq i32 %i.dc, 0
  br i1 %.not288, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dd = icmp ult i32 %i.cy, 2
  br i1 %i.dd, label %.thread315, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.de = getelementptr inbounds nuw i8, ptr %i.bd, i64 42
  %i.df = load i16, ptr %i.cx, align 1            ; 2 uses
  store i16 %i.df, ptr %i.de, align 2
  %i.dg = getelementptr inbounds nuw i8, ptr %.0259431, i64 11
  %i.dh = add i32 %.0247432, -11
  br label %bb.aa

bb.y:                                             ; preds = %bb.v
  %i.di = getelementptr inbounds nuw i8, ptr %i.bd, i64 42
  store i16 0, ptr %i.di, align 2
  br label %bb.aa

bb.z:                                             ; preds = %bb.u
  %i.dj = sub i16 8192, %i.co                     ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bd, i64 42
  store i16 %i.dj, ptr %i.dk, align 2
  br label %bb.aa

bb.aa:                                            ; preds = %bb.x, %bb.y, %bb.z
  %i.dl = phi i16 [ %i.df, %bb.x ], [ 0, %bb.y ], [ %i.dj, %bb.z ] ; 4 uses
  %.3262 = phi ptr [ %i.dg, %bb.x ], [ %i.cx, %bb.y ], [ %i.cx, %bb.z ]
  %.3250 = phi i32 [ %i.dh, %bb.x ], [ %i.cy, %bb.y ], [ %i.cy, %bb.z ]
  %i.dm = zext i16 %i.co to i32                   ; 2 uses
  %i.dn = add i32 %i.ck, %i.dm
  %i.do = and i8 %i.cw, 1
  %.not289 = icmp eq i8 %i.do, 0
  %.not291 = icmp eq i16 %i.cs, 0                 ; 2 uses
  br i1 %.not289, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  br i1 %.not291, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dp = icmp eq i16 %i.dl, 0
  %i.dq = icmp eq i16 %i.co, 8192
  %or.cond = select i1 %i.dp, i1 true, i1 %i.dq
  br i1 %or.cond, label %bb.ad, label %.thread550

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.dr = zext i16 %i.cs to i32
  %i.ds = zext i16 %i.dl to i32
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.du = load i64, ptr %i.dt, align 8            ; 2 uses
  %i.dv = lshr i64 %i.du, 32
  %i.dw = trunc nuw i64 %i.dv to i32
  %i.dx = trunc i64 %i.du to i32
  tail call void (ptr, ptr, ...) @report_invalid_record(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef %i.dr, i32 noundef %i.ds, i32 noundef %i.dm, i32 noundef %i.dw, i32 noundef %i.dx)
  br label %.thread322

bb.ae:                                            ; preds = %bb.aa
  %.not292 = icmp eq i16 %i.dl, 0
  %or.cond676 = select i1 %.not291, i1 %.not292, i1 false
  br i1 %or.cond676, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dy = zext i16 %i.cs to i32
  %i.dz = zext i16 %i.dl to i32
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.eb = load i64, ptr %i.ea, align 8            ; 2 uses
  %i.ec = lshr i64 %i.eb, 32
  %i.ed = trunc nuw i64 %i.ec to i32
  %i.ee = trunc i64 %i.eb to i32
  tail call void (ptr, ptr, ...) @report_invalid_record(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %i.dy, i32 noundef %i.dz, i32 noundef %i.ed, i32 noundef %i.ee)
  br label %.thread322

bb.ag:                                            ; preds = %bb.ae
  %i.ef = and i8 %i.cw, 28
  %.not293 = icmp ne i8 %i.ef, 0
  %i.eg = icmp eq i16 %i.co, 8192                 ; 2 uses
  %or.cond328 = select i1 %.not293, i1 %i.eg, i1 false
  br i1 %or.cond328, label %bb.ah, label %.thread550

bb.ah:                                            ; preds = %bb.ag
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ei = load i64, ptr %i.eh, align 8            ; 2 uses
  %i.ej = lshr i64 %i.ei, 32
  %i.ek = trunc nuw i64 %i.ej to i32
  %i.el = trunc i64 %i.ei to i32
  tail call void (ptr, ptr, ...) @report_invalid_record(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef 8192, i32 noundef %i.ek, i32 noundef %i.el)
  br label %.thread322

.thread550:                                       ; preds = %bb.ac, %bb.ag
  %i.em = phi i1 [ %i.eg, %bb.ag ], [ false, %bb.ac ]
  %i.en = and i8 %i.cw, 29
  %or.cond302 = icmp ne i8 %i.en, 0
  %or.cond329 = select i1 %or.cond302, i1 true, i1 %i.em
  br i1 %or.cond329, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.thread550
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ep = load i64, ptr %i.eo, align 8            ; 2 uses
  %i.eq = lshr i64 %i.ep, 32
  %i.er = trunc nuw i64 %i.eq to i32
  %i.es = trunc i64 %i.ep to i32
  tail call void (ptr, ptr, ...) @report_invalid_record(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef %i.cj, i32 noundef %i.er, i32 noundef %i.es)
  br label %.thread322

bb.aj:                                            ; preds = %.thread550, %.thread313
  %.4263 = phi ptr [ %.3262, %.thread550 ], [ %i.bu, %.thread313 ] ; 3 uses
  %.4251 = phi i32 [ %.3250, %.thread550 ], [ %i.bv, %.thread313 ] ; 3 uses
  %.3246 = phi i32 [ %i.dn, %.thread550 ], [ %i.ck, %.thread313 ]
  %.not297 = icmp sgt i8 %.0.copyload, -1
  br i1 %.not297, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.et = icmp ult i32 %.4251, 12
  br i1 %i.et, label %.thread315, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.eu = getelementptr inbounds nuw i8, ptr %i.bd, i64 4 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.eu, ptr noundef nonnull align 1 dereferenceable(12) %.4263, i64 12, i1 false)
  %i.ev = getelementptr inbounds nuw i8, ptr %.4263, i64 12
  %i.ew = add i32 %.4251, -12
  br label %bb.ap

bb.am:                                            ; preds = %bb.aj
  %i.ex = icmp eq ptr %.0240434, null
  br i1 %i.ex, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ez = load i64, ptr %i.ey, align 8            ; 2 uses
  %i.fa = lshr i64 %i.ez, 32
  %i.fb = trunc nuw i64 %i.fa to i32
  %i.fc = trunc i64 %i.ez to i32
  tail call void (ptr, ptr, ...) @report_invalid_record(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %i.fb, i32 noundef %i.fc)
  br label %.thread322

bb.ao:                                            ; preds = %bb.am
  %i.fd = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.fd, ptr noundef nonnull align 4 dereferenceable(12) %.0240434, i64 12, i1 false)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.al, %bb.ao
  %.5264 = phi ptr [ %.4263, %bb.ao ], [ %i.ev, %bb.al ] ; 2 uses
  %.5252 = phi i32 [ %.4251, %bb.ao ], [ %i.ew, %bb.al ] ; 2 uses
  %.1241 = phi ptr [ %.0240434, %bb.ao ], [ %i.eu, %bb.al ]
  %i.fe = icmp ult i32 %.5252, 4
  br i1 %i.fe, label %.thread315, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ff = getelementptr inbounds nuw i8, ptr %i.bd, i64 20
  %i.fg = load i32, ptr %.5264, align 1
  store i32 %i.fg, ptr %i.ff, align 4
  %i.fh = getelementptr inbounds nuw i8, ptr %.5264, i64 4
  %i.fi = add i32 %.5252, -4
  br label %bb.as

bb.ar:                                            ; preds = %bb.h
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.fk = load i64, ptr %i.fj, align 8            ; 2 uses
  %i.fl = lshr i64 %i.fk, 32
  %i.fm = trunc nuw i64 %i.fl to i32
  %i.fn = trunc i64 %i.fk to i32
  tail call void (ptr, ptr, ...) @report_invalid_record(ptr noundef %0, ptr noundef nonnull @.str.15, i32 noundef %i.p, i32 noundef %i.fm, i32 noundef %i.fn)
  br label %.thread322

bb.as:                                            ; preds = %bb.aq, %bb.g, %bb.e
  %i.fo = phi i32 [ %i.m, %bb.e ], [ %i.m, %bb.g ], [ %i.p, %bb.aq ] ; 2 uses
  %.7266 = phi ptr [ %i.ab, %bb.e ], [ %i.af, %bb.g ], [ %i.fh, %bb.aq ] ; 2 uses
  %.7 = phi i32 [ %i.ac, %bb.e ], [ %i.ag, %bb.g ], [ %i.fi, %bb.aq ] ; 3 uses
  %.5 = phi i32 [ %.0243433, %bb.e ], [ %.0243433, %bb.g ], [ %.3246, %bb.aq ] ; 3 uses
  %.3 = phi ptr [ %.0240434, %bb.e ], [ %.0240434, %bb.g ], [ %.1241, %bb.aq ]
  %i.fp = icmp ugt i32 %.7, %.5
  br i1 %i.fp, label %.lr.ph436, label %.loopexit, !llvm.loop !17

.loopexit:                                        ; preds = %bb.as, %.thread308, %.thread
  %i.fq = phi i32 [ %i.t, %.thread ], [ %.0.copyload69, %.thread308 ], [ 0, %bb.as ]
  %i.fr = phi i32 [ %i.m, %.thread ], [ %i.m, %.thread308 ], [ %i.fo, %bb.as ] ; 2 uses
  %.8267 = phi ptr [ %i.r, %.thread ], [ %i.w, %.thread308 ], [ %.7266, %bb.as ] ; 2 uses
  %.8 = phi i32 [ %i.s, %.thread ], [ %i.x, %.thread308 ], [ %.7, %bb.as ]
  %.6 = phi i32 [ %i.u, %.thread ], [ %i.y, %.thread308 ], [ %.5, %bb.as ]
  %.not298 = icmp eq i32 %.8, %.6
  br i1 %.not298, label %bb.at, label %.thread315

bb.at:                                            ; preds = %.loopexit
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.ft = add nsw i32 %i.fr, 1
  %i.fu = zext nneg i32 %i.ft to i64
  %i.fv = shl nuw nsw i64 %i.fu, 6
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.fv ; 2 uses
  %.not299439 = icmp slt i32 %i.fr, 0
  br i1 %.not299439, label %._crit_edge445, label %.lr.ph444

.lr.ph444:                                        ; preds = %bb.at, %bb.ay
  %.0239442 = phi i8 [ %i.hb, %bb.ay ], [ 0, %bb.at ] ; 2 uses
  %.0254441 = phi ptr [ %.3257, %bb.ay ], [ %i.fw, %bb.at ] ; 5 uses
  %.9440 = phi ptr [ %.12, %bb.ay ], [ %.8267, %bb.at ] ; 4 uses
  %i.fx = zext i8 %.0239442 to i64
  %i.fy = getelementptr inbounds nuw [64 x i8], ptr %i.fs, i64 %i.fx ; 7 uses
  %i.fz = load i8, ptr %i.fy, align 8, !range !6, !noundef !7
  %i.ga = trunc nuw i8 %i.fz to i1
  br i1 %i.ga, label %bb.au, label %bb.ay

bb.au:                                            ; preds = %.lr.ph444
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 29
  %i.gc = load i8, ptr %i.gb, align 1, !range !6, !noundef !7
  %i.gd = trunc nuw i8 %i.gc to i1
  br i1 %i.gd, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fy, i64 32
  store ptr %.0254441, ptr %i.ge, align 8
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fy, i64 44 ; 2 uses
  %i.gg = load i16, ptr %i.gf, align 4
  %i.gh = zext i16 %i.gg to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0254441, ptr align 1 %.9440, i64 %i.gh, i1 false)
  %i.gi = load i16, ptr %i.gf, align 4
  %i.gj = zext i16 %i.gi to i64                   ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.9440, i64 %i.gj
  %i.gl = getelementptr inbounds nuw i8, ptr %.0254441, i64 %i.gj
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.10 = phi ptr [ %i.gk, %bb.av ], [ %.9440, %bb.au ] ; 3 uses
  %.1255 = phi ptr [ %i.gl, %bb.av ], [ %.0254441, %bb.au ] ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fy, i64 47
  %i.gn = load i8, ptr %i.gm, align 1, !range !6, !noundef !7
  %i.go = trunc nuw i8 %i.gn to i1
  br i1 %i.go, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.gp = ptrtoint ptr %.1255 to i64
  %i.gq = add i64 %i.gp, 7
  %i.gr = and i64 %i.gq, -8
  %i.gs = inttoptr i64 %i.gr to ptr               ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fy, i64 48
  store ptr %i.gs, ptr %i.gt, align 8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.fy, i64 56 ; 2 uses
  %i.gv = load i16, ptr %i.gu, align 8
  %i.gw = zext i16 %i.gv to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.gs, ptr align 1 %.10, i64 %i.gw, i1 false)
  %i.gx = load i16, ptr %i.gu, align 8
  %i.gy = zext i16 %i.gx to i64                   ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.10, i64 %i.gy
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.gy
  br label %bb.ay

bb.ay:                                            ; preds = %bb.aw, %bb.ax, %.lr.ph444
  %.12 = phi ptr [ %.9440, %.lr.ph444 ], [ %i.gz, %bb.ax ], [ %.10, %bb.aw ] ; 2 uses
end_hunk_0
