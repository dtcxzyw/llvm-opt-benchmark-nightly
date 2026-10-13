Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flac/original/lpc?download=true
inline.NumInlined: 4
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 54
begin_hunk_0_@FLAC__lpc_window_data_wide:bb.a
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader13
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.ph
  %i.p = load i64, ptr %i.o, align 8, !tbaa !15
  %i.q = sitofp reassoc nsz arcp i64 %i.p to float
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.ph
  %i.s = load float, ptr %i.r, align 4, !tbaa !10
  %i.t = fmul reassoc nsz arcp float %i.s, %i.q
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.ph
  store float %i.t, ptr %i.u, align 4, !tbaa !10
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader13
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader13 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.v = add nsw i64 %wide.trip.count, -1
  %i.w = icmp eq i64 %indvars.iv.ph, %i.v
  br i1 %i.w, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.y = load i64, ptr %i.x, align 8, !tbaa !15
  %i.z = sitofp reassoc nsz arcp i64 %i.y to float
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !10
  %i.ac = fmul reassoc nsz arcp float %i.ab, %i.z
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  store float %i.ac, ptr %i.ad, align 4, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !15
  %i.ag = sitofp reassoc nsz arcp i64 %i.af to float
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !10
  %i.aj = fmul reassoc nsz arcp float %i.ai, %i.ag
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next
  store float %i.aj, ptr %i.ak, align 4, !tbaa !10
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !21

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define hidden void @FLAC__lpc_window_data_partial(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.c = add i32 %5, %4
  %i.d = icmp ult i32 %i.c, %3
  br i1 %i.d, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.a
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext i32 %4 to i64           ; 6 uses
  %min.iters.check = icmp ult i32 %4, 8
  br i1 %min.iters.check, label %.lr.ph.preheader79, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.preheader
  %i.e = add nsw i64 %wide.trip.count, -1         ; 2 uses
  %i.f = trunc i64 %i.e to i32
  %i.g = xor i32 %5, -1
  %i.h = icmp ult i32 %i.g, %i.f
  %i.i = icmp ugt i64 %i.e, 4294967295
  %i.j = or i1 %i.h, %i.i
  %i.k = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.k, -32
  %or.cond = or i1 %i.j, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader79, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.l = trunc nuw i64 %index to i32
  %i.m = add i32 %5, %i.l
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %wide.load = load <4 x i32>, ptr %i.o, align 4, !tbaa !8
  %wide.load57 = load <4 x i32>, ptr %i.p, align 4, !tbaa !8
  %i.q = sitofp reassoc nsz arcp <4 x i32> %wide.load to <4 x float>
  %i.r = sitofp reassoc nsz arcp <4 x i32> %wide.load57 to <4 x float>
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load58 = load <4 x float>, ptr %i.s, align 4, !tbaa !10
  %wide.load59 = load <4 x float>, ptr %i.t, align 4, !tbaa !10
  %i.u = fmul reassoc nsz arcp <4 x float> %wide.load58, %i.q
  %i.v = fmul reassoc nsz arcp <4 x float> %wide.load59, %i.r
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <4 x float> %i.u, ptr %i.w, align 4, !tbaa !10
  store <4 x float> %i.v, ptr %i.x, align 4, !tbaa !10
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !22

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader79

.lr.ph.preheader79:                               ; preds = %vector.scevcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader79
  %i.z = trunc nuw i64 %indvars.iv.ph to i32
  %i.aa = add i32 %5, %i.z
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !8
  %i.ae = sitofp reassoc nsz arcp i32 %i.ad to float
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.ph
  %i.ag = load float, ptr %i.af, align 4, !tbaa !10
  %i.ah = fmul reassoc nsz arcp float %i.ag, %i.ae
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.ph
  store float %i.ah, ptr %i.ai, align 4, !tbaa !10
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader79
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader79 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.aj = add nsw i64 %wide.trip.count, -1
  %i.ak = icmp eq i64 %indvars.iv.ph, %i.aj
  br i1 %i.ak, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.al = trunc nuw i64 %indvars.iv to i32
  %i.am = add i32 %5, %i.al
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !8
  %i.aq = sitofp reassoc nsz arcp i32 %i.ap to float
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.as = load float, ptr %i.ar, align 4, !tbaa !10
  %i.at = fmul reassoc nsz arcp float %i.as, %i.aq
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  store float %i.at, ptr %i.au, align 4, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.av = trunc nuw i64 %indvars.iv.next to i32
  %i.aw = add i32 %5, %i.av
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !8
  %i.ba = sitofp reassoc nsz arcp i32 %i.az to float
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !10
  %i.bd = fmul reassoc nsz arcp float %i.bc, %i.ba
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next
  store float %i.bd, ptr %i.be, align 4, !tbaa !10
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !23

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %.preheader
  %i.bf = sub i32 %3, %4                          ; 3 uses
  %i.bg = sub i32 %i.bf, %5                       ; 2 uses
  %.037. = tail call i32 @llvm.umin.i32(i32 %4, i32 %i.bg) ; 8 uses
  %i.bh = icmp ult i32 %i.bf, %3
  br i1 %i.bh, label %.lr.ph45.preheader, label %._crit_edge46

.lr.ph45.preheader:                               ; preds = %._crit_edge
  %i.bi = zext i32 %i.bf to i64                   ; 8 uses
  %wide.trip.count53 = zext i32 %3 to i64         ; 5 uses
  %i.bj = sub nsw i64 %wide.trip.count53, %i.bi   ; 3 uses
  %min.iters.check64 = icmp ult i64 %i.bj, 20
  br i1 %min.iters.check64, label %.lr.ph45.preheader78, label %vector.scevcheck60

vector.scevcheck60:                               ; preds = %.lr.ph45.preheader
  %i.bk = xor i64 %i.bi, -1
  %i.bl = add nsw i64 %i.bk, %wide.trip.count53   ; 2 uses
  %i.bm = trunc i64 %i.bl to i32                  ; 2 uses
  %i.bn = xor i32 %.037., -1
  %i.bo = icmp ult i32 %i.bn, %i.bm
  %i.bp = add i32 %5, %.037.
  %i.bq = xor i32 %i.bp, -1
  %i.br = icmp ult i32 %i.bq, %i.bm
  %i.bs = icmp ugt i64 %i.bl, 4294967295
  %i.bt = or i1 %i.br, %i.bs
  %i.bu = or i1 %i.bo, %i.bt
  br i1 %i.bu, label %.lr.ph45.preheader78, label %vector.memcheck61

vector.memcheck61:                                ; preds = %vector.scevcheck60
  %i.bv = tail call i32 @llvm.umin.i32(i32 %4, i32 %i.bg)
  %umin = zext i32 %i.bv to i64
  %i.bw = shl nuw nsw i64 %umin, 2
  %6 = shl nuw nsw i64 %i.bi, 2
  %7 = add i64 %i.bw, %i.b
  %i.bx = add i64 %6, %i.a
  %i.by = sub i64 %i.bx, %7
  %diff.check62 = icmp ugt i64 %i.by, -32
  br i1 %diff.check62, label %.lr.ph45.preheader78, label %vector.ph65

vector.ph65:                                      ; preds = %vector.memcheck61
  %n.vec66 = and i64 %i.bj, -8                    ; 4 uses
  %i.bz = add nsw i64 %n.vec66, %i.bi
  %i.ca = trunc i64 %n.vec66 to i32
  %i.cb = add i32 %.037., %i.ca                   ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %1, i64 %i.bi
  br label %vector.body67

vector.body67:                                    ; preds = %vector.body67, %vector.ph65
  %index68 = phi i64 [ 0, %vector.ph65 ], [ %index.next73, %vector.body67 ] ; 3 uses
  %i.cc = trunc i64 %index68 to i32
  %i.cd = add i32 %.037., %i.cc                   ; 2 uses
  %i.ce = add i32 %i.cd, %5
  %i.cf = zext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cf ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %wide.load69 = load <4 x i32>, ptr %i.cg, align 4, !tbaa !8
  %wide.load70 = load <4 x i32>, ptr %i.ch, align 4, !tbaa !8
  %i.ci = sitofp reassoc nsz arcp <4 x i32> %wide.load69 to <4 x float>
  %i.cj = sitofp reassoc nsz arcp <4 x i32> %wide.load70 to <4 x float>
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index68 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load71 = load <4 x float>, ptr %gep, align 4, !tbaa !10
  %wide.load72 = load <4 x float>, ptr %i.ck, align 4, !tbaa !10
  %i.cl = fmul reassoc nsz arcp <4 x float> %wide.load71, %i.ci
  %i.cm = fmul reassoc nsz arcp <4 x float> %wide.load72, %i.cj
  %i.cn = zext i32 %i.cd to i64
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cn ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  store <4 x float> %i.cl, ptr %i.co, align 4, !tbaa !10
  store <4 x float> %i.cm, ptr %i.cp, align 4, !tbaa !10
  %index.next73 = add nuw i64 %index68, 8         ; 2 uses
  %i.cq = icmp eq i64 %index.next73, %n.vec66
  br i1 %i.cq, label %middle.block74, label %vector.body67, !llvm.loop !24

middle.block74:                                   ; preds = %vector.body67
  %cmp.n75 = icmp eq i64 %i.bj, %n.vec66
  br i1 %cmp.n75, label %._crit_edge46, label %.lr.ph45.preheader78

.lr.ph45.preheader78:                             ; preds = %vector.memcheck61, %vector.scevcheck60, %.lr.ph45.preheader, %middle.block74
  %indvars.iv50.ph = phi i64 [ %i.bi, %vector.memcheck61 ], [ %i.bi, %vector.scevcheck60 ], [ %i.bi, %.lr.ph45.preheader ], [ %i.bz, %middle.block74 ] ; 5 uses
  %.142.ph = phi i32 [ %.037., %vector.memcheck61 ], [ %.037., %vector.scevcheck60 ], [ %.037., %.lr.ph45.preheader ], [ %i.cb, %middle.block74 ] ; 4 uses
  %i.cr = sub nsw i64 %wide.trip.count53, %indvars.iv50.ph
  %xtraiter80 = and i64 %i.cr, 1
  %lcmp.mod81.not = icmp eq i64 %xtraiter80, 0
  br i1 %lcmp.mod81.not, label %.lr.ph45.prol.loopexit, label %.lr.ph45.prol

.lr.ph45.prol:                                    ; preds = %.lr.ph45.preheader78
  %i.cs = add i32 %.142.ph, %5
  %i.ct = zext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !8
  %i.cw = sitofp reassoc nsz arcp i32 %i.cv to float
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv50.ph
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !10
  %i.cz = fmul reassoc nsz arcp float %i.cy, %i.cw
  %i.da = zext i32 %.142.ph to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.da
  store float %i.cz, ptr %i.db, align 4, !tbaa !10
  %i.dc = add i32 %.142.ph, 1                     ; 2 uses
  %indvars.iv.next51.prol = add nuw nsw i64 %indvars.iv50.ph, 1
  br label %.lr.ph45.prol.loopexit

.lr.ph45.prol.loopexit:                           ; preds = %.lr.ph45.prol, %.lr.ph45.preheader78
  %.lcssa.unr = phi i32 [ poison, %.lr.ph45.preheader78 ], [ %i.dc, %.lr.ph45.prol ]
  %indvars.iv50.unr = phi i64 [ %indvars.iv50.ph, %.lr.ph45.preheader78 ], [ %indvars.iv.next51.prol, %.lr.ph45.prol ]
  %.142.unr = phi i32 [ %.142.ph, %.lr.ph45.preheader78 ], [ %i.dc, %.lr.ph45.prol ]
  %i.dd = add nsw i64 %wide.trip.count53, -1
  %i.de = icmp eq i64 %indvars.iv50.ph, %i.dd
  br i1 %i.de, label %._crit_edge46, label %.lr.ph45

.lr.ph45:                                         ; preds = %.lr.ph45.prol.loopexit, %.lr.ph45
  %indvars.iv50 = phi i64 [ %indvars.iv.next51.1, %.lr.ph45 ], [ %indvars.iv50.unr, %.lr.ph45.prol.loopexit ] ; 3 uses
  %.142 = phi i32 [ %i.eb, %.lr.ph45 ], [ %.142.unr, %.lr.ph45.prol.loopexit ] ; 4 uses
  %i.df = add i32 %.142, %5
  %i.dg = zext i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !8
  %i.dj = sitofp reassoc nsz arcp i32 %i.di to float
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv50
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !10
  %i.dm = fmul reassoc nsz arcp float %i.dl, %i.dj
  %i.dn = zext i32 %.142 to i64
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dn
  store float %i.dm, ptr %i.do, align 4, !tbaa !10
  %i.dp = add i32 %.142, 1                        ; 2 uses
  %i.dq = add i32 %i.dp, %5
  %i.dr = zext i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dr
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !8
  %i.du = sitofp reassoc nsz arcp i32 %i.dt to float
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv50
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !10
  %i.dy = fmul reassoc nsz arcp float %i.dx, %i.du
  %i.dz = zext i32 %i.dp to i64
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dz
  store float %i.dy, ptr %i.ea, align 4, !tbaa !10
  %i.eb = add i32 %.142, 2                        ; 2 uses
  %indvars.iv.next51.1 = add nuw nsw i64 %indvars.iv50, 2 ; 2 uses
  %exitcond54.not.1 = icmp eq i64 %indvars.iv.next51.1, %wide.trip.count53
  br i1 %exitcond54.not.1, label %._crit_edge46, label %.lr.ph45, !llvm.loop !25

._crit_edge46:                                    ; preds = %.lr.ph45.prol.loopexit, %.lr.ph45, %middle.block74, %._crit_edge
  %.1.lcssa = phi i32 [ %.037., %._crit_edge ], [ %i.cb, %middle.block74 ], [ %.lcssa.unr, %.lr.ph45.prol.loopexit ], [ %i.eb, %.lr.ph45 ] ; 2 uses
  %i.ec = icmp ult i32 %.1.lcssa, %3
  br i1 %i.ec, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge46
  %i.ed = zext i32 %.1.lcssa to i64
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ed
  store float 0.000000e+00, ptr %i.ee, align 4, !tbaa !10
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge46, %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define hidden void @FLAC__lpc_window_data_partial_wide(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.c = add i32 %5, %4
  %i.d = icmp ult i32 %i.c, %3
  br i1 %i.d, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.a
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext i32 %4 to i64           ; 6 uses
  %min.iters.check = icmp ult i32 %4, 8
  br i1 %min.iters.check, label %.lr.ph.preheader79, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.preheader
  %i.e = add nsw i64 %wide.trip.count, -1         ; 2 uses
  %i.f = trunc i64 %i.e to i32
  %i.g = xor i32 %5, -1
  %i.h = icmp ult i32 %i.g, %i.f
  %i.i = icmp ugt i64 %i.e, 4294967295
  %i.j = or i1 %i.h, %i.i
  %i.k = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.k, -16
  %or.cond = or i1 %i.j, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader79, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.l = trunc nuw i64 %index to i32
  %i.m = add i32 %5, %i.l
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %wide.load = load <2 x i64>, ptr %i.o, align 8, !tbaa !15
  %wide.load57 = load <2 x i64>, ptr %i.p, align 8, !tbaa !15
  %i.q = sitofp reassoc nsz arcp <2 x i64> %wide.load to <2 x float>
  %i.r = sitofp reassoc nsz arcp <2 x i64> %wide.load57 to <2 x float>
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %wide.load58 = load <2 x float>, ptr %i.s, align 4, !tbaa !10
  %wide.load59 = load <2 x float>, ptr %i.t, align 4, !tbaa !10
  %i.u = fmul reassoc nsz arcp <2 x float> %wide.load58, %i.q
  %i.v = fmul reassoc nsz arcp <2 x float> %wide.load59, %i.r
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store <2 x float> %i.u, ptr %i.w, align 4, !tbaa !10
  store <2 x float> %i.v, ptr %i.x, align 4, !tbaa !10
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader79

.lr.ph.preheader79:                               ; preds = %vector.scevcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader79
  %i.z = trunc nuw i64 %indvars.iv.ph to i32
  %i.aa = add i32 %5, %i.z
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ab
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !15
  %i.ae = sitofp reassoc nsz arcp i64 %i.ad to float
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.ph
  %i.ag = load float, ptr %i.af, align 4, !tbaa !10
  %i.ah = fmul reassoc nsz arcp float %i.ag, %i.ae
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.ph
  store float %i.ah, ptr %i.ai, align 4, !tbaa !10
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader79
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader79 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.aj = add nsw i64 %wide.trip.count, -1
  %i.ak = icmp eq i64 %indvars.iv.ph, %i.aj
  br i1 %i.ak, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.al = trunc nuw i64 %indvars.iv to i32
  %i.am = add i32 %5, %i.al
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.an
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !15
  %i.aq = sitofp reassoc nsz arcp i64 %i.ap to float
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.as = load float, ptr %i.ar, align 4, !tbaa !10
  %i.at = fmul reassoc nsz arcp float %i.as, %i.aq
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  store float %i.at, ptr %i.au, align 4, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.av = trunc nuw i64 %indvars.iv.next to i32
  %i.aw = add i32 %5, %i.av
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ax
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !15
  %i.ba = sitofp reassoc nsz arcp i64 %i.az to float
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !10
  %i.bd = fmul reassoc nsz arcp float %i.bc, %i.ba
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next
  store float %i.bd, ptr %i.be, align 4, !tbaa !10
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !27

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %.preheader
  %i.bf = sub i32 %3, %4                          ; 3 uses
  %i.bg = sub i32 %i.bf, %5                       ; 2 uses
  %.037. = tail call i32 @llvm.umin.i32(i32 %4, i32 %i.bg) ; 8 uses
  %i.bh = icmp ult i32 %i.bf, %3
  br i1 %i.bh, label %.lr.ph45.preheader, label %._crit_edge46

.lr.ph45.preheader:                               ; preds = %._crit_edge
  %i.bi = zext i32 %i.bf to i64                   ; 8 uses
  %wide.trip.count53 = zext i32 %3 to i64         ; 5 uses
  %i.bj = sub nsw i64 %wide.trip.count53, %i.bi   ; 3 uses
  %min.iters.check64 = icmp ult i64 %i.bj, 18
  br i1 %min.iters.check64, label %.lr.ph45.preheader78, label %vector.scevcheck60

vector.scevcheck60:                               ; preds = %.lr.ph45.preheader
  %i.bk = xor i64 %i.bi, -1
  %i.bl = add nsw i64 %i.bk, %wide.trip.count53   ; 2 uses
  %i.bm = trunc i64 %i.bl to i32                  ; 2 uses
  %i.bn = xor i32 %.037., -1
  %i.bo = icmp ult i32 %i.bn, %i.bm
  %i.bp = add i32 %5, %.037.
  %i.bq = xor i32 %i.bp, -1
  %i.br = icmp ult i32 %i.bq, %i.bm
  %i.bs = icmp ugt i64 %i.bl, 4294967295
  %i.bt = or i1 %i.br, %i.bs
  %i.bu = or i1 %i.bo, %i.bt
  br i1 %i.bu, label %.lr.ph45.preheader78, label %vector.memcheck61

vector.memcheck61:                                ; preds = %vector.scevcheck60
  %i.bv = tail call i32 @llvm.umin.i32(i32 %4, i32 %i.bg)
  %umin = zext i32 %i.bv to i64
  %i.bw = shl nuw nsw i64 %umin, 2
  %6 = shl nuw nsw i64 %i.bi, 2
  %7 = add i64 %i.bw, %i.b
  %i.bx = add i64 %6, %i.a
  %i.by = sub i64 %i.bx, %7
  %diff.check62 = icmp ugt i64 %i.by, -16
  br i1 %diff.check62, label %.lr.ph45.preheader78, label %vector.ph65

vector.ph65:                                      ; preds = %vector.memcheck61
  %n.vec66 = and i64 %i.bj, -4                    ; 4 uses
  %i.bz = add nsw i64 %n.vec66, %i.bi
  %i.ca = trunc i64 %n.vec66 to i32
  %i.cb = add i32 %.037., %i.ca                   ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %1, i64 %i.bi
  br label %vector.body67

vector.body67:                                    ; preds = %vector.body67, %vector.ph65
  %index68 = phi i64 [ 0, %vector.ph65 ], [ %index.next73, %vector.body67 ] ; 3 uses
  %i.cc = trunc i64 %index68 to i32
  %i.cd = add i32 %.037., %i.cc                   ; 2 uses
  %i.ce = add i32 %i.cd, %5
  %i.cf = zext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cf ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %wide.load69 = load <2 x i64>, ptr %i.cg, align 8, !tbaa !15
  %wide.load70 = load <2 x i64>, ptr %i.ch, align 8, !tbaa !15
  %i.ci = sitofp reassoc nsz arcp <2 x i64> %wide.load69 to <2 x float>
  %i.cj = sitofp reassoc nsz arcp <2 x i64> %wide.load70 to <2 x float>
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index68 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %gep, i64 8
  %wide.load71 = load <2 x float>, ptr %gep, align 4, !tbaa !10
  %wide.load72 = load <2 x float>, ptr %i.ck, align 4, !tbaa !10
  %i.cl = fmul reassoc nsz arcp <2 x float> %wide.load71, %i.ci
  %i.cm = fmul reassoc nsz arcp <2 x float> %wide.load72, %i.cj
  %i.cn = zext i32 %i.cd to i64
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cn ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store <2 x float> %i.cl, ptr %i.co, align 4, !tbaa !10
  store <2 x float> %i.cm, ptr %i.cp, align 4, !tbaa !10
  %index.next73 = add nuw i64 %index68, 4         ; 2 uses
  %i.cq = icmp eq i64 %index.next73, %n.vec66
  br i1 %i.cq, label %middle.block74, label %vector.body67, !llvm.loop !28

middle.block74:                                   ; preds = %vector.body67
  %cmp.n75 = icmp eq i64 %i.bj, %n.vec66
  br i1 %cmp.n75, label %._crit_edge46, label %.lr.ph45.preheader78

.lr.ph45.preheader78:                             ; preds = %vector.memcheck61, %vector.scevcheck60, %.lr.ph45.preheader, %middle.block74
  %indvars.iv50.ph = phi i64 [ %i.bi, %vector.memcheck61 ], [ %i.bi, %vector.scevcheck60 ], [ %i.bi, %.lr.ph45.preheader ], [ %i.bz, %middle.block74 ] ; 5 uses
  %.142.ph = phi i32 [ %.037., %vector.memcheck61 ], [ %.037., %vector.scevcheck60 ], [ %.037., %.lr.ph45.preheader ], [ %i.cb, %middle.block74 ] ; 4 uses
  %i.cr = sub nsw i64 %wide.trip.count53, %indvars.iv50.ph
  %xtraiter80 = and i64 %i.cr, 1
  %lcmp.mod81.not = icmp eq i64 %xtraiter80, 0
  br i1 %lcmp.mod81.not, label %.lr.ph45.prol.loopexit, label %.lr.ph45.prol

.lr.ph45.prol:                                    ; preds = %.lr.ph45.preheader78
  %i.cs = add i32 %.142.ph, %5
  %i.ct = zext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ct
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !15
  %i.cw = sitofp reassoc nsz arcp i64 %i.cv to float
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv50.ph
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !10
  %i.cz = fmul reassoc nsz arcp float %i.cy, %i.cw
  %i.da = zext i32 %.142.ph to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.da
  store float %i.cz, ptr %i.db, align 4, !tbaa !10
  %i.dc = add i32 %.142.ph, 1                     ; 2 uses
  %indvars.iv.next51.prol = add nuw nsw i64 %indvars.iv50.ph, 1
  br label %.lr.ph45.prol.loopexit

.lr.ph45.prol.loopexit:                           ; preds = %.lr.ph45.prol, %.lr.ph45.preheader78
  %.lcssa.unr = phi i32 [ poison, %.lr.ph45.preheader78 ], [ %i.dc, %.lr.ph45.prol ]
  %indvars.iv50.unr = phi i64 [ %indvars.iv50.ph, %.lr.ph45.preheader78 ], [ %indvars.iv.next51.prol, %.lr.ph45.prol ]
  %.142.unr = phi i32 [ %.142.ph, %.lr.ph45.preheader78 ], [ %i.dc, %.lr.ph45.prol ]
  %i.dd = add nsw i64 %wide.trip.count53, -1
  %i.de = icmp eq i64 %indvars.iv50.ph, %i.dd
  br i1 %i.de, label %._crit_edge46, label %.lr.ph45

.lr.ph45:                                         ; preds = %.lr.ph45.prol.loopexit, %.lr.ph45
  %indvars.iv50 = phi i64 [ %indvars.iv.next51.1, %.lr.ph45 ], [ %indvars.iv50.unr, %.lr.ph45.prol.loopexit ] ; 3 uses
  %.142 = phi i32 [ %i.eb, %.lr.ph45 ], [ %.142.unr, %.lr.ph45.prol.loopexit ] ; 4 uses
  %i.df = add i32 %.142, %5
  %i.dg = zext i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.dg
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !15
  %i.dj = sitofp reassoc nsz arcp i64 %i.di to float
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv50
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !10
  %i.dm = fmul reassoc nsz arcp float %i.dl, %i.dj
  %i.dn = zext i32 %.142 to i64
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dn
  store float %i.dm, ptr %i.do, align 4, !tbaa !10
  %i.dp = add i32 %.142, 1                        ; 2 uses
  %i.dq = add i32 %i.dp, %5
  %i.dr = zext i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.dr
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !15
  %i.du = sitofp reassoc nsz arcp i64 %i.dt to float
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv50
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !10
  %i.dy = fmul reassoc nsz arcp float %i.dx, %i.du
  %i.dz = zext i32 %i.dp to i64
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dz
  store float %i.dy, ptr %i.ea, align 4, !tbaa !10
  %i.eb = add i32 %.142, 2                        ; 2 uses
  %indvars.iv.next51.1 = add nuw nsw i64 %indvars.iv50, 2 ; 2 uses
  %exitcond54.not.1 = icmp eq i64 %indvars.iv.next51.1, %wide.trip.count53
  br i1 %exitcond54.not.1, label %._crit_edge46, label %.lr.ph45, !llvm.loop !29

._crit_edge46:                                    ; preds = %.lr.ph45.prol.loopexit, %.lr.ph45, %middle.block74, %._crit_edge
  %.1.lcssa = phi i32 [ %.037., %._crit_edge ], [ %i.cb, %middle.block74 ], [ %.lcssa.unr, %.lr.ph45.prol.loopexit ], [ %i.eb, %.lr.ph45 ] ; 2 uses
  %i.ec = icmp ult i32 %.1.lcssa, %3
  br i1 %i.ec, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge46
  %i.ed = zext i32 %.1.lcssa to i64
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ed
  store float 0.000000e+00, ptr %i.ee, align 4, !tbaa !10
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge46, %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define hidden void @FLAC__lpc_compute_autocorrelation(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %1, 32
  %i.b = icmp ugt i32 %2, 16
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %.preheader149.split.preheader, label %.lr.ph185.us.preheader

.lr.ph185.us.preheader:                           ; preds = %bb.b
  %i.c = sub i32 %1, %2
  %i.d = zext i32 %2 to i64
  %i.e = shl nuw nsw i64 %i.d, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 %i.e, i1 false), !tbaa !17
  %i.f = zext i32 %i.c to i64
  %wide.trip.count272 = zext i32 %2 to i64        ; 6 uses
  %i.g = add nsw i64 %wide.trip.count272, -1      ; 2 uses
  %min.iters.check491 = icmp ult i32 %2, 4
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp ugt i64 %i.g, 4294967295
  %n.vec493 = and i64 %wide.trip.count272, 4294967292 ; 3 uses
  %cmp.n502 = icmp eq i64 %n.vec493, %wide.trip.count272
  %xtraiter = and i64 %wide.trip.count272, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.j = add nsw i64 %wide.trip.count272, -1
  br label %.lr.ph185.us

.preheader149.split.preheader:                    ; preds = %bb.b
  %i.k = add i32 %1, 1
  %umax = tail call i32 @llvm.umax.i32(i32 %i.k, i32 1)
  br label %.preheader

.lr.ph185.us:                                     ; preds = %.lr.ph185.us.preheader, %._crit_edge.us
  %indvars.iv274 = phi i64 [ 0, %.lr.ph185.us.preheader ], [ %indvars.iv.next275, %._crit_edge.us ] ; 8 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv274
  %i.m = load float, ptr %i.l, align 4, !tbaa !10
  %i.n = fpext reassoc nsz arcp float %i.m to double ; 4 uses
  br i1 %min.iters.check491, label %scalar.ph490.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph185.us
  %i.o = trunc i64 %indvars.iv274 to i32
  %i.p = xor i32 %i.o, -1
  %i.q = icmp ult i32 %i.p, %i.h
  %i.r = or i1 %i.q, %i.i
  br i1 %i.r, label %scalar.ph490.preheader, label %vector.ph492

vector.ph492:                                     ; preds = %vector.scevcheck
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.n, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body494

vector.body494:                                   ; preds = %vector.body494, %vector.ph492
  %index495 = phi i64 [ 0, %vector.ph492 ], [ %index.next500, %vector.body494 ] ; 3 uses
  %i.s = add nuw i64 %index495, %indvars.iv274
  %i.t = and i64 %i.s, 4294967295
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.t ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %wide.load496 = load <2 x float>, ptr %i.u, align 4, !tbaa !10
  %wide.load497 = load <2 x float>, ptr %i.v, align 4, !tbaa !10
  %i.w = fpext reassoc nsz arcp <2 x float> %wide.load496 to <2 x double>
  %i.x = fpext reassoc nsz arcp <2 x float> %wide.load497 to <2 x double>
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index495 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %wide.load498 = load <2 x double>, ptr %i.y, align 8, !tbaa !17
  %wide.load499 = load <2 x double>, ptr %i.z, align 8, !tbaa !17
  %i.aa = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %i.w, <2 x double> %wide.load498)
  %i.ab = tail call reassoc nsz arcp <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %i.x, <2 x double> %wide.load499)
  store <2 x double> %i.aa, ptr %i.y, align 8, !tbaa !17
  store <2 x double> %i.ab, ptr %i.z, align 8, !tbaa !17
  %index.next500 = add nuw i64 %index495, 4       ; 2 uses
  %i.ac = icmp eq i64 %index.next500, %n.vec493
  br i1 %i.ac, label %middle.block501, label %vector.body494, !llvm.loop !30

middle.block501:                                  ; preds = %vector.body494
  br i1 %cmp.n502, label %._crit_edge.us, label %scalar.ph490.preheader

end_hunk_0
