Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/zic?download=true
inline.NumInlined: 153
inline.NumDeleted: 47
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 11
begin_hunk_0_@infile:sub_0

bb.ay:                                            ; preds = %bb.aw, %bb.av
  %i.ey = add nuw nsw i64 %.021.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ey, %i.en
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.av, !llvm.loop !69

._crit_edge.i:                                    ; preds = %bb.ay, %.preheader.i57
  %i.ez = call fastcc zeroext i1 @inzsub(ptr noundef nonnull readonly %i.v, i32 noundef range(i32 1, 0) %i.ax, i1 noundef zeroext false)
  %i.fa = zext i1 %i.ez to i8
  br label %inrule.exit

bb.az:                                            ; preds = %bb.w
  %.not.i58 = icmp eq i32 %i.ax, 3
  br i1 %.not.i58, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void (ptr, ...) @error(ptr noundef nonnull @.str.148)
  br label %inrule.exit

bb.bb:                                            ; preds = %bb.az
  %i.fb = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8            ; 2 uses
  %i.fd = load i8, ptr %i.fc, align 1
  %i.fe = icmp eq i8 %i.fd, 0
  br i1 %i.fe, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  call void (ptr, ...) @error(ptr noundef nonnull @.str.149)
  br label %inrule.exit

bb.bd:                                            ; preds = %bb.bb
  %i.ff = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.fg = load ptr, ptr %i.ff, align 8            ; 2 uses
  %i.fh = call fastcc zeroext i1 @namecheck(ptr noundef %i.fg)
  br i1 %i.fh, label %bb.be, label %inrule.exit

bb.be:                                            ; preds = %bb.bd
  %i.fi = load ptr, ptr @filename, align 8
  %i.fj = load i64, ptr @linenum, align 8
  %i.fk = call noalias ptr @strdup(ptr noundef nonnull readonly %i.fc) #25 ; 2 uses
  %i.fl = icmp eq ptr %i.fk, null
  br i1 %i.fl, label %bb.bf, label %ecpyalloc.exit.i59

bb.bf:                                            ; preds = %bb.be
  %i.fm = tail call ptr @__errno_location() #27
  %i.fn = load i32, ptr %i.fm, align 4
  %i.fo = call ptr @pg_strerror(i32 noundef %i.fn) #25
  call fastcc void @memory_exhausted(ptr noundef %i.fo) #29
  unreachable

ecpyalloc.exit.i59:                               ; preds = %bb.be
  %i.fp = call noalias ptr @strdup(ptr noundef readonly %i.fg) #25 ; 2 uses
  %i.fq = icmp eq ptr %i.fp, null
  br i1 %i.fq, label %bb.bg, label %ecpyalloc.exit4.i

bb.bg:                                            ; preds = %ecpyalloc.exit.i59
  %i.fr = tail call ptr @__errno_location() #27
  %i.fs = load i32, ptr %i.fr, align 4
  %i.ft = call ptr @pg_strerror(i32 noundef %i.fs) #25
  call fastcc void @memory_exhausted(ptr noundef %i.ft) #29
  unreachable

ecpyalloc.exit4.i:                                ; preds = %ecpyalloc.exit.i59
  %i.fu = load ptr, ptr @links, align 8           ; 2 uses
  %i.fv = load i64, ptr @nlinks, align 8          ; 3 uses
  %i.fw = load i64, ptr @nlinks_alloc, align 8    ; 4 uses
  %i.fx = icmp slt i64 %i.fv, %i.fw
  br i1 %i.fx, label %growalloc.exit.i62, label %bb.bh

bb.bh:                                            ; preds = %ecpyalloc.exit4.i
  %i.fy = icmp sgt i64 %i.fw, 6148914691236517202
  br i1 %i.fy, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  call fastcc void @memory_exhausted(ptr noundef nonnull @.str.131) #29
  unreachable

bb.bj:                                            ; preds = %bb.bh
  %i.fz = ashr i64 %i.fw, 1
  %i.ga = add nsw i64 %i.fw, 1
  %i.gb = add i64 %i.ga, %i.fz                    ; 3 uses
  store i64 %i.gb, ptr @nlinks_alloc, align 8
  %mul.ov.i.i.i60 = icmp ugt i64 %i.gb, 576460752303423487
  br i1 %mul.ov.i.i.i60, label %bb.bk, label %size_product.exit.i.i61

bb.bk:                                            ; preds = %bb.bj
  call fastcc void @memory_exhausted(ptr noundef nonnull @.str.67) #29
  unreachable

size_product.exit.i.i61:                          ; preds = %bb.bj
  %i.gc = shl nuw i64 %i.gb, 5
  %i.gd = call ptr @realloc(ptr noundef %i.fu, i64 noundef %i.gc) #31 ; 2 uses
  %i.ge = icmp eq ptr %i.gd, null
  br i1 %i.ge, label %bb.bl, label %growalloc.exit.i62

bb.bl:                                            ; preds = %size_product.exit.i.i61
  %i.gf = tail call ptr @__errno_location() #27
  %i.gg = load i32, ptr %i.gf, align 4
  %i.gh = call ptr @pg_strerror(i32 noundef %i.gg) #25
  call fastcc void @memory_exhausted(ptr noundef %i.gh) #29
  unreachable

growalloc.exit.i62:                               ; preds = %size_product.exit.i.i61, %ecpyalloc.exit4.i
  %.0.i.i63 = phi ptr [ %i.fu, %ecpyalloc.exit4.i ], [ %i.gd, %size_product.exit.i.i61 ] ; 2 uses
  store ptr %.0.i.i63, ptr @links, align 8
  %i.gi = add i64 %i.fv, 1
  store i64 %i.gi, ptr @nlinks, align 8
  %i.gj = getelementptr inbounds [32 x i8], ptr %.0.i.i63, i64 %i.fv ; 4 uses
  store ptr %i.fi, ptr %i.gj, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  store i64 %i.fj, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  store ptr %i.fk, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gj, i64 24
  store ptr %i.fp, ptr %.sroa.6.0..sroa_idx.i, align 8
  br label %inrule.exit

bb.bm:                                            ; preds = %bb.w
  %.not.i64 = icmp eq i32 %i.ax, 7
  br i1 %.not.i64, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void (ptr, ...) @error(ptr noundef nonnull @.str.150)
  br label %inrule.exit

bb.bo:                                            ; preds = %bb.bm
  %i.gk = call fastcc i64 @getleapdatetime(ptr noundef nonnull readonly %i.v, i1 noundef zeroext false) ; 3 uses
  %i.gl = icmp sgt i64 %i.gk, -1
  br i1 %i.gl, label %bb.bp, label %inrule.exit

bb.bp:                                            ; preds = %bb.bo
  %i.gm = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.gn = load ptr, ptr %i.gm, align 8
  %i.go = call fastcc ptr @byword(ptr noundef %i.gn, ptr noundef nonnull @leap_types) ; 2 uses
  %.not14.i = icmp eq ptr %i.go, null
  br i1 %.not14.i, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  call void (ptr, ...) @error(ptr noundef nonnull @.str.151)
  br label %inrule.exit

bb.br:                                            ; preds = %bb.bp
  %i.gp = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.gq = load ptr, ptr %i.gp, align 8            ; 2 uses
  %i.gr = load i8, ptr %i.gq, align 1
  switch i8 %i.gr, label %.critedge.i [
    i8 0, label %bb.bs
    i8 43, label %.tail.i
  ]

.tail.i:                                          ; preds = %bb.br
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 1
  %i.gt = load i8, ptr %i.gs, align 1
  %i.gu = icmp eq i8 %i.gt, 0
  br i1 %i.gu, label %bb.bs, label %.critedge.i

.critedge.i:                                      ; preds = %.tail.i, %bb.br
  call void (ptr, ...) @error(ptr noundef nonnull @.str.153)
  br label %inrule.exit

bb.bs:                                            ; preds = %.tail.i, %bb.br
  %.0.i65 = phi i64 [ -1, %bb.br ], [ 1, %.tail.i ]
  %i.gv = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.gw = load i32, ptr %i.gv, align 8
  %i.gx = load i32, ptr @leapcnt, align 4         ; 6 uses
  %i.gy = icmp sgt i32 %i.gx, 49
  br i1 %i.gy, label %bb.bt, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.bs
  %i.gz = icmp sgt i32 %i.gx, 0
  br i1 %i.gz, label %.lr.ph.preheader.i.i, label %leapadd.exit.i

.lr.ph.preheader.i.i:                             ; preds = %.preheader.i.i
  %wide.trip.count.i.i = zext nneg i32 %i.gx to i64
  br label %.lr.ph.i.i

bb.bt:                                            ; preds = %bb.bs
  call void (ptr, ...) @error(ptr noundef nonnull @.str.161)
  call void @exit(i32 noundef 1) #28
  unreachable

.lr.ph.i.i:                                       ; preds = %bb.bu, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.bu ] ; 3 uses
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr @trans, i64 %indvars.iv.i.i
  %i.hb = load i64, ptr %i.ha, align 8
  %.not.i.i66 = icmp sgt i64 %i.gk, %i.hb
  br i1 %.not.i.i66, label %bb.bu, label %._crit_edge.loopexit.split.loop.exit.i.i

bb.bu:                                            ; preds = %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %leapadd.exit.i, label %.lr.ph.i.i, !llvm.loop !70

._crit_edge.loopexit.split.loop.exit.i.i:         ; preds = %.lr.ph.i.i
  %i.hc = trunc nuw nsw i64 %indvars.iv.i.i to i32
  br label %leapadd.exit.i

leapadd.exit.i:                                   ; preds = %bb.bu, %._crit_edge.loopexit.split.loop.exit.i.i, %.preheader.i.i
  %.0.lcssa.i.i = phi i32 [ 0, %.preheader.i.i ], [ %i.hc, %._crit_edge.loopexit.split.loop.exit.i.i ], [ %i.gx, %bb.bu ] ; 3 uses
  %i.hd = add nuw nsw i32 %.0.lcssa.i.i, 1
  %1 = zext nneg i32 %i.hd to i64                 ; 3 uses
  %i.he = getelementptr inbounds nuw [8 x i8], ptr @trans, i64 %1
  %i.hf = zext nneg i32 %.0.lcssa.i.i to i64      ; 3 uses
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr @trans, i64 %i.hf ; 2 uses
  %i.hh = sub nuw i32 %i.gx, %.0.lcssa.i.i
  %i.hi = sext i32 %i.hh to i64                   ; 2 uses
  %i.hj = shl nsw i64 %i.hi, 3                    ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.he, ptr nonnull align 8 %i.hg, i64 %i.hj, i1 false)
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr @corr, i64 %1
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr @corr, i64 %i.hf ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hk, ptr nonnull align 8 %i.hl, i64 %i.hj, i1 false)
  %i.hm = getelementptr inbounds nuw i8, ptr @roll, i64 %1
  %i.hn = getelementptr inbounds nuw i8, ptr @roll, i64 %i.hf ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.hm, ptr nonnull align 1 %i.hn, i64 %i.hi, i1 false)
  store i64 %i.gk, ptr %i.hg, align 8
  store i64 %.0.i65, ptr %i.hl, align 8
  %i.ho = trunc i32 %i.gw to i8
  store i8 %i.ho, ptr %i.hn, align 1
  %i.hp = add nsw i32 %i.gx, 1
  store i32 %i.hp, ptr @leapcnt, align 4
  br label %inrule.exit

bb.bv:                                            ; preds = %bb.w
  %.not.i67 = icmp eq i32 %i.ax, 5
  br i1 %.not.i67, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  call void (ptr, ...) @error(ptr noundef nonnull @.str.162)
  br label %inrule.exit

bb.bx:                                            ; preds = %bb.bv
  %i.hq = load i64, ptr @leapexpires, align 8
  %i.hr = icmp sgt i64 %i.hq, -1
  br i1 %i.hr, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  call void (ptr, ...) @error(ptr noundef nonnull @.str.163)
  br label %inrule.exit

bb.bz:                                            ; preds = %bb.bx
  %i.hs = call fastcc i64 @getleapdatetime(ptr noundef nonnull readonly %i.v, i1 noundef zeroext true)
  store i64 %i.hs, ptr @leapexpires, align 8
  br label %inrule.exit

bb.ca:                                            ; preds = %bb.w
  %i.ht = load ptr, ptr @stderr, align 8
  %i.hu = load ptr, ptr @progname, align 8
  %i.hv = call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.ht, ptr noundef nonnull @.str.64, ptr noundef %i.hu, i32 noundef %i.bs) #25 ; 0 uses
  call void @exit(i32 noundef 1) #28
  unreachable

inrule.exit:                                      ; preds = %._crit_edge.i, %bb.ax, %bb.au, %bb.at, %bb.aq, %bb.t, %bb.s, %bb.bz, %bb.by, %bb.bw, %leapadd.exit.i, %.critedge.i, %bb.bq, %bb.bo, %bb.bn, %growalloc.exit.i62, %bb.bd, %bb.bc, %bb.ba, %growalloc.exit.i, %bb.aa, %bb.y, %bb.v, %._crit_edge.thread, %bb.p
  %.2 = phi i8 [ %.044113, %bb.p ], [ %.044113, %._crit_edge.thread ], [ 0, %bb.bz ], [ 0, %bb.v ], [ 0, %leapadd.exit.i ], [ %i.bk, %bb.t ], [ 0, %growalloc.exit.i ], [ 0, %growalloc.exit.i62 ], [ 0, %bb.y ], [ 0, %bb.aa ], [ 0, %bb.ba ], [ 0, %bb.bc ], [ 0, %bb.bd ], [ 0, %bb.bn ], [ 0, %bb.bo ], [ 0, %bb.bq ], [ 0, %.critedge.i ], [ 0, %bb.bw ], [ 0, %bb.by ], [ 0, %bb.s ], [ 0, %bb.aq ], [ 0, %bb.at ], [ 0, %bb.au ], [ 0, %bb.ax ], [ %i.fa, %._crit_edge.i ] ; 2 uses
  call void @free(ptr noundef %i.v) #25
  %i.hw = add i64 %.043114, 1                     ; 2 uses
  store ptr %.0, ptr @filename, align 8
  store i64 %i.hw, ptr @linenum, align 8
  store ptr null, ptr @rfilename, align 8
  store i64 -1, ptr @rlinenum, align 8
  %i.hx = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 8192, ptr noundef %.046)
  %.not = icmp eq ptr %i.hx, %i.a
  br i1 %.not, label %.lr.ph, label %._crit_edge116

._crit_edge116:                                   ; preds = %inrule.exit
  %i.hy = trunc nuw i8 %.2 to i1
  %i.hz = load ptr, ptr @filename, align 8
  call fastcc void @close_file(ptr noundef %.046, ptr noundef null, ptr noundef %i.hz)
  br i1 %i.hy, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %._crit_edge116
  call void (ptr, ...) @error(ptr noundef nonnull @.str.65)
  br label %bb.cc

bb.cc:                                            ; preds = %._crit_edge116.thread, %bb.cb, %._crit_edge116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @dolink(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
sub_0:
  %i.a = alloca i8, align 1                       ; 3 uses
  %i.b = load i8, ptr %0, align 1
  %.not94 = icmp eq i8 %i.b, 45
  br i1 %.not94, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = load i8, ptr %i.c, align 1
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.b, label %.tail.thread

.tail.thread:                                     ; preds = %sub_0, %.tail
  %i.f = tail call fastcc zeroext i1 @itsdir(ptr noundef nonnull %0)
  br i1 %i.f, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.tail.thread
  %i.g = load ptr, ptr @stderr, align 8
  %i.h = load ptr, ptr @progname, align 8
  %i.i = load ptr, ptr @directory, align 8
  %i.j = tail call ptr @pg_strerror(i32 noundef 1) #25
  %i.k = tail call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.g, ptr noundef nonnull @.str.40, ptr noundef %i.h, ptr noundef %i.i, ptr noundef nonnull %0, ptr noundef %i.j) #25 ; 0 uses
  tail call void @exit(i32 noundef 1) #28
  unreachable

bb.b:                                             ; preds = %.tail.thread, %.tail
  %i.l = phi i1 [ false, %.tail.thread ], [ true, %.tail ]
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.m = call i64 @readlink(ptr noundef readonly %1, ptr noundef nonnull %i.a, i64 noundef 1) #25
  %i.n = icmp sgt i64 %i.m, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.in = phi i1 [ %i.n, %bb.c ], [ false, %bb.b ]
  %i.o = tail call i32 @remove(ptr noundef %1) #25
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = tail call ptr @__errno_location() #27
  %i.r = load i32, ptr %i.q, align 4              ; 2 uses
  %.not = icmp eq i32 %i.r, 2
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = tail call ptr @pg_strerror(i32 noundef %i.r) #25
  %i.t = load ptr, ptr @stderr, align 8
  %i.u = load ptr, ptr @progname, align 8
  %i.v = load ptr, ptr @directory, align 8
  %i.w = tail call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.t, ptr noundef nonnull @.str.41, ptr noundef %i.u, ptr noundef %i.v, ptr noundef %1, ptr noundef %i.s) #25 ; 0 uses
  tail call void @exit(i32 noundef 1) #28
  unreachable

bb.g:                                             ; preds = %bb.d, %bb.e
  %.061 = phi i8 [ 0, %bb.e ], [ 1, %bb.d ]       ; 3 uses
  br i1 %i.l, label %hardlinkerr.exit74.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %.0.in, label %hardlinkerr.exit74.thread87, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = tail call i32 @linkat(i32 noundef -100, ptr noundef nonnull %0, i32 noundef -100, ptr noundef %1, i32 noundef 1024) #25
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %hardlinkerr.exit74.thread, label %hardlinkerr.exit

hardlinkerr.exit:                                 ; preds = %bb.i
  %i.z = tail call ptr @__errno_location() #27    ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4             ; 2 uses
  %i.ab = icmp ne i32 %i.aa, 2
  %i.ac = trunc nuw i8 %.061 to i1
  %or.cond = or i1 %i.ab, %i.ac
  br i1 %or.cond, label %hardlinkerr.exit74, label %bb.j

bb.j:                                             ; preds = %hardlinkerr.exit
  tail call fastcc void @mkdirs(ptr noundef %1, i1 noundef zeroext true)
  %i.ad = tail call i32 @linkat(i32 noundef -100, ptr noundef nonnull %0, i32 noundef -100, ptr noundef %1, i32 noundef 1024) #25
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %hardlinkerr.exit74.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = load i32, ptr %i.z, align 4
  br label %hardlinkerr.exit74

hardlinkerr.exit74:                               ; preds = %bb.k, %hardlinkerr.exit
  %.062 = phi i32 [ %i.aa, %hardlinkerr.exit ], [ %i.af, %bb.k ] ; 2 uses
  %.1 = phi i8 [ %.061, %hardlinkerr.exit ], [ 1, %bb.k ]
  %.not67 = icmp eq i32 %.062, 0
  br i1 %.not67, label %hardlinkerr.exit74.thread, label %hardlinkerr.exit74.thread87

hardlinkerr.exit74.thread87:                      ; preds = %bb.h, %hardlinkerr.exit74
  %.192 = phi i8 [ %.1, %hardlinkerr.exit74 ], [ %.061, %bb.h ]
  %.06291 = phi i32 [ %.062, %hardlinkerr.exit74 ], [ 95, %bb.h ] ; 4 uses
  %i.ag = load i8, ptr %0, align 1                ; 2 uses
  %i.ah = icmp eq i8 %i.ag, 47
  br i1 %i.ah, label %relname.exit, label %bb.l

bb.l:                                             ; preds = %hardlinkerr.exit74.thread87
  %i.ai = load i8, ptr %1, align 1
  %i.aj = icmp eq i8 %i.ai, 47
  br i1 %i.aj, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.ak = load ptr, ptr @directory, align 8       ; 3 uses
  %i.al = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ak) #26 ; 4 uses
  %.not.i = icmp eq i64 %i.al, 0
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = getelementptr i8, ptr %i.ak, i64 %i.al
  %i.an = getelementptr i8, ptr %i.am, i64 -1
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = icmp ne i8 %i.ao, 47
  %i.aq = zext i1 %i.ap to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ar = phi i64 [ 0, %bb.m ], [ %i.aq, %bb.n ]  ; 2 uses
  %i.as = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #26
  %i.at = add i64 %i.al, 1
  %i.au = add i64 %i.at, %i.ar
  %i.av = add i64 %i.au, %i.as                    ; 2 uses
  %i.aw = tail call noalias ptr @malloc(i64 noundef %i.av) #30 ; 6 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.p, label %emalloc.exit.i

bb.p:                                             ; preds = %bb.o
  %i.ay = tail call ptr @__errno_location() #27
  %i.az = load i32, ptr %i.ay, align 4
end_hunk_0
