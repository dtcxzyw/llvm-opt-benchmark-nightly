inline.NumInlined: 89
inline.NumDeleted: 17
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 28
begin_hunk_0_@gtsvector_penalty:bb.a
.lr.ph.i.i20.i.preheader:                         ; preds = %.preheader.i.i18.i
  %i.hl = add nsw i32 %i.fj, -9
  %xtraiter81 = and i32 %i.fj, 3                  ; 3 uses
  %i.hm = icmp ult i32 %i.hl, 3
  br i1 %i.hm, label %.lr.ph.i.i20.i.epil.preheader, label %.lr.ph.i.i20.i.preheader.new

.lr.ph.i.i20.i.preheader.new:                     ; preds = %.lr.ph.i.i20.i.preheader
  %unroll_iter86 = and i32 %i.fk, -4
  br label %.lr.ph.i.i20.i

.lr.ph.i.i20.i:                                   ; preds = %.lr.ph.i.i20.i, %.lr.ph.i.i20.i.preheader.new
  %.014.i.i21.i = phi i64 [ 0, %.lr.ph.i.i20.i.preheader.new ], [ %i.io, %.lr.ph.i.i20.i ]
  %.0812.i.i23.i = phi ptr [ %i.u, %.lr.ph.i.i20.i.preheader.new ], [ %i.ii, %.lr.ph.i.i20.i ] ; 5 uses
  %niter87 = phi i32 [ 0, %.lr.ph.i.i20.i.preheader.new ], [ %niter87.next.3, %.lr.ph.i.i20.i ]
  %i.hn = getelementptr inbounds nuw i8, ptr %.0812.i.i23.i, i64 1
  %i.ho = load i8, ptr %.0812.i.i23.i, align 1
  %i.hp = zext i8 %i.ho to i64
  %i.hq = getelementptr inbounds nuw i8, ptr @pg_number_of_ones, i64 %i.hp
  %i.hr = load i8, ptr %i.hq, align 1
  %i.hs = zext i8 %i.hr to i64
  %i.ht = add i64 %.014.i.i21.i, %i.hs
  %i.hu = getelementptr inbounds nuw i8, ptr %.0812.i.i23.i, i64 2
  %i.hv = load i8, ptr %i.hn, align 1
  %i.hw = zext i8 %i.hv to i64
  %i.hx = getelementptr inbounds nuw i8, ptr @pg_number_of_ones, i64 %i.hw
  %i.hy = load i8, ptr %i.hx, align 1
  %i.hz = zext i8 %i.hy to i64
  %i.ia = add i64 %i.ht, %i.hz
  %i.ib = getelementptr inbounds nuw i8, ptr %.0812.i.i23.i, i64 3
  %i.ic = load i8, ptr %i.hu, align 1
  %i.id = zext i8 %i.ic to i64
  %i.ie = getelementptr inbounds nuw i8, ptr @pg_number_of_ones, i64 %i.id
  %i.if = load i8, ptr %i.ie, align 1
  %i.ig = zext i8 %i.if to i64
  %i.ih = add i64 %i.ia, %i.ig
  %i.ii = getelementptr inbounds nuw i8, ptr %.0812.i.i23.i, i64 4 ; 2 uses
  %i.ij = load i8, ptr %i.ib, align 1
  %i.ik = zext i8 %i.ij to i64
  %i.il = getelementptr inbounds nuw i8, ptr @pg_number_of_ones, i64 %i.ik
  %i.im = load i8, ptr %i.il, align 1
  %i.in = zext i8 %i.im to i64
  %i.io = add i64 %i.ih, %i.in                    ; 3 uses
  %niter87.next.3 = add i32 %niter87, 4           ; 2 uses
  %niter87.ncmp.3 = icmp eq i32 %niter87.next.3, %unroll_iter86
  br i1 %niter87.ncmp.3, label %sizebitvec.exit25.i.loopexit.unr-lcssa, label %.lr.ph.i.i20.i, !llvm.loop !4

bb.q:                                             ; preds = %bb.p
  %i.ip = load ptr, ptr @pg_popcount_optimized, align 8
  %i.iq = tail call i64 %i.ip(ptr noundef nonnull %i.u, i32 noundef %i.fk) #12, !inline_history !35
  br label %sizebitvec.exit25.i

sizebitvec.exit25.i.loopexit.unr-lcssa:           ; preds = %.lr.ph.i.i20.i
  %lcmp.mod83.not = icmp eq i32 %xtraiter81, 0
  br i1 %lcmp.mod83.not, label %sizebitvec.exit25.i, label %.lr.ph.i.i20.i.epil.preheader

.lr.ph.i.i20.i.epil.preheader:                    ; preds = %sizebitvec.exit25.i.loopexit.unr-lcssa, %.lr.ph.i.i20.i.preheader
  %.014.i.i21.i.epil.init = phi i64 [ 0, %.lr.ph.i.i20.i.preheader ], [ %i.io, %sizebitvec.exit25.i.loopexit.unr-lcssa ]
  %.0812.i.i23.i.epil.init = phi ptr [ %i.u, %.lr.ph.i.i20.i.preheader ], [ %i.ii, %sizebitvec.exit25.i.loopexit.unr-lcssa ]
  %lcmp.mod85 = icmp ne i32 %xtraiter81, 0
  tail call void @llvm.assume(i1 %lcmp.mod85)
  br label %.lr.ph.i.i20.i.epil

.lr.ph.i.i20.i.epil:                              ; preds = %.lr.ph.i.i20.i.epil, %.lr.ph.i.i20.i.epil.preheader
  %.014.i.i21.i.epil = phi i64 [ %i.ix, %.lr.ph.i.i20.i.epil ], [ %.014.i.i21.i.epil.init, %.lr.ph.i.i20.i.epil.preheader ]
  %.0812.i.i23.i.epil = phi ptr [ %i.ir, %.lr.ph.i.i20.i.epil ], [ %.0812.i.i23.i.epil.init, %.lr.ph.i.i20.i.epil.preheader ] ; 2 uses
  %epil.iter82 = phi i32 [ %epil.iter82.next, %.lr.ph.i.i20.i.epil ], [ 0, %.lr.ph.i.i20.i.epil.preheader ]
  %i.ir = getelementptr inbounds nuw i8, ptr %.0812.i.i23.i.epil, i64 1
  %i.is = load i8, ptr %.0812.i.i23.i.epil, align 1
  %i.it = zext i8 %i.is to i64
  %i.iu = getelementptr inbounds nuw i8, ptr @pg_number_of_ones, i64 %i.it
  %i.iv = load i8, ptr %i.iu, align 1
  %i.iw = zext i8 %i.iv to i64
  %i.ix = add i64 %.014.i.i21.i.epil, %i.iw       ; 2 uses
  %epil.iter82.next = add i32 %epil.iter82, 1     ; 2 uses
  %epil.iter82.cmp.not = icmp eq i32 %epil.iter82.next, %xtraiter81
  br i1 %epil.iter82.cmp.not, label %sizebitvec.exit25.i, label %.lr.ph.i.i20.i.epil, !llvm.loop !37

sizebitvec.exit25.i:                              ; preds = %sizebitvec.exit25.i.loopexit.unr-lcssa, %.lr.ph.i.i20.i.epil, %bb.q, %.preheader.i.i18.i
  %.09.i.i17.i = phi i64 [ %i.iq, %bb.q ], [ 0, %.preheader.i.i18.i ], [ %i.io, %sizebitvec.exit25.i.loopexit.unr-lcssa ], [ %i.ix, %.lr.ph.i.i20.i.epil ]
  %i.iy = trunc i64 %.09.i.i17.i to i32
  %i.iz = sub i32 %i.hj, %i.iy
  br label %hemdist.exit

bb.r:                                             ; preds = %bb.o
  %i.ja = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  %i.jb = icmp ugt i32 %.val16.i, 35
  br i1 %i.jb, label %.lr.ph.preheader.i.i, label %hemdist.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.r
  %wide.trip.count.i.i = zext nneg i32 %i.fk to i64 ; 2 uses
  %xtraiter88 = and i64 %wide.trip.count.i.i, 1
  %i.jc = icmp eq i32 %i.fk, 1
  br i1 %i.jc, label %.lr.ph.i.i37.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter93 = and i64 %wide.trip.count.i.i, 2147483646
  br label %.lr.ph.i.i37

.lr.ph.i.i37:                                     ; preds = %.lr.ph.i.i37, %.lr.ph.preheader.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %indvars.iv.next.i.i.1, %.lr.ph.i.i37 ] ; 4 uses
  %.011.i.i = phi i32 [ 0, %.lr.ph.preheader.i.i.new ], [ %i.jw, %.lr.ph.i.i37 ]
  %niter94 = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter94.next.1, %.lr.ph.i.i37 ]
  %i.jd = getelementptr inbounds nuw i8, ptr %i.u, i64 %indvars.iv.i.i
  %i.je = load i8, ptr %i.jd, align 1
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ja, i64 %indvars.iv.i.i
  %i.jg = load i8, ptr %i.jf, align 1
  %i.jh = xor i8 %i.jg, %i.je
  %i.ji = zext i8 %i.jh to i64
  %i.jj = getelementptr inbounds nuw i8, ptr @pg_number_of_ones, i64 %i.ji
  %i.jk = load i8, ptr %i.jj, align 1
  %i.jl = zext i8 %i.jk to i32
  %i.jm = add i32 %.011.i.i, %i.jl
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.u, i64 %indvars.iv.next.i.i
  %i.jo = load i8, ptr %i.jn, align 1
  %i.jp = getelementptr inbounds nuw i8, ptr %i.ja, i64 %indvars.iv.next.i.i
  %i.jq = load i8, ptr %i.jp, align 1
  %i.jr = xor i8 %i.jq, %i.jo
  %i.js = zext i8 %i.jr to i64
  %i.jt = getelementptr inbounds nuw i8, ptr @pg_number_of_ones, i64 %i.js
  %i.ju = load i8, ptr %i.jt, align 1
  %i.jv = zext i8 %i.ju to i32
  %i.jw = add i32 %i.jm, %i.jv                    ; 3 uses
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter94.next.1 = add i64 %niter94, 2           ; 2 uses
  %niter94.ncmp.1 = icmp eq i64 %niter94.next.1, %unroll_iter93
  br i1 %niter94.ncmp.1, label %hemdist.exit.loopexit.unr-lcssa, label %.lr.ph.i.i37, !llvm.loop !34

hemdist.exit.loopexit.unr-lcssa:                  ; preds = %.lr.ph.i.i37
  %lcmp.mod90.not = icmp eq i64 %xtraiter88, 0
  br i1 %lcmp.mod90.not, label %hemdist.exit, label %.lr.ph.i.i37.epil.preheader

.lr.ph.i.i37.epil.preheader:                      ; preds = %hemdist.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i.1, %hemdist.exit.loopexit.unr-lcssa ] ; 2 uses
  %.011.i.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i.i ], [ %i.jw, %hemdist.exit.loopexit.unr-lcssa ]
  %lcmp.mod92 = trunc i32 %i.fj to i1
  tail call void @llvm.assume(i1 %lcmp.mod92)
  %i.jx = getelementptr inbounds nuw i8, ptr %i.u, i64 %indvars.iv.i.i.epil.init
  %i.jy = load i8, ptr %i.jx, align 1
  %i.jz = getelementptr inbounds nuw i8, ptr %i.ja, i64 %indvars.iv.i.i.epil.init
  %i.ka = load i8, ptr %i.jz, align 1
  %i.kb = xor i8 %i.ka, %i.jy
  %i.kc = zext i8 %i.kb to i64
  %i.kd = getelementptr inbounds nuw i8, ptr @pg_number_of_ones, i64 %i.kc
  %i.ke = load i8, ptr %i.kd, align 1
  %i.kf = zext i8 %i.ke to i32
  %i.kg = add i32 %.011.i.i.epil.init, %i.kf
  br label %hemdist.exit

hemdist.exit:                                     ; preds = %.lr.ph.i.i37.epil.preheader, %hemdist.exit.loopexit.unr-lcssa, %bb.l, %sizebitvec.exit.i, %sizebitvec.exit25.i, %bb.r
  %.0.i = phi i32 [ 0, %bb.l ], [ %i.hi, %sizebitvec.exit.i ], [ %i.iz, %sizebitvec.exit25.i ], [ 0, %bb.r ], [ %i.jw, %hemdist.exit.loopexit.unr-lcssa ], [ %i.kg, %.lr.ph.i.i37.epil.preheader ]
  %i.kh = sitofp i32 %.0.i to float
  store float %i.kh, ptr %i.i, align 4
  br label %bb.s

bb.s:                                             ; preds = %hemdist.exit, %hemdistsign.exit
  ret i64 %i.h
}

; Function Attrs: nounwind uwtable
define dso_local i64 @gtsvector_picksplit(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr                 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = inttoptr i64 %i.e to ptr                 ; 7 uses
  %i.g = load ptr, ptr %0, align 8
  %i.h = tail call zeroext i1 @has_fn_opclass_options(ptr noundef %i.g) #12
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8
  %i.j = tail call ptr @get_fn_opclass_options(ptr noundef %i.i) #12
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.l = load i32, ptr %i.k, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.m = phi i32 [ %i.l, %bb.b ], [ 124, %bb.a ]  ; 72 uses
  %i.n = load i32, ptr %i.c, align 8              ; 2 uses
  %i.o = add i32 %i.n, 65534                      ; 2 uses
  %i.p = and i32 %i.o, 65535                      ; 3 uses
  %i.q = add nuw nsw i32 %i.p, 2                  ; 4 uses
  %i.r = zext nneg i32 %i.q to i64
  %i.s = shl nuw nsw i32 %i.q, 1
  %i.t = zext nneg i32 %i.s to i64                ; 2 uses
  %i.u = tail call ptr @palloc(i64 noundef %i.t) #12
  store ptr %i.u, ptr %i.f, align 8
  %i.v = tail call ptr @palloc(i64 noundef %i.t) #12
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  store ptr %i.v, ptr %i.w, align 8
  %i.x = tail call ptr @palloc_mul(i64 noundef 16, i64 noundef %i.r) #12 ; 17 uses
  %i.y = mul i32 %i.q, %i.m
  %i.z = sext i32 %i.y to i64
  %i.aa = tail call ptr @palloc(i64 noundef %i.z) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.d
  %1 = phi i32 [ 0, %bb.c ], [ %4, %bb.d ]
  %.0210368 = phi i16 [ 0, %bb.c ], [ %3, %bb.d ] ; 2 uses
  %i.ab = mul i32 %1, %i.m
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds i8, ptr %i.aa, i64 %i.ac
  %2 = zext i16 %.0210368 to i64
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %2
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.ad, ptr %i.af, align 8
  %3 = add i16 %.0210368, 1                       ; 2 uses
  %4 = zext i16 %3 to i32                         ; 2 uses
  %i.ag = icmp samesign ugt i32 %i.q, %4
  br i1 %i.ag, label %bb.d, label %bb.e, !llvm.loop !38

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = inttoptr i64 %i.ak to ptr               ; 4 uses
  store i8 0, ptr %i.ah, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.an = load i32, ptr %i.am, align 4            ; 2 uses
  %i.ao = and i32 %i.an, 1
  %.not.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8            ; 5 uses
  %.val.i.i = load i32, ptr %i.al, align 4
  %i.ar = lshr i32 %.val.i.i, 2
  %i.as = zext nneg i32 %i.ar to i64              ; 2 uses
  %i.at = add nuw nsw i64 %i.as, 17179869176      ; 2 uses
  %i.au = lshr i64 %i.at, 2                       ; 3 uses
  %i.av = trunc i64 %i.au to i32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 3 uses
  %i.ax = sext i32 %i.m to i64                    ; 3 uses
  %i.ay = ptrtoint ptr %i.aq to i64               ; 4 uses
  %i.az = and i64 %i.ay, 7
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %bb.g, label %.loopexit.i.sink.split.i

bb.g:                                             ; preds = %bb.f
  %i.bb = and i32 %i.m, 7
  %i.bc = icmp eq i32 %i.bb, 0
  %i.bd = icmp ult i32 %i.m, 1025
  %or.cond3.i.i = and i1 %i.bd, %i.bc
  br i1 %or.cond3.i.i, label %bb.h, label %.loopexit.i.sink.split.i

bb.h:                                             ; preds = %bb.g
  %.not.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i, label %.loopexit.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.h
  %i.be = add i64 %i.ay, %i.ax
  %i.bf = add i64 %i.ay, 8
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %i.be, i64 %i.bf)
  %i.bg = xor i64 %i.ay, -1
  %i.bh = add i64 %umax.i.i, %i.bg
  %i.bi = and i64 %i.bh, -8
  %i.bj = add i64 %i.bi, 8
  br label %.loopexit.i.sink.split.i

.loopexit.i.sink.split.i:                         ; preds = %.lr.ph.preheader.i.i, %bb.g, %bb.f
  %.sink.i = phi i64 [ %i.bj, %.lr.ph.preheader.i.i ], [ %i.ax, %bb.g ], [ %i.ax, %bb.f ]
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.aq, i8 0, i64 %.sink.i, i1 false)
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.loopexit.i.sink.split.i, %bb.h
  %i.bk = icmp sgt i32 %i.av, 0
  br i1 %i.bk, label %.lr.ph33.i.i, label %fillcache.exit

.lr.ph33.i.i:                                     ; preds = %.loopexit.i.i
  %i.bl = shl i32 %i.m, 3                         ; 3 uses
  %i.bm = and i64 %i.at, 8589934588
  %i.bn = icmp eq i64 %i.bm, 4
  br i1 %i.bn, label %.epil.preheader, label %.lr.ph33.i.i.new

.lr.ph33.i.i.new:                                 ; preds = %.lr.ph33.i.i
  %unroll_iter = and i64 %i.au, 2147483646
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph33.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph33.i.i.new ], [ %indvars.iv.next.i.i.1, %bb.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph33.i.i.new ], [ %niter.next.1, %bb.i ]
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.i.i
  %i.bp = load i32, ptr %i.bo, align 4
  %i.bq = urem i32 %i.bp, %i.bl                   ; 2 uses
  %i.br = and i32 %i.bq, 7
  %i.bs = shl nuw nsw i32 1, %i.br
  %i.bt = lshr i32 %i.bq, 3
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bu ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 1
  %i.bx = trunc nuw i32 %i.bs to i8
  %i.by = or i8 %i.bw, %i.bx
  store i8 %i.by, ptr %i.bv, align 1
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.cb = load i32, ptr %i.ca, align 4
  %i.cc = urem i32 %i.cb, %i.bl                   ; 2 uses
  %i.cd = and i32 %i.cc, 7
  %i.ce = shl nuw nsw i32 1, %i.cd
  %i.cf = lshr i32 %i.cc, 3
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.cg ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 1
  %i.cj = trunc nuw i32 %i.ce to i8
  %i.ck = or i8 %i.ci, %i.cj
  store i8 %i.ck, ptr %i.ch, align 1
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %fillcache.exit.loopexit.unr-lcssa, label %bb.i, !llvm.loop !14

bb.j:                                             ; preds = %bb.e
  %i.cl = and i32 %i.an, 4
  %.not9.i = icmp eq i32 %i.cl, 0
  br i1 %.not9.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i8 1, ptr %i.ah, align 8
  br label %fillcache.exit

bb.l:                                             ; preds = %bb.j
  %i.cm = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.cp = sext i32 %i.m to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cn, ptr nonnull readonly align 1 %i.co, i64 %i.cp, i1 false)
  br label %fillcache.exit

fillcache.exit.loopexit.unr-lcssa:                ; preds = %bb.i
  %i.cq = and i64 %i.as, 4
  %lcmp.mod.not = icmp eq i64 %i.cq, 0
  br i1 %lcmp.mod.not, label %fillcache.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %fillcache.exit.loopexit.unr-lcssa, %.lr.ph33.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph33.i.i ], [ %indvars.iv.next.i.i.1, %fillcache.exit.loopexit.unr-lcssa ]
  %lcmp.mod536 = trunc i64 %i.au to i1
  tail call void @llvm.assume(i1 %lcmp.mod536)
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.i.i.epil.init
  %i.cs = load i32, ptr %i.cr, align 4
  %i.ct = urem i32 %i.cs, %i.bl                   ; 2 uses
  %i.cu = and i32 %i.ct, 7
  %i.cv = shl nuw nsw i32 1, %i.cu
  %i.cw = lshr i32 %i.ct, 3
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.cx ; 2 uses
  %i.cz = load i8, ptr %i.cy, align 1
  %i.da = trunc nuw i32 %i.cv to i8
  %i.db = or i8 %i.cz, %i.da
  store i8 %i.db, ptr %i.cy, align 1
  br label %fillcache.exit

fillcache.exit:                                   ; preds = %.epil.preheader, %fillcache.exit.loopexit.unr-lcssa, %.loopexit.i.i, %bb.k, %bb.l
  %i.dc = icmp samesign ugt i32 %i.p, 1
  br i1 %i.dc, label %.lr.ph380, label %._crit_edge

.lr.ph380:                                        ; preds = %fillcache.exit
  %i.dd = sext i32 %i.m to i64                    ; 3 uses
  %i.de = and i32 %i.m, 7
  %i.df = icmp ne i32 %i.de, 0
  %i.dg = icmp ugt i32 %i.m, 1024
  %or.cond3.i.i244.not404 = or i1 %i.dg, %i.df
  %.not.i.i245 = icmp eq i32 %i.m, 0              ; 3 uses
  %i.dh = shl i32 %i.m, 3                         ; 5 uses
  %i.di = icmp sgt i32 %i.m, 0
  %wide.trip.count.i.i251 = zext i32 %i.m to i64  ; 2 uses
  %i.dj = icmp slt i32 %i.m, 8                    ; 2 uses
  %wide.trip.count = zext nneg i32 %i.p to i64
  %i.dk = trunc i32 %i.o to i16
  %i.dl = add i32 %i.m, -1                        ; 2 uses
  %xtraiter543 = and i64 %wide.trip.count.i.i251, 1
  %i.dm = icmp eq i32 %i.m, 1
  %unroll_iter547 = and i64 %wide.trip.count.i.i251, 2147483646
  %lcmp.mod544.not = icmp eq i64 %xtraiter543, 0
  %lcmp.mod546 = trunc i32 %i.m to i1
  %xtraiter549 = and i32 %i.m, 3                  ; 3 uses
  %i.dn = icmp ult i32 %i.dl, 3
  %unroll_iter553 = and i32 %i.m, -4
  %lcmp.mod550.not = icmp eq i32 %xtraiter549, 0
  %lcmp.mod552 = icmp ne i32 %xtraiter549, 0
  %xtraiter555 = and i32 %i.m, 3                  ; 3 uses
  %i.do = icmp ult i32 %i.dl, 3
  %unroll_iter560 = and i32 %i.m, -4
  %lcmp.mod557.not = icmp eq i32 %xtraiter555, 0
  %lcmp.mod559 = icmp ne i32 %xtraiter555, 0
  br label %.lr.ph

.loopexit355:                                     ; preds = %hemdistcache.exit
  %exitcond.not = icmp eq i64 %indvars.iv.next420, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !39

.lr.ph:                                           ; preds = %.loopexit355, %.lr.ph380
  %indvars.iv419 = phi i64 [ 1, %.lr.ph380 ], [ %indvars.iv.next420, %.loopexit355 ] ; 4 uses
  %.0199379 = phi i16 [ 0, %.lr.ph380 ], [ %.2, %.loopexit355 ]
  %.0201378 = phi i16 [ 0, %.lr.ph380 ], [ %.2203, %.loopexit355 ]
  %.0205377 = phi i32 [ -1, %.lr.ph380 ], [ %.2207, %.loopexit355 ]
  %indvars.iv.next420 = add nuw nsw i64 %indvars.iv419, 1 ; 3 uses
  %i.dp = icmp eq i64 %indvars.iv419, 1
  %i.dq = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %indvars.iv419 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8 ; 2 uses
  %i.ds = trunc nuw i64 %indvars.iv.next420 to i16
  %i.dt = trunc nuw i64 %indvars.iv419 to i16
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %hemdistcache.exit
  %.1200373 = phi i16 [ %.0199379, %.lr.ph ], [ %.2, %hemdistcache.exit ]
  %.1202372 = phi i16 [ %.0201378, %.lr.ph ], [ %.2203, %hemdistcache.exit ]
  %.1206371 = phi i32 [ %.0205377, %.lr.ph ], [ %.2207, %hemdistcache.exit ] ; 2 uses
end_hunk_0
