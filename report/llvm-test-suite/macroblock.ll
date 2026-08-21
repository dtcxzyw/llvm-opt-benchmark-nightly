Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/macroblock?download=true
inline.NumInlined: 47
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 93
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 103
begin_hunk_0_@ChromaResidualCoding:bb.a
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !146
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hf, i64 184
  %i.ht = load i32, ptr %i.hs, align 8, !tbaa !49
  %i.hu = sext i32 %i.ht to i64
  %i.hv = getelementptr inbounds [2 x i8], ptr %i.hr, i64 %i.hu
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hf, i64 12624
  %i.hx = getelementptr inbounds nuw [32 x i8], ptr %i.hw, i64 %indvars.iv122
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hf, i64 15544
  %i.hz = load i32, ptr %i.hy, align 8, !tbaa !48
  %i.ia = sext i32 %i.hz to i64
  %i.ib = shl nsw i64 %i.ia, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.hv, ptr nonnull align 8 %i.hx, i64 %i.ib, i1 false)
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 1 ; 2 uses
  %i.ic = load ptr, ptr @img, align 8, !tbaa !8   ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 15548
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !50
  %i.if = sext i32 %i.ie to i64
  %i.ig = icmp slt i64 %indvars.iv.next123, %i.if
  br i1 %i.ig, label %.lr.ph100, label %.loopexit.thread, !llvm.loop !217

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge
  %i.ih = phi i32 [ %i.jg, %.critedge ], [ %i.fb, %.preheader.lr.ph ]
  %i.ii = phi i32 [ %i.jh, %.critedge ], [ %i.gr, %.preheader.lr.ph ] ; 2 uses
  %indvars.iv119 = phi i64 [ %indvars.iv.next120, %.critedge ], [ 0, %.preheader.lr.ph ] ; 4 uses
  %i.ij = icmp sgt i32 %i.ii, 0
  br i1 %i.ij, label %.lr.ph96, label %.critedge

.lr.ph96:                                         ; preds = %.preheader
  %i.ik = load ptr, ptr %i.gm, align 8, !tbaa !41
  %i.il = getelementptr inbounds nuw [32 x i8], ptr %i.gp, i64 %indvars.iv119
  %i.im = getelementptr inbounds nuw [64 x i8], ptr %i.gq, i64 %indvars.iv119
  %.pre = load i32, ptr %i.gn, align 4, !tbaa !53
  %.pre131 = load i32, ptr %i.go, align 8, !tbaa !52
  %i.in = trunc nuw nsw i64 %indvars.iv119 to i32
  %i.io = add nsw i32 %.pre, %i.in
  %i.ip = sext i32 %i.io to i64
  %i.iq = getelementptr inbounds [8 x i8], ptr %i.ik, i64 %i.ip
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !146
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph96, %bb.l
  %indvars.iv116 = phi i64 [ 0, %.lr.ph96 ], [ %indvars.iv.next117, %bb.l ] ; 4 uses
  %i.is = trunc nuw nsw i64 %indvars.iv116 to i32
  %i.it = add nsw i32 %.pre131, %i.is
  %i.iu = sext i32 %i.it to i64
  %i.iv = getelementptr inbounds [2 x i8], ptr %i.ir, i64 %i.iu
  %i.iw = load i16, ptr %i.iv, align 2, !tbaa !179
  %i.ix = zext i16 %i.iw to i32
  %i.iy = getelementptr inbounds nuw [2 x i8], ptr %i.il, i64 %indvars.iv116
  %i.iz = load i16, ptr %i.iy, align 2, !tbaa !179
  %i.ja = zext i16 %i.iz to i32
  %i.jb = sub nsw i32 %i.ix, %i.ja
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %indvars.iv116
  store i32 %i.jb, ptr %i.jc, align 4, !tbaa !4
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1 ; 2 uses
  %i.jd = load i32, ptr %i.gk, align 8, !tbaa !48 ; 2 uses
  %i.je = sext i32 %i.jd to i64
  %i.jf = icmp slt i64 %indvars.iv.next117, %i.je
  br i1 %i.jf, label %bb.l, label %.critedge.loopexit, !llvm.loop !218

.critedge.loopexit:                               ; preds = %bb.l
  %.pre132 = load i32, ptr %i.fd, align 4, !tbaa !50
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.preheader
  %i.jg = phi i32 [ %.pre132, %.critedge.loopexit ], [ %i.ih, %.preheader ] ; 2 uses
  %i.jh = phi i32 [ %i.jd, %.critedge.loopexit ], [ %i.ii, %.preheader ]
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1 ; 2 uses
  %i.ji = sext i32 %i.jg to i64
  %i.jj = icmp slt i64 %indvars.iv.next120, %i.ji
  br i1 %i.jj, label %.preheader, label %.loopexit, !llvm.loop !219

.loopexit:                                        ; preds = %.lr.ph94, %.critedge, %.preheader83
  %i.jk = phi ptr [ %i.fc, %.critedge ], [ %i.fc, %.preheader83 ], [ %i.ge, %.lr.ph94 ] ; 2 uses
  br i1 %i.o, label %.loopexit.thread, label %.loopexit.thread138

.loopexit.thread:                                 ; preds = %.lr.ph100, %.preheader80, %.preheader79.preheader, %.loopexit
  %i.jl = phi ptr [ %i.jk, %.loopexit ], [ %i.fc, %.preheader79.preheader ], [ %i.fc, %.preheader80 ], [ %i.ic, %.lr.ph100 ]
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 20
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !55
  %i.jo = icmp eq i32 %i.jn, 3
  br i1 %i.jo, label %bb.m, label %.thread

bb.m:                                             ; preds = %.loopexit.thread
  %i.jp = load i32, ptr @si_frame_indicator, align 4, !tbaa !4
  %i.jq = icmp ne i32 %i.jp, 0
  %i.jr = load i32, ptr @sp2_frame_indicator, align 4
  %i.js = icmp ne i32 %i.jr, 0
  %or.cond = select i1 %i.jq, i1 true, i1 %i.js
  %i.jt = load i32, ptr %0, align 4, !tbaa !4     ; 2 uses
  %i.ju = trunc nuw nsw i64 %indvars.iv128 to i32 ; 2 uses
  br i1 %or.cond, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.jv = tail call i32 @dct_chroma_sp2(i32 noundef %i.ju, i32 noundef %i.jt) #17
  br label %.thread.sink.split

bb.o:                                             ; preds = %bb.m
  %i.jw = tail call i32 @dct_chroma_sp(i32 noundef %i.ju, i32 noundef %i.jt) #17
  br label %.thread.sink.split

.loopexit.thread138:                              ; preds = %.critedge.preheader, %.preheader.lr.ph, %.loopexit
  %i.jx = phi ptr [ %i.jk, %.loopexit ], [ %i.fc, %.preheader.lr.ph ], [ %i.fc, %.critedge.preheader ] ; 4 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 15256
  %i.jz = load i32, ptr %i.jy, align 8, !tbaa !194
  %.not77 = icmp eq i32 %i.jz, 0
  br i1 %.not77, label %bb.p, label %.thread

bb.p:                                             ; preds = %.loopexit.thread138
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jx, i64 20
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !55
  %.not68 = icmp eq i32 %i.kb, 3
  br i1 %.not68, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jx, i64 14224
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !37
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jx, i64 12
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !10
  %i.kg = sext i32 %i.kf to i64
  %i.kh = getelementptr inbounds [536 x i8], ptr %i.kd, i64 %i.kg
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 72
  %i.kj = load i32, ptr %i.ki, align 8, !tbaa !57
  %i.kk = icmp eq i32 %i.kj, 10
  br i1 %i.kk, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.kl = load i32, ptr %0, align 4, !tbaa !4
  %i.km = trunc nuw nsw i64 %indvars.iv128 to i32
  %i.kn = tail call i32 @dct_chroma(i32 noundef %i.km, i32 noundef %i.kl) #17
  br label %.thread.sink.split

bb.s:                                             ; preds = %bb.q
  %i.ko = load i32, ptr @si_frame_indicator, align 4, !tbaa !4
  %i.kp = icmp ne i32 %i.ko, 0
  %i.kq = load i32, ptr @sp2_frame_indicator, align 4
  %i.kr = icmp ne i32 %i.kq, 0
  %or.cond5 = select i1 %i.kp, i1 true, i1 %i.kr
  %i.ks = load i32, ptr %0, align 4, !tbaa !4     ; 2 uses
  %i.kt = trunc nuw nsw i64 %indvars.iv128 to i32 ; 2 uses
  br i1 %or.cond5, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ku = tail call i32 @dct_chroma_sp2(i32 noundef %i.kt, i32 noundef %i.ks) #17
  br label %.thread.sink.split

bb.u:                                             ; preds = %bb.s
  %i.kv = tail call i32 @dct_chroma_sp(i32 noundef %i.kt, i32 noundef %i.ks) #17
  br label %.thread.sink.split

.thread.sink.split:                               ; preds = %bb.t, %bb.u, %bb.r, %bb.n, %bb.o
  %.sink = phi i32 [ %i.jw, %bb.o ], [ %i.jv, %bb.n ], [ %i.kn, %bb.r ], [ %i.kv, %bb.u ], [ %i.ku, %bb.t ]
  store i32 %.sink, ptr %0, align 4, !tbaa !4
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %.loopexit.thread, %.loopexit.thread138
  br i1 %i.x, label %.preheader85, label %bb.v, !llvm.loop !220

bb.v:                                             ; preds = %.thread
  %i.kw = load i32, ptr %0, align 4, !tbaa !4
  %i.kx = shl i32 %i.kw, 4
  %i.ky = load ptr, ptr @img, align 8, !tbaa !8   ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 14224
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !37
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ky, i64 12
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !10
  %i.ld = sext i32 %i.lc to i64
  %i.le = getelementptr inbounds [536 x i8], ptr %i.la, i64 %i.ld
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 364 ; 2 uses
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !59
  %i.lh = add nsw i32 %i.lg, %i.kx
  store i32 %i.lh, ptr %i.lf, align 4, !tbaa !59
  ret void
}

declare i32 @dct_chroma_sp2(i32 noundef, i32 noundef) local_unnamed_addr #5

declare i32 @dct_chroma_sp(i32 noundef, i32 noundef) local_unnamed_addr #5

declare i32 @dct_chroma(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @IntraChromaPrediction(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i16], align 16              ; 10 uses
  %i.b = alloca [16 x i16], align 16              ; 14 uses
  %3 = alloca %struct.pix_pos, align 4            ; 7 uses
  %4 = alloca [17 x %struct.pix_pos], align 16    ; 88 uses
  %i.c = load ptr, ptr @img, align 8, !tbaa !8    ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 14224
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !10   ; 4 uses
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds [536 x i8], ptr %i.e, i64 %i.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 15544
  %i.k = load i32, ptr %i.j, align 8, !tbaa !48   ; 10 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 15548
  %i.m = load i32, ptr %i.l, align 4, !tbaa !50   ; 17 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 15536
  %i.o = load i32, ptr %i.n, align 8, !tbaa !47
  %i.p = add nsw i32 %i.o, -1
  %.not455 = icmp slt i32 %i.m, 0
  br i1 %.not455, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.q = add nuw i32 %i.m, 1
  %wide.trip.count = zext i32 %i.q to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.r = load ptr, ptr @getNeighbour, align 8, !tbaa !8
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %indvars.iv
  %i.t = trunc i64 %indvars.iv to i32
  %i.u = add i32 %i.t, -1
  call void %i.r(i32 noundef %i.g, i32 noundef -1, i32 noundef %i.u, i32 noundef 1, ptr noundef nonnull %i.s) #17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !221

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.v = load ptr, ptr @getNeighbour, align 8, !tbaa !8
  call void %i.v(i32 noundef %i.g, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef nonnull %3) #17
  %i.w = load i32, ptr %3, align 4, !tbaa !222    ; 2 uses
  %i.x = load i32, ptr %4, align 16, !tbaa !222   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.z = load i32, ptr %i.y, align 8, !tbaa !222  ; 2 uses
  %i.aa = load ptr, ptr @input, align 8, !tbaa !8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 272
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !156
  %.not361 = icmp eq i32 %i.ac, 0
  br i1 %.not361, label %bb.o, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %.not362 = icmp eq i32 %i.w, 0
  br i1 %.not362, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = load ptr, ptr @img, align 8, !tbaa !8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 14240
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !157
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !224
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !4
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.al = phi i32 [ %i.ak, %bb.c ], [ 0, %bb.b ]  ; 2 uses
  %i.am = ashr i32 %i.m, 1                        ; 5 uses
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %.lr.ph460, label %.preheader454

.lr.ph460:                                        ; preds = %bb.d
  %i.ao = load ptr, ptr @img, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 14240 ; 3 uses
  %wide.trip.count566 = zext nneg i32 %i.am to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count566, 1
  %i.aq = icmp eq i32 %i.am, 1
  br i1 %i.aq, label %.epil.preheader, label %.lr.ph460.new

.lr.ph460.new:                                    ; preds = %.lr.ph460
  %unroll_iter = and i64 %wide.trip.count566, 2147483646
  br label %bb.f

.preheader454.loopexit.unr-lcssa:                 ; preds = %bb.j
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader454, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader454.loopexit.unr-lcssa, %.lr.ph460
  %indvars.iv563.epil.init = phi i64 [ 0, %.lr.ph460 ], [ %indvars.iv.next564.1, %.preheader454.loopexit.unr-lcssa ]
  %.sroa.0.0458.epil.init = phi i32 [ 1, %.lr.ph460 ], [ %i.bz, %.preheader454.loopexit.unr-lcssa ]
  %lcmp.mod881 = trunc i32 %i.am to i1
  call void @llvm.assume(i1 %lcmp.mod881)
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %indvars.iv563.epil.init ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load i32, ptr %i.as, align 8, !tbaa !222
  %.not377.epil = icmp eq i32 %i.at, 0
  br i1 %.not377.epil, label %.preheader454, label %bb.e

bb.e:                                             ; preds = %.epil.preheader
  %i.au = load ptr, ptr %i.ap, align 8, !tbaa !157
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 28
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !224
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !4
  %i.ba = and i32 %i.az, %.sroa.0.0458.epil.init
  br label %.preheader454

.preheader454:                                    ; preds = %.preheader454.loopexit.unr-lcssa, %bb.e, %.epil.preheader, %bb.d
  %.sroa.0.0.lcssa = phi i32 [ 1, %bb.d ], [ %i.bz, %.preheader454.loopexit.unr-lcssa ], [ %i.ba, %bb.e ], [ 0, %.epil.preheader ] ; 2 uses
  %i.bb = icmp sgt i32 %i.m, 0
  br i1 %i.bb, label %.lr.ph464, label %._crit_edge465

.lr.ph464:                                        ; preds = %.preheader454
  %i.bc = load ptr, ptr @img, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 14240
  %i.be = zext nneg i32 %i.am to i64
  br label %bb.k

bb.f:                                             ; preds = %bb.j, %.lr.ph460.new
  %indvars.iv563 = phi i64 [ 0, %.lr.ph460.new ], [ %indvars.iv.next564.1, %bb.j ] ; 2 uses
  %.sroa.0.0458 = phi i32 [ 1, %.lr.ph460.new ], [ %i.bz, %bb.j ]
  %niter = phi i64 [ 0, %.lr.ph460.new ], [ %niter.next.1, %bb.j ]
  %i.bf = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %indvars.iv563 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !222
  %.not377 = icmp eq i32 %i.bh, 0
  br i1 %.not377, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bi = load ptr, ptr %i.ap, align 8, !tbaa !157
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 28
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !224
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !4
  %i.bo = and i32 %i.bn, %.sroa.0.0458
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.bp = phi i32 [ %i.bo, %bb.g ], [ 0, %bb.f ]
  %indvars.iv.next564.1 = add nuw nsw i64 %indvars.iv563, 2 ; 3 uses
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %indvars.iv.next564.1 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 16, !tbaa !222
  %.not377.1 = icmp eq i32 %i.br, 0
  br i1 %.not377.1, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bs = load ptr, ptr %i.ap, align 8, !tbaa !157
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !224
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !4
  %i.by = and i32 %i.bx, %i.bp
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bz = phi i32 [ %i.by, %bb.i ], [ 0, %bb.h ]  ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader454.loopexit.unr-lcssa, label %bb.f, !llvm.loop !225

bb.k:                                             ; preds = %.lr.ph464, %bb.m
  %indvars.iv568 = phi i64 [ %i.be, %.lr.ph464 ], [ %indvars.iv.next569, %bb.m ]
  %.sroa.16.0463 = phi i32 [ 1, %.lr.ph464 ], [ %i.cj, %bb.m ]
  %indvars.iv.next569 = add nuw nsw i64 %indvars.iv568, 1 ; 3 uses
  %i.ca = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %indvars.iv.next569 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !222
  %.not376 = icmp eq i32 %i.cb, 0
  br i1 %.not376, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cc = load ptr, ptr %i.bd, align 8, !tbaa !157
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !224
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !4
  %i.ci = and i32 %i.ch, %.sroa.16.0463
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.cj = phi i32 [ %i.ci, %bb.l ], [ 0, %bb.k ]  ; 2 uses
  %i.ck = trunc nuw i64 %indvars.iv.next569 to i32
  %i.cl = icmp sgt i32 %i.m, %i.ck
  br i1 %i.cl, label %bb.k, label %._crit_edge465, !llvm.loop !226

._crit_edge465:                                   ; preds = %bb.m, %.preheader454
  %.sroa.16.0.lcssa = phi i32 [ 1, %.preheader454 ], [ %i.cj, %bb.m ] ; 2 uses
  %.not363 = icmp eq i32 %i.x, 0
  br i1 %.not363, label %bb.o, label %bb.n

bb.n:                                             ; preds = %._crit_edge465
  %i.cm = load ptr, ptr @img, align 8, !tbaa !8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 14240
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !157
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !224
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.co, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !4
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge465, %._crit_edge
  %.0325 = phi i32 [ %i.w, %._crit_edge ], [ %i.al, %._crit_edge465 ], [ %i.al, %bb.n ] ; 3 uses
  %.sroa.16.1 = phi i32 [ %i.z, %._crit_edge ], [ %.sroa.16.0.lcssa, %._crit_edge465 ], [ %.sroa.16.0.lcssa, %bb.n ] ; 3 uses
  %.sroa.0.1 = phi i32 [ %i.z, %._crit_edge ], [ %.sroa.0.0.lcssa, %._crit_edge465 ], [ %.sroa.0.0.lcssa, %bb.n ] ; 3 uses
  %.0324 = phi i32 [ %i.x, %._crit_edge ], [ 0, %._crit_edge465 ], [ %i.ct, %bb.n ] ; 2 uses
  %.not364 = icmp eq ptr %0, null
  br i1 %.not364, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 %.0325, ptr %0, align 4, !tbaa !4
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.not365 = icmp eq ptr %1, null
  br i1 %.not365, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cu = icmp ne i32 %.sroa.0.1, 0
  %i.cv = icmp ne i32 %.sroa.16.1, 0
  %i.cw = select i1 %i.cu, i1 %i.cv, i1 false
  %i.cx = zext i1 %i.cw to i32
  store i32 %i.cx, ptr %1, align 4, !tbaa !4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.not366 = icmp eq ptr %2, null
  br i1 %.not366, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i32 %.0324, ptr %2, align 4, !tbaa !4
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cy = icmp ne i32 %.0325, 0                   ; 5 uses
  %i.cz = icmp ne i32 %.sroa.0.1, 0
  %i.da = icmp ne i32 %.sroa.16.1, 0
  %or.cond8 = select i1 %i.cz, i1 %i.da, i1 false ; 5 uses
  %i.db = sext i32 %i.p to i64                    ; 3 uses
  %i.dc = getelementptr inbounds [32 x i8], ptr @subblk_offset_y, i64 %i.db
  %i.dd = getelementptr inbounds [32 x i8], ptr @subblk_offset_x, i64 %i.db
  %i.de = getelementptr inbounds [64 x i8], ptr @IntraChromaPrediction.block_pos, i64 %i.db
  %.not425 = icmp eq i32 %.0325, 0                ; 24 uses
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %.not427 = icmp eq i32 %.sroa.16.1, 0           ; 12 uses
  %.not374 = icmp eq i32 %.sroa.0.1, 0            ; 12 uses
  %i.dh = sext i32 %i.k to i64                    ; 2 uses
  %i.di = shl nsw i64 %i.dh, 1                    ; 4 uses
  %i.dj = icmp slt i32 %i.m, 1                    ; 6 uses
  %i.dk = icmp slt i32 %i.k, 1                    ; 4 uses
  %i.dl = icmp ne i32 %.0324, 0                   ; 2 uses
  %or.cond15 = select i1 %i.cy, i1 %i.dl, i1 false
  %i.dm = ashr i32 %i.k, 1                        ; 8 uses
  %i.dn = getelementptr [2 x i8], ptr %i.a, i64 %i.dh
  %i.do = getelementptr i8, ptr %i.dn, i64 -2
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dr = add nsw i32 %i.dm, -1
  %i.ds = icmp sgt i32 %i.dm, 1
  %i.dt = add nsw i32 %i.dm, -2
  %i.du = ashr i32 %i.m, 1                        ; 7 uses
  %i.dv = sext i32 %i.m to i64
  %i.dw = getelementptr [2 x i8], ptr %i.b, i64 %i.dv
  %i.dx = getelementptr i8, ptr %i.dw, i64 -2
  %i.dy = add nsw i32 %i.du, -1
  %i.dz = icmp sgt i32 %i.du, 1
  %i.ea = add nsw i32 %i.du, -2
  %i.eb = icmp eq i32 %i.k, 8                     ; 2 uses
  %i.ec = select i1 %i.eb, i32 17, i32 5
  %i.ed = shl nsw i32 %i.k, 1
  %i.ee = select i1 %i.eb, i32 5, i32 6
  %i.ef = icmp eq i32 %i.m, 8                     ; 2 uses
  %i.eg = select i1 %i.ef, i32 17, i32 5
  %i.eh = shl nsw i32 %i.m, 1                     ; 2 uses
  %i.ei = select i1 %i.ef, i32 5, i32 6
  %i.ej = zext nneg i32 %i.dm to i64
  %i.ek = zext nneg i32 %i.dt to i64              ; 2 uses
  %i.el = zext nneg i32 %i.du to i64
  %i.em = zext nneg i32 %i.ea to i64              ; 2 uses
  %wide.trip.count665 = zext i32 %i.m to i64      ; 7 uses
  %wide.trip.count680 = zext i32 %i.k to i64      ; 3 uses
  %wide.trip.count685 = zext i32 %i.dr to i64     ; 3 uses
  %invariant.gep800 = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ej ; 2 uses
  %wide.trip.count690 = zext i32 %i.dy to i64     ; 3 uses
  %invariant.gep802 = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.el ; 2 uses
  %wide.trip.count702 = zext nneg i32 %i.m to i64
  %wide.trip.count696 = zext nneg i32 %i.k to i64
  %i.en = add nsw i64 %wide.trip.count665, -1     ; 3 uses
  %xtraiter882 = and i64 %wide.trip.count665, 1
  %i.eo = icmp eq i64 %i.en, 0
  %unroll_iter885 = and i64 %wide.trip.count665, 2147483646
  %lcmp.mod883.not = icmp eq i64 %xtraiter882, 0
  %lcmp.mod884 = trunc i32 %i.m to i1
  %xtraiter887 = and i64 %wide.trip.count665, 1
  %i.ep = icmp eq i64 %i.en, 0
  %unroll_iter890 = and i64 %wide.trip.count665, 4294967294
  %lcmp.mod888.not = icmp eq i64 %xtraiter887, 0
  %lcmp.mod889 = trunc i32 %i.m to i1
  %brmerge861 = or i1 %i.dk, %i.dj
  %xtraiter893 = and i64 %wide.trip.count665, 3   ; 3 uses
  %i.eq = icmp ult i64 %i.en, 3
  %unroll_iter896 = and i64 %wide.trip.count665, 4294967292
  %lcmp.mod894.not = icmp eq i64 %xtraiter893, 0
  %lcmp.mod895 = icmp ne i64 %xtraiter893, 0
  %min.iters.check839 = icmp ult i32 %i.dm, 9
  %n.vec841 = and i64 %wide.trip.count685, 4294967288 ; 3 uses
  %cmp.n858 = icmp eq i64 %n.vec841, %wide.trip.count685
  %min.iters.check822 = icmp ult i32 %i.du, 9
  %n.vec824 = and i64 %wide.trip.count690, 4294967288 ; 3 uses
  %cmp.n836 = icmp eq i64 %n.vec824, %wide.trip.count690
  %invariant.op909 = sub i32 1, %i.du
  %min.iters.check = icmp ult i32 %i.k, 8
  %n.vec = and i64 %wide.trip.count680, 2147483640 ; 3 uses
  %broadcast.splatinsert815 = insertelement <8 x i32> poison, i32 %i.dm, i64 0
  %broadcast.splat816 = shufflevector <8 x i32> %broadcast.splatinsert815, <8 x i32> poison, <8 x i32> zeroinitializer
  %invariant.op = sub <8 x i32> splat (i32 1), %broadcast.splat816
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count680
  %invariant.op908 = sub i32 1, %i.dm
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.thread410
  %i.er = phi i1 [ true, %bb.u ], [ false, %.thread410 ]
  %indvars.iv704 = phi i64 [ 0, %bb.u ], [ 1, %.thread410 ] ; 7 uses
  %i.es = load ptr, ptr @enc_picture, align 8, !tbaa !72
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 6472
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !206
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %indvars.iv704
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !41 ; 70 uses
  %i.ex = load ptr, ptr @img, align 8, !tbaa !8   ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 15528
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !227
  %i.fa = ashr i32 %i.ez, 1                       ; 2 uses
  %i.fb = icmp sgt i32 %i.fa, 0
  br i1 %i.fb, label %.preheader450.lr.ph, label %._crit_edge487

.preheader450.lr.ph:                              ; preds = %bb.v
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ex, i64 15516
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !228 ; 20 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ex, i64 8528
  %i.ff = getelementptr inbounds nuw [2048 x i8], ptr %i.fe, i64 %indvars.iv704 ; 16 uses
  %wide.trip.count660 = zext nneg i32 %i.fa to i64
  br label %.preheader450

.preheader450:                                    ; preds = %.preheader450.lr.ph, %.thread385.3
  %indvars.iv657 = phi i64 [ 0, %.preheader450.lr.ph ], [ %indvars.iv.next658, %.thread385.3 ] ; 4 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv657 ; 4 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv657 ; 4 uses
  %i.fi = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %indvars.iv657 ; 4 uses
  %i.fj = load i32, ptr %i.df, align 4
  %i.fk = sext i32 %i.fj to i64
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.ew, i64 %i.fk ; 16 uses
  %i.fm = load i32, ptr %i.dg, align 4
  %i.fn = sext i32 %i.fm to i64                   ; 16 uses
  %i.fo = load i8, ptr %i.fg, align 4, !tbaa !69  ; 5 uses
  %i.fp = load i8, ptr %i.fh, align 4, !tbaa !69  ; 5 uses
  %i.fq = load i32, ptr %i.fi, align 16, !tbaa !4
  switch i32 %i.fq, label %.thread385 [
    i32 0, label %bb.w
    i32 1, label %bb.z
    i32 2, label %bb.ad
    i32 3, label %bb.ah
  ]

bb.w:                                             ; preds = %.preheader450
  br i1 %.not425, label %.thread413, label %.preheader438

.preheader438:                                    ; preds = %bb.w
  %i.fr = load ptr, ptr %i.fl, align 8, !tbaa !146
  %i.fs = zext i8 %i.fp to i64
  %i.ft = getelementptr [2 x i8], ptr %i.fr, i64 %i.fn
  %i.fu = getelementptr [2 x i8], ptr %i.ft, i64 %i.fs
  %i.fv = load <4 x i16>, ptr %i.fu, align 2, !tbaa !179
  %i.fw = zext <4 x i16> %i.fv to <4 x i32>
  %i.fx = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.fw) ; 2 uses
  br i1 %.not374, label %.thread382, label %.preheader437

.thread413:                                       ; preds = %bb.w
  br i1 %.not374, label %.thread385, label %.preheader437

.preheader437:                                    ; preds = %.preheader438, %.thread413
  %.1351415.ph = phi i32 [ 0, %.thread413 ], [ %i.fx, %.preheader438 ]
  %i.fy = zext i8 %i.fo to i64                    ; 4 uses
  %i.fz = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %i.fy ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 44
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !229
  %i.gc = sext i32 %i.gb to i64
  %i.gd = getelementptr inbounds [8 x i8], ptr %i.ew, i64 %i.gc
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !146
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fz, i64 40
  %i.gg = load i32, ptr %i.gf, align 8, !tbaa !230
  %i.gh = sext i32 %i.gg to i64
  %i.gi = getelementptr inbounds [2 x i8], ptr %i.ge, i64 %i.gh
  %i.gj = load i16, ptr %i.gi, align 2, !tbaa !179
  %i.gk = zext i16 %i.gj to i32
  %i.gl = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %i.fy ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 68
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !229
  %i.go = sext i32 %i.gn to i64
  %i.gp = getelementptr inbounds [8 x i8], ptr %i.ew, i64 %i.go
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !146
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gl, i64 64
  %i.gs = load i32, ptr %i.gr, align 8, !tbaa !230
  %i.gt = sext i32 %i.gs to i64
  %i.gu = getelementptr inbounds [2 x i8], ptr %i.gq, i64 %i.gt
  %i.gv = load i16, ptr %i.gu, align 2, !tbaa !179
  %i.gw = zext i16 %i.gv to i32
  %i.gx = add nuw nsw i32 %i.gk, %i.gw
  %i.gy = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %i.fy ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 92
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !229
  %i.hb = sext i32 %i.ha to i64
  %i.hc = getelementptr inbounds [8 x i8], ptr %i.ew, i64 %i.hb
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !146
  %i.he = getelementptr inbounds nuw i8, ptr %i.gy, i64 88
  %i.hf = load i32, ptr %i.he, align 8, !tbaa !230
  %i.hg = sext i32 %i.hf to i64
  %i.hh = getelementptr inbounds [2 x i8], ptr %i.hd, i64 %i.hg
  %i.hi = load i16, ptr %i.hh, align 2, !tbaa !179
  %i.hj = zext i16 %i.hi to i32
  %i.hk = add nuw nsw i32 %i.gx, %i.hj
  %i.hl = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %i.fy ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 116
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !229
  %i.ho = sext i32 %i.hn to i64
  %i.hp = getelementptr inbounds [8 x i8], ptr %i.ew, i64 %i.ho
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !146
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hl, i64 112
  %i.hs = load i32, ptr %i.hr, align 8, !tbaa !230
  %i.ht = sext i32 %i.hs to i64
  %i.hu = getelementptr inbounds [2 x i8], ptr %i.hq, i64 %i.ht
  %i.hv = load i16, ptr %i.hu, align 2, !tbaa !179
  %i.hw = zext i16 %i.hv to i32
  %i.hx = add nuw nsw i32 %i.hk, %i.hw            ; 2 uses
  br i1 %.not425, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.preheader437
  %i.hy = add nuw nsw i32 %.1351415.ph, 4
  %i.hz = add nuw nsw i32 %i.hy, %i.hx
  %i.ia = lshr i32 %i.hz, 3
  br label %.thread385

.thread382:                                       ; preds = %.preheader438
  %i.ib = add nuw nsw i32 %i.fx, 2
  %i.ic = lshr i32 %i.ib, 2
  br label %.thread385

bb.y:                                             ; preds = %.preheader437
end_hunk_0
begin_hunk_1_@IntraChromaPrediction:bb.a
  %i.auc = load ptr, ptr %i.aub, align 8, !tbaa !146
  %i.aud = getelementptr inbounds nuw i8, ptr %i.atx, i64 64
  %i.aue = load i32, ptr %i.aud, align 8, !tbaa !230
  %i.auf = sext i32 %i.aue to i64
  %i.aug = getelementptr inbounds [2 x i8], ptr %i.auc, i64 %i.auf
  %i.auh = load i16, ptr %i.aug, align 2, !tbaa !179
  %i.aui = zext i16 %i.auh to i32
  %i.auj = add nuw nsw i32 %i.atw, %i.aui
  %i.auk = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %i.atk ; 2 uses
  %i.aul = getelementptr inbounds nuw i8, ptr %i.auk, i64 92
  %i.aum = load i32, ptr %i.aul, align 4, !tbaa !229
  %i.aun = sext i32 %i.aum to i64
  %i.auo = getelementptr inbounds [8 x i8], ptr %i.ew, i64 %i.aun
  %i.aup = load ptr, ptr %i.auo, align 8, !tbaa !146
  %i.auq = getelementptr inbounds nuw i8, ptr %i.auk, i64 88
  %i.aur = load i32, ptr %i.auq, align 8, !tbaa !230
  %i.aus = sext i32 %i.aur to i64
  %i.aut = getelementptr inbounds [2 x i8], ptr %i.aup, i64 %i.aus
  %i.auu = load i16, ptr %i.aut, align 2, !tbaa !179
  %i.auv = zext i16 %i.auu to i32
  %i.auw = add nuw nsw i32 %i.auj, %i.auv
  %i.aux = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %i.atk ; 2 uses
  %i.auy = getelementptr inbounds nuw i8, ptr %i.aux, i64 116
  %i.auz = load i32, ptr %i.auy, align 4, !tbaa !229
  %i.ava = sext i32 %i.auz to i64
  %i.avb = getelementptr inbounds [8 x i8], ptr %i.ew, i64 %i.ava
  %i.avc = load ptr, ptr %i.avb, align 8, !tbaa !146
  %i.avd = getelementptr inbounds nuw i8, ptr %i.aux, i64 112
  %i.ave = load i32, ptr %i.avd, align 8, !tbaa !230
  %i.avf = sext i32 %i.ave to i64
  %i.avg = getelementptr inbounds [2 x i8], ptr %i.avc, i64 %i.avf
  %i.avh = load i16, ptr %i.avg, align 2, !tbaa !179
  %i.avi = zext i16 %i.avh to i32
  %i.avj = add nuw nsw i32 %i.auw, %i.avi         ; 2 uses
  br i1 %.not425, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %.preheader437.3
  %i.avk = add nuw nsw i32 %.1351415.ph.3, 4
  %i.avl = add nuw nsw i32 %i.avk, %i.avj
  %i.avm = lshr i32 %i.avl, 3
  br label %.thread385.3

bb.bz:                                            ; preds = %.preheader437.3
  %i.avn = add nuw nsw i32 %i.avj, 2
  %i.avo = lshr i32 %i.avn, 2
  br label %.thread385.3

.thread385.3:                                     ; preds = %bb.bz, %bb.by, %.thread413.3, %.thread382.3, %bb.bw, %bb.bv, %bb.bu, %bb.bs, %bb.br, %bb.bq, %bb.bo, %bb.bn, %.thread419.3, %.thread405.3, %.thread385.2
  %.0354.3 = phi i32 [ %i.fd, %.thread385.2 ], [ %i.avm, %bb.by ], [ %i.atj, %.thread382.3 ], [ %i.avo, %bb.bz ], [ %i.fd, %.thread413.3 ], [ %i.aqy, %bb.bv ], [ %i.ata, %bb.bw ], [ %i.fd, %bb.bq ], [ %i.aqi, %bb.br ], [ %i.aqq, %bb.bs ], [ %i.fd, %bb.bu ], [ %i.aoe, %bb.bn ], [ %i.amb, %.thread405.3 ], [ %i.aog, %bb.bo ], [ %i.fd, %.thread419.3 ]
  %i.avp = trunc i32 %.0354.3 to i16
  %i.avq = zext i8 %i.alq to i64                  ; 4 uses
  %i.avr = zext i8 %i.alo to i64                  ; 4 uses
  %i.avs = getelementptr inbounds nuw [32 x i8], ptr %i.ff, i64 %i.avr
  %i.avt = getelementptr inbounds nuw [2 x i8], ptr %i.avs, i64 %i.avq
  %i.avu = insertelement <4 x i16> poison, i16 %i.avp, i64 0
  %i.avv = shufflevector <4 x i16> %i.avu, <4 x i16> poison, <4 x i32> zeroinitializer ; 4 uses
  store <4 x i16> %i.avv, ptr %i.avt, align 2, !tbaa !179
  %i.avw = getelementptr inbounds nuw [32 x i8], ptr %i.ff, i64 %i.avr
  %i.avx = getelementptr inbounds nuw i8, ptr %i.avw, i64 32
  %i.avy = getelementptr inbounds nuw [2 x i8], ptr %i.avx, i64 %i.avq
  store <4 x i16> %i.avv, ptr %i.avy, align 2, !tbaa !179
  %i.avz = getelementptr inbounds nuw [32 x i8], ptr %i.ff, i64 %i.avr
  %i.awa = getelementptr inbounds nuw i8, ptr %i.avz, i64 64
  %i.awb = getelementptr inbounds nuw [2 x i8], ptr %i.awa, i64 %i.avq
  store <4 x i16> %i.avv, ptr %i.awb, align 2, !tbaa !179
  %i.awc = getelementptr inbounds nuw [32 x i8], ptr %i.ff, i64 %i.avr
  %i.awd = getelementptr inbounds nuw i8, ptr %i.awc, i64 96
  %i.awe = getelementptr inbounds nuw [2 x i8], ptr %i.awd, i64 %i.avq
  store <4 x i16> %i.avv, ptr %i.awe, align 2, !tbaa !179
  %indvars.iv.next658 = add nuw nsw i64 %indvars.iv657, 1 ; 2 uses
  %exitcond661.not = icmp eq i64 %indvars.iv.next658, %wide.trip.count660
  br i1 %exitcond661.not, label %._crit_edge487, label %.preheader450, !llvm.loop !231

._crit_edge487:                                   ; preds = %.thread385.3, %bb.v
  br i1 %i.cy, label %bb.ca, label %.loopexit453

bb.ca:                                            ; preds = %._crit_edge487
  %i.awf = load i32, ptr %i.df, align 4, !tbaa !229
  %i.awg = sext i32 %i.awf to i64
  %i.awh = getelementptr inbounds [8 x i8], ptr %i.ew, i64 %i.awg
  %i.awi = load ptr, ptr %i.awh, align 8, !tbaa !146
  %i.awj = load i32, ptr %i.dg, align 4, !tbaa !230
  %i.awk = sext i32 %i.awj to i64
  %i.awl = getelementptr inbounds [2 x i8], ptr %i.awi, i64 %i.awk
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 2 %i.awl, i64 %i.di, i1 false)
  br i1 %i.dj, label %.loopexit453.thread, label %.lr.ph490.preheader

.lr.ph490.preheader:                              ; preds = %bb.ca
  br i1 %i.eo, label %.lr.ph490.epil.preheader, label %.lr.ph490

.lr.ph490:                                        ; preds = %.lr.ph490.preheader, %.lr.ph490
  %indvars.iv662 = phi i64 [ %indvars.iv.next663.1, %.lr.ph490 ], [ 0, %.lr.ph490.preheader ] ; 3 uses
  %niter886 = phi i64 [ %niter886.next.1, %.lr.ph490 ], [ 0, %.lr.ph490.preheader ]
  %i.awm = load ptr, ptr @img, align 8, !tbaa !8
  %i.awn = getelementptr inbounds nuw [2048 x i8], ptr %i.awm, i64 %indvars.iv704
  %i.awo = getelementptr inbounds nuw i8, ptr %i.awn, i64 9552
  %i.awp = getelementptr inbounds nuw [32 x i8], ptr %i.awo, i64 %indvars.iv662
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.awp, ptr nonnull align 16 %i.a, i64 %i.di, i1 false)
  %i.awq = load ptr, ptr @img, align 8, !tbaa !8
  %i.awr = getelementptr inbounds nuw [2048 x i8], ptr %i.awq, i64 %indvars.iv704
  %i.aws = getelementptr inbounds nuw i8, ptr %i.awr, i64 9584
  %i.awt = getelementptr inbounds nuw [32 x i8], ptr %i.aws, i64 %indvars.iv662
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.awt, ptr nonnull align 16 %i.a, i64 %i.di, i1 false)
  %indvars.iv.next663.1 = add nuw nsw i64 %indvars.iv662, 2 ; 2 uses
  %niter886.next.1 = add i64 %niter886, 2         ; 2 uses
  %niter886.ncmp.1 = icmp eq i64 %niter886.next.1, %unroll_iter885
  br i1 %niter886.ncmp.1, label %.loopexit453.thread792.unr-lcssa, label %.lr.ph490, !llvm.loop !232

.loopexit453:                                     ; preds = %._crit_edge487
  br i1 %or.cond8, label %.preheader452, label %.thread410

.loopexit453.thread792.unr-lcssa:                 ; preds = %.lr.ph490
  br i1 %lcmp.mod883.not, label %.loopexit453.thread792, label %.lr.ph490.epil.preheader

.lr.ph490.epil.preheader:                         ; preds = %.loopexit453.thread792.unr-lcssa, %.lr.ph490.preheader
  %indvars.iv662.epil.init = phi i64 [ 0, %.lr.ph490.preheader ], [ %indvars.iv.next663.1, %.loopexit453.thread792.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod884)
  %i.awu = load ptr, ptr @img, align 8, !tbaa !8
  %i.awv = getelementptr inbounds nuw [2048 x i8], ptr %i.awu, i64 %indvars.iv704
  %i.aww = getelementptr inbounds nuw i8, ptr %i.awv, i64 9552
  %i.awx = getelementptr inbounds nuw [32 x i8], ptr %i.aww, i64 %indvars.iv662.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.awx, ptr nonnull align 16 %i.a, i64 %i.di, i1 false)
  br label %.loopexit453.thread792

.loopexit453.thread792:                           ; preds = %.loopexit453.thread792.unr-lcssa, %.lr.ph490.epil.preheader
  br i1 %or.cond8, label %.lr.ph492.preheader, label %.thread410

.loopexit453.thread:                              ; preds = %bb.ca
  br i1 %or.cond8, label %.preheader451, label %.thread410

.preheader452:                                    ; preds = %.loopexit453
  br i1 %i.dj, label %.preheader451, label %.lr.ph492.preheader

.lr.ph492.preheader:                              ; preds = %.loopexit453.thread792, %.preheader452
  br i1 %i.ep, label %.lr.ph492.epil.preheader, label %.lr.ph492

.preheader451:                                    ; preds = %.loopexit453.thread, %.preheader452
  br i1 %brmerge861, label %._crit_edge497.split, label %.preheader449.preheader

.preheader451.thread.unr-lcssa:                   ; preds = %.lr.ph492
  br i1 %lcmp.mod888.not, label %.preheader451.thread, label %.lr.ph492.epil.preheader

.lr.ph492.epil.preheader:                         ; preds = %.preheader451.thread.unr-lcssa, %.lr.ph492.preheader
  %indvars.iv667.epil.init = phi i64 [ 0, %.lr.ph492.preheader ], [ %indvars.iv.next668.1, %.preheader451.thread.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod889)
  %i.awy = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %indvars.iv667.epil.init ; 2 uses
  %i.awz = getelementptr inbounds nuw i8, ptr %i.awy, i64 44
  %i.axa = load i32, ptr %i.awz, align 4, !tbaa !229
  %i.axb = sext i32 %i.axa to i64
  %i.axc = getelementptr inbounds [8 x i8], ptr %i.ew, i64 %i.axb
  %i.axd = load ptr, ptr %i.axc, align 8, !tbaa !146
  %i.axe = getelementptr inbounds nuw i8, ptr %i.awy, i64 40
  %i.axf = load i32, ptr %i.axe, align 8, !tbaa !230
  %i.axg = sext i32 %i.axf to i64
  %i.axh = getelementptr inbounds [2 x i8], ptr %i.axd, i64 %i.axg
  %i.axi = load i16, ptr %i.axh, align 2, !tbaa !179
  %i.axj = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv667.epil.init
  store i16 %i.axi, ptr %i.axj, align 2, !tbaa !179
  br label %.preheader451.thread

.preheader451.thread:                             ; preds = %.preheader451.thread.unr-lcssa, %.lr.ph492.epil.preheader
  br i1 %i.dk, label %._crit_edge497.split, label %.preheader449.preheader

.preheader449.preheader:                          ; preds = %.preheader451, %.preheader451.thread
  %.pn806.a = load ptr, ptr @img, align 8
  %.pn = getelementptr inbounds nuw [2048 x i8], ptr %.pn806.a, i64 %indvars.iv704
  %i.axk = getelementptr inbounds nuw i8, ptr %.pn, i64 9040
  br label %.preheader449

.lr.ph492:                                        ; preds = %.lr.ph492.preheader, %.lr.ph492
  %indvars.iv667 = phi i64 [ %indvars.iv.next668.1, %.lr.ph492 ], [ 0, %.lr.ph492.preheader ] ; 3 uses
  %niter891 = phi i64 [ %niter891.next.1, %.lr.ph492 ], [ 0, %.lr.ph492.preheader ]
  %indvars.iv.next668 = or disjoint i64 %indvars.iv667, 1 ; 2 uses
  %i.axl = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %indvars.iv.next668 ; 2 uses
  %i.axm = getelementptr inbounds nuw i8, ptr %i.axl, i64 20
  %i.axn = load i32, ptr %i.axm, align 4, !tbaa !229
  %i.axo = sext i32 %i.axn to i64
  %i.axp = getelementptr inbounds [8 x i8], ptr %i.ew, i64 %i.axo
  %i.axq = load ptr, ptr %i.axp, align 8, !tbaa !146
  %i.axr = getelementptr inbounds nuw i8, ptr %i.axl, i64 16
  %i.axs = load i32, ptr %i.axr, align 8, !tbaa !230
  %i.axt = sext i32 %i.axs to i64
  %i.axu = getelementptr inbounds [2 x i8], ptr %i.axq, i64 %i.axt
  %i.axv = load i16, ptr %i.axu, align 2, !tbaa !179
  %i.axw = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv667
  store i16 %i.axv, ptr %i.axw, align 4, !tbaa !179
  %indvars.iv.next668.1 = add nuw nsw i64 %indvars.iv667, 2 ; 3 uses
  %i.axx = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %indvars.iv.next668.1 ; 2 uses
  %i.axy = getelementptr inbounds nuw i8, ptr %i.axx, i64 20
  %i.axz = load i32, ptr %i.axy, align 4, !tbaa !229
  %i.aya = sext i32 %i.axz to i64
  %i.ayb = getelementptr inbounds [8 x i8], ptr %i.ew, i64 %i.aya
  %i.ayc = load ptr, ptr %i.ayb, align 8, !tbaa !146
  %i.ayd = getelementptr inbounds nuw i8, ptr %i.axx, i64 16
  %i.aye = load i32, ptr %i.ayd, align 16, !tbaa !230
  %i.ayf = sext i32 %i.aye to i64
  %i.ayg = getelementptr inbounds [2 x i8], ptr %i.ayc, i64 %i.ayf
  %i.ayh = load i16, ptr %i.ayg, align 2, !tbaa !179
  %i.ayi = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next668
  store i16 %i.ayh, ptr %i.ayi, align 2, !tbaa !179
  %niter891.next.1 = add nuw i64 %niter891, 2     ; 2 uses
  %niter891.ncmp.1 = icmp eq i64 %niter891.next.1, %unroll_iter890
  br i1 %niter891.ncmp.1, label %.preheader451.thread.unr-lcssa, label %.lr.ph492, !llvm.loop !233

.preheader449:                                    ; preds = %.preheader449.preheader, %._crit_edge495
  %indvars.iv677 = phi i64 [ 0, %.preheader449.preheader ], [ %indvars.iv.next678, %._crit_edge495 ] ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [2 x i8], ptr %i.axk, i64 %indvars.iv677 ; 5 uses
  br i1 %i.eq, label %.epil.preheader892, label %.preheader449.new

.preheader449.new:                                ; preds = %.preheader449, %.preheader449.new
  %indvars.iv672 = phi i64 [ %indvars.iv.next673.3, %.preheader449.new ], [ 0, %.preheader449 ] ; 6 uses
  %niter897 = phi i64 [ %niter897.next.3, %.preheader449.new ], [ 0, %.preheader449 ]
  %i.ayj = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv672
  %i.ayk = load i16, ptr %i.ayj, align 8, !tbaa !179
  %gep = getelementptr inbounds nuw [32 x i8], ptr %invariant.gep, i64 %indvars.iv672
  store i16 %i.ayk, ptr %gep, align 2, !tbaa !179
  %indvars.iv.next673 = or disjoint i64 %indvars.iv672, 1 ; 2 uses
  %i.ayl = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next673
  %i.aym = load i16, ptr %i.ayl, align 2, !tbaa !179
  %gep.1 = getelementptr inbounds nuw [32 x i8], ptr %invariant.gep, i64 %indvars.iv.next673
  store i16 %i.aym, ptr %gep.1, align 2, !tbaa !179
  %indvars.iv.next673.1 = or disjoint i64 %indvars.iv672, 2 ; 2 uses
  %i.ayn = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next673.1
  %i.ayo = load i16, ptr %i.ayn, align 4, !tbaa !179
  %gep.2 = getelementptr inbounds nuw [32 x i8], ptr %invariant.gep, i64 %indvars.iv.next673.1
  store i16 %i.ayo, ptr %gep.2, align 2, !tbaa !179
  %indvars.iv.next673.2 = or disjoint i64 %indvars.iv672, 3 ; 2 uses
  %i.ayp = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next673.2
  %i.ayq = load i16, ptr %i.ayp, align 2, !tbaa !179
  %gep.3 = getelementptr inbounds nuw [32 x i8], ptr %invariant.gep, i64 %indvars.iv.next673.2
  store i16 %i.ayq, ptr %gep.3, align 2, !tbaa !179
  %indvars.iv.next673.3 = add nuw nsw i64 %indvars.iv672, 4 ; 2 uses
  %niter897.next.3 = add i64 %niter897, 4         ; 2 uses
  %niter897.ncmp.3 = icmp eq i64 %niter897.next.3, %unroll_iter896
  br i1 %niter897.ncmp.3, label %._crit_edge495.unr-lcssa, label %.preheader449.new, !llvm.loop !234

._crit_edge495.unr-lcssa:                         ; preds = %.preheader449.new
  br i1 %lcmp.mod894.not, label %._crit_edge495, label %.epil.preheader892

.epil.preheader892:                               ; preds = %._crit_edge495.unr-lcssa, %.preheader449
  %indvars.iv672.epil.init = phi i64 [ 0, %.preheader449 ], [ %indvars.iv.next673.3, %._crit_edge495.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod895)
  br label %bb.cb

bb.cb:                                            ; preds = %bb.cb, %.epil.preheader892
  %indvars.iv672.epil = phi i64 [ %indvars.iv672.epil.init, %.epil.preheader892 ], [ %indvars.iv.next673.epil, %bb.cb ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader892 ], [ %epil.iter.next, %bb.cb ]
  %i.ayr = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv672.epil
  %i.ays = load i16, ptr %i.ayr, align 2, !tbaa !179
  %gep.epil = getelementptr inbounds nuw [32 x i8], ptr %invariant.gep, i64 %indvars.iv672.epil
  store i16 %i.ays, ptr %gep.epil, align 2, !tbaa !179
  %indvars.iv.next673.epil = add nuw nsw i64 %indvars.iv672.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter893
  br i1 %epil.iter.cmp.not, label %._crit_edge495, label %bb.cb, !llvm.loop !235

._crit_edge495:                                   ; preds = %bb.cb, %._crit_edge495.unr-lcssa
  %indvars.iv.next678 = add nuw nsw i64 %indvars.iv677, 1 ; 2 uses
  %exitcond681.not = icmp eq i64 %indvars.iv.next678, %wide.trip.count680
  br i1 %exitcond681.not, label %._crit_edge497.split, label %.preheader449, !llvm.loop !237

._crit_edge497.split:                             ; preds = %._crit_edge495, %.preheader451, %.preheader451.thread
  br i1 %or.cond15, label %bb.cc, label %.thread410

bb.cc:                                            ; preds = %._crit_edge497.split
  %i.ayt = load i16, ptr %i.do, align 2, !tbaa !179
  %i.ayu = zext i16 %i.ayt to i32                 ; 2 uses
  %i.ayv = load i32, ptr %i.dp, align 4, !tbaa !229
  %i.ayw = sext i32 %i.ayv to i64
  %i.ayx = getelementptr inbounds [8 x i8], ptr %i.ew, i64 %i.ayw
  %i.ayy = load ptr, ptr %i.ayx, align 8, !tbaa !146
  %i.ayz = load i32, ptr %i.dq, align 16, !tbaa !230
  %i.aza = sext i32 %i.ayz to i64
  %i.azb = getelementptr inbounds [2 x i8], ptr %i.ayy, i64 %i.aza
  %i.azc = load i16, ptr %i.azb, align 2, !tbaa !179
  %i.azd = zext i16 %i.azc to i32                 ; 2 uses
  %i.aze = sub nsw i32 %i.ayu, %i.azd
  %i.azf = mul nsw i32 %i.aze, %i.dm              ; 3 uses
  br i1 %i.ds, label %.lr.ph501.preheader, label %._crit_edge502

.lr.ph501.preheader:                              ; preds = %bb.cc
  br i1 %min.iters.check839, label %.lr.ph501.preheader871, label %vector.ph840

vector.ph840:                                     ; preds = %.lr.ph501.preheader
  %i.azg = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.azf, i64 0
  br label %vector.body842

vector.body842:                                   ; preds = %vector.body842, %vector.ph840
  %index843 = phi i64 [ 0, %vector.ph840 ], [ %index.next854, %vector.body842 ] ; 3 uses
  %vec.ind844 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph840 ], [ %vec.ind.next855, %vector.body842 ] ; 3 uses
  %vec.phi845.a = phi <4 x i32> [ %i.azg, %vector.ph840 ], [ %i.azz, %vector.body842 ]
  %vec.phi846 = phi <4 x i32> [ zeroinitializer, %vector.ph840 ], [ %i.baa, %vector.body842 ]
  %i.azh = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep800, i64 %index843 ; 2 uses
  %i.azi = getelementptr inbounds nuw i8, ptr %i.azh, i64 8
  %wide.load848.a = load <4 x i16>, ptr %i.azh, align 2, !tbaa !179
  %wide.load849.a = load <4 x i16>, ptr %i.azi, align 2, !tbaa !179
  %i.azj = zext <4 x i16> %wide.load848.a to <4 x i32>
  %i.azk = zext <4 x i16> %wide.load849.a to <4 x i32>
  %i.azl = sub nsw i64 %i.ek, %index843
  %i.azm = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.azl ; 2 uses
  %i.azn = getelementptr inbounds i8, ptr %i.azm, i64 -6
  %i.azo = getelementptr inbounds i8, ptr %i.azm, i64 -14
  %wide.load850.a = load <4 x i16>, ptr %i.azn, align 2, !tbaa !179
  %wide.load851 = load <4 x i16>, ptr %i.azo, align 2, !tbaa !179
  %reverse852.a = shufflevector <4 x i16> %wide.load850.a, <4 x i16> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse853 = shufflevector <4 x i16> %wide.load851, <4 x i16> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.azp = zext <4 x i16> %reverse852.a to <4 x i32>
  %i.azq = zext <4 x i16> %reverse853 to <4 x i32>
  %i.azr = sub nsw <4 x i32> %i.azj, %i.azp
  %i.azs = sub nsw <4 x i32> %i.azk, %i.azq
  %i.azt = trunc <4 x i64> %vec.ind844 to <4 x i32>
  %i.azu = add <4 x i32> %i.azt, splat (i32 1)
  %i.azv = trunc <4 x i64> %vec.ind844 to <4 x i32>
  %i.azw = add <4 x i32> %i.azv, splat (i32 5)
  %i.azx = mul nsw <4 x i32> %i.azr, %i.azu
  %i.azy = mul nsw <4 x i32> %i.azs, %i.azw
  %i.azz = add <4 x i32> %i.azx, %vec.phi845.a    ; 2 uses
  %i.baa = add <4 x i32> %i.azy, %vec.phi846      ; 2 uses
  %index.next854 = add nuw i64 %index843, 8       ; 2 uses
  %vec.ind.next855 = add nuw <4 x i64> %vec.ind844, splat (i64 8)
  %i.bab = icmp eq i64 %index.next854, %n.vec841
  br i1 %i.bab, label %middle.block856, label %vector.body842, !llvm.loop !238

middle.block856:                                  ; preds = %vector.body842
  %bin.rdx857 = add <4 x i32> %i.baa, %i.azz
  %i.bac = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx857) ; 2 uses
  br i1 %cmp.n858, label %._crit_edge502, label %.lr.ph501.preheader871

.lr.ph501.preheader871:                           ; preds = %.lr.ph501.preheader, %middle.block856
  %indvars.iv682.ph = phi i64 [ 0, %.lr.ph501.preheader ], [ %n.vec841, %middle.block856 ]
  %.0323499.ph = phi i32 [ %i.azf, %.lr.ph501.preheader ], [ %i.bac, %middle.block856 ]
  br label %.lr.ph501

.lr.ph501:                                        ; preds = %.lr.ph501.preheader871, %.lr.ph501
  %indvars.iv682 = phi i64 [ %indvars.iv.next683, %.lr.ph501 ], [ %indvars.iv682.ph, %.lr.ph501.preheader871 ] ; 3 uses
  %.0323499 = phi i32 [ %i.bam, %.lr.ph501 ], [ %.0323499.ph, %.lr.ph501.preheader871 ]
  %indvars.iv.next683 = add nuw nsw i64 %indvars.iv682, 1 ; 3 uses
  %gep801 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep800, i64 %indvars.iv682
  %i.bad = load i16, ptr %gep801, align 2, !tbaa !179
  %i.bae = zext i16 %i.bad to i32
  %i.baf = sub nsw i64 %i.ek, %indvars.iv682
  %i.bag = getelementptr inbounds [2 x i8], ptr %i.a, i64 %i.baf
  %i.bah = load i16, ptr %i.bag, align 2, !tbaa !179
  %i.bai = zext i16 %i.bah to i32
  %i.baj = sub nsw i32 %i.bae, %i.bai
  %i.bak = trunc nuw nsw i64 %indvars.iv.next683 to i32
  %i.bal = mul nsw i32 %i.baj, %i.bak
  %i.bam = add nsw i32 %i.bal, %.0323499          ; 2 uses
  %exitcond686.not = icmp eq i64 %indvars.iv.next683, %wide.trip.count685
  br i1 %exitcond686.not, label %._crit_edge502, label %.lr.ph501, !llvm.loop !241

._crit_edge502:                                   ; preds = %.lr.ph501, %middle.block856, %bb.cc
  %.0323.lcssa = phi i32 [ %i.azf, %bb.cc ], [ %i.bac, %middle.block856 ], [ %i.bam, %.lr.ph501 ]
  %i.ban = load i16, ptr %i.dx, align 2, !tbaa !179
  %i.bao = zext i16 %i.ban to i32                 ; 2 uses
  %i.bap = sub nsw i32 %i.bao, %i.azd
  %i.baq = mul nsw i32 %i.bap, %i.du              ; 3 uses
  br i1 %i.dz, label %.lr.ph507.preheader, label %._crit_edge508

.lr.ph507.preheader:                              ; preds = %._crit_edge502
  br i1 %min.iters.check822, label %.lr.ph507.preheader870, label %vector.ph823

vector.ph823:                                     ; preds = %.lr.ph507.preheader
  %i.bar = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.baq, i64 0
  br label %vector.body825

vector.body825:                                   ; preds = %vector.body825, %vector.ph823
  %index826 = phi i64 [ 0, %vector.ph823 ], [ %index.next833, %vector.body825 ] ; 3 uses
  %vec.ind827 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph823 ], [ %vec.ind.next834, %vector.body825 ] ; 3 uses
  %vec.phi = phi <4 x i32> [ %i.bar, %vector.ph823 ], [ %i.bbk, %vector.body825 ]
  %vec.phi828 = phi <4 x i32> [ zeroinitializer, %vector.ph823 ], [ %i.bbl, %vector.body825 ]
  %i.bas = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep802, i64 %index826 ; 2 uses
  %i.bat = getelementptr inbounds nuw i8, ptr %i.bas, i64 8
  %wide.load = load <4 x i16>, ptr %i.bas, align 2, !tbaa !179
  %wide.load829.a = load <4 x i16>, ptr %i.bat, align 2, !tbaa !179
  %i.bau = zext <4 x i16> %wide.load to <4 x i32>
  %i.bav = zext <4 x i16> %wide.load829.a to <4 x i32>
  %i.baw = sub nsw i64 %i.em, %index826
  %i.bax = getelementptr inbounds [2 x i8], ptr %i.b, i64 %i.baw ; 2 uses
  %i.bay = getelementptr inbounds i8, ptr %i.bax, i64 -6
  %i.baz = getelementptr inbounds i8, ptr %i.bax, i64 -14
  %wide.load830.a = load <4 x i16>, ptr %i.bay, align 2, !tbaa !179
  %wide.load831 = load <4 x i16>, ptr %i.baz, align 2, !tbaa !179
  %reverse = shufflevector <4 x i16> %wide.load830.a, <4 x i16> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse832 = shufflevector <4 x i16> %wide.load831, <4 x i16> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.bba = zext <4 x i16> %reverse to <4 x i32>
  %i.bbb = zext <4 x i16> %reverse832 to <4 x i32>
  %i.bbc = sub nsw <4 x i32> %i.bau, %i.bba
  %i.bbd = sub nsw <4 x i32> %i.bav, %i.bbb
  %i.bbe = trunc <4 x i64> %vec.ind827 to <4 x i32>
  %i.bbf = add <4 x i32> %i.bbe, splat (i32 1)
  %i.bbg = trunc <4 x i64> %vec.ind827 to <4 x i32>
  %i.bbh = add <4 x i32> %i.bbg, splat (i32 5)
  %i.bbi = mul nsw <4 x i32> %i.bbc, %i.bbf
  %i.bbj = mul nsw <4 x i32> %i.bbd, %i.bbh
  %i.bbk = add <4 x i32> %i.bbi, %vec.phi         ; 2 uses
  %i.bbl = add <4 x i32> %i.bbj, %vec.phi828      ; 2 uses
  %index.next833 = add nuw i64 %index826, 8       ; 2 uses
  %vec.ind.next834 = add nuw <4 x i64> %vec.ind827, splat (i64 8)
  %i.bbm = icmp eq i64 %index.next833, %n.vec824
  br i1 %i.bbm, label %middle.block835, label %vector.body825, !llvm.loop !242
end_hunk_1
begin_hunk_2_@IntraChromaPrediction:bb.a
scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv692 = phi i64 [ %indvars.iv.next693, %scalar.ph ], [ %indvars.iv692.ph, %scalar.ph.preheader ] ; 3 uses
  %i.bda = trunc i64 %indvars.iv692 to i32
  %.reass.reass = add i32 %i.bda, %invariant.op908
  %i.bdb = mul nsw i32 %.reass.reass, %i.bcf
  %i.bdc = add i32 %i.bcq, %i.bdb
  %i.bdd = ashr i32 %i.bdc, 5
  %i.bde = call noundef i32 @llvm.smax.i32(i32 %i.bdd, i32 0)
  %i.bdf = call noundef i32 @llvm.smin.i32(i32 %i.bde, i32 %i.bcn)
  %i.bdg = trunc i32 %i.bdf to i16
  %i.bdh = getelementptr inbounds nuw [2 x i8], ptr %i.bcr, i64 %indvars.iv692
  store i16 %i.bdg, ptr %i.bdh, align 2, !tbaa !179
  %indvars.iv.next693 = add nuw nsw i64 %indvars.iv692, 1 ; 2 uses
  %exitcond697.not = icmp eq i64 %indvars.iv.next693, %wide.trip.count696
  br i1 %exitcond697.not, label %._crit_edge512, label %scalar.ph, !llvm.loop !245

._crit_edge512:                                   ; preds = %scalar.ph, %middle.block
  %indvars.iv.next699 = add nuw nsw i64 %indvars.iv698, 1 ; 2 uses
  %exitcond703.not = icmp eq i64 %indvars.iv.next699, %wide.trip.count702
  br i1 %exitcond703.not, label %.thread410, label %.preheader448, !llvm.loop !246

.thread410:                                       ; preds = %._crit_edge512, %.loopexit453.thread792, %.loopexit453.thread, %._crit_edge508, %.preheader448.lr.ph, %.loopexit453, %._crit_edge497.split
  br i1 %i.er, label %bb.v, label %bb.cd, !llvm.loop !247

bb.cd:                                            ; preds = %.thread410
  %i.bdi = load ptr, ptr @input, align 8, !tbaa !8
  %i.bdj = getelementptr inbounds nuw i8, ptr %i.bdi, i64 4168
  %i.bdk = load i32, ptr %i.bdj, align 8, !tbaa !248
  %.not367 = icmp eq i32 %i.bdk, 0
  br i1 %.not367, label %.preheader435, label %bb.co

.preheader435:                                    ; preds = %bb.cd
  br i1 %i.dj, label %.preheader434, label %.lr.ph517.preheader

.lr.ph517.preheader:                              ; preds = %.preheader435
  %wide.trip.count710 = zext nneg i32 %i.m to i64
  br label %.lr.ph517

.preheader434:                                    ; preds = %.lr.ph517, %.preheader435
  %or.cond27 = select i1 %or.cond8, i1 %i.cy, i1 false
  %or.cond29 = select i1 %or.cond27, i1 %i.dl, i1 false
  %brmerge = select i1 %i.dj, i1 true, i1 %i.dk
  br label %bb.ce

.lr.ph517:                                        ; preds = %.lr.ph517.preheader, %.lr.ph517
  %indvars.iv707 = phi i64 [ 0, %.lr.ph517.preheader ], [ %indvars.iv.next708, %.lr.ph517 ] ; 3 uses
  %i.bdl = load ptr, ptr @getNeighbour, align 8, !tbaa !8
  %i.bdm = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %indvars.iv707
  %i.bdn = trunc nuw nsw i64 %indvars.iv707 to i32
  call void %i.bdl(i32 noundef %i.g, i32 noundef 0, i32 noundef %i.bdn, i32 noundef 1, ptr noundef nonnull %i.bdm) #17
  %indvars.iv.next708 = add nuw nsw i64 %indvars.iv707, 1 ; 2 uses
  %exitcond711.not = icmp eq i64 %indvars.iv.next708, %wide.trip.count710
  br i1 %exitcond711.not, label %.preheader434, label %.lr.ph517, !llvm.loop !249

bb.ce:                                            ; preds = %.preheader434, %bb.cm
  %indvars.iv754 = phi i64 [ 0, %.preheader434 ], [ %indvars.iv.next755, %bb.cm ] ; 7 uses
  %.0314541 = phi i32 [ 2147483647, %.preheader434 ], [ %.1, %bb.cm ] ; 6 uses
  %.0317540 = phi i32 [ 0, %.preheader434 ], [ %.1318, %bb.cm ] ; 5 uses
  %i.bdo = load ptr, ptr @img, align 8, !tbaa !8
  %i.bdp = getelementptr inbounds nuw i8, ptr %i.bdo, i64 20
  %i.bdq = load i32, ptr %i.bdp, align 4, !tbaa !55
  %.not368 = icmp eq i32 %i.bdq, 2
  %.pre = load ptr, ptr @input, align 8, !tbaa !8 ; 2 uses
  br i1 %.not368, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.bdr = getelementptr inbounds nuw i8, ptr %.pre, i64 4048
  %i.bds = load i32, ptr %i.bdr, align 8, !tbaa !250
  %.not369 = icmp eq i32 %i.bds, 0
  br i1 %.not369, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %i.bdt = getelementptr inbounds nuw i8, ptr %.pre, i64 4072
  %i.bdu = load i32, ptr %i.bdt, align 8, !tbaa !251
  %i.bdv = icmp ne i32 %i.bdu, 1
  %i.bdw = icmp eq i64 %indvars.iv754, 0
  %or.cond17.not544 = or i1 %i.bdw, %i.bdv
  %i.bdx = icmp ne i64 %indvars.iv754, 2
  %or.cond19 = select i1 %i.bdx, i1 true, i1 %i.cy
  %or.cond = select i1 %or.cond17.not544, i1 %or.cond19, i1 false
  br i1 %or.cond, label %bb.ci, label %bb.cm

bb.ch:                                            ; preds = %bb.cf
  %.old = icmp ne i64 %indvars.iv754, 2
  %or.cond19.old = select i1 %.old, i1 true, i1 %i.cy
  br i1 %or.cond19.old, label %bb.ci, label %bb.cm

bb.ci:                                            ; preds = %bb.cg, %bb.ch
  %i.bdy = trunc nuw nsw i64 %indvars.iv754 to i32 ; 2 uses
  switch i32 %i.bdy, label %bb.cl [
    i32 1, label %bb.cj
    i32 3, label %bb.ck
  ]

bb.cj:                                            ; preds = %bb.ci
  br i1 %or.cond8, label %bb.cl, label %bb.cm

bb.ck:                                            ; preds = %bb.ci
  br i1 %or.cond29, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.cj, %bb.ci, %bb.ck
  br i1 %brmerge, label %.split537.us, label %.preheader433.lr.ph.us.us.preheader

.preheader433.lr.ph.us.us.preheader:              ; preds = %bb.cl
  %i.bdz = load ptr, ptr @imgUV_org, align 8, !tbaa !43
  %i.bea = load ptr, ptr %i.bdz, align 8, !tbaa !41 ; 4 uses
  br label %.preheader433.us.us.us

.preheader433.us.us.us:                           ; preds = %._crit_edge524.us.us.us, %.preheader433.lr.ph.us.us.preheader
  %indvars.iv727 = phi i64 [ %indvars.iv.next728, %._crit_edge524.us.us.us ], [ 0, %.preheader433.lr.ph.us.us.preheader ] ; 6 uses
  %.1316527.us.us.us = phi i32 [ %i.bgz, %._crit_edge524.us.us.us ], [ 0, %.preheader433.lr.ph.us.us.preheader ]
  %i.beb = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %indvars.iv727 ; 2 uses
  %i.bec = getelementptr inbounds nuw i8, ptr %i.beb, i64 20
  %i.bed = getelementptr inbounds nuw i8, ptr %i.beb, i64 16
  %indvars.iv.next730 = or disjoint i64 %indvars.iv727, 1 ; 2 uses
  %i.bee = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %indvars.iv.next730 ; 2 uses
  %i.bef = getelementptr inbounds nuw i8, ptr %i.bee, i64 20
  %i.beg = getelementptr inbounds nuw i8, ptr %i.bee, i64 16
  %indvars.iv.next730.1 = or disjoint i64 %indvars.iv727, 2 ; 2 uses
  %i.beh = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %indvars.iv.next730.1 ; 2 uses
  %i.bei = getelementptr inbounds nuw i8, ptr %i.beh, i64 20
  %i.bej = getelementptr inbounds nuw i8, ptr %i.beh, i64 16
  %indvars.iv.next730.2 = or disjoint i64 %indvars.iv727, 3 ; 2 uses
  %i.bek = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %indvars.iv.next730.2 ; 2 uses
  %i.bel = getelementptr inbounds nuw i8, ptr %i.bek, i64 20
  %i.bem = getelementptr inbounds nuw i8, ptr %i.bek, i64 16
  br label %.preheader432.us.us.us

.preheader432.us.us.us:                           ; preds = %.preheader432.us.us.us, %.preheader433.us.us.us
  %indvars.iv714 = phi i64 [ %indvars.iv.next715, %.preheader432.us.us.us ], [ 0, %.preheader433.us.us.us ] ; 9 uses
  %.2523.us.us.us = phi i32 [ %i.bgz, %.preheader432.us.us.us ], [ %.1316527.us.us.us, %.preheader433.us.us.us ]
  %i.ben = load ptr, ptr @img, align 8, !tbaa !8
  %i.beo = getelementptr inbounds nuw i8, ptr %i.ben, i64 8528
  %i.bep = getelementptr inbounds nuw [512 x i8], ptr %i.beo, i64 %indvars.iv754 ; 4 uses
  %i.beq = load i32, ptr %i.bec, align 4, !tbaa !229
  %i.ber = sext i32 %i.beq to i64
  %i.bes = getelementptr inbounds [8 x i8], ptr %i.bea, i64 %i.ber
  %i.bet = load ptr, ptr %i.bes, align 8, !tbaa !146
  %i.beu = load i32, ptr %i.bed, align 16, !tbaa !230
  %i.bev = getelementptr inbounds nuw [32 x i8], ptr %i.bep, i64 %indvars.iv727
  %i.bew = sext i32 %i.beu to i64
  %i.bex = getelementptr [2 x i8], ptr %i.bet, i64 %indvars.iv714
  %i.bey = getelementptr [2 x i8], ptr %i.bex, i64 %i.bew
  %i.bez = getelementptr inbounds nuw [2 x i8], ptr %i.bev, i64 %indvars.iv714
  %i.bfa = load <4 x i16>, ptr %i.bey, align 2, !tbaa !179
  %i.bfb = zext <4 x i16> %i.bfa to <4 x i32>
  %i.bfc = load <4 x i16>, ptr %i.bez, align 2, !tbaa !179
  %i.bfd = zext <4 x i16> %i.bfc to <4 x i32>
  %i.bfe = sub nsw <4 x i32> %i.bfb, %i.bfd
  store <4 x i32> %i.bfe, ptr @diff, align 16, !tbaa !4
  %i.bff = load i32, ptr %i.bef, align 4, !tbaa !229
  %i.bfg = sext i32 %i.bff to i64
  %i.bfh = getelementptr inbounds [8 x i8], ptr %i.bea, i64 %i.bfg
  %i.bfi = load ptr, ptr %i.bfh, align 8, !tbaa !146
  %i.bfj = load i32, ptr %i.beg, align 8, !tbaa !230
  %i.bfk = getelementptr inbounds nuw [32 x i8], ptr %i.bep, i64 %indvars.iv.next730
  %i.bfl = sext i32 %i.bfj to i64
  %i.bfm = getelementptr [2 x i8], ptr %i.bfi, i64 %indvars.iv714
  %i.bfn = getelementptr [2 x i8], ptr %i.bfm, i64 %i.bfl
  %i.bfo = getelementptr inbounds nuw [2 x i8], ptr %i.bfk, i64 %indvars.iv714
  %i.bfp = load <4 x i16>, ptr %i.bfn, align 2, !tbaa !179
  %i.bfq = zext <4 x i16> %i.bfp to <4 x i32>
  %i.bfr = load <4 x i16>, ptr %i.bfo, align 2, !tbaa !179
  %i.bfs = zext <4 x i16> %i.bfr to <4 x i32>
  %i.bft = sub nsw <4 x i32> %i.bfq, %i.bfs
  store <4 x i32> %i.bft, ptr getelementptr inbounds nuw (i8, ptr @diff, i64 16), align 16, !tbaa !4
  %i.bfu = load i32, ptr %i.bei, align 4, !tbaa !229
  %i.bfv = sext i32 %i.bfu to i64
  %i.bfw = getelementptr inbounds [8 x i8], ptr %i.bea, i64 %i.bfv
  %i.bfx = load ptr, ptr %i.bfw, align 8, !tbaa !146
  %i.bfy = load i32, ptr %i.bej, align 16, !tbaa !230
  %i.bfz = getelementptr inbounds nuw [32 x i8], ptr %i.bep, i64 %indvars.iv.next730.1
  %i.bga = sext i32 %i.bfy to i64
  %i.bgb = getelementptr [2 x i8], ptr %i.bfx, i64 %indvars.iv714
  %i.bgc = getelementptr [2 x i8], ptr %i.bgb, i64 %i.bga
  %i.bgd = getelementptr inbounds nuw [2 x i8], ptr %i.bfz, i64 %indvars.iv714
  %i.bge = load <4 x i16>, ptr %i.bgc, align 2, !tbaa !179
  %i.bgf = zext <4 x i16> %i.bge to <4 x i32>
  %i.bgg = load <4 x i16>, ptr %i.bgd, align 2, !tbaa !179
  %i.bgh = zext <4 x i16> %i.bgg to <4 x i32>
  %i.bgi = sub nsw <4 x i32> %i.bgf, %i.bgh
  store <4 x i32> %i.bgi, ptr getelementptr inbounds nuw (i8, ptr @diff, i64 32), align 16, !tbaa !4
  %i.bgj = load i32, ptr %i.bel, align 4, !tbaa !229
  %i.bgk = sext i32 %i.bgj to i64
  %i.bgl = getelementptr inbounds [8 x i8], ptr %i.bea, i64 %i.bgk
  %i.bgm = load ptr, ptr %i.bgl, align 8, !tbaa !146
  %i.bgn = load i32, ptr %i.bem, align 8, !tbaa !230
  %i.bgo = getelementptr inbounds nuw [32 x i8], ptr %i.bep, i64 %indvars.iv.next730.2
  %i.bgp = sext i32 %i.bgn to i64
  %i.bgq = getelementptr [2 x i8], ptr %i.bgm, i64 %indvars.iv714
  %i.bgr = getelementptr [2 x i8], ptr %i.bgq, i64 %i.bgp
  %i.bgs = getelementptr inbounds nuw [2 x i8], ptr %i.bgo, i64 %indvars.iv714
  %i.bgt = load <4 x i16>, ptr %i.bgr, align 2, !tbaa !179
  %i.bgu = zext <4 x i16> %i.bgt to <4 x i32>
  %i.bgv = load <4 x i16>, ptr %i.bgs, align 2, !tbaa !179
  %i.bgw = zext <4 x i16> %i.bgv to <4 x i32>
  %i.bgx = sub nsw <4 x i32> %i.bgu, %i.bgw
  store <4 x i32> %i.bgx, ptr getelementptr inbounds nuw (i8, ptr @diff, i64 48), align 16, !tbaa !4
  %i.bgy = call i32 @distortion4x4(ptr noundef nonnull @diff) #17
  %i.bgz = add nsw i32 %i.bgy, %.2523.us.us.us    ; 3 uses
  %indvars.iv.next715 = add nuw i64 %indvars.iv714, 4 ; 2 uses
  %indvars = trunc i64 %indvars.iv.next715 to i32
  %5 = icmp sgt i32 %i.k, %indvars
  br i1 %5, label %.preheader432.us.us.us, label %._crit_edge524.us.us.us, !llvm.loop !252

._crit_edge524.us.us.us:                          ; preds = %.preheader432.us.us.us
  %indvars.iv.next728 = add nuw i64 %indvars.iv727, 4 ; 2 uses
  %indvars743 = trunc i64 %indvars.iv.next728 to i32
  %i.bha = icmp sgt i32 %i.m, %indvars743
  br i1 %i.bha, label %.preheader433.us.us.us, label %._crit_edge528.split.us.us.us, !llvm.loop !253

._crit_edge528.split.us.us.us:                    ; preds = %._crit_edge524.us.us.us
  %i.bhb = load ptr, ptr @imgUV_org, align 8, !tbaa !43
  %i.bhc = getelementptr inbounds nuw i8, ptr %i.bhb, i64 8
  %i.bhd = load ptr, ptr %i.bhc, align 8, !tbaa !41 ; 4 uses
  br label %.preheader433.us.us.us.1

.preheader433.us.us.us.1:                         ; preds = %._crit_edge524.us.us.us.1, %._crit_edge528.split.us.us.us
  %indvars.iv727.1 = phi i64 [ %indvars.iv.next728.1, %._crit_edge524.us.us.us.1 ], [ 0, %._crit_edge528.split.us.us.us ] ; 6 uses
  %.1316527.us.us.us.1 = phi i32 [ %i.bkc, %._crit_edge524.us.us.us.1 ], [ %i.bgz, %._crit_edge528.split.us.us.us ]
  %i.bhe = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %indvars.iv727.1 ; 2 uses
  %i.bhf = getelementptr inbounds nuw i8, ptr %i.bhe, i64 20
  %i.bhg = getelementptr inbounds nuw i8, ptr %i.bhe, i64 16
  %indvars.iv.next730.1753 = or disjoint i64 %indvars.iv727.1, 1 ; 2 uses
  %i.bhh = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %indvars.iv.next730.1753 ; 2 uses
  %i.bhi = getelementptr inbounds nuw i8, ptr %i.bhh, i64 20
  %i.bhj = getelementptr inbounds nuw i8, ptr %i.bhh, i64 16
  %indvars.iv.next730.1.1 = or disjoint i64 %indvars.iv727.1, 2 ; 2 uses
  %i.bhk = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %indvars.iv.next730.1.1 ; 2 uses
  %i.bhl = getelementptr inbounds nuw i8, ptr %i.bhk, i64 20
  %i.bhm = getelementptr inbounds nuw i8, ptr %i.bhk, i64 16
  %indvars.iv.next730.2.1 = or disjoint i64 %indvars.iv727.1, 3 ; 2 uses
  %i.bhn = getelementptr inbounds nuw [24 x i8], ptr %4, i64 %indvars.iv.next730.2.1 ; 2 uses
  %i.bho = getelementptr inbounds nuw i8, ptr %i.bhn, i64 20
  %i.bhp = getelementptr inbounds nuw i8, ptr %i.bhn, i64 16
  br label %.preheader432.us.us.us.1

.preheader432.us.us.us.1:                         ; preds = %.preheader432.us.us.us.1, %.preheader433.us.us.us.1
  %indvars.iv714.1 = phi i64 [ %indvars.iv.next715.1, %.preheader432.us.us.us.1 ], [ 0, %.preheader433.us.us.us.1 ] ; 9 uses
  %.2523.us.us.us.1 = phi i32 [ %i.bkc, %.preheader432.us.us.us.1 ], [ %.1316527.us.us.us.1, %.preheader433.us.us.us.1 ]
  %i.bhq = load ptr, ptr @img, align 8, !tbaa !8
  %i.bhr = getelementptr inbounds nuw i8, ptr %i.bhq, i64 10576
  %i.bhs = getelementptr inbounds nuw [512 x i8], ptr %i.bhr, i64 %indvars.iv754 ; 4 uses
  %i.bht = load i32, ptr %i.bhf, align 4, !tbaa !229
  %i.bhu = sext i32 %i.bht to i64
  %i.bhv = getelementptr inbounds [8 x i8], ptr %i.bhd, i64 %i.bhu
  %i.bhw = load ptr, ptr %i.bhv, align 8, !tbaa !146
  %i.bhx = load i32, ptr %i.bhg, align 16, !tbaa !230
  %i.bhy = getelementptr inbounds nuw [32 x i8], ptr %i.bhs, i64 %indvars.iv727.1
  %i.bhz = sext i32 %i.bhx to i64
  %i.bia = getelementptr [2 x i8], ptr %i.bhw, i64 %indvars.iv714.1
  %i.bib = getelementptr [2 x i8], ptr %i.bia, i64 %i.bhz
  %i.bic = getelementptr inbounds nuw [2 x i8], ptr %i.bhy, i64 %indvars.iv714.1
  %i.bid = load <4 x i16>, ptr %i.bib, align 2, !tbaa !179
  %i.bie = zext <4 x i16> %i.bid to <4 x i32>
  %i.bif = load <4 x i16>, ptr %i.bic, align 2, !tbaa !179
  %i.big = zext <4 x i16> %i.bif to <4 x i32>
  %i.bih = sub nsw <4 x i32> %i.bie, %i.big
  store <4 x i32> %i.bih, ptr @diff, align 16, !tbaa !4
  %i.bii = load i32, ptr %i.bhi, align 4, !tbaa !229
  %i.bij = sext i32 %i.bii to i64
  %i.bik = getelementptr inbounds [8 x i8], ptr %i.bhd, i64 %i.bij
  %i.bil = load ptr, ptr %i.bik, align 8, !tbaa !146
  %i.bim = load i32, ptr %i.bhj, align 8, !tbaa !230
  %i.bin = getelementptr inbounds nuw [32 x i8], ptr %i.bhs, i64 %indvars.iv.next730.1753
  %i.bio = sext i32 %i.bim to i64
  %i.bip = getelementptr [2 x i8], ptr %i.bil, i64 %indvars.iv714.1
  %i.biq = getelementptr [2 x i8], ptr %i.bip, i64 %i.bio
  %i.bir = getelementptr inbounds nuw [2 x i8], ptr %i.bin, i64 %indvars.iv714.1
  %i.bis = load <4 x i16>, ptr %i.biq, align 2, !tbaa !179
  %i.bit = zext <4 x i16> %i.bis to <4 x i32>
  %i.biu = load <4 x i16>, ptr %i.bir, align 2, !tbaa !179
  %i.biv = zext <4 x i16> %i.biu to <4 x i32>
  %i.biw = sub nsw <4 x i32> %i.bit, %i.biv
  store <4 x i32> %i.biw, ptr getelementptr inbounds nuw (i8, ptr @diff, i64 16), align 16, !tbaa !4
  %i.bix = load i32, ptr %i.bhl, align 4, !tbaa !229
  %i.biy = sext i32 %i.bix to i64
  %i.biz = getelementptr inbounds [8 x i8], ptr %i.bhd, i64 %i.biy
  %i.bja = load ptr, ptr %i.biz, align 8, !tbaa !146
  %i.bjb = load i32, ptr %i.bhm, align 16, !tbaa !230
  %i.bjc = getelementptr inbounds nuw [32 x i8], ptr %i.bhs, i64 %indvars.iv.next730.1.1
  %i.bjd = sext i32 %i.bjb to i64
  %i.bje = getelementptr [2 x i8], ptr %i.bja, i64 %indvars.iv714.1
  %i.bjf = getelementptr [2 x i8], ptr %i.bje, i64 %i.bjd
  %i.bjg = getelementptr inbounds nuw [2 x i8], ptr %i.bjc, i64 %indvars.iv714.1
  %i.bjh = load <4 x i16>, ptr %i.bjf, align 2, !tbaa !179
  %i.bji = zext <4 x i16> %i.bjh to <4 x i32>
  %i.bjj = load <4 x i16>, ptr %i.bjg, align 2, !tbaa !179
  %i.bjk = zext <4 x i16> %i.bjj to <4 x i32>
  %i.bjl = sub nsw <4 x i32> %i.bji, %i.bjk
  store <4 x i32> %i.bjl, ptr getelementptr inbounds nuw (i8, ptr @diff, i64 32), align 16, !tbaa !4
  %i.bjm = load i32, ptr %i.bho, align 4, !tbaa !229
  %i.bjn = sext i32 %i.bjm to i64
  %i.bjo = getelementptr inbounds [8 x i8], ptr %i.bhd, i64 %i.bjn
  %i.bjp = load ptr, ptr %i.bjo, align 8, !tbaa !146
  %i.bjq = load i32, ptr %i.bhp, align 8, !tbaa !230
  %i.bjr = getelementptr inbounds nuw [32 x i8], ptr %i.bhs, i64 %indvars.iv.next730.2.1
  %i.bjs = sext i32 %i.bjq to i64
  %i.bjt = getelementptr [2 x i8], ptr %i.bjp, i64 %indvars.iv714.1
  %i.bju = getelementptr [2 x i8], ptr %i.bjt, i64 %i.bjs
  %i.bjv = getelementptr inbounds nuw [2 x i8], ptr %i.bjr, i64 %indvars.iv714.1
  %i.bjw = load <4 x i16>, ptr %i.bju, align 2, !tbaa !179
  %i.bjx = zext <4 x i16> %i.bjw to <4 x i32>
  %i.bjy = load <4 x i16>, ptr %i.bjv, align 2, !tbaa !179
  %i.bjz = zext <4 x i16> %i.bjy to <4 x i32>
  %i.bka = sub nsw <4 x i32> %i.bjx, %i.bjz
  store <4 x i32> %i.bka, ptr getelementptr inbounds nuw (i8, ptr @diff, i64 48), align 16, !tbaa !4
  %i.bkb = call i32 @distortion4x4(ptr noundef nonnull @diff) #17
  %i.bkc = add nsw i32 %i.bkb, %.2523.us.us.us.1  ; 3 uses
  %indvars.iv.next715.1 = add nuw i64 %indvars.iv714.1, 4 ; 2 uses
  %indvars.1 = trunc i64 %indvars.iv.next715.1 to i32
  %i.bkd = icmp sgt i32 %i.k, %indvars.1
  br i1 %i.bkd, label %.preheader432.us.us.us.1, label %._crit_edge524.us.us.us.1, !llvm.loop !252

._crit_edge524.us.us.us.1:                        ; preds = %.preheader432.us.us.us.1
  %indvars.iv.next728.1 = add nuw i64 %indvars.iv727.1, 4 ; 2 uses
  %indvars743.1 = trunc i64 %indvars.iv.next728.1 to i32
  %i.bke = icmp sgt i32 %i.m, %indvars743.1
  br i1 %i.bke, label %.preheader433.us.us.us.1, label %.split537.us, !llvm.loop !253

.split537.us:                                     ; preds = %._crit_edge524.us.us.us.1, %bb.cl
  %.us-phi538 = phi i32 [ 0, %bb.cl ], [ %i.bkc, %._crit_edge524.us.us.us.1 ] ; 2 uses
  %i.bkf = icmp slt i32 %.us-phi538, %.0314541
  %spec.select = select i1 %i.bkf, i32 %i.bdy, i32 %.0317540
  %spec.select378 = call i32 @llvm.smin.i32(i32 %.us-phi538, i32 %.0314541)
  br label %bb.cm

bb.cm:                                            ; preds = %.split537.us, %bb.cj, %bb.ck, %bb.ch, %bb.cg
  %.1318 = phi i32 [ %.0317540, %bb.cg ], [ %.0317540, %bb.ch ], [ %spec.select, %.split537.us ], [ %.0317540, %bb.ck ], [ %.0317540, %bb.cj ] ; 2 uses
  %.1 = phi i32 [ %.0314541, %bb.cg ], [ %.0314541, %bb.ch ], [ %spec.select378, %.split537.us ], [ %.0314541, %bb.ck ], [ %.0314541, %bb.cj ]
  %indvars.iv.next755 = add nuw nsw i64 %indvars.iv754, 1 ; 2 uses
  %exitcond758.not = icmp eq i64 %indvars.iv.next755, 4
  br i1 %exitcond758.not, label %bb.cn, label %bb.ce, !llvm.loop !254

bb.cn:                                            ; preds = %bb.cm
  %i.bkg = getelementptr inbounds nuw i8, ptr %i.i, i64 416
  store i32 %.1318, ptr %i.bkg, align 8, !tbaa !58
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @IntraChromaRDDecision(ptr nofree noundef readonly byval(%struct.RD_PARAMS) align 8 captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.pix_pos, align 4            ; 5 uses
  %2 = alloca [17 x %struct.pix_pos], align 16    ; 20 uses
  %i.a = load ptr, ptr @img, align 8, !tbaa !8    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 14224
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !10   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 15544
  %i.g = load i32, ptr %i.f, align 8, !tbaa !48   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 15548
  %i.i = load i32, ptr %i.h, align 4, !tbaa !50   ; 10 uses
  %.not124 = icmp slt i32 %i.i, 0
  br i1 %.not124, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.j = add nuw i32 %i.i, 1
  %wide.trip.count = zext i32 %i.j to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.k = load ptr, ptr @getNeighbour, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %indvars.iv
  %i.m = trunc i64 %indvars.iv to i32
  %i.n = add i32 %i.m, -1
  call void %i.k(i32 noundef %i.e, i32 noundef -1, i32 noundef %i.n, i32 noundef 1, ptr noundef nonnull %i.l) #17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !255

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.o = load ptr, ptr @getNeighbour, align 8, !tbaa !8
  call void %i.o(i32 noundef %i.e, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef nonnull %1) #17
  %i.p = load i32, ptr %1, align 4, !tbaa !222    ; 2 uses
  %i.q = load i32, ptr %2, align 16, !tbaa !222   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.s = load i32, ptr %i.r, align 8, !tbaa !222  ; 2 uses
  %i.t = load ptr, ptr @input, align 8, !tbaa !8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 272
  %i.v = load i32, ptr %i.u, align 8, !tbaa !156
  %.not112 = icmp eq i32 %i.v, 0
  br i1 %.not112, label %bb.o, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %.not113 = icmp eq i32 %i.p, 0
  br i1 %.not113, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = load ptr, ptr @img, align 8, !tbaa !8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 14240
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !157
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !224
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !4
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.ae = phi i32 [ %i.ad, %bb.c ], [ 0, %bb.b ]  ; 2 uses
  %i.af = ashr i32 %i.i, 1                        ; 5 uses
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %.lr.ph129, label %.preheader123

.lr.ph129:                                        ; preds = %bb.d
  %i.ah = load ptr, ptr @img, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 14240 ; 3 uses
  %wide.trip.count193 = zext nneg i32 %i.af to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count193, 1
  %i.aj = icmp eq i32 %i.af, 1
  br i1 %i.aj, label %.epil.preheader, label %.lr.ph129.new

.lr.ph129.new:                                    ; preds = %.lr.ph129
  %unroll_iter = and i64 %wide.trip.count193, 2147483646
  br label %bb.f

.preheader123.loopexit.unr-lcssa:                 ; preds = %bb.j
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader123, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader123.loopexit.unr-lcssa, %.lr.ph129
  %indvars.iv190.epil.init = phi i64 [ 0, %.lr.ph129 ], [ %indvars.iv.next191.1, %.preheader123.loopexit.unr-lcssa ]
  %.sroa.0.0127.epil.init = phi i32 [ 1, %.lr.ph129 ], [ %i.bs, %.preheader123.loopexit.unr-lcssa ]
  %lcmp.mod267 = trunc i32 %i.af to i1
  call void @llvm.assume(i1 %lcmp.mod267)
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %indvars.iv190.epil.init ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load i32, ptr %i.al, align 8, !tbaa !222
  %.not118.epil = icmp eq i32 %i.am, 0
  br i1 %.not118.epil, label %.preheader123, label %bb.e

bb.e:                                             ; preds = %.epil.preheader
  %i.an = load ptr, ptr %i.ai, align 8, !tbaa !157
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 28
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !224
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !4
  %i.at = and i32 %i.as, %.sroa.0.0127.epil.init
  br label %.preheader123

.preheader123:                                    ; preds = %.preheader123.loopexit.unr-lcssa, %bb.e, %.epil.preheader, %bb.d
  %.sroa.0.0.lcssa = phi i32 [ 1, %bb.d ], [ %i.bs, %.preheader123.loopexit.unr-lcssa ], [ %i.at, %bb.e ], [ 0, %.epil.preheader ] ; 2 uses
  %i.au = icmp sgt i32 %i.i, 0
  br i1 %i.au, label %.lr.ph133, label %._crit_edge134

.lr.ph133:                                        ; preds = %.preheader123
  %i.av = load ptr, ptr @img, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 14240
  %i.ax = zext nneg i32 %i.af to i64
  br label %bb.k

bb.f:                                             ; preds = %bb.j, %.lr.ph129.new
  %indvars.iv190 = phi i64 [ 0, %.lr.ph129.new ], [ %indvars.iv.next191.1, %bb.j ] ; 2 uses
  %.sroa.0.0127 = phi i32 [ 1, %.lr.ph129.new ], [ %i.bs, %bb.j ]
  %niter = phi i64 [ 0, %.lr.ph129.new ], [ %niter.next.1, %bb.j ]
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %indvars.iv190 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !222
  %.not118 = icmp eq i32 %i.ba, 0
  br i1 %.not118, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bb = load ptr, ptr %i.ai, align 8, !tbaa !157
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 28
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !224
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !4
  %i.bh = and i32 %i.bg, %.sroa.0.0127
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.bi = phi i32 [ %i.bh, %bb.g ], [ 0, %bb.f ]
  %indvars.iv.next191.1 = add nuw nsw i64 %indvars.iv190, 2 ; 3 uses
  %i.bj = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %indvars.iv.next191.1 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 16, !tbaa !222
  %.not118.1 = icmp eq i32 %i.bk, 0
  br i1 %.not118.1, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bl = load ptr, ptr %i.ai, align 8, !tbaa !157
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !224
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !4
  %i.br = and i32 %i.bq, %i.bi
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bs = phi i32 [ %i.br, %bb.i ], [ 0, %bb.h ]  ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader123.loopexit.unr-lcssa, label %bb.f, !llvm.loop !256

bb.k:                                             ; preds = %.lr.ph133, %bb.m
  %indvars.iv195 = phi i64 [ %i.ax, %.lr.ph133 ], [ %indvars.iv.next196, %bb.m ]
end_hunk_2
begin_hunk_3_@IntraChromaRDDecision:bb.a

.lr.ph141.preheader.new:                          ; preds = %.lr.ph141.preheader
  %unroll_iter271 = and i64 %wide.trip.count206, 2147483644
  br label %.lr.ph141

.lr.ph141:                                        ; preds = %.lr.ph141, %.lr.ph141.preheader.new
  %indvars.iv203 = phi i64 [ 0, %.lr.ph141.preheader.new ], [ %indvars.iv.next204.3, %.lr.ph141 ] ; 5 uses
  %niter272 = phi i64 [ 0, %.lr.ph141.preheader.new ], [ %niter272.next.3, %.lr.ph141 ]
  %i.cx = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %indvars.iv203
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 20 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !229
  %i.da = ashr i32 %i.cz, 1
  store i32 %i.da, ptr %i.cy, align 4, !tbaa !229
  %i.db = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %indvars.iv203
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 44 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !229
  %i.de = ashr i32 %i.dd, 1
  store i32 %i.de, ptr %i.dc, align 4, !tbaa !229
  %i.df = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %indvars.iv203
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 68 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !229
  %i.di = ashr i32 %i.dh, 1
  store i32 %i.di, ptr %i.dg, align 4, !tbaa !229
  %i.dj = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %indvars.iv203
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 92 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !229
  %i.dm = ashr i32 %i.dl, 1
  store i32 %i.dm, ptr %i.dk, align 4, !tbaa !229
  %indvars.iv.next204.3 = add nuw nsw i64 %indvars.iv203, 4 ; 2 uses
  %niter272.next.3 = add i64 %niter272, 4         ; 2 uses
  %niter272.ncmp.3 = icmp eq i64 %niter272.next.3, %unroll_iter271
  br i1 %niter272.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph141, !llvm.loop !260

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph141
  %lcmp.mod269.not = icmp eq i64 %xtraiter268, 0
  br i1 %lcmp.mod269.not, label %.loopexit, label %.lr.ph141.epil.preheader

.lr.ph141.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph141.preheader
  %indvars.iv203.epil.init = phi i64 [ 0, %.lr.ph141.preheader ], [ %indvars.iv.next204.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod270 = icmp ne i64 %xtraiter268, 0
  call void @llvm.assume(i1 %lcmp.mod270)
  br label %.lr.ph141.epil

.lr.ph141.epil:                                   ; preds = %.lr.ph141.epil, %.lr.ph141.epil.preheader
  %indvars.iv203.epil = phi i64 [ %indvars.iv203.epil.init, %.lr.ph141.epil.preheader ], [ %indvars.iv.next204.epil, %.lr.ph141.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph141.epil.preheader ], [ %epil.iter.next, %.lr.ph141.epil ]
  %i.dn = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %indvars.iv203.epil
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 20 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !229
  %i.dq = ashr i32 %i.dp, 1
  store i32 %i.dq, ptr %i.do, align 4, !tbaa !229
  %indvars.iv.next204.epil = add nuw nsw i64 %indvars.iv203.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter268
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph141.epil, !llvm.loop !261

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph141.epil, %bb.p, %._crit_edge139
  %i.dr = icmp ne i32 %.098, 0                    ; 2 uses
  %i.ds = icmp ne i32 %.sroa.0.1, 0
  %i.dt = icmp ne i32 %.sroa.8.1, 0
  %or.cond7 = select i1 %i.ds, i1 %i.dt, i1 false ; 2 uses
  %or.cond9 = select i1 %or.cond7, i1 %i.dr, i1 false
  %i.du = icmp ne i32 %.097, 0
  %or.cond11 = select i1 %or.cond9, i1 %i.du, i1 false
  %i.dv = icmp sgt i32 %i.g, 0
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dx = load double, ptr %i.dw, align 8
  %brmerge.not = select i1 %i.cn, i1 %i.dv, i1 false
  br label %bb.q

bb.q:                                             ; preds = %.loopexit, %bb.v
  %indvars.iv245 = phi i64 [ 0, %.loopexit ], [ %indvars.iv.next246, %bb.v ] ; 5 uses
  %.0178 = phi i32 [ 2147483647, %.loopexit ], [ %.1, %bb.v ] ; 6 uses
  %.093177 = phi i32 [ 0, %.loopexit ], [ %.194, %bb.v ] ; 4 uses
  %i.dy = icmp ne i64 %indvars.iv245, 2
  %or.cond = select i1 %i.dy, i1 true, i1 %i.dr
  br i1 %or.cond, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.dz = trunc nuw nsw i64 %indvars.iv245 to i32 ; 2 uses
  switch i32 %i.dz, label %bb.u [
    i32 1, label %bb.s
    i32 3, label %bb.t
  ]

bb.s:                                             ; preds = %bb.r
  br i1 %or.cond7, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  br i1 %or.cond11, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.s, %bb.r, %bb.t
  br i1 %brmerge.not, label %.preheader121.lr.ph.us.us, label %.split165.us

.preheader121.lr.ph.us.us:                        ; preds = %bb.u, %._crit_edge152.split.us.us.us
  %i.ea = phi i1 [ false, %._crit_edge152.split.us.us.us ], [ true, %bb.u ]
  %indvars.iv241 = phi i64 [ 1, %._crit_edge152.split.us.us.us ], [ 0, %bb.u ] ; 2 uses
  %.091158.us.us = phi i32 [ %i.hd, %._crit_edge152.split.us.us.us ], [ 0, %bb.u ]
  %i.eb = load ptr, ptr @imgUV_org, align 8, !tbaa !43
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv241
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !41 ; 4 uses
  br label %.preheader121.us.us.us

._crit_edge152.split.us.us.us:                    ; preds = %._crit_edge148.us.us.us
  %or.cond181 = and i1 %i.hf, %i.ea
  br i1 %or.cond181, label %.preheader121.lr.ph.us.us, label %.split165.us, !llvm.loop !262

.preheader121.us.us.us:                           ; preds = %._crit_edge148.us.us.us, %.preheader121.lr.ph.us.us
  %indvars.iv223 = phi i64 [ %indvars.iv.next224, %._crit_edge148.us.us.us ], [ 0, %.preheader121.lr.ph.us.us ] ; 6 uses
  %.192151.us.us.us = phi i32 [ %i.hd, %._crit_edge148.us.us.us ], [ %.091158.us.us, %.preheader121.lr.ph.us.us ]
  %i.ee = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %indvars.iv223 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 20
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %indvars.iv.next226 = or disjoint i64 %indvars.iv223, 1 ; 2 uses
  %i.eh = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %indvars.iv.next226 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 20
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %indvars.iv.next226.1 = or disjoint i64 %indvars.iv223, 2 ; 2 uses
  %i.ek = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %indvars.iv.next226.1 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 20
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %indvars.iv.next226.2 = or disjoint i64 %indvars.iv223, 3 ; 2 uses
  %i.en = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %indvars.iv.next226.2 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 20
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  br label %.preheader120.us.us.us

.preheader120.us.us.us:                           ; preds = %.preheader120.us.us.us, %.preheader121.us.us.us
  %indvars.iv210 = phi i64 [ %indvars.iv.next211, %.preheader120.us.us.us ], [ 0, %.preheader121.us.us.us ] ; 9 uses
  %.2147.us.us.us = phi i32 [ %i.hd, %.preheader120.us.us.us ], [ %.192151.us.us.us, %.preheader121.us.us.us ]
  %i.eq = load ptr, ptr @img, align 8, !tbaa !8
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8528
  %i.es = getelementptr inbounds nuw [2048 x i8], ptr %i.er, i64 %indvars.iv241
  %i.et = getelementptr inbounds nuw [512 x i8], ptr %i.es, i64 %indvars.iv245 ; 4 uses
  %i.eu = load i32, ptr %i.ef, align 4, !tbaa !229
  %i.ev = sext i32 %i.eu to i64
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.ed, i64 %i.ev
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !146
  %i.ey = load i32, ptr %i.eg, align 16, !tbaa !230
  %i.ez = getelementptr inbounds nuw [32 x i8], ptr %i.et, i64 %indvars.iv223
  %i.fa = sext i32 %i.ey to i64
  %i.fb = getelementptr [2 x i8], ptr %i.ex, i64 %indvars.iv210
  %i.fc = getelementptr [2 x i8], ptr %i.fb, i64 %i.fa
  %i.fd = getelementptr inbounds nuw [2 x i8], ptr %i.ez, i64 %indvars.iv210
  %i.fe = load <4 x i16>, ptr %i.fc, align 2, !tbaa !179
  %i.ff = zext <4 x i16> %i.fe to <4 x i32>
  %i.fg = load <4 x i16>, ptr %i.fd, align 2, !tbaa !179
  %i.fh = zext <4 x i16> %i.fg to <4 x i32>
  %i.fi = sub nsw <4 x i32> %i.ff, %i.fh
  store <4 x i32> %i.fi, ptr @diff, align 16, !tbaa !4
  %i.fj = load i32, ptr %i.ei, align 4, !tbaa !229
  %i.fk = sext i32 %i.fj to i64
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.ed, i64 %i.fk
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !146
  %i.fn = load i32, ptr %i.ej, align 8, !tbaa !230
  %i.fo = getelementptr inbounds nuw [32 x i8], ptr %i.et, i64 %indvars.iv.next226
  %i.fp = sext i32 %i.fn to i64
  %i.fq = getelementptr [2 x i8], ptr %i.fm, i64 %indvars.iv210
  %i.fr = getelementptr [2 x i8], ptr %i.fq, i64 %i.fp
  %i.fs = getelementptr inbounds nuw [2 x i8], ptr %i.fo, i64 %indvars.iv210
  %i.ft = load <4 x i16>, ptr %i.fr, align 2, !tbaa !179
  %i.fu = zext <4 x i16> %i.ft to <4 x i32>
  %i.fv = load <4 x i16>, ptr %i.fs, align 2, !tbaa !179
  %i.fw = zext <4 x i16> %i.fv to <4 x i32>
  %i.fx = sub nsw <4 x i32> %i.fu, %i.fw
  store <4 x i32> %i.fx, ptr getelementptr inbounds nuw (i8, ptr @diff, i64 16), align 16, !tbaa !4
  %i.fy = load i32, ptr %i.el, align 4, !tbaa !229
  %i.fz = sext i32 %i.fy to i64
  %i.ga = getelementptr inbounds [8 x i8], ptr %i.ed, i64 %i.fz
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !146
  %i.gc = load i32, ptr %i.em, align 16, !tbaa !230
  %i.gd = getelementptr inbounds nuw [32 x i8], ptr %i.et, i64 %indvars.iv.next226.1
  %i.ge = sext i32 %i.gc to i64
  %i.gf = getelementptr [2 x i8], ptr %i.gb, i64 %indvars.iv210
  %i.gg = getelementptr [2 x i8], ptr %i.gf, i64 %i.ge
  %i.gh = getelementptr inbounds nuw [2 x i8], ptr %i.gd, i64 %indvars.iv210
  %i.gi = load <4 x i16>, ptr %i.gg, align 2, !tbaa !179
  %i.gj = zext <4 x i16> %i.gi to <4 x i32>
  %i.gk = load <4 x i16>, ptr %i.gh, align 2, !tbaa !179
  %i.gl = zext <4 x i16> %i.gk to <4 x i32>
  %i.gm = sub nsw <4 x i32> %i.gj, %i.gl
  store <4 x i32> %i.gm, ptr getelementptr inbounds nuw (i8, ptr @diff, i64 32), align 16, !tbaa !4
  %i.gn = load i32, ptr %i.eo, align 4, !tbaa !229
  %i.go = sext i32 %i.gn to i64
  %i.gp = getelementptr inbounds [8 x i8], ptr %i.ed, i64 %i.go
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !146
  %i.gr = load i32, ptr %i.ep, align 8, !tbaa !230
  %i.gs = getelementptr inbounds nuw [32 x i8], ptr %i.et, i64 %indvars.iv.next226.2
  %i.gt = sext i32 %i.gr to i64
  %i.gu = getelementptr [2 x i8], ptr %i.gq, i64 %indvars.iv210
  %i.gv = getelementptr [2 x i8], ptr %i.gu, i64 %i.gt
  %i.gw = getelementptr inbounds nuw [2 x i8], ptr %i.gs, i64 %indvars.iv210
  %i.gx = load <4 x i16>, ptr %i.gv, align 2, !tbaa !179
  %i.gy = zext <4 x i16> %i.gx to <4 x i32>
  %i.gz = load <4 x i16>, ptr %i.gw, align 2, !tbaa !179
  %i.ha = zext <4 x i16> %i.gz to <4 x i32>
  %i.hb = sub nsw <4 x i32> %i.gy, %i.ha
  store <4 x i32> %i.hb, ptr getelementptr inbounds nuw (i8, ptr @diff, i64 48), align 16, !tbaa !4
  %i.hc = call i32 @distortion4x4(ptr noundef nonnull @diff) #17
  %i.hd = add nsw i32 %i.hc, %.2147.us.us.us      ; 5 uses
  %indvars.iv.next211 = add nuw i64 %indvars.iv210, 4 ; 2 uses
  %indvars = trunc i64 %indvars.iv.next211 to i32
  %i.he = icmp sgt i32 %i.g, %indvars
  br i1 %i.he, label %.preheader120.us.us.us, label %._crit_edge148.us.us.us, !llvm.loop !263

._crit_edge148.us.us.us:                          ; preds = %.preheader120.us.us.us
  %i.hf = icmp sle i32 %i.hd, %.0178              ; 2 uses
  %indvars.iv.next224 = add nuw i64 %indvars.iv223, 4 ; 2 uses
  %indvars239 = trunc i64 %indvars.iv.next224 to i32
  %i.hg = icmp sgt i32 %i.i, %indvars239
  %or.cond183 = select i1 %i.hf, i1 %i.hg, i1 false
  br i1 %or.cond183, label %.preheader121.us.us.us, label %._crit_edge152.split.us.us.us, !llvm.loop !264

.split165.us:                                     ; preds = %._crit_edge152.split.us.us.us, %bb.u
  %.us-phi166 = phi i32 [ 0, %bb.u ], [ %i.hd, %._crit_edge152.split.us.us.us ]
  %i.hh = load ptr, ptr @mvbits, align 8, !tbaa !101
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv245
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !4
  %i.hk = sitofp i32 %i.hj to double
  %i.hl = fmul double %i.dx, %i.hk
  %i.hm = fptosi double %i.hl to i32
  %i.hn = add nsw i32 %.us-phi166, %i.hm          ; 2 uses
  %i.ho = icmp slt i32 %i.hn, %.0178
  %spec.select = select i1 %i.ho, i32 %i.dz, i32 %.093177
  %spec.select119 = call i32 @llvm.smin.i32(i32 %i.hn, i32 %.0178)
  br label %bb.v

bb.v:                                             ; preds = %.split165.us, %bb.s, %bb.t, %bb.q
  %.194 = phi i32 [ %.093177, %bb.q ], [ %spec.select, %.split165.us ], [ %.093177, %bb.t ], [ %.093177, %bb.s ] ; 2 uses
  %.1 = phi i32 [ %.0178, %bb.q ], [ %spec.select119, %.split165.us ], [ %.0178, %bb.t ], [ %.0178, %bb.s ]
  %indvars.iv.next246 = add nuw nsw i64 %indvars.iv245, 1 ; 2 uses
  %exitcond249.not = icmp eq i64 %indvars.iv.next246, 4
  br i1 %exitcond249.not, label %bb.w, label %bb.q, !llvm.loop !265

bb.w:                                             ; preds = %bb.v
  %i.hp = sext i32 %i.e to i64
  %i.hq = getelementptr inbounds [536 x i8], ptr %i.c, i64 %i.hp
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 416
  store i32 %.194, ptr %i.hr, align 8, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @ZeroRef(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr @img, align 8, !tbaa !8    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 172
  %i.c = load i32, ptr %i.b, align 4, !tbaa !32   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.e = load i32, ptr %i.d, align 8, !tbaa !30   ; 2 uses
  %i.f = load ptr, ptr @enc_picture, align 8, !tbaa !72
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 6488
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !143
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !144
  %i.j = sext i32 %i.e to i64
  %i.k = sext i32 %i.c to i64
  %i.l = add nsw i32 %i.e, 3
  %i.m = sext i32 %i.l to i64
  %i.n = add nsw i32 %i.c, 3
  %i.o = sext i32 %i.n to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.e
  %indvars.iv14 = phi i64 [ %i.k, %bb.a ], [ %indvars.iv.next15, %bb.e ] ; 3 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %i.i, i64 %indvars.iv14
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !100
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.r = icmp slt i64 %indvars.iv, %i.m
  br i1 %i.r, label %bb.d, label %bb.e, !llvm.loop !266

bb.d:                                             ; preds = %bb.b, %bb.c
  %indvars.iv = phi i64 [ %i.j, %bb.b ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.s = getelementptr inbounds i8, ptr %i.q, i64 %indvars.iv
  %i.t = load i8, ptr %i.s, align 1, !tbaa !69
  %.not = icmp eq i8 %i.t, 0
  br i1 %.not, label %bb.c, label %.loopexit

bb.e:                                             ; preds = %bb.c
  %indvars.iv.next15 = add nsw i64 %indvars.iv14, 1
  %i.u = icmp slt i64 %indvars.iv14, %i.o
  br i1 %i.u, label %bb.b, label %.loopexit, !llvm.loop !267

.loopexit:                                        ; preds = %bb.e, %bb.d
  %.08 = phi i32 [ 0, %bb.d ], [ 1, %bb.e ]
  ret i32 %.08
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @MBType2Value(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr @img, align 8, !tbaa !8    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.c = load i32, ptr %i.b, align 4, !tbaa !55   ; 4 uses
  %.not = icmp eq i32 %i.c, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load i32, ptr %i.d, align 8, !tbaa !57   ; 5 uses
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %i.e, label %ZeroRef.exit [
    i32 13, label %bb.c
    i32 9, label %bb.c
    i32 10, label %bb.d
    i32 14, label %bb.e
    i32 8, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.f = icmp eq i32 %i.c, 2
  %i.g = select i1 %i.f, i32 0, i32 6
  br label %ZeroRef.exit

bb.d:                                             ; preds = %bb.b
  %i.h = icmp eq i32 %i.c, 2
  %i.i = select i1 %i.h, i32 0, i32 6
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 15244
  %i.k = load i32, ptr %i.j, align 4, !tbaa !268
  %i.l = add nsw i32 %i.k, %i.i
  br label %ZeroRef.exit

bb.e:                                             ; preds = %bb.b
  %i.m = icmp eq i32 %i.c, 2
  %i.n = select i1 %i.m, i32 25, i32 31
  br label %ZeroRef.exit

bb.f:                                             ; preds = %bb.b
  %i.o = load ptr, ptr @input, align 8, !tbaa !8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4008
  %i.q = load i32, ptr %i.p, align 8, !tbaa !87
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.g, label %ZeroRef.exit

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 172
  %i.t = load i32, ptr %i.s, align 4, !tbaa !32   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.v = load i32, ptr %i.u, align 8, !tbaa !30   ; 3 uses
  %i.w = load ptr, ptr @enc_picture, align 8, !tbaa !72
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 6488
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !143
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !144
  %i.aa = sext i32 %i.v to i64
  %i.ab = sext i32 %i.t to i64
  %i.ac = add i32 %i.v, 3
  %i.ad = add i32 %i.t, 3
  %i.ae = tail call i32 @llvm.smax.i32(i32 %i.v, i32 %i.ac)
  %smax = sext i32 %i.ae to i64
  %i.af = tail call i32 @llvm.smax.i32(i32 %i.t, i32 %i.ad)
  %smax32 = sext i32 %i.af to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.k, %bb.g
  %indvars.iv14.i = phi i64 [ %i.ab, %bb.g ], [ %indvars.iv.next15.i, %bb.k ] ; 3 uses
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.z, i64 %indvars.iv14.i
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !100
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1
  %exitcond.not = icmp eq i64 %indvars.iv.i, %smax
  br i1 %exitcond.not, label %bb.k, label %bb.j, !llvm.loop !266

bb.j:                                             ; preds = %bb.i, %bb.h
  %indvars.iv.i = phi i64 [ %i.aa, %bb.h ], [ %indvars.iv.next.i, %bb.i ] ; 3 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 %indvars.iv.i
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !69
  %.not.i = icmp eq i8 %i.aj, 0
  br i1 %.not.i, label %bb.i, label %ZeroRef.exit

bb.k:                                             ; preds = %bb.i
  %indvars.iv.next15.i = add nsw i64 %indvars.iv14.i, 1
  %exitcond33.not = icmp eq i64 %indvars.iv14.i, %smax32
  br i1 %exitcond33.not, label %ZeroRef.exit, label %bb.h, !llvm.loop !267

bb.l:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !4  ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 404
  %i.an = load i32, ptr %i.am, align 4, !tbaa !4  ; 2 uses
  %i.ao = icmp eq i32 %i.e, 0
  br i1 %i.ao, label %ZeroRef.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = and i32 %i.e, -5
  %or.cond = icmp eq i32 %i.ap, 9
  br i1 %or.cond, label %ZeroRef.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  switch i32 %i.e, label %bb.s [
    i32 10, label %bb.o
    i32 14, label %ZeroRef.exit
    i32 8, label %bb.p
    i32 1, label %bb.q
    i32 2, label %bb.r
  ]

end_hunk_3
