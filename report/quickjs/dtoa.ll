inline.NumInlined: 95
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 13
begin_hunk_0_@output_digits:bb.a
  %.016.i = add nsw i32 %.016.v.i, %i.cl
  %i.co = trunc i32 %.016.i to i8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ci, i64 %indvars.iv.next.i62
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !8
  %i.cq = icmp samesign ugt i64 %indvars.iv.i61, 1
  br i1 %i.cq, label %.lr.ph.i60, label %limb_to_a.exit, !llvm.loop !22

limb_to_a.exit:                                   ; preds = %.lr.ph.i60, %mpb_renorm.exit
  %.not52 = icmp eq i32 %i.bk, 0
  br i1 %.not52, label %.loopexit, label %.lr.ph.split, !llvm.loop !21

.loopexit:                                        ; preds = %u64toa_bin_len.exit, %limb_to_a.exit, %limb_to_a.exit.us, %.preheader
  %.not53 = icmp eq i32 %4, %3
  br i1 %.not53, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.loopexit
  %i.cr = sext i32 %4 to i64
  %i.cs = getelementptr inbounds i8, ptr %0, i64 %i.cr ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 1
  %i.cu = sub nsw i32 %3, %4
  %i.cv = sext i32 %i.cu to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ct, ptr align 1 %i.cs, i64 %i.cv, i1 false)
  store i8 46, ptr %i.cs, align 1, !tbaa !8
  %i.cw = add nsw i32 %3, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.loopexit
  %.0 = phi i32 [ %i.cw, %bb.i ], [ %3, %.loopexit ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc i32 @mul_pow(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef range(i32 0, 32) %2, i32 noundef %3, i1 noundef zeroext %4, i32 noundef range(i32 -2147483648, 2147482573) %5) unnamed_addr #0 {
bb.a:
  %i.a = sub nsw i32 0, %3                        ; 2 uses
  %i.b = mul nsw i32 %2, %i.a                     ; 3 uses
  %.not = icmp eq i32 %1, 1
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr i8, ptr @digits_per_limb_table, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 -2
  %i.f = load i8, ptr %i.e, align 1, !tbaa !8
  %i.g = zext i8 %i.f to i32                      ; 4 uses
  %i.h = icmp sgt i32 %3, -1
  br i1 %i.h, label %.preheader, label %bb.n

.preheader:                                       ; preds = %bb.b
  %.not7498 = icmp eq i32 %3, 0
  br i1 %.not7498, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.i = zext i32 %1 to i64                       ; 7 uses
  %i.j = icmp eq i32 %1, 5
  %i.k = icmp eq i32 %1, 10                       ; 2 uses
  %or.cond.i = or i1 %i.j, %i.k
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.m = mul nuw i64 %i.i, %i.i
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %mp_mul1.exit.thread
  %.060101 = phi i32 [ 0, %.lr.ph ], [ %.161, %mp_mul1.exit.thread ]
  %.062100 = phi i32 [ 0, %.lr.ph ], [ %.163, %mp_mul1.exit.thread ] ; 2 uses
  %.06599 = phi i32 [ %3, %.lr.ph ], [ %i.bx, %mp_mul1.exit.thread ] ; 2 uses
  %..i = tail call noundef i32 @llvm.smin.i32(i32 %.06599, i32 %i.g) ; 12 uses
  %.not75 = icmp eq i32 %..i, %.062100
  br i1 %.not75, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %trunc = trunc nuw i32 %..i to i8
  switch i8 %trunc, label %bb.f [
    i8 0, label %pow_ui.exit
    i8 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  br label %pow_ui.exit

bb.f:                                             ; preds = %bb.d
  %i.n = icmp samesign ult i32 %..i, 18
  %or.cond3.i = and i1 %or.cond.i, %i.n
  br i1 %or.cond3.i, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.o = zext nneg i32 %..i to i64                ; 2 uses
  %i.p = getelementptr [4 x i8], ptr @pow5_table, i64 %i.o
  %i.q = getelementptr i8, ptr %i.p, i64 -4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !14
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = icmp samesign ugt i32 %..i, 13
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr i8, ptr @pow5h_table, i64 %i.o
  %i.v = getelementptr i8, ptr %i.u, i64 -14
  %i.w = load i8, ptr %i.v, align 1, !tbaa !8
  %i.x = zext i8 %i.w to i64
  %i.y = shl nuw nsw i64 %i.x, 32
  %i.z = or disjoint i64 %i.y, %i.s
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0.i = phi i64 [ %i.z, %bb.h ], [ %i.s, %bb.g ]
  %narrow.i = select i1 %i.k, i32 %..i, i32 0
  %i.aa = zext nneg i32 %narrow.i to i64
  %.1.i = shl nuw nsw i64 %.0.i, %i.aa
  br label %pow_ui.exit

bb.j:                                             ; preds = %bb.f
  %i.ab = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %..i, i1 true) ; 4 uses
  %i.ac = sub nsw i32 30, %i.ab                   ; 2 uses
  %i.ad = and i32 %i.ab, 1
  %lcmp.mod116.not.not = icmp eq i32 %i.ad, 0
  br i1 %lcmp.mod116.not.not, label %.prol.loopexit113.unr-lcssa, label %.prol.loopexit113

.prol.loopexit113.unr-lcssa:                      ; preds = %bb.j
  %i.ae = shl nuw nsw i32 1, %i.ac
  %i.af = and i32 %i.ae, %..i
  %.not.i.prol = icmp eq i32 %i.af, 0
  %i.ag = select i1 %.not.i.prol, i64 1, i64 %i.i
  %spec.select.i.prol = mul i64 %i.m, %i.ag       ; 2 uses
  %i.ah = sub nsw i32 29, %i.ab
  br label %.prol.loopexit113

.prol.loopexit113:                                ; preds = %.prol.loopexit113.unr-lcssa, %bb.j
  %spec.select.i.lcssa.unr = phi i64 [ poison, %bb.j ], [ %spec.select.i.prol, %.prol.loopexit113.unr-lcssa ]
  %.234.i.unr = phi i64 [ %i.i, %bb.j ], [ %spec.select.i.prol, %.prol.loopexit113.unr-lcssa ]
  %.03033.i.unr = phi i32 [ %i.ac, %bb.j ], [ %i.ah, %.prol.loopexit113.unr-lcssa ]
  %i.ai = icmp eq i32 %i.ab, 30
  br i1 %i.ai, label %pow_ui.exit, label %.new114

.new114:                                          ; preds = %.prol.loopexit113, %.new114
  %.234.i = phi i64 [ %spec.select.i.1, %.new114 ], [ %.234.i.unr, %.prol.loopexit113 ] ; 2 uses
  %.03033.i = phi i32 [ %i.as, %.new114 ], [ %.03033.i.unr, %.prol.loopexit113 ] ; 3 uses
  %i.aj = mul i64 %.234.i, %.234.i
  %i.ak = shl nuw i32 1, %.03033.i
  %i.al = and i32 %i.ak, %..i
  %.not.i = icmp eq i32 %i.al, 0
  %i.am = select i1 %.not.i, i64 1, i64 %i.i
  %spec.select.i = mul i64 %i.aj, %i.am           ; 2 uses
  %i.an = add nsw i32 %.03033.i, -1               ; 2 uses
  %i.ao = mul i64 %spec.select.i, %spec.select.i
  %i.ap = shl nuw i32 1, %i.an
  %i.aq = and i32 %i.ap, %..i
  %.not.i.1 = icmp eq i32 %i.aq, 0
  %i.ar = select i1 %.not.i.1, i64 1, i64 %i.i
  %spec.select.i.1 = mul i64 %i.ao, %i.ar         ; 2 uses
  %i.as = add nsw i32 %.03033.i, -2
  %.not36.i.1 = icmp eq i32 %i.an, 0
  br i1 %.not36.i.1, label %pow_ui.exit, label %.new114, !llvm.loop !15

pow_ui.exit:                                      ; preds = %.prol.loopexit113, %.new114, %bb.d, %bb.e, %bb.i
  %.031.i = phi i64 [ 1, %bb.d ], [ %i.i, %bb.e ], [ %.1.i, %bb.i ], [ %spec.select.i.lcssa.unr, %.prol.loopexit113 ], [ %spec.select.i.1, %.new114 ]
  %i.at = trunc i64 %.031.i to i32
  br label %bb.k

bb.k:                                             ; preds = %pow_ui.exit, %bb.c
  %.163 = phi i32 [ %..i, %pow_ui.exit ], [ %.062100, %bb.c ]
  %.161 = phi i32 [ %i.at, %pow_ui.exit ], [ %.060101, %bb.c ] ; 2 uses
  %i.au = load i32, ptr %0, align 4, !tbaa !14    ; 6 uses
  %.not.i77 = icmp eq i32 %i.au, 0
  br i1 %.not.i77, label %mp_mul1.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k
  %i.av = zext i32 %.161 to i64                   ; 3 uses
  %wide.trip.count.i = zext i32 %i.au to i64      ; 2 uses
  %xtraiter117 = and i64 %wide.trip.count.i, 1
  %i.aw = icmp eq i32 %i.au, 1
  br i1 %i.aw, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 4294967294
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.l ] ; 3 uses
  %.01112.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.bl, %bb.l ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.l ]
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !14
  %i.az = zext i32 %i.ay to i64
  %i.ba = mul nuw i64 %i.az, %i.av
  %i.bb = add nuw i64 %i.ba, %.01112.i            ; 2 uses
  %i.bc = trunc i64 %i.bb to i32
  store i32 %i.bc, ptr %i.ax, align 4, !tbaa !14
  %i.bd = lshr i64 %i.bb, 32
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !14
  %i.bh = zext i32 %i.bg to i64
  %i.bi = mul nuw i64 %i.bh, %i.av
  %i.bj = add nuw i64 %i.bi, %i.bd                ; 2 uses
  %i.bk = trunc i64 %i.bj to i32
  store i32 %i.bk, ptr %i.bf, align 4, !tbaa !14
  %i.bl = lshr i64 %i.bj, 32                      ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %mp_mul1.exit.unr-lcssa, label %bb.l, !llvm.loop !23

mp_mul1.exit.unr-lcssa:                           ; preds = %bb.l
  %lcmp.mod118.not = icmp eq i64 %xtraiter117, 0
  br i1 %lcmp.mod118.not, label %mp_mul1.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %mp_mul1.exit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %mp_mul1.exit.unr-lcssa ]
  %.01112.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.bl, %mp_mul1.exit.unr-lcssa ]
  %lcmp.mod120 = trunc i32 %i.au to i1
  tail call void @llvm.assume(i1 %lcmp.mod120)
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !14
  %i.bo = zext i32 %i.bn to i64
  %i.bp = mul nuw i64 %i.bo, %i.av
  %i.bq = add nuw i64 %i.bp, %.01112.i.epil.init  ; 2 uses
  %i.br = trunc i64 %i.bq to i32
  store i32 %i.br, ptr %i.bm, align 4, !tbaa !14
  %i.bs = lshr i64 %i.bq, 32
  br label %mp_mul1.exit

mp_mul1.exit:                                     ; preds = %mp_mul1.exit.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.bl, %mp_mul1.exit.unr-lcssa ], [ %i.bs, %.epil.preheader ] ; 2 uses
  %.not76 = icmp eq i64 %.lcssa, 0
  br i1 %.not76, label %mp_mul1.exit.thread, label %bb.m

bb.m:                                             ; preds = %mp_mul1.exit
  %i.bt = trunc nuw i64 %.lcssa to i32
  %i.bu = add nsw i32 %i.au, 1
  store i32 %i.bu, ptr %0, align 4, !tbaa !14
  %i.bv = sext i32 %i.au to i64
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.bv
  store i32 %i.bt, ptr %i.bw, align 4, !tbaa !14
  br label %mp_mul1.exit.thread

mp_mul1.exit.thread:                              ; preds = %bb.k, %bb.m, %mp_mul1.exit
  %i.bx = sub nsw i32 %.06599, %..i               ; 2 uses
  %.not74 = icmp eq i32 %i.bx, 0
  br i1 %.not74, label %.loopexit, label %bb.c, !llvm.loop !24

bb.n:                                             ; preds = %bb.b
  %i.by = xor i32 %3, -1
  %i.bz = add nuw i32 %i.g, %i.by
  %i.ca = sdiv i32 %i.bz, %i.g
  %i.cb = shl nsw i32 %i.ca, 5                    ; 2 uses
  %i.cc = add nsw i32 %i.cb, %i.b                 ; 2 uses
  br i1 %4, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cd = load i32, ptr %0, align 4, !tbaa !14    ; 2 uses
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr [4 x i8], ptr %0, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !14 ; 2 uses
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %mpb_floor_log2.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ci = shl nsw i32 %i.cd, 5
  %i.cj = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.cg, i1 true)
  %i.ck = xor i32 %i.cj, -1
  %i.cl = add i32 %i.ci, %i.ck
  br label %mpb_floor_log2.exit

mpb_floor_log2.exit:                              ; preds = %bb.o, %bb.p
  %.0.i78 = phi i32 [ %i.cl, %bb.p ], [ -1, %bb.o ]
  %i.cm = sub nsw i32 %5, %.0.i78
  br label %bb.r

bb.q:                                             ; preds = %bb.n
  %i.cn = add nsw i32 %5, 2
  %i.co = sub i32 %i.cn, %i.cc
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %mpb_floor_log2.exit
  %.sink = phi i32 [ %i.co, %bb.q ], [ %i.cm, %mpb_floor_log2.exit ]
  %..i80 = tail call range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %.sink, i32 0) ; 2 uses
  %i.cp = add nsw i32 %i.cb, %..i80
  %i.cq = sub nsw i32 0, %i.cp
  tail call fastcc void @mpb_shr_round(ptr noundef %0, i32 noundef %i.cq, i32 noundef 2)
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.cs = icmp eq i32 %1, 5                       ; 2 uses
  %i.ct = zext i32 %1 to i64                      ; 7 uses
  %i.cu = icmp eq i32 %1, 10                      ; 2 uses
  %or.cond.i.i = or i1 %i.cs, %i.cu
  %i.cv = mul nuw i64 %i.ct, %i.ct
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %mpb_renorm.exit
  %.097 = phi i32 [ 0, %bb.r ], [ %.1, %mpb_renorm.exit ]
  %.05896 = phi i32 [ 0, %bb.r ], [ %i.ex, %mpb_renorm.exit ]
  %.295 = phi i32 [ 0, %bb.r ], [ %.3, %mpb_renorm.exit ] ; 2 uses
  %.16694 = phi i32 [ %i.a, %bb.r ], [ %i.fg, %mpb_renorm.exit ] ; 2 uses
  %.08693 = phi i32 [ 0, %bb.r ], [ %.187, %mpb_renorm.exit ]
  %.08892 = phi i32 [ 0, %bb.r ], [ %.189, %mpb_renorm.exit ]
  %..i81 = tail call noundef i32 @llvm.smin.i32(i32 %.16694, i32 %i.g) ; 15 uses
  %.not73 = icmp eq i32 %..i81, %.295
  br i1 %.not73, label %pow_ui_inv.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cw = icmp ult i32 %..i81, 14
  %or.cond3.i82 = and i1 %i.cs, %i.cw
  br i1 %or.cond3.i82, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cx = add nsw i32 %..i81, -1
  %i.cy = zext nneg i32 %i.cx to i64              ; 2 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr @pow5_table, i64 %i.cy
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !14 ; 2 uses
  %i.db = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.da, i1 true) ; 2 uses
  %i.dc = shl i32 %i.da, %i.db
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr @pow5_inv_table, i64 %i.cy
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !14
  br label %pow_ui_inv.exit

bb.v:                                             ; preds = %bb.t
  switch i32 %..i81, label %bb.x [
    i32 0, label %pow_ui.exit.i
    i32 1, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v
  br label %pow_ui.exit.i

bb.x:                                             ; preds = %bb.v
  %i.df = icmp ult i32 %..i81, 18
  %or.cond3.i.i = and i1 %or.cond.i.i, %i.df
  br i1 %or.cond3.i.i, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.dg = zext nneg i32 %..i81 to i64             ; 2 uses
  %i.dh = getelementptr [4 x i8], ptr @pow5_table, i64 %i.dg
  %i.di = getelementptr i8, ptr %i.dh, i64 -4
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !14
  %i.dk = zext i32 %i.dj to i64                   ; 2 uses
  %i.dl = icmp samesign ugt i32 %..i81, 13
  br i1 %i.dl, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.dm = getelementptr i8, ptr @pow5h_table, i64 %i.dg
  %i.dn = getelementptr i8, ptr %i.dm, i64 -14
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !8
  %i.dp = zext i8 %i.do to i64
  %i.dq = shl nuw nsw i64 %i.dp, 32
  %i.dr = or disjoint i64 %i.dq, %i.dk
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.0.i.i = phi i64 [ %i.dr, %bb.z ], [ %i.dk, %bb.y ]
  %narrow.i.i = select i1 %i.cu, i32 %..i81, i32 0
  %i.ds = zext nneg i32 %narrow.i.i to i64
  %.1.i.i = shl nuw nsw i64 %.0.i.i, %i.ds
  br label %pow_ui.exit.i

bb.ab:                                            ; preds = %bb.x
  %i.dt = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %..i81, i1 true) ; 4 uses
  %i.du = sub nsw i32 30, %i.dt                   ; 2 uses
  %i.dv = and i32 %i.dt, 1
  %lcmp.mod.not.not = icmp eq i32 %i.dv, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %bb.ab
  %i.dw = shl nuw nsw i32 1, %i.du
  %i.dx = and i32 %i.dw, %..i81
  %.not.i.i.prol = icmp eq i32 %i.dx, 0
  %i.dy = select i1 %.not.i.i.prol, i64 1, i64 %i.ct
  %spec.select.i.i.prol = mul i64 %i.cv, %i.dy    ; 2 uses
  %i.dz = sub nsw i32 29, %i.dt
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %bb.ab
  %spec.select.i.i.lcssa.unr = phi i64 [ poison, %bb.ab ], [ %spec.select.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %.234.i.i.unr = phi i64 [ %i.ct, %bb.ab ], [ %spec.select.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %.03033.i.i.unr = phi i32 [ %i.du, %bb.ab ], [ %i.dz, %.prol.loopexit.unr-lcssa ]
  %i.ea = icmp eq i32 %i.dt, 30
  br i1 %i.ea, label %pow_ui.exit.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.234.i.i = phi i64 [ %spec.select.i.i.1, %.new ], [ %.234.i.i.unr, %.prol.loopexit ] ; 2 uses
  %.03033.i.i = phi i32 [ %i.ek, %.new ], [ %.03033.i.i.unr, %.prol.loopexit ] ; 3 uses
  %i.eb = mul i64 %.234.i.i, %.234.i.i
  %i.ec = shl nuw i32 1, %.03033.i.i
  %i.ed = and i32 %i.ec, %..i81
  %.not.i.i = icmp eq i32 %i.ed, 0
  %i.ee = select i1 %.not.i.i, i64 1, i64 %i.ct
  %spec.select.i.i = mul i64 %i.eb, %i.ee         ; 2 uses
  %i.ef = add nsw i32 %.03033.i.i, -1             ; 2 uses
  %i.eg = mul i64 %spec.select.i.i, %spec.select.i.i
  %i.eh = shl nuw i32 1, %i.ef
  %i.ei = and i32 %i.eh, %..i81
  %.not.i.i.1 = icmp eq i32 %i.ei, 0
  %i.ej = select i1 %.not.i.i.1, i64 1, i64 %i.ct
  %spec.select.i.i.1 = mul i64 %i.eg, %i.ej       ; 2 uses
  %i.ek = add nsw i32 %.03033.i.i, -2
  %.not36.i.i.1 = icmp eq i32 %i.ef, 0
  br i1 %.not36.i.i.1, label %pow_ui.exit.i, label %.new, !llvm.loop !15

pow_ui.exit.i:                                    ; preds = %.prol.loopexit, %.new, %bb.aa, %bb.w, %bb.v
  %.031.i.i = phi i64 [ 1, %bb.v ], [ %i.ct, %bb.w ], [ %.1.i.i, %bb.aa ], [ %spec.select.i.i.lcssa.unr, %.prol.loopexit ], [ %spec.select.i.i.1, %.new ]
  %i.el = trunc i64 %.031.i.i to i32              ; 2 uses
  %i.em = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.el, i1 true) ; 2 uses
  %i.en = shl i32 %i.el, %i.em                    ; 3 uses
  %i.eo = xor i32 %i.en, -1
  %i.ep = zext i32 %i.eo to i64
  %i.eq = shl nuw i64 %i.ep, 32
  %i.er = or disjoint i64 %i.eq, 4294967295
  %i.es = zext i32 %i.en to i64
  %i.et = udiv i64 %i.er, %i.es
  %i.eu = trunc i64 %i.et to i32
  br label %pow_ui_inv.exit

pow_ui_inv.exit:                                  ; preds = %pow_ui.exit.i, %bb.u, %bb.s
  %.189 = phi i32 [ %.08892, %bb.s ], [ %i.db, %bb.u ], [ %i.em, %pow_ui.exit.i ] ; 2 uses
  %.187 = phi i32 [ %.08693, %bb.s ], [ %i.de, %bb.u ], [ %i.eu, %pow_ui.exit.i ] ; 2 uses
  %.3 = phi i32 [ %.295, %bb.s ], [ %..i81, %bb.u ], [ %..i81, %pow_ui.exit.i ]
  %.1 = phi i32 [ %.097, %bb.s ], [ %i.dc, %bb.u ], [ %i.en, %pow_ui.exit.i ] ; 2 uses
  %i.ev = load i32, ptr %0, align 4, !tbaa !14
  %i.ew = tail call fastcc i32 @mp_div1norm(ptr noundef nonnull %i.cr, ptr noundef nonnull %i.cr, i32 noundef %i.ev, i32 noundef %.1, i32 noundef %.187, i32 noundef %.189)
  %i.ex = or i32 %i.ew, %.05896                   ; 2 uses
  %.pr.i = load i32, ptr %0, align 4, !tbaa !14   ; 2 uses
  %i.ey = icmp sgt i32 %.pr.i, 1
  br i1 %i.ey, label %.lr.ph.i84, label %mpb_renorm.exit

.lr.ph.i84:                                       ; preds = %pow_ui_inv.exit, %bb.ac
  %i.ez = phi i32 [ %i.fe, %bb.ac ], [ %.pr.i, %pow_ui_inv.exit ] ; 3 uses
  %i.fa = zext nneg i32 %i.ez to i64
  %i.fb = getelementptr [4 x i8], ptr %0, i64 %i.fa
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !14
  %i.fd = icmp eq i32 %i.fc, 0
  br i1 %i.fd, label %bb.ac, label %mpb_renorm.exit

bb.ac:                                            ; preds = %.lr.ph.i84
  %i.fe = add nsw i32 %i.ez, -1                   ; 2 uses
  store i32 %i.fe, ptr %0, align 4, !tbaa !14
  %i.ff = icmp sgt i32 %i.ez, 2
  br i1 %i.ff, label %.lr.ph.i84, label %mpb_renorm.exit, !llvm.loop !19

mpb_renorm.exit:                                  ; preds = %.lr.ph.i84, %bb.ac, %pow_ui_inv.exit
  %i.fg = sub nsw i32 %.16694, %..i81             ; 2 uses
  %.not72 = icmp eq i32 %i.fg, 0
  br i1 %.not72, label %bb.ad, label %bb.s, !llvm.loop !25

bb.ad:                                            ; preds = %mpb_renorm.exit
  %i.fh = add nsw i32 %..i80, %i.cc
  %i.fi = icmp ne i32 %i.ex, 0
  %i.fj = zext i1 %i.fi to i32
  %i.fk = load i32, ptr %i.cr, align 4, !tbaa !14
  %i.fl = or i32 %i.fk, %i.fj
  store i32 %i.fl, ptr %i.cr, align 4, !tbaa !14
  br label %.loopexit

.loopexit:                                        ; preds = %mp_mul1.exit.thread, %.preheader, %bb.ad, %bb.a
  %.064 = phi i32 [ %i.b, %bb.a ], [ %i.fh, %bb.ad ], [ 0, %.preheader ], [ %i.b, %mp_mul1.exit.thread ]
  ret i32 %.064
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @mpb_shr_round(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef range(i32 0, 3) %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp slt i32 %1, 0
  br i1 %i.b, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.c = sub nsw i32 0, %1                        ; 3 uses
  %i.d = lshr i32 %i.c, 5                         ; 3 uses
  %i.e = and i32 %i.c, 31                         ; 5 uses
  %.not102 = icmp eq i32 %i.e, 0
  br i1 %.not102, label %mpb_renorm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.g = load i32, ptr %0, align 4, !tbaa !14     ; 5 uses
  %i.h = sext i32 %i.g to i64                     ; 2 uses
  %i.i = icmp sgt i32 %i.g, 0
  br i1 %i.i, label %.lr.ph.i, label %mp_shl.exit

.lr.ph.i:                                         ; preds = %bb.d
  %i.j = sub nuw nsw i32 32, %i.e                 ; 3 uses
  %i.k = icmp eq i32 %i.g, 1
  br i1 %i.k, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter205 = and i64 %i.h, 2147483646
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.new
  %.015.i = phi i32 [ 0, %.lr.ph.i.new ], [ %i.v, %bb.e ]
  %.01314.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.w, %bb.e ] ; 3 uses
  %niter206 = phi i64 [ 0, %.lr.ph.i.new ], [ %niter206.next.1, %bb.e ]
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.01314.i ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !14   ; 2 uses
  %i.n = shl i32 %i.m, %i.e
  %i.o = or i32 %i.n, %.015.i
  store i32 %i.o, ptr %i.l, align 4, !tbaa !14
  %i.p = lshr i32 %i.m, %i.j
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.01314.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !14   ; 2 uses
  %i.t = shl i32 %i.s, %i.e
  %i.u = or disjoint i32 %i.t, %i.p
  store i32 %i.u, ptr %i.r, align 4, !tbaa !14
  %i.v = lshr i32 %i.s, %i.j                      ; 3 uses
  %i.w = add nuw nsw i64 %.01314.i, 2             ; 2 uses
  %niter206.next.1 = add i64 %niter206, 2         ; 2 uses
  %niter206.ncmp.1 = icmp eq i64 %niter206.next.1, %unroll_iter205
  br i1 %niter206.ncmp.1, label %mp_shl.exit.loopexit.unr-lcssa, label %bb.e, !llvm.loop !26

mp_shl.exit.loopexit.unr-lcssa:                   ; preds = %bb.e
  %i.x = and i32 %i.g, 1
  %lcmp.mod202.not = icmp eq i32 %i.x, 0
  br i1 %lcmp.mod202.not, label %mp_shl.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %mp_shl.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.015.i.epil.init = phi i32 [ 0, %.lr.ph.i ], [ %i.v, %mp_shl.exit.loopexit.unr-lcssa ]
  %.01314.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.w, %mp_shl.exit.loopexit.unr-lcssa ]
  %lcmp.mod204 = trunc i32 %i.g to i1
  tail call void @llvm.assume(i1 %lcmp.mod204)
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.01314.i.epil.init ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !14   ; 2 uses
  %i.aa = shl i32 %i.z, %i.e
  %i.ab = or i32 %i.aa, %.015.i.epil.init
  store i32 %i.ab, ptr %i.y, align 4, !tbaa !14
  %i.ac = lshr i32 %i.z, %i.j
  br label %mp_shl.exit

mp_shl.exit:                                      ; preds = %.epil.preheader, %mp_shl.exit.loopexit.unr-lcssa, %bb.d
  %.0.lcssa.i = phi i32 [ 0, %bb.d ], [ %i.v, %mp_shl.exit.loopexit.unr-lcssa ], [ %i.ac, %.epil.preheader ]
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.h
  store i32 %.0.lcssa.i, ptr %i.ad, align 4, !tbaa !14
  %i.ae = load i32, ptr %0, align 4, !tbaa !14    ; 2 uses
  %i.af = add nsw i32 %i.ae, 1                    ; 2 uses
  store i32 %i.af, ptr %0, align 4, !tbaa !14
  %i.ag = icmp sgt i32 %i.ae, 0
  br i1 %i.ag, label %.lr.ph.i104, label %mpb_renorm.exit

.lr.ph.i104:                                      ; preds = %mp_shl.exit, %bb.f
  %i.ah = phi i32 [ %i.am, %bb.f ], [ %i.af, %mp_shl.exit ] ; 3 uses
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr [4 x i8], ptr %0, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !14
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.f, label %mpb_renorm.exit

bb.f:                                             ; preds = %.lr.ph.i104
  %i.am = add nsw i32 %i.ah, -1                   ; 2 uses
  store i32 %i.am, ptr %0, align 4, !tbaa !14
  %i.an = icmp sgt i32 %i.ah, 2
  br i1 %i.an, label %.lr.ph.i104, label %mpb_renorm.exit, !llvm.loop !19

mpb_renorm.exit:                                  ; preds = %bb.f, %.lr.ph.i104, %mp_shl.exit, %bb.c
  %.not103 = icmp eq i32 %i.d, 0
  br i1 %.not103, label %bb.s, label %bb.g

bb.g:                                             ; preds = %mpb_renorm.exit
  %i.ao = load i32, ptr %0, align 4, !tbaa !14    ; 4 uses
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %.lr.ph134, label %.preheader

.lr.ph134:                                        ; preds = %bb.g
  %i.aq = zext nneg i32 %i.ao to i64              ; 5 uses
  %i.ar = zext nneg i32 %i.d to i64
  %invariant.gep164 = getelementptr [4 x i8], ptr %0, i64 %i.ar ; 2 uses
  %min.iters.check183 = icmp ult i32 %i.ao, 8
  br i1 %min.iters.check183, label %scalar.ph182.preheader, label %vector.ph184

vector.ph184:                                     ; preds = %.lr.ph134
  %n.vec185 = and i64 %i.aq, 2147483640           ; 2 uses
  %i.as = and i64 %i.aq, 7
  br label %vector.body186

vector.body186:                                   ; preds = %vector.body186, %vector.ph184
  %index187 = phi i64 [ 0, %vector.ph184 ], [ %index.next190, %vector.body186 ] ; 2 uses
  %i.at = sub i64 %i.aq, %index187                ; 2 uses
  %i.au = getelementptr [4 x i8], ptr %0, i64 %i.at ; 2 uses
  %i.av = getelementptr i8, ptr %i.au, i64 -12
  %i.aw = getelementptr i8, ptr %i.au, i64 -28
  %wide.load188 = load <4 x i32>, ptr %i.av, align 4, !tbaa !14
  %wide.load189 = load <4 x i32>, ptr %i.aw, align 4, !tbaa !14
  %i.ax = getelementptr [4 x i8], ptr %invariant.gep164, i64 %i.at ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 -12
  %i.az = getelementptr i8, ptr %i.ax, i64 -28
  store <4 x i32> %wide.load188, ptr %i.ay, align 4, !tbaa !14
  store <4 x i32> %wide.load189, ptr %i.az, align 4, !tbaa !14
  %index.next190 = add nuw i64 %index187, 8       ; 2 uses
  %i.ba = icmp eq i64 %index.next190, %n.vec185
  br i1 %i.ba, label %middle.block191, label %vector.body186, !llvm.loop !27

middle.block191:                                  ; preds = %vector.body186
  %cmp.n192 = icmp eq i64 %n.vec185, %i.aq
  br i1 %cmp.n192, label %.preheader, label %scalar.ph182.preheader

scalar.ph182.preheader:                           ; preds = %.lr.ph134, %middle.block191
  %indvars.iv145.ph = phi i64 [ %i.aq, %.lr.ph134 ], [ %i.as, %middle.block191 ]
  br label %scalar.ph182

.preheader:                                       ; preds = %scalar.ph182, %middle.block191, %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bc = lshr i32 %i.c, 5
  %i.bd = tail call i32 @llvm.umax.i32(i32 %i.bc, i32 1)
  %i.be = shl nuw nsw i32 %i.bd, 2
  %i.bf = zext nneg i32 %i.be to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.bb, i8 0, i64 %i.bf, i1 false), !tbaa !14
  %i.bg = add nsw i32 %i.ao, %i.d
  store i32 %i.bg, ptr %0, align 4, !tbaa !14
  br label %bb.s

scalar.ph182:                                     ; preds = %scalar.ph182.preheader, %scalar.ph182
  %indvars.iv145 = phi i64 [ %indvars.iv.next146, %scalar.ph182 ], [ %indvars.iv145.ph, %scalar.ph182.preheader ] ; 4 uses
  %indvars.iv.next146 = add nsw i64 %indvars.iv145, -1
  %i.bh = getelementptr [4 x i8], ptr %0, i64 %indvars.iv145
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !14
  %gep165 = getelementptr [4 x i8], ptr %invariant.gep164, i64 %indvars.iv145
  store i32 %i.bi, ptr %gep165, align 4, !tbaa !14
  %i.bj = icmp samesign ugt i64 %indvars.iv145, 1
  br i1 %i.bj, label %scalar.ph182, label %.preheader, !llvm.loop !30

bb.h:                                             ; preds = %bb.b
  %switch = icmp samesign ult i32 %2, 2
  %.pre = load i32, ptr %0, align 4, !tbaa !14    ; 5 uses
  br i1 %switch, label %bb.i, label %mpb_get_bit.exit107

bb.i:                                             ; preds = %bb.h
  %i.bk = add nsw i32 %1, -1                      ; 2 uses
  %i.bl = lshr i32 %i.bk, 5                       ; 3 uses
  %.not.i = icmp slt i32 %i.bl, %.pre
  br i1 %.not.i, label %mpb_get_bit.exit, label %mpb_get_bit.exit107

mpb_get_bit.exit:                                 ; preds = %bb.i
  %i.bm = and i32 %i.bk, 31                       ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.bo = zext nneg i32 %i.bl to i64              ; 4 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !14 ; 2 uses
  %i.br = shl nuw i32 1, %i.bm
  %i.bs = and i32 %i.bq, %i.br
  %.not = icmp eq i32 %i.bs, 0
  br i1 %.not, label %mpb_get_bit.exit107, label %bb.j

bb.j:                                             ; preds = %mpb_get_bit.exit
  %i.bt = icmp eq i32 %2, 1
  br i1 %i.bt, label %mpb_get_bit.exit107, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not125 = icmp eq i32 %1, 1
  br i1 %.not125, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not136 = icmp eq i32 %i.bl, 0
  br i1 %.not136, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.l
  %min.iters.check = icmp ult i32 %1, 257
  br i1 %min.iters.check, label %.lr.ph.preheader195, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bo, 134217720               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bw, %vector.body ]
  %vec.phi168 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bx, %vector.body ]
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %index ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %wide.load = load <4 x i32>, ptr %i.bu, align 4, !tbaa !14
  %wide.load169 = load <4 x i32>, ptr %i.bv, align 4, !tbaa !14
  %i.bw = or <4 x i32> %wide.load, %vec.phi       ; 2 uses
  %i.bx = or <4 x i32> %wide.load169, %vec.phi168 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.by = icmp eq i64 %index.next, %n.vec
  br i1 %i.by, label %middle.block, label %vector.body, !llvm.loop !31

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i32> %i.bx, %i.bw
  %i.bz = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.bo
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader195

.lr.ph.preheader195:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.085128.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.bz, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader195, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader195 ] ; 2 uses
  %.085128 = phi i32 [ %i.cc, %.lr.ph ], [ %.085128.ph, %.lr.ph.preheader195 ]
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !14
  %i.cc = or i32 %i.cb, %.085128                  ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.bo
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !32

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.l
  %.085.lcssa = phi i32 [ 0, %bb.l ], [ %i.bz, %middle.block ], [ %i.cc, %.lr.ph ]
  %notmask = shl nsw i32 -1, %i.bm
  %i.cd = xor i32 %notmask, -1
  %i.ce = and i32 %i.bq, %i.cd
  %i.cf = or i32 %i.ce, %.085.lcssa
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %.thread, label %mpb_get_bit.exit107

.thread:                                          ; preds = %bb.k, %._crit_edge
  %i.ch = lshr i32 %1, 5                          ; 2 uses
  %.not.i105 = icmp samesign ult i32 %i.ch, %.pre
  br i1 %.not.i105, label %bb.m, label %mpb_get_bit.exit107

bb.m:                                             ; preds = %.thread
  %i.ci = and i32 %1, 31
  %i.cj = zext nneg i32 %i.ch to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !14
  %i.cm = lshr i32 %i.cl, %i.ci
  %i.cn = and i32 %i.cm, 1
  br label %mpb_get_bit.exit107

mpb_get_bit.exit107:                              ; preds = %bb.j, %bb.i, %bb.m, %.thread, %mpb_get_bit.exit, %._crit_edge, %bb.h
  %.0 = phi i32 [ 1, %._crit_edge ], [ 0, %bb.h ], [ 0, %bb.i ], [ 0, %mpb_get_bit.exit ], [ 0, %.thread ], [ %i.cn, %bb.m ], [ 1, %bb.j ] ; 2 uses
  %i.co = lshr i32 %1, 5                          ; 4 uses
  %i.cp = and i32 %1, 31
  %.not97 = icmp slt i32 %i.co, %.pre
  br i1 %.not97, label %bb.o, label %bb.n

bb.n:                                             ; preds = %mpb_get_bit.exit107
  store i32 1, ptr %0, align 4, !tbaa !14
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.0, ptr %i.cq, align 4, !tbaa !14
  br label %bb.s

bb.o:                                             ; preds = %mpb_get_bit.exit107
  %.not98 = icmp eq i32 %i.co, 0
  br i1 %.not98, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cr = sub nsw i32 %.pre, %i.co                ; 7 uses
  store i32 %i.cr, ptr %0, align 4, !tbaa !14
  %i.cs = icmp sgt i32 %i.cr, 0
  br i1 %i.cs, label %.lr.ph131, label %.loopexit

.lr.ph131:                                        ; preds = %bb.p
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.cu = zext nneg i32 %i.co to i64
  %wide.trip.count143 = zext nneg i32 %i.cr to i64 ; 3 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.cu ; 2 uses
  %min.iters.check171 = icmp ult i32 %i.cr, 8
  br i1 %min.iters.check171, label %scalar.ph170.preheader, label %vector.ph172

vector.ph172:                                     ; preds = %.lr.ph131
  %n.vec173 = and i64 %wide.trip.count143, 2147483640 ; 3 uses
  br label %vector.body174

vector.body174:                                   ; preds = %vector.body174, %vector.ph172
  %index175 = phi i64 [ 0, %vector.ph172 ], [ %index.next178, %vector.body174 ] ; 3 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %index175 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %wide.load176 = load <4 x i32>, ptr %i.cv, align 4, !tbaa !14
  %wide.load177 = load <4 x i32>, ptr %i.cw, align 4, !tbaa !14
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %index175 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store <4 x i32> %wide.load176, ptr %i.cx, align 4, !tbaa !14
  store <4 x i32> %wide.load177, ptr %i.cy, align 4, !tbaa !14
  %index.next178 = add nuw i64 %index175, 8       ; 2 uses
  %i.cz = icmp eq i64 %index.next178, %n.vec173
  br i1 %i.cz, label %middle.block179, label %vector.body174, !llvm.loop !33

middle.block179:                                  ; preds = %vector.body174
  %cmp.n180 = icmp eq i64 %n.vec173, %wide.trip.count143
  br i1 %cmp.n180, label %.loopexit, label %scalar.ph170.preheader

scalar.ph170.preheader:                           ; preds = %.lr.ph131, %middle.block179
  %indvars.iv140.ph = phi i64 [ 0, %.lr.ph131 ], [ %n.vec173, %middle.block179 ]
  br label %scalar.ph170

scalar.ph170:                                     ; preds = %scalar.ph170.preheader, %scalar.ph170
  %indvars.iv140 = phi i64 [ %indvars.iv.next141, %scalar.ph170 ], [ %indvars.iv140.ph, %scalar.ph170.preheader ] ; 3 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv140
  %i.da = load i32, ptr %gep, align 4, !tbaa !14
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv140
  store i32 %i.da, ptr %i.db, align 4, !tbaa !14
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1 ; 2 uses
  %exitcond144.not = icmp eq i64 %indvars.iv.next141, %wide.trip.count143
  br i1 %exitcond144.not, label %.loopexit, label %scalar.ph170, !llvm.loop !34

.loopexit:                                        ; preds = %scalar.ph170, %middle.block179, %bb.p, %bb.o
  %i.dc = phi i32 [ %.pre, %bb.o ], [ %i.cr, %bb.p ], [ %i.cr, %middle.block179 ], [ %i.cr, %scalar.ph170 ] ; 4 uses
  %.not99 = icmp ne i32 %i.cp, 0
  %i.dd = icmp sgt i32 %i.dc, 0
  %or.cond = select i1 %.not99, i1 %i.dd, i1 false
  br i1 %or.cond, label %.lr.ph.i109.preheader, label %mpb_renorm.exit112

.lr.ph.i109.preheader:                            ; preds = %.loopexit
  %i.de = zext nneg i32 %i.dc to i64              ; 4 uses
  %xtraiter = and i64 %i.de, 3                    ; 3 uses
  %i.df = icmp ult i32 %i.dc, 4
  br i1 %i.df, label %.lr.ph.i109.epil.preheader, label %.lr.ph.i109.preheader.new

.lr.ph.i109.preheader.new:                        ; preds = %.lr.ph.i109.preheader
  %unroll_iter = and i64 %i.de, 2147483644
  br label %.lr.ph.i109

.lr.ph.i109:                                      ; preds = %.lr.ph.i109, %.lr.ph.i109.preheader.new
  %.016.i = phi i32 [ 0, %.lr.ph.i109.preheader.new ], [ %i.dt, %.lr.ph.i109 ]
  %.014.in15.i = phi i64 [ %i.de, %.lr.ph.i109.preheader.new ], [ %.014.i.3, %.lr.ph.i109 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i109.preheader.new ], [ %niter.next.3, %.lr.ph.i109 ]
  %i.dg = getelementptr [4 x i8], ptr %0, i64 %.014.in15.i ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !14 ; 2 uses
  %i.di = tail call i32 @llvm.fshr.i32(i32 %.016.i, i32 %i.dh, i32 range(i32 1, 32) %1)
  store i32 %i.di, ptr %i.dg, align 4, !tbaa !14
  %i.dj = getelementptr [4 x i8], ptr %0, i64 %.014.in15.i
  %i.dk = getelementptr i8, ptr %i.dj, i64 -4     ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !14 ; 2 uses
  %i.dm = tail call i32 @llvm.fshr.i32(i32 %i.dh, i32 %i.dl, i32 range(i32 1, 32) %1)
  store i32 %i.dm, ptr %i.dk, align 4, !tbaa !14
  %i.dn = getelementptr [4 x i8], ptr %0, i64 %.014.in15.i
  %i.do = getelementptr i8, ptr %i.dn, i64 -8     ; 2 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !14 ; 2 uses
  %i.dq = tail call i32 @llvm.fshr.i32(i32 %i.dl, i32 %i.dp, i32 range(i32 1, 32) %1)
  store i32 %i.dq, ptr %i.do, align 4, !tbaa !14
  %.014.i.3 = add nsw i64 %.014.in15.i, -4        ; 2 uses
  %i.dr = getelementptr [4 x i8], ptr %0, i64 %.014.in15.i
  %i.ds = getelementptr i8, ptr %i.dr, i64 -12    ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !14 ; 3 uses
  %i.du = tail call i32 @llvm.fshr.i32(i32 %i.dp, i32 %i.dt, i32 range(i32 1, 32) %1)
  store i32 %i.du, ptr %i.ds, align 4, !tbaa !14
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %mp_shr.exit.unr-lcssa, label %.lr.ph.i109, !llvm.loop !35

mp_shr.exit.unr-lcssa:                            ; preds = %.lr.ph.i109
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %mp_shr.exit, label %.lr.ph.i109.epil.preheader

.lr.ph.i109.epil.preheader:                       ; preds = %mp_shr.exit.unr-lcssa, %.lr.ph.i109.preheader
  %.016.i.epil.init = phi i32 [ 0, %.lr.ph.i109.preheader ], [ %i.dt, %mp_shr.exit.unr-lcssa ]
  %.014.in15.i.epil.init = phi i64 [ %i.de, %.lr.ph.i109.preheader ], [ %.014.i.3, %mp_shr.exit.unr-lcssa ]
  %lcmp.mod199 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod199)
  br label %.lr.ph.i109.epil

.lr.ph.i109.epil:                                 ; preds = %.lr.ph.i109.epil, %.lr.ph.i109.epil.preheader
  %.016.i.epil = phi i32 [ %i.dw, %.lr.ph.i109.epil ], [ %.016.i.epil.init, %.lr.ph.i109.epil.preheader ]
  %.014.in15.i.epil = phi i64 [ %.014.i.epil, %.lr.ph.i109.epil ], [ %.014.in15.i.epil.init, %.lr.ph.i109.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i109.epil ], [ 0, %.lr.ph.i109.epil.preheader ]
  %.014.i.epil = add nsw i64 %.014.in15.i.epil, -1
  %i.dv = getelementptr [4 x i8], ptr %0, i64 %.014.in15.i.epil ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !14 ; 2 uses
  %i.dx = tail call i32 @llvm.fshr.i32(i32 %.016.i.epil, i32 %i.dw, i32 range(i32 1, 32) %1)
  store i32 %i.dx, ptr %i.dv, align 4, !tbaa !14
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %mp_shr.exit, label %.lr.ph.i109.epil, !llvm.loop !36

mp_shr.exit:                                      ; preds = %.lr.ph.i109.epil, %mp_shr.exit.unr-lcssa
  %.pr.i110.pr = load i32, ptr %0, align 4, !tbaa !14 ; 3 uses
  %i.dy = icmp sgt i32 %.pr.i110.pr, 1
  br i1 %i.dy, label %.lr.ph.i111, label %mpb_renorm.exit112

.lr.ph.i111:                                      ; preds = %mp_shr.exit, %bb.q
  %i.dz = phi i32 [ %i.ee, %bb.q ], [ %.pr.i110.pr, %mp_shr.exit ] ; 4 uses
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = getelementptr [4 x i8], ptr %0, i64 %i.ea
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !14
  %i.ed = icmp eq i32 %i.ec, 0
  br i1 %i.ed, label %bb.q, label %mpb_renorm.exit112

bb.q:                                             ; preds = %.lr.ph.i111
  %i.ee = add nsw i32 %i.dz, -1                   ; 3 uses
  store i32 %i.ee, ptr %0, align 4, !tbaa !14
  %i.ef = icmp sgt i32 %i.dz, 2
  br i1 %i.ef, label %.lr.ph.i111, label %mpb_renorm.exit112, !llvm.loop !19

mpb_renorm.exit112:                               ; preds = %bb.q, %.lr.ph.i111, %mp_shr.exit, %.loopexit
  %i.eg = phi i32 [ %i.dc, %.loopexit ], [ %.pr.i110.pr, %mp_shr.exit ], [ %i.dz, %.lr.ph.i111 ], [ %i.ee, %bb.q ] ; 3 uses
  %.not100 = icmp eq i32 %.0, 0
  br i1 %.not100, label %bb.s, label %bb.r

bb.r:                                             ; preds = %mpb_renorm.exit112
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.ei = sext i32 %i.eg to i64                   ; 2 uses
  %i.ej = icmp eq i32 %i.eg, 0
  br i1 %i.ej, label %mp_add_ui.exit.thread, label %.lr.ph.i113

.lr.ph.i113:                                      ; preds = %bb.r, %.lr.ph.i113
  %.01415.i = phi i64 [ %i.eo, %.lr.ph.i113 ], [ 0, %bb.r ] ; 2 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %.01415.i ; 2 uses
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !14
  %i.em = add i32 %i.el, 1                        ; 2 uses
  %i.en = icmp eq i32 %i.em, 0                    ; 2 uses
  store i32 %i.em, ptr %i.ek, align 4, !tbaa !14
  %i.eo = add nuw i64 %.01415.i, 1                ; 2 uses
  %i.ep = icmp ult i64 %i.eo, %i.ei
  %or.cond.not.i = select i1 %i.ep, i1 %i.en, i1 false
  br i1 %or.cond.not.i, label %.lr.ph.i113, label %mp_add_ui.exit, !llvm.loop !38

mp_add_ui.exit:                                   ; preds = %.lr.ph.i113
  br i1 %i.en, label %mp_add_ui.exit.thread, label %bb.s

mp_add_ui.exit.thread:                            ; preds = %bb.r, %mp_add_ui.exit
  %i.eq = add nsw i32 %i.eg, 1
  store i32 %i.eq, ptr %0, align 4, !tbaa !14
  %i.er = getelementptr inbounds [4 x i8], ptr %i.eh, i64 %i.ei
  store i32 1, ptr %i.er, align 4, !tbaa !14
  br label %bb.s

bb.s:                                             ; preds = %.preheader, %mpb_renorm.exit, %mp_add_ui.exit, %mp_add_ui.exit.thread, %mpb_renorm.exit112, %bb.n, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden double @js_atod(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = and i32 %3, 8
  %.not232 = icmp eq i32 %i.b, 0
  %i.c = select i1 %.not232, i32 256, i32 95      ; 10 uses
  %i.d = load i8, ptr %0, align 1, !tbaa !8       ; 2 uses
  switch i8 %i.d, label %bb.c [
    i8 43, label %thread-pre-split
    i8 45, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.a, %bb.b
  %.0194.ph = phi i64 [ -9223372036854775808, %bb.b ], [ 0, %bb.a ]
  %.0356.ph = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.pr = load i8, ptr %.0356.ph, align 1, !tbaa !8
  br label %bb.c

bb.c:                                             ; preds = %thread-pre-split, %bb.a
  %i.e = phi i8 [ %.pr, %thread-pre-split ], [ %i.d, %bb.a ] ; 2 uses
  %.0356 = phi ptr [ %.0356.ph, %thread-pre-split ], [ %0, %bb.a ] ; 27 uses
  %.0194 = phi i64 [ %.0194.ph, %thread-pre-split ], [ 0, %bb.a ]
  %i.f = icmp eq i8 %i.e, 48
  br i1 %i.f, label %bb.d, label %bb.t

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.0356, i64 1 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !8     ; 6 uses
  switch i8 %i.h, label %bb.h [
    i8 120, label %bb.e
    i8 88, label %bb.e
    i8 111, label %bb.i
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.i = and i32 %2, -17
  %or.cond = icmp eq i32 %i.i, 0
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %.0356, i64 2
  br label %.thread370

bb.g:                                             ; preds = %bb.e
  %i.k = icmp eq i8 %i.h, 111
  br i1 %i.k, label %.thread386, label %.thread

bb.h:                                             ; preds = %bb.d
  %i.l = icmp eq i8 %i.h, 79
  %i.m = icmp eq i32 %2, 0                        ; 2 uses
  %or.cond3 = and i1 %i.m, %i.l
  br i1 %or.cond3, label %bb.j, label %.thread

bb.i:                                             ; preds = %bb.d
  %.old2 = icmp eq i32 %2, 0
  br i1 %.old2, label %bb.j, label %.thread386

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.n = and i32 %3, 2
  %.not235 = icmp eq i32 %i.n, 0
  br i1 %.not235, label %.thread386, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.o = getelementptr inbounds nuw i8, ptr %.0356, i64 2
  br label %.thread370

.thread:                                          ; preds = %bb.g, %bb.h
  %i.p = phi i1 [ %i.m, %bb.h ], [ false, %bb.g ] ; 3 uses
  %i.q = icmp eq i8 %i.h, 98
  br i1 %i.q, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.thread
  %i.r = icmp eq i8 %i.h, 66
  %or.cond6 = and i1 %i.p, %i.r
  br i1 %or.cond6, label %.thread365, label %bb.o

bb.m:                                             ; preds = %.thread
  br i1 %i.p, label %.thread365, label %.thread386

.thread365:                                       ; preds = %bb.l, %bb.m
  %.old464 = and i32 %3, 2
  %.not236.old = icmp eq i32 %.old464, 0
  br i1 %.not236.old, label %.thread386, label %bb.n

bb.n:                                             ; preds = %.thread365
  %i.s = getelementptr inbounds nuw i8, ptr %.0356, i64 2
  br label %.thread370

bb.o:                                             ; preds = %bb.l
  %i.t = add i8 %i.h, -48
  %i.u = icmp ult i8 %i.t, 10
  %or.cond548 = and i1 %i.p, %i.u
  br i1 %or.cond548, label %bb.p, label %.thread368

bb.p:                                             ; preds = %bb.o
  %i.v = and i32 %3, 4
  %.not237 = icmp eq i32 %i.v, 0
  br i1 %.not237, label %.thread386, label %.preheader477

.preheader477:                                    ; preds = %bb.p, %.preheader477
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader477 ], [ 1, %bb.p ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0356, i64 %indvars.iv
  %i.x = load i8, ptr %i.w, align 1, !tbaa !8     ; 2 uses
  %i.y = and i8 %i.x, -8
  %or.cond248 = icmp eq i8 %i.y, 48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %or.cond248, label %.preheader477, label %.critedge, !llvm.loop !39

.critedge:                                        ; preds = %.preheader477
  %i.z = and i8 %i.x, -2
  %switch = icmp eq i8 %i.z, 56
  br i1 %switch, label %.thread386, label %.thread370
end_hunk_0
begin_hunk_1_@js_atod:bb.a

bb.ap:                                            ; preds = %bb.ao
  %i.cr = icmp ugt ptr %.8, %.0356
  br i1 %i.cr, label %bb.au, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cs = getelementptr inbounds nuw i8, ptr %.8, i64 1
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !8   ; 3 uses
  %i.cu = zext i8 %i.ct to i32                    ; 3 uses
  %i.cv = add nsw i32 %i.cu, -48                  ; 2 uses
  %or.cond.i270 = icmp ult i32 %i.cv, 10
  br i1 %or.cond.i270, label %to_digit.exit275, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cw = add i8 %i.ct, -65
  %or.cond3.i271 = icmp ult i8 %i.cw, 26
  br i1 %or.cond3.i271, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.cx = add nsw i32 %i.cu, -55
  br label %to_digit.exit275

bb.at:                                            ; preds = %bb.ar
  %i.cy = add i8 %i.ct, -97
  %or.cond5.i272 = icmp ult i8 %i.cy, 26
  %i.cz = add nsw i32 %i.cu, -87
  %spec.select.i273 = select i1 %or.cond5.i272, i32 %i.cz, i32 36
  br label %to_digit.exit275

to_digit.exit275:                                 ; preds = %bb.aq, %bb.as, %bb.at
  %.0.i274 = phi i32 [ %spec.select.i273, %bb.at ], [ %i.cx, %bb.as ], [ %i.cv, %bb.aq ]
  %i.da = icmp slt i32 %.0.i274, %i.ax
  %or.cond253 = and i1 %.not239, %i.da
  br i1 %or.cond253, label %bb.av, label %bb.ax

bb.au:                                            ; preds = %bb.ap
  br i1 %.not239, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au, %to_digit.exit275
  %i.db = icmp sgt i32 %.3, -1
  br i1 %i.db, label %bb.bs, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.dc = getelementptr inbounds nuw i8, ptr %.8, i64 1 ; 2 uses
  %.pre502 = load i8, ptr %i.dc, align 1, !tbaa !8
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.au, %to_digit.exit275, %bb.ao
  %i.dd = phi i8 [ %.pre502, %bb.aw ], [ 46, %bb.au ], [ 46, %to_digit.exit275 ], [ %i.cp, %bb.ao ] ; 2 uses
  %.9 = phi ptr [ %i.dc, %bb.aw ], [ %.8, %bb.au ], [ %.8, %to_digit.exit275 ], [ %.8, %bb.ao ] ; 4 uses
  %.4 = phi i32 [ %.1172, %bb.aw ], [ %.3, %bb.au ], [ %.3, %to_digit.exit275 ], [ %.3, %bb.ao ] ; 2 uses
  %i.de = zext i8 %i.dd to i32                    ; 2 uses
  %i.df = icmp eq i32 %.1186384, %i.de
  %i.dg = icmp ugt ptr %.9, %.0356
  %or.cond255 = and i1 %i.dg, %i.df
  br i1 %or.cond255, label %bb.ay, label %bb.bc

bb.ay:                                            ; preds = %bb.ax
  %i.dh = getelementptr inbounds nuw i8, ptr %.9, i64 1 ; 2 uses
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !8   ; 3 uses
  %i.dj = zext i8 %i.di to i32                    ; 3 uses
  %i.dk = add nsw i32 %i.dj, -48                  ; 2 uses
  %or.cond.i276 = icmp ult i32 %i.dk, 10
  br i1 %or.cond.i276, label %to_digit.exit281, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.dl = add i8 %i.di, -65
  %or.cond3.i277 = icmp ult i8 %i.dl, 26
  br i1 %or.cond3.i277, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.dm = add nsw i32 %i.dj, -55
  br label %to_digit.exit281

bb.bb:                                            ; preds = %bb.az
  %i.dn = add i8 %i.di, -97
  %or.cond5.i278 = icmp ult i8 %i.dn, 26
  %i.do = add nsw i32 %i.dj, -87
  %spec.select.i279 = select i1 %or.cond5.i278, i32 %i.do, i32 36
  br label %to_digit.exit281

to_digit.exit281:                                 ; preds = %bb.ay, %bb.ba, %bb.bb
  %.0.i280 = phi i32 [ %spec.select.i279, %bb.bb ], [ %i.dm, %bb.ba ], [ %i.dk, %bb.ay ]
  %i.dp = icmp slt i32 %.0.i280, %i.ax
  %spec.select467 = select i1 %i.dp, ptr %i.dh, ptr %.9 ; 2 uses
  %.pre503 = load i8, ptr %spec.select467, align 1, !tbaa !8 ; 2 uses
  %.pre512 = zext i8 %.pre503 to i32
  br label %bb.bc

bb.bc:                                            ; preds = %to_digit.exit281, %bb.ax
  %.pre-phi513 = phi i32 [ %.pre512, %to_digit.exit281 ], [ %i.de, %bb.ax ] ; 3 uses
  %i.dq = phi i8 [ %.pre503, %to_digit.exit281 ], [ %i.dd, %bb.ax ] ; 2 uses
  %.10 = phi ptr [ %spec.select467, %to_digit.exit281 ], [ %.9, %bb.ax ] ; 2 uses
  %i.dr = add nsw i32 %.pre-phi513, -48           ; 2 uses
  %or.cond.i282 = icmp ult i32 %i.dr, 10
  br i1 %or.cond.i282, label %to_digit.exit287, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ds = add i8 %i.dq, -65
  %or.cond3.i283 = icmp ult i8 %i.ds, 26
  br i1 %or.cond3.i283, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.dt = add nsw i32 %.pre-phi513, -55
  br label %to_digit.exit287

bb.bf:                                            ; preds = %bb.bd
  %i.du = add i8 %i.dq, -97
  %or.cond5.i284 = icmp ult i8 %i.du, 26
  %i.dv = add nsw i32 %.pre-phi513, -87
  %spec.select.i285 = select i1 %or.cond5.i284, i32 %i.dv, i32 36
  br label %to_digit.exit287

to_digit.exit287:                                 ; preds = %bb.bc, %bb.be, %bb.bf
  %.0.i286 = phi i32 [ %spec.select.i285, %bb.bf ], [ %i.dt, %bb.be ], [ %i.dr, %bb.bc ] ; 3 uses
  %.not242 = icmp ult i32 %.0.i286, %i.ax
  br i1 %.not242, label %bb.bg, label %bb.bs

bb.bg:                                            ; preds = %to_digit.exit287
  %i.dw = getelementptr inbounds nuw i8, ptr %.10, i64 1 ; 2 uses
  %i.dx = add nuw nsw i32 %.1172, 1
  %i.dy = icmp slt i32 %.0191, %i.bc
  br i1 %i.dy, label %bb.bh, label %bb.bq

bb.bh:                                            ; preds = %bb.bg
  %i.dz = mul i32 %.0198, %i.ax
  %i.ea = add i32 %.0.i286, %i.dz                 ; 5 uses
  %i.eb = add nsw i32 %.0187, 1                   ; 2 uses
  %i.ec = icmp eq i32 %i.eb, %i.bf
  br i1 %i.ec, label %bb.bi, label %mpb_mul1_base.exit

bb.bi:                                            ; preds = %bb.bh
  %i.ed = load i32, ptr %i.bl, align 4, !tbaa !14
  %i.ee = icmp eq i32 %i.ed, 0
  br i1 %i.ee, label %bb.bj, label %thread-pre-split396

bb.bj:                                            ; preds = %bb.bi
  %i.ef = icmp eq i32 %i.co, 1
  br i1 %i.ef, label %bb.bk, label %thread-pre-split396

bb.bk:                                            ; preds = %bb.bj
  store i32 %i.ea, ptr %i.bl, align 4, !tbaa !14
  br label %mpb_mul1_base.exit

thread-pre-split396:                              ; preds = %bb.bi, %bb.bj
  %i.eg = phi i32 [ %i.co, %bb.bj ], [ %.pr397, %bb.bi ] ; 8 uses
  br i1 %.not474, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %thread-pre-split396
  %i.eh = icmp sgt i32 %i.eg, -1
  br i1 %i.eh, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.bl
  %i.ei = add nuw i32 %i.eg, 1
  %i.ej = zext i32 %i.ei to i64
  %i.ek = shl nuw nsw i64 %i.ej, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i288, ptr noundef nonnull align 4 dereferenceable(1) %i.bl, i64 %i.ek, i1 false), !tbaa !14
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.preheader.i, %bb.bl
  store i32 %i.ea, ptr %i.bl, align 4, !tbaa !14
  br label %bb.bo

bb.bm:                                            ; preds = %thread-pre-split396
  %.not.i.i = icmp eq i32 %i.eg, 0
  br i1 %.not.i.i, label %mp_mul1.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.bm
  %i.el = zext i32 %i.ea to i64                   ; 2 uses
  %wide.trip.count.i.i = zext i32 %i.eg to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %i.em = icmp eq i32 %i.eg, 1
  br i1 %i.em, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 4294967294
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bn, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.1, %bb.bn ] ; 3 uses
  %.01112.i.i = phi i64 [ %i.el, %.lr.ph.i.i.new ], [ %i.fb, %bb.bn ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.bn ]
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv.i.i ; 2 uses
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !14
  %i.ep = zext i32 %i.eo to i64
  %i.eq = mul nuw i64 %i.ep, %i.cm
  %i.er = add nuw i64 %i.eq, %.01112.i.i          ; 2 uses
  %i.es = trunc i64 %i.er to i32
  store i32 %i.es, ptr %i.en, align 4, !tbaa !14
  %i.et = lshr i64 %i.er, 32
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv.i.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 4 ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !14
  %i.ex = zext i32 %i.ew to i64
  %i.ey = mul nuw i64 %i.ex, %i.cm
  %i.ez = add nuw i64 %i.ey, %i.et                ; 2 uses
  %i.fa = trunc i64 %i.ez to i32
  store i32 %i.fa, ptr %i.ev, align 4, !tbaa !14
  %i.fb = lshr i64 %i.ez, 32                      ; 3 uses
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.i.i.unr-lcssa, label %bb.bn, !llvm.loop !23

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %bb.bn
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.1, %._crit_edge.loopexit.i.i.unr-lcssa ]
  %.01112.i.i.epil.init = phi i64 [ %i.el, %.lr.ph.i.i ], [ %i.fb, %._crit_edge.loopexit.i.i.unr-lcssa ]
  %lcmp.mod558 = trunc i32 %i.eg to i1
  tail call void @llvm.assume(i1 %lcmp.mod558)
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv.i.i.epil.init ; 2 uses
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !14
  %i.fe = zext i32 %i.fd to i64
  %i.ff = mul nuw i64 %i.fe, %i.cm
  %i.fg = add nuw i64 %i.ff, %.01112.i.i.epil.init ; 2 uses
  %i.fh = trunc i64 %i.fg to i32
  store i32 %i.fh, ptr %i.fc, align 4, !tbaa !14
  %i.fi = lshr i64 %i.fg, 32
  br label %._crit_edge.loopexit.i.i

._crit_edge.loopexit.i.i:                         ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.epil.preheader
  %.lcssa554 = phi i64 [ %i.fb, %._crit_edge.loopexit.i.i.unr-lcssa ], [ %i.fi, %.epil.preheader ]
  %i.fj = trunc nuw i64 %.lcssa554 to i32
  br label %mp_mul1.exit.i

mp_mul1.exit.i:                                   ; preds = %._crit_edge.loopexit.i.i, %bb.bm
  %.011.lcssa.i.i = phi i32 [ %i.ea, %bb.bm ], [ %i.fj, %._crit_edge.loopexit.i.i ]
  %i.fk = sext i32 %i.eg to i64
  %i.fl = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.fk
  store i32 %.011.lcssa.i.i, ptr %i.fl, align 4, !tbaa !14
  %.pre.i = load i32, ptr %4, align 4, !tbaa !14
  br label %bb.bo

bb.bo:                                            ; preds = %mp_mul1.exit.i, %._crit_edge.i
  %i.fm = phi i32 [ %.pre.i, %mp_mul1.exit.i ], [ %i.eg, %._crit_edge.i ] ; 2 uses
  %i.fn = add nsw i32 %i.fm, 1                    ; 5 uses
  store i32 %i.fn, ptr %4, align 4, !tbaa !14
  %i.fo = icmp sgt i32 %i.fm, 0
  br i1 %i.fo, label %.lr.ph.i23.i, label %mpb_mul1_base.exit

.lr.ph.i23.i:                                     ; preds = %bb.bo, %bb.bp
  %i.fp = phi i32 [ %i.fu, %bb.bp ], [ %i.fn, %bb.bo ] ; 6 uses
  %i.fq = zext nneg i32 %i.fp to i64
  %i.fr = getelementptr [4 x i8], ptr %4, i64 %i.fq
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !14
  %i.ft = icmp eq i32 %i.fs, 0
  br i1 %i.ft, label %bb.bp, label %mpb_mul1_base.exit

bb.bp:                                            ; preds = %.lr.ph.i23.i
  %i.fu = add nsw i32 %i.fp, -1                   ; 5 uses
  store i32 %i.fu, ptr %4, align 4, !tbaa !14
  %i.fv = icmp sgt i32 %i.fp, 2
  br i1 %i.fv, label %.lr.ph.i23.i, label %mpb_mul1_base.exit, !llvm.loop !19

mpb_mul1_base.exit:                               ; preds = %bb.bp, %.lr.ph.i23.i, %bb.bo, %bb.bk, %bb.bh
  %.pr425510 = phi i32 [ %i.cn, %bb.bh ], [ %i.cn, %bb.bk ], [ %i.fn, %bb.bo ], [ %i.fu, %bb.bp ], [ %i.fp, %.lr.ph.i23.i ]
  %i.fw = phi i32 [ %i.co, %bb.bh ], [ 1, %bb.bk ], [ %i.fn, %bb.bo ], [ %i.fu, %bb.bp ], [ %i.fp, %.lr.ph.i23.i ]
  %.pr397506 = phi i32 [ %.pr397, %bb.bh ], [ 1, %bb.bk ], [ %i.fn, %bb.bo ], [ %i.fu, %bb.bp ], [ %i.fp, %.lr.ph.i23.i ]
  %.1199 = phi i32 [ %i.ea, %bb.bh ], [ 0, %bb.bk ], [ 0, %bb.bo ], [ 0, %.lr.ph.i23.i ], [ 0, %bb.bp ]
  %.1188 = phi i32 [ %i.eb, %bb.bh ], [ 0, %bb.bk ], [ 0, %bb.bo ], [ 0, %.lr.ph.i23.i ], [ 0, %bb.bp ]
  %i.fx = add nsw i32 %.0191, 1
  br label %bb.br

bb.bq:                                            ; preds = %bb.bg
  %i.fy = or i32 %.0.i286, %.0195
  br label %bb.br

bb.br:                                            ; preds = %mpb_mul1_base.exit, %bb.bq
  %.pr425509 = phi i32 [ %.pr425510, %mpb_mul1_base.exit ], [ %i.cn, %bb.bq ]
  %i.fz = phi i32 [ %i.fw, %mpb_mul1_base.exit ], [ %i.co, %bb.bq ]
  %.pr397505 = phi i32 [ %.pr397506, %mpb_mul1_base.exit ], [ %.pr397, %bb.bq ]
  %.3201 = phi i32 [ %.1199, %mpb_mul1_base.exit ], [ %.0198, %bb.bq ]
  %.2197 = phi i32 [ %.0195, %mpb_mul1_base.exit ], [ %i.fy, %bb.bq ]
  %.2193 = phi i32 [ %i.fx, %mpb_mul1_base.exit ], [ %.0191, %bb.bq ]
  %.3190 = phi i32 [ %.1188, %mpb_mul1_base.exit ], [ %.0187, %bb.bq ]
  %.pre501 = load i8, ptr %i.dw, align 1, !tbaa !8
  br label %bb.ao

bb.bs:                                            ; preds = %bb.av, %to_digit.exit287
  %.11.ph = phi ptr [ %.10, %to_digit.exit287 ], [ %.8, %bb.av ] ; 10 uses
  %.5.ph = phi i32 [ %.4, %to_digit.exit287 ], [ %.3, %bb.av ] ; 2 uses
  switch i32 %.0187, label %bb.bu [
    i32 0, label %mpb_mul1_base.exit308
    i32 1, label %bb.bt
  ]

bb.bt:                                            ; preds = %bb.bs
  %i.ga = zext i32 %i.ax to i64
  br label %pow_ui.exit

bb.bu:                                            ; preds = %bb.bs
  %i.gb = icmp eq i32 %i.ax, 5
  %i.gc = icmp eq i32 %i.ax, 10                   ; 2 uses
  %or.cond.i289 = or i1 %i.gb, %i.gc
  %i.gd = icmp ult i32 %.0187, 18
  %or.cond3.i290 = and i1 %or.cond.i289, %i.gd
  br i1 %or.cond3.i290, label %bb.bv, label %bb.by

bb.bv:                                            ; preds = %bb.bu
  %i.ge = zext nneg i32 %.0187 to i64             ; 2 uses
  %i.gf = getelementptr [4 x i8], ptr @pow5_table, i64 %i.ge
  %i.gg = getelementptr i8, ptr %i.gf, i64 -4
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !14
  %i.gi = zext i32 %i.gh to i64                   ; 2 uses
  %i.gj = icmp samesign ugt i32 %.0187, 13
  br i1 %i.gj, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.gk = getelementptr i8, ptr @pow5h_table, i64 %i.ge
  %i.gl = getelementptr i8, ptr %i.gk, i64 -14
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !8
  %i.gn = zext i8 %i.gm to i64
  %i.go = shl nuw nsw i64 %i.gn, 32
  %i.gp = or disjoint i64 %i.go, %i.gi
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.0.i292 = phi i64 [ %i.gp, %bb.bw ], [ %i.gi, %bb.bv ]
  %narrow.i = select i1 %i.gc, i32 %.0187, i32 0
  %i.gq = zext nneg i32 %narrow.i to i64
  %.1.i = shl nuw nsw i64 %.0.i292, %i.gq
  br label %pow_ui.exit

bb.by:                                            ; preds = %bb.bu
  %i.gr = zext i32 %i.ax to i64                   ; 6 uses
  %i.gs = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %.0187, i1 true) ; 4 uses
  %i.gt = sub nsw i32 30, %i.gs                   ; 2 uses
  %i.gu = and i32 %i.gs, 1
  %lcmp.mod560.not.not = icmp eq i32 %i.gu, 0
  br i1 %lcmp.mod560.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %bb.by
  %i.gv = mul nuw i64 %i.gr, %i.gr
  %i.gw = shl nuw nsw i32 1, %i.gt
  %i.gx = and i32 %i.gw, %.0187
  %.not.i.prol = icmp eq i32 %i.gx, 0
  %i.gy = select i1 %.not.i.prol, i64 1, i64 %i.gr
  %spec.select.i291.prol = mul i64 %i.gv, %i.gy   ; 2 uses
  %i.gz = sub nsw i32 29, %i.gs
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %bb.by
  %spec.select.i291.lcssa.unr = phi i64 [ poison, %bb.by ], [ %spec.select.i291.prol, %.prol.loopexit.unr-lcssa ]
  %.234.i.unr = phi i64 [ %i.gr, %bb.by ], [ %spec.select.i291.prol, %.prol.loopexit.unr-lcssa ]
  %.03033.i.unr = phi i32 [ %i.gt, %bb.by ], [ %i.gz, %.prol.loopexit.unr-lcssa ]
  %i.ha = icmp eq i32 %i.gs, 30
  br i1 %i.ha, label %pow_ui.exit, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.234.i = phi i64 [ %spec.select.i291.1, %.new ], [ %.234.i.unr, %.prol.loopexit ] ; 2 uses
  %.03033.i = phi i32 [ %i.hk, %.new ], [ %.03033.i.unr, %.prol.loopexit ] ; 3 uses
  %i.hb = mul i64 %.234.i, %.234.i
  %i.hc = shl nuw i32 1, %.03033.i
  %i.hd = and i32 %i.hc, %.0187
  %.not.i = icmp eq i32 %i.hd, 0
  %i.he = select i1 %.not.i, i64 1, i64 %i.gr
  %spec.select.i291 = mul i64 %i.hb, %i.he        ; 2 uses
  %i.hf = add nsw i32 %.03033.i, -1               ; 2 uses
  %i.hg = mul i64 %spec.select.i291, %spec.select.i291
  %i.hh = shl nuw i32 1, %i.hf
  %i.hi = and i32 %i.hh, %.0187
  %.not.i.1 = icmp eq i32 %i.hi, 0
  %i.hj = select i1 %.not.i.1, i64 1, i64 %i.gr
  %spec.select.i291.1 = mul i64 %i.hg, %i.hj      ; 2 uses
  %i.hk = add nsw i32 %.03033.i, -2
  %.not36.i.1 = icmp eq i32 %i.hf, 0
  br i1 %.not36.i.1, label %pow_ui.exit, label %.new, !llvm.loop !15

pow_ui.exit:                                      ; preds = %.prol.loopexit, %.new, %bb.bt, %bb.bx
  %.031.i = phi i64 [ %.1.i, %bb.bx ], [ %i.ga, %bb.bt ], [ %spec.select.i291.lcssa.unr, %.prol.loopexit ], [ %spec.select.i291.1, %.new ]
  %i.hl = load i32, ptr %i.bl, align 4, !tbaa !14
  %i.hm = icmp eq i32 %i.hl, 0
  %i.hn = icmp eq i32 %i.cn, 1
  %or.cond549 = select i1 %i.hm, i1 %i.hn, i1 false
  br i1 %or.cond549, label %bb.bz, label %thread-pre-split424

bb.bz:                                            ; preds = %pow_ui.exit
  store i32 %.0198, ptr %i.bl, align 4, !tbaa !14
  br label %mpb_mul1_base.exit308

thread-pre-split424:                              ; preds = %pow_ui.exit
  %i.ho = and i64 %.031.i, 4294967295             ; 4 uses
  %i.hp = icmp eq i64 %i.ho, 0
  br i1 %i.hp, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %thread-pre-split424
  %i.hq = icmp sgt i32 %i.cn, -1
  br i1 %i.hq, label %.lr.ph.preheader.i306, label %._crit_edge.i305

.lr.ph.preheader.i306:                            ; preds = %bb.ca
  %i.hr = add nuw i32 %i.cn, 1
  %i.hs = zext i32 %i.hr to i64
  %i.ht = shl nuw nsw i64 %i.hs, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i288, ptr noundef nonnull align 4 dereferenceable(1) %i.bl, i64 %i.ht, i1 false), !tbaa !14
  br label %._crit_edge.i305

._crit_edge.i305:                                 ; preds = %.lr.ph.preheader.i306, %bb.ca
  store i32 %.0198, ptr %i.bl, align 4, !tbaa !14
  br label %bb.cd

bb.cb:                                            ; preds = %thread-pre-split424
  %.not.i.i293 = icmp eq i32 %i.cn, 0
  br i1 %.not.i.i293, label %mp_mul1.exit.i301, label %.lr.ph.i.i294

.lr.ph.i.i294:                                    ; preds = %bb.cb
  %i.hu = zext i32 %.0198 to i64                  ; 2 uses
  %wide.trip.count.i.i295 = zext i32 %i.cn to i64 ; 2 uses
  %xtraiter562 = and i64 %wide.trip.count.i.i295, 1
  %i.hv = icmp eq i32 %i.cn, 1
  br i1 %i.hv, label %.epil.preheader561, label %.lr.ph.i.i294.new

.lr.ph.i.i294.new:                                ; preds = %.lr.ph.i.i294
  %unroll_iter566 = and i64 %wide.trip.count.i.i295, 4294967294
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cc, %.lr.ph.i.i294.new
  %indvars.iv.i.i296 = phi i64 [ 0, %.lr.ph.i.i294.new ], [ %indvars.iv.next.i.i298.1, %bb.cc ] ; 3 uses
  %.01112.i.i297 = phi i64 [ %i.hu, %.lr.ph.i.i294.new ], [ %i.ik, %bb.cc ]
  %niter567 = phi i64 [ 0, %.lr.ph.i.i294.new ], [ %niter567.next.1, %bb.cc ]
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv.i.i296 ; 2 uses
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !14
  %i.hy = zext i32 %i.hx to i64
  %i.hz = mul nuw i64 %i.ho, %i.hy
  %i.ia = add nuw i64 %i.hz, %.01112.i.i297       ; 2 uses
  %i.ib = trunc i64 %i.ia to i32
  store i32 %i.ib, ptr %i.hw, align 4, !tbaa !14
  %i.ic = lshr i64 %i.ia, 32
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv.i.i296
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 4 ; 2 uses
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !14
  %i.ig = zext i32 %i.if to i64
  %i.ih = mul nuw i64 %i.ho, %i.ig
  %i.ii = add nuw i64 %i.ih, %i.ic                ; 2 uses
  %i.ij = trunc i64 %i.ii to i32
  store i32 %i.ij, ptr %i.ie, align 4, !tbaa !14
  %i.ik = lshr i64 %i.ii, 32                      ; 3 uses
  %indvars.iv.next.i.i298.1 = add nuw nsw i64 %indvars.iv.i.i296, 2 ; 2 uses
  %niter567.next.1 = add i64 %niter567, 2         ; 2 uses
  %niter567.ncmp.1 = icmp eq i64 %niter567.next.1, %unroll_iter566
  br i1 %niter567.ncmp.1, label %._crit_edge.loopexit.i.i300.unr-lcssa, label %bb.cc, !llvm.loop !23

._crit_edge.loopexit.i.i300.unr-lcssa:            ; preds = %bb.cc
  %lcmp.mod563.not = icmp eq i64 %xtraiter562, 0
  br i1 %lcmp.mod563.not, label %._crit_edge.loopexit.i.i300, label %.epil.preheader561

.epil.preheader561:                               ; preds = %._crit_edge.loopexit.i.i300.unr-lcssa, %.lr.ph.i.i294
  %indvars.iv.i.i296.epil.init = phi i64 [ 0, %.lr.ph.i.i294 ], [ %indvars.iv.next.i.i298.1, %._crit_edge.loopexit.i.i300.unr-lcssa ]
  %.01112.i.i297.epil.init = phi i64 [ %i.hu, %.lr.ph.i.i294 ], [ %i.ik, %._crit_edge.loopexit.i.i300.unr-lcssa ]
  %lcmp.mod565 = trunc i32 %i.cn to i1
  tail call void @llvm.assume(i1 %lcmp.mod565)
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv.i.i296.epil.init ; 2 uses
  %i.im = load i32, ptr %i.il, align 4, !tbaa !14
  %i.in = zext i32 %i.im to i64
  %i.io = mul nuw i64 %i.ho, %i.in
  %i.ip = add nuw i64 %i.io, %.01112.i.i297.epil.init ; 2 uses
  %i.iq = trunc i64 %i.ip to i32
  store i32 %i.iq, ptr %i.il, align 4, !tbaa !14
  %i.ir = lshr i64 %i.ip, 32
  br label %._crit_edge.loopexit.i.i300

._crit_edge.loopexit.i.i300:                      ; preds = %._crit_edge.loopexit.i.i300.unr-lcssa, %.epil.preheader561
  %.lcssa = phi i64 [ %i.ik, %._crit_edge.loopexit.i.i300.unr-lcssa ], [ %i.ir, %.epil.preheader561 ]
  %i.is = trunc nuw i64 %.lcssa to i32
  br label %mp_mul1.exit.i301

mp_mul1.exit.i301:                                ; preds = %._crit_edge.loopexit.i.i300, %bb.cb
  %.011.lcssa.i.i302 = phi i32 [ %.0198, %bb.cb ], [ %i.is, %._crit_edge.loopexit.i.i300 ]
  %i.it = sext i32 %i.cn to i64
  %i.iu = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.it
  store i32 %.011.lcssa.i.i302, ptr %i.iu, align 4, !tbaa !14
  %.pre.i303 = load i32, ptr %4, align 4, !tbaa !14
  br label %bb.cd

bb.cd:                                            ; preds = %mp_mul1.exit.i301, %._crit_edge.i305
  %i.iv = phi i32 [ %.pre.i303, %mp_mul1.exit.i301 ], [ %i.cn, %._crit_edge.i305 ] ; 2 uses
  %i.iw = add nsw i32 %i.iv, 1                    ; 2 uses
  store i32 %i.iw, ptr %4, align 4, !tbaa !14
  %i.ix = icmp sgt i32 %i.iv, 0
  br i1 %i.ix, label %.lr.ph.i23.i304, label %mpb_mul1_base.exit308

.lr.ph.i23.i304:                                  ; preds = %bb.cd, %bb.ce
  %i.iy = phi i32 [ %i.jd, %bb.ce ], [ %i.iw, %bb.cd ] ; 3 uses
  %i.iz = zext nneg i32 %i.iy to i64
  %i.ja = getelementptr [4 x i8], ptr %4, i64 %i.iz
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !14
  %i.jc = icmp eq i32 %i.jb, 0
  br i1 %i.jc, label %bb.ce, label %mpb_mul1_base.exit308

bb.ce:                                            ; preds = %.lr.ph.i23.i304
  %i.jd = add nsw i32 %i.iy, -1                   ; 2 uses
  store i32 %i.jd, ptr %4, align 4, !tbaa !14
  %i.je = icmp sgt i32 %i.iy, 2
  br i1 %i.je, label %.lr.ph.i23.i304, label %mpb_mul1_base.exit308, !llvm.loop !19

mpb_mul1_base.exit308:                            ; preds = %bb.ce, %.lr.ph.i23.i304, %bb.bs, %bb.cd, %bb.bz
  %i.jf = icmp ne i32 %.0191, 0                   ; 2 uses
  %i.jg = icmp slt i32 %.5.ph, 0
  %spec.select = select i1 %i.jg, i32 %.1172, i32 %.5.ph
  %i.jh = add nsw i32 %.0191, %.0171
  %i.ji = sub i32 %i.jh, %spec.select             ; 2 uses
  %i.jj = icmp ne i32 %., 0                       ; 2 uses
  %i.jk = icmp ne i32 %.0195, 0
  %or.cond12 = select i1 %i.jj, i1 %i.jk, i1 false
  br i1 %or.cond12, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %mpb_mul1_base.exit308
  %i.jl = load i32, ptr %i.bl, align 4, !tbaa !14
  %i.jm = or i32 %i.jl, 1
  store i32 %i.jm, ptr %i.bl, align 4, !tbaa !14
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %mpb_mul1_base.exit308
  br i1 %.not239, label %bb.ch, label %.thread443

bb.ch:                                            ; preds = %bb.cg
  %cond = icmp eq i32 %i.ax, 10
  %i.jn = load i8, ptr %.11.ph, align 1, !tbaa !8 ; 7 uses
  br i1 %cond, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  switch i8 %i.jn, label %.thread443 [
    i8 101, label %bb.cm
    i8 69, label %bb.cm
  ]

bb.cj:                                            ; preds = %bb.ch
  %i.jo = icmp eq i8 %i.jn, 64
  br i1 %i.jo, label %bb.cm, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.jp = add nsw i32 %., -1
  %or.cond15 = icmp ult i32 %i.jp, 4
  br i1 %or.cond15, label %bb.cl, label %.thread443

bb.cl:                                            ; preds = %bb.ck
  switch i8 %i.jn, label %.thread443 [
    i8 112, label %bb.cm
    i8 80, label %bb.cm
  ]

bb.cm:                                            ; preds = %bb.cl, %bb.cl, %bb.ci, %bb.ci, %bb.cj
  %i.jq = phi i8 [ %i.jn, %bb.cl ], [ %i.jn, %bb.cl ], [ %i.jn, %bb.ci ], [ %i.jn, %bb.ci ], [ 64, %bb.cj ]
  %i.jr = icmp ugt ptr %.11.ph, %.0356
  br i1 %i.jr, label %bb.cn, label %.thread443

bb.cn:                                            ; preds = %bb.cm
  %i.js = and i8 %i.jq, -33
  %spec.select257 = icmp eq i8 %i.js, 80
  %i.jt = getelementptr inbounds nuw i8, ptr %.11.ph, i64 1 ; 2 uses
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !8
  switch i8 %i.ju, label %bb.cq [
    i8 43, label %bb.co
    i8 45, label %bb.cp
  ]

bb.co:                                            ; preds = %bb.cn
  %i.jv = getelementptr inbounds nuw i8, ptr %.11.ph, i64 2
  br label %bb.cq

bb.cp:                                            ; preds = %bb.cn
  %i.jw = getelementptr inbounds nuw i8, ptr %.11.ph, i64 2
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cn, %bb.cp, %bb.co
  %.12 = phi ptr [ %i.jt, %bb.cn ], [ %i.jv, %bb.co ], [ %i.jw, %bb.cp ] ; 3 uses
  %.0 = phi i1 [ false, %bb.cn ], [ false, %bb.co ], [ true, %bb.cp ] ; 2 uses
  %i.jx = load i8, ptr %.12, align 1, !tbaa !8
  %i.jy = zext i8 %i.jx to i32
  %i.jz = add nsw i32 %i.jy, -48                  ; 2 uses
  %or.cond.i309 = icmp ult i32 %i.jz, 10
  br i1 %or.cond.i309, label %.preheader, label %.thread415

.preheader:                                       ; preds = %bb.cq, %to_digit.exit326.thread433
  %.13 = phi ptr [ %.14, %to_digit.exit326.thread433 ], [ %.12, %bb.cq ] ; 2 uses
  %.0178 = phi i32 [ %.1179, %to_digit.exit326.thread433 ], [ %i.jz, %bb.cq ] ; 5 uses
  %.0166 = phi i1 [ %or.cond473, %to_digit.exit326.thread433 ], [ false, %bb.cq ] ; 2 uses
  %storemerge = getelementptr inbounds nuw i8, ptr %.13, i64 1 ; 3 uses
  %i.ka = load i8, ptr %storemerge, align 1, !tbaa !8 ; 2 uses
  %i.kb = zext i8 %i.ka to i32                    ; 2 uses
  %i.kc = icmp eq i32 %.1186384, %i.kb
  br i1 %i.kc, label %bb.cr, label %to_digit.exit320.thread

bb.cr:                                            ; preds = %.preheader
  %i.kd = getelementptr inbounds nuw i8, ptr %.13, i64 2 ; 2 uses
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !8   ; 2 uses
  %i.kf = add i8 %i.ke, -48
  %or.cond.i315 = icmp ult i8 %i.kf, 10           ; 2 uses
  %spec.select475 = select i1 %or.cond.i315, ptr %i.kd, ptr %storemerge
  %i.kg = select i1 %or.cond.i315, i8 %i.ke, i8 %i.ka
  %.pre511 = zext i8 %i.kg to i32
  br label %to_digit.exit320.thread

to_digit.exit320.thread:                          ; preds = %bb.cr, %.preheader
  %.pre-phi = phi i32 [ %.pre511, %bb.cr ], [ %i.kb, %.preheader ]
  %.14 = phi ptr [ %spec.select475, %bb.cr ], [ %storemerge, %.preheader ] ; 3 uses
  %i.kh = add nsw i32 %.pre-phi, -48              ; 2 uses
  %or.cond.i321 = icmp ult i32 %i.kh, 10
  br i1 %or.cond.i321, label %to_digit.exit326.thread433, label %to_digit.exit326.thread

to_digit.exit326.thread:                          ; preds = %to_digit.exit320.thread
  %i.ki = sub nsw i32 0, %.0178
  %spec.select258 = select i1 %.0, i32 %i.ki, i32 %.0178
  %or.cond18 = select i1 %i.jf, i1 %.0166, i1 false
  %.259 = select i1 %.0, i64 0, i64 9218868437227405312
  br i1 %or.cond18, label %js__strstart.exit, label %.thread443

to_digit.exit326.thread433:                       ; preds = %to_digit.exit320.thread
  %i.kj = icmp sgt i32 %.0178, 214748363
  %or.cond473 = select i1 %.0166, i1 true, i1 %i.kj, !prof !40 ; 2 uses
  %i.kk = mul nsw i32 %.0178, 10
  %i.kl = add nsw i32 %i.kh, %i.kk
  %.1179 = select i1 %or.cond473, i32 %.0178, i32 %i.kl, !prof !40
  br label %.preheader

.thread443:                                       ; preds = %to_digit.exit326.thread, %bb.ci, %bb.cl, %bb.cm, %bb.ck, %bb.cg
  %.16 = phi ptr [ %.11.ph, %bb.cg ], [ %.11.ph, %bb.ci ], [ %.11.ph, %bb.cm ], [ %.11.ph, %bb.cl ], [ %.11.ph, %bb.ck ], [ %.14, %to_digit.exit326.thread ] ; 12 uses
  %.4182 = phi i32 [ 0, %bb.cg ], [ 0, %bb.ci ], [ 0, %bb.cm ], [ 0, %bb.cl ], [ 0, %bb.ck ], [ %spec.select258, %to_digit.exit326.thread ] ; 2 uses
  %.0169 = phi i1 [ false, %bb.cg ], [ false, %bb.ci ], [ false, %bb.cm ], [ false, %bb.cl ], [ false, %bb.ck ], [ %spec.select257, %to_digit.exit326.thread ]
  %i.km = icmp eq ptr %.16, %.0356
  br i1 %i.km, label %.thread415, label %bb.cs

bb.cs:                                            ; preds = %.thread443
  br i1 %i.jf, label %bb.ct, label %js__strstart.exit

bb.ct:                                            ; preds = %bb.cs
  br i1 %i.jj, label %bb.cu, label %bb.cx

bb.cu:                                            ; preds = %bb.ct
  %i.kn = select i1 %.0169, i32 1, i32 %.
  %spec.select261 = mul nsw i32 %i.kn, %.4182
  %i.ko = mul nsw i32 %i.ji, %.
  %i.kp = sub nsw i32 %spec.select261, %i.ko      ; 2 uses
  %i.kq = mul nsw i32 %.0191, %.
  %i.kr = add nsw i32 %i.kp, %i.kq                ; 2 uses
  %i.ks = or disjoint i32 %., 1024
  %.not246 = icmp slt i32 %i.kr, %i.ks
  br i1 %.not246, label %bb.cv, label %js__strstart.exit

bb.cv:                                            ; preds = %bb.cu
  %i.kt = icmp slt i32 %i.kr, -1074
  br i1 %i.kt, label %js__strstart.exit, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.ku = sub nsw i32 0, %i.kp
  %i.kv = call fastcc i64 @round_to_d(ptr noundef %i.a, ptr noundef nonnull %4, i32 noundef %i.ku)
  br label %bb.da

bb.cx:                                            ; preds = %bb.ct
  %i.kw = sub nsw i32 %.4182, %i.ji               ; 2 uses
  %i.kx = add nsw i32 %i.kw, %.0191               ; 2 uses
  %i.ky = getelementptr inbounds [2 x i8], ptr @max_exponent, i64 %i.az
  %i.kz = load i16, ptr %i.ky, align 2, !tbaa !41
  %i.la = sext i16 %i.kz to i32
  %.not.not = icmp sgt i32 %i.kx, %i.la
  br i1 %.not.not, label %js__strstart.exit, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.lb = getelementptr inbounds [2 x i8], ptr @min_exponent, i64 %i.az
  %i.lc = load i16, ptr %i.lb, align 2, !tbaa !41
  %i.ld = sext i16 %i.lc to i32
  %.not = icmp sgt i32 %i.kx, %i.ld
  br i1 %.not, label %bb.cz, label %js__strstart.exit

bb.cz:                                            ; preds = %bb.cy
  %i.le = call fastcc i64 @mul_pow_round_to_d(ptr noundef %i.a, ptr noundef nonnull %4, i32 noundef %i.bj, i32 noundef %i.bi, i32 noundef %i.kw)
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cw
  %.0165 = phi i64 [ %i.kv, %bb.cw ], [ %i.le, %bb.cz ] ; 3 uses
  %i.lf = icmp eq i64 %.0165, 0
  br i1 %i.lf, label %js__strstart.exit, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.lg = load i32, ptr %i.a, align 4, !tbaa !14  ; 5 uses
  %i.lh = icmp sgt i32 %i.lg, 1024
  br i1 %i.lh, label %js__strstart.exit, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.li = icmp slt i32 %i.lg, -1073
  br i1 %i.li, label %js__strstart.exit, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.lj = icmp slt i32 %i.lg, -1021
  br i1 %i.lj, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.lk = sub nuw nsw i32 -1021, %i.lg
  %i.ll = zext nneg i32 %i.lk to i64
  %i.lm = lshr i64 %.0165, %i.ll
  br label %js__strstart.exit

bb.df:                                            ; preds = %bb.dd
  %i.ln = add nsw i32 %i.lg, 1022
  %i.lo = zext nneg i32 %i.ln to i64
  %i.lp = shl nuw nsw i64 %i.lo, 52
  %i.lq = and i64 %.0165, 4503599627370495
  %i.lr = or disjoint i64 %i.lp, %i.lq
  br label %js__strstart.exit

js__strstart.exit:                                ; preds = %to_digit.exit326.thread, %bb.ab, %bb.dc, %bb.cu, %bb.cx, %bb.db, %bb.cv, %bb.cy, %bb.da, %bb.cs, %bb.de, %bb.df
  %.17 = phi ptr [ %.16, %bb.cv ], [ %.16, %bb.da ], [ %.16, %bb.db ], [ %.16, %bb.dc ], [ %.16, %bb.de ], [ %.16, %bb.df ], [ %.16, %bb.cu ], [ %.16, %bb.cx ], [ %.16, %bb.cy ], [ %.16, %bb.cs ], [ %scevgep.i, %bb.ab ], [ %.14, %to_digit.exit326.thread ]
  %.2164 = phi i64 [ 0, %bb.cv ], [ 0, %bb.da ], [ 9218868437227405312, %bb.db ], [ 0, %bb.dc ], [ %i.lm, %bb.de ], [ %i.lr, %bb.df ], [ 9218868437227405312, %bb.cu ], [ 9218868437227405312, %bb.cx ], [ 0, %bb.cy ], [ 0, %bb.cs ], [ 9218868437227405312, %bb.ab ], [ %.259, %to_digit.exit326.thread ]
  %i.ls = or i64 %.2164, %.0194
  %i.lt = bitcast i64 %i.ls to double
  br label %.thread415

.thread415:                                       ; preds = %bb.cq, %to_digit.exit, %.thread443, %js__strstart.exit
  %.18 = phi ptr [ %.2358, %to_digit.exit ], [ %.16, %.thread443 ], [ %.17, %js__strstart.exit ], [ %.12, %bb.cq ]
  %.0170 = phi double [ +qnan, %to_digit.exit ], [ +qnan, %.thread443 ], [ %i.lt, %js__strstart.exit ], [ +qnan, %bb.cq ]
  %.not247 = icmp eq ptr %1, null
  br i1 %.not247, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %.thread415
  store ptr %.18, ptr %1, align 8, !tbaa !43
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %.thread415
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret double %.0170
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i64 0, -9223372036854775808) i64 @round_to_d(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %0, ptr nofree noundef captures(none) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !14
  %i.c = icmp eq i32 %i.b, 0
  %.pre = load i32, ptr %1, align 4, !tbaa !14    ; 3 uses
  %i.d = icmp eq i32 %.pre, 1
  %or.cond = select i1 %i.c, i1 %i.d, i1 false
  br i1 %or.cond, label %bb.d, label %mpb_floor_log2.exit

mpb_floor_log2.exit:                              ; preds = %bb.a
  %i.e = sext i32 %.pre to i64
  %i.f = getelementptr [4 x i8], ptr %1, i64 %i.e
  %i.g = load i32, ptr %i.f, align 4, !tbaa !14   ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  %i.i = shl nsw i32 %.pre, 5
  %i.j = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.g, i1 true)
  %i.k = sub i32 %i.i, %i.j
  %.0.i = select i1 %i.h, i32 0, i32 %i.k         ; 2 uses
  %i.l = sub nsw i32 %.0.i, %2                    ; 2 uses
  %i.m = tail call i32 @llvm.smin.i32(i32 %i.l, i32 -1021) ; 2 uses
  %.0.neg = add i32 %.0.i, -1074
  %i.n = sub i32 %.0.neg, %i.m
  tail call fastcc void @mpb_shr_round(ptr noundef nonnull %1, i32 noundef %i.n, i32 noundef 0)
  %i.o = load i32, ptr %1, align 4, !tbaa !14
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %mpb_floor_log2.exit
  %i.q = load i32, ptr %i.a, align 4, !tbaa !14
  %i.r = zext i32 %i.q to i64
  br label %mpb_get_u64.exit

bb.c:                                             ; preds = %mpb_floor_log2.exit
  %i.s = load i64, ptr %i.a, align 4
  br label %mpb_get_u64.exit

mpb_get_u64.exit:                                 ; preds = %bb.b, %bb.c
  %.0.i29 = phi i64 [ %i.r, %bb.b ], [ %i.s, %bb.c ]
  %i.t = sub nuw nsw i32 -1021, %i.m
  %i.u = zext nneg i32 %i.t to i64
  %i.v = shl i64 %.0.i29, %i.u                    ; 2 uses
  %i.w = icmp ugt i64 %i.v, 9007199254740991      ; 2 uses
  %i.x = zext i1 %i.w to i32
  %.024 = add nsw i32 %i.l, %i.x
  %i.y = zext i1 %i.w to i64
  %.023 = lshr i64 %i.v, %i.y
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %mpb_get_u64.exit
  %.125 = phi i32 [ %.024, %mpb_get_u64.exit ], [ 0, %bb.a ]
  %.1 = phi i64 [ %.023, %mpb_get_u64.exit ], [ 0, %bb.a ]
  store i32 %.125, ptr %0, align 4, !tbaa !14
  ret i64 %.1
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc i32 @mp_div1norm(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #5 {
bb.a:
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %mp_shl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = zext i32 %2 to i64                       ; 2 uses
  %.not18 = icmp eq i32 %2, 0
  br i1 %.not18, label %._crit_edge, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.b = sub nsw i32 32, %5                       ; 3 uses
  %xtraiter = and i64 %i.a, 1
  %i.c = icmp eq i32 %2, 1
  br i1 %i.c, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.a, 4294967294
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.new
  %.015.i = phi i32 [ 0, %.lr.ph.i.new ], [ %i.p, %bb.c ]
  %.01314.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.q, %bb.c ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.c ]
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.01314.i
  %i.e = load i32, ptr %i.d, align 4, !tbaa !14   ; 2 uses
  %i.f = shl i32 %i.e, %5
  %i.g = or i32 %i.f, %.015.i
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.01314.i
  store i32 %i.g, ptr %i.h, align 4, !tbaa !14
  %i.i = lshr i32 %i.e, %i.b
  %i.j = or disjoint i64 %.01314.i, 1             ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !14   ; 2 uses
  %i.m = shl i32 %i.l, %5
  %i.n = or disjoint i32 %i.m, %i.i
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.j
  store i32 %i.n, ptr %i.o, align 4, !tbaa !14
  %i.p = lshr i32 %i.l, %i.b                      ; 3 uses
  %i.q = add nuw nsw i64 %.01314.i, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %mp_shl.exit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !26

mp_shl.exit.loopexit.unr-lcssa:                   ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %mp_shl.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %mp_shl.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.015.i.epil.init = phi i32 [ 0, %.lr.ph.i ], [ %i.p, %mp_shl.exit.loopexit.unr-lcssa ]
  %.01314.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.q, %mp_shl.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod4 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod4)
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.01314.i.epil.init
  %i.s = load i32, ptr %i.r, align 4, !tbaa !14   ; 2 uses
  %i.t = shl i32 %i.s, %5
  %i.u = or i32 %i.t, %.015.i.epil.init
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.01314.i.epil.init
  store i32 %i.u, ptr %i.v, align 4, !tbaa !14
  %i.w = lshr i32 %i.s, %i.b
  br label %mp_shl.exit

mp_shl.exit:                                      ; preds = %.epil.preheader, %mp_shl.exit.loopexit.unr-lcssa, %bb.a
  %.017 = phi i32 [ 0, %bb.a ], [ %i.p, %mp_shl.exit.loopexit.unr-lcssa ], [ %i.w, %.epil.preheader ] ; 2 uses
  %.019 = add i32 %2, -1                          ; 2 uses
  %i.x = icmp sgt i32 %.019, -1
  br i1 %i.x, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %mp_shl.exit
  %i.y = zext i32 %4 to i64
  %i.z = zext i32 %3 to i64
  %i.aa = zext nneg i32 %.019 to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ %i.aa, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %.120 = phi i32 [ %.017, %.lr.ph ], [ %i.ba, %bb.d ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !14 ; 3 uses
  %i.ad = ashr i32 %i.ac, 31                      ; 2 uses
  %i.ae = and i32 %i.ad, %3
  %i.af = add i32 %i.ae, %i.ac
  %i.ag = sub i32 %.120, %i.ad
  %i.ah = zext i32 %i.ag to i64
  %i.ai = mul nuw i64 %i.ah, %i.y
  %i.aj = zext i32 %i.af to i64
  %i.ak = add nuw i64 %i.ai, %i.aj
  %i.al = lshr i64 %i.ak, 32
  %i.am = zext i32 %.120 to i64
  %i.an = trunc nuw i64 %i.al to i32
  %i.ao = add i32 %.120, %i.an                    ; 2 uses
  %i.ap = shl nuw i64 %i.am, 32
  %i.aq = zext i32 %i.ac to i64
  %i.ar = or disjoint i64 %i.ap, %i.aq
  %i.as = zext i32 %i.ao to i64
  %.neg.i = xor i64 %i.as, -1
  %.neg24.i = mul i64 %.neg.i, %i.z
  %i.at = add i64 %i.ar, %.neg24.i                ; 2 uses
  %i.au = lshr i64 %i.at, 32
  %i.av = trunc nuw i64 %i.au to i32              ; 2 uses
  %i.aw = add i32 %i.ao, 1
  %i.ax = add i32 %i.aw, %i.av
  %i.ay = trunc i64 %i.at to i32
  %i.az = and i32 %3, %i.av
  %i.ba = add i32 %i.az, %i.ay                    ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store i32 %i.ax, ptr %i.bb, align 4, !tbaa !14
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not27 = icmp eq i64 %indvars.iv, 0
  br i1 %.not27, label %._crit_edge, label %bb.d, !llvm.loop !46

._crit_edge:                                      ; preds = %bb.d, %bb.b, %mp_shl.exit
  %.1.lcssa = phi i32 [ %.017, %mp_shl.exit ], [ 0, %bb.b ], [ %i.ba, %bb.d ]
  %i.bc = lshr i32 %.1.lcssa, %5
  ret i32 %i.bc
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshr.i32(i32, i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #6

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !10}
!14 = !{!5, !5, i64 0}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !10}
!20 = distinct !{!20, !10}
!21 = distinct !{!21, !10}
!22 = distinct !{!22, !10}
!23 = distinct !{!23, !10}
!24 = distinct !{!24, !10}
!25 = distinct !{!25, !10}
!26 = distinct !{!26, !10}
!27 = distinct !{!27, !10, !28, !29}
!28 = !{!"llvm.loop.isvectorized", i32 1}
!29 = !{!"llvm.loop.unroll.runtime.disable"}
!30 = distinct !{!30, !10, !29, !28}
!31 = distinct !{!31, !10, !28, !29}
!32 = distinct !{!32, !10, !29, !28}
!33 = distinct !{!33, !10, !28, !29}
!34 = distinct !{!34, !10, !29, !28}
!35 = distinct !{!35, !10}
!36 = distinct !{!36, !37}
!37 = !{!"llvm.loop.unroll.disable"}
!38 = distinct !{!38, !10}
!39 = distinct !{!39, !10}
!40 = !{!"branch_weights", i32 2002, i32 2000}
!41 = !{!42, !42, i64 0}
!42 = !{!"short", !6, i64 0}
!43 = !{!44, !44, i64 0}
!44 = !{!"p1 omnipotent char", !45, i64 0}
!45 = !{!"any pointer", !6, i64 0}
!46 = distinct !{!46, !10}
end_hunk_1
