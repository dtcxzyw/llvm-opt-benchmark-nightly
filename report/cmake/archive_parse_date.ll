inline.NumInlined: 13
inline.NumDeleted: 11
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@archive_parse_date:bb.a
  %.sroa.31.0.lcssa500555 = phi i32 [ %i.om, %.thread303 ], [ 0, %.loopexit ]
  %.sroa.52.0.lcssa501553 = phi i32 [ %i.ol, %.thread303 ], [ 0, %.loopexit ]
  %.sroa.73.0.lcssa502551 = phi i32 [ %.sroa.73.3, %.thread303 ], [ 0, %.loopexit ]
  %.sroa.79.0.lcssa503549 = phi i32 [ %.sroa.79.5, %.thread303 ], [ 0, %.loopexit ]
  %.sroa.88.0.lcssa504547 = phi i32 [ %.sroa.88.3, %.thread303 ], [ 0, %.loopexit ]
  %.sroa.99.0.lcssa505545 = phi i1 [ %i.on, %.thread303 ], [ true, %.loopexit ]
  %.sroa.139.0.lcssa506543 = phi i64 [ %.sroa.139.7, %.thread303 ], [ 0, %.loopexit ]
  %.sroa.147.0.lcssa507541 = phi i64 [ %.sroa.147.5, %.thread303 ], [ 0, %.loopexit ]
  %.sroa.165.0.lcssa508539 = phi i64 [ %.sroa.165.5, %.thread303 ], [ 0, %.loopexit ]
  %.sroa.189190.0.lcssa509537 = phi i64 [ %.sroa.189190.3, %.thread303 ], [ 0, %.loopexit ]
  %.sroa.192.0.lcssa510535 = phi i64 [ %.sroa.192.3, %.thread303 ], [ 0, %.loopexit ]
  %.sroa.195.0.lcssa511533 = phi i64 [ %.sroa.195.2, %.thread303 ], [ 0, %.loopexit ]
  %.sroa.206.0.lcssa512531 = phi i64 [ %.sroa.206.2, %.thread303 ], [ 0, %.loopexit ]
  %i.ot = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.ou = load i32, ptr %i.ot, align 4, !tbaa !19
  %i.ov = add nsw i32 %i.ou, 1900
  %i.ow = sext i32 %i.ov to i64
  store i64 %i.ow, ptr %.sroa.171, align 8, !tbaa !43
  br label %bb.ck

bb.ck:                                            ; preds = %.thread303.thread, %.thread303
  %.sroa.117184.1307560 = phi i64 [ %.sroa.117184.1307561, %.thread303.thread ], [ %.sroa.117184.1307, %.thread303 ] ; 3 uses
  %.sroa.181.1308558 = phi i32 [ %.sroa.181.1308559, %.thread303.thread ], [ %.sroa.181.1308, %.thread303 ] ; 2 uses
  %.sroa.14.0.lcssa499556 = phi i32 [ 0, %.thread303.thread ], [ %.sroa.14.3, %.thread303 ] ; 2 uses
  %.sroa.31.0.lcssa500554 = phi i32 [ %.sroa.31.0.lcssa500555, %.thread303.thread ], [ %i.om, %.thread303 ] ; 3 uses
  %.sroa.52.0.lcssa501552 = phi i32 [ %.sroa.52.0.lcssa501553, %.thread303.thread ], [ %i.ol, %.thread303 ] ; 3 uses
  %.sroa.73.0.lcssa502550 = phi i32 [ %.sroa.73.0.lcssa502551, %.thread303.thread ], [ %.sroa.73.3, %.thread303 ] ; 3 uses
  %.sroa.79.0.lcssa503548 = phi i32 [ %.sroa.79.0.lcssa503549, %.thread303.thread ], [ %.sroa.79.5, %.thread303 ] ; 2 uses
  %.sroa.88.0.lcssa504546 = phi i32 [ %.sroa.88.0.lcssa504547, %.thread303.thread ], [ %.sroa.88.3, %.thread303 ]
  %.sroa.99.0.lcssa505544 = phi i1 [ %.sroa.99.0.lcssa505545, %.thread303.thread ], [ %i.on, %.thread303 ]
  %.sroa.139.0.lcssa506542 = phi i64 [ %.sroa.139.0.lcssa506543, %.thread303.thread ], [ %.sroa.139.7, %.thread303 ]
  %.sroa.147.0.lcssa507540 = phi i64 [ %.sroa.147.0.lcssa507541, %.thread303.thread ], [ %.sroa.147.5, %.thread303 ]
  %.sroa.165.0.lcssa508538 = phi i64 [ %.sroa.165.0.lcssa508539, %.thread303.thread ], [ %.sroa.165.5, %.thread303 ]
  %.sroa.189190.0.lcssa509536 = phi i64 [ %.sroa.189190.0.lcssa509537, %.thread303.thread ], [ %.sroa.189190.3, %.thread303 ]
  %.sroa.192.0.lcssa510534 = phi i64 [ %.sroa.192.0.lcssa510535, %.thread303.thread ], [ %.sroa.192.3, %.thread303 ]
  %.sroa.195.0.lcssa511532 = phi i64 [ %.sroa.195.0.lcssa511533, %.thread303.thread ], [ %.sroa.195.2, %.thread303 ]
  %.sroa.206.0.lcssa512530 = phi i64 [ %.sroa.206.0.lcssa512531, %.thread303.thread ], [ %.sroa.206.2, %.thread303 ]
  %.not85 = icmp eq i32 %.sroa.31.0.lcssa500554, 0
  br i1 %.not85, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.ox = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.oy = load i32, ptr %i.ox, align 8, !tbaa !51
  %i.oz = add nsw i32 %i.oy, 1
  %i.pa = sext i32 %i.oz to i64
  store i64 %i.pa, ptr %.sroa.153, align 8, !tbaa !46
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %.not86 = icmp eq i32 %.sroa.52.0.lcssa501552, 0
  br i1 %.not86, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.pb = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.pc = load i32, ptr %i.pb, align 4, !tbaa !52
  %i.pd = sext i32 %i.pc to i64
  store i64 %i.pd, ptr %.sroa.127, align 8, !tbaa !47
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %i.pe = icmp sgt i32 %.sroa.79.0.lcssa503548, 1
  %i.pf = icmp sgt i32 %.sroa.88.0.lcssa504546, 1
  %or.cond101 = or i1 %i.pe, %i.pf
  %i.pg = icmp sgt i32 %.sroa.73.0.lcssa502550, 1
  %or.cond315 = select i1 %or.cond101, i1 true, i1 %i.pg
  %i.ph = icmp sgt i32 %.sroa.14.0.lcssa499556, 1
  %or.cond316 = select i1 %or.cond315, i1 true, i1 %i.ph
  %i.pi = icmp sgt i32 %.sroa.31.0.lcssa500554, 1
  %or.cond317 = or i1 %or.cond316, %i.pi
  %i.pj = icmp sgt i32 %.sroa.52.0.lcssa501552, 1
  %or.cond318 = select i1 %or.cond317, i1 true, i1 %i.pj
  br i1 %or.cond318, label %parse_unix_epoch.exit, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.pk = or i32 %.sroa.31.0.lcssa500554, %.sroa.14.0.lcssa499556
  %i.pl = or i32 %i.pk, %.sroa.52.0.lcssa501552   ; 2 uses
  %i.pm = or i32 %i.pl, %.sroa.73.0.lcssa502550
  %i.pn = or i32 %i.pm, %.sroa.79.0.lcssa503548
  %or.cond105 = icmp eq i32 %i.pn, 0
  br i1 %or.cond105, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %.sroa.153.0..sroa.153.0..sroa.153.0..sroa.153.72. = load i64, ptr %.sroa.153, align 8, !tbaa !46
  %.sroa.127.0..sroa.127.0..sroa.127.0..sroa.127.48. = load i64, ptr %.sroa.127, align 8, !tbaa !47
  %.sroa.171.0..sroa.171.0..sroa.171.0..sroa.171.88. = load i64, ptr %.sroa.171, align 8, !tbaa !43
  %i.po = call fastcc i64 @Convert(i64 noundef %.sroa.153.0..sroa.153.0..sroa.153.0..sroa.153.72., i64 noundef %.sroa.127.0..sroa.127.0..sroa.127.0..sroa.127.48., i64 noundef %.sroa.171.0..sroa.171.0..sroa.171.0..sroa.171.88., i64 noundef %.sroa.139.0.lcssa506542, i64 noundef %.sroa.147.0.lcssa507540, i64 noundef %.sroa.165.0.lcssa508538, i64 noundef %.sroa.117184.1307560, i32 noundef %.sroa.181.1308558) ; 2 uses
  %i.pp = icmp slt i64 %i.po, 0
  br i1 %i.pp, label %parse_unix_epoch.exit, label %bb.ct

bb.cr:                                            ; preds = %bb.cp
  %i.pq = load i64, ptr %i.b, align 8, !tbaa !9   ; 2 uses
  br i1 %.sroa.99.0.lcssa505544, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.pr = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ps = load i32, ptr %i.pr, align 8, !tbaa !23
  %i.pt = sext i32 %i.ps to i64
  %i.pu = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !24
  %i.pw = sext i32 %i.pv to i64
  %i.px = load i32, ptr %3, align 8, !tbaa !25
  %i.py = sext i32 %i.px to i64
  %.neg328 = mul nsw i64 %i.pt, -3600
  %.neg329 = mul nsw i64 %i.pw, -60
  %.neg330 = add i64 %.neg328, %i.pq
  %.neg331 = add i64 %.neg330, %.neg329
  %i.pz = sub i64 %.neg331, %i.py
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cr, %bb.cs, %bb.cq
  %.070 = phi i64 [ %i.po, %bb.cq ], [ %i.pq, %bb.cr ], [ %i.pz, %bb.cs ]
  %i.qa = add nsw i64 %.070, %.sroa.206.0.lcssa512530 ; 2 uses
  %i.qb = call fastcc i64 @RelativeMonth(i64 noundef %i.qa, i64 noundef %.sroa.117184.1307560, i64 noundef %.sroa.195.0.lcssa511532)
  %i.qc = add nsw i64 %i.qa, %i.qb                ; 3 uses
  %.not95 = icmp ne i32 %.sroa.73.0.lcssa502550, 0
  %i.qd = icmp eq i32 %i.pl, 0
  %or.cond108 = and i1 %.not95, %i.qd
  br i1 %or.cond108, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.qe = call fastcc i64 @RelativeDate(i64 noundef %i.qc, i64 noundef %.sroa.117184.1307560, i32 noundef %.sroa.181.1308558, i64 noundef %.sroa.189190.0.lcssa509536, i64 noundef %.sroa.192.0.lcssa510534)
  %i.qf = add nsw i64 %i.qe, %i.qc
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %.171 = phi i64 [ %i.qc, %bb.ct ], [ %i.qf, %bb.cu ] ; 2 uses
  %i.qg = icmp eq i64 %.171, -1
  %i.qh = select i1 %i.qg, i64 0, i64 %.171
  br label %parse_unix_epoch.exit

parse_unix_epoch.exit:                            ; preds = %bb.y, %bb.bm, %bb.bp, %bb.bn, %bb.bq, %.lr.ph, %bb.bc, %bb.cf, %consume_unsigned_number.exit.i, %bb.b, %bb.cq, %bb.co, %bb.c, %bb.cv
  %.069 = phi i64 [ -1, %bb.cq ], [ %i.qh, %bb.cv ], [ -1, %bb.c ], [ -1, %bb.bm ], [ -1, %bb.b ], [ -1, %bb.co ], [ %spec.select.i, %consume_unsigned_number.exit.i ], [ -1, %bb.cf ], [ -1, %bb.bc ], [ -1, %.lr.ph ], [ -1, %bb.bq ], [ -1, %bb.bn ], [ -1, %bb.bp ], [ -1, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.127)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.153)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.171)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  ret i64 %.069
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nounwind
declare ptr @localtime_r(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare ptr @gmtime_r(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define internal fastcc i64 @Convert(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i32 noundef %7) unnamed_addr #0 {
bb.a:
  %i.a = alloca [12 x i8], align 1                ; 14 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %8 = alloca %struct.tm, align 8                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @__const.Convert.DaysInMonth, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  %i.c = icmp slt i64 %2, 69
  %i.d = add nsw i64 %2, 2000
  %i.e = icmp samesign ult i64 %2, 100
  %i.f = add nuw nsw i64 %2, 1900
  %spec.select = select i1 %i.e, i64 %i.f, i64 %2
  %.053 = select i1 %i.c, i64 %i.d, i64 %spec.select ; 7 uses
  %i.g = and i64 %.053, 3
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = srem i64 %.053, 100
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = srem i64 %.053, 400
  %i.k = icmp eq i64 %i.j, 0
  %i.l = select i1 %i.k, i8 29, i8 28
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.m = phi i8 [ 28, %bb.a ], [ 29, %bb.b ], [ %i.l, %bb.c ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.m, ptr %i.n, align 1, !tbaa !11
  %i.o = icmp slt i64 %.053, 1970
  %i.p = add i64 %0, -13
  %i.q = icmp ult i64 %i.p, -12
  %or.cond3 = or i1 %i.q, %i.o
  %i.r = icmp slt i64 %1, 1
  %or.cond5 = or i1 %i.r, %or.cond3
  br i1 %or.cond5, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = add nsw i64 %0, -1                       ; 3 uses
  %9 = getelementptr i8, ptr %i.a, i64 %0
  %i.t = getelementptr i8, ptr %9, i64 -1
  %i.u = load i8, ptr %i.t, align 1, !tbaa !11
  %i.v = sext i8 %i.u to i64
  %i.w = icmp sgt i64 %1, %i.v
  %i.x = icmp ugt i64 %3, 23
  %or.cond9 = or i1 %i.x, %i.w
  %i.y = icmp ugt i64 %4, 59
  %or.cond13 = or i1 %i.y, %or.cond9
  %i.z = icmp ugt i64 %5, 59
  %or.cond17 = or i1 %i.z, %or.cond13
  br i1 %or.cond17, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = add nsw i64 %1, -1                      ; 3 uses
  %.not68 = icmp eq i64 %i.s, 0
  br i1 %.not68, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.ab = add nsw i64 %0, -2
  %xtraiter = and i64 %i.s, 7                     ; 3 uses
  %i.ac = icmp ult i64 %i.ab, 7
  br i1 %i.ac, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.s, -8
  br label %.lr.ph

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.7, %.preheader.loopexit.unr-lcssa ]
  %.epil.init = phi i64 [ %i.aa, %.lr.ph.preheader ], [ %i.cj, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod92 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod92)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %.lr.ph.epil ], [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %i.ad = phi i64 [ %i.ah, %.lr.ph.epil ], [ %.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.epil
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !11
  %i.ag = sext i8 %i.af to i64
  %i.ah = add nsw i64 %i.ad, %i.ag                ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader, label %.lr.ph.epil, !llvm.loop !53

.preheader:                                       ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph.epil, %bb.f
  %.lcssa = phi i64 [ %i.aa, %bb.f ], [ %i.cj, %.preheader.loopexit.unr-lcssa ], [ %i.ah, %.lr.ph.epil ] ; 3 uses
  %i.ai = icmp samesign ugt i64 %.053, 1970
  br i1 %i.ai, label %.lr.ph66.preheader, label %._crit_edge

.lr.ph66.preheader:                               ; preds = %.preheader
  %i.aj = add nsw i64 %.053, -1970                ; 3 uses
  %min.iters.check = icmp ult i64 %i.aj, 4
  br i1 %min.iters.check, label %.lr.ph66.preheader86, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph66.preheader
  %n.vec = and i64 %i.aj, -4                      ; 3 uses
  %i.ak = add i64 %n.vec, 1970
  %i.al = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.lcssa, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <2 x i64> [ <i64 1970, i64 1971>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ %i.al, %vector.ph ], [ %i.as, %vector.body ]
  %vec.phi85 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.at, %vector.body ]
  %i.am = and <2 x i64> %vec.ind, splat (i64 3)
  %i.an = and <2 x i64> %vec.ind, splat (i64 3)
  %i.ao = icmp eq <2 x i64> %i.am, zeroinitializer
  %i.ap = icmp eq <2 x i64> %i.an, splat (i64 2)
  %i.aq = select <2 x i1> %i.ao, <2 x i64> splat (i64 366), <2 x i64> splat (i64 365)
  %i.ar = select <2 x i1> %i.ap, <2 x i64> splat (i64 366), <2 x i64> splat (i64 365)
  %i.as = add <2 x i64> %vec.phi, %i.aq           ; 2 uses
  %i.at = add <2 x i64> %vec.phi85, %i.ar         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 4)
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !55

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.at, %i.as
  %i.av = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.aj, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph66.preheader86

.lr.ph66.preheader86:                             ; preds = %.lr.ph66.preheader, %middle.block
  %indvars.iv72.ph = phi i64 [ 1970, %.lr.ph66.preheader ], [ %i.ak, %middle.block ]
  %.ph = phi i64 [ %.lcssa, %.lr.ph66.preheader ], [ %i.av, %middle.block ]
  br label %.lr.ph66

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.7, %.lr.ph ] ; 9 uses
  %i.aw = phi i64 [ %i.aa, %.lr.ph.preheader.new ], [ %i.cj, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !11
  %i.az = sext i8 %i.ay to i64
  %i.ba = add nsw i64 %i.aw, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !11
  %i.be = sext i8 %i.bd to i64
  %i.bf = add nsw i64 %i.ba, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 2
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !11
  %i.bj = sext i8 %i.bi to i64
  %i.bk = add nsw i64 %i.bf, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 3
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !11
  %i.bo = sext i8 %i.bn to i64
  %i.bp = add nsw i64 %i.bk, %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !11
  %i.bt = sext i8 %i.bs to i64
  %i.bu = add nsw i64 %i.bp, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 5
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !11
  %i.by = sext i8 %i.bx to i64
  %i.bz = add nsw i64 %i.bu, %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 6
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !11
  %i.cd = sext i8 %i.cc to i64
  %i.ce = add nsw i64 %i.bz, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 7
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !11
  %i.ci = sext i8 %i.ch to i64
  %i.cj = add nsw i64 %i.ce, %i.ci                ; 3 uses
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.preheader.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !58

.lr.ph66:                                         ; preds = %.lr.ph66.preheader86, %.lr.ph66
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %.lr.ph66 ], [ %indvars.iv72.ph, %.lr.ph66.preheader86 ] ; 2 uses
  %i.ck = phi i64 [ %i.co, %.lr.ph66 ], [ %.ph, %.lr.ph66.preheader86 ]
  %i.cl = and i64 %indvars.iv72, 3
  %i.cm = icmp eq i64 %i.cl, 0
  %i.cn = select i1 %i.cm, i64 366, i64 365
  %i.co = add nsw i64 %i.ck, %i.cn                ; 2 uses
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1 ; 2 uses
  %exitcond75.not = icmp eq i64 %indvars.iv.next73, %.053
  br i1 %exitcond75.not, label %._crit_edge, label %.lr.ph66, !llvm.loop !59

._crit_edge:                                      ; preds = %.lr.ph66, %middle.block, %.preheader
  %.lcssa64 = phi i64 [ %.lcssa, %.preheader ], [ %i.av, %middle.block ], [ %i.co, %.lr.ph66 ]
  %i.cp = mul nsw i64 %.lcssa64, 86400
  %i.cq = mul nuw nsw i64 %3, 3600
  %i.cr = mul nuw nsw i64 %4, 60
  %i.cs = add nuw nsw i64 %i.cr, %i.cq
  %i.ct = add nuw nsw i64 %i.cs, %5
  %i.cu = add i64 %i.ct, %6
  %i.cv = add i64 %i.cu, %i.cp
  store i64 %i.cv, ptr %i.b, align 8, !tbaa !9
  %i.cw = call ptr @localtime_r(ptr noundef nonnull %i.b, ptr noundef nonnull %8) #8
  switch i32 %7, label %bb.i [
    i32 0, label %bb.h
    i32 2, label %bb.g
  ]

bb.g:                                             ; preds = %._crit_edge
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !26
  %.not61 = icmp eq i32 %i.cy, 0
  br i1 %.not61, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.g
  %i.cz = load i64, ptr %i.b, align 8, !tbaa !9
  %i.da = add nsw i64 %i.cz, -3600
  store i64 %i.da, ptr %i.b, align 8, !tbaa !9
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.h, %bb.g
  %i.db = load i64, ptr %i.b, align 8, !tbaa !9
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.e, %bb.i
  %.0 = phi i64 [ %i.db, %bb.i ], [ -1, %bb.e ], [ -1, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @RelativeMonth(i64 noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %3 = alloca %struct.tm, align 8                 ; 4 uses
end_hunk_0
