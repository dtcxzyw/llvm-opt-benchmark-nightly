Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.117?download=true
inline.NumInlined: 249
inline.NumDeleted: 156
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_RINvNtNtCs4GWW6M5ZWyU_6brotli3enc7cluster22BrotliHistogramCombineNtNtB4_9histogram16HistogramCommandECsl8OoimOLbh_6qdrant:bb.a

.lr.ph149:                                        ; preds = %.lr.ph149.preheader, %.outer.loopexit
  %.sroa.0.0.ph155 = phi i64 [ %.sroa.0.0148, %.outer.loopexit ], [ %10, %.lr.ph149.preheader ] ; 3 uses
  %.sroa.09.0.ph154 = phi float [ f0x7E967699, %.outer.loopexit ], [ 0.000000e+00, %.lr.ph149.preheader ]
  %.sroa.010.0.ph153 = phi i64 [ %12, %.outer.loopexit ], [ 1, %.lr.ph149.preheader ] ; 2 uses
  %i.t = add i64 %.sroa.0.0.ph155, -1             ; 2 uses
  %i.u = add i64 %.sroa.0.0.ph155, -2
  br label %bb.b

bb.c:                                             ; preds = %.lr.ph149.lr.ph
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #19
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.v = load i32, ptr %8, align 4, !noundef !5   ; 13 uses
  %i.w = load i32, ptr %i.d, align 4, !noundef !5 ; 6 uses
  %i.x = zext i32 %i.v to i64                     ; 7 uses
  %i.y = zext i32 %i.w to i64                     ; 4 uses
  tail call void @_RINvNtNtCs4GWW6M5ZWyU_6brotli3enc9histogram25HistogramSelfAddHistogramNtB2_16HistogramCommandECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, i64 noundef %i.x, i64 noundef %i.y)
  %i.z = icmp samesign ugt i64 %1, %i.x
  br i1 %i.z, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.x, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #19
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw [2832 x i8], ptr %0, i64 %i.x
  %i.ab = load float, ptr %i.e, align 4, !noundef !5
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 2824
  store float %i.ab, ptr %i.ac, align 8, !alias.scope !117
  %i.ad = icmp samesign ugt i64 %3, %i.y
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ae = icmp samesign ugt i64 %3, %i.x
  br i1 %i.ae, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.y, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #19
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.y
  %i.ag = load i32, ptr %i.af, align 4, !noundef !5
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.x ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !noundef !5
  %i.aj = add i32 %i.ai, %i.ag
  store i32 %i.aj, ptr %i.ah, align 4
  br i1 %.not158, label %.preheader.preheader, label %.lr.ph138.preheader

.preheader.preheader:                             ; preds = %bb.ah, %bb.i
  br label %.preheader

.lr.ph138.preheader:                              ; preds = %bb.i
  br i1 %min.iters.check396, label %.lr.ph138.preheader421, label %vector.ph397

.lr.ph138.preheader421:                           ; preds = %pred.store.continue416, %.lr.ph138.preheader
  %.sroa.054.0137.ph = phi i64 [ 0, %.lr.ph138.preheader ], [ %n.vec398, %pred.store.continue416 ]
  br label %.lr.ph138

vector.ph397:                                     ; preds = %.lr.ph138.preheader
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.w, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body399

vector.body399:                                   ; preds = %pred.store.continue416, %vector.ph397
  %index400 = phi i64 [ 0, %vector.ph397 ], [ %index.next417, %pred.store.continue416 ] ; 9 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index400 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %wide.load401 = load <4 x i32>, ptr %i.ak, align 4
  %wide.load402 = load <4 x i32>, ptr %i.al, align 4
  %i.am = icmp eq <4 x i32> %wide.load401, %broadcast.splat ; 4 uses
  %i.an = icmp eq <4 x i32> %wide.load402, %broadcast.splat ; 4 uses
  %i.ao = extractelement <4 x i1> %i.am, i64 0
  br i1 %i.ao, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body399
  store i32 %i.v, ptr %i.ak, align 4
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body399
  %i.ap = extractelement <4 x i1> %i.am, i64 1
  br i1 %i.ap, label %pred.store.if403.a, label %pred.store.continue404.a

pred.store.if403.a:                               ; preds = %pred.store.continue
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index400
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  store i32 %i.v, ptr %i.ar, align 4
  br label %pred.store.continue404.a

pred.store.continue404.a:                         ; preds = %pred.store.if403.a, %pred.store.continue
  %i.as = extractelement <4 x i1> %i.am, i64 2
  br i1 %i.as, label %pred.store.if405.a, label %pred.store.continue406.a

pred.store.if405.a:                               ; preds = %pred.store.continue404.a
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index400
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i32 %i.v, ptr %i.au, align 4
  br label %pred.store.continue406.a

pred.store.continue406.a:                         ; preds = %pred.store.if405.a, %pred.store.continue404.a
  %i.av = extractelement <4 x i1> %i.am, i64 3
  br i1 %i.av, label %pred.store.if407.a, label %pred.store.continue408.a

pred.store.if407.a:                               ; preds = %pred.store.continue406.a
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index400
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  store i32 %i.v, ptr %i.ax, align 4
  br label %pred.store.continue408.a

pred.store.continue408.a:                         ; preds = %pred.store.if407.a, %pred.store.continue406.a
  %i.ay = extractelement <4 x i1> %i.an, i64 0
  br i1 %i.ay, label %pred.store.if409.a, label %pred.store.continue410.a

pred.store.if409.a:                               ; preds = %pred.store.continue408.a
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index400
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store i32 %i.v, ptr %i.ba, align 4
  br label %pred.store.continue410.a

pred.store.continue410.a:                         ; preds = %pred.store.if409.a, %pred.store.continue408.a
  %i.bb = extractelement <4 x i1> %i.an, i64 1
  br i1 %i.bb, label %pred.store.if411.a, label %pred.store.continue412.a

pred.store.if411.a:                               ; preds = %pred.store.continue410.a
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index400
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 20
  store i32 %i.v, ptr %i.bd, align 4
  br label %pred.store.continue412.a

pred.store.continue412.a:                         ; preds = %pred.store.if411.a, %pred.store.continue410.a
  %i.be = extractelement <4 x i1> %i.an, i64 2
  br i1 %i.be, label %pred.store.if413.a, label %pred.store.continue414.a

pred.store.if413.a:                               ; preds = %pred.store.continue412.a
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index400
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  store i32 %i.v, ptr %i.bg, align 4
  br label %pred.store.continue414.a

pred.store.continue414.a:                         ; preds = %pred.store.if413.a, %pred.store.continue412.a
  %i.bh = extractelement <4 x i1> %i.an, i64 3
  br i1 %i.bh, label %pred.store.if415, label %pred.store.continue416

pred.store.if415:                                 ; preds = %pred.store.continue414.a
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index400
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 28
  store i32 %i.v, ptr %i.bj, align 4
  br label %pred.store.continue416

pred.store.continue416:                           ; preds = %pred.store.if415, %pred.store.continue414.a
  %index.next417 = add nuw i64 %index400, 8       ; 2 uses
  %i.bk = icmp eq i64 %index.next417, %n.vec398
  br i1 %i.bk, label %.lr.ph138.preheader421, label %vector.body399, !llvm.loop !113

bb.j:                                             ; preds = %bb.g
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.x, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #19
  unreachable

.lr.ph138:                                        ; preds = %.lr.ph138.preheader421, %bb.ah
  %.sroa.054.0137 = phi i64 [ %i.bl, %bb.ah ], [ %.sroa.054.0137.ph, %.lr.ph138.preheader421 ] ; 3 uses
  %i.bl = add nuw nsw i64 %.sroa.054.0137, 1      ; 2 uses
  %exitcond224.not = icmp eq i64 %.sroa.054.0137, %5
  br i1 %exitcond224.not, label %bb.ag, label %bb.af

.preheader:                                       ; preds = %.preheader.preheader, %bb.m
  %indvars.iv228 = phi i64 [ %indvars.iv.next229, %bb.m ], [ %indvars.iv, %.preheader.preheader ] ; 2 uses
  %.sroa.014.0139 = phi i64 [ %.neg, %bb.m ], [ 0, %.preheader.preheader ] ; 7 uses
  %exitcond226.not = icmp eq i64 %.sroa.014.0139, %7
  br i1 %exitcond226.not, label %bb.l, label %bb.k

.loopexit79:                                      ; preds = %bb.m, %bb.ae, %bb.n
  %i.bm = add i64 %.sroa.0.0148, -1               ; 3 uses
  %i.bn = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %.not160 = icmp eq i64 %i.bn, 0
  br i1 %.not160, label %._crit_edge, label %.lr.ph144

bb.k:                                             ; preds = %.preheader
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.sroa.014.0139
  %i.bp = load i32, ptr %i.bo, align 4, !noundef !5
  %i.bq = icmp eq i32 %i.bp, %i.w
  %.neg = add nuw i64 %.sroa.014.0139, 1          ; 2 uses
  %.not159 = icmp eq i64 %.sroa.0.0148, %.neg     ; 2 uses
  br i1 %i.bq, label %bb.n, label %bb.m

bb.l:                                             ; preds = %.preheader
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %7, i64 noundef %7, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #19
  unreachable

bb.m:                                             ; preds = %bb.k
  %indvars.iv.next229 = add i64 %indvars.iv228, -1
  br i1 %.not159, label %.loopexit79, label %.preheader

bb.n:                                             ; preds = %bb.k
  br i1 %.not159, label %.loopexit79, label %.lr.ph141

.lr.ph141:                                        ; preds = %bb.n
  %i.br = add nuw nsw i64 %.sroa.014.0139, 1      ; 3 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.sroa.014.0139 ; 2 uses
  %15 = xor i64 %.sroa.014.0139, -1
  %i.bs = add i64 %indvar, %.sroa.014.0139
  %i.bt = sub i64 %i.u, %i.bs
  %i.bu = tail call i64 @llvm.umax.i64(i64 %7, i64 %i.br)
  %i.bv = add nsw i64 %i.bu, %15
  %i.bw = tail call i64 @llvm.umin.i64(i64 %i.bt, i64 %i.bv)
  %i.bx = add i64 %i.bw, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.bx, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph141
  %i.by = and i64 %i.bx, 7                        ; 2 uses
  %i.bz = icmp eq i64 %i.by, 0
  %i.ca = select i1 %i.bz, i64 8, i64 %i.by
  %n.vec = sub i64 %i.bx, %i.ca                   ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.br
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %index ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %wide.load = load <4 x i32>, ptr %i.cc, align 4
  %wide.load392 = load <4 x i32>, ptr %i.cd, align 4
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  store <4 x i32> %wide.load, ptr %i.ce, align 4
  store <4 x i32> %wide.load392, ptr %i.cf, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cg = icmp eq i64 %index.next, %n.vec
  br i1 %i.cg, label %scalar.ph.preheader, label %vector.body, !llvm.loop !114

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph141
  %.sroa.056.0140.ph = phi i64 [ 0, %.lr.ph141 ], [ %n.vec, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.ae
  %.sroa.056.0140 = phi i64 [ %i.df, %bb.ae ], [ %.sroa.056.0140.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ch = add nuw nsw i64 %i.br, %.sroa.056.0140  ; 3 uses
  %i.ci = icmp samesign ult i64 %i.ch, %7
  br i1 %i.ci, label %bb.ae, label %bb.ad

._crit_edge:                                      ; preds = %bb.ac, %.loopexit79
  %.sroa.027.0.lcssa = phi i64 [ 0, %.loopexit79 ], [ %.sroa.027.1, %bb.ac ]
  store i64 %.sroa.027.0.lcssa, ptr %i.b, align 8
  %.not161 = icmp eq i64 %i.bm, 0
  br i1 %.not161, label %.loopexit, label %.lr.ph147

.lr.ph144:                                        ; preds = %.loopexit79, %bb.ac
  %.sroa.014.1143 = phi i64 [ %i.de, %bb.ac ], [ 0, %.loopexit79 ] ; 3 uses
  %.sroa.027.0142 = phi i64 [ %.sroa.027.1, %bb.ac ], [ 0, %.loopexit79 ] ; 9 uses
  %exitcond233.not = icmp eq i64 %.sroa.014.1143, %9
  br i1 %exitcond233.not, label %bb.r, label %bb.q

.lr.ph147:                                        ; preds = %._crit_edge, %bb.o
  %.sroa.058.0145 = phi i64 [ %i.cj, %bb.o ], [ 0, %._crit_edge ] ; 3 uses
  %exitcond235.not = icmp eq i64 %.sroa.058.0145, %7
  br i1 %exitcond235.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph147
  %i.cj = add nuw nsw i64 %.sroa.058.0145, 1      ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.sroa.058.0145
  %i.cl = load i32, ptr %i.ck, align 4, !noundef !5
  call fastcc void @_RINvNtNtCs4GWW6M5ZWyU_6brotli3enc7cluster27BrotliCompareAndPushToQueueNtNtB4_9histogram16HistogramCommandECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef %3, i32 noundef %i.v, i32 noundef %i.cl, i64 noundef %13, ptr noalias nofree noundef nonnull %14, ptr noalias nofree noundef nonnull align 4 %8, i64 noundef %9, ptr noalias nofree noundef align 8 dereferenceable(8) %i.b)
  %exitcond236.not = icmp eq i64 %i.cj, %indvars.iv
  br i1 %exitcond236.not, label %.loopexit, label %.lr.ph147

bb.p:                                             ; preds = %.lr.ph147
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %7, i64 noundef %7, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #19
  unreachable

bb.q:                                             ; preds = %.lr.ph144
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.sroa.014.1143 ; 4 uses
  %.sroa.031.0.copyload = load i32, ptr %i.cm, align 4 ; 5 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 4 ; 5 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %.sroa.8.0.copyload = load i32, ptr %.sroa.8.0..sroa_idx, align 4 ; 2 uses
  %.sroa.842.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cm, i64 12
  %.sroa.842.0.copyload = load float, ptr %.sroa.842.0..sroa_idx, align 4 ; 4 uses
  %i.cn = icmp eq i32 %.sroa.031.0.copyload, %i.v
  br i1 %i.cn, label %bb.ac, label %bb.s

bb.r:                                             ; preds = %.lr.ph144
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %9, i64 noundef %9, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #19
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.co = icmp eq i32 %.sroa.7.0.copyload, %i.v
  %i.cp = icmp eq i32 %.sroa.031.0.copyload, %i.w
  %or.cond = or i1 %i.cp, %i.co
  %i.cq = icmp eq i32 %.sroa.7.0.copyload, %i.w
  %or.cond1 = or i1 %i.cq, %or.cond
  br i1 %or.cond1, label %bb.ac, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cr = load float, ptr %i.c, align 4, !noundef !5 ; 2 uses
  %i.cs = fcmp une float %i.cr, %.sroa.842.0.copyload
  br i1 %i.cs, label %.split, label %bb.u

.split:                                           ; preds = %bb.t
  %i.ct = fcmp ogt float %i.cr, %.sroa.842.0.copyload
  br i1 %i.ct, label %bb.w, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cu = load i32, ptr %i.d, align 4, !noundef !5
  %i.cv = load i32, ptr %8, align 4, !noundef !5
  %i.cw = sub i32 %i.cu, %i.cv
  %i.cx = sub i32 %.sroa.7.0.copyload, %.sroa.031.0.copyload
  %i.cy = icmp ugt i32 %i.cw, %i.cx
  br i1 %i.cy, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.split, %bb.u
  %i.cz = icmp ult i64 %.sroa.027.0142, %9
  br i1 %i.cz, label %bb.x, label %bb.y

bb.w:                                             ; preds = %.split, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %8, i64 16, i1 false)
  store i32 %.sroa.031.0.copyload, ptr %8, align 4
  store i32 %.sroa.7.0.copyload, ptr %i.d, align 4
  store i32 %.sroa.8.0.copyload, ptr %i.e, align 4
  store float %.sroa.842.0.copyload, ptr %i.c, align 4
  %i.da = icmp ult i64 %.sroa.027.0142, %9
  br i1 %i.da, label %bb.aa, label %bb.ab

bb.x:                                             ; preds = %bb.v
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.sroa.027.0142 ; 4 uses
  store i32 %.sroa.031.0.copyload, ptr %i.db, align 4
  %.sroa.7.0..sroa_idx34 = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  store i32 %.sroa.7.0.copyload, ptr %.sroa.7.0..sroa_idx34, align 4
  %.sroa.8.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store i32 %.sroa.8.0.copyload, ptr %.sroa.8.0..sroa_idx38, align 4
  %.sroa.842.0..sroa_idx43 = getelementptr inbounds nuw i8, ptr %i.db, i64 12
  store float %.sroa.842.0.copyload, ptr %.sroa.842.0..sroa_idx43, align 4
  br label %bb.z

bb.y:                                             ; preds = %bb.v
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.027.0142, i64 noundef %9, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #19
  unreachable

bb.z:                                             ; preds = %bb.aa, %bb.x
  %i.dc = add nuw i64 %.sroa.027.0142, 1
  br label %bb.ac

bb.aa:                                            ; preds = %bb.w
  %i.dd = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.sroa.027.0142
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.dd, ptr noundef nonnull align 4 dereferenceable(16) %i.a, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.z

bb.ab:                                            ; preds = %bb.w
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.027.0142, i64 noundef %9, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #19
  unreachable

bb.ac:                                            ; preds = %bb.q, %bb.s, %bb.z
  %.sroa.027.1 = phi i64 [ %i.dc, %bb.z ], [ %.sroa.027.0142, %bb.s ], [ %.sroa.027.0142, %bb.q ] ; 2 uses
  %i.de = add nuw nsw i64 %.sroa.014.1143, 1      ; 2 uses
  %exitcond234.not = icmp eq i64 %i.de, %i.bn
  br i1 %exitcond234.not, label %._crit_edge, label %.lr.ph144

bb.ad:                                            ; preds = %scalar.ph
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ch, i64 noundef %7, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #19
  unreachable

bb.ae:                                            ; preds = %scalar.ph
  %i.df = add nuw nsw i64 %.sroa.056.0140, 1      ; 2 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.ch
  %i.dh = load i32, ptr %i.dg, align 4, !noundef !5
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %.sroa.056.0140
  store i32 %i.dh, ptr %gep, align 4
  %exitcond232.not = icmp eq i64 %i.df, %indvars.iv228
  br i1 %exitcond232.not, label %.loopexit79, label %scalar.ph, !llvm.loop !115

bb.af:                                            ; preds = %.lr.ph138
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.sroa.054.0137 ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !noundef !5
  %i.dk = icmp eq i32 %i.dj, %i.w
  br i1 %i.dk, label %bb.ai, label %bb.ah

bb.ag:                                            ; preds = %.lr.ph138
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %5, i64 noundef %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #19
  unreachable

bb.ah:                                            ; preds = %bb.af, %bb.ai
  %exitcond225.not = icmp eq i64 %i.bl, %11
  br i1 %exitcond225.not, label %.preheader.preheader, label %.lr.ph138, !llvm.loop !116

bb.ai:                                            ; preds = %bb.af
  store i32 %i.v, ptr %i.di, align 4
  br label %bb.ah

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.ak
  %.sroa.052.0134 = phi i64 [ %i.dl, %bb.ak ], [ %i.l, %.lr.ph ] ; 3 uses
  %exitcond.not = icmp eq i64 %.sroa.052.0134, %7
  br i1 %exitcond.not, label %bb.al, label %bb.ak

bb.aj:                                            ; preds = %.lr.ph
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.050.0135, i64 noundef %7, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #19
  unreachable

bb.ak:                                            ; preds = %.lr.ph.split
  %i.dl = add i64 %.sroa.052.0134, 1              ; 2 uses
  %i.dm = load i32, ptr %i.o, align 4, !noundef !5
end_hunk_0
begin_hunk_1_@_RINvNtNtCs4GWW6M5ZWyU_6brotli3enc7cluster22BrotliHistogramCombineNtNtB4_9histogram16HistogramLiteralECsl8OoimOLbh_6qdrant:bb.a

.lr.ph149:                                        ; preds = %.lr.ph149.preheader, %.outer.loopexit
  %.sroa.0.0.ph155 = phi i64 [ %.sroa.0.0148, %.outer.loopexit ], [ %10, %.lr.ph149.preheader ] ; 3 uses
  %.sroa.09.0.ph154 = phi float [ f0x7E967699, %.outer.loopexit ], [ 0.000000e+00, %.lr.ph149.preheader ]
  %.sroa.010.0.ph153 = phi i64 [ %12, %.outer.loopexit ], [ 1, %.lr.ph149.preheader ] ; 2 uses
  %i.t = add i64 %.sroa.0.0.ph155, -1             ; 2 uses
  %i.u = add i64 %.sroa.0.0.ph155, -2
  br label %bb.b

bb.c:                                             ; preds = %.lr.ph149.lr.ph
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #19
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.v = load i32, ptr %8, align 4, !noundef !5   ; 13 uses
  %i.w = load i32, ptr %i.d, align 4, !noundef !5 ; 6 uses
  %i.x = zext i32 %i.v to i64                     ; 7 uses
  %i.y = zext i32 %i.w to i64                     ; 4 uses
  tail call void @_RINvNtNtCs4GWW6M5ZWyU_6brotli3enc9histogram25HistogramSelfAddHistogramNtB2_16HistogramLiteralECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, i64 noundef %i.x, i64 noundef %i.y)
  %i.z = icmp samesign ugt i64 %1, %i.x
  br i1 %i.z, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.x, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #19
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw [1040 x i8], ptr %0, i64 %i.x
  %i.ab = load float, ptr %i.e, align 4, !noundef !5
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 1032
  store float %i.ab, ptr %i.ac, align 8, !alias.scope !124
  %i.ad = icmp samesign ugt i64 %3, %i.y
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ae = icmp samesign ugt i64 %3, %i.x
  br i1 %i.ae, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.y, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #19
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.y
  %i.ag = load i32, ptr %i.af, align 4, !noundef !5
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.x ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !noundef !5
  %i.aj = add i32 %i.ai, %i.ag
  store i32 %i.aj, ptr %i.ah, align 4
  br i1 %.not158, label %.preheader.preheader, label %.lr.ph138.preheader

.preheader.preheader:                             ; preds = %bb.ah, %bb.i
  br label %.preheader

.lr.ph138.preheader:                              ; preds = %bb.i
  br i1 %min.iters.check396, label %.lr.ph138.preheader421, label %vector.ph397

.lr.ph138.preheader421:                           ; preds = %pred.store.continue416, %.lr.ph138.preheader
  %.sroa.054.0137.ph = phi i64 [ 0, %.lr.ph138.preheader ], [ %n.vec398, %pred.store.continue416 ]
  br label %.lr.ph138

vector.ph397:                                     ; preds = %.lr.ph138.preheader
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.w, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body399

vector.body399:                                   ; preds = %pred.store.continue416, %vector.ph397
  %index400 = phi i64 [ 0, %vector.ph397 ], [ %index.next417, %pred.store.continue416 ] ; 9 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index400 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %wide.load401 = load <4 x i32>, ptr %i.ak, align 4
  %wide.load402 = load <4 x i32>, ptr %i.al, align 4
  %i.am = icmp eq <4 x i32> %wide.load401, %broadcast.splat ; 4 uses
  %i.an = icmp eq <4 x i32> %wide.load402, %broadcast.splat ; 4 uses
  %i.ao = extractelement <4 x i1> %i.am, i64 0
  br i1 %i.ao, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body399
  store i32 %i.v, ptr %i.ak, align 4
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body399
  %i.ap = extractelement <4 x i1> %i.am, i64 1
  br i1 %i.ap, label %pred.store.if403.a, label %pred.store.continue404.a

pred.store.if403.a:                               ; preds = %pred.store.continue
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index400
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  store i32 %i.v, ptr %i.ar, align 4
  br label %pred.store.continue404.a

pred.store.continue404.a:                         ; preds = %pred.store.if403.a, %pred.store.continue
  %i.as = extractelement <4 x i1> %i.am, i64 2
  br i1 %i.as, label %pred.store.if405.a, label %pred.store.continue406.a

pred.store.if405.a:                               ; preds = %pred.store.continue404.a
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index400
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i32 %i.v, ptr %i.au, align 4
  br label %pred.store.continue406.a

pred.store.continue406.a:                         ; preds = %pred.store.if405.a, %pred.store.continue404.a
  %i.av = extractelement <4 x i1> %i.am, i64 3
  br i1 %i.av, label %pred.store.if407.a, label %pred.store.continue408.a

pred.store.if407.a:                               ; preds = %pred.store.continue406.a
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index400
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  store i32 %i.v, ptr %i.ax, align 4
  br label %pred.store.continue408.a

pred.store.continue408.a:                         ; preds = %pred.store.if407.a, %pred.store.continue406.a
  %i.ay = extractelement <4 x i1> %i.an, i64 0
  br i1 %i.ay, label %pred.store.if409.a, label %pred.store.continue410.a

pred.store.if409.a:                               ; preds = %pred.store.continue408.a
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index400
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store i32 %i.v, ptr %i.ba, align 4
  br label %pred.store.continue410.a

pred.store.continue410.a:                         ; preds = %pred.store.if409.a, %pred.store.continue408.a
  %i.bb = extractelement <4 x i1> %i.an, i64 1
  br i1 %i.bb, label %pred.store.if411.a, label %pred.store.continue412.a

pred.store.if411.a:                               ; preds = %pred.store.continue410.a
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index400
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 20
  store i32 %i.v, ptr %i.bd, align 4
  br label %pred.store.continue412.a

pred.store.continue412.a:                         ; preds = %pred.store.if411.a, %pred.store.continue410.a
  %i.be = extractelement <4 x i1> %i.an, i64 2
  br i1 %i.be, label %pred.store.if413.a, label %pred.store.continue414.a

pred.store.if413.a:                               ; preds = %pred.store.continue412.a
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index400
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  store i32 %i.v, ptr %i.bg, align 4
  br label %pred.store.continue414.a

pred.store.continue414.a:                         ; preds = %pred.store.if413.a, %pred.store.continue412.a
  %i.bh = extractelement <4 x i1> %i.an, i64 3
  br i1 %i.bh, label %pred.store.if415, label %pred.store.continue416

pred.store.if415:                                 ; preds = %pred.store.continue414.a
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index400
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 28
  store i32 %i.v, ptr %i.bj, align 4
  br label %pred.store.continue416

pred.store.continue416:                           ; preds = %pred.store.if415, %pred.store.continue414.a
  %index.next417 = add nuw i64 %index400, 8       ; 2 uses
  %i.bk = icmp eq i64 %index.next417, %n.vec398
  br i1 %i.bk, label %.lr.ph138.preheader421, label %vector.body399, !llvm.loop !120

bb.j:                                             ; preds = %bb.g
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.x, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #19
  unreachable

.lr.ph138:                                        ; preds = %.lr.ph138.preheader421, %bb.ah
  %.sroa.054.0137 = phi i64 [ %i.bl, %bb.ah ], [ %.sroa.054.0137.ph, %.lr.ph138.preheader421 ] ; 3 uses
  %i.bl = add nuw nsw i64 %.sroa.054.0137, 1      ; 2 uses
  %exitcond224.not = icmp eq i64 %.sroa.054.0137, %5
  br i1 %exitcond224.not, label %bb.ag, label %bb.af

.preheader:                                       ; preds = %.preheader.preheader, %bb.m
  %indvars.iv228 = phi i64 [ %indvars.iv.next229, %bb.m ], [ %indvars.iv, %.preheader.preheader ] ; 2 uses
  %.sroa.014.0139 = phi i64 [ %.neg, %bb.m ], [ 0, %.preheader.preheader ] ; 7 uses
  %exitcond226.not = icmp eq i64 %.sroa.014.0139, %7
  br i1 %exitcond226.not, label %bb.l, label %bb.k

.loopexit79:                                      ; preds = %bb.m, %bb.ae, %bb.n
  %i.bm = add i64 %.sroa.0.0148, -1               ; 3 uses
  %i.bn = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %.not160 = icmp eq i64 %i.bn, 0
  br i1 %.not160, label %._crit_edge, label %.lr.ph144

bb.k:                                             ; preds = %.preheader
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.sroa.014.0139
  %i.bp = load i32, ptr %i.bo, align 4, !noundef !5
  %i.bq = icmp eq i32 %i.bp, %i.w
  %.neg = add nuw i64 %.sroa.014.0139, 1          ; 2 uses
  %.not159 = icmp eq i64 %.sroa.0.0148, %.neg     ; 2 uses
  br i1 %i.bq, label %bb.n, label %bb.m

bb.l:                                             ; preds = %.preheader
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %7, i64 noundef %7, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #19
  unreachable

bb.m:                                             ; preds = %bb.k
  %indvars.iv.next229 = add i64 %indvars.iv228, -1
  br i1 %.not159, label %.loopexit79, label %.preheader

bb.n:                                             ; preds = %bb.k
  br i1 %.not159, label %.loopexit79, label %.lr.ph141

.lr.ph141:                                        ; preds = %bb.n
  %i.br = add nuw nsw i64 %.sroa.014.0139, 1      ; 3 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.sroa.014.0139 ; 2 uses
  %15 = xor i64 %.sroa.014.0139, -1
  %i.bs = add i64 %indvar, %.sroa.014.0139
  %i.bt = sub i64 %i.u, %i.bs
  %i.bu = tail call i64 @llvm.umax.i64(i64 %7, i64 %i.br)
  %i.bv = add nsw i64 %i.bu, %15
  %i.bw = tail call i64 @llvm.umin.i64(i64 %i.bt, i64 %i.bv)
  %i.bx = add i64 %i.bw, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.bx, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph141
  %i.by = and i64 %i.bx, 7                        ; 2 uses
  %i.bz = icmp eq i64 %i.by, 0
  %i.ca = select i1 %i.bz, i64 8, i64 %i.by
  %n.vec = sub i64 %i.bx, %i.ca                   ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.br
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %index ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %wide.load = load <4 x i32>, ptr %i.cc, align 4
  %wide.load392 = load <4 x i32>, ptr %i.cd, align 4
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  store <4 x i32> %wide.load, ptr %i.ce, align 4
  store <4 x i32> %wide.load392, ptr %i.cf, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cg = icmp eq i64 %index.next, %n.vec
  br i1 %i.cg, label %scalar.ph.preheader, label %vector.body, !llvm.loop !121

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph141
  %.sroa.056.0140.ph = phi i64 [ 0, %.lr.ph141 ], [ %n.vec, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.ae
  %.sroa.056.0140 = phi i64 [ %i.df, %bb.ae ], [ %.sroa.056.0140.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ch = add nuw nsw i64 %i.br, %.sroa.056.0140  ; 3 uses
  %i.ci = icmp samesign ult i64 %i.ch, %7
  br i1 %i.ci, label %bb.ae, label %bb.ad

._crit_edge:                                      ; preds = %bb.ac, %.loopexit79
  %.sroa.027.0.lcssa = phi i64 [ 0, %.loopexit79 ], [ %.sroa.027.1, %bb.ac ]
  store i64 %.sroa.027.0.lcssa, ptr %i.b, align 8
  %.not161 = icmp eq i64 %i.bm, 0
  br i1 %.not161, label %.loopexit, label %.lr.ph147

.lr.ph144:                                        ; preds = %.loopexit79, %bb.ac
  %.sroa.014.1143 = phi i64 [ %i.de, %bb.ac ], [ 0, %.loopexit79 ] ; 3 uses
  %.sroa.027.0142 = phi i64 [ %.sroa.027.1, %bb.ac ], [ 0, %.loopexit79 ] ; 9 uses
  %exitcond233.not = icmp eq i64 %.sroa.014.1143, %9
  br i1 %exitcond233.not, label %bb.r, label %bb.q

.lr.ph147:                                        ; preds = %._crit_edge, %bb.o
  %.sroa.058.0145 = phi i64 [ %i.cj, %bb.o ], [ 0, %._crit_edge ] ; 3 uses
  %exitcond235.not = icmp eq i64 %.sroa.058.0145, %7
  br i1 %exitcond235.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph147
  %i.cj = add nuw nsw i64 %.sroa.058.0145, 1      ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.sroa.058.0145
  %i.cl = load i32, ptr %i.ck, align 4, !noundef !5
  call fastcc void @_RINvNtNtCs4GWW6M5ZWyU_6brotli3enc7cluster27BrotliCompareAndPushToQueueNtNtB4_9histogram16HistogramLiteralECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef %3, i32 noundef %i.v, i32 noundef %i.cl, i64 noundef %13, ptr noalias nofree noundef nonnull %14, ptr noalias nofree noundef nonnull align 4 %8, i64 noundef %9, ptr noalias nofree noundef align 8 dereferenceable(8) %i.b)
  %exitcond236.not = icmp eq i64 %i.cj, %indvars.iv
  br i1 %exitcond236.not, label %.loopexit, label %.lr.ph147

bb.p:                                             ; preds = %.lr.ph147
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %7, i64 noundef %7, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #19
  unreachable

bb.q:                                             ; preds = %.lr.ph144
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.sroa.014.1143 ; 4 uses
  %.sroa.031.0.copyload = load i32, ptr %i.cm, align 4 ; 5 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 4 ; 5 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %.sroa.8.0.copyload = load i32, ptr %.sroa.8.0..sroa_idx, align 4 ; 2 uses
  %.sroa.842.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cm, i64 12
  %.sroa.842.0.copyload = load float, ptr %.sroa.842.0..sroa_idx, align 4 ; 4 uses
  %i.cn = icmp eq i32 %.sroa.031.0.copyload, %i.v
  br i1 %i.cn, label %bb.ac, label %bb.s

bb.r:                                             ; preds = %.lr.ph144
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %9, i64 noundef %9, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #19
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.co = icmp eq i32 %.sroa.7.0.copyload, %i.v
  %i.cp = icmp eq i32 %.sroa.031.0.copyload, %i.w
  %or.cond = or i1 %i.cp, %i.co
  %i.cq = icmp eq i32 %.sroa.7.0.copyload, %i.w
  %or.cond1 = or i1 %i.cq, %or.cond
  br i1 %or.cond1, label %bb.ac, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cr = load float, ptr %i.c, align 4, !noundef !5 ; 2 uses
  %i.cs = fcmp une float %i.cr, %.sroa.842.0.copyload
  br i1 %i.cs, label %.split, label %bb.u

.split:                                           ; preds = %bb.t
  %i.ct = fcmp ogt float %i.cr, %.sroa.842.0.copyload
  br i1 %i.ct, label %bb.w, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cu = load i32, ptr %i.d, align 4, !noundef !5
  %i.cv = load i32, ptr %8, align 4, !noundef !5
  %i.cw = sub i32 %i.cu, %i.cv
  %i.cx = sub i32 %.sroa.7.0.copyload, %.sroa.031.0.copyload
  %i.cy = icmp ugt i32 %i.cw, %i.cx
  br i1 %i.cy, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.split, %bb.u
  %i.cz = icmp ult i64 %.sroa.027.0142, %9
  br i1 %i.cz, label %bb.x, label %bb.y

bb.w:                                             ; preds = %.split, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %8, i64 16, i1 false)
  store i32 %.sroa.031.0.copyload, ptr %8, align 4
  store i32 %.sroa.7.0.copyload, ptr %i.d, align 4
  store i32 %.sroa.8.0.copyload, ptr %i.e, align 4
  store float %.sroa.842.0.copyload, ptr %i.c, align 4
  %i.da = icmp ult i64 %.sroa.027.0142, %9
  br i1 %i.da, label %bb.aa, label %bb.ab

bb.x:                                             ; preds = %bb.v
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.sroa.027.0142 ; 4 uses
  store i32 %.sroa.031.0.copyload, ptr %i.db, align 4
  %.sroa.7.0..sroa_idx34 = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  store i32 %.sroa.7.0.copyload, ptr %.sroa.7.0..sroa_idx34, align 4
  %.sroa.8.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store i32 %.sroa.8.0.copyload, ptr %.sroa.8.0..sroa_idx38, align 4
  %.sroa.842.0..sroa_idx43 = getelementptr inbounds nuw i8, ptr %i.db, i64 12
  store float %.sroa.842.0.copyload, ptr %.sroa.842.0..sroa_idx43, align 4
  br label %bb.z

bb.y:                                             ; preds = %bb.v
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.027.0142, i64 noundef %9, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #19
  unreachable

bb.z:                                             ; preds = %bb.aa, %bb.x
  %i.dc = add nuw i64 %.sroa.027.0142, 1
  br label %bb.ac

bb.aa:                                            ; preds = %bb.w
  %i.dd = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.sroa.027.0142
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.dd, ptr noundef nonnull align 4 dereferenceable(16) %i.a, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.z

bb.ab:                                            ; preds = %bb.w
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.027.0142, i64 noundef %9, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #19
  unreachable

bb.ac:                                            ; preds = %bb.q, %bb.s, %bb.z
  %.sroa.027.1 = phi i64 [ %i.dc, %bb.z ], [ %.sroa.027.0142, %bb.s ], [ %.sroa.027.0142, %bb.q ] ; 2 uses
  %i.de = add nuw nsw i64 %.sroa.014.1143, 1      ; 2 uses
  %exitcond234.not = icmp eq i64 %i.de, %i.bn
  br i1 %exitcond234.not, label %._crit_edge, label %.lr.ph144

bb.ad:                                            ; preds = %scalar.ph
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ch, i64 noundef %7, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #19
  unreachable

bb.ae:                                            ; preds = %scalar.ph
  %i.df = add nuw nsw i64 %.sroa.056.0140, 1      ; 2 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.ch
  %i.dh = load i32, ptr %i.dg, align 4, !noundef !5
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %.sroa.056.0140
  store i32 %i.dh, ptr %gep, align 4
  %exitcond232.not = icmp eq i64 %i.df, %indvars.iv228
  br i1 %exitcond232.not, label %.loopexit79, label %scalar.ph, !llvm.loop !122

bb.af:                                            ; preds = %.lr.ph138
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.sroa.054.0137 ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !noundef !5
  %i.dk = icmp eq i32 %i.dj, %i.w
  br i1 %i.dk, label %bb.ai, label %bb.ah

bb.ag:                                            ; preds = %.lr.ph138
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %5, i64 noundef %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #19
  unreachable

bb.ah:                                            ; preds = %bb.af, %bb.ai
  %exitcond225.not = icmp eq i64 %i.bl, %11
  br i1 %exitcond225.not, label %.preheader.preheader, label %.lr.ph138, !llvm.loop !123

bb.ai:                                            ; preds = %bb.af
  store i32 %i.v, ptr %i.di, align 4
  br label %bb.ah

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.ak
  %.sroa.052.0134 = phi i64 [ %i.dl, %bb.ak ], [ %i.l, %.lr.ph ] ; 3 uses
  %exitcond.not = icmp eq i64 %.sroa.052.0134, %7
  br i1 %exitcond.not, label %bb.al, label %bb.ak

bb.aj:                                            ; preds = %.lr.ph
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.050.0135, i64 noundef %7, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #19
  unreachable

bb.ak:                                            ; preds = %.lr.ph.split
  %i.dl = add i64 %.sroa.052.0134, 1              ; 2 uses
  %i.dm = load i32, ptr %i.o, align 4, !noundef !5
end_hunk_1
begin_hunk_2_@_RINvNtNtCs4GWW6M5ZWyU_6brotli3enc7cluster22BrotliHistogramCombineNtNtB4_9histogram17HistogramDistanceECsl8OoimOLbh_6qdrant:bb.a

.lr.ph149:                                        ; preds = %.lr.ph149.preheader, %.outer.loopexit
  %.sroa.0.0.ph155 = phi i64 [ %.sroa.0.0148, %.outer.loopexit ], [ %10, %.lr.ph149.preheader ] ; 3 uses
  %.sroa.09.0.ph154 = phi float [ f0x7E967699, %.outer.loopexit ], [ 0.000000e+00, %.lr.ph149.preheader ]
  %.sroa.010.0.ph153 = phi i64 [ %12, %.outer.loopexit ], [ 1, %.lr.ph149.preheader ] ; 2 uses
  %i.t = add i64 %.sroa.0.0.ph155, -1             ; 2 uses
  %i.u = add i64 %.sroa.0.0.ph155, -2
  br label %bb.b

bb.c:                                             ; preds = %.lr.ph149.lr.ph
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #19
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.v = load i32, ptr %8, align 4, !noundef !5   ; 13 uses
  %i.w = load i32, ptr %i.d, align 4, !noundef !5 ; 6 uses
  %i.x = zext i32 %i.v to i64                     ; 7 uses
  %i.y = zext i32 %i.w to i64                     ; 4 uses
  tail call void @_RINvNtNtCs4GWW6M5ZWyU_6brotli3enc9histogram25HistogramSelfAddHistogramNtB2_17HistogramDistanceECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, i64 noundef %i.x, i64 noundef %i.y)
  %i.z = icmp samesign ugt i64 %1, %i.x
  br i1 %i.z, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.x, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #19
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw [2192 x i8], ptr %0, i64 %i.x
  %i.ab = load float, ptr %i.e, align 4, !noundef !5
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 2184
  store float %i.ab, ptr %i.ac, align 8, !alias.scope !131
  %i.ad = icmp samesign ugt i64 %3, %i.y
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ae = icmp samesign ugt i64 %3, %i.x
  br i1 %i.ae, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.y, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #19
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.y
  %i.ag = load i32, ptr %i.af, align 4, !noundef !5
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.x ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !noundef !5
  %i.aj = add i32 %i.ai, %i.ag
  store i32 %i.aj, ptr %i.ah, align 4
  br i1 %.not158, label %.preheader.preheader, label %.lr.ph138.preheader

.preheader.preheader:                             ; preds = %bb.ah, %bb.i
  br label %.preheader

.lr.ph138.preheader:                              ; preds = %bb.i
  br i1 %min.iters.check396, label %.lr.ph138.preheader421, label %vector.ph397

.lr.ph138.preheader421:                           ; preds = %pred.store.continue416, %.lr.ph138.preheader
  %.sroa.054.0137.ph = phi i64 [ 0, %.lr.ph138.preheader ], [ %n.vec398, %pred.store.continue416 ]
  br label %.lr.ph138

vector.ph397:                                     ; preds = %.lr.ph138.preheader
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.w, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body399

vector.body399:                                   ; preds = %pred.store.continue416, %vector.ph397
  %index400 = phi i64 [ 0, %vector.ph397 ], [ %index.next417, %pred.store.continue416 ] ; 9 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index400 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %wide.load401 = load <4 x i32>, ptr %i.ak, align 4
  %wide.load402 = load <4 x i32>, ptr %i.al, align 4
  %i.am = icmp eq <4 x i32> %wide.load401, %broadcast.splat ; 4 uses
  %i.an = icmp eq <4 x i32> %wide.load402, %broadcast.splat ; 4 uses
  %i.ao = extractelement <4 x i1> %i.am, i64 0
  br i1 %i.ao, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body399
  store i32 %i.v, ptr %i.ak, align 4
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body399
  %i.ap = extractelement <4 x i1> %i.am, i64 1
  br i1 %i.ap, label %pred.store.if403.a, label %pred.store.continue404.a

pred.store.if403.a:                               ; preds = %pred.store.continue
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index400
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  store i32 %i.v, ptr %i.ar, align 4
  br label %pred.store.continue404.a

pred.store.continue404.a:                         ; preds = %pred.store.if403.a, %pred.store.continue
  %i.as = extractelement <4 x i1> %i.am, i64 2
  br i1 %i.as, label %pred.store.if405.a, label %pred.store.continue406.a

pred.store.if405.a:                               ; preds = %pred.store.continue404.a
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index400
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i32 %i.v, ptr %i.au, align 4
  br label %pred.store.continue406.a

pred.store.continue406.a:                         ; preds = %pred.store.if405.a, %pred.store.continue404.a
  %i.av = extractelement <4 x i1> %i.am, i64 3
  br i1 %i.av, label %pred.store.if407.a, label %pred.store.continue408.a

pred.store.if407.a:                               ; preds = %pred.store.continue406.a
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index400
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  store i32 %i.v, ptr %i.ax, align 4
  br label %pred.store.continue408.a

pred.store.continue408.a:                         ; preds = %pred.store.if407.a, %pred.store.continue406.a
  %i.ay = extractelement <4 x i1> %i.an, i64 0
  br i1 %i.ay, label %pred.store.if409.a, label %pred.store.continue410.a

pred.store.if409.a:                               ; preds = %pred.store.continue408.a
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index400
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store i32 %i.v, ptr %i.ba, align 4
  br label %pred.store.continue410.a

pred.store.continue410.a:                         ; preds = %pred.store.if409.a, %pred.store.continue408.a
  %i.bb = extractelement <4 x i1> %i.an, i64 1
  br i1 %i.bb, label %pred.store.if411.a, label %pred.store.continue412.a

pred.store.if411.a:                               ; preds = %pred.store.continue410.a
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index400
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 20
  store i32 %i.v, ptr %i.bd, align 4
  br label %pred.store.continue412.a

pred.store.continue412.a:                         ; preds = %pred.store.if411.a, %pred.store.continue410.a
  %i.be = extractelement <4 x i1> %i.an, i64 2
  br i1 %i.be, label %pred.store.if413.a, label %pred.store.continue414.a

pred.store.if413.a:                               ; preds = %pred.store.continue412.a
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index400
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  store i32 %i.v, ptr %i.bg, align 4
  br label %pred.store.continue414.a

pred.store.continue414.a:                         ; preds = %pred.store.if413.a, %pred.store.continue412.a
  %i.bh = extractelement <4 x i1> %i.an, i64 3
  br i1 %i.bh, label %pred.store.if415, label %pred.store.continue416

pred.store.if415:                                 ; preds = %pred.store.continue414.a
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index400
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 28
  store i32 %i.v, ptr %i.bj, align 4
  br label %pred.store.continue416

pred.store.continue416:                           ; preds = %pred.store.if415, %pred.store.continue414.a
  %index.next417 = add nuw i64 %index400, 8       ; 2 uses
  %i.bk = icmp eq i64 %index.next417, %n.vec398
  br i1 %i.bk, label %.lr.ph138.preheader421, label %vector.body399, !llvm.loop !127

bb.j:                                             ; preds = %bb.g
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.x, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #19
  unreachable

.lr.ph138:                                        ; preds = %.lr.ph138.preheader421, %bb.ah
  %.sroa.054.0137 = phi i64 [ %i.bl, %bb.ah ], [ %.sroa.054.0137.ph, %.lr.ph138.preheader421 ] ; 3 uses
  %i.bl = add nuw nsw i64 %.sroa.054.0137, 1      ; 2 uses
  %exitcond224.not = icmp eq i64 %.sroa.054.0137, %5
  br i1 %exitcond224.not, label %bb.ag, label %bb.af

.preheader:                                       ; preds = %.preheader.preheader, %bb.m
  %indvars.iv228 = phi i64 [ %indvars.iv.next229, %bb.m ], [ %indvars.iv, %.preheader.preheader ] ; 2 uses
  %.sroa.014.0139 = phi i64 [ %.neg, %bb.m ], [ 0, %.preheader.preheader ] ; 7 uses
  %exitcond226.not = icmp eq i64 %.sroa.014.0139, %7
  br i1 %exitcond226.not, label %bb.l, label %bb.k

.loopexit79:                                      ; preds = %bb.m, %bb.ae, %bb.n
  %i.bm = add i64 %.sroa.0.0148, -1               ; 3 uses
  %i.bn = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %.not160 = icmp eq i64 %i.bn, 0
  br i1 %.not160, label %._crit_edge, label %.lr.ph144

bb.k:                                             ; preds = %.preheader
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.sroa.014.0139
  %i.bp = load i32, ptr %i.bo, align 4, !noundef !5
  %i.bq = icmp eq i32 %i.bp, %i.w
  %.neg = add nuw i64 %.sroa.014.0139, 1          ; 2 uses
  %.not159 = icmp eq i64 %.sroa.0.0148, %.neg     ; 2 uses
  br i1 %i.bq, label %bb.n, label %bb.m

bb.l:                                             ; preds = %.preheader
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %7, i64 noundef %7, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #19
  unreachable

bb.m:                                             ; preds = %bb.k
  %indvars.iv.next229 = add i64 %indvars.iv228, -1
  br i1 %.not159, label %.loopexit79, label %.preheader

bb.n:                                             ; preds = %bb.k
  br i1 %.not159, label %.loopexit79, label %.lr.ph141

.lr.ph141:                                        ; preds = %bb.n
  %i.br = add nuw nsw i64 %.sroa.014.0139, 1      ; 3 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.sroa.014.0139 ; 2 uses
  %15 = xor i64 %.sroa.014.0139, -1
  %i.bs = add i64 %indvar, %.sroa.014.0139
  %i.bt = sub i64 %i.u, %i.bs
  %i.bu = tail call i64 @llvm.umax.i64(i64 %7, i64 %i.br)
  %i.bv = add nsw i64 %i.bu, %15
  %i.bw = tail call i64 @llvm.umin.i64(i64 %i.bt, i64 %i.bv)
  %i.bx = add i64 %i.bw, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.bx, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph141
  %i.by = and i64 %i.bx, 7                        ; 2 uses
  %i.bz = icmp eq i64 %i.by, 0
  %i.ca = select i1 %i.bz, i64 8, i64 %i.by
  %n.vec = sub i64 %i.bx, %i.ca                   ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.br
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %index ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %wide.load = load <4 x i32>, ptr %i.cc, align 4
  %wide.load392 = load <4 x i32>, ptr %i.cd, align 4
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  store <4 x i32> %wide.load, ptr %i.ce, align 4
  store <4 x i32> %wide.load392, ptr %i.cf, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cg = icmp eq i64 %index.next, %n.vec
  br i1 %i.cg, label %scalar.ph.preheader, label %vector.body, !llvm.loop !128

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph141
  %.sroa.056.0140.ph = phi i64 [ 0, %.lr.ph141 ], [ %n.vec, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.ae
  %.sroa.056.0140 = phi i64 [ %i.df, %bb.ae ], [ %.sroa.056.0140.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ch = add nuw nsw i64 %i.br, %.sroa.056.0140  ; 3 uses
  %i.ci = icmp samesign ult i64 %i.ch, %7
  br i1 %i.ci, label %bb.ae, label %bb.ad

._crit_edge:                                      ; preds = %bb.ac, %.loopexit79
  %.sroa.027.0.lcssa = phi i64 [ 0, %.loopexit79 ], [ %.sroa.027.1, %bb.ac ]
  store i64 %.sroa.027.0.lcssa, ptr %i.b, align 8
  %.not161 = icmp eq i64 %i.bm, 0
  br i1 %.not161, label %.loopexit, label %.lr.ph147

.lr.ph144:                                        ; preds = %.loopexit79, %bb.ac
  %.sroa.014.1143 = phi i64 [ %i.de, %bb.ac ], [ 0, %.loopexit79 ] ; 3 uses
  %.sroa.027.0142 = phi i64 [ %.sroa.027.1, %bb.ac ], [ 0, %.loopexit79 ] ; 9 uses
  %exitcond233.not = icmp eq i64 %.sroa.014.1143, %9
  br i1 %exitcond233.not, label %bb.r, label %bb.q

.lr.ph147:                                        ; preds = %._crit_edge, %bb.o
  %.sroa.058.0145 = phi i64 [ %i.cj, %bb.o ], [ 0, %._crit_edge ] ; 3 uses
  %exitcond235.not = icmp eq i64 %.sroa.058.0145, %7
  br i1 %exitcond235.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph147
  %i.cj = add nuw nsw i64 %.sroa.058.0145, 1      ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.sroa.058.0145
  %i.cl = load i32, ptr %i.ck, align 4, !noundef !5
  call fastcc void @_RINvNtNtCs4GWW6M5ZWyU_6brotli3enc7cluster27BrotliCompareAndPushToQueueNtNtB4_9histogram17HistogramDistanceECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef %3, i32 noundef %i.v, i32 noundef %i.cl, i64 noundef %13, ptr noalias nofree noundef nonnull %14, ptr noalias nofree noundef nonnull align 4 %8, i64 noundef %9, ptr noalias nofree noundef align 8 dereferenceable(8) %i.b)
  %exitcond236.not = icmp eq i64 %i.cj, %indvars.iv
  br i1 %exitcond236.not, label %.loopexit, label %.lr.ph147

bb.p:                                             ; preds = %.lr.ph147
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %7, i64 noundef %7, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #19
  unreachable

bb.q:                                             ; preds = %.lr.ph144
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.sroa.014.1143 ; 4 uses
  %.sroa.031.0.copyload = load i32, ptr %i.cm, align 4 ; 5 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 4 ; 5 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %.sroa.8.0.copyload = load i32, ptr %.sroa.8.0..sroa_idx, align 4 ; 2 uses
  %.sroa.842.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cm, i64 12
  %.sroa.842.0.copyload = load float, ptr %.sroa.842.0..sroa_idx, align 4 ; 4 uses
  %i.cn = icmp eq i32 %.sroa.031.0.copyload, %i.v
  br i1 %i.cn, label %bb.ac, label %bb.s

bb.r:                                             ; preds = %.lr.ph144
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %9, i64 noundef %9, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #19
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.co = icmp eq i32 %.sroa.7.0.copyload, %i.v
  %i.cp = icmp eq i32 %.sroa.031.0.copyload, %i.w
  %or.cond = or i1 %i.cp, %i.co
  %i.cq = icmp eq i32 %.sroa.7.0.copyload, %i.w
  %or.cond1 = or i1 %i.cq, %or.cond
  br i1 %or.cond1, label %bb.ac, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cr = load float, ptr %i.c, align 4, !noundef !5 ; 2 uses
  %i.cs = fcmp une float %i.cr, %.sroa.842.0.copyload
  br i1 %i.cs, label %.split, label %bb.u

.split:                                           ; preds = %bb.t
  %i.ct = fcmp ogt float %i.cr, %.sroa.842.0.copyload
  br i1 %i.ct, label %bb.w, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cu = load i32, ptr %i.d, align 4, !noundef !5
  %i.cv = load i32, ptr %8, align 4, !noundef !5
  %i.cw = sub i32 %i.cu, %i.cv
  %i.cx = sub i32 %.sroa.7.0.copyload, %.sroa.031.0.copyload
  %i.cy = icmp ugt i32 %i.cw, %i.cx
  br i1 %i.cy, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.split, %bb.u
  %i.cz = icmp ult i64 %.sroa.027.0142, %9
  br i1 %i.cz, label %bb.x, label %bb.y

bb.w:                                             ; preds = %.split, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %8, i64 16, i1 false)
  store i32 %.sroa.031.0.copyload, ptr %8, align 4
  store i32 %.sroa.7.0.copyload, ptr %i.d, align 4
  store i32 %.sroa.8.0.copyload, ptr %i.e, align 4
  store float %.sroa.842.0.copyload, ptr %i.c, align 4
  %i.da = icmp ult i64 %.sroa.027.0142, %9
  br i1 %i.da, label %bb.aa, label %bb.ab

bb.x:                                             ; preds = %bb.v
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.sroa.027.0142 ; 4 uses
  store i32 %.sroa.031.0.copyload, ptr %i.db, align 4
  %.sroa.7.0..sroa_idx34 = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  store i32 %.sroa.7.0.copyload, ptr %.sroa.7.0..sroa_idx34, align 4
  %.sroa.8.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store i32 %.sroa.8.0.copyload, ptr %.sroa.8.0..sroa_idx38, align 4
  %.sroa.842.0..sroa_idx43 = getelementptr inbounds nuw i8, ptr %i.db, i64 12
  store float %.sroa.842.0.copyload, ptr %.sroa.842.0..sroa_idx43, align 4
  br label %bb.z

bb.y:                                             ; preds = %bb.v
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.027.0142, i64 noundef %9, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #19
  unreachable

bb.z:                                             ; preds = %bb.aa, %bb.x
  %i.dc = add nuw i64 %.sroa.027.0142, 1
  br label %bb.ac

bb.aa:                                            ; preds = %bb.w
  %i.dd = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %.sroa.027.0142
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.dd, ptr noundef nonnull align 4 dereferenceable(16) %i.a, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.z

bb.ab:                                            ; preds = %bb.w
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.027.0142, i64 noundef %9, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #19
  unreachable

bb.ac:                                            ; preds = %bb.q, %bb.s, %bb.z
  %.sroa.027.1 = phi i64 [ %i.dc, %bb.z ], [ %.sroa.027.0142, %bb.s ], [ %.sroa.027.0142, %bb.q ] ; 2 uses
  %i.de = add nuw nsw i64 %.sroa.014.1143, 1      ; 2 uses
  %exitcond234.not = icmp eq i64 %i.de, %i.bn
  br i1 %exitcond234.not, label %._crit_edge, label %.lr.ph144

bb.ad:                                            ; preds = %scalar.ph
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ch, i64 noundef %7, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #19
  unreachable

bb.ae:                                            ; preds = %scalar.ph
  %i.df = add nuw nsw i64 %.sroa.056.0140, 1      ; 2 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.ch
  %i.dh = load i32, ptr %i.dg, align 4, !noundef !5
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %.sroa.056.0140
  store i32 %i.dh, ptr %gep, align 4
  %exitcond232.not = icmp eq i64 %i.df, %indvars.iv228
  br i1 %exitcond232.not, label %.loopexit79, label %scalar.ph, !llvm.loop !129

bb.af:                                            ; preds = %.lr.ph138
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.sroa.054.0137 ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !noundef !5
  %i.dk = icmp eq i32 %i.dj, %i.w
  br i1 %i.dk, label %bb.ai, label %bb.ah

bb.ag:                                            ; preds = %.lr.ph138
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %5, i64 noundef %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #19
  unreachable

bb.ah:                                            ; preds = %bb.af, %bb.ai
  %exitcond225.not = icmp eq i64 %i.bl, %11
  br i1 %exitcond225.not, label %.preheader.preheader, label %.lr.ph138, !llvm.loop !130

bb.ai:                                            ; preds = %bb.af
  store i32 %i.v, ptr %i.di, align 4
  br label %bb.ah

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.ak
  %.sroa.052.0134 = phi i64 [ %i.dl, %bb.ak ], [ %i.l, %.lr.ph ] ; 3 uses
  %exitcond.not = icmp eq i64 %.sroa.052.0134, %7
  br i1 %exitcond.not, label %bb.al, label %bb.ak

bb.aj:                                            ; preds = %.lr.ph
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.050.0135, i64 noundef %7, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #19
  unreachable

bb.ak:                                            ; preds = %.lr.ph.split
  %i.dl = add i64 %.sroa.052.0134, 1              ; 2 uses
  %i.dm = load i32, ptr %i.o, align 4, !noundef !5
end_hunk_2
