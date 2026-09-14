Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ropey-rs/original/ropey-993bb32e63343616.ropey.1d6c3238c2c56af2-cgu.1?download=true
inline.NumInlined: 1161
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 31
begin_hunk_0_@_RNvMs4_NtCs2wCc12Mnjqg_5ropey4iterNtB5_5Lines17new_with_range_at:bb.a

.split.i:                                         ; preds = %bb.av
  %i.ic = icmp ne i64 %.sroa.0439.0.lcssa, %i.ia
  %.not = icmp eq ptr %i.hz, null
  %or.cond470 = select i1 %i.ic, i1 true, i1 %.not, !prof !19
  br i1 %or.cond470, label %.thread458, label %.thread461, !prof !19

bb.aw:                                            ; preds = %bb.av
  %i.id = getelementptr inbounds nuw i8, ptr %i.hz, i64 %.sroa.0439.0.lcssa
  %i.ie = load i8, ptr %i.id, align 1, !alias.scope !160, !noundef !5
  %i.if = icmp sgt i8 %i.ie, -65
  br i1 %i.if, label %.thread461, label %.thread458

bb.ax:                                            ; preds = %bb.au
  %.not.old = icmp eq ptr %i.hz, null
  br i1 %.not.old, label %.thread458, label %.thread461, !prof !20

.thread461:                                       ; preds = %.split.i, %bb.aw, %bb.ax
  %i.ig = invoke fastcc noundef i64 @_RNvNtCsk17MtNlfUKQ_11str_indices5lines13from_byte_idx(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hz, i64 noundef %.sroa.0439.0.lcssa, i64 noundef %.sroa.0439.0.lcssa)
          to label %bb.az unwind label %bb.aq

.thread458:                                       ; preds = %.split.i, %bb.aw, %bb.ax
  invoke void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hz, i64 noundef %i.ia, i64 noundef 0, i64 noundef %.sroa.0439.0.lcssa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #16
          to label %bb.ay unwind label %bb.aq

bb.ay:                                            ; preds = %bb.bg, %.thread458
  unreachable

bb.az:                                            ; preds = %.thread461
  %i.ih = icmp ugt i64 %.sroa.0435.0.lcssa, %i.ig
  %i.ii = zext i1 %i.ih to i8
  br label %bb.at

bb.ba:                                            ; preds = %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread, %bb.at, %bb.c
  ret void

bb.bb:                                            ; preds = %bb.bi, %bb.aq
  %i.ij = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB3_12NodeChildren9search_byNCNvMs4_NtB7_4iterNtB1m_5Lines17new_with_range_at0EB7_.exit: ; preds = %.noexc20.thread451, %.lr.ph, %bb.k, %bb.j
  %.sroa.015.0.i.lcssa = phi i64 [ 0, %bb.j ], [ %.sroa.015.0.i495, %bb.k ], [ %.sroa.015.0.i495, %.lr.ph ], [ %i.as, %.noexc20.thread451 ] ; 4 uses
  %.sroa.9.0.i.lcssa = phi i64 [ 0, %bb.j ], [ %.sroa.9.0.i496, %bb.k ], [ %.sroa.9.0.i496, %.lr.ph ], [ %i.bb, %.noexc20.thread451 ]
  %.sroa.0.0.i.lcssa = phi i64 [ 0, %bb.j ], [ %.sroa.0.0.i497, %bb.k ], [ %.sroa.0.0.i497, %.lr.ph ], [ %i.ba, %.noexc20.thread451 ] ; 3 uses
  %i.ik = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0445510, i64 %.sroa.0.0.i.lcssa) ; 2 uses
  %i.il = sub i64 %.sroa.0439.0508, %.sroa.0.0.i.lcssa ; 2 uses
  %i.im = sub i64 %.sroa.0435.0509, %.sroa.9.0.i.lcssa ; 2 uses
  %i.in = add i64 %.sroa.0.0.i.lcssa, %.sroa.05.0511 ; 2 uses
  %i.io = load i64, ptr %i.o, align 8, !alias.scope !161, !noalias !162, !noundef !5 ; 3 uses
  %i.ip = load i64, ptr %i.b, align 8, !range !21, !alias.scope !161, !noalias !162, !noundef !5
  %i.iq = icmp eq i64 %i.io, %i.ip
  br i1 %i.iq, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %_RINvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB3_12NodeChildren9search_byNCNvMs4_NtB7_4iterNtB1m_5Lines17new_with_range_at0EB7_.exit
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTRINtNtB7_4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEjEE8grow_oneB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #19
          to label %bb.bd unwind label %.loopexit473

bb.bd:                                            ; preds = %_RINvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB3_12NodeChildren9search_byNCNvMs4_NtB7_4iterNtB1m_5Lines17new_with_range_at0EB7_.exit, %bb.bc
  %i.ir = load ptr, ptr %i.n, align 8, !alias.scope !161, !noalias !162, !nonnull !5, !noundef !5
  %i.is = getelementptr inbounds nuw [16 x i8], ptr %i.ir, i64 %i.io ; 2 uses
  store ptr %.sroa.0.0512, ptr %i.is, align 8, !noalias !162
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  store i64 %.sroa.015.0.i.lcssa, ptr %i.it, align 8
  %i.iu = add i64 %i.io, 1
  store i64 %i.iu, ptr %i.o, align 8, !alias.scope !161, !noalias !162
  %i.iv = invoke { ptr, i64 } @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren5nodes(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(968) %i.ag)
          to label %bb.be unwind label %.loopexit473 ; 2 uses

bb.be:                                            ; preds = %bb.bd
  %i.iw = extractvalue { ptr, i64 } %i.iv, 1      ; 2 uses
  %i.ix = icmp ult i64 %.sroa.015.0.i.lcssa, %i.iw
  br i1 %i.ix, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.iy = extractvalue { ptr, i64 } %i.iv, 0
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %.sroa.015.0.i.lcssa ; 2 uses
  %i.ja = load ptr, ptr %i.iz, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 16
  %i.jc = load i8, ptr %i.jb, align 8, !range !6, !noundef !5
  %i.jd = trunc nuw i8 %i.jc to i1
  br i1 %i.jd, label %.lr.ph513, label %._crit_edge

bb.bg:                                            ; preds = %bb.be
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.015.0.i.lcssa, i64 noundef %i.iw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #16
          to label %bb.ay unwind label %.loopexit.split-lp

bb.bh:                                            ; preds = %bb.aq, %bb.bi
  %.pn455 = phi { ptr, i32 } [ %lpad.phi, %bb.bi ], [ %i.hl, %bb.aq ]
  resume { ptr, i32 } %.pn455

.loopexit473:                                     ; preds = %bb.bd, %.lr.ph513, %bb.bc
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

.loopexit.split-lp:                               ; preds = %.invoke, %._crit_edge, %bb.bg
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.bi:                                            ; preds = %.loopexit.split-lp, %.loopexit473
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit473 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTRINtNtBG_4sync3ArcNtNtNtCs2wCc12Mnjqg_5ropey4tree4node4NodeEjEEEB1x_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #15
          to label %bb.bh unwind label %bb.bb

_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread448: ; preds = %bb.i, %bb.e, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef %i.t, i64 noundef %3, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #17
  unreachable

_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread: ; preds = %bb.h, %bb.f, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit
  %i.je = sub nuw i64 %4, %3
  %i.jf = getelementptr inbounds nuw i8, ptr %i.s, i64 %3
  %i.jg = sub i64 %2, %5
  tail call void @_RNvMs4_NtCs2wCc12Mnjqg_5ropey4iterNtB5_5Lines11from_str_at(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.jf, i64 noundef %i.je, i64 noundef %i.jg, i64 noundef %i.c)
  br label %bb.ba
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs4_NtCs2wCc12Mnjqg_5ropey4iterNtB5_5Lines9next_impl(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(88) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  %i.c = alloca [48 x i8], align 8                ; 9 uses
  %i.d = alloca [48 x i8], align 8                ; 9 uses
  %i.e = alloca [32 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = load i64, ptr %1, align 8, !range !4, !noundef !5
  %i.h = icmp eq i64 %i.g, -1
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !5, !noundef !5 ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.l = load i64, ptr %i.k, align 8, !noundef !5 ; 12 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 81 ; 3 uses
  %i.n = load i8, ptr %i.m, align 1, !range !6, !noundef !5
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.ek, label %bb.ev

bb.c:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load i64, ptr %i.p, align 8, !noundef !5 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 81 ; 5 uses
  %i.s = load i8, ptr %i.r, align 1, !range !6, !noundef !5
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.ek, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 6 uses
  %i.v = load i64, ptr %i.u, align 8, !noundef !5 ; 5 uses
  %i.w = icmp eq i64 %i.v, %i.q
  br i1 %i.w, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !noundef !5
  %i.z = add i64 %i.y, 1
  store i64 %i.z, ptr %i.x, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !5 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.af = load i32, ptr %i.ae, align 8, !noundef !5 ; 4 uses
  %i.ag = zext i32 %i.af to i64                   ; 6 uses
  %i.ah = icmp eq i32 %i.af, 0
  br i1 %i.ah, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not.i627 = icmp ugt i64 %i.ad, %i.ag
  br i1 %.not.i627, label %bb.g, label %.split.i

.split.i:                                         ; preds = %bb.f
  %i.ai = icmp eq i64 %i.ad, %i.ag
  br i1 %i.ai, label %bb.i, label %bb.bb

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ag
  %i.ak = load i8, ptr %i.aj, align 1, !alias.scope !266, !noundef !5
  %i.al = icmp sgt i8 %i.ak, -65
  br i1 %i.al, label %bb.i, label %bb.bb

bb.h:                                             ; preds = %bb.d
  store i8 1, ptr %i.r, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !noundef !5
  %i.ao = add i64 %i.an, 1
  store i64 %i.ao, ptr %i.am, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.ap, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.53.0..sroa_idx, i8 0, i64 32, i1 false)
  br label %bb.ek

bb.i:                                             ; preds = %bb.g, %.split.i, %bb.e
  %i.aq = sub nuw i64 %i.ad, %i.ag                ; 31 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ag ; 31 uses
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = sub i64 0, %i.as
  %i.au = and i64 %i.at, 15                       ; 2 uses
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.aq, i64 %i.au) ; 2 uses
  %.not.i200 = icmp eq i64 %..i, 0
  br i1 %.not.i200, label %bb.j, label %.preheader1745

bb.j:                                             ; preds = %bb.u, %bb.i
  %.pre-phi2177 = phi i64 [ %.pre2176, %bb.u ], [ %i.au, %bb.i ]
  %.sroa.18.0.i201 = phi i64 [ %i.bx, %bb.u ], [ %i.aq, %bb.i ] ; 4 uses
  %.sroa.07.0.i202 = phi ptr [ %i.by, %bb.u ], [ %i.ar, %bb.i ] ; 2 uses
  %.sroa.03.0.i203 = phi i64 [ %.sroa.012.1.i2422280, %bb.u ], [ 0, %bb.i ] ; 2 uses
  %..i629 = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.18.0.i201, i64 %.pre-phi2177)
  %i.av = icmp eq i64 %..i629, 0
  %i.aw = icmp ugt i64 %.sroa.18.0.i201, 15
  %or.cond2037 = and i1 %i.av, %i.aw
  br i1 %or.cond2037, label %.lr.ph, label %.loopexit1744

.preheader1745:                                   ; preds = %bb.i, %bb.r
  %.sroa.0.0.i2401832 = phi i64 [ %i.bp, %bb.r ], [ 0, %bb.i ] ; 7 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.0.0.i2401832 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 1, !alias.scope !267, !noundef !5 ; 3 uses
  %i.az = add i8 %i.ay, -10
  %spec.select.i630 = icmp ult i8 %i.az, 4
  br i1 %spec.select.i630, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.preheader1745
  switch i8 %i.ay, label %bb.r [
    i8 -62, label %bb.m
    i8 -30, label %bb.o
  ]

bb.l:                                             ; preds = %.preheader1745
  %i.ba = icmp eq i8 %i.ay, 13
  br i1 %i.ba, label %bb.s, label %.thread2276

bb.m:                                             ; preds = %bb.k
  %i.bb = add nuw nsw i64 %.sroa.0.0.i2401832, 1  ; 2 uses
  %i.bc = icmp samesign ult i64 %i.bb, %i.aq
  br i1 %i.bc, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.bb
  %i.be = load i8, ptr %i.bd, align 1, !alias.scope !267, !noundef !5
  %i.bf = icmp eq i8 %i.be, -123
  br label %bb.r

bb.o:                                             ; preds = %bb.k
  %i.bg = add nuw nsw i64 %.sroa.0.0.i2401832, 2  ; 2 uses
  %i.bh = icmp ult i64 %i.bg, %i.aq
  br i1 %i.bh, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  %i.bj = load i8, ptr %i.bi, align 1, !alias.scope !267, !noundef !5
  %i.bk = icmp eq i8 %i.bj, -128
  br i1 %i.bk, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.bg
  %i.bm = load i8, ptr %i.bl, align 1, !alias.scope !267, !noundef !5
  %.mask.i243 = and i8 %i.bm, -2
  %i.bn = icmp eq i8 %.mask.i243, -88
  br label %bb.r

.thread2276:                                      ; preds = %bb.s, %bb.l
  %i.bo = add nuw nsw i64 %.sroa.0.0.i2401832, 1
  br label %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit246

bb.r:                                             ; preds = %bb.n, %bb.m, %bb.t, %bb.q, %bb.p, %bb.o, %bb.k
  %.sroa.012.1.i242.shrunk = phi i1 [ false, %bb.o ], [ %i.bv, %bb.t ], [ false, %bb.p ], [ %i.bf, %bb.n ], [ false, %bb.m ], [ false, %bb.k ], [ %i.bn, %bb.q ] ; 2 uses
  %i.bp = add nuw nsw i64 %.sroa.0.0.i2401832, 1  ; 3 uses
  %i.bq = icmp samesign uge i64 %i.bp, %..i
  %or.cond.i241.not = or i1 %i.bq, %.sroa.012.1.i242.shrunk
  br i1 %or.cond.i241.not, label %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit246.loopexit, label %.preheader1745

bb.s:                                             ; preds = %bb.l
  %i.br = add nuw nsw i64 %.sroa.0.0.i2401832, 1  ; 2 uses
  %i.bs = icmp samesign ult i64 %i.br, %i.aq
  br i1 %i.bs, label %bb.t, label %.thread2276

bb.t:                                             ; preds = %bb.s
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.br
  %i.bu = load i8, ptr %i.bt, align 1, !alias.scope !267, !noundef !5
  %i.bv = icmp ne i8 %i.bu, 10
  br label %bb.r

_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit246.loopexit: ; preds = %bb.r
  %.sroa.012.1.i242.le = zext i1 %.sroa.012.1.i242.shrunk to i64
  br label %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit246

_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit246: ; preds = %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit246.loopexit, %.thread2276
  %i.bw = phi i64 [ %i.bo, %.thread2276 ], [ %i.bp, %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit246.loopexit ] ; 3 uses
  %.sroa.012.1.i2422280 = phi i64 [ 1, %.thread2276 ], [ %.sroa.012.1.i242.le, %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit246.loopexit ]
  %.not2040 = icmp ult i64 %.sroa.0.0.i2401832, %i.aq
  br i1 %.not2040, label %bb.u, label %bb.v, !prof !22

bb.u:                                             ; preds = %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit246
  %i.bx = sub nuw i64 %i.aq, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.bw ; 2 uses
  %.pre2172 = ptrtoint ptr %i.by to i64
  %.pre2174 = sub i64 0, %.pre2172
  %.pre2176 = and i64 %.pre2174, 15
  br label %bb.j

bb.v:                                             ; preds = %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit246
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.bw, i64 noundef %i.aq, i64 noundef %i.aq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #17
  unreachable

.lr.ph:                                           ; preds = %bb.j, %bb.an
  %.sroa.03.1.i2131835 = phi i64 [ 0, %bb.an ], [ %.sroa.03.0.i203, %bb.j ] ; 2 uses
  %.sroa.07.1.i2121834 = phi ptr [ %i.ew, %bb.an ], [ %.sroa.07.0.i202, %bb.j ] ; 8 uses
  %.sroa.18.1.i2111833 = phi i64 [ %i.ev, %bb.an ], [ %.sroa.18.0.i201, %bb.j ] ; 6 uses
  %i.bz = load <2 x i64>, ptr %.sroa.07.1.i2121834, align 16, !alias.scope !268, !noalias !269 ; 4 uses
  %i.ca = bitcast <2 x i64> %i.bz to <16 x i8>    ; 7 uses
  %i.cb = icmp eq <16 x i8> %i.ca, splat (i8 -62) ; 2 uses
  %i.cc = zext <16 x i1> %i.cb to <16 x i8>
  %i.cd = bitcast <16 x i8> %i.cc to <2 x i64>    ; 2 uses
  %i.ce = icmp eq <16 x i8> %i.ca, splat (i8 -30) ; 2 uses
  %i.cf = zext <16 x i1> %i.ce to <16 x i8>
  %i.cg = bitcast <16 x i8> %i.cf to <2 x i64>    ; 2 uses
  %i.ch = add <16 x i8> %i.ca, splat (i8 -10)
  %i.ci = icmp ult <16 x i8> %i.ch, splat (i8 4)
  %i.cj = zext <16 x i1> %i.ci to <16 x i8>
  %i.ck = icmp eq <16 x i8> %i.ca, splat (i8 13)  ; 2 uses
  %i.cl = zext <16 x i1> %i.ck to <16 x i8>
  %i.cm = bitcast <16 x i8> %i.cl to <2 x i64>    ; 2 uses
  %.sroa.01.0.vec.extract.i316 = extractelement <2 x i64> %i.cd, i64 0
  %i.cn = icmp eq i64 %.sroa.01.0.vec.extract.i316, 0
  %.sroa.01.8.vec.extract.i317 = extractelement <2 x i64> %i.cd, i64 1
  %i.co = icmp eq i64 %.sroa.01.8.vec.extract.i317, 0
  %.sroa.0.0.i318 = select i1 %i.cn, i1 %i.co, i1 false
  %bc = bitcast <2 x i64> %i.bz to <16 x i8>
  %i.cp = extractelement <16 x i8> %bc, i64 15    ; 4 uses
  %bc2268 = bitcast <2 x i64> %i.bz to <16 x i8>
  %i.cq = extractelement <16 x i8> %bc2268, i64 14
  br i1 %.sroa.0.0.i318, label %bb.z, label %bb.w

bb.w:                                             ; preds = %.lr.ph
  %i.cr = icmp eq <16 x i8> %i.ca, splat (i8 -123)
  %i.cs = zext <16 x i1> %i.cr to <16 x i8>
  %i.ct = shufflevector <16 x i8> %i.cs, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %i.cu = select <16 x i1> %i.cb, <16 x i8> %i.ct, <16 x i8> zeroinitializer ; 3 uses
  %.not = icmp ne i64 %.sroa.18.1.i2111833, 16
  %i.cv = icmp eq i8 %i.cp, -62
  %or.cond2449 = select i1 %.not, i1 %i.cv, i1 false
  br i1 %or.cond2449, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i2121834, i64 16
  %i.cx = load i8, ptr %i.cw, align 16, !alias.scope !268, !noalias !269, !noundef !5
  %i.cy = icmp eq i8 %i.cx, -123
  br i1 %i.cy, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %.sroa.01512.15.vec.insert = insertelement <16 x i8> %i.cu, i8 1, i64 15
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w, %.lr.ph
  %i.cz = phi <16 x i8> [ zeroinitializer, %.lr.ph ], [ %.sroa.01512.15.vec.insert, %bb.y ], [ %i.cu, %bb.x ], [ %i.cu, %bb.w ] ; 3 uses
  %.sroa.01.0.vec.extract.i313 = extractelement <2 x i64> %i.cg, i64 0
  %i.da = icmp eq i64 %.sroa.01.0.vec.extract.i313, 0
  %.sroa.01.8.vec.extract.i314 = extractelement <2 x i64> %i.cg, i64 1
  %i.db = icmp eq i64 %.sroa.01.8.vec.extract.i314, 0
  %.sroa.0.0.i315 = select i1 %i.da, i1 %i.db, i1 false
  br i1 %.sroa.0.0.i315, label %.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dc = icmp eq <16 x i8> %i.ca, splat (i8 -128)
  %i.dd = zext <16 x i1> %i.dc to <16 x i8>
  %i.de = shufflevector <16 x i8> %i.dd, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %i.df = select <16 x i1> %i.ce, <16 x i8> %i.de, <16 x i8> zeroinitializer ; 2 uses
  %i.dg = bitcast <16 x i8> %i.df to <2 x i64>    ; 2 uses
  %.sroa.01.0.vec.extract.i310 = extractelement <2 x i64> %i.dg, i64 0
  %i.dh = icmp eq i64 %.sroa.01.0.vec.extract.i310, 0
  %.sroa.01.8.vec.extract.i311 = extractelement <2 x i64> %i.dg, i64 1
  %i.di = icmp eq i64 %.sroa.01.8.vec.extract.i311, 0
  %.sroa.0.0.i312 = select i1 %i.dh, i1 %i.di, i1 false
  br i1 %.sroa.0.0.i312, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dj = lshr <2 x i64> %i.bz, splat (i64 1)
  %i.dk = bitcast <2 x i64> %i.dj to <16 x i8>
  %i.dl = and <16 x i8> %i.dk, splat (i8 127)
  %i.dm = icmp eq <16 x i8> %i.dl, splat (i8 84)
  %i.dn = zext <16 x i1> %i.dm to <16 x i8>
  %i.do = shufflevector <16 x i8> %i.dn, <16 x i8> <i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17>
  %i.dp = and <16 x i8> %i.do, %i.df
  %i.dq = add nsw <16 x i8> %i.cz, %i.dp
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.dr = phi <16 x i8> [ %i.cz, %bb.aa ], [ %i.dq, %bb.ab ] ; 9 uses
  %.not1708 = icmp eq i64 %.sroa.18.1.i2111833, 16
  br i1 %.not1708, label %.thread, label %bb.ae

bb.ad:                                            ; preds = %bb.ae
  %i.ds = icmp samesign ugt i64 %.sroa.18.1.i2111833, 17
  %i.dt = icmp eq i8 %i.cp, -30
end_hunk_0
begin_hunk_1_@_RNvMs4_NtCs2wCc12Mnjqg_5ropey4iterNtB5_5Lines9next_impl:bb.a
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i2121834, i64 17
  %i.ee = load i8, ptr %i.ed, align 1, !alias.scope !268, !noalias !269, !noundef !5
  %.mask1.i = and i8 %i.ee, -2
  %i.ef = icmp eq i8 %.mask1.i, -88
  br i1 %i.ef, label %bb.aj, label %.thread

bb.aj:                                            ; preds = %bb.ai
  %.sroa.01518.15.vec.extract = extractelement <16 x i8> %i.dr, i64 15
  %i.eg = add i8 %.sroa.01518.15.vec.extract, 1
  %.sroa.01518.15.vec.insert = insertelement <16 x i8> %i.dr, i8 %i.eg, i64 15
  br label %.thread

.thread:                                          ; preds = %bb.af, %bb.ac, %bb.ad, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.z
  %i.eh = phi <16 x i8> [ %i.cz, %bb.z ], [ %.sroa.01515.14.vec.insert, %bb.ag ], [ %.sroa.01518.15.vec.insert, %bb.aj ], [ %i.dr, %bb.ai ], [ %i.dr, %bb.ah ], [ %i.dr, %bb.af ], [ %i.dr, %bb.ad ], [ %i.dr, %bb.ac ]
  %i.ei = add <16 x i8> %i.eh, %i.cj              ; 2 uses
  %.sroa.01.0.vec.extract.i307 = extractelement <2 x i64> %i.cm, i64 0
  %i.ej = icmp eq i64 %.sroa.01.0.vec.extract.i307, 0
  %.sroa.01.8.vec.extract.i308 = extractelement <2 x i64> %i.cm, i64 1
  %i.ek = icmp eq i64 %.sroa.01.8.vec.extract.i308, 0
  %.sroa.0.0.i309 = select i1 %i.ej, i1 %i.ek, i1 false
  br i1 %.sroa.0.0.i309, label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %bb.ak

bb.ak:                                            ; preds = %.thread
  %i.el = icmp eq <16 x i8> %i.ca, splat (i8 10)
  %.neg = sext <16 x i1> %i.el to <16 x i8>
  %.neg1709 = shufflevector <16 x i8> %.neg, <16 x i8> <i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16>
  %.neg1710 = select <16 x i1> %i.ck, <16 x i8> %.neg1709, <16 x i8> zeroinitializer
  %i.em = add <16 x i8> %i.ei, %.neg1710          ; 4 uses
  %.not1711 = icmp ne i64 %.sroa.18.1.i2111833, 16
  %i.en = icmp eq i8 %i.cp, 13
  %or.cond2452 = select i1 %.not1711, i1 %i.en, i1 false
  br i1 %or.cond2452, label %bb.al, label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit

bb.al:                                            ; preds = %bb.ak
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i2121834, i64 16
  %i.ep = load i8, ptr %i.eo, align 16, !alias.scope !268, !noalias !269, !noundef !5
  %i.eq = icmp eq i8 %i.ep, 10
  br i1 %i.eq, label %bb.am, label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit

bb.am:                                            ; preds = %bb.al
  %.sroa.0.15.vec.extract.i283 = extractelement <16 x i8> %i.em, i64 15
  %i.er = add i8 %.sroa.0.15.vec.extract.i283, -1
  %.sroa.0.15.vec.insert.i284 = insertelement <16 x i8> %i.em, i8 %i.er, i64 15
  br label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit

_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit: ; preds = %bb.ak, %bb.al, %bb.am, %.thread
  %.sroa.0870.5.in = phi <16 x i8> [ %i.ei, %.thread ], [ %.sroa.0.15.vec.insert.i284, %bb.am ], [ %i.em, %bb.al ], [ %i.em, %bb.ak ]
  %i.es = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %.sroa.0870.5.in, <16 x i8> zeroinitializer)
  %i.et = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.es)
  %i.eu = sub nsw i64 0, %.sroa.03.1.i2131835
  %.not41.i214 = icmp eq i64 %i.et, %i.eu
  br i1 %.not41.i214, label %bb.an, label %.loopexit1744

bb.an:                                            ; preds = %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit
  %i.ev = add i64 %.sroa.18.1.i2111833, -16       ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i2121834, i64 16 ; 2 uses
  %i.ex = icmp ugt i64 %i.ev, 15
  br i1 %i.ex, label %.lr.ph, label %.loopexit1744

.loopexit1744:                                    ; preds = %bb.an, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, %bb.j
  %.sroa.18.2.i204 = phi i64 [ %.sroa.18.0.i201, %bb.j ], [ %.sroa.18.1.i2111833, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit ], [ %i.ev, %bb.an ] ; 9 uses
  %.sroa.07.2.i205 = phi ptr [ %.sroa.07.0.i202, %bb.j ], [ %.sroa.07.1.i2121834, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit ], [ %i.ew, %bb.an ] ; 4 uses
  %.sroa.03.2.i206 = phi i64 [ %.sroa.03.0.i203, %bb.j ], [ %.sroa.03.1.i2131835, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines30count_breaks_in_chunk_from_ptrNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit ], [ 0, %bb.an ] ; 2 uses
  %i.ey = sub nuw nsw i64 1, %.sroa.03.2.i206
  %i.ez = icmp ne i64 %.sroa.18.2.i204, 0
  %i.fa = icmp ne i64 %.sroa.03.2.i206, 1
  %or.cond.i1841 = and i1 %i.ez, %i.fa
  br i1 %or.cond.i1841, label %.lr.ph1844, label %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit.thread

.lr.ph1844:                                       ; preds = %.loopexit1744, %bb.av
  %.sroa.0.0.i2371843 = phi i64 [ %i.fs, %bb.av ], [ 0, %.loopexit1744 ] ; 6 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.07.2.i205, i64 %.sroa.0.0.i2371843 ; 2 uses
  %i.fc = load i8, ptr %i.fb, align 1, !alias.scope !270, !noundef !5 ; 3 uses
  %i.fd = add i8 %i.fc, -10
  %spec.select.i631 = icmp ult i8 %i.fd, 4
  br i1 %spec.select.i631, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph1844
  switch i8 %i.fc, label %bb.av [
    i8 -62, label %bb.aq
    i8 -30, label %bb.as
  ]

bb.ap:                                            ; preds = %.lr.ph1844
  %i.fe = icmp eq i8 %i.fc, 13
  br i1 %i.fe, label %bb.aw, label %bb.av

bb.aq:                                            ; preds = %bb.ao
  %i.ff = add nuw nsw i64 %.sroa.0.0.i2371843, 1  ; 2 uses
  %i.fg = icmp samesign ult i64 %i.ff, %.sroa.18.2.i204
  br i1 %i.fg, label %bb.ar, label %bb.av

bb.ar:                                            ; preds = %bb.aq
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.07.2.i205, i64 %i.ff
  %i.fi = load i8, ptr %i.fh, align 1, !alias.scope !270, !noundef !5
  %i.fj = icmp eq i8 %i.fi, -123
  br label %bb.av

bb.as:                                            ; preds = %bb.ao
  %i.fk = add nuw i64 %.sroa.0.0.i2371843, 2      ; 2 uses
  %i.fl = icmp ult i64 %i.fk, %.sroa.18.2.i204
  br i1 %i.fl, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fb, i64 1
  %i.fn = load i8, ptr %i.fm, align 1, !alias.scope !270, !noundef !5
  %i.fo = icmp eq i8 %i.fn, -128
  br i1 %i.fo, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.07.2.i205, i64 %i.fk
  %i.fq = load i8, ptr %i.fp, align 1, !alias.scope !270, !noundef !5
  %.mask.i238 = and i8 %i.fq, -2
  %i.fr = icmp eq i8 %.mask.i238, -88
  br label %bb.av

bb.av:                                            ; preds = %bb.ar, %bb.aq, %bb.ax, %bb.aw, %bb.au, %bb.at, %bb.as, %bb.ap, %bb.ao
  %.sroa.012.1.i.shrunk = phi i1 [ false, %bb.as ], [ %i.fz, %bb.ax ], [ true, %bb.aw ], [ true, %bb.ap ], [ false, %bb.aq ], [ false, %bb.ao ], [ %i.fr, %bb.au ], [ false, %bb.at ], [ %i.fj, %bb.ar ]
  %.sroa.012.1.i = zext i1 %.sroa.012.1.i.shrunk to i64
  %i.fs = add nuw nsw i64 %.sroa.0.0.i2371843, 1  ; 4 uses
  %i.ft = icmp ult i64 %i.fs, %.sroa.18.2.i204
  %i.fu = icmp samesign ugt i64 %i.ey, %.sroa.012.1.i
  %or.cond.i = select i1 %i.ft, i1 %i.fu, i1 false
  br i1 %or.cond.i, label %.lr.ph1844, label %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit

bb.aw:                                            ; preds = %bb.ap
  %i.fv = add nuw nsw i64 %.sroa.0.0.i2371843, 1  ; 2 uses
  %i.fw = icmp samesign ult i64 %i.fv, %.sroa.18.2.i204
  br i1 %i.fw, label %bb.ax, label %bb.av

bb.ax:                                            ; preds = %bb.aw
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.07.2.i205, i64 %i.fv
  %i.fy = load i8, ptr %i.fx, align 1, !alias.scope !270, !noundef !5
  %i.fz = icmp ne i8 %i.fy, 10
  br label %bb.av

_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit: ; preds = %bb.av
  %.not2461 = icmp ult i64 %.sroa.0.0.i2371843, %.sroa.18.2.i204
  br i1 %.not2461, label %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit.thread, label %bb.ay, !prof !14

_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit.thread: ; preds = %.loopexit1744, %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit
  %.sroa.0.0.i237.lcssa2284 = phi i64 [ %i.fs, %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit ], [ 0, %.loopexit1744 ]
  %.neg.i207 = sub i64 %i.aq, %.sroa.18.2.i204
  %i.ga = add i64 %.neg.i207, %.sroa.0.0.i237.lcssa2284 ; 2 uses
  %i.gb = icmp eq i64 %i.ga, 0
  br i1 %i.gb, label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit215, label %.lr.ph1847

bb.ay:                                            ; preds = %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.fs, i64 noundef %.sroa.18.2.i204, i64 noundef %.sroa.18.2.i204, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #17
  unreachable

.lr.ph1847:                                       ; preds = %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit.thread, %bb.ba
  %.sroa.0.0.i2081846 = phi i64 [ %i.gg, %bb.ba ], [ %i.ga, %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit.thread ] ; 5 uses
  %.not42.i209 = icmp ult i64 %.sroa.0.0.i2081846, %i.aq
  br i1 %.not42.i209, label %bb.az, label %.split

.split:                                           ; preds = %.lr.ph1847
  %i.gc = icmp eq i64 %.sroa.0.0.i2081846, %i.aq
  br i1 %i.gc, label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit215, label %bb.ba

bb.az:                                            ; preds = %.lr.ph1847
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.0.0.i2081846
  %i.ge = load i8, ptr %i.gd, align 1, !alias.scope !271, !noundef !5
  %i.gf = icmp sgt i8 %i.ge, -65
  br i1 %i.gf, label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit215, label %bb.ba

bb.ba:                                            ; preds = %.split, %bb.az
  %i.gg = add i64 %.sroa.0.0.i2081846, 1          ; 2 uses
  %i.gh = icmp eq i64 %i.gg, 0
  br i1 %i.gh, label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit215, label %.lr.ph1847

_RINvNtCsk17MtNlfUKQ_11str_indices5lines16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit215: ; preds = %bb.az, %bb.ba, %.split, %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit.thread
  %.sroa.0.0.i208.lcssa = phi i64 [ 0, %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit.thread ], [ %i.aq, %.split ], [ 0, %bb.ba ], [ %.sroa.0.0.i2081846, %bb.az ] ; 3 uses
  %i.gi = sub i64 %i.q, %i.v                      ; 10 uses
  %.not151 = icmp ult i64 %.sroa.0.0.i208.lcssa, %i.gi
  br i1 %.not151, label %bb.bc, label %bb.bd

bb.bb:                                            ; preds = %bb.g, %.split.i
  tail call void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ab, i64 noundef %i.ad, i64 noundef %i.ag, i64 noundef %i.ad, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #17
  unreachable

bb.bc:                                            ; preds = %_RINvNtCsk17MtNlfUKQ_11str_indices5lines16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit215
  %.not152 = icmp eq i64 %.sroa.0.0.i208.lcssa, %i.aq
  br i1 %.not152, label %bb.bf, label %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit.thread1665

bb.bd:                                            ; preds = %_RINvNtCsk17MtNlfUKQ_11str_indices5lines16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit215
  %.not.i632 = icmp ult i64 %i.gi, %i.aq
  br i1 %.not.i632, label %bb.be, label %.split.i633

.split.i633:                                      ; preds = %bb.bd
  %i.gj = icmp eq i64 %i.gi, %i.aq
  br i1 %i.gj, label %.preheader.i665, label %bb.eq

bb.be:                                            ; preds = %bb.bd
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.gi
  %i.gl = load i8, ptr %i.gk, align 1, !alias.scope !272, !noundef !5
  %i.gm = icmp sgt i8 %i.gl, -65
  br i1 %i.gm, label %.preheader.i665, label %bb.eq

bb.bf:                                            ; preds = %bb.bc
  %2 = icmp eq i64 %i.aq, 0
  br i1 %2, label %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.bf
  %.sroa.01.024.i = add i64 %i.aq, -1             ; 2 uses
  %i.gn = icmp eq i64 %.sroa.01.024.i, 0
  br i1 %i.gn, label %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.backedge.i
  %.sroa.01.025.i = phi i64 [ %.sroa.01.0.i636, %.backedge.i ], [ %.sroa.01.024.i, %.preheader.i ] ; 4 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.01.025.i
  %i.gp = load i8, ptr %i.go, align 1, !alias.scope !273, !noundef !5
  %i.gq = icmp sgt i8 %i.gp, -65
  br i1 %i.gq, label %.split.i.i, label %.backedge.i

.backedge.i:                                      ; preds = %.lr.ph.i
  %.sroa.01.0.i636 = add i64 %.sroa.01.025.i, -1  ; 2 uses
  %i.gr = icmp eq i64 %.sroa.01.0.i636, 0
  br i1 %i.gr, label %.split10.i, label %.lr.ph.i

.split.i.i:                                       ; preds = %.lr.ph.i
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.01.025.i
  %i.gt = sub nuw i64 %i.aq, %.sroa.01.025.i
  br label %.split10.i

.split10.i:                                       ; preds = %.backedge.i, %.split.i.i
  %.sroa.0.0.i.pn.i = phi ptr [ %i.gs, %.split.i.i ], [ %i.ar, %.backedge.i ] ; 6 uses
  %.sroa.3.0.i.pn.i = phi i64 [ %i.gt, %.split.i.i ], [ %i.aq, %.backedge.i ]
  switch i64 %.sroa.3.0.i.pn.i, label %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit.thread [
    i64 1, label %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit
    i64 2, label %.split1668
    i64 3, label %bb.bg
  ]

.split1668:                                       ; preds = %.split10.i
  %i.gu = load i16, ptr %.sroa.0.0.i.pn.i, align 1
  %i.gv = icmp ne i16 %i.gu, -31294
  %i.gw = zext i1 %i.gv to i32
  %i.gx = icmp eq i32 %i.gw, 0
  br i1 %i.gx, label %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit.thread1665, label %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit.thread

bb.bg:                                            ; preds = %.split10.i
  %i.gy = load i16, ptr %.sroa.0.0.i.pn.i, align 1
  %i.gz = xor i16 %i.gy, -32542
  %i.ha = getelementptr i8, ptr %.sroa.0.0.i.pn.i, i64 2
  %i.hb = load i8, ptr %i.ha, align 1
  %i.hc = zext i8 %i.hb to i16
  %i.hd = xor i16 %i.hc, 168
  %i.he = or i16 %i.gz, %i.hd
  %i.hf = icmp ne i16 %i.he, 0
  %i.hg = zext i1 %i.hf to i32
  %i.hh = icmp eq i32 %i.hg, 0
  br i1 %i.hh, label %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit.thread1665, label %.split1667

.split1667:                                       ; preds = %bb.bg
  %i.hi = load i16, ptr %.sroa.0.0.i.pn.i, align 1
  %i.hj = xor i16 %i.hi, -32542
  %i.hk = getelementptr i8, ptr %.sroa.0.0.i.pn.i, i64 2
  %i.hl = load i8, ptr %i.hk, align 1
  %i.hm = zext i8 %i.hl to i16
  %i.hn = xor i16 %i.hm, 169
  %i.ho = or i16 %i.hj, %i.hn
  %i.hp = icmp ne i16 %i.ho, 0
  %i.hq = zext i1 %i.hp to i32
  %i.hr = icmp eq i32 %i.hq, 0
  br i1 %i.hr, label %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit.thread1665, label %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit.thread

_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit: ; preds = %.preheader.i, %.split10.i
  %.sroa.0.0.i.pn31.i = phi ptr [ %.sroa.0.0.i.pn.i, %.split10.i ], [ %i.ar, %.preheader.i ]
  %lhsc.i = load i8, ptr %.sroa.0.0.i.pn31.i, align 1, !alias.scope !273
  %i.hs = add i8 %lhsc.i, -10
  %switch.selectcmp.i = icmp ult i8 %i.hs, 4
  br i1 %switch.selectcmp.i, label %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit.thread1665, label %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit.thread

_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit.thread: ; preds = %.split10.i, %bb.bf, %.split1668, %.split1667, %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit
  %i.ht = add i64 %i.aq, %i.v                     ; 2 uses
  store i64 %i.ht, ptr %i.u, align 8
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.hv = load i64, ptr %i.hu, align 8, !noundef !5 ; 10 uses
  %i.hw = icmp ult i64 %i.hv, 576460752303423488
  tail call void @llvm.assume(i1 %i.hw)
  %.not153 = icmp eq i64 %i.hv, 0
  br i1 %.not153, label %bb.bj, label %bb.bk, !prof !7

_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit.thread1665: ; preds = %bb.bg, %.split1668, %.split1667, %bb.bc, %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit684, %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit
  %.sroa.014.0 = phi i64 [ %i.ahs, %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit684 ], [ 1, %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit ], [ 1, %bb.bc ], [ 1, %.split1668 ], [ 1, %.split1667 ], [ 1, %bb.bg ]
  %.sroa.08.0 = phi i64 [ %i.gi, %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit684 ], [ %i.aq, %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit ], [ %.sroa.0.0.i208.lcssa, %bb.bc ], [ %i.aq, %.split1668 ], [ %i.aq, %.split1667 ], [ %i.aq, %bb.bg ] ; 17 uses
  %i.hx = icmp eq i64 %.sroa.08.0, 0
  br i1 %i.hx, label %_RINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit.thread, label %bb.bh

_RINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit.thread: ; preds = %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit.thread1665
  store i64 %i.v, ptr %i.u, align 8
  store i32 %i.af, ptr %i.ae, align 8
  br label %_RINvNtCsk17MtNlfUKQ_11str_indices5utf1621count_surrogates_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit

bb.bh:                                            ; preds = %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit.thread1665
  %.not.i638 = icmp ult i64 %.sroa.08.0, %i.aq
  br i1 %.not.i638, label %bb.bi, label %.split.i639

.split.i639:                                      ; preds = %bb.bh
  %i.hy = icmp eq i64 %.sroa.08.0, %i.aq
  br i1 %i.hy, label %bb.er, label %bb.eu

bb.bi:                                            ; preds = %bb.bh
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.08.0
  %i.ia = load i8, ptr %i.hz, align 1, !alias.scope !274, !noundef !5
  %i.ib = icmp sgt i8 %i.ia, -65
  br i1 %i.ib, label %bb.er, label %bb.eu

bb.bj:                                            ; preds = %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit.thread
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #17
  unreachable

bb.bk:                                            ; preds = %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit.thread
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.id = load ptr, ptr %i.ic, align 8, !nonnull !5, !noundef !5 ; 7 uses
  %i.ie = add nsw i64 %i.hv, -1                   ; 6 uses
  %i.if = getelementptr inbounds nuw [16 x i8], ptr %i.id, i64 %i.ie ; 3 uses
  %i.ig = load ptr, ptr %i.if, align 8, !nonnull !5, !align !23, !noundef !5
  %i.ih = getelementptr inbounds nuw i8, ptr %i.if, i64 8 ; 3 uses
  %i.ii = load i64, ptr %i.ih, align 8, !noundef !5
  %i.ij = load ptr, ptr %i.ig, align 8, !nonnull !5, !noundef !5
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  %i.il = tail call noundef nonnull align 8 ptr @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node8children(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.ik)
  %i.im = tail call { ptr, i64 } @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4info(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(968) %i.il) ; 2 uses
  %i.in = extractvalue { ptr, i64 } %i.im, 0
  %i.io = extractvalue { ptr, i64 } %i.im, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 0, ptr %i.f, align 8
  %i.ip = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.ii, ptr %i.ip, align 8
  %i.iq = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i8 0, ptr %i.iq, align 8
  %i.ir = call fastcc { ptr, i64 } @_RNvXs8_NtNtCskKLDkoKarTP_4core5slice5indexINtNtNtB9_3ops5range14RangeInclusivejEINtB5_10SliceIndexSNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoE5indexB1F_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.in, i64 noundef %i.io) #18 ; 2 uses
  %i.is = extractvalue { ptr, i64 } %i.ir, 0      ; 5 uses
  %i.it = extractvalue { ptr, i64 } %i.ir, 1      ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.iu = icmp eq i64 %i.it, 0
  br i1 %i.iu, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9next_impl0EBW_.exit, label %.preheader1740.preheader

.preheader1740.preheader:                         ; preds = %bb.bk
  %xtraiter2897 = and i64 %i.it, 3                ; 3 uses
  %i.iv = icmp ult i64 %i.it, 4
  br i1 %i.iv, label %.preheader1740.epil.preheader, label %.preheader1740.preheader.new

.preheader1740.preheader.new:                     ; preds = %.preheader1740.preheader
  %unroll_iter = and i64 %i.it, -4
  br label %.preheader1740

.preheader1740:                                   ; preds = %.preheader1740, %.preheader1740.preheader.new
  %.sroa.01.0.i642 = phi i64 [ 0, %.preheader1740.preheader.new ], [ %i.jm, %.preheader1740 ] ; 5 uses
  %i.iw = phi <4 x i64> [ zeroinitializer, %.preheader1740.preheader.new ], [ %i.jl, %.preheader1740 ]
  %niter = phi i64 [ 0, %.preheader1740.preheader.new ], [ %niter.next.3, %.preheader1740 ]
  %i.ix = getelementptr inbounds nuw [32 x i8], ptr %i.is, i64 %.sroa.01.0.i642
  %i.iy = load <4 x i64>, ptr %i.ix, align 8, !alias.scope !275, !noalias !276
  %i.iz = add <4 x i64> %i.iy, %i.iw
  %i.ja = getelementptr inbounds nuw [32 x i8], ptr %i.is, i64 %.sroa.01.0.i642
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 32
  %i.jc = load <4 x i64>, ptr %i.jb, align 8, !alias.scope !275, !noalias !276
  %i.jd = add <4 x i64> %i.jc, %i.iz
  %i.je = getelementptr inbounds nuw [32 x i8], ptr %i.is, i64 %.sroa.01.0.i642
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 64
  %i.jg = load <4 x i64>, ptr %i.jf, align 8, !alias.scope !275, !noalias !276
  %i.jh = add <4 x i64> %i.jg, %i.jd
  %i.ji = getelementptr inbounds nuw [32 x i8], ptr %i.is, i64 %.sroa.01.0.i642
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 96
  %i.jk = load <4 x i64>, ptr %i.jj, align 8, !alias.scope !275, !noalias !276
  %i.jl = add <4 x i64> %i.jk, %i.jh              ; 3 uses
  %i.jm = add nuw i64 %.sroa.01.0.i642, 4         ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9next_impl0EBW_.exit.loopexit.unr-lcssa, label %.preheader1740

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9next_impl0EBW_.exit.loopexit.unr-lcssa: ; preds = %.preheader1740
  %lcmp.mod2899.not = icmp eq i64 %xtraiter2897, 0
  br i1 %lcmp.mod2899.not, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9next_impl0EBW_.exit, label %.preheader1740.epil.preheader

.preheader1740.epil.preheader:                    ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9next_impl0EBW_.exit.loopexit.unr-lcssa, %.preheader1740.preheader
  %.sroa.01.0.i642.epil.init = phi i64 [ 0, %.preheader1740.preheader ], [ %i.jm, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9next_impl0EBW_.exit.loopexit.unr-lcssa ]
  %.epil.init = phi <4 x i64> [ zeroinitializer, %.preheader1740.preheader ], [ %i.jl, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9next_impl0EBW_.exit.loopexit.unr-lcssa ]
  %lcmp.mod2901 = icmp ne i64 %xtraiter2897, 0
  tail call void @llvm.assume(i1 %lcmp.mod2901)
  br label %.preheader1740.epil

.preheader1740.epil:                              ; preds = %.preheader1740.epil, %.preheader1740.epil.preheader
  %.sroa.01.0.i642.epil = phi i64 [ %i.jr, %.preheader1740.epil ], [ %.sroa.01.0.i642.epil.init, %.preheader1740.epil.preheader ] ; 2 uses
  %i.jn = phi <4 x i64> [ %i.jq, %.preheader1740.epil ], [ %.epil.init, %.preheader1740.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader1740.epil ], [ 0, %.preheader1740.epil.preheader ]
  %i.jo = getelementptr inbounds nuw [32 x i8], ptr %i.is, i64 %.sroa.01.0.i642.epil
  %i.jp = load <4 x i64>, ptr %i.jo, align 8, !alias.scope !275, !noalias !276
  %i.jq = add <4 x i64> %i.jp, %i.jn              ; 2 uses
  %i.jr = add nuw i64 %.sroa.01.0.i642.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter2897
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9next_impl0EBW_.exit, label %.preheader1740.epil, !llvm.loop !187

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9next_impl0EBW_.exit: ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9next_impl0EBW_.exit.loopexit.unr-lcssa, %.preheader1740.epil, %bb.bk
  %i.js = phi <4 x i64> [ zeroinitializer, %bb.bk ], [ %i.jl, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9next_impl0EBW_.exit.loopexit.unr-lcssa ], [ %i.jq, %.preheader1740.epil ] ; 3 uses
  call fastcc void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree9text_infoNtB2_8TextInfo8from_str(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ar, i64 noundef %i.aq) #18
  %i.jt = load i64, ptr %i.e, align 8, !noundef !5 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.jv = load <2 x i64>, ptr %i.ju, align 8      ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.jx = load i64, ptr %i.jw, align 8, !noundef !5 ; 2 uses
  %i.jy = extractelement <4 x i64> %i.js, i64 0
  %i.jz = sub i64 %i.jy, %i.jt
  %i.ka = shufflevector <4 x i64> %i.js, <4 x i64> poison, <2 x i32> <i32 1, i32 2>
  %i.kb = sub <2 x i64> %i.ka, %i.jv
  %i.kc = extractelement <4 x i64> %i.js, i64 3
  %i.kd = sub i64 %i.kc, %i.jx
  %3 = icmp ne i64 %i.aq, 0
  %i.ke = getelementptr [16 x i8], ptr %i.id, i64 %i.hv ; 2 uses
  %i.kf = getelementptr i8, ptr %i.ke, i64 -16
  %i.kg = getelementptr i8, ptr %i.ke, i64 -8
  br label %bb.bl

bb.bl:                                            ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9next_impl0EBW_.exit, %bb.by
  %i.kh = phi i64 [ %i.jt, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9next_impl0EBW_.exit ], [ %i.pm, %bb.by ] ; 3 uses
  %i.ki = phi i64 [ %i.ht, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9next_impl0EBW_.exit ], [ %i.po, %bb.by ] ; 3 uses
  %.sroa.21.0 = phi i64 [ %i.kd, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9next_impl0EBW_.exit ], [ %.sroa.21.1, %bb.by ] ; 3 uses
  %.sroa.0743.0 = phi i64 [ %i.jz, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9next_impl0EBW_.exit ], [ %.sroa.0743.1, %bb.by ] ; 3 uses
  %.sroa.052.0 = phi i64 [ %i.ie, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9next_impl0EBW_.exit ], [ %.sroa.052.1, %bb.by ] ; 6 uses
  %.sroa.031.0 = phi i1 [ %3, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9next_impl0EBW_.exit ], [ true, %bb.by ]
  %i.kj = phi <2 x i64> [ %i.kb, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9next_impl0EBW_.exit ], [ %i.oo, %bb.by ] ; 3 uses
  %i.kk = phi <2 x i64> [ %i.jv, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9next_impl0EBW_.exit ], [ %i.pn, %bb.by ] ; 3 uses
  %i.kl = load i64, ptr %i.ih, align 8, !noundef !5
  %i.km = add i64 %i.kl, 1                        ; 2 uses
  store i64 %i.km, ptr %i.ih, align 8
  %i.kn = load ptr, ptr %i.if, align 8, !nonnull !5, !align !23, !noundef !5
  %i.ko = load ptr, ptr %i.kn, align 8, !nonnull !5, !noundef !5
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 16
  %i.kq = tail call noundef i64 @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node11child_count(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.kp)
  %.not155 = icmp ult i64 %i.km, %i.kq
  br i1 %.not155, label %.loopexit1737, label %.lr.ph1888

bb.bm:                                            ; preds = %bb.bo
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.lb, i64 noundef %i.hv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #17
  unreachable

.lr.ph1888:                                       ; preds = %bb.bl, %bb.bo
  %.sroa.032.01887 = phi i64 [ %i.lb, %bb.bo ], [ %i.ie, %bb.bl ] ; 7 uses
  %i.kr = getelementptr inbounds nuw [16 x i8], ptr %i.id, i64 %.sroa.032.01887 ; 5 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 8
  %i.kt = load i64, ptr %i.ks, align 8, !noundef !5
  %i.ku = load ptr, ptr %i.kr, align 8, !nonnull !5, !align !23, !noundef !5
  %i.kv = load ptr, ptr %i.ku, align 8, !nonnull !5, !noundef !5
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 16
  %i.kx = tail call noundef i64 @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node11child_count(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.kw)
  %i.ky = add i64 %i.kx, -1
  %.not156 = icmp ult i64 %i.kt, %i.ky
  br i1 %.not156, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %.lr.ph1888
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kr, i64 8 ; 2 uses
  %i.la = icmp ult i64 %.sroa.032.01887, %.sroa.052.0
  br i1 %i.la, label %bb.bp, label %.loopexit1738

bb.bo:                                            ; preds = %.lr.ph1888
  %i.lb = add nsw i64 %.sroa.032.01887, -1        ; 3 uses
  %i.lc = icmp ult i64 %i.lb, %i.hv
  br i1 %i.lc, label %.lr.ph1888, label %bb.bm

bb.bp:                                            ; preds = %bb.bn
  %.not157 = icmp ugt i64 %.sroa.052.0, %i.hv
  br i1 %.not157, label %bb.bq, label %.lr.ph1909.preheader, !prof !7

bb.bq:                                            ; preds = %bb.bp
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.032.01887, i64 noundef %.sroa.052.0, i64 noundef %i.hv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #17
  unreachable

.lr.ph1909.preheader:                             ; preds = %bb.bp
  %i.ld = getelementptr inbounds nuw [16 x i8], ptr %i.id, i64 %.sroa.052.0
  br label %.lr.ph1909

.loopexit1736:                                    ; preds = %.lr.ph1898.prol.loopexit, %.lr.ph1898, %bb.br
  %.sroa.21.4.lcssa = phi i64 [ %.sroa.21.31903, %bb.br ], [ %.lcssa2793.unr, %.lr.ph1898.prol.loopexit ], [ %i.nr, %.lr.ph1898 ] ; 2 uses
  %.sroa.0743.4.lcssa = phi i64 [ %.sroa.0743.31906, %bb.br ], [ %.lcssa2795.unr, %.lr.ph1898.prol.loopexit ], [ %i.np, %.lr.ph1898 ] ; 2 uses
  %i.le = phi <2 x i64> [ %i.lg, %bb.br ], [ %.lcssa2794.unr, %.lr.ph1898.prol.loopexit ], [ %i.nq, %.lr.ph1898 ] ; 2 uses
  %i.lf = icmp eq ptr %i.lh, %i.ld
  br i1 %i.lf, label %.loopexit1738, label %.lr.ph1909

.lr.ph1909:                                       ; preds = %.lr.ph1909.preheader, %.loopexit1736
  %.sroa.046.01907 = phi ptr [ %i.lh, %.loopexit1736 ], [ %i.kr, %.lr.ph1909.preheader ] ; 3 uses
  %.sroa.0743.31906 = phi i64 [ %.sroa.0743.4.lcssa, %.loopexit1736 ], [ %.sroa.0743.0, %.lr.ph1909.preheader ] ; 3 uses
  %.sroa.21.31903 = phi i64 [ %.sroa.21.4.lcssa, %.loopexit1736 ], [ %.sroa.21.0, %.lr.ph1909.preheader ] ; 3 uses
  %i.lg = phi <2 x i64> [ %i.le, %.loopexit1736 ], [ %i.kj, %.lr.ph1909.preheader ] ; 3 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %.sroa.046.01907, i64 16 ; 2 uses
  %i.li = load ptr, ptr %.sroa.046.01907, align 8, !nonnull !5, !align !23, !noundef !5
  %i.lj = load ptr, ptr %i.li, align 8, !nonnull !5, !noundef !5
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 16
  %i.ll = tail call noundef nonnull align 8 ptr @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node8children(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.lk)
  %i.lm = tail call { ptr, i64 } @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4info(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(968) %i.ll) ; 2 uses
  %i.ln = extractvalue { ptr, i64 } %i.lm, 1      ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %.sroa.046.01907, i64 8
  %i.lp = load i64, ptr %i.lo, align 8, !noundef !5 ; 4 uses
  %.not158 = icmp ugt i64 %i.lp, %i.ln
  br i1 %.not158, label %bb.bs, label %bb.br, !prof !18

bb.br:                                            ; preds = %.lr.ph1909
  %i.lq = extractvalue { ptr, i64 } %i.lm, 0      ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.lq) ]
  %.idx2042 = shl i64 %i.lp, 5                    ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 %.idx2042
  %i.ls = icmp eq i64 %i.lp, 0
  br i1 %i.ls, label %.loopexit1736, label %.lr.ph1898.preheader

.lr.ph1898.preheader:                             ; preds = %bb.br
  %i.lt = add i64 %.idx2042, -32                  ; 2 uses
  %i.lu = lshr exact i64 %i.lt, 5
  %i.lv = add nuw nsw i64 %i.lu, 1
  %xtraiter2902 = and i64 %i.lv, 3                ; 2 uses
  %lcmp.mod2903.not = icmp eq i64 %xtraiter2902, 0
  br i1 %lcmp.mod2903.not, label %.lr.ph1898.prol.loopexit, label %.lr.ph1898.prol

.lr.ph1898.prol:                                  ; preds = %.lr.ph1898.preheader, %.lr.ph1898.prol
  %.sroa.049.01896.prol = phi ptr [ %i.lx, %.lr.ph1898.prol ], [ %i.lq, %.lr.ph1898.preheader ] ; 4 uses
  %.sroa.0743.41895.prol = phi i64 [ %i.md, %.lr.ph1898.prol ], [ %.sroa.0743.31906, %.lr.ph1898.preheader ]
  %.sroa.21.41892.prol = phi i64 [ %i.mf, %.lr.ph1898.prol ], [ %.sroa.21.31903, %.lr.ph1898.preheader ]
  %i.lw = phi <2 x i64> [ %i.me, %.lr.ph1898.prol ], [ %i.lg, %.lr.ph1898.preheader ]
  %prol.iter2904 = phi i64 [ %prol.iter2904.next, %.lr.ph1898.prol ], [ 0, %.lr.ph1898.preheader ]
  %i.lx = getelementptr inbounds nuw i8, ptr %.sroa.049.01896.prol, i64 32 ; 2 uses
  %i.ly = load i64, ptr %.sroa.049.01896.prol, align 8, !noundef !5
  %i.lz = getelementptr inbounds nuw i8, ptr %.sroa.049.01896.prol, i64 8
  %i.ma = load <2 x i64>, ptr %i.lz, align 8
  %i.mb = getelementptr inbounds nuw i8, ptr %.sroa.049.01896.prol, i64 24
  %i.mc = load i64, ptr %i.mb, align 8, !noundef !5
  %i.md = add i64 %i.ly, %.sroa.0743.41895.prol   ; 3 uses
  %i.me = add <2 x i64> %i.ma, %i.lw              ; 3 uses
  %i.mf = add i64 %i.mc, %.sroa.21.41892.prol     ; 3 uses
  %prol.iter2904.next = add i64 %prol.iter2904, 1 ; 2 uses
  %prol.iter2904.cmp.not = icmp eq i64 %prol.iter2904.next, %xtraiter2902
  br i1 %prol.iter2904.cmp.not, label %.lr.ph1898.prol.loopexit, label %.lr.ph1898.prol, !llvm.loop !188

.lr.ph1898.prol.loopexit:                         ; preds = %.lr.ph1898.prol, %.lr.ph1898.preheader
  %.lcssa2795.unr = phi i64 [ poison, %.lr.ph1898.preheader ], [ %i.md, %.lr.ph1898.prol ]
  %.lcssa2794.unr = phi <2 x i64> [ poison, %.lr.ph1898.preheader ], [ %i.me, %.lr.ph1898.prol ]
  %.lcssa2793.unr = phi i64 [ poison, %.lr.ph1898.preheader ], [ %i.mf, %.lr.ph1898.prol ]
  %.sroa.049.01896.unr = phi ptr [ %i.lq, %.lr.ph1898.preheader ], [ %i.lx, %.lr.ph1898.prol ]
  %.sroa.0743.41895.unr = phi i64 [ %.sroa.0743.31906, %.lr.ph1898.preheader ], [ %i.md, %.lr.ph1898.prol ]
  %.sroa.21.41892.unr = phi i64 [ %.sroa.21.31903, %.lr.ph1898.preheader ], [ %i.mf, %.lr.ph1898.prol ]
  %.unr2905 = phi <2 x i64> [ %i.lg, %.lr.ph1898.preheader ], [ %i.me, %.lr.ph1898.prol ]
  %i.mg = icmp ult i64 %i.lt, 96
  br i1 %i.mg, label %.loopexit1736, label %.lr.ph1898

bb.bs:                                            ; preds = %.lr.ph1909
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.lp, i64 noundef %i.ln, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #17
  unreachable

.lr.ph1898:                                       ; preds = %.lr.ph1898.prol.loopexit, %.lr.ph1898
  %.sroa.049.01896 = phi ptr [ %i.nj, %.lr.ph1898 ], [ %.sroa.049.01896.unr, %.lr.ph1898.prol.loopexit ] ; 13 uses
  %.sroa.0743.41895 = phi i64 [ %i.np, %.lr.ph1898 ], [ %.sroa.0743.41895.unr, %.lr.ph1898.prol.loopexit ]
  %.sroa.21.41892 = phi i64 [ %i.nr, %.lr.ph1898 ], [ %.sroa.21.41892.unr, %.lr.ph1898.prol.loopexit ]
  %i.mh = phi <2 x i64> [ %i.nq, %.lr.ph1898 ], [ %.unr2905, %.lr.ph1898.prol.loopexit ]
  %i.mi = getelementptr inbounds nuw i8, ptr %.sroa.049.01896, i64 32
  %i.mj = load i64, ptr %.sroa.049.01896, align 8, !noundef !5
  %i.mk = getelementptr inbounds nuw i8, ptr %.sroa.049.01896, i64 8
  %i.ml = load <2 x i64>, ptr %i.mk, align 8
  %i.mm = getelementptr inbounds nuw i8, ptr %.sroa.049.01896, i64 24
  %i.mn = load i64, ptr %i.mm, align 8, !noundef !5
  %i.mo = add i64 %i.mj, %.sroa.0743.41895
  %i.mp = add <2 x i64> %i.ml, %i.mh
  %i.mq = add i64 %i.mn, %.sroa.21.41892
  %i.mr = getelementptr inbounds nuw i8, ptr %.sroa.049.01896, i64 64
  %i.ms = load i64, ptr %i.mi, align 8, !noundef !5
  %i.mt = getelementptr inbounds nuw i8, ptr %.sroa.049.01896, i64 40
  %i.mu = load <2 x i64>, ptr %i.mt, align 8
  %i.mv = getelementptr inbounds nuw i8, ptr %.sroa.049.01896, i64 56
  %i.mw = load i64, ptr %i.mv, align 8, !noundef !5
  %i.mx = add i64 %i.ms, %i.mo
  %i.my = add <2 x i64> %i.mu, %i.mp
  %i.mz = add i64 %i.mw, %i.mq
  %i.na = getelementptr inbounds nuw i8, ptr %.sroa.049.01896, i64 96
  %i.nb = load i64, ptr %i.mr, align 8, !noundef !5
  %i.nc = getelementptr inbounds nuw i8, ptr %.sroa.049.01896, i64 72
  %i.nd = load <2 x i64>, ptr %i.nc, align 8
  %i.ne = getelementptr inbounds nuw i8, ptr %.sroa.049.01896, i64 88
  %i.nf = load i64, ptr %i.ne, align 8, !noundef !5
  %i.ng = add i64 %i.nb, %i.mx
  %i.nh = add <2 x i64> %i.nd, %i.my
  %i.ni = add i64 %i.nf, %i.mz
  %i.nj = getelementptr inbounds nuw i8, ptr %.sroa.049.01896, i64 128 ; 2 uses
  %i.nk = load i64, ptr %i.na, align 8, !noundef !5
  %i.nl = getelementptr inbounds nuw i8, ptr %.sroa.049.01896, i64 104
  %i.nm = load <2 x i64>, ptr %i.nl, align 8
  %i.nn = getelementptr inbounds nuw i8, ptr %.sroa.049.01896, i64 120
  %i.no = load i64, ptr %i.nn, align 8, !noundef !5
  %i.np = add i64 %i.nk, %i.ng                    ; 2 uses
  %i.nq = add <2 x i64> %i.nm, %i.nh              ; 2 uses
  %i.nr = add i64 %i.no, %i.ni                    ; 2 uses
  %i.ns = icmp eq ptr %i.nj, %i.lr
  br i1 %i.ns, label %.loopexit1736, label %.lr.ph1898

.loopexit1738:                                    ; preds = %.loopexit1736, %bb.bn
  %.sroa.21.2 = phi i64 [ %.sroa.21.0, %bb.bn ], [ %.sroa.21.4.lcssa, %.loopexit1736 ] ; 3 uses
  %.sroa.0743.2 = phi i64 [ %.sroa.0743.0, %bb.bn ], [ %.sroa.0743.4.lcssa, %.loopexit1736 ] ; 3 uses
  %.sroa.052.2 = phi i64 [ %.sroa.052.0, %bb.bn ], [ %.sroa.032.01887, %.loopexit1736 ] ; 3 uses
  %i.nt = phi <2 x i64> [ %i.kj, %bb.bn ], [ %i.le, %.loopexit1736 ] ; 3 uses
  %i.nu = load i64, ptr %i.kz, align 8, !noundef !5
  %i.nv = add i64 %i.nu, 1                        ; 4 uses
  store i64 %i.nv, ptr %i.kz, align 8
  %i.nw = icmp ult i64 %.sroa.032.01887, %i.ie
  br i1 %i.nw, label %.lr.ph1916.preheader, label %.loopexit1737

.lr.ph1916.preheader:                             ; preds = %.loopexit1738
  %.pre = load ptr, ptr %i.kr, align 8
  %i.nx = load ptr, ptr %.pre, align 8, !nonnull !5, !noundef !5
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 16
  %i.nz = tail call noundef nonnull align 8 ptr @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node8children(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.ny)
  %i.oa = tail call { ptr, i64 } @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren5nodes(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(968) %i.nz) ; 2 uses
  %i.ob = extractvalue { ptr, i64 } %i.oa, 1      ; 2 uses
  %i.oc = icmp ult i64 %i.nv, %i.ob
  br i1 %i.oc, label %bb.bt, label %.loopexit2907

bb.bt:                                            ; preds = %.lr.ph1916.preheader
  %i.od = add i64 %.sroa.032.01887, 1             ; 3 uses
  %i.oe = extractvalue { ptr, i64 } %i.oa, 0
  %i.of = getelementptr inbounds nuw [8 x i8], ptr %i.oe, i64 %i.nv ; 2 uses
  %i.og = getelementptr inbounds nuw [16 x i8], ptr %i.id, i64 %i.od ; 2 uses
  store ptr %i.of, ptr %i.og, align 8
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 8
  store i64 0, ptr %i.oh, align 8
  %exitcond.not.peel = icmp eq i64 %i.od, %i.ie
  br i1 %exitcond.not.peel, label %.loopexit1737, label %.lr.ph1916
end_hunk_1
begin_hunk_2_@_RNvMs4_NtCs2wCc12Mnjqg_5ropey4iterNtB5_5Lines9next_impl:bb.a
  br i1 %i.awq, label %bb.gp, label %bb.gn

bb.gp:                                            ; preds = %bb.go
  %i.awr = getelementptr inbounds nuw i8, ptr %.sroa.07.2.i, i64 %i.awp
  %i.aws = load i8, ptr %i.awr, align 1, !alias.scope !301, !noundef !5
  %i.awt = icmp ne i8 %i.aws, 10
  br label %bb.gn

_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit270: ; preds = %bb.gn
  %.not2463 = icmp ult i64 %.sroa.0.0.i2642025, %.sroa.18.2.i
  br i1 %.not2463, label %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit270.thread, label %bb.gq, !prof !14

_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit270.thread: ; preds = %.loopexit, %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit270
  %.sroa.0.0.i264.lcssa2316 = phi i64 [ %i.awm, %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit270 ], [ 0, %.loopexit ]
  %.neg.i = sub i64 %i.arj, %.sroa.18.2.i
  %i.awu = add i64 %.neg.i, %.sroa.0.0.i264.lcssa2316 ; 2 uses
  %i.awv = icmp eq i64 %i.awu, 0
  br i1 %i.awv, label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %.lr.ph2031

bb.gq:                                            ; preds = %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit270
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.awm, i64 noundef %.sroa.18.2.i, i64 noundef %.sroa.18.2.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #17
  unreachable

.lr.ph2031:                                       ; preds = %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit270.thread, %bb.gs
  %.sroa.0.0.i1832029 = phi i64 [ %i.axa, %bb.gs ], [ %i.awu, %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit270.thread ] ; 5 uses
  %.not42.i = icmp ult i64 %.sroa.0.0.i1832029, %i.arj
  br i1 %.not42.i, label %bb.gr, label %.split1699

.split1699:                                       ; preds = %.lr.ph2031
  %i.aww = icmp eq i64 %.sroa.0.0.i1832029, %i.arj
  br i1 %i.aww, label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %bb.gs

bb.gr:                                            ; preds = %.lr.ph2031
  %i.awx = getelementptr inbounds nuw i8, ptr %i.ark, i64 %.sroa.0.0.i1832029
  %i.awy = load i8, ptr %i.awx, align 1, !alias.scope !302, !noundef !5
  %i.awz = icmp sgt i8 %i.awy, -65
  br i1 %i.awz, label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %bb.gs

bb.gs:                                            ; preds = %.split1699, %bb.gr
  %i.axa = add i64 %.sroa.0.0.i1832029, 1         ; 2 uses
  %i.axb = icmp eq i64 %i.axa, 0
  br i1 %i.axb, label %_RINvNtCsk17MtNlfUKQ_11str_indices5lines16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit, label %.lr.ph2031

_RINvNtCsk17MtNlfUKQ_11str_indices5lines16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit: ; preds = %bb.gr, %bb.gs, %.split1699, %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit270.thread
  %.sroa.0.0.i183.lcssa = phi i64 [ 0, %_RNvNtCsk17MtNlfUKQ_11str_indices5lines18count_breaks_up_to.exit270.thread ], [ %i.arj, %.split1699 ], [ 0, %bb.gs ], [ %.sroa.0.0.i1832029, %bb.gr ] ; 2 uses
  %i.axc = add i64 %.sroa.0.0.i183.lcssa, %i.aqx  ; 6 uses
  store i64 %i.axc, ptr %i.aqw, align 8
  %i.axd = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.axe = load i64, ptr %i.axd, align 8, !noundef !5
  %i.axf = add i64 %i.axe, 1
  store i64 %i.axf, ptr %i.axd, align 8
  %i.axg = icmp eq i64 %i.axc, %i.l               ; 2 uses
  br i1 %i.axg, label %bb.gy, label %bb.gu

bb.gt:                                            ; preds = %bb.ey, %bb.ex
  tail call void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %i.l, i64 noundef %i.aqx, i64 noundef %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #17
  unreachable

bb.gu:                                            ; preds = %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit738, %_RINvNtCsk17MtNlfUKQ_11str_indices5lines16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit
  %i.axh = icmp ugt i64 %i.aqx, %i.axc
  %i.axi = icmp ugt i64 %i.axc, %i.l
  %or.cond.i279 = or i1 %i.axh, %i.axi
  br i1 %or.cond.i279, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread, label %bb.gv, !prof !15

bb.gv:                                            ; preds = %bb.gu
  br i1 %i.aqz, label %bb.gw, label %bb.gx

bb.gw:                                            ; preds = %bb.gx, %bb.gv
  br i1 %i.axg, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread1701, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit

bb.gx:                                            ; preds = %bb.gv
  %i.axj = load i8, ptr %i.ark, align 1, !alias.scope !303, !noundef !5
  %i.axk = icmp sgt i8 %i.axj, -65
  br i1 %i.axk, label %bb.gw, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread, !prof !16

_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit: ; preds = %bb.gw
  %i.axl = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.axc
  %i.axm = load i8, ptr %i.axl, align 1, !alias.scope !303, !noundef !5
  %i.axn = icmp sgt i8 %i.axm, -65
  br i1 %i.axn, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread1701, label %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread, !prof !17

bb.gy:                                            ; preds = %_RINvNtCsk17MtNlfUKQ_11str_indices5lines16to_byte_idx_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit
  %i.axo = icmp eq i64 %i.l, 0
  br i1 %i.axo, label %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit738, label %.preheader.i719

.preheader.i719:                                  ; preds = %bb.gy
  %.sroa.01.024.i720 = add i64 %i.l, -1           ; 2 uses
  %i.axp = icmp eq i64 %.sroa.01.024.i720, 0
  br i1 %i.axp, label %.split10.thread.i733, label %.lr.ph.i721

.lr.ph.i721:                                      ; preds = %.preheader.i719, %.backedge.i724
  %.sroa.01.025.i722 = phi i64 [ %.sroa.01.0.i725, %.backedge.i724 ], [ %.sroa.01.024.i720, %.preheader.i719 ] ; 4 uses
  %i.axq = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.025.i722
  %i.axr = load i8, ptr %i.axq, align 1, !alias.scope !304, !noundef !5
  %i.axs = icmp sgt i8 %i.axr, -65
  br i1 %i.axs, label %.split.i.i737, label %.backedge.i724

.backedge.i724:                                   ; preds = %.lr.ph.i721
  %.sroa.01.0.i725 = add i64 %.sroa.01.025.i722, -1 ; 2 uses
  %i.axt = icmp eq i64 %.sroa.01.0.i725, 0
  br i1 %i.axt, label %.split10.i726, label %.lr.ph.i721

.split.i.i737:                                    ; preds = %.lr.ph.i721
  %i.axu = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.025.i722
  %i.axv = sub nuw i64 %i.l, %.sroa.01.025.i722
  br label %.split10.i726

.split10.i726:                                    ; preds = %.backedge.i724, %.split.i.i737
  %.sroa.0.0.i.pn.i727 = phi ptr [ %i.axu, %.split.i.i737 ], [ %i.j, %.backedge.i724 ] ; 6 uses
  %.sroa.3.0.i.pn.i728 = phi i64 [ %i.axv, %.split.i.i737 ], [ %i.l, %.backedge.i724 ]
  switch i64 %.sroa.3.0.i.pn.i728, label %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit738 [
    i64 1, label %.split10.thread.i733
    i64 2, label %bb.gz
    i64 3, label %bb.ha
  ]

.split10.thread.i733:                             ; preds = %.split10.i726, %.preheader.i719
  %.sroa.0.0.i.pn31.i734 = phi ptr [ %.sroa.0.0.i.pn.i727, %.split10.i726 ], [ %i.j, %.preheader.i719 ]
  %lhsc.i735 = load i8, ptr %.sroa.0.0.i.pn31.i734, align 1, !alias.scope !304
  %i.axw = add i8 %lhsc.i735, -10
  %switch.selectcmp.i736 = icmp ult i8 %i.axw, 4
  br label %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit738

bb.gz:                                            ; preds = %.split10.i726
  %i.axx = load i16, ptr %.sroa.0.0.i.pn.i727, align 1
  %i.axy = icmp ne i16 %i.axx, -31294
  %i.axz = zext i1 %i.axy to i32
  %i.aya = icmp eq i32 %i.axz, 0
  br label %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit738

bb.ha:                                            ; preds = %.split10.i726
  %i.ayb = load i16, ptr %.sroa.0.0.i.pn.i727, align 1
  %i.ayc = xor i16 %i.ayb, -32542
  %i.ayd = getelementptr i8, ptr %.sroa.0.0.i.pn.i727, i64 2
  %i.aye = load i8, ptr %i.ayd, align 1
  %i.ayf = zext i8 %i.aye to i16
  %i.ayg = xor i16 %i.ayf, 168
  %i.ayh = or i16 %i.ayc, %i.ayg
  %i.ayi = icmp ne i16 %i.ayh, 0
  %i.ayj = zext i1 %i.ayi to i32
  %i.ayk = icmp eq i32 %i.ayj, 0
  br i1 %i.ayk, label %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit738, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.ayl = load i16, ptr %.sroa.0.0.i.pn.i727, align 1
  %i.aym = xor i16 %i.ayl, -32542
  %i.ayn = getelementptr i8, ptr %.sroa.0.0.i.pn.i727, i64 2
  %i.ayo = load i8, ptr %i.ayn, align 1
  %i.ayp = zext i8 %i.ayo to i16
  %i.ayq = xor i16 %i.ayp, 169
  %i.ayr = or i16 %i.aym, %i.ayq
  %i.ays = icmp ne i16 %i.ayr, 0
  %i.ayt = zext i1 %i.ays to i32
  %i.ayu = icmp eq i32 %i.ayt, 0
  br label %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit738

_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit738: ; preds = %bb.gy, %.split10.i726, %.split10.thread.i733, %bb.gz, %bb.ha, %bb.hb
  %.sroa.0.0.i731 = phi i1 [ false, %bb.gy ], [ %switch.selectcmp.i736, %.split10.thread.i733 ], [ true, %bb.ha ], [ %i.aya, %bb.gz ], [ %i.ayu, %bb.hb ], [ false, %.split10.i726 ]
  %i.ayv = xor i1 %.sroa.0.0.i731, true
  %i.ayw = zext i1 %i.ayv to i8
  store i8 %i.ayw, ptr %i.m, align 1
  br label %bb.gu

_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread: ; preds = %bb.gx, %bb.gu, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit
  tail call void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %i.l, i64 noundef %i.aqx, i64 noundef %i.axc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #17
  unreachable

_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit.thread1701: ; preds = %bb.gw, %_RNvNtNtCskKLDkoKarTP_4core3str6traits11check_range.exit
  %i.ayx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RNvXs0_NtCs2wCc12Mnjqg_5ropey5sliceNtB5_9RopeSliceINtNtCskKLDkoKarTP_4core7convert4FromReE4from(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.ayx, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ark, i64 noundef %.sroa.0.0.i183.lcssa) #18
  br label %bb.ek
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs4_NtCs2wCc12Mnjqg_5ropey4iterNtB5_5Lines9prev_impl(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(88) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  %i.c = alloca [48 x i8], align 8                ; 9 uses
  %i.d = alloca [48 x i8], align 8                ; 9 uses
  %i.e = alloca [48 x i8], align 8                ; 9 uses
  %i.f = alloca [48 x i8], align 8                ; 9 uses
  %i.g = alloca [32 x i8], align 8                ; 4 uses
  %i.h = load i64, ptr %1, align 8, !range !4, !noundef !5
  %i.i = icmp eq i64 %i.h, -1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 81 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !range !6, !noundef !5
  %i.l = trunc nuw i8 %i.k to i1
  store i8 0, ptr %i.j, align 1
  br i1 %i.l, label %bb.bh, label %bb.bg

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !5, !noundef !5 ; 13 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.p = load i64, ptr %i.o, align 8, !noundef !5 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.r = load i32, ptr %i.q, align 8, !noundef !5 ; 4 uses
  %i.s = zext i32 %i.r to i64                     ; 16 uses
  %2 = icmp eq i32 %i.r, 0
  br i1 %2, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i411 = icmp ugt i64 %i.p, %i.s
  br i1 %.not.i411, label %bb.e, label %.split.i

.split.i:                                         ; preds = %bb.d
  %i.t = icmp eq i64 %i.p, %i.s
  br i1 %i.t, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.s
  %i.v = load i8, ptr %i.u, align 1, !alias.scope !398, !noundef !5
  %i.w = icmp sgt i8 %i.v, -65
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %.split.i
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 81 ; 2 uses
  %i.y = load i8, ptr %i.x, align 1, !range !6, !noundef !5
  %i.z = trunc nuw i8 %i.y to i1
  store i8 0, ptr %i.x, align 1
  br i1 %i.z, label %.preheader.i, label %bb.h

.thread:                                          ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 81 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !range !6, !noundef !5
  %i.ac = trunc nuw i8 %i.ab to i1
  store i8 0, ptr %i.aa, align 1
  br i1 %i.ac, label %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit.thread, label %bb.h

bb.g:                                             ; preds = %bb.e, %.split.i
  tail call void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.n, i64 noundef %i.p, i64 noundef 0, i64 noundef %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #17
  unreachable

bb.h:                                             ; preds = %.thread, %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !5
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.bf, label %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit.thread

.preheader.i:                                     ; preds = %bb.f
  %.sroa.01.024.i = add nsw i64 %i.s, -1          ; 2 uses
  %i.ag = icmp eq i64 %.sroa.01.024.i, 0
  br i1 %i.ag, label %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.backedge.i
  %.sroa.01.025.i = phi i64 [ %.sroa.01.0.i414, %.backedge.i ], [ %.sroa.01.024.i, %.preheader.i ] ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.01.025.i
  %i.ai = load i8, ptr %i.ah, align 1, !alias.scope !399, !noundef !5
  %i.aj = icmp sgt i8 %i.ai, -65
  br i1 %i.aj, label %.split.i.i, label %.backedge.i

.backedge.i:                                      ; preds = %.lr.ph.i
  %.sroa.01.0.i414 = add i64 %.sroa.01.025.i, -1  ; 2 uses
  %i.ak = icmp eq i64 %.sroa.01.0.i414, 0
  br i1 %i.ak, label %.split10.i, label %.lr.ph.i

.split.i.i:                                       ; preds = %.lr.ph.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.01.025.i
  %i.am = sub nuw i64 %i.s, %.sroa.01.025.i
  br label %.split10.i

.split10.i:                                       ; preds = %.backedge.i, %.split.i.i
  %.sroa.0.0.i.pn.i = phi ptr [ %i.al, %.split.i.i ], [ %i.n, %.backedge.i ] ; 6 uses
  %.sroa.3.0.i.pn.i = phi i64 [ %i.am, %.split.i.i ], [ %i.s, %.backedge.i ]
  switch i64 %.sroa.3.0.i.pn.i, label %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit.thread [
    i64 1, label %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit
    i64 2, label %.split1014
    i64 3, label %bb.i
  ]

.split1014:                                       ; preds = %.split10.i
  %i.an = load i16, ptr %.sroa.0.0.i.pn.i, align 1
  %i.ao = icmp ne i16 %i.an, -31294
  %i.ap = zext i1 %i.ao to i32
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit.thread1012, label %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit.thread

bb.i:                                             ; preds = %.split10.i
  %i.ar = load i16, ptr %.sroa.0.0.i.pn.i, align 1
  %i.as = xor i16 %i.ar, -32542
  %i.at = getelementptr i8, ptr %.sroa.0.0.i.pn.i, i64 2
  %i.au = load i8, ptr %i.at, align 1
  %i.av = zext i8 %i.au to i16
  %i.aw = xor i16 %i.av, 168
  %i.ax = or i16 %i.as, %i.aw
  %i.ay = icmp ne i16 %i.ax, 0
  %i.az = zext i1 %i.ay to i32
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit.thread1012, label %.split

.split:                                           ; preds = %bb.i
  %i.bb = load i16, ptr %.sroa.0.0.i.pn.i, align 1
  %i.bc = xor i16 %i.bb, -32542
  %i.bd = getelementptr i8, ptr %.sroa.0.0.i.pn.i, i64 2
  %i.be = load i8, ptr %i.bd, align 1
  %i.bf = zext i8 %i.be to i16
  %i.bg = xor i16 %i.bf, 169
  %i.bh = or i16 %i.bc, %i.bg
  %i.bi = icmp ne i16 %i.bh, 0
  %i.bj = zext i1 %i.bi to i32
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit.thread1012, label %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit.thread

_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit: ; preds = %.preheader.i, %.split10.i
  %.sroa.0.0.i.pn31.i = phi ptr [ %.sroa.0.0.i.pn.i, %.split10.i ], [ %i.n, %.preheader.i ]
  %lhsc.i = load i8, ptr %.sroa.0.0.i.pn31.i, align 1, !alias.scope !399
  %i.bl = add i8 %lhsc.i, -10
  %switch.selectcmp.i = icmp ult i8 %i.bl, 4
  br i1 %switch.selectcmp.i, label %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit.thread1012, label %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit.thread

_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit.thread: ; preds = %.thread, %.split10.i, %.split1014, %.split, %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit, %bb.h
  %.sroa.0.0 = phi i64 [ 0, %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit ], [ 1, %bb.h ], [ 0, %.split1014 ], [ 0, %.split ], [ 0, %.split10.i ], [ 0, %.thread ]
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !noundef !5
  %i.bo = add i64 %i.bn, -1
  store i64 %i.bo, ptr %i.bm, align 8
  %i.bp = tail call fastcc { ptr, i64 } @_RNvNtCs2wCc12Mnjqg_5ropey9str_utils15trim_line_break(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.n, i64 noundef %i.s) #18 ; 2 uses
  %i.bq = extractvalue { ptr, i64 } %i.bp, 0
  %i.br = extractvalue { ptr, i64 } %i.bp, 1
  %i.bs = tail call noundef i64 @_RNvNtCs2wCc12Mnjqg_5ropey9str_utils24last_line_start_byte_idx(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bq, i64 noundef %i.br) ; 8 uses
  %i.bt = sub i64 %i.s, %i.bs                     ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 5 uses
  %i.bv = load i64, ptr %i.bu, align 8, !noundef !5 ; 7 uses
  %.not170 = icmp ult i64 %i.bt, %i.bv
  br i1 %.not170, label %bb.j, label %bb.m

_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit.thread1012: ; preds = %bb.i, %.split1014, %.split, %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !noundef !5
  %i.by = add i64 %i.bx, -1
  store i64 %i.by, ptr %i.bw, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.bz, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.55.0..sroa_idx, i8 0, i64 32, i1 false)
  br label %bb.bf

bb.j:                                             ; preds = %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit.thread
  %i.ca = icmp eq i64 %i.bs, 0
  br i1 %i.ca, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not.i416 = icmp ult i64 %i.bs, %i.s
  br i1 %.not.i416, label %bb.l, label %.split.i417

.split.i417:                                      ; preds = %bb.k
  %i.cb = icmp eq i64 %i.bs, %i.s
  br i1 %i.cb, label %.thread1019, label %_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.cc = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.bs
  %i.cd = load i8, ptr %i.cc, align 1, !alias.scope !400, !noundef !5
  %i.ce = icmp sgt i8 %i.cd, -65
  br i1 %i.ce, label %.thread1019, label %_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread

bb.m:                                             ; preds = %_RNvNtCs2wCc12Mnjqg_5ropey9str_utils20ends_with_line_break.exit.thread
  %i.cf = sub i64 %i.s, %i.bv                     ; 7 uses
  %i.cg = icmp eq i64 %i.cf, 0
  br i1 %i.cg, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not.i419 = icmp ult i64 %i.cf, %i.s
  br i1 %.not.i419, label %bb.o, label %.split.i420

.split.i420:                                      ; preds = %bb.n
  %i.ch = icmp eq i64 %i.bv, 0
  br i1 %i.ch, label %.thread1519, label %_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread

.thread1519:                                      ; preds = %.split.i420
  %.sroa.0124.01514 = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.cf
  store i32 %i.r, ptr %i.q, align 8
  br label %_RINvNtCsk17MtNlfUKQ_11str_indices5utf1621count_surrogates_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit238

bb.o:                                             ; preds = %bb.n
  %i.ci = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.cf
  %i.cj = load i8, ptr %i.ci, align 1, !alias.scope !401, !noundef !5
  %i.ck = icmp sgt i8 %i.cj, -65
  br i1 %i.ck, label %bb.q, label %_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread

.thread1019:                                      ; preds = %bb.l, %.split.i417
  %i.cl = sub nuw i64 %i.bv, %i.bt
  br label %bb.q

_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread: ; preds = %.split.i420, %bb.o, %.split.i417, %bb.l
  %.sroa.010.0 = phi i64 [ %i.bs, %.split.i417 ], [ %i.bs, %bb.l ], [ %i.cf, %bb.o ], [ %i.cf, %.split.i420 ]
  tail call void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.n, i64 noundef %i.s, i64 noundef %.sroa.010.0, i64 noundef %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #17
  unreachable

bb.p:                                             ; preds = %bb.j
  %i.cm = sub nuw i64 %i.bv, %i.bt                ; 2 uses
  store i64 %i.cm, ptr %i.bu, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.co = load i64, ptr %i.cn, align 8, !noundef !5 ; 10 uses
  %i.cp = icmp ult i64 %i.co, 576460752303423488
  tail call void @llvm.assume(i1 %i.cp)
  %i.cq = add nsw i64 %i.co, -1                   ; 5 uses
  %.not173 = icmp eq i64 %i.co, 0
  br i1 %.not173, label %bb.u, label %bb.v, !prof !7
end_hunk_2
begin_hunk_3_@_RNvMs4_NtCs2wCc12Mnjqg_5ropey4iterNtB5_5Lines9prev_impl:bb.a

.lr.ph1176.prol.loopexit:                         ; preds = %.lr.ph1176.prol, %.lr.ph1176.preheader
  %.lcssa2096.unr = phi <16 x i8> [ poison, %.lr.ph1176.preheader ], [ %i.jt, %.lr.ph1176.prol ]
  %.sroa.016.0.i2341174.unr = phi ptr [ %.sroa.0712.01179, %.lr.ph1176.preheader ], [ %i.jp, %.lr.ph1176.prol ]
  %.unr2121 = phi <16 x i8> [ zeroinitializer, %.lr.ph1176.preheader ], [ %i.jt, %.lr.ph1176.prol ]
  %i.ju = icmp ult i64 %i.jl, 48
  br i1 %i.ju, label %._crit_edge1177, label %.lr.ph1176

._crit_edge1183:                                  ; preds = %._crit_edge1177, %.preheader1071
  %.sroa.0.1.i232.lcssa = phi i64 [ %.sroa.0.0.i229.lcssa, %.preheader1071 ], [ %i.lm, %._crit_edge1177 ] ; 3 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.im, i64 %i.io
  %i.jw = icmp samesign eq i64 %i.io, 0
  br i1 %i.jw, label %_RINvNtCsk17MtNlfUKQ_11str_indices5utf1621count_surrogates_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit238, label %.lr.ph1188.preheader

.lr.ph1188.preheader:                             ; preds = %._crit_edge1183
  %min.iters.check1825 = icmp ult i64 %i.io, 4
  br i1 %min.iters.check1825, label %.lr.ph1188.preheader2092, label %vector.ph1826

vector.ph1826:                                    ; preds = %.lr.ph1188.preheader
  %n.vec1827 = and i64 %i.io, -4                  ; 3 uses
  %i.jx = getelementptr i8, ptr %i.im, i64 %n.vec1827
  %i.jy = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.sroa.0.1.i232.lcssa, i64 0
  br label %vector.body1828

vector.body1828:                                  ; preds = %vector.body1828, %vector.ph1826
  %index1829 = phi i64 [ 0, %vector.ph1826 ], [ %index.next1835, %vector.body1828 ] ; 2 uses
  %vec.phi1830 = phi <2 x i64> [ %i.jy, %vector.ph1826 ], [ %i.ke, %vector.body1828 ]
  %vec.phi1831 = phi <2 x i64> [ zeroinitializer, %vector.ph1826 ], [ %i.kf, %vector.body1828 ]
  %next.gep1832 = getelementptr i8, ptr %i.im, i64 %index1829 ; 2 uses
  %i.jz = getelementptr i8, ptr %next.gep1832, i64 2
  %wide.load1833 = load <2 x i8>, ptr %next.gep1832, align 1
  %wide.load1834 = load <2 x i8>, ptr %i.jz, align 1
  %i.ka = icmp ugt <2 x i8> %wide.load1833, splat (i8 -17)
  %i.kb = icmp ugt <2 x i8> %wide.load1834, splat (i8 -17)
  %i.kc = zext <2 x i1> %i.ka to <2 x i64>
  %i.kd = zext <2 x i1> %i.kb to <2 x i64>
  %i.ke = add <2 x i64> %vec.phi1830, %i.kc       ; 2 uses
  %i.kf = add <2 x i64> %vec.phi1831, %i.kd       ; 2 uses
  %index.next1835 = add nuw i64 %index1829, 4     ; 2 uses
  %i.kg = icmp eq i64 %index.next1835, %n.vec1827
  br i1 %i.kg, label %middle.block1836, label %vector.body1828, !llvm.loop !334

middle.block1836:                                 ; preds = %vector.body1828
  %bin.rdx1837 = add <2 x i64> %i.kf, %i.ke
  %i.kh = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx1837) ; 2 uses
  %cmp.n1838 = icmp eq i64 %i.io, %n.vec1827
  br i1 %cmp.n1838, label %_RINvNtCsk17MtNlfUKQ_11str_indices5utf1621count_surrogates_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit238, label %.lr.ph1188.preheader2092

.lr.ph1188.preheader2092:                         ; preds = %.lr.ph1188.preheader, %middle.block1836
  %.sroa.0.2.i2361186.ph = phi i64 [ %.sroa.0.1.i232.lcssa, %.lr.ph1188.preheader ], [ %i.kh, %middle.block1836 ]
  %.sroa.012.0.i2351185.ph = phi ptr [ %i.im, %.lr.ph1188.preheader ], [ %i.jx, %middle.block1836 ]
  br label %.lr.ph1188

.lr.ph1188:                                       ; preds = %.lr.ph1188.preheader2092, %.lr.ph1188
  %.sroa.0.2.i2361186 = phi i64 [ %i.km, %.lr.ph1188 ], [ %.sroa.0.2.i2361186.ph, %.lr.ph1188.preheader2092 ]
  %.sroa.012.0.i2351185 = phi ptr [ %i.ki, %.lr.ph1188 ], [ %.sroa.012.0.i2351185.ph, %.lr.ph1188.preheader2092 ] ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i2351185, i64 1 ; 2 uses
  %i.kj = load i8, ptr %.sroa.012.0.i2351185, align 1, !noundef !5
  %i.kk = icmp ugt i8 %i.kj, -17
  %i.kl = zext i1 %i.kk to i64
  %i.km = add i64 %.sroa.0.2.i2361186, %i.kl      ; 2 uses
  %i.kn = icmp eq ptr %i.ki, %i.jv
  br i1 %i.kn, label %_RINvNtCsk17MtNlfUKQ_11str_indices5utf1621count_surrogates_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit238, label %.lr.ph1188, !llvm.loop !335

.lr.ph1176:                                       ; preds = %.lr.ph1176.prol.loopexit, %.lr.ph1176
  %.sroa.016.0.i2341174 = phi ptr [ %i.le, %.lr.ph1176 ], [ %.sroa.016.0.i2341174.unr, %.lr.ph1176.prol.loopexit ] ; 5 uses
  %i.ko = phi <16 x i8> [ %i.li, %.lr.ph1176 ], [ %.unr2121, %.lr.ph1176.prol.loopexit ]
  %i.kp = getelementptr inbounds nuw i8, ptr %.sroa.016.0.i2341174, i64 16
  %i.kq = load <16 x i8>, ptr %.sroa.016.0.i2341174, align 16, !alias.scope !406, !noalias !407
  %i.kr = icmp ugt <16 x i8> %i.kq, splat (i8 -17)
  %i.ks = zext <16 x i1> %i.kr to <16 x i8>
  %i.kt = add <16 x i8> %i.ko, %i.ks
  %i.ku = getelementptr inbounds nuw i8, ptr %.sroa.016.0.i2341174, i64 32
  %i.kv = load <16 x i8>, ptr %i.kp, align 16, !alias.scope !406, !noalias !407
  %i.kw = icmp ugt <16 x i8> %i.kv, splat (i8 -17)
  %i.kx = zext <16 x i1> %i.kw to <16 x i8>
  %i.ky = add <16 x i8> %i.kt, %i.kx
  %i.kz = getelementptr inbounds nuw i8, ptr %.sroa.016.0.i2341174, i64 48
  %i.la = load <16 x i8>, ptr %i.ku, align 16, !alias.scope !406, !noalias !407
  %i.lb = icmp ugt <16 x i8> %i.la, splat (i8 -17)
  %i.lc = zext <16 x i1> %i.lb to <16 x i8>
  %i.ld = add <16 x i8> %i.ky, %i.lc
  %i.le = getelementptr inbounds nuw i8, ptr %.sroa.016.0.i2341174, i64 64 ; 2 uses
  %i.lf = load <16 x i8>, ptr %i.kz, align 16, !alias.scope !406, !noalias !407
  %i.lg = icmp ugt <16 x i8> %i.lf, splat (i8 -17)
  %i.lh = zext <16 x i1> %i.lg to <16 x i8>
  %i.li = add <16 x i8> %i.ld, %i.lh              ; 2 uses
  %i.lj = icmp eq ptr %i.le, %i.jk
  br i1 %i.lj, label %._crit_edge1177, label %.lr.ph1176

._crit_edge1177:                                  ; preds = %.lr.ph1176, %.lr.ph1176.prol.loopexit
  %.lcssa2096 = phi <16 x i8> [ %.lcssa2096.unr, %.lr.ph1176.prol.loopexit ], [ %i.li, %.lr.ph1176 ]
  %i.lk = tail call <2 x i64> @llvm.x86.sse2.psad.bw(<16 x i8> %.lcssa2096, <16 x i8> zeroinitializer) ; 2 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x i64> %i.lk, i64 0
  %.sroa.0.8.vec.extract.i = extractelement <2 x i64> %i.lk, i64 1
  %i.ll = add i64 %.sroa.0.8.vec.extract.i, %.sroa.0.1.i2321181
  %i.lm = add i64 %i.ll, %.sroa.0.0.vec.extract.i ; 2 uses
  %i.ln = icmp eq i64 %i.jj, 0
  br i1 %i.ln, label %._crit_edge1183, label %.lr.ph1176.preheader

_RINvNtCsk17MtNlfUKQ_11str_indices5utf1621count_surrogates_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit238: ; preds = %.lr.ph1188, %middle.block1836, %.thread1519, %bb.s, %._crit_edge1183, %_RINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit213
  %.sroa.0.0.i2121527 = phi i64 [ %.lcssa2102, %_RINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit213 ], [ %.sroa.0.0.i2121534, %._crit_edge1183 ], [ 0, %.thread1519 ], [ 0, %bb.s ], [ %.sroa.0.0.i2121534, %middle.block1836 ], [ %.sroa.0.0.i2121534, %.lr.ph1188 ]
  %.sroa.6128.015151526 = phi i64 [ %.sroa.6128.0, %_RINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit213 ], [ %.sroa.6128.0, %._crit_edge1183 ], [ 0, %.thread1519 ], [ 0, %bb.s ], [ %.sroa.6128.0, %middle.block1836 ], [ %.sroa.6128.0, %.lr.ph1188 ]
  %.sroa.0124.015181525 = phi ptr [ %.sroa.0124.0, %_RINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit213 ], [ %.sroa.0124.0, %._crit_edge1183 ], [ %.sroa.0124.01514, %.thread1519 ], [ %.sroa.0124.0, %bb.s ], [ %.sroa.0124.0, %middle.block1836 ], [ %.sroa.0124.0, %.lr.ph1188 ]
  %.sroa.0.3.i237 = phi i64 [ 0, %_RINvNtCsk17MtNlfUKQ_11str_indices5chars10count_implNtNtNtCskKLDkoKarTP_4core9core_arch3x867___m128iECs2wCc12Mnjqg_5ropey.exit213 ], [ %.sroa.0.1.i232.lcssa, %._crit_edge1183 ], [ 0, %.thread1519 ], [ 0, %bb.s ], [ %i.kh, %middle.block1836 ], [ %i.km, %.lr.ph1188 ]
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.lo, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.0124.015181525, ptr %.sroa.435.0..sroa_idx, align 8
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.6128.015151526, ptr %.sroa.536.0..sroa_idx, align 8
  %.sroa.637.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.0.0.i2121527, ptr %.sroa.637.0..sroa_idx, align 8
  %.sroa.738.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.0.3.i237, ptr %.sroa.738.0..sroa_idx, align 8
  %.sroa.839.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.0.0, ptr %.sroa.839.0..sroa_idx, align 8
  br label %bb.bf

bb.u:                                             ; preds = %bb.p
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #17
  unreachable

bb.v:                                             ; preds = %bb.p
  %i.lp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.lq = load ptr, ptr %i.lp, align 8, !nonnull !5, !noundef !5 ; 6 uses
  %i.lr = getelementptr inbounds nuw [16 x i8], ptr %i.lq, i64 %i.cq ; 2 uses
  %i.ls = load ptr, ptr %i.lr, align 8, !nonnull !5, !align !23, !noundef !5
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lr, i64 8 ; 3 uses
  %i.lu = load i64, ptr %i.lt, align 8, !noundef !5 ; 7 uses
  %i.lv = load ptr, ptr %i.ls, align 8, !nonnull !5, !noundef !5
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 16
  %i.lx = tail call noundef nonnull align 8 ptr @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node8children(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.lw)
  %i.ly = tail call { ptr, i64 } @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4info(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(968) %i.lx) ; 2 uses
  %i.lz = extractvalue { ptr, i64 } %i.ly, 1      ; 2 uses
  %.not174 = icmp ugt i64 %i.lu, %i.lz
  br i1 %.not174, label %bb.x, label %bb.w, !prof !18

bb.w:                                             ; preds = %bb.v
  %i.ma = extractvalue { ptr, i64 } %i.ly, 0      ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ma) ]
  %i.mb = icmp eq i64 %i.lu, 0
  br i1 %i.mb, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9prev_impl0EBW_.exit, label %.preheader1070.preheader

.preheader1070.preheader:                         ; preds = %bb.w
  %xtraiter2122 = and i64 %i.lu, 1
  %i.mc = icmp eq i64 %i.lu, 1
  br i1 %i.mc, label %.preheader1070.epil.preheader, label %.preheader1070.preheader.new

.preheader1070.preheader.new:                     ; preds = %.preheader1070.preheader
  %unroll_iter2128 = and i64 %i.lu, -2
  br label %.preheader1070

.preheader1070:                                   ; preds = %.preheader1070, %.preheader1070.preheader.new
  %.sroa.01.0.i434 = phi i64 [ 0, %.preheader1070.preheader.new ], [ %i.mn, %.preheader1070 ] ; 3 uses
  %i.md = phi <4 x i64> [ zeroinitializer, %.preheader1070.preheader.new ], [ %i.mm, %.preheader1070 ]
  %niter2129 = phi i64 [ 0, %.preheader1070.preheader.new ], [ %niter2129.next.1, %.preheader1070 ]
  %i.me = getelementptr inbounds nuw [32 x i8], ptr %i.ma, i64 %.sroa.01.0.i434
  %i.mf = load <4 x i64>, ptr %i.me, align 8, !alias.scope !408, !noalias !409
  %i.mg = shufflevector <4 x i64> %i.mf, <4 x i64> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.mh = add <4 x i64> %i.mg, %i.md
  %i.mi = getelementptr inbounds nuw [32 x i8], ptr %i.ma, i64 %.sroa.01.0.i434
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 32
  %i.mk = load <4 x i64>, ptr %i.mj, align 8, !alias.scope !408, !noalias !409
  %i.ml = shufflevector <4 x i64> %i.mk, <4 x i64> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.mm = add <4 x i64> %i.ml, %i.mh              ; 3 uses
  %i.mn = add nuw i64 %.sroa.01.0.i434, 2         ; 2 uses
  %niter2129.next.1 = add nuw i64 %niter2129, 2   ; 2 uses
  %niter2129.ncmp.1 = icmp eq i64 %niter2129.next.1, %unroll_iter2128
  br i1 %niter2129.ncmp.1, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9prev_impl0EBW_.exit.loopexit.unr-lcssa, label %.preheader1070

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9prev_impl0EBW_.exit.loopexit.unr-lcssa: ; preds = %.preheader1070
  %lcmp.mod2125.not = icmp eq i64 %xtraiter2122, 0
  br i1 %lcmp.mod2125.not, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9prev_impl0EBW_.exit, label %.preheader1070.epil.preheader

.preheader1070.epil.preheader:                    ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9prev_impl0EBW_.exit.loopexit.unr-lcssa, %.preheader1070.preheader
  %.sroa.01.0.i434.epil.init = phi i64 [ 0, %.preheader1070.preheader ], [ %i.mn, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9prev_impl0EBW_.exit.loopexit.unr-lcssa ]
  %.epil.init = phi <4 x i64> [ zeroinitializer, %.preheader1070.preheader ], [ %i.mm, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9prev_impl0EBW_.exit.loopexit.unr-lcssa ]
  %lcmp.mod2127 = trunc i64 %i.lu to i1
  tail call void @llvm.assume(i1 %lcmp.mod2127)
  %i.mo = getelementptr inbounds nuw [32 x i8], ptr %i.ma, i64 %.sroa.01.0.i434.epil.init
  %i.mp = load <4 x i64>, ptr %i.mo, align 8, !alias.scope !408, !noalias !409
  %i.mq = shufflevector <4 x i64> %i.mp, <4 x i64> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.mr = add <4 x i64> %i.mq, %.epil.init
  br label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9prev_impl0EBW_.exit

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9prev_impl0EBW_.exit: ; preds = %.preheader1070.epil.preheader, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9prev_impl0EBW_.exit.loopexit.unr-lcssa, %bb.w
  %i.ms = phi <4 x i64> [ zeroinitializer, %bb.w ], [ %i.mm, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9prev_impl0EBW_.exit.loopexit.unr-lcssa ], [ %i.mr, %.preheader1070.epil.preheader ] ; 3 uses
  call fastcc void @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree9text_infoNtB2_8TextInfo8from_str(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.n, i64 noundef %i.s) #18
  %i.mt = load i64, ptr %i.g, align 8, !noundef !5 ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.mv = load <2 x i64>, ptr %i.mu, align 8      ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.mx = load i64, ptr %i.mw, align 8, !noundef !5 ; 2 uses
  %i.my = extractelement <4 x i64> %i.ms, i64 3
  %i.mz = add i64 %i.mt, %i.my
  %i.na = shufflevector <4 x i64> %i.ms, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.nb = add <2 x i64> %i.mv, %i.na
  %i.nc = extractelement <4 x i64> %i.ms, i64 2
  %i.nd = add i64 %i.mx, %i.nc
  %3 = icmp ne i32 %i.r, 0
  %i.ne = getelementptr [16 x i8], ptr %i.lq, i64 %i.co ; 2 uses
  %i.nf = getelementptr i8, ptr %i.ne, i64 -16
  %i.ng = getelementptr i8, ptr %i.ne, i64 -8
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.lu, i64 noundef %i.lz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #17
  unreachable

bb.y:                                             ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9prev_impl0EBW_.exit, %bb.an
  %i.nh = phi i64 [ %i.mt, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9prev_impl0EBW_.exit ], [ %i.se, %bb.an ] ; 2 uses
  %i.ni = phi i64 [ %i.cm, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9prev_impl0EBW_.exit ], [ %i.sg, %bb.an ] ; 6 uses
  %.sroa.22.0 = phi i64 [ %i.nd, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9prev_impl0EBW_.exit ], [ %.sroa.22.4, %bb.an ] ; 3 uses
  %.sroa.0515.0 = phi i64 [ %i.mz, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9prev_impl0EBW_.exit ], [ %.sroa.0515.4, %bb.an ] ; 3 uses
  %.sroa.061.0 = phi i64 [ %i.cq, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9prev_impl0EBW_.exit ], [ %.sroa.061.2, %bb.an ] ; 6 uses
  %.sroa.042.0 = phi i1 [ %3, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9prev_impl0EBW_.exit ], [ true, %bb.an ]
  %i.nj = phi <2 x i64> [ %i.nb, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9prev_impl0EBW_.exit ], [ %i.rh, %bb.an ] ; 3 uses
  %i.nk = phi <2 x i64> [ %i.mv, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs2wCc12Mnjqg_5ropey4tree9text_info8TextInfoENtNtNtNtBb_4iter6traits8iterator8Iterator4foldBQ_NCNvMs4_NtBW_4iterNtB2A_5Lines9prev_impl0EBW_.exit ], [ %i.sf, %bb.an ] ; 2 uses
  %i.nl = load i64, ptr %i.lt, align 8, !noundef !5 ; 2 uses
  %i.nm = icmp eq i64 %i.nl, 0
  br i1 %i.nm, label %.lr.ph1192, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.nn = add i64 %i.nl, -1
  store i64 %i.nn, ptr %i.lt, align 8
  br label %.loopexit1067

.lr.ph1192:                                       ; preds = %bb.y, %bb.ab
  %.sroa.043.01191 = phi i64 [ %i.ns, %bb.ab ], [ %i.cq, %bb.y ] ; 7 uses
  %i.no = getelementptr inbounds nuw [16 x i8], ptr %i.lq, i64 %.sroa.043.01191 ; 4 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 8
  %i.nq = load i64, ptr %i.np, align 8, !noundef !5 ; 2 uses
  %i.nr = icmp eq i64 %i.nq, 0
  br i1 %i.nr, label %bb.ab, label %bb.ac

bb.aa:                                            ; preds = %bb.ab
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ns, i64 noundef %i.co, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #17
  unreachable

bb.ab:                                            ; preds = %.lr.ph1192
  %i.ns = add nsw i64 %.sroa.043.01191, -1        ; 3 uses
  %i.nt = icmp ult i64 %i.ns, %i.co
  br i1 %i.nt, label %.lr.ph1192, label %bb.aa

bb.ac:                                            ; preds = %.lr.ph1192
  %i.nu = getelementptr inbounds nuw i8, ptr %i.no, i64 8 ; 2 uses
  %i.nv = icmp ult i64 %.sroa.043.01191, %.sroa.061.0
  br i1 %i.nv, label %bb.ad, label %.loopexit1068

bb.ad:                                            ; preds = %bb.ac
  %.not176 = icmp ugt i64 %.sroa.061.0, %i.co
  br i1 %.not176, label %bb.ae, label %.lr.ph1213.preheader, !prof !7

bb.ae:                                            ; preds = %bb.ad
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.043.01191, i64 noundef %.sroa.061.0, i64 noundef %i.co, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #17
  unreachable

.lr.ph1213.preheader:                             ; preds = %bb.ad
  %i.nw = getelementptr inbounds nuw [16 x i8], ptr %i.lq, i64 %.sroa.061.0
  br label %.lr.ph1213

.loopexit:                                        ; preds = %.lr.ph1202.prol.loopexit, %.lr.ph1202, %bb.af
  %.sroa.22.3.lcssa = phi i64 [ %.sroa.22.21207, %bb.af ], [ %.lcssa2024.unr, %.lr.ph1202.prol.loopexit ], [ %i.qk, %.lr.ph1202 ] ; 2 uses
  %.sroa.0515.3.lcssa = phi i64 [ %.sroa.0515.21210, %bb.af ], [ %.lcssa2026.unr, %.lr.ph1202.prol.loopexit ], [ %i.qi, %.lr.ph1202 ] ; 2 uses
  %i.nx = phi <2 x i64> [ %i.nz, %bb.af ], [ %.lcssa2025.unr, %.lr.ph1202.prol.loopexit ], [ %i.qj, %.lr.ph1202 ] ; 2 uses
  %i.ny = icmp eq ptr %i.oa, %i.nw
  br i1 %i.ny, label %.loopexit1068.loopexit, label %.lr.ph1213

.lr.ph1213:                                       ; preds = %.lr.ph1213.preheader, %.loopexit
  %.sroa.055.01211 = phi ptr [ %i.oa, %.loopexit ], [ %i.no, %.lr.ph1213.preheader ] ; 3 uses
  %.sroa.0515.21210 = phi i64 [ %.sroa.0515.3.lcssa, %.loopexit ], [ %.sroa.0515.0, %.lr.ph1213.preheader ] ; 3 uses
  %.sroa.22.21207 = phi i64 [ %.sroa.22.3.lcssa, %.loopexit ], [ %.sroa.22.0, %.lr.ph1213.preheader ] ; 3 uses
  %i.nz = phi <2 x i64> [ %i.nx, %.loopexit ], [ %i.nj, %.lr.ph1213.preheader ] ; 3 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %.sroa.055.01211, i64 16 ; 2 uses
  %i.ob = load ptr, ptr %.sroa.055.01211, align 8, !nonnull !5, !align !23, !noundef !5
  %i.oc = load ptr, ptr %i.ob, align 8, !nonnull !5, !noundef !5
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 16
  %i.oe = tail call noundef nonnull align 8 ptr @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node8children(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.od)
  %i.of = tail call { ptr, i64 } @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren4info(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(968) %i.oe) ; 2 uses
  %i.og = extractvalue { ptr, i64 } %i.of, 1      ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %.sroa.055.01211, i64 8
  %i.oi = load i64, ptr %i.oh, align 8, !noundef !5 ; 4 uses
  %.not177 = icmp ugt i64 %i.oi, %i.og
  br i1 %.not177, label %bb.ag, label %bb.af, !prof !18

bb.af:                                            ; preds = %.lr.ph1213
  %i.oj = extractvalue { ptr, i64 } %i.of, 0      ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.oj) ]
  %.idx1322 = shl i64 %i.oi, 5                    ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 %.idx1322
  %i.ol = icmp eq i64 %i.oi, 0
  br i1 %i.ol, label %.loopexit, label %.lr.ph1202.preheader

.lr.ph1202.preheader:                             ; preds = %bb.af
  %i.om = add i64 %.idx1322, -32                  ; 2 uses
  %i.on = lshr exact i64 %i.om, 5
  %i.oo = add nuw nsw i64 %i.on, 1
  %xtraiter2130 = and i64 %i.oo, 3                ; 2 uses
  %lcmp.mod2131.not = icmp eq i64 %xtraiter2130, 0
  br i1 %lcmp.mod2131.not, label %.lr.ph1202.prol.loopexit, label %.lr.ph1202.prol

.lr.ph1202.prol:                                  ; preds = %.lr.ph1202.preheader, %.lr.ph1202.prol
  %.sroa.058.01200.prol = phi ptr [ %i.oq, %.lr.ph1202.prol ], [ %i.oj, %.lr.ph1202.preheader ] ; 4 uses
  %.sroa.0515.31199.prol = phi i64 [ %i.ow, %.lr.ph1202.prol ], [ %.sroa.0515.21210, %.lr.ph1202.preheader ]
  %.sroa.22.31196.prol = phi i64 [ %i.oy, %.lr.ph1202.prol ], [ %.sroa.22.21207, %.lr.ph1202.preheader ]
  %i.op = phi <2 x i64> [ %i.ox, %.lr.ph1202.prol ], [ %i.nz, %.lr.ph1202.preheader ]
  %prol.iter2132 = phi i64 [ %prol.iter2132.next, %.lr.ph1202.prol ], [ 0, %.lr.ph1202.preheader ]
  %i.oq = getelementptr inbounds nuw i8, ptr %.sroa.058.01200.prol, i64 32 ; 2 uses
  %i.or = load i64, ptr %.sroa.058.01200.prol, align 8, !noundef !5
  %i.os = getelementptr inbounds nuw i8, ptr %.sroa.058.01200.prol, i64 8
  %i.ot = load <2 x i64>, ptr %i.os, align 8
  %i.ou = getelementptr inbounds nuw i8, ptr %.sroa.058.01200.prol, i64 24
  %i.ov = load i64, ptr %i.ou, align 8, !noundef !5
  %i.ow = add i64 %i.or, %.sroa.0515.31199.prol   ; 3 uses
  %i.ox = add <2 x i64> %i.ot, %i.op              ; 3 uses
  %i.oy = add i64 %i.ov, %.sroa.22.31196.prol     ; 3 uses
  %prol.iter2132.next = add i64 %prol.iter2132, 1 ; 2 uses
  %prol.iter2132.cmp.not = icmp eq i64 %prol.iter2132.next, %xtraiter2130
  br i1 %prol.iter2132.cmp.not, label %.lr.ph1202.prol.loopexit, label %.lr.ph1202.prol, !llvm.loop !343

.lr.ph1202.prol.loopexit:                         ; preds = %.lr.ph1202.prol, %.lr.ph1202.preheader
  %.lcssa2026.unr = phi i64 [ poison, %.lr.ph1202.preheader ], [ %i.ow, %.lr.ph1202.prol ]
  %.lcssa2025.unr = phi <2 x i64> [ poison, %.lr.ph1202.preheader ], [ %i.ox, %.lr.ph1202.prol ]
  %.lcssa2024.unr = phi i64 [ poison, %.lr.ph1202.preheader ], [ %i.oy, %.lr.ph1202.prol ]
  %.sroa.058.01200.unr = phi ptr [ %i.oj, %.lr.ph1202.preheader ], [ %i.oq, %.lr.ph1202.prol ]
  %.sroa.0515.31199.unr = phi i64 [ %.sroa.0515.21210, %.lr.ph1202.preheader ], [ %i.ow, %.lr.ph1202.prol ]
  %.sroa.22.31196.unr = phi i64 [ %.sroa.22.21207, %.lr.ph1202.preheader ], [ %i.oy, %.lr.ph1202.prol ]
  %.unr2133 = phi <2 x i64> [ %i.nz, %.lr.ph1202.preheader ], [ %i.ox, %.lr.ph1202.prol ]
  %i.oz = icmp ult i64 %i.om, 96
  br i1 %i.oz, label %.loopexit, label %.lr.ph1202

bb.ag:                                            ; preds = %.lr.ph1213
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.oi, i64 noundef %i.og, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #17
  unreachable

.lr.ph1202:                                       ; preds = %.lr.ph1202.prol.loopexit, %.lr.ph1202
  %.sroa.058.01200 = phi ptr [ %i.qc, %.lr.ph1202 ], [ %.sroa.058.01200.unr, %.lr.ph1202.prol.loopexit ] ; 13 uses
  %.sroa.0515.31199 = phi i64 [ %i.qi, %.lr.ph1202 ], [ %.sroa.0515.31199.unr, %.lr.ph1202.prol.loopexit ]
  %.sroa.22.31196 = phi i64 [ %i.qk, %.lr.ph1202 ], [ %.sroa.22.31196.unr, %.lr.ph1202.prol.loopexit ]
  %i.pa = phi <2 x i64> [ %i.qj, %.lr.ph1202 ], [ %.unr2133, %.lr.ph1202.prol.loopexit ]
  %i.pb = getelementptr inbounds nuw i8, ptr %.sroa.058.01200, i64 32
  %i.pc = load i64, ptr %.sroa.058.01200, align 8, !noundef !5
  %i.pd = getelementptr inbounds nuw i8, ptr %.sroa.058.01200, i64 8
  %i.pe = load <2 x i64>, ptr %i.pd, align 8
  %i.pf = getelementptr inbounds nuw i8, ptr %.sroa.058.01200, i64 24
  %i.pg = load i64, ptr %i.pf, align 8, !noundef !5
  %i.ph = add i64 %i.pc, %.sroa.0515.31199
  %i.pi = add <2 x i64> %i.pe, %i.pa
  %i.pj = add i64 %i.pg, %.sroa.22.31196
  %i.pk = getelementptr inbounds nuw i8, ptr %.sroa.058.01200, i64 64
  %i.pl = load i64, ptr %i.pb, align 8, !noundef !5
  %i.pm = getelementptr inbounds nuw i8, ptr %.sroa.058.01200, i64 40
  %i.pn = load <2 x i64>, ptr %i.pm, align 8
  %i.po = getelementptr inbounds nuw i8, ptr %.sroa.058.01200, i64 56
  %i.pp = load i64, ptr %i.po, align 8, !noundef !5
  %i.pq = add i64 %i.pl, %i.ph
  %i.pr = add <2 x i64> %i.pn, %i.pi
  %i.ps = add i64 %i.pp, %i.pj
  %i.pt = getelementptr inbounds nuw i8, ptr %.sroa.058.01200, i64 96
  %i.pu = load i64, ptr %i.pk, align 8, !noundef !5
  %i.pv = getelementptr inbounds nuw i8, ptr %.sroa.058.01200, i64 72
  %i.pw = load <2 x i64>, ptr %i.pv, align 8
  %i.px = getelementptr inbounds nuw i8, ptr %.sroa.058.01200, i64 88
  %i.py = load i64, ptr %i.px, align 8, !noundef !5
  %i.pz = add i64 %i.pu, %i.pq
  %i.qa = add <2 x i64> %i.pw, %i.pr
  %i.qb = add i64 %i.py, %i.ps
  %i.qc = getelementptr inbounds nuw i8, ptr %.sroa.058.01200, i64 128 ; 2 uses
  %i.qd = load i64, ptr %i.pt, align 8, !noundef !5
  %i.qe = getelementptr inbounds nuw i8, ptr %.sroa.058.01200, i64 104
  %i.qf = load <2 x i64>, ptr %i.qe, align 8
  %i.qg = getelementptr inbounds nuw i8, ptr %.sroa.058.01200, i64 120
  %i.qh = load i64, ptr %i.qg, align 8, !noundef !5
  %i.qi = add i64 %i.qd, %i.pz                    ; 2 uses
  %i.qj = add <2 x i64> %i.qf, %i.qa              ; 2 uses
  %i.qk = add i64 %i.qh, %i.qb                    ; 2 uses
  %i.ql = icmp eq ptr %i.qc, %i.ok
  br i1 %i.ql, label %.loopexit, label %.lr.ph1202

.loopexit1068.loopexit:                           ; preds = %.loopexit
  %.pre = load i64, ptr %i.nu, align 8
  br label %.loopexit1068

.loopexit1068:                                    ; preds = %.loopexit1068.loopexit, %bb.ac
  %i.qm = phi i64 [ %i.nq, %bb.ac ], [ %.pre, %.loopexit1068.loopexit ]
  %.sroa.22.1 = phi i64 [ %.sroa.22.0, %bb.ac ], [ %.sroa.22.3.lcssa, %.loopexit1068.loopexit ] ; 2 uses
  %.sroa.0515.1 = phi i64 [ %.sroa.0515.0, %bb.ac ], [ %.sroa.0515.3.lcssa, %.loopexit1068.loopexit ] ; 2 uses
  %.sroa.061.1 = phi i64 [ %.sroa.061.0, %bb.ac ], [ %.sroa.043.01191, %.loopexit1068.loopexit ] ; 2 uses
  %i.qn = phi <2 x i64> [ %i.nj, %bb.ac ], [ %i.nx, %.loopexit1068.loopexit ] ; 2 uses
  %i.qo = add i64 %i.qm, -1                       ; 2 uses
  store i64 %i.qo, ptr %i.nu, align 8
  %i.qp = icmp ult i64 %.sroa.043.01191, %i.cq
  br i1 %i.qp, label %.lr.ph1220.preheader, label %.loopexit1067

.lr.ph1220.preheader:                             ; preds = %.loopexit1068
  %.pre1449 = load ptr, ptr %i.no, align 8
  br label %.lr.ph1220

.lr.ph1220:                                       ; preds = %.lr.ph1220.preheader, %bb.ah
  %i.qq = phi ptr [ %i.qz, %bb.ah ], [ %.pre1449, %.lr.ph1220.preheader ]
  %i.qr = phi i64 [ %i.re, %bb.ah ], [ %i.qo, %.lr.ph1220.preheader ] ; 3 uses
  %.sroa.043.11219 = phi i64 [ %i.rd, %bb.ah ], [ %.sroa.043.01191, %.lr.ph1220.preheader ]
  %i.qs = load ptr, ptr %i.qq, align 8, !nonnull !5, !noundef !5
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 16
  %i.qu = tail call noundef nonnull align 8 ptr @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node8children(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.qt)
  %i.qv = tail call { ptr, i64 } @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree13node_childrenNtB2_12NodeChildren5nodes(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(968) %i.qu) ; 2 uses
  %i.qw = extractvalue { ptr, i64 } %i.qv, 1      ; 2 uses
  %i.qx = icmp ult i64 %i.qr, %i.qw
  br i1 %i.qx, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.lr.ph1220
  %i.qy = extractvalue { ptr, i64 } %i.qv, 0
  %i.qz = getelementptr inbounds nuw [8 x i8], ptr %i.qy, i64 %i.qr ; 3 uses
  %i.ra = load ptr, ptr %i.qz, align 8, !nonnull !5, !noundef !5
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 16
  %i.rc = tail call noundef i64 @_RNvMNtNtCs2wCc12Mnjqg_5ropey4tree4nodeNtB2_4Node11child_count(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1008) %i.rb)
end_hunk_3
