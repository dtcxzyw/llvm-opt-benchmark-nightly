Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/dauNonDsd?download=true
inline.NumInlined: 79
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 19
begin_hunk_0_@Dau_DecCheckSetTop5:bb.a

.lr.ph:                                           ; preds = %bb.f, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %bb.f ] ; 5 uses
  %.0108136 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %.1109.1, %bb.f ] ; 3 uses
  %.0110135 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %.1111.1, %bb.f ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.f ]
  %i.u = trunc nuw nsw i64 %indvars.iv to i32
  %i.v = shl nuw i32 1, %i.u
  %i.w = and i32 %i.v, %5
  %.not125 = icmp eq i32 %i.w, 0
  br i1 %.not125, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.x = add nsw i32 %.0110135, 1
  br label %.lr.ph.1

bb.c:                                             ; preds = %.lr.ph
  %i.y = add nsw i32 %.0108136, 1
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.b, %bb.c
  %.0110135.sink = phi i32 [ -1, %bb.c ], [ %.0110135, %bb.b ]
  %.sink = phi i32 [ %.0108136, %bb.c ], [ -1, %bb.b ]
  %.1111 = phi i32 [ %.0110135, %bb.c ], [ %i.x, %bb.b ] ; 3 uses
  %.1109 = phi i32 [ %i.y, %bb.c ], [ %.0108136, %bb.b ] ; 3 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  store i32 %.0110135.sink, ptr %i.z, align 8, !tbaa !18
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  store i32 %.sink, ptr %i.aa, align 8, !tbaa !18
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.ab = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.ac = shl nuw i32 1, %i.ab
  %i.ad = and i32 %i.ac, %5
  %.not125.1 = icmp eq i32 %i.ad, 0
  br i1 %.not125.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.1
  %i.ae = add nsw i32 %.1111, 1
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph.1
  %i.af = add nsw i32 %.1109, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0110135.sink.1 = phi i32 [ -1, %bb.e ], [ %.1111, %bb.d ]
  %.sink.1 = phi i32 [ %.1109, %bb.e ], [ -1, %bb.d ]
  %.1111.1 = phi i32 [ %.1111, %bb.e ], [ %i.ae, %bb.d ] ; 2 uses
  %.1109.1 = phi i32 [ %i.af, %bb.e ], [ %.1109, %bb.d ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next
  store i32 %.0110135.sink.1, ptr %i.ag, align 4, !tbaa !18
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next
  store i32 %.sink.1, ptr %i.ah, align 4, !tbaa !18
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader134.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !0

.preheader133:                                    ; preds = %.lr.ph139, %.preheader134.a
  %.not149 = icmp eq i32 %3, 31
  br i1 %.not149, label %._crit_edge, label %.lr.ph144

.lr.ph144:                                        ; preds = %.preheader133
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  %.not123 = icmp eq ptr %7, null
  %wide.trip.count160 = zext nneg i32 %i.h to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph144, %bb.o
  %indvars.iv156 = phi i64 [ 0, %.lr.ph144 ], [ %indvars.iv.next157, %bb.o ] ; 2 uses
  %.0102143 = phi i32 [ 0, %.lr.ph144 ], [ %.1, %bb.o ] ; 4 uses
  %.0103142 = phi i32 [ 0, %.lr.ph144 ], [ %.1104, %bb.o ] ; 3 uses
  %.0105141 = phi i32 [ 0, %.lr.ph144 ], [ %i.bm, %bb.o ] ; 3 uses
  %i.aj = ashr i32 %.0105141, %i.g
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !20
  %i.an = shl i32 %.0105141, %2
  %i.ao = and i32 %i.an, 63
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = lshr i64 %i.am, %i.ap
  %i.ar = and i64 %i.aq, %i.f                     ; 4 uses
  %i.as = sext i32 %.0102143 to i64               ; 2 uses
  %i.at = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.as ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !20 ; 2 uses
  %.not121 = icmp eq i64 %i.au, -1
  %i.av = icmp eq i64 %i.au, %i.ar
  %or.cond126 = select i1 %.not121, i1 true, i1 %i.av
  br i1 %or.cond126, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i64 %i.ar, ptr %i.at, align 8, !tbaa !20
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.as ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !20 ; 2 uses
  %.not122 = icmp eq i64 %i.ax, -1
  %i.ay = icmp eq i64 %i.ax, %i.ar
  %or.cond127 = select i1 %.not122, i1 true, i1 %i.ay
  br i1 %or.cond127, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  store i64 %i.ar, ptr %i.aw, align 8, !tbaa !20
  br i1 %.not123, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.az = shl i32 %.0102143, %i.i
  %i.ba = add nsw i32 %i.az, %.0103142            ; 2 uses
  %i.bb = and i32 %i.ba, 63
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = shl nuw i64 1, %i.bc
  %i.be = ashr i32 %i.ba, 6
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [8 x i8], ptr %7, i64 %i.bf ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !20
  %i.bi = or i64 %i.bh, %i.bd
  store i64 %i.bi, ptr %i.bg, align 8, !tbaa !20
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.h
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv156
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !18 ; 2 uses
  %i.bl = shl nuw i32 1, %i.bk                    ; 2 uses
  %i.bm = xor i32 %i.bl, %.0105141
  %i.bn = and i32 %i.bl, %5
  %.not124 = icmp eq i32 %i.bn, 0
  %i.bo = sext i32 %i.bk to i64                   ; 2 uses
  br i1 %.not124, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !18
  %i.br = shl nuw i32 1, %i.bq
  %i.bs = xor i32 %i.br, %.0102143
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.bo
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !18
  %i.bv = shl nuw i32 1, %i.bu
  %i.bw = xor i32 %i.bv, %.0103142
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %.1104 = phi i32 [ %.0103142, %bb.m ], [ %i.bw, %bb.n ]
  %.1 = phi i32 [ %i.bs, %bb.m ], [ %.0102143, %bb.n ]
  %indvars.iv.next157 = add nuw nsw i64 %indvars.iv156, 1 ; 2 uses
  %exitcond161.not = icmp eq i64 %indvars.iv.next157, %wide.trip.count160
  br i1 %exitcond161.not, label %._crit_edge, label %bb.g, !llvm.loop !1

._crit_edge:                                      ; preds = %bb.o, %.preheader133
  %.not = icmp eq ptr %8, null
  br i1 %.not, label %bb.r, label %.preheader

.preheader:                                       ; preds = %._crit_edge
  br i1 %.not148, label %._crit_edge147, label %.lr.ph146

.lr.ph146:                                        ; preds = %.preheader
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  %smax165 = tail call i32 @llvm.smax.i32(i32 %i.j, i32 1)
  %wide.trip.count166 = zext nneg i32 %smax165 to i64
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph146, %bb.p
  %indvars.iv162 = phi i64 [ 0, %.lr.ph146 ], [ %indvars.iv.next163, %bb.p ] ; 5 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv162
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !20 ; 2 uses
  %i.ca = trunc nuw nsw i64 %indvars.iv162 to i32 ; 2 uses
  %i.cb = shl i32 %i.ca, %2
  %i.cc = and i32 %i.cb, 63
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = shl i64 %i.bz, %i.cd
  %i.cf = lshr i32 %i.ca, %i.g
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.cg ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !20
  %i.cj = or i64 %i.ci, %i.ce
  store i64 %i.cj, ptr %i.ch, align 8, !tbaa !20
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %indvars.iv162
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !20 ; 2 uses
  %.not120 = icmp eq i64 %i.cl, -1
  %i.cm = trunc i64 %indvars.iv162 to i32
  %i.cn = add i32 %i.j, %i.cm                     ; 2 uses
  %i.co = shl i32 %i.cn, %2
  %i.cp = and i32 %i.co, 63
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = ashr i32 %i.cn, %i.g
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [8 x i8], ptr %8, i64 %i.cs ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !20
  %. = select i1 %.not120, i64 %i.bz, i64 %i.cl
  %i.cv = shl i64 %., %i.cq
  %i.cw = or i64 %i.cu, %i.cv
  store i64 %i.cw, ptr %i.ct, align 8, !tbaa !20
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162, 1 ; 2 uses
  %exitcond167.not = icmp eq i64 %indvars.iv.next163, %wide.trip.count166
  br i1 %exitcond167.not, label %._crit_edge147, label %bb.p, !llvm.loop !33

._crit_edge147:                                   ; preds = %bb.p, %.preheader
  %i.cx = add nsw i32 %4, %2                      ; 6 uses
  %i.cy = icmp slt i32 %i.cx, 5
  br i1 %i.cy, label %bb.q, label %bb.r

bb.q:                                             ; preds = %._crit_edge147
  %i.cz = add nsw i32 %i.cx, 1                    ; 2 uses
  %i.da = load i64, ptr %8, align 8, !tbaa !20    ; 7 uses
  %i.db = icmp eq i32 %i.cz, 0
  %i.dc = trunc i64 %i.da to i1
  %i.dd = select i1 %i.dc, i64 3, i64 0
  %9 = icmp slt i32 %i.cx, 1
  %i.de = and i64 %i.da, 3
  %i.df = select i1 %i.db, i64 %i.dd, i64 %i.de
  %i.dg = mul nuw nsw i64 %i.df, 5
  %.126.i = select i1 %9, i64 %i.dg, i64 %i.da
  %10 = icmp slt i32 %i.cx, 2
  %i.dh = and i64 %.126.i, 15
  %i.di = mul nuw nsw i64 %i.dh, 17
  %.227.i = select i1 %10, i64 %i.di, i64 %i.da
  %11 = icmp slt i32 %i.cx, 3
  %i.dj = and i64 %.227.i, 255
  %i.dk = mul nuw nsw i64 %i.dj, 257
  %.328.i = select i1 %11, i64 %i.dk, i64 %i.da
  %.not133 = icmp eq i32 %i.cx, 4
  %i.dl = and i64 %.328.i, 65535
  %i.dm = mul nuw nsw i64 %i.dl, 65537
  %.429.i = select i1 %.not133, i64 %i.da, i64 %i.dm
  %i.dn = icmp ult i32 %i.cz, 6
  %i.do = and i64 %.429.i, 4294967295
  %i.dp = mul nuw i64 %i.do, 4294967297
  %.5.i = select i1 %i.dn, i64 %i.dp, i64 %i.da
  store i64 %.5.i, ptr %8, align 8, !tbaa !20
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge147, %bb.q, %._crit_edge
  %i.dq = icmp ne ptr %7, null
  %i.dr = icmp slt i32 %3, 6
  %or.cond = and i1 %i.dr, %i.dq
  br i1 %or.cond, label %bb.s, label %.loopexit

bb.s:                                             ; preds = %bb.r
  %i.ds = load i64, ptr %7, align 8, !tbaa !20    ; 7 uses
  %i.dt = icmp eq i32 %3, 0
  %i.du = trunc i64 %i.ds to i1
  %i.dv = select i1 %i.du, i64 3, i64 0
  %i.dw = icmp samesign ult i32 %3, 2
  %i.dx = and i64 %i.ds, 3
  %i.dy = select i1 %i.dt, i64 %i.dv, i64 %i.dx
  %i.dz = mul nuw nsw i64 %i.dy, 5
  %.126.i128 = select i1 %i.dw, i64 %i.dz, i64 %i.ds
  %i.ea = icmp samesign ult i32 %3, 3
  %i.eb = and i64 %.126.i128, 15
  %i.ec = mul nuw nsw i64 %i.eb, 17
  %.227.i129 = select i1 %i.ea, i64 %i.ec, i64 %i.ds
  %i.ed = icmp samesign ult i32 %3, 4
  %i.ee = and i64 %.227.i129, 255
  %i.ef = mul nuw nsw i64 %i.ee, 257
  %.328.i130 = select i1 %i.ed, i64 %i.ef, i64 %i.ds
  %i.eg = icmp samesign ult i32 %3, 5
  %i.eh = and i64 %.328.i130, 65535
  %i.ei = mul nuw nsw i64 %i.eh, 65537
  %.429.i131 = select i1 %i.eg, i64 %i.ei, i64 %i.ds
  %i.ej = icmp ult i32 %3, 6
  %i.ek = and i64 %.429.i131, 4294967295
  %i.el = mul nuw i64 %i.ek, 4294967297
  %.5.i132 = select i1 %i.ej, i64 %i.el, i64 %i.ds
  store i64 %.5.i132, ptr %7, align 8, !tbaa !20
  br label %.loopexit

.loopexit:                                        ; preds = %bb.i, %bb.r, %bb.s
  %.0 = phi i32 [ 1, %bb.r ], [ 1, %bb.s ], [ 0, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @Dau_DecCheckSetTop6(ptr noundef %0, i32 %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef captures(address_is_null) %7, ptr nofree noundef writeonly captures(address_is_null) %8) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [2 x [64 x ptr]], align 16        ; 8 uses
  %i.b = alloca [16 x i32], align 16              ; 6 uses
  %i.c = alloca [16 x i32], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.d = icmp slt i32 %2, 7                       ; 3 uses
  %i.e = add nsw i32 %2, -6                       ; 3 uses
  %i.f = shl nuw i32 1, %i.e
  %i.g = select i1 %i.d, i32 1, i32 %i.f          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.h = shl nuw nsw i32 1, %3
  %i.i = sub nsw i32 %3, %4
  %i.j = shl nuw i32 1, %4                        ; 3 uses
  %i.k = icmp sgt i32 %3, 0
  br i1 %i.k, label %.lr.ph.preheader, label %.preheader118

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %3 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.l = icmp eq i32 %3, 1
  br i1 %i.l, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.preheader118.loopexit.unr-lcssa:                 ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader118, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader118.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.preheader118.loopexit.unr-lcssa ] ; 3 uses
  %.095120.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %.196.1, %.preheader118.loopexit.unr-lcssa ]
  %.097119.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %.198.1, %.preheader118.loopexit.unr-lcssa ]
  %lcmp.mod164 = trunc i32 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod164)
  %i.m = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %i.n = shl nuw i32 1, %i.m
  %i.o = and i32 %i.n, %5
  %.not115.epil = icmp eq i32 %i.o, 0             ; 2 uses
  %.097119.sink.epil = select i1 %.not115.epil, i32 -1, i32 %.097119.epil.init
  %.sink.epil = select i1 %.not115.epil, i32 %.095120.epil.init, i32 -1
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.epil.init
  store i32 %.097119.sink.epil, ptr %i.p, align 4, !tbaa !18
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.epil.init
  store i32 %.sink.epil, ptr %i.q, align 4, !tbaa !18
  br label %.preheader118

.preheader118:                                    ; preds = %.lr.ph.epil.preheader, %.preheader118.loopexit.unr-lcssa, %bb.a
  %.not133 = icmp ne i32 %4, 31                   ; 2 uses
  br i1 %.not133, label %.lr.ph123, label %.preheader116

.lr.ph123:                                        ; preds = %.preheader118
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  %smax = tail call i32 @llvm.smax.i32(i32 %i.j, i32 1)
  %i.s = zext nneg i32 %smax to i64
  %i.t = shl nuw nsw i64 %i.s, 3                  ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.r, i8 0, i64 %i.t, i1 false), !tbaa !24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, i8 0, i64 %i.t, i1 false), !tbaa !24
  br label %.preheader116

.lr.ph:                                           ; preds = %bb.f, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %bb.f ] ; 5 uses
  %.095120 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %.196.1, %bb.f ] ; 3 uses
  %.097119 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %.198.1, %bb.f ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.f ]
  %i.u = trunc nuw nsw i64 %indvars.iv to i32
  %i.v = shl nuw i32 1, %i.u
  %i.w = and i32 %i.v, %5
  %.not115 = icmp eq i32 %i.w, 0
  br i1 %.not115, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.x = add nsw i32 %.097119, 1
  br label %.lr.ph.1

bb.c:                                             ; preds = %.lr.ph
  %i.y = add nsw i32 %.095120, 1
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.b, %bb.c
  %.097119.sink = phi i32 [ -1, %bb.c ], [ %.097119, %bb.b ]
  %.sink = phi i32 [ %.095120, %bb.c ], [ -1, %bb.b ]
  %.198 = phi i32 [ %.097119, %bb.c ], [ %i.x, %bb.b ] ; 3 uses
  %.196 = phi i32 [ %i.y, %bb.c ], [ %.095120, %bb.b ] ; 3 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  store i32 %.097119.sink, ptr %i.z, align 8, !tbaa !18
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  store i32 %.sink, ptr %i.aa, align 8, !tbaa !18
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.ab = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.ac = shl nuw i32 1, %i.ab
  %i.ad = and i32 %i.ac, %5
  %.not115.1 = icmp eq i32 %i.ad, 0
  br i1 %.not115.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.1
  %i.ae = add nsw i32 %.198, 1
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph.1
  %i.af = add nsw i32 %.196, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.097119.sink.1 = phi i32 [ -1, %bb.e ], [ %.198, %bb.d ]
  %.sink.1 = phi i32 [ %.196, %bb.e ], [ -1, %bb.d ]
  %.198.1 = phi i32 [ %.198, %bb.e ], [ %i.ae, %bb.d ] ; 2 uses
  %.196.1 = phi i32 [ %i.af, %bb.e ], [ %.196, %bb.d ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next
  store i32 %.097119.sink.1, ptr %i.ag, align 4, !tbaa !18
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next
  store i32 %.sink.1, ptr %i.ah, align 4, !tbaa !18
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader118.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !2

.preheader116:                                    ; preds = %.lr.ph123, %.preheader118
  %.not134 = icmp eq i32 %3, 31
  br i1 %.not134, label %._crit_edge, label %.lr.ph129

.lr.ph129:                                        ; preds = %.preheader116
  %i.ai = select i1 %i.d, i32 0, i32 %i.e
  %i.aj = sext i32 %i.g to i64
  %i.ak = shl nsw i64 %i.aj, 3                    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  %.not113 = icmp eq ptr %7, null
  %wide.trip.count144 = zext nneg i32 %i.h to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph129, %bb.p
  %indvars.iv140 = phi i64 [ 0, %.lr.ph129 ], [ %indvars.iv.next141, %bb.p ] ; 2 uses
  %.089127 = phi i32 [ 0, %.lr.ph129 ], [ %.1, %bb.p ] ; 4 uses
  %.090126 = phi i32 [ 0, %.lr.ph129 ], [ %.191, %bb.p ] ; 3 uses
  %.092125 = phi i32 [ 0, %.lr.ph129 ], [ %i.bg, %bb.p ] ; 2 uses
  %i.am = sext i32 %.089127 to i64                ; 2 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.am ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !24 ; 2 uses
  %.not108 = icmp eq ptr %i.ao, null
  %.pre = shl i32 %.092125, %i.ai
  %.pre153 = sext i32 %.pre to i64                ; 2 uses
  br i1 %.not108, label %._crit_edge152, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %.pre153 ; 3 uses
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %i.ao, ptr noundef nonnull dereferenceable(1) %i.ap, i64 %i.ak)
  %.not109 = icmp eq i32 %bcmp, 0
  br i1 %.not109, label %._crit_edge152, label %bb.i

._crit_edge152:                                   ; preds = %bb.g, %bb.h
  %i.aq = getelementptr inbounds [8 x i8], ptr %0, i64 %.pre153
  store ptr %i.aq, ptr %i.an, align 8, !tbaa !24
  br label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.am ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !24 ; 2 uses
  %.not110 = icmp eq ptr %i.as, null
  br i1 %.not110, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %bcmp111 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %i.as, ptr noundef nonnull dereferenceable(1) %i.ap, i64 %i.ak)
  %.not112 = icmp eq i32 %bcmp111, 0
  br i1 %.not112, label %bb.k, label %.loopexit117

bb.k:                                             ; preds = %bb.j, %bb.i
  store ptr %i.ap, ptr %i.ar, align 8, !tbaa !24
  br i1 %.not113, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = shl i32 %.089127, %i.i
  %i.au = add nsw i32 %i.at, %.090126             ; 2 uses
  %i.av = and i32 %i.au, 63
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = shl nuw i64 1, %i.aw
  %i.ay = ashr i32 %i.au, 6
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr %7, i64 %i.az ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !20
  %i.bc = or i64 %i.bb, %i.ax
  store i64 %i.bc, ptr %i.ba, align 8, !tbaa !20
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %._crit_edge152
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv140
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !18 ; 2 uses
  %i.bf = shl nuw i32 1, %i.be                    ; 2 uses
  %i.bg = xor i32 %i.bf, %.092125
  %i.bh = and i32 %i.bf, %5
  %.not114 = icmp eq i32 %i.bh, 0
  %i.bi = sext i32 %i.be to i64                   ; 2 uses
  br i1 %.not114, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !18
  %i.bl = shl nuw i32 1, %i.bk
  %i.bm = xor i32 %i.bl, %.089127
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.bi
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !18
  %i.bp = shl nuw i32 1, %i.bo
  %i.bq = xor i32 %i.bp, %.090126
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %.191 = phi i32 [ %.090126, %bb.n ], [ %i.bq, %bb.o ]
  %.1 = phi i32 [ %i.bm, %bb.n ], [ %.089127, %bb.o ]
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1 ; 2 uses
  %exitcond145.not = icmp eq i64 %indvars.iv.next141, %wide.trip.count144
  br i1 %exitcond145.not, label %._crit_edge, label %bb.g, !llvm.loop !3

._crit_edge:                                      ; preds = %bb.p, %.preheader116
  %.not = icmp ne ptr %8, null
  %or.cond132 = and i1 %.not, %.not133
  br i1 %or.cond132, label %.lr.ph131, label %.loopexit

.lr.ph131:                                        ; preds = %._crit_edge
  %i.br = select i1 %i.d, i32 0, i32 %i.e         ; 2 uses
  %i.bs = sext i32 %i.g to i64
  %i.bt = shl nsw i64 %i.bs, 3                    ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  %smax149 = tail call i32 @llvm.smax.i32(i32 %i.j, i32 1)
  %wide.trip.count150 = zext nneg i32 %smax149 to i64
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph131, %bb.q
  %indvars.iv146 = phi i64 [ 0, %.lr.ph131 ], [ %indvars.iv.next147, %bb.q ] ; 5 uses
  %i.bv = trunc nuw nsw i64 %indvars.iv146 to i32
  %i.bw = shl i32 %i.bv, %i.br
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds [8 x i8], ptr %8, i64 %i.bx
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv146
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.by, ptr noundef nonnull align 8 dereferenceable(1) %i.ca, i64 %i.bt, i1 false)
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %indvars.iv146
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !24 ; 2 uses
  %.not107 = icmp eq ptr %i.cc, null
  %i.cd = trunc i64 %indvars.iv146 to i32
  %i.ce = add i32 %i.j, %i.cd
  %i.cf = shl i32 %i.ce, %i.br
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds [8 x i8], ptr %8, i64 %i.cg
  %. = select i1 %.not107, ptr %i.ca, ptr %i.cc
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ch, ptr noundef nonnull align 8 dereferenceable(1) %., i64 %i.bt, i1 false)
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1 ; 2 uses
  %exitcond151.not = icmp eq i64 %indvars.iv.next147, %wide.trip.count150
  br i1 %exitcond151.not, label %.loopexit, label %bb.q, !llvm.loop !34

.loopexit:                                        ; preds = %bb.q, %._crit_edge
  %i.ci = icmp ne ptr %7, null
  %i.cj = icmp slt i32 %3, 6
  %or.cond = and i1 %i.cj, %i.ci
  br i1 %or.cond, label %bb.r, label %.loopexit117

bb.r:                                             ; preds = %.loopexit
  %i.ck = load i64, ptr %7, align 8, !tbaa !20    ; 7 uses
  %i.cl = icmp eq i32 %3, 0
  %i.cm = trunc i64 %i.ck to i1
  %i.cn = select i1 %i.cm, i64 3, i64 0
  %i.co = icmp samesign ult i32 %3, 2
  %i.cp = and i64 %i.ck, 3
  %i.cq = select i1 %i.cl, i64 %i.cn, i64 %i.cp
  %i.cr = mul nuw nsw i64 %i.cq, 5
  %.126.i = select i1 %i.co, i64 %i.cr, i64 %i.ck
  %i.cs = icmp samesign ult i32 %3, 3
  %i.ct = and i64 %.126.i, 15
  %i.cu = mul nuw nsw i64 %i.ct, 17
  %.227.i = select i1 %i.cs, i64 %i.cu, i64 %i.ck
  %i.cv = icmp samesign ult i32 %3, 4
  %i.cw = and i64 %.227.i, 255
  %i.cx = mul nuw nsw i64 %i.cw, 257
  %.328.i = select i1 %i.cv, i64 %i.cx, i64 %i.ck
  %i.cy = icmp samesign ult i32 %3, 5
  %i.cz = and i64 %.328.i, 65535
  %i.da = mul nuw nsw i64 %i.cz, 65537
  %.429.i = select i1 %i.cy, i64 %i.da, i64 %i.ck
  %i.db = icmp ult i32 %3, 6
  %i.dc = and i64 %.429.i, 4294967295
  %i.dd = mul nuw i64 %i.dc, 4294967297
  %.5.i = select i1 %i.db, i64 %i.dd, i64 %i.ck
  store i64 %.5.i, ptr %7, align 8, !tbaa !20
  br label %.loopexit117

.loopexit117:                                     ; preds = %bb.j, %.loopexit, %bb.r
  %.0 = phi i32 [ 1, %.loopexit ], [ 1, %bb.r ], [ 0, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @Dau_DecCheckSetTopOld(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef readonly captures(address_is_null) %6, ptr nofree noundef readonly captures(address_is_null) %7, ptr nofree noundef readonly captures(address_is_null) %8) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.b = shl nuw i32 1, %4
  %i.c = icmp eq i32 %4, 0
  br i1 %i.c, label %bb.b, label %.preheader64

.preheader64:                                     ; preds = %bb.a
  %i.d = icmp sgt i32 %3, 0
  br i1 %i.d, label %.lr.ph.preheader, label %.preheader63

.lr.ph.preheader:                                 ; preds = %.preheader64
  %xtraiter = and i32 %3, 1
  %i.e = icmp eq i32 %3, 1
  br i1 %i.e, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %3, 2147483646
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %.not60 = icmp eq ptr %6, null
  br i1 %.not60, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %6, align 8, !tbaa !24
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.g = phi ptr [ %i.f, %bb.c ], [ null, %bb.b ]
  %.not61 = icmp eq ptr %7, null
  br i1 %.not61, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = load ptr, ptr %7, align 8, !tbaa !24
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.i = phi ptr [ %i.h, %bb.e ], [ null, %bb.d ]
  %.not62 = icmp eq ptr %8, null
  br i1 %.not62, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = load ptr, ptr %8, align 8, !tbaa !24
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.k = phi ptr [ %i.j, %bb.g ], [ null, %bb.f ]
  %i.l = tail call fastcc i32 @Dau_DecCheckSetAny(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef 0, i32 noundef 0, ptr noundef %i.g, ptr noundef %i.i, ptr noundef %i.k)
  br label %.loopexit

.preheader63.loopexit.unr-lcssa:                  ; preds = %bb.af
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader63, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader63.loopexit.unr-lcssa, %.lr.ph.preheader
  %.04366.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.cd, %.preheader63.loopexit.unr-lcssa ] ; 2 uses
  %.04565.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %.146.1, %.preheader63.loopexit.unr-lcssa ]
  %lcmp.mod186 = trunc i32 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod186)
  %i.m = shl nuw i32 1, %.04366.epil.init
  %i.n = and i32 %i.m, %5
  %.not59.epil = icmp eq i32 %i.n, 0
  br i1 %.not59.epil, label %.preheader63, label %bb.i

bb.i:                                             ; preds = %.lr.ph.epil.preheader
  %i.o = sext i32 %.04565.epil.init to i64
  %i.p = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.o
  store i32 %.04366.epil.init, ptr %i.p, align 4, !tbaa !18
  br label %.preheader63

.preheader63:                                     ; preds = %.preheader63.loopexit.unr-lcssa, %bb.i, %.lr.ph.epil.preheader, %.preheader64
  %.not98 = icmp eq i32 %4, 31
  br i1 %.not98, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader63
  %i.q = icmp sgt i32 %4, 0
  %.not = icmp eq ptr %6, null                    ; 2 uses
  %.not55 = icmp eq ptr %7, null                  ; 3 uses
  %.not56 = icmp eq ptr %8, null                  ; 4 uses
  %smax143 = tail call i32 @llvm.smax.i32(i32 %i.b, i32 1)
  %wide.trip.count144 = zext nneg i32 %smax143 to i64 ; 6 uses
  br i1 %i.q, label %.preheader.us.preheader, label %.preheader.lr.ph.split

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %wide.trip.count138 = zext nneg i32 %4 to i64   ; 2 uses
  %xtraiter187 = and i64 %wide.trip.count138, 1
  %i.r = icmp eq i32 %4, 1
  %unroll_iter191 = and i64 %wide.trip.count138, 2147483646
  %lcmp.mod188.not = icmp eq i64 %xtraiter187, 0
  %lcmp.mod190 = trunc i32 %4 to i1
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %bb.t
  %indvars.iv140 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next141, %bb.t ] ; 5 uses
  %i.s = trunc nuw nsw i64 %indvars.iv140 to i32  ; 3 uses
  br i1 %i.r, label %.epil.preheader, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us, %bb.m
  %indvars.iv135 = phi i64 [ %indvars.iv.next136.1, %bb.m ], [ 0, %.preheader.us ] ; 4 uses
  %.068.us = phi i32 [ %.1.us.1, %bb.m ], [ 0, %.preheader.us ] ; 2 uses
  %niter192 = phi i64 [ %niter192.next.1, %bb.m ], [ 0, %.preheader.us ]
  %i.t = trunc nuw nsw i64 %indvars.iv135 to i32
  %i.u = shl nuw i32 1, %i.t
  %i.v = and i32 %i.u, %i.s
  %.not58.us = icmp eq i32 %i.v, 0
  br i1 %.not58.us, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.preheader.us.new
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv135
  %i.x = load i32, ptr %i.w, align 8, !tbaa !18
  %i.y = shl nuw i32 1, %i.x
  %i.z = or i32 %i.y, %.068.us
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.preheader.us.new
  %.1.us = phi i32 [ %i.z, %bb.j ], [ %.068.us, %.preheader.us.new ] ; 2 uses
  %indvars.iv.next136 = or disjoint i64 %indvars.iv135, 1 ; 2 uses
  %i.aa = trunc nuw nsw i64 %indvars.iv.next136 to i32
  %i.ab = shl nuw i32 1, %i.aa
  %i.ac = and i32 %i.ab, %i.s
  %.not58.us.1 = icmp eq i32 %i.ac, 0
  br i1 %.not58.us.1, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next136
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !18
  %i.af = shl nuw i32 1, %i.ae
  %i.ag = or i32 %i.af, %.1.us
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.1.us.1 = phi i32 [ %i.ag, %bb.l ], [ %.1.us, %bb.k ] ; 3 uses
  %indvars.iv.next136.1 = add nuw nsw i64 %indvars.iv135, 2 ; 2 uses
  %niter192.next.1 = add i64 %niter192, 2         ; 2 uses
  %niter192.ncmp.1 = icmp eq i64 %niter192.next.1, %unroll_iter191
  br i1 %niter192.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !35

bb.n:                                             ; preds = %._crit_edge.us
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv140
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !24
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge.us
  %i.aj = phi ptr [ %i.ai, %bb.n ], [ null, %._crit_edge.us ]
  br i1 %.not55, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv140
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !24
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.am = phi ptr [ %i.al, %bb.p ], [ null, %bb.o ]
  br i1 %.not56, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %indvars.iv140
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !24
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ap = phi ptr [ %i.ao, %bb.r ], [ null, %bb.q ]
  %i.aq = tail call fastcc i32 @Dau_DecCheckSetAny(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %5, i32 noundef %.1.us.lcssa, ptr noundef %i.aj, ptr noundef %i.am, ptr noundef %i.ap)
  %.not57.us = icmp eq i32 %i.aq, 0
  br i1 %.not57.us, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1 ; 2 uses
  %exitcond145.not = icmp eq i64 %indvars.iv.next141, %wide.trip.count144
  br i1 %exitcond145.not, label %.loopexit, label %.preheader.us, !llvm.loop !36

._crit_edge.us.unr-lcssa:                         ; preds = %bb.m
  br i1 %lcmp.mod188.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader.us
  %indvars.iv135.epil.init = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next136.1, %._crit_edge.us.unr-lcssa ] ; 2 uses
end_hunk_0
begin_hunk_1_@Dau_DecCheckSetAny:bb.a
  %.114.i.i.us = or i32 %i.aq, %.01316.i.i.us
  %i.ar = add nsw i32 %.01217.i.i.us, 1
  br label %.lr.ph.i.i.us.1

.lr.ph.i.i.us.1:                                  ; preds = %bb.k, %.lr.ph.i.i.us
  %.2.i.i.us = phi i32 [ %.01316.i.i.us, %.lr.ph.i.i.us ], [ %.114.i.i.us, %bb.k ] ; 2 uses
  %.1.i.i.us = phi i32 [ %.01217.i.i.us, %.lr.ph.i.i.us ], [ %i.ar, %bb.k ] ; 3 uses
  %i.as = shl nuw i32 2, %.018.i.i.us             ; 2 uses
  %i.at = and i32 %i.as, %3
  %.not.i.i.us.1 = icmp eq i32 %i.at, 0
  br i1 %.not.i.i.us.1, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.i.i.us.1
  %i.au = and i32 %i.as, %.05289.i.us
  %.not15.i.i.us.1 = icmp eq i32 %i.au, 0
  %i.av = shl nuw i32 1, %.1.i.i.us
  %i.aw = select i1 %.not15.i.i.us.1, i32 0, i32 %i.av
  %.114.i.i.us.1 = or i32 %i.aw, %.2.i.i.us
  %i.ax = add nsw i32 %.1.i.i.us, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.i.i.us.1
  %.2.i.i.us.1 = phi i32 [ %.2.i.i.us, %.lr.ph.i.i.us.1 ], [ %.114.i.i.us.1, %bb.l ] ; 3 uses
  %.1.i.i.us.1 = phi i32 [ %.1.i.i.us, %.lr.ph.i.i.us.1 ], [ %i.ax, %bb.l ] ; 2 uses
  %i.ay = add nuw nsw i32 %.018.i.i.us, 2         ; 2 uses
  %niter110.next.1 = add i32 %niter110, 2         ; 2 uses
  %niter110.ncmp.1 = icmp eq i32 %niter110.next.1, %unroll_iter109
  br i1 %niter110.ncmp.1, label %.sink.split.i.us.loopexit.unr-lcssa, label %.lr.ph.i.i.us, !llvm.loop !38

.sink.split.i.us.loopexit.unr-lcssa:              ; preds = %bb.m
  br i1 %lcmp.mod106.not, label %.sink.split.i.us, label %.lr.ph.i.i.us.epil.preheader

.lr.ph.i.i.us.epil.preheader:                     ; preds = %.sink.split.i.us.loopexit.unr-lcssa, %.lr.ph.i.i.us.preheader
  %.018.i.i.us.epil.init = phi i32 [ 0, %.lr.ph.i.i.us.preheader ], [ %i.ay, %.sink.split.i.us.loopexit.unr-lcssa ]
  %.01217.i.i.us.epil.init = phi i32 [ 0, %.lr.ph.i.i.us.preheader ], [ %.1.i.i.us.1, %.sink.split.i.us.loopexit.unr-lcssa ]
  %.01316.i.i.us.epil.init = phi i32 [ 0, %.lr.ph.i.i.us.preheader ], [ %.2.i.i.us.1, %.sink.split.i.us.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod108)
  %i.az = shl nuw i32 1, %.018.i.i.us.epil.init   ; 2 uses
  %i.ba = and i32 %i.az, %3
  %.not.i.i.us.epil = icmp eq i32 %i.ba, 0
  br i1 %.not.i.i.us.epil, label %bb.n, label %.sink.split.i.us

bb.n:                                             ; preds = %.lr.ph.i.i.us.epil.preheader
  %i.bb = and i32 %i.az, %.05289.i.us
  %.not15.i.i.us.epil = icmp eq i32 %i.bb, 0
  %i.bc = shl nuw i32 1, %.01217.i.i.us.epil.init
  %i.bd = select i1 %.not15.i.i.us.epil, i32 0, i32 %i.bc
  %.114.i.i.us.epil = or i32 %i.bd, %.01316.i.i.us.epil.init
  br label %.sink.split.i.us

.sink.split.i.us.loopexit84.unr-lcssa:            ; preds = %bb.j
  br i1 %lcmp.mod100.not, label %.sink.split.i.us, label %.lr.ph.i68.i.us.epil.preheader

.lr.ph.i68.i.us.epil.preheader:                   ; preds = %.sink.split.i.us.loopexit84.unr-lcssa, %.lr.ph.i68.i.us.preheader
  %.018.i69.i.us.epil.init = phi i32 [ 0, %.lr.ph.i68.i.us.preheader ], [ %i.al, %.sink.split.i.us.loopexit84.unr-lcssa ]
  %.01217.i70.i.us.epil.init = phi i32 [ 0, %.lr.ph.i68.i.us.preheader ], [ %.1.i74.i.us.1, %.sink.split.i.us.loopexit84.unr-lcssa ]
  %.01316.i71.i.us.epil.init = phi i32 [ 0, %.lr.ph.i68.i.us.preheader ], [ %.2.i73.i.us.1, %.sink.split.i.us.loopexit84.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod102)
  %i.be = shl nuw i32 1, %.018.i69.i.us.epil.init ; 2 uses
  %i.bf = and i32 %i.be, %3
  %.not.i72.i.us.epil = icmp eq i32 %i.bf, 0
  br i1 %.not.i72.i.us.epil, label %bb.o, label %.sink.split.i.us

bb.o:                                             ; preds = %.lr.ph.i68.i.us.epil.preheader
  %i.bg = and i32 %i.be, %.05289.i.us
  %.not15.i76.i.us.epil = icmp eq i32 %i.bg, 0
  %i.bh = shl nuw i32 1, %.01217.i70.i.us.epil.init
  %i.bi = select i1 %.not15.i76.i.us.epil, i32 0, i32 %i.bh
  %.114.i77.i.us.epil = or i32 %i.bi, %.01316.i71.i.us.epil.init
  br label %.sink.split.i.us

.sink.split.i.us:                                 ; preds = %.sink.split.i.us.loopexit84.unr-lcssa, %bb.o, %.lr.ph.i68.i.us.epil.preheader, %.sink.split.i.us.loopexit.unr-lcssa, %bb.n, %.lr.ph.i.i.us.epil.preheader
  %.013.lcssa.i.sink119.i.us = phi i32 [ %.114.i.i.us.epil, %bb.n ], [ %.2.i.i.us.1, %.sink.split.i.us.loopexit.unr-lcssa ], [ %.01316.i.i.us.epil.init, %.lr.ph.i.i.us.epil.preheader ], [ %.2.i73.i.us.1, %.sink.split.i.us.loopexit84.unr-lcssa ], [ %.01316.i71.i.us.epil.init, %.lr.ph.i68.i.us.epil.preheader ], [ %.114.i77.i.us.epil, %bb.o ] ; 2 uses
  %.1.ph.i.us = phi i64 [ %i.w, %.sink.split.i.us.loopexit.unr-lcssa ], [ %i.w, %.lr.ph.i.i.us.epil.preheader ], [ %i.w, %bb.n ], [ %.092.i.us, %.lr.ph.i68.i.us.epil.preheader ], [ %.092.i.us, %bb.o ], [ %.092.i.us, %.sink.split.i.us.loopexit84.unr-lcssa ]
  %i.bj = and i32 %.013.lcssa.i.sink119.i.us, 63
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = shl nuw i64 1, %i.bk
  %i.bm = ashr i32 %.013.lcssa.i.sink119.i.us, 6
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds [8 x i8], ptr %7, i64 %i.bn ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !20
  %i.bq = or i64 %i.bl, %i.bp
  store i64 %i.bq, ptr %i.bo, align 8, !tbaa !20
  br label %bb.p

bb.p:                                             ; preds = %.sink.split.i.us, %bb.e, %bb.d, %.lr.ph.split.i.us
  %.156.i.us = phi i32 [ 1, %bb.e ], [ %.05587.i.us, %.lr.ph.split.i.us ], [ 1, %bb.d ], [ 1, %.sink.split.i.us ]
  %.154.i.us = phi i32 [ %.05388.i.us, %bb.e ], [ %.05388.i.us, %.lr.ph.split.i.us ], [ %.05388.i.us, %bb.d ], [ 1, %.sink.split.i.us ] ; 2 uses
  %.151.i.us = phi i64 [ %.05091.i.us, %bb.e ], [ %.05091.i.us, %.lr.ph.split.i.us ], [ %i.w, %bb.d ], [ %.05091.i.us, %.sink.split.i.us ] ; 2 uses
  %.1.i.us = phi i64 [ %.092.i.us, %bb.e ], [ %.092.i.us, %.lr.ph.split.i.us ], [ %.092.i.us, %bb.d ], [ %.1.ph.i.us, %.sink.split.i.us ] ; 2 uses
  %i.br = add nuw nsw i32 %.05289.i.us, 1         ; 2 uses
  %exitcond.not.i.us = icmp eq i32 %i.br, %i.c
  br i1 %exitcond.not.i.us, label %._crit_edge.i, label %.lr.ph.split.i.us, !llvm.loop !39

.lr.ph.split.us.i:                                ; preds = %bb.c, %bb.u
  %.092.us.i = phi i64 [ %.1.us.i, %bb.u ], [ 0, %bb.c ] ; 5 uses
  %.05091.us.i = phi i64 [ %.151.us.i, %bb.u ], [ 0, %bb.c ] ; 5 uses
  %.05289.us.i = phi i32 [ %i.cf, %bb.u ], [ 0, %bb.c ] ; 4 uses
  %.05388.us.i = phi i32 [ %.154.us.i, %bb.u ], [ 0, %bb.c ] ; 4 uses
  %.05587.us.i = phi i32 [ %.156.us.i, %bb.u ], [ 0, %bb.c ] ; 2 uses
  %i.bs = and i32 %.05289.us.i, %3
  %i.bt = icmp eq i32 %i.bs, %4
  br i1 %i.bt, label %bb.q, label %bb.u

bb.q:                                             ; preds = %.lr.ph.split.us.i
  %i.bu = lshr i32 %.05289.us.i, %i.d
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bv
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !20
  %i.by = shl i32 %.05289.us.i, %2
  %i.bz = and i32 %i.by, 63
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = lshr i64 %i.bx, %i.ca
  %i.cc = and i64 %i.cb, %i.g                     ; 4 uses
  %.not65.us.i = icmp eq i32 %.05587.us.i, 0
  br i1 %.not65.us.i, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cd = icmp eq i64 %.05091.us.i, %i.cc
  br i1 %i.cd, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.not66.us.i = icmp eq i32 %.05388.us.i, 0
  br i1 %.not66.us.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ce = icmp eq i64 %.092.us.i, %i.cc
  br i1 %i.ce, label %bb.u, label %Dau_DecCheckSet5.exit

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r, %bb.q, %.lr.ph.split.us.i
  %.156.us.i = phi i32 [ 1, %bb.r ], [ 1, %bb.q ], [ 1, %bb.t ], [ %.05587.us.i, %.lr.ph.split.us.i ], [ 1, %bb.s ]
  %.154.us.i = phi i32 [ %.05388.us.i, %bb.r ], [ %.05388.us.i, %bb.q ], [ 1, %bb.t ], [ %.05388.us.i, %.lr.ph.split.us.i ], [ 1, %bb.s ] ; 2 uses
  %.151.us.i = phi i64 [ %.05091.us.i, %bb.r ], [ %i.cc, %bb.q ], [ %.05091.us.i, %bb.t ], [ %.05091.us.i, %.lr.ph.split.us.i ], [ %.05091.us.i, %bb.s ] ; 2 uses
  %.1.us.i = phi i64 [ %.092.us.i, %bb.r ], [ %.092.us.i, %bb.q ], [ %.092.us.i, %bb.t ], [ %.092.us.i, %.lr.ph.split.us.i ], [ %i.cc, %bb.s ] ; 2 uses
  %i.cf = add nuw nsw i32 %.05289.us.i, 1         ; 2 uses
  %exitcond101.not.i = icmp eq i32 %i.cf, %i.c
  br i1 %exitcond101.not.i, label %._crit_edge.i, label %.lr.ph.split.us.i, !llvm.loop !39

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.preheader.i, %bb.z
  %.092.i = phi i64 [ %.1.i, %bb.z ], [ 0, %.lr.ph.split.preheader.i ] ; 5 uses
  %.05091.i = phi i64 [ %.151.i, %bb.z ], [ 0, %.lr.ph.split.preheader.i ] ; 4 uses
  %.05289.i = phi i32 [ %i.ct, %bb.z ], [ 0, %.lr.ph.split.preheader.i ] ; 4 uses
  %.05388.i = phi i32 [ %.154.i, %bb.z ], [ 0, %.lr.ph.split.preheader.i ] ; 4 uses
  %.05587.i = phi i32 [ %.156.i, %bb.z ], [ 0, %.lr.ph.split.preheader.i ] ; 2 uses
  %i.cg = and i32 %.05289.i, %3
  %i.ch = icmp eq i32 %i.cg, %4
  br i1 %i.ch, label %bb.v, label %bb.z

bb.v:                                             ; preds = %.lr.ph.split.i
  %i.ci = lshr i32 %.05289.i, %i.d
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cj
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !20
  %i.cm = shl i32 %.05289.i, %2
  %i.cn = and i32 %i.cm, 63
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = lshr i64 %i.cl, %i.co
  %i.cq = and i64 %i.cp, %i.g                     ; 4 uses
  %.not65.i = icmp eq i32 %.05587.i, 0
  br i1 %.not65.i, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cr = icmp eq i64 %.05091.i, %i.cq
  br i1 %i.cr, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.not66.i = icmp eq i32 %.05388.i, 0
  br i1 %.not66.i, label %.sink.split.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cs = icmp eq i64 %.092.i, %i.cq
  br i1 %i.cs, label %.sink.split.i, label %Dau_DecCheckSet5.exit

.sink.split.i:                                    ; preds = %bb.y, %bb.x
  %.1.ph.i = phi i64 [ %i.cq, %bb.x ], [ %.092.i, %bb.y ]
  store i64 1, ptr %7, align 8, !tbaa !20
  br label %bb.z

bb.z:                                             ; preds = %.sink.split.i, %bb.w, %bb.v, %.lr.ph.split.i
  %.156.i = phi i32 [ 1, %bb.w ], [ %.05587.i, %.lr.ph.split.i ], [ 1, %bb.v ], [ 1, %.sink.split.i ]
  %.154.i = phi i32 [ %.05388.i, %bb.w ], [ %.05388.i, %.lr.ph.split.i ], [ %.05388.i, %bb.v ], [ 1, %.sink.split.i ] ; 2 uses
  %.151.i = phi i64 [ %.05091.i, %bb.w ], [ %.05091.i, %.lr.ph.split.i ], [ %i.cq, %bb.v ], [ %.05091.i, %.sink.split.i ] ; 2 uses
  %.1.i = phi i64 [ %.092.i, %bb.w ], [ %.092.i, %.lr.ph.split.i ], [ %.092.i, %bb.v ], [ %.1.ph.i, %.sink.split.i ] ; 2 uses
  %i.ct = add nuw nsw i32 %.05289.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ct, %i.c
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.split.i, !llvm.loop !39

._crit_edge.i:                                    ; preds = %bb.z, %bb.p, %bb.u, %.thread.i, %bb.c
  %.053.lcssa.i = phi i32 [ 0, %bb.c ], [ 0, %.thread.i ], [ %.154.us.i, %bb.u ], [ %.154.i.us, %bb.p ], [ %.154.i, %bb.z ]
  %.050.lcssa.i = phi i64 [ 0, %bb.c ], [ 0, %.thread.i ], [ %.151.us.i, %bb.u ], [ %.151.i.us, %bb.p ], [ %.151.i, %bb.z ] ; 8 uses
  %.0.lcssa.i = phi i64 [ 0, %bb.c ], [ 0, %.thread.i ], [ %.1.us.i, %bb.u ], [ %.1.i.us, %bb.p ], [ %.1.i, %bb.z ]
  %.not63.i = icmp eq ptr %5, null
  br i1 %.not63.i, label %Dau_DecCheckSet5.exit, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge.i
  %.not64.i = icmp eq i32 %.053.lcssa.i, 0
  %i.cu = select i1 %.not64.i, i64 %.050.lcssa.i, i64 %.0.lcssa.i ; 7 uses
  %i.cv = icmp eq i32 %2, 0                       ; 2 uses
  %i.cw = trunc i64 %.050.lcssa.i to i1
  %i.cx = select i1 %i.cw, i64 3, i64 0
  %i.cy = icmp samesign ult i32 %2, 2             ; 2 uses
  %i.cz = and i64 %.050.lcssa.i, 3
  %i.da = select i1 %i.cv, i64 %i.cx, i64 %i.cz
  %i.db = mul nuw nsw i64 %i.da, 5
  %.126.i.i = select i1 %i.cy, i64 %i.db, i64 %.050.lcssa.i
  %i.dc = icmp samesign ult i32 %2, 3             ; 2 uses
  %i.dd = and i64 %.126.i.i, 15
  %i.de = mul nuw nsw i64 %i.dd, 17
  %.227.i.i = select i1 %i.dc, i64 %i.de, i64 %.050.lcssa.i
  %i.df = icmp samesign ult i32 %2, 4             ; 2 uses
  %i.dg = and i64 %.227.i.i, 255
  %i.dh = mul nuw nsw i64 %i.dg, 257
  %.328.i.i = select i1 %i.df, i64 %i.dh, i64 %.050.lcssa.i
  %i.di = icmp samesign ult i32 %2, 5             ; 2 uses
  %i.dj = and i64 %.328.i.i, 65535
  %i.dk = mul nuw nsw i64 %i.dj, 65537
  %.429.i.i = select i1 %i.di, i64 %i.dk, i64 %.050.lcssa.i
  %i.dl = icmp ult i32 %2, 6                      ; 2 uses
  %i.dm = and i64 %.429.i.i, 4294967295
  %i.dn = mul nuw i64 %i.dm, 4294967297
  %.5.i.i = select i1 %i.dl, i64 %i.dn, i64 %.050.lcssa.i
  store i64 %.5.i.i, ptr %5, align 8, !tbaa !20
  %i.do = trunc i64 %i.cu to i1
  %i.dp = select i1 %i.do, i64 3, i64 0
  %i.dq = and i64 %i.cu, 3
  %i.dr = select i1 %i.cv, i64 %i.dp, i64 %i.dq
  %i.ds = mul nuw nsw i64 %i.dr, 5
  %.126.i79.i = select i1 %i.cy, i64 %i.ds, i64 %i.cu
  %i.dt = and i64 %.126.i79.i, 15
  %i.du = mul nuw nsw i64 %i.dt, 17
  %.227.i80.i = select i1 %i.dc, i64 %i.du, i64 %i.cu
  %i.dv = and i64 %.227.i80.i, 255
  %i.dw = mul nuw nsw i64 %i.dv, 257
  %.328.i81.i = select i1 %i.df, i64 %i.dw, i64 %i.cu
  %i.dx = and i64 %.328.i81.i, 65535
  %i.dy = mul nuw nsw i64 %i.dx, 65537
  %.429.i82.i = select i1 %i.di, i64 %i.dy, i64 %i.cu
  %i.dz = and i64 %.429.i82.i, 4294967295
  %i.ea = mul nuw i64 %i.dz, 4294967297
  %.5.i83.i = select i1 %i.dl, i64 %i.ea, i64 %i.cu
  store i64 %.5.i83.i, ptr %6, align 8, !tbaa !20
  br label %Dau_DecCheckSet5.exit

bb.ab:                                            ; preds = %bb.a
  %i.eb = add nsw i32 %2, -6                      ; 2 uses
  %i.ec = shl nuw i32 1, %i.eb                    ; 2 uses
  %.not.i18 = icmp eq ptr %7, null                ; 3 uses
  br i1 %.not.i18, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store i64 0, ptr %7, align 8, !tbaa !20
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.not92.i = icmp eq i32 %i.b, 31
  br i1 %.not92.i, label %._crit_edge.i21, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ad
  %i.ed = sext i32 %i.ec to i64
  %i.ee = shl nsw i64 %i.ed, 3                    ; 2 uses
  %i.ef = icmp sgt i32 %i.b, 0                    ; 2 uses
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.c, i32 1)
  %i.eg = xor i32 %2, -1
  %i.eh = add i32 %1, %i.eg                       ; 2 uses
  %xtraiter = and i32 %i.b, 1
  %i.ei = icmp eq i32 %i.eh, 0
  %unroll_iter = and i32 %i.b, 2147483646
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod92 = trunc i32 %i.b to i1
  %xtraiter93 = and i32 %i.b, 1
  %i.ej = icmp eq i32 %i.eh, 0
  %unroll_iter97 = and i32 %i.b, 2147483646
  %lcmp.mod94.not = icmp eq i32 %xtraiter93, 0
  %lcmp.mod96 = trunc i32 %i.b to i1
  br label %bb.ae

bb.ae:                                            ; preds = %bb.av, %.lr.ph.i
  %.089.i = phi ptr [ null, %.lr.ph.i ], [ %.1.i19, %bb.av ] ; 9 uses
  %.05188.i = phi ptr [ null, %.lr.ph.i ], [ %.152.i, %bb.av ] ; 6 uses
  %.05386.i = phi i32 [ 0, %.lr.ph.i ], [ %i.gh, %bb.av ] ; 9 uses
  %.05485.i = phi i32 [ 0, %.lr.ph.i ], [ %.155.i, %bb.av ] ; 4 uses
  %.05684.i = phi i32 [ 0, %.lr.ph.i ], [ %.157.i, %bb.av ] ; 2 uses
  %i.ek = and i32 %.05386.i, %3
  %i.el = icmp eq i32 %i.ek, %4
  br i1 %i.el, label %bb.af, label %bb.av

bb.af:                                            ; preds = %bb.ae
  %.not64.i22 = icmp eq i32 %.05684.i, 0
  %i.em = shl i32 %.05386.i, %i.eb
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr inbounds [8 x i8], ptr %0, i64 %i.en ; 8 uses
  br i1 %.not64.i22, label %bb.av, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %bcmp.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %.05188.i, ptr noundef nonnull readonly dereferenceable(1) %i.eo, i64 %i.ee)
  %.not65.i23 = icmp eq i32 %bcmp.i, 0
  br i1 %.not65.i23, label %bb.av, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.not66.i24 = icmp eq i32 %.05485.i, 0
  br i1 %.not66.i24, label %bb.ai, label %bb.an

bb.ai:                                            ; preds = %bb.ah
  br i1 %.not.i18, label %bb.av, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  br i1 %i.ef, label %.lr.ph.i.i27.preheader, label %.sink.split.i25

.lr.ph.i.i27.preheader:                           ; preds = %bb.aj
  br i1 %i.ej, label %.lr.ph.i.i27.epil.preheader, label %.lr.ph.i.i27

.lr.ph.i.i27:                                     ; preds = %.lr.ph.i.i27.preheader, %bb.am
  %.018.i.i28 = phi i32 [ %i.fb, %bb.am ], [ 0, %.lr.ph.i.i27.preheader ] ; 3 uses
  %.01217.i.i29 = phi i32 [ %.1.i.i33.1, %bb.am ], [ 0, %.lr.ph.i.i27.preheader ] ; 3 uses
  %.01316.i.i30 = phi i32 [ %.2.i.i32.1, %bb.am ], [ 0, %.lr.ph.i.i27.preheader ] ; 2 uses
  %niter98 = phi i32 [ %niter98.next.1, %bb.am ], [ 0, %.lr.ph.i.i27.preheader ]
  %i.ep = shl nuw i32 1, %.018.i.i28              ; 2 uses
  %i.eq = and i32 %i.ep, %3
  %.not.i.i31 = icmp eq i32 %i.eq, 0
  br i1 %.not.i.i31, label %bb.ak, label %.lr.ph.i.i27.1

bb.ak:                                            ; preds = %.lr.ph.i.i27
  %i.er = and i32 %i.ep, %.05386.i
  %.not15.i.i35 = icmp eq i32 %i.er, 0
  %i.es = shl nuw i32 1, %.01217.i.i29
  %i.et = select i1 %.not15.i.i35, i32 0, i32 %i.es
  %.114.i.i36 = or i32 %i.et, %.01316.i.i30
  %i.eu = add nsw i32 %.01217.i.i29, 1
  br label %.lr.ph.i.i27.1

.lr.ph.i.i27.1:                                   ; preds = %bb.ak, %.lr.ph.i.i27
  %.2.i.i32 = phi i32 [ %.01316.i.i30, %.lr.ph.i.i27 ], [ %.114.i.i36, %bb.ak ] ; 2 uses
  %.1.i.i33 = phi i32 [ %.01217.i.i29, %.lr.ph.i.i27 ], [ %i.eu, %bb.ak ] ; 3 uses
  %i.ev = shl nuw i32 2, %.018.i.i28              ; 2 uses
  %i.ew = and i32 %i.ev, %3
  %.not.i.i31.1 = icmp eq i32 %i.ew, 0
  br i1 %.not.i.i31.1, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.lr.ph.i.i27.1
  %i.ex = and i32 %i.ev, %.05386.i
  %.not15.i.i35.1 = icmp eq i32 %i.ex, 0
  %i.ey = shl nuw i32 1, %.1.i.i33
  %i.ez = select i1 %.not15.i.i35.1, i32 0, i32 %i.ey
  %.114.i.i36.1 = or i32 %i.ez, %.2.i.i32
  %i.fa = add nsw i32 %.1.i.i33, 1
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.lr.ph.i.i27.1
  %.2.i.i32.1 = phi i32 [ %.2.i.i32, %.lr.ph.i.i27.1 ], [ %.114.i.i36.1, %bb.al ] ; 3 uses
  %.1.i.i33.1 = phi i32 [ %.1.i.i33, %.lr.ph.i.i27.1 ], [ %i.fa, %bb.al ] ; 2 uses
  %i.fb = add nuw nsw i32 %.018.i.i28, 2          ; 2 uses
  %niter98.next.1 = add i32 %niter98, 2           ; 2 uses
  %niter98.ncmp.1 = icmp eq i32 %niter98.next.1, %unroll_iter97
  br i1 %niter98.ncmp.1, label %.sink.split.i25.loopexit.unr-lcssa, label %.lr.ph.i.i27, !llvm.loop !38

bb.an:                                            ; preds = %bb.ah
  %bcmp67.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %.089.i, ptr noundef nonnull readonly dereferenceable(1) %i.eo, i64 %i.ee)
  %.not68.i = icmp eq i32 %bcmp67.i, 0
  br i1 %.not68.i, label %bb.ao, label %Dau_DecCheckSet5.exit

bb.ao:                                            ; preds = %bb.an
  br i1 %.not.i18, label %bb.av, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  br i1 %i.ef, label %.lr.ph.i70.i.preheader, label %.sink.split.i25

.lr.ph.i70.i.preheader:                           ; preds = %bb.ap
  br i1 %i.ei, label %.lr.ph.i70.i.epil.preheader, label %.lr.ph.i70.i

.lr.ph.i70.i:                                     ; preds = %.lr.ph.i70.i.preheader, %bb.as
  %.018.i71.i = phi i32 [ %i.fo, %bb.as ], [ 0, %.lr.ph.i70.i.preheader ] ; 3 uses
  %.01217.i72.i = phi i32 [ %.1.i76.i.1, %bb.as ], [ 0, %.lr.ph.i70.i.preheader ] ; 3 uses
  %.01316.i73.i = phi i32 [ %.2.i75.i.1, %bb.as ], [ 0, %.lr.ph.i70.i.preheader ] ; 2 uses
  %niter = phi i32 [ %niter.next.1, %bb.as ], [ 0, %.lr.ph.i70.i.preheader ]
  %i.fc = shl nuw i32 1, %.018.i71.i              ; 2 uses
  %i.fd = and i32 %i.fc, %3
  %.not.i74.i = icmp eq i32 %i.fd, 0
  br i1 %.not.i74.i, label %bb.aq, label %.lr.ph.i70.i.1

bb.aq:                                            ; preds = %.lr.ph.i70.i
  %i.fe = and i32 %i.fc, %.05386.i
  %.not15.i78.i = icmp eq i32 %i.fe, 0
  %i.ff = shl nuw i32 1, %.01217.i72.i
  %i.fg = select i1 %.not15.i78.i, i32 0, i32 %i.ff
  %.114.i79.i = or i32 %i.fg, %.01316.i73.i
  %i.fh = add nsw i32 %.01217.i72.i, 1
  br label %.lr.ph.i70.i.1

.lr.ph.i70.i.1:                                   ; preds = %bb.aq, %.lr.ph.i70.i
  %.2.i75.i = phi i32 [ %.01316.i73.i, %.lr.ph.i70.i ], [ %.114.i79.i, %bb.aq ] ; 2 uses
  %.1.i76.i = phi i32 [ %.01217.i72.i, %.lr.ph.i70.i ], [ %i.fh, %bb.aq ] ; 3 uses
  %i.fi = shl nuw i32 2, %.018.i71.i              ; 2 uses
  %i.fj = and i32 %i.fi, %3
  %.not.i74.i.1 = icmp eq i32 %i.fj, 0
  br i1 %.not.i74.i.1, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %.lr.ph.i70.i.1
  %i.fk = and i32 %i.fi, %.05386.i
  %.not15.i78.i.1 = icmp eq i32 %i.fk, 0
  %i.fl = shl nuw i32 1, %.1.i76.i
  %i.fm = select i1 %.not15.i78.i.1, i32 0, i32 %i.fl
  %.114.i79.i.1 = or i32 %i.fm, %.2.i75.i
  %i.fn = add nsw i32 %.1.i76.i, 1
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %.lr.ph.i70.i.1
  %.2.i75.i.1 = phi i32 [ %.2.i75.i, %.lr.ph.i70.i.1 ], [ %.114.i79.i.1, %bb.ar ] ; 3 uses
  %.1.i76.i.1 = phi i32 [ %.1.i76.i, %.lr.ph.i70.i.1 ], [ %i.fn, %bb.ar ] ; 2 uses
  %i.fo = add nuw nsw i32 %.018.i71.i, 2          ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.sink.split.i25.loopexit89.unr-lcssa, label %.lr.ph.i70.i, !llvm.loop !38

.sink.split.i25.loopexit.unr-lcssa:               ; preds = %bb.am
end_hunk_1
begin_hunk_2_@Dau_DecDecomposeSet:bb.a
  br label %.sink.split

bb.c:                                             ; preds = %.lr.ph188
  %i.ah = add nsw i32 %.0152183, 1
  br label %.sink.split

bb.d:                                             ; preds = %.lr.ph188
  %i.ai = add nsw i32 %.0150184, 1
  br label %.sink.split

default.unreachable:                              ; preds = %.lr.ph188
  unreachable

.sink.split:                                      ; preds = %bb.b, %bb.d, %bb.c
  %.0152183.sink = phi i32 [ %.0152183, %bb.c ], [ %.0150184, %bb.d ], [ %.0148185, %bb.b ]
  %.sink314 = phi ptr [ %i.k, %bb.c ], [ %i.l, %bb.d ], [ %i.m, %bb.b ]
  %.1153.ph = phi i32 [ %i.ah, %bb.c ], [ %.0152183, %bb.d ], [ %.0152183, %bb.b ]
  %.1151.ph = phi i32 [ %.0150184, %bb.c ], [ %i.ai, %bb.d ], [ %.0150184, %bb.b ]
  %.1149.ph = phi i32 [ %.0148185, %bb.c ], [ %.0148185, %bb.d ], [ %i.ag, %bb.b ]
  %i.aj = sext i32 %.0152183.sink to i64
  %i.ak = getelementptr inbounds [4 x i8], ptr %.sink314, i64 %i.aj
  store i32 %.1146186, ptr %i.ak, align 4, !tbaa !18
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %.lr.ph188
  %.1153 = phi i32 [ %.0152183, %.lr.ph188 ], [ %.1153.ph, %.sink.split ] ; 3 uses
  %.1151 = phi i32 [ %.0150184, %.lr.ph188 ], [ %.1151.ph, %.sink.split ] ; 4 uses
  %.1149 = phi i32 [ %.0148185, %.lr.ph188 ], [ %.1149.ph, %.sink.split ] ; 3 uses
  %i.al = add nuw nsw i32 %.1146186, 1            ; 2 uses
  %exitcond235.not = icmp eq i32 %i.al, %1
  br i1 %exitcond235.not, label %._crit_edge189, label %.lr.ph188, !llvm.loop !76

._crit_edge189:                                   ; preds = %bb.e
  %i.am = shl nuw i32 1, %.1151
  %.not228 = icmp eq i32 %.1151, 31
  br i1 %.not228, label %.preheader178, label %.lr.ph194.preheader

.lr.ph194.preheader:                              ; preds = %._crit_edge189.thread, %._crit_edge189
  %i.an = phi i32 [ 1, %._crit_edge189.thread ], [ %i.am, %._crit_edge189 ] ; 5 uses
  %.0148.lcssa302 = phi i32 [ 0, %._crit_edge189.thread ], [ %.1149, %._crit_edge189 ]
  %.0150.lcssa300 = phi i32 [ 0, %._crit_edge189.thread ], [ %.1151, %._crit_edge189 ]
  %.0152.lcssa298 = phi i32 [ 0, %._crit_edge189.thread ], [ %.1153, %._crit_edge189 ]
  %min.iters.check319 = icmp slt i32 %i.an, 4
  br i1 %min.iters.check319, label %.lr.ph194, label %vector.ph320

vector.ph320:                                     ; preds = %.lr.ph194.preheader
  %i.ao = and i32 %i.an, 2147483644
  %n.vec321 = zext nneg i32 %i.ao to i64
  br label %vector.body322

vector.body322:                                   ; preds = %vector.body322, %vector.ph320
  %index323 = phi i64 [ 0, %vector.ph320 ], [ %index.next331, %vector.body322 ] ; 4 uses
  %vec.ind324 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph320 ], [ %vec.ind.next332, %vector.body322 ] ; 5 uses
  %step.add325 = add nuw <2 x i64> %vec.ind324, splat (i64 2) ; 3 uses
  %wide.gep = getelementptr inbounds nuw [8 x i8], ptr %i.c, <2 x i64> %vec.ind324
  %wide.gep326 = getelementptr inbounds nuw [8 x i8], ptr %i.c, <2 x i64> %step.add325
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index323 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store <2 x ptr> %wide.gep, ptr %i.ap, align 16, !tbaa !24
  store <2 x ptr> %wide.gep326, ptr %i.aq, align 16, !tbaa !24
  %wide.gep327 = getelementptr inbounds nuw [8 x i8], ptr %i.d, <2 x i64> %vec.ind324
  %wide.gep328 = getelementptr inbounds nuw [8 x i8], ptr %i.d, <2 x i64> %step.add325
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index323 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store <2 x ptr> %wide.gep327, ptr %i.ar, align 16, !tbaa !24
  store <2 x ptr> %wide.gep328, ptr %i.as, align 16, !tbaa !24
  %wide.gep329 = getelementptr inbounds nuw [8 x i8], ptr %i.e, <2 x i64> %vec.ind324
  %wide.gep330 = getelementptr inbounds nuw [8 x i8], ptr %i.e, <2 x i64> %step.add325
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %index323 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store <2 x ptr> %wide.gep329, ptr %i.at, align 16, !tbaa !24
  store <2 x ptr> %wide.gep330, ptr %i.au, align 16, !tbaa !24
  %index.next331 = add nuw i64 %index323, 4       ; 2 uses
  %vec.ind.next332 = add nuw <2 x i64> %vec.ind324, splat (i64 4)
  %i.av = icmp eq i64 %index.next331, %n.vec321
  br i1 %i.av, label %.preheader178.loopexit, label %vector.body322, !llvm.loop !77

.preheader178.loopexit:                           ; preds = %vector.body322, %.lr.ph194, %.lr.ph194.1, %.lr.ph194.2
  %i.aw = call i32 @llvm.smax.i32(i32 %i.an, i32 1)
  %i.ax = zext nneg i32 %i.aw to i64
  br label %.preheader178

.preheader178:                                    ; preds = %.preheader178.loopexit, %._crit_edge189
  %.not228305 = phi i1 [ true, %._crit_edge189 ], [ false, %.preheader178.loopexit ]
  %smax272 = phi i64 [ 1, %._crit_edge189 ], [ %i.ax, %.preheader178.loopexit ] ; 2 uses
  %.0148.lcssa303 = phi i32 [ %.1149, %._crit_edge189 ], [ %.0148.lcssa302, %.preheader178.loopexit ] ; 10 uses
  %.0150.lcssa301 = phi i32 [ 31, %._crit_edge189 ], [ %.0150.lcssa300, %.preheader178.loopexit ] ; 12 uses
  %.0152.lcssa299 = phi i32 [ %.1153, %._crit_edge189 ], [ %.0152.lcssa298, %.preheader178.loopexit ] ; 12 uses
  %i.ay = icmp sgt i32 %.0148.lcssa303, 0         ; 2 uses
  br i1 %i.ay, label %.lr.ph197.preheader, label %.preheader177

.lr.ph197.preheader:                              ; preds = %.preheader178
  %wide.trip.count246 = zext nneg i32 %.0148.lcssa303 to i64
  br label %.lr.ph197

.lr.ph194:                                        ; preds = %.lr.ph194.preheader
  store ptr %i.c, ptr %i.f, align 16, !tbaa !24
  store ptr %i.d, ptr %i.g, align 16, !tbaa !24
  store ptr %i.e, ptr %i.h, align 16, !tbaa !24
  %exitcond240.not = icmp slt i32 %i.an, 2
  br i1 %exitcond240.not, label %.preheader178.loopexit, label %.lr.ph194.1

.lr.ph194.1:                                      ; preds = %.lr.ph194
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !24
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !24
  %i.bd = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !24
  %exitcond240.not.1 = icmp eq i32 %i.an, 2
  br i1 %exitcond240.not.1, label %.preheader178.loopexit, label %.lr.ph194.2

.lr.ph194.2:                                      ; preds = %.lr.ph194.1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.bf, ptr %i.bg, align 16, !tbaa !24
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.bh, ptr %i.bi, align 16, !tbaa !24
  %i.bj = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.bj, ptr %i.bk, align 16, !tbaa !24
  br label %.preheader178.loopexit

.preheader177:                                    ; preds = %.lr.ph197, %.preheader178
  %.0.lcssa = phi i32 [ 0, %.preheader178 ], [ %.0148.lcssa303, %.lr.ph197 ] ; 2 uses
  %i.bl = icmp sgt i32 %.0150.lcssa301, 0         ; 4 uses
  br i1 %i.bl, label %.lr.ph201.preheader, label %.preheader176

.lr.ph201.preheader:                              ; preds = %.preheader177
  %wide.trip.count251 = zext nneg i32 %.0150.lcssa301 to i64
  br label %.lr.ph201

.lr.ph197:                                        ; preds = %.lr.ph197.preheader, %.lr.ph197
  %indvars.iv241 = phi i64 [ 0, %.lr.ph197.preheader ], [ %indvars.iv.next242, %.lr.ph197 ] ; 3 uses
  %indvars243 = trunc i64 %indvars.iv241 to i32
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv241
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !18
  %indvars.iv.next242 = add nuw nsw i64 %indvars.iv241, 1 ; 2 uses
  call fastcc void @Abc_TtMoveVar(ptr noundef nonnull %i.a, i32 noundef %1, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, i32 noundef %i.bn, i32 noundef %indvars243)
  %exitcond247.not = icmp eq i64 %indvars.iv.next242, %wide.trip.count246
  br i1 %exitcond247.not, label %.preheader177, label %.lr.ph197, !llvm.loop !78

.preheader176:                                    ; preds = %.lr.ph201, %.preheader177
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader177 ], [ %i.br, %.lr.ph201 ]
  %i.bo = icmp sgt i32 %.0152.lcssa299, 0         ; 2 uses
  br i1 %i.bo, label %.lr.ph205.preheader, label %._crit_edge206

.lr.ph205.preheader:                              ; preds = %.preheader176
  %wide.trip.count256 = zext nneg i32 %.0152.lcssa299 to i64
  br label %.lr.ph205

.lr.ph201:                                        ; preds = %.lr.ph201.preheader, %.lr.ph201
  %indvars.iv248 = phi i64 [ 0, %.lr.ph201.preheader ], [ %indvars.iv.next249, %.lr.ph201 ] ; 2 uses
  %.1200 = phi i32 [ %.0.lcssa, %.lr.ph201.preheader ], [ %i.br, %.lr.ph201 ] ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv248
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !18
  %i.br = add nuw nsw i32 %.1200, 1               ; 2 uses
  call fastcc void @Abc_TtMoveVar(ptr noundef nonnull %i.a, i32 noundef %1, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, i32 noundef %i.bq, i32 noundef %.1200)
  %indvars.iv.next249 = add nuw nsw i64 %indvars.iv248, 1 ; 2 uses
  %exitcond252.not = icmp eq i64 %indvars.iv.next249, %wide.trip.count251
  br i1 %exitcond252.not, label %.preheader176, label %.lr.ph201, !llvm.loop !79

.lr.ph205:                                        ; preds = %.lr.ph205.preheader, %.lr.ph205
  %indvars.iv253 = phi i64 [ 0, %.lr.ph205.preheader ], [ %indvars.iv.next254, %.lr.ph205 ] ; 2 uses
  %.2204 = phi i32 [ %.1.lcssa, %.lr.ph205.preheader ], [ %i.bu, %.lr.ph205 ] ; 2 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv253
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !18
  %i.bu = add nuw nsw i32 %.2204, 1
  call fastcc void @Abc_TtMoveVar(ptr noundef nonnull %i.a, i32 noundef %1, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, i32 noundef %i.bt, i32 noundef %.2204)
  %indvars.iv.next254 = add nuw nsw i64 %indvars.iv253, 1 ; 2 uses
  %exitcond257.not = icmp eq i64 %indvars.iv.next254, %wide.trip.count256
  br i1 %exitcond257.not, label %._crit_edge206, label %.lr.ph205, !llvm.loop !80

._crit_edge206:                                   ; preds = %.lr.ph205, %.preheader176
  %i.bv = add nsw i32 %.0150.lcssa301, %.0152.lcssa299 ; 2 uses
  %i.bw = sub nsw i32 32, %.0150.lcssa301
  %i.bx = lshr i32 -1, %i.bw
  %i.by = call i32 @Dau_DecCheckSetTopOld(ptr noundef nonnull %i.a, i32 noundef %1, i32 noundef %.0148.lcssa303, i32 noundef %i.bv, i32 noundef %.0150.lcssa301, i32 noundef %i.bx, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h)
  %.not = icmp eq i32 %i.by, 0
  br i1 %.not, label %bb.p, label %.preheader175

.preheader175:                                    ; preds = %._crit_edge206
  br i1 %.not228305, label %._crit_edge209.thread, label %.lr.ph208

._crit_edge209.thread:                            ; preds = %.preheader175
  store i64 0, ptr %3, align 8, !tbaa !20
  store i64 0, ptr %4, align 8, !tbaa !20
  br label %._crit_edge218

.lr.ph208:                                        ; preds = %.preheader175
  %i.bz = add nsw i32 %.0148.lcssa303, %.0150.lcssa301
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.ca
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !20 ; 2 uses
  %i.cd = xor i64 %i.cc, -1
  %i.ce = icmp eq i32 %.0152.lcssa299, 0
  %i.cf = icmp samesign ult i32 %.0152.lcssa299, 2
  %i.cg = icmp samesign ult i32 %.0152.lcssa299, 3
  %i.ch = icmp samesign ult i32 %.0152.lcssa299, 4
  %i.ci = icmp samesign ult i32 %.0152.lcssa299, 5
  %i.cj = icmp ult i32 %.0152.lcssa299, 6
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph208, %bb.f
  %indvars.iv258 = phi i64 [ 0, %.lr.ph208 ], [ %indvars.iv.next259, %bb.f ] ; 5 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv258
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !24
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !20
  %i.cn = and i64 %i.cc, %i.cm
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv258
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !24
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !20
  %i.cr = and i64 %i.cq, %i.cd
  %i.cs = or i64 %i.cr, %i.cn
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv258
  store i64 %i.cs, ptr %i.ct, align 8, !tbaa !20
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv258
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !24 ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !20 ; 7 uses
  %i.cx = trunc i64 %i.cw to i1
  %i.cy = select i1 %i.cx, i64 3, i64 0
  %i.cz = and i64 %i.cw, 3
  %i.da = select i1 %i.ce, i64 %i.cy, i64 %i.cz
  %i.db = mul nuw nsw i64 %i.da, 5
  %.126.i = select i1 %i.cf, i64 %i.db, i64 %i.cw
  %i.dc = and i64 %.126.i, 15
  %i.dd = mul nuw nsw i64 %i.dc, 17
  %.227.i = select i1 %i.cg, i64 %i.dd, i64 %i.cw
  %i.de = and i64 %.227.i, 255
  %i.df = mul nuw nsw i64 %i.de, 257
  %.328.i = select i1 %i.ch, i64 %i.df, i64 %i.cw
  %i.dg = and i64 %.328.i, 65535
  %i.dh = mul nuw nsw i64 %i.dg, 65537
  %.429.i = select i1 %i.ci, i64 %i.dh, i64 %i.cw
  %i.di = and i64 %.429.i, 4294967295
  %i.dj = mul nuw i64 %i.di, 4294967297
  %.5.i = select i1 %i.cj, i64 %i.dj, i64 %i.cw
  store i64 %.5.i, ptr %i.cv, align 8, !tbaa !20
  %indvars.iv.next259 = add nuw nsw i64 %indvars.iv258, 1 ; 2 uses
  %exitcond263.not = icmp eq i64 %indvars.iv.next259, %smax272
  br i1 %exitcond263.not, label %.preheader174.lr.ph, label %bb.f, !llvm.loop !81

.preheader174.lr.ph:                              ; preds = %bb.f
  store i64 0, ptr %3, align 8, !tbaa !20
  store i64 0, ptr %4, align 8, !tbaa !20
  %i.dk = sext i32 %.0148.lcssa303 to i64         ; 2 uses
  %i.dl = sext i32 %.0152.lcssa299 to i64         ; 2 uses
  %wide.trip.count267 = zext nneg i32 %.0150.lcssa301 to i64
  %invariant.gep = getelementptr [8 x i8], ptr @s_Truths6, i64 %i.dk
  %invariant.gep308 = getelementptr [8 x i8], ptr @s_Truths6, i64 %i.dl
  %invariant.gep310 = getelementptr [8 x i8], ptr @s_Truths6, i64 %i.dk
  %invariant.gep312 = getelementptr [8 x i8], ptr @s_Truths6, i64 %i.dl
  br label %.preheader174

.preheader174:                                    ; preds = %.preheader174.lr.ph, %._crit_edge214
  %indvars.iv269 = phi i64 [ 0, %.preheader174.lr.ph ], [ %indvars.iv.next270, %._crit_edge214 ] ; 4 uses
  br i1 %i.bl, label %.lr.ph213.preheader, label %._crit_edge214

.lr.ph213.preheader:                              ; preds = %.preheader174
  %i.dm = trunc nuw nsw i64 %indvars.iv269 to i32
  br label %.lr.ph213

.lr.ph213:                                        ; preds = %.lr.ph213.preheader, %bb.i
  %indvars.iv264 = phi i64 [ 0, %.lr.ph213.preheader ], [ %indvars.iv.next265, %bb.i ] ; 6 uses
  %.0154211 = phi i64 [ -1, %.lr.ph213.preheader ], [ %i.dy, %bb.i ]
  %.0155210 = phi i64 [ -1, %.lr.ph213.preheader ], [ %i.dx, %bb.i ]
  %i.dn = trunc nuw nsw i64 %indvars.iv264 to i32
  %i.do = shl nuw i32 1, %i.dn
  %i.dp = and i32 %i.do, %i.dm
  %.not170 = icmp eq i32 %i.dp, 0
  br i1 %.not170, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph213
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv264
  %i.dq = load i64, ptr %gep, align 8, !tbaa !20
  %gep309 = getelementptr [8 x i8], ptr %invariant.gep308, i64 %indvars.iv264
  %i.dr = load i64, ptr %gep309, align 8, !tbaa !20
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph213
  %gep311 = getelementptr [8 x i8], ptr %invariant.gep310, i64 %indvars.iv264
  %i.ds = load i64, ptr %gep311, align 8, !tbaa !20
  %i.dt = xor i64 %i.ds, -1
  %gep313 = getelementptr [8 x i8], ptr %invariant.gep312, i64 %indvars.iv264
  %i.du = load i64, ptr %gep313, align 8, !tbaa !20
  %i.dv = xor i64 %i.du, -1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn = phi i64 [ %i.dq, %bb.g ], [ %i.dt, %bb.h ]
  %i.dw = phi i64 [ %i.dr, %bb.g ], [ %i.dv, %bb.h ]
  %i.dx = and i64 %.pn, %.0155210                 ; 2 uses
  %i.dy = and i64 %i.dw, %.0154211                ; 2 uses
  %indvars.iv.next265 = add nuw nsw i64 %indvars.iv264, 1 ; 2 uses
  %exitcond268.not = icmp eq i64 %indvars.iv.next265, %wide.trip.count267
  br i1 %exitcond268.not, label %._crit_edge214, label %.lr.ph213, !llvm.loop !82

._crit_edge214:                                   ; preds = %bb.i, %.preheader174
  %.0155.lcssa = phi i64 [ -1, %.preheader174 ], [ %i.dx, %bb.i ]
  %.0154.lcssa = phi i64 [ -1, %.preheader174 ], [ %i.dy, %bb.i ]
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv269
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !20
  %i.eb = and i64 %i.ea, %.0155.lcssa
  %i.ec = load i64, ptr %3, align 8, !tbaa !20
  %i.ed = or i64 %i.ec, %i.eb
  store i64 %i.ed, ptr %3, align 8, !tbaa !20
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv269
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !24
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !20
  %i.eh = and i64 %i.eg, %.0154.lcssa
  %i.ei = load i64, ptr %4, align 8, !tbaa !20
  %i.ej = or i64 %i.ei, %i.eh
  store i64 %i.ej, ptr %4, align 8, !tbaa !20
  %indvars.iv.next270 = add nuw nsw i64 %indvars.iv269, 1 ; 2 uses
  %exitcond274.not = icmp eq i64 %indvars.iv.next270, %smax272
  br i1 %exitcond274.not, label %._crit_edge218, label %.preheader174, !llvm.loop !83

._crit_edge218:                                   ; preds = %._crit_edge214, %._crit_edge209.thread
  %.not165 = icmp eq ptr %5, null
  br i1 %.not165, label %bb.j, label %.preheader173

.preheader173:                                    ; preds = %._crit_edge218
  br i1 %i.ay, label %.lr.ph220.preheader, label %.preheader172

.lr.ph220.preheader:                              ; preds = %.preheader173
  %i.ek = zext nneg i32 %.0148.lcssa303 to i64
  %i.el = shl nuw nsw i64 %i.ek, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %5, ptr nonnull align 16 %i.m, i64 %i.el, i1 false), !tbaa !18
  br label %.preheader172

.preheader172:                                    ; preds = %.lr.ph220.preheader, %.preheader173
  br i1 %i.bl, label %.lr.ph222.preheader, label %._crit_edge223

.lr.ph222.preheader:                              ; preds = %.preheader172
  %i.em = sext i32 %.0148.lcssa303 to i64
  %i.en = shl nsw i64 %i.em, 2
  %scevgep = getelementptr i8, ptr %5, i64 %i.en
  %i.eo = zext nneg i32 %.0150.lcssa301 to i64
  %i.ep = shl nuw nsw i64 %i.eo, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep, ptr nonnull align 16 %i.l, i64 %i.ep, i1 false), !tbaa !18
  br label %._crit_edge223

._crit_edge223:                                   ; preds = %.lr.ph222.preheader, %.preheader172
  %i.eq = add nsw i32 %.0148.lcssa303, %.0150.lcssa301
  %i.er = sext i32 %i.eq to i64
  %i.es = getelementptr inbounds [4 x i8], ptr %5, i64 %i.er
  store i32 %1, ptr %i.es, align 4, !tbaa !18
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge223, %._crit_edge218
  %.not166 = icmp eq ptr %6, null
  br i1 %.not166, label %.loopexit, label %.preheader171

.preheader171:                                    ; preds = %bb.j
  br i1 %i.bo, label %.lr.ph225.preheader, label %.preheader

.lr.ph225.preheader:                              ; preds = %.preheader171
  %i.et = zext nneg i32 %.0152.lcssa299 to i64
  %i.eu = shl nuw nsw i64 %i.et, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %6, ptr nonnull align 16 %i.k, i64 %i.eu, i1 false), !tbaa !18
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph225.preheader, %.preheader171
  br i1 %i.bl, label %.lr.ph227.preheader, label %.loopexit

.lr.ph227.preheader:                              ; preds = %.preheader
  %i.ev = sext i32 %.0152.lcssa299 to i64
  %i.ew = shl nsw i64 %i.ev, 2
  %scevgep284 = getelementptr i8, ptr %6, i64 %i.ew
  %i.ex = zext nneg i32 %.0150.lcssa301 to i64
  %i.ey = shl nuw nsw i64 %i.ex, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep284, ptr nonnull align 16 %i.l, i64 %i.ey, i1 false), !tbaa !18
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph227.preheader, %.preheader, %bb.j
  %.not167 = icmp eq ptr %7, null
  br i1 %.not167, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.loopexit
  %i.ez = add nsw i32 %.0148.lcssa303, %.0150.lcssa301
  %i.fa = add nsw i32 %i.ez, 1
  store i32 %i.fa, ptr %7, align 4, !tbaa !18
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.loopexit
  %.not168 = icmp eq ptr %8, null
  br i1 %.not168, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 %i.bv, ptr %8, align 4, !tbaa !18
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.not169 = icmp eq ptr %9, null
  br i1 %.not169, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 %.0150.lcssa301, ptr %9, align 4, !tbaa !18
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %._crit_edge206
  %.0156 = phi i32 [ 0, %._crit_edge206 ], [ 1, %bb.o ], [ 1, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %.0156
}

; Function Attrs: nounwind uwtable
define noundef i32 @Dau_DecVerify(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 {
bb.a:
  %i.a = alloca [8192 x i64], align 16            ; 9 uses
  %i.b = alloca [8192 x i64], align 16            ; 8 uses
  %i.c = alloca [8192 x i64], align 16            ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.d = add nsw i32 %1, 1
  %i.e = icmp slt i32 %1, 6
  %i.f = add nsw i32 %1, -5
  %i.g = shl nuw i32 1, %i.f
  %i.h = select i1 %i.e, i32 1, i32 %i.g
  %i.i = icmp slt i32 %1, 7
  %i.j = add nsw i32 %1, -6
  %i.k = shl nuw i32 1, %i.j
  %i.l = select i1 %i.i, i32 1, i32 %i.k          ; 6 uses
  %i.m = tail call ptr @Dau_DsdToTruth(ptr noundef %2, i32 noundef %i.d) #20
  %i.n = sext i32 %i.h to i64
  %i.o = shl nsw i64 %i.n, 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.m, i64 %i.o, i1 false)
  %i.p = tail call ptr @Dau_DsdToTruth(ptr noundef %3, i32 noundef %1) #20
  %i.q = sext i32 %i.l to i64                     ; 2 uses
  %i.r = shl nsw i64 %i.q, 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(1) %i.p, i64 %i.r, i1 false)
  %i.s = icmp sgt i32 %1, 5
  br i1 %i.s, label %bb.b, label %.lr.ph.preheader.i21

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.q ; 4 uses
  %i.u = icmp sgt i32 %i.l, 0
  br i1 %i.u, label %.lr.ph.preheader.i, label %Abc_TtEqual.exit.thread

.lr.ph.preheader.i:                               ; preds = %bb.b
  %wide.trip.count.i = zext nneg i32 %i.l to i64  ; 5 uses
  %min.iters.check = icmp ult i32 %i.l, 4
  br i1 %min.iters.check, label %.lr.ph.i, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 2147483644
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %wide.load = load <2 x i64>, ptr %i.v, align 16, !tbaa !20 ; 2 uses
  %wide.load39 = load <2 x i64>, ptr %i.w, align 16, !tbaa !20 ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %wide.load40 = load <2 x i64>, ptr %i.x, align 8, !tbaa !20
  %wide.load41 = load <2 x i64>, ptr %i.y, align 8, !tbaa !20
  %i.z = and <2 x i64> %wide.load40, %wide.load
  %i.aa = and <2 x i64> %wide.load41, %wide.load39
  %i.ab = xor <2 x i64> %wide.load, splat (i64 -1)
  %i.ac = xor <2 x i64> %wide.load39, splat (i64 -1)
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %wide.load42 = load <2 x i64>, ptr %i.ad, align 16, !tbaa !20
  %wide.load43 = load <2 x i64>, ptr %i.ae, align 16, !tbaa !20
  %i.af = and <2 x i64> %wide.load42, %i.ab
  %i.ag = and <2 x i64> %wide.load43, %i.ac
  %i.ah = or <2 x i64> %i.af, %i.z
  %i.ai = or <2 x i64> %i.ag, %i.aa
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store <2 x i64> %i.ah, ptr %i.aj, align 16, !tbaa !20
  store <2 x i64> %i.ai, ptr %i.ak, align 16, !tbaa !20
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %.lr.ph.preheader.i28, label %vector.body, !llvm.loop !84

.lr.ph.i:                                         ; preds = %.lr.ph.preheader.i
  %i.am = load i64, ptr %i.b, align 16, !tbaa !20 ; 2 uses
  %i.an = load i64, ptr %i.t, align 8, !tbaa !20
  %i.ao = and i64 %i.an, %i.am
  %i.ap = xor i64 %i.am, -1
  %i.aq = load i64, ptr %i.a, align 16, !tbaa !20
  %i.ar = and i64 %i.aq, %i.ap
  %i.as = or i64 %i.ar, %i.ao
  store i64 %i.as, ptr %i.c, align 16, !tbaa !20
  %exitcond.not.i = icmp eq i32 %i.l, 1
  br i1 %exitcond.not.i, label %.lr.ph.preheader.i28, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.au = load i64, ptr %i.at, align 8, !tbaa !20 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !20
  %i.ax = and i64 %i.aw, %i.au
  %i.ay = xor i64 %i.au, -1
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !20
  %i.bb = and i64 %i.ba, %i.ay
  %i.bc = or i64 %i.bb, %i.ax
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !20
  %exitcond.not.i.1 = icmp eq i32 %i.l, 2
  br i1 %exitcond.not.i.1, label %.lr.ph.preheader.i28, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bf = load i64, ptr %i.be, align 16, !tbaa !20 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !20
  %i.bi = and i64 %i.bh, %i.bf
  %i.bj = xor i64 %i.bf, -1
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bl = load i64, ptr %i.bk, align 16, !tbaa !20
  %i.bm = and i64 %i.bl, %i.bj
  %i.bn = or i64 %i.bm, %i.bi
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.bn, ptr %i.bo, align 16, !tbaa !20
  br label %.lr.ph.preheader.i28

.lr.ph.preheader.i21:                             ; preds = %bb.a
  %i.bp = load i64, ptr %i.a, align 16, !tbaa !20 ; 8 uses
  %i.bq = icmp eq i32 %1, 0                       ; 2 uses
  %i.br = trunc i64 %i.bp to i1
  %i.bs = select i1 %i.br, i64 3, i64 0
  %i.bt = icmp samesign ult i32 %1, 2             ; 2 uses
  %i.bu = and i64 %i.bp, 3
  %i.bv = select i1 %i.bq, i64 %i.bs, i64 %i.bu
  %i.bw = mul nuw nsw i64 %i.bv, 5
  %.126.i = select i1 %i.bt, i64 %i.bw, i64 %i.bp
  %i.bx = icmp samesign ult i32 %1, 3             ; 2 uses
  %i.by = and i64 %.126.i, 15
  %i.bz = mul nuw nsw i64 %i.by, 17
  %.227.i = select i1 %i.bx, i64 %i.bz, i64 %i.bp
  %i.ca = icmp samesign ult i32 %1, 4             ; 2 uses
  %i.cb = and i64 %.227.i, 255
  %i.cc = mul nuw nsw i64 %i.cb, 257
  %.328.i = select i1 %i.ca, i64 %i.cc, i64 %i.bp
  %i.cd = icmp samesign ult i32 %1, 5             ; 2 uses
  %i.ce = and i64 %.328.i, 65535
  %i.cf = mul nuw nsw i64 %i.ce, 65537
  %.429.i = select i1 %i.cd, i64 %i.cf, i64 %i.bp
  %i.cg = icmp ult i32 %1, 6                      ; 2 uses
  %i.ch = and i64 %.429.i, 4294967295
  %i.ci = mul nuw i64 %i.ch, 4294967297
  %.5.i = select i1 %i.cg, i64 %i.ci, i64 %i.bp
  %i.cj = shl nuw nsw i32 1, %1
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = lshr i64 %i.bp, %i.ck                   ; 7 uses
  %i.cm = trunc i64 %i.cl to i1
  %i.cn = select i1 %i.cm, i64 3, i64 0
  %i.co = and i64 %i.cl, 3
  %i.cp = select i1 %i.bq, i64 %i.cn, i64 %i.co
  %i.cq = mul nuw nsw i64 %i.cp, 5
  %.126.i16 = select i1 %i.bt, i64 %i.cq, i64 %i.cl
  %i.cr = and i64 %.126.i16, 15
  %i.cs = mul nuw nsw i64 %i.cr, 17
  %.227.i17 = select i1 %i.bx, i64 %i.cs, i64 %i.cl
  %i.ct = and i64 %.227.i17, 255
  %i.cu = mul nuw nsw i64 %i.ct, 257
  %.328.i18 = select i1 %i.ca, i64 %i.cu, i64 %i.cl
  %i.cv = and i64 %.328.i18, 65535
  %i.cw = mul nuw nsw i64 %i.cv, 65537
  %.429.i19 = select i1 %i.cd, i64 %i.cw, i64 %i.cl
  %i.cx = and i64 %.429.i19, 4294967295
  %i.cy = mul nuw i64 %i.cx, 4294967297
  %.5.i20 = select i1 %i.cg, i64 %i.cy, i64 %i.cl
  %i.cz = load i64, ptr %i.b, align 16, !tbaa !20 ; 2 uses
  %i.da = and i64 %.5.i20, %i.cz
  %i.db = xor i64 %i.cz, -1
  %i.dc = and i64 %.5.i, %i.db
  %i.dd = or i64 %i.dc, %i.da
  store i64 %i.dd, ptr %i.c, align 16, !tbaa !20
  br label %.lr.ph.preheader.i28

.lr.ph.preheader.i28:                             ; preds = %vector.body, %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.preheader.i21
  %wide.trip.count.i29.pre-phi = phi i64 [ 1, %.lr.ph.preheader.i21 ], [ %wide.trip.count.i, %.lr.ph.i ], [ %wide.trip.count.i, %.lr.ph.i.2 ], [ %wide.trip.count.i, %.lr.ph.i.1 ], [ %wide.trip.count.i, %vector.body ]
  br label %.lr.ph.i30

bb.c:                                             ; preds = %.lr.ph.i30
  %indvars.iv.next.i32 = add nuw nsw i64 %indvars.iv.i31, 1 ; 2 uses
  %exitcond.not.i33 = icmp eq i64 %indvars.iv.next.i32, %wide.trip.count.i29.pre-phi
  br i1 %exitcond.not.i33, label %Abc_TtEqual.exit.thread, label %.lr.ph.i30, !llvm.loop !85

.lr.ph.i30:                                       ; preds = %bb.c, %.lr.ph.preheader.i28
  %indvars.iv.i31 = phi i64 [ 0, %.lr.ph.preheader.i28 ], [ %indvars.iv.next.i32, %bb.c ] ; 3 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i31
  %i.df = load i64, ptr %i.de, align 8, !tbaa !20
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i31
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !20
  %.not.i = icmp eq i64 %i.df, %i.dh
  br i1 %.not.i, label %bb.c, label %Abc_TtEqual.exit

Abc_TtEqual.exit:                                 ; preds = %.lr.ph.i30
  %i.di = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7) ; 0 uses
  br label %Abc_TtEqual.exit.thread

Abc_TtEqual.exit.thread:                          ; preds = %bb.c, %bb.b, %Abc_TtEqual.exit
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 1
}

declare ptr @Dau_DsdToTruth(ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @Dau_DecPerform6(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #10 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca [1000 x i8], align 16             ; 8 uses
  %i.e = alloca [1000 x i8], align 16             ; 8 uses
  %i.f = alloca [16 x i32], align 16              ; 4 uses
  %i.g = alloca [16 x i32], align 16              ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %i.j = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 0, ptr %i.a, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #20
  %i.k = call i32 @Dau_DecDecomposeSet(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j)
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.b, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  br label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.l = load i32, ptr %i.i, align 4, !tbaa !18   ; 2 uses
  %i.m = load i32, ptr %i.j, align 4, !tbaa !18
  %.fr88 = freeze i32 %i.m                        ; 6 uses
  %i.n = load i32, ptr %i.h, align 4, !tbaa !18   ; 3 uses
  %i.o = load i64, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.p = add i32 %i.n, -1                         ; 2 uses
  %i.q = sext i32 %i.p to i64                     ; 2 uses
  %i.r = getelementptr inbounds [8 x i8], ptr @s_Truths6Neg, i64 %i.q
  %i.s = load i64, ptr %i.r, align 8, !tbaa !20
  %i.t = and i64 %i.s, %i.o                       ; 2 uses
  %i.u = shl nuw i32 1, %i.p
  %i.v = zext nneg i32 %i.u to i64                ; 2 uses
  %i.w = shl i64 %i.t, %i.v
  %i.x = or i64 %i.w, %i.t                        ; 2 uses
  %i.y = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.q
  %i.z = load i64, ptr %i.y, align 8, !tbaa !20   ; 3 uses
  %i.aa = and i64 %i.z, %i.o                      ; 2 uses
  %i.ab = lshr i64 %i.aa, %i.v
  %i.ac = or i64 %i.ab, %i.aa                     ; 2 uses
  %i.ad = shl nuw i32 1, %.fr88                   ; 3 uses
  %i.ae = shl nuw i32 1, %i.ad
  %i.af = xor i32 %.fr88, -1
  %i.ag = add i32 %i.n, %i.af
  %i.ah = sub nsw i32 %i.l, %.fr88
  %.not87 = icmp eq i32 %.fr88, 31
  %i.ai = icmp sgt i32 %.fr88, 0
  %i.aj = xor i64 %i.z, -1
  %i.ak = load i64, ptr %i.c, align 8
  %smax = call i32 @llvm.smax.i32(i32 %i.ad, i32 1) ; 3 uses
  %i.al = sext i32 %i.ag to i64                   ; 2 uses
  %i.am = sext i32 %i.ah to i64                   ; 2 uses
  %smax95 = call i32 @llvm.smax.i32(i32 %i.ae, i32 1)
  %wide.trip.count = zext nneg i32 %.fr88 to i64
  %invariant.gep = getelementptr [8 x i8], ptr @s_Truths6, i64 %i.al
  %invariant.gep104 = getelementptr [8 x i8], ptr @s_Truths6, i64 %i.am
  %invariant.gep106 = getelementptr [8 x i8], ptr @s_Truths6, i64 %i.al
  %invariant.gep108 = getelementptr [8 x i8], ptr @s_Truths6, i64 %i.am
  %xtraiter = and i32 %smax, 3                    ; 3 uses
  %i.an = icmp slt i32 %i.ad, 4
  %unroll_iter = and i32 %smax, 2147483644
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod116 = icmp ne i32 %xtraiter, 0
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.l
  %.04985 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.l ] ; 3 uses
  %.05282 = phi i32 [ 0, %.lr.ph ], [ %i.do, %bb.l ] ; 8 uses
  %i.ao = and i32 %.05282, 1
  %.not58 = icmp eq i32 %i.ao, 0
  br i1 %.not58, label %.preheader68, label %bb.l

.preheader68:                                     ; preds = %bb.c
  br i1 %.not87, label %._crit_edge78, label %.lr.ph77

.lr.ph77:                                         ; preds = %.preheader68
  br i1 %i.ai, label %.lr.ph77.split.us, label %.lr.ph77.split.preheader

.lr.ph77.split.preheader:                         ; preds = %.lr.ph77
  br i1 %i.an, label %.lr.ph77.split.epil.preheader, label %.lr.ph77.split

.lr.ph77.split.us:                                ; preds = %.lr.ph77, %bb.g
  %.05175.us = phi i32 [ %i.bd, %bb.g ], [ 0, %.lr.ph77 ] ; 3 uses
  %.05374.us = phi i64 [ %.154.us, %bb.g ], [ 0, %.lr.ph77 ] ; 2 uses
  %.05573.us = phi i64 [ %.156.us, %bb.g ], [ 0, %.lr.ph77 ] ; 2 uses
  %i.ap = shl nuw i32 1, %.05175.us
  %i.aq = and i32 %i.ap, %.05282
  %.not59.us = icmp eq i32 %i.aq, 0
  br i1 %.not59.us, label %bb.g, label %.preheader.us

.preheader.us:                                    ; preds = %.lr.ph77.split.us, %bb.f
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.f ], [ 0, %.lr.ph77.split.us ] ; 6 uses
  %.071.us = phi i64 [ %i.bc, %bb.f ], [ -1, %.lr.ph77.split.us ]
  %.04870.us = phi i64 [ %i.bb, %bb.f ], [ -1, %.lr.ph77.split.us ]
  %i.ar = trunc nuw nsw i64 %indvars.iv to i32
  %i.as = shl nuw i32 1, %i.ar
  %i.at = and i32 %i.as, %.05175.us
  %.not60.us = icmp eq i32 %i.at, 0
  br i1 %.not60.us, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.preheader.us
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.au = load i64, ptr %gep, align 8, !tbaa !20
  %gep105 = getelementptr [8 x i8], ptr %invariant.gep104, i64 %indvars.iv
  %i.av = load i64, ptr %gep105, align 8, !tbaa !20
  br label %bb.f

bb.e:                                             ; preds = %.preheader.us
  %gep107 = getelementptr [8 x i8], ptr %invariant.gep106, i64 %indvars.iv
  %i.aw = load i64, ptr %gep107, align 8, !tbaa !20
  %i.ax = xor i64 %i.aw, -1
  %gep109 = getelementptr [8 x i8], ptr %invariant.gep108, i64 %indvars.iv
  %i.ay = load i64, ptr %gep109, align 8, !tbaa !20
  %i.az = xor i64 %i.ay, -1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn.us = phi i64 [ %i.au, %bb.d ], [ %i.ax, %bb.e ]
  %i.ba = phi i64 [ %i.av, %bb.d ], [ %i.az, %bb.e ]
  %i.bb = and i64 %.pn.us, %.04870.us             ; 2 uses
end_hunk_2
